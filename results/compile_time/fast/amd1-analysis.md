# compile_time Analysis (fast regalloc): amd1
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **505.mcf_r** (±0.00%): 3.43% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): 3.53% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
_No significant losers._

## Variant Swings (> 3% difference among variants)
* **505.mcf_r**: 5.02% total swing
  - Best (±0.00%): 3.43% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -1.59% (GVNPRE-simpl_1-pre_0-[])
* **508.namd_r**: 4.55% total swing
  - Best (±0.00%): 3.53% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -1.02% (GVNPRE-simpl_1-pre_0-[])
