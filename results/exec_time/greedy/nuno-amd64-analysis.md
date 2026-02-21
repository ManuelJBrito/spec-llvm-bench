# exec_time Analysis (greedy regalloc): nuno-amd64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **510.parest_r** (±0.05%): 4.19% (Variant: GVNPRE-simpl_1-pre_0-[])
* **523.xalancbmk_r** (±0.41%): 7.54% (Variant: GVNPRE-simpl_1-pre_0-[])
* **523.xalancbmk_r** (±0.84%): 4.51% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s** (±4.81%): 5.82% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±1.35%): 3.77% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **510.parest_r** (±1.16%): -7.73% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r** (±1.82%): -3.02% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±1.84%): -3.93% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **510.parest_r**: 11.92% total swing
  - Best (±0.05%): 4.19% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±1.16%): -7.73% (NewGVN-simpl_1-pre_0-[opt])
* **523.xalancbmk_r**: 3.03% total swing
  - Best (±0.41%): 7.54% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.84%): 4.51% (NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r**: 3.78% total swing
  - Best (±0.45%): 1.09% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±3.10%): -2.69% (NewGVN-simpl_1-pre_0-[opt])
* **623.xalancbmk_s**: 3.26% total swing
  - Best (±1.45%): 2.50% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±2.39%): -0.76% (NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s**: 5.20% total swing
  - Best (±0.21%): 1.27% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±1.84%): -3.93% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 1.18%
* **NewGVN-simpl_1-pre_0-[opt]**: -0.47%
