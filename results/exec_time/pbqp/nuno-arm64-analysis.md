# exec_time Analysis (pbqp regalloc): nuno-arm64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **525.x264_r** (±0.04%): 3.42% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.12%): 3.75% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
_No significant losers._

## Variant Swings (> 3% difference among variants)
* **500.perlbench_r**: 3.11% total swing
  - Best (±0.43%): 2.64% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.31%): -0.46% (NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r**: 3.88% total swing
  - Best (±0.04%): 3.42% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.08%): -0.45% (NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s**: 4.03% total swing
  - Best (±0.12%): 3.75% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.12%): -0.27% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 0.48%
* **NewGVN-simpl_1-pre_0-[opt]**: -0.24%
