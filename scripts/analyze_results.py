#!/usr/bin/env python3
import pandas as pd
import glob
import sys
import os

input_dir = sys.argv[1]
files = glob.glob(os.path.join(input_dir, "*.csv"))

METRIC_LABELS = {
    'exec_time': 'Execution Time',
    'compile_time': 'Compile Time',
    'size..text': 'Code Size (.text)',
}
REGALLOC_ORDER = ['greedy', 'pbqp', 'fast']


def build_variant(row):
    s = str(int(row['simpl'])) if pd.notna(row['simpl']) else ""
    p = str(int(row['pre'])) if pd.notna(row['pre']) else ""
    ass = f"[{row['assumption']}]" if pd.notna(row['assumption']) else "[]"
    return f"{row['gvn_base']}-simpl_{s}-pre_{p}-{ass}"


def fmt(v):
    return f"+{v:.2f}%" if v >= 0 else f"{v:.2f}%"


# ── Per-machine analysis ────────────────────────────────────────────────────

def write_per_machine_analysis(group, metric, regalloc, machine_name, target_dir):
    analysis_path = os.path.join(target_dir, f"{machine_name}-analysis.md")
    with open(analysis_path, 'w') as md:
        md.write(f"# {metric} Analysis ({regalloc} regalloc): {machine_name}\n")
        md.write("**Threshold:** \u00b13.0% change vs NoGVN baseline\n\n")

        # Winners
        md.write("## Winners (> +3%)\n")
        winners = group[group['speedup_pct'] > 3.0].sort_values(
            ['benchmark', 'speedup_pct'], ascending=[True, False])
        if not winners.empty:
            for _, row in winners.iterrows():
                md.write(f"* **{row['benchmark']}** (\u00b1{row['pct_dev']:.2f}%): "
                         f"{row['speedup_pct']:.2f}% (Variant: {row['variant']})\n")
        else:
            md.write("_No significant winners._\n")

        # Losers
        md.write("\n## Losers (< -3%)\n")
        losers = group[group['speedup_pct'] < -3.0].sort_values(
            ['benchmark', 'speedup_pct'], ascending=[True, True])
        if not losers.empty:
            for _, row in losers.iterrows():
                md.write(f"* **{row['benchmark']}** (\u00b1{row['pct_dev']:.2f}%): "
                         f"{row['speedup_pct']:.2f}% (Variant: {row['variant']})\n")
        else:
            md.write("_No significant losers._\n")

        # Variant Swings
        md.write("\n## Variant Swings (> 3% difference among variants)\n")
        impact_found = False
        for bench, b_group in group.groupby('benchmark'):
            if len(b_group) > 1:
                diff = b_group['speedup_pct'].max() - b_group['speedup_pct'].min()
                if diff > 3.0:
                    impact_found = True
                    best = b_group.loc[b_group['speedup_pct'].idxmax()]
                    worst = b_group.loc[b_group['speedup_pct'].idxmin()]
                    md.write(f"* **{bench}**: {diff:.2f}% total swing\n")
                    md.write(f"  - Best (\u00b1{best['pct_dev']:.2f}%): "
                             f"{best['speedup_pct']:.2f}% ({best['variant']})\n")
                    md.write(f"  - Worst (\u00b1{worst['pct_dev']:.2f}%): "
                             f"{worst['speedup_pct']:.2f}% ({worst['variant']})\n")
        if not impact_found:
            md.write("_No significant performance difference between "
                     "variants for this allocator._\n")

        # Average Speedups
        md.write("\n## Average Speedups\n")
        for variant, v_group in group.groupby('variant'):
            avg = v_group['speedup_pct'].mean()
            md.write(f"* **{variant}**: {avg:.2f}%\n")


# ── Cross-machine summary ───────────────────────────────────────────────────

