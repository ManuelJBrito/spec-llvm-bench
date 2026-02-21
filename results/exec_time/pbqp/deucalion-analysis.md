# exec_time Analysis (pbqp regalloc): deucalion
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **519.lbm_r** (±0.04%): 5.01% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.02%): 4.99% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.02%): 4.82% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.01%): 4.81% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **520.omnetpp_r** (±0.01%): -8.83% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r** (±0.20%): -8.80% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±0.05%): -8.94% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±0.05%): -8.06% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **525.x264_r**: 3.95% total swing
  - Best (±0.02%): 4.82% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): 0.87% (NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s**: 3.91% total swing
  - Best (±0.01%): 4.81% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.02%): 0.90% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 0.14%
* **NewGVN-simpl_1-pre_0-[opt]**: -0.09%
