#!/usr/bin/env bash
# remote_run.sh — Run a repo script on a remote host via git pull + SSH.
#
# Usage: remote_run.sh <host> <script> [args...]
#
# The remote must have the repo cloned and configured (configure.sh already run).
# Local branch must be pushed before running — uncommitted/unpushed changes
# will NOT be present on the remote.
#
# Environment variables:
#   REMOTE_DIR   Remote repo root (default: ~/spec-llvm-bench)
#   BG           Set to 1 to run in background (survives SSH disconnects)
#   RSYNC        Set to 1 to rsync results back after the run
#   NOTIFY       Set to 1 to notify on completion via notify.sh

set -eo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BASE="$(cd "$SCRIPT_DIR/.." && pwd)"

usage() {
    cat <<'USAGE'
Usage: remote_run.sh <host> <script> [args...]

  Pulls latest commits on <host>, runs <script> [args...] remotely,
  and rsyncs results back to results/remote/<host>/.

  <host>    SSH host (user@hostname or ~/.ssh/config alias)
  <script>  Script path relative to repo root (e.g. scripts/bench.sh)
  [args]    Arguments forwarded to the remote script

Environment variables:
  REMOTE_DIR   Remote repo root (default: ~/spec-llvm-bench)
  BG           Set to 1 to run in background (survives SSH disconnects)
  RSYNC        Set to 1 to rsync results back after the run
  NOTIFY       Set to 1 to notify on completion via notify.sh
USAGE
    exit 1
}

[ "$#" -lt 2 ] && usage

HOST="$1"
SCRIPT="$2"
shift 2
ARGS=("$@")

REMOTES_CONF="${BASE}/conf/remotes.conf"
if [ -z "${REMOTE_DIR:-}" ] && [ -f "$REMOTES_CONF" ]; then
    REMOTE_DIR="$(awk -v host="$HOST" '$1 == host { print $2; exit }' "$REMOTES_CONF")"
fi
REMOTE_DIR="${REMOTE_DIR:-~/spec-llvm-bench}"
SCRIPT_NAME="$(basename "$SCRIPT")"
TIMESTAMP="${REMOTE_RUN_TIMESTAMP:-$(date +%Y%m%d-%H%M%S)}"
LOG_DIR="${BASE}/results/logs/${HOST}"
LOG_FILE="${LOG_DIR}/${TIMESTAMP}-${SCRIPT_NAME}.log"

# --bg: re-exec under nohup so the run survives SSH disconnects
if [ "${BG:-0}" = "1" ]; then
    mkdir -p "$LOG_DIR"
    BG=0 REMOTE_RUN_TIMESTAMP="$TIMESTAMP" \
        nohup "$0" "$HOST" "$SCRIPT" "${ARGS[@]}" >> "$LOG_FILE" 2>&1 &
    echo "[remote_run] PID=$! log=$LOG_FILE"
    exit 0
fi
STATE_FILE="${LOG_DIR}/state.json"
RUN_ID="${TIMESTAMP}-${SCRIPT_NAME}"

mkdir -p "$LOG_DIR"

log() { echo "[remote_run] $*" | tee -a "$LOG_FILE"; }

# --- State file helpers ---

state_set_running() {
    python3 - "$STATE_FILE" "$RUN_ID" "$HOST" "$SCRIPT_NAME" "$TIMESTAMP" \
              "$(git -C "$BASE" rev-parse HEAD)" "${ARGS[@]}" <<'PYEOF'
import json, os, sys
state_file, run_id, host, script, started, sha = sys.argv[1:7]
args = sys.argv[7:]
state = json.load(open(state_file)) if os.path.exists(state_file) else {"runs": []}
state["runs"].append({
    "id":      run_id,
    "host":    host,
    "script":  script,
    "args":    args,
    "sha":     sha,
    "status":  "running",
    "started": started,
    "finished": None,
})
json.dump(state, open(state_file, "w"), indent=2)
PYEOF
}

state_set_done() {
    python3 - "$STATE_FILE" "$RUN_ID" "$1" "$(date +%Y%m%d-%H%M%S)" <<'PYEOF'
import json, sys
state_file, run_id, status, finished = sys.argv[1:]
state = json.load(open(state_file))
for r in state["runs"]:
    if r["id"] == run_id:
        r["status"]   = status
        r["finished"] = finished
json.dump(state, open(state_file, "w"), indent=2)
PYEOF
}

# --- Pre-flight checks ---

GIT_SHA="$(git -C "$BASE" rev-parse HEAD)"
GIT_SHORT="$(git -C "$BASE" rev-parse --short HEAD)"

if ! git -C "$BASE" diff --quiet || ! git -C "$BASE" diff --cached --quiet; then
    log "WARNING: working tree has uncommitted changes — remote runs commit $GIT_SHORT"
fi

UNPUSHED="$(git -C "$BASE" log '@{u}..' --oneline 2>/dev/null | wc -l || echo 0)"
if [ "$UNPUSHED" -gt 0 ]; then
    log "ERROR: $UNPUSHED unpushed commit(s) — push before running remotely."
    exit 1
fi

# --- Main ---

log "host=$HOST script=$SCRIPT sha=$GIT_SHORT"
log "args: ${ARGS[*]:-<none>}"
log "log:  $LOG_FILE"

state_set_running

EXIT_CODE=0

# 1. Pull latest on remote
log "Pulling on ${HOST}:${REMOTE_DIR} ..."
# shellcheck disable=SC2029
ssh "$HOST" "cd ${REMOTE_DIR} && git pull --ff-only" 2>&1 | tee -a "$LOG_FILE" || EXIT_CODE=$?

# 2. Run the script (only if pull succeeded)
if [ "$EXIT_CODE" -eq 0 ]; then
    log "Running ${SCRIPT} ${ARGS[*]:-} ..."
    # shellcheck disable=SC2029
    ARGS_STR=""
    [ "${#ARGS[@]}" -gt 0 ] && ARGS_STR=" $(printf '%q ' "${ARGS[@]}")"
    ssh "$HOST" "cd ${REMOTE_DIR} && bash ${SCRIPT}${ARGS_STR}" \
        2>&1 | tee -a "$LOG_FILE" || EXIT_CODE=$?
fi

# 3. Rsync results back (opt-in)
if [ "${RSYNC:-0}" = "1" ]; then
    log "Syncing results from ${HOST} ..."
    mkdir -p "${BASE}/results/remote/${HOST}"
    rsync -az \
        "${HOST}:${REMOTE_DIR}/results/" \
        "${BASE}/results/remote/${HOST}/" 2>&1 | tee -a "$LOG_FILE" || EXIT_CODE=$?
fi

# 4. Update state
if [ "$EXIT_CODE" -eq 0 ]; then
    STATUS="done"
    log "Done."
else
    STATUS="failed"
    log "Failed (exit code $EXIT_CODE)."
fi

state_set_done "$STATUS"

# 5. Notify
if [ "${NOTIFY:-0}" = "1" ]; then
    if [ "$STATUS" = "failed" ]; then
        _tmp="$(mktemp)"
        tail -30 "$LOG_FILE" > "$_tmp"
        "$SCRIPT_DIR/notify.sh" -f "$_tmp" "[$HOST] $SCRIPT_NAME ${ARGS[*]:-} — $STATUS ($GIT_SHORT)"
        rm -f "$_tmp"
    else
        "$SCRIPT_DIR/notify.sh" "[$HOST] $SCRIPT_NAME ${ARGS[*]:-} — $STATUS ($GIT_SHORT)"
    fi
fi

exit "$EXIT_CODE"
