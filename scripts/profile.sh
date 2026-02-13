#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"

# ── Args ──────────────────────────────────────────────────────────────────────
#   profile.sh [ref|test] [spec_target] [--start-phase N]

RUN_TYPE=ref
SPEC_TARGET=all
START_PHASE=1

while [[ $# -gt 0 ]]; do
    case "$1" in
        --start-phase)  START_PHASE="$2";  shift 2 ;;
        ref|test)       RUN_TYPE="$1";     shift   ;;
        *)              SPEC_TARGET="$1";  shift   ;;
    esac
done

# ── Paths ─────────────────────────────────────────────────────────────────────

BUILD_ROOT="$(pwd)/$BUILD_ROOT_BASE/prof"
PROFILES_ROOT="$BASE/profiles"
LLVM_PROFGEN="$BASE/llvm-project/build/bin/llvm-profgen"
LLVM_PROFDATA="$BASE/llvm-project/build/bin/llvm-profdata"
PERF_DIR="$PROFILES_ROOT/raw/perf"
PROFRAW_DIR="$PROFILES_ROOT/raw/profraw"
PROFDATA_DIR="$PROFILES_ROOT/raw/profdata"
HOTNESS_DIR="$PROFILES_ROOT/hotness"

rm -rf "$PROFILES_ROOT/raw"
mkdir -p "$PERF_DIR" "$PROFRAW_DIR" "$PROFDATA_DIR" "$HOTNESS_DIR"

LIT_FILTER="External/SPEC"
BUILD_FILTER="$LIT_FILTER"/all
[[ "$SPEC_TARGET" != "all" ]] && LIT_FILTER+="/$SPEC_TARGET" && SPEC_TARGET+="/all" 

# ── Phase 1: build + run with perf via lit ────────────────────────────────────

if (( START_PHASE <= 1 )); then
    "$(dirname "$0")/build_variant.sh" prof "$RUN_TYPE" "$SPEC_TARGET" \
        run_under="$BASE/scripts/perf_wrap.sh"

    (cd "$BUILD_ROOT" && "$LIT" -j20 -va "$LIT_FILTER") || true
fi

# ── Phase 2: perf script + llvm-profgen ───────────────────────────────────────

if (( START_PHASE <= 2 )); then
    rm -f "$PERF_DIR"/*.perf.data.old
    for perf_data in "$PERF_DIR"/*.perf.data; do
        bench="$(basename "${perf_data%.perf.data}")"
        binary="$(cat "$PERF_DIR/${bench}.binary")"
        perf_script="$PERF_DIR/${bench}.perf.script"
        profraw="$PROFRAW_DIR/${bench}.profraw"
        perf script -i "$perf_data" -F ip,brstack,sym --show-mmap-events > "$perf_script" 2>/dev/null
        if [[ ! -s "$perf_script" ]]; then
            echo "  skipping $bench (empty perf data)"
            continue
        fi
        "$LLVM_PROFGEN" --perfscript="$perf_script" --binary="$binary" --output="$profraw" \
            2>"$PROFRAW_DIR/${bench}.log" || true
        if [[ ! -s "$profraw" ]]; then
            echo "  skipping $bench (empty profile output)"
            rm -f "$profraw"
        fi
    done
fi

# ── Phase 3: global merge ─────────────────────────────────────────────────────

echo "=== Phase 3: merge ==="
mapfile -t PROFRAW_FILES < <(find "$PROFRAW_DIR" -name "*.profraw" -size +0)
if [[ ${#PROFRAW_FILES[@]} -eq 0 ]]; then
    echo "No profraw files to merge." >&2
    exit 1
fi
"$LLVM_PROFDATA" merge --sample \
    --output="$PROFILES_ROOT/raw/merged.profdata" \
    "${PROFRAW_FILES[@]}"

echo "=== Hot functions ==="
nm_lookup_tmp=$(mktemp)
for profraw in "${PROFRAW_FILES[@]}"; do
    bench="$(basename "${profraw%.profraw}")"
    binary="$(cat "$PERF_DIR/${bench}.binary" 2>/dev/null || true)"
    # Build function→srcfile lookup from binary debug info (nm -l: tab-separates file:line)
    if [[ -n "$binary" && -f "$binary" ]]; then
        nm -l --defined-only "$binary" 2>/dev/null | \
            awk '($2=="T"||$2=="t"||$2=="W"||$2=="w") && NF>=4 {
                fn=$3; src=$4
                sub(/:.*/, "", src); sub(/.*\//, "", src)
                if (fn && src) print fn "\t" src
            }' > "$nm_lookup_tmp"
    else
        : > "$nm_lookup_tmp"
    fi
    "$LLVM_PROFDATA" show --sample --topn=20 "$profraw" 2>/dev/null \
        | awk -v bench="$bench" -v lookupfile="$nm_lookup_tmp" '
            BEGIN {
                while ((getline line < lookupfile) > 0) {
                    n = split(line, a, "\t")
                    if (n >= 2) src[a[1]] = a[2]
                }
            }
            /Total sample.*Function name/ { print "bench,function,src,pct,total_sample,max_sample,entry_sample"; found=1; next }
            found && NF >= 5 {
                match($0, /\(([0-9.]+)%\)/, a)
                fn = ""; for (i=5; i<=NF; i++) fn = fn (i>5?" ":"") $i
                printf "%s,%s,%s,%s,%s,%s,%s\n", bench, fn, src[fn], a[1], $1, $3, $4
            }
        ' > "$HOTNESS_DIR/${bench}.csv"
    echo "  $bench"
done
rm -f "$nm_lookup_tmp"
