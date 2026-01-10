#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"

# "Usage: results_to_csv.py <builds_dir> <machine> <variants.yaml> <output.csv>",
VAR_FILE="${BASE}/${VARIANTS}"
OUTPUT="${RESULTS_ROOT_BASE}.csv"
./scripts/_results_to_csv.py $BUILD_ROOT_BASE $MACHINE_NAME $VAR_FILE $OUTPUT