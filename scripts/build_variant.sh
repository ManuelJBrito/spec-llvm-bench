#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"

usage() {
  cat >&2 <<EOF
Usage:
  $0 <variant> [run_type] [spec_target] [options]

Positional arguments:
  variant        Build variant ID (required)
  run_type       ref | test (default: ref)
  spec_target    Target under External/SPEC (default: all)

Options (key=value):
  no_clean=1                 Incremental build (skip ninja clean)
  dbg_srcs=a.c,b.cpp         Enable debug flags for these sources
  dbg_funcs=f1,f2            Limit debug output to functions
  dbg_mode=DUMP_CRASH        Debug preset (default: DUMP_CRASH)

Examples:
  $0 NoGVN
  $0 NoGVN ref intspeed no_clean=1
  $0 NoGVN ref all dbg_srcs=foo.c dbg_mode=DUMP_CRASH
EOF
}

VARIANT="$1"
RUN_TYPE="${2:-ref}"          # test or ref (default)
SPEC_TARGET="${3:-all}"       # target under External/SPEC
if [[ $# -ge 3 ]]; then
  shift 3
else
  shift $#
fi

# Defaults
NO_CLEAN=0
DBG_SRCS=""
DBG_FUNCS=""
DBG_MODE=""
RUN_UNDER=""

case "${1:-}" in
  -h|--help)
    usage
    exit 0
    ;;
esac

# Parse keyword arguments
for arg in "$@"; do
  case "$arg" in
    no_clean=*)
      NO_CLEAN="${arg#*=}"
      ;;
    dbg_srcs=*)
      DBG_SRCS="${arg#*=}"
      ;;
    dbg_funcs=*)
      DBG_FUNCS="${arg#*=}"
      ;;
    dbg_mode=*)
      DBG_MODE="${arg#*=}"
      ;;
    run_under=*)
      RUN_UNDER="${arg#*=}"
      ;;
    *)
      echo "Unknown argument: $arg" >&2
      exit 1
      ;;
  esac
done

# Extract FLAGS (YAML -> JSON -> jq)
VARIANT_FLAGS=$(
  yq '
    .[]
    | select(.id == "'"$VARIANT"'")
    | .flags
  ' "$VARIANTS"| jq -r .
)

if [[ -z "$VARIANT_FLAGS" ]]; then
  echo "Variant not found: $VARIANT" >&2
  exit 1
fi

CFLAGS="$COMMON_FLAGS $VARIANT_FLAGS"

BUILD_ROOT="$(pwd)/$BUILD_ROOT_BASE/$VARIANT"
mkdir -p "$BUILD_ROOT"

# Export debug controls for compiler wrapper
export DBG_SRCS
export DBG_FUNCS
export DBG_MODE

# Configure the build
CMAKE_ARGS=(
  -GNinja
  -B "$BUILD_ROOT"
  -S "$TEST_SUITE_DIR"
  -DCMAKE_C_FLAGS="$CFLAGS"
  -DCMAKE_C_COMPILER="$CC"
  -DCMAKE_CXX_FLAGS="$CFLAGS"
  -DCMAKE_CXX_COMPILER="$CXX"
  -DTEST_SUITE_SPEC2017_ROOT="$SPEC_DIR"
  -DTEST_SUITE_RUN_TYPE="$RUN_TYPE"
  -DTEST_SUITE_COLLECT_STATS=ON
)

# Optional run-under wrapper (e.g. perf record)
if [[ -n "$RUN_UNDER" ]]; then
  CMAKE_ARGS+=(-DTEST_SUITE_RUN_UNDER="$RUN_UNDER")
fi

# Optional cross-compilation toolchain
if [[ -n "$CMAKE_TOOLCHAIN_FILE" ]]; then
  CMAKE_ARGS+=(
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE"
  )
fi

cmake "${CMAKE_ARGS[@]}"

cd "$BUILD_ROOT"

if [[ "$NO_CLEAN" != "1" ]]; then
  ninja -t clean "External/SPEC/$SPEC_TARGET"
fi

ninja -j"$NINJA_JOBS" "External/SPEC/$SPEC_TARGET" 2>&1 | tee build.log
# Rsync the variant build to the remote host
if [[ -n "$TEST_SUITE_REMOTE_HOST" && -n "$TEST_SUITE_REMOTE_BUILD_DIR" ]]; then
    REMOTE_VARIANT_DIR="$TEST_SUITE_REMOTE_BUILD_DIR/$VARIANT"
    echo "Syncing variant '$VARIANT' to $TEST_SUITE_REMOTE_HOST:$REMOTE_VARIANT_DIR ..."

    # Ensure parent exists on remote
    ssh -T -o BatchMode=yes -o ConnectTimeout=5 "$TEST_SUITE_REMOTE_HOST" \
        "mkdir -p '$TEST_SUITE_REMOTE_BUILD_DIR'" &>/dev/null

    echo "post test"
    # Rsync the variant build
    rsync -az --delete -e "ssh -T -o BatchMode=yes -o ConnectTimeout=5" \
      "$BUILD_ROOT"/ "$TEST_SUITE_REMOTE_HOST":"$REMOTE_VARIANT_DIR"/
    echo "Done -Syncing variant '$VARIANT' to $TEST_SUITE_REMOTE_HOST:$REMOTE_VARIANT_DIR ..."
fi
