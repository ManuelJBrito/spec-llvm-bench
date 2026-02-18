# exec_time Analysis (greedy regalloc): nuno-amd64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **500.perlbench_r** (±0.97%): 7.17% (Variant: GVNPRE-simpl_1-pre_0-[])
* **500.perlbench_r** (±1.57%): 5.67% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.47%): 4.21% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.55%): 4.74% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±1.22%): 4.33% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): 9.82% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.41%): 9.79% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **510.parest_r** (±0.05%): 28.57% (Variant: GVNPRE-simpl_1-pre_0-[])
* **510.parest_r** (±1.16%): 19.69% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.85%): 18.23% (Variant: GVNPRE-simpl_1-pre_0-[])
* **511.povray_r** (±0.60%): 18.01% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.20%): 21.78% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.07%): 21.78% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **523.xalancbmk_r** (±0.41%): 4.77% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.56%): 12.03% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.39%): 11.12% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r** (±0.26%): 4.02% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.14%): 3.07% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.45%): 25.01% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.25%): 24.85% (Variant: GVNPRE-simpl_1-pre_0-[])
* **541.leela_r** (±0.09%): 4.18% (Variant: GVNPRE-simpl_1-pre_0-[])
* **541.leela_r** (±0.07%): 3.69% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.05%): 25.93% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.21%): 24.77% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.45%): 6.79% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r** (±3.10%): 3.23% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.87%): 6.58% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±2.61%): 5.10% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±0.13%): 5.67% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.19%): 4.12% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.30%): 4.94% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.53%): 4.56% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.24%): 15.16% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.35%): 14.65% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s** (±4.81%): 4.90% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.71%): 4.20% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.63%): 3.12% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s** (±0.22%): 3.67% (Variant: GVNPRE-simpl_1-pre_0-[])
* **641.leela_s** (±0.12%): 3.46% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.21%): 5.16% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
_No significant losers._

## Variant Swings (> 3% difference among variants)
* **510.parest_r**: 8.88% total swing
  - Best (±0.05%): 28.57% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±1.16%): 19.69% (NewGVN-simpl_1-pre_0-[opt])
* **523.xalancbmk_r**: 3.12% total swing
  - Best (±0.41%): 4.77% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.84%): 1.65% (NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r**: 3.56% total swing
  - Best (±0.45%): 6.79% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±3.10%): 3.23% (NewGVN-simpl_1-pre_0-[opt])
* **623.xalancbmk_s**: 3.25% total swing
  - Best (±1.45%): 2.92% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±2.39%): -0.32% (NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s**: 5.00% total swing
  - Best (±0.21%): 5.16% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±1.84%): 0.17% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 9.08%
* **NewGVN-simpl_1-pre_0-[opt]**: 7.60%
