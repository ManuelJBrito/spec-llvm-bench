# exec_time Analysis (greedy regalloc): deucalion
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **500.perlbench_r** (±0.05%): 11.07% (Variant: GVNPRE-simpl_1-pre_0-[])
* **500.perlbench_r** (±0.04%): 8.13% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.02%): 10.11% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.03%): 9.28% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.22%): 11.20% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.01%): 12.88% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.01%): 12.74% (Variant: GVNPRE-simpl_1-pre_0-[])
* **511.povray_r** (±0.02%): 13.77% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.06%): 12.12% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.01%): 6.31% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.02%): 6.30% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r** (±0.04%): 8.29% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **523.xalancbmk_r** (±0.04%): 9.37% (Variant: GVNPRE-simpl_1-pre_0-[])
* **523.xalancbmk_r** (±0.02%): 8.26% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.03%): 9.70% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.03%): 4.85% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.02%): 9.16% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.02%): 8.35% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r** (±0.01%): 7.57% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r** (±0.01%): 6.86% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.00%): 20.12% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.01%): 17.67% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **541.leela_r** (±0.01%): 7.76% (Variant: GVNPRE-simpl_1-pre_0-[])
* **541.leela_r** (±0.01%): 7.37% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.01%): 9.27% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.01%): 8.73% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.01%): 13.27% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.03%): 12.93% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.05%): 11.10% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.01%): 8.13% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±0.05%): 12.10% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.02%): 11.62% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.16%): 10.56% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.03%): 4.55% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.02%): 4.53% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s** (±0.01%): 8.34% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **623.xalancbmk_s** (±0.01%): 8.72% (Variant: GVNPRE-simpl_1-pre_0-[])
* **623.xalancbmk_s** (±0.02%): 8.25% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.03%): 9.73% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.03%): 4.84% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.34%): 7.46% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.38%): 6.88% (Variant: GVNPRE-simpl_1-pre_0-[])
* **641.leela_s** (±0.00%): 7.77% (Variant: GVNPRE-simpl_1-pre_0-[])
* **641.leela_s** (±0.01%): 7.36% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.29%): 7.35% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.40%): 6.92% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
_No significant losers._

## Variant Swings (> 3% difference among variants)
* **505.mcf_r**: 9.95% total swing
  - Best (±0.22%): 11.20% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.02%): 1.25% (NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r**: 8.04% total swing
  - Best (±0.04%): 8.29% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.01%): 0.25% (GVNPRE-simpl_1-pre_0-[])
* **525.x264_r**: 4.85% total swing
  - Best (±0.03%): 9.70% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.03%): 4.85% (NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s**: 9.09% total swing
  - Best (±0.16%): 10.56% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.07%): 1.47% (NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s**: 8.06% total swing
  - Best (±0.01%): 8.34% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.01%): 0.28% (GVNPRE-simpl_1-pre_0-[])
* **625.x264_s**: 4.89% total swing
  - Best (±0.03%): 9.73% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.03%): 4.84% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 8.76%
* **NewGVN-simpl_1-pre_0-[opt]**: 7.86%