def write_summary(combined, input_dir):
    for metric, mdf in combined.groupby('metric'):
        label = METRIC_LABELS.get(str(metric), str(metric))
        target_dir = os.path.join(input_dir, str(metric))
        os.makedirs(target_dir, exist_ok=True)
        summary_path = os.path.join(target_dir, "summary.md")

        hosts = sorted(mdf['machine'].unique())
        regallocs = [r for r in REGALLOC_ORDER if r in mdf['regalloc'].unique()]
        gvn_bases = sorted(mdf['gvn_base'].unique())

        with open(summary_path, 'w') as md:
            md.write(f"# {label} Results Summary\n\n")
            md.write("Comparison of "
                     + " and ".join(f"**{gb}**" for gb in gvn_bases)
                     + " against a **NoGVN baseline** on SPEC CPU 2017. "
                     + "Winners: > +3%; losers: < -3%.\n\n")
            md.write(f"**Hosts:** {', '.join(hosts)}\n")
            md.write(f"**Register allocators:** {', '.join(regallocs)}\n\n")
            md.write("---\n\n")

            _write_avg_speedups(md, mdf, regallocs, gvn_bases)
            _write_variant_swings(md, mdf, regallocs, gvn_bases)
            _write_across_architectures(md, mdf, regallocs, hosts)
            _write_host_summary(md, mdf, regallocs, hosts)

        print(f"  summary: {summary_path}")


def _write_avg_speedups(md, mdf, regallocs, gvn_bases):
    md.write("## Average Speedups by Register Allocator\n\n")
    md.write("Mean speedup (%) across all benchmarks per variant and host.\n\n")

    for ra in regallocs:
        md.write(f"### {ra.capitalize()}\n\n")
        ra_df = mdf[mdf['regalloc'] == ra]
        avg = ra_df.groupby(['machine', 'gvn_base'])['speedup_pct'].mean().unstack()
        sort_col = gvn_bases[0] if gvn_bases[0] in avg.columns else avg.columns[0]
        avg = avg.sort_values(sort_col, ascending=False)

        md.write("| Host |" + "".join(f" {gb} |" for gb in gvn_bases) + "\n")
        md.write("|------|" + "".join("--------|" for _ in gvn_bases) + "\n")
        for host in avg.index:
            md.write(f"| {host} |")
            for gb in gvn_bases:
                v = avg.at[host, gb] if gb in avg.columns else float('nan')
                md.write(f" {fmt(v)} |" if pd.notna(v) else " — |")
            md.write("\n")
        md.write("\n")

    md.write("---\n\n")


def _write_variant_swings(md, mdf, regallocs, gvn_bases):
    md.write("## GVNPRE vs NewGVN\n\n")
    if len(gvn_bases) < 2:
        md.write("_Only one variant present._\n\n---\n\n")
        return

    gb1, gb2 = gvn_bases[0], gvn_bases[1]

    for ra in regallocs:
        md.write(f"### {ra.capitalize()} — largest variant swings\n\n")
        ra_df = mdf[mdf['regalloc'] == ra]
        pivot = ra_df.pivot_table(
            index=['benchmark', 'machine'],
            columns='gvn_base',
            values='speedup_pct',
        ).reset_index()

        if gb1 not in pivot.columns or gb2 not in pivot.columns:
            md.write("_Insufficient variant data._\n\n")
            continue

        pivot['swing'] = pivot[gb1] - pivot[gb2]
        swings = pivot.dropna(subset=['swing'])
        swings = swings[swings['swing'].abs() > 3.0]
        swings = swings.sort_values('swing', key=abs, ascending=False)

        if swings.empty:
            md.write("_No variant swings > 3%._\n\n")
            continue

        md.write("| Benchmark | Host |"
                 + "".join(f" {gb} |" for gb in gvn_bases)
                 + " Swing |\n")
        md.write("|-----------|------|"
                 + "".join("--------|" for _ in gvn_bases)
                 + "-------|\n")
        for _, row in swings.iterrows():
            md.write(f"| {row['benchmark']} | {row['machine']} |")
            for gb in gvn_bases:
                md.write(f" {fmt(row[gb])} |")
            md.write(f" {row['swing']:+.2f}% |\n")

        md.write("\n")

    md.write("---\n\n")


