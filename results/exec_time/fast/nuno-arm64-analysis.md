# exec_time Analysis (fast regalloc): nuno-arm64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **520.omnetpp_r** (±0.00%): 3.64% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): 3.02% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±0.00%): 6.74% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **523.xalancbmk_r** (±0.00%): -3.70% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.00%): -12.77% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.00%): -7.41% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **520.omnetpp_r**: 5.22% total swing
  - Best (±0.00%): 3.64% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -1.57% (NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r**: 12.60% total swing
  - Best (±0.00%): -0.17% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -12.77% (GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s**: 6.47% total swing
  - Best (±0.00%): 6.74% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): 0.27% (NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s**: 7.30% total swing
  - Best (±0.00%): -0.11% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -7.41% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -0.29%
* **NewGVN-simpl_1-pre_0-[opt]**: -0.03%
