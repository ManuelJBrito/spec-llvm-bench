#!/usr/bin/env bash
# run_bisect.sh — Launch a perf bisection on the correct remote machine.
#
# Usage: run_bisect.sh <machine> <benchmark> <variant> [options]
#
# Arguments:
#   machine       Machine name from analysis files (e.g., nuno-amd64)
#   benchmark     SPEC benchmark (e.g., 510.parest_r)
#   variant       Variant ID (e.g., GVNPRE-s1-p0-greedy)
#
# Options:
#   --runs N          Iterations per measurement (default: 3)
#   --threshold N     % diff to consider significant (default: 2)
#   --rebuild-llvm    Rebuild LLVM on remote before running
#   --fg              Run in foreground (default: background with notify)

set -euo pipefail

die() { echo "Error: $*" >&2; exit 1; }

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BASE="$(cd "$SCRIPT_DIR/.." && pwd)"

# ── Machine → SSH host mapping ───────────────────────────────────────────────

declare -A MACHINE_TO_HOST=(
    [nuno-amd64]=amd-google
    [nuno-arm64]=arm-google
    [legendre]=legendre
    [sobolev]=sobolev
    [deucalion]=deucalion
)

# ── Usage ─────────────────────────────────────────────────────────────────────

usage() {
    cat <<USAGE
Usage: run_bisect.sh <machine> <benchmark> <variant> [options]

Machines:
$(for m in "${!MACHINE_TO_HOST[@]}"; do printf "  %-16s -> %s\n" "$m" "${MACHINE_TO_HOST[$m]}"; done | sort)

Options:
  --runs N          Iterations per measurement (default: 3)
  --threshold N     % significance threshold (default: 2)
  --rebuild-llvm    Rebuild LLVM on remote before running
  --fg              Run in foreground (default: background with notify)
  -h, --help        Show this help
USAGE
    exit 1
}

# ── Parse args ────────────────────────────────────────────────────────────────

[[ $# -lt 3 ]] && usage

MACHINE="$1"; BENCHMARK="$2"; VARIANT="$3"; shift 3

RUNS=3
THRESHOLD=2
REBUILD_LLVM=0
BG=1
NOTIFY=1

while [[ $# -gt 0 ]]; do
    case "$1" in
        --runs)          RUNS="$2"; shift 2 ;;
        --threshold)     THRESHOLD="$2"; shift 2 ;;
        --rebuild-llvm)  REBUILD_LLVM=1; shift ;;
        --fg)            BG=0; NOTIFY=0; shift ;;
        -h|--help)       usage ;;
        *)               die "Unknown option: $1" ;;
    esac
done

# ── Validate machine ─────────────────────────────────────────────────────────

HOST="${MACHINE_TO_HOST[$MACHINE]:-}"
if [[ -z "$HOST" ]]; then
    echo "Valid machines:" >&2
    for m in "${!MACHINE_TO_HOST[@]}"; do
        printf "  %-16s -> %s\n" "$m" "${MACHINE_TO_HOST[$m]}" >&2
    done | sort >&2
    die "unknown machine '$MACHINE'"
fi

# ── Validate variant ─────────────────────────────────────────────────────────

GVN_BASE=$(yq ".[] | select(.id == \"$VARIANT\") | .gvn_base" "$BASE/variants.yaml" | jq -r .)

if [[ -z "$GVN_BASE" || "$GVN_BASE" == "null" ]]; then
    echo "Available variants:" >&2
    yq '.[].id' "$BASE/variants.yaml" | jq -r . >&2
    die "variant '$VARIANT' not found in variants.yaml"
fi

if [[ "$GVN_BASE" == "NoGVN" ]]; then
    die "variant '$VARIANT' has gvn_base=NoGVN — nothing to bisect"
fi

# ── Validate benchmark format ────────────────────────────────────────────────

if [[ ! "$BENCHMARK" =~ ^[0-9]{3}\.[a-zA-Z0-9_]+_[rs]$ ]]; then
    die "'$BENCHMARK' doesn't look like a SPEC benchmark (expected NNN.name_r or NNN.name_s)"
fi

# ── Summary ───────────────────────────────────────────────────────────────────

echo "=== Perf Bisection ==="
echo "  Machine:   $MACHINE -> $HOST"
echo "  Benchmark: $BENCHMARK"
echo "  Variant:   $VARIANT (gvn_base=$GVN_BASE)"
echo "  Runs:      $RUNS  Threshold: ${THRESHOLD}%"
echo "  Rebuild:   $([ $REBUILD_LLVM -eq 1 ] && echo yes || echo no)"
echo "  Mode:      $([ $BG -eq 1 ] && echo background || echo foreground)"
echo ""

# ── Dispatch ──────────────────────────────────────────────────────────────────

BG=$BG NOTIFY=$NOTIFY REBUILD_LLVM=$REBUILD_LLVM \
    "$SCRIPT_DIR/remote_run.sh" "$HOST" \
    scripts/perf_bisect.sh "$BENCHMARK" "$VARIANT" "runs=$RUNS" "threshold=$THRESHOLD"
