#!/usr/bin/env bash
# perf_bisect.sh — Find which source files and functions are GVN-sensitive
# in a given variant by selectively disabling GVN and measuring the effect.
#
# Usage:
#   scripts/perf_bisect.sh <benchmark> <variant> [options]
#
# Arguments:
#   benchmark       e.g., 544.nab_r
#   variant         Variant ID with GVN enabled (e.g., GVNPRE-s1-p0-greedy)
#
# Options (key=value):
#   runs=3          Iterations per measurement (default: 3)
#   threshold=2     % diff to consider significant (default: 2)
#
# The script:
#   1. Measures baseline performance (GVN fully enabled)
#   2. Seeds the search with hot functions from profiling data
#   3. Binary-searches on source files by disabling GVN for subsets
#   4. Binary-searches on functions within identified files
#   5. Binary-searches on individual GVN eliminations via debug counters
#   6. When both halves show an effect, switches to removal mode
#
# Run on multiple variants and compare results to understand GVN differences.

source "$(dirname "$0")/common.sh"

# ── Args ──────────────────────────────────────────────────────────────────────

BENCHMARK="${1:?Usage: perf_bisect.sh <benchmark> <variant> [options]}"
VARIANT="${2:?Usage: perf_bisect.sh <benchmark> <variant> [options]}"
shift 2

RUNS=3
THRESHOLD=2
RESUME=0

for arg in "$@"; do
  case "$arg" in
    runs=*)      RUNS="${arg#*=}" ;;
    threshold=*) THRESHOLD="${arg#*=}" ;;
    resume=*)    RESUME="${arg#*=}" ;;
    *)           die "Unknown argument: $arg" ;;
  esac
done

# ── Derived paths ─────────────────────────────────────────────────────────────

HOTNESS_CSV="$BASE/profiles/hotness/${BENCHMARK}.csv"
BUILD_DIR="$BASE/$BUILD_ROOT_BASE/$VARIANT"
OUTPUT_DIR="$BASE/results/perf_analysis/$BENCHMARK"
OUTPUT_JSON="$OUTPUT_DIR/bisect-${VARIANT}.json"
BUILD_LOG="$OUTPUT_DIR/bisect-${VARIANT}-build.log"
CHECKPOINT="$OUTPUT_DIR/bisect-${VARIANT}-state.json"

mkdir -p "$OUTPUT_DIR"

# ── Resolve variant metadata ─────────────────────────────────────────────────

GVN_BASE=$(yq ".[] | select(.id == \"$VARIANT\") | .gvn_base" "$BASE/$VARIANTS" | jq -r .)

if [[ -z "$GVN_BASE" || "$GVN_BASE" == "null" ]]; then
  die "variant '$VARIANT' not found or has no gvn_base"
fi

case "$GVN_BASE" in
  GVNPRE)  GVN_FUNC_SKIP_FLAG="skip-gvn-for-funcs"; COUNTER_NAME="gvn-eliminate" ;;
  NewGVN)  GVN_FUNC_SKIP_FLAG="skip-newgvn-for-funcs"; COUNTER_NAME="newgvn-eliminate" ;;
  NoGVN)   die "variant has no GVN to bisect (gvn_base=NoGVN)" ;;
  *)       die "unsupported gvn_base '$GVN_BASE'" ;;
esac

# ── Find SPEC target path ────────────────────────────────────────────────────

find_spec_target() {
  local bench="$1"
  for suite in CINT2017rate CINT2017speed CFP2017rate CFP2017speed; do
    if [[ -d "$BASE/test-suite/External/SPEC/${suite}/${bench}" ]]; then
      echo "External/SPEC/${suite}/${bench}"
      return
    fi
  done
  die "benchmark '$bench' not found in test-suite"
}

SPEC_TARGET=$(find_spec_target "$BENCHMARK")
SPEC_SUITE=$(echo "$SPEC_TARGET" | cut -d/ -f3)
NINJA_TARGET="$SPEC_TARGET/all"

echo "=== Perf Bisection ==="
echo "  Benchmark:  $BENCHMARK"
echo "  Variant:    $VARIANT (gvn_base=$GVN_BASE)"
echo "  SPEC:       $SPEC_TARGET"
echo "  Func skip:  $GVN_FUNC_SKIP_FLAG"
echo "  Runs:       $RUNS  Threshold: ${THRESHOLD}%"
echo ""

# ── Helpers ───────────────────────────────────────────────────────────────────

