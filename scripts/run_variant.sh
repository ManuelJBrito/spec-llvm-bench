#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"

build="$1"
max_iter="${2:-1}"

TASKSET=(taskset -c 1)

build_base=$(basename "$build")
cd "$build" || { echo "Failed to cd into $build"; exit 1; }
mkdir -p results

# Loop to run lit multiple times
for ((i=0; i<max_iter; i++)); do
    echo "Running iteration $i..."
    "${TASKSET[@]}" "$LIT" --filter-out "638\.imagick_s|644\.nab_s" \
            -j1 External/SPEC/ \
            -o "results/${build_base}_results_${i}.json"
done
cd -
