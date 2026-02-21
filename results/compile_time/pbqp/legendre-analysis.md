# compile_time Analysis (pbqp regalloc): legendre
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -4.62% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -3.72% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -3.19% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.00%): -3.79% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.00%): -3.39% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -8.92% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -4.04% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.91% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -3.90% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -3.71% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -3.93% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -3.08% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.00%): -3.73% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.34% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): -6.92% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): -6.83% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -4.01% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.00%): -3.06% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 6.35% total swing
  - Best (±0.00%): -2.57% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -8.92% (GVNPRE-simpl_1-pre_0-[])
* **625.x264_s**: 3.22% total swing
  - Best (±0.00%): -0.79% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -4.01% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -2.29%
* **NewGVN-simpl_1-pre_0-[opt]**: -2.74%
