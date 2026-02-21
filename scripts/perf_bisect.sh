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
#   5. When both halves show an effect, switches to removal mode
#
# Run on multiple variants and compare results to understand GVN differences.

set -euo pipefail
source "$(dirname "$0")/common.sh"

# ── Args ──────────────────────────────────────────────────────────────────────

BENCHMARK="${1:?Usage: perf_bisect.sh <benchmark> <variant> [options]}"
VARIANT="${2:?Usage: perf_bisect.sh <benchmark> <variant> [options]}"
shift 2

RUNS=3
THRESHOLD=2

for arg in "$@"; do
  case "$arg" in
    runs=*)      RUNS="${arg#*=}" ;;
    threshold=*) THRESHOLD="${arg#*=}" ;;
    *)           echo "Unknown argument: $arg" >&2; exit 1 ;;
  esac
done

# ── Derived paths ─────────────────────────────────────────────────────────────

HOTNESS_CSV="$BASE/profiles/hotness/${BENCHMARK}.csv"
BUILD_DIR="$BASE/$BUILD_ROOT_BASE/$VARIANT"
OUTPUT_DIR="$BASE/results/perf_analysis/$BENCHMARK"
OUTPUT_JSON="$OUTPUT_DIR/bisect-${VARIANT}.json"
BUILD_LOG="$OUTPUT_DIR/bisect-${VARIANT}-build.log"

mkdir -p "$OUTPUT_DIR"

# ── Resolve variant metadata ─────────────────────────────────────────────────

GVN_BASE=$(yq ".[] | select(.id == \"$VARIANT\") | .gvn_base" "$BASE/$VARIANTS" | jq -r .)

if [[ -z "$GVN_BASE" || "$GVN_BASE" == "null" ]]; then
  echo "Error: variant '$VARIANT' not found or has no gvn_base" >&2
  exit 1
fi

case "$GVN_BASE" in
  GVNPRE)  GVN_FUNC_SKIP_FLAG="skip-gvn-for-funcs" ;;
  NewGVN)  GVN_FUNC_SKIP_FLAG="skip-newgvn-for-funcs" ;;
  NoGVN)   echo "Error: variant has no GVN to bisect (gvn_base=NoGVN)" >&2; exit 1 ;;
  *)       echo "Error: unsupported gvn_base '$GVN_BASE'" >&2; exit 1 ;;
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
  echo "Error: benchmark '$bench' not found in test-suite" >&2
  exit 1
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

  local extra_args=(no_clean=1)
  [[ -n "$skip_srcs" ]]  && extra_args+=(skip_gvn_srcs="$skip_srcs")
  [[ -n "$skip_funcs" ]] && extra_args+=(skip_gvn_funcs="$skip_funcs" gvn_func_skip_flag="$GVN_FUNC_SKIP_FLAG")

  if ! "$BASE/scripts/build_variant.sh" "$VARIANT" ref "$SPEC_SUITE/$BENCHMARK" "${extra_args[@]}" \
      >> "$BUILD_LOG" 2>&1; then
    echo "FAILED (see $BUILD_LOG)" >&2
    echo "  Last 10 lines:" >&2
    tail -10 "$BUILD_LOG" >&2
    return 1
  fi
}

