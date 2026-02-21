# compile_time Analysis (greedy regalloc): legendre
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **525.x264_r** (±0.00%): 5.12% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.00%): 6.69% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s** (±0.00%): 4.75% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s** (±0.00%): 4.16% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.00%): 7.53% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.00%): 4.81% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -4.07% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.50% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -6.69% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -5.06% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.00%): -4.90% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.00%): -4.10% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -3.25% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -4.10% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -3.13% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.00%): -3.75% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.00%): -4.00% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): -3.01% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -3.22% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **500.perlbench_r**: 5.00% total swing
  - Best (±0.00%): 0.93% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -4.07% (NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r**: 3.02% total swing
  - Best (±0.00%): 0.07% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -2.95% (GVNPRE-simpl_1-pre_0-[])
* **625.x264_s**: 4.70% total swing
  - Best (±0.00%): 1.48% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -3.22% (NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s**: 5.07% total swing
  - Best (±0.00%): 6.69% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): 1.62% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -0.65%
* **NewGVN-simpl_1-pre_0-[opt]**: -1.36%
