# compile_time Analysis (greedy regalloc): legendre
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **525.x264_r** (±0.00%): 5.57% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): 3.10% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.00%): 6.78% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s** (±0.00%): 4.79% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s** (±0.00%): 4.20% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.00%): 7.51% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.00%): 4.79% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -4.97% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.43% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.00%): -3.75% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -8.94% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -7.27% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.00%): -3.26% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.36% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -4.05% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -3.08% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.00%): -4.57% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.60% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): -4.93% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): -3.94% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -3.22% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **500.perlbench_r**: 5.04% total swing
  - Best (±0.00%): 0.07% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -4.97% (NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r**: 3.01% total swing
  - Best (±0.00%): 0.18% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -2.84% (GVNPRE-simpl_1-pre_0-[])
* **625.x264_s**: 4.70% total swing
  - Best (±0.00%): 1.48% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -3.22% (NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s**: 5.07% total swing
  - Best (±0.00%): 6.78% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): 1.71% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -0.76%
* **NewGVN-simpl_1-pre_0-[opt]**: -1.47%
