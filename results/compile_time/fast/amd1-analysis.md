# compile_time Analysis (fast regalloc): amd1
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **505.mcf_r** (±0.00%): 3.13% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -5.63% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -4.10% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -4.47% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.64% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -9.18% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -4.26% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.00%): -3.84% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): -3.94% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): -3.43% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -4.04% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.51% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.00%): -4.24% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -3.29% (Variant: GVNPRE-simpl_1-pre_0-[])
* **541.leela_r** (±0.00%): -3.30% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -4.80% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -3.58% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.00%): -5.31% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.77% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -4.22% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±0.00%): -3.20% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.00%): -11.55% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.00%): -10.89% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **505.mcf_r**: 5.04% total swing
  - Best (±0.00%): 3.13% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -1.91% (GVNPRE-simpl_1-pre_0-[])
* **508.namd_r**: 4.92% total swing
  - Best (±0.00%): -4.26% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -9.18% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -2.96%
* **NewGVN-simpl_1-pre_0-[opt]**: -3.25%
