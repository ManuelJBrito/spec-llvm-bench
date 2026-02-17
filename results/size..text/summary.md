# Code Size (.text) Results Summary

Comparison of **GVNPRE** (`GVNPRE-simpl_1-pre_0-[]`) and **NewGVN** (`NewGVN-simpl_1-pre_0-[opt]`) against a **NoGVN baseline** on SPEC CPU 2017. Winners: > +3%; losers: < -3%. Positive = smaller code. All measurements ±0.00% deviation (deterministic).

**Hosts:** ns3978931, deucalion, legendre, nuno-amd64, nuno-arm64, sobolev
**Register allocators:** fast, greedy, pbqp

---

## Average Size Reductions by Register Allocator

Mean size reduction (%) across all benchmarks per variant and host.

### Greedy

| Host | GVNPRE | NewGVN |
|------|--------|--------|
| sobolev | +7.62% | +7.89% |
| legendre | +7.62% | +7.89% |
| ns3978931 | +7.62% | +7.87% |
| nuno-amd64 | +7.61% | +7.87% |
| deucalion | +4.86% | +4.95% |
| nuno-arm64 | +4.82% | +4.92% |

### PBQP

| Host | GVNPRE | NewGVN |
|------|--------|--------|
| sobolev | +3.49% | +3.79% |
| legendre | +3.49% | +3.79% |
| ns3978931 | +3.48% | +3.78% |
| nuno-amd64 | +3.48% | +3.77% |
| deucalion | +3.42% | +3.55% |
| nuno-arm64 | +3.42% | +3.55% |

### Fast

| Host | GVNPRE | NewGVN |
|------|--------|--------|
| nuno-arm64 | -25.20% | -24.63% |
| deucalion | -25.25% | -24.67% |
| ns3978931 | -39.93% | -38.86% |
| nuno-amd64 | -39.95% | -38.89% |
| legendre | -40.02% | -38.95% |
| sobolev | -40.02% | -38.95% |

---

## 1. GVNPRE vs NewGVN

NewGVN produces smaller code than GVNPRE across all allocators and hosts. The difference is consistent but small.

### Greedy

NewGVN leads by ~0.1-0.3% on average. The largest per-benchmark differences:

| Benchmark | Host | GVNPRE | NewGVN | Delta |
|-----------|------|--------|--------|-------|
| 508.namd_r | nuno-arm64 | +3.37% | +6.67% | 3.30% |
| 508.namd_r | deucalion | +3.37% | +6.66% | 3.30% |
| 505.mcf_r | nuno-amd64 | +12.23% | +13.86% | 1.63% |
| 508.namd_r | sobolev | +8.95% | +10.47% | 1.52% |
| 544.nab_r | nuno-arm64 | +5.48% | +5.96% | 0.48% |

508.namd_r is the only benchmark with > 3% variant swing on any host (greedy and PBQP).

### PBQP

NewGVN leads by ~0.1-0.3% on average. 505.mcf_r shows the largest per-benchmark delta: +4.64% (GVNPRE) vs +6.54% (NewGVN) on x86-64 hosts.

### Fast

NewGVN produces less size regression than GVNPRE by ~0.6-1.1%. The largest per-benchmark differences:

| Benchmark | Host | GVNPRE | NewGVN | Delta |
|-----------|------|--------|--------|-------|
| 508.namd_r | nuno-arm64 | -36.87% | -30.03% | 6.85% |
| 508.namd_r | deucalion | -36.86% | -30.02% | 6.84% |
| 508.namd_r | sobolev | -38.74% | -33.83% | 4.91% |
| 505.mcf_r | nuno-amd64 | -57.41% | -53.30% | 4.11% |

---

## 2. GVN Across Architectures

Two architecture groups emerge with near-identical numbers within each group:
- **ARM64**: nuno-arm64, deucalion
- **x86-64**: nuno-amd64, sobolev, legendre, ns3978931

### Greedy

Best variant per benchmark, ARM64 vs x86-64:

| Benchmark | ARM64 | x86-64 |
|-----------|-------|--------|
| 505.mcf_r | +8.68% | +13.86% |
| 510.parest_r | — | +11.02% |
| 508.namd_r | +6.67% | +10.47% |
| 538.imagick_r | +5.34% | +9.62% |
| 519.lbm_r | +3.65% | +9.24% |
| 511.povray_r | +5.13% | +9.17% |
| 544.nab_r | +5.96% | +9.32% |
| 541.leela_r | +5.40% | +9.21% |
| 557.xz_r | +6.20% | +8.86% |
| 526.blender_r | +4.83% | +7.83% |
| 502.gcc_r | +3.14% | +7.77% |
| 500.perlbench_r | +5.02% | +8.19% |
| 531.deepsjeng_r | +5.16% | +7.12% |
| 520.omnetpp_r | +3.59% | +7.22% |
| 525.x264_r | +5.65% | — |
| 523.xalancbmk_r | +4.38% | — |

