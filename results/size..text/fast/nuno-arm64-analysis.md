# size..text Analysis (fast regalloc): nuno-arm64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **508.namd_r** (±0.00%): -5.15% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 5.26% total swing
  - Best (±0.00%): 0.10% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -5.15% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -0.26%
* **NewGVN-simpl_1-pre_0-[opt]**: 0.18%
