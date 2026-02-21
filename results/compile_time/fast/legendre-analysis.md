# compile_time Analysis (fast regalloc): legendre
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **605.mcf_s** (±0.00%): 5.72% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.00%): 4.71% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -5.00% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -4.24% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -3.86% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.40% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.00%): -3.55% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -5.43% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.00%): -3.63% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -4.42% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -5.71% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -4.73% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.50% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.07% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.00%): -4.15% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.00%): -4.52% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.00%): -3.76% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): -3.76% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 3.19% total swing
  - Best (±0.00%): -2.24% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -5.43% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -2.04%
* **NewGVN-simpl_1-pre_0-[opt]**: -2.54%
