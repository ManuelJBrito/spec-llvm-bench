# exec_time Analysis (greedy regalloc): amd1
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **500.perlbench_r** (±0.23%): 6.69% (Variant: GVNPRE-simpl_1-pre_0-[])
* **500.perlbench_r** (±0.66%): 5.31% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.09%): 3.64% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.04%): 3.48% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.21%): 11.64% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.07%): 11.37% (Variant: GVNPRE-simpl_1-pre_0-[])
* **510.parest_r** (±0.53%): 25.43% (Variant: GVNPRE-simpl_1-pre_0-[])
* **510.parest_r** (±0.16%): 24.58% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.25%): 13.99% (Variant: GVNPRE-simpl_1-pre_0-[])
* **511.povray_r** (±0.36%): 13.70% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±2.14%): 19.24% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.17%): 17.80% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.09%): 3.03% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.20%): 10.66% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.04%): 10.30% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.02%): 4.88% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.86%): 30.66% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±1.03%): 28.12% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.06%): 6.44% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.38%): 4.90% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.22%): 5.00% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.32%): 4.92% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.36%): 6.85% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.20%): 6.60% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±1.41%): 4.35% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±1.17%): 3.96% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.50%): 11.46% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±1.41%): 10.56% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s** (±0.65%): 4.68% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.11%): 3.34% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.16%): 3.31% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
_No significant losers._

## Variant Swings (> 3% difference among variants)
* **523.xalancbmk_r**: 3.46% total swing
  - Best (±0.86%): 2.45% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±1.59%): -1.01% (NewGVN-simpl_1-pre_0-[opt])
* **623.xalancbmk_s**: 3.10% total swing
  - Best (±1.28%): 1.30% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±1.20%): -1.81% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 7.04%
* **NewGVN-simpl_1-pre_0-[opt]**: 6.47%
