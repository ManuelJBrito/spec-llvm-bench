# compile_time Analysis (greedy regalloc): nuno-amd64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **519.lbm_r** (±0.00%): 11.13% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -5.49% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.96% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -9.19% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -4.95% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): -5.51% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.57% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.09% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.00%): -3.02% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.00%): -3.32% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -4.17% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.00%): -5.35% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.67% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -4.06% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **605.mcf_s** (±0.00%): -3.42% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.00%): -6.20% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **500.perlbench_r**: 3.03% total swing
  - Best (±0.00%): -2.46% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -5.49% (NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r**: 4.24% total swing
  - Best (±0.00%): -4.95% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -9.19% (GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: 16.64% total swing
  - Best (±0.00%): 11.13% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -5.51% (NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s**: 4.82% total swing
  - Best (±0.00%): -1.38% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -6.20% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -1.16%
* **NewGVN-simpl_1-pre_0-[opt]**: -2.58%
