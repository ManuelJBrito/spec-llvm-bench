# exec_time Analysis (fast regalloc): deucalion
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **505.mcf_r** (±0.00%): 5.81% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): 4.41% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): 5.70% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): 4.38% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
_No significant losers._

## Variant Swings (> 3% difference among variants)
* **505.mcf_r**: 3.09% total swing
  - Best (±0.00%): 5.81% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): 2.72% (NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r**: 4.44% total swing
  - Best (±0.00%): 4.41% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -0.03% (NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s**: 4.33% total swing
  - Best (±0.00%): 4.38% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): 0.05% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 0.65%
* **NewGVN-simpl_1-pre_0-[opt]**: 0.37%
