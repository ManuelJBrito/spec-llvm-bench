# compile_time Analysis (fast regalloc): nuno-amd64
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -4.84% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -3.64% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -4.66% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r** (±0.00%): -3.41% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -11.27% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -4.73% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): -4.19% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -3.84% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r** (±0.00%): -3.62% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r** (±0.00%): -3.65% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r** (±0.00%): -4.35% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **557.xz_r** (±0.00%): -3.14% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -5.61% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -3.23% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s** (±0.00%): -5.02% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±0.00%): -3.00% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.00%): -6.84% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s** (±0.00%): -4.49% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.00%): -6.30% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s** (±0.00%): -4.33% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s** (±0.00%): -5.20% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **641.leela_s** (±0.00%): -4.27% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 6.53% total swing
  - Best (±0.00%): -4.73% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -11.27% (GVNPRE-simpl_1-pre_0-[])
* **519.lbm_r**: 6.66% total swing
  - Best (±0.00%): 2.47% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -4.19% (GVNPRE-simpl_1-pre_0-[])
* **557.xz_r**: 3.05% total swing
  - Best (±0.00%): -0.10% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.00%): -3.14% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -2.77%
* **NewGVN-simpl_1-pre_0-[opt]**: -3.15%
