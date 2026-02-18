# exec_time Analysis (pbqp regalloc): deucalion
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **500.perlbench_r** (±0.03%): 10.11% (Variant: GVNPRE-simpl_1-pre_0-[])
* **500.perlbench_r** (±0.00%): 9.52% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.02%): 8.76% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.06%): 8.46% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.09%): 13.00% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.05%): 12.91% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.03%): 5.33% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.02%): 5.17% (Variant: GVNPRE-simpl_1-pre_0-[])
* **511.povray_r** (±0.02%): 5.54% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.41%): 4.54% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.04%): 6.27% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.02%): 6.24% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **523.xalancbmk_r** (±0.02%): 13.39% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **523.xalancbmk_r** (±0.05%): 11.63% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.02%): 8.67% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): 4.88% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.05%): 10.31% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.04%): 7.74% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r** (±0.01%): 4.76% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r** (±0.01%): 4.16% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.01%): 3.66% (Variant: GVNPRE-simpl_1-pre_0-[])
* **541.leela_r** (±0.01%): 5.36% (Variant: GVNPRE-simpl_1-pre_0-[])
* **541.leela_r** (±0.00%): 4.52% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.01%): 7.74% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.01%): 7.26% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r** (±0.02%): 10.60% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.03%): 9.15% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.02%): 9.52% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.04%): 9.49% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.01%): 10.96% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): 10.88% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.10%): 12.68% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.15%): 12.59% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.04%): 3.81% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.01%): 3.79% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **623.xalancbmk_s** (±0.05%): 12.93% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **623.xalancbmk_s** (±0.02%): 11.41% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.01%): 8.66% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.02%): 4.91% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.32%): 4.73% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.31%): 4.12% (Variant: GVNPRE-simpl_1-pre_0-[])
* **641.leela_s** (±0.03%): 5.38% (Variant: GVNPRE-simpl_1-pre_0-[])
* **641.leela_s** (±0.01%): 4.52% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.78%): 5.27% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.56%): 4.39% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
_No significant losers._

## Variant Swings (> 3% difference among variants)
* **525.x264_r**: 3.79% total swing
  - Best (±0.02%): 8.67% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): 4.88% (NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s**: 3.75% total swing
  - Best (±0.01%): 8.66% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.02%): 4.91% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 6.70%
* **NewGVN-simpl_1-pre_0-[opt]**: 6.47%
