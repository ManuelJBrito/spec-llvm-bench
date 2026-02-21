# compile_time Analysis (pbqp regalloc): nuno-amd64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **519.lbm_r** (±0.00%): 4.43% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.00%): 5.20% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -5.14% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -3.40% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -3.88% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.00%): -6.31% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -4.21% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -3.74% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -3.34% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.06% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.00%): -3.07% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -4.03% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.00%): -3.57% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -8.46% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -4.58% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r** (±0.00%): -3.93% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.00%): -3.08% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.00%): -5.31% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.79% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -3.58% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -3.81% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): -3.79% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): -3.18% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **505.mcf_r**: 9.25% total swing
  - Best (±0.00%): 2.94% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -6.31% (GVNPRE-simpl_1-pre_0-[])
* **508.namd_r**: 5.34% total swing
  - Best (±0.00%): 1.13% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -4.21% (GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: 6.75% total swing
  - Best (±0.00%): 4.43% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -2.32% (NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r**: 3.79% total swing
  - Best (±0.00%): 0.72% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -3.07% (NewGVN-simpl_1-pre_0-[opt])
* **541.leela_r**: 3.72% total swing
  - Best (±0.00%): 2.67% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -1.04% (NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r**: 3.87% total swing
  - Best (±0.00%): -4.58% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -8.46% (NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s**: 5.79% total swing
  - Best (±0.00%): 5.20% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -0.59% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -1.72%
* **NewGVN-simpl_1-pre_0-[opt]**: -2.67%
