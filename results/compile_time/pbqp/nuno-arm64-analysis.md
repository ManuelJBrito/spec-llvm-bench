# compile_time Analysis (pbqp regalloc): nuno-arm64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **505.mcf_r** (±0.00%): 4.97% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -5.50% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -4.22% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -7.07% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -5.48% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -12.09% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -8.19% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **510.parest_r** (±0.00%): -3.16% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.00%): -4.84% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.00%): -3.98% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.00%): -7.16% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.00%): -8.40% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -8.08% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -6.67% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -6.26% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r** (±0.00%): -5.33% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -8.43% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.00%): -7.85% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -4.25% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -4.20% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r** (±0.00%): -3.48% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.00%): -3.07% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.00%): -5.90% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.04% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -6.41% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±0.00%): -5.81% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): -3.16% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.00%): -10.38% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.00%): -8.23% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): -8.58% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): -8.19% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.00%): -3.97% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): -6.89% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.00%): -6.41% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **505.mcf_r**: 4.37% total swing
  - Best (±0.00%): 4.97% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): 0.60% (GVNPRE-simpl_1-pre_0-[])
* **508.namd_r**: 3.91% total swing
  - Best (±0.00%): -8.19% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -12.09% (GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: 4.53% total swing
  - Best (±0.00%): -2.63% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -7.16% (NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r**: 3.17% total swing
  - Best (±0.00%): -2.16% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -5.33% (NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s**: 3.91% total swing
  - Best (±0.00%): 0.75% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -3.16% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -4.32%
* **NewGVN-simpl_1-pre_0-[opt]**: -4.60%
