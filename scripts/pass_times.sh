#!/usr/bin/env bash
# pass_times.sh — Build all variants with -ftime-report, then collect pass times.
#
# Usage: pass_times.sh [--variants id1,id2,...] [--run-type test|ref] [--dry-run]
#
# This is the combined workflow for GVN Pass Timing:
#   1. Builds each variant with time_passes=1 (sequential -j1, -ftime-report)
#   2. Runs collect_pass_times.sh to parse logs into a CSV

set -eo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Defaults
RUN_TYPE="ref"
VARIANTS_ARG=""
DRY_RUN=false

while [ "$#" -gt 0 ]; do
    case "$1" in
        --variants)
            VARIANTS_ARG="$2"
            shift 2
            ;;
        --run-type)
            RUN_TYPE="$2"
            shift 2
            ;;
        --dry-run)
            DRY_RUN=true
            shift
            ;;
        -h|--help)
            cat <<'EOF'
Usage: pass_times.sh [--variants id1,id2,...] [--run-type test|ref] [--dry-run]

Builds all variants with time_passes=1 and collects GVN pass timing into a CSV.

Options:
  --variants   Comma-separated variant IDs (default: all non-prof variants)
  --run-type   ref or test (default: ref)
  --dry-run    Print commands without executing
EOF
            exit 0
            ;;
        *)
            echo "Unknown argument: $1" >&2
            exit 1
            ;;
    esac
done

# Determine list of variants
if [ -n "$VARIANTS_ARG" ]; then
    IFS=',' read -r -a VARIANTS <<< "$VARIANTS_ARG"
else
    mapfile -t VARIANTS < <(yq -r '.[] | select(.id != "prof") | .id' variants.yaml)
fi

echo "=== Pass Timing: ${#VARIANTS[@]} variants, run_type=$RUN_TYPE ==="

# 1. Build each variant with time_passes=1
for variant in "${VARIANTS[@]}"; do
    echo "--- Building $variant [time_passes=1] ---"
    if [ "$DRY_RUN" = false ]; then
        "$SCRIPT_DIR/build_variant.sh" "$variant" "$RUN_TYPE" all time_passes=1
    else
        echo "  (dry-run) $SCRIPT_DIR/build_variant.sh $variant $RUN_TYPE all time_passes=1"
    fi
done

# 2. Collect pass times
echo "--- Collecting pass times ---"
if [ "$DRY_RUN" = false ]; then
    "$SCRIPT_DIR/collect_pass_times.sh"
else
    echo "  (dry-run) $SCRIPT_DIR/collect_pass_times.sh"
fi

echo "=== Done ==="
