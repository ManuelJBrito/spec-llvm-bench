# exec_time Analysis (pbqp regalloc): amd1
**Threshold:** ±3.0% change vs NoGVN baseline

## Winners (> +3%)
* **510.parest_r** (±0.28%): 25.42% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **510.parest_r** (±0.29%): 23.49% (Variant: GVNPRE-simpl_1-pre_0-[])
* **557.xz_r** (±0.13%): 3.50% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.07%): 4.14% (Variant: GVNPRE-simpl_1-pre_0-[])
* **600.perlbench_s** (±0.10%): 3.61% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **602.gcc_s** (±0.25%): 4.60% (Variant: GVNPRE-simpl_1-pre_0-[])
* **620.omnetpp_s** (±1.63%): 3.74% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s** (±0.04%): 3.98% (Variant: GVNPRE-simpl_1-pre_0-[])

## Losers (< -3%)
* **511.povray_r** (±0.21%): -10.69% (Variant: GVNPRE-simpl_1-pre_0-[])
* **511.povray_r** (±0.23%): -10.44% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.13%): -17.95% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **519.lbm_r** (±0.28%): -17.79% (Variant: GVNPRE-simpl_1-pre_0-[])
* **538.imagick_r** (±0.85%): -24.11% (Variant: NewGVN-simpl_1-pre_0-[opt])
* **538.imagick_r** (±0.97%): -23.88% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±1.40%): -12.70% (Variant: GVNPRE-simpl_1-pre_0-[])
* **619.lbm_s** (±0.55%): -12.35% (Variant: NewGVN-simpl_1-pre_0-[opt])

## Variant Swings (> 3% difference among variants)
* **531.deepsjeng_r**: 5.07% total swing
  - Best (±0.12%): 2.80% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.02%): -2.27% (NewGVN-simpl_1-pre_0-[opt])
* **631.deepsjeng_s**: 3.11% total swing
  - Best (±0.04%): 3.98% (GVNPRE-simpl_1-pre_0-[])
  - Worst (±0.23%): 0.87% (NewGVN-simpl_1-pre_0-[opt])

## Average Speedups
* **GVNPRE-simpl_1-pre_0-[]**: -0.12%
* **NewGVN-simpl_1-pre_0-[opt]**: -0.60%
