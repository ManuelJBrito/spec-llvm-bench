#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"

# Defaults
MODE="all"
RUN_TYPE="ref"
VARIANTS_ARG=""
DRY_RUN=false

# Parse arguments
while [ "$#" -gt 0 ]; do
    case "$1" in
        --mode)
            MODE="$2"
            shift 2
            ;;
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
            echo "Usage: bench.sh [--mode build|run|all] [--variants id1,id2,...] [--run-type test|ref] [--dry-run]"
            echo
            echo "Modes:"
            echo "  build   : only build variants"
            echo "  run     : only run variants"
            echo "  all     : build and run (default)"
            exit 0
            ;;
        *)
            die "Unknown argument: $1"
            ;;
    esac
done

# Determine list of variants
if [ -n "$VARIANTS_ARG" ]; then
    IFS=',' read -r -a VARIANTS <<< "$VARIANTS_ARG"
else
    mapfile -t VARIANTS < <(yq -r '.[] | select(.id != "prof") | .id' variants.yaml)
fi

# Loop through variants
for build in "${VARIANTS[@]}"; do

    if [[ "$MODE" == "build" || "$MODE" == "all" ]]; then
        echo "Building $build [$RUN_TYPE]"
        if [ "$DRY_RUN" = false ]; then
            ./scripts/build_variant.sh "$build" "$RUN_TYPE"
        fi
    fi

    if [[ "$MODE" == "run" || "$MODE" == "all" ]]; then
        echo "Running $build [$RUN_TYPE]"
        if [ "$DRY_RUN" = false ]; then
            cd builds
            if [ "$RUN_TYPE" = "test" ]; then
                # num_iter=1, lit_jobs=6
                ../scripts/run_variant.sh "$build" 1 6
            else
                ../scripts/run_variant.sh "$build"
            fi
            cd ..
        fi
    fi

done
