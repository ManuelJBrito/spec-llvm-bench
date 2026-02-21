# compile_time Analysis (greedy regalloc): deucalion
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -4.63% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -3.49% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -4.05% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.34% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.00%): -5.76% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -10.55% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -3.62% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **511.povray_r** (±0.00%): -3.38% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): -15.36% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): -13.27% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -6.09% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r** (±0.00%): -5.20% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.69% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.02% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.00%): -3.96% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **541.leela_r** (±0.00%): -3.10% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -4.42% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -4.42% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.65% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.24% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -4.00% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s** (±0.00%): -5.41% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s** (±0.00%): -3.83% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s** (±0.00%): -3.08% (Variant: GVNPRE-simpl_1-pre_0-[])
* **657.xz_s** (±0.00%): -3.27% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 6.93% total swing
  - Best (±0.00%): -3.62% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -10.55% (GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s**: 3.64% total swing
  - Best (±0.00%): 1.31% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -2.33% (NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s**: 3.20% total swing
  - Best (±0.00%): 0.12% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -3.08% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -3.24%
* **NewGVN-simpl_1-pre_0-[opt]**: -3.39%
