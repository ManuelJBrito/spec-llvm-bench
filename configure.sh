#!/usr/bin/env bash
set -euo pipefail

# === Functions ===

print_error() {
    echo -e "\033[0;31mError:\033[0m $1" >&2
}

print_help() {
    cat <<EOF
Usage: ./configure.sh [OPTIONS]

Options:
  --jobs <int>           Number of ninja jobs (default: nproc)
  --spec <path>          Full path to SPEC CPU2017
  --fresh                Wipe and rebuild existing state
  --common-flags         Common compiler flags
  --toolchain <path>      CMake toolchain file (for cross-compilation)
  -h, --help             Show this help message and exit

Example:
  ./configure.sh --jobs 6 --spec /opt/spec/cpu2017
EOF
}

# === Defaults ===
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEFAULT_JOBS="$(nproc)"
COMMON_FLAGS="-O3"
FRESH=0

# === Args ===
NINJA_JOBS=""
RUNS=3
MACHINE_NAME="$(hostname)"
BUILD_DIR_NAME="builds"
SPEC_PATH=""
TOOLCHAIN_FILE=""
SKIP_LLVM=0

# === Parse arguments ===
while [[ $# -gt 0 ]]; do
    case $1 in
        --jobs) NINJA_JOBS="$2"; shift 2 ;;
        --spec) SPEC_PATH="$2"; shift 2 ;;
        --fresh) FRESH=1; shift ;;
        --common-flags) COMMON_FLAGS="-O3 $2"; shift 2 ;;
        --toolchain) TOOLCHAIN_FILE="$2"; shift 2 ;;
        --skip-llvm) SKIP_LLVM=1; shift ;;
        -h|--help) print_help; exit 0 ;;
        *) print_error "Unknown option: $1"; print_help; exit 1 ;;
    esac
done

NINJA_JOBS="${NINJA_JOBS:-$DEFAULT_JOBS}"

# === Paths ===
BENCH_INFRA_DIR="$ROOT"
BUILD_ROOT_BASE="$BUILD_DIR_NAME"
RESULTS_ROOT_BASE="$BENCH_INFRA_DIR/results/$MACHINE_NAME"
TOOLCHAIN_BASE="$BENCH_INFRA_DIR/toolchain"

FULL_BUILD_PATH="$BENCH_INFRA_DIR/$BUILD_ROOT_BASE"

# === Build directory (idempotent) ===
if [[ -d "$FULL_BUILD_PATH" ]]; then
    if [[ "$FRESH" -eq 1 ]]; then
        rm -rf "$FULL_BUILD_PATH"
        mkdir -p "$FULL_BUILD_PATH"
    else
        echo "Using existing build directory: $FULL_BUILD_PATH"
    fi
else
    mkdir -p "$FULL_BUILD_PATH"
fi

# === Install prefix ===
mkdir -p bin
INSTALL_PREFIX="$(pwd)/bin"

LLVM_MARKER="$FULL_BUILD_PATH/.llvm-installed"
update_repo() {
    local dir="$1"
    local url="$2"
    local branch="${3:-}"

    if [[ -d "$dir/.git" ]]; then
        git -C "$dir" fetch
        [[ -n "$branch" ]] && git -C "$dir" checkout "$branch"
        if ! git -C "$dir" diff --quiet HEAD..@{u}; then
            git -C "$dir" pull --ff-only
            rm -f "$LLVM_MARKER"
        fi
    else
        git clone "$url" "$dir"
        [[ -n "$branch" ]] && git -C "$dir" checkout "$branch"
        rm -f "$LLVM_MARKER"
    fi
}

# === Test-suite ===
update_repo test-suite git@github.com:ManuelJBrito/llvm-test-suite.git

SPEC_LINK="test-suite/test-suite-externals/speccpu2017"
if [[ -z "$SPEC_PATH" ]]; then
    if [[ -L "$SPEC_LINK" ]]; then
        RESOLVED_SPEC="$(readlink -f "$SPEC_LINK")"
        if [[ -d "$RESOLVED_SPEC" ]]; then
            SPEC_PATH="$RESOLVED_SPEC"
        else
            print_error "SPEC symlink exists but target is invalid: $SPEC_LINK"
            exit 1
        fi
    else
        print_error "--spec not provided and SPEC symlink does not exist"
        exit 1
    fi
