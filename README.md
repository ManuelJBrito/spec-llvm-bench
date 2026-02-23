spec-llvm-bench — LLVM GVN Benchmark Infrastructure
===================================================

This repository provides infrastructure to **build, run, and compare LLVM GVN variants** across multiple machines using **SPEC CPU2017**.  
It automates configuration, variant builds, benchmark execution, and result aggregation.

The repository is designed to:
- Evaluate multiple GVN implementations and LLVM register allocators
- Run reproducible benchmarks on heterogeneous machines
- Aggregate results into comparable CSV outputs


Requirements
------------


- SPEC CPU2017 (installed locally)
- `yq` (YAML parser)
- Standard Unix tools (`bash`, `python3`, `ninja`, `cmake`)
- `pyyaml` (`pip install pyyaml`)


Getting Started
---------------


Clone the repository:

    git clone https://github.com/ManuelJBrito/spec-llvm-bench
    cd spec-llvm-bench

Configure the environment:

    ./configure.sh --spec /opt/spec/cpu2017


This step:
- Clones and configures LLVM and the LLVM test-suite
- Sets up SPEC CPU2017 integration
- Generates `config.yaml` (shared project configuration)
- Prepares build and results directories



Benchmark Variants
------------------


Variants are defined in `variants.yaml` and drive both build configuration and result parsing.

Each variant specifies:
- GVN implementation (`gvn_base`)
- GVN Flags
- LLVM register allocator (`regalloc`)

Example (GVNPRE using simplification and with PRE disabled):

    # --- GVNPRE (simpl=1, pre=0, regalloc varies) ---
    - id: GVNPRE-s1-p0-greedy
      gvn_base: GVNPRE
      simpl: 1
      pre: 0
      regalloc: greedy
      flags: >
        -mllvm -enable-pre=false
        -mllvm -regalloc=greedy

The `id` uniquely identifies the variant and is used consistently across build directories, benchmark execution, result parsing, and CSV generation.


Building and Running Benchmarks
-------------------------------


All build and run operations are handled via **`bench.sh`**.

### Usage

./bench.sh [--mode build|run|all] [--variants id1,id2,...] [--run-type test|ref] [--dry-run]

**Options:**

- `--mode build|run|all` : Select operation (default: `all`)  
  - `build` — only build variants  
  - `run` — only run variants  
  - `all` — build and run (default)  

- `--variants` : Comma-separated list of variant IDs. Defaults to all variants in `variants.yaml`.

- `--run-type` : Either `test` or `ref` (default: `ref`).

- `--dry-run` : Print commands without executing them.

> **Note:** It is recommended to run benchmarks with `--run-type test` first.  
> Test runs use reduced workloads, execute a single iteration, and run benchmarks in parallel, making them suitable for fast validation before full `ref` runs.


### Examples

| Goal                  | Command                                                      |
|-----------------------|--------------------------------------------------------------|
| **Full Workflow**     | `./bench.sh`                                                 |
| **Build Only**        | `./bench.sh --mode build`                                    |
| **Run Only**          | `./bench.sh --mode run`                                      |
| **Specific Variants** | `./bench.sh --mode run --variants GVNPRE-s1-p0-greedy,NoGVN` |
| **Test Run** | `./bench.sh --run-type test` |
| **Dry Run** | `./bench.sh --mode build --run-type test --dry-run`          |


Results and CSV Generation
--------------------------


CSV files are generated via:

    ./scripts/results_to_csv.py

Generated output:

    results/
    ├── machine1.csv
    ├── machine2.csv
    └── machine3.csv


### CSV Schema (Tidy Data)

`(benchmark, machine, gvn_base, simpl, pre, assumption, regalloc, metric, value, run_id, passed)`


Analysis
--------

    ./scripts/analyze_results.py results/

Reads per-machine CSVs, computes speedup of each variant vs the `NoGVN` baseline, and generates per-metric/per-regalloc markdown reports under `results/<metric>/<regalloc>/<machine>-analysis.md`.

Each report contains:
- **Winners** (>+3% speedup)
- **Losers** (<-3% regression)
- **Variant swings** (>3% difference among variants for the same benchmark)


GVN Pass Timing
---------------

To measure how much compile time GVN/NewGVN spends per benchmark, build a variant with `time_passes=1`:

    ./scripts/build_variant.sh <variant> ref all time_passes=1

This adds `-ftime-report` to the compiler flags, forces a sequential build (`-j1`) so outputs are attributable per translation unit, and writes timing output to `build-timepasses.log` inside the variant build directory.

After building variants with timing enabled, collect the results:

    ./scripts/collect_pass_times.py

This parses all `build-timepasses.log` files, sums `GVNPass`/`NewGVNPass` wall time across translation units per benchmark, and writes:

    results/<machine>-pass_times.csv

CSV schema: `(benchmark, machine, variant, regalloc, gvn_time_s, total_opt_time_s, gvn_pct)`


GVN Pass Statistics
-------------------

    ./scripts/collect_gvn_stats.py

Extracts GVN/NewGVN pass statistics from the test-suite JSON results (collected via `TEST_SUITE_COLLECT_STATS=ON`).

Output:

    results/<machine>-stats.csv

CSV schema: `(benchmark, machine, gvn_base, simpl, pre, assumption, regalloc, stat_name, stat_value, run_id)`


Work Log
--------

Track what has been built and run on each machine:

    ./scripts/worklog.py scan            # auto-discover state from filesystem
    ./scripts/worklog.py status          # show current state
    ./scripts/worklog.py list-pending    # show remaining work

