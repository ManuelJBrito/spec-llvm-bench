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
  time_passes=1              Add -ftime-report; forces -j1; writes build-timepasses.log
  skip_gvn_srcs=a.c,b.cpp   Skip GVN entirely for these source files
  skip_gvn_funcs=f1,f2       Skip GVN for these functions (per-function)
  gvn_func_skip_flag=FLAG    Per-function skip flag name (skip-gvn-for-funcs or skip-newgvn-for-funcs)
  debug_counter=SPEC         Debug counter spec (e.g. gvn-eliminate=0-5)
  debug_counter_src=file.c   Only apply debug counter to this source file

Examples:
  $0 NoGVN
  $0 NoGVN ref intspeed no_clean=1
  $0 NoGVN ref all dbg_srcs=foo.c dbg_mode=DUMP_CRASH
  $0 GVNPRE-s1-p0-greedy ref 544.nab_r skip_gvn_srcs=nabmd.c
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
TIME_PASSES=0
SKIP_GVN_SRCS=""
SKIP_GVN_FUNCS=""
GVN_FUNC_SKIP_FLAG=""
DEBUG_COUNTER=""
DEBUG_COUNTER_SRC=""
DEBUG_COUNTER_OUTFILE=""

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
    time_passes=*)
      TIME_PASSES="${arg#*=}"
      ;;
    skip_gvn_srcs=*)
      SKIP_GVN_SRCS="${arg#*=}"
      ;;
    skip_gvn_funcs=*)
      SKIP_GVN_FUNCS="${arg#*=}"
      ;;
    gvn_func_skip_flag=*)
      GVN_FUNC_SKIP_FLAG="${arg#*=}"
      ;;
    debug_counter=*)
      DEBUG_COUNTER="${arg#*=}"
      ;;
    debug_counter_src=*)
      DEBUG_COUNTER_SRC="${arg#*=}"
      ;;
    debug_counter_outfile=*)
      DEBUG_COUNTER_OUTFILE="${arg#*=}"
      ;;
    *)
      die "Unknown argument: $arg"
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
  die "Variant not found: $VARIANT"
fi

CFLAGS="$COMMON_FLAGS $VARIANT_FLAGS"

if [[ "$TIME_PASSES" == "1" ]]; then
  CFLAGS="$CFLAGS -ftime-report"
  NINJA_JOBS=1
fi

BUILD_ROOT="$(pwd)/$BUILD_ROOT_BASE/$VARIANT"
mkdir -p "$BUILD_ROOT"

# Export debug controls for compiler wrapper
export DBG_SRCS
export DBG_FUNCS
export DBG_MODE
export DBG_PASS="${DBG_PASS:-}"

# Export GVN skip controls for compiler wrapper (perf bisection)
export SKIP_GVN_SRCS
export SKIP_GVN_FUNCS
export GVN_FUNC_SKIP_FLAG
export DEBUG_COUNTER
export DEBUG_COUNTER_SRC
export DEBUG_COUNTER_OUTFILE

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

# Only configure if needed (avoid re-running cmake with env flags that break probes)
if [[ ! -f "$BUILD_ROOT/CMakeCache.txt" ]]; then
  cmake "${CMAKE_ARGS[@]}"
fi

cd "$BUILD_ROOT"

# Ninja target: "External/SPEC/all" for everything, "External/SPEC/<suite>/<bench>/all" for specific
if [[ "$SPEC_TARGET" == "all" ]]; then
  NINJA_TARGET="External/SPEC/all"
else
  NINJA_TARGET="External/SPEC/$SPEC_TARGET/all"
fi

if [[ "$NO_CLEAN" != "1" ]]; then
  ninja -t clean "$NINJA_TARGET"
fi

if [[ "$TIME_PASSES" == "1" ]]; then
  ninja -j"$NINJA_JOBS" "$NINJA_TARGET" 2>&1 | tee build-timepasses.log
else
  ninja -j"$NINJA_JOBS" "$NINJA_TARGET" 2>&1 | tee build.log
fi
