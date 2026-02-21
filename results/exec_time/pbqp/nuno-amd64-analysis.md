# exec_time Analysis (pbqp regalloc): nuno-amd64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **510.parest_r** (±0.60%): 3.97% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **623.xalancbmk_s** (±1.40%): 6.34% (Variant: GVNPRE-simpl_1-pre_0-[])
* **623.xalancbmk_s** (±2.03%): 5.48% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **500.perlbench_r** (±1.41%): -5.19% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r** (±6.04%): -6.29% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.22%): -21.98% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±4.37%): -19.47% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r** (±1.70%): -5.64% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±2.15%): -3.24% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s** (±9.17%): -8.31% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±2.60%): -3.80% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **500.perlbench_r**: 3.94% total swing
  - Best (±2.10%): -1.24% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±1.41%): -5.19% (NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r**: 7.74% total swing
  - Best (±4.55%): 1.46% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±6.04%): -6.29% (NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r**: 5.55% total swing
  - Best (±0.95%): -0.09% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±1.70%): -5.64% (NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s**: 3.84% total swing
  - Best (±0.72%): 0.60% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±2.15%): -3.24% (NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s**: 8.08% total swing
  - Best (±5.55%): -0.24% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±9.17%): -8.31% (NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s**: 4.14% total swing
  - Best (±0.61%): 0.33% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±2.60%): -3.80% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -0.44%
* **NewGVN-simpl_1-pre_0-[opt]**: -1.79%
