#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"

set -euo pipefail

# === Configuration ===
VARIANT="${VARIANT:-NewGVN-opt-s1-p0-greedy}"
TOP_N="${TOP_N:-20}"
RUN_TYPE="${RUN_TYPE:-test}"
SKIP_BUILD="${SKIP_BUILD:-0}"
OUTPUT_DIR="$BASE/hot_functions"
MANIFEST="$OUTPUT_DIR/manifest.csv"

LLVM_EXTRACT="$BIN/bin/llvm-extract"
OPT="$BIN/bin/opt"

ALL_BENCHMARKS=(
  600.perlbench_s 602.gcc_s 605.mcf_s 620.omnetpp_s
  623.xalancbmk_s 625.x264_s 631.deepsjeng_s 641.leela_s 657.xz_s
)

# C++ benchmarks need demangling for name matching
CPP_BENCHMARKS="620.omnetpp_s 623.xalancbmk_s 631.deepsjeng_s 641.leela_s"

# === Usage ===
usage() {
  cat >&2 <<EOF
Usage: $0 [options]

Extract hot functions as standalone LLVM IR files for Alive2 analysis.
Reads profiling data from profiles/hotness/<bench>.csv.

Options:
  --variant NAME      Build variant (default: $VARIANT)
  --benchmarks LIST   Comma-separated benchmarks (default: all 9 CINT2017speed)
  --top N             Top N hot functions per benchmark (default: $TOP_N)
  --skip-build        Skip building, reuse existing IR dumps in staging
  --run-type TYPE     ref or test (default: $RUN_TYPE)
  -h, --help          Show this help
EOF
}

# === Parse arguments ===
BENCHMARKS=()
while [[ $# -gt 0 ]]; do
  case "$1" in
    --variant)     VARIANT="$2"; shift 2 ;;
    --benchmarks)  IFS=',' read -ra BENCHMARKS <<< "$2"; shift 2 ;;
    --top)         TOP_N="$2"; shift 2 ;;
    --skip-build)  SKIP_BUILD=1; shift ;;
    --run-type)    RUN_TYPE="$2"; shift 2 ;;
    -h|--help)     usage; exit 0 ;;
    *)             echo "Unknown: $1" >&2; usage; exit 1 ;;
  esac
done

