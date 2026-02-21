# exec_time Analysis (fast regalloc): amd1
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **508.namd_r** (±0.00%): 3.49% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±0.00%): 3.21% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **602.gcc_s** (±0.00%): -3.71% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.00%): -3.66% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **520.omnetpp_r**: 3.41% total swing
  - Best (±0.00%): 2.63% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -0.79% (NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s**: 4.03% total swing
  - Best (±0.00%): 3.21% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -0.82% (GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s**: 4.55% total swing
  - Best (±0.00%): 0.90% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -3.66% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -0.02%
* **NewGVN-simpl_1-pre_0-[opt]**: -0.03%
