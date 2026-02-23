#!/usr/bin/env python3
"""Extract GVN/NewGVN pass statistics from test-suite JSON results.

Reads the per-variant JSON result files produced by lit and outputs a CSV
with one row per (benchmark, variant, regalloc, stat_name) combination.

Usage:
    python3 scripts/collect_gvn_stats.py <builds_dir> <machine> <variants.yaml> <output.csv>
"""

import csv
import json
import re
import sys
import yaml
from pathlib import Path

SCHEMA = [
    "benchmark", "machine", "gvn_base", "simpl", "pre", "assumption",
    "regalloc", "stat_name", "stat_value", "run_id",
]

# Stats are prefixed by the pass name in the JSON metrics.
# We collect all gvn.* and newgvn.* counters.
GVN_STAT_PREFIXES = ("gvn.", "newgvn.")

RUN_RE = re.compile(r"_results_(\d+)\.json$")


def strip_name(name: str) -> str:
    name = name.split("/")[-1]
    if name.endswith(".test"):
        name = name[:-5]
    return name


def main(builds_dir: Path, machine: str, variants_file: Path, output: Path):
    with open(variants_file) as f:
        variants_data = yaml.safe_load(f)
    variants: dict[str, dict] = {v["id"]: v for v in variants_data}

    rows: list[tuple] = []

    for build_dir in sorted(builds_dir.iterdir()):
        if not build_dir.is_dir():
            continue
        if build_dir.name not in variants:
            continue

        var = variants[build_dir.name]
        results_dir = build_dir / "results"
        if not results_dir.is_dir():
            continue

        base_fields = (
            machine,
            var.get("gvn_base"),
            var.get("simpl"),
            var.get("pre"),
            var.get("assumption"),
            var.get("regalloc"),
        )

        for json_file in sorted(results_dir.glob("*.json")):
            m = RUN_RE.search(json_file.name)
            if not m:
                continue
            run_id = m.group(1)

            with json_file.open() as f:
                data = json.load(f)

            for test in data.get("tests", []):
                if test.get("code") != "PASS":
                    continue

                benchmark = strip_name(test["name"])
                metrics = test.get("metrics", {})

                for key, value in sorted(metrics.items()):
                    if not any(key.startswith(p) for p in GVN_STAT_PREFIXES):
                        continue
                    rows.append(
                        (benchmark,) + base_fields + (key, value, run_id)
                    )

    output.parent.mkdir(parents=True, exist_ok=True)
    with open(output, "w", newline="") as out:
        w = csv.writer(out)
        w.writerow(SCHEMA)
        w.writerows(rows)

    print(f"Wrote {len(rows)} rows to {output}", file=sys.stderr)


if __name__ == "__main__":
    from config import load_config
    cfg = load_config()

    main(
        Path(cfg['build_root_base']),
        cfg['machine_name'],
        Path(cfg['base']) / cfg['variants'],
        Path(cfg['results_root_base'] + '-stats.csv'),
    )
