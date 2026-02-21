# exec_time Analysis (greedy regalloc): legendre
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **510.parest_r** (±0.48%): 3.09% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.02%): 21.91% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **520.omnetpp_r** (±3.17%): -3.49% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±4.39%): -4.12% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **520.omnetpp_r**: 3.94% total swing
  - Best (±0.87%): 0.45% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±3.17%): -3.49% (GVNPRE-simpl_1-pre_0-[])
* **544.nab_r**: 21.97% total swing
  - Best (±0.02%): 21.91% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±1.11%): -0.05% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 0.75%
* **NewGVN-simpl_1-pre_0-[opt]**: -0.16%
