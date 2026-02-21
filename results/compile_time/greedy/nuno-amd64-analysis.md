# compile_time Analysis (greedy regalloc): nuno-amd64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **505.mcf_r** (±0.00%): 4.06% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.00%): 4.00% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): 5.76% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **508.namd_r** (±0.00%): -5.95% (Variant: GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r** (±0.00%): -11.89% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **531.deepsjeng_r** (±0.00%): -3.24% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.00%): -5.53% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 4.11% total swing
  - Best (±0.00%): -1.84% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -5.95% (GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: 17.65% total swing
  - Best (±0.00%): 5.76% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -11.89% (NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s**: 4.79% total swing
  - Best (±0.00%): -0.73% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -5.53% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -0.34%
* **NewGVN-simpl_1-pre_0-[opt]**: -1.79%
