# exec_time Analysis (fast regalloc): sobolev.inesc-id.pt
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **544.nab_r** (±0.00%): 22.61% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **602.gcc_s** (±0.00%): -3.23% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **544.nab_r**: 22.88% total swing
  - Best (±0.00%): 22.61% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -0.27% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 1.00%
* **NewGVN-simpl_1-pre_0-[opt]**: 0.09%
