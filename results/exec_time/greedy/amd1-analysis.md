# exec_time Analysis (greedy regalloc): amd1
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **531.deepsjeng_r** (±0.02%): 3.94% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±0.65%): 3.66% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **523.xalancbmk_r** (±1.59%): -3.36% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±1.03%): -4.87% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **623.xalancbmk_s** (±1.20%): -3.73% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **523.xalancbmk_r**: 3.54% total swing
  - Best (±0.86%): 0.19% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±1.59%): -3.36% (NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r**: 3.70% total swing
  - Best (±0.86%): -1.18% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±1.03%): -4.87% (NewGVN-simpl_1-pre_0-[opt])
* **623.xalancbmk_s**: 3.16% total swing
  - Best (±1.28%): -0.57% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±1.20%): -3.73% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 0.63%
* **NewGVN-simpl_1-pre_0-[opt]**: 0.00%
