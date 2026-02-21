# compile_time Analysis (greedy regalloc): amd1
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -4.90% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -4.15% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -4.42% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.35% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.00%): -3.11% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.00%): -3.08% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -10.77% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -5.70% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.00%): -3.04% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.00%): -5.17% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.00%): -5.12% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -4.08% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.46% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.00%): -4.29% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.00%): -3.78% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **541.leela_r** (±0.00%): -3.75% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -5.56% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -3.28% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -5.05% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.40% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -4.33% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±0.00%): -3.38% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): -5.09% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.00%): -3.72% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.00%): -3.06% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): -5.16% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): -4.58% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.00%): -3.63% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.00%): -3.36% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 5.06% total swing
  - Best (±0.00%): -5.70% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -10.77% (GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s**: 3.18% total swing
  - Best (±0.00%): -1.92% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -5.09% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -3.08%
* **NewGVN-simpl_1-pre_0-[opt]**: -3.16%