def _write_across_architectures(md, mdf, regallocs, hosts):
    md.write("## GVN Across Architectures\n\n")
    md.write("Best variant per benchmark.\n\n")

    for ra in regallocs:
        md.write(f"### {ra.capitalize()}\n\n")
        ra_df = mdf[mdf['regalloc'] == ra]
        best = ra_df.groupby(['benchmark', 'machine'])['speedup_pct'].max().unstack()
        benchmarks = sorted(best.index)
        ra_hosts = [h for h in hosts if h in best.columns]

        md.write("| Benchmark |"
                 + "".join(f" {h} |" for h in ra_hosts) + "\n")
        md.write("|-----------|"
                 + "".join("--------|" for _ in ra_hosts) + "\n")
        for bench in benchmarks:
            md.write(f"| {bench} |")
            for h in ra_hosts:
                v = best.at[bench, h]
                md.write(f" {fmt(v)} |" if pd.notna(v) else " — |")
            md.write("\n")

        md.write("\n")

    md.write("---\n\n")


def _write_host_summary(md, mdf, regallocs, hosts):
    md.write("## Host-level Summary\n\n")
    md.write("| Host | Regalloc | Winners (>3%) | Losers (<-3%) | Range |\n")
    md.write("|------|----------|---------------|---------------|-------|\n")
    for h in hosts:
        for ra in regallocs:
            sub = mdf[(mdf['machine'] == h) & (mdf['regalloc'] == ra)]
            if sub.empty:
                continue
            n_w = int((sub['speedup_pct'] > 3.0).sum())
            n_l = int((sub['speedup_pct'] < -3.0).sum())
            mn, mx = sub['speedup_pct'].min(), sub['speedup_pct'].max()
            md.write(f"| {h} | {ra} | {n_w} | {n_l} "
                     f"| {fmt(mn)} to {fmt(mx)} |\n")
    md.write("\n")


# ── Main ─────────────────────────────────────────────────────────────────────

all_data = []

for f in files:
    if any(x in f for x in ["-merged.csv", "-speedup.csv", "-failures.csv",
                             "-analysis.md", "-stats.csv", "-pass_times.csv"]):
        continue

    raw_df = pd.read_csv(f)
    machine_name = os.path.splitext(os.path.basename(f))[0]

    # Filter specrand
    df_filtered = raw_df[
        ~raw_df['benchmark'].str.contains('specrand', case=False, na=False)
    ].copy()

    # Clean data
    df = df_filtered[
        (df_filtered['passed'] == 'PASS') & (df_filtered['metric'].notna())
    ].copy()
    if df.empty:
        continue

    # Calculate Speedups (baseline matched per regalloc)
    baselines = df[df['gvn_base'] == 'NoGVN'].groupby(
        ['benchmark', 'metric', 'regalloc']
    )['value'].mean().reset_index()
    baselines = baselines.rename(columns={'value': 'NoGVN_raw'})

    targets = df[df['gvn_base'] != 'NoGVN'].copy()
    targets = targets.groupby(
        ['benchmark', 'gvn_base', 'simpl', 'pre', 'assumption',
         'regalloc', 'metric'],
        dropna=False,
    )['value'].agg(['mean', 'std', 'count']).reset_index()
    targets = targets.rename(
        columns={'mean': 'value', 'std': 'value_std', 'count': 'value_n'})
    targets['pct_dev'] = targets['value_std'].fillna(0) / targets['value'] * 100
    targets['variant'] = targets.apply(build_variant, axis=1)

    final_df = targets.merge(
        baselines, on=['benchmark', 'metric', 'regalloc'], how='left')
    final_df['speedup_pct'] = (
        (final_df['NoGVN_raw'] - final_df['value'])
        / final_df['NoGVN_raw'] * 100
    )

    # Per-machine analysis
    for (metric, regalloc), group in final_df.groupby(['metric', 'regalloc']):
        target_dir = os.path.join(input_dir, str(metric), str(regalloc))
        os.makedirs(target_dir, exist_ok=True)
        write_per_machine_analysis(
            group, metric, regalloc, machine_name, target_dir)

    # Accumulate for summary
    final_df['machine'] = machine_name
    all_data.append(final_df)

# Cross-machine summaries
if all_data:
    combined = pd.concat(all_data, ignore_index=True)
    write_summary(combined, input_dir)
