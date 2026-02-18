# compile_time Analysis (fast regalloc): nuno-amd64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **505.mcf_r** (±0.00%): 4.69% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): 6.01% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **519.lbm_r** (±0.00%): -7.63% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -3.87% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.00%): -3.92% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 5.86% total swing
  - Best (±0.00%): 6.01% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): 0.15% (GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: 6.88% total swing
  - Best (±0.00%): -0.74% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -7.63% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -0.20%
* **NewGVN-simpl_1-pre_0-[opt]**: -0.59%
