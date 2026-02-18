#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"

VAR_FILE="${BASE}/${VARIANTS}"
OUTPUT="${RESULTS_ROOT_BASE}-pass_times.csv"

./scripts/_collect_pass_times.py "$BUILD_ROOT_BASE" "$MACHINE_NAME" "$VAR_FILE" "$OUTPUT"
