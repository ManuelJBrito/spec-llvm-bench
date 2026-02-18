#!/usr/bin/env bash
# notify.sh — Send a notification via ntfy.sh.
#
# Usage: notify.sh <message>
#
# Set NOTIFY_TOPIC to your ntfy topic name (e.g. "spec-bench-manuel").
# Optionally set NOTIFY_SERVER to use a self-hosted instance (default: ntfy.sh).

set -eo pipefail

MSG="${*}"

if [ -z "$MSG" ]; then
    echo "Usage: notify.sh <message>"
    exit 1
fi

if [ -n "${NOTIFY_TOPIC:-}" ]; then
    SERVER="${NOTIFY_SERVER:-https://ntfy.sh}"
    curl -sf -X POST "${SERVER}/${NOTIFY_TOPIC}" \
        -H "Title: spec-llvm-bench" \
        -d "$MSG" \
        && exit 0
fi

echo "[notify] $MSG"