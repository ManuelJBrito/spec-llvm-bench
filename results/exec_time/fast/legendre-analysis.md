# exec_time Analysis (fast regalloc): legendre
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **511.povray_r** (±0.00%): -3.10% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.00%): -4.72% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **657.xz_s** (±0.00%): -4.11% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **631.deepsjeng_s**: 4.30% total swing
  - Best (±0.00%): -0.42% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -4.72% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -0.53%
* **NewGVN-simpl_1-pre_0-[opt]**: -0.42%
