#!/usr/bin/env python3

import csv
import json
import sys
from pathlib import Path

from util import RUN_RE, strip_name

SCHEMA = ['benchmark', 'machine', 'gvn_base', 'simpl', 'pre', 'assumption',
          'regalloc', 'metric', 'value', 'run_id', 'passed']
METRICS_OF_INTEREST = [
  "exec_time",
  "compile_time",
  # "compile_time_gvn",
  # "compile_time_optimizer",
  "size..text",
]


def main(builds_dir: Path, machine: str, variants_file: Path, output: Path):
  from config import load_variants
  variants = load_variants(variants_file)
  rows = []

  for build_dir in builds_dir.iterdir():
    if not build_dir.is_dir():
      continue

    variant = variants[build_dir.name]

    results_dir = build_dir / "results"
    if not results_dir.is_dir():
        continue

    observation_base = (
      machine,
      variant.get("gvn_base"),
      variant.get("simpl"),
      variant.get("pre"),
      variant.get("assumption"),
      variant.get("regalloc")
    )

    for json_file in results_dir.glob("*.json"):
      run_id = RUN_RE.search(json_file.name).group(1)
      with json_file.open() as f:
        data = json.load(f)

      for test in data.get("tests", []):
        benchmark = test.get("name")
        code = test.get("code")

        if code != "PASS":
          observation = (strip_name(benchmark),) + observation_base + (None,)*3 + (code,)
          rows.append(observation)
          continue

        metrics = test.get("metrics", {})
        for metric in METRICS_OF_INTEREST:
          if metric not in metrics:
            value = 0
            continue

          value = metrics[metric]
          observation = (strip_name(benchmark),) + observation_base + (
            metric,
            value,
            run_id,
            code
          )
          rows.append(observation)

  with open(output, 'w') as out:
     csv_out=csv.writer(out)
     csv_out.writerow(SCHEMA)
     for row in rows:
        csv_out.writerow(row)

if __name__ == "__main__":
    from config import load_config
    cfg = load_config()
    main(
        Path(cfg['build_root_base']),
        cfg['machine_name'],
        Path(cfg['base']) / cfg['variants'],
        Path(cfg['results_root_base'] + '.csv'),
    )
