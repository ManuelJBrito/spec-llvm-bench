# exec_time Analysis (greedy regalloc): nuno-arm64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **500.perlbench_r** (±0.41%): 6.75% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.17%): 3.13% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r** (±0.11%): 5.05% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.78%): 5.61% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.50%): 6.69% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±0.43%): 7.18% (Variant: GVNPRE-simpl_1-pre_0-[])
* **623.xalancbmk_s** (±0.18%): 3.14% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.04%): 5.09% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **520.omnetpp_r** (±1.15%): -9.73% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **500.perlbench_r**: 6.20% total swing
  - Best (±0.41%): 6.75% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.22%): 0.55% (NewGVN-simpl_1-pre_0-[opt])
* **520.omnetpp_r**: 8.73% total swing
  - Best (±4.94%): -1.00% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±1.15%): -9.73% (GVNPRE-simpl_1-pre_0-[])
* **525.x264_r**: 5.15% total swing
  - Best (±0.11%): 5.05% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.05%): -0.10% (NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r**: 5.71% total swing
  - Best (±0.78%): 5.61% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.97%): -0.10% (GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s**: 5.83% total swing
  - Best (±0.50%): 6.69% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.08%): 0.86% (NewGVN-simpl_1-pre_0-[opt])
* **620.omnetpp_s**: 8.00% total swing
  - Best (±0.43%): 7.18% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±5.64%): -0.81% (NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s**: 5.15% total swing
  - Best (±0.04%): 5.09% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.05%): -0.06% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: 1.25%
* **NewGVN-simpl_1-pre_0-[opt]**: 0.74%
