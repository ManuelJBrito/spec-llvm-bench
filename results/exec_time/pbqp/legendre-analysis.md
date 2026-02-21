# exec_time Analysis (pbqp regalloc): legendre
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **544.nab_r** (±0.10%): 15.75% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **600.perlbench_s** (±0.49%): -3.13% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **500.perlbench_r**: 3.20% total swing
  - Best (±0.13%): 1.30% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.25%): -1.90% (NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r**: 3.22% total swing
  - Best (±0.18%): 0.79% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.11%): -2.43% (GVNPRE-simpl_1-pre_0-[])
* **544.nab_r**: 15.90% total swing
  - Best (±0.10%): 15.75% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.05%): -0.16% (NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s**: 3.45% total swing
  - Best (±0.46%): 0.32% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.49%): -3.13% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 0.14%
* **NewGVN-simpl_1-pre_0-[opt]**: -0.41%
