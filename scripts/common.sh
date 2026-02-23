#!/usr/bin/env bash
# Shared utilities and configuration for bash scripts.
# Sourced (not executed directly).

set -euo pipefail

# ── Utilities ────────────────────────────────────────────────────────────────

die() { echo "Error: $*" >&2; exit 1; }

# Resolve paths relative to the *sourcing* script (BASH_SOURCE[1]).
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[1]}")" && pwd)"
BASE="$(cd "$SCRIPT_DIR/.." && pwd)"

# ── Config loading ───────────────────────────────────────────────────────────

_config="$BASE/config.yaml"

[[ -f "$_config" ]] || die "config.yaml not found (run configure.sh first)"

eval "$(python3 -c "
import yaml
with open('$_config') as f:
    for k, v in yaml.safe_load(f).items():
        print(f'export {k.upper()}=\"{v}\"')
")"
