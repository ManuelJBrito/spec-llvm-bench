# Execution Time Results Summary

Comparison of **GVNPRE** (`GVNPRE-simpl_1-pre_0-[]`) and **NewGVN** (`NewGVN-simpl_1-pre_0-[opt]`) against a **NoGVN baseline** on SPEC CPU 2017. Winners: > +3%; losers: < -3%.

**Hosts:** ns3978931, deucalion, legendre, nuno-amd64, nuno-arm64, sobolev
**Register allocators:** fast, greedy, pbqp

---

## Average Speedups by Register Allocator

Mean speedup (%) across all benchmarks per variant and host.

### Greedy

| Host | GVNPRE | NewGVN |
|------|--------|--------|
| nuno-arm64 | +11.10% | +10.65% |
| nuno-amd64 | +9.08% | +7.60% |
| sobolev | +8.87% | +7.74% |
| deucalion | +8.76% | +7.86% |
| legendre | +7.69% | +6.91% |
| ns3978931 | +7.04% | +6.47% |

### PBQP

| Host | GVNPRE | NewGVN |
|------|--------|--------|
| nuno-arm64 | +9.31% | +8.66% |
| deucalion | +6.70% | +6.47% |
| legendre | +1.07% | +0.45% |
| sobolev | +0.88% | +0.20% |
| ns3978931 | -0.12% | -0.60% |
| nuno-amd64 | -2.45% | -3.82% |

### Fast

| Host | GVNPRE | NewGVN |
|------|--------|--------|
| ns3978931 | -20.93% | -20.95% |
| nuno-amd64 | -24.12% | -23.40% |
| legendre | -28.64% | -28.50% |
| sobolev | -28.74% | -29.77% |
| deucalion | -42.19% | -42.50% |
| nuno-arm64 | -59.38% | -58.91% |

---

## 1. GVNPRE vs NewGVN

GVNPRE outperforms NewGVN on most benchmarks across all allocators.

### Greedy — largest variant swings

| Benchmark | Host | GVNPRE | NewGVN | Swing |
|-----------|------|--------|--------|-------|
| 544.nab_r | sobolev | +37.30% | +16.15% | 21.15% |
| 544.nab_r | legendre | +31.97% | +12.83% | 19.14% |
| 505.mcf_r | deucalion | +11.20% | +1.25% | 9.95% |
| 510.parest_r | nuno-amd64 | +28.57% | +19.69% | 8.88% |
| 500.perlbench_r | nuno-arm64 | +19.80% | +14.47% | 5.33% |
| 538.imagick_r | nuno-arm64 | +11.30% | +16.36% | 5.06% |

NewGVN beats GVNPRE on 520.omnetpp/deucalion (+8.29% vs +0.25%) and 538.imagick_r/nuno-arm64 (+16.36% vs +11.30%).

### PBQP — 544.nab_r variant sensitivity

| Host | GVNPRE | NewGVN | Swing |
|------|--------|--------|-------|
| sobolev | +15.97% | -11.20% | **27.17%** |
| legendre | +5.18% | -12.72% | 17.90% |
| nuno-amd64 | -49.56% | -52.70% | 3.14% |

### Fast — largest variant swings

| Benchmark | Host | GVNPRE | NewGVN | Swing |
|-----------|------|--------|--------|-------|
| 544.nab_r | sobolev | +11.79% | -14.29% | 26.07% |
| 557.xz_r | nuno-arm64 | -88.92% | -67.82% | 21.10% |
| 657.xz_s | nuno-arm64 | -45.86% | -35.94% | 9.92% |
| 620.omnetpp_s | nuno-arm64 | -37.12% | -46.63% | 9.51% |

544.nab_r on sobolev/fast: GVNPRE is the sole winner across all fast-allocator results (+11.79%), while NewGVN is a loser (-14.29%).

### Benchmarks with highest variant sensitivity

**544.nab_r**, **510.parest_r**, **525.x264_r/625.x264_s**, **520.omnetpp_r/620.omnetpp_s**, **500.perlbench_r/600.perlbench_s**.

---

## 2. GVN Across Architectures

Best variant per benchmark.

### Greedy

| Benchmark | ARM64 | AMD64 | deucalion | sobolev | legendre | ns3978931 |
|-----------|-------|-------|-----------|---------|----------|-----------|
| 500.perlbench_r | **+19.80%** | +7.17% | +11.07% | +9.63% | +8.33% | +6.69% |
| 502.gcc_r | **+13.59%** | +4.21% | +10.11% | +6.72% | +6.68% | +3.64% |
| 511.povray_r | **+20.22%** | +18.23% | +13.77% | +9.41% | +9.49% | +13.99% |
| 525.x264_r | **+14.64%** | — | +9.70% | — | — | +3.03% |
| 531.deepsjeng_r | **+10.39%** | +4.02% | +7.57% | +8.78% | +7.36% | +4.88% |
| 541.leela_r | **+8.54%** | +4.18% | +7.76% | +5.64% | +6.21% | — |
| 523.xalancbmk_r | **+12.77%** | +4.77% | +9.37% | — | — | — |
| 526.blender_r | +14.43% | +12.03% | +9.16% | +9.33% | +9.15% | +10.66% |
| 538.imagick_r | +16.36% | +25.01% | +20.12% | +12.76% | +14.27% | **+30.66%** |
| 519.lbm_r | +5.78% | +21.78% | +6.31% | **+22.56%** | +18.51% | +19.24% |
| 544.nab_r | +10.71% | +25.93% | +9.27% | **+37.30%** | +31.97% | +6.44% |
| 510.parest_r | — | +28.57% | — | +13.77% | +16.51% | +25.43% |

