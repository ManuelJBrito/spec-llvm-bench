#!/usr/bin/env python3
"""Persistent work log for tracking benchmark progress across machines.

Usage: _worklog.py <worklog.json> <default_host> <variants.yaml> <builds_dir> <results_dir> <action> [args...]

Actions:
  status [host]                    Show current state (all hosts if omitted)
  mark <host> <task> <value>       Update a task field
  list-pending [host]              Show remaining work
  scan [host]                      Auto-discover state from filesystem
"""

import json
import os
import sys
import tempfile
from glob import glob
from pathlib import Path

import yaml


def load_worklog(path):
    if os.path.exists(path):
        with open(path) as f:
            return json.load(f)
    return {}


def save_worklog(path, data):
    """Write atomically: temp file + rename."""
    dir_ = os.path.dirname(path) or "."
    fd, tmp = tempfile.mkstemp(dir=dir_, suffix=".json")
    try:
        with os.fdopen(fd, "w") as f:
            json.dump(data, f, indent=2, sort_keys=True)
            f.write("\n")
        os.replace(tmp, path)
    except:
        os.unlink(tmp)
        raise


def ensure_host(worklog, host):
    if host not in worklog:
        worklog[host] = {
            "variants_built": [],
            "variants_run": [],
            "csv_generated": False,
            "analysis_generated": False,
            "pass_times_collected": False,
            "gvn_stats_collected": False,
            "perf_bisect": {},
            "alive2": {},
        }
    return worklog[host]


def load_variant_ids(variants_yaml):
    with open(variants_yaml) as f:
        variants = yaml.safe_load(f)
    return [v["id"] for v in variants if v["id"] != "prof"]


# -- Actions ------------------------------------------------------------------


def do_status(worklog, host):
    """Pretty-print status for one host or all."""
    hosts = [host] if host else sorted(worklog.keys())
    if not hosts:
        print("Worklog is empty. Run 'scan' to populate from filesystem.")
        return

    for h in hosts:
        if h not in worklog:
            print(f"{h}: no data")
            continue
        entry = worklog[h]
        print(f"=== {h} ===")
        built = entry.get("variants_built", [])
        run = entry.get("variants_run", [])
        print(f"  Variants built: {len(built)}  {built}")
        print(f"  Variants run:   {len(run)}  {run}")
        print(f"  CSV generated:          {entry.get('csv_generated', False)}")
        print(f"  Analysis generated:     {entry.get('analysis_generated', False)}")
        print(f"  Pass times collected:   {entry.get('pass_times_collected', False)}")
        print(f"  GVN stats collected:    {entry.get('gvn_stats_collected', False)}")
        bisect = entry.get("perf_bisect", {})
        if bisect:
            print(f"  Perf bisect:")
            for bench, status in sorted(bisect.items()):
                print(f"    {bench}: {status}")
        alive = entry.get("alive2", {})
        if alive:
            print(f"  Alive2:")
            for bench, status in sorted(alive.items()):
                print(f"    {bench}: {status}")
        print()


def do_mark(worklog, worklog_path, args):
    """Update a task field.

    mark <host> built <variant>
    mark <host> run <variant>
    mark <host> csv_generated true|false
    mark <host> analysis_generated true|false
    mark <host> pass_times_collected true|false
    mark <host> gvn_stats_collected true|false
    mark <host> perf_bisect <benchmark> <status>
    mark <host> alive2 <benchmark> <status>
    """
    if len(args) < 3:
        print("Usage: mark <host> <task> <value> [value2]", file=sys.stderr)
        sys.exit(1)

    host, task = args[0], args[1]
    entry = ensure_host(worklog, host)

    list_fields = {"built": "variants_built", "run": "variants_run"}
    bool_fields = {
        "csv_generated",
        "analysis_generated",
        "pass_times_collected",
        "gvn_stats_collected",
    }
    dict_fields = {"perf_bisect", "alive2"}

    if task in list_fields:
        variant = args[2]
        field = list_fields[task]
        if variant not in entry[field]:
            entry[field].append(variant)
            entry[field].sort()
        print(f"{host}: added {variant} to {field}")
    elif task in bool_fields:
        value = args[2].lower() in ("true", "1", "yes")
        entry[task] = value
        print(f"{host}: {task} = {value}")
    elif task in dict_fields:
        if len(args) < 4:
            print(f"Usage: mark <host> {task} <benchmark> <status>", file=sys.stderr)
            sys.exit(1)
        benchmark, status = args[2], args[3]
        entry.setdefault(task, {})[benchmark] = status
        print(f"{host}: {task}[{benchmark}] = {status}")
    else:
        print(f"Unknown task: {task}", file=sys.stderr)
        print(
            "Valid tasks: built, run, csv_generated, analysis_generated, "
            "pass_times_collected, gvn_stats_collected, perf_bisect, alive2",
            file=sys.stderr,
        )
        sys.exit(1)

    save_worklog(worklog_path, worklog)