build_benchmark() {
  local skip_srcs="${1:-}"
  local skip_funcs="${2:-}"

  local extra_args=()
  [[ -n "$skip_srcs" ]]  && extra_args+=(skip_gvn_srcs="$skip_srcs")
  [[ -n "$skip_funcs" ]] && extra_args+=(skip_gvn_funcs="$skip_funcs" gvn_func_skip_flag="$GVN_FUNC_SKIP_FLAG")

  if ! "$BASE/scripts/build_variant.sh" "$VARIANT" ref "$SPEC_SUITE/$BENCHMARK" "${extra_args[@]}" \
      >> "$BUILD_LOG" 2>&1; then
    echo "Last 10 lines of build log:" >&2
    tail -10 "$BUILD_LOG" >&2
    die "build failed (see $BUILD_LOG)"
  fi
}

measure_time() {
  cd "$BUILD_DIR"
  mkdir -p results

  local times=()
  for ((i=0; i<RUNS; i++)); do
    if ! taskset -c 1 "$LIT" -j1 "$SPEC_TARGET" \
        -o "results/bisect_run_${i}.json" >> "$BUILD_LOG" 2>&1; then
      tail -10 "$BUILD_LOG" >&2
      cd "$BASE"
      die "lit run $i failed (see $BUILD_LOG)"
    fi

    local t
    t=$(jq -r ".tests[] | select(.name | test(\"${BENCHMARK}\")) | .metrics.exec_time" \
        "results/bisect_run_${i}.json" 2>/dev/null)
    [[ -n "$t" && "$t" != "null" ]] && times+=("$t")
  done
  cd "$BASE"

  if [[ ${#times[@]} -eq 0 ]]; then
    cd "$BASE"
    die "no valid times collected"
  fi
  printf '%s\n' "${times[@]}" | sort -n | awk '{a[NR]=$1} END{print a[int((NR+1)/2)]}'
}

pct_diff() {
  awk "BEGIN { printf \"%.2f\", (($1 - $2) / $2) * 100 }"
}

is_significant() {
  awk "BEGIN { exit !( sqrt(($1)^2) > $THRESHOLD ) }"
}

join_csv() { local IFS=','; echo "$*"; }

# Validate that a candidate set reproduces the GVN effect.
# Usage: validate_hot_set <skip_srcs> <skip_funcs> <label>
# Returns 0 (significant) or 1 (not significant).
validate_hot_set() {
  local skip_srcs="$1" skip_funcs="$2" label="$3"
  echo -n "  Validating ${label}... "
  build_benchmark "$skip_srcs" "$skip_funcs"
  local t diff
  t=$(measure_time)
  diff=$(pct_diff "$t" "$BASELINE_TIME")
  echo "${t}s (${diff}%)"
  is_significant "$diff"
}

# ── JSON logging ──────────────────────────────────────────────────────────────

ITERATIONS_JSON="[]"
ELIMINATION_BISECT_JSON="{}"

log_iteration() {
  local phase="$1" step="$2" skip_set="$3" time_val="$4" complement_time="${5:-null}"
  ITERATIONS_JSON=$(echo "$ITERATIONS_JSON" | jq \
    --arg phase "$phase" --argjson step "$step" \
    --arg skip_set "$skip_set" --arg time "$time_val" --arg comp "$complement_time" \
    '. + [{"phase": $phase, "step": ($step), "skip_set": $skip_set, "time": $time, "complement_time": $comp}]')
}

IDENTIFIED_FILES=()
IDENTIFIED_FUNCS=()

save_checkpoint() {
  local phase="$1"
  jq -n \
    --arg phase "$phase" \
    --arg baseline "${BASELINE_TIME:-}" \
    --arg nogvn "${NOGVN_TIME:-}" \
    --arg total_diff "${TOTAL_DIFF:-}" \
    --argjson all_srcs "$(printf '%s\n' "${ALL_SRCS[@]}" 2>/dev/null | jq -R . | jq -s .)" \
    --argjson files "$(printf '%s\n' "${IDENTIFIED_FILES[@]}" 2>/dev/null | jq -R . | jq -s .)" \
    --argjson funcs "$(printf '%s\n' "${IDENTIFIED_FUNCS[@]}" 2>/dev/null | jq -R . | jq -s .)" \
    '{phase: $phase, baseline_time: $baseline, nogvn_time: $nogvn, total_diff: $total_diff,
      all_srcs: $all_srcs, identified_files: $files, identified_funcs: $funcs}' \
    > "$CHECKPOINT"
}

# ── Resume ────────────────────────────────────────────────────────────────────

RESUMED_PHASE=""
if [[ "$RESUME" -eq 1 && -f "$CHECKPOINT" ]]; then
  RESUMED_PHASE=$(jq -r .phase "$CHECKPOINT")
  echo "  Resuming from checkpoint: phase=$RESUMED_PHASE"
  BASELINE_TIME=$(jq -r .baseline_time "$CHECKPOINT")
  NOGVN_TIME=$(jq -r .nogvn_time "$CHECKPOINT")
  TOTAL_DIFF=$(jq -r .total_diff "$CHECKPOINT")
  mapfile -t ALL_SRCS < <(jq -r '.all_srcs[]' "$CHECKPOINT")
  ALL_SRCS_CSV=$(join_csv "${ALL_SRCS[@]}")
  if [[ "$RESUMED_PHASE" == "files_done" || "$RESUMED_PHASE" == "funcs_done" || "$RESUMED_PHASE" == "complete" ]]; then
    mapfile -t IDENTIFIED_FILES < <(jq -r '.identified_files[]' "$CHECKPOINT")
  fi
  if [[ "$RESUMED_PHASE" == "funcs_done" || "$RESUMED_PHASE" == "complete" ]]; then
    mapfile -t IDENTIFIED_FUNCS < <(jq -r '.identified_funcs[]' "$CHECKPOINT")
  fi
fi

if [[ "$RESUMED_PHASE" != "files_done" && "$RESUMED_PHASE" != "funcs_done" && "$RESUMED_PHASE" != "complete" ]]; then

# ── Step 0: Baseline ─────────────────────────────────────────────────────────

echo "--- Step 0: Baseline ---"

echo -n "  GVN enabled (baseline)... "
build_benchmark "" ""
BASELINE_TIME=$(measure_time)
echo "${BASELINE_TIME}s"

echo -n "  GVN fully disabled... "
# Skip GVN for all sources to get the "no GVN" reference for this variant
mapfile -t ALL_SRCS_TMP < <(
  cd "$BUILD_DIR"
  ninja -t commands "$NINJA_TARGET" 2>/dev/null \
    | grep -oP '[^ ]+\.(c|cpp|cc|C)\b' \
    | grep 'benchspec/CPU/' \
    | while read -r src; do basename "$src"; done \
    | sort -u
  cd "$BASE"
)
ALL_SRCS_CSV=$(join_csv "${ALL_SRCS_TMP[@]}")
build_benchmark "$ALL_SRCS_CSV" ""
NOGVN_TIME=$(measure_time)
echo "${NOGVN_TIME}s"

TOTAL_DIFF=$(pct_diff "$NOGVN_TIME" "$BASELINE_TIME")
echo "  Effect of disabling GVN: ${TOTAL_DIFF}%"

# Restore baseline
build_benchmark "" ""

if ! is_significant "$TOTAL_DIFF"; then
  echo "  Diff below threshold (${THRESHOLD}%), GVN has no significant effect on this benchmark."
  exit 0
fi

# ── Step 1: Hot functions → source files ──────────────────────────────────────

echo ""
echo "--- Step 1: Map hot functions to source files ---"

HOT_FUNCS=()
if [[ -f "$HOTNESS_CSV" ]]; then
  mapfile -t HOT_FUNCS < <(awk -F, 'NR>1 && $4 > 0.5 {print $2}' "$HOTNESS_CSV")
  echo "  Hot functions: ${HOT_FUNCS[*]}"
else
  echo "  No hotness data, using all source files."
fi

ALL_SRCS=("${ALL_SRCS_TMP[@]}")
echo "  Total source files: ${#ALL_SRCS[@]}"

map_funcs_to_files() {
  local -A func_to_file
  while IFS= read -r objfile; do
    local obj_base
    obj_base=$(basename "$objfile" .o)
    for func in "${HOT_FUNCS[@]}"; do
      if nm -C --defined-only "$objfile" 2>/dev/null | grep -qw "$func"; then
        func_to_file["$func"]="${obj_base}"
      fi
    done
  done < <(find "$BUILD_DIR/$SPEC_TARGET" -name '*.o' 2>/dev/null)
  [[ ${#func_to_file[@]} -gt 0 ]] && printf '%s\n' "${func_to_file[@]}" | sort -u
}

if [[ ${#HOT_FUNCS[@]} -gt 0 ]]; then
  mapfile -t HOT_SRCS < <(map_funcs_to_files)
  if [[ ${#HOT_SRCS[@]} -gt 0 ]]; then
    SEARCH_SRCS=()
    for hs in "${HOT_SRCS[@]}"; do
      for as in "${ALL_SRCS[@]}"; do
        [[ "$as" == "$hs" ]] && { SEARCH_SRCS+=("$as"); break; }
      done
    done
    echo "  Hot-function source files: ${SEARCH_SRCS[*]}"

    # Validate: does skipping GVN on the hot set reproduce the effect?
    if [[ ${#SEARCH_SRCS[@]} -gt 0 && ${#SEARCH_SRCS[@]} -lt ${#ALL_SRCS[@]} ]]; then
      if ! validate_hot_set "$(join_csv "${SEARCH_SRCS[@]}")" "" "hot file set"; then
        echo "  Hot set not significant, falling back to all ${#ALL_SRCS[@]} files."
        SEARCH_SRCS=("${ALL_SRCS[@]}")
      fi
    fi
  else
    echo "  Could not map hot functions to files, using all."
    SEARCH_SRCS=("${ALL_SRCS[@]}")
  fi
else
  SEARCH_SRCS=("${ALL_SRCS[@]}")
fi

# ── Step 2: File bisection ────────────────────────────────────────────────────

echo ""
echo "--- Step 2: File-level bisection ---"

STEP_COUNT=0

file_bisect() {
  local -a files=("$@")

  if [[ ${#files[@]} -le 1 ]]; then
    echo "  >> Narrowed to ${#files[@]} file(s): ${files[*]}" >&2
    printf '%s\n' "${files[@]}"
    return
  fi

  local mid=$(( ${#files[@]} / 2 ))
  local -a set_a=("${files[@]:0:$mid}")
  local -a set_b=("${files[@]:$mid}")
  local csv_a csv_b
  csv_a=$(join_csv "${set_a[@]}")
  csv_b=$(join_csv "${set_b[@]}")

  echo "  Bisecting ${#files[@]} files: A=[${#set_a[@]}] B=[${#set_b[@]}]" >&2

  # Skip A
  echo -n "    Skip A (${#set_a[@]} files)... " >&2
  build_benchmark "$csv_a" ""
  local time_a
  time_a=$(measure_time)
  echo "${time_a}s" >&2

  # Skip B
  echo -n "    Skip B (${#set_b[@]} files)... " >&2
  build_benchmark "$csv_b" ""
  local time_b
  time_b=$(measure_time)
  echo "${time_b}s" >&2

  STEP_COUNT=$((STEP_COUNT + 1))
  log_iteration "file" "$STEP_COUNT" "$csv_a" "$time_a" "$time_b"

  local diff_a diff_b
  diff_a=$(pct_diff "$time_a" "$BASELINE_TIME")
  diff_b=$(pct_diff "$time_b" "$BASELINE_TIME")
  echo "    Diff A: ${diff_a}%  Diff B: ${diff_b}%  (vs baseline)" >&2

  local sig_a=0 sig_b=0
  is_significant "$diff_a" && sig_a=1
  is_significant "$diff_b" && sig_b=1

  if [[ $sig_a -eq 1 && $sig_b -eq 0 ]]; then
    echo "    -> GVN-sensitive code in set A" >&2
    file_bisect "${set_a[@]}"
  elif [[ $sig_a -eq 0 && $sig_b -eq 1 ]]; then
    echo "    -> GVN-sensitive code in set B" >&2
    file_bisect "${set_b[@]}"
  elif [[ $sig_a -eq 1 && $sig_b -eq 1 ]]; then
    echo "    -> Effect spans both sets, switching to removal mode" >&2
    removal_mode_files "${files[@]}"
  else
    echo "    -> Neither set significant — noise? Reporting all." >&2
    printf '%s\n' "${files[@]}"
  fi
}

removal_mode_files() {
  local -a files=("$@")
  local -a contributors=()
  local all_csv
  all_csv=$(join_csv "${files[@]}")

  echo "  Removal mode: all ${#files[@]} files skipped, re-enabling one by one" >&2
  build_benchmark "$all_csv" ""
  local all_skip_time
  all_skip_time=$(measure_time)
  echo "    All skipped: ${all_skip_time}s" >&2

  for file in "${files[@]}"; do
    local remaining=()
    for f in "${files[@]}"; do
      [[ "$f" != "$file" ]] && remaining+=("$f")
    done

    echo -n "    Re-enable $file... " >&2
    build_benchmark "$(join_csv "${remaining[@]}")" ""
    local t
    t=$(measure_time)
    local diff
    diff=$(pct_diff "$all_skip_time" "$t")
    echo "${t}s (${diff}%)" >&2

    if is_significant "$diff"; then
      echo "      -> $file contributes" >&2
      contributors+=("$file")
    fi

    STEP_COUNT=$((STEP_COUNT + 1))
    log_iteration "file-removal" "$STEP_COUNT" "$file" "$t" ""
  done

  if [[ ${#contributors[@]} -gt 0 ]]; then
    echo "  >> Contributors: ${contributors[*]}" >&2
    printf '%s\n' "${contributors[@]}"
  else
    echo "  >> No individual contributor — collective effect" >&2
    printf '%s\n' "${files[@]}"
  fi
}

if [[ ${#SEARCH_SRCS[@]} -le 1 ]]; then
  IDENTIFIED_FILES=("${SEARCH_SRCS[@]}")
  echo "  Only ${#SEARCH_SRCS[@]} file(s), skipping file bisection."
else
  mapfile -t IDENTIFIED_FILES < <(file_bisect "${SEARCH_SRCS[@]}")
fi

echo ""
echo "=== File result: ${IDENTIFIED_FILES[*]} ==="

# Restore
build_benchmark "" ""

save_checkpoint "files_done"

fi  # end resume guard (steps 0-2)

if [[ "$RESUMED_PHASE" != "funcs_done" && "$RESUMED_PHASE" != "complete" ]]; then

# ── Step 3: Function bisection ────────────────────────────────────────────────

echo ""
echo "--- Step 3: Function-level bisection ---"

get_functions_for_files() {
  for src in "${IDENTIFIED_FILES[@]}"; do
    for objfile in $(find "$BUILD_DIR/$SPEC_TARGET" -name "${src}.o" 2>/dev/null); do
      nm --defined-only "$objfile" 2>/dev/null | awk '/ [Tt] / {print $3}' | grep -v '^\.'
    done
  done | sort -u
}

mapfile -t ALL_FUNCS < <(get_functions_for_files)
echo "  Functions in identified files: ${#ALL_FUNCS[@]}"

# Intersect with hot functions if available (demangle for comparison)
if [[ ${#HOT_FUNCS[@]} -gt 0 ]]; then
  SEARCH_FUNCS=()
  for f in "${ALL_FUNCS[@]}"; do
    demangled=$(c++filt "$f")
    for hf in "${HOT_FUNCS[@]}"; do
      if [[ "$demangled" == *"$hf"* ]]; then
        SEARCH_FUNCS+=("$f")
        break
      fi
    done
  done
  if [[ ${#SEARCH_FUNCS[@]} -gt 0 ]]; then
    echo "  Hot functions in those files: ${SEARCH_FUNCS[*]}"

    # Validate: does skipping GVN on the hot functions reproduce the effect?
    if [[ ${#SEARCH_FUNCS[@]} -lt ${#ALL_FUNCS[@]} ]]; then
      if ! validate_hot_set "" "$(join_csv "${SEARCH_FUNCS[@]}")" "hot functions"; then
        echo "  Hot functions not significant, falling back to all ${#ALL_FUNCS[@]} functions."
        SEARCH_FUNCS=("${ALL_FUNCS[@]}")
      fi
    fi
  else
    echo "  No hot functions matched, using all."
    SEARCH_FUNCS=("${ALL_FUNCS[@]}")
  fi
else
  SEARCH_FUNCS=("${ALL_FUNCS[@]}")
fi

func_bisect() {
  local -a funcs=("$@")

  if [[ ${#funcs[@]} -le 1 ]]; then
    echo "  >> Narrowed to ${#funcs[@]} function(s): ${funcs[*]}" >&2
    printf '%s\n' "${funcs[@]}"
    return
  fi

  local mid=$(( ${#funcs[@]} / 2 ))
  local -a set_a=("${funcs[@]:0:$mid}")
  local -a set_b=("${funcs[@]:$mid}")
  local csv_a csv_b
  csv_a=$(join_csv "${set_a[@]}")
  csv_b=$(join_csv "${set_b[@]}")

  echo "  Bisecting ${#funcs[@]} functions: A=[${#set_a[@]}] B=[${#set_b[@]}]" >&2

  echo -n "    Skip A (${#set_a[@]} funcs)... " >&2
  build_benchmark "" "$csv_a"
  local time_a
  time_a=$(measure_time)
  echo "${time_a}s" >&2

  echo -n "    Skip B (${#set_b[@]} funcs)... " >&2
  build_benchmark "" "$csv_b"
  local time_b
  time_b=$(measure_time)
  echo "${time_b}s" >&2

  STEP_COUNT=$((STEP_COUNT + 1))
  log_iteration "func" "$STEP_COUNT" "$csv_a" "$time_a" "$time_b"

  local diff_a diff_b
  diff_a=$(pct_diff "$time_a" "$BASELINE_TIME")
  diff_b=$(pct_diff "$time_b" "$BASELINE_TIME")
  echo "    Diff A: ${diff_a}%  Diff B: ${diff_b}%  (vs baseline)" >&2

  local sig_a=0 sig_b=0
  is_significant "$diff_a" && sig_a=1
  is_significant "$diff_b" && sig_b=1

  if [[ $sig_a -eq 1 && $sig_b -eq 0 ]]; then
    echo "    -> GVN-sensitive in set A" >&2
    func_bisect "${set_a[@]}"
  elif [[ $sig_a -eq 0 && $sig_b -eq 1 ]]; then
    echo "    -> GVN-sensitive in set B" >&2
    func_bisect "${set_b[@]}"
  elif [[ $sig_a -eq 1 && $sig_b -eq 1 ]]; then
    echo "    -> Effect spans both sets, removal mode" >&2
    removal_mode_funcs "${funcs[@]}"
  else
    echo "    -> Neither significant — noise? Reporting all." >&2
    printf '%s\n' "${funcs[@]}"
  fi
}

removal_mode_funcs() {
  local -a funcs=("$@")
  local -a contributors=()
  local all_csv
  all_csv=$(join_csv "${funcs[@]}")

  echo "  Removal mode: all ${#funcs[@]} functions skipped, re-enabling one by one" >&2
  build_benchmark "" "$all_csv"
  local all_skip_time
  all_skip_time=$(measure_time)
  echo "    All skipped: ${all_skip_time}s" >&2

  for func in "${funcs[@]}"; do
    local remaining=()
    for f in "${funcs[@]}"; do
      [[ "$f" != "$func" ]] && remaining+=("$f")
    done

    echo -n "    Re-enable $func... " >&2
    build_benchmark "" "$(join_csv "${remaining[@]}")"
    local t
    t=$(measure_time)
    local diff
    diff=$(pct_diff "$all_skip_time" "$t")
    echo "${t}s (${diff}%)" >&2

    if is_significant "$diff"; then
      echo "      -> $func contributes" >&2
      contributors+=("$func")
    fi

    STEP_COUNT=$((STEP_COUNT + 1))
    log_iteration "func-removal" "$STEP_COUNT" "$func" "$t" ""
  done

  if [[ ${#contributors[@]} -gt 0 ]]; then
    echo "  >> Contributors: ${contributors[*]}" >&2
    printf '%s\n' "${contributors[@]}"
  else
    echo "  >> No individual contributor — collective effect" >&2
    printf '%s\n' "${funcs[@]}"
  fi
}

IDENTIFIED_FUNCS=()
if [[ ${#SEARCH_FUNCS[@]} -le 1 ]]; then
  IDENTIFIED_FUNCS=("${SEARCH_FUNCS[@]}")
  echo "  Only ${#SEARCH_FUNCS[@]} function(s), skipping function bisection."
else
  mapfile -t IDENTIFIED_FUNCS < <(func_bisect "${SEARCH_FUNCS[@]}")
fi

echo ""
echo "=== Function result: ${IDENTIFIED_FUNCS[*]} ==="

save_checkpoint "funcs_done"

fi  # end resume guard (step 3)

if [[ "$RESUMED_PHASE" != "complete" ]]; then

# ── Step 4: Instruction-level bisection (debug counters) ─────────────────────

ELIMINATION_BISECT_JSON="{}"

if [[ "$GVN_BASE" == "NewGVN" ]]; then
  echo ""
  echo "--- Step 4: Instruction bisection ---"
  echo "  Skipped: newgvn-eliminate debug counter not wired in NewGVN. (LLVM TODO)"
else

echo ""
echo "--- Step 4: Instruction-level bisection ---"

# Ensure objects exist (may be missing after resume + fresh configure)
echo -n "  Building baseline for object inspection... "
build_benchmark "" ""
echo "done"

# Helper: map a function (mangled name) to its source file basename.
get_src_for_func() {
  local func="$1"
  for src in "${IDENTIFIED_FILES[@]}"; do
    for objfile in $(find "$BUILD_DIR/$SPEC_TARGET" -name "${src}.o" 2>/dev/null); do
      if nm --defined-only "$objfile" 2>/dev/null | awk '/ [Tt] /' | grep -qw "$func"; then
        echo "$src"
        return
      fi
    done
  done
}

# Helper: get all defined functions in a source file's object.
get_funcs_in_src() {
  local src="$1"
  for objfile in $(find "$BUILD_DIR/$SPEC_TARGET" -name "${src}.o" 2>/dev/null); do
    nm --defined-only "$objfile" 2>/dev/null | awk '/ [Tt] / {print $3}' | grep -v '^\.'
  done | sort -u
}

# Helper: build with debug counter gating N eliminations for the target function.
# All other functions in the source file are skipped via skip_gvn_funcs.
# N=0 means the target is also skipped (zero eliminations).
# Optional 5th arg: path to capture -print-debug-counter output.
build_with_counter() {
  local n="$1" skip_csv="$2" src="$3" target_func="$4"
  local counter_outfile="${5:-}"

  local extra_args=()

  if [[ $n -eq 0 ]]; then
    # Skip target function too — zero eliminations
    local all_skip="$target_func"
    [[ -n "$skip_csv" ]] && all_skip="${skip_csv},${target_func}"
    extra_args+=(skip_gvn_funcs="$all_skip" gvn_func_skip_flag="$GVN_FUNC_SKIP_FLAG")
  else
    extra_args+=(skip_gvn_funcs="$skip_csv" gvn_func_skip_flag="$GVN_FUNC_SKIP_FLAG")
    extra_args+=(debug_counter="${COUNTER_NAME}=0-$((n-1))" debug_counter_src="$src")
    [[ -n "$counter_outfile" ]] && extra_args+=(debug_counter_outfile="$counter_outfile")
  fi

  if ! "$BASE/scripts/build_variant.sh" "$VARIANT" ref "$SPEC_SUITE/$BENCHMARK" "${extra_args[@]}" \
      >> "$BUILD_LOG" 2>&1; then
    echo "Last 10 lines of build log:" >&2
    tail -10 "$BUILD_LOG" >&2
    die "build failed (see $BUILD_LOG)"
  fi
}

# Helper: extract total shouldExecute() call count from -print-debug-counter output file.
# Output format: "counter-name : {N,range}"  →  extracts N.
get_counter_total() {
  local counter="$1" outfile="$2"
  grep -oP "${counter}\s*:\s*\{\K[0-9]+" "$outfile" | tail -1
}

for target_func in "${IDENTIFIED_FUNCS[@]}"; do
  echo ""
  echo "  --- Bisecting eliminations for: $target_func ---"

  # Find source file for this function
  src_file=$(get_src_for_func "$target_func")
  if [[ -z "$src_file" ]]; then
    echo "    Could not map function to source file, skipping."
    continue
  fi
  echo "    Source file: $src_file"

  # Get all functions in the source file, compute skip list (all except target)
  mapfile -t src_funcs < <(get_funcs_in_src "$src_file")
  skip_others=()
  for f in "${src_funcs[@]}"; do
    [[ "$f" != "$target_func" ]] && skip_others+=("$f")
  done
  skip_csv=$(join_csv "${skip_others[@]}")

  echo "    Functions in file: ${#src_funcs[@]}, skipping ${#skip_others[@]} others"

  # Discover total elimination count via -print-debug-counter.
  # Build with a large range; the outfile captures the counter stats
  # bypassing ninja's stderr buffering.
  counter_outfile="$OUTPUT_DIR/.counter-${target_func}.txt"
  > "$counter_outfile"
  echo -n "    Discovering elimination count... "
  build_with_counter 999999 "$skip_csv" "$src_file" "$target_func" "$counter_outfile"
  max_n=$(get_counter_total "$COUNTER_NAME" "$counter_outfile")
  if [[ -z "$max_n" || "$max_n" -eq 0 ]]; then
    echo "no eliminations found, skipping."
    rm -f "$counter_outfile"
    continue
  fi
  echo "$max_n"
  rm -f "$counter_outfile"

  # Reference: time with all eliminations (reuse the discovery build)
  echo -n "    time(all=$max_n elims)... "
  time_all=$(measure_time)
  echo "${time_all}s"

  # Reference: time with zero eliminations (target also skipped)
  echo -n "    time(none=0 elims)... "
  build_with_counter 0 "$skip_csv" "$src_file" "$target_func"
  time_none=$(measure_time)
  echo "${time_none}s"

  func_diff=$(pct_diff "$time_all" "$time_none")
  echo "    Effect: ${func_diff}%"

  if ! is_significant "$func_diff"; then
    echo "    Not significant, skipping."
    ELIMINATION_BISECT_JSON=$(echo "$ELIMINATION_BISECT_JSON" | jq \
      --arg func "$target_func" --arg src "$src_file" --argjson max "$max_n" \
      --arg ta "$time_all" --arg tn "$time_none" --arg diff "$func_diff" \
      '. + {($func): {source_file: $src, counter_name: "'"$COUNTER_NAME"'", total_count: $max, culprit_index: null, time_all_elims: ($ta|tonumber), time_no_elims: ($tn|tonumber), diff_pct: ($diff|tonumber), note: "not significant"}}')
    continue
  fi

  # Binary search on [0, max_n]
  echo "    Binary search on [0, $max_n]..."
  low=0
  high=$max_n
  step4_step=0
  step4_iters="[]"

  while [[ $low -lt $high ]]; do
    mid=$(( (low + high) / 2 ))

    if [[ $mid -eq 0 ]]; then
      t=$time_none
    else
      build_with_counter "$mid" "$skip_csv" "$src_file" "$target_func"
      t=$(measure_time)
    fi

    diff_from_all=$(pct_diff "$t" "$time_all")
    step4_step=$((step4_step + 1))

    echo "    step=$step4_step  low=$low  high=$high  mid=$mid  time=${t}s  diff=${diff_from_all}%"

    step4_iters=$(echo "$step4_iters" | jq \
      --argjson step "$step4_step" --argjson mid "$mid" --arg t "$t" --arg d "$diff_from_all" \
      '. + [{"step": $step, "mid": $mid, "time": ($t|tonumber), "diff_from_all": ($d|tonumber)}]')

    if is_significant "$diff_from_all"; then
      low=$((mid + 1))
    else
      high=$mid
    fi
  done

  culprit=$low
  echo "    >> Culprit elimination index: $culprit (0-indexed, out of $max_n)"

  ELIMINATION_BISECT_JSON=$(echo "$ELIMINATION_BISECT_JSON" | jq \
    --arg func "$target_func" --arg src "$src_file" --argjson max "$max_n" \
    --argjson culprit "$culprit" --arg ta "$time_all" --arg tn "$time_none" \
    --arg diff "$func_diff" --argjson iters "$step4_iters" \
    '. + {($func): {source_file: $src, counter_name: "'"$COUNTER_NAME"'", total_count: $max, culprit_index: $culprit, time_all_elims: ($ta|tonumber), time_no_elims: ($tn|tonumber), diff_pct: ($diff|tonumber), iterations: $iters}}')

  log_iteration "insn" "$step4_step" "$target_func:$culprit" "$time_all" "$time_none"
done

fi  # end NewGVN guard

save_checkpoint "complete"

fi  # end resume guard (step 4)

# ── Write results ─────────────────────────────────────────────────────────────

# Restore clean build
build_benchmark "" ""

jq -n \
  --arg bench "$BENCHMARK" \
  --arg variant "$VARIANT" \
  --arg gvn_base "$GVN_BASE" \
  --arg baseline "$BASELINE_TIME" \
  --arg nogvn "$NOGVN_TIME" \
  --arg total_diff "$TOTAL_DIFF" \
  --argjson files "$(printf '%s\n' "${IDENTIFIED_FILES[@]}" | jq -R . | jq -s .)" \
  --argjson funcs "$(printf '%s\n' "${IDENTIFIED_FUNCS[@]}" | jq -R . | jq -s .)" \
  --argjson iterations "$ITERATIONS_JSON" \
  --argjson elim_bisect "$ELIMINATION_BISECT_JSON" \
  '{
    benchmark: $bench,
    variant: $variant,
    gvn_base: $gvn_base,
    baseline_time: ($baseline | tonumber),
    nogvn_time: ($nogvn | tonumber),
    total_diff_pct: ($total_diff | tonumber),
    files_identified: $files,
    functions_identified: $funcs,
    iterations: $iterations,
    elimination_bisect: $elim_bisect
  }' > "$OUTPUT_JSON"

rm -f "$CHECKPOINT"

echo ""
echo "=== Done ==="
echo "  Results: $OUTPUT_JSON"
echo "  Files:     ${IDENTIFIED_FILES[*]}"
echo "  Functions: ${IDENTIFIED_FUNCS[*]}"
if [[ "$ELIMINATION_BISECT_JSON" != "{}" ]]; then
  echo "  Eliminations: $(echo "$ELIMINATION_BISECT_JSON" | jq -r 'to_entries[] | "    \(.key): index \(.value.culprit_index // "N/A") / \(.value.total_count)"')"
fi
