# compile_time Analysis (greedy regalloc): sobolev.inesc-id.pt
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -5.41% (Variant: GVNPRE-simpl_1-pre_0-[])
* **500.perlbench_r** (±0.00%): -4.77% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.15% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -8.38% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -7.46% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -5.88% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.87% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -3.34% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -5.99% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -4.66% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -5.98% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -4.82% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.00%): -3.13% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.45% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.09% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -3.36% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -3.13% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.00%): -3.05% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.00%): -5.20% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -4.23% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 5.83% total swing
  - Best (±0.00%): -2.55% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -8.38% (GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: 4.03% total swing
  - Best (±0.00%): 1.06% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -2.97% (GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s**: 3.29% total swing
  - Best (±0.00%): -1.91% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -5.20% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -2.93%
* **NewGVN-simpl_1-pre_0-[opt]**: -2.57%
