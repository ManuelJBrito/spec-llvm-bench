# exec_time Analysis (pbqp regalloc): legendre
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **500.perlbench_r**: 4.96% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r**: 4.41% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r**: 4.40% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **510.parest_r**: 14.12% (Variant: GVNPRE-simpl_1-pre_0-[])
* **510.parest_r**: 14.00% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r**: 5.11% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r**: 4.79% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **541.leela_r**: 4.57% (Variant: GVNPRE-simpl_1-pre_0-[])
* **541.leela_r**: 3.54% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r**: 5.18% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r**: 3.73% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r**: 3.31% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s**: 3.92% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s**: 5.36% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s**: 5.07% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s**: 3.15% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s**: 4.52% (Variant: GVNPRE-simpl_1-pre_0-[])
* **641.leela_s**: 3.46% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **511.povray_r**: -4.59% (Variant: GVNPRE-simpl_1-pre_0-[])
* **511.povray_r**: -4.34% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r**: -13.65% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: -13.25% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r**: -4.88% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r**: -3.57% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r**: -12.72% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s**: -6.98% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s**: -6.85% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **500.perlbench_r**: 3.08% total swing
  - Best: 4.96% (GVNPRE-simpl_1-pre_0-[])
  - Worst: 1.88% (NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r**: 3.15% total swing
  - Best: 2.87% (NewGVN-simpl_1-pre_0-[opt])
  - Worst: -0.28% (GVNPRE-simpl_1-pre_0-[])
* **544.nab_r**: 17.90% total swing
  - Best: 5.18% (GVNPRE-simpl_1-pre_0-[])
  - Worst: -12.72% (NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s**: 3.33% total swing
  - Best: 3.92% (GVNPRE-simpl_1-pre_0-[])
  - Worst: 0.60% (NewGVN-simpl_1-pre_0-[opt])
