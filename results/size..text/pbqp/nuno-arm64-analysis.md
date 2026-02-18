# size..text Analysis (pbqp regalloc): nuno-arm64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **500.perlbench_r** (±0.00%): 4.00% (Variant: GVNPRE-simpl_1-pre_0-[])
* **500.perlbench_r** (±0.00%): 3.92% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): 4.85% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): 4.57% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.00%): 4.72% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.00%): 3.66% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): 3.65% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.00%): 3.66% (Variant: GVNPRE-simpl_1-pre_0-[])
* **511.povray_r** (±0.00%): 3.31% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): 3.27% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.00%): 3.27% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.00%): 4.05% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): 3.14% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): 3.37% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): 3.24% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r** (±0.00%): 4.93% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.00%): 4.80% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): 3.80% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): 3.66% (Variant: GVNPRE-simpl_1-pre_0-[])
* **541.leela_r** (±0.00%): 3.43% (Variant: GVNPRE-simpl_1-pre_0-[])
* **541.leela_r** (±0.00%): 3.42% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): 4.59% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): 4.07% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r** (±0.00%): 3.99% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.00%): 3.61% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.00%): 4.00% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.00%): 3.92% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±0.00%): 4.85% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): 4.57% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.00%): 4.72% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.00%): 3.66% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.00%): 3.18% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.00%): 3.18% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): 4.05% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): 3.14% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.00%): 4.93% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.00%): 4.80% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s** (±0.00%): 3.43% (Variant: GVNPRE-simpl_1-pre_0-[])
* **641.leela_s** (±0.00%): 3.42% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): 3.99% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): 3.61% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
_No significant losers._

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 3.14% total swing
  - Best (±0.00%): 3.65% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): 0.51% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 3.42%
* **NewGVN-simpl_1-pre_0-[opt]**: 3.55%
