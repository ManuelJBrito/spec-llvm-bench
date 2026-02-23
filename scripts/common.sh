#!/usr/bin/env bash
# Reads config.yaml and exports all values as UPPER_CASE environment variables.
# Sourced by bash scripts that need project configuration.

set -eo pipefail

_config="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/config.yaml"

if [[ ! -f "$_config" ]]; then
    echo "Error: config.yaml not found (run configure.sh first)" >&2
    exit 1
fi

eval "$(python3 -c "
import yaml
with open('$_config') as f:
    for k, v in yaml.safe_load(f).items():
        print(f'export {k.upper()}=\"{v}\"')
")"
