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
- Generates common environment scripts
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

    ./scripts/results_to_csv.sh

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


GVN Pass Statistics
-------------------

    ./scripts/collect_gvn_stats.sh

Extracts GVN/NewGVN pass statistics from the test-suite JSON results (collected via `TEST_SUITE_COLLECT_STATS=ON`).

Output:

    results/<machine>-stats.csv

CSV schema: `(benchmark, machine, gvn_base, simpl, pre, assumption, regalloc, stat_name, stat_value, run_id)`


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
    ├── scripts/
    │   ├── analyze_results.py
    │   ├── build_variant.sh
    │   ├── run_variant.sh
    │   ├── results_to_csv.py
    │   ├── results_to_csv.sh
    │   ├── collect_gvn_stats.py
    │   ├── collect_gvn_stats.sh
    │   └── common.sh *
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

### Remote Execution

This infrastructure supports **building variants locally and running benchmarks on a remote host**.  
The remote machine is assumed to have a cloned `spec-llvm-bench` repository and an accessible parent build directory.

Configuration
-------------

Set the remote host and build directory via `configure.sh`:

```bash
./configure.sh --remote-host <user>@<hostname> \
                --remote-build-dir /path/to/remote/spec-llvm-bench/builds
```  

Building
--------
When building a variant locally:

```bash 
./bench.sh --mode build --variants NoGVN
```
The variant is automatically rsynced to the remote host.

TODO
----

- Noise reduction
  - Script for CPU pinning, turbo control, NUMA policy

