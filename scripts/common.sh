#!/usr/bin/env bash
# Shared utilities and configuration for bash scripts.
# Sourced (not executed directly).

set -euo pipefail

# ── Utilities ────────────────────────────────────────────────────────────────

die() { echo "Error: $*" >&2; exit 1; }

# Resolve paths relative to the *sourcing* script (BASH_SOURCE[1]).
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[1]}")" && pwd)"
BASE="$(cd "$SCRIPT_DIR/.." && pwd)"

# ── Ensure yq is on PATH ─────────────────────────────────────────────────────
export PATH="$BASE/bin:$PATH"

# ── Config loading ───────────────────────────────────────────────────────────

_config="$BASE/config.yaml"

[[ -f "$_config" ]] || die "config.yaml not found (run configure.sh first)"

eval "$(python3 -c "
import json, subprocess, sys
# Use our custom yq to convert config.yaml to JSON dict
proc = subprocess.run(['$BASE/bin/yq', '.', '$_config'], capture_output=True, text=True)
if proc.returncode != 0:
    print(f'echo \"Config parse error: {proc.stderr}\" >&2; exit 1')
    sys.exit(0)
d = json.loads(proc.stdout)
for k, v in d.items():
    print(f'export {k.upper()}=\"{v}\"')
")"