x86-64 size reductions are 1.5-2x larger than ARM64 on the same benchmarks. Zero losers on any host.

### PBQP

| Benchmark | ARM64 | x86-64 |
|-----------|-------|--------|
| 502.gcc_r | +4.85% | +7.09% |
| 510.parest_r | — | +7.36% |
| 500.perlbench_r | +4.00% | +6.68% |
| 505.mcf_r | +4.72% | +6.54% |
| 538.imagick_r | +3.80% | +5.67% |
| 541.leela_r | +3.43% | +5.67% |
| 557.xz_r | +3.99% | +5.56% |
| 531.deepsjeng_r | +4.93% | +5.45% |
| 544.nab_r | +4.59% | +4.98% |
| 520.omnetpp_r | +3.59% | +4.73% |
| 526.blender_r | +3.37% | +4.52% |
| 519.lbm_r | +3.27% | — |
| 511.povray_r | +3.66% | — |
| 525.x264_r | +4.05% | — |
| 508.namd_r | +3.65% | — |

Zero losers on any host.

### Fast

| Benchmark | ARM64 | x86-64 |
|-----------|-------|--------|
| 505.mcf_r | -37.15% | -57.41% |
| 510.parest_r | — | -44.93% |
| 538.imagick_r | -27.34% | -44.84% |
| 500.perlbench_r | -25.95% | -42.96% |
| 531.deepsjeng_r | -28.24% | -42.60% |
| 557.xz_r | -30.65% | -42.05% |
| 544.nab_r | -29.49% | -41.23% |
| 502.gcc_r | -19.98% | -41.50% |
| 541.leela_r | -25.68% | -39.85% |
| 508.namd_r | -36.87% | -38.74% |
| 526.blender_r | -23.25% | -36.93% |
| 511.povray_r | -24.04% | -36.02% |
| 520.omnetpp_r | -16.54% | -33.51% |
| 525.x264_r | -24.06% | — |
| 523.xalancbmk_r | -19.87% | — |
| 519.lbm_r | -18.21% | -19.24% |

x86-64 size regressions are 1.0-2.1x larger than ARM64. Zero winners on any host.

---

## 3. GVN Across Architectures Across Register Allocators

Best GVN size reduction (either variant) per benchmark, ARM64 vs x86-64:

| Benchmark | ARM64 greedy | ARM64 pbqp | ARM64 fast | x86-64 greedy | x86-64 pbqp | x86-64 fast |
|-----------|-------------|------------|------------|---------------|-------------|-------------|
| 500.perlbench_r | +5.02% | +4.00% | -25.85% | +8.19% | +6.68% | -42.96% |
| 502.gcc_r | +3.14% | +4.85% | -19.69% | +7.77% | +7.09% | -41.36% |
| 505.mcf_r | +8.68% | +4.72% | -35.15% | +13.86% | +6.54% | -53.30% |
| 508.namd_r | +6.67% | +3.65% | -30.03% | +10.47% | — | -33.83% |
| 519.lbm_r | +3.65% | +3.27% | -18.21% | +9.24% | — | -19.24% |
| 520.omnetpp_r | +3.59% | +3.59% | -16.06% | +7.22% | +4.73% | -33.22% |
| 526.blender_r | +4.83% | +3.37% | -23.19% | +7.83% | +4.52% | -36.66% |
| 531.deepsjeng_r | +5.16% | +4.93% | -27.50% | +7.12% | +5.45% | -40.89% |
| 538.imagick_r | +5.34% | +3.80% | -27.03% | +9.62% | +5.67% | -44.11% |
| 541.leela_r | +5.40% | +3.43% | -24.91% | +9.21% | +5.67% | -38.62% |
| 544.nab_r | +5.96% | +4.59% | -28.31% | +9.32% | +4.98% | -39.72% |
| 557.xz_r | +6.20% | +3.99% | -29.87% | +8.86% | +5.56% | -40.96% |

### Host-level summary

| Host | Greedy | PBQP | Fast |
|------|--------|------|------|
| nuno-arm64 | All winners (+3–9%) | All winners (+3–5%) | All losers (-16 to -37%) |
| deucalion | All winners (+3–9%) | All winners (+3–5%) | All losers (-17 to -37%) |
| nuno-amd64 | All winners (+7–14%) | All winners (+4–7%) | All losers (-19 to -57%) |
| sobolev | All winners (+7–14%) | All winners (+4–7%) | All losers (-19 to -57%) |
| legendre | All winners (+7–14%) | All winners (+4–7%) | All losers (-19 to -57%) |
| ns3978931 | All winners (+7–14%) | All winners (+4–7%) | All losers (-19 to -57%) |
