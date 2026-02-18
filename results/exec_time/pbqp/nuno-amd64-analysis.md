# exec_time Analysis (pbqp regalloc): nuno-amd64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **502.gcc_r** (±0.18%): 3.10% (Variant: GVNPRE-simpl_1-pre_0-[])
* **510.parest_r** (±0.60%): 23.00% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **510.parest_r** (±0.19%): 20.60% (Variant: GVNPRE-simpl_1-pre_0-[])
* **523.xalancbmk_r** (±2.36%): 3.58% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.95%): 3.73% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.72%): 4.41% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.47%): 3.60% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±5.55%): 4.04% (Variant: GVNPRE-simpl_1-pre_0-[])
* **623.xalancbmk_s** (±1.40%): 5.93% (Variant: GVNPRE-simpl_1-pre_0-[])
* **623.xalancbmk_s** (±2.03%): 5.07% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **511.povray_r** (±0.88%): -18.09% (Variant: GVNPRE-simpl_1-pre_0-[])
* **511.povray_r** (±0.29%): -17.70% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.02%): -19.93% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.09%): -19.81% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r** (±6.04%): -6.09% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.39%): -20.37% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.33%): -19.62% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.22%): -52.70% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±4.37%): -49.56% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.43%): -13.07% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.13%): -13.00% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±9.17%): -3.69% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **500.perlbench_r**: 3.80% total swing
  - Best (±2.10%): 2.51% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±1.41%): -1.29% (NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r**: 7.73% total swing
  - Best (±4.55%): 1.63% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±6.04%): -6.09% (NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r**: 3.14% total swing
  - Best (±4.37%): -49.56% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.22%): -52.70% (NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r**: 5.34% total swing
  - Best (±0.95%): 3.73% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±1.70%): -1.60% (NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s**: 3.69% total swing
  - Best (±0.72%): 4.41% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±2.15%): 0.72% (NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s**: 7.73% total swing
  - Best (±5.55%): 4.04% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±9.17%): -3.69% (NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s**: 4.08% total swing
  - Best (±0.61%): 1.83% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±2.60%): -2.25% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -2.45%
* **NewGVN-simpl_1-pre_0-[opt]**: -3.82%
