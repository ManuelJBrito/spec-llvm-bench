# compile_time Analysis (greedy regalloc): nuno-arm64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -3.71% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -3.18% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -3.73% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -8.18% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.00%): -5.19% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.00%): -3.64% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -3.98% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.87% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.00%): -4.15% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.95% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.07% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -3.73% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.00%): -11.16% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.00%): -5.53% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -3.86% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -3.77% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.00%): -4.07% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 5.29% total swing
  - Best (±0.00%): -2.89% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -8.18% (GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: 6.49% total swing
  - Best (±0.00%): 1.30% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -5.19% (NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s**: 5.63% total swing
  - Best (±0.00%): -5.53% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -11.16% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -2.27%
* **NewGVN-simpl_1-pre_0-[opt]**: -2.54%
