#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"

PERF_DIR="$BASE/profiles/raw/perf"
mkdir -p "$PERF_DIR"

binary="$(realpath "$1")"
bench="$(basename "$(dirname "$binary")")"

printf '%s\n' "$binary" > "$PERF_DIR/${bench}.binary"
exec perf record -F max -b --call-graph fp -e cycles:u \
    -o "$PERF_DIR/${bench}.perf.data" -- "$@"
