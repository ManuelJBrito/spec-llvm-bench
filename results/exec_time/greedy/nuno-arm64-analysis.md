# exec_time Analysis (greedy regalloc): nuno-arm64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **500.perlbench_r** (±0.41%): 19.80% (Variant: GVNPRE-simpl_1-pre_0-[])
* **500.perlbench_r** (±0.22%): 14.47% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.08%): 13.59% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.13%): 13.42% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.17%): 9.29% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.37%): 8.22% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.02%): 13.10% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.08%): 13.02% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±1.58%): 20.22% (Variant: GVNPRE-simpl_1-pre_0-[])
* **511.povray_r** (±0.16%): 19.19% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.01%): 5.78% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): 5.72% (Variant: GVNPRE-simpl_1-pre_0-[])
* **520.omnetpp_r** (±4.94%): 10.06% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **523.xalancbmk_r** (±0.41%): 12.77% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **523.xalancbmk_r** (±1.06%): 10.76% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.11%): 14.64% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.05%): 10.01% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.24%): 14.43% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.11%): 13.88% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.05%): 10.39% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.03%): 10.20% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.78%): 16.36% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.97%): 11.30% (Variant: GVNPRE-simpl_1-pre_0-[])
* **541.leela_r** (±0.02%): 8.54% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **541.leela_r** (±0.01%): 8.40% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.02%): 10.71% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.25%): 10.44% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.31%): 12.43% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r** (±0.21%): 12.12% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.50%): 19.76% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.08%): 14.75% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±0.05%): 12.84% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.09%): 12.71% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.31%): 8.95% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.36%): 8.94% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.03%): 5.03% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.05%): 5.02% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±0.43%): 11.84% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±5.64%): 4.24% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **623.xalancbmk_s** (±0.18%): 14.57% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **623.xalancbmk_s** (±0.29%): 13.17% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.04%): 14.70% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.05%): 10.07% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.05%): 10.39% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.03%): 10.17% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s** (±0.05%): 8.57% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s** (±0.06%): 8.41% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.44%): 7.62% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.17%): 6.87% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
_No significant losers._

## Variant Swings (> 3% difference among variants)
* **500.perlbench_r**: 5.33% total swing
  - Best (±0.41%): 19.80% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.22%): 14.47% (NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r**: 7.77% total swing
  - Best (±4.94%): 10.06% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±1.15%): 2.29% (GVNPRE-simpl_1-pre_0-[])
* **525.x264_r**: 4.63% total swing
  - Best (±0.11%): 14.64% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.05%): 10.01% (NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r**: 5.06% total swing
  - Best (±0.78%): 16.36% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.97%): 11.30% (GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s**: 5.01% total swing
  - Best (±0.50%): 19.76% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.08%): 14.75% (NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s**: 7.60% total swing
  - Best (±0.43%): 11.84% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±5.64%): 4.24% (NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s**: 4.63% total swing
  - Best (±0.04%): 14.70% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.05%): 10.07% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 11.10%
* **NewGVN-simpl_1-pre_0-[opt]**: 10.65%
