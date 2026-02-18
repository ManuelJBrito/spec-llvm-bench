# exec_time Analysis (fast regalloc): nuno-amd64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -30.50% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -29.29% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -20.32% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -19.68% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.00%): -25.12% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.00%): -24.99% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -27.80% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -27.17% (Variant: GVNPRE-simpl_1-pre_0-[])
* **510.parest_r** (±0.00%): -129.48% (Variant: GVNPRE-simpl_1-pre_0-[])
* **510.parest_r** (±0.00%): -127.93% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.00%): -8.36% (Variant: GVNPRE-simpl_1-pre_0-[])
* **511.povray_r** (±0.00%): -7.16% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): -6.09% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): -5.89% (Variant: GVNPRE-simpl_1-pre_0-[])
* **520.omnetpp_r** (±0.00%): -16.07% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r** (±0.00%): -15.39% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -41.05% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -39.63% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.00%): -17.69% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.00%): -15.89% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -17.22% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -16.13% (Variant: GVNPRE-simpl_1-pre_0-[])
* **541.leela_r** (±0.00%): -12.27% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **541.leela_r** (±0.00%): -12.04% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -12.74% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r** (±0.00%): -41.64% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r** (±0.00%): -31.20% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -27.40% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -27.11% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -27.85% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -27.35% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.00%): -19.50% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.00%): -15.45% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.00%): -6.29% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.00%): -4.55% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±0.00%): -9.11% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s** (±0.00%): -5.17% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.00%): -16.31% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.00%): -15.62% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s** (±0.00%): -12.74% (Variant: GVNPRE-simpl_1-pre_0-[])
* **641.leela_s** (±0.00%): -12.07% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): -21.31% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.00%): -20.60% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **544.nab_r**: 14.29% total swing
  - Best (±0.00%): 1.55% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -12.74% (GVNPRE-simpl_1-pre_0-[])
* **557.xz_r**: 10.44% total swing
  - Best (±0.00%): -31.20% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -41.64% (GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s**: 4.05% total swing
  - Best (±0.00%): -15.45% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -19.50% (NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s**: 3.94% total swing
  - Best (±0.00%): -5.17% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -9.11% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -24.12%
* **NewGVN-simpl_1-pre_0-[opt]**: -23.40%