def do_list_pending(worklog, host, variant_ids):
    """Show what work remains."""
    hosts = [host] if host else sorted(worklog.keys())
    if not hosts:
        print("Worklog is empty. Run 'scan' to populate from filesystem.")
        return

    for h in hosts:
        entry = worklog.get(h, {})
        built = set(entry.get("variants_built", []))
        run = set(entry.get("variants_run", []))

        print(f"=== {h} ===")
        not_built = [v for v in variant_ids if v not in built]
        if not_built:
            print(f"  Not built:  {not_built}")

        built_not_run = [v for v in variant_ids if v in built and v not in run]
        if built_not_run:
            print(f"  Built but not run:  {built_not_run}")

        flags = [
            ("csv_generated", "CSV generation"),
            ("analysis_generated", "Analysis generation"),
            ("pass_times_collected", "Pass timing collection"),
            ("gvn_stats_collected", "GVN stats collection"),
        ]
        for key, label in flags:
            if not entry.get(key, False):
                print(f"  Pending: {label}")

        for task_type in ("perf_bisect", "alive2"):
            tasks = entry.get(task_type, {})
            pending = {k: v for k, v in tasks.items() if v != "done"}
            if pending:
                print(f"  {task_type} incomplete:")
                for bench, status in sorted(pending.items()):
                    print(f"    {bench}: {status}")

        if not not_built and not built_not_run and all(entry.get(k, False) for k, _ in flags):
            print("  All clear!")
        print()


def do_scan(worklog, worklog_path, host, builds_dir, results_dir):
    """Auto-discover state from filesystem."""
    entry = ensure_host(worklog, host)

    # Scan builds
    builds_path = Path(builds_dir)
    if builds_path.is_dir():
        for d in sorted(builds_path.iterdir()):
            if not d.is_dir() or d.name == "prof":
                continue
            variant_id = d.name
            if variant_id not in entry["variants_built"]:
                entry["variants_built"].append(variant_id)

            # Check if results exist (variant was run)
            results_glob = list(d.glob("results/*_results_*.json"))
            if results_glob and variant_id not in entry["variants_run"]:
                entry["variants_run"].append(variant_id)

    entry["variants_built"].sort()
    entry["variants_run"].sort()

    # Check CSV
    results_path = Path(results_dir)
    # CSV files are at results/<machine>.csv (sibling to machine results dir)
    csv_candidates = [
        results_path.parent / f"{host}.csv",  # results/<host>.csv
    ]
    entry["csv_generated"] = any(p.is_file() for p in csv_candidates)

    # Check analysis files
    analysis_found = False
    for metric in ("exec_time", "compile_time", "size..text"):
        metric_dir = results_path.parent / metric
        if metric_dir.is_dir():
            for regalloc_dir in metric_dir.iterdir():
                if regalloc_dir.is_dir():
                    analysis_file = regalloc_dir / f"{host}-analysis.md"
                    if analysis_file.is_file():
                        analysis_found = True
                        break
        if analysis_found:
            break
    entry["analysis_generated"] = analysis_found

    # Check compile-time collection
    stats_csv = results_path.parent / f"{host}-stats.csv"
    entry["gvn_stats_collected"] = stats_csv.is_file()

    pass_times_csv = results_path.parent / f"{host}-pass_times.csv"
    entry["pass_times_collected"] = pass_times_csv.is_file()

    save_worklog(worklog_path, worklog)
    print(f"Scanned filesystem for {host}:")
    print(f"  Variants built: {len(entry['variants_built'])}")
    print(f"  Variants run:   {len(entry['variants_run'])}")
    print(f"  CSV generated:          {entry['csv_generated']}")
    print(f"  Analysis generated:     {entry['analysis_generated']}")
    print(f"  Pass times collected:   {entry['pass_times_collected']}")
    print(f"  GVN stats collected:    {entry['gvn_stats_collected']}")


# -- Main ---------------------------------------------------------------------


def main():
    if len(sys.argv) < 7:
        print(__doc__, file=sys.stderr)
        sys.exit(1)

    worklog_path = sys.argv[1]
    default_host = sys.argv[2]
    variants_yaml = sys.argv[3]
    builds_dir = sys.argv[4]
    results_dir = sys.argv[5]
    action = sys.argv[6]
    rest = sys.argv[7:]

    worklog = load_worklog(worklog_path)
    variant_ids = load_variant_ids(variants_yaml)

    if action == "status":
        host = rest[0] if rest else None
        do_status(worklog, host)
    elif action == "mark":
        do_mark(worklog, worklog_path, rest)
    elif action == "list-pending":
        host = rest[0] if rest else default_host
        do_list_pending(worklog, host, variant_ids)
    elif action == "scan":
        host = rest[0] if rest else default_host
        do_scan(worklog, worklog_path, host, builds_dir, results_dir)
    else:
        print(f"Unknown action: {action}", file=sys.stderr)
        print("Valid actions: status, mark, list-pending, scan", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
