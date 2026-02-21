# compile_time Analysis (pbqp regalloc): amd1
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -4.92% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -3.38% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -4.04% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.03% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -5.61% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -3.23% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.00%): -4.10% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -3.48% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.88% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.29% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.00%): -3.39% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.00%): -3.01% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -3.90% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -3.16% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -4.46% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -3.37% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r** (±0.00%): -3.50% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.00%): -3.05% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.00%): -4.91% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.91% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -4.88% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±0.00%): -3.45% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): -5.30% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): -5.27% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.00%): -4.47% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.00%): -3.21% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
_No significant performance difference between variants for this allocator._

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -2.85%
* **NewGVN-simpl_1-pre_0-[opt]**: -3.09%
