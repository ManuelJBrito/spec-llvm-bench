#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"

VAR_FILE="${BASE}/${VARIANTS}"
OUTPUT="${RESULTS_ROOT_BASE}-stats.csv"
./scripts/collect_gvn_stats.py $BUILD_ROOT_BASE $MACHINE_NAME $VAR_FILE $OUTPUT
