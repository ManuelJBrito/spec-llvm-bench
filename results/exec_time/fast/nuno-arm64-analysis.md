# exec_time Analysis (fast regalloc): nuno-arm64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -87.38% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -86.92% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -73.89% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -73.48% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.00%): -42.73% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.00%): -40.52% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -58.06% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -55.57% (Variant: GVNPRE-simpl_1-pre_0-[])
* **511.povray_r** (±0.00%): -91.62% (Variant: GVNPRE-simpl_1-pre_0-[])
* **511.povray_r** (±0.00%): -89.67% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): -27.08% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.00%): -27.03% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r** (±0.00%): -40.50% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r** (±0.00%): -33.28% (Variant: GVNPRE-simpl_1-pre_0-[])
* **523.xalancbmk_r** (±0.00%): -77.83% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **523.xalancbmk_r** (±0.00%): -76.12% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -56.35% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.00%): -52.10% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -83.29% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -82.93% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r** (±0.00%): -56.24% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.00%): -55.22% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -85.21% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.00%): -84.26% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **541.leela_r** (±0.00%): -47.09% (Variant: GVNPRE-simpl_1-pre_0-[])
* **541.leela_r** (±0.00%): -46.10% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -51.24% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -51.09% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.00%): -88.92% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r** (±0.00%): -67.82% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -87.61% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -85.75% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -74.22% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -72.33% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.00%): -39.93% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): -39.61% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.00%): -23.04% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.00%): -23.00% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±0.00%): -46.63% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s** (±0.00%): -37.12% (Variant: GVNPRE-simpl_1-pre_0-[])
* **623.xalancbmk_s** (±0.00%): -71.37% (Variant: GVNPRE-simpl_1-pre_0-[])
* **623.xalancbmk_s** (±0.00%): -70.10% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -56.39% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -52.00% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.00%): -56.76% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.00%): -56.59% (Variant: GVNPRE-simpl_1-pre_0-[])
* **641.leela_s** (±0.00%): -47.33% (Variant: GVNPRE-simpl_1-pre_0-[])
* **641.leela_s** (±0.00%): -46.24% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): -45.86% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.00%): -35.94% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **520.omnetpp_r**: 7.22% total swing
  - Best (±0.00%): -33.28% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -40.50% (NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r**: 4.26% total swing
  - Best (±0.00%): -52.10% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -56.35% (NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r**: 21.10% total swing
  - Best (±0.00%): -67.82% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -88.92% (GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s**: 9.51% total swing
  - Best (±0.00%): -37.12% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -46.63% (NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s**: 4.39% total swing
  - Best (±0.00%): -52.00% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -56.39% (NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s**: 9.92% total swing
  - Best (±0.00%): -35.94% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -45.86% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -59.38%
* **NewGVN-simpl_1-pre_0-[opt]**: -58.91%