Manually update entries:

    ./scripts/worklog.py mark <host> built <variant>
    ./scripts/worklog.py mark <host> run <variant>
    ./scripts/worklog.py mark <host> csv_generated true
    ./scripts/worklog.py mark <host> perf_bisect <benchmark> done

Data is stored in `results/worklog.json`. Host defaults to the local machine when omitted.


Profiling
-------------------

    ./scripts/profile.sh [ref|test] [spec_target] [--start-phase N]

Builds with the `prof` variant, runs benchmarks under `perf record` (LBR), converts to LLVM sampling profiles via `llvm-profgen`, and merges with `llvm-profdata`.

Phases:
1. Build + run with perf via lit
2. `perf script` + `llvm-profgen` per benchmark
3. Global merge + per-benchmark hotness CSVs

Output:
- `profiles/raw/` — perf data, profraw, profdata 
- `profiles/hotness/` — per-benchmark hot function CSVs


Perf Bisection
---------------

Isolate which source files and functions are GVN-sensitive in a given variant:

    ./scripts/perf_bisect.sh <benchmark> <variant> [runs=3] [threshold=2]

The script:
1. Measures baseline (GVN enabled) vs GVN-disabled performance
2. Seeds the search with hot functions from `profiles/hotness/<benchmark>.csv`
3. Binary-searches on source files by selectively disabling GVN (`-mllvm -skip-gvn`)
4. Binary-searches on functions within identified files (`-mllvm -skip-gvn-for-funcs` or `-skip-newgvn-for-funcs`)
5. When both halves of a split are significant, switches to removal mode (re-enable one-by-one)

Output: `results/perf_analysis/<benchmark>/bisect-<variant>.json`

Run on multiple variants and compare results to understand where GVN behavior differs:

    ./scripts/perf_bisect.sh 544.nab_r GVNPRE-s1-p0-greedy
    ./scripts/perf_bisect.sh 544.nab_r NewGVN-opt-s1-p0-greedy


Repository Structure
--------------------


    .
    ├── README.md
    ├── bin/ *                    # Helper binaries (generated)
    ├── builds/ *                 # Per-variant build directories
    │   ├── GVNPRE-s1-p0-fast
    │   ├── NewGVN-opt-s1-p0-greedy
    │   └── NoGVN
    ├── configure.sh              # Main configuration entry point
    ├── llvm-project/ *           # LLVM source tree
    ├── results/
    │   ├── machine1.csv
    │   ├── machine2.csv
    │   └── machine3.csv *
    ├── config.yaml *                 # Project configuration (generated)
    ├── scripts/
    │   ├── analyze_results.py
    │   ├── build_variant.sh
    │   ├── run_variant.sh
    │   ├── config.py                 # Shared Python config (reads config.yaml)
    │   ├── common.sh                 # Shared bash config (reads config.yaml)
    │   ├── results_to_csv.py
    │   ├── collect_gvn_stats.py
    │   ├── collect_pass_times.py
    │   ├── perf_bisect.sh
    │   └── worklog.py
    ├── test-suite/ *             # LLVM test-suite + SPEC integration
    ├── toolchain/
    │   ├── clang *
    │   ├── clang++ *
    │   ├── compiler *
    │   ├── compiler_base
    │   └── llvm-size *
    ├── variants.yaml             # Variant definitions
    └── bench.sh                  # Unified build/run script

Files and directories marked with * are generated during configuration or benchmarking.

Remote Orchestration
--------------------

Run any repo script on a remote host and sync results back:

    ./scripts/remote_run.sh <host> <script> [args...]

The remote must have the repo cloned and `configure.sh` already run.
The local branch must be pushed — uncommitted/unpushed changes are not present on the remote.

**Workflow**:
1. Verifies no unpushed local commits (errors out if any exist)
2. SSHes to `<host>`, runs `git pull --ff-only`
3. Runs `<script> [args...]` in the remote repo root
4. Rsyncs `results/` back to `results/remote/<host>/`
5. Logs everything to `results/logs/<host>/<timestamp>-<script>.log`
6. Updates `results/logs/<host>/state.json` with run status and git SHA

### Examples

| Goal | Command |
|------|---------|
| Full bench run on remote | `./scripts/remote_run.sh myhost scripts/bench.sh` |
| Collect stats on remote | `./scripts/remote_run.sh myhost scripts/collect_gvn_stats.py` |
| Run with notification | `NOTIFY=1 NOTIFY_WEBHOOK=<url> ./scripts/remote_run.sh myhost scripts/bench.sh` |

### Remote Status

    ./scripts/remote_status.sh [host]

Shows a table of all runs (running / done / failed) across all hosts, or filtered to one host.

### Notifications

`notify.sh` is called automatically when `NOTIFY=1`. Uses [ntfy.sh](https://ntfy.sh) — pick a topic name, subscribe on your phone, done.

| Variable | Effect |
|----------|--------|
| `NOTIFY_TOPIC` | ntfy topic name (e.g. `spec-bench-manuel`) |
| `NOTIFY_SERVER` | ntfy server URL (default: `https://ntfy.sh`) |

### Remote Setup

The remote machine needs:
- The repo cloned: `git clone https://github.com/ManuelJBrito/spec-llvm-bench`
- `configure.sh` run to generate `config.yaml` and toolchain symlinks
- SSH key access from the local machine
- `REMOTE_DIR` env var if the remote repo is not at `~/spec-llvm-bench`

TODO
----

- Noise reduction
  - Script for CPU pinning, turbo control, NUMA policy

