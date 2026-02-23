"""Shared utilities for Python scripts."""

import re

RUN_RE = re.compile(r"_results_(\d+)\.json$")


def strip_name(name: str) -> str:
    """Remove path prefix and .test suffix from benchmark names."""
    name = name.split("/")[-1]
    if name.endswith(".test"):
        name = name[:-5]
    return name
