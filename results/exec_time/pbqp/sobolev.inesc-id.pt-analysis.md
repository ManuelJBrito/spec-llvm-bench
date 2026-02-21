# exec_time Analysis (pbqp regalloc): sobolev.inesc-id.pt
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **544.nab_r** (±0.03%): 24.49% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **523.xalancbmk_r** (±2.06%): -3.75% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±0.68%): -3.50% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **523.xalancbmk_r**: 3.35% total swing
  - Best (±0.26%): -0.39% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±2.06%): -3.75% (GVNPRE-simpl_1-pre_0-[])
* **544.nab_r**: 24.42% total swing
  - Best (±0.03%): 24.49% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.16%): 0.07% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 0.30%
* **NewGVN-simpl_1-pre_0-[opt]**: -0.28%
