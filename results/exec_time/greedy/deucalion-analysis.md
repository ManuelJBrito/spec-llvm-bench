# exec_time Analysis (greedy regalloc): deucalion
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **500.perlbench_r** (±0.05%): 3.48% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.22%): 8.37% (Variant: GVNPRE-simpl_1-pre_0-[])
* **520.omnetpp_r** (±0.04%): 9.70% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.03%): 4.53% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.05%): 3.52% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s** (±0.16%): 7.80% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±0.01%): 9.94% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.03%): 4.55% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **538.imagick_r** (±0.01%): -3.63% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **500.perlbench_r**: 3.20% total swing
  - Best (±0.05%): 3.48% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.04%): 0.28% (NewGVN-simpl_1-pre_0-[opt])
* **505.mcf_r**: 10.27% total swing
  - Best (±0.22%): 8.37% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.02%): -1.89% (NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r**: 7.92% total swing
  - Best (±0.04%): 9.70% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.01%): 1.78% (GVNPRE-simpl_1-pre_0-[])
* **525.x264_r**: 5.13% total swing
  - Best (±0.03%): 4.53% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.03%): -0.61% (NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r**: 3.08% total swing
  - Best (±0.00%): -0.54% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.01%): -3.63% (NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s**: 3.23% total swing
  - Best (±0.05%): 3.52% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.01%): 0.29% (NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s**: 9.37% total swing
  - Best (±0.16%): 7.80% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.07%): -1.57% (NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s**: 7.92% total swing
  - Best (±0.01%): 9.94% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.01%): 2.03% (GVNPRE-simpl_1-pre_0-[])
* **625.x264_s**: 5.18% total swing
  - Best (±0.03%): 4.55% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.03%): -0.62% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 1.59%
* **NewGVN-simpl_1-pre_0-[opt]**: 0.58%