else
    if [[ "$SPEC_PATH" != /* ]]; then
        print_error "--spec must be an absolute path"
        exit 1
    fi

    if [[ ! -d "$SPEC_PATH" ]]; then
        print_error "SPEC path does not exist: $SPEC_PATH"
        exit 1
    fi
    ln -s "$SPEC_PATH" "$SPEC_LINK"
fi

# === LLVM ===

LINK_JOBS=2
if [[ -r /proc/meminfo ]]; then
    MEM_GB=$(awk '/MemTotal/ {printf "%d", $2/1024/1024}' /proc/meminfo)
    LINK_JOBS=$((MEM_GB / 15))
    [[ "$LINK_JOBS" -lt 1 ]] && LINK_JOBS=1
fi

update_repo llvm-project git@github.com:ManuelJBrito/llvm-project.git BenchGVN

CLANG_BIN="$INSTALL_PREFIX/bin/clang"
IR_DUMP="${BENCH_INFRA_DIR}/llvm-project/build/dump-ir"

if [[ "$SKIP_LLVM" -eq 0 && ("$FRESH" -eq 1 || ! -f "$LLVM_MARKER") ]]; then
    cd llvm-project
    git checkout BenchGVN
    cmake -S llvm -B build -GNinja \
          -DLLVM_ENABLE_PROJECTS='clang' \
          -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX" \
          -DCMAKE_BUILD_TYPE=Release \
          -DLLVM_ENABLE_ASSERTIONS=ON \
          -DLLVM_ENABLE_IO_SANDBOX=OFF \
          -DLLVM_PARALLEL_LINK_JOBS="$LINK_JOBS" \
          -DLLVM_TARGETS_TO_BUILD="X86;AArch64"

    ninja -C build clang opt
    ninja -C build install

    mkdir -p "$IR_DUMP"
    touch "$LLVM_MARKER"
else
    echo "LLVM already built; skipping."
fi

# === Validate LLVM install ===
if [[ ! -x "$CLANG_BIN" && "$SKIP_LLVM" -eq 0 ]]; then
    print_error "clang not found after install: $CLANG_BIN"
    exit 1
fi

# === Toolchain directory ===
TOOLCHAIN_PATH="$BENCH_INFRA_DIR/toolchain"

# Always recreate toolchain from scratch
if [[ -d "$TOOLCHAIN_PATH" ]]; then
    rm -rf "$TOOLCHAIN_PATH"
fi
mkdir -p "$TOOLCHAIN_PATH"

CC="${TOOLCHAIN_PATH}/clang"
CXX="${CC}++"
LIT="$INSTALL_PREFIX/bin/llvm-lit"

# === Remote build dir === 
if [[ -n "$TEST_SUITE_REMOTE_BUILD_DIR" ]]; then
    if [[ "$TEST_SUITE_REMOTE_BUILD_DIR" != /* ]]; then
        print_error "--remote-build-dir must be an absolute path"
        exit 1
    fi
fi

if [[ -n "$TOOLCHAIN_FILE" ]]; then
    if [[ "$TOOLCHAIN_FILE" != /* ]]; then
        print_error "--toolchain must be an absolute path"
        exit 1
    fi
    if [[ ! -f "$TOOLCHAIN_FILE" ]]; then
        print_error "Toolchain file not found: $TOOLCHAIN_FILE"
        exit 1
    fi
fi


# === Generate config.yaml ===
CONFIG_FILE="$BENCH_INFRA_DIR/config.yaml"
cat > "$CONFIG_FILE" <<EOF
# Generated by configure.sh
test_suite_dir: test-suite
spec_dir: test-suite/test-suite-externals/speccpu2017
variants: variants.yaml
bin: $INSTALL_PREFIX
lit: $BENCH_INFRA_DIR/llvm-project/build/bin/llvm-lit
ir_dump: $IR_DUMP
ninja_jobs: $NINJA_JOBS
runs: $RUNS
machine_name: $MACHINE_NAME
base: $BENCH_INFRA_DIR
build_root_base: $BUILD_ROOT_BASE
results_root_base: $RESULTS_ROOT_BASE
cc: $CC
cxx: $CXX
common_flags: "$COMMON_FLAGS"
EOF

echo -e "\033[0;32mGenerated:\033[0m config.yaml"

# common.sh is a static script that reads config.yaml (for bash scripts)
OUTPUT_SCRIPT="$BENCH_INFRA_DIR/scripts/common.sh"

# === Generate Toolchain wrappers [CC/CXX] ===

cp "$BENCH_INFRA_DIR/scripts/compiler_base" "$TOOLCHAIN_PATH/compiler"
sed -i "1a source $OUTPUT_SCRIPT" "$TOOLCHAIN_PATH/compiler"

cat > "$CC" <<EOF
#!/usr/bin/env bash
# Generated by configure.sh
exec "${TOOLCHAIN_PATH}/compiler" "c" "\$@"
EOF

chmod +x "$CC"
echo -e "\033[0;32mGenerated:\033[0m toolchain/clang"

cat > "$CXX" <<EOF
#!/usr/bin/env bash
# Generated by configure.sh
exec "${TOOLCHAIN_PATH}/compiler" "cxx" "\$@" "-std=c++14"
EOF

chmod +x "$CXX"
echo -e "\033[0;32mGenerated:\033[0m toolchain/clang++"

LLVM_SIZE="${INSTALL_PREFIX}/bin/llvm-size"
LLVM_SIZE_LINK="${TOOLCHAIN_PATH}/llvm-size"
if [[ ! -e "$LLVM_SIZE_LINK" ]]; then
    ln -s "$LLVM_SIZE" "$LLVM_SIZE_LINK"
fi
