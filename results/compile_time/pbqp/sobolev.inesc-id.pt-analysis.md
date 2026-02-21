# compile_time Analysis (pbqp regalloc): sobolev.inesc-id.pt
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -12.19% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -11.39% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -3.45% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.26% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -8.15% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -5.21% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -3.68% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.55% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -3.29% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -3.59% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -6.07% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -4.43% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.11% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.00%): -3.86% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -5.23% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): -4.08% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.00%): -3.36% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 5.50% total swing
  - Best (±0.00%): -2.65% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -8.15% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -3.03%
* **NewGVN-simpl_1-pre_0-[opt]**: -2.67%
