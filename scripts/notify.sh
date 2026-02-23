#!/usr/bin/env bash
# notify.sh — Send a notification via ntfy.sh.
#
# Usage: notify.sh [-f FILE] <message>
#
# Set NOTIFY_TOPIC to your ntfy topic name (e.g. "spec-bench-manuel").
# Optionally set NOTIFY_SERVER to use a self-hosted instance (default: ntfy.sh).
# -f FILE: attach FILE to the notification (sent as ntfy file attachment)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CONF="${SCRIPT_DIR}/../conf/notify.conf"
if [ -z "${NOTIFY_TOPIC:-}" ] && [ -f "$CONF" ]; then
    # shellcheck source=../conf/notify.conf
    source "$CONF"
fi

ATTACH_FILE=""
while [[ "${1:-}" == -* ]]; do
    case "$1" in
        -f) ATTACH_FILE="$2"; shift 2 ;;
        *)  break ;;
    esac
done

MSG="${*}"

if [ -z "$MSG" ]; then
    echo "Usage: notify.sh [-f FILE] <message>"
    exit 1
fi

if [ -n "${NOTIFY_TOPIC:-}" ]; then
    SERVER="${NOTIFY_SERVER:-https://ntfy.sh}"
    if [ -n "$ATTACH_FILE" ] && [ -f "$ATTACH_FILE" ]; then
        curl -sf -T "$ATTACH_FILE" \
            -H "Title: spec-llvm-bench" \
            -H "Message: $MSG" \
            -H "Filename: run.log" \
            "${SERVER}/${NOTIFY_TOPIC}" \
            && exit 0
    else
        curl -sf -X POST "${SERVER}/${NOTIFY_TOPIC}" \
            -H "Title: spec-llvm-bench" \
            -d "$MSG" \
            && exit 0
    fi
fi

echo "[notify] $MSG"