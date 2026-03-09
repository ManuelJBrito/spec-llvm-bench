# alive-red on SPEC Hot Functions

Date: 2026-03-09 (updated)

## High-Level Summary

| | Count |
|---|---|
| Total functions | 130 |
| alive-red completed (with pairs) | 43 |
| alive-red completed (no pairs) | 28 |
| alive-red failed (llvm2alive) | 32 |
| alive-red killed (SMT timeout/OOM) | 25 |
| alive-red still running | 2 |

### Three-Way Pair Comparison (71 checked functions only)

Restricted to the 71 functions where alive-red successfully parsed and analyzed the IR:

| | alive-red | NewGVN | GVN |
|---|---|---|---|
| **Total pairs** | 780 (1.9× NGVN, 1.4× GVN) | 407 | 553 |
| **Unique pairs** | 685 (87.8%) | 80 (19.7%) | 228 (41.2%) |
| Overlap with alive | — | 95 (12.2%) | 93 (11.9%) |
| GVN↔NewGVN overlap | — | 325 (79.9%) | 325 (58.8%) |
| All three | 93 | 93 | 93 |

### alive-red Coverage of GVN/NewGVN Pairs

| Category | Funcs | NewGVN pairs | GVN pairs |
|---|---|---|---|
| **Checked by alive-red** | **71** | **407 (7.9%)** | **553 (9.0%)** |
| llvm2alive failed | 32 | 4,026 (77.9%) | 4,509 (73.8%) |
| Killed (SMT timeout/OOM) | 25 | 536 (10.4%) | 770 (12.6%) |
| Still running | 2 | 202 (3.9%) | 268 (4.4%) |
| **Total not checked** | **59** | **4,764 (92.1%)** | **5,547 (91.0%)** |

`S_regmatch` alone (blocked by `captures(address_is_null)`) holds 2,745/2,809 pairs — 53% of all NewGVN pairs.

## llvm2alive Failure Breakdown

Some functions have multiple error types; total unique functions with errors = 32.

| Error | Count |
|---|---|
| `Unsupported instruction: invoke` | 12 |
| `Unsupported attribute: noalias` | 8 |
| `Unsupported attribute: captures(address_is_null)` | 6 |
| `Unsupported attribute: sret` | 5 |
| `Unsupported metadata: 8` (noalias.scope.decl) | 4 |
| `Unsupported instruction: noalias.scope.decl` | 2 |
| `Unsupported type: metadata` | 2 |
| `Function is too large` | 2 |
| `Unsupported attribute: captures(address, ret: ...)` | 1 |
| `Unsupported metadata: 1` (TBAA) | 71 ✓ |
| `Unsupported attribute: captures(address)` | 2 ✓ |

## Functions Where alive-red Found Pairs (43 functions, 780 pairs)

