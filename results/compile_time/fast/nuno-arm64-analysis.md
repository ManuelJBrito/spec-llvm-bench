# compile_time Analysis (fast regalloc): nuno-arm64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **519.lbm_r** (±0.00%): 5.40% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -3.50% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -4.10% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.00%): -5.33% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.00%): -4.91% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -8.97% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -4.06% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.00%): -4.27% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -3.99% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -4.37% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -4.22% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r** (±0.00%): -3.63% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r** (±0.00%): -3.12% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.00%): -3.43% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -3.09% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.00%): -3.86% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.47% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.44% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -3.73% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.00%): -4.71% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): -3.57% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): -3.18% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 4.92% total swing
  - Best (±0.00%): -4.06% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -8.97% (GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s**: 3.73% total swing
  - Best (±0.00%): -0.98% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -4.71% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -2.18%
* **NewGVN-simpl_1-pre_0-[opt]**: -2.48%
