# compile_time Analysis (fast regalloc): sobolev.inesc-id.pt
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r** (±0.00%): -3.85% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r** (±0.00%): -3.84% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r** (±0.00%): -3.22% (Variant: GVNPRE-simpl_1-pre_0-[])
* **505.mcf_r** (±0.00%): -3.14% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **508.namd_r** (±0.00%): -8.42% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r** (±0.00%): -3.37% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.00%): -3.72% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -3.93% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r** (±0.00%): -3.65% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.00%): -3.04% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -4.09% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r** (±0.00%): -3.95% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s** (±0.00%): -4.25% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.00%): -3.48% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 5.05% total swing
  - Best (±0.00%): -3.37% (NewGVN-simpl_1-pre_0-[opt])
  - Worst (±0.00%): -8.42% (GVNPRE-simpl_1-pre_0-[])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -2.50%
* **NewGVN-simpl_1-pre_0-[opt]**: -2.05%
