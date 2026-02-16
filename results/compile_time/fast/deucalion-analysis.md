# compile_time Analysis (fast regalloc): deucalion
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **508.namd_r** (±0.00%): 7.08% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.00%): 5.80% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.00%): 4.11% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.00%): 3.60% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **519.lbm_r** (±0.00%): -5.25% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 7.30% total swing
  - Best (±0.00%): 7.08% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -0.22% (GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: 5.87% total swing
  - Best (±0.00%): 0.62% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -5.25% (NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s**: 3.34% total swing
  - Best (±0.00%): 5.80% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): 2.45% (NewGVN-simpl_1-pre_0-[opt])
