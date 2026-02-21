# exec_time Analysis (fast regalloc): nuno-amd64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **510.parest_r** (±0.00%): 3.33% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s** (±0.00%): 4.28% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -4.27% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -3.30% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.00%): -9.90% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.00%): -9.78% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r** (±0.00%): -6.15% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r** (±0.00%): -5.52% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -14.47% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r** (±0.00%): -10.02% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): -3.73% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): -4.29% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.00%): -3.68% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **544.nab_r**: 14.51% total swing
  - Best (±0.00%): 0.05% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -14.47% (GVNPRE-simpl_1-pre_0-[])
* **557.xz_r**: 8.11% total swing
  - Best (±0.00%): -1.91% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -10.02% (GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s**: 3.51% total swing
  - Best (±0.00%): -0.22% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -3.73% (NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s**: 3.58% total swing
  - Best (±0.00%): 4.28% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): 0.70% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -2.15%
* **NewGVN-simpl_1-pre_0-[opt]**: -1.50%
