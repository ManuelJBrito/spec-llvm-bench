#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"

WORKLOG="${BASE}/results/worklog.json"
VAR_FILE="${BASE}/${VARIANTS}"
RESULTS_MACHINE="${RESULTS_ROOT_BASE}"

exec python3 ./scripts/_worklog.py "$WORKLOG" "$MACHINE_NAME" "$VAR_FILE" "$BUILD_ROOT_BASE" "$RESULTS_MACHINE" "$@"
