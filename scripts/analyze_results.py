#!/usr/bin/env python3
import pandas as pd
import glob
import sys
import os

input_dir = sys.argv[1]
files = glob.glob(os.path.join(input_dir, "*.csv"))

def build_variant(row):
    s = str(int(row['simpl'])) if pd.notna(row['simpl']) else ""
    p = str(int(row['pre'])) if pd.notna(row['pre']) else ""
    ass = f"[{row['assumption']}]" if pd.notna(row['assumption']) else "[]"
    return f"{row['gvn_base']}-simpl_{s}-pre_{p}-{ass}"

for f in files:
    if any(x in f for x in ["-merged.csv", "-speedup.csv", "-failures.csv", "-analysis.md"]):
        continue
    
    raw_df = pd.read_csv(f)
    machine_name = os.path.splitext(os.path.basename(f))[0]
    
    # Filter specrand
    df_filtered = raw_df[~raw_df['benchmark'].str.contains('specrand', case=False, na=False)].copy()

    # Clean data
    df = df_filtered[(df_filtered['passed'] == 'PASS') & (df_filtered['metric'].notna())].copy()
    if df.empty: continue

    # Calculate Speedups
    baselines = df[df['gvn_base'] == 'NoGVN'].groupby(['benchmark', 'metric'])['value'].mean().reset_index()
    baselines = baselines.rename(columns={'value': 'NoGVN_raw'})
    targets = df[df['gvn_base'] != 'NoGVN'].copy()
    targets = targets.groupby(['benchmark', 'gvn_base', 'simpl', 'pre', 'assumption', 'regalloc', 'metric'], dropna=False)['value'].mean().reset_index()
    targets['variant'] = targets.apply(build_variant, axis=1)
    
    final_df = targets.merge(baselines, on=['benchmark', 'metric'], how='left')
    final_df['speedup_pct'] = ((final_df['NoGVN_raw'] - final_df['value']) / final_df['NoGVN_raw']) * 100

    # --- GENERATE ANALYSIS PER METRIC AND REGALLOC ---
    for (metric, regalloc), group in final_df.groupby(['metric', 'regalloc']):
        # Path: metric/regalloc/machine-analysis.md
        target_dir = os.path.join(input_dir, str(metric), str(regalloc))
        os.makedirs(target_dir, exist_ok=True)
        
        analysis_path = os.path.join(target_dir, f"{machine_name}-analysis.md")
        
        with open(analysis_path, 'w') as md:
            md.write(f"# {metric} Analysis ({regalloc} regalloc): {machine_name}\n")
            md.write(f"**Threshold:** ±3.0% change vs NoGVN baseline\n\n")

            # Winners: > 3%
            md.write("## Winners (> +3%)\n")
            winners = group[group['speedup_pct'] > 3.0].sort_values(['benchmark', 'speedup_pct'], ascending=[True, False])
            if not winners.empty:
                for _, row in winners.iterrows():
                    md.write(f"* **{row['benchmark']}**: {row['speedup_pct']:.2f}% (Variant: {row['variant']})\n")
            else:
                md.write("_No significant winners._\n")
            
            # Losers: < -3%
            md.write("\n## Losers (< -3%)\n")
            losers = group[group['speedup_pct'] < -3.0].sort_values(['benchmark', 'speedup_pct'], ascending=[True, True])
            if not losers.empty:
                for _, row in losers.iterrows():
                    md.write(f"* **{row['benchmark']}**: {row['speedup_pct']:.2f}% (Variant: {row['variant']})\n")
            else:
                md.write("_No significant losers._\n")

            # Inter-variant Comparison: Range > 3%
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
                        md.write(f"  - Best: {best['speedup_pct']:.2f}% ({best['variant']})\n")
                        md.write(f"  - Worst: {worst['speedup_pct']:.2f}% ({worst['variant']})\n")
            
            if not impact_found:
                md.write("_No significant performance difference between variants for this allocator._\n")
