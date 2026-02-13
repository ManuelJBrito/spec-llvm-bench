# compile_time Analysis (greedy regalloc): ns3978931
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
_No significant winners._

## Losers (< -3%)
* **500.perlbench_r**: -5.37% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **500.perlbench_r**: -4.62% (Variant: GVNPRE-simpl_1-pre_0-[])
* **502.gcc_r**: -4.28% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **502.gcc_r**: -3.21% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r**: -11.53% (Variant: GVNPRE-simpl_1-pre_0-[])
* **508.namd_r**: -6.43% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r**: -3.56% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **525.x264_r**: -3.50% (Variant: GVNPRE-simpl_1-pre_0-[])
* **526.blender_r**: -3.85% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **526.blender_r**: -3.23% (Variant: GVNPRE-simpl_1-pre_0-[])
* **531.deepsjeng_r**: -3.60% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r**: -3.37% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **541.leela_r**: -3.55% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **544.nab_r**: -4.85% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s**: -5.83% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **600.perlbench_s**: -4.17% (Variant: GVNPRE-simpl_1-pre_0-[])
* **602.gcc_s**: -4.29% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s**: -3.35% (Variant: GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s**: -4.31% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s**: -4.38% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **619.lbm_s**: -3.71% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s**: -4.34% (Variant: GVNPRE-simpl_1-pre_0-[])
* **625.x264_s**: -3.76% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s**: -3.56% (Variant: GVNPRE-simpl_1-pre_0-[])
* **631.deepsjeng_s**: -3.29% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **508.namd_r**: 5.10% total swing
  - Best: -6.43% (NewGVN-simpl_1-pre_0-[opt])
  - Worst: -11.53% (GVNPRE-simpl_1-pre_0-[])
* **605.mcf_s**: 3.15% total swing
  - Best: -1.16% (NewGVN-simpl_1-pre_0-[opt])
  - Worst: -4.31% (GVNPRE-simpl_1-pre_0-[])
