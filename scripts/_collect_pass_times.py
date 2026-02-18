#!/usr/bin/env python3
"""Parse -ftime-report output from build-timepasses.log files and emit a CSV.

Usage: _collect_pass_times.py <builds_dir> <machine> <variants.yaml> <output.csv>

For each variant build directory with a build-timepasses.log, parses the
"Pass execution timing report" sections, attributes timings to benchmarks via
the ninja progress lines, and aggregates GVN/NewGVN wall time per benchmark.

Requires builds produced with:  build_variant.sh <variant> ref all time_passes=1

CSV schema: benchmark,machine,variant,regalloc,gvn_time_s,total_opt_time_s,gvn_pct
"""

import csv
import re
import sys
import yaml
from collections import defaultdict
from pathlib import Path

# Ninja build line → extract benchmark from External/SPEC/<suite>/<benchmark>/
# e.g.: [144/4966] Building C object External/SPEC/CINT2017rate/500.perlbench_r/...
NINJA_BUILD_RE = re.compile(
    r'^\[\d+/\d+\] Building (?:C|CXX) object .*?External/SPEC/[^/]+/([^/]+)/'
)

# 4-column timing row: (User, %) (Sys, %) (User+Sys, %) (Wall, %) Name
# Wall time is group 4; pass name is group 5.
TIMING_ROW_RE = re.compile(
    r'^\s+'
    r'(\d+\.\d+)\s+\(\s*[\d.]+%\)\s+'   # User Time
    r'(\d+\.\d+)\s+\(\s*[\d.]+%\)\s+'   # System Time
    r'(\d+\.\d+)\s+\(\s*[\d.]+%\)\s+'   # User+System
    r'(\d+\.\d+)\s+\(\s*[\d.]+%\)\s+'   # Wall Time
    r'(.+?)\s*$'                          # Pass Name
)

GVN_PASSES = {'GVNPass', 'NewGVNPass'}

SCHEMA = ['benchmark', 'machine', 'variant', 'regalloc',
          'gvn_time_s', 'total_opt_time_s', 'gvn_pct']


def parse_timepasses_log(log_path: Path) -> dict:
    """Parse build-timepasses.log built with time_passes=1 (sequential, -j1).

    Returns dict: benchmark -> {'gvn': float, 'total': float}, summed across TUs.
    """
    bench_times: dict = defaultdict(lambda: {'gvn': 0.0, 'total': 0.0})
    current_bench = None
    in_pass_timing = False

    with log_path.open() as f:
        for line in f:
            # Ninja build line → update current benchmark context
            m = NINJA_BUILD_RE.match(line)
            if m:
                current_bench = m.group(1)
                in_pass_timing = False
                continue

            # Entering the Pass execution timing report section
            if 'Pass execution timing report' in line:
                in_pass_timing = True
                continue

            if not in_pass_timing or current_bench is None:
                continue

            # Match a 4-column timing row
            m = TIMING_ROW_RE.match(line)
            if not m:
                continue

            wall_time = float(m.group(4))
            name = m.group(5).strip()

            if name in GVN_PASSES:
                bench_times[current_bench]['gvn'] += wall_time
            elif name == 'Total':
                bench_times[current_bench]['total'] += wall_time
                in_pass_timing = False  # section done

    return dict(bench_times)


def main(builds_dir: Path, machine: str, variants_file: Path, output: Path):
    with open(variants_file) as f:
        variants_data = yaml.safe_load(f)
    variants = {v['id']: v for v in variants_data}

    rows = []

    for build_dir in sorted(builds_dir.iterdir()):
        if not build_dir.is_dir():
            continue

        variant_id = build_dir.name
        if variant_id not in variants:
            continue

        log_path = build_dir / 'build-timepasses.log'
        if not log_path.exists():
            continue

        var = variants[variant_id]
        regalloc = var.get('regalloc', '')

        bench_times = parse_timepasses_log(log_path)

        for bench, times in sorted(bench_times.items()):
            gvn_t = times['gvn']
            total_t = times['total']
            pct = (gvn_t / total_t * 100) if total_t > 0 else 0.0
            rows.append([
                bench, machine, variant_id, regalloc,
                f'{gvn_t:.6f}', f'{total_t:.6f}', f'{pct:.2f}',
            ])

    output.parent.mkdir(parents=True, exist_ok=True)
    with open(output, 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerow(SCHEMA)
        writer.writerows(rows)

    print(f"Wrote {len(rows)} rows to {output}", file=sys.stderr)


if __name__ == '__main__':
    if len(sys.argv) != 5:
        print(
            'Usage: _collect_pass_times.py <builds_dir> <machine> <variants.yaml> <output.csv>',
            file=sys.stderr,
        )
        sys.exit(1)

    main(
        Path(sys.argv[1]),
        sys.argv[2],
        Path(sys.argv[3]),
        Path(sys.argv[4]),
    )