measure_time() {
  cd "$BUILD_DIR"
  mkdir -p results

  local times=()
  for ((i=0; i<RUNS; i++)); do
    if ! taskset -c 1 "$LIT" -j1 "$SPEC_TARGET" \
        -o "results/bisect_run_${i}.json" >> "$BUILD_LOG" 2>&1; then
      echo "FAILED (lit run $i failed, see $BUILD_LOG)" >&2
      tail -10 "$BUILD_LOG" >&2
      cd "$BASE"
      echo "ERROR"; return 1
    fi

    local t
    t=$(jq -r ".tests[] | select(.name | test(\"${BENCHMARK}\")) | .metrics.exec_time" \
        "results/bisect_run_${i}.json" 2>/dev/null)
    [[ -n "$t" && "$t" != "null" ]] && times+=("$t")
  done
  cd "$BASE"

  if [[ ${#times[@]} -eq 0 ]]; then
    echo "ERROR (no valid times collected)" >&2
    echo "ERROR"; return 1
  fi
  printf '%s\n' "${times[@]}" | sort -n | awk '{a[NR]=$1} END{print a[int((NR+1)/2)]}'
}

pct_diff() {
  awk "BEGIN { printf \"%.2f\", (($1 - $2) / $2) * 100 }"
}

is_significant() {
  awk "BEGIN { exit !( sqrt(($1)^2) > $THRESHOLD ) }"
}

invalidate_objects() {
  local srcs_csv="$1"
  IFS=',' read -ra srcs <<< "$srcs_csv"
  for src in "${srcs[@]}"; do
    local stem="${src%.*}"
    find "$BUILD_DIR/$SPEC_TARGET" \( -name "${stem}.o" -o -name "${stem}.cpp.o" -o -name "${stem}.c.o" \) 2>/dev/null \
      | xargs rm -f 2>/dev/null || true
  done
}

join_csv() { local IFS=','; echo "$*"; }

# ── JSON logging ──────────────────────────────────────────────────────────────

ITERATIONS_JSON="[]"

log_iteration() {
  local phase="$1" step="$2" skip_set="$3" time_val="$4" complement_time="${5:-null}"
  ITERATIONS_JSON=$(echo "$ITERATIONS_JSON" | jq \
    --arg phase "$phase" --argjson step "$step" \
    --arg skip_set "$skip_set" --arg time "$time_val" --arg comp "$complement_time" \
    '. + [{"phase": $phase, "step": ($step), "skip_set": $skip_set, "time": $time, "complement_time": $comp}]')
}

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
    | sort -u \
    | while read -r src; do basename "$src"; done
  cd "$BASE"
)
ALL_SRCS_CSV=$(join_csv "${ALL_SRCS_TMP[@]}")
invalidate_objects "$ALL_SRCS_CSV"
build_benchmark "$ALL_SRCS_CSV" ""
NOGVN_TIME=$(measure_time)
echo "${NOGVN_TIME}s"

TOTAL_DIFF=$(pct_diff "$NOGVN_TIME" "$BASELINE_TIME")
echo "  Effect of disabling GVN: ${TOTAL_DIFF}%"

# Restore baseline
invalidate_objects "$ALL_SRCS_CSV"
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
  for objfile in "$BUILD_DIR"/$SPEC_TARGET/*.o "$BUILD_DIR"/$SPEC_TARGET/**/*.o 2>/dev/null; do
    [[ -f "$objfile" ]] || continue
    local obj_base
    obj_base=$(basename "$objfile" .o)
    for func in "${HOT_FUNCS[@]}"; do
      if nm --defined-only "$objfile" 2>/dev/null | grep -qw "$func"; then
        func_to_file["$func"]="${obj_base}"
      fi
    done
  done
  printf '%s\n' "${func_to_file[@]}" | sort -u
}

if [[ ${#HOT_FUNCS[@]} -gt 0 ]]; then
  mapfile -t HOT_SRCS < <(map_funcs_to_files)
  if [[ ${#HOT_SRCS[@]} -gt 0 ]]; then
    SEARCH_SRCS=()
    for hs in "${HOT_SRCS[@]}"; do
      for as in "${ALL_SRCS[@]}"; do
        [[ "${as%.*}" == "$hs" ]] && { SEARCH_SRCS+=("$as"); break; }
      done
    done
    echo "  Hot-function source files: ${SEARCH_SRCS[*]}"
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

  if [[ ${#files[@]} -le 3 ]]; then
    echo "  >> Narrowed to ${#files[@]} file(s): ${files[*]}"
    printf '%s\n' "${files[@]}"
    return
  fi

  local mid=$(( ${#files[@]} / 2 ))
  local -a set_a=("${files[@]:0:$mid}")
  local -a set_b=("${files[@]:$mid}")
  local csv_a csv_b
  csv_a=$(join_csv "${set_a[@]}")
  csv_b=$(join_csv "${set_b[@]}")

  echo "  Bisecting ${#files[@]} files: A=[${#set_a[@]}] B=[${#set_b[@]}]"

  # Skip A
  invalidate_objects "$csv_a,$csv_b"
  echo -n "    Skip A (${#set_a[@]} files)... "
  build_benchmark "$csv_a" ""
  local time_a
  time_a=$(measure_time)
  echo "${time_a}s"

  # Skip B
  invalidate_objects "$csv_a,$csv_b"
  echo -n "    Skip B (${#set_b[@]} files)... "
  build_benchmark "$csv_b" ""
  local time_b
  time_b=$(measure_time)
  echo "${time_b}s"

  STEP_COUNT=$((STEP_COUNT + 1))
  log_iteration "file" "$STEP_COUNT" "$csv_a" "$time_a" "$time_b"

  local diff_a diff_b
  diff_a=$(pct_diff "$time_a" "$BASELINE_TIME")
  diff_b=$(pct_diff "$time_b" "$BASELINE_TIME")
  echo "    Diff A: ${diff_a}%  Diff B: ${diff_b}%  (vs baseline)"

  local sig_a=0 sig_b=0
  is_significant "$diff_a" && sig_a=1
  is_significant "$diff_b" && sig_b=1

  if [[ $sig_a -eq 1 && $sig_b -eq 0 ]]; then
    echo "    -> GVN-sensitive code in set A"
    file_bisect "${set_a[@]}"
  elif [[ $sig_a -eq 0 && $sig_b -eq 1 ]]; then
    echo "    -> GVN-sensitive code in set B"
    file_bisect "${set_b[@]}"
  elif [[ $sig_a -eq 1 && $sig_b -eq 1 ]]; then
    echo "    -> Effect spans both sets, switching to removal mode"
    removal_mode_files "${files[@]}"
  else
    echo "    -> Neither set significant — noise? Reporting all."
    printf '%s\n' "${files[@]}"
  fi
}

removal_mode_files() {
  local -a files=("$@")
  local -a contributors=()
  local all_csv
  all_csv=$(join_csv "${files[@]}")

  echo "  Removal mode: all ${#files[@]} files skipped, re-enabling one by one"
  invalidate_objects "$all_csv"
  build_benchmark "$all_csv" ""
  local all_skip_time
  all_skip_time=$(measure_time)
  echo "    All skipped: ${all_skip_time}s"

  for file in "${files[@]}"; do
    local remaining=()
    for f in "${files[@]}"; do
      [[ "$f" != "$file" ]] && remaining+=("$f")
    done

    invalidate_objects "$all_csv"
    echo -n "    Re-enable $file... "
    build_benchmark "$(join_csv "${remaining[@]}")" ""
    local t
    t=$(measure_time)
    local diff
    diff=$(pct_diff "$all_skip_time" "$t")
    echo "${t}s (${diff}%)"

    if is_significant "$diff"; then
      echo "      -> $file contributes"
      contributors+=("$file")
    fi

    STEP_COUNT=$((STEP_COUNT + 1))
    log_iteration "file-removal" "$STEP_COUNT" "$file" "$t" ""
  done

  if [[ ${#contributors[@]} -gt 0 ]]; then
    echo "  >> Contributors: ${contributors[*]}"
    printf '%s\n' "${contributors[@]}"
  else
    echo "  >> No individual contributor — collective effect"
    printf '%s\n' "${files[@]}"
  fi
}

IDENTIFIED_FILES=()
if [[ ${#SEARCH_SRCS[@]} -le 3 ]]; then
  IDENTIFIED_FILES=("${SEARCH_SRCS[@]}")
  echo "  Only ${#SEARCH_SRCS[@]} file(s), skipping file bisection."
else
  mapfile -t IDENTIFIED_FILES < <(file_bisect "${SEARCH_SRCS[@]}")
fi

echo ""
echo "=== File result: ${IDENTIFIED_FILES[*]} ==="

# Restore
invalidate_objects "$(join_csv "${SEARCH_SRCS[@]}")"
build_benchmark "" ""

# ── Step 3: Function bisection ────────────────────────────────────────────────

echo ""
echo "--- Step 3: Function-level bisection ---"

get_functions_for_files() {
  for src in "${IDENTIFIED_FILES[@]}"; do
    local stem="${src%.*}"
    for objfile in $(find "$BUILD_DIR/$SPEC_TARGET" \( -name "${stem}.o" -o -name "${stem}.cpp.o" -o -name "${stem}.c.o" \) 2>/dev/null); do
      nm --defined-only "$objfile" 2>/dev/null | awk '/ [Tt] / {print $3}' | grep -v '^\.'
    done
  done | sort -u
}

mapfile -t ALL_FUNCS < <(get_functions_for_files)
echo "  Functions in identified files: ${#ALL_FUNCS[@]}"

# Intersect with hot functions if available
if [[ ${#HOT_FUNCS[@]} -gt 0 ]]; then
  SEARCH_FUNCS=()
  for f in "${ALL_FUNCS[@]}"; do
    for hf in "${HOT_FUNCS[@]}"; do
      [[ "$f" == "$hf" ]] && { SEARCH_FUNCS+=("$f"); break; }
    done
  done
  if [[ ${#SEARCH_FUNCS[@]} -gt 0 ]]; then
    echo "  Hot functions in those files: ${SEARCH_FUNCS[*]}"
  else
    echo "  No hot functions matched, using all."
    SEARCH_FUNCS=("${ALL_FUNCS[@]}")
  fi
else
  SEARCH_FUNCS=("${ALL_FUNCS[@]}")
fi

func_bisect() {
  local -a funcs=("$@")

  if [[ ${#funcs[@]} -le 3 ]]; then
    echo "  >> Narrowed to ${#funcs[@]} function(s): ${funcs[*]}"
    printf '%s\n' "${funcs[@]}"
    return
  fi

  local mid=$(( ${#funcs[@]} / 2 ))
  local -a set_a=("${funcs[@]:0:$mid}")
  local -a set_b=("${funcs[@]:$mid}")
  local csv_a csv_b
  csv_a=$(join_csv "${set_a[@]}")
  csv_b=$(join_csv "${set_b[@]}")

  echo "  Bisecting ${#funcs[@]} functions: A=[${#set_a[@]}] B=[${#set_b[@]}]"

  invalidate_objects "$(join_csv "${IDENTIFIED_FILES[@]}")"
  echo -n "    Skip A (${#set_a[@]} funcs)... "
  build_benchmark "" "$csv_a"
  local time_a
  time_a=$(measure_time)
  echo "${time_a}s"

  invalidate_objects "$(join_csv "${IDENTIFIED_FILES[@]}")"
  echo -n "    Skip B (${#set_b[@]} funcs)... "
  build_benchmark "" "$csv_b"
  local time_b
  time_b=$(measure_time)
  echo "${time_b}s"

  STEP_COUNT=$((STEP_COUNT + 1))
  log_iteration "func" "$STEP_COUNT" "$csv_a" "$time_a" "$time_b"

  local diff_a diff_b
  diff_a=$(pct_diff "$time_a" "$BASELINE_TIME")
  diff_b=$(pct_diff "$time_b" "$BASELINE_TIME")
  echo "    Diff A: ${diff_a}%  Diff B: ${diff_b}%  (vs baseline)"

  local sig_a=0 sig_b=0
  is_significant "$diff_a" && sig_a=1
  is_significant "$diff_b" && sig_b=1

  if [[ $sig_a -eq 1 && $sig_b -eq 0 ]]; then
    echo "    -> GVN-sensitive in set A"
    func_bisect "${set_a[@]}"
  elif [[ $sig_a -eq 0 && $sig_b -eq 1 ]]; then
    echo "    -> GVN-sensitive in set B"
    func_bisect "${set_b[@]}"
  elif [[ $sig_a -eq 1 && $sig_b -eq 1 ]]; then
    echo "    -> Effect spans both sets, removal mode"
    removal_mode_funcs "${funcs[@]}"
  else
    echo "    -> Neither significant — noise? Reporting all."
    printf '%s\n' "${funcs[@]}"
  fi
}

removal_mode_funcs() {
  local -a funcs=("$@")
  local -a contributors=()
  local all_csv
  all_csv=$(join_csv "${funcs[@]}")

  echo "  Removal mode: all ${#funcs[@]} functions skipped, re-enabling one by one"
  invalidate_objects "$(join_csv "${IDENTIFIED_FILES[@]}")"
  build_benchmark "" "$all_csv"
  local all_skip_time
  all_skip_time=$(measure_time)
  echo "    All skipped: ${all_skip_time}s"

  for func in "${funcs[@]}"; do
    local remaining=()
    for f in "${funcs[@]}"; do
      [[ "$f" != "$func" ]] && remaining+=("$f")
    done

    invalidate_objects "$(join_csv "${IDENTIFIED_FILES[@]}")"
    echo -n "    Re-enable $func... "
    build_benchmark "" "$(join_csv "${remaining[@]}")"
    local t
    t=$(measure_time)
    local diff
    diff=$(pct_diff "$all_skip_time" "$t")
    echo "${t}s (${diff}%)"

    if is_significant "$diff"; then
      echo "      -> $func contributes"
      contributors+=("$func")
    fi

    STEP_COUNT=$((STEP_COUNT + 1))
    log_iteration "func-removal" "$STEP_COUNT" "$func" "$t" ""
  done

  if [[ ${#contributors[@]} -gt 0 ]]; then
    echo "  >> Contributors: ${contributors[*]}"
    printf '%s\n' "${contributors[@]}"
  else
    echo "  >> No individual contributor — collective effect"
    printf '%s\n' "${funcs[@]}"
  fi
}

IDENTIFIED_FUNCS=()
if [[ ${#SEARCH_FUNCS[@]} -le 3 ]]; then
  IDENTIFIED_FUNCS=("${SEARCH_FUNCS[@]}")
  echo "  Only ${#SEARCH_FUNCS[@]} function(s), skipping function bisection."
else
  mapfile -t IDENTIFIED_FUNCS < <(func_bisect "${SEARCH_FUNCS[@]}")
fi

echo ""
echo "=== Function result: ${IDENTIFIED_FUNCS[*]} ==="

# ── Write results ─────────────────────────────────────────────────────────────

# Restore clean build
invalidate_objects "$(join_csv "${IDENTIFIED_FILES[@]}")"
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
  '{
    benchmark: $bench,
    variant: $variant,
    gvn_base: $gvn_base,
    baseline_time: ($baseline | tonumber),
    nogvn_time: ($nogvn | tonumber),
    total_diff_pct: ($total_diff | tonumber),
    files_identified: $files,
    functions_identified: $funcs,
    iterations: $iterations
  }' > "$OUTPUT_JSON"

echo ""
echo "=== Done ==="
echo "  Results: $OUTPUT_JSON"
echo "  Files:     ${IDENTIFIED_FILES[*]}"
echo "  Functions: ${IDENTIFIED_FUNCS[*]}"
