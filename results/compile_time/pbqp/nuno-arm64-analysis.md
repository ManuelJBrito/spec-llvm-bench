# compile_time Analysis (pbqp regalloc): nuno-arm64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **505.mcf_r** (±0.00%): 7.55% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.00%): 3.30% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.00%): 3.15% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): 3.84% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -3.63% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -4.34% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -8.67% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -4.88% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.00%): -4.67% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -4.36% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -4.00% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -3.60% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -3.47% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.00%): -4.25% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±0.00%): -3.58% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -4.31% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): -3.94% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): -3.60% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.00%): -3.13% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **505.mcf_r**: 4.25% total swing
  - Best (±0.00%): 7.55% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): 3.30% (GVNPRE-simpl_1-pre_0-[])
* **508.namd_r**: 3.79% total swing
  - Best (±0.00%): -4.88% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -8.67% (GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: 4.28% total swing
  - Best (±0.00%): 3.15% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -1.13% (NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r**: 3.09% total swing
  - Best (±0.00%): 0.38% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -2.71% (NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s**: 3.79% total swing
  - Best (±0.00%): 3.84% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): 0.05% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -1.54%
* **NewGVN-simpl_1-pre_0-[opt]**: -1.80%
