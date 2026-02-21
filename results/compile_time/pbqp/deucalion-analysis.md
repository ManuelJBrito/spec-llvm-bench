# compile_time Analysis (pbqp regalloc): deucalion
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -4.31% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -3.57% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -4.44% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.05% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -11.22% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -3.81% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.00%): -3.32% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.00%): -3.54% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -3.32% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.48% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -3.30% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -5.14% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -3.71% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.00%): -4.26% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.46% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -4.15% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -4.50% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): -3.58% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): -4.89% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 7.41% total swing
  - Best (±0.00%): -3.81% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -11.22% (GVNPRE-simpl_1-pre_0-[])
* **657.xz_s**: 3.11% total swing
  - Best (±0.00%): -1.78% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -4.89% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -2.17%
* **NewGVN-simpl_1-pre_0-[opt]**: -2.67%
