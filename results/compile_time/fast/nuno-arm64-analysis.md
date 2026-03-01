# compile_time Analysis (fast regalloc): nuno-arm64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **502.gcc_r** (±0.00%): -10.50% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.00%): -44.80% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -9.28% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.00%): -14.53% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): -10.76% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r** (±0.00%): -6.98% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **523.xalancbmk_r** (±0.00%): -11.29% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.00%): -16.45% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -16.07% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r** (±0.00%): -27.36% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -13.95% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **541.leela_r** (±0.00%): -8.57% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -17.15% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.00%): -46.83% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±0.00%): -10.63% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.00%): -33.74% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.00%): -23.41% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s** (±0.00%): -6.67% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **623.xalancbmk_s** (±0.00%): -11.74% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -17.20% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.00%): -24.47% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s** (±0.00%): -6.94% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): -48.69% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
_No significant performance difference between variants for this allocator._

## Average Speedups
* **NewGVN-simpl_1-pre_0-[opt]**: -19.04%
