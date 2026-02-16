# compile_time Analysis (fast regalloc): sobolev.inesc-id.pt
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **508.namd_r** (±0.00%): 3.51% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -4.73% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -4.72% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 4.71% total swing
  - Best (±0.00%): 3.51% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -1.20% (GVNPRE-simpl_1-pre_0-[])
