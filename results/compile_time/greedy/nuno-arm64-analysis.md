# compile_time Analysis (greedy regalloc): nuno-arm64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **519.lbm_r** (±0.00%): 5.91% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): 4.00% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.00%): 4.30% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -3.71% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -3.18% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -8.85% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -3.53% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.15% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.27% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 5.32% total swing
  - Best (±0.00%): -3.53% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -8.85% (GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: 6.18% total swing
  - Best (±0.00%): 5.91% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -0.28% (NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s**: 5.10% total swing
  - Best (±0.00%): 4.30% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -0.81% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -0.62%
* **NewGVN-simpl_1-pre_0-[opt]**: -0.89%
