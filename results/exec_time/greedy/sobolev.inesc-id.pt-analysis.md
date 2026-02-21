# exec_time Analysis (greedy regalloc): sobolev.inesc-id.pt
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **544.nab_r** (±0.02%): 25.41% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **600.perlbench_s** (±0.24%): -3.28% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **500.perlbench_r**: 3.83% total swing
  - Best (±0.22%): 0.96% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.68%): -2.87% (NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r**: 25.17% total swing
  - Best (±0.02%): 25.41% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.02%): 0.24% (NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s**: 3.98% total swing
  - Best (±0.26%): 0.71% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.24%): -3.28% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 1.06%
* **NewGVN-simpl_1-pre_0-[opt]**: -0.24%