| Function | Bench | Alive | NGVN | GVN | Shared | A-only |
|---|---|---|---|---|---|---|
| `search` | deepsjeng | 267 | 36 | 44 | 4 | 263 |
| `qsearch` | deepsjeng | 68 | 25 | 26 | 1 | 67 |
| `gen_check_blocks` | deepsjeng | 45 | 8 | 10 | 5 | 40 |
| `lzma_mf_bt4_find` | xz | 45 | 19 | 23 | 10 | 35 |
| `gen_good_checks` | deepsjeng | 41 | 7 | 10 | 4 | 37 |
| `FastBoard::update_board_fast` | leela | 29 | 6 | 7 | 6 | 23 |
| `FastBoard::kill_neighbours` | leela | 28 | 6 | 9 | 1 | 27 |
| `eval` | deepsjeng | 22 | 0 | 2 | 0 | 22 |
| `length_update_prices` | xz | 20 | 5 | 7 | 0 | 20 |
| `gen_quiet` | deepsjeng | 18 | 9 | 12 | 2 | 16 |
| `FastBoard::update_board_eye` | leela | 18 | 7 | 10 | 3 | 15 |
| `order_moves` | deepsjeng | 17 | 5 | 5 | 5 | 12 |
| `lzma_mf_bt4_skip` | xz | 16 | 6 | 10 | 4 | 12 |
| `rtd_divmod` | gcc | 14 | 14 | 14 | 12 | 2 |
| `FastBoard::self_atari` | leela | 14 | 22 | 22 | 7 | 7 |
| `match` | xz | 11 | 4 | 4 | 4 | 7 |
| `normalize` | gcc | 10 | 4 | 5 | 2 | 8 |
| `rc_encode` | xz | 9 | 15 | 23 | 9 | 0 |
| `div_significands` | gcc | 8 | 7 | 7 | 4 | 4 |
| `Playout::run` | leela | 7 | 0 | 0 | 0 | 7 |
| `UCTNode::uct_select_child` | leela | 7 | 2 | 1 | 1 | 6 |
| `bitmap_bit_p` | gcc | 6 | 3 | 4 | 1 | 5 |
| `FastState::walk_empty_list` | leela | 6 | 3 | 3 | 3 | 3 |
| `HashXMLCh::getHashVal` | xalancbmk | 5 | 1 | 1 | 1 | 4 |
| `FastBoard::add_neighbour` | leela | 5 | 7 | 18 | 1 | 4 |
| `FastBoard::remove_neighbour` | leela | 5 | 7 | 18 | 1 | 4 |
| `FastBoard::add_string_liberties<3>` | leela | 5 | 0 | 0 | 0 | 5 |
| `gen_evasions` | deepsjeng | 4 | 2 | 2 | 1 | 3 |
| `ht_lookup` | gcc | 4 | 1 | 1 | 1 | 3 |
| `sha_compress` | xz | 3 | 10 | 16 | 0 | 3 |
| `ira_init` | gcc | 3 | 18 | 24 | 0 | 3 |
| `init_optabs` | gcc | 3 | 3 | 3 | 0 | 3 |
| `FastBoard::save_critical_neighbours` | leela | 3 | 0 | 0 | 0 | 3 |
| `taxicab_dist_bit` | deepsjeng | 2 | 0 | 0 | 0 | 2 |
| `DOMString::equals` | xalancbmk | 2 | 0 | 1 | 0 | 2 |
| `FastBoard::get_pattern3_augment_spec` | leela | 2 | 12 | 12 | 2 | 0 |
| `sha_process` | xz | 2 | 0 | 0 | 0 | 2 |
| `XPathFactoryDefault::doReturnObject` | xalancbmk | 1 | 0 | 0 | 0 | 1 |
| `Random::randint` | leela | 1 | 0 | 0 | 0 | 1 |
| `EtherMAC::printState` | omnetpp | 1 | 0 | 4 | 0 | 1 |
| `FastBoard::fast_ss_suicide` | leela | 1 | 3 | 3 | 0 | 1 |
| `cModule::findGateDesc` | omnetpp | 1 | 0 | 0 | 0 | 1 |
| `sum_dist` | deepsjeng | 1 | 0 | 0 | 0 | 1 |

Benchmarks: deepsjeng (10), leela (14), gcc (7), xz (7), xalancbmk (3), omnetpp (2).

## Functions With Most GVN/NewGVN Pairs (top 15)

| Function | Bench | NewGVN | GVN |
|---|---|---|---|
| `S_regmatch` | perlbench | 2745 | 2809 |
| `Perl_yylex` | perlbench | 692 | 864 |
| `find_reloads` | gcc | 223 | 255 |
| `Perl_re_op_compile` | perlbench | 146 | 172 |
| `Perl_rpeep` | perlbench | 112 | 137 |
| `cleanup_cfg` | gcc | 98 | 150 |
| `S_make_trie` | perlbench | 79 | 110 |
| `constrain_operands` | gcc | 79 | 94 |
| `lzma_lzma_optimum_normal` | xz | 79 | 92 |
| `Perl_regexec_flags` | perlbench | 56 | 94 |
| `computeSSIM` | x264 | 70 | 72 |
| `spec_qsort` | mcf | 64 | 64 |
| `Perl_yyparse` | perlbench | 42 | 47 |
| `copyprop_hardreg_forward` | gcc | 26 | 62 |
| `S_scan_str` | perlbench | 33 | 53 |

## Still Running (2 functions)

| Function | Bench | NewGVN | GVN | Status |
|---|---|---|---|---|
| `Perl_re_op_compile` | perlbench | 146 | 172 | Running since Mar 5 (4+ days) |
| `Perl_regexec_flags` | perlbench | 56 | 96 | Running since Mar 5 (4+ days) |

## Killed by SMT Timeout/OOM (25 functions, 0 output)

These functions passed llvm2alive but were killed before alive-red could produce output. 3 hit Z3 memout (`Perl_Slab_Alloc`, `Perl_sv_clear`, `build_common_tree_nodes_2`); the remaining 22 were killed mid-SMT-query. They contain 536 NewGVN / 770 GVN pairs that were never checked.

Top killed functions by unchecked pair count: `S_make_trie` (79/113), `constrain_operands` (79/99), `spec_qsort` (64/64), `Perl_yyparse` (42/47), `copyprop_hardreg_forward` (26/62), `cleanup_cfg` (98/151).

## Limitations

- `check_constant` disabled — may miss constant-folding opportunities
- 92% of GVN/NewGVN pairs unchecked (see coverage table above)
- Results near-final: 71/130 checked, 2 still running, pair counts unlikely to change
