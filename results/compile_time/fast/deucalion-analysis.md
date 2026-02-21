# compile_time Analysis (fast regalloc): deucalion
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -4.38% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.84% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.00%): -4.67% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -10.72% (Variant: GVNPRE-simpl_1-pre_0-[])
* **511.povray_r** (±0.00%): -3.10% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): -5.90% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.00%): -4.89% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -3.50% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.91% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.44% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.00%): -5.07% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -3.46% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -5.07% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.00%): -3.92% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -5.45% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.54% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -4.14% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±0.00%): -3.12% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): -3.49% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.00%): -3.93% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.00%): -3.38% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): -6.16% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): -4.08% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.00%): -4.04% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.00%): -3.34% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 8.06% total swing
  - Best (±0.00%): -2.66% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -10.72% (GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: 5.90% total swing
  - Best (±0.00%): 0.00% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -5.90% (NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s**: 3.55% total swing
  - Best (±0.00%): 0.06% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -3.49% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -2.67%
* **NewGVN-simpl_1-pre_0-[opt]**: -3.57%
