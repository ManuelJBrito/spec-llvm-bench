# compile_time Analysis (pbqp regalloc): sobolev.inesc-id.pt
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r**: -7.88% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r**: -7.11% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r**: -3.53% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r**: -3.34% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r**: -9.04% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r**: -3.50% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r**: -7.07% (Variant: GVNPRE-simpl_1-pre_0-[])
* **525.x264_r**: -5.51% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r**: -4.06% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r**: -3.79% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r**: -5.15% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r**: -4.24% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r**: -6.67% (Variant: GVNPRE-simpl_1-pre_0-[])
* **544.nab_r**: -5.03% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s**: -4.49% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s**: -4.24% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s**: -3.43% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s**: -3.37% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **625.x264_s**: -5.49% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s**: -4.33% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s**: -3.51% (Variant: GVNPRE-simpl_1-pre_0-[])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 5.55% total swing
  - Best: -3.50% (NewGVN-simpl_1-pre_0-[opt])
  - Worst: -9.04% (GVNPRE-simpl_1-pre_0-[])
