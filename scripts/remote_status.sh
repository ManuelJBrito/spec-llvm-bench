#!/usr/bin/env bash
# remote_status.sh — Show status of remote runs across all hosts.
#
# Usage: remote_status.sh [host]
#
# Reads results/logs/<host>/state.json for each known host and prints
# a summary table. Pass a host name to filter to a single host.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BASE="$(cd "$SCRIPT_DIR/.." && pwd)"
LOG_ROOT="${BASE}/results/logs"

FILTER_HOST="${1:-}"

if [ ! -d "$LOG_ROOT" ]; then
    echo "No logs found (${LOG_ROOT} does not exist)."
    exit 0
fi

python3 - "$LOG_ROOT" "$FILTER_HOST" <<'PYEOF'
import json, os, sys
from datetime import datetime

log_root   = sys.argv[1]
filter_host = sys.argv[2]

STATUS_ICON = {"running": ">>", "done": "OK", "failed": "!!"}

rows = []
for host in sorted(os.listdir(log_root)):
    if filter_host and host != filter_host:
        continue
    state_file = os.path.join(log_root, host, "state.json")
    if not os.path.exists(state_file):
        continue
    state = json.load(open(state_file))
    for r in state.get("runs", []):
        icon     = STATUS_ICON.get(r["status"], "?")
        args_str = " ".join(r.get("args", []))
        sha      = r.get("sha", "")[:7]
        started  = r.get("started", "")
        finished = r.get("finished") or "-"
        rows.append((r["status"], icon, r["host"], r["script"], args_str, sha, started, finished))

if not rows:
    print("No runs recorded.")
    sys.exit(0)

# Sort: running first, then by started desc
ORDER = {"running": 0, "failed": 1, "done": 2}
rows.sort(key=lambda r: (ORDER.get(r[0], 9), r[6]), reverse=False)

# Column widths
host_w   = max(len("HOST"),   max(len(r[2]) for r in rows))
script_w = max(len("SCRIPT"), max(len(r[3]) for r in rows))
args_w   = max(len("ARGS"),   max(len(r[4]) for r in rows))
sha_w    = 7
time_w   = 15

hdr = (f"{'':2}  {'HOST':<{host_w}}  {'SCRIPT':<{script_w}}  "
       f"{'ARGS':<{args_w}}  {'SHA':<{sha_w}}  {'STARTED':<{time_w}}  FINISHED")
print(hdr)
print("-" * len(hdr))

for _, icon, host, script, args, sha, started, finished in rows:
    print(f"{icon}  {host:<{host_w}}  {script:<{script_w}}  "
          f"{args:<{args_w}}  {sha:<{sha_w}}  {started:<{time_w}}  {finished}")
PYEOF
