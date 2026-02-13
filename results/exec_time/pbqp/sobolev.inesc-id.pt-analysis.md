# exec_time Analysis (pbqp regalloc): sobolev.inesc-id.pt
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **500.perlbench_r**: 5.02% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r**: 3.97% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r**: 3.88% (Variant: GVNPRE-simpl_1-pre_0-[])
* **510.parest_r**: 13.22% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **510.parest_r**: 13.10% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r**: 4.95% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r**: 4.94% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **541.leela_r**: 4.11% (Variant: GVNPRE-simpl_1-pre_0-[])
* **541.leela_r**: 3.60% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r**: 15.97% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r**: 3.76% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s**: 4.23% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s**: 5.48% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s**: 5.36% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s**: 4.02% (Variant: GVNPRE-simpl_1-pre_0-[])
* **641.leela_s**: 3.41% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **511.povray_r**: -5.06% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r**: -4.25% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: -19.17% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: -18.51% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r**: -4.02% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r**: -11.20% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s**: -9.70% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s**: -9.64% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **523.xalancbmk_r**: 3.31% total swing
  - Best: 0.93% (NewGVN-simpl_1-pre_0-[opt])
  - Worst: -2.38% (GVNPRE-simpl_1-pre_0-[])
* **544.nab_r**: 27.17% total swing
  - Best: 15.97% (GVNPRE-simpl_1-pre_0-[])
  - Worst: -11.20% (NewGVN-simpl_1-pre_0-[opt])
