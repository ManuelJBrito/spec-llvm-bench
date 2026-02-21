# exec_time Analysis (pbqp regalloc): amd1
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **523.xalancbmk_r** (±0.69%): 5.08% (Variant: GVNPRE-simpl_1-pre_0-[])
* **523.xalancbmk_r** (±0.95%): 4.94% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±0.25%): 3.76% (Variant: GVNPRE-simpl_1-pre_0-[])
* **623.xalancbmk_s** (±0.30%): 4.68% (Variant: GVNPRE-simpl_1-pre_0-[])
* **623.xalancbmk_s** (±0.36%): 4.56% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Losers (< -3%)
* **531.deepsjeng_r** (±0.02%): -5.94% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **531.deepsjeng_r**: 5.25% total swing
  - Best (±0.12%): -0.69% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.02%): -5.94% (NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s**: 3.18% total swing
  - Best (±0.04%): 1.71% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.23%): -1.47% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 0.40%
* **NewGVN-simpl_1-pre_0-[opt]**: -0.07%
