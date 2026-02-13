# compile_time Analysis (fast regalloc): legendre
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **508.namd_r**: 3.83% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s**: 4.75% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s**: 3.72% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
_No significant losers._

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 3.00% total swing
  - Best: 3.83% (NewGVN-simpl_1-pre_0-[opt])
  - Worst: 0.83% (GVNPRE-simpl_1-pre_0-[])
