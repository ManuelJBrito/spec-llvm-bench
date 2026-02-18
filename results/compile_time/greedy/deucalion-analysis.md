# compile_time Analysis (greedy regalloc): deucalion
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **619.lbm_s** (±0.00%): 3.55% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -4.48% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -3.35% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.00%): -4.09% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -10.66% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -3.73% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): -6.66% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): -4.73% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -3.28% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -3.28% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.80% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.38% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 6.93% total swing
  - Best (±0.00%): -3.73% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -10.66% (GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s**: 3.64% total swing
  - Best (±0.00%): 1.48% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -2.16% (NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s**: 3.18% total swing
  - Best (±0.00%): 0.89% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -2.29% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -1.83%
* **NewGVN-simpl_1-pre_0-[opt]**: -1.98%
