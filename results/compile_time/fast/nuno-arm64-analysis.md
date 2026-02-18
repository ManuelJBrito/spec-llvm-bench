# compile_time Analysis (fast regalloc): nuno-arm64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **505.mcf_r** (±0.00%): 4.23% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.00%): 3.85% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): 7.75% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): 3.39% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.00%): 9.08% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.00%): 6.44% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): 3.34% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): 5.03% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.00%): 4.93% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.00%): 3.04% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
_No significant losers._

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 4.36% total swing
  - Best (±0.00%): 7.75% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): 3.39% (GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s**: 3.60% total swing
  - Best (±0.00%): 2.49% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -1.11% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 1.57%
* **NewGVN-simpl_1-pre_0-[opt]**: 1.26%