if [[ ${#BENCHMARKS[@]} -eq 0 ]]; then
  BENCHMARKS=("${ALL_BENCHMARKS[@]}")
fi

STAGING_DIR="$OUTPUT_DIR/.staging"

# === Helpers ===

is_cpp_bench() {
  [[ "$CPP_BENCHMARKS" == *"$1"* ]]
}

# Parse IR function name from dump header:
#   ; *** IR Dump Before NewGVNPass on <ir_name> ***
parse_ir_name() {
  head -1 "$1" | sed 's/; \*\*\* IR Dump Before .* on \(.*\) \*\*\*/\1/'
}

# Sanitize an IR name for use as a filename
sanitize_name() {
  echo "$1" | tr '/<>:*? ' '______'
}

# Match a short demangled name against a target list.
# Returns 0 (true) if the demangled short name is in the targets.
match_demangled() {
  local ir_name="$1"
  shift
  local targets=("$@")

  local demangled
  demangled=$(echo "$ir_name" | c++filt)
  # Strip parameters: cMessageHeap::removeFirst() -> cMessageHeap::removeFirst
  local no_params="${demangled%%(*}"
  # Strip qualifiers: cMessageHeap::removeFirst -> removeFirst
  local short="${no_params##*::}"

  for t in "${targets[@]}"; do
    if [[ "$short" == "$t" ]]; then
      return 0
    fi
  done
  return 1
}

# Extract and clean a single function from a module dump file
extract_function() {
  local dump_file="$1"
  local ir_name="$2"
  local output_file="$3"

  local tmp_dir
  tmp_dir=$(mktemp -d)
  trap "rm -rf '$tmp_dir'" RETURN

  # Extract target function (textual IR throughout)
  if ! "$LLVM_EXTRACT" -S --func="$ir_name" "$dump_file" -o "$tmp_dir/extracted.ll" 2>/dev/null; then
    echo "    WARN: llvm-extract failed for '$ir_name'" >&2
    return 1
  fi

  # Strip debug info and named metadata
  if ! "$OPT" -S --strip-debug --strip-named-metadata "$tmp_dir/extracted.ll" -o "$output_file" 2>/dev/null; then
    echo "    WARN: opt strip failed for '$ir_name'" >&2
    return 1
  fi
}

# === Main ===

mkdir -p "$OUTPUT_DIR"
echo "bench,demangled_name,ir_name,pct,file" > "$MANIFEST"

export DBG_PASS=newgvn

for bench in "${BENCHMARKS[@]}"; do
  echo "=== $bench ==="

  hotness_csv="$BASE/profiles/hotness/${bench}.csv"
  if [[ ! -f "$hotness_csv" ]]; then
    echo "  SKIP: no hotness CSV at $hotness_csv"
    continue
  fi

  # Read target function names and percentages from CSV
  mapfile -t target_funcs < <(tail -n +2 "$hotness_csv" | head -n "$TOP_N" | cut -d',' -f2)
  mapfile -t target_pcts  < <(tail -n +2 "$hotness_csv" | head -n "$TOP_N" | cut -d',' -f4)

  if [[ ${#target_funcs[@]} -eq 0 ]]; then
    echo "  SKIP: no functions in CSV"
    continue
  fi

  echo "  ${#target_funcs[@]} hot functions"

  # --- Phase 1: Build and dump ---
  if [[ "$SKIP_BUILD" != "1" ]]; then
    rm -f "$IR_DUMP"/*

    build_args=(
      "$VARIANT" "$RUN_TYPE"
      "CINT2017speed/${bench}/${bench}"
    )

    if is_cpp_bench "$bench"; then
      # C++ benchmarks: dump all functions, filter later by demangling
      build_args+=("dbg_srcs=*")
    else
      # C benchmarks: use filter-print-funcs for efficiency
      func_list=$(printf '%s,' "${target_funcs[@]}" | sed 's/,$//')
      build_args+=("dbg_srcs=*" "dbg_funcs=$func_list")
    fi

    echo "  Building with ${build_args[*]}"
    ./scripts/build_variant.sh "${build_args[@]}"

    mkdir -p "$STAGING_DIR/${bench}"
    mv "$IR_DUMP"/* "$STAGING_DIR/${bench}/" 2>/dev/null || true
  fi

  # --- Phase 2: Extract and clean ---
  bench_out="$OUTPUT_DIR/${bench}"
  mkdir -p "$bench_out"

  is_cpp=0
  is_cpp_bench "$bench" && is_cpp=1

  # Build ir_name -> dump_file mapping from headers
  declare -A ir_to_file=()
  for dump_file in "$STAGING_DIR/${bench}"/*-before.ll; do
    [[ -f "$dump_file" ]] || continue
    ir_name=$(parse_ir_name "$dump_file")
    [[ -n "$ir_name" ]] || continue
    # Keep first occurrence
    [[ -z "${ir_to_file[$ir_name]:-}" ]] && ir_to_file["$ir_name"]="$dump_file"
  done

  echo "  ${#ir_to_file[@]} dump files found"

  # Match target functions to IR names and extract
  extracted=0
  for i in "${!target_funcs[@]}"; do
    target="${target_funcs[$i]}"
    pct="${target_pcts[$i]}"
    matched_ir=""
    matched_file=""

    if [[ "$is_cpp" -eq 0 ]]; then
      # C benchmark: IR name == source name
      matched_ir="$target"
      matched_file="${ir_to_file[$target]:-}"
    else
      # C++ benchmark: demangle IR names and match short name
      for ir_name in "${!ir_to_file[@]}"; do
        if match_demangled "$ir_name" "${target_funcs[$i]}"; then
          matched_ir="$ir_name"
          matched_file="${ir_to_file[$ir_name]}"
          break
        fi
      done
    fi

    if [[ -z "$matched_file" ]]; then
      echo "  WARN: no dump for '$target'"
      continue
    fi

    safe_name=$(sanitize_name "$matched_ir")
    output_file="$bench_out/${safe_name}.ll"

    if extract_function "$matched_file" "$matched_ir" "$output_file"; then
      echo "$bench,$target,$matched_ir,$pct,${bench}/${safe_name}.ll" >> "$MANIFEST"
      echo "  OK: $target -> ${safe_name}.ll ($pct%)"
      extracted=$((extracted + 1))
    fi
  done

  echo "  Extracted $extracted/${#target_funcs[@]} functions"
  unset ir_to_file
done

echo ""
echo "=== Done ==="
echo "Output: $OUTPUT_DIR"
echo "Manifest: $MANIFEST"
