# compile_time Analysis (greedy regalloc): sobolev.inesc-id.pt
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -9.16% (Variant: GVNPRE-simpl_1-pre_0-[])
* **500.perlbench_r** (±0.00%): -8.50% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.42% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.13% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -9.89% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -3.97% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.00%): -5.56% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -4.01% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.83% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -3.30% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -5.22% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -3.90% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -5.90% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -4.74% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.00%): -3.01% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.84% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.48% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -3.15% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): -3.53% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.00%): -4.45% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -3.97% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 5.92% total swing
  - Best (±0.00%): -3.97% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -9.89% (GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: 4.02% total swing
  - Best (±0.00%): 1.35% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -2.67% (GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s**: 3.26% total swing
  - Best (±0.00%): -1.18% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -4.45% (NewGVN-simpl_1-pre_0-[opt])
