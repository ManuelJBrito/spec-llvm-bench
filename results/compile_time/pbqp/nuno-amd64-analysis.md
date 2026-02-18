# compile_time Analysis (pbqp regalloc): nuno-amd64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **505.mcf_r** (±0.00%): 5.05% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -3.95% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.36% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r** (±0.00%): -4.00% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -4.59% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.00%): -7.02% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.00%): -3.58% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -3.52% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.24% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.00%): -3.78% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -4.21% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.00%): -3.76% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -6.47% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.05% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.53% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -3.02% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.00%): -5.51% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): -3.80% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): -3.19% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **505.mcf_r**: 9.05% total swing
  - Best (±0.00%): 5.05% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -4.00% (GVNPRE-simpl_1-pre_0-[])
* **508.namd_r**: 5.36% total swing
  - Best (±0.00%): 0.77% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -4.59% (GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: 7.06% total swing
  - Best (±0.00%): 0.04% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -7.02% (NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r**: 3.82% total swing
  - Best (±0.00%): 0.04% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -3.78% (NewGVN-simpl_1-pre_0-[opt])
* **541.leela_r**: 3.72% total swing
  - Best (±0.00%): 2.74% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -0.97% (NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r**: 3.80% total swing
  - Best (±0.00%): -2.67% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -6.47% (NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s**: 6.07% total swing
  - Best (±0.00%): 0.56% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -5.51% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -1.58%
* **NewGVN-simpl_1-pre_0-[opt]**: -2.54%