Zero losers on all hosts.

### PBQP

**nuno-arm64**: Zero losers. Gains from +3.30% (519.lbm_r) to +17.31% (538.imagick_r).

**deucalion**: Zero losers. 505.mcf_r +13.00%, 523.xalancbmk_r +13.39%, 623.xalancbmk_s +12.93%, 605.mcf_s +12.68%, 602.gcc_s +10.96%.

**x86-64 hosts** (ns3978931, legendre, sobolev, nuno-amd64) — consistent losers:

| Benchmark | nuno-amd64 | ns3978931 | legendre | sobolev |
|-----------|-----------|-----------|----------|---------|
| 544.nab_r | **-52.70%** | — | -12.72% | -11.20% |
| 538.imagick_r | -20.37% | **-24.11%** | -4.88% | -4.02% |
| 519.lbm_r | -19.93% | -17.95% | -13.65% | **-19.17%** |
| 511.povray_r | -18.09% | -10.69% | -4.59% | -5.06% |
| 619.lbm_s | -13.07% | -12.70% | -6.98% | -9.70% |

x86-64 PBQP winners: 510.parest_r (+23–25% on ns3978931/nuno-amd64), plus integer benchmarks at +3–6%.

### Fast

| Benchmark | ARM64 | AMD64 | ARM64 worse by |
|-----------|-------|-------|----------------|
| 511.povray_r | -91.62% | -8.36% | 83.26% |
| 538.imagick_r | -85.21% | -17.22% | 67.99% |
| 500.perlbench_r | -87.38% | -30.50% | 56.88% |
| 502.gcc_r | -73.89% | -20.32% | 53.57% |
| 557.xz_r | -88.92% | -41.64% | 47.28% |
| 526.blender_r | -83.29% | -41.05% | 42.24% |
| 531.deepsjeng_r | -56.24% | -17.69% | 38.55% |

All benchmarks regress on all hosts. ARM64 regressions are 2-10x larger than AMD64 for the same benchmark.

---

## 3. GVN Across Architectures Across Register Allocators

Best GVN improvement (either variant) per benchmark on nuno-arm64 vs nuno-amd64:

| Benchmark | ARM64 greedy | ARM64 pbqp | ARM64 fast | AMD64 greedy | AMD64 pbqp | AMD64 fast |
|-----------|-------------|------------|------------|-------------|------------|------------|
| 500.perlbench_r | +19.80% | +16.95% | -87.38% | +7.17% | +2.51% | -30.50% |
| 502.gcc_r | +13.59% | +12.38% | -73.89% | +4.21% | +3.10% | -20.32% |
| 508.namd_r | +13.10% | +5.82% | -58.06% | +9.82% | — | -27.80% |
| 511.povray_r | +20.22% | +9.57% | -91.62% | +18.23% | -18.09% | -8.36% |
| 519.lbm_r | +5.78% | +3.32% | -27.08% | +21.78% | -19.93% | -6.09% |
| 526.blender_r | +14.43% | +13.10% | -83.29% | +12.03% | — | -41.05% |
| 531.deepsjeng_r | +10.39% | +9.12% | -56.24% | +4.02% | — | -17.69% |
| 538.imagick_r | +16.36% | +17.31% | -85.21% | +25.01% | -20.37% | -17.22% |
| 544.nab_r | +10.71% | +6.86% | -51.24% | +25.93% | -52.70% | -12.74% |
| 557.xz_r | +12.43% | +10.36% | -88.92% | +6.79% | +3.73% | -41.64% |

### Host-level summary

| Host | Greedy | PBQP | Fast |
|------|--------|------|------|
| nuno-arm64 | All winners (+6–20%) | All winners (+3–17%) | All losers (-23 to -92%) |
| nuno-amd64 | All winners (+3–29%) | Mixed: winners (+3–23%) and losers (-13 to -53%) | All losers (-5 to -130%) |
| deucalion | All winners (+4–20%) | All winners (+4–13%) | All losers (-11 to -72%) |
| sobolev | All winners (+4–37%) | Mixed: winners (+3–16%) and losers (-4 to -19%) | All losers (-8 to -79%), 1 winner |
| legendre | All winners (+3–32%) | Mixed: winners (+3–14%) and losers (-5 to -14%) | All losers (-7 to -83%) |
| ns3978931 | All winners (+3–31%) | Mixed: winners (+4–25%) and losers (-11 to -24%) | All losers (-5 to -147%) |
