; ModuleID = '/tmp/tmp.DE29jh0YHC/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/regexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct._reg_trie_state = type { i16, %union.anon.19 }
%union.anon.19 = type { ptr }
%struct._reg_trie_trans = type { i32, i32 }
%struct.reg_trie_wordinfo = type { i16, i32, i32 }
%struct.regexp_paren_pair = type { i64, i64, i64 }
%struct.regnode = type { i8, i8, i16 }
%struct.context = type { %union.anon.30 }
%union.anon.30 = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@PL_regkind = external local_unnamed_addr constant [0 x i8], align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@PL_regmatch_slab = external local_unnamed_addr global ptr, align 8
@PL_regmatch_state = external local_unnamed_addr global ptr, align 8
@PL_curpm = external local_unnamed_addr global ptr, align 8
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1
@PL_fold_latin1 = external local_unnamed_addr constant [0 x i8], align 1
@PL_fold = external local_unnamed_addr constant [0 x i8], align 1
@PL_in_utf8_CTYPE_locale = external local_unnamed_addr global i8, align 1
@PL_fold_locale = external local_unnamed_addr global [0 x i8], align 1
@.str.2 = external hidden unnamed_addr constant [76 x i8], align 1
@PL_utf8_swash_ptrs = external local_unnamed_addr global [10 x ptr], align 16
@.str.3 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_XPosix_ptrs = external local_unnamed_addr global [16 x ptr], align 16
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@Grapheme_Cluster_Break_invmap = external hidden unnamed_addr constant [1484 x i32], align 16
@PL_GCB_invlist = external local_unnamed_addr global ptr, align 8
@Sentence_Break_invmap = external hidden unnamed_addr constant [2835 x i32], align 16
@PL_SB_invlist = external local_unnamed_addr global ptr, align 8
@Word_Break_invmap = external hidden unnamed_addr constant [1480 x i32], align 16
@PL_WB_invlist = external local_unnamed_addr global ptr, align 8
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@.str.7 = external hidden unnamed_addr constant [34 x i8], align 1
@PL_replgv = external local_unnamed_addr global ptr, align 8
@.str.10 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.11 = external hidden unnamed_addr constant [70 x i8], align 1
@.str.12 = external hidden unnamed_addr constant [48 x i8], align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_op = external global ptr, align 8
@PL_comppad = external local_unnamed_addr global ptr, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_top_env = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_markstack = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@.str.13 = external hidden unnamed_addr constant [8 x i8], align 1
@PL_runops = external local_unnamed_addr global ptr, align 8
@PL_reg_curpm = external local_unnamed_addr global ptr, align 8
@.str.14 = external hidden unnamed_addr constant [60 x i8], align 1
@PL_stderrgv = external local_unnamed_addr global ptr, align 8
@.str.15 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.16 = external hidden unnamed_addr constant [25 x i8], align 1
@.str.17 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.18 = external hidden unnamed_addr constant [9 x i8], align 1
@PL_sv_no = external global %struct.sv, align 8
@PL_sv_yes = external global %struct.sv, align 8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nounwind uwtable
declare hidden fastcc ptr @S_reghop3(ptr noundef readonly captures(address, ret: address, provenance), i64 noundef, ptr noundef readnone captures(address)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: nounwind uwtable
declare hidden fastcc ptr @S_reghopmaybe3(ptr noundef readonly captures(address, ret: address, provenance), i64 noundef, ptr noundef readnone captures(address)) unnamed_addr #1

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_leave_scope(i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc zeroext i1 @S_reginclass(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #1

declare i32 @Perl_foldEQ_latin1(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_foldEQ(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_foldEQ_locale(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_utf8_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Perl_foldEQ_utf8_flags(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @Perl_utf8n_to_uvchr(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

declare ptr @Perl__core_swash_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i64 @Perl__invlist_search(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
declare hidden fastcc noundef zeroext i1 @S_isGCB(i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nounwind uwtable
declare hidden fastcc noundef zeroext i1 @S_isSB(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden fastcc zeroext i1 @S_isWB(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden fastcc zeroext i1 @S_isFOO_lc(i8 noundef zeroext, i8 noundef zeroext) unnamed_addr #1

declare i64 @Perl_swash_fetch(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @Perl_push_scope() local_unnamed_addr #2

declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

declare i64 @Perl__to_utf8_fold_flags(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i64 @Perl__to_fold_latin1(i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden fastcc i64 @S_regmatch(ptr noundef nonnull %reginfo, ptr noundef %startpos, ptr noundef %prog) unnamed_addr #1 {
entry:
  %maxopenparen = alloca i32, align 4
  %len = alloca i64, align 8
  %foldlen = alloca i64, align 8
  %foldbuf = alloca [14 x i8], align 1
  %uvc = alloca i64, align 8
  %foldbuf643 = alloca [14 x i8], align 1
  %foldlen644 = alloca i64, align 8
  %len645 = alloca i64, align 8
  %e898 = alloca ptr, align 8
  %flags1910 = alloca i8, align 1
  %limit = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %len3045 = alloca i64, align 8
  %li = alloca ptr, align 8
  %li5074 = alloca ptr, align 8
  %li5333 = alloca ptr, align 8
  %li5469 = alloca ptr, align 8
  %is_utf8_target = getelementptr inbounds nuw i8, ptr %reginfo, i64 90
  %0 = load i8, ptr %is_utf8_target, align 2, !range !0, !noundef !1
  %loadedv = trunc nuw i8 %0 to i1
  %call = tail call zeroext i1 @Perl_ckwarn(i32 noundef 44) #10
  %not.call = xor i1 %call, true
  %cond = zext i1 %not.call to i32
  %1 = load ptr, ptr %reginfo, align 8
  %2 = getelementptr i8, ptr %1, i64 16
  %.val8743 = load ptr, ptr %2, align 8
  %pprivate = getelementptr inbounds nuw i8, ptr %.val8743, i64 104
  %3 = load ptr, ptr %pprivate, align 8
  %nparens = getelementptr inbounds nuw i8, ptr %.val8743, i64 96
  %4 = load i32, ptr %nparens, align 8
  %mul = mul i32 %4, 3
  %spec.select = tail call i32 @llvm.umax.i32(i32 %mul, i32 1000)
  %intflags = getelementptr inbounds nuw i8, ptr %.val8743, i64 100
  %5 = load i32, ptr %intflags, align 4
  %and = and i32 %5, 16
  %tobool = icmp ne i32 %and, 0
  %6 = load ptr, ptr @PL_replgv, align 8
  %sv_u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %7 = load ptr, ptr %sv_u, align 8
  %8 = load ptr, ptr %7, align 8
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %cond.false14, label %cond.end19

cond.false14:                                     ; preds = %entry
  %call15 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %6, i32 noundef 0) #10
  %sv_u16 = getelementptr inbounds nuw i8, ptr %call15, i64 16
  %9 = load ptr, ptr %sv_u16, align 8
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false14, %entry
  %cond20 = phi ptr [ %9, %cond.false14 ], [ %7, %entry ]
  %10 = load ptr, ptr %cond20, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %maxopenparen) #10
  store i32 0, ptr %maxopenparen, align 4
  %is_utf8_pat21 = getelementptr inbounds nuw i8, ptr %reginfo, i64 89
  %11 = load i8, ptr %is_utf8_pat21, align 1, !range !0, !noundef !1
  %sv_refcnt = getelementptr inbounds nuw i8, ptr %10, i64 8
  %12 = load i32, ptr %sv_refcnt, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %sv_refcnt, align 8
  tail call void @Perl_save_pushptr(ptr noundef %10, i32 noundef 11) #10
  %13 = load ptr, ptr @PL_regmatch_state, align 8
  %strend = getelementptr inbounds nuw i8, ptr %reginfo, i64 16
  %strbeg4591 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg6121 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg6115 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %cutpoint6133 = getelementptr inbounds nuw i8, ptr %reginfo, i64 48
  %strbeg6035 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg6029 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %cutpoint6047 = getelementptr inbounds nuw i8, ptr %reginfo, i64 48
  %strbeg5873 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg5865 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg5786 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg4442 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg4454 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %warned3748 = getelementptr inbounds nuw i8, ptr %reginfo, i64 91
  %info_aux3762 = getelementptr inbounds nuw i8, ptr %reginfo, i64 56
  %info_aux3673 = getelementptr inbounds nuw i8, ptr %reginfo, i64 56
  %info_aux3638 = getelementptr inbounds nuw i8, ptr %reginfo, i64 56
  %poscache_maxiter3483 = getelementptr inbounds nuw i8, ptr %reginfo, i64 72
  %strbeg3487 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %poscache_iter3506 = getelementptr inbounds nuw i8, ptr %reginfo, i64 76
  %poscache_iter3508 = getelementptr inbounds nuw i8, ptr %reginfo, i64 76
  %info_aux = getelementptr inbounds nuw i8, ptr %reginfo, i64 56
  %poscache_size = getelementptr inbounds nuw i8, ptr %reginfo, i64 80
  %poscache_size3530 = getelementptr inbounds nuw i8, ptr %reginfo, i64 80
  %strbeg3546 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %info_aux3559 = getelementptr inbounds nuw i8, ptr %reginfo, i64 56
  %strbeg3286 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %till = getelementptr inbounds nuw i8, ptr %reginfo, i64 24
  %info_aux_eval3180 = getelementptr inbounds nuw i8, ptr %reginfo, i64 64
  %poscache_maxiter3204 = getelementptr inbounds nuw i8, ptr %reginfo, i64 72
  %info_aux_eval3133 = getelementptr inbounds nuw i8, ptr %reginfo, i64 64
  %poscache_maxiter3164 = getelementptr inbounds nuw i8, ptr %reginfo, i64 72
  %poscache_maxiter = getelementptr inbounds nuw i8, ptr %reginfo, i64 72
  %poscache_iter = getelementptr inbounds nuw i8, ptr %reginfo, i64 76
  %strbeg2306 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg1235 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg1294 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg1517 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg1478 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg1442 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg1307 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg1153 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg955 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %cond166 = select i1 %loadedv, i32 4, i32 5
  %cond157 = select i1 %loadedv, i32 6, i32 0
  %cond148 = zext nneg i8 %0 to i32
  %cond176 = select i1 %loadedv, i32 2, i32 3
  %ganch = getelementptr inbounds nuw i8, ptr %reginfo, i64 40
  %strbeg49 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %cutpoint = getelementptr inbounds nuw i8, ptr %reginfo, i64 48
  %strbeg5677 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg5683 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg5362 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg5368 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg5511 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %strbeg5517 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %warned = getelementptr inbounds nuw i8, ptr %reginfo, i64 91
  %strbeg3232 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %info_aux_eval5811 = getelementptr inbounds nuw i8, ptr %reginfo, i64 64
  %strbeg2754 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %info_aux_eval = getelementptr inbounds nuw i8, ptr %reginfo, i64 64
  %sv = getelementptr inbounds nuw i8, ptr %reginfo, i64 32
  %poscache_maxiter3102 = getelementptr inbounds nuw i8, ptr %reginfo, i64 72
  %info_aux_eval3113 = getelementptr inbounds nuw i8, ptr %reginfo, i64 64
  %strbeg67 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %poscache_maxiter3360 = getelementptr inbounds nuw i8, ptr %reginfo, i64 72
  %poscache_iter3361 = getelementptr inbounds nuw i8, ptr %reginfo, i64 76
  %strbeg3211 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %sw.epilog6360, %cond.end19
  %match.0.ph.ph = phi i8 [ 0, %cond.end19 ], [ %match.3, %sw.epilog6360 ]
  %is_utf8_pat.0.ph.ph = phi i8 [ %11, %cond.end19 ], [ %is_utf8_pat.1.ph14527, %sw.epilog6360 ]
  %last_pushed_cv.0.ph.ph = phi ptr [ null, %cond.end19 ], [ %last_pushed_cv.3, %sw.epilog6360 ]
  %caller_cv.0.ph.ph = phi ptr [ null, %cond.end19 ], [ %caller_cv.3, %sw.epilog6360 ]
  %multicall_oldcatch.0.ph.ph = phi i8 [ 0, %cond.end19 ], [ %multicall_oldcatch.4, %sw.epilog6360 ]
  %multicall_cv.0.ph.ph = phi ptr [ null, %cond.end19 ], [ %multicall_cv.4, %sw.epilog6360 ]
  %last_pad.0.ph.ph = phi ptr [ null, %cond.end19 ], [ %last_pad.2, %sw.epilog6360 ]
  %logical.0.ph.ph = phi i32 [ 0, %cond.end19 ], [ %logical.7, %sw.epilog6360 ]
  %minmod.0.ph.ph = phi i8 [ 0, %cond.end19 ], [ %minmod.7, %sw.epilog6360 ]
  %sw.0.ph.ph = phi i1 [ false, %cond.end19 ], [ %sw.8, %sw.epilog6360 ]
  %lastopen.0.ph.ph = phi i32 [ 0, %cond.end19 ], [ %lastopen.1, %sw.epilog6360 ]
  %sv_yes_mark.0.ph.ph = phi ptr [ null, %cond.end19 ], [ %sv_yes_mark.1.ph14376, %sw.epilog6360 ]
  %sv_commit.0.ph.ph = phi ptr [ null, %cond.end19 ], [ %sv_commit.1.ph14299, %sw.epilog6360 ]
  %popmark.0.ph.ph = phi ptr [ null, %cond.end19 ], [ %popmark.1.ph14220, %sw.epilog6360 ]
  %do_cutgroup.0.ph.ph = phi i8 [ 0, %cond.end19 ], [ %do_cutgroup.1.ph14142, %sw.epilog6360 ]
  %no_final.0.ph.ph = phi i8 [ 0, %cond.end19 ], [ %no_final.1.ph14064, %sw.epilog6360 ]
  %cur_curlyx.0.ph.ph = phi ptr [ null, %cond.end19 ], [ %cur_curlyx.1.ph13988, %sw.epilog6360 ]
  %cur_eval.0.ph.ph = phi ptr [ null, %cond.end19 ], [ %cur_eval.1.ph13911, %sw.epilog6360 ]
  %mark_state.0.ph.ph = phi ptr [ null, %cond.end19 ], [ %mark_state.1.ph13834, %sw.epilog6360 ]
  %yes_state.0.ph.ph = phi ptr [ null, %cond.end19 ], [ %yes_state.1.ph13756, %sw.epilog6360 ]
  %nochange_depth.0.ph.ph = phi i32 [ 0, %cond.end19 ], [ %nochange_depth.6, %sw.epilog6360 ]
  %depth.0.ph.ph = phi i32 [ 0, %cond.end19 ], [ %depth.1.ph13603, %sw.epilog6360 ]
  %locinput.0.ph.ph = phi ptr [ %startpos, %cond.end19 ], [ %locinput.27, %sw.epilog6360 ]
  %next.0.ph.ph = phi ptr [ undef, %cond.end19 ], [ %next.6, %sw.epilog6360 ]
  %scan.0.ph.ph = phi ptr [ %prog, %cond.end19 ], [ %next.6, %sw.epilog6360 ]
  %st.0.ph.ph = phi ptr [ %13, %cond.end19 ], [ %st.1.ph13450, %sw.epilog6360 ]
  %rexi.0.ph.ph = phi ptr [ %3, %cond.end19 ], [ %rexi.1.ph13375, %sw.epilog6360 ]
  %rex.0.ph.ph = phi ptr [ %.val8743, %cond.end19 ], [ %rex.1.ph13299, %sw.epilog6360 ]
  %rex_sv.0.ph.ph = phi ptr [ %1, %cond.end19 ], [ %rex_sv.1.ph13222, %sw.epilog6360 ]
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end6372, %while.cond.outer.outer
  %match.0.ph = phi i8 [ %match.1.ph14603, %if.end6372 ], [ %match.0.ph.ph, %while.cond.outer.outer ]
  %is_utf8_pat.0.ph = phi i8 [ %is_utf8_pat.3, %if.end6372 ], [ %is_utf8_pat.0.ph.ph, %while.cond.outer.outer ]
  %last_pushed_cv.0.ph = phi ptr [ %last_pushed_cv.5, %if.end6372 ], [ %last_pushed_cv.0.ph.ph, %while.cond.outer.outer ]
  %caller_cv.0.ph = phi ptr [ %caller_cv.5, %if.end6372 ], [ %caller_cv.0.ph.ph, %while.cond.outer.outer ]
  %multicall_oldcatch.0.ph = phi i8 [ %multicall_oldcatch.6, %if.end6372 ], [ %multicall_oldcatch.0.ph.ph, %while.cond.outer.outer ]
  %multicall_cv.0.ph = phi ptr [ %multicall_cv.6, %if.end6372 ], [ %multicall_cv.0.ph.ph, %while.cond.outer.outer ]
  %last_pad.0.ph = phi ptr [ %last_pad.4, %if.end6372 ], [ %last_pad.0.ph.ph, %while.cond.outer.outer ]
  %logical.0.ph = phi i32 [ %logical.9, %if.end6372 ], [ %logical.0.ph.ph, %while.cond.outer.outer ]
  %minmod.0.ph = phi i8 [ %minmod.9, %if.end6372 ], [ %minmod.0.ph.ph, %while.cond.outer.outer ]
  %sw.0.ph = phi i1 [ %sw.10, %if.end6372 ], [ %sw.0.ph.ph, %while.cond.outer.outer ]
  %sv_yes_mark.0.ph = phi ptr [ %sv_yes_mark.4, %if.end6372 ], [ %sv_yes_mark.0.ph.ph, %while.cond.outer.outer ]
  %sv_commit.0.ph = phi ptr [ %sv_commit.6, %if.end6372 ], [ %sv_commit.0.ph.ph, %while.cond.outer.outer ]
  %popmark.0.ph = phi ptr [ %popmark.1.ph14224, %if.end6372 ], [ %popmark.0.ph.ph, %while.cond.outer.outer ]
  %do_cutgroup.0.ph = phi i8 [ %do_cutgroup.4, %if.end6372 ], [ %do_cutgroup.0.ph.ph, %while.cond.outer.outer ]
  %no_final.0.ph = phi i8 [ %no_final.4, %if.end6372 ], [ %no_final.0.ph.ph, %while.cond.outer.outer ]
  %cur_curlyx.0.ph = phi ptr [ %cur_curlyx.5, %if.end6372 ], [ %cur_curlyx.0.ph.ph, %while.cond.outer.outer ]
  %cur_eval.0.ph = phi ptr [ %cur_eval.3, %if.end6372 ], [ %cur_eval.0.ph.ph, %while.cond.outer.outer ]
  %mark_state.0.ph = phi ptr [ %mark_state.3, %if.end6372 ], [ %mark_state.0.ph.ph, %while.cond.outer.outer ]
  %yes_state.0.ph = phi ptr [ %yes_state.2, %if.end6372 ], [ %yes_state.0.ph.ph, %while.cond.outer.outer ]
  %nochange_depth.0.ph = phi i32 [ %nochange_depth.8, %if.end6372 ], [ %nochange_depth.0.ph.ph, %while.cond.outer.outer ]
  %depth.0.ph = phi i32 [ %inc6363, %if.end6372 ], [ %depth.0.ph.ph, %while.cond.outer.outer ]
  %locinput.0.ph = phi ptr [ %pushinput.11, %if.end6372 ], [ %locinput.0.ph.ph, %while.cond.outer.outer ]
  %next.0.ph = phi ptr [ %next.8, %if.end6372 ], [ %next.0.ph.ph, %while.cond.outer.outer ]
  %scan.0.ph = phi ptr [ %scan.16, %if.end6372 ], [ %scan.0.ph.ph, %while.cond.outer.outer ]
  %st.0.ph = phi ptr [ %newst.0, %if.end6372 ], [ %st.0.ph.ph, %while.cond.outer.outer ]
  %rexi.0.ph = phi ptr [ %rexi.3, %if.end6372 ], [ %rexi.0.ph.ph, %while.cond.outer.outer ]
  %rex.0.ph = phi ptr [ %rex.3, %if.end6372 ], [ %rex.0.ph.ph, %while.cond.outer.outer ]
  %rex_sv.0.ph = phi ptr [ %rex_sv.3, %if.end6372 ], [ %rex_sv.0.ph.ph, %while.cond.outer.outer ]
  br label %while.cond.outer9425

while.cond.outer9425:                             ; preds = %if.end5959, %while.cond.outer
  %match.0.ph9426 = phi i8 [ %match.0.ph, %while.cond.outer ], [ %match.1.ph14615, %if.end5959 ]
  %is_utf8_pat.0.ph9427 = phi i8 [ %is_utf8_pat.0.ph, %while.cond.outer ], [ %is_utf8_pat.1.ph14537, %if.end5959 ]
  %logical.0.ph9428 = phi i32 [ %logical.0.ph, %while.cond.outer ], [ %logical.1.ph14461, %if.end5959 ]
  %minmod.0.ph9429 = phi i8 [ %minmod.0.ph, %while.cond.outer ], [ %minmod.11296512968, %if.end5959 ]
  %sw.0.ph9430 = phi i1 [ %sw.0.ph, %while.cond.outer ], [ %sw.7, %if.end5959 ]
  %sv_yes_mark.0.ph9432 = phi ptr [ %sv_yes_mark.0.ph, %while.cond.outer ], [ %sv_yes_mark.1.ph14388, %if.end5959 ]
  %sv_commit.0.ph9433 = phi ptr [ %sv_commit.0.ph, %while.cond.outer ], [ %sv_commit.1.ph14311, %if.end5959 ]
  %popmark.0.ph9434 = phi ptr [ %popmark.0.ph, %while.cond.outer ], [ %popmark.1.ph14235, %if.end5959 ]
  %do_cutgroup.0.ph9435 = phi i8 [ %do_cutgroup.0.ph, %while.cond.outer ], [ %do_cutgroup.1.ph14155, %if.end5959 ]
  %no_final.0.ph9436 = phi i8 [ %no_final.0.ph, %while.cond.outer ], [ %no_final.1.ph14077, %if.end5959 ]
  %cur_curlyx.0.ph9437 = phi ptr [ %cur_curlyx.0.ph, %while.cond.outer ], [ %cur_curlyx.1.ph13999, %if.end5959 ]
  %cur_eval.0.ph9438 = phi ptr [ %cur_eval.0.ph, %while.cond.outer ], [ %cur_eval.1.ph13923, %if.end5959 ]
  %mark_state.0.ph9439 = phi ptr [ %mark_state.0.ph, %while.cond.outer ], [ %mark_state.1.ph13846, %if.end5959 ]
  %yes_state.0.ph9440 = phi ptr [ %yes_state.0.ph, %while.cond.outer ], [ %yes_state.1.ph13769, %if.end5959 ]
  %nochange_depth.0.ph9441 = phi i32 [ %nochange_depth.0.ph, %while.cond.outer ], [ %nochange_depth.1.ph13690, %if.end5959 ]
  %depth.0.ph9442 = phi i32 [ %depth.0.ph, %while.cond.outer ], [ %depth.1.ph13618, %if.end5959 ]
  %locinput.0.ph9443 = phi ptr [ %locinput.0.ph, %while.cond.outer ], [ %locinput.26, %if.end5959 ]
  %next.0.ph9444 = phi ptr [ %next.0.ph, %while.cond.outer ], [ %next.1.ph13537, %if.end5959 ]
  %scan.0.ph9445 = phi ptr [ %scan.0.ph, %while.cond.outer ], [ %spec.select9402, %if.end5959 ]
  %st.0.ph9446 = phi ptr [ %st.0.ph, %while.cond.outer ], [ %st.1.ph13465, %if.end5959 ]
  %rexi.0.ph9447 = phi ptr [ %rexi.0.ph, %while.cond.outer ], [ %rexi.1.ph13385, %if.end5959 ]
  %rex.0.ph9448 = phi ptr [ %rex.0.ph, %while.cond.outer ], [ %rex.1.ph13310, %if.end5959 ]
  %rex_sv.0.ph9449 = phi ptr [ %rex_sv.0.ph, %while.cond.outer ], [ %rex_sv.1.ph13234, %if.end5959 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer9425
  %match.0 = phi i8 [ %match.0.ph9426, %while.cond.outer9425 ], [ %match.1.ph, %while.cond.backedge ]
  %is_utf8_pat.0 = phi i8 [ %is_utf8_pat.0.ph9427, %while.cond.outer9425 ], [ %is_utf8_pat.1.ph, %while.cond.backedge ]
  %logical.0 = phi i32 [ %logical.0.ph9428, %while.cond.outer9425 ], [ %logical.1.ph, %while.cond.backedge ]
  %minmod.0 = phi i8 [ %minmod.0.ph9429, %while.cond.outer9425 ], [ %minmod.112951, %while.cond.backedge ]
  %sv_yes_mark.0 = phi ptr [ %sv_yes_mark.0.ph9432, %while.cond.outer9425 ], [ %sv_yes_mark.1.ph, %while.cond.backedge ]
  %sv_commit.0 = phi ptr [ %sv_commit.0.ph9433, %while.cond.outer9425 ], [ %sv_commit.1.ph, %while.cond.backedge ]
  %popmark.0 = phi ptr [ %popmark.0.ph9434, %while.cond.outer9425 ], [ %popmark.1.ph, %while.cond.backedge ]
  %do_cutgroup.0 = phi i8 [ %do_cutgroup.0.ph9435, %while.cond.outer9425 ], [ %do_cutgroup.0.be, %while.cond.backedge ]
  %no_final.0 = phi i8 [ %no_final.0.ph9436, %while.cond.outer9425 ], [ %no_final.0.be, %while.cond.backedge ]
  %cur_curlyx.0 = phi ptr [ %cur_curlyx.0.ph9437, %while.cond.outer9425 ], [ %cur_curlyx.1.ph, %while.cond.backedge ]
  %cur_eval.0 = phi ptr [ %cur_eval.0.ph9438, %while.cond.outer9425 ], [ %cur_eval.1.ph, %while.cond.backedge ]
  %mark_state.0 = phi ptr [ %mark_state.0.ph9439, %while.cond.outer9425 ], [ %mark_state.1.ph, %while.cond.backedge ]
  %yes_state.0 = phi ptr [ %yes_state.0.ph9440, %while.cond.outer9425 ], [ %yes_state.1.ph, %while.cond.backedge ]
  %nochange_depth.0 = phi i32 [ %nochange_depth.0.ph9441, %while.cond.outer9425 ], [ %nochange_depth.1.ph, %while.cond.backedge ]
  %depth.0 = phi i32 [ %depth.0.ph9442, %while.cond.outer9425 ], [ %depth.1.ph, %while.cond.backedge ]
  %locinput.0 = phi ptr [ %locinput.0.ph9443, %while.cond.outer9425 ], [ %locinput.0.be, %while.cond.backedge ]
  %next.0 = phi ptr [ %next.0.ph9444, %while.cond.outer9425 ], [ %next.1.ph, %while.cond.backedge ]
  %scan.0 = phi ptr [ %scan.0.ph9445, %while.cond.outer9425 ], [ %scan.0.be, %while.cond.backedge ]
  %st.0 = phi ptr [ %st.0.ph9446, %while.cond.outer9425 ], [ %st.1.ph, %while.cond.backedge ]
  %rexi.0 = phi ptr [ %rexi.0.ph9447, %while.cond.outer9425 ], [ %rexi.1.ph, %while.cond.backedge ]
  %rex.0 = phi ptr [ %rex.0.ph9448, %while.cond.outer9425 ], [ %rex.1.ph, %while.cond.backedge ]
  %rex_sv.0 = phi ptr [ %rex_sv.0.ph9449, %while.cond.outer9425 ], [ %rex_sv.1.ph, %while.cond.backedge ]
  %cmp29.not = icmp eq ptr %scan.0, null
  br i1 %cmp29.not, label %while.end6374, label %while.body

while.body:                                       ; preds = %while.cond
  %next_off = getelementptr inbounds nuw i8, ptr %scan.0, i64 2
  %14 = load i16, ptr %next_off, align 2
  %idx.ext = zext i16 %14 to i64
  %add.ptr32.idx = shl nuw nsw i64 %idx.ext, 2
  %add.ptr32 = getelementptr inbounds nuw i8, ptr %scan.0, i64 %add.ptr32.idx
  %cmp33 = icmp eq i16 %14, 0
  %spec.store.select = select i1 %cmp33, ptr null, ptr %add.ptr32
  %type = getelementptr inbounds nuw i8, ptr %scan.0, i64 1
  %15 = load i8, ptr %type, align 1
  %conv35 = zext i8 %15 to i32
  br label %reenter_switch.preheader

reenter_switch.preheader:                         ; preds = %if.end6461, %if.end6416, %while.body
  %match.1.ph = phi i8 [ %match.5, %if.end6461 ], [ %match.4, %if.end6416 ], [ %match.0, %while.body ]
  %is_utf8_pat.1.ph = phi i8 [ %is_utf8_pat.5, %if.end6461 ], [ %is_utf8_pat.4, %if.end6416 ], [ %is_utf8_pat.0, %while.body ]
  %logical.1.ph = phi i32 [ %logical.11, %if.end6461 ], [ %logical.10, %if.end6416 ], [ %logical.0, %while.body ]
  %minmod.1.ph = phi i8 [ %minmod.11, %if.end6461 ], [ %minmod.10, %if.end6416 ], [ %minmod.0, %while.body ]
  %sv_yes_mark.1.ph = phi ptr [ %sv_yes_mark.6, %if.end6461 ], [ %sv_yes_mark.5, %if.end6416 ], [ %sv_yes_mark.0, %while.body ]
  %sv_commit.1.ph = phi ptr [ %sv_commit.8, %if.end6461 ], [ %sv_commit.7, %if.end6416 ], [ %sv_commit.0, %while.body ]
  %popmark.1.ph = phi ptr [ %popmark.5, %if.end6461 ], [ %popmark.4, %if.end6416 ], [ %popmark.0, %while.body ]
  %do_cutgroup.1.ph = phi i8 [ %do_cutgroup.6, %if.end6461 ], [ %do_cutgroup.5, %if.end6416 ], [ %do_cutgroup.0, %while.body ]
  %no_final.1.ph = phi i8 [ %no_final.6, %if.end6461 ], [ %no_final.5, %if.end6416 ], [ %no_final.0, %while.body ]
  %state_num.0.ph = phi i32 [ %add6463, %if.end6461 ], [ %add6420, %if.end6416 ], [ %conv35, %while.body ]
  %cur_curlyx.1.ph = phi ptr [ %cur_curlyx.7, %if.end6461 ], [ %cur_curlyx.6, %if.end6416 ], [ %cur_curlyx.0, %while.body ]
  %cur_eval.1.ph = phi ptr [ %cur_eval.5, %if.end6461 ], [ %cur_eval.4, %if.end6416 ], [ %cur_eval.0, %while.body ]
  %mark_state.1.ph = phi ptr [ %mark_state.5, %if.end6461 ], [ %mark_state.4, %if.end6416 ], [ %mark_state.0, %while.body ]
  %yes_state.1.ph = phi ptr [ %yes_state.5, %if.end6461 ], [ %1218, %if.end6416 ], [ %yes_state.0, %while.body ]
  %nochange_depth.1.ph = phi i32 [ %nochange_depth.10, %if.end6461 ], [ %nochange_depth.9, %if.end6416 ], [ %nochange_depth.0, %while.body ]
  %depth.1.ph = phi i32 [ %dec6455, %if.end6461 ], [ %conv6410, %if.end6416 ], [ %depth.0, %while.body ]
  %locinput.1.ph = phi ptr [ %1227, %if.end6461 ], [ %locinput.31, %if.end6416 ], [ %locinput.0, %while.body ]
  %next.1.ph = phi ptr [ %next.10, %if.end6461 ], [ %next.9, %if.end6416 ], [ %spec.store.select, %while.body ]
  %scan.1.ph = phi ptr [ %scan.18, %if.end6461 ], [ %scan.17, %if.end6416 ], [ %scan.0, %while.body ]
  %st.1.ph = phi ptr [ %st.5, %if.end6461 ], [ %yes_state.3, %if.end6416 ], [ %st.0, %while.body ]
  %rexi.1.ph = phi ptr [ %rexi.5, %if.end6461 ], [ %rexi.4, %if.end6416 ], [ %rexi.0, %while.body ]
  %rex.1.ph = phi ptr [ %rex.5, %if.end6461 ], [ %rex.4, %if.end6416 ], [ %rex.0, %while.body ]
  %rex_sv.1.ph = phi ptr [ %rex_sv.5, %if.end6461 ], [ %rex_sv.4, %if.end6416 ], [ %rex_sv.0, %while.body ]
  %cp4514 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %lastparen4523 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 112
  %lastparen4526 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 36
  %offs4530 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 120
  %lastcloseparen4539 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %lastcloseparen4540 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 116
  %minmod4542 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 52
  %count4563 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %me4565 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %alen4597 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 44
  %alen4580 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 44
  %cp4060 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %minmod4070 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 52
  %count4075 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %me4077 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %tobool4083.not = icmp eq ptr %cur_eval.1.ph, null
  %close_paren4086 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph, i64 56
  %count3953 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %locinput3979 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 8
  %alen3985 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 44
  %locinput3964 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 8
  %alen3970 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 44
  %alen3988 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 44
  %minmod3993 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 52
  %me4003 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %me3998 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %tobool4012.not = icmp eq ptr %cur_eval.1.ph, null
  %close_paren4015 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph, i64 56
  %me4021 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %minmod4030 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 52
  %me4040 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %me4035 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %me3889 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %lastparen3892 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 112
  %lastparen3894 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 36
  %lastcloseparen3895 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 116
  %lastcloseparen3897 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %A3917 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 56
  %B3919 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 64
  %alen = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 44
  %count3922 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %minmod3925 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 52
  %c1 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %cp3929 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %c14100 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %c2 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 28
  %B4108 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 64
  %tobool4139.not = icmp eq ptr %cur_eval.1.ph, null
  %close_paren4142 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph, i64 56
  %tobool4235.not = icmp eq ptr %cur_eval.1.ph, null
  %close_paren4238 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph, i64 56
  %c1_utf8 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 80
  %c2_utf8 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 94
  %c24405 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 28
  %c1_utf84380 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 80
  %c2_utf84389 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 94
  br label %reenter_switch

reenter_switch:                                   ; preds = %reenter_switch.backedge, %reenter_switch.preheader
  %minmod.1 = phi i8 [ %minmod.1.ph, %reenter_switch.preheader ], [ %minmod.3, %reenter_switch.backedge ]
  %state_num.0 = phi i32 [ %state_num.0.ph, %reenter_switch.preheader ], [ 115, %reenter_switch.backedge ]
  %locinput.1 = phi ptr [ %locinput.1.ph, %reenter_switch.preheader ], [ %locinput.10, %reenter_switch.backedge ]
  %scan.1 = phi ptr [ %scan.1.ph, %reenter_switch.preheader ], [ %scan.5, %reenter_switch.backedge ]
  %16 = load ptr, ptr %strend, align 8
  %cmp37 = icmp ult ptr %locinput.1, %16
  br i1 %cmp37, label %cond.true39, label %cond.end42

cond.true39:                                      ; preds = %reenter_switch
  %17 = load i8, ptr %locinput.1, align 1
  %conv40 = zext i8 %17 to i32
  br label %cond.end42

cond.end42:                                       ; preds = %cond.true39, %reenter_switch
  %cond43 = phi i32 [ %conv40, %cond.true39 ], [ -10, %reenter_switch ]
  switch i32 %state_num.0, label %sw.default6315 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb48
    i32 7, label %sw.bb59
    i32 90, label %sw.bb64
    i32 133, label %sw.bb71
    i32 5, label %sw.bb78
    i32 4, label %sw.bb86
    i32 6, label %sw.bb102
    i32 17, label %sw.bb107
    i32 18, label %sw.bb112
    i32 16, label %sw.bb117
    i32 73, label %sw.bb125
    i32 72, label %sw.bb141.loopexit
    i32 95, label %sw.bb533
    i32 32, label %sw.bb742
    i32 31, label %sw.bb742
    i32 34, label %do_exactf.loopexit
    i32 38, label %sw.bb867
    i32 37, label %sw.bb871
    i32 35, label %sw.bb871
    i32 39, label %do_exactf.loopexit12304
    i32 36, label %do_exactf.loopexit12304
    i32 33, label %sw.bb877
    i32 13, label %sw.bb943.loopexit12305
    i32 9, label %sw.bb943.loopexit
    i32 12, label %sw.bb1229.loopexit12306
    i32 8, label %sw.bb1229.loopexit
    i32 15, label %bound_ascii_match_only.loopexit12307
    i32 11, label %bound_ascii_match_only.loopexit
    i32 14, label %boundu.loopexit12308
    i32 10, label %boundu.loopexit
    i32 20, label %sw.bb1685
    i32 19, label %sw.bb1685
    i32 26, label %sw.bb1730.loopexit12309
    i32 22, label %sw.bb1730.loopexit
    i32 25, label %sw.bb1781.loopexit12310
    i32 21, label %sw.bb1781.loopexit
    i32 28, label %sw.bb1785
    i32 24, label %posixa.loopexit
    i32 27, label %utf8_posix.loopexit12311
    i32 23, label %utf8_posix.loopexit
    i32 29, label %sw.bb2201
    i32 58, label %do_nref.loopexit
    i32 60, label %do_nref.loopexit12312
    i32 59, label %sw.bb2272
    i32 57, label %sw.bb2273
    i32 56, label %sw.bb2274
    i32 53, label %do_ref.loopexit
    i32 55, label %do_ref.loopexit12313
    i32 54, label %sw.bb2281
    i32 52, label %sw.bb2282
    i32 51, label %sw.bb2283
    i32 40, label %sw.epilog6360.loopexit9419
    i32 41, label %sw.epilog6360.loopexit9419
    i32 77, label %sw.bb2386
    i32 76, label %sw.bb2386
    i32 68, label %sw.bb2426
    i32 96, label %sw.bb3122
    i32 97, label %sw.bb3169
    i32 49, label %sw.bb3209
    i32 50, label %sw.bb3222
    i32 83, label %sw.bb3255
    i32 67, label %sw.bb3319
    i32 78, label %sw.bb3336
    i32 79, label %sw.bb3343
    i32 80, label %sw.epilog6360.loopexit12314
    i32 66, label %sw.bb3359
    i32 70, label %sw.bb3379
    i32 47, label %sw.bb3382
    i32 98, label %sw.bb3420
    i32 99, label %do.body3424
    i32 48, label %sw.bb3437
    i32 106, label %sw.bb3619
    i32 108, label %sw.bb3619
    i32 109, label %sw.bb3622
    i32 103, label %do.body3649
    i32 101, label %do.body3649
    i32 105, label %do.body3684
    i32 107, label %sw.bb3717
    i32 62, label %sw.bb3789
    i32 30, label %sw.bb3798.loopexit
    i32 89, label %sw.bb3814
    i32 131, label %sw.bb3829
    i32 110, label %yes.loopexit
    i32 111, label %sw.bb3838
    i32 69, label %sw.bb3886
    i32 46, label %sw.bb3887
    i32 112, label %sw.bb3951
    i32 113, label %do.body4058
    i32 115, label %do.body4512
    i32 42, label %sw.bb4611
    i32 43, label %sw.bb4619
    i32 45, label %sw.bb4627
    i32 44, label %sw.bb4675
    i32 119, label %do.body5146
    i32 121, label %do.body5435
    i32 123, label %do.body5739.loopexit
    i32 0, label %fake_end.loopexit12315
    i32 1, label %yes.loopexit
    i32 65, label %sw.bb5845
    i32 64, label %sw.bb5847
    i32 63, label %sw.bb5850
    i32 117, label %sw.bb5925
    i32 116, label %sw.bb5933.loopexit
    i32 61, label %sw.bb5973
    i32 88, label %sw.bb5981
    i32 85, label %sw.bb5983.loopexit
    i32 125, label %no_silent.loopexit12316
    i32 82, label %no_silent.loopexit
    i32 86, label %sw.bb5996
    i32 126, label %sw.bb6007
    i32 127, label %sw.bb6010
    i32 87, label %sw.bb6061
    i32 129, label %sw.bb6096
    i32 91, label %sw.bb6141
  ]

sw.bb:                                            ; preds = %cond.end42
  %minmod.1.lcssa12828 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12568 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12435 = phi ptr [ %scan.1, %cond.end42 ]
  %18 = load ptr, ptr %strbeg, align 8
  %cmp44 = icmp eq ptr %locinput.1.lcssa12568, %18
  br i1 %cmp44, label %sw.epilog6360.loopexit12320, label %no_silent

sw.bb48:                                          ; preds = %cond.end42
  %cond43.lcssa12984 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12829 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12569 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12436 = phi ptr [ %scan.1, %cond.end42 ]
  %19 = load ptr, ptr %strbeg49, align 8
  %cmp50 = icmp eq ptr %locinput.1.lcssa12569, %19
  br i1 %cmp50, label %sw.epilog6360.loopexit12320, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb48
  %cmp52 = icmp slt i32 %cond43.lcssa12984, 0
  br i1 %cmp52, label %no_silent, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx = getelementptr inbounds i8, ptr %locinput.1.lcssa12569, i64 -1
  %20 = load i8, ptr %arrayidx, align 1
  %cmp55 = icmp eq i8 %20, 10
  br i1 %cmp55, label %sw.epilog6360.loopexit12320, label %no_silent

sw.bb59:                                          ; preds = %cond.end42
  %minmod.1.lcssa12830 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12570 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12437 = phi ptr [ %scan.1, %cond.end42 ]
  %21 = load ptr, ptr %ganch, align 8
  %cmp60 = icmp eq ptr %locinput.1.lcssa12570, %21
  br i1 %cmp60, label %sw.epilog6360.loopexit12320, label %no_silent

sw.bb64:                                          ; preds = %cond.end42
  %sw.0.ph9430.lcssa14618 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12831 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12571 = phi ptr [ %locinput.1, %cond.end42 ]
  %offs = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa, i64 120
  %22 = load ptr, ptr %offs, align 8
  %23 = load i64, ptr %22, align 8
  %conv66 = trunc i64 %23 to i32
  %u = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa, i64 16
  store i32 %conv66, ptr %u, align 8
  %24 = load ptr, ptr %strbeg67, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %locinput.1.lcssa12571 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %25 = load ptr, ptr %offs, align 8
  store i64 %sub.ptr.sub, ptr %25, align 8
  store i32 132, ptr %st.1.ph.lcssa, align 8
  br label %push_state

sw.bb71:                                          ; preds = %cond.end42
  %minmod.1.lcssa12832 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12572 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12439 = phi ptr [ %scan.1, %cond.end42 ]
  %u72 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 16
  %26 = load i32, ptr %u72, align 8
  %conv74 = sext i32 %26 to i64
  %offs75 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 120
  %27 = load ptr, ptr %offs75, align 8
  store i64 %conv74, ptr %27, align 8
  br label %no_silent

sw.bb78:                                          ; preds = %cond.end42
  %cond43.lcssa12988 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12833 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12573 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12440 = phi ptr [ %scan.1, %cond.end42 ]
  %cmp79 = icmp sgt i32 %cond43.lcssa12988, -1
  %cmp82 = icmp ne i32 %cond43.lcssa12988, 10
  %or.cond = and i1 %cmp79, %cmp82
  br i1 %or.cond, label %no_silent, label %sw.epilog6360.loopexit12320

sw.bb86:                                          ; preds = %cond.end42
  %cond43.lcssa12989 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12834 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12574 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12441 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12335 = phi ptr [ %16, %cond.end42 ]
  %cmp87 = icmp sgt i32 %cond43.lcssa12989, -1
  %cmp90 = icmp ne i32 %cond43.lcssa12989, 10
  %or.cond6625 = and i1 %cmp87, %cmp90
  %sub.ptr.lhs.cast95 = ptrtoint ptr %.lcssa12335 to i64
  %sub.ptr.rhs.cast96 = ptrtoint ptr %locinput.1.lcssa12574 to i64
  %sub.ptr.sub97 = sub i64 %sub.ptr.lhs.cast95, %sub.ptr.rhs.cast96
  %cmp98 = icmp sgt i64 %sub.ptr.sub97, 1
  %or.cond9393 = or i1 %cmp98, %or.cond6625
  br i1 %or.cond9393, label %no_silent, label %sw.epilog6360.loopexit12320

sw.bb102:                                         ; preds = %cond.end42
  %cond43.lcssa12990 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12835 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12575 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12442 = phi ptr [ %scan.1, %cond.end42 ]
  %cmp103 = icmp slt i32 %cond43.lcssa12990, 0
  br i1 %cmp103, label %sw.epilog6360.loopexit12320, label %no_silent

sw.bb107:                                         ; preds = %cond.end42
  %cond43.lcssa12991 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12836 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12576 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12443 = phi ptr [ %scan.1, %cond.end42 ]
  %cmp108 = icmp slt i32 %cond43.lcssa12991, 0
  br i1 %cmp108, label %no_silent, label %increment_locinput

sw.bb112:                                         ; preds = %cond.end42
  %cond43.lcssa12992 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12837 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12577 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12444 = phi ptr [ %scan.1, %cond.end42 ]
  %cmp113 = icmp slt i32 %cond43.lcssa12992, 0
  br i1 %cmp113, label %no_silent, label %if.end116

if.end116:                                        ; preds = %sw.bb112
  %last_pushed_cv.0.ph.lcssa14871 = phi ptr [ %last_pushed_cv.0.ph, %sw.bb112 ]
  %caller_cv.0.ph.lcssa14835 = phi ptr [ %caller_cv.0.ph, %sw.bb112 ]
  %multicall_oldcatch.0.ph.lcssa14798 = phi i8 [ %multicall_oldcatch.0.ph, %sw.bb112 ]
  %multicall_cv.0.ph.lcssa14761 = phi ptr [ %multicall_cv.0.ph, %sw.bb112 ]
  %last_pad.0.ph.lcssa14725 = phi ptr [ %last_pad.0.ph, %sw.bb112 ]
  %sw.0.ph9430.lcssa14678 = phi i1 [ %sw.0.ph9430, %sw.bb112 ]
  %match.1.ph.lcssa14600 = phi i8 [ %match.1.ph, %sw.bb112 ]
  %is_utf8_pat.1.ph.lcssa14525 = phi i8 [ %is_utf8_pat.1.ph, %sw.bb112 ]
  %logical.1.ph.lcssa14451 = phi i32 [ %logical.1.ph, %sw.bb112 ]
  %sv_yes_mark.1.ph.lcssa14374 = phi ptr [ %sv_yes_mark.1.ph, %sw.bb112 ]
  %sv_commit.1.ph.lcssa14297 = phi ptr [ %sv_commit.1.ph, %sw.bb112 ]
  %popmark.1.ph.lcssa14218 = phi ptr [ %popmark.1.ph, %sw.bb112 ]
  %do_cutgroup.1.ph.lcssa14140 = phi i8 [ %do_cutgroup.1.ph, %sw.bb112 ]
  %no_final.1.ph.lcssa14062 = phi i8 [ %no_final.1.ph, %sw.bb112 ]
  %cur_curlyx.1.ph.lcssa13986 = phi ptr [ %cur_curlyx.1.ph, %sw.bb112 ]
  %cur_eval.1.ph.lcssa13909 = phi ptr [ %cur_eval.1.ph, %sw.bb112 ]
  %mark_state.1.ph.lcssa13832 = phi ptr [ %mark_state.1.ph, %sw.bb112 ]
  %yes_state.1.ph.lcssa13754 = phi ptr [ %yes_state.1.ph, %sw.bb112 ]
  %nochange_depth.1.ph.lcssa13680 = phi i32 [ %nochange_depth.1.ph, %sw.bb112 ]
  %depth.1.ph.lcssa13601 = phi i32 [ %depth.1.ph, %sw.bb112 ]
  %next.1.ph.lcssa13527 = phi ptr [ %next.1.ph, %sw.bb112 ]
  %st.1.ph.lcssa13448 = phi ptr [ %st.1.ph, %sw.bb112 ]
  %rexi.1.ph.lcssa13373 = phi ptr [ %rexi.1.ph, %sw.bb112 ]
  %rex.1.ph.lcssa13297 = phi ptr [ %rex.1.ph, %sw.bb112 ]
  %rex_sv.1.ph.lcssa13220 = phi ptr [ %rex_sv.1.ph, %sw.bb112 ]
  %minmod.1.lcssa12837.lcssa = phi i8 [ %minmod.1.lcssa12837, %sw.bb112 ]
  %locinput.1.lcssa12577.lcssa = phi ptr [ %locinput.1.lcssa12577, %sw.bb112 ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12577.lcssa, i64 1
  br label %sw.epilog6360

sw.bb117:                                         ; preds = %cond.end42
  %cond43.lcssa12993 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12838 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12578 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12445 = phi ptr [ %scan.1, %cond.end42 ]
  %cmp118 = icmp slt i32 %cond43.lcssa12993, 0
  %cmp121 = icmp eq i32 %cond43.lcssa12993, 10
  %or.cond6626 = or i1 %cmp118, %cmp121
  br i1 %or.cond6626, label %no_silent, label %increment_locinput

sw.bb125:                                         ; preds = %cond.end42
  %cond43.lcssa12994 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12839 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12579 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12446 = phi ptr [ %scan.1, %cond.end42 ]
  %cmp126 = icmp slt i32 %cond43.lcssa12994, 0
  br i1 %cmp126, label %sw.bb141, label %land.lhs.true128

land.lhs.true128:                                 ; preds = %sw.bb125
  %bitmap = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12446, i64 8
  %conv130 = lshr i32 %cond43.lcssa12994, 3
  %idxprom = zext nneg i32 %conv130 to i64
  %arrayidx132 = getelementptr inbounds nuw i8, ptr %bitmap, i64 %idxprom
  %28 = load i8, ptr %arrayidx132, align 1
  %conv133 = sext i8 %28 to i32
  %and134 = and i32 %cond43.lcssa12994, 7
  %shl = shl nuw nsw i32 1, %and134
  %and135 = and i32 %shl, %conv133
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %no_silent, label %sw.bb141

sw.bb141.loopexit:                                ; preds = %cond.end42
  %cond43.lcssa12995 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12840 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12580 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12447 = phi ptr [ %scan.1, %cond.end42 ]
  br label %sw.bb141

sw.bb141:                                         ; preds = %sw.bb141.loopexit, %land.lhs.true128, %sw.bb125
  %cond4313090 = phi i32 [ %cond43.lcssa12995, %sw.bb141.loopexit ], [ %cond43.lcssa12994, %sw.bb125 ], [ %cond43.lcssa12994, %land.lhs.true128 ]
  %minmod.112936 = phi i8 [ %minmod.1.lcssa12840, %sw.bb141.loopexit ], [ %minmod.1.lcssa12839, %sw.bb125 ], [ %minmod.1.lcssa12839, %land.lhs.true128 ]
  %locinput.112675 = phi ptr [ %locinput.1.lcssa12580, %sw.bb141.loopexit ], [ %locinput.1.lcssa12579, %sw.bb125 ], [ %locinput.1.lcssa12579, %land.lhs.true128 ]
  %scan.112542 = phi ptr [ %scan.1.lcssa12447, %sw.bb141.loopexit ], [ %scan.1.lcssa12446, %sw.bb125 ], [ %scan.1.lcssa12446, %land.lhs.true128 ]
  %29 = load i8, ptr %scan.112542, align 2
  switch i8 %29, label %cond.false173 [
    i8 31, label %cond.true145
    i8 32, label %cond.true154
    i8 36, label %cond.true163
    i8 38, label %cond.end183
  ]

cond.true145:                                     ; preds = %sw.bb141
  br label %cond.end183

cond.true154:                                     ; preds = %sw.bb141
  br label %cond.end183

cond.true163:                                     ; preds = %sw.bb141
  br label %cond.end183

cond.false173:                                    ; preds = %sw.bb141
  br label %cond.end183

cond.end183:                                      ; preds = %cond.false173, %cond.true163, %cond.true154, %cond.true145, %sw.bb141
  %cond184 = phi i32 [ %cond148, %cond.true145 ], [ %cond157, %cond.true154 ], [ %cond166, %cond.true163 ], [ %cond176, %cond.false173 ], [ 7, %sw.bb141 ]
  %data = getelementptr inbounds nuw i8, ptr %rexi.1.ph, i64 24
  %30 = load ptr, ptr %data, align 8
  %data185 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %arg1 = getelementptr inbounds nuw i8, ptr %scan.112542, i64 4
  %31 = load i32, ptr %arg1, align 4
  %idxprom186 = zext i32 %31 to i64
  %arrayidx187 = getelementptr inbounds nuw ptr, ptr %data185, i64 %idxprom186
  %32 = load ptr, ptr %arrayidx187, align 8
  %add = add i32 %31, 1
  %idxprom191 = zext i32 %add to i64
  %arrayidx192 = getelementptr inbounds nuw ptr, ptr %data185, i64 %idxprom191
  %33 = load ptr, ptr %arrayidx192, align 8
  %startstate = getelementptr inbounds nuw i8, ptr %32, i64 60
  %34 = load i32, ptr %startstate, align 4
  %bitmap218 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %35 = load ptr, ptr %bitmap218, align 8
  %tobool219.not = icmp eq ptr %35, null
  br i1 %tobool219.not, label %if.end247, label %land.lhs.true220

land.lhs.true220:                                 ; preds = %cond.end183
  %cmp221 = icmp slt i32 %cond4313090, 0
  br i1 %cmp221, label %if.then238, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %land.lhs.true220
  %shr227 = lshr i32 %cond4313090, 3
  %idxprom229 = zext nneg i32 %shr227 to i64
  %arrayidx230 = getelementptr inbounds nuw i8, ptr %35, i64 %idxprom229
  %36 = load i8, ptr %arrayidx230, align 1
  %conv231 = sext i8 %36 to i32
  %and234 = and i32 %cond4313090, 7
  %shl235 = shl nuw nsw i32 1, %and234
  %and236 = and i32 %shl235, %conv231
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %if.then238, label %if.end247

if.then238:                                       ; preds = %lor.lhs.false223, %land.lhs.true220
  %states = getelementptr inbounds nuw i8, ptr %32, i64 16
  %37 = load ptr, ptr %states, align 8
  %idxprom239 = zext i32 %34 to i64
  %arrayidx240 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %37, i64 %idxprom239
  %38 = load i16, ptr %arrayidx240, align 8
  %tobool241.not = icmp eq i16 %38, 0
  br i1 %tobool241.not, label %no_silent, label %if.then242

if.then242:                                       ; preds = %if.then238
  %jump = getelementptr inbounds nuw i8, ptr %32, i64 40
  %39 = load ptr, ptr %jump, align 8
  %tobool243.not = icmp eq ptr %39, null
  br i1 %tobool243.not, label %sw.epilog6360.loopexit12320, label %if.end247

if.end247:                                        ; preds = %if.then242, %lor.lhs.false223, %cond.end183
  call void @llvm.lifetime.start.p0(ptr nonnull %len) #10
  store i64 0, ptr %len, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %foldlen) #10
  store i64 0, ptr %foldlen, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %foldbuf) #10
  %jump248 = getelementptr inbounds nuw i8, ptr %32, i64 40
  %40 = load ptr, ptr %jump248, align 8
  %jump250 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  store ptr %40, ptr %jump250, align 8
  %me = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 56
  store ptr %scan.112542, ptr %me, align 8
  %firstpos = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 64
  store ptr null, ptr %firstpos, align 8
  %longfold = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  store i8 0, ptr %longfold, align 8
  %nextword = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 76
  store i16 0, ptr %nextword, align 4
  %tobool256.not12191 = icmp eq i32 %34, 0
  br i1 %tobool256.not12191, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end247
  %states261 = getelementptr inbounds nuw i8, ptr %32, i64 16
  %firstchars284 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %firstchars = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %topword = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 78
  %tobool456.not = icmp eq ptr %33, null
  %charmap = getelementptr inbounds nuw i8, ptr %32, i64 8
  %uniquecharcount = getelementptr inbounds nuw i8, ptr %32, i64 56
  %lasttrans = getelementptr inbounds nuw i8, ptr %32, i64 4
  %trans494 = getelementptr inbounds nuw i8, ptr %32, i64 24
  br label %land.rhs

land.rhs:                                         ; preds = %if.end508, %land.rhs.lr.ph
  %state.012196 = phi i32 [ %34, %land.rhs.lr.ph ], [ %state.2, %if.end508 ]
  %uc.012195 = phi ptr [ %locinput.112675, %land.rhs.lr.ph ], [ %uc.1, %if.end508 ]
  %uscan.012194 = phi ptr [ null, %land.rhs.lr.ph ], [ %uscan.2, %if.end508 ]
  %charcount.012193 = phi i32 [ 0, %land.rhs.lr.ph ], [ %charcount.1, %if.end508 ]
  %accepted.012192 = phi i32 [ 0, %land.rhs.lr.ph ], [ %accepted.2, %if.end508 ]
  %41 = load ptr, ptr %strend, align 8
  %cmp258.not = icmp ugt ptr %uc.012195, %41
  br i1 %cmp258.not, label %while.end.loopexit, label %while.body260

while.body260:                                    ; preds = %land.rhs
  %42 = load ptr, ptr %states261, align 8
  %idxprom262 = zext i32 %state.012196 to i64
  %arrayidx263 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %42, i64 %idxprom262
  %trans = getelementptr inbounds nuw i8, ptr %arrayidx263, i64 8
  %43 = load i32, ptr %trans, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %uvc) #10
  store i64 0, ptr %uvc, align 8
  %44 = load i16, ptr %arrayidx263, align 8
  %tobool269.not = icmp eq i16 %44, 0
  br i1 %tobool269.not, label %if.end302, label %if.then270

if.then270:                                       ; preds = %while.body260
  %tobool271.not = icmp eq i32 %accepted.012192, 0
  br i1 %tobool271.not, label %if.then272, label %if.end286

if.then272:                                       ; preds = %if.then270
  %45 = load i8, ptr %longfold, align 8, !range !0, !noundef !1
  %loadedv275 = trunc nuw i8 %45 to i1
  br i1 %loadedv275, label %if.then276, label %if.else280

if.then276:                                       ; preds = %if.then272
  store ptr %locinput.112675, ptr %firstpos, align 8
  store i32 0, ptr %firstchars, align 8
  br label %if.end286

if.else280:                                       ; preds = %if.then272
  store ptr %uc.012195, ptr %firstpos, align 8
  store i32 %charcount.012193, ptr %firstchars284, align 8
  br label %if.end286

if.end286:                                        ; preds = %if.else280, %if.then276, %if.then270
  %46 = load i16, ptr %nextword, align 4
  %47 = add i16 %46, -1
  %or.cond8699.not = icmp ult i16 %47, %44
  br i1 %or.cond8699.not, label %if.end300, label %if.then297

if.then297:                                       ; preds = %if.end286
  store i16 %44, ptr %nextword, align 4
  br label %if.end300

if.end300:                                        ; preds = %if.then297, %if.end286
  store i16 %44, ptr %topword, align 2
  br label %if.end302

if.end302:                                        ; preds = %if.end300, %while.body260
  %accepted.2 = phi i32 [ 1, %if.end300 ], [ %accepted.012192, %while.body260 ]
  %tobool303.not = icmp eq i32 %43, 0
  br i1 %tobool303.not, label %if.end508, label %land.lhs.true304

land.lhs.true304:                                 ; preds = %if.end302
  %48 = load i64, ptr %foldlen, align 8
  %tobool305.not = icmp eq i64 %48, 0
  br i1 %tobool305.not, label %lor.lhs.false306, label %if.then310

lor.lhs.false306:                                 ; preds = %land.lhs.true304
  %49 = load ptr, ptr %strend, align 8
  %cmp308 = icmp ult ptr %uc.012195, %49
  br i1 %cmp308, label %if.then310, label %if.end508

if.then310:                                       ; preds = %lor.lhs.false306, %land.lhs.true304
  switch i32 %cond184, label %default.unreachable [
    i32 7, label %do_trie_utf8_fold
    i32 4, label %sw.bb321
    i32 2, label %do_trie_utf8_fold
    i32 5, label %sw.bb379
    i32 3, label %sw.bb383
    i32 6, label %sw.bb447
    i32 1, label %sw.bb447
    i32 0, label %sw.epilog.thread
  ]

sw.bb321:                                         ; preds = %if.then310
  br label %do_trie_utf8_fold

do_trie_utf8_fold:                                ; preds = %sw.bb321, %if.then310, %if.then310
  %flags311.0 = phi i8 [ 6, %sw.bb321 ], [ 2, %if.then310 ], [ 2, %if.then310 ]
  br i1 %tobool305.not, label %if.else330, label %if.then327

if.then327:                                       ; preds = %do_trie_utf8_fold
  %call328 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %uscan.012194, i64 noundef 13, ptr noundef nonnull %len, i32 noundef %cond) #10
  store i64 %call328, ptr %uvc, align 8
  %50 = load i64, ptr %len, align 8
  %51 = load i64, ptr %foldlen, align 8
  %sub = sub i64 %51, %50
  store i64 %sub, ptr %foldlen, align 8
  %add.ptr329 = getelementptr inbounds nuw i8, ptr %uscan.012194, i64 %50
  store i64 0, ptr %len, align 8
  br label %sw.epilogthread-pre-split

if.else330:                                       ; preds = %do_trie_utf8_fold
  %call331 = call i64 @Perl__to_utf8_fold_flags(ptr noundef %uc.012195, ptr noundef nonnull %foldbuf, ptr noundef nonnull %foldlen, i8 noundef zeroext %flags311.0) #10
  store i64 %call331, ptr %uvc, align 8
  %52 = load i8, ptr %uc.012195, align 1
  %idxprom332 = zext i8 %52 to i64
  %arrayidx333 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom332
  %53 = load i8, ptr %arrayidx333, align 1
  %conv334 = zext i8 %53 to i64
  store i64 %conv334, ptr %len, align 8
  %cmp335 = icmp ult i64 %call331, 128
  br i1 %cmp335, label %cond.end372, label %cond.false338

cond.false338:                                    ; preds = %if.else330
  %cmp339 = icmp ult i64 %call331, 2048
  br i1 %cmp339, label %cond.end372, label %cond.false342

cond.false342:                                    ; preds = %cond.false338
  %cmp343 = icmp ult i64 %call331, 65536
  br i1 %cmp343, label %cond.end372, label %cond.false346

cond.false346:                                    ; preds = %cond.false342
  %cmp347 = icmp ult i64 %call331, 2097152
  br i1 %cmp347, label %cond.end372, label %cond.false350

cond.false350:                                    ; preds = %cond.false346
  %cmp351 = icmp ult i64 %call331, 67108864
  br i1 %cmp351, label %cond.end372, label %cond.false354

cond.false354:                                    ; preds = %cond.false350
  %cmp355 = icmp ult i64 %call331, 2147483648
  br i1 %cmp355, label %cond.end372, label %cond.false358

cond.false358:                                    ; preds = %cond.false354
  %cmp359 = icmp ult i64 %call331, 68719476736
  %54 = select i1 %cmp359, i64 7, i64 13
  br label %cond.end372

cond.end372:                                      ; preds = %cond.false358, %cond.false354, %cond.false350, %cond.false346, %cond.false342, %cond.false338, %if.else330
  %cond373 = phi i64 [ 1, %if.else330 ], [ 2, %cond.false338 ], [ 3, %cond.false342 ], [ 4, %cond.false346 ], [ 5, %cond.false350 ], [ %54, %cond.false358 ], [ 6, %cond.false354 ]
  %55 = load i64, ptr %foldlen, align 8
  %sub375 = sub i64 %55, %cond373
  store i64 %sub375, ptr %foldlen, align 8
  %add.ptr377 = getelementptr inbounds nuw i8, ptr %foldbuf, i64 %cond373
  br label %sw.epilogthread-pre-split

sw.bb379:                                         ; preds = %if.then310
  br label %sw.bb383

sw.bb383:                                         ; preds = %sw.bb379, %if.then310
  %flags311.1 = phi i32 [ 6, %sw.bb379 ], [ 2, %if.then310 ]
  br i1 %tobool305.not, label %if.else390, label %if.then386

if.then386:                                       ; preds = %sw.bb383
  %call387 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %uscan.012194, i64 noundef 13, ptr noundef nonnull %len, i32 noundef %cond) #10
  store i64 %call387, ptr %uvc, align 8
  %56 = load i64, ptr %len, align 8
  %57 = load i64, ptr %foldlen, align 8
  %sub388 = sub i64 %57, %56
  store i64 %sub388, ptr %foldlen, align 8
  %add.ptr389 = getelementptr inbounds nuw i8, ptr %uscan.012194, i64 %56
  store i64 0, ptr %len, align 8
  br label %sw.epilogthread-pre-split

if.else390:                                       ; preds = %sw.bb383
  store i64 1, ptr %len, align 8
  %58 = load i8, ptr %uc.012195, align 1
  %call393 = call i64 @Perl__to_fold_latin1(i8 noundef zeroext %58, ptr noundef nonnull %foldbuf, ptr noundef nonnull %foldlen, i32 noundef %flags311.1) #10
  store i64 %call393, ptr %uvc, align 8
  %cmp394 = icmp ult i64 %call393, 128
  br i1 %cmp394, label %cond.end431, label %cond.false397

cond.false397:                                    ; preds = %if.else390
  %cmp398 = icmp ult i64 %call393, 2048
  br i1 %cmp398, label %cond.end431, label %cond.false401

cond.false401:                                    ; preds = %cond.false397
  %cmp402 = icmp ult i64 %call393, 65536
  br i1 %cmp402, label %cond.end431, label %cond.false405

cond.false405:                                    ; preds = %cond.false401
  %cmp406 = icmp ult i64 %call393, 2097152
  br i1 %cmp406, label %cond.end431, label %cond.false409

cond.false409:                                    ; preds = %cond.false405
  %cmp410 = icmp ult i64 %call393, 67108864
  br i1 %cmp410, label %cond.end431, label %cond.false413

cond.false413:                                    ; preds = %cond.false409
  %cmp414 = icmp ult i64 %call393, 2147483648
  br i1 %cmp414, label %cond.end431, label %cond.false417

cond.false417:                                    ; preds = %cond.false413
  %cmp418 = icmp ult i64 %call393, 68719476736
  %59 = select i1 %cmp418, i64 7, i64 13
  br label %cond.end431

cond.end431:                                      ; preds = %cond.false417, %cond.false413, %cond.false409, %cond.false405, %cond.false401, %cond.false397, %if.else390
  %cond432 = phi i64 [ 1, %if.else390 ], [ 2, %cond.false397 ], [ 3, %cond.false401 ], [ 4, %cond.false405 ], [ 5, %cond.false409 ], [ %59, %cond.false417 ], [ 6, %cond.false413 ]
  %60 = load i64, ptr %foldlen, align 8
  %sub434 = sub i64 %60, %cond432
  store i64 %sub434, ptr %foldlen, align 8
  %add.ptr436 = getelementptr inbounds nuw i8, ptr %foldbuf, i64 %cond432
  br label %sw.epilogthread-pre-split

sw.bb447:                                         ; preds = %if.then310, %if.then310
  %call448 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %uc.012195, i64 noundef 13, ptr noundef nonnull %len, i32 noundef %cond) #10
  store i64 %call448, ptr %uvc, align 8
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.then310
  %61 = load i8, ptr %uc.012195, align 1
  %conv450 = zext i8 %61 to i64
  store i64 %conv450, ptr %uvc, align 8
  store i64 1, ptr %len, align 8
  br label %if.then453

default.unreachable:                              ; preds = %if.then310
  unreachable

sw.epilogthread-pre-split:                        ; preds = %cond.end431, %if.then386, %cond.end372, %if.then327
  %uscan.1.ph = phi ptr [ %add.ptr436, %cond.end431 ], [ %add.ptr389, %if.then386 ], [ %add.ptr377, %cond.end372 ], [ %add.ptr329, %if.then327 ]
  %.pr = load i64, ptr %uvc, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %sw.bb447
  %62 = phi i64 [ %.pr, %sw.epilogthread-pre-split ], [ %call448, %sw.bb447 ]
  %uscan.1 = phi ptr [ %uscan.1.ph, %sw.epilogthread-pre-split ], [ %uscan.012194, %sw.bb447 ]
  %cmp451 = icmp ult i64 %62, 256
  br i1 %cmp451, label %if.then453, label %if.else455

if.then453:                                       ; preds = %sw.epilog, %sw.epilog.thread
  %uscan.19275 = phi ptr [ %uscan.012194, %sw.epilog.thread ], [ %uscan.1, %sw.epilog ]
  %63 = phi i64 [ %conv450, %sw.epilog.thread ], [ %62, %sw.epilog ]
  %64 = load ptr, ptr %charmap, align 8
  %arrayidx454 = getelementptr inbounds nuw i16, ptr %64, i64 %63
  %65 = load i16, ptr %arrayidx454, align 2
  br label %if.end472

if.else455:                                       ; preds = %sw.epilog
  br i1 %tobool456.not, label %if.end472, label %if.then457

if.then457:                                       ; preds = %if.else455
  %call458 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %33, ptr noundef nonnull %uvc, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %tobool459.not = icmp eq ptr %call458, null
  br i1 %tobool459.not, label %if.end472, label %if.then460

if.then460:                                       ; preds = %if.then457
  %66 = load ptr, ptr %call458, align 8
  %sv_flags = getelementptr inbounds nuw i8, ptr %66, i64 12
  %67 = load i32, ptr %sv_flags, align 4
  %and461 = and i32 %67, 2097408
  %cmp462 = icmp eq i32 %and461, 256
  br i1 %cmp462, label %cond.true464, label %cond.false465

cond.true464:                                     ; preds = %if.then460
  %68 = load ptr, ptr %66, align 8
  %xiv_u = getelementptr inbounds nuw i8, ptr %68, i64 32
  %69 = load i64, ptr %xiv_u, align 8
  br label %cond.end467

cond.false465:                                    ; preds = %if.then460
  %call466 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %66, i32 noundef 2) #10
  br label %cond.end467

cond.end467:                                      ; preds = %cond.false465, %cond.true464
  %cond468 = phi i64 [ %69, %cond.true464 ], [ %call466, %cond.false465 ]
  %conv469 = trunc i64 %cond468 to i16
  br label %if.end472

if.end472:                                        ; preds = %cond.end467, %if.then457, %if.else455, %if.then453
  %uscan.19274 = phi ptr [ %uscan.19275, %if.then453 ], [ %uscan.1, %if.else455 ], [ %uscan.1, %cond.end467 ], [ %uscan.1, %if.then457 ]
  %charid.1 = phi i16 [ %65, %if.then453 ], [ 0, %if.else455 ], [ %conv469, %cond.end467 ], [ 0, %if.then457 ]
  %inc473 = add i32 %charcount.012193, 1
  %70 = load i64, ptr %foldlen, align 8
  %cmp474.not = icmp eq i64 %70, 0
  br i1 %cmp474.not, label %if.end479, label %if.then476

if.then476:                                       ; preds = %if.end472
  store i8 1, ptr %longfold, align 8
  br label %if.end479

if.end479:                                        ; preds = %if.then476, %if.end472
  %tobool481.not = icmp eq i16 %charid.1, 0
  br i1 %tobool481.not, label %if.end505, label %land.lhs.true482

land.lhs.true482:                                 ; preds = %if.end479
  %conv480 = zext i16 %charid.1 to i32
  %add484 = add i32 %43, %conv480
  %71 = load i16, ptr %uniquecharcount, align 8
  %conv486 = zext i16 %71 to i32
  %72 = xor i32 %conv486, -1
  %sub487 = add i32 %add484, %72
  %cmp488 = icmp sgt i32 %sub487, -1
  br i1 %cmp488, label %land.lhs.true490, label %if.end505

land.lhs.true490:                                 ; preds = %land.lhs.true482
  %73 = load i32, ptr %lasttrans, align 4
  %cmp491 = icmp ult i32 %sub487, %73
  br i1 %cmp491, label %land.lhs.true493, label %if.end505

land.lhs.true493:                                 ; preds = %land.lhs.true490
  %74 = load ptr, ptr %trans494, align 8
  %idxprom495 = zext nneg i32 %sub487 to i64
  %arrayidx496 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %74, i64 %idxprom495
  %check = getelementptr inbounds nuw i8, ptr %arrayidx496, i64 4
  %75 = load i32, ptr %check, align 4
  %cmp497 = icmp eq i32 %75, %state.012196
  br i1 %cmp497, label %if.then499, label %if.end505

if.then499:                                       ; preds = %land.lhs.true493
  %76 = load i32, ptr %arrayidx496, align 4
  br label %if.end505

if.end505:                                        ; preds = %if.then499, %land.lhs.true493, %land.lhs.true490, %land.lhs.true482, %if.end479
  %state.1 = phi i32 [ %76, %if.then499 ], [ 0, %land.lhs.true493 ], [ 0, %land.lhs.true490 ], [ 0, %land.lhs.true482 ], [ 0, %if.end479 ]
  %77 = load i64, ptr %len, align 8
  %add.ptr506 = getelementptr inbounds nuw i8, ptr %uc.012195, i64 %77
  br label %if.end508

if.end508:                                        ; preds = %if.end505, %lor.lhs.false306, %if.end302
  %charcount.1 = phi i32 [ %inc473, %if.end505 ], [ %charcount.012193, %lor.lhs.false306 ], [ %charcount.012193, %if.end302 ]
  %uscan.2 = phi ptr [ %uscan.19274, %if.end505 ], [ %uscan.012194, %lor.lhs.false306 ], [ %uscan.012194, %if.end302 ]
  %uc.1 = phi ptr [ %add.ptr506, %if.end505 ], [ %uc.012195, %lor.lhs.false306 ], [ %uc.012195, %if.end302 ]
  %state.2 = phi i32 [ %state.1, %if.end505 ], [ 0, %lor.lhs.false306 ], [ 0, %if.end302 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %uvc) #10
  %tobool256.not = icmp eq i32 %state.2, 0
  br i1 %tobool256.not, label %while.end.loopexit, label %land.rhs, !llvm.loop !2

while.end.loopexit:                               ; preds = %if.end508, %land.rhs
  %accepted.0.lcssa.ph = phi i32 [ %accepted.012192, %land.rhs ], [ %accepted.2, %if.end508 ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end247
  %accepted.0.lcssa = phi i32 [ 0, %if.end247 ], [ %accepted.0.lcssa.ph, %while.end.loopexit ]
  %tobool509.not.not = icmp eq i32 %accepted.0.lcssa, 0
  br i1 %tobool509.not.not, label %no_silent.critedge, label %if.end511

if.end511:                                        ; preds = %while.end
  %topword513 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 78
  %w.012199 = load i16, ptr %topword513, align 2
  %tobool515.not12200 = icmp eq i16 %w.012199, 0
  br i1 %tobool515.not12200, label %while.end520, label %while.body516.lr.ph

while.body516.lr.ph:                              ; preds = %if.end511
  %wordinfo = getelementptr inbounds nuw i8, ptr %32, i64 48
  %78 = load ptr, ptr %wordinfo, align 8
  br label %while.body516

while.body516:                                    ; preds = %while.body516, %while.body516.lr.ph
  %w.012202 = phi i16 [ %w.012199, %while.body516.lr.ph ], [ %w.0, %while.body516 ]
  %accepted.312201 = phi i32 [ 0, %while.body516.lr.ph ], [ %inc519, %while.body516 ]
  %idxprom517 = zext i16 %w.012202 to i64
  %arrayidx518 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %78, i64 %idxprom517
  %inc519 = add i32 %accepted.312201, 1
  %w.0 = load i16, ptr %arrayidx518, align 2
  %tobool515.not = icmp eq i16 %w.0, 0
  br i1 %tobool515.not, label %while.end520.loopexit, label %while.body516, !llvm.loop !4

while.end520.loopexit:                            ; preds = %while.body516
  %inc519.lcssa = phi i32 [ %inc519, %while.body516 ]
  br label %while.end520

while.end520:                                     ; preds = %while.end520.loopexit, %if.end511
  %accepted.3.lcssa = phi i32 [ 0, %if.end511 ], [ %inc519.lcssa, %while.end520.loopexit ]
  %accepted522 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 36
  store i32 %accepted.3.lcssa, ptr %accepted522, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %foldbuf) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %foldlen) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %len) #10
  br label %trie_first_try

sw.bb533:                                         ; preds = %cond.end42
  %minmod.1.lcssa12841 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12581 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12448 = phi ptr [ %scan.1, %cond.end42 ]
  %jump536 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %79 = load ptr, ptr %jump536, align 8
  %tobool537.not = icmp eq ptr %79, null
  br i1 %tobool537.not, label %if.end559, label %do.body539

do.body539:                                       ; preds = %sw.bb533
  %80 = load i32, ptr @PL_savestack_ix, align 4
  %cp = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %81 = load i32, ptr %cp, align 8
  %cmp541 = icmp sgt i32 %80, %81
  br i1 %cmp541, label %if.then543, label %do.end548

if.then543:                                       ; preds = %do.body539
  call void @Perl_leave_scope(i32 noundef %81) #10
  br label %do.end548

do.end548:                                        ; preds = %if.then543, %do.body539
  %lastparen = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 112
  %82 = load i32, ptr %lastparen, align 8
  %lastparen550 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %83 = load i32, ptr %lastparen550, align 8
  %cmp55112183 = icmp ugt i32 %82, %83
  br i1 %cmp55112183, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %do.end548
  %offs553 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 120
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %n.012184 = phi i32 [ %82, %for.body.lr.ph ], [ %dec, %for.body ]
  %84 = load ptr, ptr %offs553, align 8
  %idxprom554 = zext i32 %n.012184 to i64
  %arrayidx555 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %84, i64 %idxprom554
  %end = getelementptr inbounds nuw i8, ptr %arrayidx555, i64 8
  store i64 -1, ptr %end, align 8
  %dec = add i32 %n.012184, -1
  %85 = load i32, ptr %lastparen550, align 8
  %cmp551 = icmp ugt i32 %dec, %85
  br i1 %cmp551, label %for.body, label %for.end.loopexit, !llvm.loop !5

for.end.loopexit:                                 ; preds = %for.body
  %dec.lcssa = phi i32 [ %dec, %for.body ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %do.end548
  %n.0.lcssa = phi i32 [ %82, %do.end548 ], [ %dec.lcssa, %for.end.loopexit ]
  store i32 %n.0.lcssa, ptr %lastparen, align 8
  %lastcloseparen = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 28
  %86 = load i32, ptr %lastcloseparen, align 4
  %lastcloseparen558 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 116
  store i32 %86, ptr %lastcloseparen558, align 4
  br label %if.end559

if.end559:                                        ; preds = %for.end, %sw.bb533
  %accepted561 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 36
  %87 = load i32, ptr %accepted561, align 4
  %dec562 = add i32 %87, -1
  store i32 %dec562, ptr %accepted561, align 4
  %tobool563.not = icmp eq i32 %dec562, 0
  br i1 %tobool563.not, label %no_silent, label %if.end565

if.end565:                                        ; preds = %if.end559
  %nextword568 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 76
  %88 = load i16, ptr %nextword568, align 4
  %data570 = getelementptr inbounds nuw i8, ptr %rexi.1.ph, i64 24
  %89 = load ptr, ptr %data570, align 8
  %data571 = getelementptr inbounds nuw i8, ptr %89, i64 16
  %me573 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 56
  %90 = load ptr, ptr %me573, align 8
  %arg1574 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %91 = load i32, ptr %arg1574, align 4
  %idxprom575 = zext i32 %91 to i64
  %arrayidx576 = getelementptr inbounds nuw ptr, ptr %data571, i64 %idxprom575
  %92 = load ptr, ptr %arrayidx576, align 8
  %wordinfo577 = getelementptr inbounds nuw i8, ptr %92, i64 48
  %93 = load ptr, ptr %wordinfo577, align 8
  %topword579 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 78
  %word.012186 = load i16, ptr %topword579, align 2
  %tobool581.not12187 = icmp eq i16 %word.012186, 0
  br i1 %tobool581.not12187, label %for.end600, label %for.body582.preheader

for.body582.preheader:                            ; preds = %if.end565
  br label %for.body582

for.body582:                                      ; preds = %for.body582, %for.body582.preheader
  %word.012189 = phi i16 [ %word.0, %for.body582 ], [ %word.012186, %for.body582.preheader ]
  %min.012188 = phi i16 [ %min.1, %for.body582 ], [ 0, %for.body582.preheader ]
  %cmp585 = icmp ugt i16 %word.012189, %88
  %94 = add i16 %min.012188, -1
  %or.cond8700.not = icmp ult i16 %94, %word.012189
  %spec.select8737 = select i1 %or.cond8700.not, i16 %min.012188, i16 %word.012189
  %min.1 = select i1 %cmp585, i16 %spec.select8737, i16 %min.012188
  %idxprom597 = zext i16 %word.012189 to i64
  %arrayidx598 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %93, i64 %idxprom597
  %word.0 = load i16, ptr %arrayidx598, align 2
  %tobool581.not = icmp eq i16 %word.0, 0
  br i1 %tobool581.not, label %for.end600.loopexit, label %for.body582, !llvm.loop !6

for.end600.loopexit:                              ; preds = %for.body582
  %min.1.lcssa = phi i16 [ %min.1, %for.body582 ]
  br label %for.end600

for.end600:                                       ; preds = %for.end600.loopexit, %if.end565
  %min.0.lcssa = phi i16 [ 0, %if.end565 ], [ %min.1.lcssa, %for.end600.loopexit ]
  store i16 %min.0.lcssa, ptr %nextword568, align 4
  br label %trie_first_try

trie_first_try:                                   ; preds = %for.end600, %while.end520
  %minmod.112950 = phi i8 [ %minmod.112936, %while.end520 ], [ %minmod.1.lcssa12841, %for.end600 ]
  %locinput.112688 = phi ptr [ %locinput.112675, %while.end520 ], [ %locinput.1.lcssa12581, %for.end600 ]
  %loadedv603 = trunc i8 %do_cutgroup.1.ph to i1
  %spec.select8701 = select i1 %loadedv603, i8 0, i8 %do_cutgroup.1.ph
  %spec.select8702 = select i1 %loadedv603, i8 0, i8 %no_final.1.ph
  %jump607 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %95 = load ptr, ptr %jump607, align 8
  %tobool608.not = icmp eq ptr %95, null
  br i1 %tobool608.not, label %if.end618, label %if.then609

if.then609:                                       ; preds = %trie_first_try
  %lastparen610 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 112
  %96 = load i32, ptr %lastparen610, align 8
  %lastparen612 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  store i32 %96, ptr %lastparen612, align 8
  %lastcloseparen613 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 116
  %97 = load i32, ptr %lastcloseparen613, align 4
  %lastcloseparen615 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 28
  store i32 %97, ptr %lastcloseparen615, align 4
  %98 = load i32, ptr @PL_savestack_ix, align 4
  %cp617 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  store i32 %98, ptr %cp617, align 8
  br label %if.end618

if.end618:                                        ; preds = %if.then609, %trie_first_try
  %data620 = getelementptr inbounds nuw i8, ptr %rexi.1.ph, i64 24
  %99 = load ptr, ptr %data620, align 8
  %data621 = getelementptr inbounds nuw i8, ptr %99, i64 16
  %me623 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 56
  %100 = load ptr, ptr %me623, align 8
  %arg1624 = getelementptr inbounds nuw i8, ptr %100, i64 4
  %101 = load i32, ptr %arg1624, align 4
  %idxprom625 = zext i32 %101 to i64
  %arrayidx626 = getelementptr inbounds nuw ptr, ptr %data621, i64 %idxprom625
  %102 = load ptr, ptr %arrayidx626, align 8
  %wordinfo627 = getelementptr inbounds nuw i8, ptr %102, i64 48
  %103 = load ptr, ptr %wordinfo627, align 8
  %nextword629 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 76
  %104 = load i16, ptr %nextword629, align 4
  %idxprom630 = zext i16 %104 to i64
  %arrayidx631 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %103, i64 %idxprom630
  %len632 = getelementptr inbounds nuw i8, ptr %arrayidx631, i64 4
  %105 = load i32, ptr %len632, align 4
  %prefixlen = getelementptr inbounds nuw i8, ptr %102, i64 80
  %106 = load i32, ptr %prefixlen, align 8
  %firstchars635 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %107 = load i32, ptr %firstchars635, align 8
  %108 = add i32 %106, %107
  %sub636 = sub i32 %105, %108
  %firstpos638 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 64
  %109 = load ptr, ptr %firstpos638, align 8
  %longfold640 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %110 = load i8, ptr %longfold640, align 8, !range !0, !noundef !1
  %loadedv641 = trunc nuw i8 %110 to i1
  br i1 %loadedv641, label %if.then642, label %if.else674

if.then642:                                       ; preds = %if.end618
  call void @llvm.lifetime.start.p0(ptr nonnull %foldbuf643) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %foldlen644) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %len645) #10
  %tobool649.not12213 = icmp eq i32 %sub636, 0
  br i1 %tobool649.not12213, label %while.end673, label %while.body650.preheader

while.body650.preheader:                          ; preds = %if.then642
  br label %while.body650

while.body650:                                    ; preds = %while.end672, %while.body650.preheader
  %chars.012215 = phi i32 [ %chars.2, %while.end672 ], [ %sub636, %while.body650.preheader ]
  %uc534.012214 = phi ptr [ %uc534.1, %while.end672 ], [ %109, %while.body650.preheader ]
  br i1 %loadedv, label %if.then652, label %if.else655

if.then652:                                       ; preds = %while.body650
  %call653 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %uc534.012214, i64 noundef 13, ptr noundef nonnull %len645, i32 noundef %cond) #10
  %111 = load i64, ptr %len645, align 8
  %add.ptr654 = getelementptr inbounds nuw i8, ptr %uc534.012214, i64 %111
  br label %if.end658

if.else655:                                       ; preds = %while.body650
  %112 = load i8, ptr %uc534.012214, align 1
  %conv656 = zext i8 %112 to i64
  %incdec.ptr657 = getelementptr inbounds nuw i8, ptr %uc534.012214, i64 1
  br label %if.end658

if.end658:                                        ; preds = %if.else655, %if.then652
  %uc534.1 = phi ptr [ %add.ptr654, %if.then652 ], [ %incdec.ptr657, %if.else655 ]
  %uvc646.0 = phi i64 [ %call653, %if.then652 ], [ %conv656, %if.else655 ]
  %call660 = call i64 @Perl__to_uni_fold_flags(i64 noundef %uvc646.0, ptr noundef nonnull %foldbuf643, ptr noundef nonnull %foldlen644, i8 noundef zeroext 2) #10
  %.pr9277 = load i64, ptr %foldlen644, align 8
  %tobool663.not12208 = icmp eq i64 %.pr9277, 0
  br i1 %tobool663.not12208, label %while.end672, label %while.body664.preheader

while.body664.preheader:                          ; preds = %if.end658
  br label %while.body664

while.body664:                                    ; preds = %if.end668, %while.body664.preheader
  %uscan647.012210 = phi ptr [ %add.ptr670, %if.end668 ], [ %foldbuf643, %while.body664.preheader ]
  %chars.112209 = phi i32 [ %dec665, %if.end668 ], [ %chars.012215, %while.body664.preheader ]
  %dec665 = add i32 %chars.112209, -1
  %tobool666.not = icmp eq i32 %dec665, 0
  br i1 %tobool666.not, label %while.end672.loopexit, label %if.end668

if.end668:                                        ; preds = %while.body664
  %call669 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %uscan647.012210, i64 noundef 13, ptr noundef nonnull %len645, i32 noundef %cond) #10
  %113 = load i64, ptr %len645, align 8
  %add.ptr670 = getelementptr inbounds nuw i8, ptr %uscan647.012210, i64 %113
  %114 = load i64, ptr %foldlen644, align 8
  %sub671 = sub i64 %114, %113
  store i64 %sub671, ptr %foldlen644, align 8
  %tobool663.not = icmp eq i64 %114, %113
  br i1 %tobool663.not, label %while.end672.loopexit, label %while.body664, !llvm.loop !7

while.end672.loopexit:                            ; preds = %if.end668, %while.body664
  %chars.2.ph = phi i32 [ %dec665, %if.end668 ], [ 0, %while.body664 ]
  br label %while.end672

while.end672:                                     ; preds = %while.end672.loopexit, %if.end658
  %chars.2 = phi i32 [ %chars.012215, %if.end658 ], [ %chars.2.ph, %while.end672.loopexit ]
  %tobool649.not = icmp eq i32 %chars.2, 0
  br i1 %tobool649.not, label %while.end673.loopexit, label %while.body650, !llvm.loop !8

while.end673.loopexit:                            ; preds = %while.end672
  %uc534.1.lcssa = phi ptr [ %uc534.1, %while.end672 ]
  br label %while.end673

while.end673:                                     ; preds = %while.end673.loopexit, %if.then642
  %uc534.0.lcssa = phi ptr [ %109, %if.then642 ], [ %uc534.1.lcssa, %while.end673.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %len645) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %foldlen644) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %foldbuf643) #10
  br label %if.end691

if.else674:                                       ; preds = %if.end618
  br i1 %loadedv, label %while.cond677.preheader, label %if.else687

while.cond677.preheader:                          ; preds = %if.else674
  %tobool679.not12204 = icmp eq i32 %sub636, 0
  br i1 %tobool679.not12204, label %if.end691, label %while.body680.preheader

while.body680.preheader:                          ; preds = %while.cond677.preheader
  br label %while.body680

while.body680:                                    ; preds = %while.body680, %while.body680.preheader
  %chars.312206 = phi i32 [ %dec678, %while.body680 ], [ %sub636, %while.body680.preheader ]
  %uc534.212205 = phi ptr [ %add.ptr685, %while.body680 ], [ %109, %while.body680.preheader ]
  %dec678 = add i32 %chars.312206, -1
  %115 = load i8, ptr %uc534.212205, align 1
  %idxprom681 = zext i8 %115 to i64
  %arrayidx682 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom681
  %116 = load i8, ptr %arrayidx682, align 1
  %idx.ext684 = zext i8 %116 to i64
  %add.ptr685 = getelementptr inbounds nuw i8, ptr %uc534.212205, i64 %idx.ext684
  %tobool679.not = icmp eq i32 %dec678, 0
  br i1 %tobool679.not, label %if.end691.loopexit, label %while.body680, !llvm.loop !9

if.else687:                                       ; preds = %if.else674
  %idx.ext688 = zext i32 %sub636 to i64
  %add.ptr689 = getelementptr inbounds nuw i8, ptr %109, i64 %idx.ext688
  br label %if.end691

if.end691.loopexit:                               ; preds = %while.body680
  %add.ptr685.lcssa = phi ptr [ %add.ptr685, %while.body680 ]
  br label %if.end691

if.end691:                                        ; preds = %if.end691.loopexit, %if.else687, %while.cond677.preheader, %while.end673
  %uc534.3 = phi ptr [ %uc534.0.lcssa, %while.end673 ], [ %add.ptr689, %if.else687 ], [ %109, %while.cond677.preheader ], [ %add.ptr685.lcssa, %if.end691.loopexit ]
  %117 = load ptr, ptr %me623, align 8
  %118 = load ptr, ptr %jump607, align 8
  %tobool696.not = icmp eq ptr %118, null
  br i1 %tobool696.not, label %cond.false714, label %land.lhs.true697

land.lhs.true697:                                 ; preds = %if.end691
  %119 = load i16, ptr %nextword629, align 4
  %idxprom702 = zext i16 %119 to i64
  %arrayidx703 = getelementptr inbounds nuw i16, ptr %118, i64 %idxprom702
  %120 = load i16, ptr %arrayidx703, align 2
  %tobool705.not = icmp eq i16 %120, 0
  br i1 %tobool705.not, label %cond.false714, label %cond.end719

cond.false714:                                    ; preds = %land.lhs.true697, %if.end691
  %next_off717 = getelementptr inbounds nuw i8, ptr %117, i64 2
  %121 = load i16, ptr %next_off717, align 2
  br label %cond.end719

cond.end719:                                      ; preds = %cond.false714, %land.lhs.true697
  %cond720.in = phi i16 [ %121, %cond.false714 ], [ %120, %land.lhs.true697 ]
  %idx.ext721 = zext i16 %cond720.in to i64
  %add.ptr722 = getelementptr inbounds nuw %struct.regnode, ptr %117, i64 %idx.ext721
  %accepted724 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 36
  %122 = load i32, ptr %accepted724, align 4
  %cmp725 = icmp ugt i32 %122, 1
  %or.cond6627 = select i1 %cmp725, i1 true, i1 %tobool
  br i1 %or.cond6627, label %if.then730, label %while.cond.backedge

if.then730:                                       ; preds = %cond.end719
  %sw.0.ph9430.lcssa14677 = phi i1 [ %sw.0.ph9430, %cond.end719 ]
  %match.1.ph.lcssa14599 = phi i8 [ %match.1.ph, %cond.end719 ]
  %is_utf8_pat.1.ph.lcssa14524 = phi i8 [ %is_utf8_pat.1.ph, %cond.end719 ]
  %logical.1.ph.lcssa14450 = phi i32 [ %logical.1.ph, %cond.end719 ]
  %sv_yes_mark.1.ph.lcssa14373 = phi ptr [ %sv_yes_mark.1.ph, %cond.end719 ]
  %sv_commit.1.ph.lcssa14296 = phi ptr [ %sv_commit.1.ph, %cond.end719 ]
  %popmark.1.ph.lcssa14217 = phi ptr [ %popmark.1.ph, %cond.end719 ]
  %cur_curlyx.1.ph.lcssa13985 = phi ptr [ %cur_curlyx.1.ph, %cond.end719 ]
  %cur_eval.1.ph.lcssa13908 = phi ptr [ %cur_eval.1.ph, %cond.end719 ]
  %mark_state.1.ph.lcssa13831 = phi ptr [ %mark_state.1.ph, %cond.end719 ]
  %yes_state.1.ph.lcssa13753 = phi ptr [ %yes_state.1.ph, %cond.end719 ]
  %nochange_depth.1.ph.lcssa13679 = phi i32 [ %nochange_depth.1.ph, %cond.end719 ]
  %depth.1.ph.lcssa13600 = phi i32 [ %depth.1.ph, %cond.end719 ]
  %next.1.ph.lcssa13526 = phi ptr [ %next.1.ph, %cond.end719 ]
  %st.1.ph.lcssa13447 = phi ptr [ %st.1.ph, %cond.end719 ]
  %rexi.1.ph.lcssa13372 = phi ptr [ %rexi.1.ph, %cond.end719 ]
  %rex.1.ph.lcssa13296 = phi ptr [ %rex.1.ph, %cond.end719 ]
  %rex_sv.1.ph.lcssa13219 = phi ptr [ %rex_sv.1.ph, %cond.end719 ]
  %add.ptr722.lcssa = phi ptr [ %add.ptr722, %cond.end719 ]
  %uc534.3.lcssa = phi ptr [ %uc534.3, %cond.end719 ]
  %spec.select8701.lcssa = phi i8 [ %spec.select8701, %cond.end719 ]
  %spec.select8702.lcssa = phi i8 [ %spec.select8702, %cond.end719 ]
  %minmod.112950.lcssa = phi i8 [ %minmod.112950, %cond.end719 ]
  %locinput.112688.lcssa = phi ptr [ %locinput.112688, %cond.end719 ]
  store i32 94, ptr %st.1.ph.lcssa13447, align 8
  br label %push_state

sw.bb742:                                         ; preds = %cond.end42, %cond.end42
  %cond43.lcssa12997 = phi i32 [ %cond43, %cond.end42 ], [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12842 = phi i8 [ %minmod.1, %cond.end42 ], [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12582 = phi ptr [ %locinput.1, %cond.end42 ], [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12449 = phi ptr [ %scan.1, %cond.end42 ], [ %scan.1, %cond.end42 ]
  %.lcssa12343 = phi ptr [ %16, %cond.end42 ], [ %16, %cond.end42 ]
  %string = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12449, i64 4
  %123 = load i8, ptr %scan.1.lcssa12449, align 2
  %conv744 = zext i8 %123 to i64
  %124 = and i8 %is_utf8_pat.1.ph, 1
  %cmp749.not = icmp eq i8 %0, %124
  br i1 %cmp749.not, label %if.else842, label %if.then751

if.then751:                                       ; preds = %sw.bb742
  %add.ptr752 = getelementptr inbounds nuw i8, ptr %string, i64 %conv744
  br i1 %loadedv, label %while.cond755.preheader, label %while.cond797.preheader

while.cond797.preheader:                          ; preds = %if.then751
  %cmp79812069.not = icmp eq i8 %123, 0
  br i1 %cmp79812069.not, label %sw.epilog6360.loopexit12320, label %while.body800.preheader

while.body800.preheader:                          ; preds = %while.cond797.preheader
  br label %while.body800

while.cond755.preheader:                          ; preds = %if.then751
  %cmp75612126.not = icmp eq i8 %123, 0
  br i1 %cmp75612126.not, label %sw.epilog6360.loopexit12320, label %while.body758.preheader

while.body758.preheader:                          ; preds = %while.cond755.preheader
  br label %while.body758

while.body758:                                    ; preds = %if.end793, %while.body758.preheader
  %l.012128 = phi ptr [ %l.1, %if.end793 ], [ %locinput.1.lcssa12582, %while.body758.preheader ]
  %s.012127 = phi ptr [ %incdec.ptr794, %if.end793 ], [ %string, %while.body758.preheader ]
  %cmp760.not = icmp ult ptr %l.012128, %.lcssa12343
  br i1 %cmp760.not, label %lor.lhs.false762, label %cleanup863.loopexit

lor.lhs.false762:                                 ; preds = %while.body758
  %125 = load i8, ptr %l.012128, align 1
  %cmp764 = icmp ugt i8 %125, -61
  br i1 %cmp764, label %cleanup863.loopexit, label %if.end767

if.end767:                                        ; preds = %lor.lhs.false762
  %cmp769 = icmp sgt i8 %125, -1
  br i1 %cmp769, label %if.then771, label %if.else779

if.then771:                                       ; preds = %if.end767
  %126 = load i8, ptr %s.012127, align 1
  %cmp774.not = icmp eq i8 %125, %126
  br i1 %cmp774.not, label %if.end777, label %cleanup863.loopexit

if.end777:                                        ; preds = %if.then771
  %incdec.ptr778 = getelementptr inbounds nuw i8, ptr %l.012128, i64 1
  br label %if.end793

if.else779:                                       ; preds = %if.end767
  %127 = and i8 %125, 31
  %and781 = zext nneg i8 %127 to i32
  %shl782 = shl nuw nsw i32 %and781, 6
  %add.ptr783 = getelementptr inbounds nuw i8, ptr %l.012128, i64 1
  %128 = load i8, ptr %add.ptr783, align 1
  %129 = and i8 %128, 63
  %and785 = zext nneg i8 %129 to i32
  %or786 = or disjoint i32 %shl782, %and785
  %130 = load i8, ptr %s.012127, align 1
  %conv787 = zext i8 %130 to i32
  %cmp788.not = icmp eq i32 %or786, %conv787
  br i1 %cmp788.not, label %if.end791, label %cleanup863.loopexit

if.end791:                                        ; preds = %if.else779
  %add.ptr792 = getelementptr inbounds nuw i8, ptr %l.012128, i64 2
  br label %if.end793

if.end793:                                        ; preds = %if.end791, %if.end777
  %l.1 = phi ptr [ %incdec.ptr778, %if.end777 ], [ %add.ptr792, %if.end791 ]
  %incdec.ptr794 = getelementptr inbounds nuw i8, ptr %s.012127, i64 1
  %cmp756 = icmp ult ptr %incdec.ptr794, %add.ptr752
  br i1 %cmp756, label %while.body758, label %sw.epilog6360.loopexit, !llvm.loop !10

while.body800:                                    ; preds = %if.end835, %while.body800.preheader
  %l.212071 = phi ptr [ %incdec.ptr836, %if.end835 ], [ %locinput.1.lcssa12582, %while.body800.preheader ]
  %s.112070 = phi ptr [ %s.2, %if.end835 ], [ %string, %while.body800.preheader ]
  %cmp802.not = icmp ult ptr %l.212071, %.lcssa12343
  br i1 %cmp802.not, label %lor.lhs.false804, label %cleanup863.loopexit12295

lor.lhs.false804:                                 ; preds = %while.body800
  %131 = load i8, ptr %s.112070, align 1
  %cmp806 = icmp ugt i8 %131, -61
  br i1 %cmp806, label %cleanup863.loopexit12295, label %if.end809

if.end809:                                        ; preds = %lor.lhs.false804
  %cmp811 = icmp sgt i8 %131, -1
  br i1 %cmp811, label %if.then813, label %if.else821

if.then813:                                       ; preds = %if.end809
  %132 = load i8, ptr %l.212071, align 1
  %cmp816.not = icmp eq i8 %131, %132
  br i1 %cmp816.not, label %if.end819, label %cleanup863.loopexit12295

if.end819:                                        ; preds = %if.then813
  %incdec.ptr820 = getelementptr inbounds nuw i8, ptr %s.112070, i64 1
  br label %if.end835

if.else821:                                       ; preds = %if.end809
  %133 = and i8 %131, 31
  %and823 = zext nneg i8 %133 to i32
  %shl824 = shl nuw nsw i32 %and823, 6
  %add.ptr825 = getelementptr inbounds nuw i8, ptr %s.112070, i64 1
  %134 = load i8, ptr %add.ptr825, align 1
  %135 = and i8 %134, 63
  %and827 = zext nneg i8 %135 to i32
  %or828 = or disjoint i32 %shl824, %and827
  %136 = load i8, ptr %l.212071, align 1
  %conv829 = zext i8 %136 to i32
  %cmp830.not = icmp eq i32 %or828, %conv829
  br i1 %cmp830.not, label %if.end833, label %cleanup863.loopexit12295

if.end833:                                        ; preds = %if.else821
  %add.ptr834 = getelementptr inbounds nuw i8, ptr %s.112070, i64 2
  br label %if.end835

if.end835:                                        ; preds = %if.end833, %if.end819
  %s.2 = phi ptr [ %incdec.ptr820, %if.end819 ], [ %add.ptr834, %if.end833 ]
  %incdec.ptr836 = getelementptr inbounds nuw i8, ptr %l.212071, i64 1
  %cmp798 = icmp ult ptr %s.2, %add.ptr752
  br i1 %cmp798, label %while.body800, label %sw.epilog6360.loopexit12296, !llvm.loop !11

if.else842:                                       ; preds = %sw.bb742
  %sub.ptr.lhs.cast844 = ptrtoint ptr %.lcssa12343 to i64
  %sub.ptr.rhs.cast845 = ptrtoint ptr %locinput.1.lcssa12582 to i64
  %sub.ptr.sub846 = sub i64 %sub.ptr.lhs.cast844, %sub.ptr.rhs.cast845
  %cmp847 = icmp slt i64 %sub.ptr.sub846, %conv744
  br i1 %cmp847, label %cleanup863, label %lor.lhs.false849

lor.lhs.false849:                                 ; preds = %if.else842
  %137 = load i8, ptr %string, align 1
  %conv850 = zext i8 %137 to i32
  %cmp851.not = icmp eq i32 %cond43.lcssa12997, %conv850
  br i1 %cmp851.not, label %lor.lhs.false853, label %cleanup863

lor.lhs.false853:                                 ; preds = %lor.lhs.false849
  %cmp854 = icmp ugt i8 %123, 1
  br i1 %cmp854, label %land.lhs.true856, label %if.end860

land.lhs.true856:                                 ; preds = %lor.lhs.false853
  %bcmp8698 = call i32 @bcmp(ptr nonnull %string, ptr %locinput.1.lcssa12582, i64 %conv744)
  %tobool858.not = icmp eq i32 %bcmp8698, 0
  br i1 %tobool858.not, label %if.end860, label %cleanup863

if.end860:                                        ; preds = %land.lhs.true856, %lor.lhs.false853
  %last_pushed_cv.0.ph.lcssa14869 = phi ptr [ %last_pushed_cv.0.ph, %land.lhs.true856 ], [ %last_pushed_cv.0.ph, %lor.lhs.false853 ]
  %caller_cv.0.ph.lcssa14833 = phi ptr [ %caller_cv.0.ph, %land.lhs.true856 ], [ %caller_cv.0.ph, %lor.lhs.false853 ]
  %multicall_oldcatch.0.ph.lcssa14796 = phi i8 [ %multicall_oldcatch.0.ph, %land.lhs.true856 ], [ %multicall_oldcatch.0.ph, %lor.lhs.false853 ]
  %multicall_cv.0.ph.lcssa14759 = phi ptr [ %multicall_cv.0.ph, %land.lhs.true856 ], [ %multicall_cv.0.ph, %lor.lhs.false853 ]
  %last_pad.0.ph.lcssa14723 = phi ptr [ %last_pad.0.ph, %land.lhs.true856 ], [ %last_pad.0.ph, %lor.lhs.false853 ]
  %sw.0.ph9430.lcssa14675 = phi i1 [ %sw.0.ph9430, %land.lhs.true856 ], [ %sw.0.ph9430, %lor.lhs.false853 ]
  %match.1.ph.lcssa14597 = phi i8 [ %match.1.ph, %land.lhs.true856 ], [ %match.1.ph, %lor.lhs.false853 ]
  %is_utf8_pat.1.ph.lcssa14522 = phi i8 [ %is_utf8_pat.1.ph, %land.lhs.true856 ], [ %is_utf8_pat.1.ph, %lor.lhs.false853 ]
  %logical.1.ph.lcssa14448 = phi i32 [ %logical.1.ph, %land.lhs.true856 ], [ %logical.1.ph, %lor.lhs.false853 ]
  %sv_yes_mark.1.ph.lcssa14371 = phi ptr [ %sv_yes_mark.1.ph, %land.lhs.true856 ], [ %sv_yes_mark.1.ph, %lor.lhs.false853 ]
  %sv_commit.1.ph.lcssa14294 = phi ptr [ %sv_commit.1.ph, %land.lhs.true856 ], [ %sv_commit.1.ph, %lor.lhs.false853 ]
  %popmark.1.ph.lcssa14215 = phi ptr [ %popmark.1.ph, %land.lhs.true856 ], [ %popmark.1.ph, %lor.lhs.false853 ]
  %do_cutgroup.1.ph.lcssa14137 = phi i8 [ %do_cutgroup.1.ph, %land.lhs.true856 ], [ %do_cutgroup.1.ph, %lor.lhs.false853 ]
  %no_final.1.ph.lcssa14059 = phi i8 [ %no_final.1.ph, %land.lhs.true856 ], [ %no_final.1.ph, %lor.lhs.false853 ]
  %cur_curlyx.1.ph.lcssa13983 = phi ptr [ %cur_curlyx.1.ph, %land.lhs.true856 ], [ %cur_curlyx.1.ph, %lor.lhs.false853 ]
  %cur_eval.1.ph.lcssa13906 = phi ptr [ %cur_eval.1.ph, %land.lhs.true856 ], [ %cur_eval.1.ph, %lor.lhs.false853 ]
  %mark_state.1.ph.lcssa13829 = phi ptr [ %mark_state.1.ph, %land.lhs.true856 ], [ %mark_state.1.ph, %lor.lhs.false853 ]
  %yes_state.1.ph.lcssa13751 = phi ptr [ %yes_state.1.ph, %land.lhs.true856 ], [ %yes_state.1.ph, %lor.lhs.false853 ]
  %nochange_depth.1.ph.lcssa13677 = phi i32 [ %nochange_depth.1.ph, %land.lhs.true856 ], [ %nochange_depth.1.ph, %lor.lhs.false853 ]
  %depth.1.ph.lcssa13598 = phi i32 [ %depth.1.ph, %land.lhs.true856 ], [ %depth.1.ph, %lor.lhs.false853 ]
  %next.1.ph.lcssa13524 = phi ptr [ %next.1.ph, %land.lhs.true856 ], [ %next.1.ph, %lor.lhs.false853 ]
  %st.1.ph.lcssa13445 = phi ptr [ %st.1.ph, %land.lhs.true856 ], [ %st.1.ph, %lor.lhs.false853 ]
  %rexi.1.ph.lcssa13370 = phi ptr [ %rexi.1.ph, %land.lhs.true856 ], [ %rexi.1.ph, %lor.lhs.false853 ]
  %rex.1.ph.lcssa13294 = phi ptr [ %rex.1.ph, %land.lhs.true856 ], [ %rex.1.ph, %lor.lhs.false853 ]
  %rex_sv.1.ph.lcssa13217 = phi ptr [ %rex_sv.1.ph, %land.lhs.true856 ], [ %rex_sv.1.ph, %lor.lhs.false853 ]
  %conv744.lcssa13158 = phi i64 [ %conv744, %land.lhs.true856 ], [ %conv744, %lor.lhs.false853 ]
  %minmod.1.lcssa12842.lcssa12982 = phi i8 [ %minmod.1.lcssa12842, %land.lhs.true856 ], [ %minmod.1.lcssa12842, %lor.lhs.false853 ]
  %locinput.1.lcssa12582.lcssa12720 = phi ptr [ %locinput.1.lcssa12582, %land.lhs.true856 ], [ %locinput.1.lcssa12582, %lor.lhs.false853 ]
  %add.ptr861 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12582.lcssa12720, i64 %conv744.lcssa13158
  br label %sw.epilog6360

cleanup863.loopexit:                              ; preds = %if.else779, %if.then771, %lor.lhs.false762, %while.body758
  br label %cleanup863

cleanup863.loopexit12295:                         ; preds = %if.else821, %if.then813, %lor.lhs.false804, %while.body800
  br label %cleanup863

cleanup863:                                       ; preds = %cleanup863.loopexit12295, %cleanup863.loopexit, %land.lhs.true856, %lor.lhs.false849, %if.else842
  %minmod.112952 = phi i8 [ %minmod.1.lcssa12842, %cleanup863.loopexit12295 ], [ %minmod.1.lcssa12842, %cleanup863.loopexit ], [ %minmod.1.lcssa12842, %if.else842 ], [ %minmod.1.lcssa12842, %lor.lhs.false849 ], [ %minmod.1.lcssa12842, %land.lhs.true856 ]
  br label %no_silent

sw.bb867:                                         ; preds = %cond.end42
  %minmod.1.lcssa12844 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12584 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12451 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12345 = phi ptr [ %16, %cond.end42 ]
  br i1 %loadedv, label %do_exactf.thread, label %no_silent

do_exactf.thread:                                 ; preds = %sw.bb867
  %string8789287 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12451, i64 4
  %138 = load i8, ptr %scan.1.lcssa12451, align 2
  %conv8819288 = zext i8 %138 to i64
  %loadedv8859289 = trunc i8 %is_utf8_pat.1.ph to i1
  br label %if.then896

sw.bb871:                                         ; preds = %cond.end42, %cond.end42
  %cond43.lcssa13000 = phi i32 [ %cond43, %cond.end42 ], [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12845 = phi i8 [ %minmod.1, %cond.end42 ], [ %minmod.1, %cond.end42 ]
  %state_num.0.lcssa12738 = phi i32 [ %state_num.0, %cond.end42 ], [ %state_num.0, %cond.end42 ]
  %locinput.1.lcssa12585 = phi ptr [ %locinput.1, %cond.end42 ], [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12452 = phi ptr [ %scan.1, %cond.end42 ], [ %scan.1, %cond.end42 ]
  %.lcssa12346 = phi ptr [ %16, %cond.end42 ], [ %16, %cond.end42 ]
  %loadedv872 = trunc i8 %is_utf8_pat.1.ph to i1
  %cond874 = select i1 %loadedv872, i32 4, i32 0
  br label %do_exactf

sw.bb877:                                         ; preds = %cond.end42
  %cond43.lcssa13002 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12847 = phi i8 [ %minmod.1, %cond.end42 ]
  %state_num.0.lcssa12740 = phi i32 [ %state_num.0, %cond.end42 ]
  %locinput.1.lcssa12587 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12454 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12348 = phi ptr [ %16, %cond.end42 ]
  br label %do_exactf

do_exactf.loopexit:                               ; preds = %cond.end42
  %cond43.lcssa12998 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12843 = phi i8 [ %minmod.1, %cond.end42 ]
  %state_num.0.lcssa12736 = phi i32 [ %state_num.0, %cond.end42 ]
  %locinput.1.lcssa12583 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12450 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12344 = phi ptr [ %16, %cond.end42 ]
  br label %do_exactf

do_exactf.loopexit12304:                          ; preds = %cond.end42, %cond.end42
  %cond43.lcssa13001 = phi i32 [ %cond43, %cond.end42 ], [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12846 = phi i8 [ %minmod.1, %cond.end42 ], [ %minmod.1, %cond.end42 ]
  %state_num.0.lcssa12739 = phi i32 [ %state_num.0, %cond.end42 ], [ %state_num.0, %cond.end42 ]
  %locinput.1.lcssa12586 = phi ptr [ %locinput.1, %cond.end42 ], [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12453 = phi ptr [ %scan.1, %cond.end42 ], [ %scan.1, %cond.end42 ]
  %.lcssa12347 = phi ptr [ %16, %cond.end42 ], [ %16, %cond.end42 ]
  br label %do_exactf

do_exactf:                                        ; preds = %do_exactf.loopexit12304, %do_exactf.loopexit, %sw.bb877, %sw.bb871
  %cond4313091 = phi i32 [ %cond43.lcssa13000, %sw.bb871 ], [ %cond43.lcssa13002, %sw.bb877 ], [ %cond43.lcssa12998, %do_exactf.loopexit ], [ %cond43.lcssa13001, %do_exactf.loopexit12304 ]
  %minmod.112947 = phi i8 [ %minmod.1.lcssa12845, %sw.bb871 ], [ %minmod.1.lcssa12847, %sw.bb877 ], [ %minmod.1.lcssa12843, %do_exactf.loopexit ], [ %minmod.1.lcssa12846, %do_exactf.loopexit12304 ]
  %state_num.012827 = phi i32 [ %state_num.0.lcssa12738, %sw.bb871 ], [ %state_num.0.lcssa12740, %sw.bb877 ], [ %state_num.0.lcssa12736, %do_exactf.loopexit ], [ %state_num.0.lcssa12739, %do_exactf.loopexit12304 ]
  %locinput.112690 = phi ptr [ %locinput.1.lcssa12585, %sw.bb871 ], [ %locinput.1.lcssa12587, %sw.bb877 ], [ %locinput.1.lcssa12583, %do_exactf.loopexit ], [ %locinput.1.lcssa12586, %do_exactf.loopexit12304 ]
  %scan.112544 = phi ptr [ %scan.1.lcssa12452, %sw.bb871 ], [ %scan.1.lcssa12454, %sw.bb877 ], [ %scan.1.lcssa12450, %do_exactf.loopexit ], [ %scan.1.lcssa12453, %do_exactf.loopexit12304 ]
  %139 = phi ptr [ %.lcssa12346, %sw.bb871 ], [ %.lcssa12348, %sw.bb877 ], [ %.lcssa12344, %do_exactf.loopexit ], [ %.lcssa12347, %do_exactf.loopexit12304 ]
  %folder.0 = phi ptr [ @Perl_foldEQ_latin1, %sw.bb871 ], [ @Perl_foldEQ, %sw.bb877 ], [ @Perl_foldEQ_locale, %do_exactf.loopexit ], [ @Perl_foldEQ_latin1, %do_exactf.loopexit12304 ]
  %fold_array.0 = phi ptr [ @PL_fold_latin1, %sw.bb871 ], [ @PL_fold, %sw.bb877 ], [ @PL_fold_locale, %do_exactf.loopexit ], [ @PL_fold_latin1, %do_exactf.loopexit12304 ]
  %fold_utf8_flags.0 = phi i32 [ %cond874, %sw.bb871 ], [ 0, %sw.bb877 ], [ 2, %do_exactf.loopexit ], [ 1, %do_exactf.loopexit12304 ]
  %string878 = getelementptr inbounds nuw i8, ptr %scan.112544, i64 4
  %140 = load i8, ptr %scan.112544, align 2
  %conv881 = zext i8 %140 to i64
  %loadedv885 = trunc i8 %is_utf8_pat.1.ph to i1
  %or.cond6628 = select i1 %loadedv, i1 true, i1 %loadedv885
  %cmp888 = icmp eq i32 %state_num.012827, 37
  %or.cond6629 = select i1 %or.cond6628, i1 true, i1 %cmp888
  br i1 %or.cond6629, label %if.then896, label %lor.lhs.false890

lor.lhs.false890:                                 ; preds = %do_exactf
  %cmp891 = icmp eq i32 %state_num.012827, 34
  %141 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !range !0
  %loadedv894 = trunc nuw i8 %141 to i1
  %or.cond6630 = select i1 %cmp891, i1 %loadedv894, i1 false
  br i1 %or.cond6630, label %if.then896, label %if.end909

if.then896:                                       ; preds = %lor.lhs.false890, %do_exactf, %do_exactf.thread
  %minmod.112946 = phi i8 [ %minmod.1.lcssa12844, %do_exactf.thread ], [ %minmod.112947, %lor.lhs.false890 ], [ %minmod.112947, %do_exactf ]
  %locinput.112689 = phi ptr [ %locinput.1.lcssa12584, %do_exactf.thread ], [ %locinput.112690, %lor.lhs.false890 ], [ %locinput.112690, %do_exactf ]
  %scan.112543 = phi ptr [ %scan.1.lcssa12451, %do_exactf.thread ], [ %scan.112544, %lor.lhs.false890 ], [ %scan.112544, %do_exactf ]
  %142 = phi ptr [ %.lcssa12345, %do_exactf.thread ], [ %139, %lor.lhs.false890 ], [ %139, %do_exactf ]
  %loadedv8859296 = phi i1 [ %loadedv8859289, %do_exactf.thread ], [ %loadedv885, %lor.lhs.false890 ], [ %loadedv885, %do_exactf ]
  %conv8819295 = phi i64 [ %conv8819288, %do_exactf.thread ], [ %conv881, %lor.lhs.false890 ], [ %conv881, %do_exactf ]
  %string8789294 = phi ptr [ %string8789287, %do_exactf.thread ], [ %string878, %lor.lhs.false890 ], [ %string878, %do_exactf ]
  %fold_utf8_flags.09293 = phi i32 [ 22, %do_exactf.thread ], [ %fold_utf8_flags.0, %lor.lhs.false890 ], [ %fold_utf8_flags.0, %do_exactf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %e898) #10
  store ptr %142, ptr %e898, align 8
  %call902 = call i32 @Perl_foldEQ_utf8_flags(ptr noundef nonnull %string8789294, ptr noundef null, i64 noundef %conv8819295, i1 noundef zeroext %loadedv8859296, ptr noundef %locinput.112689, ptr noundef nonnull %e898, i64 noundef 0, i1 noundef zeroext %loadedv, i32 noundef %fold_utf8_flags.09293) #10
  %tobool903.not = icmp eq i32 %call902, 0
  %143 = load ptr, ptr %e898, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %e898) #10
  br i1 %tobool903.not, label %no_silent, label %sw.epilog6360.loopexit12320

if.end909:                                        ; preds = %lor.lhs.false890
  %144 = load i8, ptr %string878, align 1
  %conv910 = zext i8 %144 to i32
  %cmp911 = icmp eq i32 %cond4313091, %conv910
  %cmp914 = icmp slt i32 %cond4313091, 0
  %or.cond6631 = or i1 %cmp914, %cmp911
  br i1 %or.cond6631, label %if.end924, label %land.lhs.true916

land.lhs.true916:                                 ; preds = %if.end909
  %idxprom918 = zext nneg i32 %cond4313091 to i64
  %arrayidx919 = getelementptr inbounds nuw i8, ptr %fold_array.0, i64 %idxprom918
  %145 = load i8, ptr %arrayidx919, align 1
  %cmp921.not = icmp ne i8 %144, %145
  %sub.ptr.lhs.cast926 = ptrtoint ptr %139 to i64
  %sub.ptr.rhs.cast927 = ptrtoint ptr %locinput.112690 to i64
  %sub.ptr.sub928 = sub i64 %sub.ptr.lhs.cast926, %sub.ptr.rhs.cast927
  %cmp929 = icmp slt i64 %sub.ptr.sub928, %conv881
  %or.cond9395 = select i1 %cmp921.not, i1 true, i1 %cmp929
  br i1 %or.cond9395, label %no_silent, label %if.end932

if.end924:                                        ; preds = %if.end909
  %sub.ptr.lhs.cast926.old = ptrtoint ptr %139 to i64
  %sub.ptr.rhs.cast927.old = ptrtoint ptr %locinput.112690 to i64
  %sub.ptr.sub928.old = sub i64 %sub.ptr.lhs.cast926.old, %sub.ptr.rhs.cast927.old
  %cmp929.old = icmp slt i64 %sub.ptr.sub928.old, %conv881
  br i1 %cmp929.old, label %no_silent, label %if.end932

if.end932:                                        ; preds = %if.end924, %land.lhs.true916
  %cmp933 = icmp ugt i8 %140, 1
  br i1 %cmp933, label %land.lhs.true935, label %if.end940

land.lhs.true935:                                 ; preds = %if.end932
  %conv936 = zext i8 %140 to i32
  %call937 = call i32 %folder.0(ptr noundef nonnull %string878, ptr noundef %locinput.112690, i32 noundef %conv936) #10, !callees !12
  %tobool938.not = icmp eq i32 %call937, 0
  br i1 %tobool938.not, label %no_silent, label %if.end940

if.end940:                                        ; preds = %land.lhs.true935, %if.end932
  %last_pushed_cv.0.ph.lcssa14866 = phi ptr [ %last_pushed_cv.0.ph, %land.lhs.true935 ], [ %last_pushed_cv.0.ph, %if.end932 ]
  %caller_cv.0.ph.lcssa14830 = phi ptr [ %caller_cv.0.ph, %land.lhs.true935 ], [ %caller_cv.0.ph, %if.end932 ]
  %multicall_oldcatch.0.ph.lcssa14793 = phi i8 [ %multicall_oldcatch.0.ph, %land.lhs.true935 ], [ %multicall_oldcatch.0.ph, %if.end932 ]
  %multicall_cv.0.ph.lcssa14756 = phi ptr [ %multicall_cv.0.ph, %land.lhs.true935 ], [ %multicall_cv.0.ph, %if.end932 ]
  %last_pad.0.ph.lcssa14720 = phi ptr [ %last_pad.0.ph, %land.lhs.true935 ], [ %last_pad.0.ph, %if.end932 ]
  %sw.0.ph9430.lcssa14672 = phi i1 [ %sw.0.ph9430, %land.lhs.true935 ], [ %sw.0.ph9430, %if.end932 ]
  %match.1.ph.lcssa14594 = phi i8 [ %match.1.ph, %land.lhs.true935 ], [ %match.1.ph, %if.end932 ]
  %is_utf8_pat.1.ph.lcssa14519 = phi i8 [ %is_utf8_pat.1.ph, %land.lhs.true935 ], [ %is_utf8_pat.1.ph, %if.end932 ]
  %logical.1.ph.lcssa14445 = phi i32 [ %logical.1.ph, %land.lhs.true935 ], [ %logical.1.ph, %if.end932 ]
  %sv_yes_mark.1.ph.lcssa14368 = phi ptr [ %sv_yes_mark.1.ph, %land.lhs.true935 ], [ %sv_yes_mark.1.ph, %if.end932 ]
  %sv_commit.1.ph.lcssa14291 = phi ptr [ %sv_commit.1.ph, %land.lhs.true935 ], [ %sv_commit.1.ph, %if.end932 ]
  %popmark.1.ph.lcssa14212 = phi ptr [ %popmark.1.ph, %land.lhs.true935 ], [ %popmark.1.ph, %if.end932 ]
  %do_cutgroup.1.ph.lcssa14134 = phi i8 [ %do_cutgroup.1.ph, %land.lhs.true935 ], [ %do_cutgroup.1.ph, %if.end932 ]
  %no_final.1.ph.lcssa14056 = phi i8 [ %no_final.1.ph, %land.lhs.true935 ], [ %no_final.1.ph, %if.end932 ]
  %cur_curlyx.1.ph.lcssa13980 = phi ptr [ %cur_curlyx.1.ph, %land.lhs.true935 ], [ %cur_curlyx.1.ph, %if.end932 ]
  %cur_eval.1.ph.lcssa13903 = phi ptr [ %cur_eval.1.ph, %land.lhs.true935 ], [ %cur_eval.1.ph, %if.end932 ]
  %mark_state.1.ph.lcssa13826 = phi ptr [ %mark_state.1.ph, %land.lhs.true935 ], [ %mark_state.1.ph, %if.end932 ]
  %yes_state.1.ph.lcssa13748 = phi ptr [ %yes_state.1.ph, %land.lhs.true935 ], [ %yes_state.1.ph, %if.end932 ]
  %nochange_depth.1.ph.lcssa13674 = phi i32 [ %nochange_depth.1.ph, %land.lhs.true935 ], [ %nochange_depth.1.ph, %if.end932 ]
  %depth.1.ph.lcssa13595 = phi i32 [ %depth.1.ph, %land.lhs.true935 ], [ %depth.1.ph, %if.end932 ]
  %next.1.ph.lcssa13521 = phi ptr [ %next.1.ph, %land.lhs.true935 ], [ %next.1.ph, %if.end932 ]
  %st.1.ph.lcssa13442 = phi ptr [ %st.1.ph, %land.lhs.true935 ], [ %st.1.ph, %if.end932 ]
  %rexi.1.ph.lcssa13367 = phi ptr [ %rexi.1.ph, %land.lhs.true935 ], [ %rexi.1.ph, %if.end932 ]
  %rex.1.ph.lcssa13291 = phi ptr [ %rex.1.ph, %land.lhs.true935 ], [ %rex.1.ph, %if.end932 ]
  %rex_sv.1.ph.lcssa13214 = phi ptr [ %rex_sv.1.ph, %land.lhs.true935 ], [ %rex_sv.1.ph, %if.end932 ]
  %conv881.lcssa = phi i64 [ %conv881, %land.lhs.true935 ], [ %conv881, %if.end932 ]
  %minmod.112947.lcssa = phi i8 [ %minmod.112947, %land.lhs.true935 ], [ %minmod.112947, %if.end932 ]
  %locinput.112690.lcssa = phi ptr [ %locinput.112690, %land.lhs.true935 ], [ %locinput.112690, %if.end932 ]
  %add.ptr941 = getelementptr inbounds nuw i8, ptr %locinput.112690.lcssa, i64 %conv881.lcssa
  br label %sw.epilog6360

sw.bb943.loopexit:                                ; preds = %cond.end42
  %cond43.lcssa13004 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12849 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12589 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12456 = phi ptr [ %scan.1, %cond.end42 ]
  br label %sw.bb943

sw.bb943.loopexit12305:                           ; preds = %cond.end42
  %cond43.lcssa13003 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12848 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12588 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12455 = phi ptr [ %scan.1, %cond.end42 ]
  br label %sw.bb943

sw.bb943:                                         ; preds = %sw.bb943.loopexit12305, %sw.bb943.loopexit
  %cond4313095 = phi i32 [ %cond43.lcssa13004, %sw.bb943.loopexit ], [ %cond43.lcssa13003, %sw.bb943.loopexit12305 ]
  %minmod.112945 = phi i8 [ %minmod.1.lcssa12849, %sw.bb943.loopexit ], [ %minmod.1.lcssa12848, %sw.bb943.loopexit12305 ]
  %locinput.112681 = phi ptr [ %locinput.1.lcssa12589, %sw.bb943.loopexit ], [ %locinput.1.lcssa12588, %sw.bb943.loopexit12305 ]
  %scan.112548 = phi ptr [ %scan.1.lcssa12456, %sw.bb943.loopexit ], [ %scan.1.lcssa12455, %sw.bb943.loopexit12305 ]
  %to_complement.0 = phi i32 [ 0, %sw.bb943.loopexit ], [ 1, %sw.bb943.loopexit12305 ]
  %146 = load i8, ptr %scan.112548, align 2
  %cmp946.not = icmp eq i8 %146, 0
  br i1 %cmp946.not, label %if.end952, label %if.then948

if.then948:                                       ; preds = %sw.bb943
  %147 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !range !0, !noundef !1
  %loadedv949 = trunc nuw i8 %147 to i1
  br i1 %loadedv949, label %boundu, label %if.then950

if.then950:                                       ; preds = %if.then948
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 65, ptr noundef nonnull @.str.2) #10
  br label %boundu

if.end952:                                        ; preds = %sw.bb943
  br i1 %loadedv, label %if.then954, label %if.else1152

if.then954:                                       ; preds = %if.end952
  %148 = load ptr, ptr %strbeg955, align 8
  %cmp956 = icmp eq ptr %locinput.112681, %148
  br i1 %cmp956, label %if.then958, label %if.else965

if.then958:                                       ; preds = %if.then954
  %call959 = tail call ptr @__ctype_b_loc() #11
  %149 = load ptr, ptr %call959, align 8
  %arrayidx960 = getelementptr inbounds nuw i8, ptr %149, i64 20
  %150 = load i16, ptr %arrayidx960, align 2
  %151 = lshr i16 %150, 3
  %.lobit8696 = and i16 %151, 1
  %conv964 = zext nneg i16 %.lobit8696 to i64
  br label %if.end1064

if.else965:                                       ; preds = %if.then954
  %lim63.i = ptrtoint ptr %148 to i64
  %cmp551.i = icmp ugt ptr %locinput.112681, %148
  br i1 %cmp551.i, label %while.body8.i.preheader, label %S_reghop3.exit

while.body8.i.preheader:                          ; preds = %if.else965
  br label %while.body8.i

while.body8.i:                                    ; preds = %while.body8.i.preheader
  %s.addr.15264.i = ptrtoint ptr %locinput.112681 to i64
  %incdec.ptr.i = getelementptr inbounds i8, ptr %locinput.112681, i64 -1
  %152 = load i8, ptr %incdec.ptr.i, align 1
  %tobool10.not.i = icmp sgt i8 %152, -1
  br i1 %tobool10.not.i, label %if.end28.i, label %while.cond12.preheader.i

while.cond12.preheader.i:                         ; preds = %while.body8.i
  %cmp1348.i = icmp ugt ptr %incdec.ptr.i, %148
  br i1 %cmp1348.i, label %land.rhs15.preheader.i, label %while.end23thread-pre-split.i

land.rhs15.preheader.i:                           ; preds = %while.cond12.preheader.i
  %scevgep.i = getelementptr i8, ptr %locinput.112681, i64 %lim63.i
  %153 = sub i64 0, %s.addr.15264.i
  %scevgep65.i = getelementptr i8, ptr %scevgep.i, i64 %153
  br label %land.rhs15.i

land.rhs15.i:                                     ; preds = %while.body21.i, %land.rhs15.preheader.i
  %s.addr.249.i = phi ptr [ %incdec.ptr22.i, %while.body21.i ], [ %incdec.ptr.i, %land.rhs15.preheader.i ]
  %154 = load i8, ptr %s.addr.249.i, align 1
  %cmp18.i = icmp slt i8 %154, -64
  br i1 %cmp18.i, label %while.body21.i, label %while.end23.i.loopexit

while.body21.i:                                   ; preds = %land.rhs15.i
  %incdec.ptr22.i = getelementptr inbounds i8, ptr %s.addr.249.i, i64 -1
  %cmp13.i = icmp ugt ptr %incdec.ptr22.i, %148
  br i1 %cmp13.i, label %land.rhs15.i, label %while.end23thread-pre-split.i.loopexit, !llvm.loop !13

while.end23thread-pre-split.i.loopexit:           ; preds = %while.body21.i
  br label %while.end23thread-pre-split.i

while.end23thread-pre-split.i:                    ; preds = %while.end23thread-pre-split.i.loopexit, %while.cond12.preheader.i
  %s.addr.2.lcssa.i = phi ptr [ %incdec.ptr.i, %while.cond12.preheader.i ], [ %scevgep65.i, %while.end23thread-pre-split.i.loopexit ]
  %.pr.i = load i8, ptr %s.addr.2.lcssa.i, align 1
  br label %while.end23.i

while.end23.i.loopexit:                           ; preds = %land.rhs15.i
  %s.addr.249.i.lcssa = phi ptr [ %s.addr.249.i, %land.rhs15.i ]
  %.lcssa13135 = phi i8 [ %154, %land.rhs15.i ]
  br label %while.end23.i

while.end23.i:                                    ; preds = %while.end23.i.loopexit, %while.end23thread-pre-split.i
  %s.addr.247.i = phi ptr [ %s.addr.2.lcssa.i, %while.end23thread-pre-split.i ], [ %s.addr.249.i.lcssa, %while.end23.i.loopexit ]
  %155 = phi i8 [ %.pr.i, %while.end23thread-pre-split.i ], [ %.lcssa13135, %while.end23.i.loopexit ]
  %cmp25.i = icmp ugt i8 %155, -63
  br i1 %cmp25.i, label %if.end28.i, label %if.then27.i

if.then27.i:                                      ; preds = %while.end23.i
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #10
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %while.end23.i, %while.body8.i
  %s.addr.3.i = phi ptr [ %s.addr.247.i, %while.end23.i ], [ %s.addr.247.i, %if.then27.i ], [ %incdec.ptr.i, %while.body8.i ]
  br label %S_reghop3.exit.loopexit

S_reghop3.exit.loopexit:                          ; preds = %if.end28.i
  %s.addr.3.i.lcssa = phi ptr [ %s.addr.3.i, %if.end28.i ]
  br label %S_reghop3.exit

S_reghop3.exit:                                   ; preds = %S_reghop3.exit.loopexit, %if.else965
  %s.addr.4.i = phi ptr [ %locinput.112681, %if.else965 ], [ %s.addr.3.i.lcssa, %S_reghop3.exit.loopexit ]
  %156 = load i8, ptr %s.addr.4.i, align 1
  %cmp969 = icmp sgt i8 %156, -1
  br i1 %cmp969, label %cond.true971, label %cond.false997

cond.true971:                                     ; preds = %S_reghop3.exit
  %157 = load ptr, ptr %strbeg955, align 8
  %call973 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112681, i64 noundef -1, ptr noundef %157)
  %158 = load i8, ptr %call973, align 1
  %159 = icmp sgt i8 %158, -1
  br i1 %159, label %land.rhs978, label %if.end1064

land.rhs978:                                      ; preds = %cond.true971
  %call979 = tail call ptr @__ctype_b_loc() #11
  %160 = load ptr, ptr %call979, align 8
  %161 = load ptr, ptr %strbeg955, align 8
  %call981 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112681, i64 noundef -1, ptr noundef %161)
  %162 = load i8, ptr %call981, align 1
  %idxprom983 = zext i8 %162 to i64
  %arrayidx984 = getelementptr inbounds nuw i16, ptr %160, i64 %idxprom983
  %163 = load i16, ptr %arrayidx984, align 2
  %164 = and i16 %163, 8
  %tobool987.not = icmp eq i16 %164, 0
  br i1 %tobool987.not, label %lor.rhs988, label %if.end1064

lor.rhs988:                                       ; preds = %land.rhs978
  %165 = load ptr, ptr %strbeg955, align 8
  %call990 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112681, i64 noundef -1, ptr noundef %165)
  %166 = load i8, ptr %call990, align 1
  %cmp992 = icmp eq i8 %166, 95
  %167 = zext i1 %cmp992 to i64
  br label %if.end1064

cond.false997:                                    ; preds = %S_reghop3.exit
  %168 = load ptr, ptr %strbeg955, align 8
  %call999 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112681, i64 noundef -1, ptr noundef %168)
  %169 = load i8, ptr %call999, align 1
  %170 = and i8 %169, -2
  %cmp1002 = icmp eq i8 %170, -62
  br i1 %cmp1002, label %cond.true1004, label %cond.false1054

cond.true1004:                                    ; preds = %cond.false997
  %171 = load ptr, ptr %strbeg955, align 8
  %call1006 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112681, i64 noundef -1, ptr noundef %171)
  %172 = load i8, ptr %call1006, align 1
  %173 = and i8 %172, 30
  %174 = load ptr, ptr %strbeg955, align 8
  %call1011 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112681, i64 noundef -1, ptr noundef %174)
  %175 = icmp eq i8 %173, 0
  br i1 %175, label %land.rhs1019, label %if.end1064

land.rhs1019:                                     ; preds = %cond.true1004
  %call1020 = tail call ptr @__ctype_b_loc() #11
  %176 = load ptr, ptr %call1020, align 8
  %177 = load ptr, ptr %strbeg955, align 8
  %call1022 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112681, i64 noundef -1, ptr noundef %177)
  %178 = load i8, ptr %call1022, align 1
  %179 = and i8 %178, 31
  %and1024 = zext nneg i8 %179 to i64
  %180 = load ptr, ptr %strbeg955, align 8
  %call1027 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112681, i64 noundef -1, ptr noundef %180)
  %add.ptr1028 = getelementptr inbounds nuw i8, ptr %call1027, i64 1
  %181 = load i8, ptr %add.ptr1028, align 1
  %182 = and i8 %181, 63
  %and1030 = zext nneg i8 %182 to i64
  %.idx = shl nuw nsw i64 %and1024, 7
  %183 = getelementptr inbounds nuw i8, ptr %176, i64 %.idx
  %arrayidx1033 = getelementptr inbounds nuw i16, ptr %183, i64 %and1030
  %184 = load i16, ptr %arrayidx1033, align 2
  %185 = and i16 %184, 8
  %tobool1036.not = icmp eq i16 %185, 0
  br i1 %tobool1036.not, label %lor.rhs1037, label %if.end1064

lor.rhs1037:                                      ; preds = %land.rhs1019
  %186 = load ptr, ptr %strbeg955, align 8
  %call1039 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112681, i64 noundef -1, ptr noundef %186)
  %187 = load i8, ptr %call1039, align 1
  %188 = and i8 %187, 31
  %and1041 = zext nneg i8 %188 to i32
  %shl1042 = shl nuw nsw i32 %and1041, 6
  %189 = load ptr, ptr %strbeg955, align 8
  %call1044 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112681, i64 noundef -1, ptr noundef %189)
  %add.ptr1045 = getelementptr inbounds nuw i8, ptr %call1044, i64 1
  %190 = load i8, ptr %add.ptr1045, align 1
  %191 = and i8 %190, 63
  %and1047 = zext nneg i8 %191 to i32
  %or1048 = or disjoint i32 %shl1042, %and1047
  %cmp1049 = icmp eq i32 %or1048, 95
  %192 = zext i1 %cmp1049 to i64
  br label %if.end1064

cond.false1054:                                   ; preds = %cond.false997
  %193 = load ptr, ptr %strbeg955, align 8
  %call1056 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112681, i64 noundef -1, ptr noundef %193)
  %call1057 = call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 0, ptr noundef %call1056) #10
  %conv1058 = zext i1 %call1057 to i64
  br label %if.end1064

if.end1064:                                       ; preds = %cond.false1054, %lor.rhs1037, %land.rhs1019, %cond.true1004, %lor.rhs988, %land.rhs978, %cond.true971, %if.then958
  %ln.0 = phi i64 [ %conv964, %if.then958 ], [ %conv1058, %cond.false1054 ], [ 0, %cond.true971 ], [ 1, %land.rhs978 ], [ %167, %lor.rhs988 ], [ 0, %cond.true1004 ], [ 1, %land.rhs1019 ], [ %192, %lor.rhs1037 ]
  %cmp1065 = icmp slt i32 %cond4313095, 0
  br i1 %cmp1065, label %cond.true1067, label %cond.false1076

cond.true1067:                                    ; preds = %if.end1064
  %call1068 = tail call ptr @__ctype_b_loc() #11
  %194 = load ptr, ptr %call1068, align 8
  %arrayidx1069 = getelementptr inbounds nuw i8, ptr %194, i64 20
  %195 = load i16, ptr %arrayidx1069, align 2
  %196 = lshr i16 %195, 3
  %.lobit8697 = and i16 %196, 1
  %land.ext1075 = zext nneg i16 %.lobit8697 to i64
  br label %if.end1221

cond.false1076:                                   ; preds = %if.end1064
  %197 = load i8, ptr %locinput.112681, align 1
  %cmp1078 = icmp sgt i8 %197, -1
  br i1 %cmp1078, label %land.rhs1085, label %cond.false1100

land.rhs1085:                                     ; preds = %cond.false1076
  %call1086 = tail call ptr @__ctype_b_loc() #11
  %198 = load ptr, ptr %call1086, align 8
  %idxprom1088 = zext nneg i8 %197 to i64
  %arrayidx1089 = getelementptr inbounds nuw i16, ptr %198, i64 %idxprom1088
  %199 = load i16, ptr %arrayidx1089, align 2
  %200 = and i16 %199, 8
  %tobool1092.not = icmp ne i16 %200, 0
  %cmp1095 = icmp eq i8 %197, 95
  %narrow = or i1 %cmp1095, %tobool1092.not
  %land.ext1099 = zext i1 %narrow to i64
  br label %if.end1221

cond.false1100:                                   ; preds = %cond.false1076
  %conv1101 = zext i8 %197 to i32
  %and1102 = and i32 %conv1101, 254
  %cmp1103 = icmp eq i32 %and1102, 194
  br i1 %cmp1103, label %cond.true1105, label %cond.false1143

cond.true1105:                                    ; preds = %cond.false1100
  %and1107 = shl nuw nsw i32 %conv1101, 6
  %shl1108 = and i32 %and1107, 192
  %add.ptr1109 = getelementptr inbounds nuw i8, ptr %locinput.112681, i64 1
  %201 = load i8, ptr %add.ptr1109, align 1
  %202 = and i8 %201, 63
  %and1111 = zext nneg i8 %202 to i32
  %or1112 = or disjoint i32 %shl1108, %and1111
  %203 = icmp samesign ult i32 %shl1108, 128
  br i1 %203, label %land.rhs1116, label %if.end1221

land.rhs1116:                                     ; preds = %cond.true1105
  %call1117 = tail call ptr @__ctype_b_loc() #11
  %204 = load ptr, ptr %call1117, align 8
  %idxprom1125 = zext nneg i32 %or1112 to i64
  %arrayidx1126 = getelementptr inbounds nuw i16, ptr %204, i64 %idxprom1125
  %205 = load i16, ptr %arrayidx1126, align 2
  %206 = and i16 %205, 8
  %tobool1129.not = icmp eq i16 %206, 0
  br i1 %tobool1129.not, label %lor.rhs1130, label %if.end1221

lor.rhs1130:                                      ; preds = %land.rhs1116
  %cmp1138 = icmp eq i32 %or1112, 95
  %207 = zext i1 %cmp1138 to i64
  br label %if.end1221

cond.false1143:                                   ; preds = %cond.false1100
  %call1144 = call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 0, ptr noundef nonnull %locinput.112681) #10
  %conv1145 = zext i1 %call1144 to i64
  br label %if.end1221

if.else1152:                                      ; preds = %if.end952
  %208 = load ptr, ptr %strbeg1153, align 8
  %cmp1154 = icmp eq ptr %locinput.112681, %208
  br i1 %cmp1154, label %cond.true1156, label %cond.false1165

cond.true1156:                                    ; preds = %if.else1152
  %call1157 = tail call ptr @__ctype_b_loc() #11
  %209 = load ptr, ptr %call1157, align 8
  %arrayidx1158 = getelementptr inbounds nuw i8, ptr %209, i64 20
  %210 = load i16, ptr %arrayidx1158, align 2
  %211 = lshr i16 %210, 3
  %.lobit = and i16 %211, 1
  %land.ext1164 = zext nneg i16 %.lobit to i64
  br label %cond.end1188

cond.false1165:                                   ; preds = %if.else1152
  %add.ptr1166 = getelementptr inbounds i8, ptr %locinput.112681, i64 -1
  %212 = load i8, ptr %add.ptr1166, align 1
  %213 = icmp sgt i8 %212, -1
  br i1 %213, label %land.rhs1171, label %cond.end1188

land.rhs1171:                                     ; preds = %cond.false1165
  %call1172 = tail call ptr @__ctype_b_loc() #11
  %214 = load ptr, ptr %call1172, align 8
  %idxprom1175 = zext nneg i8 %212 to i64
  %arrayidx1176 = getelementptr inbounds nuw i16, ptr %214, i64 %idxprom1175
  %215 = load i16, ptr %arrayidx1176, align 2
  %216 = and i16 %215, 8
  %tobool1179.not = icmp eq i16 %216, 0
  br i1 %tobool1179.not, label %lor.rhs1180, label %cond.end1188

lor.rhs1180:                                      ; preds = %land.rhs1171
  %cmp1183 = icmp eq i8 %212, 95
  %217 = zext i1 %cmp1183 to i64
  br label %cond.end1188

cond.end1188:                                     ; preds = %lor.rhs1180, %land.rhs1171, %cond.false1165, %cond.true1156
  %cond1189 = phi i64 [ %land.ext1164, %cond.true1156 ], [ 0, %cond.false1165 ], [ 1, %land.rhs1171 ], [ %217, %lor.rhs1180 ]
  %cmp1191 = icmp slt i32 %cond4313095, 0
  br i1 %cmp1191, label %cond.true1193, label %cond.false1202

cond.true1193:                                    ; preds = %cond.end1188
  %call1194 = tail call ptr @__ctype_b_loc() #11
  %218 = load ptr, ptr %call1194, align 8
  %arrayidx1195 = getelementptr inbounds nuw i8, ptr %218, i64 20
  %219 = load i16, ptr %arrayidx1195, align 2
  %220 = lshr i16 %219, 3
  %.lobit8695 = and i16 %220, 1
  %land.ext1201 = zext nneg i16 %.lobit8695 to i64
  br label %if.end1221

cond.false1202:                                   ; preds = %cond.end1188
  %221 = icmp samesign ult i32 %cond4313095, 128
  br i1 %221, label %land.rhs1206, label %if.end1221

land.rhs1206:                                     ; preds = %cond.false1202
  %call1207 = tail call ptr @__ctype_b_loc() #11
  %222 = load ptr, ptr %call1207, align 8
  %idxprom1208 = zext nneg i32 %cond4313095 to i64
  %arrayidx1209 = getelementptr inbounds nuw i16, ptr %222, i64 %idxprom1208
  %223 = load i16, ptr %arrayidx1209, align 2
  %224 = and i16 %223, 8
  %tobool1212 = icmp ne i16 %224, 0
  %cmp1214 = icmp eq i32 %cond4313095, 95
  %225 = select i1 %tobool1212, i1 true, i1 %cmp1214
  %226 = zext i1 %225 to i64
  br label %if.end1221

if.end1221:                                       ; preds = %land.rhs1206, %cond.false1202, %cond.true1193, %cond.false1143, %lor.rhs1130, %land.rhs1116, %cond.true1105, %land.rhs1085, %cond.true1067
  %ln.1 = phi i64 [ %ln.0, %cond.true1105 ], [ %ln.0, %lor.rhs1130 ], [ %ln.0, %land.rhs1116 ], [ %ln.0, %land.rhs1085 ], [ %ln.0, %cond.false1143 ], [ %ln.0, %cond.true1067 ], [ %cond1189, %cond.false1202 ], [ %cond1189, %land.rhs1206 ], [ %cond1189, %cond.true1193 ]
  %n.1 = phi i64 [ 0, %cond.true1105 ], [ %207, %lor.rhs1130 ], [ 1, %land.rhs1116 ], [ %land.ext1099, %land.rhs1085 ], [ %conv1145, %cond.false1143 ], [ %land.ext1075, %cond.true1067 ], [ 0, %cond.false1202 ], [ %226, %land.rhs1206 ], [ %land.ext1201, %cond.true1193 ]
  %cmp1223 = icmp eq i64 %ln.1, %n.1
  %conv1224 = zext i1 %cmp1223 to i32
  %tobool1225.not = icmp eq i32 %to_complement.0, %conv1224
  br i1 %tobool1225.not, label %sw.epilog6360.loopexit12320, label %no_silent

sw.bb1229.loopexit:                               ; preds = %cond.end42
  %cond43.lcssa13006 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12851 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12591 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12458 = phi ptr [ %scan.1, %cond.end42 ]
  br label %sw.bb1229

sw.bb1229.loopexit12306:                          ; preds = %cond.end42
  %cond43.lcssa13005 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12850 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12590 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12457 = phi ptr [ %scan.1, %cond.end42 ]
  br label %sw.bb1229

sw.bb1229:                                        ; preds = %sw.bb1229.loopexit12306, %sw.bb1229.loopexit
  %cond4313093 = phi i32 [ %cond43.lcssa13006, %sw.bb1229.loopexit ], [ %cond43.lcssa13005, %sw.bb1229.loopexit12306 ]
  %minmod.112943 = phi i8 [ %minmod.1.lcssa12851, %sw.bb1229.loopexit ], [ %minmod.1.lcssa12850, %sw.bb1229.loopexit12306 ]
  %locinput.112680 = phi ptr [ %locinput.1.lcssa12591, %sw.bb1229.loopexit ], [ %locinput.1.lcssa12590, %sw.bb1229.loopexit12306 ]
  %scan.112549 = phi ptr [ %scan.1.lcssa12458, %sw.bb1229.loopexit ], [ %scan.1.lcssa12457, %sw.bb1229.loopexit12306 ]
  %to_complement.1 = phi i32 [ 0, %sw.bb1229.loopexit ], [ 1, %sw.bb1229.loopexit12306 ]
  br i1 %loadedv, label %bound_utf8, label %bound_ascii_match_only

bound_ascii_match_only.loopexit:                  ; preds = %cond.end42
  %cond43.lcssa13008 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12853 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12593 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12460 = phi ptr [ %scan.1, %cond.end42 ]
  br label %bound_ascii_match_only

bound_ascii_match_only.loopexit12307:             ; preds = %cond.end42
  %cond43.lcssa13007 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12852 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12592 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12459 = phi ptr [ %scan.1, %cond.end42 ]
  br label %bound_ascii_match_only

bound_ascii_match_only:                           ; preds = %bound_ascii_match_only.loopexit12307, %bound_ascii_match_only.loopexit, %sw.bb1229
  %cond4313096 = phi i32 [ %cond4313093, %sw.bb1229 ], [ %cond43.lcssa13008, %bound_ascii_match_only.loopexit ], [ %cond43.lcssa13007, %bound_ascii_match_only.loopexit12307 ]
  %minmod.112940 = phi i8 [ %minmod.112943, %sw.bb1229 ], [ %minmod.1.lcssa12853, %bound_ascii_match_only.loopexit ], [ %minmod.1.lcssa12852, %bound_ascii_match_only.loopexit12307 ]
  %locinput.112679 = phi ptr [ %locinput.112680, %sw.bb1229 ], [ %locinput.1.lcssa12593, %bound_ascii_match_only.loopexit ], [ %locinput.1.lcssa12592, %bound_ascii_match_only.loopexit12307 ]
  %scan.112550 = phi ptr [ %scan.112549, %sw.bb1229 ], [ %scan.1.lcssa12460, %bound_ascii_match_only.loopexit ], [ %scan.1.lcssa12459, %bound_ascii_match_only.loopexit12307 ]
  %to_complement.2 = phi i32 [ %to_complement.1, %sw.bb1229 ], [ 0, %bound_ascii_match_only.loopexit ], [ 1, %bound_ascii_match_only.loopexit12307 ]
  %227 = load ptr, ptr %strbeg1235, align 8
  %cmp1236 = icmp eq ptr %locinput.112679, %227
  br i1 %cmp1236, label %cond.end1260, label %land.end1258

land.end1258:                                     ; preds = %bound_ascii_match_only
  %add.ptr1244 = getelementptr inbounds i8, ptr %locinput.112679, i64 -1
  %228 = load i8, ptr %add.ptr1244, align 1
  %idxprom1253 = zext i8 %228 to i64
  %arrayidx1254 = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %idxprom1253
  br label %cond.end1260

cond.end1260:                                     ; preds = %land.end1258, %bound_ascii_match_only
  %cond1261.in.in.in.in = phi ptr [ %arrayidx1254, %land.end1258 ], [ getelementptr inbounds nuw (i8, ptr @PL_charclass, i64 40), %bound_ascii_match_only ]
  %cond1261.in.in.in = load i32, ptr %cond1261.in.in.in.in, align 4
  %cond1261.in.in = and i32 %cond1261.in.in.in, 16385
  %cond1261.in = icmp eq i32 %cond1261.in.in, 16385
  %cmp1263 = icmp slt i32 %cond4313096, 0
  %229 = and i32 %cond4313096, 255
  %idxprom1276 = zext nneg i32 %229 to i64
  %arrayidx1277 = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %idxprom1276
  %cond1284.in.in.in.in = select i1 %cmp1263, ptr getelementptr inbounds nuw (i8, ptr @PL_charclass, i64 40), ptr %arrayidx1277
  %cond1284.in.in.in = load i32, ptr %cond1284.in.in.in.in, align 4
  %cond1284.in.in = and i32 %cond1284.in.in.in, 16385
  %230 = icmp ne i32 %cond1284.in.in, 16385
  %cmp1286 = xor i1 %cond1261.in, %230
  %conv1287 = zext i1 %cmp1286 to i32
  %tobool1289.not = icmp eq i32 %to_complement.2, %conv1287
  br i1 %tobool1289.not, label %sw.epilog6360.loopexit12320, label %no_silent

boundu.loopexit:                                  ; preds = %cond.end42
  %cond43.lcssa13010 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12855 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12595 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12462 = phi ptr [ %scan.1, %cond.end42 ]
  br label %boundu

boundu.loopexit12308:                             ; preds = %cond.end42
  %cond43.lcssa13009 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12854 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12594 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12461 = phi ptr [ %scan.1, %cond.end42 ]
  br label %boundu

boundu:                                           ; preds = %boundu.loopexit12308, %boundu.loopexit, %if.then950, %if.then948
  %cond4313094 = phi i32 [ %cond4313095, %if.then948 ], [ %cond4313095, %if.then950 ], [ %cond43.lcssa13010, %boundu.loopexit ], [ %cond43.lcssa13009, %boundu.loopexit12308 ]
  %minmod.112944 = phi i8 [ %minmod.112945, %if.then948 ], [ %minmod.112945, %if.then950 ], [ %minmod.1.lcssa12855, %boundu.loopexit ], [ %minmod.1.lcssa12854, %boundu.loopexit12308 ]
  %locinput.112684 = phi ptr [ %locinput.112681, %if.then948 ], [ %locinput.112681, %if.then950 ], [ %locinput.1.lcssa12595, %boundu.loopexit ], [ %locinput.1.lcssa12594, %boundu.loopexit12308 ]
  %scan.112547 = phi ptr [ %scan.112548, %if.then948 ], [ %scan.112548, %if.then950 ], [ %scan.1.lcssa12462, %boundu.loopexit ], [ %scan.1.lcssa12461, %boundu.loopexit12308 ]
  %to_complement.3 = phi i32 [ %to_complement.0, %if.then948 ], [ %to_complement.0, %if.then950 ], [ 0, %boundu.loopexit ], [ 1, %boundu.loopexit12308 ]
  %231 = load ptr, ptr %strbeg1294, align 8
  %232 = load ptr, ptr %strend, align 8
  %cmp1296.not = icmp ult ptr %231, %232
  br i1 %cmp1296.not, label %if.else1301, label %if.end1678

if.else1301:                                      ; preds = %boundu
  br i1 %loadedv, label %bound_utf8, label %if.else1556

bound_utf8:                                       ; preds = %if.else1301, %sw.bb1229
  %cond4313092 = phi i32 [ %cond4313094, %if.else1301 ], [ %cond4313093, %sw.bb1229 ]
  %minmod.112942 = phi i8 [ %minmod.112944, %if.else1301 ], [ %minmod.112943, %sw.bb1229 ]
  %locinput.112683 = phi ptr [ %locinput.112684, %if.else1301 ], [ %locinput.112680, %sw.bb1229 ]
  %scan.112546 = phi ptr [ %scan.112547, %if.else1301 ], [ %scan.112549, %sw.bb1229 ]
  %to_complement.4 = phi i32 [ %to_complement.3, %if.else1301 ], [ %to_complement.1, %sw.bb1229 ]
  %233 = load i8, ptr %scan.112546, align 2
  switch i8 %233, label %if.end1678 [
    i8 0, label %sw.bb1306
    i8 1, label %sw.bb1441
    i8 2, label %sw.bb1477
    i8 3, label %sw.bb1516
  ]

sw.bb1306:                                        ; preds = %bound_utf8
  %234 = load ptr, ptr %strbeg1307, align 8
  %cmp1308 = icmp eq ptr %locinput.112683, %234
  br i1 %cmp1308, label %cond.end1377, label %cond.false1311

cond.false1311:                                   ; preds = %sw.bb1306
  %lim63.i8761 = ptrtoint ptr %234 to i64
  %cmp551.i8762 = icmp ugt ptr %locinput.112683, %234
  br i1 %cmp551.i8762, label %while.body8.i8764.preheader, label %S_reghop3.exit8793

while.body8.i8764.preheader:                      ; preds = %cond.false1311
  br label %while.body8.i8764

while.body8.i8764:                                ; preds = %while.body8.i8764.preheader
  %s.addr.15264.i8767 = ptrtoint ptr %locinput.112683 to i64
  %incdec.ptr.i8769 = getelementptr inbounds i8, ptr %locinput.112683, i64 -1
  %235 = load i8, ptr %incdec.ptr.i8769, align 1
  %tobool10.not.i8770 = icmp sgt i8 %235, -1
  br i1 %tobool10.not.i8770, label %if.end28.i8780, label %while.cond12.preheader.i8771

while.cond12.preheader.i8771:                     ; preds = %while.body8.i8764
  %cmp1348.i8772 = icmp ugt ptr %incdec.ptr.i8769, %234
  br i1 %cmp1348.i8772, label %land.rhs15.preheader.i8784, label %while.end23thread-pre-split.i8773

land.rhs15.preheader.i8784:                       ; preds = %while.cond12.preheader.i8771
  %scevgep.i8785 = getelementptr i8, ptr %locinput.112683, i64 %lim63.i8761
  %236 = sub i64 0, %s.addr.15264.i8767
  %scevgep65.i8786 = getelementptr i8, ptr %scevgep.i8785, i64 %236
  br label %land.rhs15.i8787

land.rhs15.i8787:                                 ; preds = %while.body21.i8790, %land.rhs15.preheader.i8784
  %s.addr.249.i8788 = phi ptr [ %incdec.ptr22.i8791, %while.body21.i8790 ], [ %incdec.ptr.i8769, %land.rhs15.preheader.i8784 ]
  %237 = load i8, ptr %s.addr.249.i8788, align 1
  %cmp18.i8789 = icmp slt i8 %237, -64
  br i1 %cmp18.i8789, label %while.body21.i8790, label %while.end23.i8776.loopexit

while.body21.i8790:                               ; preds = %land.rhs15.i8787
  %incdec.ptr22.i8791 = getelementptr inbounds i8, ptr %s.addr.249.i8788, i64 -1
  %cmp13.i8792 = icmp ugt ptr %incdec.ptr22.i8791, %234
  br i1 %cmp13.i8792, label %land.rhs15.i8787, label %while.end23thread-pre-split.i8773.loopexit, !llvm.loop !13

while.end23thread-pre-split.i8773.loopexit:       ; preds = %while.body21.i8790
  br label %while.end23thread-pre-split.i8773

while.end23thread-pre-split.i8773:                ; preds = %while.end23thread-pre-split.i8773.loopexit, %while.cond12.preheader.i8771
  %s.addr.2.lcssa.i8774 = phi ptr [ %incdec.ptr.i8769, %while.cond12.preheader.i8771 ], [ %scevgep65.i8786, %while.end23thread-pre-split.i8773.loopexit ]
  %.pr.i8775 = load i8, ptr %s.addr.2.lcssa.i8774, align 1
  br label %while.end23.i8776

while.end23.i8776.loopexit:                       ; preds = %land.rhs15.i8787
  %s.addr.249.i8788.lcssa = phi ptr [ %s.addr.249.i8788, %land.rhs15.i8787 ]
  %.lcssa13132 = phi i8 [ %237, %land.rhs15.i8787 ]
  br label %while.end23.i8776

while.end23.i8776:                                ; preds = %while.end23.i8776.loopexit, %while.end23thread-pre-split.i8773
  %s.addr.247.i8777 = phi ptr [ %s.addr.2.lcssa.i8774, %while.end23thread-pre-split.i8773 ], [ %s.addr.249.i8788.lcssa, %while.end23.i8776.loopexit ]
  %238 = phi i8 [ %.pr.i8775, %while.end23thread-pre-split.i8773 ], [ %.lcssa13132, %while.end23.i8776.loopexit ]
  %cmp25.i8778 = icmp ugt i8 %238, -63
  br i1 %cmp25.i8778, label %if.end28.i8780, label %if.then27.i8779

if.then27.i8779:                                  ; preds = %while.end23.i8776
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #10
  br label %if.end28.i8780

if.end28.i8780:                                   ; preds = %if.then27.i8779, %while.end23.i8776, %while.body8.i8764
  %s.addr.3.i8781 = phi ptr [ %s.addr.247.i8777, %while.end23.i8776 ], [ %s.addr.247.i8777, %if.then27.i8779 ], [ %incdec.ptr.i8769, %while.body8.i8764 ]
  br label %S_reghop3.exit8793.loopexit

S_reghop3.exit8793.loopexit:                      ; preds = %if.end28.i8780
  %s.addr.3.i8781.lcssa = phi ptr [ %s.addr.3.i8781, %if.end28.i8780 ]
  br label %S_reghop3.exit8793

S_reghop3.exit8793:                               ; preds = %S_reghop3.exit8793.loopexit, %cond.false1311
  %s.addr.4.i8763 = phi ptr [ %locinput.112683, %cond.false1311 ], [ %s.addr.3.i8781.lcssa, %S_reghop3.exit8793.loopexit ]
  %239 = load i8, ptr %s.addr.4.i8763, align 1
  %cmp1315 = icmp sgt i8 %239, -1
  br i1 %cmp1315, label %cond.true1317, label %cond.false1326

cond.true1317:                                    ; preds = %S_reghop3.exit8793
  %240 = load ptr, ptr %strbeg1307, align 8
  %call1319 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112683, i64 noundef -1, ptr noundef %240)
  %241 = load i8, ptr %call1319, align 1
  %idxprom1320 = zext i8 %241 to i64
  %arrayidx1321 = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %idxprom1320
  %242 = load i32, ptr %arrayidx1321, align 4
  %and1322 = and i32 %242, 1
  br label %cond.end1377

cond.false1326:                                   ; preds = %S_reghop3.exit8793
  %243 = load ptr, ptr %strbeg1307, align 8
  %call1328 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112683, i64 noundef -1, ptr noundef %243)
  %244 = load i8, ptr %call1328, align 1
  %245 = and i8 %244, -2
  %cmp1331 = icmp eq i8 %245, -62
  br i1 %cmp1331, label %cond.true1333, label %cond.false1368

cond.true1333:                                    ; preds = %cond.false1326
  %246 = load ptr, ptr %strbeg1307, align 8
  %call1335 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112683, i64 noundef -1, ptr noundef %246)
  %247 = load i8, ptr %call1335, align 1
  %248 = and i8 %247, 28
  %249 = load ptr, ptr %strbeg1307, align 8
  %call1340 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112683, i64 noundef -1, ptr noundef %249)
  %tobool1347.not = icmp eq i8 %248, 0
  br i1 %tobool1347.not, label %land.rhs1348, label %cond.end1377

land.rhs1348:                                     ; preds = %cond.true1333
  %250 = load ptr, ptr %strbeg1307, align 8
  %call1350 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112683, i64 noundef -1, ptr noundef %250)
  %251 = load i8, ptr %call1350, align 1
  %shl1353 = shl i8 %251, 6
  %252 = load ptr, ptr %strbeg1307, align 8
  %call1355 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112683, i64 noundef -1, ptr noundef %252)
  %add.ptr1356 = getelementptr inbounds nuw i8, ptr %call1355, i64 1
  %253 = load i8, ptr %add.ptr1356, align 1
  %254 = and i8 %253, 63
  %or1359 = or disjoint i8 %254, %shl1353
  %idxprom1361 = zext i8 %or1359 to i64
  %arrayidx1362 = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %idxprom1361
  %255 = load i32, ptr %arrayidx1362, align 4
  %and1363 = and i32 %255, 1
  br label %cond.end1377

cond.false1368:                                   ; preds = %cond.false1326
  %256 = load ptr, ptr %strbeg1307, align 8
  %call1370 = call fastcc ptr @S_reghop3(ptr noundef %locinput.112683, i64 noundef -1, ptr noundef %256)
  %call1371 = call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 0, ptr noundef %call1370) #10
  %conv1372 = zext i1 %call1371 to i32
  br label %cond.end1377

cond.end1377:                                     ; preds = %cond.false1368, %land.rhs1348, %cond.true1333, %cond.true1317, %sw.bb1306
  %cond1378 = phi i32 [ 0, %sw.bb1306 ], [ %and1322, %cond.true1317 ], [ %conv1372, %cond.false1368 ], [ 0, %cond.true1333 ], [ %and1363, %land.rhs1348 ]
  %cmp1380 = icmp slt i32 %cond4313092, 0
  br i1 %cmp1380, label %cond.end1433, label %cond.false1383

cond.false1383:                                   ; preds = %cond.end1377
  %257 = load i8, ptr %locinput.112683, align 1
  %cmp1385 = icmp sgt i8 %257, -1
  br i1 %cmp1385, label %cond.true1387, label %cond.false1394

cond.true1387:                                    ; preds = %cond.false1383
  %conv1384 = zext nneg i8 %257 to i64
  %arrayidx1389 = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %conv1384
  %258 = load i32, ptr %arrayidx1389, align 4
  %and1390 = and i32 %258, 1
  br label %cond.end1433

cond.false1394:                                   ; preds = %cond.false1383
  %259 = and i8 %257, -2
  %cmp1397 = icmp eq i8 %259, -62
  br i1 %cmp1397, label %land.rhs1410, label %cond.false1426

land.rhs1410:                                     ; preds = %cond.false1394
  %and1401 = shl i8 %257, 6
  %add.ptr1403 = getelementptr inbounds nuw i8, ptr %locinput.112683, i64 1
  %260 = load i8, ptr %add.ptr1403, align 1
  %261 = and i8 %260, 63
  %or1406 = or disjoint i8 %261, %and1401
  %idxprom1419 = zext i8 %or1406 to i64
  %arrayidx1420 = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %idxprom1419
  %262 = load i32, ptr %arrayidx1420, align 4
  %and1421 = and i32 %262, 1
  br label %cond.end1433

cond.false1426:                                   ; preds = %cond.false1394
  %call1427 = call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 0, ptr noundef nonnull %locinput.112683) #10
  %conv1428 = zext i1 %call1427 to i32
  br label %cond.end1433

cond.end1433:                                     ; preds = %cond.false1426, %land.rhs1410, %cond.true1387, %cond.end1377
  %cond1434 = phi i32 [ 0, %cond.end1377 ], [ %and1390, %cond.true1387 ], [ %and1421, %land.rhs1410 ], [ %conv1428, %cond.false1426 ]
  %cmp1436 = icmp ne i32 %cond1378, %cond1434
  %storedv1440 = zext i1 %cmp1436 to i8
  br label %if.end1678

sw.bb1441:                                        ; preds = %bound_utf8
  %263 = load ptr, ptr %strbeg1442, align 8
  %cmp1443 = icmp eq ptr %locinput.112683, %263
  %cmp1446 = icmp slt i32 %cond4313092, 0
  %or.cond6635 = select i1 %cmp1443, i1 true, i1 %cmp1446
  br i1 %or.cond6635, label %if.end1678, label %if.else1449

if.else1449:                                      ; preds = %sw.bb1441
  %264 = load ptr, ptr @PL_GCB_invlist, align 8
  %lim63.i8794 = ptrtoint ptr %263 to i64
  %cmp551.i8795 = icmp ugt ptr %locinput.112683, %263
  br i1 %cmp551.i8795, label %while.body8.i8797.preheader, label %S_reghop3.exit8826

while.body8.i8797.preheader:                      ; preds = %if.else1449
  br label %while.body8.i8797

while.body8.i8797:                                ; preds = %while.body8.i8797.preheader
  %s.addr.15264.i8800 = ptrtoint ptr %locinput.112683 to i64
  %incdec.ptr.i8802 = getelementptr inbounds i8, ptr %locinput.112683, i64 -1
  %265 = load i8, ptr %incdec.ptr.i8802, align 1
  %tobool10.not.i8803 = icmp sgt i8 %265, -1
  br i1 %tobool10.not.i8803, label %if.end28.i8813, label %while.cond12.preheader.i8804

while.cond12.preheader.i8804:                     ; preds = %while.body8.i8797
  %cmp1348.i8805 = icmp ugt ptr %incdec.ptr.i8802, %263
  br i1 %cmp1348.i8805, label %land.rhs15.preheader.i8817, label %while.end23thread-pre-split.i8806

land.rhs15.preheader.i8817:                       ; preds = %while.cond12.preheader.i8804
  %scevgep.i8818 = getelementptr i8, ptr %locinput.112683, i64 %lim63.i8794
  %266 = sub i64 0, %s.addr.15264.i8800
  %scevgep65.i8819 = getelementptr i8, ptr %scevgep.i8818, i64 %266
  br label %land.rhs15.i8820

land.rhs15.i8820:                                 ; preds = %while.body21.i8823, %land.rhs15.preheader.i8817
  %s.addr.249.i8821 = phi ptr [ %incdec.ptr22.i8824, %while.body21.i8823 ], [ %incdec.ptr.i8802, %land.rhs15.preheader.i8817 ]
  %267 = load i8, ptr %s.addr.249.i8821, align 1
  %cmp18.i8822 = icmp slt i8 %267, -64
  br i1 %cmp18.i8822, label %while.body21.i8823, label %while.end23.i8809.loopexit

while.body21.i8823:                               ; preds = %land.rhs15.i8820
  %incdec.ptr22.i8824 = getelementptr inbounds i8, ptr %s.addr.249.i8821, i64 -1
  %cmp13.i8825 = icmp ugt ptr %incdec.ptr22.i8824, %263
  br i1 %cmp13.i8825, label %land.rhs15.i8820, label %while.end23thread-pre-split.i8806.loopexit, !llvm.loop !13

while.end23thread-pre-split.i8806.loopexit:       ; preds = %while.body21.i8823
  br label %while.end23thread-pre-split.i8806

while.end23thread-pre-split.i8806:                ; preds = %while.end23thread-pre-split.i8806.loopexit, %while.cond12.preheader.i8804
  %s.addr.2.lcssa.i8807 = phi ptr [ %incdec.ptr.i8802, %while.cond12.preheader.i8804 ], [ %scevgep65.i8819, %while.end23thread-pre-split.i8806.loopexit ]
  %.pr.i8808 = load i8, ptr %s.addr.2.lcssa.i8807, align 1
  br label %while.end23.i8809

while.end23.i8809.loopexit:                       ; preds = %land.rhs15.i8820
  %s.addr.249.i8821.lcssa = phi ptr [ %s.addr.249.i8821, %land.rhs15.i8820 ]
  %.lcssa13126 = phi i8 [ %267, %land.rhs15.i8820 ]
  br label %while.end23.i8809

while.end23.i8809:                                ; preds = %while.end23.i8809.loopexit, %while.end23thread-pre-split.i8806
  %s.addr.247.i8810 = phi ptr [ %s.addr.2.lcssa.i8807, %while.end23thread-pre-split.i8806 ], [ %s.addr.249.i8821.lcssa, %while.end23.i8809.loopexit ]
  %268 = phi i8 [ %.pr.i8808, %while.end23thread-pre-split.i8806 ], [ %.lcssa13126, %while.end23.i8809.loopexit ]
  %cmp25.i8811 = icmp ugt i8 %268, -63
  br i1 %cmp25.i8811, label %if.end28.i8813, label %if.then27.i8812

if.then27.i8812:                                  ; preds = %while.end23.i8809
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #10
  br label %if.end28.i8813

if.end28.i8813:                                   ; preds = %if.then27.i8812, %while.end23.i8809, %while.body8.i8797
  %s.addr.3.i8814 = phi ptr [ %s.addr.247.i8810, %while.end23.i8809 ], [ %s.addr.247.i8810, %if.then27.i8812 ], [ %incdec.ptr.i8802, %while.body8.i8797 ]
  br label %S_reghop3.exit8826.loopexit

S_reghop3.exit8826.loopexit:                      ; preds = %if.end28.i8813
  %s.addr.3.i8814.lcssa = phi ptr [ %s.addr.3.i8814, %if.end28.i8813 ]
  br label %S_reghop3.exit8826

S_reghop3.exit8826:                               ; preds = %S_reghop3.exit8826.loopexit, %if.else1449
  %s.addr.4.i8796 = phi ptr [ %locinput.112683, %if.else1449 ], [ %s.addr.3.i8814.lcssa, %S_reghop3.exit8826.loopexit ]
  %269 = load ptr, ptr %strend, align 8
  %270 = load ptr, ptr %strbeg1442, align 8
  %lim63.i8827 = ptrtoint ptr %270 to i64
  %cmp551.i8828 = icmp ugt ptr %locinput.112683, %270
  br i1 %cmp551.i8828, label %while.body8.i8830.preheader, label %S_reghop3.exit8859

while.body8.i8830.preheader:                      ; preds = %S_reghop3.exit8826
  br label %while.body8.i8830

while.body8.i8830:                                ; preds = %while.body8.i8830.preheader
  %s.addr.15264.i8833 = ptrtoint ptr %locinput.112683 to i64
  %incdec.ptr.i8835 = getelementptr inbounds i8, ptr %locinput.112683, i64 -1
  %271 = load i8, ptr %incdec.ptr.i8835, align 1
  %tobool10.not.i8836 = icmp sgt i8 %271, -1
  br i1 %tobool10.not.i8836, label %if.end28.i8846, label %while.cond12.preheader.i8837

while.cond12.preheader.i8837:                     ; preds = %while.body8.i8830
  %cmp1348.i8838 = icmp ugt ptr %incdec.ptr.i8835, %270
  br i1 %cmp1348.i8838, label %land.rhs15.preheader.i8850, label %while.end23thread-pre-split.i8839

land.rhs15.preheader.i8850:                       ; preds = %while.cond12.preheader.i8837
  %scevgep.i8851 = getelementptr i8, ptr %locinput.112683, i64 %lim63.i8827
  %272 = sub i64 0, %s.addr.15264.i8833
  %scevgep65.i8852 = getelementptr i8, ptr %scevgep.i8851, i64 %272
  br label %land.rhs15.i8853

land.rhs15.i8853:                                 ; preds = %while.body21.i8856, %land.rhs15.preheader.i8850
  %s.addr.249.i8854 = phi ptr [ %incdec.ptr22.i8857, %while.body21.i8856 ], [ %incdec.ptr.i8835, %land.rhs15.preheader.i8850 ]
  %273 = load i8, ptr %s.addr.249.i8854, align 1
  %cmp18.i8855 = icmp slt i8 %273, -64
  br i1 %cmp18.i8855, label %while.body21.i8856, label %while.end23.i8842.loopexit

while.body21.i8856:                               ; preds = %land.rhs15.i8853
  %incdec.ptr22.i8857 = getelementptr inbounds i8, ptr %s.addr.249.i8854, i64 -1
  %cmp13.i8858 = icmp ugt ptr %incdec.ptr22.i8857, %270
  br i1 %cmp13.i8858, label %land.rhs15.i8853, label %while.end23thread-pre-split.i8839.loopexit, !llvm.loop !13

while.end23thread-pre-split.i8839.loopexit:       ; preds = %while.body21.i8856
  br label %while.end23thread-pre-split.i8839

while.end23thread-pre-split.i8839:                ; preds = %while.end23thread-pre-split.i8839.loopexit, %while.cond12.preheader.i8837
  %s.addr.2.lcssa.i8840 = phi ptr [ %incdec.ptr.i8835, %while.cond12.preheader.i8837 ], [ %scevgep65.i8852, %while.end23thread-pre-split.i8839.loopexit ]
  %.pr.i8841 = load i8, ptr %s.addr.2.lcssa.i8840, align 1
  br label %while.end23.i8842

while.end23.i8842.loopexit:                       ; preds = %land.rhs15.i8853
  %s.addr.249.i8854.lcssa = phi ptr [ %s.addr.249.i8854, %land.rhs15.i8853 ]
  %.lcssa13129 = phi i8 [ %273, %land.rhs15.i8853 ]
  br label %while.end23.i8842

while.end23.i8842:                                ; preds = %while.end23.i8842.loopexit, %while.end23thread-pre-split.i8839
  %s.addr.247.i8843 = phi ptr [ %s.addr.2.lcssa.i8840, %while.end23thread-pre-split.i8839 ], [ %s.addr.249.i8854.lcssa, %while.end23.i8842.loopexit ]
  %274 = phi i8 [ %.pr.i8841, %while.end23thread-pre-split.i8839 ], [ %.lcssa13129, %while.end23.i8842.loopexit ]
  %cmp25.i8844 = icmp ugt i8 %274, -63
  br i1 %cmp25.i8844, label %if.end28.i8846, label %if.then27.i8845

if.then27.i8845:                                  ; preds = %while.end23.i8842
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #10
  br label %if.end28.i8846

if.end28.i8846:                                   ; preds = %if.then27.i8845, %while.end23.i8842, %while.body8.i8830
  %s.addr.3.i8847 = phi ptr [ %s.addr.247.i8843, %while.end23.i8842 ], [ %s.addr.247.i8843, %if.then27.i8845 ], [ %incdec.ptr.i8835, %while.body8.i8830 ]
  br label %S_reghop3.exit8859.loopexit

S_reghop3.exit8859.loopexit:                      ; preds = %if.end28.i8846
  %s.addr.3.i8847.lcssa = phi ptr [ %s.addr.3.i8847, %if.end28.i8846 ]
  br label %S_reghop3.exit8859

S_reghop3.exit8859:                               ; preds = %S_reghop3.exit8859.loopexit, %S_reghop3.exit8826
  %s.addr.4.i8829 = phi ptr [ %locinput.112683, %S_reghop3.exit8826 ], [ %s.addr.3.i8847.lcssa, %S_reghop3.exit8859.loopexit ]
  %sub.ptr.lhs.cast1455 = ptrtoint ptr %269 to i64
  %sub.ptr.rhs.cast1456 = ptrtoint ptr %s.addr.4.i8829 to i64
  %sub.ptr.sub1457 = sub i64 %sub.ptr.lhs.cast1455, %sub.ptr.rhs.cast1456
  %call1458 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #10
  %cond1460 = select i1 %call1458, i32 0, i32 -8161
  %call1461 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %s.addr.4.i8796, i64 noundef %sub.ptr.sub1457, ptr noundef null, i32 noundef %cond1460) #10
  %call1462 = call i64 @Perl__invlist_search(ptr noundef %264, i64 noundef %call1461) #10
  %arrayidx1463 = getelementptr inbounds i32, ptr @Grapheme_Cluster_Break_invmap, i64 %call1462
  %275 = load i32, ptr %arrayidx1463, align 4
  %276 = load ptr, ptr @PL_GCB_invlist, align 8
  %277 = load ptr, ptr %strend, align 8
  %sub.ptr.lhs.cast1465 = ptrtoint ptr %277 to i64
  %sub.ptr.rhs.cast1466 = ptrtoint ptr %locinput.112683 to i64
  %sub.ptr.sub1467 = sub i64 %sub.ptr.lhs.cast1465, %sub.ptr.rhs.cast1466
  %call1468 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #10
  %cond1470 = select i1 %call1468, i32 0, i32 -8161
  %call1471 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %locinput.112683, i64 noundef %sub.ptr.sub1467, ptr noundef null, i32 noundef %cond1470) #10
  %call1472 = call i64 @Perl__invlist_search(ptr noundef %276, i64 noundef %call1471) #10
  %arrayidx1473 = getelementptr inbounds i32, ptr @Grapheme_Cluster_Break_invmap, i64 %call1472
  %278 = load i32, ptr %arrayidx1473, align 4
  %call1474 = call fastcc zeroext i1 @S_isGCB(i32 noundef %275, i32 noundef %278)
  %storedv1475 = zext i1 %call1474 to i8
  br label %if.end1678

sw.bb1477:                                        ; preds = %bound_utf8
  %279 = load ptr, ptr %strbeg1478, align 8
  %cmp1479 = icmp eq ptr %locinput.112683, %279
  %cmp1482 = icmp slt i32 %cond4313092, 0
  %or.cond6636 = select i1 %cmp1479, i1 true, i1 %cmp1482
  br i1 %or.cond6636, label %if.end1678, label %if.else1485

if.else1485:                                      ; preds = %sw.bb1477
  %280 = load ptr, ptr @PL_SB_invlist, align 8
  %lim63.i8860 = ptrtoint ptr %279 to i64
  %cmp551.i8861 = icmp ugt ptr %locinput.112683, %279
  br i1 %cmp551.i8861, label %while.body8.i8863.preheader, label %S_reghop3.exit8892

while.body8.i8863.preheader:                      ; preds = %if.else1485
  br label %while.body8.i8863

while.body8.i8863:                                ; preds = %while.body8.i8863.preheader
  %s.addr.15264.i8866 = ptrtoint ptr %locinput.112683 to i64
  %incdec.ptr.i8868 = getelementptr inbounds i8, ptr %locinput.112683, i64 -1
  %281 = load i8, ptr %incdec.ptr.i8868, align 1
  %tobool10.not.i8869 = icmp sgt i8 %281, -1
  br i1 %tobool10.not.i8869, label %if.end28.i8879, label %while.cond12.preheader.i8870

while.cond12.preheader.i8870:                     ; preds = %while.body8.i8863
  %cmp1348.i8871 = icmp ugt ptr %incdec.ptr.i8868, %279
  br i1 %cmp1348.i8871, label %land.rhs15.preheader.i8883, label %while.end23thread-pre-split.i8872

land.rhs15.preheader.i8883:                       ; preds = %while.cond12.preheader.i8870
  %scevgep.i8884 = getelementptr i8, ptr %locinput.112683, i64 %lim63.i8860
  %282 = sub i64 0, %s.addr.15264.i8866
  %scevgep65.i8885 = getelementptr i8, ptr %scevgep.i8884, i64 %282
  br label %land.rhs15.i8886

land.rhs15.i8886:                                 ; preds = %while.body21.i8889, %land.rhs15.preheader.i8883
  %s.addr.249.i8887 = phi ptr [ %incdec.ptr22.i8890, %while.body21.i8889 ], [ %incdec.ptr.i8868, %land.rhs15.preheader.i8883 ]
  %283 = load i8, ptr %s.addr.249.i8887, align 1
  %cmp18.i8888 = icmp slt i8 %283, -64
  br i1 %cmp18.i8888, label %while.body21.i8889, label %while.end23.i8875.loopexit

while.body21.i8889:                               ; preds = %land.rhs15.i8886
  %incdec.ptr22.i8890 = getelementptr inbounds i8, ptr %s.addr.249.i8887, i64 -1
  %cmp13.i8891 = icmp ugt ptr %incdec.ptr22.i8890, %279
  br i1 %cmp13.i8891, label %land.rhs15.i8886, label %while.end23thread-pre-split.i8872.loopexit, !llvm.loop !13

while.end23thread-pre-split.i8872.loopexit:       ; preds = %while.body21.i8889
  br label %while.end23thread-pre-split.i8872

while.end23thread-pre-split.i8872:                ; preds = %while.end23thread-pre-split.i8872.loopexit, %while.cond12.preheader.i8870
  %s.addr.2.lcssa.i8873 = phi ptr [ %incdec.ptr.i8868, %while.cond12.preheader.i8870 ], [ %scevgep65.i8885, %while.end23thread-pre-split.i8872.loopexit ]
  %.pr.i8874 = load i8, ptr %s.addr.2.lcssa.i8873, align 1
  br label %while.end23.i8875

while.end23.i8875.loopexit:                       ; preds = %land.rhs15.i8886
  %s.addr.249.i8887.lcssa = phi ptr [ %s.addr.249.i8887, %land.rhs15.i8886 ]
  %.lcssa13120 = phi i8 [ %283, %land.rhs15.i8886 ]
  br label %while.end23.i8875

while.end23.i8875:                                ; preds = %while.end23.i8875.loopexit, %while.end23thread-pre-split.i8872
  %s.addr.247.i8876 = phi ptr [ %s.addr.2.lcssa.i8873, %while.end23thread-pre-split.i8872 ], [ %s.addr.249.i8887.lcssa, %while.end23.i8875.loopexit ]
  %284 = phi i8 [ %.pr.i8874, %while.end23thread-pre-split.i8872 ], [ %.lcssa13120, %while.end23.i8875.loopexit ]
  %cmp25.i8877 = icmp ugt i8 %284, -63
  br i1 %cmp25.i8877, label %if.end28.i8879, label %if.then27.i8878

if.then27.i8878:                                  ; preds = %while.end23.i8875
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #10
  br label %if.end28.i8879

if.end28.i8879:                                   ; preds = %if.then27.i8878, %while.end23.i8875, %while.body8.i8863
  %s.addr.3.i8880 = phi ptr [ %s.addr.247.i8876, %while.end23.i8875 ], [ %s.addr.247.i8876, %if.then27.i8878 ], [ %incdec.ptr.i8868, %while.body8.i8863 ]
  br label %S_reghop3.exit8892.loopexit

S_reghop3.exit8892.loopexit:                      ; preds = %if.end28.i8879
  %s.addr.3.i8880.lcssa = phi ptr [ %s.addr.3.i8880, %if.end28.i8879 ]
  br label %S_reghop3.exit8892

S_reghop3.exit8892:                               ; preds = %S_reghop3.exit8892.loopexit, %if.else1485
  %s.addr.4.i8862 = phi ptr [ %locinput.112683, %if.else1485 ], [ %s.addr.3.i8880.lcssa, %S_reghop3.exit8892.loopexit ]
  %285 = load ptr, ptr %strend, align 8
  %286 = load ptr, ptr %strbeg1478, align 8
  %lim63.i8893 = ptrtoint ptr %286 to i64
  %cmp551.i8894 = icmp ugt ptr %locinput.112683, %286
  br i1 %cmp551.i8894, label %while.body8.i8896.preheader, label %S_reghop3.exit8925

while.body8.i8896.preheader:                      ; preds = %S_reghop3.exit8892
  br label %while.body8.i8896

while.body8.i8896:                                ; preds = %while.body8.i8896.preheader
  %s.addr.15264.i8899 = ptrtoint ptr %locinput.112683 to i64
  %incdec.ptr.i8901 = getelementptr inbounds i8, ptr %locinput.112683, i64 -1
  %287 = load i8, ptr %incdec.ptr.i8901, align 1
  %tobool10.not.i8902 = icmp sgt i8 %287, -1
  br i1 %tobool10.not.i8902, label %if.end28.i8912, label %while.cond12.preheader.i8903

while.cond12.preheader.i8903:                     ; preds = %while.body8.i8896
  %cmp1348.i8904 = icmp ugt ptr %incdec.ptr.i8901, %286
  br i1 %cmp1348.i8904, label %land.rhs15.preheader.i8916, label %while.end23thread-pre-split.i8905

land.rhs15.preheader.i8916:                       ; preds = %while.cond12.preheader.i8903
  %scevgep.i8917 = getelementptr i8, ptr %locinput.112683, i64 %lim63.i8893
  %288 = sub i64 0, %s.addr.15264.i8899
  %scevgep65.i8918 = getelementptr i8, ptr %scevgep.i8917, i64 %288
  br label %land.rhs15.i8919

land.rhs15.i8919:                                 ; preds = %while.body21.i8922, %land.rhs15.preheader.i8916
  %s.addr.249.i8920 = phi ptr [ %incdec.ptr22.i8923, %while.body21.i8922 ], [ %incdec.ptr.i8901, %land.rhs15.preheader.i8916 ]
  %289 = load i8, ptr %s.addr.249.i8920, align 1
  %cmp18.i8921 = icmp slt i8 %289, -64
  br i1 %cmp18.i8921, label %while.body21.i8922, label %while.end23.i8908.loopexit

while.body21.i8922:                               ; preds = %land.rhs15.i8919
  %incdec.ptr22.i8923 = getelementptr inbounds i8, ptr %s.addr.249.i8920, i64 -1
  %cmp13.i8924 = icmp ugt ptr %incdec.ptr22.i8923, %286
  br i1 %cmp13.i8924, label %land.rhs15.i8919, label %while.end23thread-pre-split.i8905.loopexit, !llvm.loop !13

while.end23thread-pre-split.i8905.loopexit:       ; preds = %while.body21.i8922
  br label %while.end23thread-pre-split.i8905

while.end23thread-pre-split.i8905:                ; preds = %while.end23thread-pre-split.i8905.loopexit, %while.cond12.preheader.i8903
  %s.addr.2.lcssa.i8906 = phi ptr [ %incdec.ptr.i8901, %while.cond12.preheader.i8903 ], [ %scevgep65.i8918, %while.end23thread-pre-split.i8905.loopexit ]
  %.pr.i8907 = load i8, ptr %s.addr.2.lcssa.i8906, align 1
  br label %while.end23.i8908

while.end23.i8908.loopexit:                       ; preds = %land.rhs15.i8919
  %s.addr.249.i8920.lcssa = phi ptr [ %s.addr.249.i8920, %land.rhs15.i8919 ]
  %.lcssa13123 = phi i8 [ %289, %land.rhs15.i8919 ]
  br label %while.end23.i8908

while.end23.i8908:                                ; preds = %while.end23.i8908.loopexit, %while.end23thread-pre-split.i8905
  %s.addr.247.i8909 = phi ptr [ %s.addr.2.lcssa.i8906, %while.end23thread-pre-split.i8905 ], [ %s.addr.249.i8920.lcssa, %while.end23.i8908.loopexit ]
  %290 = phi i8 [ %.pr.i8907, %while.end23thread-pre-split.i8905 ], [ %.lcssa13123, %while.end23.i8908.loopexit ]
  %cmp25.i8910 = icmp ugt i8 %290, -63
  br i1 %cmp25.i8910, label %if.end28.i8912, label %if.then27.i8911

if.then27.i8911:                                  ; preds = %while.end23.i8908
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #10
  br label %if.end28.i8912

if.end28.i8912:                                   ; preds = %if.then27.i8911, %while.end23.i8908, %while.body8.i8896
  %s.addr.3.i8913 = phi ptr [ %s.addr.247.i8909, %while.end23.i8908 ], [ %s.addr.247.i8909, %if.then27.i8911 ], [ %incdec.ptr.i8901, %while.body8.i8896 ]
  br label %S_reghop3.exit8925.loopexit

S_reghop3.exit8925.loopexit:                      ; preds = %if.end28.i8912
  %s.addr.3.i8913.lcssa = phi ptr [ %s.addr.3.i8913, %if.end28.i8912 ]
  br label %S_reghop3.exit8925

S_reghop3.exit8925:                               ; preds = %S_reghop3.exit8925.loopexit, %S_reghop3.exit8892
  %s.addr.4.i8895 = phi ptr [ %locinput.112683, %S_reghop3.exit8892 ], [ %s.addr.3.i8913.lcssa, %S_reghop3.exit8925.loopexit ]
  %sub.ptr.lhs.cast1491 = ptrtoint ptr %285 to i64
  %sub.ptr.rhs.cast1492 = ptrtoint ptr %s.addr.4.i8895 to i64
  %sub.ptr.sub1493 = sub i64 %sub.ptr.lhs.cast1491, %sub.ptr.rhs.cast1492
  %call1494 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #10
  %cond1496 = select i1 %call1494, i32 0, i32 -8161
  %call1497 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %s.addr.4.i8862, i64 noundef %sub.ptr.sub1493, ptr noundef null, i32 noundef %cond1496) #10
  %call1498 = call i64 @Perl__invlist_search(ptr noundef %280, i64 noundef %call1497) #10
  %arrayidx1499 = getelementptr inbounds i32, ptr @Sentence_Break_invmap, i64 %call1498
  %291 = load i32, ptr %arrayidx1499, align 4
  %292 = load ptr, ptr @PL_SB_invlist, align 8
  %293 = load ptr, ptr %strend, align 8
  %sub.ptr.lhs.cast1501 = ptrtoint ptr %293 to i64
  %sub.ptr.rhs.cast1502 = ptrtoint ptr %locinput.112683 to i64
  %sub.ptr.sub1503 = sub i64 %sub.ptr.lhs.cast1501, %sub.ptr.rhs.cast1502
  %call1504 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #10
  %cond1506 = select i1 %call1504, i32 0, i32 -8161
  %call1507 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %locinput.112683, i64 noundef %sub.ptr.sub1503, ptr noundef null, i32 noundef %cond1506) #10
  %call1508 = call i64 @Perl__invlist_search(ptr noundef %292, i64 noundef %call1507) #10
  %arrayidx1509 = getelementptr inbounds i32, ptr @Sentence_Break_invmap, i64 %call1508
  %294 = load i32, ptr %arrayidx1509, align 4
  %295 = load ptr, ptr %strbeg1478, align 8
  %296 = load ptr, ptr %strend, align 8
  %call1513 = call fastcc zeroext i1 @S_isSB(i32 noundef %291, i32 noundef %294, ptr noundef %295, ptr noundef %locinput.112683, ptr noundef %296, i1 noundef zeroext %loadedv)
  %storedv1514 = zext i1 %call1513 to i8
  br label %if.end1678

sw.bb1516:                                        ; preds = %bound_utf8
  %297 = load ptr, ptr %strbeg1517, align 8
  %cmp1518 = icmp eq ptr %locinput.112683, %297
  %cmp1521 = icmp slt i32 %cond4313092, 0
  %or.cond6637 = select i1 %cmp1518, i1 true, i1 %cmp1521
  br i1 %or.cond6637, label %if.end1678, label %if.else1524

if.else1524:                                      ; preds = %sw.bb1516
  %298 = load ptr, ptr @PL_WB_invlist, align 8
  %lim63.i8926 = ptrtoint ptr %297 to i64
  %cmp551.i8927 = icmp ugt ptr %locinput.112683, %297
  br i1 %cmp551.i8927, label %while.body8.i8929.preheader, label %S_reghop3.exit8958

while.body8.i8929.preheader:                      ; preds = %if.else1524
  br label %while.body8.i8929

while.body8.i8929:                                ; preds = %while.body8.i8929.preheader
  %s.addr.15264.i8932 = ptrtoint ptr %locinput.112683 to i64
  %incdec.ptr.i8934 = getelementptr inbounds i8, ptr %locinput.112683, i64 -1
  %299 = load i8, ptr %incdec.ptr.i8934, align 1
  %tobool10.not.i8935 = icmp sgt i8 %299, -1
  br i1 %tobool10.not.i8935, label %if.end28.i8945, label %while.cond12.preheader.i8936

while.cond12.preheader.i8936:                     ; preds = %while.body8.i8929
  %cmp1348.i8937 = icmp ugt ptr %incdec.ptr.i8934, %297
  br i1 %cmp1348.i8937, label %land.rhs15.preheader.i8949, label %while.end23thread-pre-split.i8938

land.rhs15.preheader.i8949:                       ; preds = %while.cond12.preheader.i8936
  %scevgep.i8950 = getelementptr i8, ptr %locinput.112683, i64 %lim63.i8926
  %300 = sub i64 0, %s.addr.15264.i8932
  %scevgep65.i8951 = getelementptr i8, ptr %scevgep.i8950, i64 %300
  br label %land.rhs15.i8952

land.rhs15.i8952:                                 ; preds = %while.body21.i8955, %land.rhs15.preheader.i8949
  %s.addr.249.i8953 = phi ptr [ %incdec.ptr22.i8956, %while.body21.i8955 ], [ %incdec.ptr.i8934, %land.rhs15.preheader.i8949 ]
  %301 = load i8, ptr %s.addr.249.i8953, align 1
  %cmp18.i8954 = icmp slt i8 %301, -64
  br i1 %cmp18.i8954, label %while.body21.i8955, label %while.end23.i8941.loopexit

while.body21.i8955:                               ; preds = %land.rhs15.i8952
  %incdec.ptr22.i8956 = getelementptr inbounds i8, ptr %s.addr.249.i8953, i64 -1
  %cmp13.i8957 = icmp ugt ptr %incdec.ptr22.i8956, %297
  br i1 %cmp13.i8957, label %land.rhs15.i8952, label %while.end23thread-pre-split.i8938.loopexit, !llvm.loop !13

while.end23thread-pre-split.i8938.loopexit:       ; preds = %while.body21.i8955
  br label %while.end23thread-pre-split.i8938

while.end23thread-pre-split.i8938:                ; preds = %while.end23thread-pre-split.i8938.loopexit, %while.cond12.preheader.i8936
  %s.addr.2.lcssa.i8939 = phi ptr [ %incdec.ptr.i8934, %while.cond12.preheader.i8936 ], [ %scevgep65.i8951, %while.end23thread-pre-split.i8938.loopexit ]
  %.pr.i8940 = load i8, ptr %s.addr.2.lcssa.i8939, align 1
  br label %while.end23.i8941

while.end23.i8941.loopexit:                       ; preds = %land.rhs15.i8952
  %s.addr.249.i8953.lcssa = phi ptr [ %s.addr.249.i8953, %land.rhs15.i8952 ]
  %.lcssa13114 = phi i8 [ %301, %land.rhs15.i8952 ]
  br label %while.end23.i8941

while.end23.i8941:                                ; preds = %while.end23.i8941.loopexit, %while.end23thread-pre-split.i8938
  %s.addr.247.i8942 = phi ptr [ %s.addr.2.lcssa.i8939, %while.end23thread-pre-split.i8938 ], [ %s.addr.249.i8953.lcssa, %while.end23.i8941.loopexit ]
  %302 = phi i8 [ %.pr.i8940, %while.end23thread-pre-split.i8938 ], [ %.lcssa13114, %while.end23.i8941.loopexit ]
  %cmp25.i8943 = icmp ugt i8 %302, -63
  br i1 %cmp25.i8943, label %if.end28.i8945, label %if.then27.i8944

if.then27.i8944:                                  ; preds = %while.end23.i8941
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #10
  br label %if.end28.i8945

if.end28.i8945:                                   ; preds = %if.then27.i8944, %while.end23.i8941, %while.body8.i8929
  %s.addr.3.i8946 = phi ptr [ %s.addr.247.i8942, %while.end23.i8941 ], [ %s.addr.247.i8942, %if.then27.i8944 ], [ %incdec.ptr.i8934, %while.body8.i8929 ]
  br label %S_reghop3.exit8958.loopexit

S_reghop3.exit8958.loopexit:                      ; preds = %if.end28.i8945
  %s.addr.3.i8946.lcssa = phi ptr [ %s.addr.3.i8946, %if.end28.i8945 ]
  br label %S_reghop3.exit8958

S_reghop3.exit8958:                               ; preds = %S_reghop3.exit8958.loopexit, %if.else1524
  %s.addr.4.i8928 = phi ptr [ %locinput.112683, %if.else1524 ], [ %s.addr.3.i8946.lcssa, %S_reghop3.exit8958.loopexit ]
  %303 = load ptr, ptr %strend, align 8
  %304 = load ptr, ptr %strbeg1517, align 8
  %lim63.i8959 = ptrtoint ptr %304 to i64
  %cmp551.i8960 = icmp ugt ptr %locinput.112683, %304
  br i1 %cmp551.i8960, label %while.body8.i8962.preheader, label %S_reghop3.exit8991

while.body8.i8962.preheader:                      ; preds = %S_reghop3.exit8958
  br label %while.body8.i8962

while.body8.i8962:                                ; preds = %while.body8.i8962.preheader
  %s.addr.15264.i8965 = ptrtoint ptr %locinput.112683 to i64
  %incdec.ptr.i8967 = getelementptr inbounds i8, ptr %locinput.112683, i64 -1
  %305 = load i8, ptr %incdec.ptr.i8967, align 1
  %tobool10.not.i8968 = icmp sgt i8 %305, -1
  br i1 %tobool10.not.i8968, label %if.end28.i8978, label %while.cond12.preheader.i8969

while.cond12.preheader.i8969:                     ; preds = %while.body8.i8962
  %cmp1348.i8970 = icmp ugt ptr %incdec.ptr.i8967, %304
  br i1 %cmp1348.i8970, label %land.rhs15.preheader.i8982, label %while.end23thread-pre-split.i8971

land.rhs15.preheader.i8982:                       ; preds = %while.cond12.preheader.i8969
  %scevgep.i8983 = getelementptr i8, ptr %locinput.112683, i64 %lim63.i8959
  %306 = sub i64 0, %s.addr.15264.i8965
  %scevgep65.i8984 = getelementptr i8, ptr %scevgep.i8983, i64 %306
  br label %land.rhs15.i8985

land.rhs15.i8985:                                 ; preds = %while.body21.i8988, %land.rhs15.preheader.i8982
  %s.addr.249.i8986 = phi ptr [ %incdec.ptr22.i8989, %while.body21.i8988 ], [ %incdec.ptr.i8967, %land.rhs15.preheader.i8982 ]
  %307 = load i8, ptr %s.addr.249.i8986, align 1
  %cmp18.i8987 = icmp slt i8 %307, -64
  br i1 %cmp18.i8987, label %while.body21.i8988, label %while.end23.i8974.loopexit

while.body21.i8988:                               ; preds = %land.rhs15.i8985
  %incdec.ptr22.i8989 = getelementptr inbounds i8, ptr %s.addr.249.i8986, i64 -1
  %cmp13.i8990 = icmp ugt ptr %incdec.ptr22.i8989, %304
  br i1 %cmp13.i8990, label %land.rhs15.i8985, label %while.end23thread-pre-split.i8971.loopexit, !llvm.loop !13

while.end23thread-pre-split.i8971.loopexit:       ; preds = %while.body21.i8988
  br label %while.end23thread-pre-split.i8971

while.end23thread-pre-split.i8971:                ; preds = %while.end23thread-pre-split.i8971.loopexit, %while.cond12.preheader.i8969
  %s.addr.2.lcssa.i8972 = phi ptr [ %incdec.ptr.i8967, %while.cond12.preheader.i8969 ], [ %scevgep65.i8984, %while.end23thread-pre-split.i8971.loopexit ]
  %.pr.i8973 = load i8, ptr %s.addr.2.lcssa.i8972, align 1
  br label %while.end23.i8974

while.end23.i8974.loopexit:                       ; preds = %land.rhs15.i8985
  %s.addr.249.i8986.lcssa = phi ptr [ %s.addr.249.i8986, %land.rhs15.i8985 ]
  %.lcssa13117 = phi i8 [ %307, %land.rhs15.i8985 ]
  br label %while.end23.i8974

while.end23.i8974:                                ; preds = %while.end23.i8974.loopexit, %while.end23thread-pre-split.i8971
  %s.addr.247.i8975 = phi ptr [ %s.addr.2.lcssa.i8972, %while.end23thread-pre-split.i8971 ], [ %s.addr.249.i8986.lcssa, %while.end23.i8974.loopexit ]
  %308 = phi i8 [ %.pr.i8973, %while.end23thread-pre-split.i8971 ], [ %.lcssa13117, %while.end23.i8974.loopexit ]
  %cmp25.i8976 = icmp ugt i8 %308, -63
  br i1 %cmp25.i8976, label %if.end28.i8978, label %if.then27.i8977

if.then27.i8977:                                  ; preds = %while.end23.i8974
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #10
  br label %if.end28.i8978

if.end28.i8978:                                   ; preds = %if.then27.i8977, %while.end23.i8974, %while.body8.i8962
  %s.addr.3.i8979 = phi ptr [ %s.addr.247.i8975, %while.end23.i8974 ], [ %s.addr.247.i8975, %if.then27.i8977 ], [ %incdec.ptr.i8967, %while.body8.i8962 ]
  br label %S_reghop3.exit8991.loopexit

S_reghop3.exit8991.loopexit:                      ; preds = %if.end28.i8978
  %s.addr.3.i8979.lcssa = phi ptr [ %s.addr.3.i8979, %if.end28.i8978 ]
  br label %S_reghop3.exit8991

S_reghop3.exit8991:                               ; preds = %S_reghop3.exit8991.loopexit, %S_reghop3.exit8958
  %s.addr.4.i8961 = phi ptr [ %locinput.112683, %S_reghop3.exit8958 ], [ %s.addr.3.i8979.lcssa, %S_reghop3.exit8991.loopexit ]
  %sub.ptr.lhs.cast1530 = ptrtoint ptr %303 to i64
  %sub.ptr.rhs.cast1531 = ptrtoint ptr %s.addr.4.i8961 to i64
  %sub.ptr.sub1532 = sub i64 %sub.ptr.lhs.cast1530, %sub.ptr.rhs.cast1531
  %call1533 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #10
  %cond1535 = select i1 %call1533, i32 0, i32 -8161
  %call1536 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %s.addr.4.i8928, i64 noundef %sub.ptr.sub1532, ptr noundef null, i32 noundef %cond1535) #10
  %call1537 = call i64 @Perl__invlist_search(ptr noundef %298, i64 noundef %call1536) #10
  %arrayidx1538 = getelementptr inbounds i32, ptr @Word_Break_invmap, i64 %call1537
  %309 = load i32, ptr %arrayidx1538, align 4
  %310 = load ptr, ptr @PL_WB_invlist, align 8
  %311 = load ptr, ptr %strend, align 8
  %sub.ptr.lhs.cast1540 = ptrtoint ptr %311 to i64
  %sub.ptr.rhs.cast1541 = ptrtoint ptr %locinput.112683 to i64
  %sub.ptr.sub1542 = sub i64 %sub.ptr.lhs.cast1540, %sub.ptr.rhs.cast1541
  %call1543 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #10
  %cond1545 = select i1 %call1543, i32 0, i32 -8161
  %call1546 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %locinput.112683, i64 noundef %sub.ptr.sub1542, ptr noundef null, i32 noundef %cond1545) #10
  %call1547 = call i64 @Perl__invlist_search(ptr noundef %310, i64 noundef %call1546) #10
  %arrayidx1548 = getelementptr inbounds i32, ptr @Word_Break_invmap, i64 %call1547
  %312 = load i32, ptr %arrayidx1548, align 4
  %313 = load ptr, ptr %strbeg1517, align 8
  %314 = load ptr, ptr %strend, align 8
  %call1552 = call fastcc zeroext i1 @S_isWB(i32 noundef 18, i32 noundef %309, i32 noundef %312, ptr noundef %313, ptr noundef %locinput.112683, ptr noundef %314, i1 noundef zeroext %loadedv)
  %storedv1553 = zext i1 %call1552 to i8
  br label %if.end1678

if.else1556:                                      ; preds = %if.else1301
  %315 = load i8, ptr %scan.112547, align 2
  switch i8 %315, label %if.end1678 [
    i8 0, label %sw.bb1559
    i8 1, label %sw.bb1608
    i8 2, label %sw.bb1628
    i8 3, label %sw.bb1652
  ]

sw.bb1559:                                        ; preds = %if.else1556
  %cmp1561 = icmp eq ptr %locinput.112684, %231
  br i1 %cmp1561, label %cond.end1581, label %land.end1578

land.end1578:                                     ; preds = %sw.bb1559
  %add.ptr1565 = getelementptr inbounds i8, ptr %locinput.112684, i64 -1
  %316 = load i8, ptr %add.ptr1565, align 1
  %idxprom1574 = zext i8 %316 to i64
  %arrayidx1575 = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %idxprom1574
  %317 = load i32, ptr %arrayidx1575, align 4
  %and1576 = and i32 %317, 1
  %318 = zext nneg i32 %and1576 to i64
  br label %cond.end1581

cond.end1581:                                     ; preds = %land.end1578, %sw.bb1559
  %cond1582 = phi i64 [ %318, %land.end1578 ], [ 0, %sw.bb1559 ]
  %cmp1584 = icmp slt i32 %cond4313094, 0
  br i1 %cmp1584, label %cond.end1600, label %land.end1597

land.end1597:                                     ; preds = %cond.end1581
  %idxprom1593 = zext nneg i32 %cond4313094 to i64
  %arrayidx1594 = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %idxprom1593
  %319 = load i32, ptr %arrayidx1594, align 4
  %and1595 = and i32 %319, 1
  %320 = zext nneg i32 %and1595 to i64
  br label %cond.end1600

cond.end1600:                                     ; preds = %land.end1597, %cond.end1581
  %cond1601 = phi i64 [ %320, %land.end1597 ], [ 0, %cond.end1581 ]
  %cmp1603 = icmp ne i64 %cond1582, %cond1601
  %storedv1607 = zext i1 %cmp1603 to i8
  br label %if.end1678

sw.bb1608:                                        ; preds = %if.else1556
  %cmp1610 = icmp eq ptr %locinput.112684, %231
  %cmp1613 = icmp slt i32 %cond4313094, 0
  %or.cond6638 = select i1 %cmp1610, i1 true, i1 %cmp1613
  br i1 %or.cond6638, label %if.end1678, label %if.else1616

if.else1616:                                      ; preds = %sw.bb1608
  %add.ptr1617 = getelementptr inbounds i8, ptr %locinput.112684, i64 -1
  %321 = load i8, ptr %add.ptr1617, align 1
  %cmp1619.not = icmp eq i8 %321, 13
  br i1 %cmp1619.not, label %lor.rhs1621, label %if.end1678

lor.rhs1621:                                      ; preds = %if.else1616
  %322 = load i8, ptr %locinput.112684, align 1
  %cmp1623 = icmp ne i8 %322, 10
  %323 = zext i1 %cmp1623 to i8
  br label %if.end1678

sw.bb1628:                                        ; preds = %if.else1556
  %cmp1630 = icmp eq ptr %locinput.112684, %231
  %cmp1633 = icmp slt i32 %cond4313094, 0
  %or.cond6639 = select i1 %cmp1630, i1 true, i1 %cmp1633
  br i1 %or.cond6639, label %if.end1678, label %if.else1636

if.else1636:                                      ; preds = %sw.bb1628
  %324 = load ptr, ptr @PL_SB_invlist, align 8
  %add.ptr1637 = getelementptr inbounds i8, ptr %locinput.112684, i64 -1
  %325 = load i8, ptr %add.ptr1637, align 1
  %conv1639 = zext i8 %325 to i64
  %call1640 = call i64 @Perl__invlist_search(ptr noundef %324, i64 noundef %conv1639) #10
  %arrayidx1641 = getelementptr inbounds i32, ptr @Sentence_Break_invmap, i64 %call1640
  %326 = load i32, ptr %arrayidx1641, align 4
  %327 = load ptr, ptr @PL_SB_invlist, align 8
  %328 = load i8, ptr %locinput.112684, align 1
  %conv1643 = zext i8 %328 to i64
  %call1644 = call i64 @Perl__invlist_search(ptr noundef %327, i64 noundef %conv1643) #10
  %arrayidx1645 = getelementptr inbounds i32, ptr @Sentence_Break_invmap, i64 %call1644
  %329 = load i32, ptr %arrayidx1645, align 4
  %330 = load ptr, ptr %strbeg1294, align 8
  %331 = load ptr, ptr %strend, align 8
  %call1649 = call fastcc zeroext i1 @S_isSB(i32 noundef %326, i32 noundef %329, ptr noundef %330, ptr noundef %locinput.112684, ptr noundef %331, i1 noundef zeroext false)
  %storedv1650 = zext i1 %call1649 to i8
  br label %if.end1678

sw.bb1652:                                        ; preds = %if.else1556
  %cmp1654 = icmp eq ptr %locinput.112684, %231
  %cmp1657 = icmp slt i32 %cond4313094, 0
  %or.cond6640 = select i1 %cmp1654, i1 true, i1 %cmp1657
  br i1 %or.cond6640, label %if.end1678, label %if.else1660

if.else1660:                                      ; preds = %sw.bb1652
  %332 = load ptr, ptr @PL_WB_invlist, align 8
  %add.ptr1661 = getelementptr inbounds i8, ptr %locinput.112684, i64 -1
  %333 = load i8, ptr %add.ptr1661, align 1
  %conv1663 = zext i8 %333 to i64
  %call1664 = call i64 @Perl__invlist_search(ptr noundef %332, i64 noundef %conv1663) #10
  %arrayidx1665 = getelementptr inbounds i32, ptr @Word_Break_invmap, i64 %call1664
  %334 = load i32, ptr %arrayidx1665, align 4
  %335 = load ptr, ptr @PL_WB_invlist, align 8
  %336 = load i8, ptr %locinput.112684, align 1
  %conv1667 = zext i8 %336 to i64
  %call1668 = call i64 @Perl__invlist_search(ptr noundef %335, i64 noundef %conv1667) #10
  %arrayidx1669 = getelementptr inbounds i32, ptr @Word_Break_invmap, i64 %call1668
  %337 = load i32, ptr %arrayidx1669, align 4
  %338 = load ptr, ptr %strbeg1294, align 8
  %339 = load ptr, ptr %strend, align 8
  %call1673 = call fastcc zeroext i1 @S_isWB(i32 noundef 18, i32 noundef %334, i32 noundef %337, ptr noundef %338, ptr noundef %locinput.112684, ptr noundef %339, i1 noundef zeroext false)
  %storedv1674 = zext i1 %call1673 to i8
  br label %if.end1678

if.end1678:                                       ; preds = %if.else1660, %sw.bb1652, %if.else1636, %sw.bb1628, %lor.rhs1621, %if.else1616, %sw.bb1608, %cond.end1600, %if.else1556, %S_reghop3.exit8991, %sw.bb1516, %S_reghop3.exit8925, %sw.bb1477, %S_reghop3.exit8859, %sw.bb1441, %cond.end1433, %bound_utf8, %boundu
  %minmod.112941 = phi i8 [ %minmod.112942, %bound_utf8 ], [ %minmod.112942, %cond.end1433 ], [ %minmod.112942, %S_reghop3.exit8859 ], [ %minmod.112942, %S_reghop3.exit8925 ], [ %minmod.112942, %S_reghop3.exit8991 ], [ %minmod.112944, %if.else1556 ], [ %minmod.112944, %cond.end1600 ], [ %minmod.112944, %if.else1636 ], [ %minmod.112944, %if.else1660 ], [ %minmod.112944, %boundu ], [ %minmod.112942, %sw.bb1441 ], [ %minmod.112942, %sw.bb1477 ], [ %minmod.112942, %sw.bb1516 ], [ %minmod.112944, %sw.bb1608 ], [ %minmod.112944, %if.else1616 ], [ %minmod.112944, %lor.rhs1621 ], [ %minmod.112944, %sw.bb1628 ], [ %minmod.112944, %sw.bb1652 ]
  %locinput.112682 = phi ptr [ %locinput.112683, %bound_utf8 ], [ %locinput.112683, %cond.end1433 ], [ %locinput.112683, %S_reghop3.exit8859 ], [ %locinput.112683, %S_reghop3.exit8925 ], [ %locinput.112683, %S_reghop3.exit8991 ], [ %locinput.112684, %if.else1556 ], [ %locinput.112684, %cond.end1600 ], [ %locinput.112684, %if.else1636 ], [ %locinput.112684, %if.else1660 ], [ %locinput.112684, %boundu ], [ %locinput.112683, %sw.bb1441 ], [ %locinput.112683, %sw.bb1477 ], [ %locinput.112683, %sw.bb1516 ], [ %locinput.112684, %sw.bb1608 ], [ %locinput.112684, %if.else1616 ], [ %locinput.112684, %lor.rhs1621 ], [ %locinput.112684, %sw.bb1628 ], [ %locinput.112684, %sw.bb1652 ]
  %scan.112545 = phi ptr [ %scan.112546, %bound_utf8 ], [ %scan.112546, %cond.end1433 ], [ %scan.112546, %S_reghop3.exit8859 ], [ %scan.112546, %S_reghop3.exit8925 ], [ %scan.112546, %S_reghop3.exit8991 ], [ %scan.112547, %if.else1556 ], [ %scan.112547, %cond.end1600 ], [ %scan.112547, %if.else1636 ], [ %scan.112547, %if.else1660 ], [ %scan.112547, %boundu ], [ %scan.112546, %sw.bb1441 ], [ %scan.112546, %sw.bb1477 ], [ %scan.112546, %sw.bb1516 ], [ %scan.112547, %sw.bb1608 ], [ %scan.112547, %if.else1616 ], [ %scan.112547, %lor.rhs1621 ], [ %scan.112547, %sw.bb1628 ], [ %scan.112547, %sw.bb1652 ]
  %match.2 = phi i8 [ %match.1.ph, %bound_utf8 ], [ %storedv1440, %cond.end1433 ], [ %storedv1475, %S_reghop3.exit8859 ], [ %storedv1514, %S_reghop3.exit8925 ], [ %storedv1553, %S_reghop3.exit8991 ], [ %match.1.ph, %if.else1556 ], [ %storedv1607, %cond.end1600 ], [ %storedv1650, %if.else1636 ], [ %storedv1674, %if.else1660 ], [ 0, %boundu ], [ 1, %sw.bb1441 ], [ 1, %sw.bb1477 ], [ 1, %sw.bb1516 ], [ 1, %sw.bb1608 ], [ 1, %if.else1616 ], [ %323, %lor.rhs1621 ], [ 1, %sw.bb1628 ], [ 1, %sw.bb1652 ]
  %to_complement.5 = phi i32 [ %to_complement.4, %bound_utf8 ], [ %to_complement.4, %cond.end1433 ], [ %to_complement.4, %S_reghop3.exit8859 ], [ %to_complement.4, %S_reghop3.exit8925 ], [ %to_complement.4, %S_reghop3.exit8991 ], [ %to_complement.3, %if.else1556 ], [ %to_complement.3, %cond.end1600 ], [ %to_complement.3, %if.else1636 ], [ %to_complement.3, %if.else1660 ], [ %to_complement.3, %boundu ], [ %to_complement.4, %sw.bb1441 ], [ %to_complement.4, %sw.bb1477 ], [ %to_complement.4, %sw.bb1516 ], [ %to_complement.3, %sw.bb1608 ], [ %to_complement.3, %if.else1616 ], [ %to_complement.3, %lor.rhs1621 ], [ %to_complement.3, %sw.bb1628 ], [ %to_complement.3, %sw.bb1652 ]
  %340 = and i8 %match.2, 1
  %341 = xor i8 %340, 1
  %lnot.ext = zext nneg i8 %341 to i32
  %tobool1681.not = icmp eq i32 %to_complement.5, %lnot.ext
  br i1 %tobool1681.not, label %sw.epilog6360.loopexit12320, label %no_silent

sw.bb1685:                                        ; preds = %cond.end42, %cond.end42
  %cond43.lcssa13011 = phi i32 [ %cond43, %cond.end42 ], [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12856 = phi i8 [ %minmod.1, %cond.end42 ], [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12596 = phi ptr [ %locinput.1, %cond.end42 ], [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12463 = phi ptr [ %scan.1, %cond.end42 ], [ %scan.1, %cond.end42 ]
  %.lcssa12357 = phi ptr [ %16, %cond.end42 ], [ %16, %cond.end42 ]
  %cmp1686 = icmp slt i32 %cond43.lcssa13011, 0
  br i1 %cmp1686, label %no_silent, label %if.end1689

if.end1689:                                       ; preds = %sw.bb1685
  br i1 %loadedv, label %if.then1691, label %if.else1702

if.then1691:                                      ; preds = %if.end1689
  %call1694 = call fastcc zeroext i1 @S_reginclass(ptr noundef %rex.1.ph, ptr noundef %scan.1.lcssa12463, ptr noundef %locinput.1.lcssa12596, ptr noundef %.lcssa12357, i1 noundef zeroext true)
  br i1 %call1694, label %if.end1696, label %no_silent

if.end1696:                                       ; preds = %if.then1691
  %last_pushed_cv.0.ph.lcssa14865 = phi ptr [ %last_pushed_cv.0.ph, %if.then1691 ]
  %caller_cv.0.ph.lcssa14829 = phi ptr [ %caller_cv.0.ph, %if.then1691 ]
  %multicall_oldcatch.0.ph.lcssa14792 = phi i8 [ %multicall_oldcatch.0.ph, %if.then1691 ]
  %multicall_cv.0.ph.lcssa14755 = phi ptr [ %multicall_cv.0.ph, %if.then1691 ]
  %last_pad.0.ph.lcssa14719 = phi ptr [ %last_pad.0.ph, %if.then1691 ]
  %sw.0.ph9430.lcssa14671 = phi i1 [ %sw.0.ph9430, %if.then1691 ]
  %match.1.ph.lcssa14593 = phi i8 [ %match.1.ph, %if.then1691 ]
  %is_utf8_pat.1.ph.lcssa14518 = phi i8 [ %is_utf8_pat.1.ph, %if.then1691 ]
  %logical.1.ph.lcssa14444 = phi i32 [ %logical.1.ph, %if.then1691 ]
  %sv_yes_mark.1.ph.lcssa14367 = phi ptr [ %sv_yes_mark.1.ph, %if.then1691 ]
  %sv_commit.1.ph.lcssa14290 = phi ptr [ %sv_commit.1.ph, %if.then1691 ]
  %popmark.1.ph.lcssa14211 = phi ptr [ %popmark.1.ph, %if.then1691 ]
  %do_cutgroup.1.ph.lcssa14133 = phi i8 [ %do_cutgroup.1.ph, %if.then1691 ]
  %no_final.1.ph.lcssa14055 = phi i8 [ %no_final.1.ph, %if.then1691 ]
  %cur_curlyx.1.ph.lcssa13979 = phi ptr [ %cur_curlyx.1.ph, %if.then1691 ]
  %cur_eval.1.ph.lcssa13902 = phi ptr [ %cur_eval.1.ph, %if.then1691 ]
  %mark_state.1.ph.lcssa13825 = phi ptr [ %mark_state.1.ph, %if.then1691 ]
  %yes_state.1.ph.lcssa13747 = phi ptr [ %yes_state.1.ph, %if.then1691 ]
  %nochange_depth.1.ph.lcssa13673 = phi i32 [ %nochange_depth.1.ph, %if.then1691 ]
  %depth.1.ph.lcssa13594 = phi i32 [ %depth.1.ph, %if.then1691 ]
  %next.1.ph.lcssa13520 = phi ptr [ %next.1.ph, %if.then1691 ]
  %st.1.ph.lcssa13441 = phi ptr [ %st.1.ph, %if.then1691 ]
  %rexi.1.ph.lcssa13366 = phi ptr [ %rexi.1.ph, %if.then1691 ]
  %rex.1.ph.lcssa13290 = phi ptr [ %rex.1.ph, %if.then1691 ]
  %rex_sv.1.ph.lcssa13213 = phi ptr [ %rex_sv.1.ph, %if.then1691 ]
  %minmod.1.lcssa12856.lcssa12980 = phi i8 [ %minmod.1.lcssa12856, %if.then1691 ]
  %locinput.1.lcssa12596.lcssa12718 = phi ptr [ %locinput.1.lcssa12596, %if.then1691 ]
  %342 = load i8, ptr %locinput.1.lcssa12596.lcssa12718, align 1
  %idxprom1697 = zext i8 %342 to i64
  %arrayidx1698 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom1697
  %343 = load i8, ptr %arrayidx1698, align 1
  %idx.ext1700 = zext i8 %343 to i64
  %add.ptr1701 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12596.lcssa12718, i64 %idx.ext1700
  br label %sw.epilog6360

if.else1702:                                      ; preds = %if.end1689
  %344 = load i8, ptr %scan.1.lcssa12463, align 2
  %tobool1705.not = icmp eq i8 %344, 0
  br i1 %tobool1705.not, label %cond.false1710, label %cond.true1706

cond.true1706:                                    ; preds = %if.else1702
  %add.ptr1707 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12596, i64 1
  %call1708 = call fastcc zeroext i1 @S_reginclass(ptr noundef %rex.1.ph, ptr noundef nonnull %scan.1.lcssa12463, ptr noundef %locinput.1.lcssa12596, ptr noundef nonnull %add.ptr1707, i1 noundef zeroext false)
  br i1 %call1708, label %if.end1726, label %no_silent

cond.false1710:                                   ; preds = %if.else1702
  %bitmap1711 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12463, i64 8
  %345 = load i8, ptr %locinput.1.lcssa12596, align 1
  %conv1712 = zext i8 %345 to i32
  %shr1713 = lshr i32 %conv1712, 3
  %idxprom1715 = zext nneg i32 %shr1713 to i64
  %arrayidx1716 = getelementptr inbounds nuw i8, ptr %bitmap1711, i64 %idxprom1715
  %346 = load i8, ptr %arrayidx1716, align 1
  %conv1717 = sext i8 %346 to i32
  %and1719 = and i32 %conv1712, 7
  %shl1720 = shl nuw nsw i32 1, %and1719
  %and1721 = and i32 %shl1720, %conv1717
  %tobool1722.not = icmp eq i32 %and1721, 0
  br i1 %tobool1722.not, label %no_silent, label %if.end1726

if.end1726:                                       ; preds = %cond.false1710, %cond.true1706
  %last_pushed_cv.0.ph.lcssa14864 = phi ptr [ %last_pushed_cv.0.ph, %cond.false1710 ], [ %last_pushed_cv.0.ph, %cond.true1706 ]
  %caller_cv.0.ph.lcssa14828 = phi ptr [ %caller_cv.0.ph, %cond.false1710 ], [ %caller_cv.0.ph, %cond.true1706 ]
  %multicall_oldcatch.0.ph.lcssa14791 = phi i8 [ %multicall_oldcatch.0.ph, %cond.false1710 ], [ %multicall_oldcatch.0.ph, %cond.true1706 ]
  %multicall_cv.0.ph.lcssa14754 = phi ptr [ %multicall_cv.0.ph, %cond.false1710 ], [ %multicall_cv.0.ph, %cond.true1706 ]
  %last_pad.0.ph.lcssa14718 = phi ptr [ %last_pad.0.ph, %cond.false1710 ], [ %last_pad.0.ph, %cond.true1706 ]
  %sw.0.ph9430.lcssa14670 = phi i1 [ %sw.0.ph9430, %cond.false1710 ], [ %sw.0.ph9430, %cond.true1706 ]
  %match.1.ph.lcssa14592 = phi i8 [ %match.1.ph, %cond.false1710 ], [ %match.1.ph, %cond.true1706 ]
  %is_utf8_pat.1.ph.lcssa14517 = phi i8 [ %is_utf8_pat.1.ph, %cond.false1710 ], [ %is_utf8_pat.1.ph, %cond.true1706 ]
  %logical.1.ph.lcssa14443 = phi i32 [ %logical.1.ph, %cond.false1710 ], [ %logical.1.ph, %cond.true1706 ]
  %sv_yes_mark.1.ph.lcssa14366 = phi ptr [ %sv_yes_mark.1.ph, %cond.false1710 ], [ %sv_yes_mark.1.ph, %cond.true1706 ]
  %sv_commit.1.ph.lcssa14289 = phi ptr [ %sv_commit.1.ph, %cond.false1710 ], [ %sv_commit.1.ph, %cond.true1706 ]
  %popmark.1.ph.lcssa14210 = phi ptr [ %popmark.1.ph, %cond.false1710 ], [ %popmark.1.ph, %cond.true1706 ]
  %do_cutgroup.1.ph.lcssa14132 = phi i8 [ %do_cutgroup.1.ph, %cond.false1710 ], [ %do_cutgroup.1.ph, %cond.true1706 ]
  %no_final.1.ph.lcssa14054 = phi i8 [ %no_final.1.ph, %cond.false1710 ], [ %no_final.1.ph, %cond.true1706 ]
  %cur_curlyx.1.ph.lcssa13978 = phi ptr [ %cur_curlyx.1.ph, %cond.false1710 ], [ %cur_curlyx.1.ph, %cond.true1706 ]
  %cur_eval.1.ph.lcssa13901 = phi ptr [ %cur_eval.1.ph, %cond.false1710 ], [ %cur_eval.1.ph, %cond.true1706 ]
  %mark_state.1.ph.lcssa13824 = phi ptr [ %mark_state.1.ph, %cond.false1710 ], [ %mark_state.1.ph, %cond.true1706 ]
  %yes_state.1.ph.lcssa13746 = phi ptr [ %yes_state.1.ph, %cond.false1710 ], [ %yes_state.1.ph, %cond.true1706 ]
  %nochange_depth.1.ph.lcssa13672 = phi i32 [ %nochange_depth.1.ph, %cond.false1710 ], [ %nochange_depth.1.ph, %cond.true1706 ]
  %depth.1.ph.lcssa13593 = phi i32 [ %depth.1.ph, %cond.false1710 ], [ %depth.1.ph, %cond.true1706 ]
  %next.1.ph.lcssa13519 = phi ptr [ %next.1.ph, %cond.false1710 ], [ %next.1.ph, %cond.true1706 ]
  %st.1.ph.lcssa13440 = phi ptr [ %st.1.ph, %cond.false1710 ], [ %st.1.ph, %cond.true1706 ]
  %rexi.1.ph.lcssa13365 = phi ptr [ %rexi.1.ph, %cond.false1710 ], [ %rexi.1.ph, %cond.true1706 ]
  %rex.1.ph.lcssa13289 = phi ptr [ %rex.1.ph, %cond.false1710 ], [ %rex.1.ph, %cond.true1706 ]
  %rex_sv.1.ph.lcssa13212 = phi ptr [ %rex_sv.1.ph, %cond.false1710 ], [ %rex_sv.1.ph, %cond.true1706 ]
  %minmod.1.lcssa12856.lcssa = phi i8 [ %minmod.1.lcssa12856, %cond.false1710 ], [ %minmod.1.lcssa12856, %cond.true1706 ]
  %locinput.1.lcssa12596.lcssa = phi ptr [ %locinput.1.lcssa12596, %cond.false1710 ], [ %locinput.1.lcssa12596, %cond.true1706 ]
  %incdec.ptr1727 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12596.lcssa, i64 1
  br label %sw.epilog6360

sw.bb1730.loopexit:                               ; preds = %cond.end42
  %cond43.lcssa13013 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12858 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12598 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12465 = phi ptr [ %scan.1, %cond.end42 ]
  br label %sw.bb1730

sw.bb1730.loopexit12309:                          ; preds = %cond.end42
  %cond43.lcssa13012 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12857 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12597 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12464 = phi ptr [ %scan.1, %cond.end42 ]
  br label %sw.bb1730

sw.bb1730:                                        ; preds = %sw.bb1730.loopexit12309, %sw.bb1730.loopexit
  %cond4313097 = phi i32 [ %cond43.lcssa13013, %sw.bb1730.loopexit ], [ %cond43.lcssa13012, %sw.bb1730.loopexit12309 ]
  %minmod.112953 = phi i8 [ %minmod.1.lcssa12858, %sw.bb1730.loopexit ], [ %minmod.1.lcssa12857, %sw.bb1730.loopexit12309 ]
  %locinput.112691 = phi ptr [ %locinput.1.lcssa12598, %sw.bb1730.loopexit ], [ %locinput.1.lcssa12597, %sw.bb1730.loopexit12309 ]
  %scan.112554 = phi ptr [ %scan.1.lcssa12465, %sw.bb1730.loopexit ], [ %scan.1.lcssa12464, %sw.bb1730.loopexit12309 ]
  %to_complement.6 = phi i32 [ 0, %sw.bb1730.loopexit ], [ 1, %sw.bb1730.loopexit12309 ]
  %cmp1731 = icmp slt i32 %cond4313097, 0
  br i1 %cmp1731, label %no_silent, label %if.end1734

if.end1734:                                       ; preds = %sw.bb1730
  %cmp1736 = icmp samesign ugt i32 %cond4313097, 127
  %or.cond6641 = select i1 %cmp1736, i1 %loadedv, i1 false
  br i1 %or.cond6641, label %if.else1750, label %if.then1740

if.then1740:                                      ; preds = %if.end1734
  %347 = load i8, ptr %scan.112554, align 2
  %conv1742 = trunc nuw i32 %cond4313097 to i8
  %call1743 = call fastcc zeroext i1 @S_isFOO_lc(i8 noundef zeroext %347, i8 noundef zeroext %conv1742)
  %cond1745 = zext i1 %call1743 to i32
  %tobool1747.not = icmp eq i32 %to_complement.6, %cond1745
  br i1 %tobool1747.not, label %no_silent, label %if.end1774

if.else1750:                                      ; preds = %if.end1734
  %and1753 = and i32 %cond4313097, 254
  %cmp1754 = icmp eq i32 %and1753, 194
  br i1 %cmp1754, label %if.then1756, label %utf8_posix_above_latin1

if.then1756:                                      ; preds = %if.else1750
  %348 = load i8, ptr %scan.112554, align 2
  %add.ptr1760 = getelementptr inbounds nuw i8, ptr %locinput.112691, i64 1
  %349 = load i8, ptr %add.ptr1760, align 1
  %350 = and i8 %349, 63
  %cond43.tr8694 = trunc nuw i32 %cond4313097 to i8
  %351 = shl i8 %cond43.tr8694, 6
  %conv1764 = or disjoint i8 %350, %351
  %call1765 = call fastcc zeroext i1 @S_isFOO_lc(i8 noundef zeroext %348, i8 noundef zeroext %conv1764)
  %cond1767 = zext i1 %call1765 to i32
  %tobool1769.not = icmp eq i32 %to_complement.6, %cond1767
  br i1 %tobool1769.not, label %no_silent, label %if.end1774

if.end1774:                                       ; preds = %if.then1756, %if.then1740
  %last_pushed_cv.0.ph.lcssa14862 = phi ptr [ %last_pushed_cv.0.ph, %if.then1756 ], [ %last_pushed_cv.0.ph, %if.then1740 ]
  %caller_cv.0.ph.lcssa14826 = phi ptr [ %caller_cv.0.ph, %if.then1756 ], [ %caller_cv.0.ph, %if.then1740 ]
  %multicall_oldcatch.0.ph.lcssa14789 = phi i8 [ %multicall_oldcatch.0.ph, %if.then1756 ], [ %multicall_oldcatch.0.ph, %if.then1740 ]
  %multicall_cv.0.ph.lcssa14752 = phi ptr [ %multicall_cv.0.ph, %if.then1756 ], [ %multicall_cv.0.ph, %if.then1740 ]
  %last_pad.0.ph.lcssa14716 = phi ptr [ %last_pad.0.ph, %if.then1756 ], [ %last_pad.0.ph, %if.then1740 ]
  %sw.0.ph9430.lcssa14668 = phi i1 [ %sw.0.ph9430, %if.then1756 ], [ %sw.0.ph9430, %if.then1740 ]
  %match.1.ph.lcssa14590 = phi i8 [ %match.1.ph, %if.then1756 ], [ %match.1.ph, %if.then1740 ]
  %is_utf8_pat.1.ph.lcssa14515 = phi i8 [ %is_utf8_pat.1.ph, %if.then1756 ], [ %is_utf8_pat.1.ph, %if.then1740 ]
  %logical.1.ph.lcssa14441 = phi i32 [ %logical.1.ph, %if.then1756 ], [ %logical.1.ph, %if.then1740 ]
  %sv_yes_mark.1.ph.lcssa14364 = phi ptr [ %sv_yes_mark.1.ph, %if.then1756 ], [ %sv_yes_mark.1.ph, %if.then1740 ]
  %sv_commit.1.ph.lcssa14287 = phi ptr [ %sv_commit.1.ph, %if.then1756 ], [ %sv_commit.1.ph, %if.then1740 ]
  %popmark.1.ph.lcssa14208 = phi ptr [ %popmark.1.ph, %if.then1756 ], [ %popmark.1.ph, %if.then1740 ]
  %do_cutgroup.1.ph.lcssa14130 = phi i8 [ %do_cutgroup.1.ph, %if.then1756 ], [ %do_cutgroup.1.ph, %if.then1740 ]
  %no_final.1.ph.lcssa14052 = phi i8 [ %no_final.1.ph, %if.then1756 ], [ %no_final.1.ph, %if.then1740 ]
  %cur_curlyx.1.ph.lcssa13976 = phi ptr [ %cur_curlyx.1.ph, %if.then1756 ], [ %cur_curlyx.1.ph, %if.then1740 ]
  %cur_eval.1.ph.lcssa13899 = phi ptr [ %cur_eval.1.ph, %if.then1756 ], [ %cur_eval.1.ph, %if.then1740 ]
  %mark_state.1.ph.lcssa13822 = phi ptr [ %mark_state.1.ph, %if.then1756 ], [ %mark_state.1.ph, %if.then1740 ]
  %yes_state.1.ph.lcssa13744 = phi ptr [ %yes_state.1.ph, %if.then1756 ], [ %yes_state.1.ph, %if.then1740 ]
  %nochange_depth.1.ph.lcssa13670 = phi i32 [ %nochange_depth.1.ph, %if.then1756 ], [ %nochange_depth.1.ph, %if.then1740 ]
  %depth.1.ph.lcssa13591 = phi i32 [ %depth.1.ph, %if.then1756 ], [ %depth.1.ph, %if.then1740 ]
  %next.1.ph.lcssa13517 = phi ptr [ %next.1.ph, %if.then1756 ], [ %next.1.ph, %if.then1740 ]
  %st.1.ph.lcssa13438 = phi ptr [ %st.1.ph, %if.then1756 ], [ %st.1.ph, %if.then1740 ]
  %rexi.1.ph.lcssa13363 = phi ptr [ %rexi.1.ph, %if.then1756 ], [ %rexi.1.ph, %if.then1740 ]
  %rex.1.ph.lcssa13287 = phi ptr [ %rex.1.ph, %if.then1756 ], [ %rex.1.ph, %if.then1740 ]
  %rex_sv.1.ph.lcssa13210 = phi ptr [ %rex_sv.1.ph, %if.then1756 ], [ %rex_sv.1.ph, %if.then1740 ]
  %minmod.112953.lcssa = phi i8 [ %minmod.112953, %if.then1756 ], [ %minmod.112953, %if.then1740 ]
  %locinput.112691.lcssa = phi ptr [ %locinput.112691, %if.then1756 ], [ %locinput.112691, %if.then1740 ]
  %352 = load i8, ptr %locinput.112691.lcssa, align 1
  %idxprom1775 = zext i8 %352 to i64
  %arrayidx1776 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom1775
  %353 = load i8, ptr %arrayidx1776, align 1
  %idx.ext1778 = zext i8 %353 to i64
  %add.ptr1779 = getelementptr inbounds nuw i8, ptr %locinput.112691.lcssa, i64 %idx.ext1778
  br label %sw.epilog6360

sw.bb1781.loopexit:                               ; preds = %cond.end42
  %cond43.lcssa13015 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12860 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12600 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12467 = phi ptr [ %scan.1, %cond.end42 ]
  br label %sw.bb1781

sw.bb1781.loopexit12310:                          ; preds = %cond.end42
  %cond43.lcssa13014 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12859 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12599 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12466 = phi ptr [ %scan.1, %cond.end42 ]
  br label %sw.bb1781

sw.bb1781:                                        ; preds = %sw.bb1781.loopexit12310, %sw.bb1781.loopexit
  %cond4313099 = phi i32 [ %cond43.lcssa13015, %sw.bb1781.loopexit ], [ %cond43.lcssa13014, %sw.bb1781.loopexit12310 ]
  %minmod.112956 = phi i8 [ %minmod.1.lcssa12860, %sw.bb1781.loopexit ], [ %minmod.1.lcssa12859, %sw.bb1781.loopexit12310 ]
  %locinput.112694 = phi ptr [ %locinput.1.lcssa12600, %sw.bb1781.loopexit ], [ %locinput.1.lcssa12599, %sw.bb1781.loopexit12310 ]
  %scan.112553 = phi ptr [ %scan.1.lcssa12467, %sw.bb1781.loopexit ], [ %scan.1.lcssa12466, %sw.bb1781.loopexit12310 ]
  %to_complement.7 = phi i32 [ 0, %sw.bb1781.loopexit ], [ 1, %sw.bb1781.loopexit12310 ]
  br i1 %loadedv, label %utf8_posix, label %posixa

sw.bb1785:                                        ; preds = %cond.end42
  %cond43.lcssa13016 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12861 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12601 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12468 = phi ptr [ %scan.1, %cond.end42 ]
  %cmp1786 = icmp slt i32 %cond43.lcssa13016, 0
  br i1 %cmp1786, label %no_silent, label %if.end1789

if.end1789:                                       ; preds = %sw.bb1785
  %cmp1791 = icmp samesign ult i32 %cond43.lcssa13016, 128
  br i1 %cmp1791, label %land.end1817, label %increment_locinput

posixa.loopexit:                                  ; preds = %cond.end42
  %cond43.lcssa13017 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12862 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12602 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12469 = phi ptr [ %scan.1, %cond.end42 ]
  br label %posixa

posixa:                                           ; preds = %posixa.loopexit, %sw.bb1781
  %cond4313101 = phi i32 [ %cond4313099, %sw.bb1781 ], [ %cond43.lcssa13017, %posixa.loopexit ]
  %minmod.112958 = phi i8 [ %minmod.112956, %sw.bb1781 ], [ %minmod.1.lcssa12862, %posixa.loopexit ]
  %locinput.112696 = phi ptr [ %locinput.112694, %sw.bb1781 ], [ %locinput.1.lcssa12602, %posixa.loopexit ]
  %scan.112556 = phi ptr [ %scan.112553, %sw.bb1781 ], [ %scan.1.lcssa12469, %posixa.loopexit ]
  %to_complement.8 = phi i32 [ %to_complement.7, %sw.bb1781 ], [ 0, %posixa.loopexit ]
  %cmp1796 = icmp slt i32 %cond4313101, 0
  br i1 %cmp1796, label %no_silent, label %land.end1817

land.end1817:                                     ; preds = %posixa, %if.end1789
  %cond4313100 = phi i32 [ %cond4313101, %posixa ], [ %cond43.lcssa13016, %if.end1789 ]
  %minmod.112957 = phi i8 [ %minmod.112958, %posixa ], [ %minmod.1.lcssa12861, %if.end1789 ]
  %locinput.112695 = phi ptr [ %locinput.112696, %posixa ], [ %locinput.1.lcssa12601, %if.end1789 ]
  %scan.112555 = phi ptr [ %scan.112556, %posixa ], [ %scan.1.lcssa12468, %if.end1789 ]
  %to_complement.89299 = phi i32 [ %to_complement.8, %posixa ], [ 1, %if.end1789 ]
  %idxprom1804 = zext nneg i32 %cond4313100 to i64
  %arrayidx1805 = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %idxprom1804
  %354 = load i32, ptr %arrayidx1805, align 4
  %355 = load i8, ptr %scan.112555, align 2
  %conv1807 = zext nneg i8 %355 to i32
  %shl1808 = shl nuw i32 1, %conv1807
  %or1809 = or i32 %shl1808, 16384
  %and1810 = and i32 %or1809, %354
  %cmp1815 = icmp eq i32 %and1810, %or1809
  %cond1819 = zext i1 %cmp1815 to i32
  %tobool1821.not = icmp eq i32 %to_complement.89299, %cond1819
  br i1 %tobool1821.not, label %no_silent, label %if.end1823

if.end1823:                                       ; preds = %land.end1817
  %last_pushed_cv.0.ph.lcssa14859 = phi ptr [ %last_pushed_cv.0.ph, %land.end1817 ]
  %caller_cv.0.ph.lcssa14823 = phi ptr [ %caller_cv.0.ph, %land.end1817 ]
  %multicall_oldcatch.0.ph.lcssa14786 = phi i8 [ %multicall_oldcatch.0.ph, %land.end1817 ]
  %multicall_cv.0.ph.lcssa14749 = phi ptr [ %multicall_cv.0.ph, %land.end1817 ]
  %last_pad.0.ph.lcssa14713 = phi ptr [ %last_pad.0.ph, %land.end1817 ]
  %sw.0.ph9430.lcssa14665 = phi i1 [ %sw.0.ph9430, %land.end1817 ]
  %match.1.ph.lcssa14587 = phi i8 [ %match.1.ph, %land.end1817 ]
  %is_utf8_pat.1.ph.lcssa14512 = phi i8 [ %is_utf8_pat.1.ph, %land.end1817 ]
  %logical.1.ph.lcssa14438 = phi i32 [ %logical.1.ph, %land.end1817 ]
  %sv_yes_mark.1.ph.lcssa14361 = phi ptr [ %sv_yes_mark.1.ph, %land.end1817 ]
  %sv_commit.1.ph.lcssa14284 = phi ptr [ %sv_commit.1.ph, %land.end1817 ]
  %popmark.1.ph.lcssa14205 = phi ptr [ %popmark.1.ph, %land.end1817 ]
  %do_cutgroup.1.ph.lcssa14127 = phi i8 [ %do_cutgroup.1.ph, %land.end1817 ]
  %no_final.1.ph.lcssa14049 = phi i8 [ %no_final.1.ph, %land.end1817 ]
  %cur_curlyx.1.ph.lcssa13973 = phi ptr [ %cur_curlyx.1.ph, %land.end1817 ]
  %cur_eval.1.ph.lcssa13896 = phi ptr [ %cur_eval.1.ph, %land.end1817 ]
  %mark_state.1.ph.lcssa13819 = phi ptr [ %mark_state.1.ph, %land.end1817 ]
  %yes_state.1.ph.lcssa13741 = phi ptr [ %yes_state.1.ph, %land.end1817 ]
  %nochange_depth.1.ph.lcssa13667 = phi i32 [ %nochange_depth.1.ph, %land.end1817 ]
  %depth.1.ph.lcssa13588 = phi i32 [ %depth.1.ph, %land.end1817 ]
  %next.1.ph.lcssa13514 = phi ptr [ %next.1.ph, %land.end1817 ]
  %st.1.ph.lcssa13435 = phi ptr [ %st.1.ph, %land.end1817 ]
  %rexi.1.ph.lcssa13360 = phi ptr [ %rexi.1.ph, %land.end1817 ]
  %rex.1.ph.lcssa13284 = phi ptr [ %rex.1.ph, %land.end1817 ]
  %rex_sv.1.ph.lcssa13207 = phi ptr [ %rex_sv.1.ph, %land.end1817 ]
  %minmod.112957.lcssa = phi i8 [ %minmod.112957, %land.end1817 ]
  %locinput.112695.lcssa = phi ptr [ %locinput.112695, %land.end1817 ]
  %incdec.ptr1824 = getelementptr inbounds nuw i8, ptr %locinput.112695.lcssa, i64 1
  br label %sw.epilog6360

utf8_posix.loopexit:                              ; preds = %cond.end42
  %cond43.lcssa13019 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12864 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12604 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12471 = phi ptr [ %scan.1, %cond.end42 ]
  br label %utf8_posix

utf8_posix.loopexit12311:                         ; preds = %cond.end42
  %cond43.lcssa13018 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12863 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12603 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12470 = phi ptr [ %scan.1, %cond.end42 ]
  br label %utf8_posix

utf8_posix:                                       ; preds = %utf8_posix.loopexit12311, %utf8_posix.loopexit, %sw.bb1781
  %cond4313098 = phi i32 [ %cond4313099, %sw.bb1781 ], [ %cond43.lcssa13019, %utf8_posix.loopexit ], [ %cond43.lcssa13018, %utf8_posix.loopexit12311 ]
  %minmod.112955 = phi i8 [ %minmod.112956, %sw.bb1781 ], [ %minmod.1.lcssa12864, %utf8_posix.loopexit ], [ %minmod.1.lcssa12863, %utf8_posix.loopexit12311 ]
  %locinput.112693 = phi ptr [ %locinput.112694, %sw.bb1781 ], [ %locinput.1.lcssa12604, %utf8_posix.loopexit ], [ %locinput.1.lcssa12603, %utf8_posix.loopexit12311 ]
  %scan.112552 = phi ptr [ %scan.112553, %sw.bb1781 ], [ %scan.1.lcssa12471, %utf8_posix.loopexit ], [ %scan.1.lcssa12470, %utf8_posix.loopexit12311 ]
  %to_complement.9 = phi i32 [ %to_complement.7, %sw.bb1781 ], [ 0, %utf8_posix.loopexit ], [ 1, %utf8_posix.loopexit12311 ]
  %cmp1827 = icmp slt i32 %cond4313098, 0
  br i1 %cmp1827, label %no_silent, label %if.end1830

if.end1830:                                       ; preds = %utf8_posix
  %cmp1832 = icmp samesign ugt i32 %cond4313098, 127
  %or.cond6642 = select i1 %cmp1832, i1 %loadedv, i1 false
  br i1 %or.cond6642, label %if.else1859, label %land.end1849

land.end1849:                                     ; preds = %if.end1830
  %idxprom1842 = zext nneg i32 %cond4313098 to i64
  %arrayidx1843 = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %idxprom1842
  %356 = load i32, ptr %arrayidx1843, align 4
  %357 = load i8, ptr %scan.112552, align 2
  %conv1845 = zext nneg i8 %357 to i32
  %358 = lshr i32 %356, %conv1845
  %cond1851 = and i32 %358, 1
  %tobool1855.not = icmp eq i32 %to_complement.9, %cond1851
  br i1 %tobool1855.not, label %no_silent, label %if.end1857

if.end1857:                                       ; preds = %land.end1849
  %last_pushed_cv.0.ph.lcssa14860 = phi ptr [ %last_pushed_cv.0.ph, %land.end1849 ]
  %caller_cv.0.ph.lcssa14824 = phi ptr [ %caller_cv.0.ph, %land.end1849 ]
  %multicall_oldcatch.0.ph.lcssa14787 = phi i8 [ %multicall_oldcatch.0.ph, %land.end1849 ]
  %multicall_cv.0.ph.lcssa14750 = phi ptr [ %multicall_cv.0.ph, %land.end1849 ]
  %last_pad.0.ph.lcssa14714 = phi ptr [ %last_pad.0.ph, %land.end1849 ]
  %sw.0.ph9430.lcssa14666 = phi i1 [ %sw.0.ph9430, %land.end1849 ]
  %match.1.ph.lcssa14588 = phi i8 [ %match.1.ph, %land.end1849 ]
  %is_utf8_pat.1.ph.lcssa14513 = phi i8 [ %is_utf8_pat.1.ph, %land.end1849 ]
  %logical.1.ph.lcssa14439 = phi i32 [ %logical.1.ph, %land.end1849 ]
  %sv_yes_mark.1.ph.lcssa14362 = phi ptr [ %sv_yes_mark.1.ph, %land.end1849 ]
  %sv_commit.1.ph.lcssa14285 = phi ptr [ %sv_commit.1.ph, %land.end1849 ]
  %popmark.1.ph.lcssa14206 = phi ptr [ %popmark.1.ph, %land.end1849 ]
  %do_cutgroup.1.ph.lcssa14128 = phi i8 [ %do_cutgroup.1.ph, %land.end1849 ]
  %no_final.1.ph.lcssa14050 = phi i8 [ %no_final.1.ph, %land.end1849 ]
  %cur_curlyx.1.ph.lcssa13974 = phi ptr [ %cur_curlyx.1.ph, %land.end1849 ]
  %cur_eval.1.ph.lcssa13897 = phi ptr [ %cur_eval.1.ph, %land.end1849 ]
  %mark_state.1.ph.lcssa13820 = phi ptr [ %mark_state.1.ph, %land.end1849 ]
  %yes_state.1.ph.lcssa13742 = phi ptr [ %yes_state.1.ph, %land.end1849 ]
  %nochange_depth.1.ph.lcssa13668 = phi i32 [ %nochange_depth.1.ph, %land.end1849 ]
  %depth.1.ph.lcssa13589 = phi i32 [ %depth.1.ph, %land.end1849 ]
  %next.1.ph.lcssa13515 = phi ptr [ %next.1.ph, %land.end1849 ]
  %st.1.ph.lcssa13436 = phi ptr [ %st.1.ph, %land.end1849 ]
  %rexi.1.ph.lcssa13361 = phi ptr [ %rexi.1.ph, %land.end1849 ]
  %rex.1.ph.lcssa13285 = phi ptr [ %rex.1.ph, %land.end1849 ]
  %rex_sv.1.ph.lcssa13208 = phi ptr [ %rex_sv.1.ph, %land.end1849 ]
  %minmod.112955.lcssa = phi i8 [ %minmod.112955, %land.end1849 ]
  %locinput.112693.lcssa = phi ptr [ %locinput.112693, %land.end1849 ]
  %incdec.ptr1858 = getelementptr inbounds nuw i8, ptr %locinput.112693.lcssa, i64 1
  br label %sw.epilog6360

if.else1859:                                      ; preds = %if.end1830
  %and1862 = and i32 %cond4313098, 254
  %cmp1863 = icmp eq i32 %and1862, 194
  br i1 %cmp1863, label %land.rhs1875, label %utf8_posix_above_latin1

land.rhs1875:                                     ; preds = %if.else1859
  %add.ptr1868 = getelementptr inbounds nuw i8, ptr %locinput.112693, i64 1
  %359 = load i8, ptr %add.ptr1868, align 1
  %360 = and i8 %359, 63
  %cond43.tr = trunc nuw i32 %cond4313098 to i8
  %361 = shl i8 %cond43.tr, 6
  %conv1882 = or disjoint i8 %360, %361
  %idxprom1883 = zext i8 %conv1882 to i64
  %arrayidx1884 = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %idxprom1883
  %362 = load i32, ptr %arrayidx1884, align 4
  %363 = load i8, ptr %scan.112552, align 2
  %conv1886 = zext nneg i8 %363 to i32
  %364 = lshr i32 %362, %conv1886
  %365 = and i32 %364, 1
  %366 = icmp eq i32 %to_complement.9, %365
  br i1 %366, label %no_silent, label %if.end1898

if.end1898:                                       ; preds = %land.rhs1875
  %last_pushed_cv.0.ph.lcssa14861 = phi ptr [ %last_pushed_cv.0.ph, %land.rhs1875 ]
  %caller_cv.0.ph.lcssa14825 = phi ptr [ %caller_cv.0.ph, %land.rhs1875 ]
  %multicall_oldcatch.0.ph.lcssa14788 = phi i8 [ %multicall_oldcatch.0.ph, %land.rhs1875 ]
  %multicall_cv.0.ph.lcssa14751 = phi ptr [ %multicall_cv.0.ph, %land.rhs1875 ]
  %last_pad.0.ph.lcssa14715 = phi ptr [ %last_pad.0.ph, %land.rhs1875 ]
  %sw.0.ph9430.lcssa14667 = phi i1 [ %sw.0.ph9430, %land.rhs1875 ]
  %match.1.ph.lcssa14589 = phi i8 [ %match.1.ph, %land.rhs1875 ]
  %is_utf8_pat.1.ph.lcssa14514 = phi i8 [ %is_utf8_pat.1.ph, %land.rhs1875 ]
  %logical.1.ph.lcssa14440 = phi i32 [ %logical.1.ph, %land.rhs1875 ]
  %sv_yes_mark.1.ph.lcssa14363 = phi ptr [ %sv_yes_mark.1.ph, %land.rhs1875 ]
  %sv_commit.1.ph.lcssa14286 = phi ptr [ %sv_commit.1.ph, %land.rhs1875 ]
  %popmark.1.ph.lcssa14207 = phi ptr [ %popmark.1.ph, %land.rhs1875 ]
  %do_cutgroup.1.ph.lcssa14129 = phi i8 [ %do_cutgroup.1.ph, %land.rhs1875 ]
  %no_final.1.ph.lcssa14051 = phi i8 [ %no_final.1.ph, %land.rhs1875 ]
  %cur_curlyx.1.ph.lcssa13975 = phi ptr [ %cur_curlyx.1.ph, %land.rhs1875 ]
  %cur_eval.1.ph.lcssa13898 = phi ptr [ %cur_eval.1.ph, %land.rhs1875 ]
  %mark_state.1.ph.lcssa13821 = phi ptr [ %mark_state.1.ph, %land.rhs1875 ]
  %yes_state.1.ph.lcssa13743 = phi ptr [ %yes_state.1.ph, %land.rhs1875 ]
  %nochange_depth.1.ph.lcssa13669 = phi i32 [ %nochange_depth.1.ph, %land.rhs1875 ]
  %depth.1.ph.lcssa13590 = phi i32 [ %depth.1.ph, %land.rhs1875 ]
  %next.1.ph.lcssa13516 = phi ptr [ %next.1.ph, %land.rhs1875 ]
  %st.1.ph.lcssa13437 = phi ptr [ %st.1.ph, %land.rhs1875 ]
  %rexi.1.ph.lcssa13362 = phi ptr [ %rexi.1.ph, %land.rhs1875 ]
  %rex.1.ph.lcssa13286 = phi ptr [ %rex.1.ph, %land.rhs1875 ]
  %rex_sv.1.ph.lcssa13209 = phi ptr [ %rex_sv.1.ph, %land.rhs1875 ]
  %minmod.112955.lcssa12972 = phi i8 [ %minmod.112955, %land.rhs1875 ]
  %locinput.112693.lcssa12707 = phi ptr [ %locinput.112693, %land.rhs1875 ]
  %add.ptr1899 = getelementptr inbounds nuw i8, ptr %locinput.112693.lcssa12707, i64 2
  br label %sw.epilog6360

utf8_posix_above_latin1:                          ; preds = %if.else1859, %if.else1750
  %minmod.112954 = phi i8 [ %minmod.112953, %if.else1750 ], [ %minmod.112955, %if.else1859 ]
  %locinput.112692 = phi ptr [ %locinput.112691, %if.else1750 ], [ %locinput.112693, %if.else1859 ]
  %scan.112551 = phi ptr [ %scan.112554, %if.else1750 ], [ %scan.112552, %if.else1859 ]
  %to_complement.10 = phi i32 [ %to_complement.6, %if.else1750 ], [ %to_complement.9, %if.else1859 ]
  %367 = load i8, ptr %scan.112551, align 2
  %cmp1903 = icmp ult i8 %367, 10
  br i1 %cmp1903, label %if.then1905, label %if.else1926

if.then1905:                                      ; preds = %utf8_posix_above_latin1
  %idxprom1906 = zext nneg i8 %367 to i64
  %arrayidx1907 = getelementptr inbounds nuw ptr, ptr @PL_utf8_swash_ptrs, i64 %idxprom1906
  %368 = load ptr, ptr %arrayidx1907, align 8
  %tobool1908.not = icmp eq ptr %368, null
  br i1 %tobool1908.not, label %if.then1909, label %if.end1916

if.then1909:                                      ; preds = %if.then1905
  call void @llvm.lifetime.start.p0(ptr nonnull %flags1910) #10
  store i8 4, ptr %flags1910, align 1
  %arrayidx1912 = getelementptr inbounds nuw ptr, ptr @PL_XPosix_ptrs, i64 %idxprom1906
  %369 = load ptr, ptr %arrayidx1912, align 8
  %call1913 = call ptr @Perl__core_swash_init(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @PL_sv_undef, i32 noundef 1, i32 noundef 0, ptr noundef %369, ptr noundef nonnull %flags1910) #10
  store ptr %call1913, ptr %arrayidx1907, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %flags1910) #10
  br label %if.end1916

if.end1916:                                       ; preds = %if.then1909, %if.then1905
  %370 = load ptr, ptr %arrayidx1907, align 8
  %call1919 = call i64 @Perl_swash_fetch(ptr noundef %370, ptr noundef %locinput.112692, i1 noundef zeroext true) #10
  %tobool1920.not = icmp ne i64 %call1919, 0
  %cond1921 = zext i1 %tobool1920.not to i32
  %tobool1923.not = icmp eq i32 %to_complement.10, %cond1921
  br i1 %tobool1923.not, label %no_silent, label %if.end2193

if.else1926:                                      ; preds = %utf8_posix_above_latin1
  switch i8 %367, label %sw.default [
    i8 10, label %sw.bb1927
    i8 11, label %sw.bb2016
    i8 12, label %sw.bb2099
    i8 15, label %sw.bb2164
  ]

sw.bb1927:                                        ; preds = %if.else1926
  %371 = load i8, ptr %locinput.112692, align 1
  switch i8 %371, label %cond.end2008 [
    i8 -31, label %cond.true1932
    i8 -30, label %cond.true1950
    i8 -29, label %land.lhs.true1993
  ]

cond.true1932:                                    ; preds = %sw.bb1927
  %arrayidx1933 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 1
  %372 = load i8, ptr %arrayidx1933, align 1
  %cmp1935 = icmp eq i8 %372, -102
  br i1 %cmp1935, label %land.rhs1937, label %cond.end2008

land.rhs1937:                                     ; preds = %cond.true1932
  %arrayidx1938 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 2
  %373 = load i8, ptr %arrayidx1938, align 1
  %cmp1940 = icmp eq i8 %373, -128
  br label %cond.end2008

cond.true1950:                                    ; preds = %sw.bb1927
  %arrayidx1951 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 1
  %374 = load i8, ptr %arrayidx1951, align 1
  switch i8 %374, label %cond.end2008 [
    i8 -128, label %cond.true1955
    i8 -127, label %land.rhs1978
  ]

cond.true1955:                                    ; preds = %cond.true1950
  %arrayidx1956 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 2
  %375 = load i8, ptr %arrayidx1956, align 1
  %cmp1958 = icmp ult i8 %375, -117
  %376 = and i8 %375, -2
  %cmp1964 = icmp eq i8 %376, -88
  %or.cond8703 = or i1 %cmp1958, %cmp1964
  %cmp1969 = icmp eq i8 %375, -81
  %377 = or i1 %cmp1969, %or.cond8703
  br label %cond.end2008

land.rhs1978:                                     ; preds = %cond.true1950
  %arrayidx1979 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 2
  %378 = load i8, ptr %arrayidx1979, align 1
  %cmp1981 = icmp eq i8 %378, -97
  br label %cond.end2008

land.lhs.true1993:                                ; preds = %sw.bb1927
  %arrayidx1994 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 1
  %379 = load i8, ptr %arrayidx1994, align 1
  %cmp1996 = icmp eq i8 %379, -128
  br i1 %cmp1996, label %land.rhs1998, label %cond.end2008

land.rhs1998:                                     ; preds = %land.lhs.true1993
  %arrayidx1999 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 2
  %380 = load i8, ptr %arrayidx1999, align 1
  %cmp2001 = icmp eq i8 %380, -128
  br label %cond.end2008

cond.end2008:                                     ; preds = %land.rhs1998, %land.lhs.true1993, %land.rhs1978, %cond.true1955, %cond.true1950, %land.rhs1937, %cond.true1932, %sw.bb1927
  %cond2009 = phi i1 [ %377, %cond.true1955 ], [ false, %cond.true1932 ], [ %cmp1940, %land.rhs1937 ], [ %cmp1981, %land.rhs1978 ], [ false, %cond.true1950 ], [ false, %land.lhs.true1993 ], [ %cmp2001, %land.rhs1998 ], [ false, %sw.bb1927 ]
  %cond2011 = zext i1 %cond2009 to i32
  %tobool2013.not = icmp eq i32 %to_complement.10, %cond2011
  br i1 %tobool2013.not, label %no_silent, label %if.end2193

sw.bb2016:                                        ; preds = %if.else1926
  %381 = load i8, ptr %locinput.112692, align 1
  switch i8 %381, label %cond.end2091 [
    i8 -31, label %cond.true2021
    i8 -30, label %cond.true2039
    i8 -29, label %land.lhs.true2076
  ]

cond.true2021:                                    ; preds = %sw.bb2016
  %arrayidx2022 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 1
  %382 = load i8, ptr %arrayidx2022, align 1
  %cmp2024 = icmp eq i8 %382, -102
  br i1 %cmp2024, label %land.rhs2026, label %cond.end2091

land.rhs2026:                                     ; preds = %cond.true2021
  %arrayidx2027 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 2
  %383 = load i8, ptr %arrayidx2027, align 1
  %cmp2029 = icmp eq i8 %383, -128
  br label %cond.end2091

cond.true2039:                                    ; preds = %sw.bb2016
  %arrayidx2040 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 1
  %384 = load i8, ptr %arrayidx2040, align 1
  switch i8 %384, label %cond.end2091 [
    i8 -128, label %cond.true2044
    i8 -127, label %land.rhs2061
  ]

cond.true2044:                                    ; preds = %cond.true2039
  %arrayidx2045 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 2
  %385 = load i8, ptr %arrayidx2045, align 1
  %cmp2047 = icmp ult i8 %385, -117
  %cmp2052 = icmp eq i8 %385, -81
  %386 = or i1 %cmp2047, %cmp2052
  br label %cond.end2091

land.rhs2061:                                     ; preds = %cond.true2039
  %arrayidx2062 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 2
  %387 = load i8, ptr %arrayidx2062, align 1
  %cmp2064 = icmp eq i8 %387, -97
  br label %cond.end2091

land.lhs.true2076:                                ; preds = %sw.bb2016
  %arrayidx2077 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 1
  %388 = load i8, ptr %arrayidx2077, align 1
  %cmp2079 = icmp eq i8 %388, -128
  br i1 %cmp2079, label %land.rhs2081, label %cond.end2091

land.rhs2081:                                     ; preds = %land.lhs.true2076
  %arrayidx2082 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 2
  %389 = load i8, ptr %arrayidx2082, align 1
  %cmp2084 = icmp eq i8 %389, -128
  br label %cond.end2091

cond.end2091:                                     ; preds = %land.rhs2081, %land.lhs.true2076, %land.rhs2061, %cond.true2044, %cond.true2039, %land.rhs2026, %cond.true2021, %sw.bb2016
  %cond2092 = phi i1 [ %386, %cond.true2044 ], [ false, %cond.true2021 ], [ %cmp2029, %land.rhs2026 ], [ %cmp2064, %land.rhs2061 ], [ false, %cond.true2039 ], [ false, %land.lhs.true2076 ], [ %cmp2084, %land.rhs2081 ], [ false, %sw.bb2016 ]
  %cond2094 = zext i1 %cond2092 to i32
  %tobool2096.not = icmp eq i32 %to_complement.10, %cond2094
  br i1 %tobool2096.not, label %no_silent, label %if.end2193

sw.bb2099:                                        ; preds = %if.else1926
  %390 = load i8, ptr %locinput.112692, align 1
  %cmp2102 = icmp eq i8 %390, -17
  br i1 %cmp2102, label %cond.true2104, label %cond.end2156

cond.true2104:                                    ; preds = %sw.bb2099
  %arrayidx2105 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 1
  %391 = load i8, ptr %arrayidx2105, align 1
  switch i8 %391, label %cond.end2156 [
    i8 -68, label %cond.true2109
    i8 -67, label %land.rhs2138
  ]

cond.true2109:                                    ; preds = %cond.true2104
  %arrayidx2110 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 2
  %392 = load i8, ptr %arrayidx2110, align 1
  %393 = add i8 %392, 112
  %or.cond8704 = icmp ult i8 %393, 10
  br i1 %or.cond8704, label %cond.end2156, label %lor.rhs2119

lor.rhs2119:                                      ; preds = %cond.true2109
  %394 = add i8 %392, 95
  %spec.select9403 = icmp ult i8 %394, 6
  br label %cond.end2156

land.rhs2138:                                     ; preds = %cond.true2104
  %arrayidx2139 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 2
  %395 = load i8, ptr %arrayidx2139, align 1
  %396 = add i8 %395, 127
  %spec.select9404 = icmp ult i8 %396, 6
  br label %cond.end2156

cond.end2156:                                     ; preds = %land.rhs2138, %lor.rhs2119, %cond.true2109, %cond.true2104, %sw.bb2099
  %cond2157 = phi i1 [ false, %sw.bb2099 ], [ true, %cond.true2109 ], [ false, %cond.true2104 ], [ %spec.select9403, %lor.rhs2119 ], [ %spec.select9404, %land.rhs2138 ]
  %cond2159 = zext i1 %cond2157 to i32
  %tobool2161.not = icmp eq i32 %to_complement.10, %cond2159
  br i1 %tobool2161.not, label %no_silent, label %if.end2193

sw.bb2164:                                        ; preds = %if.else1926
  %397 = load i8, ptr %locinput.112692, align 1
  %cmp2167 = icmp eq i8 %397, -30
  br i1 %cmp2167, label %land.lhs.true2169, label %land.end2180

land.lhs.true2169:                                ; preds = %sw.bb2164
  %arrayidx2170 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 1
  %398 = load i8, ptr %arrayidx2170, align 1
  %cmp2172 = icmp eq i8 %398, -128
  br i1 %cmp2172, label %land.rhs2174, label %land.end2180

land.rhs2174:                                     ; preds = %land.lhs.true2169
  %arrayidx2175 = getelementptr inbounds nuw i8, ptr %locinput.112692, i64 2
  %399 = load i8, ptr %arrayidx2175, align 1
  %400 = and i8 %399, -2
  %cmp2178 = icmp eq i8 %400, -88
  %401 = zext i1 %cmp2178 to i32
  br label %land.end2180

land.end2180:                                     ; preds = %land.rhs2174, %land.lhs.true2169, %sw.bb2164
  %cond2184 = phi i32 [ 0, %land.lhs.true2169 ], [ 0, %sw.bb2164 ], [ %401, %land.rhs2174 ]
  %tobool2186.not = icmp eq i32 %to_complement.10, %cond2184
  br i1 %tobool2186.not, label %no_silent, label %if.end2193

sw.default:                                       ; preds = %if.else1926
  %tobool2189.not = icmp eq i32 %to_complement.10, 0
  br i1 %tobool2189.not, label %no_silent, label %if.end2193

if.end2193:                                       ; preds = %sw.default, %land.end2180, %cond.end2156, %cond.end2091, %cond.end2008, %if.end1916
  %last_pushed_cv.0.ph.lcssa14863 = phi ptr [ %last_pushed_cv.0.ph, %cond.end2008 ], [ %last_pushed_cv.0.ph, %cond.end2091 ], [ %last_pushed_cv.0.ph, %cond.end2156 ], [ %last_pushed_cv.0.ph, %land.end2180 ], [ %last_pushed_cv.0.ph, %sw.default ], [ %last_pushed_cv.0.ph, %if.end1916 ]
  %caller_cv.0.ph.lcssa14827 = phi ptr [ %caller_cv.0.ph, %cond.end2008 ], [ %caller_cv.0.ph, %cond.end2091 ], [ %caller_cv.0.ph, %cond.end2156 ], [ %caller_cv.0.ph, %land.end2180 ], [ %caller_cv.0.ph, %sw.default ], [ %caller_cv.0.ph, %if.end1916 ]
  %multicall_oldcatch.0.ph.lcssa14790 = phi i8 [ %multicall_oldcatch.0.ph, %cond.end2008 ], [ %multicall_oldcatch.0.ph, %cond.end2091 ], [ %multicall_oldcatch.0.ph, %cond.end2156 ], [ %multicall_oldcatch.0.ph, %land.end2180 ], [ %multicall_oldcatch.0.ph, %sw.default ], [ %multicall_oldcatch.0.ph, %if.end1916 ]
  %multicall_cv.0.ph.lcssa14753 = phi ptr [ %multicall_cv.0.ph, %cond.end2008 ], [ %multicall_cv.0.ph, %cond.end2091 ], [ %multicall_cv.0.ph, %cond.end2156 ], [ %multicall_cv.0.ph, %land.end2180 ], [ %multicall_cv.0.ph, %sw.default ], [ %multicall_cv.0.ph, %if.end1916 ]
  %last_pad.0.ph.lcssa14717 = phi ptr [ %last_pad.0.ph, %cond.end2008 ], [ %last_pad.0.ph, %cond.end2091 ], [ %last_pad.0.ph, %cond.end2156 ], [ %last_pad.0.ph, %land.end2180 ], [ %last_pad.0.ph, %sw.default ], [ %last_pad.0.ph, %if.end1916 ]
  %sw.0.ph9430.lcssa14669 = phi i1 [ %sw.0.ph9430, %cond.end2008 ], [ %sw.0.ph9430, %cond.end2091 ], [ %sw.0.ph9430, %cond.end2156 ], [ %sw.0.ph9430, %land.end2180 ], [ %sw.0.ph9430, %sw.default ], [ %sw.0.ph9430, %if.end1916 ]
  %match.1.ph.lcssa14591 = phi i8 [ %match.1.ph, %cond.end2008 ], [ %match.1.ph, %cond.end2091 ], [ %match.1.ph, %cond.end2156 ], [ %match.1.ph, %land.end2180 ], [ %match.1.ph, %sw.default ], [ %match.1.ph, %if.end1916 ]
  %is_utf8_pat.1.ph.lcssa14516 = phi i8 [ %is_utf8_pat.1.ph, %cond.end2008 ], [ %is_utf8_pat.1.ph, %cond.end2091 ], [ %is_utf8_pat.1.ph, %cond.end2156 ], [ %is_utf8_pat.1.ph, %land.end2180 ], [ %is_utf8_pat.1.ph, %sw.default ], [ %is_utf8_pat.1.ph, %if.end1916 ]
  %logical.1.ph.lcssa14442 = phi i32 [ %logical.1.ph, %cond.end2008 ], [ %logical.1.ph, %cond.end2091 ], [ %logical.1.ph, %cond.end2156 ], [ %logical.1.ph, %land.end2180 ], [ %logical.1.ph, %sw.default ], [ %logical.1.ph, %if.end1916 ]
  %sv_yes_mark.1.ph.lcssa14365 = phi ptr [ %sv_yes_mark.1.ph, %cond.end2008 ], [ %sv_yes_mark.1.ph, %cond.end2091 ], [ %sv_yes_mark.1.ph, %cond.end2156 ], [ %sv_yes_mark.1.ph, %land.end2180 ], [ %sv_yes_mark.1.ph, %sw.default ], [ %sv_yes_mark.1.ph, %if.end1916 ]
  %sv_commit.1.ph.lcssa14288 = phi ptr [ %sv_commit.1.ph, %cond.end2008 ], [ %sv_commit.1.ph, %cond.end2091 ], [ %sv_commit.1.ph, %cond.end2156 ], [ %sv_commit.1.ph, %land.end2180 ], [ %sv_commit.1.ph, %sw.default ], [ %sv_commit.1.ph, %if.end1916 ]
  %popmark.1.ph.lcssa14209 = phi ptr [ %popmark.1.ph, %cond.end2008 ], [ %popmark.1.ph, %cond.end2091 ], [ %popmark.1.ph, %cond.end2156 ], [ %popmark.1.ph, %land.end2180 ], [ %popmark.1.ph, %sw.default ], [ %popmark.1.ph, %if.end1916 ]
  %do_cutgroup.1.ph.lcssa14131 = phi i8 [ %do_cutgroup.1.ph, %cond.end2008 ], [ %do_cutgroup.1.ph, %cond.end2091 ], [ %do_cutgroup.1.ph, %cond.end2156 ], [ %do_cutgroup.1.ph, %land.end2180 ], [ %do_cutgroup.1.ph, %sw.default ], [ %do_cutgroup.1.ph, %if.end1916 ]
  %no_final.1.ph.lcssa14053 = phi i8 [ %no_final.1.ph, %cond.end2008 ], [ %no_final.1.ph, %cond.end2091 ], [ %no_final.1.ph, %cond.end2156 ], [ %no_final.1.ph, %land.end2180 ], [ %no_final.1.ph, %sw.default ], [ %no_final.1.ph, %if.end1916 ]
  %cur_curlyx.1.ph.lcssa13977 = phi ptr [ %cur_curlyx.1.ph, %cond.end2008 ], [ %cur_curlyx.1.ph, %cond.end2091 ], [ %cur_curlyx.1.ph, %cond.end2156 ], [ %cur_curlyx.1.ph, %land.end2180 ], [ %cur_curlyx.1.ph, %sw.default ], [ %cur_curlyx.1.ph, %if.end1916 ]
  %cur_eval.1.ph.lcssa13900 = phi ptr [ %cur_eval.1.ph, %cond.end2008 ], [ %cur_eval.1.ph, %cond.end2091 ], [ %cur_eval.1.ph, %cond.end2156 ], [ %cur_eval.1.ph, %land.end2180 ], [ %cur_eval.1.ph, %sw.default ], [ %cur_eval.1.ph, %if.end1916 ]
  %mark_state.1.ph.lcssa13823 = phi ptr [ %mark_state.1.ph, %cond.end2008 ], [ %mark_state.1.ph, %cond.end2091 ], [ %mark_state.1.ph, %cond.end2156 ], [ %mark_state.1.ph, %land.end2180 ], [ %mark_state.1.ph, %sw.default ], [ %mark_state.1.ph, %if.end1916 ]
  %yes_state.1.ph.lcssa13745 = phi ptr [ %yes_state.1.ph, %cond.end2008 ], [ %yes_state.1.ph, %cond.end2091 ], [ %yes_state.1.ph, %cond.end2156 ], [ %yes_state.1.ph, %land.end2180 ], [ %yes_state.1.ph, %sw.default ], [ %yes_state.1.ph, %if.end1916 ]
  %nochange_depth.1.ph.lcssa13671 = phi i32 [ %nochange_depth.1.ph, %cond.end2008 ], [ %nochange_depth.1.ph, %cond.end2091 ], [ %nochange_depth.1.ph, %cond.end2156 ], [ %nochange_depth.1.ph, %land.end2180 ], [ %nochange_depth.1.ph, %sw.default ], [ %nochange_depth.1.ph, %if.end1916 ]
  %depth.1.ph.lcssa13592 = phi i32 [ %depth.1.ph, %cond.end2008 ], [ %depth.1.ph, %cond.end2091 ], [ %depth.1.ph, %cond.end2156 ], [ %depth.1.ph, %land.end2180 ], [ %depth.1.ph, %sw.default ], [ %depth.1.ph, %if.end1916 ]
  %next.1.ph.lcssa13518 = phi ptr [ %next.1.ph, %cond.end2008 ], [ %next.1.ph, %cond.end2091 ], [ %next.1.ph, %cond.end2156 ], [ %next.1.ph, %land.end2180 ], [ %next.1.ph, %sw.default ], [ %next.1.ph, %if.end1916 ]
  %st.1.ph.lcssa13439 = phi ptr [ %st.1.ph, %cond.end2008 ], [ %st.1.ph, %cond.end2091 ], [ %st.1.ph, %cond.end2156 ], [ %st.1.ph, %land.end2180 ], [ %st.1.ph, %sw.default ], [ %st.1.ph, %if.end1916 ]
  %rexi.1.ph.lcssa13364 = phi ptr [ %rexi.1.ph, %cond.end2008 ], [ %rexi.1.ph, %cond.end2091 ], [ %rexi.1.ph, %cond.end2156 ], [ %rexi.1.ph, %land.end2180 ], [ %rexi.1.ph, %sw.default ], [ %rexi.1.ph, %if.end1916 ]
  %rex.1.ph.lcssa13288 = phi ptr [ %rex.1.ph, %cond.end2008 ], [ %rex.1.ph, %cond.end2091 ], [ %rex.1.ph, %cond.end2156 ], [ %rex.1.ph, %land.end2180 ], [ %rex.1.ph, %sw.default ], [ %rex.1.ph, %if.end1916 ]
  %rex_sv.1.ph.lcssa13211 = phi ptr [ %rex_sv.1.ph, %cond.end2008 ], [ %rex_sv.1.ph, %cond.end2091 ], [ %rex_sv.1.ph, %cond.end2156 ], [ %rex_sv.1.ph, %land.end2180 ], [ %rex_sv.1.ph, %sw.default ], [ %rex_sv.1.ph, %if.end1916 ]
  %minmod.112954.lcssa = phi i8 [ %minmod.112954, %cond.end2008 ], [ %minmod.112954, %cond.end2091 ], [ %minmod.112954, %cond.end2156 ], [ %minmod.112954, %land.end2180 ], [ %minmod.112954, %sw.default ], [ %minmod.112954, %if.end1916 ]
  %locinput.112692.lcssa = phi ptr [ %locinput.112692, %cond.end2008 ], [ %locinput.112692, %cond.end2091 ], [ %locinput.112692, %cond.end2156 ], [ %locinput.112692, %land.end2180 ], [ %locinput.112692, %sw.default ], [ %locinput.112692, %if.end1916 ]
  %402 = load i8, ptr %locinput.112692.lcssa, align 1
  %idxprom2194 = zext i8 %402 to i64
  %arrayidx2195 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom2194
  %403 = load i8, ptr %arrayidx2195, align 1
  %idx.ext2197 = zext i8 %403 to i64
  %add.ptr2198 = getelementptr inbounds nuw i8, ptr %locinput.112692.lcssa, i64 %idx.ext2197
  br label %sw.epilog6360

sw.bb2201:                                        ; preds = %cond.end42
  %cond43.lcssa13020 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12865 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12605 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12472 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12366 = phi ptr [ %16, %cond.end42 ]
  %cmp2202 = icmp slt i32 %cond43.lcssa13020, 0
  br i1 %cmp2202, label %no_silent, label %if.end2205

if.end2205:                                       ; preds = %sw.bb2201
  %last_pushed_cv.0.ph.lcssa14858 = phi ptr [ %last_pushed_cv.0.ph, %sw.bb2201 ]
  %caller_cv.0.ph.lcssa14822 = phi ptr [ %caller_cv.0.ph, %sw.bb2201 ]
  %multicall_oldcatch.0.ph.lcssa14785 = phi i8 [ %multicall_oldcatch.0.ph, %sw.bb2201 ]
  %multicall_cv.0.ph.lcssa14748 = phi ptr [ %multicall_cv.0.ph, %sw.bb2201 ]
  %last_pad.0.ph.lcssa14712 = phi ptr [ %last_pad.0.ph, %sw.bb2201 ]
  %sw.0.ph9430.lcssa14664 = phi i1 [ %sw.0.ph9430, %sw.bb2201 ]
  %match.1.ph.lcssa14586 = phi i8 [ %match.1.ph, %sw.bb2201 ]
  %is_utf8_pat.1.ph.lcssa14511 = phi i8 [ %is_utf8_pat.1.ph, %sw.bb2201 ]
  %logical.1.ph.lcssa14437 = phi i32 [ %logical.1.ph, %sw.bb2201 ]
  %sv_yes_mark.1.ph.lcssa14360 = phi ptr [ %sv_yes_mark.1.ph, %sw.bb2201 ]
  %sv_commit.1.ph.lcssa14283 = phi ptr [ %sv_commit.1.ph, %sw.bb2201 ]
  %popmark.1.ph.lcssa14204 = phi ptr [ %popmark.1.ph, %sw.bb2201 ]
  %do_cutgroup.1.ph.lcssa14126 = phi i8 [ %do_cutgroup.1.ph, %sw.bb2201 ]
  %no_final.1.ph.lcssa14048 = phi i8 [ %no_final.1.ph, %sw.bb2201 ]
  %cur_curlyx.1.ph.lcssa13972 = phi ptr [ %cur_curlyx.1.ph, %sw.bb2201 ]
  %cur_eval.1.ph.lcssa13895 = phi ptr [ %cur_eval.1.ph, %sw.bb2201 ]
  %mark_state.1.ph.lcssa13818 = phi ptr [ %mark_state.1.ph, %sw.bb2201 ]
  %yes_state.1.ph.lcssa13740 = phi ptr [ %yes_state.1.ph, %sw.bb2201 ]
  %nochange_depth.1.ph.lcssa13666 = phi i32 [ %nochange_depth.1.ph, %sw.bb2201 ]
  %depth.1.ph.lcssa13587 = phi i32 [ %depth.1.ph, %sw.bb2201 ]
  %next.1.ph.lcssa13513 = phi ptr [ %next.1.ph, %sw.bb2201 ]
  %st.1.ph.lcssa13434 = phi ptr [ %st.1.ph, %sw.bb2201 ]
  %rexi.1.ph.lcssa13359 = phi ptr [ %rexi.1.ph, %sw.bb2201 ]
  %rex.1.ph.lcssa13283 = phi ptr [ %rex.1.ph, %sw.bb2201 ]
  %rex_sv.1.ph.lcssa13206 = phi ptr [ %rex_sv.1.ph, %sw.bb2201 ]
  %cond43.lcssa13020.lcssa = phi i32 [ %cond43.lcssa13020, %sw.bb2201 ]
  %minmod.1.lcssa12865.lcssa = phi i8 [ %minmod.1.lcssa12865, %sw.bb2201 ]
  %locinput.1.lcssa12605.lcssa = phi ptr [ %locinput.1.lcssa12605, %sw.bb2201 ]
  %.lcssa12366.lcssa = phi ptr [ %.lcssa12366, %sw.bb2201 ]
  br i1 %loadedv, label %if.else2222, label %if.then2207

if.then2207:                                      ; preds = %if.end2205
  %incdec.ptr2208 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12605.lcssa, i64 1
  %cmp2209 = icmp eq i32 %cond43.lcssa13020.lcssa, 13
  %cmp2213 = icmp ult ptr %incdec.ptr2208, %.lcssa12366.lcssa
  %or.cond9396 = select i1 %cmp2209, i1 %cmp2213, i1 false
  br i1 %or.cond9396, label %land.lhs.true2215, label %sw.epilog6360

land.lhs.true2215:                                ; preds = %if.then2207
  %404 = load i8, ptr %incdec.ptr2208, align 1
  %cmp2217 = icmp eq i8 %404, 10
  %incdec.ptr2220 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12605.lcssa, i64 2
  %spec.select8705 = select i1 %cmp2217, ptr %incdec.ptr2220, ptr %incdec.ptr2208
  br label %sw.epilog6360

if.else2222:                                      ; preds = %if.end2205
  %405 = load ptr, ptr @PL_GCB_invlist, align 8
  %sub.ptr.lhs.cast2224 = ptrtoint ptr %.lcssa12366.lcssa to i64
  %sub.ptr.rhs.cast2225 = ptrtoint ptr %locinput.1.lcssa12605.lcssa to i64
  %sub.ptr.sub2226 = sub i64 %sub.ptr.lhs.cast2224, %sub.ptr.rhs.cast2225
  %call2227 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #10
  %cond2229 = select i1 %call2227, i32 0, i32 -8161
  %call2230 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %locinput.1.lcssa12605.lcssa, i64 noundef %sub.ptr.sub2226, ptr noundef null, i32 noundef %cond2229) #10
  %call2231 = call i64 @Perl__invlist_search(ptr noundef %405, i64 noundef %call2230) #10
  %arrayidx2232 = getelementptr inbounds i32, ptr @Grapheme_Cluster_Break_invmap, i64 %call2231
  %406 = load i32, ptr %arrayidx2232, align 4
  %407 = load i8, ptr %locinput.1.lcssa12605.lcssa, align 1
  %idxprom2233 = zext i8 %407 to i64
  %arrayidx2234 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom2233
  %408 = load i8, ptr %arrayidx2234, align 1
  %idx.ext2236 = zext i8 %408 to i64
  %add.ptr2237 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12605.lcssa, i64 %idx.ext2236
  %409 = load ptr, ptr %strend, align 8
  %cmp224012287 = icmp ult ptr %add.ptr2237, %409
  br i1 %cmp224012287, label %while.body2242.preheader, label %sw.epilog6360

while.body2242.preheader:                         ; preds = %if.else2222
  br label %while.body2242

while.body2242:                                   ; preds = %cleanup2261, %while.body2242.preheader
  %410 = phi ptr [ %415, %cleanup2261 ], [ %409, %while.body2242.preheader ]
  %locinput.612289 = phi ptr [ %add.ptr2260, %cleanup2261 ], [ %add.ptr2237, %while.body2242.preheader ]
  %prev_gcb.012288 = phi i32 [ %412, %cleanup2261 ], [ %406, %while.body2242.preheader ]
  %411 = load ptr, ptr @PL_GCB_invlist, align 8
  %sub.ptr.lhs.cast2244 = ptrtoint ptr %410 to i64
  %sub.ptr.rhs.cast2245 = ptrtoint ptr %locinput.612289 to i64
  %sub.ptr.sub2246 = sub i64 %sub.ptr.lhs.cast2244, %sub.ptr.rhs.cast2245
  %call2247 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #10
  %cond2249 = select i1 %call2247, i32 0, i32 -8161
  %call2250 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %locinput.612289, i64 noundef %sub.ptr.sub2246, ptr noundef null, i32 noundef %cond2249) #10
  %call2251 = call i64 @Perl__invlist_search(ptr noundef %411, i64 noundef %call2250) #10
  %arrayidx2252 = getelementptr inbounds i32, ptr @Grapheme_Cluster_Break_invmap, i64 %call2251
  %412 = load i32, ptr %arrayidx2252, align 4
  %call2253 = call fastcc zeroext i1 @S_isGCB(i32 noundef %prev_gcb.012288, i32 noundef %412)
  br i1 %call2253, label %sw.epilog6360.loopexit12322, label %cleanup2261

cleanup2261:                                      ; preds = %while.body2242
  %413 = load i8, ptr %locinput.612289, align 1
  %idxprom2256 = zext i8 %413 to i64
  %arrayidx2257 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom2256
  %414 = load i8, ptr %arrayidx2257, align 1
  %idx.ext2259 = zext i8 %414 to i64
  %add.ptr2260 = getelementptr inbounds nuw i8, ptr %locinput.612289, i64 %idx.ext2259
  %415 = load ptr, ptr %strend, align 8
  %cmp2240 = icmp ult ptr %add.ptr2260, %415
  br i1 %cmp2240, label %while.body2242, label %sw.epilog6360.loopexit12322

sw.bb2272:                                        ; preds = %cond.end42
  %cond43.lcssa13023 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12868 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12608 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12475 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12369 = phi ptr [ %16, %cond.end42 ]
  br label %do_nref

sw.bb2273:                                        ; preds = %cond.end42
  %cond43.lcssa13024 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12869 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12609 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12476 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12370 = phi ptr [ %16, %cond.end42 ]
  br label %do_nref

sw.bb2274:                                        ; preds = %cond.end42
  %cond43.lcssa13025 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12870 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12610 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12477 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12371 = phi ptr [ %16, %cond.end42 ]
  br label %do_nref

do_nref.loopexit:                                 ; preds = %cond.end42
  %cond43.lcssa13021 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12866 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12606 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12473 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12367 = phi ptr [ %16, %cond.end42 ]
  br label %do_nref

do_nref.loopexit12312:                            ; preds = %cond.end42
  %cond43.lcssa13022 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12867 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12607 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12474 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12368 = phi ptr [ %16, %cond.end42 ]
  br label %do_nref

do_nref:                                          ; preds = %do_nref.loopexit12312, %do_nref.loopexit, %sw.bb2274, %sw.bb2273, %sw.bb2272
  %cond4313104 = phi i32 [ %cond43.lcssa13023, %sw.bb2272 ], [ %cond43.lcssa13024, %sw.bb2273 ], [ %cond43.lcssa13025, %sw.bb2274 ], [ %cond43.lcssa13021, %do_nref.loopexit ], [ %cond43.lcssa13022, %do_nref.loopexit12312 ]
  %minmod.112939 = phi i8 [ %minmod.1.lcssa12868, %sw.bb2272 ], [ %minmod.1.lcssa12869, %sw.bb2273 ], [ %minmod.1.lcssa12870, %sw.bb2274 ], [ %minmod.1.lcssa12866, %do_nref.loopexit ], [ %minmod.1.lcssa12867, %do_nref.loopexit12312 ]
  %locinput.112678 = phi ptr [ %locinput.1.lcssa12608, %sw.bb2272 ], [ %locinput.1.lcssa12609, %sw.bb2273 ], [ %locinput.1.lcssa12610, %sw.bb2274 ], [ %locinput.1.lcssa12606, %do_nref.loopexit ], [ %locinput.1.lcssa12607, %do_nref.loopexit12312 ]
  %scan.112559 = phi ptr [ %scan.1.lcssa12475, %sw.bb2272 ], [ %scan.1.lcssa12476, %sw.bb2273 ], [ %scan.1.lcssa12477, %sw.bb2274 ], [ %scan.1.lcssa12473, %do_nref.loopexit ], [ %scan.1.lcssa12474, %do_nref.loopexit12312 ]
  %416 = phi ptr [ %.lcssa12369, %sw.bb2272 ], [ %.lcssa12370, %sw.bb2273 ], [ %.lcssa12371, %sw.bb2274 ], [ %.lcssa12367, %do_nref.loopexit ], [ %.lcssa12368, %do_nref.loopexit12312 ]
  %type2268.0 = phi i8 [ 54, %sw.bb2272 ], [ 52, %sw.bb2273 ], [ 51, %sw.bb2274 ], [ 53, %do_nref.loopexit ], [ 55, %do_nref.loopexit12312 ]
  %folder2269.0 = phi ptr [ @Perl_foldEQ_latin1, %sw.bb2272 ], [ @Perl_foldEQ, %sw.bb2273 ], [ null, %sw.bb2274 ], [ @Perl_foldEQ_locale, %do_nref.loopexit ], [ @Perl_foldEQ_latin1, %do_nref.loopexit12312 ]
  %fold_array2270.0 = phi ptr [ @PL_fold_latin1, %sw.bb2272 ], [ @PL_fold, %sw.bb2273 ], [ null, %sw.bb2274 ], [ @PL_fold_locale, %do_nref.loopexit ], [ @PL_fold_latin1, %do_nref.loopexit12312 ]
  %utf8_fold_flags.0 = phi i32 [ 0, %sw.bb2272 ], [ 0, %sw.bb2273 ], [ 0, %sw.bb2274 ], [ 2, %do_nref.loopexit ], [ 1, %do_nref.loopexit12312 ]
  %417 = getelementptr i8, ptr %scan.112559, i64 4
  %scan.1.val8744 = load i32, ptr %417, align 4
  %pprivate.i = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 104
  %418 = load ptr, ptr %pprivate.i, align 8
  %data.i = getelementptr inbounds nuw i8, ptr %418, i64 24
  %419 = load ptr, ptr %data.i, align 8
  %data1.i = getelementptr inbounds nuw i8, ptr %419, i64 16
  %idxprom.i = zext i32 %scan.1.val8744 to i64
  %arrayidx.i = getelementptr inbounds nuw ptr, ptr %data1.i, i64 %idxprom.i
  %420 = load ptr, ptr %arrayidx.i, align 8
  %sv_u.i = getelementptr inbounds nuw i8, ptr %420, i64 16
  %421 = load ptr, ptr %sv_u.i, align 8
  %offs.i = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 120
  %422 = load ptr, ptr %420, align 8
  %xiv_u.i = getelementptr inbounds nuw i8, ptr %422, i64 32
  %423 = load i64, ptr %xiv_u.i, align 8
  %cmp1.i = icmp sgt i64 %423, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %S_reg_check_named_buff_matched.exit

for.body.lr.ph.i:                                 ; preds = %do_nref
  %lastparen.i = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 112
  %424 = load i32, ptr %lastparen.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx4.i = getelementptr inbounds nuw i32, ptr %421, i64 %indvars.iv.i
  %425 = load i32, ptr %arrayidx4.i, align 4
  %cmp5.not.i = icmp slt i32 %424, %425
  br i1 %cmp5.not.i, label %for.inc.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %426 = load ptr, ptr %offs.i, align 8
  %idxprom9.i = sext i32 %425 to i64
  %arrayidx10.i = getelementptr inbounds %struct.regexp_paren_pair, ptr %426, i64 %idxprom9.i
  %end.i = getelementptr inbounds nuw i8, ptr %arrayidx10.i, i64 8
  %427 = load i64, ptr %end.i, align 8
  %cmp11.not.i = icmp eq i64 %427, -1
  br i1 %cmp11.not.i, label %for.inc.i, label %S_reg_check_named_buff_matched.exit.loopexit

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %423
  br i1 %exitcond.not.i, label %S_reg_check_named_buff_matched.exit.loopexit, label %for.body.i, !llvm.loop !14

S_reg_check_named_buff_matched.exit.loopexit:     ; preds = %for.inc.i, %land.lhs.true.i
  %retval.0.i.ph = phi i32 [ 0, %for.inc.i ], [ %425, %land.lhs.true.i ]
  br label %S_reg_check_named_buff_matched.exit

S_reg_check_named_buff_matched.exit:              ; preds = %S_reg_check_named_buff_matched.exit.loopexit, %do_nref
  %retval.0.i = phi i32 [ 0, %do_nref ], [ %retval.0.i.ph, %S_reg_check_named_buff_matched.exit.loopexit ]
  %tobool2276.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool2276.not, label %no_silent, label %do_nref_ref_common

sw.bb2281:                                        ; preds = %cond.end42
  %cond43.lcssa13028 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12873 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12613 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12480 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12374 = phi ptr [ %16, %cond.end42 ]
  br label %do_ref

sw.bb2282:                                        ; preds = %cond.end42
  %cond43.lcssa13029 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12874 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12614 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12481 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12375 = phi ptr [ %16, %cond.end42 ]
  br label %do_ref

sw.bb2283:                                        ; preds = %cond.end42
  %cond43.lcssa13030 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12875 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12615 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12482 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12376 = phi ptr [ %16, %cond.end42 ]
  br label %do_ref

do_ref.loopexit:                                  ; preds = %cond.end42
  %cond43.lcssa13026 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12871 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12611 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12478 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12372 = phi ptr [ %16, %cond.end42 ]
  br label %do_ref

do_ref.loopexit12313:                             ; preds = %cond.end42
  %cond43.lcssa13027 = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa12872 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12612 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12479 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12373 = phi ptr [ %16, %cond.end42 ]
  br label %do_ref

do_ref:                                           ; preds = %do_ref.loopexit12313, %do_ref.loopexit, %sw.bb2283, %sw.bb2282, %sw.bb2281
  %cond4313103 = phi i32 [ %cond43.lcssa13028, %sw.bb2281 ], [ %cond43.lcssa13029, %sw.bb2282 ], [ %cond43.lcssa13030, %sw.bb2283 ], [ %cond43.lcssa13026, %do_ref.loopexit ], [ %cond43.lcssa13027, %do_ref.loopexit12313 ]
  %minmod.112938 = phi i8 [ %minmod.1.lcssa12873, %sw.bb2281 ], [ %minmod.1.lcssa12874, %sw.bb2282 ], [ %minmod.1.lcssa12875, %sw.bb2283 ], [ %minmod.1.lcssa12871, %do_ref.loopexit ], [ %minmod.1.lcssa12872, %do_ref.loopexit12313 ]
  %locinput.112677 = phi ptr [ %locinput.1.lcssa12613, %sw.bb2281 ], [ %locinput.1.lcssa12614, %sw.bb2282 ], [ %locinput.1.lcssa12615, %sw.bb2283 ], [ %locinput.1.lcssa12611, %do_ref.loopexit ], [ %locinput.1.lcssa12612, %do_ref.loopexit12313 ]
  %scan.112558 = phi ptr [ %scan.1.lcssa12480, %sw.bb2281 ], [ %scan.1.lcssa12481, %sw.bb2282 ], [ %scan.1.lcssa12482, %sw.bb2283 ], [ %scan.1.lcssa12478, %do_ref.loopexit ], [ %scan.1.lcssa12479, %do_ref.loopexit12313 ]
  %428 = phi ptr [ %.lcssa12374, %sw.bb2281 ], [ %.lcssa12375, %sw.bb2282 ], [ %.lcssa12376, %sw.bb2283 ], [ %.lcssa12372, %do_ref.loopexit ], [ %.lcssa12373, %do_ref.loopexit12313 ]
  %folder2269.1 = phi ptr [ @Perl_foldEQ_latin1, %sw.bb2281 ], [ @Perl_foldEQ, %sw.bb2282 ], [ null, %sw.bb2283 ], [ @Perl_foldEQ_locale, %do_ref.loopexit ], [ @Perl_foldEQ_latin1, %do_ref.loopexit12313 ]
  %fold_array2270.1 = phi ptr [ @PL_fold_latin1, %sw.bb2281 ], [ @PL_fold, %sw.bb2282 ], [ null, %sw.bb2283 ], [ @PL_fold_locale, %do_ref.loopexit ], [ @PL_fold_latin1, %do_ref.loopexit12313 ]
  %utf8_fold_flags.1 = phi i32 [ 0, %sw.bb2281 ], [ 0, %sw.bb2282 ], [ 0, %sw.bb2283 ], [ 2, %do_ref.loopexit ], [ 1, %do_ref.loopexit12313 ]
  %type2284 = getelementptr inbounds nuw i8, ptr %scan.112558, i64 1
  %429 = load i8, ptr %type2284, align 1
  %arg12285 = getelementptr inbounds nuw i8, ptr %scan.112558, i64 4
  %430 = load i32, ptr %arg12285, align 4
  br label %do_nref_ref_common

do_nref_ref_common:                               ; preds = %do_ref, %S_reg_check_named_buff_matched.exit
  %cond4313102 = phi i32 [ %cond4313104, %S_reg_check_named_buff_matched.exit ], [ %cond4313103, %do_ref ]
  %minmod.112937 = phi i8 [ %minmod.112939, %S_reg_check_named_buff_matched.exit ], [ %minmod.112938, %do_ref ]
  %locinput.112676 = phi ptr [ %locinput.112678, %S_reg_check_named_buff_matched.exit ], [ %locinput.112677, %do_ref ]
  %scan.112557 = phi ptr [ %scan.112559, %S_reg_check_named_buff_matched.exit ], [ %scan.112558, %do_ref ]
  %431 = phi ptr [ %416, %S_reg_check_named_buff_matched.exit ], [ %428, %do_ref ]
  %type2268.1 = phi i8 [ %type2268.0, %S_reg_check_named_buff_matched.exit ], [ %429, %do_ref ]
  %folder2269.2 = phi ptr [ %folder2269.0, %S_reg_check_named_buff_matched.exit ], [ %folder2269.1, %do_ref ]
  %fold_array2270.2 = phi ptr [ %fold_array2270.0, %S_reg_check_named_buff_matched.exit ], [ %fold_array2270.1, %do_ref ]
  %utf8_fold_flags.2 = phi i32 [ %utf8_fold_flags.0, %S_reg_check_named_buff_matched.exit ], [ %utf8_fold_flags.1, %do_ref ]
  %n.2 = phi i32 [ %retval.0.i, %S_reg_check_named_buff_matched.exit ], [ %430, %do_ref ]
  %offs2286 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 120
  %432 = load ptr, ptr %offs2286, align 8
  %idxprom2287 = zext i32 %n.2 to i64
  %arrayidx2288 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %432, i64 %idxprom2287
  %433 = load i64, ptr %arrayidx2288, align 8
  %434 = load i32, ptr %poscache_maxiter, align 8
  store i32 %434, ptr %poscache_iter, align 4
  %lastparen2290 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 112
  %435 = load i32, ptr %lastparen2290, align 8
  %cmp2291 = icmp ult i32 %435, %n.2
  %cmp2294 = icmp eq i64 %433, -1
  %or.cond6643 = select i1 %cmp2291, i1 true, i1 %cmp2294
  br i1 %or.cond6643, label %no_silent, label %if.end2297

if.end2297:                                       ; preds = %do_nref_ref_common
  %436 = load ptr, ptr %offs2286, align 8
  %arrayidx2300 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %436, i64 %idxprom2287
  %end2301 = getelementptr inbounds nuw i8, ptr %arrayidx2300, i64 8
  %437 = load i64, ptr %end2301, align 8
  %cmp2302 = icmp eq i64 %433, %437
  br i1 %cmp2302, label %sw.epilog6360.loopexit12320, label %if.end2305

if.end2305:                                       ; preds = %if.end2297
  %438 = load ptr, ptr %strbeg2306, align 8
  %add.ptr2307 = getelementptr inbounds i8, ptr %438, i64 %433
  %cmp2309.not = icmp eq i8 %type2268.1, 51
  br i1 %cmp2309.not, label %if.end2338, label %land.lhs.true2311

land.lhs.true2311:                                ; preds = %if.end2305
  %439 = add i8 %type2268.1, -53
  %440 = icmp ult i8 %439, 2
  %or.cond6645 = select i1 %loadedv, i1 true, i1 %440
  br i1 %or.cond6645, label %if.then2322, label %if.end2338

if.then2322:                                      ; preds = %land.lhs.true2311
  call void @llvm.lifetime.start.p0(ptr nonnull %limit) #10
  store ptr %431, ptr %limit, align 8
  %441 = load i64, ptr %end2301, align 8
  %sub2328 = sub nsw i64 %441, %433
  %call2332 = call i32 @Perl_foldEQ_utf8_flags(ptr noundef %add.ptr2307, ptr noundef null, i64 noundef %sub2328, i1 noundef zeroext %loadedv, ptr noundef %locinput.112676, ptr noundef nonnull %limit, i64 noundef 0, i1 noundef zeroext %loadedv, i32 noundef %utf8_fold_flags.2) #10
  %tobool2333.not = icmp eq i32 %call2332, 0
  %442 = load ptr, ptr %limit, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %limit) #10
  br i1 %tobool2333.not, label %no_silent, label %sw.epilog6360.loopexit12320

if.end2338:                                       ; preds = %land.lhs.true2311, %if.end2305
  %cmp2339 = icmp slt i32 %cond4313102, 0
  br i1 %cmp2339, label %if.end2357, label %land.lhs.true2341

land.lhs.true2341:                                ; preds = %if.end2338
  %443 = load i8, ptr %add.ptr2307, align 1
  %conv2342 = zext i8 %443 to i32
  %cmp2343.not = icmp eq i32 %cond4313102, %conv2342
  br i1 %cmp2343.not, label %if.end2357, label %land.lhs.true2345

land.lhs.true2345:                                ; preds = %land.lhs.true2341
  br i1 %cmp2309.not, label %no_silent, label %lor.lhs.false2349

lor.lhs.false2349:                                ; preds = %land.lhs.true2345
  %idxprom2351 = zext nneg i32 %cond4313102 to i64
  %arrayidx2352 = getelementptr inbounds nuw i8, ptr %fold_array2270.2, i64 %idxprom2351
  %444 = load i8, ptr %arrayidx2352, align 1
  %cmp2354.not = icmp eq i8 %443, %444
  br i1 %cmp2354.not, label %if.end2357, label %no_silent

if.end2357:                                       ; preds = %lor.lhs.false2349, %land.lhs.true2341, %if.end2338
  %sub2362 = sub nsw i64 %437, %433
  %add.ptr2363 = getelementptr inbounds i8, ptr %locinput.112676, i64 %sub2362
  %cmp2365 = icmp ugt ptr %add.ptr2363, %431
  br i1 %cmp2365, label %no_silent, label %if.end2368

if.end2368:                                       ; preds = %if.end2357
  %cmp2369 = icmp sgt i64 %sub2362, 1
  br i1 %cmp2369, label %land.lhs.true2371, label %sw.epilog6360.loopexit12320

land.lhs.true2371:                                ; preds = %if.end2368
  br i1 %cmp2309.not, label %cond.true2375, label %cond.false2378

cond.true2375:                                    ; preds = %land.lhs.true2371
  %bcmp8693 = call i32 @bcmp(ptr %add.ptr2307, ptr %locinput.112676, i64 %sub2362)
  %tobool2377.not = icmp eq i32 %bcmp8693, 0
  br i1 %tobool2377.not, label %sw.epilog6360.loopexit12320, label %no_silent

cond.false2378:                                   ; preds = %land.lhs.true2371
  %conv2379 = trunc i64 %sub2362 to i32
  %call2380 = call i32 %folder2269.2(ptr noundef %add.ptr2307, ptr noundef %locinput.112676, i32 noundef %conv2379) #10, !callees !12
  %tobool2381.not = icmp eq i32 %call2380, 0
  br i1 %tobool2381.not, label %no_silent, label %sw.epilog6360.loopexit12320

sw.bb2386:                                        ; preds = %cond.end42, %cond.end42
  %sw.0.ph9430.lcssa14620 = phi i1 [ %sw.0.ph9430, %cond.end42 ], [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14540 = phi i8 [ %match.1.ph, %cond.end42 ], [ %match.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14391 = phi i32 [ %logical.1.ph, %cond.end42 ], [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14314 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ], [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14237 = phi ptr [ %sv_commit.1.ph, %cond.end42 ], [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14158 = phi ptr [ %popmark.1.ph, %cond.end42 ], [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14080 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ], [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14002 = phi i8 [ %no_final.1.ph, %cond.end42 ], [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13926 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ], [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13849 = phi ptr [ %cur_eval.1.ph, %cond.end42 ], [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13772 = phi ptr [ %mark_state.1.ph, %cond.end42 ], [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13694 = phi ptr [ %yes_state.1.ph, %cond.end42 ], [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13620 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ], [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13541 = phi i32 [ %depth.1.ph, %cond.end42 ], [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13467 = phi ptr [ %next.1.ph, %cond.end42 ], [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13388 = phi ptr [ %st.1.ph, %cond.end42 ], [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13313 = phi ptr [ %rexi.1.ph, %cond.end42 ], [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13237 = phi ptr [ %rex.1.ph, %cond.end42 ], [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13160 = phi ptr [ %rex_sv.1.ph, %cond.end42 ], [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12877 = phi i8 [ %minmod.1, %cond.end42 ], [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12617 = phi ptr [ %locinput.1, %cond.end42 ], [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12484 = phi ptr [ %scan.1, %cond.end42 ], [ %scan.1, %cond.end42 ]
  %tobool2387.not = icmp eq ptr %cur_eval.1.ph.lcssa13849, null
  br i1 %tobool2387.not, label %if.end2405, label %land.lhs.true2388

land.lhs.true2388:                                ; preds = %sw.bb2386
  %locinput2389 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph.lcssa13849, i64 8
  %445 = load ptr, ptr %locinput2389, align 8
  %cmp2390 = icmp eq ptr %445, %locinput.1.lcssa12617
  br i1 %cmp2390, label %if.then2392, label %if.end2405

if.then2392:                                      ; preds = %land.lhs.true2388
  %close_paren = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph.lcssa13849, i64 56
  %446 = load i32, ptr %close_paren, align 8
  %arg12394 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12484, i64 4
  %447 = load i32, ptr %arg12394, align 4
  %cmp2395 = icmp eq i32 %446, %447
  br i1 %cmp2395, label %if.then2397, label %if.end2398

if.then2397:                                      ; preds = %if.then2392
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10) #10
  br label %if.end2398

if.end2398:                                       ; preds = %if.then2397, %if.then2392
  %inc2399 = add i32 %nochange_depth.1.ph.lcssa13620, 1
  %cmp2400 = icmp ugt i32 %inc2399, %spec.select
  br i1 %cmp2400, label %if.then2402, label %if.end2405

if.then2402:                                      ; preds = %if.end2398
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11) #10
  br label %if.end2405

if.end2405:                                       ; preds = %if.then2402, %if.end2398, %land.lhs.true2388, %sw.bb2386
  %nochange_depth.2 = phi i32 [ %inc2399, %if.then2402 ], [ %inc2399, %if.end2398 ], [ 0, %land.lhs.true2388 ], [ 0, %sw.bb2386 ]
  %type2406 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12484, i64 1
  %448 = load i8, ptr %type2406, align 1
  %cmp2408 = icmp eq i8 %448, 76
  br i1 %cmp2408, label %if.then2410, label %if.else2416

if.then2410:                                      ; preds = %if.end2405
  %arg2 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12484, i64 8
  %449 = load i32, ptr %arg2, align 4
  %idx.ext2411 = sext i32 %449 to i64
  %add.ptr2412 = getelementptr inbounds %struct.regnode, ptr %scan.1.lcssa12484, i64 %idx.ext2411
  %arg12413 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12484, i64 4
  %450 = load i32, ptr %arg12413, align 4
  br label %if.end2421

if.else2416:                                      ; preds = %if.end2405
  %add.ptr2418 = getelementptr inbounds nuw i8, ptr %rexi.1.ph.lcssa13313, i64 48
  br label %if.end2421

if.end2421:                                       ; preds = %if.else2416, %if.then2410
  %.sink = phi i32 [ %450, %if.then2410 ], [ 0, %if.else2416 ]
  %startpoint2385.0 = phi ptr [ %add.ptr2412, %if.then2410 ], [ %add.ptr2418, %if.else2416 ]
  %451 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13388, i64 56
  store i32 %.sink, ptr %451, align 8
  %452 = load i32, ptr %maxopenparen, align 4
  %call2422 = call fastcc i32 @S_regcppush(ptr noundef %rex.1.ph.lcssa13237, i32 noundef 0, i32 noundef %452)
  %cp2424 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13388, i64 48
  store i32 %call2422, ptr %cp2424, align 8
  %453 = load i32, ptr @PL_savestack_ix, align 4
  %lastcp = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13388, i64 52
  store i32 %453, ptr %lastcp, align 4
  br label %eval_recurse_doit

sw.bb2426:                                        ; preds = %cond.end42
  %sw.0.ph9430.lcssa14621 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14541 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14466 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14392 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14315 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14238 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14159 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14081 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14003 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13927 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13850 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13773 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13695 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13621 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13542 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13468 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13389 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13314 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13238 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13161 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12878 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12618 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12485 = phi ptr [ %scan.1, %cond.end42 ]
  %tobool2427.not = icmp eq ptr %cur_eval.1.ph.lcssa13850, null
  br i1 %tobool2427.not, label %if.end2439, label %land.lhs.true2428

land.lhs.true2428:                                ; preds = %sw.bb2426
  %locinput2429 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph.lcssa13850, i64 8
  %454 = load ptr, ptr %locinput2429, align 8
  %cmp2430 = icmp eq ptr %454, %locinput.1.lcssa12618
  br i1 %cmp2430, label %if.then2432, label %if.end2439

if.then2432:                                      ; preds = %land.lhs.true2428
  %inc2433 = add i32 %nochange_depth.1.ph.lcssa13621, 1
  %cmp2434 = icmp ugt i32 %inc2433, %spec.select
  br i1 %cmp2434, label %if.then2436, label %if.end2439

if.then2436:                                      ; preds = %if.then2432
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.12) #10
  br label %if.end2439

if.end2439:                                       ; preds = %if.then2436, %if.then2432, %land.lhs.true2428, %sw.bb2426
  %nochange_depth.3 = phi i32 [ %inc2433, %if.then2436 ], [ %inc2433, %if.then2432 ], [ 0, %land.lhs.true2428 ], [ 0, %sw.bb2426 ]
  %455 = load ptr, ptr @PL_stack_sp, align 8
  %456 = load ptr, ptr @PL_op, align 8
  %457 = load ptr, ptr @PL_curcop, align 8
  %458 = load i32, ptr %maxopenparen, align 4
  %call2440 = call fastcc i32 @S_regcppush(ptr noundef %rex.1.ph.lcssa13238, i32 noundef 0, i32 noundef %458)
  %459 = load i32, ptr @PL_savestack_ix, align 4
  %tobool2441.not = icmp eq ptr %caller_cv.0.ph, null
  br i1 %tobool2441.not, label %if.then2442, label %if.end2444

if.then2442:                                      ; preds = %if.end2439
  %call2443 = call ptr @Perl_find_runcv(ptr noundef null) #10
  br label %if.end2444

if.end2444:                                       ; preds = %if.then2442, %if.end2439
  %caller_cv.1 = phi ptr [ %caller_cv.0.ph, %if.end2439 ], [ %call2443, %if.then2442 ]
  %arg12445 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12485, i64 4
  %460 = load i32, ptr %arg12445, align 4
  %data2446 = getelementptr inbounds nuw i8, ptr %rexi.1.ph.lcssa13314, i64 24
  %461 = load ptr, ptr %data2446, align 8
  %what = getelementptr inbounds nuw i8, ptr %461, i64 8
  %462 = load ptr, ptr %what, align 8
  %idxprom2447 = zext i32 %460 to i64
  %arrayidx2448 = getelementptr inbounds nuw i8, ptr %462, i64 %idxprom2447
  %463 = load i8, ptr %arrayidx2448, align 1
  switch i8 %463, label %if.else2476 [
    i8 114, label %if.then2452
    i8 108, label %if.then2471
  ]

if.then2452:                                      ; preds = %if.end2444
  %data2454 = getelementptr inbounds nuw i8, ptr %461, i64 16
  %arrayidx2456 = getelementptr inbounds nuw ptr, ptr %data2454, i64 %idxprom2447
  %464 = load ptr, ptr %arrayidx2456, align 8
  %465 = getelementptr i8, ptr %464, i64 16
  %.val8742 = load ptr, ptr %465, align 8
  %qr_anoncv = getelementptr inbounds nuw i8, ptr %.val8742, i64 184
  %466 = load ptr, ptr %qr_anoncv, align 8
  %add2460 = add i32 %460, 1
  %idxprom2461 = zext i32 %add2460 to i64
  %arrayidx2462 = getelementptr inbounds nuw ptr, ptr %data2454, i64 %idxprom2461
  br label %if.end2483

if.then2471:                                      ; preds = %if.end2444
  %data2473 = getelementptr inbounds nuw i8, ptr %461, i64 16
  %arrayidx2475 = getelementptr inbounds nuw ptr, ptr %data2473, i64 %idxprom2447
  br label %if.end2483

if.else2476:                                      ; preds = %if.end2444
  %qr_anoncv2477 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13238, i64 184
  %467 = load ptr, ptr %qr_anoncv2477, align 8
  %data2479 = getelementptr inbounds nuw i8, ptr %461, i64 16
  %arrayidx2481 = getelementptr inbounds nuw ptr, ptr %data2479, i64 %idxprom2447
  br label %if.end2483

if.end2483:                                       ; preds = %if.else2476, %if.then2471, %if.then2452
  %nop.0.in = phi ptr [ %arrayidx2462, %if.then2452 ], [ %arrayidx2475, %if.then2471 ], [ %arrayidx2481, %if.else2476 ]
  %newcv.0 = phi ptr [ %466, %if.then2452 ], [ %caller_cv.1, %if.then2471 ], [ %467, %if.else2476 ]
  %nop.0 = load ptr, ptr %nop.0.in, align 8
  %cmp2484.not = icmp eq ptr %newcv.0, %last_pushed_cv.0.ph
  %468 = load ptr, ptr @PL_comppad, align 8
  %cmp2487.not = icmp eq ptr %468, %last_pad.0.ph
  %or.cond8706 = select i1 %cmp2484.not, i1 %cmp2487.not, i1 false
  br i1 %or.cond8706, label %if.end2741, label %if.then2489

if.then2489:                                      ; preds = %if.end2483
  %cmp2491.not.not = icmp eq ptr %newcv.0, %caller_cv.1
  %conv2495 = select i1 %cmp2491.not.not, i8 -64, i8 64
  %tobool2496.not = icmp eq ptr %last_pushed_cv.0.ph, null
  br i1 %tobool2496.not, label %do.body2584, label %do.body2498

do.body2498:                                      ; preds = %if.then2489
  %469 = load ptr, ptr %newcv.0, align 8
  %xcv_padlist_u = getelementptr inbounds nuw i8, ptr %469, i64 72
  %470 = load ptr, ptr %xcv_padlist_u, align 8
  %471 = load ptr, ptr @PL_curstackinfo, align 8
  %si_cxstack = getelementptr inbounds nuw i8, ptr %471, i64 8
  %472 = load ptr, ptr %si_cxstack, align 8
  %si_cxix = getelementptr inbounds nuw i8, ptr %471, i64 32
  %473 = load i32, ptr %si_cxix, align 8
  %idxprom2500 = sext i32 %473 to i64
  %arrayidx2501 = getelementptr inbounds %struct.context, ptr %472, i64 %idxprom2500
  %blk_u = getelementptr inbounds nuw i8, ptr %arrayidx2501, i64 32
  %olddepth = getelementptr inbounds nuw i8, ptr %arrayidx2501, i64 64
  %474 = load i32, ptr %olddepth, align 8
  %multicall_cv.0.val8756 = load ptr, ptr %multicall_cv.0.ph, align 8
  %xcv_depth.i = getelementptr inbounds nuw i8, ptr %multicall_cv.0.val8756, i64 96
  store i32 %474, ptr %xcv_depth.i, align 4
  %tobool2503.not = icmp eq i32 %474, 0
  br i1 %tobool2503.not, label %if.then.i, label %if.end2508

if.then.i:                                        ; preds = %do.body2498
  %sv_refcnt.i = getelementptr inbounds nuw i8, ptr %multicall_cv.0.ph, i64 8
  %475 = load i32, ptr %sv_refcnt.i, align 8
  %cmp1.i8992 = icmp ugt i32 %475, 1
  br i1 %cmp1.i8992, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %475, -1
  store i32 %sub.i, ptr %sv_refcnt.i, align 8
  br label %if.end2508

if.else.i:                                        ; preds = %if.then.i
  call void @Perl_sv_free2(ptr noundef nonnull %multicall_cv.0.ph, i32 noundef %475) #10
  br label %if.end2508

if.end2508:                                       ; preds = %if.else.i, %if.then4.i, %do.body2498
  %or2510 = or disjoint i8 %conv2495, 24
  store i8 %or2510, ptr %arrayidx2501, align 8
  %476 = load ptr, ptr @PL_op, align 8
  %op_flags = getelementptr inbounds nuw i8, ptr %476, i64 34
  %477 = load i8, ptr %op_flags, align 2
  %478 = and i8 %477, 3
  %tobool2515.not = icmp eq i8 %478, 0
  br i1 %tobool2515.not, label %cond.false2517, label %cond.end2528

cond.false2517:                                   ; preds = %if.end2508
  %op_private = getelementptr inbounds nuw i8, ptr %476, i64 35
  %479 = load i8, ptr %op_private, align 1
  %480 = and i8 %479, -127
  %tobool2520.not = icmp eq i8 %480, 0
  br i1 %tobool2520.not, label %cond.end2528, label %cond.false2522

cond.false2522:                                   ; preds = %cond.false2517
  %call2523 = call i32 @Perl_was_lvalue_sub() #10
  %481 = and i32 %call2523, 207
  %482 = or disjoint i32 %481, 48
  br label %cond.end2528

cond.end2528:                                     ; preds = %cond.false2522, %cond.false2517, %if.end2508
  %cond2529 = phi i32 [ 177, %if.end2508 ], [ %482, %cond.false2522 ], [ 48, %cond.false2517 ]
  %cv2533 = getelementptr inbounds nuw i8, ptr %arrayidx2501, i64 40
  store ptr %newcv.0, ptr %cv2533, align 8
  %newcv.0.val8755 = load ptr, ptr %newcv.0, align 8
  %xcv_depth.i8993 = getelementptr inbounds nuw i8, ptr %newcv.0.val8755, i64 96
  %483 = load i32, ptr %xcv_depth.i8993, align 4
  store i32 %483, ptr %olddepth, align 8
  store ptr null, ptr %blk_u, align 8
  %newcv.0.val8754 = load ptr, ptr %newcv.0, align 8
  %xcv_depth.i8994 = getelementptr inbounds nuw i8, ptr %newcv.0.val8754, i64 96
  %484 = load i32, ptr %xcv_depth.i8994, align 4
  %tobool2549.not = icmp eq i32 %484, 0
  br i1 %tobool2549.not, label %if.then2550, label %if.end2555

if.then2550:                                      ; preds = %cond.end2528
  %sv_refcnt2551 = getelementptr inbounds nuw i8, ptr %newcv.0, i64 8
  %485 = load i32, ptr %sv_refcnt2551, align 8
  %inc2554 = add i32 %485, 2
  store i32 %inc2554, ptr %sv_refcnt2551, align 8
  call void @Perl_save_pushptr(ptr noundef nonnull %newcv.0, i32 noundef 11) #10
  br label %if.end2555

if.end2555:                                       ; preds = %if.then2550, %cond.end2528
  %486 = load ptr, ptr @PL_op, align 8
  %op_private2556 = getelementptr inbounds nuw i8, ptr %486, i64 35
  %487 = load i8, ptr %op_private2556, align 1
  %conv2557 = zext i8 %487 to i32
  %and2560 = and i32 %cond2529, %conv2557
  %conv2561 = trunc nuw nsw i32 %and2560 to i16
  %blku_u16 = getelementptr inbounds nuw i8, ptr %arrayidx2501, i64 2
  store i16 %conv2561, ptr %blku_u16, align 2
  br i1 %cmp2491.not.not, label %if.end2569, label %if.then2566

if.then2566:                                      ; preds = %if.end2555
  %newcv.0.val8753 = load ptr, ptr %newcv.0, align 8
  %xcv_depth.i8995 = getelementptr inbounds nuw i8, ptr %newcv.0.val8753, i64 96
  %488 = load i32, ptr %xcv_depth.i8995, align 4
  %inc2568 = add nsw i32 %488, 1
  store i32 %inc2568, ptr %xcv_depth.i8995, align 4
  br label %if.end2569

if.end2569:                                       ; preds = %if.then2566, %if.end2555
  %newcv.0.val8752 = load ptr, ptr %newcv.0, align 8
  %xcv_depth.i8996 = getelementptr inbounds nuw i8, ptr %newcv.0.val8752, i64 96
  %489 = load i32, ptr %xcv_depth.i8996, align 4
  %cmp2571 = icmp sgt i32 %489, 1
  br i1 %cmp2571, label %if.then2573, label %if.end2575

if.then2573:                                      ; preds = %if.end2569
  call void @Perl_pad_push(ptr noundef %470, i32 noundef %489) #10
  br label %if.end2575

if.end2575:                                       ; preds = %if.then2573, %if.end2569
  %490 = load ptr, ptr @PL_comppad, align 8
  call void @Perl_save_pushptr(ptr noundef %490, i32 noundef 7) #10
  %xpadl_alloc = getelementptr inbounds nuw i8, ptr %470, i64 8
  %491 = load ptr, ptr %xpadl_alloc, align 8
  %newcv.0.val8750 = load ptr, ptr %newcv.0, align 8
  %xcv_depth.i8998 = getelementptr inbounds nuw i8, ptr %newcv.0.val8750, i64 96
  %492 = load i32, ptr %xcv_depth.i8998, align 4
  %idxprom2577 = sext i32 %492 to i64
  %arrayidx2578 = getelementptr inbounds ptr, ptr %491, i64 %idxprom2577
  br label %if.end2739

do.body2584:                                      ; preds = %if.then2489
  %493 = load ptr, ptr %newcv.0, align 8
  %xcv_padlist_u2589 = getelementptr inbounds nuw i8, ptr %493, i64 72
  %494 = load ptr, ptr %xcv_padlist_u2589, align 8
  call void @Perl_push_scope() #10
  %495 = load ptr, ptr @PL_top_env, align 8
  %je_mustcatch = getelementptr inbounds nuw i8, ptr %495, i64 212
  %496 = load i8, ptr %je_mustcatch, align 4, !range !0, !noundef !1
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #10
  %497 = load i64, ptr @PL_tmps_ix, align 8
  store i64 %497, ptr @PL_tmps_floor, align 8
  call void @Perl_save_vptr(ptr noundef nonnull @PL_op) #10
  %498 = load ptr, ptr @PL_top_env, align 8
  %je_mustcatch2593 = getelementptr inbounds nuw i8, ptr %498, i64 212
  store i8 1, ptr %je_mustcatch2593, align 4
  %499 = load ptr, ptr @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds nuw i8, ptr %499, i64 24
  %500 = load ptr, ptr %si_next, align 8
  %tobool2598.not = icmp eq ptr %500, null
  br i1 %tobool2598.not, label %if.then2599, label %if.end2602

if.then2599:                                      ; preds = %do.body2584
  %call2600 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #10
  %501 = load ptr, ptr @PL_curstackinfo, align 8
  %si_prev = getelementptr inbounds nuw i8, ptr %call2600, i64 16
  store ptr %501, ptr %si_prev, align 8
  %si_next2601 = getelementptr inbounds nuw i8, ptr %501, i64 24
  store ptr %call2600, ptr %si_next2601, align 8
  br label %if.end2602

if.end2602:                                       ; preds = %if.then2599, %do.body2584
  %next2597.0 = phi ptr [ %500, %do.body2584 ], [ %call2600, %if.then2599 ]
  %si_type = getelementptr inbounds nuw i8, ptr %next2597.0, i64 40
  store i32 3, ptr %si_type, align 8
  %si_cxix2603 = getelementptr inbounds nuw i8, ptr %next2597.0, i64 32
  store i32 -1, ptr %si_cxix2603, align 8
  %502 = load ptr, ptr %next2597.0, align 8
  %503 = load ptr, ptr %502, align 8
  %xav_fill = getelementptr inbounds nuw i8, ptr %503, i64 16
  store i64 0, ptr %xav_fill, align 8
  %504 = load ptr, ptr @PL_stack_base, align 8
  %sub.ptr.lhs.cast2606 = ptrtoint ptr %455 to i64
  %sub.ptr.rhs.cast2607 = ptrtoint ptr %504 to i64
  %sub.ptr.sub2608 = sub i64 %sub.ptr.lhs.cast2606, %sub.ptr.rhs.cast2607
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub2608, 3
  %505 = load ptr, ptr @PL_curstack, align 8
  %506 = load ptr, ptr %505, align 8
  %xav_fill2610 = getelementptr inbounds nuw i8, ptr %506, i64 16
  store i64 %sub.ptr.div, ptr %xav_fill2610, align 8
  %507 = load ptr, ptr %next2597.0, align 8
  %sv_u2612 = getelementptr inbounds nuw i8, ptr %507, i64 16
  %508 = load ptr, ptr %sv_u2612, align 8
  store ptr %508, ptr @PL_stack_base, align 8
  %509 = load ptr, ptr %next2597.0, align 8
  %510 = load ptr, ptr %509, align 8
  %xav_max = getelementptr inbounds nuw i8, ptr %510, i64 24
  %511 = load i64, ptr %xav_max, align 8
  %add.ptr2615 = getelementptr inbounds ptr, ptr %508, i64 %511
  store ptr %add.ptr2615, ptr @PL_stack_max, align 8
  %512 = load ptr, ptr %next2597.0, align 8
  %513 = load ptr, ptr %512, align 8
  %xav_fill2618 = getelementptr inbounds nuw i8, ptr %513, i64 16
  %514 = load i64, ptr %xav_fill2618, align 8
  %add.ptr2619 = getelementptr inbounds ptr, ptr %508, i64 %514
  store ptr %add.ptr2619, ptr @PL_stack_sp, align 8
  %515 = load ptr, ptr %next2597.0, align 8
  store ptr %515, ptr @PL_curstack, align 8
  store ptr %next2597.0, ptr @PL_curstackinfo, align 8
  %516 = load i32, ptr %si_cxix2603, align 8
  %si_cxmax = getelementptr inbounds nuw i8, ptr %next2597.0, i64 36
  %517 = load i32, ptr %si_cxmax, align 4
  %cmp2626 = icmp slt i32 %516, %517
  br i1 %cmp2626, label %cond.true2628, label %cond.false2631

cond.true2628:                                    ; preds = %if.end2602
  %inc2630 = add nsw i32 %516, 1
  store i32 %inc2630, ptr %si_cxix2603, align 8
  br label %cond.end2634

cond.false2631:                                   ; preds = %if.end2602
  %call2632 = call i32 @Perl_cxinc() #10
  %518 = load ptr, ptr @PL_curstackinfo, align 8
  %si_cxix2633 = getelementptr inbounds nuw i8, ptr %518, i64 32
  store i32 %call2632, ptr %si_cxix2633, align 8
  br label %cond.end2634

cond.end2634:                                     ; preds = %cond.false2631, %cond.true2628
  %519 = load ptr, ptr @PL_curstackinfo, align 8
  %si_cxstack2636 = getelementptr inbounds nuw i8, ptr %519, i64 8
  %520 = load ptr, ptr %si_cxstack2636, align 8
  %si_cxix2637 = getelementptr inbounds nuw i8, ptr %519, i64 32
  %521 = load i32, ptr %si_cxix2637, align 8
  %idxprom2638 = sext i32 %521 to i64
  %arrayidx2639 = getelementptr inbounds %struct.context, ptr %520, i64 %idxprom2638
  %or2641 = or disjoint i8 %conv2495, 24
  store i8 %or2641, ptr %arrayidx2639, align 8
  %522 = load ptr, ptr @PL_stack_sp, align 8
  %523 = load ptr, ptr @PL_stack_base, align 8
  %sub.ptr.lhs.cast2645 = ptrtoint ptr %522 to i64
  %sub.ptr.rhs.cast2646 = ptrtoint ptr %523 to i64
  %sub.ptr.sub2647 = sub i64 %sub.ptr.lhs.cast2645, %sub.ptr.rhs.cast2646
  %sub.ptr.div2648 = lshr exact i64 %sub.ptr.sub2647, 3
  %conv2649 = trunc i64 %sub.ptr.div2648 to i32
  %blku_oldsp = getelementptr inbounds nuw i8, ptr %arrayidx2639, i64 4
  store i32 %conv2649, ptr %blku_oldsp, align 4
  %524 = load ptr, ptr @PL_curcop, align 8
  %blku_oldcop = getelementptr inbounds nuw i8, ptr %arrayidx2639, i64 8
  store ptr %524, ptr %blku_oldcop, align 8
  %525 = load ptr, ptr @PL_markstack_ptr, align 8
  %526 = load ptr, ptr @PL_markstack, align 8
  %sub.ptr.lhs.cast2652 = ptrtoint ptr %525 to i64
  %sub.ptr.rhs.cast2653 = ptrtoint ptr %526 to i64
  %sub.ptr.sub2654 = sub i64 %sub.ptr.lhs.cast2652, %sub.ptr.rhs.cast2653
  %sub.ptr.div2655 = lshr exact i64 %sub.ptr.sub2654, 2
  %conv2656 = trunc i64 %sub.ptr.div2655 to i32
  %blku_oldmarksp = getelementptr inbounds nuw i8, ptr %arrayidx2639, i64 16
  store i32 %conv2656, ptr %blku_oldmarksp, align 8
  %527 = load i32, ptr @PL_scopestack_ix, align 4
  %blku_oldscopesp = getelementptr inbounds nuw i8, ptr %arrayidx2639, i64 20
  store i32 %527, ptr %blku_oldscopesp, align 4
  %528 = load ptr, ptr @PL_curpm, align 8
  %blku_oldpm = getelementptr inbounds nuw i8, ptr %arrayidx2639, i64 24
  store ptr %528, ptr %blku_oldpm, align 8
  %blku_gimme = getelementptr inbounds nuw i8, ptr %arrayidx2639, i64 1
  store i8 2, ptr %blku_gimme, align 1
  %529 = load ptr, ptr @PL_op, align 8
  %op_flags2663 = getelementptr inbounds nuw i8, ptr %529, i64 34
  %530 = load i8, ptr %op_flags2663, align 2
  %531 = and i8 %530, 3
  %tobool2666.not = icmp eq i8 %531, 0
  br i1 %tobool2666.not, label %cond.false2668, label %cond.end2680

cond.false2668:                                   ; preds = %cond.end2634
  %op_private2669 = getelementptr inbounds nuw i8, ptr %529, i64 35
  %532 = load i8, ptr %op_private2669, align 1
  %533 = and i8 %532, -127
  %tobool2672.not = icmp eq i8 %533, 0
  br i1 %tobool2672.not, label %cond.end2680, label %cond.false2674

cond.false2674:                                   ; preds = %cond.false2668
  %call2675 = call i32 @Perl_was_lvalue_sub() #10
  %534 = and i32 %call2675, 207
  %535 = or disjoint i32 %534, 48
  br label %cond.end2680

cond.end2680:                                     ; preds = %cond.false2674, %cond.false2668, %cond.end2634
  %cond2681 = phi i32 [ 177, %cond.end2634 ], [ %535, %cond.false2674 ], [ 48, %cond.false2668 ]
  %blk_u2684 = getelementptr inbounds nuw i8, ptr %arrayidx2639, i64 32
  %cv2685 = getelementptr inbounds nuw i8, ptr %arrayidx2639, i64 40
  store ptr %newcv.0, ptr %cv2685, align 8
  %newcv.0.val8749 = load ptr, ptr %newcv.0, align 8
  %xcv_depth.i8999 = getelementptr inbounds nuw i8, ptr %newcv.0.val8749, i64 96
  %536 = load i32, ptr %xcv_depth.i8999, align 4
  %olddepth2689 = getelementptr inbounds nuw i8, ptr %arrayidx2639, i64 64
  store i32 %536, ptr %olddepth2689, align 8
  store ptr null, ptr %blk_u2684, align 8
  %newcv.0.val8748 = load ptr, ptr %newcv.0, align 8
  %xcv_depth.i9000 = getelementptr inbounds nuw i8, ptr %newcv.0.val8748, i64 96
  %537 = load i32, ptr %xcv_depth.i9000, align 4
  %tobool2702.not = icmp eq i32 %537, 0
  br i1 %tobool2702.not, label %if.then2703, label %if.end2708

if.then2703:                                      ; preds = %cond.end2680
  %sv_refcnt2704 = getelementptr inbounds nuw i8, ptr %newcv.0, i64 8
  %538 = load i32, ptr %sv_refcnt2704, align 8
  %inc2707 = add i32 %538, 2
  store i32 %inc2707, ptr %sv_refcnt2704, align 8
  call void @Perl_save_pushptr(ptr noundef nonnull %newcv.0, i32 noundef 11) #10
  br label %if.end2708

if.end2708:                                       ; preds = %if.then2703, %cond.end2680
  %539 = load ptr, ptr @PL_op, align 8
  %op_private2709 = getelementptr inbounds nuw i8, ptr %539, i64 35
  %540 = load i8, ptr %op_private2709, align 1
  %conv2710 = zext i8 %540 to i32
  %and2713 = and i32 %cond2681, %conv2710
  %conv2714 = trunc nuw nsw i32 %and2713 to i16
  %blku_u162716 = getelementptr inbounds nuw i8, ptr %arrayidx2639, i64 2
  store i16 %conv2714, ptr %blku_u162716, align 2
  br i1 %cmp2491.not.not, label %if.end2723, label %if.then2720

if.then2720:                                      ; preds = %if.end2708
  %newcv.0.val8747 = load ptr, ptr %newcv.0, align 8
  %xcv_depth.i9001 = getelementptr inbounds nuw i8, ptr %newcv.0.val8747, i64 96
  %541 = load i32, ptr %xcv_depth.i9001, align 4
  %inc2722 = add nsw i32 %541, 1
  store i32 %inc2722, ptr %xcv_depth.i9001, align 4
  br label %if.end2723

if.end2723:                                       ; preds = %if.then2720, %if.end2708
  %newcv.0.val8746 = load ptr, ptr %newcv.0, align 8
  %xcv_depth.i9002 = getelementptr inbounds nuw i8, ptr %newcv.0.val8746, i64 96
  %542 = load i32, ptr %xcv_depth.i9002, align 4
  %cmp2725 = icmp sgt i32 %542, 1
  br i1 %cmp2725, label %if.then2727, label %if.end2729

if.then2727:                                      ; preds = %if.end2723
  call void @Perl_pad_push(ptr noundef %494, i32 noundef %542) #10
  br label %if.end2729

if.end2729:                                       ; preds = %if.then2727, %if.end2723
  %543 = load ptr, ptr @PL_comppad, align 8
  call void @Perl_save_pushptr(ptr noundef %543, i32 noundef 7) #10
  %xpadl_alloc2730 = getelementptr inbounds nuw i8, ptr %494, i64 8
  %544 = load ptr, ptr %xpadl_alloc2730, align 8
  %newcv.0.val = load ptr, ptr %newcv.0, align 8
  %xcv_depth.i9004 = getelementptr inbounds nuw i8, ptr %newcv.0.val, i64 96
  %545 = load i32, ptr %xcv_depth.i9004, align 4
  %idxprom2732 = sext i32 %545 to i64
  %arrayidx2733 = getelementptr inbounds ptr, ptr %544, i64 %idxprom2732
  br label %if.end2739

if.end2739:                                       ; preds = %if.end2729, %if.end2575
  %.pn.in = phi ptr [ %arrayidx2733, %if.end2729 ], [ %arrayidx2578, %if.end2575 ]
  %multicall_oldcatch.1 = phi i8 [ %496, %if.end2729 ], [ %multicall_oldcatch.0.ph, %if.end2575 ]
  %sp.0 = phi ptr [ %add.ptr2619, %if.end2729 ], [ %455, %if.end2575 ]
  %.pn = load ptr, ptr %.pn.in, align 8
  store ptr %.pn, ptr @PL_comppad, align 8
  %storemerge8691.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %storemerge8691 = load ptr, ptr %storemerge8691.in, align 8
  store ptr %storemerge8691, ptr @PL_curpad, align 8
  br label %if.end2741

if.end2741:                                       ; preds = %if.end2739, %if.end2483
  %last_pushed_cv.1 = phi ptr [ %newcv.0, %if.end2739 ], [ %last_pushed_cv.0.ph, %if.end2483 ]
  %multicall_oldcatch.2 = phi i8 [ %multicall_oldcatch.1, %if.end2739 ], [ %multicall_oldcatch.0.ph, %if.end2483 ]
  %sp.1 = phi ptr [ %sp.0, %if.end2739 ], [ %455, %if.end2483 ]
  %multicall_cv.2 = phi ptr [ %newcv.0, %if.end2739 ], [ %multicall_cv.0.ph, %if.end2483 ]
  %546 = load ptr, ptr @PL_comppad, align 8
  %op_first = getelementptr inbounds nuw i8, ptr %nop.0, i64 40
  %547 = load ptr, ptr %op_first, align 8
  %op_targ = getelementptr inbounds nuw i8, ptr %547, i64 24
  %548 = load i64, ptr %op_targ, align 8
  %cmp2742 = icmp eq i64 %548, 198
  br i1 %cmp2742, label %if.then2744, label %if.else2746

if.then2744:                                      ; preds = %if.end2741
  %op_first2745 = getelementptr inbounds nuw i8, ptr %547, i64 40
  br label %if.end2749

if.else2746:                                      ; preds = %if.end2741
  %op_first2747 = getelementptr inbounds nuw i8, ptr %547, i64 40
  %549 = load ptr, ptr %op_first2747, align 8
  %op_sibling = getelementptr inbounds nuw i8, ptr %549, i64 8
  br label %if.end2749

if.end2749:                                       ; preds = %if.else2746, %if.then2744
  %o.0.in = phi ptr [ %op_first2745, %if.then2744 ], [ %op_sibling, %if.else2746 ]
  %o.0 = load ptr, ptr %o.0.in, align 8
  %op_type = getelementptr inbounds nuw i8, ptr %o.0, i64 32
  %bf.load = load i16, ptr %op_type, align 8
  %bf.clear = and i16 %bf.load, 511
  %cmp2750.not = icmp eq i16 %bf.clear, 1
  br i1 %cmp2750.not, label %if.end2753, label %if.then2752

if.then2752:                                      ; preds = %if.end2749
  store ptr %o.0, ptr @PL_curcop, align 8
  br label %if.end2753

if.end2753:                                       ; preds = %if.then2752, %if.end2749
  %550 = load ptr, ptr %nop.0, align 8
  %551 = load ptr, ptr %strbeg2754, align 8
  %sub.ptr.lhs.cast2755 = ptrtoint ptr %locinput.1.lcssa12618 to i64
  %sub.ptr.rhs.cast2756 = ptrtoint ptr %551 to i64
  %sub.ptr.sub2757 = sub i64 %sub.ptr.lhs.cast2755, %sub.ptr.rhs.cast2756
  %offs2758 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13238, i64 120
  %552 = load ptr, ptr %offs2758, align 8
  %end2760 = getelementptr inbounds nuw i8, ptr %552, i64 8
  store i64 %sub.ptr.sub2757, ptr %end2760, align 8
  %553 = load ptr, ptr %info_aux_eval, align 8
  %pos_magic = getelementptr inbounds nuw i8, ptr %553, i64 56
  %554 = load ptr, ptr %pos_magic, align 8
  %tobool2761.not = icmp eq ptr %554, null
  br i1 %tobool2761.not, label %if.end2825, label %if.then2762

if.then2762:                                      ; preds = %if.end2753
  %555 = load ptr, ptr %sv, align 8
  %sv_flags2763 = getelementptr inbounds nuw i8, ptr %555, i64 12
  %556 = load i32, ptr %sv_flags2763, align 4
  %and2764 = and i32 %556, 1024
  %tobool2765.not = icmp eq i32 %and2764, 0
  br i1 %tobool2765.not, label %cond.false2788, label %land.lhs.true2766

land.lhs.true2766:                                ; preds = %if.then2762
  %and2769 = and i32 %556, 2097152
  %tobool2770.not = icmp eq i32 %and2769, 0
  br i1 %tobool2770.not, label %cond.true2775, label %lor.lhs.false2771

lor.lhs.false2771:                                ; preds = %land.lhs.true2766
  %.val8757 = load ptr, ptr %555, align 8
  %call2773 = call fastcc zeroext i1 @S_sv_only_taint_gmagic(ptr %.val8757)
  br i1 %call2773, label %cond.true2775, label %cond.false2788

cond.true2775:                                    ; preds = %lor.lhs.false2771, %land.lhs.true2766
  %557 = load ptr, ptr %strbeg2754, align 8
  %sub.ptr.rhs.cast2778 = ptrtoint ptr %557 to i64
  %sub.ptr.sub2779 = sub i64 %sub.ptr.lhs.cast2755, %sub.ptr.rhs.cast2778
  %mg_len = getelementptr inbounds nuw i8, ptr %554, i64 24
  store i64 %sub.ptr.sub2779, ptr %mg_len, align 8
  %558 = load ptr, ptr %info_aux_eval, align 8
  %pos_magic2783 = getelementptr inbounds nuw i8, ptr %558, i64 56
  %559 = load ptr, ptr %pos_magic2783, align 8
  %mg_flags = getelementptr inbounds nuw i8, ptr %559, i64 19
  %560 = load i8, ptr %mg_flags, align 1
  %561 = or i8 %560, 64
  store i8 %561, ptr %mg_flags, align 1
  br label %if.end2825

cond.false2788:                                   ; preds = %lor.lhs.false2771, %if.then2762
  %and2791 = and i32 %556, 536870912
  %tobool2792.not = icmp eq i32 %and2791, 0
  br i1 %tobool2792.not, label %cond.false2806, label %land.lhs.true2793

land.lhs.true2793:                                ; preds = %cond.false2788
  %562 = load ptr, ptr @PL_curcop, align 8
  %cop_hints = getelementptr inbounds nuw i8, ptr %562, i64 56
  %563 = load i32, ptr %cop_hints, align 8
  %and2795 = and i32 %563, 8
  %tobool2796.not = icmp eq i32 %and2795, 0
  br i1 %tobool2796.not, label %cond.true2797, label %cond.false2806

cond.true2797:                                    ; preds = %land.lhs.true2793
  %564 = load ptr, ptr %strbeg2754, align 8
  %sub.ptr.rhs.cast2802 = ptrtoint ptr %564 to i64
  %sub.ptr.sub2803 = sub i64 %sub.ptr.lhs.cast2755, %sub.ptr.rhs.cast2802
  %add.ptr2804 = getelementptr inbounds i8, ptr %564, i64 %sub.ptr.sub2803
  %call2805 = call i64 @Perl_utf8_length(ptr noundef %564, ptr noundef %add.ptr2804) #10
  br label %cond.end2811

cond.false2806:                                   ; preds = %land.lhs.true2793, %cond.false2788
  %565 = load ptr, ptr %strbeg2754, align 8
  %sub.ptr.rhs.cast2809 = ptrtoint ptr %565 to i64
  %sub.ptr.sub2810 = sub i64 %sub.ptr.lhs.cast2755, %sub.ptr.rhs.cast2809
  br label %cond.end2811

cond.end2811:                                     ; preds = %cond.false2806, %cond.true2797
  %cond2812 = phi i64 [ %call2805, %cond.true2797 ], [ %sub.ptr.sub2810, %cond.false2806 ]
  %566 = load ptr, ptr %info_aux_eval, align 8
  %pos_magic2814 = getelementptr inbounds nuw i8, ptr %566, i64 56
  %567 = load ptr, ptr %pos_magic2814, align 8
  %mg_len2815 = getelementptr inbounds nuw i8, ptr %567, i64 24
  store i64 %cond2812, ptr %mg_len2815, align 8
  %568 = load ptr, ptr %info_aux_eval, align 8
  %pos_magic2817 = getelementptr inbounds nuw i8, ptr %568, i64 56
  %569 = load ptr, ptr %pos_magic2817, align 8
  %mg_flags2818 = getelementptr inbounds nuw i8, ptr %569, i64 19
  %570 = load i8, ptr %mg_flags2818, align 1
  %571 = and i8 %570, -65
  store i8 %571, ptr %mg_flags2818, align 1
  br label %if.end2825

if.end2825:                                       ; preds = %cond.end2811, %cond.true2775, %if.end2753
  %tobool2826.not = icmp eq ptr %sv_yes_mark.1.ph.lcssa14315, null
  br i1 %tobool2826.not, label %if.end2829, label %if.then2827

if.then2827:                                      ; preds = %if.end2825
  %call2828 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.13, i32 noundef 1) #10
  call void @Perl_sv_setsv_flags(ptr noundef %call2828, ptr noundef nonnull %sv_yes_mark.1.ph.lcssa14315, i32 noundef 1538) #10
  br label %if.end2829

if.end2829:                                       ; preds = %if.then2827, %if.end2825
  %572 = load ptr, ptr @PL_stack_base, align 8
  %sub.ptr.lhs.cast2830 = ptrtoint ptr %sp.1 to i64
  %sub.ptr.rhs.cast2831 = ptrtoint ptr %572 to i64
  %sub.ptr.sub2832 = sub i64 %sub.ptr.lhs.cast2830, %sub.ptr.rhs.cast2831
  store ptr %550, ptr @PL_op, align 8
  %573 = load ptr, ptr @PL_runops, align 8
  %call2834 = call i32 %573() #10
  %574 = load ptr, ptr @PL_stack_sp, align 8
  %575 = load ptr, ptr @PL_stack_base, align 8
  %sub.ptr.lhs.cast2835 = ptrtoint ptr %574 to i64
  %sub.ptr.rhs.cast2836 = ptrtoint ptr %575 to i64
  %sub.ptr.sub2837 = sub i64 %sub.ptr.lhs.cast2835, %sub.ptr.rhs.cast2836
  %cmp2839 = icmp eq i64 %sub.ptr.sub2837, %sub.ptr.sub2832
  br i1 %cmp2839, label %if.then2841, label %if.else2842

if.then2841:                                      ; preds = %if.end2829
  br label %if.end2844

if.else2842:                                      ; preds = %if.end2829
  %incdec.ptr2843 = getelementptr inbounds i8, ptr %574, i64 -8
  %576 = load ptr, ptr %574, align 8
  store ptr %incdec.ptr2843, ptr @PL_stack_sp, align 8
  br label %if.end2844

if.end2844:                                       ; preds = %if.else2842, %if.then2841
  %.sink14876 = phi ptr [ @PL_sv_undef, %if.then2841 ], [ %576, %if.else2842 ]
  store ptr %.sink14876, ptr %ret, align 8
  store ptr null, ptr @PL_op, align 8
  switch i32 %logical.1.ph.lcssa14392, label %if.else2950 [
    i32 0, label %if.then2847
    i32 1, label %if.then2852
  ]

if.then2847:                                      ; preds = %if.end2844
  %577 = load ptr, ptr @PL_replgv, align 8
  %call2848 = call ptr @Perl_save_scalar(ptr noundef %577) #10
  %578 = load ptr, ptr %ret, align 8
  call void @Perl_sv_setsv_flags(ptr noundef %call2848, ptr noundef %578, i32 noundef 1538) #10
  br label %if.end3019

if.then2852:                                      ; preds = %if.end2844
  %579 = load ptr, ptr %ret, align 8
  %tobool2853.not = icmp eq ptr %579, null
  br i1 %tobool2853.not, label %if.end3019, label %land.rhs2856

land.rhs2856:                                     ; preds = %if.then2852
  %sv_flags2857 = getelementptr inbounds nuw i8, ptr %579, i64 12
  %580 = load i32, ptr %sv_flags2857, align 4
  %and2858 = and i32 %580, 2097152
  %tobool2859.not = icmp eq i32 %and2858, 0
  br i1 %tobool2859.not, label %cond.false2865, label %cond.true2862

cond.true2862:                                    ; preds = %land.rhs2856
  %call2863 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %579, i32 noundef 2) #10
  br label %if.end3019

cond.false2865:                                   ; preds = %land.rhs2856
  %and2867 = and i32 %580, 65280
  %tobool2868.not = icmp ne i32 %and2867, 0
  %and2871 = and i32 %580, 255
  %cmp2872 = icmp eq i32 %and2871, 8
  %or.cond8707 = or i1 %tobool2868.not, %cmp2872
  %and2876 = and i32 %580, 16777471
  %cmp2877 = icmp eq i32 %and2876, 16777226
  %or.cond8708 = or i1 %cmp2877, %or.cond8707
  br i1 %or.cond8708, label %cond.false2880, label %if.end3019

cond.false2880:                                   ; preds = %cond.false2865
  %and2882 = and i32 %580, 1024
  %tobool2883.not = icmp eq i32 %and2882, 0
  br i1 %tobool2883.not, label %cond.false2905, label %cond.true2884

cond.true2884:                                    ; preds = %cond.false2880
  %581 = load ptr, ptr %579, align 8
  %tobool2886.not = icmp eq ptr %581, null
  br i1 %tobool2886.not, label %if.end3019, label %land.rhs2887

land.rhs2887:                                     ; preds = %cond.true2884
  %xpv_cur = getelementptr inbounds nuw i8, ptr %581, i64 16
  %582 = load i64, ptr %xpv_cur, align 8
  %cmp2889 = icmp ugt i64 %582, 1
  br i1 %cmp2889, label %if.end3019, label %lor.rhs2891

lor.rhs2891:                                      ; preds = %land.rhs2887
  %tobool2894.not = icmp eq i64 %582, 0
  br i1 %tobool2894.not, label %if.end3019, label %land.rhs2895

land.rhs2895:                                     ; preds = %lor.rhs2891
  %sv_u2896 = getelementptr inbounds nuw i8, ptr %579, i64 16
  %583 = load ptr, ptr %sv_u2896, align 8
  %584 = load i8, ptr %583, align 1
  %cmp2898 = icmp ne i8 %584, 48
  br label %if.end3019

cond.false2905:                                   ; preds = %cond.false2880
  %and2907 = and i32 %580, 768
  %tobool2908.not = icmp eq i32 %and2907, 0
  br i1 %tobool2908.not, label %cond.false2933, label %cond.true2909

cond.true2909:                                    ; preds = %cond.false2905
  %and2911 = and i32 %580, 256
  %tobool2912.not = icmp eq i32 %and2911, 0
  br i1 %tobool2912.not, label %lor.rhs2918, label %land.lhs.true2913

land.lhs.true2913:                                ; preds = %cond.true2909
  %585 = load ptr, ptr %579, align 8
  %xiv_u2915 = getelementptr inbounds nuw i8, ptr %585, i64 32
  %586 = load i64, ptr %xiv_u2915, align 8
  %cmp2916.not = icmp eq i64 %586, 0
  br i1 %cmp2916.not, label %lor.rhs2918, label %if.end3019

lor.rhs2918:                                      ; preds = %land.lhs.true2913, %cond.true2909
  %and2920 = and i32 %580, 512
  %tobool2921.not = icmp eq i32 %and2920, 0
  br i1 %tobool2921.not, label %if.end3019, label %land.rhs2922

land.rhs2922:                                     ; preds = %lor.rhs2918
  %587 = load ptr, ptr %579, align 8
  %xnv_u = getelementptr inbounds nuw i8, ptr %587, i64 40
  %588 = load double, ptr %xnv_u, align 8
  %589 = fcmp uno double %588, 0.000000e+00
  br i1 %589, label %if.end3019, label %lor.rhs2924

lor.rhs2924:                                      ; preds = %land.rhs2922
  %cmp2927 = fcmp une double %588, 0.000000e+00
  br label %if.end3019

cond.false2933:                                   ; preds = %cond.false2905
  %call2934 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %579, i32 noundef 0) #10
  br label %if.end3019

if.else2950:                                      ; preds = %if.end2844
  %590 = load ptr, ptr %ret, align 8
  %sv_flags2951 = getelementptr inbounds nuw i8, ptr %590, i64 12
  %591 = load i32, ptr %sv_flags2951, align 4
  %and2952 = and i32 %591, 2097152
  %tobool2953.not = icmp eq i32 %and2952, 0
  br i1 %tobool2953.not, label %if.end2956, label %if.then2954

if.then2954:                                      ; preds = %if.else2950
  %call2955 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %590, i32 noundef 1538) #10
  store ptr %call2955, ptr %ret, align 8
  br label %if.end2956

if.end2956:                                       ; preds = %if.then2954, %if.else2950
  %592 = load ptr, ptr %ret, align 8
  %sv_flags2957 = getelementptr inbounds nuw i8, ptr %592, i64 12
  %593 = load i32, ptr %sv_flags2957, align 4
  %and2958 = and i32 %593, 2048
  %tobool2959.not = icmp eq i32 %and2958, 0
  br i1 %tobool2959.not, label %if.end2978, label %land.lhs.true2960

land.lhs.true2960:                                ; preds = %if.end2956
  %sv_u2961 = getelementptr inbounds nuw i8, ptr %592, i64 16
  %594 = load ptr, ptr %sv_u2961, align 8
  %sv_flags2962 = getelementptr inbounds nuw i8, ptr %594, i64 12
  %595 = load i32, ptr %sv_flags2962, align 4
  %and2963 = and i32 %595, 1048576
  %tobool2964.not = icmp eq i32 %and2963, 0
  br i1 %tobool2964.not, label %if.then2976, label %land.lhs.true2965

land.lhs.true2965:                                ; preds = %land.lhs.true2960
  %596 = load ptr, ptr %594, align 8
  %597 = load ptr, ptr %596, align 8
  %sv_flags2968 = getelementptr inbounds nuw i8, ptr %597, i64 12
  %598 = load i32, ptr %sv_flags2968, align 4
  %and2969 = and i32 %598, 268435456
  %tobool2970.not = icmp eq i32 %and2969, 0
  br i1 %tobool2970.not, label %if.then2976, label %if.end3019

if.then2976:                                      ; preds = %land.lhs.true2965, %land.lhs.true2960
  %sv_u2977 = getelementptr inbounds nuw i8, ptr %592, i64 16
  %599 = load ptr, ptr %sv_u2977, align 8
  br label %if.end2978

if.end2978:                                       ; preds = %if.then2976, %if.end2956
  %sw.0.ph943014680 = phi i1 [ %sw.0.ph9430.lcssa14621, %if.then2976 ], [ %sw.0.ph9430.lcssa14621, %if.end2956 ]
  %logical.1.ph14453 = phi i32 [ %logical.1.ph.lcssa14392, %if.then2976 ], [ %logical.1.ph.lcssa14392, %if.end2956 ]
  %sv2972.0 = phi ptr [ %599, %if.then2976 ], [ %592, %if.end2956 ]
  %sv_flags2979 = getelementptr inbounds nuw i8, ptr %sv2972.0, i64 12
  %600 = load i32, ptr %sv_flags2979, align 4
  %and2980 = and i32 %600, 255
  %cmp2981 = icmp eq i32 %and2980, 8
  br i1 %cmp2981, label %if.end3019, label %if.else2984

if.else2984:                                      ; preds = %if.end2978
  %and2986 = and i32 %593, 4194304
  %tobool2987.not = icmp eq i32 %and2986, 0
  br i1 %tobool2987.not, label %land.lhs.true2996, label %if.then2988

if.then2988:                                      ; preds = %if.else2984
  %call2989 = call ptr @Perl_mg_find(ptr noundef nonnull %592, i32 noundef 114) #10
  %tobool2990.not = icmp eq ptr %call2989, null
  br i1 %tobool2990.not, label %land.lhs.true2996, label %if.end2994

if.end2994:                                       ; preds = %if.then2988
  %mg_obj = getelementptr inbounds nuw i8, ptr %call2989, i64 32
  %601 = load ptr, ptr %mg_obj, align 8
  %tobool2995.not = icmp eq ptr %601, null
  br i1 %tobool2995.not, label %land.lhs.true2996, label %if.end3019

land.lhs.true2996:                                ; preds = %if.end2994, %if.then2988, %if.else2984
  %602 = load ptr, ptr %ret, align 8
  %sv_flags2997 = getelementptr inbounds nuw i8, ptr %602, i64 12
  %603 = load i32, ptr %sv_flags2997, align 4
  %604 = and i32 %603, 1792
  %or.cond8709 = icmp eq i32 %604, 0
  br i1 %or.cond8709, label %if.then3004, label %if.end3019

if.then3004:                                      ; preds = %land.lhs.true2996
  %call3005 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %602, i32 noundef 1538) #10
  store ptr %call3005, ptr %ret, align 8
  %sv_flags3006 = getelementptr inbounds nuw i8, ptr %call3005, i64 12
  %605 = load i32, ptr %sv_flags3006, align 4
  %and3007 = and i32 %605, 430018304
  %cmp3008 = icmp eq i32 %and3007, 1024
  br i1 %cmp3008, label %if.end3019, label %cond.false3012

cond.false3012:                                   ; preds = %if.then3004
  %call3013 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %call3005, ptr noundef null, i32 noundef 2) #10
  br label %if.end3019

if.end3019:                                       ; preds = %cond.false3012, %if.then3004, %land.lhs.true2996, %if.end2994, %if.end2978, %land.lhs.true2965, %cond.false2933, %lor.rhs2924, %land.rhs2922, %lor.rhs2918, %land.lhs.true2913, %land.rhs2895, %lor.rhs2891, %land.rhs2887, %cond.true2884, %cond.false2865, %cond.true2862, %if.then2852, %if.then2847
  %re_sv.2 = phi ptr [ null, %if.then2847 ], [ null, %land.lhs.true2965 ], [ null, %if.then2852 ], [ null, %if.then3004 ], [ null, %cond.false3012 ], [ null, %land.lhs.true2996 ], [ %601, %if.end2994 ], [ %sv2972.0, %if.end2978 ], [ null, %land.lhs.true2913 ], [ null, %land.rhs2922 ], [ null, %lor.rhs2924 ], [ null, %lor.rhs2918 ], [ null, %cond.true2884 ], [ null, %lor.rhs2891 ], [ null, %land.rhs2895 ], [ null, %land.rhs2887 ], [ null, %cond.false2865 ], [ null, %cond.false2933 ], [ null, %cond.true2862 ]
  %logical.2 = phi i32 [ 0, %if.then2847 ], [ %logical.1.ph.lcssa14392, %land.lhs.true2965 ], [ 0, %if.then2852 ], [ %logical.1.ph14453, %if.then3004 ], [ %logical.1.ph14453, %cond.false3012 ], [ %logical.1.ph14453, %land.lhs.true2996 ], [ %logical.1.ph14453, %if.end2994 ], [ %logical.1.ph14453, %if.end2978 ], [ 0, %land.lhs.true2913 ], [ 0, %land.rhs2922 ], [ 0, %lor.rhs2924 ], [ 0, %lor.rhs2918 ], [ 0, %cond.true2884 ], [ 0, %lor.rhs2891 ], [ 0, %land.rhs2895 ], [ 0, %land.rhs2887 ], [ 0, %cond.false2865 ], [ 0, %cond.false2933 ], [ 0, %cond.true2862 ]
  %sw.2 = phi i1 [ %sw.0.ph9430.lcssa14621, %if.then2847 ], [ %sw.0.ph9430.lcssa14621, %land.lhs.true2965 ], [ false, %if.then2852 ], [ %sw.0.ph943014680, %if.then3004 ], [ %sw.0.ph943014680, %cond.false3012 ], [ %sw.0.ph943014680, %land.lhs.true2996 ], [ %sw.0.ph943014680, %if.end2994 ], [ %sw.0.ph943014680, %if.end2978 ], [ true, %land.lhs.true2913 ], [ true, %land.rhs2922 ], [ %cmp2927, %lor.rhs2924 ], [ false, %lor.rhs2918 ], [ false, %cond.true2884 ], [ false, %lor.rhs2891 ], [ %cmp2898, %land.rhs2895 ], [ true, %land.rhs2887 ], [ false, %cond.false2865 ], [ %call2934, %cond.false2933 ], [ %call2863, %cond.true2862 ]
  store ptr %456, ptr @PL_op, align 8
  store ptr %457, ptr @PL_curcop, align 8
  %606 = load i32, ptr @PL_savestack_ix, align 4
  store i32 %459, ptr @PL_savestack_ix, align 4
  call fastcc void @S_regcppop(ptr noundef nonnull %rex.1.ph.lcssa13238, ptr noundef nonnull %maxopenparen)
  store i32 %606, ptr @PL_savestack_ix, align 4
  %607 = load ptr, ptr @PL_reg_curpm, align 8
  store ptr %607, ptr @PL_curpm, align 8
  %cmp3020.not = icmp eq i32 %logical.2, 2
  br i1 %cmp3020.not, label %cleanup.cont3031, label %sw.epilog6360.loopexit12324

cleanup.cont3031:                                 ; preds = %if.end3019
  %tobool3032.not = icmp eq ptr %re_sv.2, null
  br i1 %tobool3032.not, label %if.else3035, label %if.then3033

if.then3033:                                      ; preds = %cleanup.cont3031
  %call3034 = call ptr @Perl_reg_temp_copy(ptr noundef null, ptr noundef nonnull %re_sv.2) #10
  br label %if.end3082

if.else3035:                                      ; preds = %cleanup.cont3031
  %608 = load ptr, ptr %ret, align 8
  %sv_flags3036 = getelementptr inbounds nuw i8, ptr %608, i64 12
  %609 = load i32, ptr %sv_flags3036, align 4
  %and3037 = and i32 %609, 536870912
  %tobool3038.not = icmp eq i32 %and3037, 0
  br i1 %tobool3038.not, label %if.end3059, label %land.lhs.true3039

land.lhs.true3039:                                ; preds = %if.else3035
  %610 = load ptr, ptr @PL_curcop, align 8
  %cop_hints3040 = getelementptr inbounds nuw i8, ptr %610, i64 56
  %611 = load i32, ptr %cop_hints3040, align 8
  %and3042 = and i32 %611, 8
  %tobool3043.not = icmp eq i32 %and3042, 0
  br i1 %tobool3043.not, label %if.end3059, label %if.then3044

if.then3044:                                      ; preds = %land.lhs.true3039
  call void @llvm.lifetime.start.p0(ptr nonnull %len3045) #10
  %and3047 = and i32 %609, 2098176
  %cmp3048 = icmp eq i32 %and3047, 1024
  br i1 %cmp3048, label %cond.true3050, label %cond.false3054

cond.true3050:                                    ; preds = %if.then3044
  %612 = load ptr, ptr %608, align 8
  %xpv_cur3052 = getelementptr inbounds nuw i8, ptr %612, i64 16
  %613 = load i64, ptr %xpv_cur3052, align 8
  store i64 %613, ptr %len3045, align 8
  %sv_u3053 = getelementptr inbounds nuw i8, ptr %608, i64 16
  %614 = load ptr, ptr %sv_u3053, align 8
  br label %cond.end3056

cond.false3054:                                   ; preds = %if.then3044
  %call3055 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %608, ptr noundef nonnull %len3045, i32 noundef 2) #10
  br label %cond.end3056

cond.end3056:                                     ; preds = %cond.false3054, %cond.true3050
  %cond3057 = phi ptr [ %614, %cond.true3050 ], [ %call3055, %cond.false3054 ]
  %615 = load i64, ptr %len3045, align 8
  %call3058 = call ptr @Perl_newSVpvn_flags(ptr noundef %cond3057, i64 noundef %615, i32 noundef 524288) #10
  store ptr %call3058, ptr %ret, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %len3045) #10
  br label %if.end3059

if.end3059:                                       ; preds = %cond.end3056, %land.lhs.true3039, %if.else3035
  %intflags3060 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13238, i64 100
  %616 = load i32, ptr %intflags3060, align 4
  %and3061 = shl i32 %616, 26
  %spec.select8710 = and i32 %and3061, -2147483648
  %engine = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13238, i64 32
  %617 = load ptr, ptr %engine, align 8
  %op_comp = getelementptr inbounds nuw i8, ptr %617, i64 88
  %618 = load ptr, ptr %op_comp, align 8
  %arg23067 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12485, i64 8
  %619 = load i32, ptr %arg23067, align 4
  %call3068 = call ptr %618(ptr noundef nonnull %ret, i32 noundef 1, ptr noundef null, ptr noundef %617, ptr noundef null, ptr noundef null, i32 noundef %619, i32 noundef %spec.select8710) #10
  %620 = load ptr, ptr %ret, align 8
  %sv_flags3069 = getelementptr inbounds nuw i8, ptr %620, i64 12
  %621 = load i32, ptr %sv_flags3069, align 4
  %and3070 = and i32 %621, 2623488
  %tobool3071.not = icmp ne i32 %and3070, 0
  %622 = and i32 %621, 134414336
  %or.cond8711 = icmp eq i32 %622, 131072
  %or.cond9405 = or i1 %tobool3071.not, %or.cond8711
  br i1 %or.cond9405, label %if.end3082, label %if.then3080

if.then3080:                                      ; preds = %if.end3059
  call void @Perl_sv_magic(ptr noundef nonnull %620, ptr noundef %call3068, i32 noundef 114, ptr noundef null, i32 noundef 0) #10
  br label %if.end3082

if.end3082:                                       ; preds = %if.then3080, %if.end3059, %if.then3033
  %re_sv.3 = phi ptr [ %call3034, %if.then3033 ], [ %call3068, %if.then3080 ], [ %call3068, %if.end3059 ]
  call void @Perl_save_pushptr(ptr noundef %re_sv.3, i32 noundef 11) #10
  %623 = getelementptr i8, ptr %re_sv.3, i64 16
  %re_sv.3.val = load ptr, ptr %623, align 8
  %extflags = getelementptr inbounds nuw i8, ptr %re_sv.3.val, i64 56
  %624 = load i32, ptr %extflags, align 8
  %and3084 = and i32 %624, -33554433
  store i32 %and3084, ptr %extflags, align 8
  %subbeg = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13238, i64 128
  %625 = load ptr, ptr %subbeg, align 8
  %subbeg3085 = getelementptr inbounds nuw i8, ptr %re_sv.3.val, i64 128
  store ptr %625, ptr %subbeg3085, align 8
  %sublen = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13238, i64 144
  %626 = load i64, ptr %sublen, align 8
  %sublen3086 = getelementptr inbounds nuw i8, ptr %re_sv.3.val, i64 144
  store i64 %626, ptr %sublen3086, align 8
  %suboffset = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13238, i64 152
  %627 = load i64, ptr %suboffset, align 8
  %suboffset3087 = getelementptr inbounds nuw i8, ptr %re_sv.3.val, i64 152
  store i64 %627, ptr %suboffset3087, align 8
  %subcoffset = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13238, i64 160
  %628 = load i64, ptr %subcoffset, align 8
  %subcoffset3088 = getelementptr inbounds nuw i8, ptr %re_sv.3.val, i64 160
  store i64 %628, ptr %subcoffset3088, align 8
  %lastparen3089 = getelementptr inbounds nuw i8, ptr %re_sv.3.val, i64 112
  store i32 0, ptr %lastparen3089, align 8
  %lastcloseparen3090 = getelementptr inbounds nuw i8, ptr %re_sv.3.val, i64 116
  store i32 0, ptr %lastcloseparen3090, align 4
  %pprivate3091 = getelementptr inbounds nuw i8, ptr %re_sv.3.val, i64 104
  %629 = load ptr, ptr %pprivate3091, align 8
  %add.ptr3094 = getelementptr inbounds nuw i8, ptr %629, i64 48
  %close_paren3096 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13389, i64 56
  store i32 0, ptr %close_paren3096, align 8
  %630 = load i32, ptr %maxopenparen, align 4
  %call3097 = call fastcc i32 @S_regcppush(ptr noundef nonnull %rex.1.ph.lcssa13238, i32 noundef 0, i32 noundef %630)
  %cp3099 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13389, i64 48
  store i32 %call3097, ptr %cp3099, align 8
  %631 = load i32, ptr @PL_savestack_ix, align 4
  %lastcp3101 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13389, i64 52
  store i32 %631, ptr %lastcp3101, align 4
  store i32 0, ptr %maxopenparen, align 4
  br label %eval_recurse_doit

eval_recurse_doit:                                ; preds = %if.end3082, %if.end2421
  %match.1.ph14613 = phi i8 [ %match.1.ph.lcssa14540, %if.end2421 ], [ %match.1.ph.lcssa14541, %if.end3082 ]
  %sv_yes_mark.1.ph14380 = phi ptr [ %sv_yes_mark.1.ph.lcssa14314, %if.end2421 ], [ %sv_yes_mark.1.ph.lcssa14315, %if.end3082 ]
  %sv_commit.1.ph14303 = phi ptr [ %sv_commit.1.ph.lcssa14237, %if.end2421 ], [ %sv_commit.1.ph.lcssa14238, %if.end3082 ]
  %popmark.1.ph14234 = phi ptr [ %popmark.1.ph.lcssa14158, %if.end2421 ], [ %popmark.1.ph.lcssa14159, %if.end3082 ]
  %do_cutgroup.1.ph14154 = phi i8 [ %do_cutgroup.1.ph.lcssa14080, %if.end2421 ], [ %do_cutgroup.1.ph.lcssa14081, %if.end3082 ]
  %no_final.1.ph14076 = phi i8 [ %no_final.1.ph.lcssa14002, %if.end2421 ], [ %no_final.1.ph.lcssa14003, %if.end3082 ]
  %cur_curlyx.1.ph13992 = phi ptr [ %cur_curlyx.1.ph.lcssa13926, %if.end2421 ], [ %cur_curlyx.1.ph.lcssa13927, %if.end3082 ]
  %cur_eval.1.ph13915 = phi ptr [ %cur_eval.1.ph.lcssa13849, %if.end2421 ], [ %cur_eval.1.ph.lcssa13850, %if.end3082 ]
  %mark_state.1.ph13838 = phi ptr [ %mark_state.1.ph.lcssa13772, %if.end2421 ], [ %mark_state.1.ph.lcssa13773, %if.end3082 ]
  %yes_state.1.ph13768 = phi ptr [ %yes_state.1.ph.lcssa13694, %if.end2421 ], [ %yes_state.1.ph.lcssa13695, %if.end3082 ]
  %depth.1.ph13617 = phi i32 [ %depth.1.ph.lcssa13541, %if.end2421 ], [ %depth.1.ph.lcssa13542, %if.end3082 ]
  %next.1.ph13530 = phi ptr [ %next.1.ph.lcssa13467, %if.end2421 ], [ %next.1.ph.lcssa13468, %if.end3082 ]
  %st.1.ph13464 = phi ptr [ %st.1.ph.lcssa13388, %if.end2421 ], [ %st.1.ph.lcssa13389, %if.end3082 ]
  %rex_sv.1.ph13226 = phi ptr [ %rex_sv.1.ph.lcssa13160, %if.end2421 ], [ %rex_sv.1.ph.lcssa13161, %if.end3082 ]
  %minmod.112959 = phi i8 [ %minmod.1.lcssa12877, %if.end2421 ], [ %minmod.1.lcssa12878, %if.end3082 ]
  %locinput.112697 = phi ptr [ %locinput.1.lcssa12617, %if.end2421 ], [ %locinput.1.lcssa12618, %if.end3082 ]
  %last_pushed_cv.2 = phi ptr [ %last_pushed_cv.0.ph, %if.end2421 ], [ %last_pushed_cv.1, %if.end3082 ]
  %caller_cv.2 = phi ptr [ %caller_cv.0.ph, %if.end2421 ], [ %caller_cv.1, %if.end3082 ]
  %multicall_oldcatch.3 = phi i8 [ %multicall_oldcatch.0.ph, %if.end2421 ], [ %multicall_oldcatch.2, %if.end3082 ]
  %re_sv.4 = phi ptr [ %rex_sv.1.ph.lcssa13160, %if.end2421 ], [ %re_sv.3, %if.end3082 ]
  %re.0 = phi ptr [ %rex.1.ph.lcssa13237, %if.end2421 ], [ %re_sv.3.val, %if.end3082 ]
  %rei.0 = phi ptr [ %rexi.1.ph.lcssa13313, %if.end2421 ], [ %629, %if.end3082 ]
  %startpoint2385.1 = phi ptr [ %startpoint2385.0, %if.end2421 ], [ %add.ptr3094, %if.end3082 ]
  %multicall_cv.3 = phi ptr [ %multicall_cv.0.ph, %if.end2421 ], [ %multicall_cv.2, %if.end3082 ]
  %last_pad.1 = phi ptr [ %last_pad.0.ph, %if.end2421 ], [ %546, %if.end3082 ]
  %logical.3 = phi i32 [ %logical.1.ph.lcssa14391, %if.end2421 ], [ 0, %if.end3082 ]
  %sw.3 = phi i1 [ %sw.0.ph9430.lcssa14620, %if.end2421 ], [ %sw.2, %if.end3082 ]
  %nochange_depth.4 = phi i32 [ %nochange_depth.2, %if.end2421 ], [ %nochange_depth.3, %if.end3082 ]
  store i32 0, ptr %poscache_maxiter3102, align 8
  %sv_flags3103 = getelementptr inbounds nuw i8, ptr %re_sv.4, i64 12
  %632 = load i32, ptr %sv_flags3103, align 4
  %and3104 = lshr i32 %632, 29
  %633 = trunc nuw nsw i32 %and3104 to i8
  %storedv3109 = and i8 %633, 1
  store i8 %storedv3109, ptr %is_utf8_pat21, align 1
  %prev_rex = getelementptr inbounds nuw i8, ptr %st.1.ph13464, i64 40
  store ptr %rex_sv.1.ph13226, ptr %prev_rex, align 8
  %prev_curlyx = getelementptr inbounds nuw i8, ptr %st.1.ph13464, i64 32
  store ptr %cur_curlyx.1.ph13992, ptr %prev_curlyx, align 8
  %634 = load ptr, ptr %info_aux_eval3113, align 8
  %tobool3114.not = icmp eq ptr %634, null
  br i1 %tobool3114.not, label %if.end3118, label %S_SvREFCNT_inc.exit

S_SvREFCNT_inc.exit:                              ; preds = %eval_recurse_doit
  %sv_refcnt.i9007 = getelementptr inbounds nuw i8, ptr %re_sv.4, i64 8
  %635 = load i32, ptr %sv_refcnt.i9007, align 8
  %inc.i = add i32 %635, 1
  store i32 %inc.i, ptr %sv_refcnt.i9007, align 8
  %636 = load ptr, ptr @PL_reg_curpm, align 8
  %op_pmregexp = getelementptr inbounds nuw i8, ptr %636, i64 56
  %637 = load ptr, ptr %op_pmregexp, align 8
  %cmp.not.i9008 = icmp eq ptr %637, null
  br i1 %cmp.not.i9008, label %S_SvREFCNT_dec.exit9015, label %if.then.i9009

if.then.i9009:                                    ; preds = %S_SvREFCNT_inc.exit
  %sv_refcnt.i9010 = getelementptr inbounds nuw i8, ptr %637, i64 8
  %638 = load i32, ptr %sv_refcnt.i9010, align 8
  %cmp1.i9011 = icmp ugt i32 %638, 1
  br i1 %cmp1.i9011, label %if.then4.i9013, label %if.else.i9012

if.then4.i9013:                                   ; preds = %if.then.i9009
  %sub.i9014 = add i32 %638, -1
  store i32 %sub.i9014, ptr %sv_refcnt.i9010, align 8
  br label %S_SvREFCNT_dec.exit9015

if.else.i9012:                                    ; preds = %if.then.i9009
  call void @Perl_sv_free2(ptr noundef nonnull %637, i32 noundef %638) #10
  br label %S_SvREFCNT_dec.exit9015

S_SvREFCNT_dec.exit9015:                          ; preds = %if.else.i9012, %if.then4.i9013, %S_SvREFCNT_inc.exit
  %639 = load ptr, ptr @PL_reg_curpm, align 8
  %op_pmregexp3117 = getelementptr inbounds nuw i8, ptr %639, i64 56
  store ptr %re_sv.4, ptr %op_pmregexp3117, align 8
  br label %if.end3118

if.end3118:                                       ; preds = %S_SvREFCNT_dec.exit9015, %eval_recurse_doit
  %B = getelementptr inbounds nuw i8, ptr %st.1.ph13464, i64 64
  store ptr %next.1.ph13530, ptr %B, align 8
  %prev_eval = getelementptr inbounds nuw i8, ptr %st.1.ph13464, i64 24
  store ptr %cur_eval.1.ph13915, ptr %prev_eval, align 8
  store i32 96, ptr %st.1.ph13464, align 8
  br label %push_yes_state

sw.bb3122:                                        ; preds = %cond.end42
  %minmod.1.lcssa12879 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12619 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12486 = phi ptr [ %scan.1, %cond.end42 ]
  %prev_rex3124 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %640 = load ptr, ptr %prev_rex3124, align 8
  %sv_flags3125 = getelementptr inbounds nuw i8, ptr %640, i64 12
  %641 = load i32, ptr %sv_flags3125, align 4
  %and3126 = lshr i32 %641, 29
  %642 = trunc nuw nsw i32 %and3126 to i8
  %storedv3131 = and i8 %642, 1
  store i8 %storedv3131, ptr %is_utf8_pat21, align 1
  %643 = load ptr, ptr %info_aux_eval3133, align 8
  %tobool3134.not = icmp eq ptr %643, null
  br i1 %tobool3134.not, label %if.end3139, label %S_SvREFCNT_inc.exit9020

S_SvREFCNT_inc.exit9020:                          ; preds = %sw.bb3122
  %sv_refcnt.i9018 = getelementptr inbounds nuw i8, ptr %640, i64 8
  %644 = load i32, ptr %sv_refcnt.i9018, align 8
  %inc.i9019 = add i32 %644, 1
  store i32 %inc.i9019, ptr %sv_refcnt.i9018, align 8
  %645 = load ptr, ptr @PL_reg_curpm, align 8
  %op_pmregexp3137 = getelementptr inbounds nuw i8, ptr %645, i64 56
  %646 = load ptr, ptr %op_pmregexp3137, align 8
  %cmp.not.i9021 = icmp eq ptr %646, null
  br i1 %cmp.not.i9021, label %S_SvREFCNT_dec.exit9028, label %if.then.i9022

if.then.i9022:                                    ; preds = %S_SvREFCNT_inc.exit9020
  %sv_refcnt.i9023 = getelementptr inbounds nuw i8, ptr %646, i64 8
  %647 = load i32, ptr %sv_refcnt.i9023, align 8
  %cmp1.i9024 = icmp ugt i32 %647, 1
  br i1 %cmp1.i9024, label %if.then4.i9026, label %if.else.i9025

if.then4.i9026:                                   ; preds = %if.then.i9022
  %sub.i9027 = add i32 %647, -1
  store i32 %sub.i9027, ptr %sv_refcnt.i9023, align 8
  br label %S_SvREFCNT_dec.exit9028

if.else.i9025:                                    ; preds = %if.then.i9022
  call void @Perl_sv_free2(ptr noundef nonnull %646, i32 noundef %647) #10
  br label %S_SvREFCNT_dec.exit9028

S_SvREFCNT_dec.exit9028:                          ; preds = %if.else.i9025, %if.then4.i9026, %S_SvREFCNT_inc.exit9020
  %648 = load ptr, ptr @PL_reg_curpm, align 8
  %op_pmregexp3138 = getelementptr inbounds nuw i8, ptr %648, i64 56
  store ptr %640, ptr %op_pmregexp3138, align 8
  br label %if.end3139

if.end3139:                                       ; preds = %S_SvREFCNT_dec.exit9028, %sw.bb3122
  %649 = getelementptr i8, ptr %640, i64 16
  %.val8741 = load ptr, ptr %649, align 8
  %pprivate3141 = getelementptr inbounds nuw i8, ptr %.val8741, i64 104
  %650 = load ptr, ptr %pprivate3141, align 8
  %651 = load ptr, ptr @PL_replgv, align 8
  %sv_u3142 = getelementptr inbounds nuw i8, ptr %651, i64 16
  %652 = load ptr, ptr %sv_u3142, align 8
  %653 = load ptr, ptr %652, align 8
  %cmp.not.i9029 = icmp eq ptr %653, null
  br i1 %cmp.not.i9029, label %S_SvREFCNT_inc.exit9033, label %if.then.i9030

if.then.i9030:                                    ; preds = %if.end3139
  %sv_refcnt.i9031 = getelementptr inbounds nuw i8, ptr %653, i64 8
  %654 = load i32, ptr %sv_refcnt.i9031, align 8
  %inc.i9032 = add i32 %654, 1
  store i32 %inc.i9032, ptr %sv_refcnt.i9031, align 8
  br label %S_SvREFCNT_inc.exit9033

S_SvREFCNT_inc.exit9033:                          ; preds = %if.then.i9030, %if.end3139
  %655 = load i32, ptr @PL_savestack_ix, align 4
  %cp3148 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %656 = load i32, ptr %cp3148, align 8
  %cmp3149 = icmp sgt i32 %655, %656
  br i1 %cmp3149, label %if.then3151, label %do.end3156

if.then3151:                                      ; preds = %S_SvREFCNT_inc.exit9033
  call void @Perl_leave_scope(i32 noundef %656) #10
  br label %do.end3156

do.end3156:                                       ; preds = %if.then3151, %S_SvREFCNT_inc.exit9033
  %657 = load ptr, ptr @PL_replgv, align 8
  %sv_u3157 = getelementptr inbounds nuw i8, ptr %657, i64 16
  %658 = load ptr, ptr %sv_u3157, align 8
  %659 = load ptr, ptr %658, align 8
  call void @Perl_sv_setsv_flags(ptr noundef %659, ptr noundef %653, i32 noundef 1538) #10
  br i1 %cmp.not.i9029, label %S_SvREFCNT_dec.exit9041, label %if.then.i9035

if.then.i9035:                                    ; preds = %do.end3156
  %sv_refcnt.i9036 = getelementptr inbounds nuw i8, ptr %653, i64 8
  %660 = load i32, ptr %sv_refcnt.i9036, align 8
  %cmp1.i9037 = icmp ugt i32 %660, 1
  br i1 %cmp1.i9037, label %if.then4.i9039, label %if.else.i9038

if.then4.i9039:                                   ; preds = %if.then.i9035
  %sub.i9040 = add i32 %660, -1
  store i32 %sub.i9040, ptr %sv_refcnt.i9036, align 8
  br label %S_SvREFCNT_dec.exit9041

if.else.i9038:                                    ; preds = %if.then.i9035
  call void @Perl_sv_free2(ptr noundef nonnull %653, i32 noundef %660) #10
  br label %S_SvREFCNT_dec.exit9041

S_SvREFCNT_dec.exit9041:                          ; preds = %if.else.i9038, %if.then4.i9039, %do.end3156
  %prev_eval3161 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %661 = load ptr, ptr %prev_eval3161, align 8
  %prev_curlyx3163 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %662 = load ptr, ptr %prev_curlyx3163, align 8
  store i32 0, ptr %poscache_maxiter3164, align 8
  %spec.select8712 = call i32 @llvm.usub.sat.i32(i32 %nochange_depth.1.ph, i32 1)
  br label %yes

sw.bb3169:                                        ; preds = %cond.end42
  %minmod.1.lcssa12880 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12620 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12487 = phi ptr [ %scan.1, %cond.end42 ]
  %prev_rex3171 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %663 = load ptr, ptr %prev_rex3171, align 8
  %sv_flags3172 = getelementptr inbounds nuw i8, ptr %663, i64 12
  %664 = load i32, ptr %sv_flags3172, align 4
  %and3173 = lshr i32 %664, 29
  %665 = trunc nuw nsw i32 %and3173 to i8
  %storedv3178 = and i8 %665, 1
  store i8 %storedv3178, ptr %is_utf8_pat21, align 1
  %666 = load ptr, ptr %info_aux_eval3180, align 8
  %tobool3181.not = icmp eq ptr %666, null
  br i1 %tobool3181.not, label %if.end3186, label %S_SvREFCNT_inc.exit9046

S_SvREFCNT_inc.exit9046:                          ; preds = %sw.bb3169
  %sv_refcnt.i9044 = getelementptr inbounds nuw i8, ptr %663, i64 8
  %667 = load i32, ptr %sv_refcnt.i9044, align 8
  %inc.i9045 = add i32 %667, 1
  store i32 %inc.i9045, ptr %sv_refcnt.i9044, align 8
  %668 = load ptr, ptr @PL_reg_curpm, align 8
  %op_pmregexp3184 = getelementptr inbounds nuw i8, ptr %668, i64 56
  %669 = load ptr, ptr %op_pmregexp3184, align 8
  %cmp.not.i9047 = icmp eq ptr %669, null
  br i1 %cmp.not.i9047, label %S_SvREFCNT_dec.exit9054, label %if.then.i9048

if.then.i9048:                                    ; preds = %S_SvREFCNT_inc.exit9046
  %sv_refcnt.i9049 = getelementptr inbounds nuw i8, ptr %669, i64 8
  %670 = load i32, ptr %sv_refcnt.i9049, align 8
  %cmp1.i9050 = icmp ugt i32 %670, 1
  br i1 %cmp1.i9050, label %if.then4.i9052, label %if.else.i9051

if.then4.i9052:                                   ; preds = %if.then.i9048
  %sub.i9053 = add i32 %670, -1
  store i32 %sub.i9053, ptr %sv_refcnt.i9049, align 8
  br label %S_SvREFCNT_dec.exit9054

if.else.i9051:                                    ; preds = %if.then.i9048
  call void @Perl_sv_free2(ptr noundef nonnull %669, i32 noundef %670) #10
  br label %S_SvREFCNT_dec.exit9054

S_SvREFCNT_dec.exit9054:                          ; preds = %if.else.i9051, %if.then4.i9052, %S_SvREFCNT_inc.exit9046
  %671 = load ptr, ptr @PL_reg_curpm, align 8
  %op_pmregexp3185 = getelementptr inbounds nuw i8, ptr %671, i64 56
  store ptr %663, ptr %op_pmregexp3185, align 8
  br label %if.end3186

if.end3186:                                       ; preds = %S_SvREFCNT_dec.exit9054, %sw.bb3169
  %672 = getelementptr i8, ptr %663, i64 16
  %.val8740 = load ptr, ptr %672, align 8
  %pprivate3188 = getelementptr inbounds nuw i8, ptr %.val8740, i64 104
  %673 = load ptr, ptr %pprivate3188, align 8
  %674 = load i32, ptr @PL_savestack_ix, align 4
  %lastcp3191 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 52
  %675 = load i32, ptr %lastcp3191, align 4
  %cmp3192 = icmp sgt i32 %674, %675
  br i1 %cmp3192, label %if.then3194, label %do.end3199

if.then3194:                                      ; preds = %if.end3186
  call void @Perl_leave_scope(i32 noundef %675) #10
  br label %do.end3199

do.end3199:                                       ; preds = %if.then3194, %if.end3186
  call fastcc void @S_regcppop(ptr noundef nonnull %.val8740, ptr noundef %maxopenparen)
  %prev_eval3201 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %676 = load ptr, ptr %prev_eval3201, align 8
  %prev_curlyx3203 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %677 = load ptr, ptr %prev_curlyx3203, align 8
  store i32 0, ptr %poscache_maxiter3204, align 8
  %spec.select8713 = call i32 @llvm.usub.sat.i32(i32 %nochange_depth.1.ph, i32 1)
  br label %no_silent

sw.bb3209:                                        ; preds = %cond.end42
  %last_pushed_cv.0.ph.lcssa14841 = phi ptr [ %last_pushed_cv.0.ph, %cond.end42 ]
  %caller_cv.0.ph.lcssa14805 = phi ptr [ %caller_cv.0.ph, %cond.end42 ]
  %multicall_oldcatch.0.ph.lcssa14768 = phi i8 [ %multicall_oldcatch.0.ph, %cond.end42 ]
  %multicall_cv.0.ph.lcssa14731 = phi ptr [ %multicall_cv.0.ph, %cond.end42 ]
  %last_pad.0.ph.lcssa14695 = phi ptr [ %last_pad.0.ph, %cond.end42 ]
  %sw.0.ph9430.lcssa14622 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14542 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14467 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14393 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14316 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14239 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14160 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14082 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14004 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13928 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13851 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13774 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13696 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13622 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13543 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13469 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13390 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13315 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13239 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13162 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12881 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12621 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12488 = phi ptr [ %scan.1, %cond.end42 ]
  %arg13210 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12488, i64 4
  %678 = load i32, ptr %arg13210, align 4
  %679 = load ptr, ptr %strbeg3211, align 8
  %sub.ptr.lhs.cast3212 = ptrtoint ptr %locinput.1.lcssa12621 to i64
  %sub.ptr.rhs.cast3213 = ptrtoint ptr %679 to i64
  %sub.ptr.sub3214 = sub i64 %sub.ptr.lhs.cast3212, %sub.ptr.rhs.cast3213
  %offs3215 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13239, i64 120
  %680 = load ptr, ptr %offs3215, align 8
  %idxprom3216 = zext i32 %678 to i64
  %arrayidx3217 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %680, i64 %idxprom3216
  %start_tmp = getelementptr inbounds nuw i8, ptr %arrayidx3217, i64 16
  store i64 %sub.ptr.sub3214, ptr %start_tmp, align 8
  %681 = load i32, ptr %maxopenparen, align 4
  %spec.store.select9397 = call i32 @llvm.umax.i32(i32 %678, i32 %681)
  store i32 %spec.store.select9397, ptr %maxopenparen, align 4
  br label %sw.epilog6360

sw.bb3222:                                        ; preds = %cond.end42
  %sw.0.ph9430.lcssa14623 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14543 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14468 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14394 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14317 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14240 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14161 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14083 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14005 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13929 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13852 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13775 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13697 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13623 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13544 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13470 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13391 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13316 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13240 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13163 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12882 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12622 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12489 = phi ptr [ %scan.1, %cond.end42 ]
  %arg13223 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12489, i64 4
  %682 = load i32, ptr %arg13223, align 4
  %offs3224 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13240, i64 120
  %683 = load ptr, ptr %offs3224, align 8
  %idxprom3225 = zext i32 %682 to i64
  %arrayidx3226 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %683, i64 %idxprom3225
  %start_tmp3227 = getelementptr inbounds nuw i8, ptr %arrayidx3226, i64 16
  %684 = load i64, ptr %start_tmp3227, align 8
  store i64 %684, ptr %arrayidx3226, align 8
  %685 = load ptr, ptr %strbeg3232, align 8
  %sub.ptr.lhs.cast3233 = ptrtoint ptr %locinput.1.lcssa12622 to i64
  %sub.ptr.rhs.cast3234 = ptrtoint ptr %685 to i64
  %sub.ptr.sub3235 = sub i64 %sub.ptr.lhs.cast3233, %sub.ptr.rhs.cast3234
  %686 = load ptr, ptr %offs3224, align 8
  %arrayidx3238 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %686, i64 %idxprom3225
  %end3239 = getelementptr inbounds nuw i8, ptr %arrayidx3238, i64 8
  store i64 %sub.ptr.sub3235, ptr %end3239, align 8
  %lastparen3240 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13240, i64 112
  %687 = load i32, ptr %lastparen3240, align 8
  %cmp3241 = icmp ugt i32 %682, %687
  br i1 %cmp3241, label %if.then3243, label %if.end3245

if.then3243:                                      ; preds = %sw.bb3222
  store i32 %682, ptr %lastparen3240, align 8
  br label %if.end3245

if.end3245:                                       ; preds = %if.then3243, %sw.bb3222
  %lastcloseparen3246 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13240, i64 116
  store i32 %682, ptr %lastcloseparen3246, align 4
  %tobool3247.not = icmp eq ptr %cur_eval.1.ph.lcssa13852, null
  br i1 %tobool3247.not, label %sw.epilog6360.loopexit12324, label %land.lhs.true3248

land.lhs.true3248:                                ; preds = %if.end3245
  %close_paren3250 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph.lcssa13852, i64 56
  %688 = load i32, ptr %close_paren3250, align 8
  %cmp3251 = icmp eq i32 %688, %682
  br i1 %cmp3251, label %if.then5795, label %sw.epilog6360.loopexit12324

sw.bb3255:                                        ; preds = %cond.end42
  %minmod.1.lcssa12883 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12623 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12490 = phi ptr [ %scan.1, %cond.end42 ]
  %arg13256 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12490, i64 4
  %689 = load i32, ptr %arg13256, align 4
  %tobool3257.not = icmp eq i32 %689, 0
  %tobool3260.not12067 = icmp eq ptr %scan.1.lcssa12490, null
  %or.cond12293 = or i1 %tobool3257.not, %tobool3260.not12067
  br i1 %or.cond12293, label %fake_end, label %land.rhs3261.lr.ph

land.rhs3261.lr.ph:                               ; preds = %sw.bb3255
  %offs3278 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 120
  %sub.ptr.lhs.cast3287 = ptrtoint ptr %locinput.1.lcssa12623 to i64
  %lastparen3294 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 112
  %lastcloseparen3300 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 116
  %tobool3305.not = icmp eq ptr %cur_eval.1.ph, null
  %close_paren3308 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph, i64 56
  br label %land.rhs3261

land.rhs3261:                                     ; preds = %for.inc3315, %land.rhs3261.lr.ph
  %cursor.012068 = phi ptr [ %scan.1.lcssa12490, %land.rhs3261.lr.ph ], [ %call3316, %for.inc3315 ]
  %type3262 = getelementptr inbounds nuw i8, ptr %cursor.012068, i64 1
  %690 = load i8, ptr %type3262, align 1
  switch i8 %690, label %for.inc3315 [
    i8 0, label %fake_end.loopexit
    i8 50, label %if.then3273
  ]

if.then3273:                                      ; preds = %land.rhs3261
  %arg13274 = getelementptr inbounds nuw i8, ptr %cursor.012068, i64 4
  %691 = load i32, ptr %arg13274, align 4
  %cmp3275.not = icmp ugt i32 %691, %lastopen.0.ph.ph
  br i1 %cmp3275.not, label %for.inc3315, label %if.then3277

if.then3277:                                      ; preds = %if.then3273
  %692 = load ptr, ptr %offs3278, align 8
  %idxprom3279 = zext i32 %691 to i64
  %arrayidx3280 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %692, i64 %idxprom3279
  %start_tmp3281 = getelementptr inbounds nuw i8, ptr %arrayidx3280, i64 16
  %693 = load i64, ptr %start_tmp3281, align 8
  store i64 %693, ptr %arrayidx3280, align 8
  %694 = load ptr, ptr %strbeg3286, align 8
  %sub.ptr.rhs.cast3288 = ptrtoint ptr %694 to i64
  %sub.ptr.sub3289 = sub i64 %sub.ptr.lhs.cast3287, %sub.ptr.rhs.cast3288
  %695 = load ptr, ptr %offs3278, align 8
  %arrayidx3292 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %695, i64 %idxprom3279
  %end3293 = getelementptr inbounds nuw i8, ptr %arrayidx3292, i64 8
  store i64 %sub.ptr.sub3289, ptr %end3293, align 8
  %696 = load i32, ptr %lastparen3294, align 8
  %cmp3295 = icmp ugt i32 %691, %696
  br i1 %cmp3295, label %if.then3297, label %if.end3299

if.then3297:                                      ; preds = %if.then3277
  store i32 %691, ptr %lastparen3294, align 8
  br label %if.end3299

if.end3299:                                       ; preds = %if.then3297, %if.then3277
  store i32 %691, ptr %lastcloseparen3300, align 4
  %697 = load i32, ptr %arg13256, align 4
  %cmp3302 = icmp eq i32 %691, %697
  br i1 %cmp3302, label %fake_end.loopexit, label %lor.lhs.false3304

lor.lhs.false3304:                                ; preds = %if.end3299
  br i1 %tobool3305.not, label %for.inc3315, label %land.lhs.true3306

land.lhs.true3306:                                ; preds = %lor.lhs.false3304
  %698 = load i32, ptr %close_paren3308, align 8
  %cmp3309 = icmp eq i32 %698, %691
  br i1 %cmp3309, label %if.then5795.loopexit, label %for.inc3315

for.inc3315:                                      ; preds = %land.lhs.true3306, %lor.lhs.false3304, %if.then3273, %land.rhs3261
  %call3316 = call ptr @Perl_regnext(ptr noundef nonnull %cursor.012068) #10
  %tobool3260.not = icmp eq ptr %call3316, null
  br i1 %tobool3260.not, label %fake_end.loopexit, label %land.rhs3261, !llvm.loop !15

sw.bb3319:                                        ; preds = %cond.end42
  %last_pushed_cv.0.ph.lcssa14842 = phi ptr [ %last_pushed_cv.0.ph, %cond.end42 ]
  %caller_cv.0.ph.lcssa14806 = phi ptr [ %caller_cv.0.ph, %cond.end42 ]
  %multicall_oldcatch.0.ph.lcssa14769 = phi i8 [ %multicall_oldcatch.0.ph, %cond.end42 ]
  %multicall_cv.0.ph.lcssa14732 = phi ptr [ %multicall_cv.0.ph, %cond.end42 ]
  %last_pad.0.ph.lcssa14696 = phi ptr [ %last_pad.0.ph, %cond.end42 ]
  %match.1.ph.lcssa14544 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14469 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14395 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14318 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14241 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14162 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14084 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14006 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13930 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13853 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13776 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13698 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13624 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13545 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13471 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13392 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13317 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13241 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13164 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12884 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12624 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12491 = phi ptr [ %scan.1, %cond.end42 ]
  %arg13320 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12491, i64 4
  %699 = load i32, ptr %arg13320, align 4
  %lastparen3321 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13241, i64 112
  %700 = load i32, ptr %lastparen3321, align 8
  %cmp3322.not = icmp ult i32 %700, %699
  br i1 %cmp3322.not, label %sw.epilog6360, label %land.rhs3324

land.rhs3324:                                     ; preds = %sw.bb3319
  %offs3325 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13241, i64 120
  %701 = load ptr, ptr %offs3325, align 8
  %idxprom3326 = zext i32 %699 to i64
  %arrayidx3327 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %701, i64 %idxprom3326
  %end3328 = getelementptr inbounds nuw i8, ptr %arrayidx3327, i64 8
  %702 = load i64, ptr %end3328, align 8
  %cmp3329 = icmp ne i64 %702, -1
  br label %sw.epilog6360

sw.bb3336:                                        ; preds = %cond.end42
  %last_pushed_cv.0.ph.lcssa14843 = phi ptr [ %last_pushed_cv.0.ph, %cond.end42 ]
  %caller_cv.0.ph.lcssa14807 = phi ptr [ %caller_cv.0.ph, %cond.end42 ]
  %multicall_oldcatch.0.ph.lcssa14770 = phi i8 [ %multicall_oldcatch.0.ph, %cond.end42 ]
  %multicall_cv.0.ph.lcssa14733 = phi ptr [ %multicall_cv.0.ph, %cond.end42 ]
  %last_pad.0.ph.lcssa14697 = phi ptr [ %last_pad.0.ph, %cond.end42 ]
  %match.1.ph.lcssa14545 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14470 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14396 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14319 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14242 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14163 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14085 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14007 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13931 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13854 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13777 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13699 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13625 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13546 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13472 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13393 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13318 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13242 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13165 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12885 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12625 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12492 = phi ptr [ %scan.1, %cond.end42 ]
  %703 = getelementptr i8, ptr %scan.1.lcssa12492, i64 4
  %scan.1.val = load i32, ptr %703, align 4
  %pprivate.i9055 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13242, i64 104
  %704 = load ptr, ptr %pprivate.i9055, align 8
  %data.i9056 = getelementptr inbounds nuw i8, ptr %704, i64 24
  %705 = load ptr, ptr %data.i9056, align 8
  %data1.i9057 = getelementptr inbounds nuw i8, ptr %705, i64 16
  %idxprom.i9058 = zext i32 %scan.1.val to i64
  %arrayidx.i9059 = getelementptr inbounds nuw ptr, ptr %data1.i9057, i64 %idxprom.i9058
  %706 = load ptr, ptr %arrayidx.i9059, align 8
  %sv_u.i9060 = getelementptr inbounds nuw i8, ptr %706, i64 16
  %707 = load ptr, ptr %sv_u.i9060, align 8
  %offs.i9061 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13242, i64 120
  %708 = load ptr, ptr %706, align 8
  %xiv_u.i9062 = getelementptr inbounds nuw i8, ptr %708, i64 32
  %709 = load i64, ptr %xiv_u.i9062, align 8
  %cmp1.i9063 = icmp sgt i64 %709, 0
  br i1 %cmp1.i9063, label %for.body.lr.ph.i9065, label %S_reg_check_named_buff_matched.exit9079

for.body.lr.ph.i9065:                             ; preds = %sw.bb3336
  %lastparen.i9066 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13242, i64 112
  %710 = load i32, ptr %lastparen.i9066, align 8
  br label %for.body.i9067

for.body.i9067:                                   ; preds = %for.inc.i9076, %for.body.lr.ph.i9065
  %indvars.iv.i9068 = phi i64 [ 0, %for.body.lr.ph.i9065 ], [ %indvars.iv.next.i9077, %for.inc.i9076 ]
  %arrayidx4.i9069 = getelementptr inbounds nuw i32, ptr %707, i64 %indvars.iv.i9068
  %711 = load i32, ptr %arrayidx4.i9069, align 4
  %cmp5.not.i9070 = icmp slt i32 %710, %711
  br i1 %cmp5.not.i9070, label %for.inc.i9076, label %land.lhs.true.i9071

land.lhs.true.i9071:                              ; preds = %for.body.i9067
  %712 = load ptr, ptr %offs.i9061, align 8
  %idxprom9.i9072 = sext i32 %711 to i64
  %arrayidx10.i9073 = getelementptr inbounds %struct.regexp_paren_pair, ptr %712, i64 %idxprom9.i9072
  %end.i9074 = getelementptr inbounds nuw i8, ptr %arrayidx10.i9073, i64 8
  %713 = load i64, ptr %end.i9074, align 8
  %cmp11.not.i9075 = icmp eq i64 %713, -1
  br i1 %cmp11.not.i9075, label %for.inc.i9076, label %S_reg_check_named_buff_matched.exit9079.loopexit

for.inc.i9076:                                    ; preds = %land.lhs.true.i9071, %for.body.i9067
  %indvars.iv.next.i9077 = add nuw nsw i64 %indvars.iv.i9068, 1
  %exitcond.not.i9078 = icmp eq i64 %indvars.iv.next.i9077, %709
  br i1 %exitcond.not.i9078, label %S_reg_check_named_buff_matched.exit9079.loopexit, label %for.body.i9067, !llvm.loop !14

S_reg_check_named_buff_matched.exit9079.loopexit: ; preds = %for.inc.i9076, %land.lhs.true.i9071
  %retval.0.i9064.ph = phi i32 [ 0, %for.inc.i9076 ], [ %711, %land.lhs.true.i9071 ]
  br label %S_reg_check_named_buff_matched.exit9079

S_reg_check_named_buff_matched.exit9079:          ; preds = %S_reg_check_named_buff_matched.exit9079.loopexit, %sw.bb3336
  %retval.0.i9064 = phi i32 [ 0, %sw.bb3336 ], [ %retval.0.i9064.ph, %S_reg_check_named_buff_matched.exit9079.loopexit ]
  %cmp3338 = icmp sgt i32 %retval.0.i9064, 0
  br label %sw.epilog6360

sw.bb3343:                                        ; preds = %cond.end42
  %last_pushed_cv.0.ph.lcssa14844 = phi ptr [ %last_pushed_cv.0.ph, %cond.end42 ]
  %caller_cv.0.ph.lcssa14808 = phi ptr [ %caller_cv.0.ph, %cond.end42 ]
  %multicall_oldcatch.0.ph.lcssa14771 = phi i8 [ %multicall_oldcatch.0.ph, %cond.end42 ]
  %multicall_cv.0.ph.lcssa14734 = phi ptr [ %multicall_cv.0.ph, %cond.end42 ]
  %last_pad.0.ph.lcssa14698 = phi ptr [ %last_pad.0.ph, %cond.end42 ]
  %match.1.ph.lcssa14546 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14471 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14397 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14320 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14243 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14164 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14086 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14008 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13932 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13855 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13778 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13700 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13626 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13547 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13473 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13394 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13319 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13243 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13166 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12886 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12626 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12493 = phi ptr [ %scan.1, %cond.end42 ]
  %arg13344 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12493, i64 4
  %714 = load i32, ptr %arg13344, align 4
  %tobool3345.not = icmp eq ptr %cur_eval.1.ph.lcssa13855, null
  br i1 %tobool3345.not, label %sw.epilog6360, label %land.rhs3346

land.rhs3346:                                     ; preds = %sw.bb3343
  %tobool3347.not = icmp eq i32 %714, 0
  br i1 %tobool3347.not, label %sw.epilog6360, label %lor.rhs3348

lor.rhs3348:                                      ; preds = %land.rhs3346
  %close_paren3350 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph.lcssa13855, i64 56
  %715 = load i32, ptr %close_paren3350, align 8
  %cmp3351 = icmp eq i32 %715, %714
  br label %sw.epilog6360

sw.bb3359:                                        ; preds = %cond.end42
  %last_pushed_cv.0.ph.lcssa14846 = phi ptr [ %last_pushed_cv.0.ph, %cond.end42 ]
  %caller_cv.0.ph.lcssa14810 = phi ptr [ %caller_cv.0.ph, %cond.end42 ]
  %multicall_oldcatch.0.ph.lcssa14773 = phi i8 [ %multicall_oldcatch.0.ph, %cond.end42 ]
  %multicall_cv.0.ph.lcssa14736 = phi ptr [ %multicall_cv.0.ph, %cond.end42 ]
  %last_pad.0.ph.lcssa14700 = phi ptr [ %last_pad.0.ph, %cond.end42 ]
  %sw.0.ph9430.lcssa14628 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14548 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14473 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14399 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14322 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14245 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14166 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14088 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14010 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13934 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13857 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13780 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13702 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13628 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13549 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13396 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13321 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13245 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13168 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12888 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12628 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12495 = phi ptr [ %scan.1, %cond.end42 ]
  %716 = load i32, ptr %poscache_maxiter3360, align 8
  store i32 %716, ptr %poscache_iter3361, align 4
  br i1 %sw.0.ph9430.lcssa14628, label %if.then3363, label %if.else3366

if.then3363:                                      ; preds = %sw.bb3359
  %add.ptr3365 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12495, i64 8
  br label %sw.epilog6360

if.else3366:                                      ; preds = %sw.bb3359
  %arg13367 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12495, i64 4
  %717 = load i32, ptr %arg13367, align 4
  %idx.ext3368 = zext i32 %717 to i64
  %add.ptr3369 = getelementptr inbounds nuw %struct.regnode, ptr %scan.1.lcssa12495, i64 %idx.ext3368
  %type3370 = getelementptr inbounds nuw i8, ptr %add.ptr3369, i64 1
  %718 = load i8, ptr %type3370, align 1
  %cmp3372 = icmp eq i8 %718, 66
  %spec.select8714.idx = select i1 %cmp3372, i64 8, i64 0
  %spec.select8714 = getelementptr inbounds nuw i8, ptr %add.ptr3369, i64 %spec.select8714.idx
  br label %sw.epilog6360

sw.bb3379:                                        ; preds = %cond.end42
  %last_pushed_cv.0.ph.lcssa14847 = phi ptr [ %last_pushed_cv.0.ph, %cond.end42 ]
  %caller_cv.0.ph.lcssa14811 = phi ptr [ %caller_cv.0.ph, %cond.end42 ]
  %multicall_oldcatch.0.ph.lcssa14774 = phi i8 [ %multicall_oldcatch.0.ph, %cond.end42 ]
  %multicall_cv.0.ph.lcssa14737 = phi ptr [ %multicall_cv.0.ph, %cond.end42 ]
  %last_pad.0.ph.lcssa14701 = phi ptr [ %last_pad.0.ph, %cond.end42 ]
  %sw.0.ph9430.lcssa14629 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14549 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14474 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14323 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14246 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14167 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14089 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14011 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13935 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13858 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13781 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13703 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13629 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13550 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13476 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13397 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13322 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13246 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13169 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12889 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12629 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12496 = phi ptr [ %scan.1, %cond.end42 ]
  %719 = load i8, ptr %scan.1.lcssa12496, align 2
  %conv3381 = zext i8 %719 to i32
  br label %sw.epilog6360

sw.bb3382:                                        ; preds = %cond.end42
  %sw.0.ph9430.lcssa14630 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14550 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14475 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14401 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14324 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14247 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14168 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14090 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14012 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13936 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13859 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13782 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13704 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13630 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13551 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13477 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13398 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13323 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13247 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13170 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12890 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12630 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12497 = phi ptr [ %scan.1, %cond.end42 ]
  %720 = load i8, ptr %scan.1.lcssa12497, align 2
  %conv3384 = zext i8 %720 to i32
  %type3386 = getelementptr inbounds i8, ptr %next.1.ph.lcssa13477, i64 -3
  %721 = load i8, ptr %type3386, align 1
  %cmp3388 = icmp eq i8 %721, 40
  br i1 %cmp3388, label %if.then3390, label %if.end3394

if.then3390:                                      ; preds = %sw.bb3382
  %arg13391 = getelementptr inbounds nuw i8, ptr %next.1.ph.lcssa13477, i64 4
  %722 = load i32, ptr %arg13391, align 4
  %idx.ext3392 = zext i32 %722 to i64
  %add.ptr3393 = getelementptr inbounds nuw %struct.regnode, ptr %next.1.ph.lcssa13477, i64 %idx.ext3392
  br label %if.end3394

if.end3394:                                       ; preds = %if.then3390, %sw.bb3382
  %next.2 = phi ptr [ %add.ptr3393, %if.then3390 ], [ %next.1.ph.lcssa13477, %sw.bb3382 ]
  %lastparen3395 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13247, i64 112
  %723 = load i32, ptr %lastparen3395, align 8
  %spec.select8715 = call i32 @llvm.smin.i32(i32 %723, i32 %conv3384)
  %prev_curlyx3402 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13398, i64 24
  store ptr %cur_curlyx.1.ph.lcssa13936, ptr %prev_curlyx3402, align 8
  %724 = load i32, ptr @PL_savestack_ix, align 4
  %cp3404 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13398, i64 48
  store i32 %724, ptr %cp3404, align 8
  %parenfloor3406 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13398, i64 56
  store i32 %spec.select8715, ptr %parenfloor3406, align 8
  %me3408 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13398, i64 32
  store ptr %scan.1.lcssa12497, ptr %me3408, align 8
  %B3410 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13398, i64 40
  store ptr %next.2, ptr %B3410, align 8
  %minmod3413 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13398, i64 52
  %storedv3414 = and i8 %minmod.1.lcssa12890, 1
  store i8 %storedv3414, ptr %minmod3413, align 4
  %count = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13398, i64 60
  store i32 -1, ptr %count, align 4
  %lastloc = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13398, i64 64
  store ptr null, ptr %lastloc, align 8
  %add.ptr3417 = getelementptr inbounds i8, ptr %next.2, i64 -4
  store i32 98, ptr %st.1.ph.lcssa13398, align 8
  br label %push_yes_state

sw.bb3420:                                        ; preds = %cond.end42
  %minmod.1.lcssa12891 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12631 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12498 = phi ptr [ %scan.1, %cond.end42 ]
  %prev_curlyx3422 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %725 = load ptr, ptr %prev_curlyx3422, align 8
  br label %yes

do.body3424:                                      ; preds = %cond.end42
  %minmod.1.lcssa12892 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12632 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12499 = phi ptr [ %scan.1, %cond.end42 ]
  %726 = load i32, ptr @PL_savestack_ix, align 4
  %cp3426 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %727 = load i32, ptr %cp3426, align 8
  %cmp3427 = icmp sgt i32 %726, %727
  br i1 %cmp3427, label %if.then3429, label %do.end3434

if.then3429:                                      ; preds = %do.body3424
  call void @Perl_leave_scope(i32 noundef %727) #10
  br label %do.end3434

do.end3434:                                       ; preds = %if.then3429, %do.body3424
  %prev_curlyx3436 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %728 = load ptr, ptr %prev_curlyx3436, align 8
  br label %no_silent

sw.bb3437:                                        ; preds = %cond.end42
  %minmod.1.lcssa12893 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12633 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12500 = phi ptr [ %scan.1, %cond.end42 ]
  %me3441 = getelementptr inbounds nuw i8, ptr %cur_curlyx.1.ph, i64 32
  %729 = load ptr, ptr %me3441, align 8
  %arg13442 = getelementptr inbounds nuw i8, ptr %729, i64 4
  %730 = load i16, ptr %arg13442, align 2
  %conv3443 = zext i16 %730 to i32
  %arg23446 = getelementptr inbounds nuw i8, ptr %729, i64 6
  %731 = load i16, ptr %arg23446, align 2
  %count3453 = getelementptr inbounds nuw i8, ptr %cur_curlyx.1.ph, i64 60
  %732 = load i32, ptr %count3453, align 4
  %inc3454 = add nsw i32 %732, 1
  store i32 %inc3454, ptr %count3453, align 4
  %lastloc3456 = getelementptr inbounds nuw i8, ptr %cur_curlyx.1.ph, i64 64
  %733 = load ptr, ptr %lastloc3456, align 8
  %save_lastloc = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  store ptr %733, ptr %save_lastloc, align 8
  %cache_offset = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  store i32 0, ptr %cache_offset, align 8
  %cache_mask = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 52
  store i32 0, ptr %cache_mask, align 4
  %cmp3460 = icmp slt i32 %inc3454, %conv3443
  br i1 %cmp3460, label %if.then3462, label %if.end3473

if.then3462:                                      ; preds = %sw.bb3437
  %sw.0.ph9430.lcssa14658 = phi i1 [ %sw.0.ph9430, %sw.bb3437 ]
  %match.1.ph.lcssa14580 = phi i8 [ %match.1.ph, %sw.bb3437 ]
  %is_utf8_pat.1.ph.lcssa14505 = phi i8 [ %is_utf8_pat.1.ph, %sw.bb3437 ]
  %logical.1.ph.lcssa14431 = phi i32 [ %logical.1.ph, %sw.bb3437 ]
  %sv_yes_mark.1.ph.lcssa14354 = phi ptr [ %sv_yes_mark.1.ph, %sw.bb3437 ]
  %sv_commit.1.ph.lcssa14277 = phi ptr [ %sv_commit.1.ph, %sw.bb3437 ]
  %popmark.1.ph.lcssa14198 = phi ptr [ %popmark.1.ph, %sw.bb3437 ]
  %do_cutgroup.1.ph.lcssa14120 = phi i8 [ %do_cutgroup.1.ph, %sw.bb3437 ]
  %no_final.1.ph.lcssa14042 = phi i8 [ %no_final.1.ph, %sw.bb3437 ]
  %cur_curlyx.1.ph.lcssa13966 = phi ptr [ %cur_curlyx.1.ph, %sw.bb3437 ]
  %cur_eval.1.ph.lcssa13889 = phi ptr [ %cur_eval.1.ph, %sw.bb3437 ]
  %mark_state.1.ph.lcssa13812 = phi ptr [ %mark_state.1.ph, %sw.bb3437 ]
  %yes_state.1.ph.lcssa13734 = phi ptr [ %yes_state.1.ph, %sw.bb3437 ]
  %nochange_depth.1.ph.lcssa13660 = phi i32 [ %nochange_depth.1.ph, %sw.bb3437 ]
  %depth.1.ph.lcssa13581 = phi i32 [ %depth.1.ph, %sw.bb3437 ]
  %next.1.ph.lcssa13507 = phi ptr [ %next.1.ph, %sw.bb3437 ]
  %st.1.ph.lcssa13428 = phi ptr [ %st.1.ph, %sw.bb3437 ]
  %rexi.1.ph.lcssa13353 = phi ptr [ %rexi.1.ph, %sw.bb3437 ]
  %rex.1.ph.lcssa13277 = phi ptr [ %rex.1.ph, %sw.bb3437 ]
  %rex_sv.1.ph.lcssa13200 = phi ptr [ %rex_sv.1.ph, %sw.bb3437 ]
  %.lcssa13153 = phi ptr [ %729, %sw.bb3437 ]
  %lastloc3456.lcssa = phi ptr [ %lastloc3456, %sw.bb3437 ]
  %minmod.1.lcssa12893.lcssa = phi i8 [ %minmod.1.lcssa12893, %sw.bb3437 ]
  %locinput.1.lcssa12633.lcssa = phi ptr [ %locinput.1.lcssa12633, %sw.bb3437 ]
  %add.ptr3451.le12226 = getelementptr inbounds nuw i8, ptr %.lcssa13153, i64 8
  %parenfloor3464 = getelementptr inbounds nuw i8, ptr %cur_curlyx.1.ph.lcssa13966, i64 56
  %734 = load i32, ptr %parenfloor3464, align 8
  %735 = load i32, ptr %maxopenparen, align 4
  %call3465 = call fastcc i32 @S_regcppush(ptr noundef %rex.1.ph.lcssa13277, i32 noundef %734, i32 noundef %735)
  %cp3467 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13428, i64 32
  store i32 %call3465, ptr %cp3467, align 8
  store ptr %locinput.1.lcssa12633.lcssa, ptr %lastloc3456.lcssa, align 8
  %736 = load i32, ptr @PL_savestack_ix, align 4
  %lastcp3471 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13428, i64 36
  store i32 %736, ptr %lastcp3471, align 4
  store i32 100, ptr %st.1.ph.lcssa13428, align 8
  br label %push_state

if.end3473:                                       ; preds = %sw.bb3437
  %737 = load ptr, ptr %lastloc3456, align 8
  %cmp3476 = icmp eq ptr %locinput.1.lcssa12633, %737
  br i1 %cmp3476, label %do_whilem_B_max.loopexit, label %if.end3479

if.end3479:                                       ; preds = %if.end3473
  %738 = load i8, ptr %scan.1.lcssa12500, align 2
  %tobool3481.not = icmp eq i8 %738, 0
  br i1 %tobool3481.not, label %if.end3578.loopexit, label %if.then3482

if.then3482:                                      ; preds = %if.end3479
  %739 = load i32, ptr %poscache_maxiter3483, align 8
  %tobool3484.not = icmp eq i32 %739, 0
  br i1 %tobool3484.not, label %if.then3485, label %if.end3507

if.then3485:                                      ; preds = %if.then3482
  %740 = load ptr, ptr %strend, align 8
  %741 = load ptr, ptr %strbeg3487, align 8
  %sub.ptr.lhs.cast3488 = ptrtoint ptr %740 to i64
  %sub.ptr.rhs.cast3489 = ptrtoint ptr %741 to i64
  %sub.ptr.sub3490 = add i64 %sub.ptr.lhs.cast3488, 1
  %add3491 = sub i64 %sub.ptr.sub3490, %sub.ptr.rhs.cast3489
  %742 = lshr i8 %738, 4
  %conv3495 = zext nneg i8 %742 to i64
  %mul3496 = mul nsw i64 %add3491, %conv3495
  %conv3497 = trunc i64 %mul3496 to i32
  %spec.select8716 = call i32 @llvm.umin.i32(i32 %conv3497, i32 2147483647)
  store i32 %spec.select8716, ptr %poscache_maxiter3483, align 8
  store i32 %spec.select8716, ptr %poscache_iter3506, align 4
  br label %if.end3507

if.end3507:                                       ; preds = %if.then3485, %if.then3482
  %743 = load i32, ptr %poscache_iter3508, align 4
  %dec3509 = add nsw i32 %743, -1
  store i32 %dec3509, ptr %poscache_iter3508, align 4
  %cmp3510 = icmp eq i32 %743, 0
  br i1 %cmp3510, label %if.then3512, label %if.end3534

if.then3512:                                      ; preds = %if.end3507
  %744 = load i32, ptr %poscache_maxiter3483, align 8
  %add3514 = add nsw i32 %744, 7
  %div = sdiv i32 %add3514, 8
  %conv3515 = sext i32 %div to i64
  %745 = load ptr, ptr %info_aux, align 8
  %poscache = getelementptr inbounds nuw i8, ptr %745, i64 24
  %746 = load ptr, ptr %poscache, align 8
  %tobool3516.not = icmp eq ptr %746, null
  br i1 %tobool3516.not, label %if.else3529, label %if.then3517

if.then3517:                                      ; preds = %if.then3512
  %747 = load i64, ptr %poscache_size, align 8
  %cmp3518 = icmp slt i64 %747, %conv3515
  br i1 %cmp3518, label %if.then3520, label %if.end3526

if.then3520:                                      ; preds = %if.then3517
  %call3523 = call ptr @Perl_safesysrealloc(ptr noundef nonnull %746, i64 noundef %conv3515) #10
  store ptr %call3523, ptr %poscache, align 8
  store i64 %conv3515, ptr %poscache_size, align 8
  br label %if.end3526

if.end3526:                                       ; preds = %if.then3520, %if.then3517
  %748 = load ptr, ptr %poscache, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %748, i8 0, i64 %conv3515, i1 false)
  br label %if.end3534thread-pre-split

if.else3529:                                      ; preds = %if.then3512
  store i64 %conv3515, ptr %poscache_size3530, align 8
  %call3531 = call ptr @Perl_safesyscalloc(i64 noundef %conv3515, i64 noundef 1) #10
  store ptr %call3531, ptr %poscache, align 8
  br label %if.end3534thread-pre-split

if.end3534thread-pre-split:                       ; preds = %if.else3529, %if.end3526
  %.pr9309 = load i32, ptr %poscache_iter3508, align 4
  br label %if.end3534

if.end3534:                                       ; preds = %if.end3534thread-pre-split, %if.end3507
  %749 = phi i32 [ %.pr9309, %if.end3534thread-pre-split ], [ %dec3509, %if.end3507 ]
  %cmp3536 = icmp slt i32 %749, 0
  br i1 %cmp3536, label %if.then3538, label %if.end3578.loopexit

if.then3538:                                      ; preds = %if.end3534
  store i32 -1, ptr %poscache_iter3508, align 4
  %750 = load i8, ptr %scan.1.lcssa12500, align 2
  %conv3542 = zext i8 %750 to i32
  %and3543 = and i32 %conv3542, 15
  %sub3544 = add nsw i32 %and3543, -1
  %conv3545 = sext i32 %sub3544 to i64
  %751 = load ptr, ptr %strbeg3546, align 8
  %sub.ptr.lhs.cast3547 = ptrtoint ptr %locinput.1.lcssa12633 to i64
  %sub.ptr.rhs.cast3548 = ptrtoint ptr %751 to i64
  %sub.ptr.sub3549 = sub i64 %sub.ptr.lhs.cast3547, %sub.ptr.rhs.cast3548
  %shr3552 = lshr i32 %conv3542, 4
  %conv3553 = zext nneg i32 %shr3552 to i64
  %mul3554 = mul nsw i64 %sub.ptr.sub3549, %conv3553
  %add3555 = add nsw i64 %mul3554, %conv3545
  %rem = srem i64 %add3555, 8
  %sh_prom = trunc nsw i64 %rem to i32
  %shl3556 = shl nuw nsw i32 1, %sh_prom
  %conv3557 = zext nneg i32 %shl3556 to i64
  %div3558 = sdiv i64 %add3555, 8
  %752 = load ptr, ptr %info_aux3559, align 8
  %poscache3560 = getelementptr inbounds nuw i8, ptr %752, i64 24
  %753 = load ptr, ptr %poscache3560, align 8
  %arrayidx3561 = getelementptr inbounds i8, ptr %753, i64 %div3558
  %754 = load i8, ptr %arrayidx3561, align 1
  %conv3562 = sext i8 %754 to i64
  %and3563 = and i64 %conv3557, %conv3562
  %tobool3564.not = icmp eq i64 %and3563, 0
  br i1 %tobool3564.not, label %cleanup3573.thread, label %no_silent

cleanup3573.thread:                               ; preds = %if.then3538
  %sw.0.ph9430.lcssa14661 = phi i1 [ %sw.0.ph9430, %if.then3538 ]
  %match.1.ph.lcssa14583 = phi i8 [ %match.1.ph, %if.then3538 ]
  %is_utf8_pat.1.ph.lcssa14508 = phi i8 [ %is_utf8_pat.1.ph, %if.then3538 ]
  %logical.1.ph.lcssa14434 = phi i32 [ %logical.1.ph, %if.then3538 ]
  %sv_yes_mark.1.ph.lcssa14357 = phi ptr [ %sv_yes_mark.1.ph, %if.then3538 ]
  %sv_commit.1.ph.lcssa14280 = phi ptr [ %sv_commit.1.ph, %if.then3538 ]
  %popmark.1.ph.lcssa14201 = phi ptr [ %popmark.1.ph, %if.then3538 ]
  %do_cutgroup.1.ph.lcssa14123 = phi i8 [ %do_cutgroup.1.ph, %if.then3538 ]
  %no_final.1.ph.lcssa14045 = phi i8 [ %no_final.1.ph, %if.then3538 ]
  %cur_curlyx.1.ph.lcssa13969 = phi ptr [ %cur_curlyx.1.ph, %if.then3538 ]
  %cur_eval.1.ph.lcssa13892 = phi ptr [ %cur_eval.1.ph, %if.then3538 ]
  %mark_state.1.ph.lcssa13815 = phi ptr [ %mark_state.1.ph, %if.then3538 ]
  %yes_state.1.ph.lcssa13737 = phi ptr [ %yes_state.1.ph, %if.then3538 ]
  %nochange_depth.1.ph.lcssa13663 = phi i32 [ %nochange_depth.1.ph, %if.then3538 ]
  %depth.1.ph.lcssa13584 = phi i32 [ %depth.1.ph, %if.then3538 ]
  %next.1.ph.lcssa13510 = phi ptr [ %next.1.ph, %if.then3538 ]
  %st.1.ph.lcssa13431 = phi ptr [ %st.1.ph, %if.then3538 ]
  %rexi.1.ph.lcssa13356 = phi ptr [ %rexi.1.ph, %if.then3538 ]
  %rex.1.ph.lcssa13280 = phi ptr [ %rex.1.ph, %if.then3538 ]
  %rex_sv.1.ph.lcssa13203 = phi ptr [ %rex_sv.1.ph, %if.then3538 ]
  %shl3556.lcssa = phi i32 [ %shl3556, %if.then3538 ]
  %div3558.lcssa = phi i64 [ %div3558, %if.then3538 ]
  %.lcssa13156 = phi ptr [ %729, %if.then3538 ]
  %.lcssa13152 = phi i16 [ %731, %if.then3538 ]
  %inc3454.lcssa13147 = phi i32 [ %inc3454, %if.then3538 ]
  %lastloc3456.lcssa13143 = phi ptr [ %lastloc3456, %if.then3538 ]
  %minmod.1.lcssa12893.lcssa12978 = phi i8 [ %minmod.1.lcssa12893, %if.then3538 ]
  %locinput.1.lcssa12633.lcssa12716 = phi ptr [ %locinput.1.lcssa12633, %if.then3538 ]
  %cache_offset.le = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13431, i64 48
  %cache_mask.le = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13431, i64 52
  %conv3567 = trunc i64 %div3558.lcssa to i32
  store i32 %conv3567, ptr %cache_offset.le, align 8
  store i32 %shl3556.lcssa, ptr %cache_mask.le, align 4
  br label %if.end3578

if.end3578.loopexit:                              ; preds = %if.end3534, %if.end3479
  %sw.0.ph9430.lcssa14660 = phi i1 [ %sw.0.ph9430, %if.end3479 ], [ %sw.0.ph9430, %if.end3534 ]
  %match.1.ph.lcssa14582 = phi i8 [ %match.1.ph, %if.end3479 ], [ %match.1.ph, %if.end3534 ]
  %is_utf8_pat.1.ph.lcssa14507 = phi i8 [ %is_utf8_pat.1.ph, %if.end3479 ], [ %is_utf8_pat.1.ph, %if.end3534 ]
  %logical.1.ph.lcssa14433 = phi i32 [ %logical.1.ph, %if.end3479 ], [ %logical.1.ph, %if.end3534 ]
  %sv_yes_mark.1.ph.lcssa14356 = phi ptr [ %sv_yes_mark.1.ph, %if.end3479 ], [ %sv_yes_mark.1.ph, %if.end3534 ]
  %sv_commit.1.ph.lcssa14279 = phi ptr [ %sv_commit.1.ph, %if.end3479 ], [ %sv_commit.1.ph, %if.end3534 ]
  %popmark.1.ph.lcssa14200 = phi ptr [ %popmark.1.ph, %if.end3479 ], [ %popmark.1.ph, %if.end3534 ]
  %do_cutgroup.1.ph.lcssa14122 = phi i8 [ %do_cutgroup.1.ph, %if.end3479 ], [ %do_cutgroup.1.ph, %if.end3534 ]
  %no_final.1.ph.lcssa14044 = phi i8 [ %no_final.1.ph, %if.end3479 ], [ %no_final.1.ph, %if.end3534 ]
  %cur_curlyx.1.ph.lcssa13968 = phi ptr [ %cur_curlyx.1.ph, %if.end3479 ], [ %cur_curlyx.1.ph, %if.end3534 ]
  %cur_eval.1.ph.lcssa13891 = phi ptr [ %cur_eval.1.ph, %if.end3479 ], [ %cur_eval.1.ph, %if.end3534 ]
  %mark_state.1.ph.lcssa13814 = phi ptr [ %mark_state.1.ph, %if.end3479 ], [ %mark_state.1.ph, %if.end3534 ]
  %yes_state.1.ph.lcssa13736 = phi ptr [ %yes_state.1.ph, %if.end3479 ], [ %yes_state.1.ph, %if.end3534 ]
  %nochange_depth.1.ph.lcssa13662 = phi i32 [ %nochange_depth.1.ph, %if.end3479 ], [ %nochange_depth.1.ph, %if.end3534 ]
  %depth.1.ph.lcssa13583 = phi i32 [ %depth.1.ph, %if.end3479 ], [ %depth.1.ph, %if.end3534 ]
  %next.1.ph.lcssa13509 = phi ptr [ %next.1.ph, %if.end3479 ], [ %next.1.ph, %if.end3534 ]
  %st.1.ph.lcssa13430 = phi ptr [ %st.1.ph, %if.end3479 ], [ %st.1.ph, %if.end3534 ]
  %rexi.1.ph.lcssa13355 = phi ptr [ %rexi.1.ph, %if.end3479 ], [ %rexi.1.ph, %if.end3534 ]
  %rex.1.ph.lcssa13279 = phi ptr [ %rex.1.ph, %if.end3479 ], [ %rex.1.ph, %if.end3534 ]
  %rex_sv.1.ph.lcssa13202 = phi ptr [ %rex_sv.1.ph, %if.end3479 ], [ %rex_sv.1.ph, %if.end3534 ]
  %.lcssa13155 = phi ptr [ %729, %if.end3479 ], [ %729, %if.end3534 ]
  %.lcssa13151 = phi i16 [ %731, %if.end3479 ], [ %731, %if.end3534 ]
  %inc3454.lcssa13146 = phi i32 [ %inc3454, %if.end3479 ], [ %inc3454, %if.end3534 ]
  %lastloc3456.lcssa13142 = phi ptr [ %lastloc3456, %if.end3479 ], [ %lastloc3456, %if.end3534 ]
  %minmod.1.lcssa12893.lcssa12977 = phi i8 [ %minmod.1.lcssa12893, %if.end3479 ], [ %minmod.1.lcssa12893, %if.end3534 ]
  %locinput.1.lcssa12633.lcssa12715 = phi ptr [ %locinput.1.lcssa12633, %if.end3479 ], [ %locinput.1.lcssa12633, %if.end3534 ]
  br label %if.end3578

if.end3578:                                       ; preds = %if.end3578.loopexit, %cleanup3573.thread
  %sw.0.ph943014684 = phi i1 [ %sw.0.ph9430.lcssa14660, %if.end3578.loopexit ], [ %sw.0.ph9430.lcssa14661, %cleanup3573.thread ]
  %match.1.ph14606 = phi i8 [ %match.1.ph.lcssa14582, %if.end3578.loopexit ], [ %match.1.ph.lcssa14583, %cleanup3573.thread ]
  %is_utf8_pat.1.ph14532 = phi i8 [ %is_utf8_pat.1.ph.lcssa14507, %if.end3578.loopexit ], [ %is_utf8_pat.1.ph.lcssa14508, %cleanup3573.thread ]
  %logical.1.ph14457 = phi i32 [ %logical.1.ph.lcssa14433, %if.end3578.loopexit ], [ %logical.1.ph.lcssa14434, %cleanup3573.thread ]
  %sv_yes_mark.1.ph14384 = phi ptr [ %sv_yes_mark.1.ph.lcssa14356, %if.end3578.loopexit ], [ %sv_yes_mark.1.ph.lcssa14357, %cleanup3573.thread ]
  %sv_commit.1.ph14307 = phi ptr [ %sv_commit.1.ph.lcssa14279, %if.end3578.loopexit ], [ %sv_commit.1.ph.lcssa14280, %cleanup3573.thread ]
  %popmark.1.ph14227 = phi ptr [ %popmark.1.ph.lcssa14200, %if.end3578.loopexit ], [ %popmark.1.ph.lcssa14201, %cleanup3573.thread ]
  %do_cutgroup.1.ph14148 = phi i8 [ %do_cutgroup.1.ph.lcssa14122, %if.end3578.loopexit ], [ %do_cutgroup.1.ph.lcssa14123, %cleanup3573.thread ]
  %no_final.1.ph14070 = phi i8 [ %no_final.1.ph.lcssa14044, %if.end3578.loopexit ], [ %no_final.1.ph.lcssa14045, %cleanup3573.thread ]
  %cur_curlyx.1.ph13994 = phi ptr [ %cur_curlyx.1.ph.lcssa13968, %if.end3578.loopexit ], [ %cur_curlyx.1.ph.lcssa13969, %cleanup3573.thread ]
  %cur_eval.1.ph13919 = phi ptr [ %cur_eval.1.ph.lcssa13891, %if.end3578.loopexit ], [ %cur_eval.1.ph.lcssa13892, %cleanup3573.thread ]
  %mark_state.1.ph13842 = phi ptr [ %mark_state.1.ph.lcssa13814, %if.end3578.loopexit ], [ %mark_state.1.ph.lcssa13815, %cleanup3573.thread ]
  %yes_state.1.ph13762 = phi ptr [ %yes_state.1.ph.lcssa13736, %if.end3578.loopexit ], [ %yes_state.1.ph.lcssa13737, %cleanup3573.thread ]
  %nochange_depth.1.ph13685 = phi i32 [ %nochange_depth.1.ph.lcssa13662, %if.end3578.loopexit ], [ %nochange_depth.1.ph.lcssa13663, %cleanup3573.thread ]
  %depth.1.ph13610 = phi i32 [ %depth.1.ph.lcssa13583, %if.end3578.loopexit ], [ %depth.1.ph.lcssa13584, %cleanup3573.thread ]
  %next.1.ph13534 = phi ptr [ %next.1.ph.lcssa13509, %if.end3578.loopexit ], [ %next.1.ph.lcssa13510, %cleanup3573.thread ]
  %st.1.ph13457 = phi ptr [ %st.1.ph.lcssa13430, %if.end3578.loopexit ], [ %st.1.ph.lcssa13431, %cleanup3573.thread ]
  %rexi.1.ph13380 = phi ptr [ %rexi.1.ph.lcssa13355, %if.end3578.loopexit ], [ %rexi.1.ph.lcssa13356, %cleanup3573.thread ]
  %rex.1.ph13306 = phi ptr [ %rex.1.ph.lcssa13279, %if.end3578.loopexit ], [ %rex.1.ph.lcssa13280, %cleanup3573.thread ]
  %rex_sv.1.ph13230 = phi ptr [ %rex_sv.1.ph.lcssa13202, %if.end3578.loopexit ], [ %rex_sv.1.ph.lcssa13203, %cleanup3573.thread ]
  %755 = phi ptr [ %.lcssa13155, %if.end3578.loopexit ], [ %.lcssa13156, %cleanup3573.thread ]
  %756 = phi i16 [ %.lcssa13151, %if.end3578.loopexit ], [ %.lcssa13152, %cleanup3573.thread ]
  %inc345413148 = phi i32 [ %inc3454.lcssa13146, %if.end3578.loopexit ], [ %inc3454.lcssa13147, %cleanup3573.thread ]
  %lastloc345613144 = phi ptr [ %lastloc3456.lcssa13142, %if.end3578.loopexit ], [ %lastloc3456.lcssa13143, %cleanup3573.thread ]
  %minmod.1.lcssa1289312979 = phi i8 [ %minmod.1.lcssa12893.lcssa12977, %if.end3578.loopexit ], [ %minmod.1.lcssa12893.lcssa12978, %cleanup3573.thread ]
  %locinput.1.lcssa1263312717 = phi ptr [ %locinput.1.lcssa12633.lcssa12715, %if.end3578.loopexit ], [ %locinput.1.lcssa12633.lcssa12716, %cleanup3573.thread ]
  %add.ptr345110289 = getelementptr inbounds nuw i8, ptr %755, i64 8
  %minmod3580 = getelementptr inbounds nuw i8, ptr %cur_curlyx.1.ph13994, i64 52
  %757 = load i8, ptr %minmod3580, align 4, !range !0, !noundef !1
  %loadedv3581 = trunc nuw i8 %757 to i1
  br i1 %loadedv3581, label %cleanup3615.thread9321, label %if.end3600

cleanup3615.thread9321:                           ; preds = %if.end3578
  %save_curlyx = getelementptr inbounds nuw i8, ptr %st.1.ph13457, i64 24
  store ptr %cur_curlyx.1.ph13994, ptr %save_curlyx, align 8
  %prev_curlyx3585 = getelementptr inbounds nuw i8, ptr %cur_curlyx.1.ph13994, i64 24
  %758 = load ptr, ptr %prev_curlyx3585, align 8
  %parenfloor3589 = getelementptr inbounds nuw i8, ptr %cur_curlyx.1.ph13994, i64 56
  %759 = load i32, ptr %parenfloor3589, align 8
  %760 = load i32, ptr %maxopenparen, align 4
  %call3590 = call fastcc i32 @S_regcppush(ptr noundef %rex.1.ph13306, i32 noundef %759, i32 noundef %760)
  %cp3592 = getelementptr inbounds nuw i8, ptr %st.1.ph13457, i64 32
  store i32 %call3590, ptr %cp3592, align 8
  %761 = load i32, ptr @PL_savestack_ix, align 4
  %lastcp3594 = getelementptr inbounds nuw i8, ptr %st.1.ph13457, i64 36
  store i32 %761, ptr %lastcp3594, align 4
  %762 = load ptr, ptr %save_curlyx, align 8
  %B3598 = getelementptr inbounds nuw i8, ptr %762, i64 40
  %763 = load ptr, ptr %B3598, align 8
  store i32 106, ptr %st.1.ph13457, align 8
  br label %push_yes_state

if.end3600:                                       ; preds = %if.end3578
  %conv344710293 = zext i16 %756 to i32
  %cmp3601 = icmp samesign ult i32 %inc345413148, %conv344710293
  br i1 %cmp3601, label %if.then3603, label %do_whilem_B_max

if.then3603:                                      ; preds = %if.end3600
  %parenfloor3605 = getelementptr inbounds nuw i8, ptr %cur_curlyx.1.ph13994, i64 56
  %764 = load i32, ptr %parenfloor3605, align 8
  %765 = load i32, ptr %maxopenparen, align 4
  %call3606 = call fastcc i32 @S_regcppush(ptr noundef %rex.1.ph13306, i32 noundef %764, i32 noundef %765)
  %cp3608 = getelementptr inbounds nuw i8, ptr %st.1.ph13457, i64 32
  store i32 %call3606, ptr %cp3608, align 8
  store ptr %locinput.1.lcssa1263312717, ptr %lastloc345613144, align 8
  %766 = load i32, ptr @PL_savestack_ix, align 4
  %lastcp3612 = getelementptr inbounds nuw i8, ptr %st.1.ph13457, i64 36
  store i32 %766, ptr %lastcp3612, align 4
  store i32 104, ptr %st.1.ph13457, align 8
  br label %push_state

sw.bb3619:                                        ; preds = %cond.end42, %cond.end42
  %minmod.1.lcssa12894 = phi i8 [ %minmod.1, %cond.end42 ], [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12634 = phi ptr [ %locinput.1, %cond.end42 ], [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12501 = phi ptr [ %scan.1, %cond.end42 ], [ %scan.1, %cond.end42 ]
  %save_curlyx3621 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %767 = load ptr, ptr %save_curlyx3621, align 8
  br label %yes

sw.bb3622:                                        ; preds = %cond.end42
  %minmod.1.lcssa12895 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12635 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12502 = phi ptr [ %scan.1, %cond.end42 ]
  %save_curlyx3624 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %768 = load ptr, ptr %save_curlyx3624, align 8
  %save_lastloc3626 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %769 = load ptr, ptr %save_lastloc3626, align 8
  %lastloc3628 = getelementptr inbounds nuw i8, ptr %768, i64 64
  store ptr %769, ptr %lastloc3628, align 8
  %count3630 = getelementptr inbounds nuw i8, ptr %768, i64 60
  %770 = load i32, ptr %count3630, align 4
  %dec3631 = add nsw i32 %770, -1
  store i32 %dec3631, ptr %count3630, align 4
  %cache_mask3633 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 52
  %771 = load i32, ptr %cache_mask3633, align 4
  %tobool3634.not = icmp eq i32 %771, 0
  br i1 %tobool3634.not, label %no_silent, label %if.then3635

if.then3635:                                      ; preds = %sw.bb3622
  %772 = load ptr, ptr %info_aux3638, align 8
  %poscache3639 = getelementptr inbounds nuw i8, ptr %772, i64 24
  %773 = load ptr, ptr %poscache3639, align 8
  %cache_offset3641 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %774 = load i32, ptr %cache_offset3641, align 8
  %idxprom3642 = sext i32 %774 to i64
  %arrayidx3643 = getelementptr inbounds i8, ptr %773, i64 %idxprom3642
  %775 = load i8, ptr %arrayidx3643, align 1
  %776 = trunc i32 %771 to i8
  %conv3646 = or i8 %775, %776
  store i8 %conv3646, ptr %arrayidx3643, align 1
  br label %no_silent

do.body3649:                                      ; preds = %cond.end42, %cond.end42
  %minmod.1.lcssa12896 = phi i8 [ %minmod.1, %cond.end42 ], [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12636 = phi ptr [ %locinput.1, %cond.end42 ], [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12503 = phi ptr [ %scan.1, %cond.end42 ], [ %scan.1, %cond.end42 ]
  %777 = load i32, ptr @PL_savestack_ix, align 4
  %lastcp3651 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 36
  %778 = load i32, ptr %lastcp3651, align 4
  %cmp3652 = icmp sgt i32 %777, %778
  br i1 %cmp3652, label %if.then3654, label %do.end3659

if.then3654:                                      ; preds = %do.body3649
  call void @Perl_leave_scope(i32 noundef %778) #10
  br label %do.end3659

do.end3659:                                       ; preds = %if.then3654, %do.body3649
  call fastcc void @S_regcppop(ptr noundef %rex.1.ph, ptr noundef %maxopenparen)
  %save_lastloc3661 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %779 = load ptr, ptr %save_lastloc3661, align 8
  %lastloc3663 = getelementptr inbounds nuw i8, ptr %cur_curlyx.1.ph, i64 64
  store ptr %779, ptr %lastloc3663, align 8
  %count3665 = getelementptr inbounds nuw i8, ptr %cur_curlyx.1.ph, i64 60
  %780 = load i32, ptr %count3665, align 4
  %dec3666 = add nsw i32 %780, -1
  store i32 %dec3666, ptr %count3665, align 4
  %cache_mask3668 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 52
  %781 = load i32, ptr %cache_mask3668, align 4
  %tobool3669.not = icmp eq i32 %781, 0
  br i1 %tobool3669.not, label %no_silent, label %if.then3670

if.then3670:                                      ; preds = %do.end3659
  %782 = load ptr, ptr %info_aux3673, align 8
  %poscache3674 = getelementptr inbounds nuw i8, ptr %782, i64 24
  %783 = load ptr, ptr %poscache3674, align 8
  %cache_offset3676 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %784 = load i32, ptr %cache_offset3676, align 8
  %idxprom3677 = sext i32 %784 to i64
  %arrayidx3678 = getelementptr inbounds i8, ptr %783, i64 %idxprom3677
  %785 = load i8, ptr %arrayidx3678, align 1
  %786 = trunc i32 %781 to i8
  %conv3681 = or i8 %785, %786
  store i8 %conv3681, ptr %arrayidx3678, align 1
  br label %no_silent

do.body3684:                                      ; preds = %cond.end42
  %sw.0.ph9430.lcssa14631 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14551 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14476 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14402 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14325 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14248 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14169 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14091 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14013 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13937 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13860 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13783 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13705 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13631 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13552 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13478 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13399 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13324 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13248 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13171 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12897 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12637 = phi ptr [ %locinput.1, %cond.end42 ]
  %787 = load i32, ptr @PL_savestack_ix, align 4
  %lastcp3686 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13399, i64 36
  %788 = load i32, ptr %lastcp3686, align 4
  %cmp3687 = icmp sgt i32 %787, %788
  br i1 %cmp3687, label %if.then3689, label %do.end3694

if.then3689:                                      ; preds = %do.body3684
  call void @Perl_leave_scope(i32 noundef %788) #10
  br label %do.end3694

do.end3694:                                       ; preds = %if.then3689, %do.body3684
  call fastcc void @S_regcppop(ptr noundef %rex.1.ph.lcssa13248, ptr noundef %maxopenparen)
  br label %do_whilem_B_max

do_whilem_B_max.loopexit:                         ; preds = %if.end3473
  %sw.0.ph9430.lcssa14659 = phi i1 [ %sw.0.ph9430, %if.end3473 ]
  %match.1.ph.lcssa14581 = phi i8 [ %match.1.ph, %if.end3473 ]
  %is_utf8_pat.1.ph.lcssa14506 = phi i8 [ %is_utf8_pat.1.ph, %if.end3473 ]
  %logical.1.ph.lcssa14432 = phi i32 [ %logical.1.ph, %if.end3473 ]
  %sv_yes_mark.1.ph.lcssa14355 = phi ptr [ %sv_yes_mark.1.ph, %if.end3473 ]
  %sv_commit.1.ph.lcssa14278 = phi ptr [ %sv_commit.1.ph, %if.end3473 ]
  %popmark.1.ph.lcssa14199 = phi ptr [ %popmark.1.ph, %if.end3473 ]
  %do_cutgroup.1.ph.lcssa14121 = phi i8 [ %do_cutgroup.1.ph, %if.end3473 ]
  %no_final.1.ph.lcssa14043 = phi i8 [ %no_final.1.ph, %if.end3473 ]
  %cur_curlyx.1.ph.lcssa13967 = phi ptr [ %cur_curlyx.1.ph, %if.end3473 ]
  %cur_eval.1.ph.lcssa13890 = phi ptr [ %cur_eval.1.ph, %if.end3473 ]
  %mark_state.1.ph.lcssa13813 = phi ptr [ %mark_state.1.ph, %if.end3473 ]
  %yes_state.1.ph.lcssa13735 = phi ptr [ %yes_state.1.ph, %if.end3473 ]
  %nochange_depth.1.ph.lcssa13661 = phi i32 [ %nochange_depth.1.ph, %if.end3473 ]
  %depth.1.ph.lcssa13582 = phi i32 [ %depth.1.ph, %if.end3473 ]
  %next.1.ph.lcssa13508 = phi ptr [ %next.1.ph, %if.end3473 ]
  %st.1.ph.lcssa13429 = phi ptr [ %st.1.ph, %if.end3473 ]
  %rexi.1.ph.lcssa13354 = phi ptr [ %rexi.1.ph, %if.end3473 ]
  %rex.1.ph.lcssa13278 = phi ptr [ %rex.1.ph, %if.end3473 ]
  %rex_sv.1.ph.lcssa13201 = phi ptr [ %rex_sv.1.ph, %if.end3473 ]
  %minmod.1.lcssa12893.lcssa12976 = phi i8 [ %minmod.1.lcssa12893, %if.end3473 ]
  %locinput.1.lcssa12633.lcssa12714 = phi ptr [ %locinput.1.lcssa12633, %if.end3473 ]
  br label %do_whilem_B_max

do_whilem_B_max:                                  ; preds = %do_whilem_B_max.loopexit, %do.end3694, %if.end3600
  %sw.0.ph943014683 = phi i1 [ %sw.0.ph9430.lcssa14659, %do_whilem_B_max.loopexit ], [ %sw.0.ph943014684, %if.end3600 ], [ %sw.0.ph9430.lcssa14631, %do.end3694 ]
  %match.1.ph14605 = phi i8 [ %match.1.ph.lcssa14581, %do_whilem_B_max.loopexit ], [ %match.1.ph14606, %if.end3600 ], [ %match.1.ph.lcssa14551, %do.end3694 ]
  %is_utf8_pat.1.ph14531 = phi i8 [ %is_utf8_pat.1.ph.lcssa14506, %do_whilem_B_max.loopexit ], [ %is_utf8_pat.1.ph14532, %if.end3600 ], [ %is_utf8_pat.1.ph.lcssa14476, %do.end3694 ]
  %logical.1.ph14456 = phi i32 [ %logical.1.ph.lcssa14432, %do_whilem_B_max.loopexit ], [ %logical.1.ph14457, %if.end3600 ], [ %logical.1.ph.lcssa14402, %do.end3694 ]
  %sv_yes_mark.1.ph14383 = phi ptr [ %sv_yes_mark.1.ph.lcssa14355, %do_whilem_B_max.loopexit ], [ %sv_yes_mark.1.ph14384, %if.end3600 ], [ %sv_yes_mark.1.ph.lcssa14325, %do.end3694 ]
  %sv_commit.1.ph14306 = phi ptr [ %sv_commit.1.ph.lcssa14278, %do_whilem_B_max.loopexit ], [ %sv_commit.1.ph14307, %if.end3600 ], [ %sv_commit.1.ph.lcssa14248, %do.end3694 ]
  %popmark.1.ph14226 = phi ptr [ %popmark.1.ph.lcssa14199, %do_whilem_B_max.loopexit ], [ %popmark.1.ph14227, %if.end3600 ], [ %popmark.1.ph.lcssa14169, %do.end3694 ]
  %do_cutgroup.1.ph14147 = phi i8 [ %do_cutgroup.1.ph.lcssa14121, %do_whilem_B_max.loopexit ], [ %do_cutgroup.1.ph14148, %if.end3600 ], [ %do_cutgroup.1.ph.lcssa14091, %do.end3694 ]
  %no_final.1.ph14069 = phi i8 [ %no_final.1.ph.lcssa14043, %do_whilem_B_max.loopexit ], [ %no_final.1.ph14070, %if.end3600 ], [ %no_final.1.ph.lcssa14013, %do.end3694 ]
  %cur_curlyx.1.ph13993 = phi ptr [ %cur_curlyx.1.ph.lcssa13967, %do_whilem_B_max.loopexit ], [ %cur_curlyx.1.ph13994, %if.end3600 ], [ %cur_curlyx.1.ph.lcssa13937, %do.end3694 ]
  %cur_eval.1.ph13918 = phi ptr [ %cur_eval.1.ph.lcssa13890, %do_whilem_B_max.loopexit ], [ %cur_eval.1.ph13919, %if.end3600 ], [ %cur_eval.1.ph.lcssa13860, %do.end3694 ]
  %mark_state.1.ph13841 = phi ptr [ %mark_state.1.ph.lcssa13813, %do_whilem_B_max.loopexit ], [ %mark_state.1.ph13842, %if.end3600 ], [ %mark_state.1.ph.lcssa13783, %do.end3694 ]
  %yes_state.1.ph13761 = phi ptr [ %yes_state.1.ph.lcssa13735, %do_whilem_B_max.loopexit ], [ %yes_state.1.ph13762, %if.end3600 ], [ %yes_state.1.ph.lcssa13705, %do.end3694 ]
  %nochange_depth.1.ph13684 = phi i32 [ %nochange_depth.1.ph.lcssa13661, %do_whilem_B_max.loopexit ], [ %nochange_depth.1.ph13685, %if.end3600 ], [ %nochange_depth.1.ph.lcssa13631, %do.end3694 ]
  %depth.1.ph13609 = phi i32 [ %depth.1.ph.lcssa13582, %do_whilem_B_max.loopexit ], [ %depth.1.ph13610, %if.end3600 ], [ %depth.1.ph.lcssa13552, %do.end3694 ]
  %next.1.ph13533 = phi ptr [ %next.1.ph.lcssa13508, %do_whilem_B_max.loopexit ], [ %next.1.ph13534, %if.end3600 ], [ %next.1.ph.lcssa13478, %do.end3694 ]
  %st.1.ph13456 = phi ptr [ %st.1.ph.lcssa13429, %do_whilem_B_max.loopexit ], [ %st.1.ph13457, %if.end3600 ], [ %st.1.ph.lcssa13399, %do.end3694 ]
  %rexi.1.ph13379 = phi ptr [ %rexi.1.ph.lcssa13354, %do_whilem_B_max.loopexit ], [ %rexi.1.ph13380, %if.end3600 ], [ %rexi.1.ph.lcssa13324, %do.end3694 ]
  %rex.1.ph13305 = phi ptr [ %rex.1.ph.lcssa13278, %do_whilem_B_max.loopexit ], [ %rex.1.ph13306, %if.end3600 ], [ %rex.1.ph.lcssa13248, %do.end3694 ]
  %rex_sv.1.ph13229 = phi ptr [ %rex_sv.1.ph.lcssa13201, %do_whilem_B_max.loopexit ], [ %rex_sv.1.ph13230, %if.end3600 ], [ %rex_sv.1.ph.lcssa13171, %do.end3694 ]
  %minmod.112960 = phi i8 [ %minmod.1.lcssa12893.lcssa12976, %do_whilem_B_max.loopexit ], [ %minmod.1.lcssa1289312979, %if.end3600 ], [ %minmod.1.lcssa12897, %do.end3694 ]
  %locinput.112698 = phi ptr [ %locinput.1.lcssa12633.lcssa12714, %do_whilem_B_max.loopexit ], [ %locinput.1.lcssa1263312717, %if.end3600 ], [ %locinput.1.lcssa12637, %do.end3694 ]
  %count3697 = getelementptr inbounds nuw i8, ptr %cur_curlyx.1.ph13993, i64 60
  %789 = load i32, ptr %count3697, align 4
  %cmp3698 = icmp sgt i32 %789, 32766
  br i1 %cmp3698, label %land.lhs.true3700, label %if.end3707

land.lhs.true3700:                                ; preds = %do_whilem_B_max
  %call3701 = call zeroext i1 @Perl_ckwarn(i32 noundef 20) #10
  br i1 %call3701, label %land.lhs.true3703, label %if.end3707

land.lhs.true3703:                                ; preds = %land.lhs.true3700
  %790 = load i8, ptr %warned, align 1, !range !0, !noundef !1
  %loadedv3704 = trunc nuw i8 %790 to i1
  br i1 %loadedv3704, label %if.end3707, label %if.then3705

if.then3705:                                      ; preds = %land.lhs.true3703
  store i8 1, ptr %warned, align 1
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 20, ptr noundef nonnull @.str.14, i32 noundef 32766) #10
  br label %if.end3707

if.end3707:                                       ; preds = %if.then3705, %land.lhs.true3703, %land.lhs.true3700, %do_whilem_B_max
  %save_curlyx3709 = getelementptr inbounds nuw i8, ptr %st.1.ph13456, i64 24
  store ptr %cur_curlyx.1.ph13993, ptr %save_curlyx3709, align 8
  %prev_curlyx3711 = getelementptr inbounds nuw i8, ptr %cur_curlyx.1.ph13993, i64 24
  %791 = load ptr, ptr %prev_curlyx3711, align 8
  %B3715 = getelementptr inbounds nuw i8, ptr %cur_curlyx.1.ph13993, i64 40
  %792 = load ptr, ptr %B3715, align 8
  store i32 108, ptr %st.1.ph13456, align 8
  br label %push_yes_state

sw.bb3717:                                        ; preds = %cond.end42
  %minmod.1.lcssa12898 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12638 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12505 = phi ptr [ %scan.1, %cond.end42 ]
  %save_curlyx3719 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %793 = load ptr, ptr %save_curlyx3719, align 8
  %794 = load i32, ptr @PL_savestack_ix, align 4
  %lastcp3722 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 36
  %795 = load i32, ptr %lastcp3722, align 4
  %cmp3723 = icmp sgt i32 %794, %795
  br i1 %cmp3723, label %if.then3725, label %do.end3730

if.then3725:                                      ; preds = %sw.bb3717
  call void @Perl_leave_scope(i32 noundef %795) #10
  br label %do.end3730

do.end3730:                                       ; preds = %if.then3725, %sw.bb3717
  call fastcc void @S_regcppop(ptr noundef %rex.1.ph, ptr noundef %maxopenparen)
  %count3732 = getelementptr inbounds nuw i8, ptr %793, i64 60
  %796 = load i32, ptr %count3732, align 4
  %me3734 = getelementptr inbounds nuw i8, ptr %793, i64 32
  %797 = load ptr, ptr %me3734, align 8
  %arg23735 = getelementptr inbounds nuw i8, ptr %797, i64 6
  %798 = load i16, ptr %arg23735, align 2
  %conv3736 = zext i16 %798 to i32
  %cmp3737.not = icmp slt i32 %796, %conv3736
  br i1 %cmp3737.not, label %if.end3772, label %if.then3739

if.then3739:                                      ; preds = %do.end3730
  %cmp3742 = icmp samesign ugt i32 %796, 32766
  br i1 %cmp3742, label %land.lhs.true3744, label %if.end3752

land.lhs.true3744:                                ; preds = %if.then3739
  %call3745 = call zeroext i1 @Perl_ckwarn(i32 noundef 20) #10
  br i1 %call3745, label %land.lhs.true3747, label %if.end3752

land.lhs.true3747:                                ; preds = %land.lhs.true3744
  %799 = load i8, ptr %warned3748, align 1, !range !0, !noundef !1
  %loadedv3749 = trunc nuw i8 %799 to i1
  br i1 %loadedv3749, label %if.end3752, label %if.then3750

if.then3750:                                      ; preds = %land.lhs.true3747
  store i8 1, ptr %warned3748, align 1
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 20, ptr noundef nonnull @.str.14, i32 noundef 32766) #10
  br label %if.end3752

if.end3752:                                       ; preds = %if.then3750, %land.lhs.true3747, %land.lhs.true3744, %if.then3739
  %800 = load i32, ptr %count3732, align 4
  %dec3755 = add nsw i32 %800, -1
  store i32 %dec3755, ptr %count3732, align 4
  %cache_mask3757 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 52
  %801 = load i32, ptr %cache_mask3757, align 4
  %tobool3758.not = icmp eq i32 %801, 0
  br i1 %tobool3758.not, label %no_silent, label %if.then3759

if.then3759:                                      ; preds = %if.end3752
  %802 = load ptr, ptr %info_aux3762, align 8
  %poscache3763 = getelementptr inbounds nuw i8, ptr %802, i64 24
  %803 = load ptr, ptr %poscache3763, align 8
  %cache_offset3765 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %804 = load i32, ptr %cache_offset3765, align 8
  %idxprom3766 = sext i32 %804 to i64
  %arrayidx3767 = getelementptr inbounds i8, ptr %803, i64 %idxprom3766
  %805 = load i8, ptr %arrayidx3767, align 1
  %806 = trunc i32 %801 to i8
  %conv3770 = or i8 %805, %806
  store i8 %conv3770, ptr %arrayidx3767, align 1
  br label %no_silent

if.end3772:                                       ; preds = %do.end3730
  %sw.0.ph9430.lcssa14657 = phi i1 [ %sw.0.ph9430, %do.end3730 ]
  %match.1.ph.lcssa14579 = phi i8 [ %match.1.ph, %do.end3730 ]
  %is_utf8_pat.1.ph.lcssa14504 = phi i8 [ %is_utf8_pat.1.ph, %do.end3730 ]
  %logical.1.ph.lcssa14430 = phi i32 [ %logical.1.ph, %do.end3730 ]
  %sv_yes_mark.1.ph.lcssa14353 = phi ptr [ %sv_yes_mark.1.ph, %do.end3730 ]
  %sv_commit.1.ph.lcssa14276 = phi ptr [ %sv_commit.1.ph, %do.end3730 ]
  %popmark.1.ph.lcssa14197 = phi ptr [ %popmark.1.ph, %do.end3730 ]
  %do_cutgroup.1.ph.lcssa14119 = phi i8 [ %do_cutgroup.1.ph, %do.end3730 ]
  %no_final.1.ph.lcssa14041 = phi i8 [ %no_final.1.ph, %do.end3730 ]
  %cur_eval.1.ph.lcssa13888 = phi ptr [ %cur_eval.1.ph, %do.end3730 ]
  %mark_state.1.ph.lcssa13811 = phi ptr [ %mark_state.1.ph, %do.end3730 ]
  %yes_state.1.ph.lcssa13733 = phi ptr [ %yes_state.1.ph, %do.end3730 ]
  %nochange_depth.1.ph.lcssa13659 = phi i32 [ %nochange_depth.1.ph, %do.end3730 ]
  %depth.1.ph.lcssa13580 = phi i32 [ %depth.1.ph, %do.end3730 ]
  %next.1.ph.lcssa13506 = phi ptr [ %next.1.ph, %do.end3730 ]
  %st.1.ph.lcssa13427 = phi ptr [ %st.1.ph, %do.end3730 ]
  %rexi.1.ph.lcssa13352 = phi ptr [ %rexi.1.ph, %do.end3730 ]
  %rex.1.ph.lcssa13276 = phi ptr [ %rex.1.ph, %do.end3730 ]
  %rex_sv.1.ph.lcssa13199 = phi ptr [ %rex_sv.1.ph, %do.end3730 ]
  %.lcssa13140 = phi ptr [ %793, %do.end3730 ]
  %minmod.1.lcssa12898.lcssa = phi i8 [ %minmod.1.lcssa12898, %do.end3730 ]
  %locinput.1.lcssa12638.lcssa = phi ptr [ %locinput.1.lcssa12638, %do.end3730 ]
  %save_curlyx3719.le = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13427, i64 24
  %lastcp3722.le = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13427, i64 36
  %lastloc3774 = getelementptr inbounds nuw i8, ptr %.lcssa13140, i64 64
  store ptr %locinput.1.lcssa12638.lcssa, ptr %lastloc3774, align 8
  %parenfloor3776 = getelementptr inbounds nuw i8, ptr %.lcssa13140, i64 56
  %807 = load i32, ptr %parenfloor3776, align 8
  %808 = load i32, ptr %maxopenparen, align 4
  %call3777 = call fastcc i32 @S_regcppush(ptr noundef %rex.1.ph.lcssa13276, i32 noundef %807, i32 noundef %808)
  %cp3779 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13427, i64 32
  store i32 %call3777, ptr %cp3779, align 8
  %809 = load i32, ptr @PL_savestack_ix, align 4
  store i32 %809, ptr %lastcp3722.le, align 4
  %810 = load ptr, ptr %save_curlyx3719.le, align 8
  %me3785 = getelementptr inbounds nuw i8, ptr %810, i64 32
  %811 = load ptr, ptr %me3785, align 8
  %add.ptr3787 = getelementptr inbounds nuw i8, ptr %811, i64 8
  store i32 102, ptr %st.1.ph.lcssa13427, align 8
  br label %push_state

sw.bb3789:                                        ; preds = %cond.end42
  %sw.0.ph9430.lcssa14632 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14552 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14477 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14403 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14326 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14249 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14170 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14092 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14014 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13938 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13861 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13784 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13706 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13632 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13553 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13400 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13325 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13249 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13172 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12899 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12639 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12506 = phi ptr [ %scan.1, %cond.end42 ]
  %arg13790 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12506, i64 4
  %812 = load i32, ptr %arg13790, align 4
  %idx.ext3791 = zext i32 %812 to i64
  %add.ptr3792.idx = shl nuw nsw i64 %idx.ext3791, 2
  %add.ptr3792 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12506, i64 %add.ptr3792.idx
  %cmp3793 = icmp eq i32 %812, 0
  %spec.store.select6646 = select i1 %cmp3793, ptr null, ptr %add.ptr3792
  br label %sw.bb3798

sw.bb3798.loopexit:                               ; preds = %cond.end42
  %sw.0.ph9430.lcssa14633 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14553 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14478 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14404 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14327 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14250 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14171 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14093 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14015 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13939 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13862 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13785 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13707 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13633 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13554 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13480 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13401 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13326 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13250 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13173 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12900 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12640 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12507 = phi ptr [ %scan.1, %cond.end42 ]
  br label %sw.bb3798

sw.bb3798:                                        ; preds = %sw.bb3798.loopexit, %sw.bb3789
  %sw.0.ph943014685 = phi i1 [ %sw.0.ph9430.lcssa14632, %sw.bb3789 ], [ %sw.0.ph9430.lcssa14633, %sw.bb3798.loopexit ]
  %match.1.ph14610 = phi i8 [ %match.1.ph.lcssa14552, %sw.bb3789 ], [ %match.1.ph.lcssa14553, %sw.bb3798.loopexit ]
  %is_utf8_pat.1.ph14533 = phi i8 [ %is_utf8_pat.1.ph.lcssa14477, %sw.bb3789 ], [ %is_utf8_pat.1.ph.lcssa14478, %sw.bb3798.loopexit ]
  %logical.1.ph14458 = phi i32 [ %logical.1.ph.lcssa14403, %sw.bb3789 ], [ %logical.1.ph.lcssa14404, %sw.bb3798.loopexit ]
  %sv_yes_mark.1.ph14385 = phi ptr [ %sv_yes_mark.1.ph.lcssa14326, %sw.bb3789 ], [ %sv_yes_mark.1.ph.lcssa14327, %sw.bb3798.loopexit ]
  %sv_commit.1.ph14308 = phi ptr [ %sv_commit.1.ph.lcssa14249, %sw.bb3789 ], [ %sv_commit.1.ph.lcssa14250, %sw.bb3798.loopexit ]
  %popmark.1.ph14231 = phi ptr [ %popmark.1.ph.lcssa14170, %sw.bb3789 ], [ %popmark.1.ph.lcssa14171, %sw.bb3798.loopexit ]
  %do_cutgroup.1.ph14151 = phi i8 [ %do_cutgroup.1.ph.lcssa14092, %sw.bb3789 ], [ %do_cutgroup.1.ph.lcssa14093, %sw.bb3798.loopexit ]
  %no_final.1.ph14073 = phi i8 [ %no_final.1.ph.lcssa14014, %sw.bb3789 ], [ %no_final.1.ph.lcssa14015, %sw.bb3798.loopexit ]
  %cur_curlyx.1.ph13995 = phi ptr [ %cur_curlyx.1.ph.lcssa13938, %sw.bb3789 ], [ %cur_curlyx.1.ph.lcssa13939, %sw.bb3798.loopexit ]
  %cur_eval.1.ph13920 = phi ptr [ %cur_eval.1.ph.lcssa13861, %sw.bb3789 ], [ %cur_eval.1.ph.lcssa13862, %sw.bb3798.loopexit ]
  %mark_state.1.ph13843 = phi ptr [ %mark_state.1.ph.lcssa13784, %sw.bb3789 ], [ %mark_state.1.ph.lcssa13785, %sw.bb3798.loopexit ]
  %yes_state.1.ph13765 = phi ptr [ %yes_state.1.ph.lcssa13706, %sw.bb3789 ], [ %yes_state.1.ph.lcssa13707, %sw.bb3798.loopexit ]
  %nochange_depth.1.ph13686 = phi i32 [ %nochange_depth.1.ph.lcssa13632, %sw.bb3789 ], [ %nochange_depth.1.ph.lcssa13633, %sw.bb3798.loopexit ]
  %depth.1.ph13614 = phi i32 [ %depth.1.ph.lcssa13553, %sw.bb3789 ], [ %depth.1.ph.lcssa13554, %sw.bb3798.loopexit ]
  %st.1.ph13461 = phi ptr [ %st.1.ph.lcssa13400, %sw.bb3789 ], [ %st.1.ph.lcssa13401, %sw.bb3798.loopexit ]
  %rexi.1.ph13381 = phi ptr [ %rexi.1.ph.lcssa13325, %sw.bb3789 ], [ %rexi.1.ph.lcssa13326, %sw.bb3798.loopexit ]
  %rex.1.ph13307 = phi ptr [ %rex.1.ph.lcssa13249, %sw.bb3789 ], [ %rex.1.ph.lcssa13250, %sw.bb3798.loopexit ]
  %rex_sv.1.ph13231 = phi ptr [ %rex_sv.1.ph.lcssa13172, %sw.bb3789 ], [ %rex_sv.1.ph.lcssa13173, %sw.bb3798.loopexit ]
  %minmod.112961 = phi i8 [ %minmod.1.lcssa12899, %sw.bb3789 ], [ %minmod.1.lcssa12900, %sw.bb3798.loopexit ]
  %locinput.112699 = phi ptr [ %locinput.1.lcssa12639, %sw.bb3789 ], [ %locinput.1.lcssa12640, %sw.bb3798.loopexit ]
  %next.3 = phi ptr [ %spec.store.select6646, %sw.bb3789 ], [ %next.1.ph.lcssa13480, %sw.bb3798.loopexit ]
  %scan.3 = phi ptr [ %arg13790, %sw.bb3789 ], [ %scan.1.lcssa12507, %sw.bb3798.loopexit ]
  %add.ptr3799 = getelementptr inbounds nuw i8, ptr %scan.3, i64 4
  %lastparen3800 = getelementptr inbounds nuw i8, ptr %rex.1.ph13307, i64 112
  %813 = load i32, ptr %lastparen3800, align 8
  %lastparen3802 = getelementptr inbounds nuw i8, ptr %st.1.ph13461, i64 24
  store i32 %813, ptr %lastparen3802, align 8
  %lastcloseparen3803 = getelementptr inbounds nuw i8, ptr %rex.1.ph13307, i64 116
  %814 = load i32, ptr %lastcloseparen3803, align 4
  %lastcloseparen3805 = getelementptr inbounds nuw i8, ptr %st.1.ph13461, i64 28
  store i32 %814, ptr %lastcloseparen3805, align 4
  %next_branch = getelementptr inbounds nuw i8, ptr %st.1.ph13461, i64 40
  store ptr %next.3, ptr %next_branch, align 8
  %815 = load i32, ptr @PL_savestack_ix, align 4
  %cp3808 = getelementptr inbounds nuw i8, ptr %st.1.ph13461, i64 32
  store i32 %815, ptr %cp3808, align 8
  br i1 %tobool, label %if.then3810, label %if.else3812

if.then3810:                                      ; preds = %sw.bb3798
  store i32 110, ptr %st.1.ph13461, align 8
  br label %push_yes_state

if.else3812:                                      ; preds = %sw.bb3798
  store i32 110, ptr %st.1.ph13461, align 8
  br label %push_state

sw.bb3814:                                        ; preds = %cond.end42
  %sw.0.ph9430.lcssa14634 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14554 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14479 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14405 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14251 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14172 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14094 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14016 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13940 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13863 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13786 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13708 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13634 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13555 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13481 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13402 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13327 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13251 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13174 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12901 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12641 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12508 = phi ptr [ %scan.1, %cond.end42 ]
  %816 = load i8, ptr %scan.1.lcssa12508, align 2
  %tobool3817.not = icmp eq i8 %816, 0
  br i1 %tobool3817.not, label %cond.false3819, label %cond.end3825

cond.false3819:                                   ; preds = %sw.bb3814
  %data3820 = getelementptr inbounds nuw i8, ptr %rexi.1.ph.lcssa13327, i64 24
  %817 = load ptr, ptr %data3820, align 8
  %data3821 = getelementptr inbounds nuw i8, ptr %817, i64 16
  %arg13822 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12508, i64 4
  %818 = load i32, ptr %arg13822, align 4
  %idxprom3823 = zext i32 %818 to i64
  %arrayidx3824 = getelementptr inbounds nuw ptr, ptr %data3821, i64 %idxprom3823
  %819 = load ptr, ptr %arrayidx3824, align 8
  br label %cond.end3825

cond.end3825:                                     ; preds = %cond.false3819, %sw.bb3814
  %cond3826 = phi ptr [ %819, %cond.false3819 ], [ null, %sw.bb3814 ]
  %mark_name = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13402, i64 32
  store ptr %cond3826, ptr %mark_name, align 8
  store i32 130, ptr %st.1.ph.lcssa13402, align 8
  br label %push_state

sw.bb3829:                                        ; preds = %cond.end42
  %minmod.1.lcssa12902 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12642 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12509 = phi ptr [ %scan.1, %cond.end42 ]
  %mark_name3831 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %820 = load ptr, ptr %mark_name3831, align 8
  %tobool3832.not = icmp eq ptr %820, null
  %spec.select8717 = select i1 %tobool3832.not, ptr %sv_commit.1.ph, ptr %820
  br label %no_silent

sw.bb3838:                                        ; preds = %cond.end42
  %minmod.1.lcssa12904 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12644 = phi ptr [ %locinput.1, %cond.end42 ]
  %loadedv3839 = trunc i8 %do_cutgroup.1.ph to i1
  %spec.select8718 = select i1 %loadedv3839, i8 0, i8 %do_cutgroup.1.ph
  %spec.select8719 = select i1 %loadedv3839, i8 0, i8 %no_final.1.ph
  %821 = load i32, ptr @PL_savestack_ix, align 4
  %cp3844 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %822 = load i32, ptr %cp3844, align 8
  %cmp3845 = icmp sgt i32 %821, %822
  br i1 %cmp3845, label %if.then3847, label %do.end3852

if.then3847:                                      ; preds = %sw.bb3838
  call void @Perl_leave_scope(i32 noundef %822) #10
  br label %do.end3852

do.end3852:                                       ; preds = %if.then3847, %sw.bb3838
  %lastparen3853 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 112
  %823 = load i32, ptr %lastparen3853, align 8
  %lastparen3856 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %824 = load i32, ptr %lastparen3856, align 8
  %cmp385712064 = icmp ugt i32 %823, %824
  br i1 %cmp385712064, label %for.body3859.lr.ph, label %for.end3866

for.body3859.lr.ph:                               ; preds = %do.end3852
  %offs3860 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 120
  br label %for.body3859

for.body3859:                                     ; preds = %for.body3859, %for.body3859.lr.ph
  %n.312065 = phi i32 [ %823, %for.body3859.lr.ph ], [ %dec3865, %for.body3859 ]
  %825 = load ptr, ptr %offs3860, align 8
  %idxprom3861 = zext i32 %n.312065 to i64
  %arrayidx3862 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %825, i64 %idxprom3861
  %end3863 = getelementptr inbounds nuw i8, ptr %arrayidx3862, i64 8
  store i64 -1, ptr %end3863, align 8
  %dec3865 = add i32 %n.312065, -1
  %826 = load i32, ptr %lastparen3856, align 8
  %cmp3857 = icmp ugt i32 %dec3865, %826
  br i1 %cmp3857, label %for.body3859, label %for.end3866.loopexit, !llvm.loop !16

for.end3866.loopexit:                             ; preds = %for.body3859
  %dec3865.lcssa = phi i32 [ %dec3865, %for.body3859 ]
  br label %for.end3866

for.end3866:                                      ; preds = %for.end3866.loopexit, %do.end3852
  %n.3.lcssa = phi i32 [ %823, %do.end3852 ], [ %dec3865.lcssa, %for.end3866.loopexit ]
  store i32 %n.3.lcssa, ptr %lastparen3853, align 8
  %lastcloseparen3869 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 28
  %827 = load i32, ptr %lastcloseparen3869, align 4
  %lastcloseparen3870 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 116
  store i32 %827, ptr %lastcloseparen3870, align 4
  %next_branch3872 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %828 = load ptr, ptr %next_branch3872, align 8
  %tobool3873.not = icmp eq ptr %828, null
  br i1 %tobool3873.not, label %no_silent, label %lor.lhs.false3874

lor.lhs.false3874:                                ; preds = %for.end3866
  %type3875 = getelementptr inbounds nuw i8, ptr %828, i64 1
  %829 = load i8, ptr %type3875, align 1
  switch i8 %829, label %no_silent [
    i8 30, label %while.cond.backedge
    i8 62, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %lor.lhs.false3874, %lor.lhs.false3874, %cond.end719
  %minmod.112951 = phi i8 [ %minmod.112950, %cond.end719 ], [ %minmod.1.lcssa12904, %lor.lhs.false3874 ], [ %minmod.1.lcssa12904, %lor.lhs.false3874 ]
  %do_cutgroup.0.be = phi i8 [ %spec.select8701, %cond.end719 ], [ %spec.select8718, %lor.lhs.false3874 ], [ %spec.select8718, %lor.lhs.false3874 ]
  %no_final.0.be = phi i8 [ %spec.select8702, %cond.end719 ], [ %spec.select8719, %lor.lhs.false3874 ], [ %spec.select8719, %lor.lhs.false3874 ]
  %locinput.0.be = phi ptr [ %uc534.3, %cond.end719 ], [ %locinput.1.lcssa12644, %lor.lhs.false3874 ], [ %locinput.1.lcssa12644, %lor.lhs.false3874 ]
  %scan.0.be = phi ptr [ %add.ptr722, %cond.end719 ], [ %828, %lor.lhs.false3874 ], [ %828, %lor.lhs.false3874 ]
  br label %while.cond, !llvm.loop !17

sw.bb3886:                                        ; preds = %cond.end42
  %last_pushed_cv.0.ph.lcssa14848 = phi ptr [ %last_pushed_cv.0.ph, %cond.end42 ]
  %caller_cv.0.ph.lcssa14812 = phi ptr [ %caller_cv.0.ph, %cond.end42 ]
  %multicall_oldcatch.0.ph.lcssa14775 = phi i8 [ %multicall_oldcatch.0.ph, %cond.end42 ]
  %multicall_cv.0.ph.lcssa14738 = phi ptr [ %multicall_cv.0.ph, %cond.end42 ]
  %last_pad.0.ph.lcssa14702 = phi ptr [ %last_pad.0.ph, %cond.end42 ]
  %sw.0.ph9430.lcssa14635 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14555 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14480 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14406 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14329 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14252 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14173 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14095 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14017 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13941 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13864 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13787 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13709 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13635 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13556 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13482 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13403 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13328 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13252 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13175 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %locinput.1.lcssa12645 = phi ptr [ %locinput.1, %cond.end42 ]
  br label %sw.epilog6360

sw.bb3887:                                        ; preds = %cond.end42
  store ptr %scan.1, ptr %me3889, align 8
  %add.ptr3891 = getelementptr inbounds nuw i8, ptr %scan.1, i64 8
  %830 = load i32, ptr %lastparen3892, align 8
  store i32 %830, ptr %lastparen3894, align 4
  %831 = load i32, ptr %lastcloseparen3895, align 4
  store i32 %831, ptr %lastcloseparen3897, align 8
  %832 = load i8, ptr %scan.1, align 2
  %tobool3901.not = icmp eq i8 %832, 0
  br i1 %tobool3901.not, label %if.end3915, label %if.then3902

if.then3902:                                      ; preds = %sw.bb3887
  %conv3906 = zext i8 %832 to i32
  %833 = load i32, ptr %maxopenparen, align 4
  %spec.store.select9398 = call i32 @llvm.umax.i32(i32 %833, i32 %conv3906)
  store i32 %spec.store.select9398, ptr %maxopenparen, align 4
  %next_off3911 = getelementptr inbounds nuw i8, ptr %scan.1, i64 10
  %834 = load i16, ptr %next_off3911, align 2
  %idx.ext3913 = zext i16 %834 to i64
  %add.ptr3914 = getelementptr inbounds nuw %struct.regnode, ptr %add.ptr3891, i64 %idx.ext3913
  br label %if.end3915

if.end3915:                                       ; preds = %if.then3902, %sw.bb3887
  %scan.4 = phi ptr [ %add.ptr3914, %if.then3902 ], [ %add.ptr3891, %sw.bb3887 ]
  store ptr %scan.4, ptr %A3917, align 8
  store ptr %next.1.ph, ptr %B3919, align 8
  store i32 0, ptr %alen, align 4
  store i32 0, ptr %count3922, align 8
  %storedv3926 = and i8 %minmod.1, 1
  store i8 %storedv3926, ptr %minmod3925, align 4
  store i32 -1001, ptr %c1, align 8
  %835 = load i32, ptr @PL_savestack_ix, align 4
  store i32 %835, ptr %cp3929, align 8
  %loadedv3932 = trunc i8 %minmod.1 to i1
  br i1 %loadedv3932, label %cond.true3934, label %cond.false3940

cond.true3934:                                    ; preds = %if.end3915
  %836 = load ptr, ptr %me3889, align 8
  %arg13937 = getelementptr inbounds nuw i8, ptr %836, i64 4
  %837 = load i16, ptr %arg13937, align 2
  %tobool3939.not = icmp eq i16 %837, 0
  br i1 %tobool3939.not, label %curlym_do_B, label %curlym_do_A.loopexit

cond.false3940:                                   ; preds = %if.end3915
  %838 = load ptr, ptr %me3889, align 8
  %arg23943 = getelementptr inbounds nuw i8, ptr %838, i64 6
  %839 = load i16, ptr %arg23943, align 2
  %tobool3945.not = icmp eq i16 %839, 0
  br i1 %tobool3945.not, label %curlym_do_B, label %curlym_do_A.loopexit

curlym_do_A.loopexit:                             ; preds = %lor.lhs.false4047, %cond.end4043, %cond.false3940, %cond.true3934
  %sw.0.ph9430.lcssa14655 = phi i1 [ %sw.0.ph9430, %cond.false3940 ], [ %sw.0.ph9430, %cond.true3934 ], [ %sw.0.ph9430, %cond.end4043 ], [ %sw.0.ph9430, %lor.lhs.false4047 ]
  %match.1.ph.lcssa14577 = phi i8 [ %match.1.ph, %cond.false3940 ], [ %match.1.ph, %cond.true3934 ], [ %match.1.ph, %cond.end4043 ], [ %match.1.ph, %lor.lhs.false4047 ]
  %is_utf8_pat.1.ph.lcssa14502 = phi i8 [ %is_utf8_pat.1.ph, %cond.false3940 ], [ %is_utf8_pat.1.ph, %cond.true3934 ], [ %is_utf8_pat.1.ph, %cond.end4043 ], [ %is_utf8_pat.1.ph, %lor.lhs.false4047 ]
  %logical.1.ph.lcssa14428 = phi i32 [ %logical.1.ph, %cond.false3940 ], [ %logical.1.ph, %cond.true3934 ], [ %logical.1.ph, %cond.end4043 ], [ %logical.1.ph, %lor.lhs.false4047 ]
  %sv_yes_mark.1.ph.lcssa14351 = phi ptr [ %sv_yes_mark.1.ph, %cond.false3940 ], [ %sv_yes_mark.1.ph, %cond.true3934 ], [ %sv_yes_mark.1.ph, %cond.end4043 ], [ %sv_yes_mark.1.ph, %lor.lhs.false4047 ]
  %sv_commit.1.ph.lcssa14274 = phi ptr [ %sv_commit.1.ph, %cond.false3940 ], [ %sv_commit.1.ph, %cond.true3934 ], [ %sv_commit.1.ph, %cond.end4043 ], [ %sv_commit.1.ph, %lor.lhs.false4047 ]
  %popmark.1.ph.lcssa14195 = phi ptr [ %popmark.1.ph, %cond.false3940 ], [ %popmark.1.ph, %cond.true3934 ], [ %popmark.1.ph, %cond.end4043 ], [ %popmark.1.ph, %lor.lhs.false4047 ]
  %do_cutgroup.1.ph.lcssa14117 = phi i8 [ %do_cutgroup.1.ph, %cond.false3940 ], [ %do_cutgroup.1.ph, %cond.true3934 ], [ %do_cutgroup.1.ph, %cond.end4043 ], [ %do_cutgroup.1.ph, %lor.lhs.false4047 ]
  %no_final.1.ph.lcssa14039 = phi i8 [ %no_final.1.ph, %cond.false3940 ], [ %no_final.1.ph, %cond.true3934 ], [ %no_final.1.ph, %cond.end4043 ], [ %no_final.1.ph, %lor.lhs.false4047 ]
  %cur_curlyx.1.ph.lcssa13963 = phi ptr [ %cur_curlyx.1.ph, %cond.false3940 ], [ %cur_curlyx.1.ph, %cond.true3934 ], [ %cur_curlyx.1.ph, %cond.end4043 ], [ %cur_curlyx.1.ph, %lor.lhs.false4047 ]
  %cur_eval.1.ph.lcssa13886 = phi ptr [ %cur_eval.1.ph, %cond.false3940 ], [ %cur_eval.1.ph, %cond.true3934 ], [ %cur_eval.1.ph, %cond.end4043 ], [ %cur_eval.1.ph, %lor.lhs.false4047 ]
  %mark_state.1.ph.lcssa13809 = phi ptr [ %mark_state.1.ph, %cond.false3940 ], [ %mark_state.1.ph, %cond.true3934 ], [ %mark_state.1.ph, %cond.end4043 ], [ %mark_state.1.ph, %lor.lhs.false4047 ]
  %yes_state.1.ph.lcssa13731 = phi ptr [ %yes_state.1.ph, %cond.false3940 ], [ %yes_state.1.ph, %cond.true3934 ], [ %yes_state.1.ph, %cond.end4043 ], [ %yes_state.1.ph, %lor.lhs.false4047 ]
  %nochange_depth.1.ph.lcssa13657 = phi i32 [ %nochange_depth.1.ph, %cond.false3940 ], [ %nochange_depth.1.ph, %cond.true3934 ], [ %nochange_depth.1.ph, %cond.end4043 ], [ %nochange_depth.1.ph, %lor.lhs.false4047 ]
  %depth.1.ph.lcssa13578 = phi i32 [ %depth.1.ph, %cond.false3940 ], [ %depth.1.ph, %cond.true3934 ], [ %depth.1.ph, %cond.end4043 ], [ %depth.1.ph, %lor.lhs.false4047 ]
  %next.1.ph.lcssa13504 = phi ptr [ %next.1.ph, %cond.false3940 ], [ %next.1.ph, %cond.true3934 ], [ %next.1.ph, %cond.end4043 ], [ %next.1.ph, %lor.lhs.false4047 ]
  %st.1.ph.lcssa13425 = phi ptr [ %st.1.ph, %cond.false3940 ], [ %st.1.ph, %cond.true3934 ], [ %st.1.ph, %cond.end4043 ], [ %st.1.ph, %lor.lhs.false4047 ]
  %rexi.1.ph.lcssa13350 = phi ptr [ %rexi.1.ph, %cond.false3940 ], [ %rexi.1.ph, %cond.true3934 ], [ %rexi.1.ph, %cond.end4043 ], [ %rexi.1.ph, %lor.lhs.false4047 ]
  %rex.1.ph.lcssa13274 = phi ptr [ %rex.1.ph, %cond.false3940 ], [ %rex.1.ph, %cond.true3934 ], [ %rex.1.ph, %cond.end4043 ], [ %rex.1.ph, %lor.lhs.false4047 ]
  %rex_sv.1.ph.lcssa13197 = phi ptr [ %rex_sv.1.ph, %cond.false3940 ], [ %rex_sv.1.ph, %cond.true3934 ], [ %rex_sv.1.ph, %cond.end4043 ], [ %rex_sv.1.ph, %lor.lhs.false4047 ]
  %locinput.1.lcssa12672 = phi ptr [ %locinput.1, %cond.false3940 ], [ %locinput.1, %cond.true3934 ], [ %locinput.1, %cond.end4043 ], [ %locinput.1, %lor.lhs.false4047 ]
  %minmod.2.ph = phi i8 [ 0, %cond.true3934 ], [ 0, %cond.false3940 ], [ %minmod.1, %cond.end4043 ], [ %minmod.1, %lor.lhs.false4047 ]
  br label %curlym_do_A

curlym_do_A.loopexit12319:                        ; preds = %land.lhs.true4552, %if.then4544
  %sw.0.ph9430.lcssa14653 = phi i1 [ %sw.0.ph9430, %if.then4544 ], [ %sw.0.ph9430, %land.lhs.true4552 ]
  %match.1.ph.lcssa14575 = phi i8 [ %match.1.ph, %if.then4544 ], [ %match.1.ph, %land.lhs.true4552 ]
  %is_utf8_pat.1.ph.lcssa14500 = phi i8 [ %is_utf8_pat.1.ph, %if.then4544 ], [ %is_utf8_pat.1.ph, %land.lhs.true4552 ]
  %logical.1.ph.lcssa14426 = phi i32 [ %logical.1.ph, %if.then4544 ], [ %logical.1.ph, %land.lhs.true4552 ]
  %sv_yes_mark.1.ph.lcssa14349 = phi ptr [ %sv_yes_mark.1.ph, %if.then4544 ], [ %sv_yes_mark.1.ph, %land.lhs.true4552 ]
  %sv_commit.1.ph.lcssa14272 = phi ptr [ %sv_commit.1.ph, %if.then4544 ], [ %sv_commit.1.ph, %land.lhs.true4552 ]
  %popmark.1.ph.lcssa14193 = phi ptr [ %popmark.1.ph, %if.then4544 ], [ %popmark.1.ph, %land.lhs.true4552 ]
  %do_cutgroup.1.ph.lcssa14115 = phi i8 [ %do_cutgroup.1.ph, %if.then4544 ], [ %do_cutgroup.1.ph, %land.lhs.true4552 ]
  %no_final.1.ph.lcssa14037 = phi i8 [ %no_final.1.ph, %if.then4544 ], [ %no_final.1.ph, %land.lhs.true4552 ]
  %cur_curlyx.1.ph.lcssa13961 = phi ptr [ %cur_curlyx.1.ph, %if.then4544 ], [ %cur_curlyx.1.ph, %land.lhs.true4552 ]
  %cur_eval.1.ph.lcssa13884 = phi ptr [ %cur_eval.1.ph, %if.then4544 ], [ %cur_eval.1.ph, %land.lhs.true4552 ]
  %mark_state.1.ph.lcssa13807 = phi ptr [ %mark_state.1.ph, %if.then4544 ], [ %mark_state.1.ph, %land.lhs.true4552 ]
  %yes_state.1.ph.lcssa13729 = phi ptr [ %yes_state.1.ph, %if.then4544 ], [ %yes_state.1.ph, %land.lhs.true4552 ]
  %nochange_depth.1.ph.lcssa13655 = phi i32 [ %nochange_depth.1.ph, %if.then4544 ], [ %nochange_depth.1.ph, %land.lhs.true4552 ]
  %depth.1.ph.lcssa13576 = phi i32 [ %depth.1.ph, %if.then4544 ], [ %depth.1.ph, %land.lhs.true4552 ]
  %next.1.ph.lcssa13502 = phi ptr [ %next.1.ph, %if.then4544 ], [ %next.1.ph, %land.lhs.true4552 ]
  %st.1.ph.lcssa13423 = phi ptr [ %st.1.ph, %if.then4544 ], [ %st.1.ph, %land.lhs.true4552 ]
  %rexi.1.ph.lcssa13348 = phi ptr [ %rexi.1.ph, %if.then4544 ], [ %rexi.1.ph, %land.lhs.true4552 ]
  %rex.1.ph.lcssa13272 = phi ptr [ %rex.1.ph, %if.then4544 ], [ %rex.1.ph, %land.lhs.true4552 ]
  %rex_sv.1.ph.lcssa13195 = phi ptr [ %rex_sv.1.ph, %if.then4544 ], [ %rex_sv.1.ph, %land.lhs.true4552 ]
  %minmod.1.lcssa12930.lcssa = phi i8 [ %minmod.1.lcssa12930, %if.then4544 ], [ %minmod.1.lcssa12930, %land.lhs.true4552 ]
  %locinput.1.lcssa12670.lcssa = phi ptr [ %locinput.1.lcssa12670, %if.then4544 ], [ %locinput.1.lcssa12670, %land.lhs.true4552 ]
  br label %curlym_do_A

curlym_do_A:                                      ; preds = %curlym_do_A.loopexit12319, %curlym_do_A.loopexit
  %sw.0.ph943014686 = phi i1 [ %sw.0.ph9430.lcssa14655, %curlym_do_A.loopexit ], [ %sw.0.ph9430.lcssa14653, %curlym_do_A.loopexit12319 ]
  %match.1.ph14612 = phi i8 [ %match.1.ph.lcssa14577, %curlym_do_A.loopexit ], [ %match.1.ph.lcssa14575, %curlym_do_A.loopexit12319 ]
  %is_utf8_pat.1.ph14534 = phi i8 [ %is_utf8_pat.1.ph.lcssa14502, %curlym_do_A.loopexit ], [ %is_utf8_pat.1.ph.lcssa14500, %curlym_do_A.loopexit12319 ]
  %logical.1.ph14459 = phi i32 [ %logical.1.ph.lcssa14428, %curlym_do_A.loopexit ], [ %logical.1.ph.lcssa14426, %curlym_do_A.loopexit12319 ]
  %sv_yes_mark.1.ph14386 = phi ptr [ %sv_yes_mark.1.ph.lcssa14351, %curlym_do_A.loopexit ], [ %sv_yes_mark.1.ph.lcssa14349, %curlym_do_A.loopexit12319 ]
  %sv_commit.1.ph14309 = phi ptr [ %sv_commit.1.ph.lcssa14274, %curlym_do_A.loopexit ], [ %sv_commit.1.ph.lcssa14272, %curlym_do_A.loopexit12319 ]
  %popmark.1.ph14233 = phi ptr [ %popmark.1.ph.lcssa14195, %curlym_do_A.loopexit ], [ %popmark.1.ph.lcssa14193, %curlym_do_A.loopexit12319 ]
  %do_cutgroup.1.ph14150 = phi i8 [ %do_cutgroup.1.ph.lcssa14117, %curlym_do_A.loopexit ], [ %do_cutgroup.1.ph.lcssa14115, %curlym_do_A.loopexit12319 ]
  %no_final.1.ph14072 = phi i8 [ %no_final.1.ph.lcssa14039, %curlym_do_A.loopexit ], [ %no_final.1.ph.lcssa14037, %curlym_do_A.loopexit12319 ]
  %cur_curlyx.1.ph13996 = phi ptr [ %cur_curlyx.1.ph.lcssa13963, %curlym_do_A.loopexit ], [ %cur_curlyx.1.ph.lcssa13961, %curlym_do_A.loopexit12319 ]
  %cur_eval.1.ph13921 = phi ptr [ %cur_eval.1.ph.lcssa13886, %curlym_do_A.loopexit ], [ %cur_eval.1.ph.lcssa13884, %curlym_do_A.loopexit12319 ]
  %mark_state.1.ph13844 = phi ptr [ %mark_state.1.ph.lcssa13809, %curlym_do_A.loopexit ], [ %mark_state.1.ph.lcssa13807, %curlym_do_A.loopexit12319 ]
  %yes_state.1.ph13764 = phi ptr [ %yes_state.1.ph.lcssa13731, %curlym_do_A.loopexit ], [ %yes_state.1.ph.lcssa13729, %curlym_do_A.loopexit12319 ]
  %nochange_depth.1.ph13687 = phi i32 [ %nochange_depth.1.ph.lcssa13657, %curlym_do_A.loopexit ], [ %nochange_depth.1.ph.lcssa13655, %curlym_do_A.loopexit12319 ]
  %depth.1.ph13616 = phi i32 [ %depth.1.ph.lcssa13578, %curlym_do_A.loopexit ], [ %depth.1.ph.lcssa13576, %curlym_do_A.loopexit12319 ]
  %next.1.ph13535 = phi ptr [ %next.1.ph.lcssa13504, %curlym_do_A.loopexit ], [ %next.1.ph.lcssa13502, %curlym_do_A.loopexit12319 ]
  %st.1.ph13463 = phi ptr [ %st.1.ph.lcssa13425, %curlym_do_A.loopexit ], [ %st.1.ph.lcssa13423, %curlym_do_A.loopexit12319 ]
  %rexi.1.ph13382 = phi ptr [ %rexi.1.ph.lcssa13350, %curlym_do_A.loopexit ], [ %rexi.1.ph.lcssa13348, %curlym_do_A.loopexit12319 ]
  %rex.1.ph13308 = phi ptr [ %rex.1.ph.lcssa13274, %curlym_do_A.loopexit ], [ %rex.1.ph.lcssa13272, %curlym_do_A.loopexit12319 ]
  %rex_sv.1.ph13232 = phi ptr [ %rex_sv.1.ph.lcssa13197, %curlym_do_A.loopexit ], [ %rex_sv.1.ph.lcssa13195, %curlym_do_A.loopexit12319 ]
  %locinput.112700 = phi ptr [ %locinput.1.lcssa12672, %curlym_do_A.loopexit ], [ %locinput.1.lcssa12670.lcssa, %curlym_do_A.loopexit12319 ]
  %minmod.2 = phi i8 [ %minmod.2.ph, %curlym_do_A.loopexit ], [ %minmod.1.lcssa12930.lcssa, %curlym_do_A.loopexit12319 ]
  %A3949 = getelementptr inbounds nuw i8, ptr %st.1.ph13463, i64 56
  %840 = load ptr, ptr %A3949, align 8
  store i32 112, ptr %st.1.ph13463, align 8
  br label %push_yes_state

sw.bb3951:                                        ; preds = %cond.end42
  %841 = load i32, ptr %count3953, align 8
  %inc3954 = add nsw i32 %841, 1
  store i32 %inc3954, ptr %count3953, align 8
  %cmp3957 = icmp eq i32 %841, 0
  br i1 %cmp3957, label %if.then3959, label %if.end4011

if.then3959:                                      ; preds = %sw.bb3951
  %842 = load i8, ptr %is_utf8_target, align 2, !range !0, !noundef !1
  %loadedv3961 = trunc nuw i8 %842 to i1
  br i1 %loadedv3961, label %if.then3962, label %if.else3978

if.then3962:                                      ; preds = %if.then3959
  %843 = load ptr, ptr %locinput3964, align 8
  %cmp396612023 = icmp ult ptr %843, %locinput.1
  br i1 %cmp396612023, label %while.body3968.lr.ph, label %if.end3986

while.body3968.lr.ph:                             ; preds = %if.then3962
  %alen3970.promoted = load i32, ptr %alen3970, align 4
  br label %while.body3968

while.body3968:                                   ; preds = %while.body3968, %while.body3968.lr.ph
  %inc397112025 = phi i32 [ %alen3970.promoted, %while.body3968.lr.ph ], [ %inc3971, %while.body3968 ]
  %s3963.012024 = phi ptr [ %843, %while.body3968.lr.ph ], [ %add.ptr3976, %while.body3968 ]
  %inc3971 = add nsw i32 %inc397112025, 1
  store i32 %inc3971, ptr %alen3970, align 4
  %844 = load i8, ptr %s3963.012024, align 1
  %idxprom3972 = zext i8 %844 to i64
  %arrayidx3973 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom3972
  %845 = load i8, ptr %arrayidx3973, align 1
  %idx.ext3975 = zext i8 %845 to i64
  %add.ptr3976 = getelementptr inbounds nuw i8, ptr %s3963.012024, i64 %idx.ext3975
  %cmp3966 = icmp ult ptr %add.ptr3976, %locinput.1
  br i1 %cmp3966, label %while.body3968, label %if.end3986.loopexit, !llvm.loop !18

if.else3978:                                      ; preds = %if.then3959
  %846 = load ptr, ptr %locinput3979, align 8
  %sub.ptr.lhs.cast3980 = ptrtoint ptr %locinput.1 to i64
  %sub.ptr.rhs.cast3981 = ptrtoint ptr %846 to i64
  %sub.ptr.sub3982 = sub i64 %sub.ptr.lhs.cast3980, %sub.ptr.rhs.cast3981
  %conv3983 = trunc i64 %sub.ptr.sub3982 to i32
  store i32 %conv3983, ptr %alen3985, align 4
  br label %if.end3986

if.end3986.loopexit:                              ; preds = %while.body3968
  br label %if.end3986

if.end3986:                                       ; preds = %if.end3986.loopexit, %if.else3978, %if.then3962
  %847 = load i32, ptr %alen3988, align 4
  %cmp3989 = icmp eq i32 %847, 0
  br i1 %cmp3989, label %if.then3991, label %if.end4011

if.then3991:                                      ; preds = %if.end3986
  %848 = load i8, ptr %minmod3993, align 4, !range !0, !noundef !1
  %loadedv3994 = trunc nuw i8 %848 to i1
  br i1 %loadedv3994, label %cond.true3996, label %cond.false4001

cond.true3996:                                    ; preds = %if.then3991
  %849 = load ptr, ptr %me3998, align 8
  %arg13999 = getelementptr inbounds nuw i8, ptr %849, i64 4
  br label %cond.end4006

cond.false4001:                                   ; preds = %if.then3991
  %850 = load ptr, ptr %me4003, align 8
  %arg24004 = getelementptr inbounds nuw i8, ptr %850, i64 6
  br label %cond.end4006

cond.end4006:                                     ; preds = %cond.false4001, %cond.true3996
  %cond4007.in.in = phi ptr [ %arg13999, %cond.true3996 ], [ %arg24004, %cond.false4001 ]
  %cond4007.in = load i16, ptr %cond4007.in.in, align 2
  %cond4007 = zext i16 %cond4007.in to i32
  store i32 %cond4007, ptr %count3953, align 8
  br label %if.end4011

if.end4011:                                       ; preds = %cond.end4006, %if.end3986, %sw.bb3951
  br i1 %tobool4012.not, label %if.end4027, label %land.lhs.true4013

land.lhs.true4013:                                ; preds = %if.end4011
  %851 = load i32, ptr %close_paren4015, align 8
  %tobool4016.not = icmp eq i32 %851, 0
  br i1 %tobool4016.not, label %if.end4027, label %land.lhs.true4017

land.lhs.true4017:                                ; preds = %land.lhs.true4013
  %852 = load ptr, ptr %me4021, align 8
  %853 = load i8, ptr %852, align 2
  %conv4023 = zext i8 %853 to i32
  %cmp4024 = icmp eq i32 %851, %conv4023
  br i1 %cmp4024, label %if.then5795.loopexit12317, label %if.end4027

if.end4027:                                       ; preds = %land.lhs.true4017, %land.lhs.true4013, %if.end4011
  %854 = load i8, ptr %minmod4030, align 4, !range !0, !noundef !1
  %loadedv4031 = trunc nuw i8 %854 to i1
  br i1 %loadedv4031, label %cond.true4033, label %cond.false4038

cond.true4033:                                    ; preds = %if.end4027
  %855 = load ptr, ptr %me4035, align 8
  %arg14036 = getelementptr inbounds nuw i8, ptr %855, i64 4
  br label %cond.end4043

cond.false4038:                                   ; preds = %if.end4027
  %856 = load ptr, ptr %me4040, align 8
  %arg24041 = getelementptr inbounds nuw i8, ptr %856, i64 6
  br label %cond.end4043

cond.end4043:                                     ; preds = %cond.false4038, %cond.true4033
  %cond4044.in.in = phi ptr [ %arg14036, %cond.true4033 ], [ %arg24041, %cond.false4038 ]
  %cond4044.in = load i16, ptr %cond4044.in.in, align 2
  %cmp4045 = icmp eq i16 %cond4044.in, 32767
  br i1 %cmp4045, label %curlym_do_A.loopexit, label %lor.lhs.false4047

lor.lhs.false4047:                                ; preds = %cond.end4043
  %cond4044 = zext i16 %cond4044.in to i32
  %857 = load i32, ptr %count3953, align 8
  %cmp4050 = icmp slt i32 %857, %cond4044
  br i1 %cmp4050, label %curlym_do_A.loopexit, label %curlym_do_B

do.body4058:                                      ; preds = %cond.end42
  %858 = load i32, ptr @PL_savestack_ix, align 4
  %859 = load i32, ptr %cp4060, align 8
  %cmp4061 = icmp sgt i32 %858, %859
  br i1 %cmp4061, label %if.then4063, label %do.end4068

if.then4063:                                      ; preds = %do.body4058
  call void @Perl_leave_scope(i32 noundef %859) #10
  br label %do.end4068

do.end4068:                                       ; preds = %if.then4063, %do.body4058
  %860 = load i8, ptr %minmod4070, align 4, !range !0, !noundef !1
  %loadedv4071 = trunc nuw i8 %860 to i1
  br i1 %loadedv4071, label %no_silent.loopexit, label %lor.lhs.false4073

lor.lhs.false4073:                                ; preds = %do.end4068
  %861 = load i32, ptr %count4075, align 8
  %862 = load ptr, ptr %me4077, align 8
  %arg14078 = getelementptr inbounds nuw i8, ptr %862, i64 4
  %863 = load i16, ptr %arg14078, align 2
  %conv4079 = zext i16 %863 to i32
  %cmp4080 = icmp slt i32 %861, %conv4079
  br i1 %cmp4080, label %no_silent.loopexit, label %lor.lhs.false4082

lor.lhs.false4082:                                ; preds = %lor.lhs.false4073
  br i1 %tobool4083.not, label %curlym_do_B, label %land.lhs.true4084

land.lhs.true4084:                                ; preds = %lor.lhs.false4082
  %864 = load i32, ptr %close_paren4086, align 8
  %tobool4087.not = icmp eq i32 %864, 0
  br i1 %tobool4087.not, label %curlym_do_B, label %land.lhs.true4088

land.lhs.true4088:                                ; preds = %land.lhs.true4084
  %865 = load i8, ptr %862, align 2
  %conv4094 = zext i8 %865 to i32
  %cmp4095 = icmp eq i32 %864, %conv4094
  br i1 %cmp4095, label %no_silent.loopexit, label %curlym_do_B

curlym_do_B:                                      ; preds = %cond.true4606, %cond.end4601, %land.lhs.true4088, %land.lhs.true4084, %lor.lhs.false4082, %lor.lhs.false4047, %cond.false3940, %cond.true3934
  %minmod.3 = phi i8 [ 0, %cond.true3934 ], [ 0, %cond.false3940 ], [ %minmod.1, %land.lhs.true4088 ], [ %minmod.1, %land.lhs.true4084 ], [ %minmod.1, %lor.lhs.false4082 ], [ %minmod.1, %cond.end4601 ], [ %minmod.1, %cond.true4606 ], [ %minmod.1, %lor.lhs.false4047 ]
  %nextchr.0 = phi i32 [ %cond43, %cond.true3934 ], [ %cond43, %cond.false3940 ], [ %cond43, %land.lhs.true4088 ], [ %cond43, %land.lhs.true4084 ], [ %cond43, %lor.lhs.false4082 ], [ -10, %cond.end4601 ], [ %conv4607, %cond.true4606 ], [ %cond43, %lor.lhs.false4047 ]
  %locinput.10 = phi ptr [ %locinput.1, %cond.true3934 ], [ %locinput.1, %cond.false3940 ], [ %locinput.1, %land.lhs.true4088 ], [ %locinput.1, %land.lhs.true4084 ], [ %locinput.1, %lor.lhs.false4082 ], [ %cond4602, %cond.end4601 ], [ %cond4602, %cond.true4606 ], [ %locinput.1, %lor.lhs.false4047 ]
  %scan.5 = phi ptr [ %scan.4, %cond.true3934 ], [ %scan.4, %cond.false3940 ], [ %scan.1, %land.lhs.true4088 ], [ %scan.1, %land.lhs.true4084 ], [ %scan.1, %lor.lhs.false4082 ], [ %scan.1, %cond.end4601 ], [ %scan.1, %cond.true4606 ], [ %scan.1, %lor.lhs.false4047 ]
  %866 = load i32, ptr %c14100, align 8
  %cmp4101 = icmp eq i32 %866, -1001
  br i1 %cmp4101, label %if.then4103, label %if.end4363

if.then4103:                                      ; preds = %curlym_do_B
  store i32 -1000, ptr %c2, align 4
  store i32 -1000, ptr %c14100, align 8
  %867 = load ptr, ptr %B4108, align 8
  %type4109 = getelementptr inbounds nuw i8, ptr %867, i64 1
  %868 = load i8, ptr %type4109, align 1
  %idxprom4110 = zext i8 %868 to i64
  %arrayidx4111 = getelementptr inbounds nuw i8, ptr @PL_regkind, i64 %idxprom4110
  %869 = load i8, ptr %arrayidx4111, align 1
  switch i8 %869, label %lor.lhs.false4124 [
    i8 31, label %if.end4339
    i8 51, label %if.end4339
  ]

lor.lhs.false4124:                                ; preds = %if.then4103
  switch i8 %868, label %lor.lhs.false4190 [
    i8 49, label %if.then4206
    i8 50, label %land.lhs.true4138
    i8 68, label %if.then4206
    i8 65, label %if.then4206
    i8 63, label %if.then4206
    i8 43, label %if.then4206
    i8 69, label %if.then4206
    i8 90, label %if.then4206
  ]

land.lhs.true4138:                                ; preds = %lor.lhs.false4124
  br i1 %tobool4139.not, label %if.then4206, label %lor.lhs.false4140

lor.lhs.false4140:                                ; preds = %land.lhs.true4138
  %870 = load i32, ptr %close_paren4142, align 8
  %arg14145 = getelementptr inbounds nuw i8, ptr %867, i64 4
  %871 = load i32, ptr %arg14145, align 4
  %cmp4146.not = icmp eq i32 %870, %871
  br i1 %cmp4146.not, label %lor.lhs.false4190, label %if.then4206

lor.lhs.false4190:                                ; preds = %lor.lhs.false4140, %lor.lhs.false4124
  %cmp4197 = icmp eq i8 %869, 44
  br i1 %cmp4197, label %land.lhs.true4199, label %if.end4363

land.lhs.true4199:                                ; preds = %lor.lhs.false4190
  %arg14202 = getelementptr inbounds nuw i8, ptr %867, i64 4
  %872 = load i16, ptr %arg14202, align 2
  %cmp4204.not = icmp eq i16 %872, 0
  br i1 %cmp4204.not, label %if.end4363, label %if.then4206

if.then4206:                                      ; preds = %land.lhs.true4199, %lor.lhs.false4140, %land.lhs.true4138, %lor.lhs.false4124, %lor.lhs.false4124, %lor.lhs.false4124, %lor.lhs.false4124, %lor.lhs.false4124, %lor.lhs.false4124, %lor.lhs.false4124
  switch i8 %869, label %while.cond4224.preheader [
    i8 31, label %if.end4339
    i8 51, label %if.end4339
  ]

while.cond4224.preheader:                         ; preds = %if.then4206
  br label %while.cond4224

while.cond4224:                                   ; preds = %if.end4335, %while.cond4224.preheader
  %text_node.0 = phi ptr [ %text_node.1, %if.end4335 ], [ %867, %while.cond4224.preheader ]
  %type4225 = getelementptr inbounds nuw i8, ptr %text_node.0, i64 1
  %873 = load i8, ptr %type4225, align 1
  switch i8 %873, label %lor.rhs4272 [
    i8 49, label %lor.lhs.false4295
    i8 50, label %land.lhs.true4234
    i8 65, label %if.then4301
    i8 43, label %lor.lhs.false4295
    i8 63, label %lor.lhs.false4295
    i8 68, label %lor.lhs.false4295
    i8 69, label %lor.lhs.false4295
    i8 90, label %lor.lhs.false4295
  ]

land.lhs.true4234:                                ; preds = %while.cond4224
  br i1 %tobool4235.not, label %lor.lhs.false4295, label %lor.lhs.false4236

lor.lhs.false4236:                                ; preds = %land.lhs.true4234
  %874 = load i32, ptr %close_paren4238, align 8
  %arg14239 = getelementptr inbounds nuw i8, ptr %text_node.0, i64 4
  %875 = load i32, ptr %arg14239, align 4
  %cmp4240.not = icmp eq i32 %874, %875
  br i1 %cmp4240.not, label %lor.rhs4272, label %lor.lhs.false4295

lor.rhs4272:                                      ; preds = %lor.lhs.false4236, %while.cond4224
  %idxprom4274 = zext i8 %873 to i64
  %arrayidx4275 = getelementptr inbounds nuw i8, ptr @PL_regkind, i64 %idxprom4274
  %876 = load i8, ptr %arrayidx4275, align 1
  %cmp4277 = icmp eq i8 %876, 44
  br i1 %cmp4277, label %land.rhs4279, label %if.end4339.loopexit

land.rhs4279:                                     ; preds = %lor.rhs4272
  %arg14280 = getelementptr inbounds nuw i8, ptr %text_node.0, i64 4
  %877 = load i16, ptr %arg14280, align 2
  %cmp4282.not = icmp eq i16 %877, 0
  br i1 %cmp4282.not, label %if.end4339.loopexit, label %while.body4288

while.body4288:                                   ; preds = %land.rhs4279
  %cmp4293 = icmp eq i8 %873, 65
  br i1 %cmp4293, label %if.then4301, label %lor.lhs.false4295

lor.lhs.false4295:                                ; preds = %while.body4288, %lor.lhs.false4236, %land.lhs.true4234, %while.cond4224, %while.cond4224, %while.cond4224, %while.cond4224, %while.cond4224, %while.cond4224
  %idxprom4296 = zext i8 %873 to i64
  %arrayidx4297 = getelementptr inbounds nuw i8, ptr @PL_regkind, i64 %idxprom4296
  %878 = load i8, ptr %arrayidx4297, align 1
  %cmp4299 = icmp eq i8 %878, 44
  br i1 %cmp4299, label %if.then4301, label %if.else4304

if.then4301:                                      ; preds = %lor.lhs.false4295, %while.body4288, %while.cond4224
  %add.ptr4303 = getelementptr inbounds nuw i8, ptr %text_node.0, i64 8
  br label %if.end4335

if.else4304:                                      ; preds = %lor.lhs.false4295
  switch i8 %873, label %if.else4328 [
    i8 43, label %if.then4308
    i8 63, label %if.then4314
  ]

if.then4308:                                      ; preds = %if.else4304
  %add.ptr4309 = getelementptr inbounds nuw i8, ptr %text_node.0, i64 4
  br label %if.end4335

if.then4314:                                      ; preds = %if.else4304
  %879 = load i8, ptr %text_node.0, align 2
  %cmp4317 = icmp eq i8 %879, 0
  br i1 %cmp4317, label %cond.true4319, label %cond.false4322

cond.true4319:                                    ; preds = %if.then4314
  %add.ptr4321 = getelementptr inbounds nuw i8, ptr %text_node.0, i64 8
  br label %if.end4335

cond.false4322:                                   ; preds = %if.then4314
  %arg14323 = getelementptr inbounds nuw i8, ptr %text_node.0, i64 4
  %880 = load i32, ptr %arg14323, align 4
  %idx.ext4324 = zext i32 %880 to i64
  %add.ptr4325 = getelementptr inbounds nuw %struct.regnode, ptr %text_node.0, i64 %idx.ext4324
  br label %if.end4335

if.else4328:                                      ; preds = %if.else4304
  %next_off4329 = getelementptr inbounds nuw i8, ptr %text_node.0, i64 2
  %881 = load i16, ptr %next_off4329, align 2
  %idx.ext4331 = zext i16 %881 to i64
  %add.ptr4332 = getelementptr inbounds nuw %struct.regnode, ptr %text_node.0, i64 %idx.ext4331
  br label %if.end4335

if.end4335:                                       ; preds = %if.else4328, %cond.false4322, %cond.true4319, %if.then4308, %if.then4301
  %text_node.1 = phi ptr [ %add.ptr4303, %if.then4301 ], [ %add.ptr4309, %if.then4308 ], [ %add.ptr4332, %if.else4328 ], [ %add.ptr4321, %cond.true4319 ], [ %add.ptr4325, %cond.false4322 ]
  br label %while.cond4224, !llvm.loop !19

if.end4339.loopexit:                              ; preds = %land.rhs4279, %lor.rhs4272
  %text_node.0.lcssa = phi ptr [ %text_node.0, %lor.rhs4272 ], [ %text_node.0, %land.rhs4279 ]
  br label %if.end4339

if.end4339:                                       ; preds = %if.end4339.loopexit, %if.then4206, %if.then4206, %if.then4103, %if.then4103
  %text_node.2 = phi ptr [ %867, %if.then4206 ], [ %867, %if.then4206 ], [ %867, %if.then4103 ], [ %867, %if.then4103 ], [ %text_node.0.lcssa, %if.end4339.loopexit ]
  %type4340 = getelementptr inbounds nuw i8, ptr %text_node.2, i64 1
  %882 = load i8, ptr %type4340, align 1
  %idxprom4341 = zext i8 %882 to i64
  %arrayidx4342 = getelementptr inbounds nuw i8, ptr @PL_regkind, i64 %idxprom4341
  %883 = load i8, ptr %arrayidx4342, align 1
  %cmp4344 = icmp eq i8 %883, 31
  br i1 %cmp4344, label %if.then4346, label %if.end4363

if.then4346:                                      ; preds = %if.end4339
  %reginfo.val8759 = load i8, ptr %is_utf8_pat21, align 1, !range !0, !noundef !1
  %reginfo.val8760 = load i8, ptr %is_utf8_target, align 2, !range !0, !noundef !1
  %call4355 = call fastcc zeroext i1 @S_setup_EXACTISH_ST_c1_c2(ptr noundef nonnull %text_node.2, ptr noundef nonnull %c14100, ptr noundef nonnull %c1_utf8, ptr noundef nonnull %c2, ptr noundef nonnull %c2_utf8, i8 %reginfo.val8759, i8 %reginfo.val8760)
  br i1 %call4355, label %if.end4363, label %no_silent.loopexit

if.end4363:                                       ; preds = %if.then4346, %if.end4339, %land.lhs.true4199, %lor.lhs.false4190, %curlym_do_B
  %cmp4364 = icmp slt i32 %nextchr.0, 0
  br i1 %cmp4364, label %if.end4411, label %land.lhs.true4366

land.lhs.true4366:                                ; preds = %if.end4363
  %884 = load i32, ptr %c14100, align 8
  %cmp4369.not = icmp eq i32 %884, -1000
  br i1 %cmp4369.not, label %if.end4411, label %if.then4371

if.then4371:                                      ; preds = %land.lhs.true4366
  %cmp4373 = icmp samesign ugt i32 %nextchr.0, 127
  %or.cond6647 = select i1 %cmp4373, i1 %loadedv, i1 false
  br i1 %or.cond6647, label %if.then4378, label %if.else4398

if.then4378:                                      ; preds = %if.then4371
  %885 = load i8, ptr %locinput.10, align 1
  %idxprom4382 = zext i8 %885 to i64
  %arrayidx4383 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom4382
  %886 = load i8, ptr %arrayidx4383, align 1
  %conv4384 = zext i8 %886 to i64
  %bcmp8688 = call i32 @bcmp(ptr %locinput.10, ptr nonnull %c1_utf84380, i64 %conv4384)
  %tobool4386.not = icmp eq i32 %bcmp8688, 0
  br i1 %tobool4386.not, label %if.end4411, label %land.lhs.true4387

land.lhs.true4387:                                ; preds = %if.then4378
  %bcmp8689 = call i32 @bcmp(ptr nonnull %locinput.10, ptr nonnull %c2_utf84389, i64 %conv4384)
  %tobool4395.not = icmp eq i32 %bcmp8689, 0
  br i1 %tobool4395.not, label %if.end4411, label %reenter_switch.backedge

reenter_switch.backedge:                          ; preds = %land.lhs.true4403, %land.lhs.true4387
  br label %reenter_switch

if.else4398:                                      ; preds = %if.then4371
  %cmp4401.not = icmp eq i32 %nextchr.0, %884
  br i1 %cmp4401.not, label %if.end4411, label %land.lhs.true4403

land.lhs.true4403:                                ; preds = %if.else4398
  %887 = load i32, ptr %c24405, align 4
  %cmp4406.not = icmp eq i32 %nextchr.0, %887
  br i1 %cmp4406.not, label %if.end4411, label %reenter_switch.backedge

if.end4411:                                       ; preds = %land.lhs.true4403, %if.else4398, %land.lhs.true4387, %if.then4378, %land.lhs.true4366, %if.end4363
  %minmod.3.lcssa = phi i8 [ %minmod.3, %land.lhs.true4387 ], [ %minmod.3, %if.then4378 ], [ %minmod.3, %land.lhs.true4403 ], [ %minmod.3, %if.else4398 ], [ %minmod.3, %land.lhs.true4366 ], [ %minmod.3, %if.end4363 ]
  %locinput.10.lcssa = phi ptr [ %locinput.10, %land.lhs.true4387 ], [ %locinput.10, %if.then4378 ], [ %locinput.10, %land.lhs.true4403 ], [ %locinput.10, %if.else4398 ], [ %locinput.10, %land.lhs.true4366 ], [ %locinput.10, %if.end4363 ]
  %scan.5.lcssa = phi ptr [ %scan.5, %land.lhs.true4387 ], [ %scan.5, %if.then4378 ], [ %scan.5, %land.lhs.true4403 ], [ %scan.5, %if.else4398 ], [ %scan.5, %land.lhs.true4366 ], [ %scan.5, %if.end4363 ]
  %me4413 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %888 = load ptr, ptr %me4413, align 8
  %889 = load i8, ptr %888, align 2
  %tobool4415.not = icmp eq i8 %889, 0
  br i1 %tobool4415.not, label %if.end4507, label %if.then4416

if.then4416:                                      ; preds = %if.end4411
  %conv4421 = zext i8 %889 to i32
  %count4423 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %890 = load i32, ptr %count4423, align 8
  %tobool4424.not = icmp eq i32 %890, 0
  br i1 %tobool4424.not, label %if.else4477, label %if.then4425

if.then4425:                                      ; preds = %if.then4416
  %891 = load i8, ptr %is_utf8_target, align 2, !range !0, !noundef !1
  %loadedv4427 = trunc nuw i8 %891 to i1
  br i1 %loadedv4427, label %cond.true4429, label %cond.false4446

cond.true4429:                                    ; preds = %if.then4425
  %alen4431 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 44
  %892 = load i32, ptr %alen4431, align 4
  %sub4432 = sub nsw i32 0, %892
  %conv4433 = sext i32 %sub4432 to i64
  %cmp4437 = icmp slt i32 %892, 1
  %cond4444.in = select i1 %cmp4437, ptr %strend, ptr %strbeg4442
  %cond4444 = load ptr, ptr %cond4444.in, align 8
  %lim63.i9080 = ptrtoint ptr %cond4444 to i64
  %cmp.i = icmp slt i32 %892, 1
  br i1 %cmp.i, label %while.cond.preheader.i, label %while.cond2.preheader.i

while.cond2.preheader.i:                          ; preds = %cond.true4429
  %cmp551.i9081 = icmp ugt ptr %locinput.10.lcssa, %cond4444
  br i1 %cmp551.i9081, label %while.body8.i9083.preheader, label %cond.end4452

while.body8.i9083.preheader:                      ; preds = %while.cond2.preheader.i
  br label %while.body8.i9083

while.cond.preheader.i:                           ; preds = %cond.true4429
  %tobool55.i = icmp ne i32 %892, 0
  %cmp156.i = icmp ult ptr %locinput.10.lcssa, %cond4444
  %893 = and i1 %tobool55.i, %cmp156.i
  br i1 %893, label %while.body.i.preheader, label %cond.end4452

while.body.i.preheader:                           ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.i.preheader
  %s.addr.058.i = phi ptr [ %add.ptr.i, %while.body.i ], [ %locinput.10.lcssa, %while.body.i.preheader ]
  %off.addr.057.i = phi i64 [ %dec.i, %while.body.i ], [ %conv4433, %while.body.i.preheader ]
  %dec.i = add nsw i64 %off.addr.057.i, -1
  %894 = load i8, ptr %s.addr.058.i, align 1
  %idxprom.i9112 = zext i8 %894 to i64
  %arrayidx.i9113 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom.i9112
  %895 = load i8, ptr %arrayidx.i9113, align 1
  %idx.ext.i = zext i8 %895 to i64
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %s.addr.058.i, i64 %idx.ext.i
  %tobool.i = icmp ne i64 %dec.i, 0
  %cmp1.i9114 = icmp ult ptr %add.ptr.i, %cond4444
  %896 = select i1 %tobool.i, i1 %cmp1.i9114, i1 false
  br i1 %896, label %while.body.i, label %cond.end4452.loopexit, !llvm.loop !20

while.body8.i9083:                                ; preds = %if.end28.i9099, %while.body8.i9083.preheader
  %inc53.in.i9084 = phi i64 [ %inc53.i9087, %if.end28.i9099 ], [ %conv4433, %while.body8.i9083.preheader ]
  %s.addr.152.i9085 = phi ptr [ %s.addr.3.i9100, %if.end28.i9099 ], [ %locinput.10.lcssa, %while.body8.i9083.preheader ]
  %s.addr.15264.i9086 = ptrtoint ptr %s.addr.152.i9085 to i64
  %inc53.i9087 = add nsw i64 %inc53.in.i9084, 1
  %incdec.ptr.i9088 = getelementptr inbounds i8, ptr %s.addr.152.i9085, i64 -1
  %897 = load i8, ptr %incdec.ptr.i9088, align 1
  %tobool10.not.i9089 = icmp sgt i8 %897, -1
  br i1 %tobool10.not.i9089, label %if.end28.i9099, label %while.cond12.preheader.i9090

while.cond12.preheader.i9090:                     ; preds = %while.body8.i9083
  %cmp1348.i9091 = icmp ugt ptr %incdec.ptr.i9088, %cond4444
  br i1 %cmp1348.i9091, label %land.rhs15.preheader.i9103, label %while.end23thread-pre-split.i9092

land.rhs15.preheader.i9103:                       ; preds = %while.cond12.preheader.i9090
  %scevgep.i9104 = getelementptr i8, ptr %s.addr.152.i9085, i64 %lim63.i9080
  %898 = sub i64 0, %s.addr.15264.i9086
  %scevgep65.i9105 = getelementptr i8, ptr %scevgep.i9104, i64 %898
  br label %land.rhs15.i9106

land.rhs15.i9106:                                 ; preds = %while.body21.i9109, %land.rhs15.preheader.i9103
  %s.addr.249.i9107 = phi ptr [ %incdec.ptr22.i9110, %while.body21.i9109 ], [ %incdec.ptr.i9088, %land.rhs15.preheader.i9103 ]
  %899 = load i8, ptr %s.addr.249.i9107, align 1
  %cmp18.i9108 = icmp slt i8 %899, -64
  br i1 %cmp18.i9108, label %while.body21.i9109, label %while.end23.i9095.loopexit

while.body21.i9109:                               ; preds = %land.rhs15.i9106
  %incdec.ptr22.i9110 = getelementptr inbounds i8, ptr %s.addr.249.i9107, i64 -1
  %cmp13.i9111 = icmp ugt ptr %incdec.ptr22.i9110, %cond4444
  br i1 %cmp13.i9111, label %land.rhs15.i9106, label %while.end23thread-pre-split.i9092.loopexit, !llvm.loop !13

while.end23thread-pre-split.i9092.loopexit:       ; preds = %while.body21.i9109
  br label %while.end23thread-pre-split.i9092

while.end23thread-pre-split.i9092:                ; preds = %while.end23thread-pre-split.i9092.loopexit, %while.cond12.preheader.i9090
  %s.addr.2.lcssa.i9093 = phi ptr [ %incdec.ptr.i9088, %while.cond12.preheader.i9090 ], [ %scevgep65.i9105, %while.end23thread-pre-split.i9092.loopexit ]
  %.pr.i9094 = load i8, ptr %s.addr.2.lcssa.i9093, align 1
  br label %while.end23.i9095

while.end23.i9095.loopexit:                       ; preds = %land.rhs15.i9106
  %s.addr.249.i9107.lcssa = phi ptr [ %s.addr.249.i9107, %land.rhs15.i9106 ]
  %.lcssa13111 = phi i8 [ %899, %land.rhs15.i9106 ]
  br label %while.end23.i9095

while.end23.i9095:                                ; preds = %while.end23.i9095.loopexit, %while.end23thread-pre-split.i9092
  %s.addr.247.i9096 = phi ptr [ %s.addr.2.lcssa.i9093, %while.end23thread-pre-split.i9092 ], [ %s.addr.249.i9107.lcssa, %while.end23.i9095.loopexit ]
  %900 = phi i8 [ %.pr.i9094, %while.end23thread-pre-split.i9092 ], [ %.lcssa13111, %while.end23.i9095.loopexit ]
  %cmp25.i9097 = icmp ugt i8 %900, -63
  br i1 %cmp25.i9097, label %if.end28.i9099, label %if.then27.i9098

if.then27.i9098:                                  ; preds = %while.end23.i9095
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #10
  br label %if.end28.i9099

if.end28.i9099:                                   ; preds = %if.then27.i9098, %while.end23.i9095, %while.body8.i9083
  %s.addr.3.i9100 = phi ptr [ %s.addr.247.i9096, %while.end23.i9095 ], [ %s.addr.247.i9096, %if.then27.i9098 ], [ %incdec.ptr.i9088, %while.body8.i9083 ]
  %tobool3.i9101 = icmp ne i64 %inc53.i9087, 0
  %cmp5.i9102 = icmp ugt ptr %s.addr.3.i9100, %cond4444
  %901 = and i1 %tobool3.i9101, %cmp5.i9102
  br i1 %901, label %while.body8.i9083, label %cond.end4452.loopexit12297, !llvm.loop !21

cond.false4446:                                   ; preds = %if.then4425
  %alen4448 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 44
  %902 = load i32, ptr %alen4448, align 4
  %sub4449 = sub nsw i32 0, %902
  %idx.ext4450 = sext i32 %sub4449 to i64
  %add.ptr4451 = getelementptr inbounds i8, ptr %locinput.10.lcssa, i64 %idx.ext4450
  br label %cond.end4452

cond.end4452.loopexit:                            ; preds = %while.body.i
  %add.ptr.i.lcssa = phi ptr [ %add.ptr.i, %while.body.i ]
  br label %cond.end4452

cond.end4452.loopexit12297:                       ; preds = %if.end28.i9099
  %s.addr.3.i9100.lcssa = phi ptr [ %s.addr.3.i9100, %if.end28.i9099 ]
  br label %cond.end4452

cond.end4452:                                     ; preds = %cond.end4452.loopexit12297, %cond.end4452.loopexit, %cond.false4446, %while.cond.preheader.i, %while.cond2.preheader.i
  %cond4453 = phi ptr [ %add.ptr4451, %cond.false4446 ], [ %locinput.10.lcssa, %while.cond.preheader.i ], [ %locinput.10.lcssa, %while.cond2.preheader.i ], [ %add.ptr.i.lcssa, %cond.end4452.loopexit ], [ %s.addr.3.i9100.lcssa, %cond.end4452.loopexit12297 ]
  %903 = load ptr, ptr %strbeg4454, align 8
  %sub.ptr.lhs.cast4455 = ptrtoint ptr %cond4453 to i64
  %sub.ptr.rhs.cast4456 = ptrtoint ptr %903 to i64
  %sub.ptr.sub4457 = sub i64 %sub.ptr.lhs.cast4455, %sub.ptr.rhs.cast4456
  %offs4458 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 120
  %904 = load ptr, ptr %offs4458, align 8
  %idxprom4459 = zext i8 %889 to i64
  %arrayidx4460 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %904, i64 %idxprom4459
  store i64 %sub.ptr.sub4457, ptr %arrayidx4460, align 8
  %905 = load ptr, ptr %strbeg4454, align 8
  %sub.ptr.lhs.cast4463 = ptrtoint ptr %locinput.10.lcssa to i64
  %sub.ptr.rhs.cast4464 = ptrtoint ptr %905 to i64
  %sub.ptr.sub4465 = sub i64 %sub.ptr.lhs.cast4463, %sub.ptr.rhs.cast4464
  %906 = load ptr, ptr %offs4458, align 8
  %arrayidx4468 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %906, i64 %idxprom4459
  %end4469 = getelementptr inbounds nuw i8, ptr %arrayidx4468, i64 8
  store i64 %sub.ptr.sub4465, ptr %end4469, align 8
  %lastparen4470 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 112
  %907 = load i32, ptr %lastparen4470, align 8
  %cmp4471 = icmp ult i32 %907, %conv4421
  br i1 %cmp4471, label %if.then4473, label %if.end4475

if.then4473:                                      ; preds = %cond.end4452
  store i32 %conv4421, ptr %lastparen4470, align 8
  br label %if.end4475

if.end4475:                                       ; preds = %if.then4473, %cond.end4452
  %lastcloseparen4476 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 116
  store i32 %conv4421, ptr %lastcloseparen4476, align 4
  br label %if.end4482

if.else4477:                                      ; preds = %if.then4416
  %offs4478 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 120
  %908 = load ptr, ptr %offs4478, align 8
  %idxprom4479 = zext i8 %889 to i64
  %arrayidx4480 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %908, i64 %idxprom4479
  %end4481 = getelementptr inbounds nuw i8, ptr %arrayidx4480, i64 8
  store i64 -1, ptr %end4481, align 8
  br label %if.end4482

if.end4482:                                       ; preds = %if.else4477, %if.end4475
  %tobool4483.not = icmp eq ptr %cur_eval.1.ph, null
  br i1 %tobool4483.not, label %if.end4507, label %land.lhs.true4484

land.lhs.true4484:                                ; preds = %if.end4482
  %close_paren4486 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph, i64 56
  %909 = load i32, ptr %close_paren4486, align 8
  %tobool4487.not = icmp eq i32 %909, 0
  br i1 %tobool4487.not, label %if.end4507, label %land.lhs.true4488

land.lhs.true4488:                                ; preds = %land.lhs.true4484
  %910 = load ptr, ptr %me4413, align 8
  %911 = load i8, ptr %910, align 2
  %conv4494 = zext i8 %911 to i32
  %cmp4495 = icmp eq i32 %909, %conv4494
  br i1 %cmp4495, label %if.then4497, label %if.end4507

if.then4497:                                      ; preds = %land.lhs.true4488
  %912 = load i32, ptr %count4423, align 8
  %tobool4500.not = icmp eq i32 %912, 0
  br i1 %tobool4500.not, label %no_silent, label %if.then5795.loopexit12318

if.end4507:                                       ; preds = %land.lhs.true4488, %land.lhs.true4484, %if.end4482, %if.end4411
  %sw.0.ph9430.lcssa14656 = phi i1 [ %sw.0.ph9430, %if.end4482 ], [ %sw.0.ph9430, %land.lhs.true4484 ], [ %sw.0.ph9430, %land.lhs.true4488 ], [ %sw.0.ph9430, %if.end4411 ]
  %match.1.ph.lcssa14578 = phi i8 [ %match.1.ph, %if.end4482 ], [ %match.1.ph, %land.lhs.true4484 ], [ %match.1.ph, %land.lhs.true4488 ], [ %match.1.ph, %if.end4411 ]
  %is_utf8_pat.1.ph.lcssa14503 = phi i8 [ %is_utf8_pat.1.ph, %if.end4482 ], [ %is_utf8_pat.1.ph, %land.lhs.true4484 ], [ %is_utf8_pat.1.ph, %land.lhs.true4488 ], [ %is_utf8_pat.1.ph, %if.end4411 ]
  %logical.1.ph.lcssa14429 = phi i32 [ %logical.1.ph, %if.end4482 ], [ %logical.1.ph, %land.lhs.true4484 ], [ %logical.1.ph, %land.lhs.true4488 ], [ %logical.1.ph, %if.end4411 ]
  %sv_yes_mark.1.ph.lcssa14352 = phi ptr [ %sv_yes_mark.1.ph, %if.end4482 ], [ %sv_yes_mark.1.ph, %land.lhs.true4484 ], [ %sv_yes_mark.1.ph, %land.lhs.true4488 ], [ %sv_yes_mark.1.ph, %if.end4411 ]
  %sv_commit.1.ph.lcssa14275 = phi ptr [ %sv_commit.1.ph, %if.end4482 ], [ %sv_commit.1.ph, %land.lhs.true4484 ], [ %sv_commit.1.ph, %land.lhs.true4488 ], [ %sv_commit.1.ph, %if.end4411 ]
  %popmark.1.ph.lcssa14196 = phi ptr [ %popmark.1.ph, %if.end4482 ], [ %popmark.1.ph, %land.lhs.true4484 ], [ %popmark.1.ph, %land.lhs.true4488 ], [ %popmark.1.ph, %if.end4411 ]
  %do_cutgroup.1.ph.lcssa14118 = phi i8 [ %do_cutgroup.1.ph, %if.end4482 ], [ %do_cutgroup.1.ph, %land.lhs.true4484 ], [ %do_cutgroup.1.ph, %land.lhs.true4488 ], [ %do_cutgroup.1.ph, %if.end4411 ]
  %no_final.1.ph.lcssa14040 = phi i8 [ %no_final.1.ph, %if.end4482 ], [ %no_final.1.ph, %land.lhs.true4484 ], [ %no_final.1.ph, %land.lhs.true4488 ], [ %no_final.1.ph, %if.end4411 ]
  %cur_curlyx.1.ph.lcssa13964 = phi ptr [ %cur_curlyx.1.ph, %if.end4482 ], [ %cur_curlyx.1.ph, %land.lhs.true4484 ], [ %cur_curlyx.1.ph, %land.lhs.true4488 ], [ %cur_curlyx.1.ph, %if.end4411 ]
  %cur_eval.1.ph.lcssa13887 = phi ptr [ %cur_eval.1.ph, %if.end4482 ], [ %cur_eval.1.ph, %land.lhs.true4484 ], [ %cur_eval.1.ph, %land.lhs.true4488 ], [ %cur_eval.1.ph, %if.end4411 ]
  %mark_state.1.ph.lcssa13810 = phi ptr [ %mark_state.1.ph, %if.end4482 ], [ %mark_state.1.ph, %land.lhs.true4484 ], [ %mark_state.1.ph, %land.lhs.true4488 ], [ %mark_state.1.ph, %if.end4411 ]
  %yes_state.1.ph.lcssa13732 = phi ptr [ %yes_state.1.ph, %if.end4482 ], [ %yes_state.1.ph, %land.lhs.true4484 ], [ %yes_state.1.ph, %land.lhs.true4488 ], [ %yes_state.1.ph, %if.end4411 ]
  %nochange_depth.1.ph.lcssa13658 = phi i32 [ %nochange_depth.1.ph, %if.end4482 ], [ %nochange_depth.1.ph, %land.lhs.true4484 ], [ %nochange_depth.1.ph, %land.lhs.true4488 ], [ %nochange_depth.1.ph, %if.end4411 ]
  %depth.1.ph.lcssa13579 = phi i32 [ %depth.1.ph, %if.end4482 ], [ %depth.1.ph, %land.lhs.true4484 ], [ %depth.1.ph, %land.lhs.true4488 ], [ %depth.1.ph, %if.end4411 ]
  %next.1.ph.lcssa13505 = phi ptr [ %next.1.ph, %if.end4482 ], [ %next.1.ph, %land.lhs.true4484 ], [ %next.1.ph, %land.lhs.true4488 ], [ %next.1.ph, %if.end4411 ]
  %st.1.ph.lcssa13426 = phi ptr [ %st.1.ph, %if.end4482 ], [ %st.1.ph, %land.lhs.true4484 ], [ %st.1.ph, %land.lhs.true4488 ], [ %st.1.ph, %if.end4411 ]
  %rexi.1.ph.lcssa13351 = phi ptr [ %rexi.1.ph, %if.end4482 ], [ %rexi.1.ph, %land.lhs.true4484 ], [ %rexi.1.ph, %land.lhs.true4488 ], [ %rexi.1.ph, %if.end4411 ]
  %rex.1.ph.lcssa13275 = phi ptr [ %rex.1.ph, %if.end4482 ], [ %rex.1.ph, %land.lhs.true4484 ], [ %rex.1.ph, %land.lhs.true4488 ], [ %rex.1.ph, %if.end4411 ]
  %rex_sv.1.ph.lcssa13198 = phi ptr [ %rex_sv.1.ph, %if.end4482 ], [ %rex_sv.1.ph, %land.lhs.true4484 ], [ %rex_sv.1.ph, %land.lhs.true4488 ], [ %rex_sv.1.ph, %if.end4411 ]
  %minmod.3.lcssa.lcssa = phi i8 [ %minmod.3.lcssa, %if.end4482 ], [ %minmod.3.lcssa, %land.lhs.true4484 ], [ %minmod.3.lcssa, %land.lhs.true4488 ], [ %minmod.3.lcssa, %if.end4411 ]
  %locinput.10.lcssa.lcssa = phi ptr [ %locinput.10.lcssa, %if.end4482 ], [ %locinput.10.lcssa, %land.lhs.true4484 ], [ %locinput.10.lcssa, %land.lhs.true4488 ], [ %locinput.10.lcssa, %if.end4411 ]
  %B4509 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13426, i64 64
  %913 = load ptr, ptr %B4509, align 8
  store i32 114, ptr %st.1.ph.lcssa13426, align 8
  br label %push_state

do.body4512:                                      ; preds = %cond.end42
  %914 = load i32, ptr @PL_savestack_ix, align 4
  %915 = load i32, ptr %cp4514, align 8
  %cmp4515 = icmp sgt i32 %914, %915
  br i1 %cmp4515, label %if.then4517, label %do.end4522

if.then4517:                                      ; preds = %do.body4512
  call void @Perl_leave_scope(i32 noundef %915) #10
  br label %do.end4522

do.end4522:                                       ; preds = %if.then4517, %do.body4512
  %916 = load i32, ptr %lastparen4523, align 8
  %917 = load i32, ptr %lastparen4526, align 4
  %cmp452712020 = icmp ugt i32 %916, %917
  br i1 %cmp452712020, label %for.body4529.preheader, label %for.end4536

for.body4529.preheader:                           ; preds = %do.end4522
  br label %for.body4529

for.body4529:                                     ; preds = %for.body4529, %for.body4529.preheader
  %n.412021 = phi i32 [ %dec4535, %for.body4529 ], [ %916, %for.body4529.preheader ]
  %918 = load ptr, ptr %offs4530, align 8
  %idxprom4531 = zext i32 %n.412021 to i64
  %arrayidx4532 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %918, i64 %idxprom4531
  %end4533 = getelementptr inbounds nuw i8, ptr %arrayidx4532, i64 8
  store i64 -1, ptr %end4533, align 8
  %dec4535 = add i32 %n.412021, -1
  %919 = load i32, ptr %lastparen4526, align 4
  %cmp4527 = icmp ugt i32 %dec4535, %919
  br i1 %cmp4527, label %for.body4529, label %for.end4536.loopexit, !llvm.loop !22

for.end4536.loopexit:                             ; preds = %for.body4529
  %dec4535.lcssa = phi i32 [ %dec4535, %for.body4529 ]
  br label %for.end4536

for.end4536:                                      ; preds = %for.end4536.loopexit, %do.end4522
  %n.4.lcssa = phi i32 [ %916, %do.end4522 ], [ %dec4535.lcssa, %for.end4536.loopexit ]
  store i32 %n.4.lcssa, ptr %lastparen4523, align 8
  %920 = load i32, ptr %lastcloseparen4539, align 8
  store i32 %920, ptr %lastcloseparen4540, align 4
  %921 = load i8, ptr %minmod4542, align 4, !range !0, !noundef !1
  %loadedv4543 = trunc nuw i8 %921 to i1
  br i1 %loadedv4543, label %if.then4544, label %if.end4561

if.then4544:                                      ; preds = %for.end4536
  %minmod.1.lcssa12930 = phi i8 [ %minmod.1, %for.end4536 ]
  %locinput.1.lcssa12670 = phi ptr [ %locinput.1, %for.end4536 ]
  %scan.1.lcssa12537 = phi ptr [ %scan.1, %for.end4536 ]
  %me4547 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %922 = load ptr, ptr %me4547, align 8
  %arg24548 = getelementptr inbounds nuw i8, ptr %922, i64 6
  %923 = load i16, ptr %arg24548, align 2
  %cmp4550.not = icmp eq i16 %923, 32767
  br i1 %cmp4550.not, label %curlym_do_A.loopexit12319, label %land.lhs.true4552

land.lhs.true4552:                                ; preds = %if.then4544
  %conv4549 = zext i16 %923 to i32
  %count4554 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %924 = load i32, ptr %count4554, align 8
  %cmp4555 = icmp eq i32 %924, %conv4549
  br i1 %cmp4555, label %no_silent, label %curlym_do_A.loopexit12319

if.end4561:                                       ; preds = %for.end4536
  %925 = load i32, ptr %count4563, align 8
  %926 = load ptr, ptr %me4565, align 8
  %arg14566 = getelementptr inbounds nuw i8, ptr %926, i64 4
  %927 = load i16, ptr %arg14566, align 2
  %conv4567 = zext i16 %927 to i32
  %cmp4568 = icmp eq i32 %925, %conv4567
  br i1 %cmp4568, label %no_silent.loopexit, label %if.end4571

if.end4571:                                       ; preds = %if.end4561
  %dec4574 = add nsw i32 %925, -1
  store i32 %dec4574, ptr %count4563, align 8
  %928 = load i8, ptr %is_utf8_target, align 2, !range !0, !noundef !1
  %loadedv4576 = trunc nuw i8 %928 to i1
  br i1 %loadedv4576, label %cond.true4578, label %cond.false4595

cond.true4578:                                    ; preds = %if.end4571
  %929 = load i32, ptr %alen4580, align 4
  %sub4581 = sub nsw i32 0, %929
  %conv4582 = sext i32 %sub4581 to i64
  %cmp4586 = icmp slt i32 %929, 1
  %cond4593.in = select i1 %cmp4586, ptr %strend, ptr %strbeg4591
  %cond4593 = load ptr, ptr %cond4593.in, align 8
  %lim63.i9116 = ptrtoint ptr %cond4593 to i64
  %cmp.i9117 = icmp slt i32 %929, 1
  br i1 %cmp.i9117, label %while.cond.preheader.i9150, label %while.cond2.preheader.i9118

while.cond2.preheader.i9118:                      ; preds = %cond.true4578
  %cmp551.i9119 = icmp ugt ptr %locinput.1, %cond4593
  br i1 %cmp551.i9119, label %while.body8.i9121.preheader, label %cond.end4601

while.body8.i9121.preheader:                      ; preds = %while.cond2.preheader.i9118
  br label %while.body8.i9121

while.cond.preheader.i9150:                       ; preds = %cond.true4578
  %tobool55.i9151 = icmp ne i32 %929, 0
  %cmp156.i9152 = icmp ult ptr %locinput.1, %cond4593
  %930 = and i1 %tobool55.i9151, %cmp156.i9152
  br i1 %930, label %while.body.i9153.preheader, label %cond.end4601

while.body.i9153.preheader:                       ; preds = %while.cond.preheader.i9150
  br label %while.body.i9153

while.body.i9153:                                 ; preds = %while.body.i9153, %while.body.i9153.preheader
  %s.addr.058.i9154 = phi ptr [ %add.ptr.i9160, %while.body.i9153 ], [ %locinput.1, %while.body.i9153.preheader ]
  %off.addr.057.i9155 = phi i64 [ %dec.i9156, %while.body.i9153 ], [ %conv4582, %while.body.i9153.preheader ]
  %dec.i9156 = add nsw i64 %off.addr.057.i9155, -1
  %931 = load i8, ptr %s.addr.058.i9154, align 1
  %idxprom.i9157 = zext i8 %931 to i64
  %arrayidx.i9158 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom.i9157
  %932 = load i8, ptr %arrayidx.i9158, align 1
  %idx.ext.i9159 = zext i8 %932 to i64
  %add.ptr.i9160 = getelementptr inbounds nuw i8, ptr %s.addr.058.i9154, i64 %idx.ext.i9159
  %tobool.i9161 = icmp ne i64 %dec.i9156, 0
  %cmp1.i9162 = icmp ult ptr %add.ptr.i9160, %cond4593
  %933 = select i1 %tobool.i9161, i1 %cmp1.i9162, i1 false
  br i1 %933, label %while.body.i9153, label %cond.end4601.loopexit, !llvm.loop !20

while.body8.i9121:                                ; preds = %if.end28.i9137, %while.body8.i9121.preheader
  %inc53.in.i9122 = phi i64 [ %inc53.i9125, %if.end28.i9137 ], [ %conv4582, %while.body8.i9121.preheader ]
  %s.addr.152.i9123 = phi ptr [ %s.addr.3.i9138, %if.end28.i9137 ], [ %locinput.1, %while.body8.i9121.preheader ]
  %s.addr.15264.i9124 = ptrtoint ptr %s.addr.152.i9123 to i64
  %inc53.i9125 = add nsw i64 %inc53.in.i9122, 1
  %incdec.ptr.i9126 = getelementptr inbounds i8, ptr %s.addr.152.i9123, i64 -1
  %934 = load i8, ptr %incdec.ptr.i9126, align 1
  %tobool10.not.i9127 = icmp sgt i8 %934, -1
  br i1 %tobool10.not.i9127, label %if.end28.i9137, label %while.cond12.preheader.i9128

while.cond12.preheader.i9128:                     ; preds = %while.body8.i9121
  %cmp1348.i9129 = icmp ugt ptr %incdec.ptr.i9126, %cond4593
  br i1 %cmp1348.i9129, label %land.rhs15.preheader.i9141, label %while.end23thread-pre-split.i9130

land.rhs15.preheader.i9141:                       ; preds = %while.cond12.preheader.i9128
  %scevgep.i9142 = getelementptr i8, ptr %s.addr.152.i9123, i64 %lim63.i9116
  %935 = sub i64 0, %s.addr.15264.i9124
  %scevgep65.i9143 = getelementptr i8, ptr %scevgep.i9142, i64 %935
  br label %land.rhs15.i9144

land.rhs15.i9144:                                 ; preds = %while.body21.i9147, %land.rhs15.preheader.i9141
  %s.addr.249.i9145 = phi ptr [ %incdec.ptr22.i9148, %while.body21.i9147 ], [ %incdec.ptr.i9126, %land.rhs15.preheader.i9141 ]
  %936 = load i8, ptr %s.addr.249.i9145, align 1
  %cmp18.i9146 = icmp slt i8 %936, -64
  br i1 %cmp18.i9146, label %while.body21.i9147, label %while.end23.i9133.loopexit

while.body21.i9147:                               ; preds = %land.rhs15.i9144
  %incdec.ptr22.i9148 = getelementptr inbounds i8, ptr %s.addr.249.i9145, i64 -1
  %cmp13.i9149 = icmp ugt ptr %incdec.ptr22.i9148, %cond4593
  br i1 %cmp13.i9149, label %land.rhs15.i9144, label %while.end23thread-pre-split.i9130.loopexit, !llvm.loop !13

while.end23thread-pre-split.i9130.loopexit:       ; preds = %while.body21.i9147
  br label %while.end23thread-pre-split.i9130

while.end23thread-pre-split.i9130:                ; preds = %while.end23thread-pre-split.i9130.loopexit, %while.cond12.preheader.i9128
  %s.addr.2.lcssa.i9131 = phi ptr [ %incdec.ptr.i9126, %while.cond12.preheader.i9128 ], [ %scevgep65.i9143, %while.end23thread-pre-split.i9130.loopexit ]
  %.pr.i9132 = load i8, ptr %s.addr.2.lcssa.i9131, align 1
  br label %while.end23.i9133

while.end23.i9133.loopexit:                       ; preds = %land.rhs15.i9144
  %s.addr.249.i9145.lcssa = phi ptr [ %s.addr.249.i9145, %land.rhs15.i9144 ]
  %.lcssa12325 = phi i8 [ %936, %land.rhs15.i9144 ]
  br label %while.end23.i9133

while.end23.i9133:                                ; preds = %while.end23.i9133.loopexit, %while.end23thread-pre-split.i9130
  %s.addr.247.i9134 = phi ptr [ %s.addr.2.lcssa.i9131, %while.end23thread-pre-split.i9130 ], [ %s.addr.249.i9145.lcssa, %while.end23.i9133.loopexit ]
  %937 = phi i8 [ %.pr.i9132, %while.end23thread-pre-split.i9130 ], [ %.lcssa12325, %while.end23.i9133.loopexit ]
  %cmp25.i9135 = icmp ugt i8 %937, -63
  br i1 %cmp25.i9135, label %if.end28.i9137, label %if.then27.i9136

if.then27.i9136:                                  ; preds = %while.end23.i9133
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #10
  br label %if.end28.i9137

if.end28.i9137:                                   ; preds = %if.then27.i9136, %while.end23.i9133, %while.body8.i9121
  %s.addr.3.i9138 = phi ptr [ %s.addr.247.i9134, %while.end23.i9133 ], [ %s.addr.247.i9134, %if.then27.i9136 ], [ %incdec.ptr.i9126, %while.body8.i9121 ]
  %tobool3.i9139 = icmp ne i64 %inc53.i9125, 0
  %cmp5.i9140 = icmp ugt ptr %s.addr.3.i9138, %cond4593
  %938 = and i1 %tobool3.i9139, %cmp5.i9140
  br i1 %938, label %while.body8.i9121, label %cond.end4601.loopexit12294, !llvm.loop !21

cond.false4595:                                   ; preds = %if.end4571
  %939 = load i32, ptr %alen4597, align 4
  %sub4598 = sub nsw i32 0, %939
  %idx.ext4599 = sext i32 %sub4598 to i64
  %add.ptr4600 = getelementptr inbounds i8, ptr %locinput.1, i64 %idx.ext4599
  br label %cond.end4601

cond.end4601.loopexit:                            ; preds = %while.body.i9153
  %add.ptr.i9160.lcssa = phi ptr [ %add.ptr.i9160, %while.body.i9153 ]
  br label %cond.end4601

cond.end4601.loopexit12294:                       ; preds = %if.end28.i9137
  %s.addr.3.i9138.lcssa = phi ptr [ %s.addr.3.i9138, %if.end28.i9137 ]
  br label %cond.end4601

cond.end4601:                                     ; preds = %cond.end4601.loopexit12294, %cond.end4601.loopexit, %cond.false4595, %while.cond.preheader.i9150, %while.cond2.preheader.i9118
  %cond4602 = phi ptr [ %add.ptr4600, %cond.false4595 ], [ %locinput.1, %while.cond.preheader.i9150 ], [ %locinput.1, %while.cond2.preheader.i9118 ], [ %add.ptr.i9160.lcssa, %cond.end4601.loopexit ], [ %s.addr.3.i9138.lcssa, %cond.end4601.loopexit12294 ]
  %940 = load ptr, ptr %strend, align 8
  %cmp4604 = icmp ult ptr %cond4602, %940
  br i1 %cmp4604, label %cond.true4606, label %curlym_do_B

cond.true4606:                                    ; preds = %cond.end4601
  %941 = load i8, ptr %cond4602, align 1
  %conv4607 = zext i8 %941 to i32
  br label %curlym_do_B

sw.bb4611:                                        ; preds = %cond.end42
  %minmod.1.lcssa12906 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12646 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12513 = phi ptr [ %scan.1, %cond.end42 ]
  %u4612 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 16
  store i32 0, ptr %u4612, align 8
  %min4615 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 60
  store i32 0, ptr %min4615, align 4
  %max4617 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 64
  store i32 32767, ptr %max4617, align 8
  %add.ptr4618 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12513, i64 4
  br label %repeat

sw.bb4619:                                        ; preds = %cond.end42
  %minmod.1.lcssa12907 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12647 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12514 = phi ptr [ %scan.1, %cond.end42 ]
  %u4620 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 16
  store i32 0, ptr %u4620, align 8
  %min4623 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 60
  store i32 1, ptr %min4623, align 4
  %max4625 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 64
  store i32 32767, ptr %max4625, align 8
  %add.ptr4626 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12514, i64 4
  br label %repeat

sw.bb4627:                                        ; preds = %cond.end42
  %minmod.1.lcssa12908 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12648 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12515 = phi ptr [ %scan.1, %cond.end42 ]
  %942 = load i8, ptr %scan.1.lcssa12515, align 2
  %conv4629 = zext i8 %942 to i32
  %u4630 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 16
  store i32 %conv4629, ptr %u4630, align 8
  %lastparen4632 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 112
  %943 = load i32, ptr %lastparen4632, align 8
  %lastparen4634 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  store i32 %943, ptr %lastparen4634, align 8
  %lastcloseparen4635 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 116
  %944 = load i32, ptr %lastcloseparen4635, align 4
  %lastcloseparen4637 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 28
  store i32 %944, ptr %lastcloseparen4637, align 4
  %945 = load i32, ptr %maxopenparen, align 4
  %spec.store.select9399 = call i32 @llvm.umax.i32(i32 %945, i32 %conv4629)
  store i32 %spec.store.select9399, ptr %maxopenparen, align 4
  %arg14646 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12515, i64 4
  %946 = load i16, ptr %arg14646, align 2
  %conv4647 = zext i16 %946 to i32
  %min4649 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 60
  store i32 %conv4647, ptr %min4649, align 4
  %arg24650 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12515, i64 6
  %947 = load i16, ptr %arg24650, align 2
  %conv4651 = zext i16 %947 to i32
  %max4653 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 64
  store i32 %conv4651, ptr %max4653, align 8
  %tobool4654.not = icmp eq ptr %cur_eval.1.ph, null
  br i1 %tobool4654.not, label %if.end4671, label %land.lhs.true4655

land.lhs.true4655:                                ; preds = %sw.bb4627
  %close_paren4657 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph, i64 56
  %948 = load i32, ptr %close_paren4657, align 8
  %tobool4658.not = icmp eq i32 %948, 0
  br i1 %tobool4658.not, label %if.end4671, label %land.lhs.true4659

land.lhs.true4659:                                ; preds = %land.lhs.true4655
  %949 = load i32, ptr %u4630, align 8
  %cmp4664 = icmp eq i32 %948, %949
  br i1 %cmp4664, label %if.then4666, label %if.end4671

if.then4666:                                      ; preds = %land.lhs.true4659
  store i32 1, ptr %min4649, align 4
  store i32 1, ptr %max4653, align 8
  br label %if.end4671

if.end4671:                                       ; preds = %if.then4666, %land.lhs.true4659, %land.lhs.true4655, %sw.bb4627
  %add.ptr4673 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12515, i64 8
  %call4674 = call ptr @Perl_regnext(ptr noundef nonnull %add.ptr4673) #10
  br label %repeat

sw.bb4675:                                        ; preds = %cond.end42
  %minmod.1.lcssa12909 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12649 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12516 = phi ptr [ %scan.1, %cond.end42 ]
  %u4676 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 16
  store i32 0, ptr %u4676, align 8
  %arg14678 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12516, i64 4
  %950 = load i16, ptr %arg14678, align 2
  %conv4679 = zext i16 %950 to i32
  %min4681 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 60
  store i32 %conv4679, ptr %min4681, align 4
  %arg24682 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12516, i64 6
  %951 = load i16, ptr %arg24682, align 2
  %conv4683 = zext i16 %951 to i32
  %max4685 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 64
  store i32 %conv4683, ptr %max4685, align 8
  %add.ptr4687 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12516, i64 8
  br label %repeat

repeat:                                           ; preds = %sw.bb4675, %if.end4671, %sw.bb4619, %sw.bb4611
  %minmod.112962 = phi i8 [ %minmod.1.lcssa12906, %sw.bb4611 ], [ %minmod.1.lcssa12907, %sw.bb4619 ], [ %minmod.1.lcssa12908, %if.end4671 ], [ %minmod.1.lcssa12909, %sw.bb4675 ]
  %locinput.112701 = phi ptr [ %locinput.1.lcssa12646, %sw.bb4611 ], [ %locinput.1.lcssa12647, %sw.bb4619 ], [ %locinput.1.lcssa12648, %if.end4671 ], [ %locinput.1.lcssa12649, %sw.bb4675 ]
  %scan.6 = phi ptr [ %add.ptr4618, %sw.bb4611 ], [ %add.ptr4626, %sw.bb4619 ], [ %call4674, %if.end4671 ], [ %add.ptr4687, %sw.bb4675 ]
  %type4688 = getelementptr inbounds nuw i8, ptr %next.1.ph, i64 1
  %952 = load i8, ptr %type4688, align 1
  %idxprom4689 = zext i8 %952 to i64
  %arrayidx4690 = getelementptr inbounds nuw i8, ptr @PL_regkind, i64 %idxprom4689
  %953 = load i8, ptr %arrayidx4690, align 1
  switch i8 %953, label %land.lhs.true4701 [
    i8 31, label %if.end4898
    i8 51, label %if.end4898
  ]

land.lhs.true4701:                                ; preds = %repeat
  switch i8 %952, label %lor.lhs.false4749 [
    i8 49, label %if.else4766
    i8 50, label %land.lhs.true4711
    i8 68, label %if.else4766
    i8 65, label %if.else4766
    i8 63, label %if.else4766
    i8 43, label %if.else4766
    i8 69, label %if.else4766
    i8 90, label %if.else4766
  ]

land.lhs.true4711:                                ; preds = %land.lhs.true4701
  %tobool4712.not = icmp eq ptr %cur_eval.1.ph, null
  br i1 %tobool4712.not, label %if.else4766, label %lor.lhs.false4713

lor.lhs.false4713:                                ; preds = %land.lhs.true4711
  %close_paren4715 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph, i64 56
  %954 = load i32, ptr %close_paren4715, align 8
  %arg14716 = getelementptr inbounds nuw i8, ptr %next.1.ph, i64 4
  %955 = load i32, ptr %arg14716, align 4
  %cmp4717.not = icmp eq i32 %954, %955
  br i1 %cmp4717.not, label %lor.lhs.false4749, label %if.else4766

lor.lhs.false4749:                                ; preds = %lor.lhs.false4713, %land.lhs.true4701
  %cmp4754 = icmp eq i8 %953, 44
  br i1 %cmp4754, label %land.lhs.true4756, label %if.then4761

land.lhs.true4756:                                ; preds = %lor.lhs.false4749
  %arg14757 = getelementptr inbounds nuw i8, ptr %next.1.ph, i64 4
  %956 = load i16, ptr %arg14757, align 2
  %cmp4759.not = icmp eq i16 %956, 0
  br i1 %cmp4759.not, label %if.then4761, label %if.else4766

if.then4761:                                      ; preds = %land.lhs.true4756, %lor.lhs.false4749
  %c24763 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 36
  store i32 -1000, ptr %c24763, align 4
  %c14765 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  store i32 -1000, ptr %c14765, align 8
  br label %if.end4948

if.else4766:                                      ; preds = %land.lhs.true4756, %lor.lhs.false4713, %land.lhs.true4711, %land.lhs.true4701, %land.lhs.true4701, %land.lhs.true4701, %land.lhs.true4701, %land.lhs.true4701, %land.lhs.true4701, %land.lhs.true4701
  switch i8 %953, label %while.cond4783.preheader [
    i8 31, label %if.end4898
    i8 51, label %if.end4898
  ]

while.cond4783.preheader:                         ; preds = %if.else4766
  %tobool4794.not = icmp eq ptr %cur_eval.1.ph, null
  %close_paren4797 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph, i64 56
  br label %while.cond4783

while.cond4783:                                   ; preds = %if.end4894, %while.cond4783.preheader
  %text_node4767.0 = phi ptr [ %text_node4767.1, %if.end4894 ], [ %next.1.ph, %while.cond4783.preheader ]
  %type4784 = getelementptr inbounds nuw i8, ptr %text_node4767.0, i64 1
  %957 = load i8, ptr %type4784, align 1
  switch i8 %957, label %lor.rhs4831 [
    i8 49, label %lor.lhs.false4854
    i8 50, label %land.lhs.true4793
    i8 65, label %if.then4860
    i8 43, label %lor.lhs.false4854
    i8 63, label %lor.lhs.false4854
    i8 68, label %lor.lhs.false4854
    i8 69, label %lor.lhs.false4854
    i8 90, label %lor.lhs.false4854
  ]

land.lhs.true4793:                                ; preds = %while.cond4783
  br i1 %tobool4794.not, label %lor.lhs.false4854, label %lor.lhs.false4795

lor.lhs.false4795:                                ; preds = %land.lhs.true4793
  %958 = load i32, ptr %close_paren4797, align 8
  %arg14798 = getelementptr inbounds nuw i8, ptr %text_node4767.0, i64 4
  %959 = load i32, ptr %arg14798, align 4
  %cmp4799.not = icmp eq i32 %958, %959
  br i1 %cmp4799.not, label %lor.rhs4831, label %lor.lhs.false4854

lor.rhs4831:                                      ; preds = %lor.lhs.false4795, %while.cond4783
  %idxprom4833 = zext i8 %957 to i64
  %arrayidx4834 = getelementptr inbounds nuw i8, ptr @PL_regkind, i64 %idxprom4833
  %960 = load i8, ptr %arrayidx4834, align 1
  %cmp4836 = icmp eq i8 %960, 44
  br i1 %cmp4836, label %land.rhs4838, label %if.end4898.loopexit

land.rhs4838:                                     ; preds = %lor.rhs4831
  %arg14839 = getelementptr inbounds nuw i8, ptr %text_node4767.0, i64 4
  %961 = load i16, ptr %arg14839, align 2
  %cmp4841.not = icmp eq i16 %961, 0
  br i1 %cmp4841.not, label %if.end4898.loopexit, label %while.body4847

while.body4847:                                   ; preds = %land.rhs4838
  %cmp4852 = icmp eq i8 %957, 65
  br i1 %cmp4852, label %if.then4860, label %lor.lhs.false4854

lor.lhs.false4854:                                ; preds = %while.body4847, %lor.lhs.false4795, %land.lhs.true4793, %while.cond4783, %while.cond4783, %while.cond4783, %while.cond4783, %while.cond4783, %while.cond4783
  %idxprom4855 = zext i8 %957 to i64
  %arrayidx4856 = getelementptr inbounds nuw i8, ptr @PL_regkind, i64 %idxprom4855
  %962 = load i8, ptr %arrayidx4856, align 1
  %cmp4858 = icmp eq i8 %962, 44
  br i1 %cmp4858, label %if.then4860, label %if.else4863

if.then4860:                                      ; preds = %lor.lhs.false4854, %while.body4847, %while.cond4783
  %add.ptr4862 = getelementptr inbounds nuw i8, ptr %text_node4767.0, i64 8
  br label %if.end4894

if.else4863:                                      ; preds = %lor.lhs.false4854
  switch i8 %957, label %if.else4887 [
    i8 43, label %if.then4867
    i8 63, label %if.then4873
  ]

if.then4867:                                      ; preds = %if.else4863
  %add.ptr4868 = getelementptr inbounds nuw i8, ptr %text_node4767.0, i64 4
  br label %if.end4894

if.then4873:                                      ; preds = %if.else4863
  %963 = load i8, ptr %text_node4767.0, align 2
  %cmp4876 = icmp eq i8 %963, 0
  br i1 %cmp4876, label %cond.true4878, label %cond.false4881

cond.true4878:                                    ; preds = %if.then4873
  %add.ptr4880 = getelementptr inbounds nuw i8, ptr %text_node4767.0, i64 8
  br label %if.end4894

cond.false4881:                                   ; preds = %if.then4873
  %arg14882 = getelementptr inbounds nuw i8, ptr %text_node4767.0, i64 4
  %964 = load i32, ptr %arg14882, align 4
  %idx.ext4883 = zext i32 %964 to i64
  %add.ptr4884 = getelementptr inbounds nuw %struct.regnode, ptr %text_node4767.0, i64 %idx.ext4883
  br label %if.end4894

if.else4887:                                      ; preds = %if.else4863
  %next_off4888 = getelementptr inbounds nuw i8, ptr %text_node4767.0, i64 2
  %965 = load i16, ptr %next_off4888, align 2
  %idx.ext4890 = zext i16 %965 to i64
  %add.ptr4891 = getelementptr inbounds nuw %struct.regnode, ptr %text_node4767.0, i64 %idx.ext4890
  br label %if.end4894

if.end4894:                                       ; preds = %if.else4887, %cond.false4881, %cond.true4878, %if.then4867, %if.then4860
  %text_node4767.1 = phi ptr [ %add.ptr4862, %if.then4860 ], [ %add.ptr4868, %if.then4867 ], [ %add.ptr4891, %if.else4887 ], [ %add.ptr4880, %cond.true4878 ], [ %add.ptr4884, %cond.false4881 ]
  br label %while.cond4783, !llvm.loop !23

if.end4898.loopexit:                              ; preds = %land.rhs4838, %lor.rhs4831
  %text_node4767.0.lcssa = phi ptr [ %text_node4767.0, %lor.rhs4831 ], [ %text_node4767.0, %land.rhs4838 ]
  br label %if.end4898

if.end4898:                                       ; preds = %if.end4898.loopexit, %if.else4766, %if.else4766, %repeat, %repeat
  %text_node4767.2 = phi ptr [ %next.1.ph, %if.else4766 ], [ %next.1.ph, %if.else4766 ], [ %next.1.ph, %repeat ], [ %next.1.ph, %repeat ], [ %text_node4767.0.lcssa, %if.end4898.loopexit ]
  %type4899 = getelementptr inbounds nuw i8, ptr %text_node4767.2, i64 1
  %966 = load i8, ptr %type4899, align 1
  %idxprom4900 = zext i8 %966 to i64
  %arrayidx4901 = getelementptr inbounds nuw i8, ptr @PL_regkind, i64 %idxprom4900
  %967 = load i8, ptr %arrayidx4901, align 1
  switch i8 %967, label %if.then4912 [
    i8 31, label %if.else4929
    i8 51, label %if.then4924
  ]

if.then4912:                                      ; preds = %if.end4898
  %c24914 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 36
  store i32 -1000, ptr %c24914, align 4
  %c14916 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  store i32 -1000, ptr %c14916, align 8
  br label %if.end4948

if.then4924:                                      ; preds = %if.end4898
  %c24926 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 36
  store i32 -1000, ptr %c24926, align 4
  %c14928 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  store i32 -1000, ptr %c14928, align 8
  br label %if.end4948

if.else4929:                                      ; preds = %if.end4898
  %c14931 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %c1_utf84933 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 88
  %c24936 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 36
  %c2_utf84938 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 102
  %reginfo.val = load i8, ptr %is_utf8_pat21, align 1, !range !0, !noundef !1
  %reginfo.val8758 = load i8, ptr %is_utf8_target, align 2, !range !0, !noundef !1
  %call4940 = call fastcc zeroext i1 @S_setup_EXACTISH_ST_c1_c2(ptr noundef nonnull %text_node4767.2, ptr noundef nonnull %c14931, ptr noundef nonnull %c1_utf84933, ptr noundef nonnull %c24936, ptr noundef nonnull %c2_utf84938, i8 %reginfo.val, i8 %reginfo.val8758)
  br i1 %call4940, label %if.end4948, label %no_silent

if.end4948:                                       ; preds = %if.else4929, %if.then4924, %if.then4912, %if.then4761
  %A4950 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  store ptr %scan.6, ptr %A4950, align 8
  %B4952 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 80
  store ptr %next.1.ph, ptr %B4952, align 8
  %loadedv4953 = trunc i8 %minmod.112962 to i1
  br i1 %loadedv4953, label %if.then4954, label %if.else5073

if.then4954:                                      ; preds = %if.end4948
  call void @llvm.lifetime.start.p0(ptr nonnull %li) #10
  store ptr %locinput.112701, ptr %li, align 8
  %min4956 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 60
  %968 = load i32, ptr %min4956, align 4
  %tobool4957.not = icmp eq i32 %968, 0
  br i1 %tobool4957.not, label %if.end4969, label %land.lhs.true4958

land.lhs.true4958:                                ; preds = %if.then4954
  %call4963 = call fastcc i32 @S_regrepeat(ptr noundef %rex.1.ph, ptr noundef %li, ptr noundef %scan.6, ptr noundef %reginfo, i32 noundef %968, i32 noundef %depth.1.ph)
  %969 = load i32, ptr %min4956, align 4
  %cmp4966 = icmp slt i32 %call4963, %969
  br i1 %cmp4966, label %cleanup5072, label %if.end4969

if.end4969:                                       ; preds = %land.lhs.true4958, %if.then4954
  %970 = load ptr, ptr %li, align 8
  %971 = load i32, ptr %min4956, align 4
  %count4981 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 56
  store i32 %971, ptr %count4981, align 8
  %972 = load i32, ptr @PL_savestack_ix, align 4
  %cp4983 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 20
  store i32 %972, ptr %cp4983, align 4
  %c14985 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %973 = load i32, ptr %c14985, align 8
  %cmp4986 = icmp eq i32 %973, -1000
  br i1 %cmp4986, label %cleanup5072.thread9339, label %if.end4989

cleanup5072.thread9339:                           ; preds = %if.end4969
  %sw.0.ph9430.lcssa14651 = phi i1 [ %sw.0.ph9430, %if.end4969 ]
  %match.1.ph.lcssa14573 = phi i8 [ %match.1.ph, %if.end4969 ]
  %is_utf8_pat.1.ph.lcssa14498 = phi i8 [ %is_utf8_pat.1.ph, %if.end4969 ]
  %logical.1.ph.lcssa14424 = phi i32 [ %logical.1.ph, %if.end4969 ]
  %sv_yes_mark.1.ph.lcssa14347 = phi ptr [ %sv_yes_mark.1.ph, %if.end4969 ]
  %sv_commit.1.ph.lcssa14270 = phi ptr [ %sv_commit.1.ph, %if.end4969 ]
  %popmark.1.ph.lcssa14191 = phi ptr [ %popmark.1.ph, %if.end4969 ]
  %do_cutgroup.1.ph.lcssa14113 = phi i8 [ %do_cutgroup.1.ph, %if.end4969 ]
  %no_final.1.ph.lcssa14035 = phi i8 [ %no_final.1.ph, %if.end4969 ]
  %cur_curlyx.1.ph.lcssa13959 = phi ptr [ %cur_curlyx.1.ph, %if.end4969 ]
  %cur_eval.1.ph.lcssa13882 = phi ptr [ %cur_eval.1.ph, %if.end4969 ]
  %mark_state.1.ph.lcssa13805 = phi ptr [ %mark_state.1.ph, %if.end4969 ]
  %yes_state.1.ph.lcssa13727 = phi ptr [ %yes_state.1.ph, %if.end4969 ]
  %nochange_depth.1.ph.lcssa13653 = phi i32 [ %nochange_depth.1.ph, %if.end4969 ]
  %depth.1.ph.lcssa13574 = phi i32 [ %depth.1.ph, %if.end4969 ]
  %next.1.ph.lcssa13500 = phi ptr [ %next.1.ph, %if.end4969 ]
  %st.1.ph.lcssa13421 = phi ptr [ %st.1.ph, %if.end4969 ]
  %rexi.1.ph.lcssa13346 = phi ptr [ %rexi.1.ph, %if.end4969 ]
  %rex.1.ph.lcssa13270 = phi ptr [ %rex.1.ph, %if.end4969 ]
  %rex_sv.1.ph.lcssa13193 = phi ptr [ %rex_sv.1.ph, %if.end4969 ]
  %.lcssa13139 = phi ptr [ %970, %if.end4969 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %li) #10
  br label %curly_try_B_min

if.end4989:                                       ; preds = %if.end4969
  %oldloc = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  store ptr %970, ptr %oldloc, align 8
  %max4992 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 64
  %974 = load i32, ptr %max4992, align 8
  %cmp4993 = icmp eq i32 %974, 32767
  br i1 %cmp4993, label %if.then4995, label %if.else5014

if.then4995:                                      ; preds = %if.end4989
  %975 = load ptr, ptr %strend, align 8
  %add.ptr4997 = getelementptr inbounds i8, ptr %975, i64 -1
  %maxpos = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  store ptr %add.ptr4997, ptr %maxpos, align 8
  br i1 %loadedv, label %while.cond5001.preheader, label %cleanup5072.thread

while.cond5001.preheader:                         ; preds = %if.then4995
  %maxpos.promoted = load ptr, ptr %maxpos, align 8
  %976 = load i8, ptr %maxpos.promoted, align 1
  %cmp500612038 = icmp slt i8 %976, -64
  br i1 %cmp500612038, label %while.body5008.preheader, label %cleanup5072.thread

while.body5008.preheader:                         ; preds = %while.cond5001.preheader
  br label %while.body5008

while.body5008:                                   ; preds = %while.body5008, %while.body5008.preheader
  %incdec.ptr50111203712039 = phi ptr [ %incdec.ptr5011, %while.body5008 ], [ %maxpos.promoted, %while.body5008.preheader ]
  %incdec.ptr5011 = getelementptr inbounds i8, ptr %incdec.ptr50111203712039, i64 -1
  store ptr %incdec.ptr5011, ptr %maxpos, align 8
  %977 = load i8, ptr %incdec.ptr5011, align 1
  %cmp5006 = icmp slt i8 %977, -64
  br i1 %cmp5006, label %while.body5008, label %cleanup5072.thread.loopexit, !llvm.loop !24

if.else5014:                                      ; preds = %if.end4989
  br i1 %loadedv, label %if.then5016, label %if.else5048

if.then5016:                                      ; preds = %if.else5014
  %sub5021 = sub nsw i32 %974, %971
  %maxpos5023 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  store ptr %970, ptr %maxpos5023, align 8
  %cmp502512035 = icmp sgt i32 %sub5021, 0
  br i1 %cmp502512035, label %land.rhs5027.preheader, label %cleanup5072.thread

land.rhs5027.preheader:                           ; preds = %if.then5016
  br label %land.rhs5027

land.rhs5027:                                     ; preds = %for.body5035, %land.rhs5027.preheader
  %m.012036 = phi i32 [ %dec5046, %for.body5035 ], [ %sub5021, %land.rhs5027.preheader ]
  %978 = load ptr, ptr %maxpos5023, align 8
  %979 = load ptr, ptr %strend, align 8
  %cmp5031 = icmp ult ptr %978, %979
  br i1 %cmp5031, label %for.body5035, label %cleanup5072.thread.loopexit12303

for.body5035:                                     ; preds = %land.rhs5027
  %980 = load i8, ptr %978, align 1
  %idxprom5038 = zext i8 %980 to i64
  %arrayidx5039 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom5038
  %981 = load i8, ptr %arrayidx5039, align 1
  %idx.ext5043 = zext i8 %981 to i64
  %add.ptr5044 = getelementptr inbounds nuw i8, ptr %978, i64 %idx.ext5043
  store ptr %add.ptr5044, ptr %maxpos5023, align 8
  %dec5046 = add nsw i32 %m.012036, -1
  %cmp5025 = icmp sgt i32 %m.012036, 1
  br i1 %cmp5025, label %land.rhs5027, label %cleanup5072.thread.loopexit12303, !llvm.loop !25

if.else5048:                                      ; preds = %if.else5014
  %idx.ext5051 = sext i32 %974 to i64
  %add.ptr5052 = getelementptr inbounds i8, ptr %970, i64 %idx.ext5051
  %idx.ext5055 = sext i32 %971 to i64
  %idx.neg = sub nsw i64 0, %idx.ext5055
  %add.ptr5056 = getelementptr inbounds i8, ptr %add.ptr5052, i64 %idx.neg
  %maxpos5058 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  store ptr %add.ptr5056, ptr %maxpos5058, align 8
  %982 = load ptr, ptr %strend, align 8
  %cmp5062.not = icmp ult ptr %add.ptr5056, %982
  br i1 %cmp5062.not, label %cleanup5072.thread, label %if.then5064

if.then5064:                                      ; preds = %if.else5048
  %add.ptr5066 = getelementptr inbounds i8, ptr %982, i64 -1
  store ptr %add.ptr5066, ptr %maxpos5058, align 8
  br label %cleanup5072.thread

cleanup5072.thread.loopexit:                      ; preds = %while.body5008
  br label %cleanup5072.thread

cleanup5072.thread.loopexit12303:                 ; preds = %for.body5035, %land.rhs5027
  br label %cleanup5072.thread

cleanup5072.thread:                               ; preds = %cleanup5072.thread.loopexit12303, %cleanup5072.thread.loopexit, %if.then5064, %if.else5048, %if.then5016, %while.cond5001.preheader, %if.then4995
  call void @llvm.lifetime.end.p0(ptr nonnull %li) #10
  br label %curly_try_B_min_known

cleanup5072:                                      ; preds = %land.lhs.true4958
  call void @llvm.lifetime.end.p0(ptr nonnull %li) #10
  br label %no_silent

if.else5073:                                      ; preds = %if.end4948
  call void @llvm.lifetime.start.p0(ptr nonnull %li5074) #10
  store ptr %locinput.112701, ptr %li5074, align 8
  %max5078 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 64
  %983 = load i32, ptr %max5078, align 8
  %call5079 = call fastcc i32 @S_regrepeat(ptr noundef %rex.1.ph, ptr noundef %li5074, ptr noundef %scan.6, ptr noundef %reginfo, i32 noundef %983, i32 noundef %depth.1.ph)
  %count5081 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 56
  store i32 %call5079, ptr %count5081, align 8
  %min5085 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 60
  %984 = load i32, ptr %min5085, align 4
  %cmp5086.not = icmp slt i32 %call5079, %984
  br i1 %cmp5086.not, label %cleanup5144, label %if.end5089

if.end5089:                                       ; preds = %if.else5073
  %985 = load ptr, ptr %li5074, align 8
  %cmp5102 = icmp sgt i32 %call5079, %984
  br i1 %cmp5102, label %land.lhs.true5104, label %if.end5141

land.lhs.true5104:                                ; preds = %if.end5089
  %986 = load ptr, ptr %B4952, align 8
  %type5107 = getelementptr inbounds nuw i8, ptr %986, i64 1
  %987 = load i8, ptr %type5107, align 1
  %idxprom5108 = zext i8 %987 to i64
  %arrayidx5109 = getelementptr inbounds nuw i8, ptr @PL_regkind, i64 %idxprom5108
  %988 = load i8, ptr %arrayidx5109, align 1
  %cmp5111 = icmp ne i8 %988, 4
  %cmp5118.not = icmp eq i8 %987, 5
  %or.cond8724 = or i1 %cmp5118.not, %cmp5111
  br i1 %or.cond8724, label %if.end5141, label %if.then5120

if.then5120:                                      ; preds = %land.lhs.true5104
  store i32 %call5079, ptr %min5085, align 4
  %add.ptr5125 = getelementptr inbounds i8, ptr %985, i64 -1
  %989 = load i8, ptr %add.ptr5125, align 1
  %cmp5127 = icmp eq i8 %989, 10
  br i1 %cmp5127, label %land.lhs.true5129, label %if.end5141

land.lhs.true5129:                                ; preds = %if.then5120
  %990 = load i8, ptr %type5107, align 1
  %cmp5134.not = icmp eq i8 %990, 6
  br i1 %cmp5134.not, label %if.end5141, label %if.then5136

if.then5136:                                      ; preds = %land.lhs.true5129
  %dec5139 = add nsw i32 %call5079, -1
  store i32 %dec5139, ptr %min5085, align 4
  br label %if.end5141

if.end5141:                                       ; preds = %if.then5136, %land.lhs.true5129, %if.then5120, %land.lhs.true5104, %if.end5089
  %991 = load i32, ptr @PL_savestack_ix, align 4
  %cp5143 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 20
  store i32 %991, ptr %cp5143, align 4
  br label %cleanup5144

cleanup5144:                                      ; preds = %if.end5141, %if.else5073
  %locinput.12 = phi ptr [ %985, %if.end5141 ], [ %locinput.112701, %if.else5073 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %li5074) #10
  br i1 %cmp5086.not, label %no_silent, label %curly_try_B_max

do.body5146:                                      ; preds = %cond.end42
  %minmod.1.lcssa12910 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12650 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12517 = phi ptr [ %scan.1, %cond.end42 ]
  %992 = load i32, ptr @PL_savestack_ix, align 4
  %u5147 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 16
  %cp5148 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 20
  %993 = load i32, ptr %cp5148, align 4
  %cmp5149 = icmp sgt i32 %992, %993
  br i1 %cmp5149, label %if.then5151, label %do.end5156

if.then5151:                                      ; preds = %do.body5146
  call void @Perl_leave_scope(i32 noundef %993) #10
  br label %do.end5156

do.end5156:                                       ; preds = %if.then5151, %do.body5146
  %994 = load i32, ptr %u5147, align 8
  %tobool5159.not = icmp eq i32 %994, 0
  br i1 %tobool5159.not, label %if.end5179, label %if.then5160

if.then5160:                                      ; preds = %do.end5156
  %lastparen5161 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 112
  %995 = load i32, ptr %lastparen5161, align 8
  %lastparen5164 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %996 = load i32, ptr %lastparen5164, align 8
  %cmp516512029 = icmp ugt i32 %995, %996
  br i1 %cmp516512029, label %for.body5167.lr.ph, label %for.end5174

for.body5167.lr.ph:                               ; preds = %if.then5160
  %offs5168 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 120
  br label %for.body5167

for.body5167:                                     ; preds = %for.body5167, %for.body5167.lr.ph
  %n.512030 = phi i32 [ %995, %for.body5167.lr.ph ], [ %dec5173, %for.body5167 ]
  %997 = load ptr, ptr %offs5168, align 8
  %idxprom5169 = zext i32 %n.512030 to i64
  %arrayidx5170 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %997, i64 %idxprom5169
  %end5171 = getelementptr inbounds nuw i8, ptr %arrayidx5170, i64 8
  store i64 -1, ptr %end5171, align 8
  %dec5173 = add i32 %n.512030, -1
  %998 = load i32, ptr %lastparen5164, align 8
  %cmp5165 = icmp ugt i32 %dec5173, %998
  br i1 %cmp5165, label %for.body5167, label %for.end5174.loopexit, !llvm.loop !26

for.end5174.loopexit:                             ; preds = %for.body5167
  %dec5173.lcssa = phi i32 [ %dec5173, %for.body5167 ]
  br label %for.end5174

for.end5174:                                      ; preds = %for.end5174.loopexit, %if.then5160
  %n.5.lcssa = phi i32 [ %995, %if.then5160 ], [ %dec5173.lcssa, %for.end5174.loopexit ]
  store i32 %n.5.lcssa, ptr %lastparen5161, align 8
  %lastcloseparen5177 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 28
  %999 = load i32, ptr %lastcloseparen5177, align 4
  %lastcloseparen5178 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 116
  store i32 %999, ptr %lastcloseparen5178, align 4
  br label %if.end5179

if.end5179:                                       ; preds = %for.end5174, %do.end5156
  %oldloc5181 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  store ptr %locinput.1.lcssa12650, ptr %oldloc5181, align 8
  br i1 %loadedv, label %if.then5183, label %if.else5189

if.then5183:                                      ; preds = %if.end5179
  %1000 = load i8, ptr %locinput.1.lcssa12650, align 1
  %idxprom5184 = zext i8 %1000 to i64
  %arrayidx5185 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom5184
  %1001 = load i8, ptr %arrayidx5185, align 1
  %idx.ext5187 = zext i8 %1001 to i64
  %add.ptr5188 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12650, i64 %idx.ext5187
  br label %if.end5191

if.else5189:                                      ; preds = %if.end5179
  %incdec.ptr5190 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12650, i64 1
  br label %if.end5191

if.end5191:                                       ; preds = %if.else5189, %if.then5183
  %locinput.13 = phi ptr [ %add.ptr5188, %if.then5183 ], [ %incdec.ptr5190, %if.else5189 ]
  %count5193 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 56
  %1002 = load i32, ptr %count5193, align 8
  %inc5194 = add nsw i32 %1002, 1
  store i32 %inc5194, ptr %count5193, align 8
  br label %curly_try_B_min_known

curly_try_B_min_known:                            ; preds = %if.end5191, %cleanup5072.thread
  %minmod.4 = phi i8 [ %minmod.1.lcssa12910, %if.end5191 ], [ 0, %cleanup5072.thread ]
  %locinput.14 = phi ptr [ %locinput.13, %if.end5191 ], [ %970, %cleanup5072.thread ]
  %scan.7 = phi ptr [ %scan.1.lcssa12517, %if.end5191 ], [ %scan.6, %cleanup5072.thread ]
  br i1 %loadedv, label %if.then5198, label %if.else5270

if.then5198:                                      ; preds = %curly_try_B_min_known
  %oldloc5200 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %1003 = load ptr, ptr %oldloc5200, align 8
  %cmp5201 = icmp ne ptr %1003, %locinput.14
  %cond5203 = zext i1 %cmp5201 to i32
  %c15205 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %1004 = load i32, ptr %c15205, align 8
  %c25207 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 36
  %1005 = load i32, ptr %c25207, align 4
  %cmp5208 = icmp eq i32 %1004, %1005
  br i1 %cmp5208, label %while.cond5211.preheader, label %while.cond5236.preheader

while.cond5236.preheader:                         ; preds = %if.then5198
  %c1_utf85243 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 88
  %c2_utf85252 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 102
  %maxpos5238 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %1006 = load ptr, ptr %maxpos5238, align 8
  %cmp5239.not12048 = icmp ugt ptr %locinput.14, %1006
  br i1 %cmp5239.not12048, label %if.end5324, label %land.lhs.true5241.preheader

land.lhs.true5241.preheader:                      ; preds = %while.cond5236.preheader
  br label %land.lhs.true5241

while.cond5211.preheader:                         ; preds = %if.then5198
  %c1_utf85218 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 88
  %maxpos5213 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %1007 = load ptr, ptr %maxpos5213, align 8
  %cmp5214.not12057 = icmp ugt ptr %locinput.14, %1007
  br i1 %cmp5214.not12057, label %if.end5324, label %land.rhs5216.preheader

land.rhs5216.preheader:                           ; preds = %while.cond5211.preheader
  br label %land.rhs5216

land.rhs5216:                                     ; preds = %while.body5227, %land.rhs5216.preheader
  %n5196.012059 = phi i32 [ %inc5233, %while.body5227 ], [ %cond5203, %land.rhs5216.preheader ]
  %locinput.1512058 = phi ptr [ %add.ptr5232, %while.body5227 ], [ %locinput.14, %land.rhs5216.preheader ]
  %1008 = load i8, ptr %locinput.1512058, align 1
  %idxprom5220 = zext i8 %1008 to i64
  %arrayidx5221 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom5220
  %1009 = load i8, ptr %arrayidx5221, align 1
  %conv5222 = zext i8 %1009 to i64
  %bcmp8687 = call i32 @bcmp(ptr %locinput.1512058, ptr nonnull %c1_utf85218, i64 %conv5222)
  %tobool5224.not = icmp eq i32 %bcmp8687, 0
  br i1 %tobool5224.not, label %if.end5324.loopexit, label %while.body5227

while.body5227:                                   ; preds = %land.rhs5216
  %add.ptr5232 = getelementptr inbounds nuw i8, ptr %locinput.1512058, i64 %conv5222
  %inc5233 = add nuw nsw i32 %n5196.012059, 1
  %cmp5214.not = icmp ugt ptr %add.ptr5232, %1007
  br i1 %cmp5214.not, label %if.end5324.loopexit, label %land.rhs5216, !llvm.loop !27

land.lhs.true5241:                                ; preds = %while.body5261, %land.lhs.true5241.preheader
  %n5196.112050 = phi i32 [ %inc5267, %while.body5261 ], [ %cond5203, %land.lhs.true5241.preheader ]
  %locinput.1612049 = phi ptr [ %add.ptr5266, %while.body5261 ], [ %locinput.14, %land.lhs.true5241.preheader ]
  %1010 = load i8, ptr %locinput.1612049, align 1
  %idxprom5245 = zext i8 %1010 to i64
  %arrayidx5246 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom5245
  %1011 = load i8, ptr %arrayidx5246, align 1
  %conv5247 = zext i8 %1011 to i64
  %bcmp8685 = call i32 @bcmp(ptr %locinput.1612049, ptr nonnull %c1_utf85243, i64 %conv5247)
  %tobool5249.not = icmp eq i32 %bcmp8685, 0
  br i1 %tobool5249.not, label %if.end5324.loopexit12298, label %land.rhs5250

land.rhs5250:                                     ; preds = %land.lhs.true5241
  %bcmp8686 = call i32 @bcmp(ptr nonnull %locinput.1612049, ptr nonnull %c2_utf85252, i64 %conv5247)
  %tobool5258.not = icmp eq i32 %bcmp8686, 0
  br i1 %tobool5258.not, label %if.end5324.loopexit12298, label %while.body5261

while.body5261:                                   ; preds = %land.rhs5250
  %add.ptr5266 = getelementptr inbounds nuw i8, ptr %locinput.1612049, i64 %conv5247
  %inc5267 = add nuw nsw i32 %n5196.112050, 1
  %cmp5239.not = icmp ugt ptr %add.ptr5266, %1006
  br i1 %cmp5239.not, label %if.end5324.loopexit12298, label %land.lhs.true5241, !llvm.loop !28

if.else5270:                                      ; preds = %curly_try_B_min_known
  %c15272 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %1012 = load i32, ptr %c15272, align 8
  %c25274 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 36
  %1013 = load i32, ptr %c25274, align 4
  %cmp5275 = icmp eq i32 %1012, %1013
  br i1 %cmp5275, label %while.cond5278.preheader, label %while.cond5295.preheader

while.cond5295.preheader:                         ; preds = %if.else5270
  %maxpos5297 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %1014 = load ptr, ptr %maxpos5297, align 8
  %cmp5298.not12040 = icmp ugt ptr %locinput.14, %1014
  br i1 %cmp5298.not12040, label %if.end5317, label %land.lhs.true5300.preheader

land.lhs.true5300.preheader:                      ; preds = %while.cond5295.preheader
  br label %land.lhs.true5300

while.cond5278.preheader:                         ; preds = %if.else5270
  %maxpos5280 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %1015 = load ptr, ptr %maxpos5280, align 8
  %cmp5281.not12044 = icmp ugt ptr %locinput.14, %1015
  br i1 %cmp5281.not12044, label %if.end5317, label %land.rhs5283.preheader

land.rhs5283.preheader:                           ; preds = %while.cond5278.preheader
  br label %land.rhs5283

land.rhs5283:                                     ; preds = %while.body5291, %land.rhs5283.preheader
  %locinput.1712045 = phi ptr [ %incdec.ptr5292, %while.body5291 ], [ %locinput.14, %land.rhs5283.preheader ]
  %1016 = load i8, ptr %locinput.1712045, align 1
  %conv5284 = zext i8 %1016 to i32
  %cmp5287.not = icmp eq i32 %1012, %conv5284
  br i1 %cmp5287.not, label %if.end5317.loopexit, label %while.body5291

while.body5291:                                   ; preds = %land.rhs5283
  %incdec.ptr5292 = getelementptr inbounds nuw i8, ptr %locinput.1712045, i64 1
  %cmp5281.not = icmp ugt ptr %incdec.ptr5292, %1015
  br i1 %cmp5281.not, label %if.end5317.loopexit, label %land.rhs5283, !llvm.loop !29

land.lhs.true5300:                                ; preds = %while.body5314, %land.lhs.true5300.preheader
  %locinput.1812041 = phi ptr [ %incdec.ptr5315, %while.body5314 ], [ %locinput.14, %land.lhs.true5300.preheader ]
  %1017 = load i8, ptr %locinput.1812041, align 1
  %conv5301 = zext i8 %1017 to i32
  %cmp5304.not = icmp eq i32 %1012, %conv5301
  %cmp5310.not = icmp eq i32 %1013, %conv5301
  %or.cond9400 = or i1 %cmp5304.not, %cmp5310.not
  br i1 %or.cond9400, label %if.end5317.loopexit12301, label %while.body5314

while.body5314:                                   ; preds = %land.lhs.true5300
  %incdec.ptr5315 = getelementptr inbounds nuw i8, ptr %locinput.1812041, i64 1
  %cmp5298.not = icmp ugt ptr %incdec.ptr5315, %1014
  br i1 %cmp5298.not, label %if.end5317.loopexit12301, label %land.lhs.true5300, !llvm.loop !30

if.end5317.loopexit:                              ; preds = %while.body5291, %land.rhs5283
  %locinput.19.ph = phi ptr [ %locinput.1712045, %land.rhs5283 ], [ %incdec.ptr5292, %while.body5291 ]
  br label %if.end5317

if.end5317.loopexit12301:                         ; preds = %while.body5314, %land.lhs.true5300
  %locinput.19.ph12302 = phi ptr [ %incdec.ptr5315, %while.body5314 ], [ %locinput.1812041, %land.lhs.true5300 ]
  br label %if.end5317

if.end5317:                                       ; preds = %if.end5317.loopexit12301, %if.end5317.loopexit, %while.cond5278.preheader, %while.cond5295.preheader
  %locinput.19 = phi ptr [ %locinput.14, %while.cond5278.preheader ], [ %locinput.14, %while.cond5295.preheader ], [ %locinput.19.ph, %if.end5317.loopexit ], [ %locinput.19.ph12302, %if.end5317.loopexit12301 ]
  %oldloc5319 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %1018 = load ptr, ptr %oldloc5319, align 8
  %sub.ptr.lhs.cast5320 = ptrtoint ptr %locinput.19 to i64
  %sub.ptr.rhs.cast5321 = ptrtoint ptr %1018 to i64
  %sub.ptr.sub5322 = sub i64 %sub.ptr.lhs.cast5320, %sub.ptr.rhs.cast5321
  %conv5323 = trunc i64 %sub.ptr.sub5322 to i32
  br label %if.end5324

if.end5324.loopexit:                              ; preds = %while.body5227, %land.rhs5216
  %locinput.20.ph = phi ptr [ %add.ptr5232, %while.body5227 ], [ %locinput.1512058, %land.rhs5216 ]
  %n5196.2.ph = phi i32 [ %inc5233, %while.body5227 ], [ %n5196.012059, %land.rhs5216 ]
  br label %if.end5324

if.end5324.loopexit12298:                         ; preds = %while.body5261, %land.rhs5250, %land.lhs.true5241
  %locinput.20.ph12299 = phi ptr [ %locinput.1612049, %land.lhs.true5241 ], [ %add.ptr5266, %while.body5261 ], [ %locinput.1612049, %land.rhs5250 ]
  %n5196.2.ph12300 = phi i32 [ %n5196.112050, %land.lhs.true5241 ], [ %inc5267, %while.body5261 ], [ %n5196.112050, %land.rhs5250 ]
  br label %if.end5324

if.end5324:                                       ; preds = %if.end5324.loopexit12298, %if.end5324.loopexit, %if.end5317, %while.cond5211.preheader, %while.cond5236.preheader
  %locinput.20 = phi ptr [ %locinput.19, %if.end5317 ], [ %locinput.14, %while.cond5211.preheader ], [ %locinput.14, %while.cond5236.preheader ], [ %locinput.20.ph, %if.end5324.loopexit ], [ %locinput.20.ph12299, %if.end5324.loopexit12298 ]
  %n5196.2 = phi i32 [ %conv5323, %if.end5317 ], [ %cond5203, %while.cond5211.preheader ], [ %cond5203, %while.cond5236.preheader ], [ %n5196.2.ph, %if.end5324.loopexit ], [ %n5196.2.ph12300, %if.end5324.loopexit12298 ]
  %maxpos5326 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %1019 = load ptr, ptr %maxpos5326, align 8
  %cmp5327 = icmp ugt ptr %locinput.20, %1019
  br i1 %cmp5327, label %cleanup5433, label %if.end5330

if.end5330:                                       ; preds = %if.end5324
  %tobool5331.not = icmp eq i32 %n5196.2, 0
  br i1 %tobool5331.not, label %if.end5349, label %if.then5332

if.then5332:                                      ; preds = %if.end5330
  call void @llvm.lifetime.start.p0(ptr nonnull %li5333) #10
  %oldloc5335 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 48
  %1020 = load ptr, ptr %oldloc5335, align 8
  store ptr %1020, ptr %li5333, align 8
  %count5337 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 56
  %1021 = load i32, ptr %count5337, align 8
  %add5338 = add nsw i32 %1021, %n5196.2
  store i32 %add5338, ptr %count5337, align 8
  %A5340 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %1022 = load ptr, ptr %A5340, align 8
  %call5341 = call fastcc i32 @S_regrepeat(ptr noundef %rex.1.ph, ptr noundef %li5333, ptr noundef %1022, ptr noundef %reginfo, i32 noundef %n5196.2, i32 noundef %depth.1.ph)
  %cmp5342.not = icmp slt i32 %call5341, %n5196.2
  call void @llvm.lifetime.end.p0(ptr nonnull %li5333) #10
  br i1 %cmp5342.not, label %cleanup5433, label %if.end5349

if.end5349:                                       ; preds = %if.then5332, %if.end5330
  %sw.0.ph9430.lcssa14652 = phi i1 [ %sw.0.ph9430, %if.then5332 ], [ %sw.0.ph9430, %if.end5330 ]
  %match.1.ph.lcssa14574 = phi i8 [ %match.1.ph, %if.then5332 ], [ %match.1.ph, %if.end5330 ]
  %is_utf8_pat.1.ph.lcssa14499 = phi i8 [ %is_utf8_pat.1.ph, %if.then5332 ], [ %is_utf8_pat.1.ph, %if.end5330 ]
  %logical.1.ph.lcssa14425 = phi i32 [ %logical.1.ph, %if.then5332 ], [ %logical.1.ph, %if.end5330 ]
  %sv_yes_mark.1.ph.lcssa14348 = phi ptr [ %sv_yes_mark.1.ph, %if.then5332 ], [ %sv_yes_mark.1.ph, %if.end5330 ]
  %sv_commit.1.ph.lcssa14271 = phi ptr [ %sv_commit.1.ph, %if.then5332 ], [ %sv_commit.1.ph, %if.end5330 ]
  %popmark.1.ph.lcssa14192 = phi ptr [ %popmark.1.ph, %if.then5332 ], [ %popmark.1.ph, %if.end5330 ]
  %do_cutgroup.1.ph.lcssa14114 = phi i8 [ %do_cutgroup.1.ph, %if.then5332 ], [ %do_cutgroup.1.ph, %if.end5330 ]
  %no_final.1.ph.lcssa14036 = phi i8 [ %no_final.1.ph, %if.then5332 ], [ %no_final.1.ph, %if.end5330 ]
  %cur_curlyx.1.ph.lcssa13960 = phi ptr [ %cur_curlyx.1.ph, %if.then5332 ], [ %cur_curlyx.1.ph, %if.end5330 ]
  %cur_eval.1.ph.lcssa13883 = phi ptr [ %cur_eval.1.ph, %if.then5332 ], [ %cur_eval.1.ph, %if.end5330 ]
  %mark_state.1.ph.lcssa13806 = phi ptr [ %mark_state.1.ph, %if.then5332 ], [ %mark_state.1.ph, %if.end5330 ]
  %yes_state.1.ph.lcssa13728 = phi ptr [ %yes_state.1.ph, %if.then5332 ], [ %yes_state.1.ph, %if.end5330 ]
  %nochange_depth.1.ph.lcssa13654 = phi i32 [ %nochange_depth.1.ph, %if.then5332 ], [ %nochange_depth.1.ph, %if.end5330 ]
  %depth.1.ph.lcssa13575 = phi i32 [ %depth.1.ph, %if.then5332 ], [ %depth.1.ph, %if.end5330 ]
  %next.1.ph.lcssa13501 = phi ptr [ %next.1.ph, %if.then5332 ], [ %next.1.ph, %if.end5330 ]
  %st.1.ph.lcssa13422 = phi ptr [ %st.1.ph, %if.then5332 ], [ %st.1.ph, %if.end5330 ]
  %rexi.1.ph.lcssa13347 = phi ptr [ %rexi.1.ph, %if.then5332 ], [ %rexi.1.ph, %if.end5330 ]
  %rex.1.ph.lcssa13271 = phi ptr [ %rex.1.ph, %if.then5332 ], [ %rex.1.ph, %if.end5330 ]
  %rex_sv.1.ph.lcssa13194 = phi ptr [ %rex_sv.1.ph, %if.then5332 ], [ %rex_sv.1.ph, %if.end5330 ]
  %locinput.20.lcssa = phi ptr [ %locinput.20, %if.then5332 ], [ %locinput.20, %if.end5330 ]
  %minmod.4.lcssa = phi i8 [ %minmod.4, %if.then5332 ], [ %minmod.4, %if.end5330 ]
  %u5325.le = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13422, i64 16
  %1023 = load i32, ptr %u5325.le, align 8
  %tobool5352.not = icmp eq i32 %1023, 0
  br i1 %tobool5352.not, label %if.end5415, label %if.then5353

if.then5353:                                      ; preds = %if.end5349
  %count5355 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13422, i64 56
  %1024 = load i32, ptr %count5355, align 8
  %tobool5356.not = icmp eq i32 %1024, 0
  br i1 %tobool5356.not, label %if.else5401, label %if.then5357

if.then5357:                                      ; preds = %if.then5353
  %1025 = load i8, ptr %is_utf8_target, align 2, !range !0, !noundef !1
  %loadedv5359 = trunc nuw i8 %1025 to i1
  br i1 %loadedv5359, label %cond.true5361, label %cond.false5364

cond.true5361:                                    ; preds = %if.then5357
  %1026 = load ptr, ptr %strbeg5362, align 8
  %call5363 = call fastcc ptr @S_reghop3(ptr noundef %locinput.20.lcssa, i64 noundef -1, ptr noundef %1026)
  br label %cond.end5366

cond.false5364:                                   ; preds = %if.then5357
  %add.ptr5365 = getelementptr inbounds i8, ptr %locinput.20.lcssa, i64 -1
  br label %cond.end5366

cond.end5366:                                     ; preds = %cond.false5364, %cond.true5361
  %cond5367 = phi ptr [ %call5363, %cond.true5361 ], [ %add.ptr5365, %cond.false5364 ]
  %1027 = load ptr, ptr %strbeg5368, align 8
  %sub.ptr.lhs.cast5369 = ptrtoint ptr %cond5367 to i64
  %sub.ptr.rhs.cast5370 = ptrtoint ptr %1027 to i64
  %sub.ptr.sub5371 = sub i64 %sub.ptr.lhs.cast5369, %sub.ptr.rhs.cast5370
  %offs5372 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13271, i64 120
  %1028 = load ptr, ptr %offs5372, align 8
  %1029 = load i32, ptr %u5325.le, align 8
  %idxprom5375 = zext i32 %1029 to i64
  %arrayidx5376 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %1028, i64 %idxprom5375
  store i64 %sub.ptr.sub5371, ptr %arrayidx5376, align 8
  %1030 = load ptr, ptr %strbeg5368, align 8
  %sub.ptr.lhs.cast5379 = ptrtoint ptr %locinput.20.lcssa to i64
  %sub.ptr.rhs.cast5380 = ptrtoint ptr %1030 to i64
  %sub.ptr.sub5381 = sub i64 %sub.ptr.lhs.cast5379, %sub.ptr.rhs.cast5380
  %1031 = load ptr, ptr %offs5372, align 8
  %1032 = load i32, ptr %u5325.le, align 8
  %idxprom5385 = zext i32 %1032 to i64
  %arrayidx5386 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %1031, i64 %idxprom5385
  %end5387 = getelementptr inbounds nuw i8, ptr %arrayidx5386, i64 8
  store i64 %sub.ptr.sub5381, ptr %end5387, align 8
  %1033 = load i32, ptr %u5325.le, align 8
  %lastparen5390 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13271, i64 112
  %1034 = load i32, ptr %lastparen5390, align 8
  %cmp5391 = icmp ugt i32 %1033, %1034
  br i1 %cmp5391, label %if.then5393, label %if.end5397

if.then5393:                                      ; preds = %cond.end5366
  store i32 %1033, ptr %lastparen5390, align 8
  br label %if.end5397

if.end5397:                                       ; preds = %if.then5393, %cond.end5366
  %1035 = load i32, ptr %u5325.le, align 8
  %lastcloseparen5400 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13271, i64 116
  store i32 %1035, ptr %lastcloseparen5400, align 4
  br label %if.end5415

if.else5401:                                      ; preds = %if.then5353
  %offs5402 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13271, i64 120
  %1036 = load ptr, ptr %offs5402, align 8
  %idxprom5405 = zext i32 %1023 to i64
  %arrayidx5406 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %1036, i64 %idxprom5405
  %end5407 = getelementptr inbounds nuw i8, ptr %arrayidx5406, i64 8
  store i64 -1, ptr %end5407, align 8
  %lastparen5409 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13422, i64 24
  %1037 = load i32, ptr %lastparen5409, align 8
  %lastparen5410 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13271, i64 112
  store i32 %1037, ptr %lastparen5410, align 8
  %lastcloseparen5412 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13422, i64 28
  %1038 = load i32, ptr %lastcloseparen5412, align 4
  %lastcloseparen5413 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13271, i64 116
  store i32 %1038, ptr %lastcloseparen5413, align 4
  br label %if.end5415

if.end5415:                                       ; preds = %if.else5401, %if.end5397, %if.end5349
  %tobool5416.not = icmp eq ptr %cur_eval.1.ph.lcssa13883, null
  br i1 %tobool5416.not, label %cleanup5433.thread9345, label %land.lhs.true5417

land.lhs.true5417:                                ; preds = %if.end5415
  %close_paren5419 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph.lcssa13883, i64 56
  %1039 = load i32, ptr %close_paren5419, align 8
  %tobool5420.not = icmp eq i32 %1039, 0
  br i1 %tobool5420.not, label %cleanup5433.thread9345, label %land.lhs.true5421

land.lhs.true5421:                                ; preds = %land.lhs.true5417
  %1040 = load i32, ptr %u5325.le, align 8
  %cmp5426 = icmp eq i32 %1039, %1040
  br i1 %cmp5426, label %if.then5795, label %cleanup5433.thread9345

cleanup5433.thread9345:                           ; preds = %land.lhs.true5421, %land.lhs.true5417, %if.end5415
  %B5431 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13422, i64 80
  %1041 = load ptr, ptr %B5431, align 8
  store i32 118, ptr %st.1.ph.lcssa13422, align 8
  br label %push_state

cleanup5433:                                      ; preds = %if.then5332, %if.end5324
  br label %no_silent

do.body5435:                                      ; preds = %cond.end42
  %minmod.1.lcssa12911 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12651 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12518 = phi ptr [ %scan.1, %cond.end42 ]
  %1042 = load i32, ptr @PL_savestack_ix, align 4
  %u5436 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 16
  %cp5437 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 20
  %1043 = load i32, ptr %cp5437, align 4
  %cmp5438 = icmp sgt i32 %1042, %1043
  br i1 %cmp5438, label %if.then5440, label %do.end5445

if.then5440:                                      ; preds = %do.body5435
  call void @Perl_leave_scope(i32 noundef %1043) #10
  br label %do.end5445

do.end5445:                                       ; preds = %if.then5440, %do.body5435
  %1044 = load i32, ptr %u5436, align 8
  %tobool5448.not = icmp eq i32 %1044, 0
  br i1 %tobool5448.not, label %if.end5468, label %if.then5449

if.then5449:                                      ; preds = %do.end5445
  %lastparen5450 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 112
  %1045 = load i32, ptr %lastparen5450, align 8
  %lastparen5453 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %1046 = load i32, ptr %lastparen5453, align 8
  %cmp545412026 = icmp ugt i32 %1045, %1046
  br i1 %cmp545412026, label %for.body5456.lr.ph, label %for.end5463

for.body5456.lr.ph:                               ; preds = %if.then5449
  %offs5457 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 120
  br label %for.body5456

for.body5456:                                     ; preds = %for.body5456, %for.body5456.lr.ph
  %n.612027 = phi i32 [ %1045, %for.body5456.lr.ph ], [ %dec5462, %for.body5456 ]
  %1047 = load ptr, ptr %offs5457, align 8
  %idxprom5458 = zext i32 %n.612027 to i64
  %arrayidx5459 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %1047, i64 %idxprom5458
  %end5460 = getelementptr inbounds nuw i8, ptr %arrayidx5459, i64 8
  store i64 -1, ptr %end5460, align 8
  %dec5462 = add i32 %n.612027, -1
  %1048 = load i32, ptr %lastparen5453, align 8
  %cmp5454 = icmp ugt i32 %dec5462, %1048
  br i1 %cmp5454, label %for.body5456, label %for.end5463.loopexit, !llvm.loop !31

for.end5463.loopexit:                             ; preds = %for.body5456
  %dec5462.lcssa = phi i32 [ %dec5462, %for.body5456 ]
  br label %for.end5463

for.end5463:                                      ; preds = %for.end5463.loopexit, %if.then5449
  %n.6.lcssa = phi i32 [ %1045, %if.then5449 ], [ %dec5462.lcssa, %for.end5463.loopexit ]
  store i32 %n.6.lcssa, ptr %lastparen5450, align 8
  %lastcloseparen5466 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 28
  %1049 = load i32, ptr %lastcloseparen5466, align 4
  %lastcloseparen5467 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 116
  store i32 %1049, ptr %lastcloseparen5467, align 4
  br label %if.end5468

if.end5468:                                       ; preds = %for.end5463, %do.end5445
  call void @llvm.lifetime.start.p0(ptr nonnull %li5469) #10
  store ptr %locinput.1.lcssa12651, ptr %li5469, align 8
  %A5471 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 72
  %1050 = load ptr, ptr %A5471, align 8
  %call5472 = call fastcc i32 @S_regrepeat(ptr noundef %rex.1.ph, ptr noundef %li5469, ptr noundef %1050, ptr noundef %reginfo, i32 noundef 1, i32 noundef %depth.1.ph)
  %tobool5473.not = icmp eq i32 %call5472, 0
  %1051 = load ptr, ptr %li5469, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %li5469) #10
  br i1 %tobool5473.not, label %no_silent, label %cleanup.cont5478

cleanup.cont5478:                                 ; preds = %if.end5468
  %count5480 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 56
  %1052 = load i32, ptr %count5480, align 8
  %inc5481 = add nsw i32 %1052, 1
  store i32 %inc5481, ptr %count5480, align 8
  %max5485 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 64
  %1053 = load i32, ptr %max5485, align 8
  %cmp5486.not.not = icmp slt i32 %1052, %1053
  %cmp5491 = icmp eq i32 %1053, 32767
  %or.cond12292 = or i1 %cmp5486.not.not, %cmp5491
  br i1 %or.cond12292, label %curly_try_B_min.loopexit, label %no_silent

curly_try_B_min.loopexit:                         ; preds = %cleanup.cont5478
  %sw.0.ph9430.lcssa14648 = phi i1 [ %sw.0.ph9430, %cleanup.cont5478 ]
  %match.1.ph.lcssa14570 = phi i8 [ %match.1.ph, %cleanup.cont5478 ]
  %is_utf8_pat.1.ph.lcssa14495 = phi i8 [ %is_utf8_pat.1.ph, %cleanup.cont5478 ]
  %logical.1.ph.lcssa14421 = phi i32 [ %logical.1.ph, %cleanup.cont5478 ]
  %sv_yes_mark.1.ph.lcssa14344 = phi ptr [ %sv_yes_mark.1.ph, %cleanup.cont5478 ]
  %sv_commit.1.ph.lcssa14267 = phi ptr [ %sv_commit.1.ph, %cleanup.cont5478 ]
  %popmark.1.ph.lcssa14188 = phi ptr [ %popmark.1.ph, %cleanup.cont5478 ]
  %do_cutgroup.1.ph.lcssa14110 = phi i8 [ %do_cutgroup.1.ph, %cleanup.cont5478 ]
  %no_final.1.ph.lcssa14032 = phi i8 [ %no_final.1.ph, %cleanup.cont5478 ]
  %cur_curlyx.1.ph.lcssa13956 = phi ptr [ %cur_curlyx.1.ph, %cleanup.cont5478 ]
  %cur_eval.1.ph.lcssa13879 = phi ptr [ %cur_eval.1.ph, %cleanup.cont5478 ]
  %mark_state.1.ph.lcssa13802 = phi ptr [ %mark_state.1.ph, %cleanup.cont5478 ]
  %yes_state.1.ph.lcssa13724 = phi ptr [ %yes_state.1.ph, %cleanup.cont5478 ]
  %nochange_depth.1.ph.lcssa13650 = phi i32 [ %nochange_depth.1.ph, %cleanup.cont5478 ]
  %depth.1.ph.lcssa13571 = phi i32 [ %depth.1.ph, %cleanup.cont5478 ]
  %next.1.ph.lcssa13497 = phi ptr [ %next.1.ph, %cleanup.cont5478 ]
  %st.1.ph.lcssa13418 = phi ptr [ %st.1.ph, %cleanup.cont5478 ]
  %rexi.1.ph.lcssa13343 = phi ptr [ %rexi.1.ph, %cleanup.cont5478 ]
  %rex.1.ph.lcssa13267 = phi ptr [ %rex.1.ph, %cleanup.cont5478 ]
  %rex_sv.1.ph.lcssa13190 = phi ptr [ %rex_sv.1.ph, %cleanup.cont5478 ]
  %.lcssa13138 = phi ptr [ %1051, %cleanup.cont5478 ]
  %minmod.1.lcssa12911.lcssa = phi i8 [ %minmod.1.lcssa12911, %cleanup.cont5478 ]
  br label %curly_try_B_min

curly_try_B_min:                                  ; preds = %curly_try_B_min.loopexit, %cleanup5072.thread9339
  %sw.0.ph943014682 = phi i1 [ %sw.0.ph9430.lcssa14651, %cleanup5072.thread9339 ], [ %sw.0.ph9430.lcssa14648, %curly_try_B_min.loopexit ]
  %match.1.ph14609 = phi i8 [ %match.1.ph.lcssa14573, %cleanup5072.thread9339 ], [ %match.1.ph.lcssa14570, %curly_try_B_min.loopexit ]
  %is_utf8_pat.1.ph14535 = phi i8 [ %is_utf8_pat.1.ph.lcssa14498, %cleanup5072.thread9339 ], [ %is_utf8_pat.1.ph.lcssa14495, %curly_try_B_min.loopexit ]
  %logical.1.ph14455 = phi i32 [ %logical.1.ph.lcssa14424, %cleanup5072.thread9339 ], [ %logical.1.ph.lcssa14421, %curly_try_B_min.loopexit ]
  %sv_yes_mark.1.ph14382 = phi ptr [ %sv_yes_mark.1.ph.lcssa14347, %cleanup5072.thread9339 ], [ %sv_yes_mark.1.ph.lcssa14344, %curly_try_B_min.loopexit ]
  %sv_commit.1.ph14305 = phi ptr [ %sv_commit.1.ph.lcssa14270, %cleanup5072.thread9339 ], [ %sv_commit.1.ph.lcssa14267, %curly_try_B_min.loopexit ]
  %popmark.1.ph14230 = phi ptr [ %popmark.1.ph.lcssa14191, %cleanup5072.thread9339 ], [ %popmark.1.ph.lcssa14188, %curly_try_B_min.loopexit ]
  %do_cutgroup.1.ph14153 = phi i8 [ %do_cutgroup.1.ph.lcssa14113, %cleanup5072.thread9339 ], [ %do_cutgroup.1.ph.lcssa14110, %curly_try_B_min.loopexit ]
  %no_final.1.ph14075 = phi i8 [ %no_final.1.ph.lcssa14035, %cleanup5072.thread9339 ], [ %no_final.1.ph.lcssa14032, %curly_try_B_min.loopexit ]
  %cur_curlyx.1.ph13997 = phi ptr [ %cur_curlyx.1.ph.lcssa13959, %cleanup5072.thread9339 ], [ %cur_curlyx.1.ph.lcssa13956, %curly_try_B_min.loopexit ]
  %cur_eval.1.ph13917 = phi ptr [ %cur_eval.1.ph.lcssa13882, %cleanup5072.thread9339 ], [ %cur_eval.1.ph.lcssa13879, %curly_try_B_min.loopexit ]
  %mark_state.1.ph13840 = phi ptr [ %mark_state.1.ph.lcssa13805, %cleanup5072.thread9339 ], [ %mark_state.1.ph.lcssa13802, %curly_try_B_min.loopexit ]
  %yes_state.1.ph13767 = phi ptr [ %yes_state.1.ph.lcssa13727, %cleanup5072.thread9339 ], [ %yes_state.1.ph.lcssa13724, %curly_try_B_min.loopexit ]
  %nochange_depth.1.ph13683 = phi i32 [ %nochange_depth.1.ph.lcssa13653, %cleanup5072.thread9339 ], [ %nochange_depth.1.ph.lcssa13650, %curly_try_B_min.loopexit ]
  %depth.1.ph13613 = phi i32 [ %depth.1.ph.lcssa13574, %cleanup5072.thread9339 ], [ %depth.1.ph.lcssa13571, %curly_try_B_min.loopexit ]
  %next.1.ph13532 = phi ptr [ %next.1.ph.lcssa13500, %cleanup5072.thread9339 ], [ %next.1.ph.lcssa13497, %curly_try_B_min.loopexit ]
  %st.1.ph13460 = phi ptr [ %st.1.ph.lcssa13421, %cleanup5072.thread9339 ], [ %st.1.ph.lcssa13418, %curly_try_B_min.loopexit ]
  %rexi.1.ph13383 = phi ptr [ %rexi.1.ph.lcssa13346, %cleanup5072.thread9339 ], [ %rexi.1.ph.lcssa13343, %curly_try_B_min.loopexit ]
  %rex.1.ph13304 = phi ptr [ %rex.1.ph.lcssa13270, %cleanup5072.thread9339 ], [ %rex.1.ph.lcssa13267, %curly_try_B_min.loopexit ]
  %rex_sv.1.ph13228 = phi ptr [ %rex_sv.1.ph.lcssa13193, %cleanup5072.thread9339 ], [ %rex_sv.1.ph.lcssa13190, %curly_try_B_min.loopexit ]
  %minmod.5 = phi i8 [ 0, %cleanup5072.thread9339 ], [ %minmod.1.lcssa12911.lcssa, %curly_try_B_min.loopexit ]
  %locinput.22 = phi ptr [ %.lcssa13139, %cleanup5072.thread9339 ], [ %.lcssa13138, %curly_try_B_min.loopexit ]
  %u5499 = getelementptr inbounds nuw i8, ptr %st.1.ph13460, i64 16
  %1054 = load i32, ptr %u5499, align 8
  %tobool5501.not = icmp eq i32 %1054, 0
  br i1 %tobool5501.not, label %if.end5564, label %if.then5502

if.then5502:                                      ; preds = %curly_try_B_min
  %count5504 = getelementptr inbounds nuw i8, ptr %st.1.ph13460, i64 56
  %1055 = load i32, ptr %count5504, align 8
  %tobool5505.not = icmp eq i32 %1055, 0
  br i1 %tobool5505.not, label %if.else5550, label %if.then5506

if.then5506:                                      ; preds = %if.then5502
  %1056 = load i8, ptr %is_utf8_target, align 2, !range !0, !noundef !1
  %loadedv5508 = trunc nuw i8 %1056 to i1
  br i1 %loadedv5508, label %cond.true5510, label %cond.false5513

cond.true5510:                                    ; preds = %if.then5506
  %1057 = load ptr, ptr %strbeg5511, align 8
  %call5512 = call fastcc ptr @S_reghop3(ptr noundef %locinput.22, i64 noundef -1, ptr noundef %1057)
  br label %cond.end5515

cond.false5513:                                   ; preds = %if.then5506
  %add.ptr5514 = getelementptr inbounds i8, ptr %locinput.22, i64 -1
  br label %cond.end5515

cond.end5515:                                     ; preds = %cond.false5513, %cond.true5510
  %cond5516 = phi ptr [ %call5512, %cond.true5510 ], [ %add.ptr5514, %cond.false5513 ]
  %1058 = load ptr, ptr %strbeg5517, align 8
  %sub.ptr.lhs.cast5518 = ptrtoint ptr %cond5516 to i64
  %sub.ptr.rhs.cast5519 = ptrtoint ptr %1058 to i64
  %sub.ptr.sub5520 = sub i64 %sub.ptr.lhs.cast5518, %sub.ptr.rhs.cast5519
  %offs5521 = getelementptr inbounds nuw i8, ptr %rex.1.ph13304, i64 120
  %1059 = load ptr, ptr %offs5521, align 8
  %1060 = load i32, ptr %u5499, align 8
  %idxprom5524 = zext i32 %1060 to i64
  %arrayidx5525 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %1059, i64 %idxprom5524
  store i64 %sub.ptr.sub5520, ptr %arrayidx5525, align 8
  %1061 = load ptr, ptr %strbeg5517, align 8
  %sub.ptr.lhs.cast5528 = ptrtoint ptr %locinput.22 to i64
  %sub.ptr.rhs.cast5529 = ptrtoint ptr %1061 to i64
  %sub.ptr.sub5530 = sub i64 %sub.ptr.lhs.cast5528, %sub.ptr.rhs.cast5529
  %1062 = load ptr, ptr %offs5521, align 8
  %1063 = load i32, ptr %u5499, align 8
  %idxprom5534 = zext i32 %1063 to i64
  %arrayidx5535 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %1062, i64 %idxprom5534
  %end5536 = getelementptr inbounds nuw i8, ptr %arrayidx5535, i64 8
  store i64 %sub.ptr.sub5530, ptr %end5536, align 8
  %1064 = load i32, ptr %u5499, align 8
  %lastparen5539 = getelementptr inbounds nuw i8, ptr %rex.1.ph13304, i64 112
  %1065 = load i32, ptr %lastparen5539, align 8
  %cmp5540 = icmp ugt i32 %1064, %1065
  br i1 %cmp5540, label %if.then5542, label %if.end5546

if.then5542:                                      ; preds = %cond.end5515
  store i32 %1064, ptr %lastparen5539, align 8
  br label %if.end5546

if.end5546:                                       ; preds = %if.then5542, %cond.end5515
  %1066 = load i32, ptr %u5499, align 8
  %lastcloseparen5549 = getelementptr inbounds nuw i8, ptr %rex.1.ph13304, i64 116
  store i32 %1066, ptr %lastcloseparen5549, align 4
  br label %if.end5564

if.else5550:                                      ; preds = %if.then5502
  %offs5551 = getelementptr inbounds nuw i8, ptr %rex.1.ph13304, i64 120
  %1067 = load ptr, ptr %offs5551, align 8
  %idxprom5554 = zext i32 %1054 to i64
  %arrayidx5555 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %1067, i64 %idxprom5554
  %end5556 = getelementptr inbounds nuw i8, ptr %arrayidx5555, i64 8
  store i64 -1, ptr %end5556, align 8
  %lastparen5558 = getelementptr inbounds nuw i8, ptr %st.1.ph13460, i64 24
  %1068 = load i32, ptr %lastparen5558, align 8
  %lastparen5559 = getelementptr inbounds nuw i8, ptr %rex.1.ph13304, i64 112
  store i32 %1068, ptr %lastparen5559, align 8
  %lastcloseparen5561 = getelementptr inbounds nuw i8, ptr %st.1.ph13460, i64 28
  %1069 = load i32, ptr %lastcloseparen5561, align 4
  %lastcloseparen5562 = getelementptr inbounds nuw i8, ptr %rex.1.ph13304, i64 116
  store i32 %1069, ptr %lastcloseparen5562, align 4
  br label %if.end5564

if.end5564:                                       ; preds = %if.else5550, %if.end5546, %curly_try_B_min
  %tobool5565.not = icmp eq ptr %cur_eval.1.ph13917, null
  br i1 %tobool5565.not, label %if.end5578, label %land.lhs.true5566

land.lhs.true5566:                                ; preds = %if.end5564
  %close_paren5568 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph13917, i64 56
  %1070 = load i32, ptr %close_paren5568, align 8
  %tobool5569.not = icmp eq i32 %1070, 0
  br i1 %tobool5569.not, label %if.end5578, label %land.lhs.true5570

land.lhs.true5570:                                ; preds = %land.lhs.true5566
  %1071 = load i32, ptr %u5499, align 8
  %cmp5575 = icmp eq i32 %1070, %1071
  br i1 %cmp5575, label %if.then5795, label %if.end5578

if.end5578:                                       ; preds = %land.lhs.true5570, %land.lhs.true5566, %if.end5564
  %B5580 = getelementptr inbounds nuw i8, ptr %st.1.ph13460, i64 80
  %1072 = load ptr, ptr %B5580, align 8
  store i32 120, ptr %st.1.ph13460, align 8
  br label %push_state

curly_try_B_max:                                  ; preds = %cond.end5790, %cleanup5144
  %minmod.110086 = phi i8 [ %minmod.112962, %cleanup5144 ], [ %minmod.110087, %cond.end5790 ]
  %locinput.23 = phi ptr [ %locinput.12, %cleanup5144 ], [ %cond5791, %cond.end5790 ]
  %scan.10 = phi ptr [ %scan.6, %cleanup5144 ], [ %scan.12, %cond.end5790 ]
  %tobool5584.not = icmp eq ptr %cur_eval.1.ph, null
  br i1 %tobool5584.not, label %if.end5597, label %land.lhs.true5585

land.lhs.true5585:                                ; preds = %curly_try_B_max
  %close_paren5587 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph, i64 56
  %1073 = load i32, ptr %close_paren5587, align 8
  %tobool5588.not = icmp eq i32 %1073, 0
  br i1 %tobool5588.not, label %if.end5597, label %land.lhs.true5589

land.lhs.true5589:                                ; preds = %land.lhs.true5585
  %u5592 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 16
  %1074 = load i32, ptr %u5592, align 8
  %cmp5594 = icmp eq i32 %1073, %1074
  br i1 %cmp5594, label %if.then5795.loopexit12318, label %if.end5597

if.end5597:                                       ; preds = %land.lhs.true5589, %land.lhs.true5585, %curly_try_B_max
  %1075 = load ptr, ptr %strend, align 8
  %cmp5599 = icmp ult ptr %locinput.23, %1075
  %c15603 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %1076 = load i32, ptr %c15603, align 8
  %cmp5604 = icmp ne i32 %1076, -1000
  %or.cond6648 = select i1 %cmp5604, i1 %cmp5599, i1 false
  br i1 %or.cond6648, label %if.then5609, label %if.end5656

if.then5609:                                      ; preds = %if.end5597
  %1077 = load i8, ptr %locinput.23, align 1
  %conv5610 = zext i8 %1077 to i32
  %cmp5612 = icmp slt i8 %1077, 0
  %or.cond6649 = select i1 %cmp5612, i1 %loadedv, i1 false
  br i1 %or.cond6649, label %if.then5617, label %if.else5640

if.then5617:                                      ; preds = %if.then5609
  %c1_utf85619 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 88
  %idxprom5621 = zext i8 %1077 to i64
  %arrayidx5622 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom5621
  %1078 = load i8, ptr %arrayidx5622, align 1
  %conv5623 = zext i8 %1078 to i64
  %bcmp = call i32 @bcmp(ptr nonnull %locinput.23, ptr nonnull %c1_utf85619, i64 %conv5623)
  %tobool5625.not = icmp eq i32 %bcmp, 0
  br i1 %tobool5625.not, label %if.then5664, label %lor.rhs5626

lor.rhs5626:                                      ; preds = %if.then5617
  %c2_utf85628 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 102
  %bcmp8684 = call i32 @bcmp(ptr nonnull %locinput.23, ptr nonnull %c2_utf85628, i64 %conv5623)
  %tobool5634.not = icmp eq i32 %bcmp8684, 0
  br label %if.end5656

if.else5640:                                      ; preds = %if.then5609
  %cmp5644 = icmp eq i32 %1076, %conv5610
  br i1 %cmp5644, label %if.then5664, label %lor.rhs5646

lor.rhs5646:                                      ; preds = %if.else5640
  %c25649 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 36
  %1079 = load i32, ptr %c25649, align 4
  %cmp5650 = icmp eq i32 %1079, %conv5610
  br label %if.end5656

if.end5656:                                       ; preds = %lor.rhs5646, %lor.rhs5626, %if.end5597
  %could_match.0 = phi i1 [ %cmp5599, %if.end5597 ], [ %tobool5634.not, %lor.rhs5626 ], [ %cmp5650, %lor.rhs5646 ]
  %cmp5659 = icmp eq i32 %1076, -1000
  %or.cond6650 = select i1 %cmp5659, i1 true, i1 %could_match.0
  br i1 %or.cond6650, label %if.then5664, label %do.body5739

if.then5664:                                      ; preds = %if.end5656, %if.else5640, %if.then5617
  %sw.0.ph9430.lcssa14650 = phi i1 [ %sw.0.ph9430, %if.else5640 ], [ %sw.0.ph9430, %if.then5617 ], [ %sw.0.ph9430, %if.end5656 ]
  %match.1.ph.lcssa14572 = phi i8 [ %match.1.ph, %if.else5640 ], [ %match.1.ph, %if.then5617 ], [ %match.1.ph, %if.end5656 ]
  %is_utf8_pat.1.ph.lcssa14497 = phi i8 [ %is_utf8_pat.1.ph, %if.else5640 ], [ %is_utf8_pat.1.ph, %if.then5617 ], [ %is_utf8_pat.1.ph, %if.end5656 ]
  %logical.1.ph.lcssa14423 = phi i32 [ %logical.1.ph, %if.else5640 ], [ %logical.1.ph, %if.then5617 ], [ %logical.1.ph, %if.end5656 ]
  %sv_yes_mark.1.ph.lcssa14346 = phi ptr [ %sv_yes_mark.1.ph, %if.else5640 ], [ %sv_yes_mark.1.ph, %if.then5617 ], [ %sv_yes_mark.1.ph, %if.end5656 ]
  %sv_commit.1.ph.lcssa14269 = phi ptr [ %sv_commit.1.ph, %if.else5640 ], [ %sv_commit.1.ph, %if.then5617 ], [ %sv_commit.1.ph, %if.end5656 ]
  %popmark.1.ph.lcssa14190 = phi ptr [ %popmark.1.ph, %if.else5640 ], [ %popmark.1.ph, %if.then5617 ], [ %popmark.1.ph, %if.end5656 ]
  %do_cutgroup.1.ph.lcssa14112 = phi i8 [ %do_cutgroup.1.ph, %if.else5640 ], [ %do_cutgroup.1.ph, %if.then5617 ], [ %do_cutgroup.1.ph, %if.end5656 ]
  %no_final.1.ph.lcssa14034 = phi i8 [ %no_final.1.ph, %if.else5640 ], [ %no_final.1.ph, %if.then5617 ], [ %no_final.1.ph, %if.end5656 ]
  %cur_curlyx.1.ph.lcssa13958 = phi ptr [ %cur_curlyx.1.ph, %if.else5640 ], [ %cur_curlyx.1.ph, %if.then5617 ], [ %cur_curlyx.1.ph, %if.end5656 ]
  %cur_eval.1.ph.lcssa13881 = phi ptr [ %cur_eval.1.ph, %if.else5640 ], [ %cur_eval.1.ph, %if.then5617 ], [ %cur_eval.1.ph, %if.end5656 ]
  %mark_state.1.ph.lcssa13804 = phi ptr [ %mark_state.1.ph, %if.else5640 ], [ %mark_state.1.ph, %if.then5617 ], [ %mark_state.1.ph, %if.end5656 ]
  %yes_state.1.ph.lcssa13726 = phi ptr [ %yes_state.1.ph, %if.else5640 ], [ %yes_state.1.ph, %if.then5617 ], [ %yes_state.1.ph, %if.end5656 ]
  %nochange_depth.1.ph.lcssa13652 = phi i32 [ %nochange_depth.1.ph, %if.else5640 ], [ %nochange_depth.1.ph, %if.then5617 ], [ %nochange_depth.1.ph, %if.end5656 ]
  %depth.1.ph.lcssa13573 = phi i32 [ %depth.1.ph, %if.else5640 ], [ %depth.1.ph, %if.then5617 ], [ %depth.1.ph, %if.end5656 ]
  %next.1.ph.lcssa13499 = phi ptr [ %next.1.ph, %if.else5640 ], [ %next.1.ph, %if.then5617 ], [ %next.1.ph, %if.end5656 ]
  %st.1.ph.lcssa13420 = phi ptr [ %st.1.ph, %if.else5640 ], [ %st.1.ph, %if.then5617 ], [ %st.1.ph, %if.end5656 ]
  %rexi.1.ph.lcssa13345 = phi ptr [ %rexi.1.ph, %if.else5640 ], [ %rexi.1.ph, %if.then5617 ], [ %rexi.1.ph, %if.end5656 ]
  %rex.1.ph.lcssa13269 = phi ptr [ %rex.1.ph, %if.else5640 ], [ %rex.1.ph, %if.then5617 ], [ %rex.1.ph, %if.end5656 ]
  %rex_sv.1.ph.lcssa13192 = phi ptr [ %rex_sv.1.ph, %if.else5640 ], [ %rex_sv.1.ph, %if.then5617 ], [ %rex_sv.1.ph, %if.end5656 ]
  %minmod.110086.lcssa = phi i8 [ %minmod.110086, %if.else5640 ], [ %minmod.110086, %if.then5617 ], [ %minmod.110086, %if.end5656 ]
  %locinput.23.lcssa = phi ptr [ %locinput.23, %if.else5640 ], [ %locinput.23, %if.then5617 ], [ %locinput.23, %if.end5656 ]
  %u5602.le = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13420, i64 16
  %1080 = load i32, ptr %u5602.le, align 8
  %tobool5667.not = icmp eq i32 %1080, 0
  br i1 %tobool5667.not, label %cleanup5735, label %if.then5668

if.then5668:                                      ; preds = %if.then5664
  %count5670 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13420, i64 56
  %1081 = load i32, ptr %count5670, align 8
  %tobool5671.not = icmp eq i32 %1081, 0
  br i1 %tobool5671.not, label %if.else5716, label %if.then5672

if.then5672:                                      ; preds = %if.then5668
  %1082 = load i8, ptr %is_utf8_target, align 2, !range !0, !noundef !1
  %loadedv5674 = trunc nuw i8 %1082 to i1
  br i1 %loadedv5674, label %cond.true5676, label %cond.false5679

cond.true5676:                                    ; preds = %if.then5672
  %1083 = load ptr, ptr %strbeg5677, align 8
  %lim63.i9164 = ptrtoint ptr %1083 to i64
  %cmp551.i9166 = icmp ugt ptr %locinput.23.lcssa, %1083
  br i1 %cmp551.i9166, label %while.body8.i9168.preheader, label %cond.end5681

while.body8.i9168.preheader:                      ; preds = %cond.true5676
  br label %while.body8.i9168

while.body8.i9168:                                ; preds = %while.body8.i9168.preheader
  %s.addr.15264.i9171 = ptrtoint ptr %locinput.23.lcssa to i64
  %incdec.ptr.i9173 = getelementptr inbounds i8, ptr %locinput.23.lcssa, i64 -1
  %1084 = load i8, ptr %incdec.ptr.i9173, align 1
  %tobool10.not.i9174 = icmp sgt i8 %1084, -1
  br i1 %tobool10.not.i9174, label %if.end28.i9184, label %while.cond12.preheader.i9175

while.cond12.preheader.i9175:                     ; preds = %while.body8.i9168
  %cmp1348.i9176 = icmp ugt ptr %incdec.ptr.i9173, %1083
  br i1 %cmp1348.i9176, label %land.rhs15.preheader.i9188, label %while.end23thread-pre-split.i9177

land.rhs15.preheader.i9188:                       ; preds = %while.cond12.preheader.i9175
  %scevgep.i9189 = getelementptr i8, ptr %locinput.23.lcssa, i64 %lim63.i9164
  %1085 = sub i64 0, %s.addr.15264.i9171
  %scevgep65.i9190 = getelementptr i8, ptr %scevgep.i9189, i64 %1085
  br label %land.rhs15.i9191

land.rhs15.i9191:                                 ; preds = %while.body21.i9194, %land.rhs15.preheader.i9188
  %s.addr.249.i9192 = phi ptr [ %incdec.ptr22.i9195, %while.body21.i9194 ], [ %incdec.ptr.i9173, %land.rhs15.preheader.i9188 ]
  %1086 = load i8, ptr %s.addr.249.i9192, align 1
  %cmp18.i9193 = icmp slt i8 %1086, -64
  br i1 %cmp18.i9193, label %while.body21.i9194, label %while.end23.i9180.loopexit

while.body21.i9194:                               ; preds = %land.rhs15.i9191
  %incdec.ptr22.i9195 = getelementptr inbounds i8, ptr %s.addr.249.i9192, i64 -1
  %cmp13.i9196 = icmp ugt ptr %incdec.ptr22.i9195, %1083
  br i1 %cmp13.i9196, label %land.rhs15.i9191, label %while.end23thread-pre-split.i9177.loopexit, !llvm.loop !13

while.end23thread-pre-split.i9177.loopexit:       ; preds = %while.body21.i9194
  br label %while.end23thread-pre-split.i9177

while.end23thread-pre-split.i9177:                ; preds = %while.end23thread-pre-split.i9177.loopexit, %while.cond12.preheader.i9175
  %s.addr.2.lcssa.i9178 = phi ptr [ %incdec.ptr.i9173, %while.cond12.preheader.i9175 ], [ %scevgep65.i9190, %while.end23thread-pre-split.i9177.loopexit ]
  %.pr.i9179 = load i8, ptr %s.addr.2.lcssa.i9178, align 1
  br label %while.end23.i9180

while.end23.i9180.loopexit:                       ; preds = %land.rhs15.i9191
  %s.addr.249.i9192.lcssa = phi ptr [ %s.addr.249.i9192, %land.rhs15.i9191 ]
  %.lcssa14690 = phi i8 [ %1086, %land.rhs15.i9191 ]
  br label %while.end23.i9180

while.end23.i9180:                                ; preds = %while.end23.i9180.loopexit, %while.end23thread-pre-split.i9177
  %s.addr.247.i9181 = phi ptr [ %s.addr.2.lcssa.i9178, %while.end23thread-pre-split.i9177 ], [ %s.addr.249.i9192.lcssa, %while.end23.i9180.loopexit ]
  %1087 = phi i8 [ %.pr.i9179, %while.end23thread-pre-split.i9177 ], [ %.lcssa14690, %while.end23.i9180.loopexit ]
  %cmp25.i9182 = icmp ugt i8 %1087, -63
  br i1 %cmp25.i9182, label %if.end28.i9184, label %if.then27.i9183

if.then27.i9183:                                  ; preds = %while.end23.i9180
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #10
  br label %if.end28.i9184

if.end28.i9184:                                   ; preds = %if.then27.i9183, %while.end23.i9180, %while.body8.i9168
  %s.addr.3.i9185 = phi ptr [ %s.addr.247.i9181, %while.end23.i9180 ], [ %s.addr.247.i9181, %if.then27.i9183 ], [ %incdec.ptr.i9173, %while.body8.i9168 ]
  br label %cond.end5681.loopexit

cond.false5679:                                   ; preds = %if.then5672
  %add.ptr5680 = getelementptr inbounds i8, ptr %locinput.23.lcssa, i64 -1
  br label %cond.end5681

cond.end5681.loopexit:                            ; preds = %if.end28.i9184
  %s.addr.3.i9185.lcssa = phi ptr [ %s.addr.3.i9185, %if.end28.i9184 ]
  br label %cond.end5681

cond.end5681:                                     ; preds = %cond.end5681.loopexit, %cond.false5679, %cond.true5676
  %cond5682 = phi ptr [ %add.ptr5680, %cond.false5679 ], [ %locinput.23.lcssa, %cond.true5676 ], [ %s.addr.3.i9185.lcssa, %cond.end5681.loopexit ]
  %1088 = load ptr, ptr %strbeg5683, align 8
  %sub.ptr.lhs.cast5684 = ptrtoint ptr %cond5682 to i64
  %sub.ptr.rhs.cast5685 = ptrtoint ptr %1088 to i64
  %sub.ptr.sub5686 = sub i64 %sub.ptr.lhs.cast5684, %sub.ptr.rhs.cast5685
  %offs5687 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13269, i64 120
  %1089 = load ptr, ptr %offs5687, align 8
  %1090 = load i32, ptr %u5602.le, align 8
  %idxprom5690 = zext i32 %1090 to i64
  %arrayidx5691 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %1089, i64 %idxprom5690
  store i64 %sub.ptr.sub5686, ptr %arrayidx5691, align 8
  %1091 = load ptr, ptr %strbeg5683, align 8
  %sub.ptr.lhs.cast5694 = ptrtoint ptr %locinput.23.lcssa to i64
  %sub.ptr.rhs.cast5695 = ptrtoint ptr %1091 to i64
  %sub.ptr.sub5696 = sub i64 %sub.ptr.lhs.cast5694, %sub.ptr.rhs.cast5695
  %1092 = load ptr, ptr %offs5687, align 8
  %1093 = load i32, ptr %u5602.le, align 8
  %idxprom5700 = zext i32 %1093 to i64
  %arrayidx5701 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %1092, i64 %idxprom5700
  %end5702 = getelementptr inbounds nuw i8, ptr %arrayidx5701, i64 8
  store i64 %sub.ptr.sub5696, ptr %end5702, align 8
  %1094 = load i32, ptr %u5602.le, align 8
  %lastparen5705 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13269, i64 112
  %1095 = load i32, ptr %lastparen5705, align 8
  %cmp5706 = icmp ugt i32 %1094, %1095
  br i1 %cmp5706, label %if.then5708, label %if.end5712

if.then5708:                                      ; preds = %cond.end5681
  store i32 %1094, ptr %lastparen5705, align 8
  br label %if.end5712

if.end5712:                                       ; preds = %if.then5708, %cond.end5681
  %1096 = load i32, ptr %u5602.le, align 8
  %lastcloseparen5715 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13269, i64 116
  store i32 %1096, ptr %lastcloseparen5715, align 4
  br label %cleanup5735

if.else5716:                                      ; preds = %if.then5668
  %offs5717 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13269, i64 120
  %1097 = load ptr, ptr %offs5717, align 8
  %idxprom5720 = zext i32 %1080 to i64
  %arrayidx5721 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %1097, i64 %idxprom5720
  %end5722 = getelementptr inbounds nuw i8, ptr %arrayidx5721, i64 8
  store i64 -1, ptr %end5722, align 8
  %lastparen5724 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13420, i64 24
  %1098 = load i32, ptr %lastparen5724, align 8
  %lastparen5725 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13269, i64 112
  store i32 %1098, ptr %lastparen5725, align 8
  %lastcloseparen5727 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13420, i64 28
  %1099 = load i32, ptr %lastcloseparen5727, align 4
  %lastcloseparen5728 = getelementptr inbounds nuw i8, ptr %rex.1.ph.lcssa13269, i64 116
  store i32 %1099, ptr %lastcloseparen5728, align 4
  br label %cleanup5735

cleanup5735:                                      ; preds = %if.else5716, %if.end5712, %if.then5664
  %B5732 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13420, i64 80
  %1100 = load ptr, ptr %B5732, align 8
  store i32 122, ptr %st.1.ph.lcssa13420, align 8
  br label %push_state

do.body5739.loopexit:                             ; preds = %cond.end42
  %minmod.1.lcssa12912 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12652 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12519 = phi ptr [ %scan.1, %cond.end42 ]
  br label %do.body5739

do.body5739:                                      ; preds = %do.body5739.loopexit, %if.end5656
  %minmod.110087 = phi i8 [ %minmod.110086, %if.end5656 ], [ %minmod.1.lcssa12912, %do.body5739.loopexit ]
  %locinput.24 = phi ptr [ %locinput.23, %if.end5656 ], [ %locinput.1.lcssa12652, %do.body5739.loopexit ]
  %scan.12 = phi ptr [ %scan.10, %if.end5656 ], [ %scan.1.lcssa12519, %do.body5739.loopexit ]
  %1101 = load i32, ptr @PL_savestack_ix, align 4
  %u5740 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 16
  %cp5741 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 20
  %1102 = load i32, ptr %cp5741, align 4
  %cmp5742 = icmp sgt i32 %1101, %1102
  br i1 %cmp5742, label %if.then5744, label %do.end5749

if.then5744:                                      ; preds = %do.body5739
  call void @Perl_leave_scope(i32 noundef %1102) #10
  br label %do.end5749

do.end5749:                                       ; preds = %if.then5744, %do.body5739
  %1103 = load i32, ptr %u5740, align 8
  %tobool5752.not = icmp eq i32 %1103, 0
  br i1 %tobool5752.not, label %if.end5772, label %if.then5753

if.then5753:                                      ; preds = %do.end5749
  %lastparen5754 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 112
  %1104 = load i32, ptr %lastparen5754, align 8
  %lastparen5757 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %1105 = load i32, ptr %lastparen5757, align 8
  %cmp575812032 = icmp ugt i32 %1104, %1105
  br i1 %cmp575812032, label %for.body5760.lr.ph, label %for.end5767

for.body5760.lr.ph:                               ; preds = %if.then5753
  %offs5761 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 120
  br label %for.body5760

for.body5760:                                     ; preds = %for.body5760, %for.body5760.lr.ph
  %n.712033 = phi i32 [ %1104, %for.body5760.lr.ph ], [ %dec5766, %for.body5760 ]
  %1106 = load ptr, ptr %offs5761, align 8
  %idxprom5762 = zext i32 %n.712033 to i64
  %arrayidx5763 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %1106, i64 %idxprom5762
  %end5764 = getelementptr inbounds nuw i8, ptr %arrayidx5763, i64 8
  store i64 -1, ptr %end5764, align 8
  %dec5766 = add i32 %n.712033, -1
  %1107 = load i32, ptr %lastparen5757, align 8
  %cmp5758 = icmp ugt i32 %dec5766, %1107
  br i1 %cmp5758, label %for.body5760, label %for.end5767.loopexit, !llvm.loop !32

for.end5767.loopexit:                             ; preds = %for.body5760
  %dec5766.lcssa = phi i32 [ %dec5766, %for.body5760 ]
  br label %for.end5767

for.end5767:                                      ; preds = %for.end5767.loopexit, %if.then5753
  %n.7.lcssa = phi i32 [ %1104, %if.then5753 ], [ %dec5766.lcssa, %for.end5767.loopexit ]
  store i32 %n.7.lcssa, ptr %lastparen5754, align 8
  %lastcloseparen5770 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 28
  %1108 = load i32, ptr %lastcloseparen5770, align 4
  %lastcloseparen5771 = getelementptr inbounds nuw i8, ptr %rex.1.ph, i64 116
  store i32 %1108, ptr %lastcloseparen5771, align 4
  br label %if.end5772

if.end5772:                                       ; preds = %for.end5767, %do.end5749
  %count5774 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 56
  %1109 = load i32, ptr %count5774, align 8
  %dec5775 = add nsw i32 %1109, -1
  store i32 %dec5775, ptr %count5774, align 8
  %min5777 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 60
  %1110 = load i32, ptr %min5777, align 4
  %cmp5778.not = icmp sgt i32 %1109, %1110
  br i1 %cmp5778.not, label %if.end5781, label %no_silent

if.end5781:                                       ; preds = %if.end5772
  %1111 = load i8, ptr %is_utf8_target, align 2, !range !0, !noundef !1
  %loadedv5783 = trunc nuw i8 %1111 to i1
  br i1 %loadedv5783, label %cond.true5785, label %cond.false5788

cond.true5785:                                    ; preds = %if.end5781
  %1112 = load ptr, ptr %strbeg5786, align 8
  %lim63.i9198 = ptrtoint ptr %1112 to i64
  %cmp551.i9200 = icmp ugt ptr %locinput.24, %1112
  br i1 %cmp551.i9200, label %while.body8.i9202.preheader, label %cond.end5790

while.body8.i9202.preheader:                      ; preds = %cond.true5785
  br label %while.body8.i9202

while.body8.i9202:                                ; preds = %while.body8.i9202.preheader
  %s.addr.15264.i9205 = ptrtoint ptr %locinput.24 to i64
  %incdec.ptr.i9207 = getelementptr inbounds i8, ptr %locinput.24, i64 -1
  %1113 = load i8, ptr %incdec.ptr.i9207, align 1
  %tobool10.not.i9208 = icmp sgt i8 %1113, -1
  br i1 %tobool10.not.i9208, label %if.end28.i9218, label %while.cond12.preheader.i9209

while.cond12.preheader.i9209:                     ; preds = %while.body8.i9202
  %cmp1348.i9210 = icmp ugt ptr %incdec.ptr.i9207, %1112
  br i1 %cmp1348.i9210, label %land.rhs15.preheader.i9222, label %while.end23thread-pre-split.i9211

land.rhs15.preheader.i9222:                       ; preds = %while.cond12.preheader.i9209
  %scevgep.i9223 = getelementptr i8, ptr %locinput.24, i64 %lim63.i9198
  %1114 = sub i64 0, %s.addr.15264.i9205
  %scevgep65.i9224 = getelementptr i8, ptr %scevgep.i9223, i64 %1114
  br label %land.rhs15.i9225

land.rhs15.i9225:                                 ; preds = %while.body21.i9228, %land.rhs15.preheader.i9222
  %s.addr.249.i9226 = phi ptr [ %incdec.ptr22.i9229, %while.body21.i9228 ], [ %incdec.ptr.i9207, %land.rhs15.preheader.i9222 ]
  %1115 = load i8, ptr %s.addr.249.i9226, align 1
  %cmp18.i9227 = icmp slt i8 %1115, -64
  br i1 %cmp18.i9227, label %while.body21.i9228, label %while.end23.i9214.loopexit

while.body21.i9228:                               ; preds = %land.rhs15.i9225
  %incdec.ptr22.i9229 = getelementptr inbounds i8, ptr %s.addr.249.i9226, i64 -1
  %cmp13.i9230 = icmp ugt ptr %incdec.ptr22.i9229, %1112
  br i1 %cmp13.i9230, label %land.rhs15.i9225, label %while.end23thread-pre-split.i9211.loopexit, !llvm.loop !13

while.end23thread-pre-split.i9211.loopexit:       ; preds = %while.body21.i9228
  br label %while.end23thread-pre-split.i9211

while.end23thread-pre-split.i9211:                ; preds = %while.end23thread-pre-split.i9211.loopexit, %while.cond12.preheader.i9209
  %s.addr.2.lcssa.i9212 = phi ptr [ %incdec.ptr.i9207, %while.cond12.preheader.i9209 ], [ %scevgep65.i9224, %while.end23thread-pre-split.i9211.loopexit ]
  %.pr.i9213 = load i8, ptr %s.addr.2.lcssa.i9212, align 1
  br label %while.end23.i9214

while.end23.i9214.loopexit:                       ; preds = %land.rhs15.i9225
  %s.addr.249.i9226.lcssa = phi ptr [ %s.addr.249.i9226, %land.rhs15.i9225 ]
  %.lcssa13108 = phi i8 [ %1115, %land.rhs15.i9225 ]
  br label %while.end23.i9214

while.end23.i9214:                                ; preds = %while.end23.i9214.loopexit, %while.end23thread-pre-split.i9211
  %s.addr.247.i9215 = phi ptr [ %s.addr.2.lcssa.i9212, %while.end23thread-pre-split.i9211 ], [ %s.addr.249.i9226.lcssa, %while.end23.i9214.loopexit ]
  %1116 = phi i8 [ %.pr.i9213, %while.end23thread-pre-split.i9211 ], [ %.lcssa13108, %while.end23.i9214.loopexit ]
  %cmp25.i9216 = icmp ugt i8 %1116, -63
  br i1 %cmp25.i9216, label %if.end28.i9218, label %if.then27.i9217

if.then27.i9217:                                  ; preds = %while.end23.i9214
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #10
  br label %if.end28.i9218

if.end28.i9218:                                   ; preds = %if.then27.i9217, %while.end23.i9214, %while.body8.i9202
  %s.addr.3.i9219 = phi ptr [ %s.addr.247.i9215, %while.end23.i9214 ], [ %s.addr.247.i9215, %if.then27.i9217 ], [ %incdec.ptr.i9207, %while.body8.i9202 ]
  br label %cond.end5790.loopexit

cond.false5788:                                   ; preds = %if.end5781
  %add.ptr5789 = getelementptr inbounds i8, ptr %locinput.24, i64 -1
  br label %cond.end5790

cond.end5790.loopexit:                            ; preds = %if.end28.i9218
  %s.addr.3.i9219.lcssa = phi ptr [ %s.addr.3.i9219, %if.end28.i9218 ]
  br label %cond.end5790

cond.end5790:                                     ; preds = %cond.end5790.loopexit, %cond.false5788, %cond.true5785
  %cond5791 = phi ptr [ %add.ptr5789, %cond.false5788 ], [ %locinput.24, %cond.true5785 ], [ %s.addr.3.i9219.lcssa, %cond.end5790.loopexit ]
  br label %curly_try_B_max

fake_end.loopexit:                                ; preds = %for.inc3315, %if.end3299, %land.rhs3261
  br label %fake_end

fake_end.loopexit12315:                           ; preds = %cond.end42
  %minmod.1.lcssa12913 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12653 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12520 = phi ptr [ %scan.1, %cond.end42 ]
  br label %fake_end

fake_end:                                         ; preds = %fake_end.loopexit12315, %fake_end.loopexit, %sw.bb3255
  %minmod.112949 = phi i8 [ %minmod.1.lcssa12913, %fake_end.loopexit12315 ], [ %minmod.1.lcssa12883, %fake_end.loopexit ], [ %minmod.1.lcssa12883, %sw.bb3255 ]
  %locinput.112685 = phi ptr [ %locinput.1.lcssa12653, %fake_end.loopexit12315 ], [ %locinput.1.lcssa12623, %fake_end.loopexit ], [ %locinput.1.lcssa12623, %sw.bb3255 ]
  %scan.112560 = phi ptr [ %scan.1.lcssa12520, %fake_end.loopexit12315 ], [ %scan.1.lcssa12490, %fake_end.loopexit ], [ %scan.1.lcssa12490, %sw.bb3255 ]
  %tobool5794.not = icmp eq ptr %cur_eval.1.ph, null
  br i1 %tobool5794.not, label %if.end5839, label %if.then5795.loopexit12318

if.then5795.loopexit:                             ; preds = %land.lhs.true3306
  %sw.0.ph9430.lcssa14662 = phi i1 [ %sw.0.ph9430, %land.lhs.true3306 ]
  %match.1.ph.lcssa14584 = phi i8 [ %match.1.ph, %land.lhs.true3306 ]
  %logical.1.ph.lcssa14435 = phi i32 [ %logical.1.ph, %land.lhs.true3306 ]
  %sv_yes_mark.1.ph.lcssa14358 = phi ptr [ %sv_yes_mark.1.ph, %land.lhs.true3306 ]
  %sv_commit.1.ph.lcssa14281 = phi ptr [ %sv_commit.1.ph, %land.lhs.true3306 ]
  %popmark.1.ph.lcssa14202 = phi ptr [ %popmark.1.ph, %land.lhs.true3306 ]
  %do_cutgroup.1.ph.lcssa14124 = phi i8 [ %do_cutgroup.1.ph, %land.lhs.true3306 ]
  %no_final.1.ph.lcssa14046 = phi i8 [ %no_final.1.ph, %land.lhs.true3306 ]
  %cur_eval.1.ph.lcssa13893 = phi ptr [ %cur_eval.1.ph, %land.lhs.true3306 ]
  %mark_state.1.ph.lcssa13816 = phi ptr [ %mark_state.1.ph, %land.lhs.true3306 ]
  %yes_state.1.ph.lcssa13738 = phi ptr [ %yes_state.1.ph, %land.lhs.true3306 ]
  %nochange_depth.1.ph.lcssa13664 = phi i32 [ %nochange_depth.1.ph, %land.lhs.true3306 ]
  %depth.1.ph.lcssa13585 = phi i32 [ %depth.1.ph, %land.lhs.true3306 ]
  %next.1.ph.lcssa13511 = phi ptr [ %next.1.ph, %land.lhs.true3306 ]
  %st.1.ph.lcssa13432 = phi ptr [ %st.1.ph, %land.lhs.true3306 ]
  %rex.1.ph.lcssa13281 = phi ptr [ %rex.1.ph, %land.lhs.true3306 ]
  %rex_sv.1.ph.lcssa13204 = phi ptr [ %rex_sv.1.ph, %land.lhs.true3306 ]
  %minmod.1.lcssa12883.lcssa = phi i8 [ %minmod.1.lcssa12883, %land.lhs.true3306 ]
  %locinput.1.lcssa12623.lcssa = phi ptr [ %locinput.1.lcssa12623, %land.lhs.true3306 ]
  br label %if.then5795

if.then5795.loopexit12317:                        ; preds = %land.lhs.true4017
  %sw.0.ph9430.lcssa14654 = phi i1 [ %sw.0.ph9430, %land.lhs.true4017 ]
  %match.1.ph.lcssa14576 = phi i8 [ %match.1.ph, %land.lhs.true4017 ]
  %logical.1.ph.lcssa14427 = phi i32 [ %logical.1.ph, %land.lhs.true4017 ]
  %sv_yes_mark.1.ph.lcssa14350 = phi ptr [ %sv_yes_mark.1.ph, %land.lhs.true4017 ]
  %sv_commit.1.ph.lcssa14273 = phi ptr [ %sv_commit.1.ph, %land.lhs.true4017 ]
  %popmark.1.ph.lcssa14194 = phi ptr [ %popmark.1.ph, %land.lhs.true4017 ]
  %do_cutgroup.1.ph.lcssa14116 = phi i8 [ %do_cutgroup.1.ph, %land.lhs.true4017 ]
  %no_final.1.ph.lcssa14038 = phi i8 [ %no_final.1.ph, %land.lhs.true4017 ]
  %cur_eval.1.ph.lcssa13885 = phi ptr [ %cur_eval.1.ph, %land.lhs.true4017 ]
  %mark_state.1.ph.lcssa13808 = phi ptr [ %mark_state.1.ph, %land.lhs.true4017 ]
  %yes_state.1.ph.lcssa13730 = phi ptr [ %yes_state.1.ph, %land.lhs.true4017 ]
  %nochange_depth.1.ph.lcssa13656 = phi i32 [ %nochange_depth.1.ph, %land.lhs.true4017 ]
  %depth.1.ph.lcssa13577 = phi i32 [ %depth.1.ph, %land.lhs.true4017 ]
  %next.1.ph.lcssa13503 = phi ptr [ %next.1.ph, %land.lhs.true4017 ]
  %st.1.ph.lcssa13424 = phi ptr [ %st.1.ph, %land.lhs.true4017 ]
  %rex.1.ph.lcssa13273 = phi ptr [ %rex.1.ph, %land.lhs.true4017 ]
  %rex_sv.1.ph.lcssa13196 = phi ptr [ %rex_sv.1.ph, %land.lhs.true4017 ]
  %minmod.1.lcssa12931 = phi i8 [ %minmod.1, %land.lhs.true4017 ]
  %locinput.1.lcssa12671 = phi ptr [ %locinput.1, %land.lhs.true4017 ]
  br label %if.then5795

if.then5795.loopexit12318:                        ; preds = %fake_end, %land.lhs.true5589, %if.then4497
  %sw.0.ph9430.lcssa14649 = phi i1 [ %sw.0.ph9430, %fake_end ], [ %sw.0.ph9430, %land.lhs.true5589 ], [ %sw.0.ph9430, %if.then4497 ]
  %match.1.ph.lcssa14571 = phi i8 [ %match.1.ph, %fake_end ], [ %match.1.ph, %land.lhs.true5589 ], [ %match.1.ph, %if.then4497 ]
  %logical.1.ph.lcssa14422 = phi i32 [ %logical.1.ph, %fake_end ], [ %logical.1.ph, %land.lhs.true5589 ], [ %logical.1.ph, %if.then4497 ]
  %sv_yes_mark.1.ph.lcssa14345 = phi ptr [ %sv_yes_mark.1.ph, %fake_end ], [ %sv_yes_mark.1.ph, %land.lhs.true5589 ], [ %sv_yes_mark.1.ph, %if.then4497 ]
  %sv_commit.1.ph.lcssa14268 = phi ptr [ %sv_commit.1.ph, %fake_end ], [ %sv_commit.1.ph, %land.lhs.true5589 ], [ %sv_commit.1.ph, %if.then4497 ]
  %popmark.1.ph.lcssa14189 = phi ptr [ %popmark.1.ph, %fake_end ], [ %popmark.1.ph, %land.lhs.true5589 ], [ %popmark.1.ph, %if.then4497 ]
  %do_cutgroup.1.ph.lcssa14111 = phi i8 [ %do_cutgroup.1.ph, %fake_end ], [ %do_cutgroup.1.ph, %land.lhs.true5589 ], [ %do_cutgroup.1.ph, %if.then4497 ]
  %no_final.1.ph.lcssa14033 = phi i8 [ %no_final.1.ph, %fake_end ], [ %no_final.1.ph, %land.lhs.true5589 ], [ %no_final.1.ph, %if.then4497 ]
  %cur_eval.1.ph.lcssa13880 = phi ptr [ %cur_eval.1.ph, %fake_end ], [ %cur_eval.1.ph, %land.lhs.true5589 ], [ %cur_eval.1.ph, %if.then4497 ]
  %mark_state.1.ph.lcssa13803 = phi ptr [ %mark_state.1.ph, %fake_end ], [ %mark_state.1.ph, %land.lhs.true5589 ], [ %mark_state.1.ph, %if.then4497 ]
  %yes_state.1.ph.lcssa13725 = phi ptr [ %yes_state.1.ph, %fake_end ], [ %yes_state.1.ph, %land.lhs.true5589 ], [ %yes_state.1.ph, %if.then4497 ]
  %nochange_depth.1.ph.lcssa13651 = phi i32 [ %nochange_depth.1.ph, %fake_end ], [ %nochange_depth.1.ph, %land.lhs.true5589 ], [ %nochange_depth.1.ph, %if.then4497 ]
  %depth.1.ph.lcssa13572 = phi i32 [ %depth.1.ph, %fake_end ], [ %depth.1.ph, %land.lhs.true5589 ], [ %depth.1.ph, %if.then4497 ]
  %next.1.ph.lcssa13498 = phi ptr [ %next.1.ph, %fake_end ], [ %next.1.ph, %land.lhs.true5589 ], [ %next.1.ph, %if.then4497 ]
  %st.1.ph.lcssa13419 = phi ptr [ %st.1.ph, %fake_end ], [ %st.1.ph, %land.lhs.true5589 ], [ %st.1.ph, %if.then4497 ]
  %rex.1.ph.lcssa13268 = phi ptr [ %rex.1.ph, %fake_end ], [ %rex.1.ph, %land.lhs.true5589 ], [ %rex.1.ph, %if.then4497 ]
  %rex_sv.1.ph.lcssa13191 = phi ptr [ %rex_sv.1.ph, %fake_end ], [ %rex_sv.1.ph, %land.lhs.true5589 ], [ %rex_sv.1.ph, %if.then4497 ]
  %locinput.259361.ph = phi ptr [ %locinput.112685, %fake_end ], [ %locinput.23, %land.lhs.true5589 ], [ %locinput.10.lcssa, %if.then4497 ]
  %minmod.69360.ph = phi i8 [ %minmod.112949, %fake_end ], [ %minmod.110086, %land.lhs.true5589 ], [ %minmod.3.lcssa, %if.then4497 ]
  br label %if.then5795

if.then5795:                                      ; preds = %if.then5795.loopexit12318, %if.then5795.loopexit12317, %if.then5795.loopexit, %land.lhs.true5570, %land.lhs.true5421, %land.lhs.true3248
  %sw.0.ph943014681 = phi i1 [ %sw.0.ph943014682, %land.lhs.true5570 ], [ %sw.0.ph9430.lcssa14623, %land.lhs.true3248 ], [ %sw.0.ph9430.lcssa14652, %land.lhs.true5421 ], [ %sw.0.ph9430.lcssa14662, %if.then5795.loopexit ], [ %sw.0.ph9430.lcssa14654, %if.then5795.loopexit12317 ], [ %sw.0.ph9430.lcssa14649, %if.then5795.loopexit12318 ]
  %match.1.ph14607 = phi i8 [ %match.1.ph14609, %land.lhs.true5570 ], [ %match.1.ph.lcssa14543, %land.lhs.true3248 ], [ %match.1.ph.lcssa14574, %land.lhs.true5421 ], [ %match.1.ph.lcssa14584, %if.then5795.loopexit ], [ %match.1.ph.lcssa14576, %if.then5795.loopexit12317 ], [ %match.1.ph.lcssa14571, %if.then5795.loopexit12318 ]
  %logical.1.ph14454 = phi i32 [ %logical.1.ph14455, %land.lhs.true5570 ], [ %logical.1.ph.lcssa14394, %land.lhs.true3248 ], [ %logical.1.ph.lcssa14425, %land.lhs.true5421 ], [ %logical.1.ph.lcssa14435, %if.then5795.loopexit ], [ %logical.1.ph.lcssa14427, %if.then5795.loopexit12317 ], [ %logical.1.ph.lcssa14422, %if.then5795.loopexit12318 ]
  %sv_yes_mark.1.ph14381 = phi ptr [ %sv_yes_mark.1.ph14382, %land.lhs.true5570 ], [ %sv_yes_mark.1.ph.lcssa14317, %land.lhs.true3248 ], [ %sv_yes_mark.1.ph.lcssa14348, %land.lhs.true5421 ], [ %sv_yes_mark.1.ph.lcssa14358, %if.then5795.loopexit ], [ %sv_yes_mark.1.ph.lcssa14350, %if.then5795.loopexit12317 ], [ %sv_yes_mark.1.ph.lcssa14345, %if.then5795.loopexit12318 ]
  %sv_commit.1.ph14304 = phi ptr [ %sv_commit.1.ph14305, %land.lhs.true5570 ], [ %sv_commit.1.ph.lcssa14240, %land.lhs.true3248 ], [ %sv_commit.1.ph.lcssa14271, %land.lhs.true5421 ], [ %sv_commit.1.ph.lcssa14281, %if.then5795.loopexit ], [ %sv_commit.1.ph.lcssa14273, %if.then5795.loopexit12317 ], [ %sv_commit.1.ph.lcssa14268, %if.then5795.loopexit12318 ]
  %popmark.1.ph14228 = phi ptr [ %popmark.1.ph14230, %land.lhs.true5570 ], [ %popmark.1.ph.lcssa14161, %land.lhs.true3248 ], [ %popmark.1.ph.lcssa14192, %land.lhs.true5421 ], [ %popmark.1.ph.lcssa14202, %if.then5795.loopexit ], [ %popmark.1.ph.lcssa14194, %if.then5795.loopexit12317 ], [ %popmark.1.ph.lcssa14189, %if.then5795.loopexit12318 ]
  %do_cutgroup.1.ph14152 = phi i8 [ %do_cutgroup.1.ph14153, %land.lhs.true5570 ], [ %do_cutgroup.1.ph.lcssa14083, %land.lhs.true3248 ], [ %do_cutgroup.1.ph.lcssa14114, %land.lhs.true5421 ], [ %do_cutgroup.1.ph.lcssa14124, %if.then5795.loopexit ], [ %do_cutgroup.1.ph.lcssa14116, %if.then5795.loopexit12317 ], [ %do_cutgroup.1.ph.lcssa14111, %if.then5795.loopexit12318 ]
  %no_final.1.ph14074 = phi i8 [ %no_final.1.ph14075, %land.lhs.true5570 ], [ %no_final.1.ph.lcssa14005, %land.lhs.true3248 ], [ %no_final.1.ph.lcssa14036, %land.lhs.true5421 ], [ %no_final.1.ph.lcssa14046, %if.then5795.loopexit ], [ %no_final.1.ph.lcssa14038, %if.then5795.loopexit12317 ], [ %no_final.1.ph.lcssa14033, %if.then5795.loopexit12318 ]
  %cur_eval.1.ph13916 = phi ptr [ %cur_eval.1.ph13917, %land.lhs.true5570 ], [ %cur_eval.1.ph.lcssa13852, %land.lhs.true3248 ], [ %cur_eval.1.ph.lcssa13883, %land.lhs.true5421 ], [ %cur_eval.1.ph.lcssa13893, %if.then5795.loopexit ], [ %cur_eval.1.ph.lcssa13885, %if.then5795.loopexit12317 ], [ %cur_eval.1.ph.lcssa13880, %if.then5795.loopexit12318 ]
  %mark_state.1.ph13839 = phi ptr [ %mark_state.1.ph13840, %land.lhs.true5570 ], [ %mark_state.1.ph.lcssa13775, %land.lhs.true3248 ], [ %mark_state.1.ph.lcssa13806, %land.lhs.true5421 ], [ %mark_state.1.ph.lcssa13816, %if.then5795.loopexit ], [ %mark_state.1.ph.lcssa13808, %if.then5795.loopexit12317 ], [ %mark_state.1.ph.lcssa13803, %if.then5795.loopexit12318 ]
  %yes_state.1.ph13766 = phi ptr [ %yes_state.1.ph13767, %land.lhs.true5570 ], [ %yes_state.1.ph.lcssa13697, %land.lhs.true3248 ], [ %yes_state.1.ph.lcssa13728, %land.lhs.true5421 ], [ %yes_state.1.ph.lcssa13738, %if.then5795.loopexit ], [ %yes_state.1.ph.lcssa13730, %if.then5795.loopexit12317 ], [ %yes_state.1.ph.lcssa13725, %if.then5795.loopexit12318 ]
  %nochange_depth.1.ph13682 = phi i32 [ %nochange_depth.1.ph13683, %land.lhs.true5570 ], [ %nochange_depth.1.ph.lcssa13623, %land.lhs.true3248 ], [ %nochange_depth.1.ph.lcssa13654, %land.lhs.true5421 ], [ %nochange_depth.1.ph.lcssa13664, %if.then5795.loopexit ], [ %nochange_depth.1.ph.lcssa13656, %if.then5795.loopexit12317 ], [ %nochange_depth.1.ph.lcssa13651, %if.then5795.loopexit12318 ]
  %depth.1.ph13611 = phi i32 [ %depth.1.ph13613, %land.lhs.true5570 ], [ %depth.1.ph.lcssa13544, %land.lhs.true3248 ], [ %depth.1.ph.lcssa13575, %land.lhs.true5421 ], [ %depth.1.ph.lcssa13585, %if.then5795.loopexit ], [ %depth.1.ph.lcssa13577, %if.then5795.loopexit12317 ], [ %depth.1.ph.lcssa13572, %if.then5795.loopexit12318 ]
  %next.1.ph13531 = phi ptr [ %next.1.ph13532, %land.lhs.true5570 ], [ %next.1.ph.lcssa13470, %land.lhs.true3248 ], [ %next.1.ph.lcssa13501, %land.lhs.true5421 ], [ %next.1.ph.lcssa13511, %if.then5795.loopexit ], [ %next.1.ph.lcssa13503, %if.then5795.loopexit12317 ], [ %next.1.ph.lcssa13498, %if.then5795.loopexit12318 ]
  %st.1.ph13458 = phi ptr [ %st.1.ph13460, %land.lhs.true5570 ], [ %st.1.ph.lcssa13391, %land.lhs.true3248 ], [ %st.1.ph.lcssa13422, %land.lhs.true5421 ], [ %st.1.ph.lcssa13432, %if.then5795.loopexit ], [ %st.1.ph.lcssa13424, %if.then5795.loopexit12317 ], [ %st.1.ph.lcssa13419, %if.then5795.loopexit12318 ]
  %rex.1.ph13303 = phi ptr [ %rex.1.ph13304, %land.lhs.true5570 ], [ %rex.1.ph.lcssa13240, %land.lhs.true3248 ], [ %rex.1.ph.lcssa13271, %land.lhs.true5421 ], [ %rex.1.ph.lcssa13281, %if.then5795.loopexit ], [ %rex.1.ph.lcssa13273, %if.then5795.loopexit12317 ], [ %rex.1.ph.lcssa13268, %if.then5795.loopexit12318 ]
  %rex_sv.1.ph13227 = phi ptr [ %rex_sv.1.ph13228, %land.lhs.true5570 ], [ %rex_sv.1.ph.lcssa13163, %land.lhs.true3248 ], [ %rex_sv.1.ph.lcssa13194, %land.lhs.true5421 ], [ %rex_sv.1.ph.lcssa13204, %if.then5795.loopexit ], [ %rex_sv.1.ph.lcssa13196, %if.then5795.loopexit12317 ], [ %rex_sv.1.ph.lcssa13191, %if.then5795.loopexit12318 ]
  %locinput.259361 = phi ptr [ %locinput.22, %land.lhs.true5570 ], [ %locinput.1.lcssa12622, %land.lhs.true3248 ], [ %locinput.20.lcssa, %land.lhs.true5421 ], [ %locinput.1.lcssa12623.lcssa, %if.then5795.loopexit ], [ %locinput.1.lcssa12671, %if.then5795.loopexit12317 ], [ %locinput.259361.ph, %if.then5795.loopexit12318 ]
  %minmod.69360 = phi i8 [ %minmod.5, %land.lhs.true5570 ], [ %minmod.1.lcssa12882, %land.lhs.true3248 ], [ %minmod.4.lcssa, %land.lhs.true5421 ], [ %minmod.1.lcssa12883.lcssa, %if.then5795.loopexit ], [ %minmod.1.lcssa12931, %if.then5795.loopexit12317 ], [ %minmod.69360.ph, %if.then5795.loopexit12318 ]
  %prev_rex5797 = getelementptr inbounds nuw i8, ptr %st.1.ph13458, i64 40
  store ptr %rex_sv.1.ph13227, ptr %prev_rex5797, align 8
  %1117 = load i32, ptr %maxopenparen, align 4
  %call5798 = call fastcc i32 @S_regcppush(ptr noundef %rex.1.ph13303, i32 noundef 0, i32 noundef %1117)
  %cp5800 = getelementptr inbounds nuw i8, ptr %st.1.ph13458, i64 48
  store i32 %call5798, ptr %cp5800, align 8
  %prev_rex5802 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph13916, i64 40
  %1118 = load ptr, ptr %prev_rex5802, align 8
  %sv_flags5803 = getelementptr inbounds nuw i8, ptr %1118, i64 12
  %1119 = load i32, ptr %sv_flags5803, align 4
  %and5804 = lshr i32 %1119, 29
  %1120 = trunc nuw nsw i32 %and5804 to i8
  %storedv5809 = and i8 %1120, 1
  store i8 %storedv5809, ptr %is_utf8_pat21, align 1
  %1121 = load ptr, ptr %info_aux_eval5811, align 8
  %tobool5812.not = icmp eq ptr %1121, null
  br i1 %tobool5812.not, label %if.end5817, label %S_SvREFCNT_inc.exit9236

S_SvREFCNT_inc.exit9236:                          ; preds = %if.then5795
  %sv_refcnt.i9234 = getelementptr inbounds nuw i8, ptr %1118, i64 8
  %1122 = load i32, ptr %sv_refcnt.i9234, align 8
  %inc.i9235 = add i32 %1122, 1
  store i32 %inc.i9235, ptr %sv_refcnt.i9234, align 8
  %1123 = load ptr, ptr @PL_reg_curpm, align 8
  %op_pmregexp5815 = getelementptr inbounds nuw i8, ptr %1123, i64 56
  %1124 = load ptr, ptr %op_pmregexp5815, align 8
  %cmp.not.i9237 = icmp eq ptr %1124, null
  br i1 %cmp.not.i9237, label %S_SvREFCNT_dec.exit9244, label %if.then.i9238

if.then.i9238:                                    ; preds = %S_SvREFCNT_inc.exit9236
  %sv_refcnt.i9239 = getelementptr inbounds nuw i8, ptr %1124, i64 8
  %1125 = load i32, ptr %sv_refcnt.i9239, align 8
  %cmp1.i9240 = icmp ugt i32 %1125, 1
  br i1 %cmp1.i9240, label %if.then4.i9242, label %if.else.i9241

if.then4.i9242:                                   ; preds = %if.then.i9238
  %sub.i9243 = add i32 %1125, -1
  store i32 %sub.i9243, ptr %sv_refcnt.i9239, align 8
  br label %S_SvREFCNT_dec.exit9244

if.else.i9241:                                    ; preds = %if.then.i9238
  call void @Perl_sv_free2(ptr noundef nonnull %1124, i32 noundef %1125) #10
  br label %S_SvREFCNT_dec.exit9244

S_SvREFCNT_dec.exit9244:                          ; preds = %if.else.i9241, %if.then4.i9242, %S_SvREFCNT_inc.exit9236
  %1126 = load ptr, ptr @PL_reg_curpm, align 8
  %op_pmregexp5816 = getelementptr inbounds nuw i8, ptr %1126, i64 56
  store ptr %1118, ptr %op_pmregexp5816, align 8
  br label %if.end5817

if.end5817:                                       ; preds = %S_SvREFCNT_dec.exit9244, %if.then5795
  %1127 = getelementptr i8, ptr %1118, i64 16
  %.val = load ptr, ptr %1127, align 8
  %pprivate5819 = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %1128 = load ptr, ptr %pprivate5819, align 8
  %prev_curlyx5821 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph13916, i64 32
  %1129 = load ptr, ptr %prev_curlyx5821, align 8
  %1130 = load i32, ptr @PL_savestack_ix, align 4
  %lastcp5823 = getelementptr inbounds nuw i8, ptr %st.1.ph13458, i64 52
  store i32 %1130, ptr %lastcp5823, align 4
  %lastcp5825 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph13916, i64 52
  %1131 = load i32, ptr %lastcp5825, align 4
  store i32 %1131, ptr @PL_savestack_ix, align 4
  call fastcc void @S_regcppop(ptr noundef %.val, ptr noundef nonnull %maxopenparen)
  store i32 %1130, ptr @PL_savestack_ix, align 4
  %prev_eval5827 = getelementptr inbounds nuw i8, ptr %st.1.ph13458, i64 24
  store ptr %cur_eval.1.ph13916, ptr %prev_eval5827, align 8
  %prev_eval5829 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph13916, i64 24
  %1132 = load ptr, ptr %prev_eval5829, align 8
  %spec.select8729 = call i32 @llvm.usub.sat.i32(i32 %nochange_depth.1.ph13682, i32 1)
  %B5837 = getelementptr inbounds nuw i8, ptr %cur_eval.1.ph13916, i64 64
  %1133 = load ptr, ptr %B5837, align 8
  store i32 96, ptr %st.1.ph13458, align 8
  br label %push_yes_state

if.end5839:                                       ; preds = %fake_end
  %1134 = load ptr, ptr %till, align 8
  %cmp5840 = icmp ult ptr %locinput.112685, %1134
  br i1 %cmp5840, label %no_silent, label %yes

sw.bb5845:                                        ; preds = %cond.end42
  %sw.0.ph9430.lcssa14636 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14556 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14481 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14407 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14330 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14253 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14174 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14096 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14018 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13942 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13865 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13788 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13710 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13636 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13557 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13483 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13404 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13329 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13253 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13176 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12914 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12654 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12521 = phi ptr [ %scan.1, %cond.end42 ]
  %wanted = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13404, i64 24
  store i32 1, ptr %wanted, align 8
  br label %do_ifmatch

sw.bb5847:                                        ; preds = %cond.end42
  %minmod.1.lcssa12915 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12655 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12522 = phi ptr [ %scan.1, %cond.end42 ]
  %wanted5849 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  store i32 0, ptr %wanted5849, align 8
  br label %ifmatch_trivial_fail_test

sw.bb5850:                                        ; preds = %cond.end42
  %minmod.1.lcssa12916 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12656 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12523 = phi ptr [ %scan.1, %cond.end42 ]
  %wanted5852 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  store i32 1, ptr %wanted5852, align 8
  br label %ifmatch_trivial_fail_test

ifmatch_trivial_fail_test:                        ; preds = %sw.bb5850, %sw.bb5847
  %minmod.112964 = phi i8 [ %minmod.1.lcssa12916, %sw.bb5850 ], [ %minmod.1.lcssa12915, %sw.bb5847 ]
  %locinput.112686 = phi ptr [ %locinput.1.lcssa12656, %sw.bb5850 ], [ %locinput.1.lcssa12655, %sw.bb5847 ]
  %scan.112562 = phi ptr [ %scan.1.lcssa12523, %sw.bb5850 ], [ %scan.1.lcssa12522, %sw.bb5847 ]
  %1135 = load i8, ptr %scan.112562, align 2
  %tobool5854.not = icmp eq i8 %1135, 0
  br i1 %tobool5854.not, label %do_ifmatch.loopexit, label %if.then5855

if.then5855:                                      ; preds = %ifmatch_trivial_fail_test
  %1136 = load i8, ptr %is_utf8_target, align 2, !range !0, !noundef !1
  %loadedv5858 = trunc nuw i8 %1136 to i1
  br i1 %loadedv5858, label %cond.true5860, label %cond.false5867

cond.true5860:                                    ; preds = %if.then5855
  %conv5862 = zext i8 %1135 to i64
  %sub5863 = sub nsw i64 0, %conv5862
  %1137 = load ptr, ptr %strbeg5865, align 8
  %lim73.i = ptrtoint ptr %1137 to i64
  %cmp860.i = icmp ugt ptr %locinput.112686, %1137
  br i1 %cmp860.i, label %while.body11.i.preheader, label %if.then5888

while.body11.i.preheader:                         ; preds = %cond.true5860
  br label %while.body11.i

while.body11.i:                                   ; preds = %if.end32.i, %while.body11.i.preheader
  %inc62.in.i = phi i64 [ %inc62.i, %if.end32.i ], [ %sub5863, %while.body11.i.preheader ]
  %s.addr.161.i = phi ptr [ %s.addr.3.i9250, %if.end32.i ], [ %locinput.112686, %while.body11.i.preheader ]
  %s.addr.16174.i = ptrtoint ptr %s.addr.161.i to i64
  %inc62.i = add nsw i64 %inc62.in.i, 1
  %incdec.ptr.i9247 = getelementptr inbounds i8, ptr %s.addr.161.i, i64 -1
  %1138 = load i8, ptr %incdec.ptr.i9247, align 1
  %tobool13.not.i = icmp sgt i8 %1138, -1
  br i1 %tobool13.not.i, label %if.end32.i, label %while.cond15.preheader.i

while.cond15.preheader.i:                         ; preds = %while.body11.i
  %cmp1657.i = icmp ugt ptr %incdec.ptr.i9247, %1137
  br i1 %cmp1657.i, label %land.rhs18.preheader.i, label %while.end26thread-pre-split.i

land.rhs18.preheader.i:                           ; preds = %while.cond15.preheader.i
  %scevgep.i9252 = getelementptr i8, ptr %s.addr.161.i, i64 %lim73.i
  %1139 = sub i64 0, %s.addr.16174.i
  %scevgep75.i = getelementptr i8, ptr %scevgep.i9252, i64 %1139
  br label %land.rhs18.i

land.rhs18.i:                                     ; preds = %while.body24.i, %land.rhs18.preheader.i
  %s.addr.258.i = phi ptr [ %incdec.ptr25.i, %while.body24.i ], [ %incdec.ptr.i9247, %land.rhs18.preheader.i ]
  %1140 = load i8, ptr %s.addr.258.i, align 1
  %cmp21.i = icmp slt i8 %1140, -64
  br i1 %cmp21.i, label %while.body24.i, label %while.end26.i.loopexit

while.body24.i:                                   ; preds = %land.rhs18.i
  %incdec.ptr25.i = getelementptr inbounds i8, ptr %s.addr.258.i, i64 -1
  %cmp16.i = icmp ugt ptr %incdec.ptr25.i, %1137
  br i1 %cmp16.i, label %land.rhs18.i, label %while.end26thread-pre-split.i.loopexit, !llvm.loop !33

while.end26thread-pre-split.i.loopexit:           ; preds = %while.body24.i
  br label %while.end26thread-pre-split.i

while.end26thread-pre-split.i:                    ; preds = %while.end26thread-pre-split.i.loopexit, %while.cond15.preheader.i
  %s.addr.2.lcssa.i9248 = phi ptr [ %incdec.ptr.i9247, %while.cond15.preheader.i ], [ %scevgep75.i, %while.end26thread-pre-split.i.loopexit ]
  %.pr.i9249 = load i8, ptr %s.addr.2.lcssa.i9248, align 1
  br label %while.end26.i

while.end26.i.loopexit:                           ; preds = %land.rhs18.i
  %s.addr.258.i.lcssa = phi ptr [ %s.addr.258.i, %land.rhs18.i ]
  %.lcssa13105 = phi i8 [ %1140, %land.rhs18.i ]
  br label %while.end26.i

while.end26.i:                                    ; preds = %while.end26.i.loopexit, %while.end26thread-pre-split.i
  %s.addr.256.i = phi ptr [ %s.addr.2.lcssa.i9248, %while.end26thread-pre-split.i ], [ %s.addr.258.i.lcssa, %while.end26.i.loopexit ]
  %1141 = phi i8 [ %.pr.i9249, %while.end26thread-pre-split.i ], [ %.lcssa13105, %while.end26.i.loopexit ]
  %cmp28.i = icmp ugt i8 %1141, -63
  br i1 %cmp28.i, label %if.end32.i, label %if.then30.i

if.then30.i:                                      ; preds = %while.end26.i
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #10
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %while.end26.i, %while.body11.i
  %s.addr.3.i9250 = phi ptr [ %s.addr.256.i, %while.end26.i ], [ %s.addr.256.i, %if.then30.i ], [ %incdec.ptr.i9247, %while.body11.i ]
  %tobool6.i = icmp ne i64 %inc62.i, 0
  %cmp8.i = icmp ugt ptr %s.addr.3.i9250, %1137
  %1142 = and i1 %tobool6.i, %cmp8.i
  br i1 %1142, label %while.body11.i, label %while.end33.i, !llvm.loop !34

while.end33.i:                                    ; preds = %if.end32.i
  %s.addr.3.i9250.lcssa = phi ptr [ %s.addr.3.i9250, %if.end32.i ]
  %inc62.in.i.lcssa = phi i64 [ %inc62.in.i, %if.end32.i ]
  %1143 = icmp slt i64 %inc62.in.i.lcssa, -1
  br i1 %1143, label %if.then5888, label %do_ifmatch.loopexit

cond.false5867:                                   ; preds = %if.then5855
  %idx.ext5870 = zext i8 %1135 to i64
  %idx.neg5871 = sub nsw i64 0, %idx.ext5870
  %add.ptr5872 = getelementptr inbounds i8, ptr %locinput.112686, i64 %idx.neg5871
  %1144 = load ptr, ptr %strbeg5873, align 8
  %cmp5874.not = icmp ult ptr %add.ptr5872, %1144
  %tobool5887.not = icmp eq ptr %locinput.112686, null
  %or.cond9401 = or i1 %tobool5887.not, %cmp5874.not
  br i1 %or.cond9401, label %if.then5888, label %do_ifmatch.loopexit

if.then5888:                                      ; preds = %cond.false5867, %while.end33.i, %cond.true5860
  %tobool5889.not = icmp eq i32 %logical.1.ph, 0
  br i1 %tobool5889.not, label %if.else5898, label %if.then5890

if.then5890:                                      ; preds = %if.then5888
  %last_pushed_cv.0.ph.lcssa14855 = phi ptr [ %last_pushed_cv.0.ph, %if.then5888 ]
  %caller_cv.0.ph.lcssa14819 = phi ptr [ %caller_cv.0.ph, %if.then5888 ]
  %multicall_oldcatch.0.ph.lcssa14782 = phi i8 [ %multicall_oldcatch.0.ph, %if.then5888 ]
  %multicall_cv.0.ph.lcssa14745 = phi ptr [ %multicall_cv.0.ph, %if.then5888 ]
  %last_pad.0.ph.lcssa14709 = phi ptr [ %last_pad.0.ph, %if.then5888 ]
  %match.1.ph.lcssa14568 = phi i8 [ %match.1.ph, %if.then5888 ]
  %is_utf8_pat.1.ph.lcssa14493 = phi i8 [ %is_utf8_pat.1.ph, %if.then5888 ]
  %sv_yes_mark.1.ph.lcssa14342 = phi ptr [ %sv_yes_mark.1.ph, %if.then5888 ]
  %sv_commit.1.ph.lcssa14265 = phi ptr [ %sv_commit.1.ph, %if.then5888 ]
  %popmark.1.ph.lcssa14186 = phi ptr [ %popmark.1.ph, %if.then5888 ]
  %do_cutgroup.1.ph.lcssa14108 = phi i8 [ %do_cutgroup.1.ph, %if.then5888 ]
  %no_final.1.ph.lcssa14030 = phi i8 [ %no_final.1.ph, %if.then5888 ]
  %cur_curlyx.1.ph.lcssa13954 = phi ptr [ %cur_curlyx.1.ph, %if.then5888 ]
  %cur_eval.1.ph.lcssa13877 = phi ptr [ %cur_eval.1.ph, %if.then5888 ]
  %mark_state.1.ph.lcssa13800 = phi ptr [ %mark_state.1.ph, %if.then5888 ]
  %yes_state.1.ph.lcssa13722 = phi ptr [ %yes_state.1.ph, %if.then5888 ]
  %nochange_depth.1.ph.lcssa13648 = phi i32 [ %nochange_depth.1.ph, %if.then5888 ]
  %depth.1.ph.lcssa13569 = phi i32 [ %depth.1.ph, %if.then5888 ]
  %st.1.ph.lcssa13416 = phi ptr [ %st.1.ph, %if.then5888 ]
  %rexi.1.ph.lcssa13341 = phi ptr [ %rexi.1.ph, %if.then5888 ]
  %rex.1.ph.lcssa13265 = phi ptr [ %rex.1.ph, %if.then5888 ]
  %rex_sv.1.ph.lcssa13188 = phi ptr [ %rex_sv.1.ph, %if.then5888 ]
  %minmod.112964.lcssa12969 = phi i8 [ %minmod.112964, %if.then5888 ]
  %locinput.112686.lcssa12708 = phi ptr [ %locinput.112686, %if.then5888 ]
  %scan.112562.lcssa12565 = phi ptr [ %scan.112562, %if.then5888 ]
  %wanted5892 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13416, i64 24
  %1145 = load i32, ptr %wanted5892, align 8
  %tobool5893.not.not = icmp eq i32 %1145, 0
  br label %cleanup5913.thread9373

if.else5898:                                      ; preds = %if.then5888
  %wanted5900 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %1146 = load i32, ptr %wanted5900, align 8
  %tobool5901.not = icmp eq i32 %1146, 0
  br i1 %tobool5901.not, label %cleanup5913.thread9373.loopexit, label %no_silent

cleanup5913.thread9373.loopexit:                  ; preds = %if.else5898
  %last_pushed_cv.0.ph.lcssa14856 = phi ptr [ %last_pushed_cv.0.ph, %if.else5898 ]
  %caller_cv.0.ph.lcssa14820 = phi ptr [ %caller_cv.0.ph, %if.else5898 ]
  %multicall_oldcatch.0.ph.lcssa14783 = phi i8 [ %multicall_oldcatch.0.ph, %if.else5898 ]
  %multicall_cv.0.ph.lcssa14746 = phi ptr [ %multicall_cv.0.ph, %if.else5898 ]
  %last_pad.0.ph.lcssa14710 = phi ptr [ %last_pad.0.ph, %if.else5898 ]
  %sw.0.ph9430.lcssa14647 = phi i1 [ %sw.0.ph9430, %if.else5898 ]
  %match.1.ph.lcssa14569 = phi i8 [ %match.1.ph, %if.else5898 ]
  %is_utf8_pat.1.ph.lcssa14494 = phi i8 [ %is_utf8_pat.1.ph, %if.else5898 ]
  %sv_yes_mark.1.ph.lcssa14343 = phi ptr [ %sv_yes_mark.1.ph, %if.else5898 ]
  %sv_commit.1.ph.lcssa14266 = phi ptr [ %sv_commit.1.ph, %if.else5898 ]
  %popmark.1.ph.lcssa14187 = phi ptr [ %popmark.1.ph, %if.else5898 ]
  %do_cutgroup.1.ph.lcssa14109 = phi i8 [ %do_cutgroup.1.ph, %if.else5898 ]
  %no_final.1.ph.lcssa14031 = phi i8 [ %no_final.1.ph, %if.else5898 ]
  %cur_curlyx.1.ph.lcssa13955 = phi ptr [ %cur_curlyx.1.ph, %if.else5898 ]
  %cur_eval.1.ph.lcssa13878 = phi ptr [ %cur_eval.1.ph, %if.else5898 ]
  %mark_state.1.ph.lcssa13801 = phi ptr [ %mark_state.1.ph, %if.else5898 ]
  %yes_state.1.ph.lcssa13723 = phi ptr [ %yes_state.1.ph, %if.else5898 ]
  %nochange_depth.1.ph.lcssa13649 = phi i32 [ %nochange_depth.1.ph, %if.else5898 ]
  %depth.1.ph.lcssa13570 = phi i32 [ %depth.1.ph, %if.else5898 ]
  %st.1.ph.lcssa13417 = phi ptr [ %st.1.ph, %if.else5898 ]
  %rexi.1.ph.lcssa13342 = phi ptr [ %rexi.1.ph, %if.else5898 ]
  %rex.1.ph.lcssa13266 = phi ptr [ %rex.1.ph, %if.else5898 ]
  %rex_sv.1.ph.lcssa13189 = phi ptr [ %rex_sv.1.ph, %if.else5898 ]
  %minmod.112964.lcssa12970 = phi i8 [ %minmod.112964, %if.else5898 ]
  %locinput.112686.lcssa12709 = phi ptr [ %locinput.112686, %if.else5898 ]
  %scan.112562.lcssa12566 = phi ptr [ %scan.112562, %if.else5898 ]
  br label %cleanup5913.thread9373

cleanup5913.thread9373:                           ; preds = %cleanup5913.thread9373.loopexit, %if.then5890
  %last_pushed_cv.0.ph14874 = phi ptr [ %last_pushed_cv.0.ph.lcssa14855, %if.then5890 ], [ %last_pushed_cv.0.ph.lcssa14856, %cleanup5913.thread9373.loopexit ]
  %caller_cv.0.ph14837 = phi ptr [ %caller_cv.0.ph.lcssa14819, %if.then5890 ], [ %caller_cv.0.ph.lcssa14820, %cleanup5913.thread9373.loopexit ]
  %multicall_oldcatch.0.ph14801 = phi i8 [ %multicall_oldcatch.0.ph.lcssa14782, %if.then5890 ], [ %multicall_oldcatch.0.ph.lcssa14783, %cleanup5913.thread9373.loopexit ]
  %multicall_cv.0.ph14764 = phi ptr [ %multicall_cv.0.ph.lcssa14745, %if.then5890 ], [ %multicall_cv.0.ph.lcssa14746, %cleanup5913.thread9373.loopexit ]
  %last_pad.0.ph14727 = phi ptr [ %last_pad.0.ph.lcssa14709, %if.then5890 ], [ %last_pad.0.ph.lcssa14710, %cleanup5913.thread9373.loopexit ]
  %match.1.ph14614 = phi i8 [ %match.1.ph.lcssa14568, %if.then5890 ], [ %match.1.ph.lcssa14569, %cleanup5913.thread9373.loopexit ]
  %is_utf8_pat.1.ph14529 = phi i8 [ %is_utf8_pat.1.ph.lcssa14493, %if.then5890 ], [ %is_utf8_pat.1.ph.lcssa14494, %cleanup5913.thread9373.loopexit ]
  %sv_yes_mark.1.ph14378 = phi ptr [ %sv_yes_mark.1.ph.lcssa14342, %if.then5890 ], [ %sv_yes_mark.1.ph.lcssa14343, %cleanup5913.thread9373.loopexit ]
  %sv_commit.1.ph14301 = phi ptr [ %sv_commit.1.ph.lcssa14265, %if.then5890 ], [ %sv_commit.1.ph.lcssa14266, %cleanup5913.thread9373.loopexit ]
  %popmark.1.ph14222 = phi ptr [ %popmark.1.ph.lcssa14186, %if.then5890 ], [ %popmark.1.ph.lcssa14187, %cleanup5913.thread9373.loopexit ]
  %do_cutgroup.1.ph14144 = phi i8 [ %do_cutgroup.1.ph.lcssa14108, %if.then5890 ], [ %do_cutgroup.1.ph.lcssa14109, %cleanup5913.thread9373.loopexit ]
  %no_final.1.ph14066 = phi i8 [ %no_final.1.ph.lcssa14030, %if.then5890 ], [ %no_final.1.ph.lcssa14031, %cleanup5913.thread9373.loopexit ]
  %cur_curlyx.1.ph13990 = phi ptr [ %cur_curlyx.1.ph.lcssa13954, %if.then5890 ], [ %cur_curlyx.1.ph.lcssa13955, %cleanup5913.thread9373.loopexit ]
  %cur_eval.1.ph13913 = phi ptr [ %cur_eval.1.ph.lcssa13877, %if.then5890 ], [ %cur_eval.1.ph.lcssa13878, %cleanup5913.thread9373.loopexit ]
  %mark_state.1.ph13836 = phi ptr [ %mark_state.1.ph.lcssa13800, %if.then5890 ], [ %mark_state.1.ph.lcssa13801, %cleanup5913.thread9373.loopexit ]
  %yes_state.1.ph13758 = phi ptr [ %yes_state.1.ph.lcssa13722, %if.then5890 ], [ %yes_state.1.ph.lcssa13723, %cleanup5913.thread9373.loopexit ]
  %nochange_depth.1.ph13689 = phi i32 [ %nochange_depth.1.ph.lcssa13648, %if.then5890 ], [ %nochange_depth.1.ph.lcssa13649, %cleanup5913.thread9373.loopexit ]
  %depth.1.ph13605 = phi i32 [ %depth.1.ph.lcssa13569, %if.then5890 ], [ %depth.1.ph.lcssa13570, %cleanup5913.thread9373.loopexit ]
  %st.1.ph13452 = phi ptr [ %st.1.ph.lcssa13416, %if.then5890 ], [ %st.1.ph.lcssa13417, %cleanup5913.thread9373.loopexit ]
  %rexi.1.ph13377 = phi ptr [ %rexi.1.ph.lcssa13341, %if.then5890 ], [ %rexi.1.ph.lcssa13342, %cleanup5913.thread9373.loopexit ]
  %rex.1.ph13301 = phi ptr [ %rex.1.ph.lcssa13265, %if.then5890 ], [ %rex.1.ph.lcssa13266, %cleanup5913.thread9373.loopexit ]
  %rex_sv.1.ph13224 = phi ptr [ %rex_sv.1.ph.lcssa13188, %if.then5890 ], [ %rex_sv.1.ph.lcssa13189, %cleanup5913.thread9373.loopexit ]
  %minmod.11296412971 = phi i8 [ %minmod.112964.lcssa12969, %if.then5890 ], [ %minmod.112964.lcssa12970, %cleanup5913.thread9373.loopexit ]
  %locinput.11268612710 = phi ptr [ %locinput.112686.lcssa12708, %if.then5890 ], [ %locinput.112686.lcssa12709, %cleanup5913.thread9373.loopexit ]
  %scan.11256212567 = phi ptr [ %scan.112562.lcssa12565, %if.then5890 ], [ %scan.112562.lcssa12566, %cleanup5913.thread9373.loopexit ]
  %sw.4 = phi i1 [ %tobool5893.not.not, %if.then5890 ], [ %sw.0.ph9430.lcssa14647, %cleanup5913.thread9373.loopexit ]
  %arg15905 = getelementptr inbounds nuw i8, ptr %scan.11256212567, i64 4
  %1147 = load i32, ptr %arg15905, align 4
  %idx.ext5906 = zext i32 %1147 to i64
  %add.ptr5907.idx = shl nuw nsw i64 %idx.ext5906, 2
  %add.ptr5907 = getelementptr inbounds nuw i8, ptr %scan.11256212567, i64 %add.ptr5907.idx
  %cmp5908 = icmp eq i32 %1147, 0
  %spec.store.select6651 = select i1 %cmp5908, ptr null, ptr %add.ptr5907
  br label %sw.epilog6360

do_ifmatch.loopexit:                              ; preds = %cond.false5867, %while.end33.i, %ifmatch_trivial_fail_test
  %sw.0.ph9430.lcssa14645 = phi i1 [ %sw.0.ph9430, %ifmatch_trivial_fail_test ], [ %sw.0.ph9430, %while.end33.i ], [ %sw.0.ph9430, %cond.false5867 ]
  %match.1.ph.lcssa14567 = phi i8 [ %match.1.ph, %ifmatch_trivial_fail_test ], [ %match.1.ph, %while.end33.i ], [ %match.1.ph, %cond.false5867 ]
  %is_utf8_pat.1.ph.lcssa14492 = phi i8 [ %is_utf8_pat.1.ph, %ifmatch_trivial_fail_test ], [ %is_utf8_pat.1.ph, %while.end33.i ], [ %is_utf8_pat.1.ph, %cond.false5867 ]
  %logical.1.ph.lcssa14418 = phi i32 [ %logical.1.ph, %ifmatch_trivial_fail_test ], [ %logical.1.ph, %while.end33.i ], [ %logical.1.ph, %cond.false5867 ]
  %sv_yes_mark.1.ph.lcssa14341 = phi ptr [ %sv_yes_mark.1.ph, %ifmatch_trivial_fail_test ], [ %sv_yes_mark.1.ph, %while.end33.i ], [ %sv_yes_mark.1.ph, %cond.false5867 ]
  %sv_commit.1.ph.lcssa14264 = phi ptr [ %sv_commit.1.ph, %ifmatch_trivial_fail_test ], [ %sv_commit.1.ph, %while.end33.i ], [ %sv_commit.1.ph, %cond.false5867 ]
  %popmark.1.ph.lcssa14185 = phi ptr [ %popmark.1.ph, %ifmatch_trivial_fail_test ], [ %popmark.1.ph, %while.end33.i ], [ %popmark.1.ph, %cond.false5867 ]
  %do_cutgroup.1.ph.lcssa14107 = phi i8 [ %do_cutgroup.1.ph, %ifmatch_trivial_fail_test ], [ %do_cutgroup.1.ph, %while.end33.i ], [ %do_cutgroup.1.ph, %cond.false5867 ]
  %no_final.1.ph.lcssa14029 = phi i8 [ %no_final.1.ph, %ifmatch_trivial_fail_test ], [ %no_final.1.ph, %while.end33.i ], [ %no_final.1.ph, %cond.false5867 ]
  %cur_curlyx.1.ph.lcssa13953 = phi ptr [ %cur_curlyx.1.ph, %ifmatch_trivial_fail_test ], [ %cur_curlyx.1.ph, %while.end33.i ], [ %cur_curlyx.1.ph, %cond.false5867 ]
  %cur_eval.1.ph.lcssa13876 = phi ptr [ %cur_eval.1.ph, %ifmatch_trivial_fail_test ], [ %cur_eval.1.ph, %while.end33.i ], [ %cur_eval.1.ph, %cond.false5867 ]
  %mark_state.1.ph.lcssa13799 = phi ptr [ %mark_state.1.ph, %ifmatch_trivial_fail_test ], [ %mark_state.1.ph, %while.end33.i ], [ %mark_state.1.ph, %cond.false5867 ]
  %yes_state.1.ph.lcssa13721 = phi ptr [ %yes_state.1.ph, %ifmatch_trivial_fail_test ], [ %yes_state.1.ph, %while.end33.i ], [ %yes_state.1.ph, %cond.false5867 ]
  %nochange_depth.1.ph.lcssa13647 = phi i32 [ %nochange_depth.1.ph, %ifmatch_trivial_fail_test ], [ %nochange_depth.1.ph, %while.end33.i ], [ %nochange_depth.1.ph, %cond.false5867 ]
  %depth.1.ph.lcssa13568 = phi i32 [ %depth.1.ph, %ifmatch_trivial_fail_test ], [ %depth.1.ph, %while.end33.i ], [ %depth.1.ph, %cond.false5867 ]
  %next.1.ph.lcssa13494 = phi ptr [ %next.1.ph, %ifmatch_trivial_fail_test ], [ %next.1.ph, %while.end33.i ], [ %next.1.ph, %cond.false5867 ]
  %st.1.ph.lcssa13415 = phi ptr [ %st.1.ph, %ifmatch_trivial_fail_test ], [ %st.1.ph, %while.end33.i ], [ %st.1.ph, %cond.false5867 ]
  %rexi.1.ph.lcssa13340 = phi ptr [ %rexi.1.ph, %ifmatch_trivial_fail_test ], [ %rexi.1.ph, %while.end33.i ], [ %rexi.1.ph, %cond.false5867 ]
  %rex.1.ph.lcssa13264 = phi ptr [ %rex.1.ph, %ifmatch_trivial_fail_test ], [ %rex.1.ph, %while.end33.i ], [ %rex.1.ph, %cond.false5867 ]
  %rex_sv.1.ph.lcssa13187 = phi ptr [ %rex_sv.1.ph, %ifmatch_trivial_fail_test ], [ %rex_sv.1.ph, %while.end33.i ], [ %rex_sv.1.ph, %cond.false5867 ]
  %minmod.112964.lcssa = phi i8 [ %minmod.112964, %ifmatch_trivial_fail_test ], [ %minmod.112964, %while.end33.i ], [ %minmod.112964, %cond.false5867 ]
  %locinput.112686.lcssa = phi ptr [ %locinput.112686, %ifmatch_trivial_fail_test ], [ %locinput.112686, %while.end33.i ], [ %locinput.112686, %cond.false5867 ]
  %scan.112562.lcssa = phi ptr [ %scan.112562, %ifmatch_trivial_fail_test ], [ %scan.112562, %while.end33.i ], [ %scan.112562, %cond.false5867 ]
  %newstart.3.ph = phi ptr [ %locinput.112686, %ifmatch_trivial_fail_test ], [ %s.addr.3.i9250.lcssa, %while.end33.i ], [ %add.ptr5872, %cond.false5867 ]
  br label %do_ifmatch

do_ifmatch:                                       ; preds = %do_ifmatch.loopexit, %sw.bb5845
  %sw.0.ph943014687 = phi i1 [ %sw.0.ph9430.lcssa14636, %sw.bb5845 ], [ %sw.0.ph9430.lcssa14645, %do_ifmatch.loopexit ]
  %match.1.ph14611 = phi i8 [ %match.1.ph.lcssa14556, %sw.bb5845 ], [ %match.1.ph.lcssa14567, %do_ifmatch.loopexit ]
  %is_utf8_pat.1.ph14536 = phi i8 [ %is_utf8_pat.1.ph.lcssa14481, %sw.bb5845 ], [ %is_utf8_pat.1.ph.lcssa14492, %do_ifmatch.loopexit ]
  %logical.1.ph14460 = phi i32 [ %logical.1.ph.lcssa14407, %sw.bb5845 ], [ %logical.1.ph.lcssa14418, %do_ifmatch.loopexit ]
  %sv_yes_mark.1.ph14387 = phi ptr [ %sv_yes_mark.1.ph.lcssa14330, %sw.bb5845 ], [ %sv_yes_mark.1.ph.lcssa14341, %do_ifmatch.loopexit ]
  %sv_commit.1.ph14310 = phi ptr [ %sv_commit.1.ph.lcssa14253, %sw.bb5845 ], [ %sv_commit.1.ph.lcssa14264, %do_ifmatch.loopexit ]
  %popmark.1.ph14232 = phi ptr [ %popmark.1.ph.lcssa14174, %sw.bb5845 ], [ %popmark.1.ph.lcssa14185, %do_ifmatch.loopexit ]
  %do_cutgroup.1.ph14149 = phi i8 [ %do_cutgroup.1.ph.lcssa14096, %sw.bb5845 ], [ %do_cutgroup.1.ph.lcssa14107, %do_ifmatch.loopexit ]
  %no_final.1.ph14071 = phi i8 [ %no_final.1.ph.lcssa14018, %sw.bb5845 ], [ %no_final.1.ph.lcssa14029, %do_ifmatch.loopexit ]
  %cur_curlyx.1.ph13998 = phi ptr [ %cur_curlyx.1.ph.lcssa13942, %sw.bb5845 ], [ %cur_curlyx.1.ph.lcssa13953, %do_ifmatch.loopexit ]
  %cur_eval.1.ph13922 = phi ptr [ %cur_eval.1.ph.lcssa13865, %sw.bb5845 ], [ %cur_eval.1.ph.lcssa13876, %do_ifmatch.loopexit ]
  %mark_state.1.ph13845 = phi ptr [ %mark_state.1.ph.lcssa13788, %sw.bb5845 ], [ %mark_state.1.ph.lcssa13799, %do_ifmatch.loopexit ]
  %yes_state.1.ph13763 = phi ptr [ %yes_state.1.ph.lcssa13710, %sw.bb5845 ], [ %yes_state.1.ph.lcssa13721, %do_ifmatch.loopexit ]
  %nochange_depth.1.ph13688 = phi i32 [ %nochange_depth.1.ph.lcssa13636, %sw.bb5845 ], [ %nochange_depth.1.ph.lcssa13647, %do_ifmatch.loopexit ]
  %depth.1.ph13615 = phi i32 [ %depth.1.ph.lcssa13557, %sw.bb5845 ], [ %depth.1.ph.lcssa13568, %do_ifmatch.loopexit ]
  %next.1.ph13536 = phi ptr [ %next.1.ph.lcssa13483, %sw.bb5845 ], [ %next.1.ph.lcssa13494, %do_ifmatch.loopexit ]
  %st.1.ph13462 = phi ptr [ %st.1.ph.lcssa13404, %sw.bb5845 ], [ %st.1.ph.lcssa13415, %do_ifmatch.loopexit ]
  %rexi.1.ph13384 = phi ptr [ %rexi.1.ph.lcssa13329, %sw.bb5845 ], [ %rexi.1.ph.lcssa13340, %do_ifmatch.loopexit ]
  %rex.1.ph13309 = phi ptr [ %rex.1.ph.lcssa13253, %sw.bb5845 ], [ %rex.1.ph.lcssa13264, %do_ifmatch.loopexit ]
  %rex_sv.1.ph13233 = phi ptr [ %rex_sv.1.ph.lcssa13176, %sw.bb5845 ], [ %rex_sv.1.ph.lcssa13187, %do_ifmatch.loopexit ]
  %minmod.112963 = phi i8 [ %minmod.1.lcssa12914, %sw.bb5845 ], [ %minmod.112964.lcssa, %do_ifmatch.loopexit ]
  %locinput.112702 = phi ptr [ %locinput.1.lcssa12654, %sw.bb5845 ], [ %locinput.112686.lcssa, %do_ifmatch.loopexit ]
  %scan.112561 = phi ptr [ %scan.1.lcssa12521, %sw.bb5845 ], [ %scan.112562.lcssa, %do_ifmatch.loopexit ]
  %newstart.3 = phi ptr [ %locinput.1.lcssa12654, %sw.bb5845 ], [ %newstart.3.ph, %do_ifmatch.loopexit ]
  %me5919 = getelementptr inbounds nuw i8, ptr %st.1.ph13462, i64 32
  store ptr %scan.112561, ptr %me5919, align 8
  %logical5921 = getelementptr inbounds nuw i8, ptr %st.1.ph13462, i64 28
  store i32 %logical.1.ph14460, ptr %logical5921, align 4
  %add.ptr5923 = getelementptr inbounds nuw i8, ptr %scan.112561, i64 8
  store i32 116, ptr %st.1.ph13462, align 8
  br label %push_yes_state

sw.bb5925:                                        ; preds = %cond.end42
  %minmod.1.lcssa12917 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12657 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12524 = phi ptr [ %scan.1, %cond.end42 ]
  %wanted5927 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %1148 = load i32, ptr %wanted5927, align 8
  %tobool5928.not = icmp eq i32 %1148, 0
  %lnot.ext5930 = zext i1 %tobool5928.not to i32
  store i32 %lnot.ext5930, ptr %wanted5927, align 8
  br label %sw.bb5933

sw.bb5933.loopexit:                               ; preds = %cond.end42
  %minmod.1.lcssa12918 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12658 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12525 = phi ptr [ %scan.1, %cond.end42 ]
  br label %sw.bb5933

sw.bb5933:                                        ; preds = %sw.bb5933.loopexit, %sw.bb5925
  %minmod.112965 = phi i8 [ %minmod.1.lcssa12918, %sw.bb5933.loopexit ], [ %minmod.1.lcssa12917, %sw.bb5925 ]
  %locinput.112703 = phi ptr [ %locinput.1.lcssa12658, %sw.bb5933.loopexit ], [ %locinput.1.lcssa12657, %sw.bb5925 ]
  %scan.112563 = phi ptr [ %scan.1.lcssa12525, %sw.bb5933.loopexit ], [ %scan.1.lcssa12524, %sw.bb5925 ]
  %logical5935 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 28
  %1149 = load i32, ptr %logical5935, align 4
  %tobool5936.not = icmp eq i32 %1149, 0
  br i1 %tobool5936.not, label %if.else5944, label %if.then5937

if.then5937:                                      ; preds = %sw.bb5933
  %match.1.ph.lcssa14565 = phi i8 [ %match.1.ph, %sw.bb5933 ]
  %is_utf8_pat.1.ph.lcssa14490 = phi i8 [ %is_utf8_pat.1.ph, %sw.bb5933 ]
  %logical.1.ph.lcssa14416 = phi i32 [ %logical.1.ph, %sw.bb5933 ]
  %sv_yes_mark.1.ph.lcssa14339 = phi ptr [ %sv_yes_mark.1.ph, %sw.bb5933 ]
  %sv_commit.1.ph.lcssa14262 = phi ptr [ %sv_commit.1.ph, %sw.bb5933 ]
  %popmark.1.ph.lcssa14183 = phi ptr [ %popmark.1.ph, %sw.bb5933 ]
  %do_cutgroup.1.ph.lcssa14105 = phi i8 [ %do_cutgroup.1.ph, %sw.bb5933 ]
  %no_final.1.ph.lcssa14027 = phi i8 [ %no_final.1.ph, %sw.bb5933 ]
  %cur_curlyx.1.ph.lcssa13951 = phi ptr [ %cur_curlyx.1.ph, %sw.bb5933 ]
  %cur_eval.1.ph.lcssa13874 = phi ptr [ %cur_eval.1.ph, %sw.bb5933 ]
  %mark_state.1.ph.lcssa13797 = phi ptr [ %mark_state.1.ph, %sw.bb5933 ]
  %yes_state.1.ph.lcssa13719 = phi ptr [ %yes_state.1.ph, %sw.bb5933 ]
  %nochange_depth.1.ph.lcssa13645 = phi i32 [ %nochange_depth.1.ph, %sw.bb5933 ]
  %depth.1.ph.lcssa13566 = phi i32 [ %depth.1.ph, %sw.bb5933 ]
  %next.1.ph.lcssa13492 = phi ptr [ %next.1.ph, %sw.bb5933 ]
  %st.1.ph.lcssa13413 = phi ptr [ %st.1.ph, %sw.bb5933 ]
  %rexi.1.ph.lcssa13338 = phi ptr [ %rexi.1.ph, %sw.bb5933 ]
  %rex.1.ph.lcssa13262 = phi ptr [ %rex.1.ph, %sw.bb5933 ]
  %rex_sv.1.ph.lcssa13185 = phi ptr [ %rex_sv.1.ph, %sw.bb5933 ]
  %minmod.112965.lcssa = phi i8 [ %minmod.112965, %sw.bb5933 ]
  %locinput.112703.lcssa = phi ptr [ %locinput.112703, %sw.bb5933 ]
  %wanted5939 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13413, i64 24
  %1150 = load i32, ptr %wanted5939, align 8
  %tobool5940 = icmp ne i32 %1150, 0
  br label %if.end5950

if.else5944:                                      ; preds = %sw.bb5933
  %wanted5946 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %1151 = load i32, ptr %wanted5946, align 8
  %tobool5947.not = icmp eq i32 %1151, 0
  br i1 %tobool5947.not, label %no_silent, label %if.end5950.loopexit

if.end5950.loopexit:                              ; preds = %if.else5944
  %match.1.ph.lcssa14566 = phi i8 [ %match.1.ph, %if.else5944 ]
  %is_utf8_pat.1.ph.lcssa14491 = phi i8 [ %is_utf8_pat.1.ph, %if.else5944 ]
  %logical.1.ph.lcssa14417 = phi i32 [ %logical.1.ph, %if.else5944 ]
  %sv_yes_mark.1.ph.lcssa14340 = phi ptr [ %sv_yes_mark.1.ph, %if.else5944 ]
  %sv_commit.1.ph.lcssa14263 = phi ptr [ %sv_commit.1.ph, %if.else5944 ]
  %popmark.1.ph.lcssa14184 = phi ptr [ %popmark.1.ph, %if.else5944 ]
  %do_cutgroup.1.ph.lcssa14106 = phi i8 [ %do_cutgroup.1.ph, %if.else5944 ]
  %no_final.1.ph.lcssa14028 = phi i8 [ %no_final.1.ph, %if.else5944 ]
  %cur_curlyx.1.ph.lcssa13952 = phi ptr [ %cur_curlyx.1.ph, %if.else5944 ]
  %cur_eval.1.ph.lcssa13875 = phi ptr [ %cur_eval.1.ph, %if.else5944 ]
  %mark_state.1.ph.lcssa13798 = phi ptr [ %mark_state.1.ph, %if.else5944 ]
  %yes_state.1.ph.lcssa13720 = phi ptr [ %yes_state.1.ph, %if.else5944 ]
  %nochange_depth.1.ph.lcssa13646 = phi i32 [ %nochange_depth.1.ph, %if.else5944 ]
  %depth.1.ph.lcssa13567 = phi i32 [ %depth.1.ph, %if.else5944 ]
  %next.1.ph.lcssa13493 = phi ptr [ %next.1.ph, %if.else5944 ]
  %st.1.ph.lcssa13414 = phi ptr [ %st.1.ph, %if.else5944 ]
  %rexi.1.ph.lcssa13339 = phi ptr [ %rexi.1.ph, %if.else5944 ]
  %rex.1.ph.lcssa13263 = phi ptr [ %rex.1.ph, %if.else5944 ]
  %rex_sv.1.ph.lcssa13186 = phi ptr [ %rex_sv.1.ph, %if.else5944 ]
  %minmod.112965.lcssa12967 = phi i8 [ %minmod.112965, %if.else5944 ]
  %locinput.112703.lcssa12705 = phi ptr [ %locinput.112703, %if.else5944 ]
  br label %if.end5950

if.end5950:                                       ; preds = %if.end5950.loopexit, %if.then5937
  %match.1.ph14615 = phi i8 [ %match.1.ph.lcssa14565, %if.then5937 ], [ %match.1.ph.lcssa14566, %if.end5950.loopexit ]
  %is_utf8_pat.1.ph14537 = phi i8 [ %is_utf8_pat.1.ph.lcssa14490, %if.then5937 ], [ %is_utf8_pat.1.ph.lcssa14491, %if.end5950.loopexit ]
  %logical.1.ph14461 = phi i32 [ %logical.1.ph.lcssa14416, %if.then5937 ], [ %logical.1.ph.lcssa14417, %if.end5950.loopexit ]
  %sv_yes_mark.1.ph14388 = phi ptr [ %sv_yes_mark.1.ph.lcssa14339, %if.then5937 ], [ %sv_yes_mark.1.ph.lcssa14340, %if.end5950.loopexit ]
  %sv_commit.1.ph14311 = phi ptr [ %sv_commit.1.ph.lcssa14262, %if.then5937 ], [ %sv_commit.1.ph.lcssa14263, %if.end5950.loopexit ]
  %popmark.1.ph14235 = phi ptr [ %popmark.1.ph.lcssa14183, %if.then5937 ], [ %popmark.1.ph.lcssa14184, %if.end5950.loopexit ]
  %do_cutgroup.1.ph14155 = phi i8 [ %do_cutgroup.1.ph.lcssa14105, %if.then5937 ], [ %do_cutgroup.1.ph.lcssa14106, %if.end5950.loopexit ]
  %no_final.1.ph14077 = phi i8 [ %no_final.1.ph.lcssa14027, %if.then5937 ], [ %no_final.1.ph.lcssa14028, %if.end5950.loopexit ]
  %cur_curlyx.1.ph13999 = phi ptr [ %cur_curlyx.1.ph.lcssa13951, %if.then5937 ], [ %cur_curlyx.1.ph.lcssa13952, %if.end5950.loopexit ]
  %cur_eval.1.ph13923 = phi ptr [ %cur_eval.1.ph.lcssa13874, %if.then5937 ], [ %cur_eval.1.ph.lcssa13875, %if.end5950.loopexit ]
  %mark_state.1.ph13846 = phi ptr [ %mark_state.1.ph.lcssa13797, %if.then5937 ], [ %mark_state.1.ph.lcssa13798, %if.end5950.loopexit ]
  %yes_state.1.ph13769 = phi ptr [ %yes_state.1.ph.lcssa13719, %if.then5937 ], [ %yes_state.1.ph.lcssa13720, %if.end5950.loopexit ]
  %nochange_depth.1.ph13690 = phi i32 [ %nochange_depth.1.ph.lcssa13645, %if.then5937 ], [ %nochange_depth.1.ph.lcssa13646, %if.end5950.loopexit ]
  %depth.1.ph13618 = phi i32 [ %depth.1.ph.lcssa13566, %if.then5937 ], [ %depth.1.ph.lcssa13567, %if.end5950.loopexit ]
  %next.1.ph13537 = phi ptr [ %next.1.ph.lcssa13492, %if.then5937 ], [ %next.1.ph.lcssa13493, %if.end5950.loopexit ]
  %st.1.ph13465 = phi ptr [ %st.1.ph.lcssa13413, %if.then5937 ], [ %st.1.ph.lcssa13414, %if.end5950.loopexit ]
  %rexi.1.ph13385 = phi ptr [ %rexi.1.ph.lcssa13338, %if.then5937 ], [ %rexi.1.ph.lcssa13339, %if.end5950.loopexit ]
  %rex.1.ph13310 = phi ptr [ %rex.1.ph.lcssa13262, %if.then5937 ], [ %rex.1.ph.lcssa13263, %if.end5950.loopexit ]
  %rex_sv.1.ph13234 = phi ptr [ %rex_sv.1.ph.lcssa13185, %if.then5937 ], [ %rex_sv.1.ph.lcssa13186, %if.end5950.loopexit ]
  %minmod.11296512968 = phi i8 [ %minmod.112965.lcssa, %if.then5937 ], [ %minmod.112965.lcssa12967, %if.end5950.loopexit ]
  %locinput.11270312706 = phi ptr [ %locinput.112703.lcssa, %if.then5937 ], [ %locinput.112703.lcssa12705, %if.end5950.loopexit ]
  %sw.7 = phi i1 [ %tobool5940, %if.then5937 ], [ %sw.0.ph9430, %if.end5950.loopexit ]
  %me5952 = getelementptr inbounds nuw i8, ptr %st.1.ph13465, i64 32
  %1152 = load ptr, ptr %me5952, align 8
  %type5953 = getelementptr inbounds nuw i8, ptr %1152, i64 1
  %1153 = load i8, ptr %type5953, align 1
  %cmp5955.not = icmp eq i8 %1153, 65
  br i1 %cmp5955.not, label %if.end5959, label %if.then5957

if.then5957:                                      ; preds = %if.end5950
  %locinput5958 = getelementptr inbounds nuw i8, ptr %st.1.ph13465, i64 8
  %1154 = load ptr, ptr %locinput5958, align 8
  br label %if.end5959

if.end5959:                                       ; preds = %if.then5957, %if.end5950
  %locinput.26 = phi ptr [ %1154, %if.then5957 ], [ %locinput.11270312706, %if.end5950 ]
  %arg15964 = getelementptr inbounds nuw i8, ptr %1152, i64 4
  %1155 = load i32, ptr %arg15964, align 4
  %idx.ext5965 = zext i32 %1155 to i64
  %add.ptr5966.idx = shl nuw nsw i64 %idx.ext5965, 2
  %add.ptr5966 = getelementptr inbounds nuw i8, ptr %1152, i64 %add.ptr5966.idx
  %cmp5969 = icmp eq i32 %1155, 0
  %spec.select9402 = select i1 %cmp5969, ptr null, ptr %add.ptr5966
  br label %while.cond.outer9425

sw.bb5973:                                        ; preds = %cond.end42
  %last_pushed_cv.0.ph.lcssa14849 = phi ptr [ %last_pushed_cv.0.ph, %cond.end42 ]
  %caller_cv.0.ph.lcssa14813 = phi ptr [ %caller_cv.0.ph, %cond.end42 ]
  %multicall_oldcatch.0.ph.lcssa14776 = phi i8 [ %multicall_oldcatch.0.ph, %cond.end42 ]
  %multicall_cv.0.ph.lcssa14739 = phi ptr [ %multicall_cv.0.ph, %cond.end42 ]
  %last_pad.0.ph.lcssa14703 = phi ptr [ %last_pad.0.ph, %cond.end42 ]
  %sw.0.ph9430.lcssa14637 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14557 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14482 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14408 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14331 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14254 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14175 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14097 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14019 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13943 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13866 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13789 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13711 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13637 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13558 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13405 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13330 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13254 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13177 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12919 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12659 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12526 = phi ptr [ %scan.1, %cond.end42 ]
  %arg15974 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12526, i64 4
  %1156 = load i32, ptr %arg15974, align 4
  %idx.ext5975 = zext i32 %1156 to i64
  %add.ptr5976.idx = shl nuw nsw i64 %idx.ext5975, 2
  %add.ptr5976 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12526, i64 %add.ptr5976.idx
  %cmp5977 = icmp eq i32 %1156, 0
  %spec.store.select6653 = select i1 %cmp5977, ptr null, ptr %add.ptr5976
  br label %sw.epilog6360

sw.bb5981:                                        ; preds = %cond.end42
  %sw.0.ph9430.lcssa14638 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14558 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14483 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14409 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14332 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14255 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14176 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14098 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14020 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13944 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13867 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13790 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13712 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13638 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13559 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13485 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13406 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13331 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13255 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13178 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12920 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12660 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12527 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12421 = phi ptr [ %16, %cond.end42 ]
  store ptr %.lcssa12421, ptr %cutpoint, align 8
  br label %sw.bb5983

sw.bb5983.loopexit:                               ; preds = %cond.end42
  %sw.0.ph9430.lcssa14639 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14559 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14484 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14410 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14333 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14256 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14177 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14099 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14021 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13945 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13868 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13791 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13713 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13639 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13560 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13486 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13407 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13332 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13256 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13179 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12921 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12661 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12528 = phi ptr [ %scan.1, %cond.end42 ]
  br label %sw.bb5983

sw.bb5983:                                        ; preds = %sw.bb5983.loopexit, %sw.bb5981
  %sw.0.ph943014688 = phi i1 [ %sw.0.ph9430.lcssa14639, %sw.bb5983.loopexit ], [ %sw.0.ph9430.lcssa14638, %sw.bb5981 ]
  %match.1.ph14608 = phi i8 [ %match.1.ph.lcssa14559, %sw.bb5983.loopexit ], [ %match.1.ph.lcssa14558, %sw.bb5981 ]
  %is_utf8_pat.1.ph14538 = phi i8 [ %is_utf8_pat.1.ph.lcssa14484, %sw.bb5983.loopexit ], [ %is_utf8_pat.1.ph.lcssa14483, %sw.bb5981 ]
  %logical.1.ph14462 = phi i32 [ %logical.1.ph.lcssa14410, %sw.bb5983.loopexit ], [ %logical.1.ph.lcssa14409, %sw.bb5981 ]
  %sv_yes_mark.1.ph14389 = phi ptr [ %sv_yes_mark.1.ph.lcssa14333, %sw.bb5983.loopexit ], [ %sv_yes_mark.1.ph.lcssa14332, %sw.bb5981 ]
  %sv_commit.1.ph14312 = phi ptr [ %sv_commit.1.ph.lcssa14256, %sw.bb5983.loopexit ], [ %sv_commit.1.ph.lcssa14255, %sw.bb5981 ]
  %popmark.1.ph14229 = phi ptr [ %popmark.1.ph.lcssa14177, %sw.bb5983.loopexit ], [ %popmark.1.ph.lcssa14176, %sw.bb5981 ]
  %do_cutgroup.1.ph14156 = phi i8 [ %do_cutgroup.1.ph.lcssa14099, %sw.bb5983.loopexit ], [ %do_cutgroup.1.ph.lcssa14098, %sw.bb5981 ]
  %no_final.1.ph14078 = phi i8 [ %no_final.1.ph.lcssa14021, %sw.bb5983.loopexit ], [ %no_final.1.ph.lcssa14020, %sw.bb5981 ]
  %cur_curlyx.1.ph14000 = phi ptr [ %cur_curlyx.1.ph.lcssa13945, %sw.bb5983.loopexit ], [ %cur_curlyx.1.ph.lcssa13944, %sw.bb5981 ]
  %cur_eval.1.ph13924 = phi ptr [ %cur_eval.1.ph.lcssa13868, %sw.bb5983.loopexit ], [ %cur_eval.1.ph.lcssa13867, %sw.bb5981 ]
  %mark_state.1.ph13847 = phi ptr [ %mark_state.1.ph.lcssa13791, %sw.bb5983.loopexit ], [ %mark_state.1.ph.lcssa13790, %sw.bb5981 ]
  %yes_state.1.ph13770 = phi ptr [ %yes_state.1.ph.lcssa13713, %sw.bb5983.loopexit ], [ %yes_state.1.ph.lcssa13712, %sw.bb5981 ]
  %nochange_depth.1.ph13691 = phi i32 [ %nochange_depth.1.ph.lcssa13639, %sw.bb5983.loopexit ], [ %nochange_depth.1.ph.lcssa13638, %sw.bb5981 ]
  %depth.1.ph13612 = phi i32 [ %depth.1.ph.lcssa13560, %sw.bb5983.loopexit ], [ %depth.1.ph.lcssa13559, %sw.bb5981 ]
  %next.1.ph13538 = phi ptr [ %next.1.ph.lcssa13486, %sw.bb5983.loopexit ], [ %next.1.ph.lcssa13485, %sw.bb5981 ]
  %st.1.ph13459 = phi ptr [ %st.1.ph.lcssa13407, %sw.bb5983.loopexit ], [ %st.1.ph.lcssa13406, %sw.bb5981 ]
  %rexi.1.ph13386 = phi ptr [ %rexi.1.ph.lcssa13332, %sw.bb5983.loopexit ], [ %rexi.1.ph.lcssa13331, %sw.bb5981 ]
  %rex.1.ph13311 = phi ptr [ %rex.1.ph.lcssa13256, %sw.bb5983.loopexit ], [ %rex.1.ph.lcssa13255, %sw.bb5981 ]
  %rex_sv.1.ph13235 = phi ptr [ %rex_sv.1.ph.lcssa13179, %sw.bb5983.loopexit ], [ %rex_sv.1.ph.lcssa13178, %sw.bb5981 ]
  %minmod.112966 = phi i8 [ %minmod.1.lcssa12921, %sw.bb5983.loopexit ], [ %minmod.1.lcssa12920, %sw.bb5981 ]
  %locinput.112704 = phi ptr [ %locinput.1.lcssa12661, %sw.bb5983.loopexit ], [ %locinput.1.lcssa12660, %sw.bb5981 ]
  %scan.112564 = phi ptr [ %scan.1.lcssa12528, %sw.bb5983.loopexit ], [ %scan.1.lcssa12527, %sw.bb5981 ]
  %1157 = load i8, ptr %scan.112564, align 2
  %tobool5985.not = icmp eq i8 %1157, 0
  br i1 %tobool5985.not, label %if.then5986, label %if.end5992

if.then5986:                                      ; preds = %sw.bb5983
  %data5987 = getelementptr inbounds nuw i8, ptr %rexi.1.ph13386, i64 24
  %1158 = load ptr, ptr %data5987, align 8
  %data5988 = getelementptr inbounds nuw i8, ptr %1158, i64 16
  %arg15989 = getelementptr inbounds nuw i8, ptr %scan.112564, i64 4
  %1159 = load i32, ptr %arg15989, align 4
  %idxprom5990 = zext i32 %1159 to i64
  %arrayidx5991 = getelementptr inbounds nuw ptr, ptr %data5988, i64 %idxprom5990
  %1160 = load ptr, ptr %arrayidx5991, align 8
  br label %if.end5992

if.end5992:                                       ; preds = %if.then5986, %sw.bb5983
  %sv_yes_mark.2 = phi ptr [ %sv_yes_mark.1.ph14389, %sw.bb5983 ], [ %1160, %if.then5986 ]
  %sv_commit.2 = phi ptr [ %sv_commit.1.ph14312, %sw.bb5983 ], [ %1160, %if.then5986 ]
  store i32 124, ptr %st.1.ph13459, align 8
  br label %push_state

sw.bb5996:                                        ; preds = %cond.end42
  %sw.0.ph9430.lcssa14640 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14560 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14485 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14411 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14178 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14100 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14022 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13946 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13869 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13792 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13714 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13640 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13561 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13487 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13408 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13333 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13257 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13180 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12924 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12664 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12531 = phi ptr [ %scan.1, %cond.end42 ]
  %prev_mark = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13408, i64 24
  store ptr %mark_state.1.ph.lcssa13792, ptr %prev_mark, align 8
  %data5998 = getelementptr inbounds nuw i8, ptr %rexi.1.ph.lcssa13333, i64 24
  %1161 = load ptr, ptr %data5998, align 8
  %data5999 = getelementptr inbounds nuw i8, ptr %1161, i64 16
  %arg16000 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12531, i64 4
  %1162 = load i32, ptr %arg16000, align 4
  %idxprom6001 = zext i32 %1162 to i64
  %arrayidx6002 = getelementptr inbounds nuw ptr, ptr %data5999, i64 %idxprom6001
  %1163 = load ptr, ptr %arrayidx6002, align 8
  %mark_name6004 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13408, i64 32
  store ptr %1163, ptr %mark_name6004, align 8
  %mark_loc = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13408, i64 40
  store ptr %locinput.1.lcssa12664, ptr %mark_loc, align 8
  store i32 126, ptr %st.1.ph.lcssa13408, align 8
  br label %push_yes_state

sw.bb6007:                                        ; preds = %cond.end42
  %minmod.1.lcssa12925 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12665 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12532 = phi ptr [ %scan.1, %cond.end42 ]
  %prev_mark6009 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %1164 = load ptr, ptr %prev_mark6009, align 8
  br label %yes

sw.bb6010:                                        ; preds = %cond.end42
  %minmod.1.lcssa12926 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12666 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12533 = phi ptr [ %scan.1, %cond.end42 ]
  %tobool6011.not = icmp eq ptr %popmark.1.ph, null
  br i1 %tobool6011.not, label %if.end6051, label %land.lhs.true6012

land.lhs.true6012:                                ; preds = %sw.bb6010
  %mark_name6014 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %1165 = load ptr, ptr %mark_name6014, align 8
  %call6015 = call i32 @Perl_sv_eq_flags(ptr noundef %1165, ptr noundef nonnull %popmark.1.ph, i32 noundef 2) #10
  %tobool6016.not = icmp eq i32 %call6015, 0
  br i1 %tobool6016.not, label %if.end6051, label %if.then6017

if.then6017:                                      ; preds = %land.lhs.true6012
  %mark_loc6019 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %1166 = load ptr, ptr %mark_loc6019, align 8
  %cmp6020 = icmp ugt ptr %1166, %startpos
  br i1 %cmp6020, label %if.then6022, label %if.end6048

if.then6022:                                      ; preds = %if.then6017
  %1167 = load i8, ptr %is_utf8_target, align 2, !range !0, !noundef !1
  %loadedv6024 = trunc nuw i8 %1167 to i1
  br i1 %loadedv6024, label %cond.true6026, label %cond.false6031

cond.true6026:                                    ; preds = %if.then6022
  %1168 = load ptr, ptr %strbeg6029, align 8
  %call6030 = call fastcc ptr @S_reghopmaybe3(ptr noundef %1166, i64 noundef -1, ptr noundef %1168)
  br label %cond.end6045

cond.false6031:                                   ; preds = %if.then6022
  %add.ptr6034 = getelementptr inbounds i8, ptr %1166, i64 -1
  %1169 = load ptr, ptr %strbeg6035, align 8
  %cmp6036.not = icmp ult ptr %add.ptr6034, %1169
  %spec.select8731 = select i1 %cmp6036.not, ptr null, ptr %add.ptr6034
  br label %cond.end6045

cond.end6045:                                     ; preds = %cond.false6031, %cond.true6026
  %cond6046 = phi ptr [ %call6030, %cond.true6026 ], [ %spec.select8731, %cond.false6031 ]
  store ptr %cond6046, ptr %cutpoint6047, align 8
  br label %if.end6048

if.end6048:                                       ; preds = %cond.end6045, %if.then6017
  %1170 = load ptr, ptr %mark_name6014, align 8
  br label %if.end6051

if.end6051:                                       ; preds = %if.end6048, %land.lhs.true6012, %sw.bb6010
  %sv_commit.3 = phi ptr [ %1170, %if.end6048 ], [ %sv_commit.1.ph, %land.lhs.true6012 ], [ %sv_commit.1.ph, %sw.bb6010 ]
  %popmark.2 = phi ptr [ null, %if.end6048 ], [ %popmark.1.ph, %land.lhs.true6012 ], [ null, %sw.bb6010 ]
  %prev_mark6053 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 24
  %1171 = load ptr, ptr %prev_mark6053, align 8
  %tobool6054.not = icmp eq ptr %1171, null
  br i1 %tobool6054.not, label %cond.end6059, label %cond.true6055

cond.true6055:                                    ; preds = %if.end6051
  %mark_name6057 = getelementptr inbounds nuw i8, ptr %1171, i64 32
  %1172 = load ptr, ptr %mark_name6057, align 8
  br label %cond.end6059

cond.end6059:                                     ; preds = %cond.true6055, %if.end6051
  %cond6060 = phi ptr [ %1172, %cond.true6055 ], [ null, %if.end6051 ]
  br label %no_silent

sw.bb6061:                                        ; preds = %cond.end42
  %sw.0.ph9430.lcssa14641 = phi i1 [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14561 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14486 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14412 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14335 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14258 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14179 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14101 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14023 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13947 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13870 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13793 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13715 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13641 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13562 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13488 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13409 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13334 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13258 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13181 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12927 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12667 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12534 = phi ptr [ %scan.1, %cond.end42 ]
  %1173 = load i8, ptr %scan.1.lcssa12534, align 2
  %tobool6063.not = icmp eq i8 %1173, 0
  br i1 %tobool6063.not, label %if.else6070, label %if.then6064

if.then6064:                                      ; preds = %sw.bb6061
  %mark_name6066 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13409, i64 32
  store ptr null, ptr %mark_name6066, align 8
  %mark_loc6068 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13409, i64 40
  store ptr %locinput.1.lcssa12667, ptr %mark_loc6068, align 8
  store i32 128, ptr %st.1.ph.lcssa13409, align 8
  br label %push_state

if.else6070:                                      ; preds = %sw.bb6061
  %data6071 = getelementptr inbounds nuw i8, ptr %rexi.1.ph.lcssa13334, i64 24
  %1174 = load ptr, ptr %data6071, align 8
  %data6072 = getelementptr inbounds nuw i8, ptr %1174, i64 16
  %arg16073 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa12534, i64 4
  %1175 = load i32, ptr %arg16073, align 4
  %idxprom6074 = zext i32 %1175 to i64
  %arrayidx6075 = getelementptr inbounds nuw ptr, ptr %data6072, i64 %idxprom6074
  %1176 = load ptr, ptr %arrayidx6075, align 8
  %tobool6077.not12231 = icmp eq ptr %mark_state.1.ph.lcssa13793, null
  br i1 %tobool6077.not12231, label %sw.epilog6360.loopexit12324, label %while.body6078.preheader

while.body6078.preheader:                         ; preds = %if.else6070
  br label %while.body6078

while.body6078:                                   ; preds = %if.end6087, %while.body6078.preheader
  %cur.012232 = phi ptr [ %1178, %if.end6087 ], [ %mark_state.1.ph.lcssa13793, %while.body6078.preheader ]
  %mark_name6080 = getelementptr inbounds nuw i8, ptr %cur.012232, i64 32
  %1177 = load ptr, ptr %mark_name6080, align 8
  %call6081 = call i32 @Perl_sv_eq_flags(ptr noundef %1177, ptr noundef %1176, i32 noundef 2) #10
  %tobool6082.not = icmp eq i32 %call6081, 0
  br i1 %tobool6082.not, label %if.end6087, label %cleanup6091

if.end6087:                                       ; preds = %while.body6078
  %prev_mark6089 = getelementptr inbounds nuw i8, ptr %cur.012232, i64 24
  %1178 = load ptr, ptr %prev_mark6089, align 8
  %tobool6077.not = icmp eq ptr %1178, null
  br i1 %tobool6077.not, label %sw.epilog6360.loopexit12321, label %while.body6078, !llvm.loop !35

cleanup6091:                                      ; preds = %while.body6078
  %mark_name6085 = getelementptr inbounds nuw i8, ptr %st.1.ph.lcssa13409, i64 32
  store ptr %1176, ptr %mark_name6085, align 8
  store i32 128, ptr %st.1.ph.lcssa13409, align 8
  br label %push_state

sw.bb6096:                                        ; preds = %cond.end42
  %minmod.1.lcssa12928 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12668 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12535 = phi ptr [ %scan.1, %cond.end42 ]
  %mark_name6098 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 32
  %1179 = load ptr, ptr %mark_name6098, align 8
  %tobool6099.not = icmp eq ptr %1179, null
  br i1 %tobool6099.not, label %if.else6103, label %if.end6140

if.else6103:                                      ; preds = %sw.bb6096
  %mark_loc6105 = getelementptr inbounds nuw i8, ptr %st.1.ph, i64 40
  %1180 = load ptr, ptr %mark_loc6105, align 8
  %cmp6106 = icmp ugt ptr %1180, %startpos
  br i1 %cmp6106, label %if.then6108, label %if.end6134

if.then6108:                                      ; preds = %if.else6103
  %1181 = load i8, ptr %is_utf8_target, align 2, !range !0, !noundef !1
  %loadedv6110 = trunc nuw i8 %1181 to i1
  br i1 %loadedv6110, label %cond.true6112, label %cond.false6117

cond.true6112:                                    ; preds = %if.then6108
  %1182 = load ptr, ptr %strbeg6115, align 8
  %call6116 = call fastcc ptr @S_reghopmaybe3(ptr noundef %1180, i64 noundef -1, ptr noundef %1182)
  br label %cond.end6131

cond.false6117:                                   ; preds = %if.then6108
  %add.ptr6120 = getelementptr inbounds i8, ptr %1180, i64 -1
  %1183 = load ptr, ptr %strbeg6121, align 8
  %cmp6122.not = icmp ult ptr %add.ptr6120, %1183
  %spec.select8733 = select i1 %cmp6122.not, ptr null, ptr %add.ptr6120
  br label %cond.end6131

cond.end6131:                                     ; preds = %cond.false6117, %cond.true6112
  %cond6132 = phi ptr [ %call6116, %cond.true6112 ], [ %spec.select8733, %cond.false6117 ]
  store ptr %cond6132, ptr %cutpoint6133, align 8
  br label %if.end6134

if.end6134:                                       ; preds = %cond.end6131, %if.else6103
  %tobool6135.not = icmp eq ptr %mark_state.1.ph, null
  br i1 %tobool6135.not, label %if.end6140, label %if.then6136

if.then6136:                                      ; preds = %if.end6134
  %mark_name6138 = getelementptr inbounds nuw i8, ptr %mark_state.1.ph, i64 32
  %1184 = load ptr, ptr %mark_name6138, align 8
  br label %if.end6140

if.end6140:                                       ; preds = %if.then6136, %if.end6134, %sw.bb6096
  %sv_commit.4 = phi ptr [ %1184, %if.then6136 ], [ %sv_commit.1.ph, %if.end6134 ], [ %sv_commit.1.ph, %sw.bb6096 ]
  %popmark.3 = phi ptr [ %popmark.1.ph, %if.then6136 ], [ %popmark.1.ph, %if.end6134 ], [ %1179, %sw.bb6096 ]
  br label %no_silent

sw.bb6141:                                        ; preds = %cond.end42
  %minmod.1.lcssa12929 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12669 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12536 = phi ptr [ %scan.1, %cond.end42 ]
  %.lcssa12430 = phi ptr [ %16, %cond.end42 ]
  %sub.ptr.lhs.cast6143 = ptrtoint ptr %.lcssa12430 to i64
  %sub.ptr.rhs.cast6144 = ptrtoint ptr %locinput.1.lcssa12669 to i64
  %sub.ptr.sub6145 = sub i64 %sub.ptr.lhs.cast6143, %sub.ptr.rhs.cast6144
  %cmp6146 = icmp sgt i64 %sub.ptr.sub6145, 2
  br i1 %cmp6146, label %cond.true6148, label %cond.false6216

cond.true6148:                                    ; preds = %sw.bb6141
  %1185 = load i8, ptr %locinput.1.lcssa12669, align 1
  %1186 = add i8 %1185, -10
  %or.cond8734 = icmp ult i8 %1186, 3
  br i1 %or.cond8734, label %if.then6310.loopexit, label %cond.false6159

cond.false6159:                                   ; preds = %cond.true6148
  %cmp6162 = icmp eq i8 %1185, 13
  br i1 %cmp6162, label %cond.true6164, label %cond.false6170

cond.true6164:                                    ; preds = %cond.false6159
  %last_pushed_cv.0.ph.lcssa14852 = phi ptr [ %last_pushed_cv.0.ph, %cond.false6159 ]
  %caller_cv.0.ph.lcssa14816 = phi ptr [ %caller_cv.0.ph, %cond.false6159 ]
  %multicall_oldcatch.0.ph.lcssa14779 = phi i8 [ %multicall_oldcatch.0.ph, %cond.false6159 ]
  %multicall_cv.0.ph.lcssa14742 = phi ptr [ %multicall_cv.0.ph, %cond.false6159 ]
  %last_pad.0.ph.lcssa14706 = phi ptr [ %last_pad.0.ph, %cond.false6159 ]
  %sw.0.ph9430.lcssa14644 = phi i1 [ %sw.0.ph9430, %cond.false6159 ]
  %match.1.ph.lcssa14564 = phi i8 [ %match.1.ph, %cond.false6159 ]
  %is_utf8_pat.1.ph.lcssa14489 = phi i8 [ %is_utf8_pat.1.ph, %cond.false6159 ]
  %logical.1.ph.lcssa14415 = phi i32 [ %logical.1.ph, %cond.false6159 ]
  %sv_yes_mark.1.ph.lcssa14338 = phi ptr [ %sv_yes_mark.1.ph, %cond.false6159 ]
  %sv_commit.1.ph.lcssa14261 = phi ptr [ %sv_commit.1.ph, %cond.false6159 ]
  %popmark.1.ph.lcssa14182 = phi ptr [ %popmark.1.ph, %cond.false6159 ]
  %do_cutgroup.1.ph.lcssa14104 = phi i8 [ %do_cutgroup.1.ph, %cond.false6159 ]
  %no_final.1.ph.lcssa14026 = phi i8 [ %no_final.1.ph, %cond.false6159 ]
  %cur_curlyx.1.ph.lcssa13950 = phi ptr [ %cur_curlyx.1.ph, %cond.false6159 ]
  %cur_eval.1.ph.lcssa13873 = phi ptr [ %cur_eval.1.ph, %cond.false6159 ]
  %mark_state.1.ph.lcssa13796 = phi ptr [ %mark_state.1.ph, %cond.false6159 ]
  %yes_state.1.ph.lcssa13718 = phi ptr [ %yes_state.1.ph, %cond.false6159 ]
  %nochange_depth.1.ph.lcssa13644 = phi i32 [ %nochange_depth.1.ph, %cond.false6159 ]
  %depth.1.ph.lcssa13565 = phi i32 [ %depth.1.ph, %cond.false6159 ]
  %next.1.ph.lcssa13491 = phi ptr [ %next.1.ph, %cond.false6159 ]
  %st.1.ph.lcssa13412 = phi ptr [ %st.1.ph, %cond.false6159 ]
  %rexi.1.ph.lcssa13337 = phi ptr [ %rexi.1.ph, %cond.false6159 ]
  %rex.1.ph.lcssa13261 = phi ptr [ %rex.1.ph, %cond.false6159 ]
  %rex_sv.1.ph.lcssa13184 = phi ptr [ %rex_sv.1.ph, %cond.false6159 ]
  %minmod.1.lcssa12929.lcssa12974 = phi i8 [ %minmod.1.lcssa12929, %cond.false6159 ]
  %locinput.1.lcssa12669.lcssa12712 = phi ptr [ %locinput.1.lcssa12669, %cond.false6159 ]
  %arrayidx6165 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12669.lcssa12712, i64 1
  %1187 = load i8, ptr %arrayidx6165, align 1
  %cmp6167 = icmp eq i8 %1187, 10
  %cond6169 = select i1 %cmp6167, i64 2, i64 1
  br label %if.then6310

cond.false6170:                                   ; preds = %cond.false6159
  br i1 %loadedv, label %cond.true6173, label %cond.false6205

cond.true6173:                                    ; preds = %cond.false6170
  switch i8 %1185, label %no_silent.critedge9407 [
    i8 -62, label %cond.true6178
    i8 -30, label %land.lhs.true6189
  ]

cond.true6178:                                    ; preds = %cond.true6173
  %arrayidx6179 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12669, i64 1
  %1188 = load i8, ptr %arrayidx6179, align 1
  %cmp6181 = icmp eq i8 %1188, -123
  br i1 %cmp6181, label %if.then6310.loopexit, label %no_silent.critedge9407

land.lhs.true6189:                                ; preds = %cond.true6173
  %arrayidx6190 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12669, i64 1
  %1189 = load i8, ptr %arrayidx6190, align 1
  %cmp6192 = icmp eq i8 %1189, -128
  br i1 %cmp6192, label %land.rhs6194, label %no_silent.critedge9407

land.rhs6194:                                     ; preds = %land.lhs.true6189
  %arrayidx6195 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12669, i64 2
  %1190 = load i8, ptr %arrayidx6195, align 1
  %1191 = and i8 %1190, -2
  %cmp6198 = icmp eq i8 %1191, -88
  br i1 %cmp6198, label %if.then6310.loopexit, label %no_silent.critedge9407

cond.false6205:                                   ; preds = %cond.false6170
  %cmp6208 = icmp eq i8 %1185, -123
  br label %cond.end6307

cond.false6216:                                   ; preds = %sw.bb6141
  %cmp6221 = icmp eq i64 %sub.ptr.sub6145, 2
  br i1 %cmp6221, label %cond.true6223, label %cond.false6272

cond.true6223:                                    ; preds = %cond.false6216
  %1192 = load i8, ptr %locinput.1.lcssa12669, align 1
  %1193 = add i8 %1192, -10
  %or.cond8735 = icmp ult i8 %1193, 3
  br i1 %or.cond8735, label %if.then6310.loopexit, label %cond.false6234

cond.false6234:                                   ; preds = %cond.true6223
  %cmp6237 = icmp eq i8 %1192, 13
  br i1 %cmp6237, label %cond.true6239, label %cond.false6245

cond.true6239:                                    ; preds = %cond.false6234
  %last_pushed_cv.0.ph.lcssa14851 = phi ptr [ %last_pushed_cv.0.ph, %cond.false6234 ]
  %caller_cv.0.ph.lcssa14815 = phi ptr [ %caller_cv.0.ph, %cond.false6234 ]
  %multicall_oldcatch.0.ph.lcssa14778 = phi i8 [ %multicall_oldcatch.0.ph, %cond.false6234 ]
  %multicall_cv.0.ph.lcssa14741 = phi ptr [ %multicall_cv.0.ph, %cond.false6234 ]
  %last_pad.0.ph.lcssa14705 = phi ptr [ %last_pad.0.ph, %cond.false6234 ]
  %sw.0.ph9430.lcssa14643 = phi i1 [ %sw.0.ph9430, %cond.false6234 ]
  %match.1.ph.lcssa14563 = phi i8 [ %match.1.ph, %cond.false6234 ]
  %is_utf8_pat.1.ph.lcssa14488 = phi i8 [ %is_utf8_pat.1.ph, %cond.false6234 ]
  %logical.1.ph.lcssa14414 = phi i32 [ %logical.1.ph, %cond.false6234 ]
  %sv_yes_mark.1.ph.lcssa14337 = phi ptr [ %sv_yes_mark.1.ph, %cond.false6234 ]
  %sv_commit.1.ph.lcssa14260 = phi ptr [ %sv_commit.1.ph, %cond.false6234 ]
  %popmark.1.ph.lcssa14181 = phi ptr [ %popmark.1.ph, %cond.false6234 ]
  %do_cutgroup.1.ph.lcssa14103 = phi i8 [ %do_cutgroup.1.ph, %cond.false6234 ]
  %no_final.1.ph.lcssa14025 = phi i8 [ %no_final.1.ph, %cond.false6234 ]
  %cur_curlyx.1.ph.lcssa13949 = phi ptr [ %cur_curlyx.1.ph, %cond.false6234 ]
  %cur_eval.1.ph.lcssa13872 = phi ptr [ %cur_eval.1.ph, %cond.false6234 ]
  %mark_state.1.ph.lcssa13795 = phi ptr [ %mark_state.1.ph, %cond.false6234 ]
  %yes_state.1.ph.lcssa13717 = phi ptr [ %yes_state.1.ph, %cond.false6234 ]
  %nochange_depth.1.ph.lcssa13643 = phi i32 [ %nochange_depth.1.ph, %cond.false6234 ]
  %depth.1.ph.lcssa13564 = phi i32 [ %depth.1.ph, %cond.false6234 ]
  %next.1.ph.lcssa13490 = phi ptr [ %next.1.ph, %cond.false6234 ]
  %st.1.ph.lcssa13411 = phi ptr [ %st.1.ph, %cond.false6234 ]
  %rexi.1.ph.lcssa13336 = phi ptr [ %rexi.1.ph, %cond.false6234 ]
  %rex.1.ph.lcssa13260 = phi ptr [ %rex.1.ph, %cond.false6234 ]
  %rex_sv.1.ph.lcssa13183 = phi ptr [ %rex_sv.1.ph, %cond.false6234 ]
  %minmod.1.lcssa12929.lcssa12973 = phi i8 [ %minmod.1.lcssa12929, %cond.false6234 ]
  %locinput.1.lcssa12669.lcssa12711 = phi ptr [ %locinput.1.lcssa12669, %cond.false6234 ]
  %arrayidx6240 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12669.lcssa12711, i64 1
  %1194 = load i8, ptr %arrayidx6240, align 1
  %cmp6242 = icmp eq i8 %1194, 10
  %cond6244 = select i1 %cmp6242, i64 2, i64 1
  br label %if.then6310

cond.false6245:                                   ; preds = %cond.false6234
  br i1 %loadedv, label %cond.true6248, label %cond.false6261

cond.true6248:                                    ; preds = %cond.false6245
  %cmp6251 = icmp eq i8 %1192, -62
  br i1 %cmp6251, label %land.rhs6253, label %no_silent.critedge9407

land.rhs6253:                                     ; preds = %cond.true6248
  %arrayidx6254 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa12669, i64 1
  %1195 = load i8, ptr %arrayidx6254, align 1
  %cmp6256 = icmp eq i8 %1195, -123
  br i1 %cmp6256, label %if.then6310.loopexit, label %no_silent.critedge9407

cond.false6261:                                   ; preds = %cond.false6245
  %cmp6264 = icmp eq i8 %1192, -123
  br label %cond.end6307

cond.false6272:                                   ; preds = %cond.false6216
  %cmp6277 = icmp sgt i64 %sub.ptr.sub6145, 0
  br i1 %cmp6277, label %cond.true6279, label %no_silent.critedge9407

cond.true6279:                                    ; preds = %cond.false6272
  %1196 = load i8, ptr %locinput.1.lcssa12669, align 1
  %1197 = add i8 %1196, -10
  %or.cond8736 = icmp ult i8 %1197, 4
  %brmerge = select i1 %or.cond8736, i1 true, i1 %loadedv
  %cmp6295 = icmp eq i8 %1196, -123
  %spec.select9406 = select i1 %brmerge, i1 %or.cond8736, i1 %cmp6295
  br label %cond.end6307

cond.end6307:                                     ; preds = %cond.true6279, %cond.false6261, %cond.false6205
  %cond6308.shrunk = phi i1 [ %cmp6208, %cond.false6205 ], [ %cmp6264, %cond.false6261 ], [ %spec.select9406, %cond.true6279 ]
  br i1 %cond6308.shrunk, label %if.then6310.loopexit, label %no_silent

if.then6310.loopexit:                             ; preds = %cond.end6307, %land.rhs6253, %cond.true6223, %land.rhs6194, %cond.true6178, %cond.true6148
  %last_pushed_cv.0.ph.lcssa14850 = phi ptr [ %last_pushed_cv.0.ph, %cond.end6307 ], [ %last_pushed_cv.0.ph, %cond.true6148 ], [ %last_pushed_cv.0.ph, %cond.true6223 ], [ %last_pushed_cv.0.ph, %cond.true6178 ], [ %last_pushed_cv.0.ph, %land.rhs6194 ], [ %last_pushed_cv.0.ph, %land.rhs6253 ]
  %caller_cv.0.ph.lcssa14814 = phi ptr [ %caller_cv.0.ph, %cond.end6307 ], [ %caller_cv.0.ph, %cond.true6148 ], [ %caller_cv.0.ph, %cond.true6223 ], [ %caller_cv.0.ph, %cond.true6178 ], [ %caller_cv.0.ph, %land.rhs6194 ], [ %caller_cv.0.ph, %land.rhs6253 ]
  %multicall_oldcatch.0.ph.lcssa14777 = phi i8 [ %multicall_oldcatch.0.ph, %cond.end6307 ], [ %multicall_oldcatch.0.ph, %cond.true6148 ], [ %multicall_oldcatch.0.ph, %cond.true6223 ], [ %multicall_oldcatch.0.ph, %cond.true6178 ], [ %multicall_oldcatch.0.ph, %land.rhs6194 ], [ %multicall_oldcatch.0.ph, %land.rhs6253 ]
  %multicall_cv.0.ph.lcssa14740 = phi ptr [ %multicall_cv.0.ph, %cond.end6307 ], [ %multicall_cv.0.ph, %cond.true6148 ], [ %multicall_cv.0.ph, %cond.true6223 ], [ %multicall_cv.0.ph, %cond.true6178 ], [ %multicall_cv.0.ph, %land.rhs6194 ], [ %multicall_cv.0.ph, %land.rhs6253 ]
  %last_pad.0.ph.lcssa14704 = phi ptr [ %last_pad.0.ph, %cond.end6307 ], [ %last_pad.0.ph, %cond.true6148 ], [ %last_pad.0.ph, %cond.true6223 ], [ %last_pad.0.ph, %cond.true6178 ], [ %last_pad.0.ph, %land.rhs6194 ], [ %last_pad.0.ph, %land.rhs6253 ]
  %sw.0.ph9430.lcssa14642 = phi i1 [ %sw.0.ph9430, %cond.end6307 ], [ %sw.0.ph9430, %cond.true6148 ], [ %sw.0.ph9430, %cond.true6223 ], [ %sw.0.ph9430, %cond.true6178 ], [ %sw.0.ph9430, %land.rhs6194 ], [ %sw.0.ph9430, %land.rhs6253 ]
  %match.1.ph.lcssa14562 = phi i8 [ %match.1.ph, %cond.end6307 ], [ %match.1.ph, %cond.true6148 ], [ %match.1.ph, %cond.true6223 ], [ %match.1.ph, %cond.true6178 ], [ %match.1.ph, %land.rhs6194 ], [ %match.1.ph, %land.rhs6253 ]
  %is_utf8_pat.1.ph.lcssa14487 = phi i8 [ %is_utf8_pat.1.ph, %cond.end6307 ], [ %is_utf8_pat.1.ph, %cond.true6148 ], [ %is_utf8_pat.1.ph, %cond.true6223 ], [ %is_utf8_pat.1.ph, %cond.true6178 ], [ %is_utf8_pat.1.ph, %land.rhs6194 ], [ %is_utf8_pat.1.ph, %land.rhs6253 ]
  %logical.1.ph.lcssa14413 = phi i32 [ %logical.1.ph, %cond.end6307 ], [ %logical.1.ph, %cond.true6148 ], [ %logical.1.ph, %cond.true6223 ], [ %logical.1.ph, %cond.true6178 ], [ %logical.1.ph, %land.rhs6194 ], [ %logical.1.ph, %land.rhs6253 ]
  %sv_yes_mark.1.ph.lcssa14336 = phi ptr [ %sv_yes_mark.1.ph, %cond.end6307 ], [ %sv_yes_mark.1.ph, %cond.true6148 ], [ %sv_yes_mark.1.ph, %cond.true6223 ], [ %sv_yes_mark.1.ph, %cond.true6178 ], [ %sv_yes_mark.1.ph, %land.rhs6194 ], [ %sv_yes_mark.1.ph, %land.rhs6253 ]
  %sv_commit.1.ph.lcssa14259 = phi ptr [ %sv_commit.1.ph, %cond.end6307 ], [ %sv_commit.1.ph, %cond.true6148 ], [ %sv_commit.1.ph, %cond.true6223 ], [ %sv_commit.1.ph, %cond.true6178 ], [ %sv_commit.1.ph, %land.rhs6194 ], [ %sv_commit.1.ph, %land.rhs6253 ]
  %popmark.1.ph.lcssa14180 = phi ptr [ %popmark.1.ph, %cond.end6307 ], [ %popmark.1.ph, %cond.true6148 ], [ %popmark.1.ph, %cond.true6223 ], [ %popmark.1.ph, %cond.true6178 ], [ %popmark.1.ph, %land.rhs6194 ], [ %popmark.1.ph, %land.rhs6253 ]
  %do_cutgroup.1.ph.lcssa14102 = phi i8 [ %do_cutgroup.1.ph, %cond.end6307 ], [ %do_cutgroup.1.ph, %cond.true6148 ], [ %do_cutgroup.1.ph, %cond.true6223 ], [ %do_cutgroup.1.ph, %cond.true6178 ], [ %do_cutgroup.1.ph, %land.rhs6194 ], [ %do_cutgroup.1.ph, %land.rhs6253 ]
  %no_final.1.ph.lcssa14024 = phi i8 [ %no_final.1.ph, %cond.end6307 ], [ %no_final.1.ph, %cond.true6148 ], [ %no_final.1.ph, %cond.true6223 ], [ %no_final.1.ph, %cond.true6178 ], [ %no_final.1.ph, %land.rhs6194 ], [ %no_final.1.ph, %land.rhs6253 ]
  %cur_curlyx.1.ph.lcssa13948 = phi ptr [ %cur_curlyx.1.ph, %cond.end6307 ], [ %cur_curlyx.1.ph, %cond.true6148 ], [ %cur_curlyx.1.ph, %cond.true6223 ], [ %cur_curlyx.1.ph, %cond.true6178 ], [ %cur_curlyx.1.ph, %land.rhs6194 ], [ %cur_curlyx.1.ph, %land.rhs6253 ]
  %cur_eval.1.ph.lcssa13871 = phi ptr [ %cur_eval.1.ph, %cond.end6307 ], [ %cur_eval.1.ph, %cond.true6148 ], [ %cur_eval.1.ph, %cond.true6223 ], [ %cur_eval.1.ph, %cond.true6178 ], [ %cur_eval.1.ph, %land.rhs6194 ], [ %cur_eval.1.ph, %land.rhs6253 ]
  %mark_state.1.ph.lcssa13794 = phi ptr [ %mark_state.1.ph, %cond.end6307 ], [ %mark_state.1.ph, %cond.true6148 ], [ %mark_state.1.ph, %cond.true6223 ], [ %mark_state.1.ph, %cond.true6178 ], [ %mark_state.1.ph, %land.rhs6194 ], [ %mark_state.1.ph, %land.rhs6253 ]
  %yes_state.1.ph.lcssa13716 = phi ptr [ %yes_state.1.ph, %cond.end6307 ], [ %yes_state.1.ph, %cond.true6148 ], [ %yes_state.1.ph, %cond.true6223 ], [ %yes_state.1.ph, %cond.true6178 ], [ %yes_state.1.ph, %land.rhs6194 ], [ %yes_state.1.ph, %land.rhs6253 ]
  %nochange_depth.1.ph.lcssa13642 = phi i32 [ %nochange_depth.1.ph, %cond.end6307 ], [ %nochange_depth.1.ph, %cond.true6148 ], [ %nochange_depth.1.ph, %cond.true6223 ], [ %nochange_depth.1.ph, %cond.true6178 ], [ %nochange_depth.1.ph, %land.rhs6194 ], [ %nochange_depth.1.ph, %land.rhs6253 ]
  %depth.1.ph.lcssa13563 = phi i32 [ %depth.1.ph, %cond.end6307 ], [ %depth.1.ph, %cond.true6148 ], [ %depth.1.ph, %cond.true6223 ], [ %depth.1.ph, %cond.true6178 ], [ %depth.1.ph, %land.rhs6194 ], [ %depth.1.ph, %land.rhs6253 ]
  %next.1.ph.lcssa13489 = phi ptr [ %next.1.ph, %cond.end6307 ], [ %next.1.ph, %cond.true6148 ], [ %next.1.ph, %cond.true6223 ], [ %next.1.ph, %cond.true6178 ], [ %next.1.ph, %land.rhs6194 ], [ %next.1.ph, %land.rhs6253 ]
  %st.1.ph.lcssa13410 = phi ptr [ %st.1.ph, %cond.end6307 ], [ %st.1.ph, %cond.true6148 ], [ %st.1.ph, %cond.true6223 ], [ %st.1.ph, %cond.true6178 ], [ %st.1.ph, %land.rhs6194 ], [ %st.1.ph, %land.rhs6253 ]
  %rexi.1.ph.lcssa13335 = phi ptr [ %rexi.1.ph, %cond.end6307 ], [ %rexi.1.ph, %cond.true6148 ], [ %rexi.1.ph, %cond.true6223 ], [ %rexi.1.ph, %cond.true6178 ], [ %rexi.1.ph, %land.rhs6194 ], [ %rexi.1.ph, %land.rhs6253 ]
  %rex.1.ph.lcssa13259 = phi ptr [ %rex.1.ph, %cond.end6307 ], [ %rex.1.ph, %cond.true6148 ], [ %rex.1.ph, %cond.true6223 ], [ %rex.1.ph, %cond.true6178 ], [ %rex.1.ph, %land.rhs6194 ], [ %rex.1.ph, %land.rhs6253 ]
  %rex_sv.1.ph.lcssa13182 = phi ptr [ %rex_sv.1.ph, %cond.end6307 ], [ %rex_sv.1.ph, %cond.true6148 ], [ %rex_sv.1.ph, %cond.true6223 ], [ %rex_sv.1.ph, %cond.true6178 ], [ %rex_sv.1.ph, %land.rhs6194 ], [ %rex_sv.1.ph, %land.rhs6253 ]
  %minmod.1.lcssa12929.lcssa = phi i8 [ %minmod.1.lcssa12929, %cond.end6307 ], [ %minmod.1.lcssa12929, %cond.true6148 ], [ %minmod.1.lcssa12929, %cond.true6223 ], [ %minmod.1.lcssa12929, %cond.true6178 ], [ %minmod.1.lcssa12929, %land.rhs6194 ], [ %minmod.1.lcssa12929, %land.rhs6253 ]
  %locinput.1.lcssa12669.lcssa = phi ptr [ %locinput.1.lcssa12669, %cond.end6307 ], [ %locinput.1.lcssa12669, %cond.true6148 ], [ %locinput.1.lcssa12669, %cond.true6223 ], [ %locinput.1.lcssa12669, %cond.true6178 ], [ %locinput.1.lcssa12669, %land.rhs6194 ], [ %locinput.1.lcssa12669, %land.rhs6253 ]
  %cond63089387.ph = phi i64 [ 1, %cond.end6307 ], [ 1, %cond.true6223 ], [ 1, %cond.true6148 ], [ 2, %cond.true6178 ], [ 3, %land.rhs6194 ], [ 2, %land.rhs6253 ]
  br label %if.then6310

if.then6310:                                      ; preds = %if.then6310.loopexit, %cond.true6239, %cond.true6164
  %last_pushed_cv.0.ph14875 = phi ptr [ %last_pushed_cv.0.ph.lcssa14851, %cond.true6239 ], [ %last_pushed_cv.0.ph.lcssa14852, %cond.true6164 ], [ %last_pushed_cv.0.ph.lcssa14850, %if.then6310.loopexit ]
  %caller_cv.0.ph14838 = phi ptr [ %caller_cv.0.ph.lcssa14815, %cond.true6239 ], [ %caller_cv.0.ph.lcssa14816, %cond.true6164 ], [ %caller_cv.0.ph.lcssa14814, %if.then6310.loopexit ]
  %multicall_oldcatch.0.ph14802 = phi i8 [ %multicall_oldcatch.0.ph.lcssa14778, %cond.true6239 ], [ %multicall_oldcatch.0.ph.lcssa14779, %cond.true6164 ], [ %multicall_oldcatch.0.ph.lcssa14777, %if.then6310.loopexit ]
  %multicall_cv.0.ph14765 = phi ptr [ %multicall_cv.0.ph.lcssa14741, %cond.true6239 ], [ %multicall_cv.0.ph.lcssa14742, %cond.true6164 ], [ %multicall_cv.0.ph.lcssa14740, %if.then6310.loopexit ]
  %last_pad.0.ph14728 = phi ptr [ %last_pad.0.ph.lcssa14705, %cond.true6239 ], [ %last_pad.0.ph.lcssa14706, %cond.true6164 ], [ %last_pad.0.ph.lcssa14704, %if.then6310.loopexit ]
  %sw.0.ph943014689 = phi i1 [ %sw.0.ph9430.lcssa14643, %cond.true6239 ], [ %sw.0.ph9430.lcssa14644, %cond.true6164 ], [ %sw.0.ph9430.lcssa14642, %if.then6310.loopexit ]
  %match.1.ph14616 = phi i8 [ %match.1.ph.lcssa14563, %cond.true6239 ], [ %match.1.ph.lcssa14564, %cond.true6164 ], [ %match.1.ph.lcssa14562, %if.then6310.loopexit ]
  %is_utf8_pat.1.ph14530 = phi i8 [ %is_utf8_pat.1.ph.lcssa14488, %cond.true6239 ], [ %is_utf8_pat.1.ph.lcssa14489, %cond.true6164 ], [ %is_utf8_pat.1.ph.lcssa14487, %if.then6310.loopexit ]
  %logical.1.ph14463 = phi i32 [ %logical.1.ph.lcssa14414, %cond.true6239 ], [ %logical.1.ph.lcssa14415, %cond.true6164 ], [ %logical.1.ph.lcssa14413, %if.then6310.loopexit ]
  %sv_yes_mark.1.ph14379 = phi ptr [ %sv_yes_mark.1.ph.lcssa14337, %cond.true6239 ], [ %sv_yes_mark.1.ph.lcssa14338, %cond.true6164 ], [ %sv_yes_mark.1.ph.lcssa14336, %if.then6310.loopexit ]
  %sv_commit.1.ph14302 = phi ptr [ %sv_commit.1.ph.lcssa14260, %cond.true6239 ], [ %sv_commit.1.ph.lcssa14261, %cond.true6164 ], [ %sv_commit.1.ph.lcssa14259, %if.then6310.loopexit ]
  %popmark.1.ph14223 = phi ptr [ %popmark.1.ph.lcssa14181, %cond.true6239 ], [ %popmark.1.ph.lcssa14182, %cond.true6164 ], [ %popmark.1.ph.lcssa14180, %if.then6310.loopexit ]
  %do_cutgroup.1.ph14145 = phi i8 [ %do_cutgroup.1.ph.lcssa14103, %cond.true6239 ], [ %do_cutgroup.1.ph.lcssa14104, %cond.true6164 ], [ %do_cutgroup.1.ph.lcssa14102, %if.then6310.loopexit ]
  %no_final.1.ph14067 = phi i8 [ %no_final.1.ph.lcssa14025, %cond.true6239 ], [ %no_final.1.ph.lcssa14026, %cond.true6164 ], [ %no_final.1.ph.lcssa14024, %if.then6310.loopexit ]
  %cur_curlyx.1.ph13991 = phi ptr [ %cur_curlyx.1.ph.lcssa13949, %cond.true6239 ], [ %cur_curlyx.1.ph.lcssa13950, %cond.true6164 ], [ %cur_curlyx.1.ph.lcssa13948, %if.then6310.loopexit ]
  %cur_eval.1.ph13914 = phi ptr [ %cur_eval.1.ph.lcssa13872, %cond.true6239 ], [ %cur_eval.1.ph.lcssa13873, %cond.true6164 ], [ %cur_eval.1.ph.lcssa13871, %if.then6310.loopexit ]
  %mark_state.1.ph13837 = phi ptr [ %mark_state.1.ph.lcssa13795, %cond.true6239 ], [ %mark_state.1.ph.lcssa13796, %cond.true6164 ], [ %mark_state.1.ph.lcssa13794, %if.then6310.loopexit ]
  %yes_state.1.ph13759 = phi ptr [ %yes_state.1.ph.lcssa13717, %cond.true6239 ], [ %yes_state.1.ph.lcssa13718, %cond.true6164 ], [ %yes_state.1.ph.lcssa13716, %if.then6310.loopexit ]
  %nochange_depth.1.ph13692 = phi i32 [ %nochange_depth.1.ph.lcssa13643, %cond.true6239 ], [ %nochange_depth.1.ph.lcssa13644, %cond.true6164 ], [ %nochange_depth.1.ph.lcssa13642, %if.then6310.loopexit ]
  %depth.1.ph13606 = phi i32 [ %depth.1.ph.lcssa13564, %cond.true6239 ], [ %depth.1.ph.lcssa13565, %cond.true6164 ], [ %depth.1.ph.lcssa13563, %if.then6310.loopexit ]
  %next.1.ph13539 = phi ptr [ %next.1.ph.lcssa13490, %cond.true6239 ], [ %next.1.ph.lcssa13491, %cond.true6164 ], [ %next.1.ph.lcssa13489, %if.then6310.loopexit ]
  %st.1.ph13453 = phi ptr [ %st.1.ph.lcssa13411, %cond.true6239 ], [ %st.1.ph.lcssa13412, %cond.true6164 ], [ %st.1.ph.lcssa13410, %if.then6310.loopexit ]
  %rexi.1.ph13378 = phi ptr [ %rexi.1.ph.lcssa13336, %cond.true6239 ], [ %rexi.1.ph.lcssa13337, %cond.true6164 ], [ %rexi.1.ph.lcssa13335, %if.then6310.loopexit ]
  %rex.1.ph13302 = phi ptr [ %rex.1.ph.lcssa13260, %cond.true6239 ], [ %rex.1.ph.lcssa13261, %cond.true6164 ], [ %rex.1.ph.lcssa13259, %if.then6310.loopexit ]
  %rex_sv.1.ph13225 = phi ptr [ %rex_sv.1.ph.lcssa13183, %cond.true6239 ], [ %rex_sv.1.ph.lcssa13184, %cond.true6164 ], [ %rex_sv.1.ph.lcssa13182, %if.then6310.loopexit ]
  %minmod.1.lcssa1292912975 = phi i8 [ %minmod.1.lcssa12929.lcssa12973, %cond.true6239 ], [ %minmod.1.lcssa12929.lcssa12974, %cond.true6164 ], [ %minmod.1.lcssa12929.lcssa, %if.then6310.loopexit ]
  %locinput.1.lcssa1266912713 = phi ptr [ %locinput.1.lcssa12669.lcssa12711, %cond.true6239 ], [ %locinput.1.lcssa12669.lcssa12712, %cond.true6164 ], [ %locinput.1.lcssa12669.lcssa, %if.then6310.loopexit ]
  %cond63089387 = phi i64 [ %cond6244, %cond.true6239 ], [ %cond6169, %cond.true6164 ], [ %cond63089387.ph, %if.then6310.loopexit ]
  %add.ptr6312 = getelementptr inbounds nuw i8, ptr %locinput.1.lcssa1266912713, i64 %cond63089387
  br label %sw.epilog6360

sw.default6315:                                   ; preds = %cond.end42
  %cond43.lcssa = phi i32 [ %cond43, %cond.end42 ]
  %minmod.1.lcssa = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa = phi ptr [ %scan.1, %cond.end42 ]
  %1198 = load ptr, ptr @PL_stderrgv, align 8
  %tobool6316.not = icmp eq ptr %1198, null
  br i1 %tobool6316.not, label %cond.false6338, label %land.lhs.true6317

land.lhs.true6317:                                ; preds = %sw.default6315
  %sv_flags6318 = getelementptr inbounds nuw i8, ptr %1198, i64 12
  %1199 = load i32, ptr %sv_flags6318, align 4
  %and6319 = and i32 %1199, 255
  %cmp6320 = icmp eq i32 %and6319, 9
  br i1 %cmp6320, label %land.lhs.true6322, label %cond.false6338

land.lhs.true6322:                                ; preds = %land.lhs.true6317
  %sv_u6323 = getelementptr inbounds nuw i8, ptr %1198, i64 16
  %1200 = load ptr, ptr %sv_u6323, align 8
  %gp_io = getelementptr inbounds nuw i8, ptr %1200, i64 8
  %1201 = load ptr, ptr %gp_io, align 8
  %tobool6325.not = icmp eq ptr %1201, null
  br i1 %tobool6325.not, label %cond.false6338, label %land.lhs.true6326

land.lhs.true6326:                                ; preds = %land.lhs.true6322
  %1202 = load ptr, ptr %1201, align 8
  %xio_ofp = getelementptr inbounds nuw i8, ptr %1202, i64 40
  %1203 = load ptr, ptr %xio_ofp, align 8
  %tobool6331.not = icmp eq ptr %1203, null
  br i1 %tobool6331.not, label %cond.false6338, label %cond.end6340

cond.false6338:                                   ; preds = %land.lhs.true6326, %land.lhs.true6322, %land.lhs.true6317, %sw.default6315
  %call6339 = call ptr @Perl_PerlIO_stderr() #10
  br label %cond.end6340

cond.end6340:                                     ; preds = %cond.false6338, %land.lhs.true6326
  %cond6341 = phi ptr [ %call6339, %cond.false6338 ], [ %1203, %land.lhs.true6326 ]
  %1204 = ptrtoint ptr %scan.1.lcssa to i64
  %type6342 = getelementptr inbounds nuw i8, ptr %scan.1.lcssa, i64 1
  %1205 = load i8, ptr %type6342, align 1
  %conv6343 = zext i8 %1205 to i32
  %call6344 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %cond6341, ptr noundef nonnull @.str.15, i64 noundef %1204, i32 noundef %conv6343) #10
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.16) #10
  br label %increment_locinput

increment_locinput:                               ; preds = %cond.end6340, %if.end1789, %sw.bb117, %sw.bb107
  %cond4313089 = phi i32 [ %cond43.lcssa13016, %if.end1789 ], [ %cond43.lcssa12993, %sw.bb117 ], [ %cond43.lcssa12991, %sw.bb107 ], [ %cond43.lcssa, %cond.end6340 ]
  %minmod.112948 = phi i8 [ %minmod.1.lcssa12861, %if.end1789 ], [ %minmod.1.lcssa12838, %sw.bb117 ], [ %minmod.1.lcssa12836, %sw.bb107 ], [ %minmod.1.lcssa, %cond.end6340 ]
  %locinput.112687 = phi ptr [ %locinput.1.lcssa12601, %if.end1789 ], [ %locinput.1.lcssa12578, %sw.bb117 ], [ %locinput.1.lcssa12576, %sw.bb107 ], [ %locinput.1.lcssa, %cond.end6340 ]
  %scan.112541 = phi ptr [ %scan.1.lcssa12468, %if.end1789 ], [ %scan.1.lcssa12445, %sw.bb117 ], [ %scan.1.lcssa12443, %sw.bb107 ], [ %scan.1.lcssa, %cond.end6340 ]
  br i1 %loadedv, label %if.then6346, label %if.else6357

if.then6346:                                      ; preds = %increment_locinput
  %idxprom6347 = sext i32 %cond4313089 to i64
  %arrayidx6348 = getelementptr inbounds i8, ptr @PL_utf8skip, i64 %idxprom6347
  %1206 = load i8, ptr %arrayidx6348, align 1
  %idx.ext6350 = zext i8 %1206 to i64
  %add.ptr6351 = getelementptr inbounds nuw i8, ptr %locinput.112687, i64 %idx.ext6350
  %1207 = load ptr, ptr %strend, align 8
  %cmp6353 = icmp ugt ptr %add.ptr6351, %1207
  br i1 %cmp6353, label %no_silent, label %sw.epilog6360.loopexit12320

if.else6357:                                      ; preds = %increment_locinput
  %last_pushed_cv.0.ph.lcssa14872 = phi ptr [ %last_pushed_cv.0.ph, %increment_locinput ]
  %caller_cv.0.ph.lcssa14836 = phi ptr [ %caller_cv.0.ph, %increment_locinput ]
  %multicall_oldcatch.0.ph.lcssa14799 = phi i8 [ %multicall_oldcatch.0.ph, %increment_locinput ]
  %multicall_cv.0.ph.lcssa14762 = phi ptr [ %multicall_cv.0.ph, %increment_locinput ]
  %last_pad.0.ph.lcssa14726 = phi ptr [ %last_pad.0.ph, %increment_locinput ]
  %sw.0.ph9430.lcssa14679 = phi i1 [ %sw.0.ph9430, %increment_locinput ]
  %match.1.ph.lcssa14601 = phi i8 [ %match.1.ph, %increment_locinput ]
  %is_utf8_pat.1.ph.lcssa14526 = phi i8 [ %is_utf8_pat.1.ph, %increment_locinput ]
  %logical.1.ph.lcssa14452 = phi i32 [ %logical.1.ph, %increment_locinput ]
  %sv_yes_mark.1.ph.lcssa14375 = phi ptr [ %sv_yes_mark.1.ph, %increment_locinput ]
  %sv_commit.1.ph.lcssa14298 = phi ptr [ %sv_commit.1.ph, %increment_locinput ]
  %popmark.1.ph.lcssa14219 = phi ptr [ %popmark.1.ph, %increment_locinput ]
  %do_cutgroup.1.ph.lcssa14141 = phi i8 [ %do_cutgroup.1.ph, %increment_locinput ]
  %no_final.1.ph.lcssa14063 = phi i8 [ %no_final.1.ph, %increment_locinput ]
  %cur_curlyx.1.ph.lcssa13987 = phi ptr [ %cur_curlyx.1.ph, %increment_locinput ]
  %cur_eval.1.ph.lcssa13910 = phi ptr [ %cur_eval.1.ph, %increment_locinput ]
  %mark_state.1.ph.lcssa13833 = phi ptr [ %mark_state.1.ph, %increment_locinput ]
  %yes_state.1.ph.lcssa13755 = phi ptr [ %yes_state.1.ph, %increment_locinput ]
  %nochange_depth.1.ph.lcssa13681 = phi i32 [ %nochange_depth.1.ph, %increment_locinput ]
  %depth.1.ph.lcssa13602 = phi i32 [ %depth.1.ph, %increment_locinput ]
  %next.1.ph.lcssa13528 = phi ptr [ %next.1.ph, %increment_locinput ]
  %st.1.ph.lcssa13449 = phi ptr [ %st.1.ph, %increment_locinput ]
  %rexi.1.ph.lcssa13374 = phi ptr [ %rexi.1.ph, %increment_locinput ]
  %rex.1.ph.lcssa13298 = phi ptr [ %rex.1.ph, %increment_locinput ]
  %rex_sv.1.ph.lcssa13221 = phi ptr [ %rex_sv.1.ph, %increment_locinput ]
  %minmod.112948.lcssa = phi i8 [ %minmod.112948, %increment_locinput ]
  %locinput.112687.lcssa = phi ptr [ %locinput.112687, %increment_locinput ]
  %incdec.ptr6358 = getelementptr inbounds nuw i8, ptr %locinput.112687.lcssa, i64 1
  br label %sw.epilog6360

sw.epilog6360.loopexit9419:                       ; preds = %cond.end42, %cond.end42
  %last_pushed_cv.0.ph.lcssa14840 = phi ptr [ %last_pushed_cv.0.ph, %cond.end42 ], [ %last_pushed_cv.0.ph, %cond.end42 ]
  %caller_cv.0.ph.lcssa14804 = phi ptr [ %caller_cv.0.ph, %cond.end42 ], [ %caller_cv.0.ph, %cond.end42 ]
  %multicall_oldcatch.0.ph.lcssa14767 = phi i8 [ %multicall_oldcatch.0.ph, %cond.end42 ], [ %multicall_oldcatch.0.ph, %cond.end42 ]
  %multicall_cv.0.ph.lcssa14730 = phi ptr [ %multicall_cv.0.ph, %cond.end42 ], [ %multicall_cv.0.ph, %cond.end42 ]
  %last_pad.0.ph.lcssa14694 = phi ptr [ %last_pad.0.ph, %cond.end42 ], [ %last_pad.0.ph, %cond.end42 ]
  %sw.0.ph9430.lcssa14619 = phi i1 [ %sw.0.ph9430, %cond.end42 ], [ %sw.0.ph9430, %cond.end42 ]
  %match.1.ph.lcssa14539 = phi i8 [ %match.1.ph, %cond.end42 ], [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14464 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ], [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14390 = phi i32 [ %logical.1.ph, %cond.end42 ], [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14313 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ], [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14236 = phi ptr [ %sv_commit.1.ph, %cond.end42 ], [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14157 = phi ptr [ %popmark.1.ph, %cond.end42 ], [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14079 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ], [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14001 = phi i8 [ %no_final.1.ph, %cond.end42 ], [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13925 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ], [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13848 = phi ptr [ %cur_eval.1.ph, %cond.end42 ], [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13771 = phi ptr [ %mark_state.1.ph, %cond.end42 ], [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13693 = phi ptr [ %yes_state.1.ph, %cond.end42 ], [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13619 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ], [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13540 = phi i32 [ %depth.1.ph, %cond.end42 ], [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13466 = phi ptr [ %next.1.ph, %cond.end42 ], [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13387 = phi ptr [ %st.1.ph, %cond.end42 ], [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13312 = phi ptr [ %rexi.1.ph, %cond.end42 ], [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13236 = phi ptr [ %rex.1.ph, %cond.end42 ], [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13159 = phi ptr [ %rex_sv.1.ph, %cond.end42 ], [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12876 = phi i8 [ %minmod.1, %cond.end42 ], [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12616 = phi ptr [ %locinput.1, %cond.end42 ], [ %locinput.1, %cond.end42 ]
  br label %sw.epilog6360

sw.epilog6360.loopexit:                           ; preds = %if.end793
  %last_pushed_cv.0.ph.lcssa14868 = phi ptr [ %last_pushed_cv.0.ph, %if.end793 ]
  %caller_cv.0.ph.lcssa14832 = phi ptr [ %caller_cv.0.ph, %if.end793 ]
  %multicall_oldcatch.0.ph.lcssa14795 = phi i8 [ %multicall_oldcatch.0.ph, %if.end793 ]
  %multicall_cv.0.ph.lcssa14758 = phi ptr [ %multicall_cv.0.ph, %if.end793 ]
  %last_pad.0.ph.lcssa14722 = phi ptr [ %last_pad.0.ph, %if.end793 ]
  %sw.0.ph9430.lcssa14674 = phi i1 [ %sw.0.ph9430, %if.end793 ]
  %match.1.ph.lcssa14596 = phi i8 [ %match.1.ph, %if.end793 ]
  %is_utf8_pat.1.ph.lcssa14521 = phi i8 [ %is_utf8_pat.1.ph, %if.end793 ]
  %logical.1.ph.lcssa14447 = phi i32 [ %logical.1.ph, %if.end793 ]
  %sv_yes_mark.1.ph.lcssa14370 = phi ptr [ %sv_yes_mark.1.ph, %if.end793 ]
  %sv_commit.1.ph.lcssa14293 = phi ptr [ %sv_commit.1.ph, %if.end793 ]
  %popmark.1.ph.lcssa14214 = phi ptr [ %popmark.1.ph, %if.end793 ]
  %do_cutgroup.1.ph.lcssa14136 = phi i8 [ %do_cutgroup.1.ph, %if.end793 ]
  %no_final.1.ph.lcssa14058 = phi i8 [ %no_final.1.ph, %if.end793 ]
  %cur_curlyx.1.ph.lcssa13982 = phi ptr [ %cur_curlyx.1.ph, %if.end793 ]
  %cur_eval.1.ph.lcssa13905 = phi ptr [ %cur_eval.1.ph, %if.end793 ]
  %mark_state.1.ph.lcssa13828 = phi ptr [ %mark_state.1.ph, %if.end793 ]
  %yes_state.1.ph.lcssa13750 = phi ptr [ %yes_state.1.ph, %if.end793 ]
  %nochange_depth.1.ph.lcssa13676 = phi i32 [ %nochange_depth.1.ph, %if.end793 ]
  %depth.1.ph.lcssa13597 = phi i32 [ %depth.1.ph, %if.end793 ]
  %next.1.ph.lcssa13523 = phi ptr [ %next.1.ph, %if.end793 ]
  %st.1.ph.lcssa13444 = phi ptr [ %st.1.ph, %if.end793 ]
  %rexi.1.ph.lcssa13369 = phi ptr [ %rexi.1.ph, %if.end793 ]
  %rex.1.ph.lcssa13293 = phi ptr [ %rex.1.ph, %if.end793 ]
  %rex_sv.1.ph.lcssa13216 = phi ptr [ %rex_sv.1.ph, %if.end793 ]
  %l.1.lcssa = phi ptr [ %l.1, %if.end793 ]
  %minmod.1.lcssa12842.lcssa12981 = phi i8 [ %minmod.1.lcssa12842, %if.end793 ]
  br label %sw.epilog6360

sw.epilog6360.loopexit12296:                      ; preds = %if.end835
  %last_pushed_cv.0.ph.lcssa14867 = phi ptr [ %last_pushed_cv.0.ph, %if.end835 ]
  %caller_cv.0.ph.lcssa14831 = phi ptr [ %caller_cv.0.ph, %if.end835 ]
  %multicall_oldcatch.0.ph.lcssa14794 = phi i8 [ %multicall_oldcatch.0.ph, %if.end835 ]
  %multicall_cv.0.ph.lcssa14757 = phi ptr [ %multicall_cv.0.ph, %if.end835 ]
  %last_pad.0.ph.lcssa14721 = phi ptr [ %last_pad.0.ph, %if.end835 ]
  %sw.0.ph9430.lcssa14673 = phi i1 [ %sw.0.ph9430, %if.end835 ]
  %match.1.ph.lcssa14595 = phi i8 [ %match.1.ph, %if.end835 ]
  %is_utf8_pat.1.ph.lcssa14520 = phi i8 [ %is_utf8_pat.1.ph, %if.end835 ]
  %logical.1.ph.lcssa14446 = phi i32 [ %logical.1.ph, %if.end835 ]
  %sv_yes_mark.1.ph.lcssa14369 = phi ptr [ %sv_yes_mark.1.ph, %if.end835 ]
  %sv_commit.1.ph.lcssa14292 = phi ptr [ %sv_commit.1.ph, %if.end835 ]
  %popmark.1.ph.lcssa14213 = phi ptr [ %popmark.1.ph, %if.end835 ]
  %do_cutgroup.1.ph.lcssa14135 = phi i8 [ %do_cutgroup.1.ph, %if.end835 ]
  %no_final.1.ph.lcssa14057 = phi i8 [ %no_final.1.ph, %if.end835 ]
  %cur_curlyx.1.ph.lcssa13981 = phi ptr [ %cur_curlyx.1.ph, %if.end835 ]
  %cur_eval.1.ph.lcssa13904 = phi ptr [ %cur_eval.1.ph, %if.end835 ]
  %mark_state.1.ph.lcssa13827 = phi ptr [ %mark_state.1.ph, %if.end835 ]
  %yes_state.1.ph.lcssa13749 = phi ptr [ %yes_state.1.ph, %if.end835 ]
  %nochange_depth.1.ph.lcssa13675 = phi i32 [ %nochange_depth.1.ph, %if.end835 ]
  %depth.1.ph.lcssa13596 = phi i32 [ %depth.1.ph, %if.end835 ]
  %next.1.ph.lcssa13522 = phi ptr [ %next.1.ph, %if.end835 ]
  %st.1.ph.lcssa13443 = phi ptr [ %st.1.ph, %if.end835 ]
  %rexi.1.ph.lcssa13368 = phi ptr [ %rexi.1.ph, %if.end835 ]
  %rex.1.ph.lcssa13292 = phi ptr [ %rex.1.ph, %if.end835 ]
  %rex_sv.1.ph.lcssa13215 = phi ptr [ %rex_sv.1.ph, %if.end835 ]
  %incdec.ptr836.lcssa = phi ptr [ %incdec.ptr836, %if.end835 ]
  %minmod.1.lcssa12842.lcssa = phi i8 [ %minmod.1.lcssa12842, %if.end835 ]
  br label %sw.epilog6360

sw.epilog6360.loopexit12314:                      ; preds = %cond.end42
  %last_pushed_cv.0.ph.lcssa14845 = phi ptr [ %last_pushed_cv.0.ph, %cond.end42 ]
  %caller_cv.0.ph.lcssa14809 = phi ptr [ %caller_cv.0.ph, %cond.end42 ]
  %multicall_oldcatch.0.ph.lcssa14772 = phi i8 [ %multicall_oldcatch.0.ph, %cond.end42 ]
  %multicall_cv.0.ph.lcssa14735 = phi ptr [ %multicall_cv.0.ph, %cond.end42 ]
  %last_pad.0.ph.lcssa14699 = phi ptr [ %last_pad.0.ph, %cond.end42 ]
  %match.1.ph.lcssa14547 = phi i8 [ %match.1.ph, %cond.end42 ]
  %is_utf8_pat.1.ph.lcssa14472 = phi i8 [ %is_utf8_pat.1.ph, %cond.end42 ]
  %logical.1.ph.lcssa14398 = phi i32 [ %logical.1.ph, %cond.end42 ]
  %sv_yes_mark.1.ph.lcssa14321 = phi ptr [ %sv_yes_mark.1.ph, %cond.end42 ]
  %sv_commit.1.ph.lcssa14244 = phi ptr [ %sv_commit.1.ph, %cond.end42 ]
  %popmark.1.ph.lcssa14165 = phi ptr [ %popmark.1.ph, %cond.end42 ]
  %do_cutgroup.1.ph.lcssa14087 = phi i8 [ %do_cutgroup.1.ph, %cond.end42 ]
  %no_final.1.ph.lcssa14009 = phi i8 [ %no_final.1.ph, %cond.end42 ]
  %cur_curlyx.1.ph.lcssa13933 = phi ptr [ %cur_curlyx.1.ph, %cond.end42 ]
  %cur_eval.1.ph.lcssa13856 = phi ptr [ %cur_eval.1.ph, %cond.end42 ]
  %mark_state.1.ph.lcssa13779 = phi ptr [ %mark_state.1.ph, %cond.end42 ]
  %yes_state.1.ph.lcssa13701 = phi ptr [ %yes_state.1.ph, %cond.end42 ]
  %nochange_depth.1.ph.lcssa13627 = phi i32 [ %nochange_depth.1.ph, %cond.end42 ]
  %depth.1.ph.lcssa13548 = phi i32 [ %depth.1.ph, %cond.end42 ]
  %next.1.ph.lcssa13474 = phi ptr [ %next.1.ph, %cond.end42 ]
  %st.1.ph.lcssa13395 = phi ptr [ %st.1.ph, %cond.end42 ]
  %rexi.1.ph.lcssa13320 = phi ptr [ %rexi.1.ph, %cond.end42 ]
  %rex.1.ph.lcssa13244 = phi ptr [ %rex.1.ph, %cond.end42 ]
  %rex_sv.1.ph.lcssa13167 = phi ptr [ %rex_sv.1.ph, %cond.end42 ]
  %minmod.1.lcssa12887 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12627 = phi ptr [ %locinput.1, %cond.end42 ]
  br label %sw.epilog6360

sw.epilog6360.loopexit12320:                      ; preds = %if.then6346, %cond.false2378, %cond.true2375, %if.end2368, %if.then2322, %if.end2297, %if.end1678, %cond.end1260, %if.end1221, %if.then896, %while.cond755.preheader, %while.cond797.preheader, %if.then242, %sw.bb102, %sw.bb86, %sw.bb78, %sw.bb59, %land.lhs.true, %sw.bb48, %sw.bb
  %last_pushed_cv.0.ph.lcssa14857 = phi ptr [ %last_pushed_cv.0.ph, %while.cond755.preheader ], [ %last_pushed_cv.0.ph, %while.cond797.preheader ], [ %last_pushed_cv.0.ph, %sw.bb ], [ %last_pushed_cv.0.ph, %land.lhs.true ], [ %last_pushed_cv.0.ph, %sw.bb48 ], [ %last_pushed_cv.0.ph, %sw.bb59 ], [ %last_pushed_cv.0.ph, %sw.bb78 ], [ %last_pushed_cv.0.ph, %sw.bb102 ], [ %last_pushed_cv.0.ph, %if.end1221 ], [ %last_pushed_cv.0.ph, %cond.end1260 ], [ %last_pushed_cv.0.ph, %if.end1678 ], [ %last_pushed_cv.0.ph, %if.end2297 ], [ %last_pushed_cv.0.ph, %if.then6346 ], [ %last_pushed_cv.0.ph, %cond.false2378 ], [ %last_pushed_cv.0.ph, %cond.true2375 ], [ %last_pushed_cv.0.ph, %if.end2368 ], [ %last_pushed_cv.0.ph, %if.then896 ], [ %last_pushed_cv.0.ph, %if.then2322 ], [ %last_pushed_cv.0.ph, %if.then242 ], [ %last_pushed_cv.0.ph, %sw.bb86 ]
  %caller_cv.0.ph.lcssa14821 = phi ptr [ %caller_cv.0.ph, %while.cond755.preheader ], [ %caller_cv.0.ph, %while.cond797.preheader ], [ %caller_cv.0.ph, %sw.bb ], [ %caller_cv.0.ph, %land.lhs.true ], [ %caller_cv.0.ph, %sw.bb48 ], [ %caller_cv.0.ph, %sw.bb59 ], [ %caller_cv.0.ph, %sw.bb78 ], [ %caller_cv.0.ph, %sw.bb102 ], [ %caller_cv.0.ph, %if.end1221 ], [ %caller_cv.0.ph, %cond.end1260 ], [ %caller_cv.0.ph, %if.end1678 ], [ %caller_cv.0.ph, %if.end2297 ], [ %caller_cv.0.ph, %if.then6346 ], [ %caller_cv.0.ph, %cond.false2378 ], [ %caller_cv.0.ph, %cond.true2375 ], [ %caller_cv.0.ph, %if.end2368 ], [ %caller_cv.0.ph, %if.then896 ], [ %caller_cv.0.ph, %if.then2322 ], [ %caller_cv.0.ph, %if.then242 ], [ %caller_cv.0.ph, %sw.bb86 ]
  %multicall_oldcatch.0.ph.lcssa14784 = phi i8 [ %multicall_oldcatch.0.ph, %while.cond755.preheader ], [ %multicall_oldcatch.0.ph, %while.cond797.preheader ], [ %multicall_oldcatch.0.ph, %sw.bb ], [ %multicall_oldcatch.0.ph, %land.lhs.true ], [ %multicall_oldcatch.0.ph, %sw.bb48 ], [ %multicall_oldcatch.0.ph, %sw.bb59 ], [ %multicall_oldcatch.0.ph, %sw.bb78 ], [ %multicall_oldcatch.0.ph, %sw.bb102 ], [ %multicall_oldcatch.0.ph, %if.end1221 ], [ %multicall_oldcatch.0.ph, %cond.end1260 ], [ %multicall_oldcatch.0.ph, %if.end1678 ], [ %multicall_oldcatch.0.ph, %if.end2297 ], [ %multicall_oldcatch.0.ph, %if.then6346 ], [ %multicall_oldcatch.0.ph, %cond.false2378 ], [ %multicall_oldcatch.0.ph, %cond.true2375 ], [ %multicall_oldcatch.0.ph, %if.end2368 ], [ %multicall_oldcatch.0.ph, %if.then896 ], [ %multicall_oldcatch.0.ph, %if.then2322 ], [ %multicall_oldcatch.0.ph, %if.then242 ], [ %multicall_oldcatch.0.ph, %sw.bb86 ]
  %multicall_cv.0.ph.lcssa14747 = phi ptr [ %multicall_cv.0.ph, %while.cond755.preheader ], [ %multicall_cv.0.ph, %while.cond797.preheader ], [ %multicall_cv.0.ph, %sw.bb ], [ %multicall_cv.0.ph, %land.lhs.true ], [ %multicall_cv.0.ph, %sw.bb48 ], [ %multicall_cv.0.ph, %sw.bb59 ], [ %multicall_cv.0.ph, %sw.bb78 ], [ %multicall_cv.0.ph, %sw.bb102 ], [ %multicall_cv.0.ph, %if.end1221 ], [ %multicall_cv.0.ph, %cond.end1260 ], [ %multicall_cv.0.ph, %if.end1678 ], [ %multicall_cv.0.ph, %if.end2297 ], [ %multicall_cv.0.ph, %if.then6346 ], [ %multicall_cv.0.ph, %cond.false2378 ], [ %multicall_cv.0.ph, %cond.true2375 ], [ %multicall_cv.0.ph, %if.end2368 ], [ %multicall_cv.0.ph, %if.then896 ], [ %multicall_cv.0.ph, %if.then2322 ], [ %multicall_cv.0.ph, %if.then242 ], [ %multicall_cv.0.ph, %sw.bb86 ]
  %last_pad.0.ph.lcssa14711 = phi ptr [ %last_pad.0.ph, %while.cond755.preheader ], [ %last_pad.0.ph, %while.cond797.preheader ], [ %last_pad.0.ph, %sw.bb ], [ %last_pad.0.ph, %land.lhs.true ], [ %last_pad.0.ph, %sw.bb48 ], [ %last_pad.0.ph, %sw.bb59 ], [ %last_pad.0.ph, %sw.bb78 ], [ %last_pad.0.ph, %sw.bb102 ], [ %last_pad.0.ph, %if.end1221 ], [ %last_pad.0.ph, %cond.end1260 ], [ %last_pad.0.ph, %if.end1678 ], [ %last_pad.0.ph, %if.end2297 ], [ %last_pad.0.ph, %if.then6346 ], [ %last_pad.0.ph, %cond.false2378 ], [ %last_pad.0.ph, %cond.true2375 ], [ %last_pad.0.ph, %if.end2368 ], [ %last_pad.0.ph, %if.then896 ], [ %last_pad.0.ph, %if.then2322 ], [ %last_pad.0.ph, %if.then242 ], [ %last_pad.0.ph, %sw.bb86 ]
  %sw.0.ph9430.lcssa14663 = phi i1 [ %sw.0.ph9430, %while.cond755.preheader ], [ %sw.0.ph9430, %while.cond797.preheader ], [ %sw.0.ph9430, %sw.bb ], [ %sw.0.ph9430, %land.lhs.true ], [ %sw.0.ph9430, %sw.bb48 ], [ %sw.0.ph9430, %sw.bb59 ], [ %sw.0.ph9430, %sw.bb78 ], [ %sw.0.ph9430, %sw.bb102 ], [ %sw.0.ph9430, %if.end1221 ], [ %sw.0.ph9430, %cond.end1260 ], [ %sw.0.ph9430, %if.end1678 ], [ %sw.0.ph9430, %if.end2297 ], [ %sw.0.ph9430, %if.then6346 ], [ %sw.0.ph9430, %cond.false2378 ], [ %sw.0.ph9430, %cond.true2375 ], [ %sw.0.ph9430, %if.end2368 ], [ %sw.0.ph9430, %if.then896 ], [ %sw.0.ph9430, %if.then2322 ], [ %sw.0.ph9430, %if.then242 ], [ %sw.0.ph9430, %sw.bb86 ]
  %is_utf8_pat.1.ph.lcssa14510 = phi i8 [ %is_utf8_pat.1.ph, %while.cond755.preheader ], [ %is_utf8_pat.1.ph, %while.cond797.preheader ], [ %is_utf8_pat.1.ph, %sw.bb ], [ %is_utf8_pat.1.ph, %land.lhs.true ], [ %is_utf8_pat.1.ph, %sw.bb48 ], [ %is_utf8_pat.1.ph, %sw.bb59 ], [ %is_utf8_pat.1.ph, %sw.bb78 ], [ %is_utf8_pat.1.ph, %sw.bb102 ], [ %is_utf8_pat.1.ph, %if.end1221 ], [ %is_utf8_pat.1.ph, %cond.end1260 ], [ %is_utf8_pat.1.ph, %if.end1678 ], [ %is_utf8_pat.1.ph, %if.end2297 ], [ %is_utf8_pat.1.ph, %if.then6346 ], [ %is_utf8_pat.1.ph, %cond.false2378 ], [ %is_utf8_pat.1.ph, %cond.true2375 ], [ %is_utf8_pat.1.ph, %if.end2368 ], [ %is_utf8_pat.1.ph, %if.then896 ], [ %is_utf8_pat.1.ph, %if.then2322 ], [ %is_utf8_pat.1.ph, %if.then242 ], [ %is_utf8_pat.1.ph, %sw.bb86 ]
  %logical.1.ph.lcssa14436 = phi i32 [ %logical.1.ph, %while.cond755.preheader ], [ %logical.1.ph, %while.cond797.preheader ], [ %logical.1.ph, %sw.bb ], [ %logical.1.ph, %land.lhs.true ], [ %logical.1.ph, %sw.bb48 ], [ %logical.1.ph, %sw.bb59 ], [ %logical.1.ph, %sw.bb78 ], [ %logical.1.ph, %sw.bb102 ], [ %logical.1.ph, %if.end1221 ], [ %logical.1.ph, %cond.end1260 ], [ %logical.1.ph, %if.end1678 ], [ %logical.1.ph, %if.end2297 ], [ %logical.1.ph, %if.then6346 ], [ %logical.1.ph, %cond.false2378 ], [ %logical.1.ph, %cond.true2375 ], [ %logical.1.ph, %if.end2368 ], [ %logical.1.ph, %if.then896 ], [ %logical.1.ph, %if.then2322 ], [ %logical.1.ph, %if.then242 ], [ %logical.1.ph, %sw.bb86 ]
  %sv_yes_mark.1.ph.lcssa14359 = phi ptr [ %sv_yes_mark.1.ph, %while.cond755.preheader ], [ %sv_yes_mark.1.ph, %while.cond797.preheader ], [ %sv_yes_mark.1.ph, %sw.bb ], [ %sv_yes_mark.1.ph, %land.lhs.true ], [ %sv_yes_mark.1.ph, %sw.bb48 ], [ %sv_yes_mark.1.ph, %sw.bb59 ], [ %sv_yes_mark.1.ph, %sw.bb78 ], [ %sv_yes_mark.1.ph, %sw.bb102 ], [ %sv_yes_mark.1.ph, %if.end1221 ], [ %sv_yes_mark.1.ph, %cond.end1260 ], [ %sv_yes_mark.1.ph, %if.end1678 ], [ %sv_yes_mark.1.ph, %if.end2297 ], [ %sv_yes_mark.1.ph, %if.then6346 ], [ %sv_yes_mark.1.ph, %cond.false2378 ], [ %sv_yes_mark.1.ph, %cond.true2375 ], [ %sv_yes_mark.1.ph, %if.end2368 ], [ %sv_yes_mark.1.ph, %if.then896 ], [ %sv_yes_mark.1.ph, %if.then2322 ], [ %sv_yes_mark.1.ph, %if.then242 ], [ %sv_yes_mark.1.ph, %sw.bb86 ]
  %sv_commit.1.ph.lcssa14282 = phi ptr [ %sv_commit.1.ph, %while.cond755.preheader ], [ %sv_commit.1.ph, %while.cond797.preheader ], [ %sv_commit.1.ph, %sw.bb ], [ %sv_commit.1.ph, %land.lhs.true ], [ %sv_commit.1.ph, %sw.bb48 ], [ %sv_commit.1.ph, %sw.bb59 ], [ %sv_commit.1.ph, %sw.bb78 ], [ %sv_commit.1.ph, %sw.bb102 ], [ %sv_commit.1.ph, %if.end1221 ], [ %sv_commit.1.ph, %cond.end1260 ], [ %sv_commit.1.ph, %if.end1678 ], [ %sv_commit.1.ph, %if.end2297 ], [ %sv_commit.1.ph, %if.then6346 ], [ %sv_commit.1.ph, %cond.false2378 ], [ %sv_commit.1.ph, %cond.true2375 ], [ %sv_commit.1.ph, %if.end2368 ], [ %sv_commit.1.ph, %if.then896 ], [ %sv_commit.1.ph, %if.then2322 ], [ %sv_commit.1.ph, %if.then242 ], [ %sv_commit.1.ph, %sw.bb86 ]
  %popmark.1.ph.lcssa14203 = phi ptr [ %popmark.1.ph, %while.cond755.preheader ], [ %popmark.1.ph, %while.cond797.preheader ], [ %popmark.1.ph, %sw.bb ], [ %popmark.1.ph, %land.lhs.true ], [ %popmark.1.ph, %sw.bb48 ], [ %popmark.1.ph, %sw.bb59 ], [ %popmark.1.ph, %sw.bb78 ], [ %popmark.1.ph, %sw.bb102 ], [ %popmark.1.ph, %if.end1221 ], [ %popmark.1.ph, %cond.end1260 ], [ %popmark.1.ph, %if.end1678 ], [ %popmark.1.ph, %if.end2297 ], [ %popmark.1.ph, %if.then6346 ], [ %popmark.1.ph, %cond.false2378 ], [ %popmark.1.ph, %cond.true2375 ], [ %popmark.1.ph, %if.end2368 ], [ %popmark.1.ph, %if.then896 ], [ %popmark.1.ph, %if.then2322 ], [ %popmark.1.ph, %if.then242 ], [ %popmark.1.ph, %sw.bb86 ]
  %do_cutgroup.1.ph.lcssa14125 = phi i8 [ %do_cutgroup.1.ph, %while.cond755.preheader ], [ %do_cutgroup.1.ph, %while.cond797.preheader ], [ %do_cutgroup.1.ph, %sw.bb ], [ %do_cutgroup.1.ph, %land.lhs.true ], [ %do_cutgroup.1.ph, %sw.bb48 ], [ %do_cutgroup.1.ph, %sw.bb59 ], [ %do_cutgroup.1.ph, %sw.bb78 ], [ %do_cutgroup.1.ph, %sw.bb102 ], [ %do_cutgroup.1.ph, %if.end1221 ], [ %do_cutgroup.1.ph, %cond.end1260 ], [ %do_cutgroup.1.ph, %if.end1678 ], [ %do_cutgroup.1.ph, %if.end2297 ], [ %do_cutgroup.1.ph, %if.then6346 ], [ %do_cutgroup.1.ph, %cond.false2378 ], [ %do_cutgroup.1.ph, %cond.true2375 ], [ %do_cutgroup.1.ph, %if.end2368 ], [ %do_cutgroup.1.ph, %if.then896 ], [ %do_cutgroup.1.ph, %if.then2322 ], [ %do_cutgroup.1.ph, %if.then242 ], [ %do_cutgroup.1.ph, %sw.bb86 ]
  %no_final.1.ph.lcssa14047 = phi i8 [ %no_final.1.ph, %while.cond755.preheader ], [ %no_final.1.ph, %while.cond797.preheader ], [ %no_final.1.ph, %sw.bb ], [ %no_final.1.ph, %land.lhs.true ], [ %no_final.1.ph, %sw.bb48 ], [ %no_final.1.ph, %sw.bb59 ], [ %no_final.1.ph, %sw.bb78 ], [ %no_final.1.ph, %sw.bb102 ], [ %no_final.1.ph, %if.end1221 ], [ %no_final.1.ph, %cond.end1260 ], [ %no_final.1.ph, %if.end1678 ], [ %no_final.1.ph, %if.end2297 ], [ %no_final.1.ph, %if.then6346 ], [ %no_final.1.ph, %cond.false2378 ], [ %no_final.1.ph, %cond.true2375 ], [ %no_final.1.ph, %if.end2368 ], [ %no_final.1.ph, %if.then896 ], [ %no_final.1.ph, %if.then2322 ], [ %no_final.1.ph, %if.then242 ], [ %no_final.1.ph, %sw.bb86 ]
  %cur_curlyx.1.ph.lcssa13971 = phi ptr [ %cur_curlyx.1.ph, %while.cond755.preheader ], [ %cur_curlyx.1.ph, %while.cond797.preheader ], [ %cur_curlyx.1.ph, %sw.bb ], [ %cur_curlyx.1.ph, %land.lhs.true ], [ %cur_curlyx.1.ph, %sw.bb48 ], [ %cur_curlyx.1.ph, %sw.bb59 ], [ %cur_curlyx.1.ph, %sw.bb78 ], [ %cur_curlyx.1.ph, %sw.bb102 ], [ %cur_curlyx.1.ph, %if.end1221 ], [ %cur_curlyx.1.ph, %cond.end1260 ], [ %cur_curlyx.1.ph, %if.end1678 ], [ %cur_curlyx.1.ph, %if.end2297 ], [ %cur_curlyx.1.ph, %if.then6346 ], [ %cur_curlyx.1.ph, %cond.false2378 ], [ %cur_curlyx.1.ph, %cond.true2375 ], [ %cur_curlyx.1.ph, %if.end2368 ], [ %cur_curlyx.1.ph, %if.then896 ], [ %cur_curlyx.1.ph, %if.then2322 ], [ %cur_curlyx.1.ph, %if.then242 ], [ %cur_curlyx.1.ph, %sw.bb86 ]
  %cur_eval.1.ph.lcssa13894 = phi ptr [ %cur_eval.1.ph, %while.cond755.preheader ], [ %cur_eval.1.ph, %while.cond797.preheader ], [ %cur_eval.1.ph, %sw.bb ], [ %cur_eval.1.ph, %land.lhs.true ], [ %cur_eval.1.ph, %sw.bb48 ], [ %cur_eval.1.ph, %sw.bb59 ], [ %cur_eval.1.ph, %sw.bb78 ], [ %cur_eval.1.ph, %sw.bb102 ], [ %cur_eval.1.ph, %if.end1221 ], [ %cur_eval.1.ph, %cond.end1260 ], [ %cur_eval.1.ph, %if.end1678 ], [ %cur_eval.1.ph, %if.end2297 ], [ %cur_eval.1.ph, %if.then6346 ], [ %cur_eval.1.ph, %cond.false2378 ], [ %cur_eval.1.ph, %cond.true2375 ], [ %cur_eval.1.ph, %if.end2368 ], [ %cur_eval.1.ph, %if.then896 ], [ %cur_eval.1.ph, %if.then2322 ], [ %cur_eval.1.ph, %if.then242 ], [ %cur_eval.1.ph, %sw.bb86 ]
  %mark_state.1.ph.lcssa13817 = phi ptr [ %mark_state.1.ph, %while.cond755.preheader ], [ %mark_state.1.ph, %while.cond797.preheader ], [ %mark_state.1.ph, %sw.bb ], [ %mark_state.1.ph, %land.lhs.true ], [ %mark_state.1.ph, %sw.bb48 ], [ %mark_state.1.ph, %sw.bb59 ], [ %mark_state.1.ph, %sw.bb78 ], [ %mark_state.1.ph, %sw.bb102 ], [ %mark_state.1.ph, %if.end1221 ], [ %mark_state.1.ph, %cond.end1260 ], [ %mark_state.1.ph, %if.end1678 ], [ %mark_state.1.ph, %if.end2297 ], [ %mark_state.1.ph, %if.then6346 ], [ %mark_state.1.ph, %cond.false2378 ], [ %mark_state.1.ph, %cond.true2375 ], [ %mark_state.1.ph, %if.end2368 ], [ %mark_state.1.ph, %if.then896 ], [ %mark_state.1.ph, %if.then2322 ], [ %mark_state.1.ph, %if.then242 ], [ %mark_state.1.ph, %sw.bb86 ]
  %yes_state.1.ph.lcssa13739 = phi ptr [ %yes_state.1.ph, %while.cond755.preheader ], [ %yes_state.1.ph, %while.cond797.preheader ], [ %yes_state.1.ph, %sw.bb ], [ %yes_state.1.ph, %land.lhs.true ], [ %yes_state.1.ph, %sw.bb48 ], [ %yes_state.1.ph, %sw.bb59 ], [ %yes_state.1.ph, %sw.bb78 ], [ %yes_state.1.ph, %sw.bb102 ], [ %yes_state.1.ph, %if.end1221 ], [ %yes_state.1.ph, %cond.end1260 ], [ %yes_state.1.ph, %if.end1678 ], [ %yes_state.1.ph, %if.end2297 ], [ %yes_state.1.ph, %if.then6346 ], [ %yes_state.1.ph, %cond.false2378 ], [ %yes_state.1.ph, %cond.true2375 ], [ %yes_state.1.ph, %if.end2368 ], [ %yes_state.1.ph, %if.then896 ], [ %yes_state.1.ph, %if.then2322 ], [ %yes_state.1.ph, %if.then242 ], [ %yes_state.1.ph, %sw.bb86 ]
  %nochange_depth.1.ph.lcssa13665 = phi i32 [ %nochange_depth.1.ph, %while.cond755.preheader ], [ %nochange_depth.1.ph, %while.cond797.preheader ], [ %nochange_depth.1.ph, %sw.bb ], [ %nochange_depth.1.ph, %land.lhs.true ], [ %nochange_depth.1.ph, %sw.bb48 ], [ %nochange_depth.1.ph, %sw.bb59 ], [ %nochange_depth.1.ph, %sw.bb78 ], [ %nochange_depth.1.ph, %sw.bb102 ], [ %nochange_depth.1.ph, %if.end1221 ], [ %nochange_depth.1.ph, %cond.end1260 ], [ %nochange_depth.1.ph, %if.end1678 ], [ %nochange_depth.1.ph, %if.end2297 ], [ %nochange_depth.1.ph, %if.then6346 ], [ %nochange_depth.1.ph, %cond.false2378 ], [ %nochange_depth.1.ph, %cond.true2375 ], [ %nochange_depth.1.ph, %if.end2368 ], [ %nochange_depth.1.ph, %if.then896 ], [ %nochange_depth.1.ph, %if.then2322 ], [ %nochange_depth.1.ph, %if.then242 ], [ %nochange_depth.1.ph, %sw.bb86 ]
  %depth.1.ph.lcssa13586 = phi i32 [ %depth.1.ph, %while.cond755.preheader ], [ %depth.1.ph, %while.cond797.preheader ], [ %depth.1.ph, %sw.bb ], [ %depth.1.ph, %land.lhs.true ], [ %depth.1.ph, %sw.bb48 ], [ %depth.1.ph, %sw.bb59 ], [ %depth.1.ph, %sw.bb78 ], [ %depth.1.ph, %sw.bb102 ], [ %depth.1.ph, %if.end1221 ], [ %depth.1.ph, %cond.end1260 ], [ %depth.1.ph, %if.end1678 ], [ %depth.1.ph, %if.end2297 ], [ %depth.1.ph, %if.then6346 ], [ %depth.1.ph, %cond.false2378 ], [ %depth.1.ph, %cond.true2375 ], [ %depth.1.ph, %if.end2368 ], [ %depth.1.ph, %if.then896 ], [ %depth.1.ph, %if.then2322 ], [ %depth.1.ph, %if.then242 ], [ %depth.1.ph, %sw.bb86 ]
  %next.1.ph.lcssa13512 = phi ptr [ %next.1.ph, %while.cond755.preheader ], [ %next.1.ph, %while.cond797.preheader ], [ %next.1.ph, %sw.bb ], [ %next.1.ph, %land.lhs.true ], [ %next.1.ph, %sw.bb48 ], [ %next.1.ph, %sw.bb59 ], [ %next.1.ph, %sw.bb78 ], [ %next.1.ph, %sw.bb102 ], [ %next.1.ph, %if.end1221 ], [ %next.1.ph, %cond.end1260 ], [ %next.1.ph, %if.end1678 ], [ %next.1.ph, %if.end2297 ], [ %next.1.ph, %if.then6346 ], [ %next.1.ph, %cond.false2378 ], [ %next.1.ph, %cond.true2375 ], [ %next.1.ph, %if.end2368 ], [ %next.1.ph, %if.then896 ], [ %next.1.ph, %if.then2322 ], [ %next.1.ph, %if.then242 ], [ %next.1.ph, %sw.bb86 ]
  %st.1.ph.lcssa13433 = phi ptr [ %st.1.ph, %while.cond755.preheader ], [ %st.1.ph, %while.cond797.preheader ], [ %st.1.ph, %sw.bb ], [ %st.1.ph, %land.lhs.true ], [ %st.1.ph, %sw.bb48 ], [ %st.1.ph, %sw.bb59 ], [ %st.1.ph, %sw.bb78 ], [ %st.1.ph, %sw.bb102 ], [ %st.1.ph, %if.end1221 ], [ %st.1.ph, %cond.end1260 ], [ %st.1.ph, %if.end1678 ], [ %st.1.ph, %if.end2297 ], [ %st.1.ph, %if.then6346 ], [ %st.1.ph, %cond.false2378 ], [ %st.1.ph, %cond.true2375 ], [ %st.1.ph, %if.end2368 ], [ %st.1.ph, %if.then896 ], [ %st.1.ph, %if.then2322 ], [ %st.1.ph, %if.then242 ], [ %st.1.ph, %sw.bb86 ]
  %rexi.1.ph.lcssa13358 = phi ptr [ %rexi.1.ph, %while.cond755.preheader ], [ %rexi.1.ph, %while.cond797.preheader ], [ %rexi.1.ph, %sw.bb ], [ %rexi.1.ph, %land.lhs.true ], [ %rexi.1.ph, %sw.bb48 ], [ %rexi.1.ph, %sw.bb59 ], [ %rexi.1.ph, %sw.bb78 ], [ %rexi.1.ph, %sw.bb102 ], [ %rexi.1.ph, %if.end1221 ], [ %rexi.1.ph, %cond.end1260 ], [ %rexi.1.ph, %if.end1678 ], [ %rexi.1.ph, %if.end2297 ], [ %rexi.1.ph, %if.then6346 ], [ %rexi.1.ph, %cond.false2378 ], [ %rexi.1.ph, %cond.true2375 ], [ %rexi.1.ph, %if.end2368 ], [ %rexi.1.ph, %if.then896 ], [ %rexi.1.ph, %if.then2322 ], [ %rexi.1.ph, %if.then242 ], [ %rexi.1.ph, %sw.bb86 ]
  %rex.1.ph.lcssa13282 = phi ptr [ %rex.1.ph, %while.cond755.preheader ], [ %rex.1.ph, %while.cond797.preheader ], [ %rex.1.ph, %sw.bb ], [ %rex.1.ph, %land.lhs.true ], [ %rex.1.ph, %sw.bb48 ], [ %rex.1.ph, %sw.bb59 ], [ %rex.1.ph, %sw.bb78 ], [ %rex.1.ph, %sw.bb102 ], [ %rex.1.ph, %if.end1221 ], [ %rex.1.ph, %cond.end1260 ], [ %rex.1.ph, %if.end1678 ], [ %rex.1.ph, %if.end2297 ], [ %rex.1.ph, %if.then6346 ], [ %rex.1.ph, %cond.false2378 ], [ %rex.1.ph, %cond.true2375 ], [ %rex.1.ph, %if.end2368 ], [ %rex.1.ph, %if.then896 ], [ %rex.1.ph, %if.then2322 ], [ %rex.1.ph, %if.then242 ], [ %rex.1.ph, %sw.bb86 ]
  %rex_sv.1.ph.lcssa13205 = phi ptr [ %rex_sv.1.ph, %while.cond755.preheader ], [ %rex_sv.1.ph, %while.cond797.preheader ], [ %rex_sv.1.ph, %sw.bb ], [ %rex_sv.1.ph, %land.lhs.true ], [ %rex_sv.1.ph, %sw.bb48 ], [ %rex_sv.1.ph, %sw.bb59 ], [ %rex_sv.1.ph, %sw.bb78 ], [ %rex_sv.1.ph, %sw.bb102 ], [ %rex_sv.1.ph, %if.end1221 ], [ %rex_sv.1.ph, %cond.end1260 ], [ %rex_sv.1.ph, %if.end1678 ], [ %rex_sv.1.ph, %if.end2297 ], [ %rex_sv.1.ph, %if.then6346 ], [ %rex_sv.1.ph, %cond.false2378 ], [ %rex_sv.1.ph, %cond.true2375 ], [ %rex_sv.1.ph, %if.end2368 ], [ %rex_sv.1.ph, %if.then896 ], [ %rex_sv.1.ph, %if.then2322 ], [ %rex_sv.1.ph, %if.then242 ], [ %rex_sv.1.ph, %sw.bb86 ]
  %minmod.112935 = phi i8 [ %minmod.112948, %if.then6346 ], [ %minmod.1.lcssa12828, %sw.bb ], [ %minmod.1.lcssa12829, %sw.bb48 ], [ %minmod.1.lcssa12829, %land.lhs.true ], [ %minmod.1.lcssa12830, %sw.bb59 ], [ %minmod.1.lcssa12833, %sw.bb78 ], [ %minmod.1.lcssa12835, %sw.bb102 ], [ %minmod.112946, %if.then896 ], [ %minmod.112941, %if.end1678 ], [ %minmod.112945, %if.end1221 ], [ %minmod.112940, %cond.end1260 ], [ %minmod.112937, %if.end2297 ], [ %minmod.112937, %if.then2322 ], [ %minmod.112937, %cond.false2378 ], [ %minmod.112937, %cond.true2375 ], [ %minmod.112937, %if.end2368 ], [ %minmod.112936, %if.then242 ], [ %minmod.1.lcssa12834, %sw.bb86 ], [ %minmod.1.lcssa12842, %while.cond797.preheader ], [ %minmod.1.lcssa12842, %while.cond755.preheader ]
  %match.3.ph = phi i8 [ %match.1.ph, %if.then6346 ], [ %match.1.ph, %sw.bb ], [ %match.1.ph, %sw.bb48 ], [ %match.1.ph, %land.lhs.true ], [ %match.1.ph, %sw.bb59 ], [ %match.1.ph, %sw.bb78 ], [ %match.1.ph, %sw.bb102 ], [ %match.1.ph, %if.then896 ], [ %match.2, %if.end1678 ], [ %match.1.ph, %if.end1221 ], [ %match.1.ph, %cond.end1260 ], [ %match.1.ph, %if.end2297 ], [ %match.1.ph, %if.then2322 ], [ %match.1.ph, %cond.false2378 ], [ %match.1.ph, %cond.true2375 ], [ %match.1.ph, %if.end2368 ], [ %match.1.ph, %if.then242 ], [ %match.1.ph, %sw.bb86 ], [ %match.1.ph, %while.cond797.preheader ], [ %match.1.ph, %while.cond755.preheader ]
  %locinput.27.ph = phi ptr [ %add.ptr6351, %if.then6346 ], [ %locinput.1.lcssa12568, %sw.bb ], [ %locinput.1.lcssa12569, %sw.bb48 ], [ %locinput.1.lcssa12569, %land.lhs.true ], [ %locinput.1.lcssa12570, %sw.bb59 ], [ %locinput.1.lcssa12573, %sw.bb78 ], [ %locinput.1.lcssa12575, %sw.bb102 ], [ %143, %if.then896 ], [ %locinput.112682, %if.end1678 ], [ %locinput.112681, %if.end1221 ], [ %locinput.112679, %cond.end1260 ], [ %locinput.112676, %if.end2297 ], [ %442, %if.then2322 ], [ %add.ptr2363, %cond.false2378 ], [ %add.ptr2363, %cond.true2375 ], [ %add.ptr2363, %if.end2368 ], [ %locinput.112675, %if.then242 ], [ %locinput.1.lcssa12574, %sw.bb86 ], [ %locinput.1.lcssa12582, %while.cond797.preheader ], [ %locinput.1.lcssa12582, %while.cond755.preheader ]
  br label %sw.epilog6360

sw.epilog6360.loopexit12321:                      ; preds = %if.end6087
  %last_pushed_cv.0.ph.lcssa14854 = phi ptr [ %last_pushed_cv.0.ph, %if.end6087 ]
  %caller_cv.0.ph.lcssa14818 = phi ptr [ %caller_cv.0.ph, %if.end6087 ]
  %multicall_oldcatch.0.ph.lcssa14781 = phi i8 [ %multicall_oldcatch.0.ph, %if.end6087 ]
  %multicall_cv.0.ph.lcssa14744 = phi ptr [ %multicall_cv.0.ph, %if.end6087 ]
  %last_pad.0.ph.lcssa14708 = phi ptr [ %last_pad.0.ph, %if.end6087 ]
  %sw.0.ph9430.lcssa14641.lcssa = phi i1 [ %sw.0.ph9430.lcssa14641, %if.end6087 ]
  %match.1.ph.lcssa14561.lcssa = phi i8 [ %match.1.ph.lcssa14561, %if.end6087 ]
  %is_utf8_pat.1.ph.lcssa14486.lcssa = phi i8 [ %is_utf8_pat.1.ph.lcssa14486, %if.end6087 ]
  %logical.1.ph.lcssa14412.lcssa = phi i32 [ %logical.1.ph.lcssa14412, %if.end6087 ]
  %sv_yes_mark.1.ph.lcssa14335.lcssa = phi ptr [ %sv_yes_mark.1.ph.lcssa14335, %if.end6087 ]
  %sv_commit.1.ph.lcssa14258.lcssa = phi ptr [ %sv_commit.1.ph.lcssa14258, %if.end6087 ]
  %popmark.1.ph.lcssa14179.lcssa = phi ptr [ %popmark.1.ph.lcssa14179, %if.end6087 ]
  %do_cutgroup.1.ph.lcssa14101.lcssa = phi i8 [ %do_cutgroup.1.ph.lcssa14101, %if.end6087 ]
  %no_final.1.ph.lcssa14023.lcssa = phi i8 [ %no_final.1.ph.lcssa14023, %if.end6087 ]
  %cur_curlyx.1.ph.lcssa13947.lcssa = phi ptr [ %cur_curlyx.1.ph.lcssa13947, %if.end6087 ]
  %cur_eval.1.ph.lcssa13870.lcssa = phi ptr [ %cur_eval.1.ph.lcssa13870, %if.end6087 ]
  %mark_state.1.ph.lcssa13793.lcssa = phi ptr [ %mark_state.1.ph.lcssa13793, %if.end6087 ]
  %yes_state.1.ph.lcssa13715.lcssa = phi ptr [ %yes_state.1.ph.lcssa13715, %if.end6087 ]
  %nochange_depth.1.ph.lcssa13641.lcssa = phi i32 [ %nochange_depth.1.ph.lcssa13641, %if.end6087 ]
  %depth.1.ph.lcssa13562.lcssa = phi i32 [ %depth.1.ph.lcssa13562, %if.end6087 ]
  %next.1.ph.lcssa13488.lcssa = phi ptr [ %next.1.ph.lcssa13488, %if.end6087 ]
  %st.1.ph.lcssa13409.lcssa = phi ptr [ %st.1.ph.lcssa13409, %if.end6087 ]
  %rexi.1.ph.lcssa13334.lcssa = phi ptr [ %rexi.1.ph.lcssa13334, %if.end6087 ]
  %rex.1.ph.lcssa13258.lcssa = phi ptr [ %rex.1.ph.lcssa13258, %if.end6087 ]
  %rex_sv.1.ph.lcssa13181.lcssa = phi ptr [ %rex_sv.1.ph.lcssa13181, %if.end6087 ]
  %minmod.1.lcssa12927.lcssa = phi i8 [ %minmod.1.lcssa12927, %if.end6087 ]
  %locinput.1.lcssa12667.lcssa = phi ptr [ %locinput.1.lcssa12667, %if.end6087 ]
  br label %sw.epilog6360

sw.epilog6360.loopexit12322:                      ; preds = %cleanup2261, %while.body2242
  %locinput.27.ph12323 = phi ptr [ %add.ptr2260, %cleanup2261 ], [ %locinput.612289, %while.body2242 ]
  br label %sw.epilog6360

sw.epilog6360.loopexit12324:                      ; preds = %if.else6070, %land.lhs.true3248, %if.end3245, %if.end3019
  %match.1.ph14602 = phi i8 [ %match.1.ph.lcssa14541, %if.end3019 ], [ %match.1.ph.lcssa14543, %land.lhs.true3248 ], [ %match.1.ph.lcssa14543, %if.end3245 ], [ %match.1.ph.lcssa14561, %if.else6070 ]
  %is_utf8_pat.1.ph14528 = phi i8 [ %is_utf8_pat.1.ph.lcssa14466, %if.end3019 ], [ %is_utf8_pat.1.ph.lcssa14468, %land.lhs.true3248 ], [ %is_utf8_pat.1.ph.lcssa14468, %if.end3245 ], [ %is_utf8_pat.1.ph.lcssa14486, %if.else6070 ]
  %sv_yes_mark.1.ph14377 = phi ptr [ %sv_yes_mark.1.ph.lcssa14315, %if.end3019 ], [ %sv_yes_mark.1.ph.lcssa14317, %land.lhs.true3248 ], [ %sv_yes_mark.1.ph.lcssa14317, %if.end3245 ], [ %sv_yes_mark.1.ph.lcssa14335, %if.else6070 ]
  %sv_commit.1.ph14300 = phi ptr [ %sv_commit.1.ph.lcssa14238, %if.end3019 ], [ %sv_commit.1.ph.lcssa14240, %land.lhs.true3248 ], [ %sv_commit.1.ph.lcssa14240, %if.end3245 ], [ %sv_commit.1.ph.lcssa14258, %if.else6070 ]
  %popmark.1.ph14221 = phi ptr [ %popmark.1.ph.lcssa14159, %if.end3019 ], [ %popmark.1.ph.lcssa14161, %land.lhs.true3248 ], [ %popmark.1.ph.lcssa14161, %if.end3245 ], [ %popmark.1.ph.lcssa14179, %if.else6070 ]
  %do_cutgroup.1.ph14143 = phi i8 [ %do_cutgroup.1.ph.lcssa14081, %if.end3019 ], [ %do_cutgroup.1.ph.lcssa14083, %land.lhs.true3248 ], [ %do_cutgroup.1.ph.lcssa14083, %if.end3245 ], [ %do_cutgroup.1.ph.lcssa14101, %if.else6070 ]
  %no_final.1.ph14065 = phi i8 [ %no_final.1.ph.lcssa14003, %if.end3019 ], [ %no_final.1.ph.lcssa14005, %land.lhs.true3248 ], [ %no_final.1.ph.lcssa14005, %if.end3245 ], [ %no_final.1.ph.lcssa14023, %if.else6070 ]
  %cur_curlyx.1.ph13989 = phi ptr [ %cur_curlyx.1.ph.lcssa13927, %if.end3019 ], [ %cur_curlyx.1.ph.lcssa13929, %land.lhs.true3248 ], [ %cur_curlyx.1.ph.lcssa13929, %if.end3245 ], [ %cur_curlyx.1.ph.lcssa13947, %if.else6070 ]
  %cur_eval.1.ph13912 = phi ptr [ %cur_eval.1.ph.lcssa13850, %if.end3019 ], [ %cur_eval.1.ph.lcssa13852, %land.lhs.true3248 ], [ %cur_eval.1.ph.lcssa13852, %if.end3245 ], [ %cur_eval.1.ph.lcssa13870, %if.else6070 ]
  %mark_state.1.ph13835 = phi ptr [ %mark_state.1.ph.lcssa13773, %if.end3019 ], [ %mark_state.1.ph.lcssa13775, %land.lhs.true3248 ], [ %mark_state.1.ph.lcssa13775, %if.end3245 ], [ %mark_state.1.ph.lcssa13793, %if.else6070 ]
  %yes_state.1.ph13757 = phi ptr [ %yes_state.1.ph.lcssa13695, %if.end3019 ], [ %yes_state.1.ph.lcssa13697, %land.lhs.true3248 ], [ %yes_state.1.ph.lcssa13697, %if.end3245 ], [ %yes_state.1.ph.lcssa13715, %if.else6070 ]
  %depth.1.ph13604 = phi i32 [ %depth.1.ph.lcssa13542, %if.end3019 ], [ %depth.1.ph.lcssa13544, %land.lhs.true3248 ], [ %depth.1.ph.lcssa13544, %if.end3245 ], [ %depth.1.ph.lcssa13562, %if.else6070 ]
  %next.1.ph13529 = phi ptr [ %next.1.ph.lcssa13468, %if.end3019 ], [ %next.1.ph.lcssa13470, %land.lhs.true3248 ], [ %next.1.ph.lcssa13470, %if.end3245 ], [ %next.1.ph.lcssa13488, %if.else6070 ]
  %st.1.ph13451 = phi ptr [ %st.1.ph.lcssa13389, %if.end3019 ], [ %st.1.ph.lcssa13391, %land.lhs.true3248 ], [ %st.1.ph.lcssa13391, %if.end3245 ], [ %st.1.ph.lcssa13409, %if.else6070 ]
  %rexi.1.ph13376 = phi ptr [ %rexi.1.ph.lcssa13314, %if.end3019 ], [ %rexi.1.ph.lcssa13316, %land.lhs.true3248 ], [ %rexi.1.ph.lcssa13316, %if.end3245 ], [ %rexi.1.ph.lcssa13334, %if.else6070 ]
  %rex.1.ph13300 = phi ptr [ %rex.1.ph.lcssa13238, %if.end3019 ], [ %rex.1.ph.lcssa13240, %land.lhs.true3248 ], [ %rex.1.ph.lcssa13240, %if.end3245 ], [ %rex.1.ph.lcssa13258, %if.else6070 ]
  %rex_sv.1.ph13223 = phi ptr [ %rex_sv.1.ph.lcssa13161, %if.end3019 ], [ %rex_sv.1.ph.lcssa13163, %land.lhs.true3248 ], [ %rex_sv.1.ph.lcssa13163, %if.end3245 ], [ %rex_sv.1.ph.lcssa13181, %if.else6070 ]
  %minmod.112934 = phi i8 [ %minmod.1.lcssa12878, %if.end3019 ], [ %minmod.1.lcssa12882, %land.lhs.true3248 ], [ %minmod.1.lcssa12882, %if.end3245 ], [ %minmod.1.lcssa12927, %if.else6070 ]
  %locinput.112674 = phi ptr [ %locinput.1.lcssa12618, %if.end3019 ], [ %locinput.1.lcssa12622, %land.lhs.true3248 ], [ %locinput.1.lcssa12622, %if.end3245 ], [ %locinput.1.lcssa12667, %if.else6070 ]
  %last_pushed_cv.3.ph = phi ptr [ %last_pushed_cv.1, %if.end3019 ], [ %last_pushed_cv.0.ph, %land.lhs.true3248 ], [ %last_pushed_cv.0.ph, %if.end3245 ], [ %last_pushed_cv.0.ph, %if.else6070 ]
  %caller_cv.3.ph = phi ptr [ %caller_cv.1, %if.end3019 ], [ %caller_cv.0.ph, %land.lhs.true3248 ], [ %caller_cv.0.ph, %if.end3245 ], [ %caller_cv.0.ph, %if.else6070 ]
  %multicall_oldcatch.4.ph = phi i8 [ %multicall_oldcatch.2, %if.end3019 ], [ %multicall_oldcatch.0.ph, %land.lhs.true3248 ], [ %multicall_oldcatch.0.ph, %if.end3245 ], [ %multicall_oldcatch.0.ph, %if.else6070 ]
  %multicall_cv.4.ph = phi ptr [ %multicall_cv.2, %if.end3019 ], [ %multicall_cv.0.ph, %land.lhs.true3248 ], [ %multicall_cv.0.ph, %if.end3245 ], [ %multicall_cv.0.ph, %if.else6070 ]
  %last_pad.2.ph = phi ptr [ %546, %if.end3019 ], [ %last_pad.0.ph, %land.lhs.true3248 ], [ %last_pad.0.ph, %if.end3245 ], [ %last_pad.0.ph, %if.else6070 ]
  %logical.7.ph = phi i32 [ %logical.2, %if.end3019 ], [ %logical.1.ph.lcssa14394, %land.lhs.true3248 ], [ %logical.1.ph.lcssa14394, %if.end3245 ], [ %logical.1.ph.lcssa14412, %if.else6070 ]
  %sw.8.ph = phi i1 [ %sw.2, %if.end3019 ], [ %sw.0.ph9430.lcssa14623, %land.lhs.true3248 ], [ %sw.0.ph9430.lcssa14623, %if.end3245 ], [ %sw.0.ph9430.lcssa14641, %if.else6070 ]
  %nochange_depth.6.ph = phi i32 [ %nochange_depth.3, %if.end3019 ], [ %nochange_depth.1.ph.lcssa13623, %land.lhs.true3248 ], [ %nochange_depth.1.ph.lcssa13623, %if.end3245 ], [ %nochange_depth.1.ph.lcssa13641, %if.else6070 ]
  br label %sw.epilog6360

sw.epilog6360:                                    ; preds = %sw.epilog6360.loopexit12324, %sw.epilog6360.loopexit12322, %sw.epilog6360.loopexit12321, %sw.epilog6360.loopexit12320, %sw.epilog6360.loopexit12314, %sw.epilog6360.loopexit12296, %sw.epilog6360.loopexit, %sw.epilog6360.loopexit9419, %if.else6357, %if.then6310, %sw.bb5973, %cleanup5913.thread9373, %sw.bb3886, %sw.bb3379, %if.else3366, %if.then3363, %lor.rhs3348, %land.rhs3346, %sw.bb3343, %S_reg_check_named_buff_matched.exit9079, %land.rhs3324, %sw.bb3319, %sw.bb3209, %if.else2222, %land.lhs.true2215, %if.then2207, %if.end2193, %if.end1898, %if.end1857, %if.end1823, %if.end1774, %if.end1726, %if.end1696, %if.end940, %if.end860, %if.end116
  %is_utf8_pat.1.ph14527 = phi i8 [ %is_utf8_pat.1.ph.lcssa14526, %if.else6357 ], [ %is_utf8_pat.1.ph.lcssa14525, %if.end116 ], [ %is_utf8_pat.1.ph.lcssa14519, %if.end940 ], [ %is_utf8_pat.1.ph.lcssa14518, %if.end1696 ], [ %is_utf8_pat.1.ph.lcssa14517, %if.end1726 ], [ %is_utf8_pat.1.ph.lcssa14515, %if.end1774 ], [ %is_utf8_pat.1.ph.lcssa14516, %if.end2193 ], [ %is_utf8_pat.1.ph.lcssa14514, %if.end1898 ], [ %is_utf8_pat.1.ph.lcssa14513, %if.end1857 ], [ %is_utf8_pat.1.ph.lcssa14512, %if.end1823 ], [ %is_utf8_pat.1.ph.lcssa14511, %if.then2207 ], [ %is_utf8_pat.1.ph.lcssa14470, %S_reg_check_named_buff_matched.exit9079 ], [ %is_utf8_pat.1.ph.lcssa14473, %if.then3363 ], [ %is_utf8_pat.1.ph.lcssa14474, %sw.bb3379 ], [ %is_utf8_pat.1.ph.lcssa14480, %sw.bb3886 ], [ %is_utf8_pat.1.ph.lcssa14482, %sw.bb5973 ], [ %is_utf8_pat.1.ph14530, %if.then6310 ], [ %is_utf8_pat.1.ph.lcssa14511, %land.lhs.true2215 ], [ %is_utf8_pat.1.ph.lcssa14469, %land.rhs3324 ], [ %is_utf8_pat.1.ph.lcssa14469, %sw.bb3319 ], [ %is_utf8_pat.1.ph.lcssa14471, %land.rhs3346 ], [ %is_utf8_pat.1.ph.lcssa14471, %lor.rhs3348 ], [ %is_utf8_pat.1.ph.lcssa14471, %sw.bb3343 ], [ %is_utf8_pat.1.ph.lcssa14473, %if.else3366 ], [ %is_utf8_pat.1.ph14529, %cleanup5913.thread9373 ], [ %is_utf8_pat.1.ph.lcssa14522, %if.end860 ], [ %is_utf8_pat.1.ph.lcssa14467, %sw.bb3209 ], [ %is_utf8_pat.1.ph.lcssa14511, %if.else2222 ], [ %is_utf8_pat.1.ph.lcssa14464, %sw.epilog6360.loopexit9419 ], [ %is_utf8_pat.1.ph.lcssa14521, %sw.epilog6360.loopexit ], [ %is_utf8_pat.1.ph.lcssa14520, %sw.epilog6360.loopexit12296 ], [ %is_utf8_pat.1.ph.lcssa14472, %sw.epilog6360.loopexit12314 ], [ %is_utf8_pat.1.ph.lcssa14510, %sw.epilog6360.loopexit12320 ], [ %is_utf8_pat.1.ph.lcssa14486.lcssa, %sw.epilog6360.loopexit12321 ], [ %is_utf8_pat.1.ph.lcssa14511, %sw.epilog6360.loopexit12322 ], [ %is_utf8_pat.1.ph14528, %sw.epilog6360.loopexit12324 ]
  %sv_yes_mark.1.ph14376 = phi ptr [ %sv_yes_mark.1.ph.lcssa14375, %if.else6357 ], [ %sv_yes_mark.1.ph.lcssa14374, %if.end116 ], [ %sv_yes_mark.1.ph.lcssa14368, %if.end940 ], [ %sv_yes_mark.1.ph.lcssa14367, %if.end1696 ], [ %sv_yes_mark.1.ph.lcssa14366, %if.end1726 ], [ %sv_yes_mark.1.ph.lcssa14364, %if.end1774 ], [ %sv_yes_mark.1.ph.lcssa14365, %if.end2193 ], [ %sv_yes_mark.1.ph.lcssa14363, %if.end1898 ], [ %sv_yes_mark.1.ph.lcssa14362, %if.end1857 ], [ %sv_yes_mark.1.ph.lcssa14361, %if.end1823 ], [ %sv_yes_mark.1.ph.lcssa14360, %if.then2207 ], [ %sv_yes_mark.1.ph.lcssa14319, %S_reg_check_named_buff_matched.exit9079 ], [ %sv_yes_mark.1.ph.lcssa14322, %if.then3363 ], [ %sv_yes_mark.1.ph.lcssa14323, %sw.bb3379 ], [ %sv_yes_mark.1.ph.lcssa14329, %sw.bb3886 ], [ %sv_yes_mark.1.ph.lcssa14331, %sw.bb5973 ], [ %sv_yes_mark.1.ph14379, %if.then6310 ], [ %sv_yes_mark.1.ph.lcssa14360, %land.lhs.true2215 ], [ %sv_yes_mark.1.ph.lcssa14318, %land.rhs3324 ], [ %sv_yes_mark.1.ph.lcssa14318, %sw.bb3319 ], [ %sv_yes_mark.1.ph.lcssa14320, %land.rhs3346 ], [ %sv_yes_mark.1.ph.lcssa14320, %lor.rhs3348 ], [ %sv_yes_mark.1.ph.lcssa14320, %sw.bb3343 ], [ %sv_yes_mark.1.ph.lcssa14322, %if.else3366 ], [ %sv_yes_mark.1.ph14378, %cleanup5913.thread9373 ], [ %sv_yes_mark.1.ph.lcssa14371, %if.end860 ], [ %sv_yes_mark.1.ph.lcssa14316, %sw.bb3209 ], [ %sv_yes_mark.1.ph.lcssa14360, %if.else2222 ], [ %sv_yes_mark.1.ph.lcssa14313, %sw.epilog6360.loopexit9419 ], [ %sv_yes_mark.1.ph.lcssa14370, %sw.epilog6360.loopexit ], [ %sv_yes_mark.1.ph.lcssa14369, %sw.epilog6360.loopexit12296 ], [ %sv_yes_mark.1.ph.lcssa14321, %sw.epilog6360.loopexit12314 ], [ %sv_yes_mark.1.ph.lcssa14359, %sw.epilog6360.loopexit12320 ], [ %sv_yes_mark.1.ph.lcssa14335.lcssa, %sw.epilog6360.loopexit12321 ], [ %sv_yes_mark.1.ph.lcssa14360, %sw.epilog6360.loopexit12322 ], [ %sv_yes_mark.1.ph14377, %sw.epilog6360.loopexit12324 ]
  %sv_commit.1.ph14299 = phi ptr [ %sv_commit.1.ph.lcssa14298, %if.else6357 ], [ %sv_commit.1.ph.lcssa14297, %if.end116 ], [ %sv_commit.1.ph.lcssa14291, %if.end940 ], [ %sv_commit.1.ph.lcssa14290, %if.end1696 ], [ %sv_commit.1.ph.lcssa14289, %if.end1726 ], [ %sv_commit.1.ph.lcssa14287, %if.end1774 ], [ %sv_commit.1.ph.lcssa14288, %if.end2193 ], [ %sv_commit.1.ph.lcssa14286, %if.end1898 ], [ %sv_commit.1.ph.lcssa14285, %if.end1857 ], [ %sv_commit.1.ph.lcssa14284, %if.end1823 ], [ %sv_commit.1.ph.lcssa14283, %if.then2207 ], [ %sv_commit.1.ph.lcssa14242, %S_reg_check_named_buff_matched.exit9079 ], [ %sv_commit.1.ph.lcssa14245, %if.then3363 ], [ %sv_commit.1.ph.lcssa14246, %sw.bb3379 ], [ %sv_commit.1.ph.lcssa14252, %sw.bb3886 ], [ %sv_commit.1.ph.lcssa14254, %sw.bb5973 ], [ %sv_commit.1.ph14302, %if.then6310 ], [ %sv_commit.1.ph.lcssa14283, %land.lhs.true2215 ], [ %sv_commit.1.ph.lcssa14241, %land.rhs3324 ], [ %sv_commit.1.ph.lcssa14241, %sw.bb3319 ], [ %sv_commit.1.ph.lcssa14243, %land.rhs3346 ], [ %sv_commit.1.ph.lcssa14243, %lor.rhs3348 ], [ %sv_commit.1.ph.lcssa14243, %sw.bb3343 ], [ %sv_commit.1.ph.lcssa14245, %if.else3366 ], [ %sv_commit.1.ph14301, %cleanup5913.thread9373 ], [ %sv_commit.1.ph.lcssa14294, %if.end860 ], [ %sv_commit.1.ph.lcssa14239, %sw.bb3209 ], [ %sv_commit.1.ph.lcssa14283, %if.else2222 ], [ %sv_commit.1.ph.lcssa14236, %sw.epilog6360.loopexit9419 ], [ %sv_commit.1.ph.lcssa14293, %sw.epilog6360.loopexit ], [ %sv_commit.1.ph.lcssa14292, %sw.epilog6360.loopexit12296 ], [ %sv_commit.1.ph.lcssa14244, %sw.epilog6360.loopexit12314 ], [ %sv_commit.1.ph.lcssa14282, %sw.epilog6360.loopexit12320 ], [ %sv_commit.1.ph.lcssa14258.lcssa, %sw.epilog6360.loopexit12321 ], [ %sv_commit.1.ph.lcssa14283, %sw.epilog6360.loopexit12322 ], [ %sv_commit.1.ph14300, %sw.epilog6360.loopexit12324 ]
  %popmark.1.ph14220 = phi ptr [ %popmark.1.ph.lcssa14219, %if.else6357 ], [ %popmark.1.ph.lcssa14218, %if.end116 ], [ %popmark.1.ph.lcssa14212, %if.end940 ], [ %popmark.1.ph.lcssa14211, %if.end1696 ], [ %popmark.1.ph.lcssa14210, %if.end1726 ], [ %popmark.1.ph.lcssa14208, %if.end1774 ], [ %popmark.1.ph.lcssa14209, %if.end2193 ], [ %popmark.1.ph.lcssa14207, %if.end1898 ], [ %popmark.1.ph.lcssa14206, %if.end1857 ], [ %popmark.1.ph.lcssa14205, %if.end1823 ], [ %popmark.1.ph.lcssa14204, %if.then2207 ], [ %popmark.1.ph.lcssa14163, %S_reg_check_named_buff_matched.exit9079 ], [ %popmark.1.ph.lcssa14166, %if.then3363 ], [ %popmark.1.ph.lcssa14167, %sw.bb3379 ], [ %popmark.1.ph.lcssa14173, %sw.bb3886 ], [ %popmark.1.ph.lcssa14175, %sw.bb5973 ], [ %popmark.1.ph14223, %if.then6310 ], [ %popmark.1.ph.lcssa14204, %land.lhs.true2215 ], [ %popmark.1.ph.lcssa14162, %land.rhs3324 ], [ %popmark.1.ph.lcssa14162, %sw.bb3319 ], [ %popmark.1.ph.lcssa14164, %land.rhs3346 ], [ %popmark.1.ph.lcssa14164, %lor.rhs3348 ], [ %popmark.1.ph.lcssa14164, %sw.bb3343 ], [ %popmark.1.ph.lcssa14166, %if.else3366 ], [ %popmark.1.ph14222, %cleanup5913.thread9373 ], [ %popmark.1.ph.lcssa14215, %if.end860 ], [ %popmark.1.ph.lcssa14160, %sw.bb3209 ], [ %popmark.1.ph.lcssa14204, %if.else2222 ], [ %popmark.1.ph.lcssa14157, %sw.epilog6360.loopexit9419 ], [ %popmark.1.ph.lcssa14214, %sw.epilog6360.loopexit ], [ %popmark.1.ph.lcssa14213, %sw.epilog6360.loopexit12296 ], [ %popmark.1.ph.lcssa14165, %sw.epilog6360.loopexit12314 ], [ %popmark.1.ph.lcssa14203, %sw.epilog6360.loopexit12320 ], [ %popmark.1.ph.lcssa14179.lcssa, %sw.epilog6360.loopexit12321 ], [ %popmark.1.ph.lcssa14204, %sw.epilog6360.loopexit12322 ], [ %popmark.1.ph14221, %sw.epilog6360.loopexit12324 ]
  %do_cutgroup.1.ph14142 = phi i8 [ %do_cutgroup.1.ph.lcssa14141, %if.else6357 ], [ %do_cutgroup.1.ph.lcssa14140, %if.end116 ], [ %do_cutgroup.1.ph.lcssa14134, %if.end940 ], [ %do_cutgroup.1.ph.lcssa14133, %if.end1696 ], [ %do_cutgroup.1.ph.lcssa14132, %if.end1726 ], [ %do_cutgroup.1.ph.lcssa14130, %if.end1774 ], [ %do_cutgroup.1.ph.lcssa14131, %if.end2193 ], [ %do_cutgroup.1.ph.lcssa14129, %if.end1898 ], [ %do_cutgroup.1.ph.lcssa14128, %if.end1857 ], [ %do_cutgroup.1.ph.lcssa14127, %if.end1823 ], [ %do_cutgroup.1.ph.lcssa14126, %if.then2207 ], [ %do_cutgroup.1.ph.lcssa14085, %S_reg_check_named_buff_matched.exit9079 ], [ %do_cutgroup.1.ph.lcssa14088, %if.then3363 ], [ %do_cutgroup.1.ph.lcssa14089, %sw.bb3379 ], [ %do_cutgroup.1.ph.lcssa14095, %sw.bb3886 ], [ %do_cutgroup.1.ph.lcssa14097, %sw.bb5973 ], [ %do_cutgroup.1.ph14145, %if.then6310 ], [ %do_cutgroup.1.ph.lcssa14126, %land.lhs.true2215 ], [ %do_cutgroup.1.ph.lcssa14084, %land.rhs3324 ], [ %do_cutgroup.1.ph.lcssa14084, %sw.bb3319 ], [ %do_cutgroup.1.ph.lcssa14086, %land.rhs3346 ], [ %do_cutgroup.1.ph.lcssa14086, %lor.rhs3348 ], [ %do_cutgroup.1.ph.lcssa14086, %sw.bb3343 ], [ %do_cutgroup.1.ph.lcssa14088, %if.else3366 ], [ %do_cutgroup.1.ph14144, %cleanup5913.thread9373 ], [ %do_cutgroup.1.ph.lcssa14137, %if.end860 ], [ %do_cutgroup.1.ph.lcssa14082, %sw.bb3209 ], [ %do_cutgroup.1.ph.lcssa14126, %if.else2222 ], [ %do_cutgroup.1.ph.lcssa14079, %sw.epilog6360.loopexit9419 ], [ %do_cutgroup.1.ph.lcssa14136, %sw.epilog6360.loopexit ], [ %do_cutgroup.1.ph.lcssa14135, %sw.epilog6360.loopexit12296 ], [ %do_cutgroup.1.ph.lcssa14087, %sw.epilog6360.loopexit12314 ], [ %do_cutgroup.1.ph.lcssa14125, %sw.epilog6360.loopexit12320 ], [ %do_cutgroup.1.ph.lcssa14101.lcssa, %sw.epilog6360.loopexit12321 ], [ %do_cutgroup.1.ph.lcssa14126, %sw.epilog6360.loopexit12322 ], [ %do_cutgroup.1.ph14143, %sw.epilog6360.loopexit12324 ]
  %no_final.1.ph14064 = phi i8 [ %no_final.1.ph.lcssa14063, %if.else6357 ], [ %no_final.1.ph.lcssa14062, %if.end116 ], [ %no_final.1.ph.lcssa14056, %if.end940 ], [ %no_final.1.ph.lcssa14055, %if.end1696 ], [ %no_final.1.ph.lcssa14054, %if.end1726 ], [ %no_final.1.ph.lcssa14052, %if.end1774 ], [ %no_final.1.ph.lcssa14053, %if.end2193 ], [ %no_final.1.ph.lcssa14051, %if.end1898 ], [ %no_final.1.ph.lcssa14050, %if.end1857 ], [ %no_final.1.ph.lcssa14049, %if.end1823 ], [ %no_final.1.ph.lcssa14048, %if.then2207 ], [ %no_final.1.ph.lcssa14007, %S_reg_check_named_buff_matched.exit9079 ], [ %no_final.1.ph.lcssa14010, %if.then3363 ], [ %no_final.1.ph.lcssa14011, %sw.bb3379 ], [ %no_final.1.ph.lcssa14017, %sw.bb3886 ], [ %no_final.1.ph.lcssa14019, %sw.bb5973 ], [ %no_final.1.ph14067, %if.then6310 ], [ %no_final.1.ph.lcssa14048, %land.lhs.true2215 ], [ %no_final.1.ph.lcssa14006, %land.rhs3324 ], [ %no_final.1.ph.lcssa14006, %sw.bb3319 ], [ %no_final.1.ph.lcssa14008, %land.rhs3346 ], [ %no_final.1.ph.lcssa14008, %lor.rhs3348 ], [ %no_final.1.ph.lcssa14008, %sw.bb3343 ], [ %no_final.1.ph.lcssa14010, %if.else3366 ], [ %no_final.1.ph14066, %cleanup5913.thread9373 ], [ %no_final.1.ph.lcssa14059, %if.end860 ], [ %no_final.1.ph.lcssa14004, %sw.bb3209 ], [ %no_final.1.ph.lcssa14048, %if.else2222 ], [ %no_final.1.ph.lcssa14001, %sw.epilog6360.loopexit9419 ], [ %no_final.1.ph.lcssa14058, %sw.epilog6360.loopexit ], [ %no_final.1.ph.lcssa14057, %sw.epilog6360.loopexit12296 ], [ %no_final.1.ph.lcssa14009, %sw.epilog6360.loopexit12314 ], [ %no_final.1.ph.lcssa14047, %sw.epilog6360.loopexit12320 ], [ %no_final.1.ph.lcssa14023.lcssa, %sw.epilog6360.loopexit12321 ], [ %no_final.1.ph.lcssa14048, %sw.epilog6360.loopexit12322 ], [ %no_final.1.ph14065, %sw.epilog6360.loopexit12324 ]
  %cur_curlyx.1.ph13988 = phi ptr [ %cur_curlyx.1.ph.lcssa13987, %if.else6357 ], [ %cur_curlyx.1.ph.lcssa13986, %if.end116 ], [ %cur_curlyx.1.ph.lcssa13980, %if.end940 ], [ %cur_curlyx.1.ph.lcssa13979, %if.end1696 ], [ %cur_curlyx.1.ph.lcssa13978, %if.end1726 ], [ %cur_curlyx.1.ph.lcssa13976, %if.end1774 ], [ %cur_curlyx.1.ph.lcssa13977, %if.end2193 ], [ %cur_curlyx.1.ph.lcssa13975, %if.end1898 ], [ %cur_curlyx.1.ph.lcssa13974, %if.end1857 ], [ %cur_curlyx.1.ph.lcssa13973, %if.end1823 ], [ %cur_curlyx.1.ph.lcssa13972, %if.then2207 ], [ %cur_curlyx.1.ph.lcssa13931, %S_reg_check_named_buff_matched.exit9079 ], [ %cur_curlyx.1.ph.lcssa13934, %if.then3363 ], [ %cur_curlyx.1.ph.lcssa13935, %sw.bb3379 ], [ %cur_curlyx.1.ph.lcssa13941, %sw.bb3886 ], [ %cur_curlyx.1.ph.lcssa13943, %sw.bb5973 ], [ %cur_curlyx.1.ph13991, %if.then6310 ], [ %cur_curlyx.1.ph.lcssa13972, %land.lhs.true2215 ], [ %cur_curlyx.1.ph.lcssa13930, %land.rhs3324 ], [ %cur_curlyx.1.ph.lcssa13930, %sw.bb3319 ], [ %cur_curlyx.1.ph.lcssa13932, %land.rhs3346 ], [ %cur_curlyx.1.ph.lcssa13932, %lor.rhs3348 ], [ %cur_curlyx.1.ph.lcssa13932, %sw.bb3343 ], [ %cur_curlyx.1.ph.lcssa13934, %if.else3366 ], [ %cur_curlyx.1.ph13990, %cleanup5913.thread9373 ], [ %cur_curlyx.1.ph.lcssa13983, %if.end860 ], [ %cur_curlyx.1.ph.lcssa13928, %sw.bb3209 ], [ %cur_curlyx.1.ph.lcssa13972, %if.else2222 ], [ %cur_curlyx.1.ph.lcssa13925, %sw.epilog6360.loopexit9419 ], [ %cur_curlyx.1.ph.lcssa13982, %sw.epilog6360.loopexit ], [ %cur_curlyx.1.ph.lcssa13981, %sw.epilog6360.loopexit12296 ], [ %cur_curlyx.1.ph.lcssa13933, %sw.epilog6360.loopexit12314 ], [ %cur_curlyx.1.ph.lcssa13971, %sw.epilog6360.loopexit12320 ], [ %cur_curlyx.1.ph.lcssa13947.lcssa, %sw.epilog6360.loopexit12321 ], [ %cur_curlyx.1.ph.lcssa13972, %sw.epilog6360.loopexit12322 ], [ %cur_curlyx.1.ph13989, %sw.epilog6360.loopexit12324 ]
  %cur_eval.1.ph13911 = phi ptr [ %cur_eval.1.ph.lcssa13910, %if.else6357 ], [ %cur_eval.1.ph.lcssa13909, %if.end116 ], [ %cur_eval.1.ph.lcssa13903, %if.end940 ], [ %cur_eval.1.ph.lcssa13902, %if.end1696 ], [ %cur_eval.1.ph.lcssa13901, %if.end1726 ], [ %cur_eval.1.ph.lcssa13899, %if.end1774 ], [ %cur_eval.1.ph.lcssa13900, %if.end2193 ], [ %cur_eval.1.ph.lcssa13898, %if.end1898 ], [ %cur_eval.1.ph.lcssa13897, %if.end1857 ], [ %cur_eval.1.ph.lcssa13896, %if.end1823 ], [ %cur_eval.1.ph.lcssa13895, %if.then2207 ], [ %cur_eval.1.ph.lcssa13854, %S_reg_check_named_buff_matched.exit9079 ], [ %cur_eval.1.ph.lcssa13857, %if.then3363 ], [ %cur_eval.1.ph.lcssa13858, %sw.bb3379 ], [ %cur_eval.1.ph.lcssa13864, %sw.bb3886 ], [ %cur_eval.1.ph.lcssa13866, %sw.bb5973 ], [ %cur_eval.1.ph13914, %if.then6310 ], [ %cur_eval.1.ph.lcssa13895, %land.lhs.true2215 ], [ %cur_eval.1.ph.lcssa13853, %land.rhs3324 ], [ %cur_eval.1.ph.lcssa13853, %sw.bb3319 ], [ %cur_eval.1.ph.lcssa13855, %land.rhs3346 ], [ %cur_eval.1.ph.lcssa13855, %lor.rhs3348 ], [ %cur_eval.1.ph.lcssa13855, %sw.bb3343 ], [ %cur_eval.1.ph.lcssa13857, %if.else3366 ], [ %cur_eval.1.ph13913, %cleanup5913.thread9373 ], [ %cur_eval.1.ph.lcssa13906, %if.end860 ], [ %cur_eval.1.ph.lcssa13851, %sw.bb3209 ], [ %cur_eval.1.ph.lcssa13895, %if.else2222 ], [ %cur_eval.1.ph.lcssa13848, %sw.epilog6360.loopexit9419 ], [ %cur_eval.1.ph.lcssa13905, %sw.epilog6360.loopexit ], [ %cur_eval.1.ph.lcssa13904, %sw.epilog6360.loopexit12296 ], [ %cur_eval.1.ph.lcssa13856, %sw.epilog6360.loopexit12314 ], [ %cur_eval.1.ph.lcssa13894, %sw.epilog6360.loopexit12320 ], [ %cur_eval.1.ph.lcssa13870.lcssa, %sw.epilog6360.loopexit12321 ], [ %cur_eval.1.ph.lcssa13895, %sw.epilog6360.loopexit12322 ], [ %cur_eval.1.ph13912, %sw.epilog6360.loopexit12324 ]
  %mark_state.1.ph13834 = phi ptr [ %mark_state.1.ph.lcssa13833, %if.else6357 ], [ %mark_state.1.ph.lcssa13832, %if.end116 ], [ %mark_state.1.ph.lcssa13826, %if.end940 ], [ %mark_state.1.ph.lcssa13825, %if.end1696 ], [ %mark_state.1.ph.lcssa13824, %if.end1726 ], [ %mark_state.1.ph.lcssa13822, %if.end1774 ], [ %mark_state.1.ph.lcssa13823, %if.end2193 ], [ %mark_state.1.ph.lcssa13821, %if.end1898 ], [ %mark_state.1.ph.lcssa13820, %if.end1857 ], [ %mark_state.1.ph.lcssa13819, %if.end1823 ], [ %mark_state.1.ph.lcssa13818, %if.then2207 ], [ %mark_state.1.ph.lcssa13777, %S_reg_check_named_buff_matched.exit9079 ], [ %mark_state.1.ph.lcssa13780, %if.then3363 ], [ %mark_state.1.ph.lcssa13781, %sw.bb3379 ], [ %mark_state.1.ph.lcssa13787, %sw.bb3886 ], [ %mark_state.1.ph.lcssa13789, %sw.bb5973 ], [ %mark_state.1.ph13837, %if.then6310 ], [ %mark_state.1.ph.lcssa13818, %land.lhs.true2215 ], [ %mark_state.1.ph.lcssa13776, %land.rhs3324 ], [ %mark_state.1.ph.lcssa13776, %sw.bb3319 ], [ %mark_state.1.ph.lcssa13778, %land.rhs3346 ], [ %mark_state.1.ph.lcssa13778, %lor.rhs3348 ], [ %mark_state.1.ph.lcssa13778, %sw.bb3343 ], [ %mark_state.1.ph.lcssa13780, %if.else3366 ], [ %mark_state.1.ph13836, %cleanup5913.thread9373 ], [ %mark_state.1.ph.lcssa13829, %if.end860 ], [ %mark_state.1.ph.lcssa13774, %sw.bb3209 ], [ %mark_state.1.ph.lcssa13818, %if.else2222 ], [ %mark_state.1.ph.lcssa13771, %sw.epilog6360.loopexit9419 ], [ %mark_state.1.ph.lcssa13828, %sw.epilog6360.loopexit ], [ %mark_state.1.ph.lcssa13827, %sw.epilog6360.loopexit12296 ], [ %mark_state.1.ph.lcssa13779, %sw.epilog6360.loopexit12314 ], [ %mark_state.1.ph.lcssa13817, %sw.epilog6360.loopexit12320 ], [ %mark_state.1.ph.lcssa13793.lcssa, %sw.epilog6360.loopexit12321 ], [ %mark_state.1.ph.lcssa13818, %sw.epilog6360.loopexit12322 ], [ %mark_state.1.ph13835, %sw.epilog6360.loopexit12324 ]
  %yes_state.1.ph13756 = phi ptr [ %yes_state.1.ph.lcssa13755, %if.else6357 ], [ %yes_state.1.ph.lcssa13754, %if.end116 ], [ %yes_state.1.ph.lcssa13748, %if.end940 ], [ %yes_state.1.ph.lcssa13747, %if.end1696 ], [ %yes_state.1.ph.lcssa13746, %if.end1726 ], [ %yes_state.1.ph.lcssa13744, %if.end1774 ], [ %yes_state.1.ph.lcssa13745, %if.end2193 ], [ %yes_state.1.ph.lcssa13743, %if.end1898 ], [ %yes_state.1.ph.lcssa13742, %if.end1857 ], [ %yes_state.1.ph.lcssa13741, %if.end1823 ], [ %yes_state.1.ph.lcssa13740, %if.then2207 ], [ %yes_state.1.ph.lcssa13699, %S_reg_check_named_buff_matched.exit9079 ], [ %yes_state.1.ph.lcssa13702, %if.then3363 ], [ %yes_state.1.ph.lcssa13703, %sw.bb3379 ], [ %yes_state.1.ph.lcssa13709, %sw.bb3886 ], [ %yes_state.1.ph.lcssa13711, %sw.bb5973 ], [ %yes_state.1.ph13759, %if.then6310 ], [ %yes_state.1.ph.lcssa13740, %land.lhs.true2215 ], [ %yes_state.1.ph.lcssa13698, %land.rhs3324 ], [ %yes_state.1.ph.lcssa13698, %sw.bb3319 ], [ %yes_state.1.ph.lcssa13700, %land.rhs3346 ], [ %yes_state.1.ph.lcssa13700, %lor.rhs3348 ], [ %yes_state.1.ph.lcssa13700, %sw.bb3343 ], [ %yes_state.1.ph.lcssa13702, %if.else3366 ], [ %yes_state.1.ph13758, %cleanup5913.thread9373 ], [ %yes_state.1.ph.lcssa13751, %if.end860 ], [ %yes_state.1.ph.lcssa13696, %sw.bb3209 ], [ %yes_state.1.ph.lcssa13740, %if.else2222 ], [ %yes_state.1.ph.lcssa13693, %sw.epilog6360.loopexit9419 ], [ %yes_state.1.ph.lcssa13750, %sw.epilog6360.loopexit ], [ %yes_state.1.ph.lcssa13749, %sw.epilog6360.loopexit12296 ], [ %yes_state.1.ph.lcssa13701, %sw.epilog6360.loopexit12314 ], [ %yes_state.1.ph.lcssa13739, %sw.epilog6360.loopexit12320 ], [ %yes_state.1.ph.lcssa13715.lcssa, %sw.epilog6360.loopexit12321 ], [ %yes_state.1.ph.lcssa13740, %sw.epilog6360.loopexit12322 ], [ %yes_state.1.ph13757, %sw.epilog6360.loopexit12324 ]
  %depth.1.ph13603 = phi i32 [ %depth.1.ph.lcssa13602, %if.else6357 ], [ %depth.1.ph.lcssa13601, %if.end116 ], [ %depth.1.ph.lcssa13595, %if.end940 ], [ %depth.1.ph.lcssa13594, %if.end1696 ], [ %depth.1.ph.lcssa13593, %if.end1726 ], [ %depth.1.ph.lcssa13591, %if.end1774 ], [ %depth.1.ph.lcssa13592, %if.end2193 ], [ %depth.1.ph.lcssa13590, %if.end1898 ], [ %depth.1.ph.lcssa13589, %if.end1857 ], [ %depth.1.ph.lcssa13588, %if.end1823 ], [ %depth.1.ph.lcssa13587, %if.then2207 ], [ %depth.1.ph.lcssa13546, %S_reg_check_named_buff_matched.exit9079 ], [ %depth.1.ph.lcssa13549, %if.then3363 ], [ %depth.1.ph.lcssa13550, %sw.bb3379 ], [ %depth.1.ph.lcssa13556, %sw.bb3886 ], [ %depth.1.ph.lcssa13558, %sw.bb5973 ], [ %depth.1.ph13606, %if.then6310 ], [ %depth.1.ph.lcssa13587, %land.lhs.true2215 ], [ %depth.1.ph.lcssa13545, %land.rhs3324 ], [ %depth.1.ph.lcssa13545, %sw.bb3319 ], [ %depth.1.ph.lcssa13547, %land.rhs3346 ], [ %depth.1.ph.lcssa13547, %lor.rhs3348 ], [ %depth.1.ph.lcssa13547, %sw.bb3343 ], [ %depth.1.ph.lcssa13549, %if.else3366 ], [ %depth.1.ph13605, %cleanup5913.thread9373 ], [ %depth.1.ph.lcssa13598, %if.end860 ], [ %depth.1.ph.lcssa13543, %sw.bb3209 ], [ %depth.1.ph.lcssa13587, %if.else2222 ], [ %depth.1.ph.lcssa13540, %sw.epilog6360.loopexit9419 ], [ %depth.1.ph.lcssa13597, %sw.epilog6360.loopexit ], [ %depth.1.ph.lcssa13596, %sw.epilog6360.loopexit12296 ], [ %depth.1.ph.lcssa13548, %sw.epilog6360.loopexit12314 ], [ %depth.1.ph.lcssa13586, %sw.epilog6360.loopexit12320 ], [ %depth.1.ph.lcssa13562.lcssa, %sw.epilog6360.loopexit12321 ], [ %depth.1.ph.lcssa13587, %sw.epilog6360.loopexit12322 ], [ %depth.1.ph13604, %sw.epilog6360.loopexit12324 ]
  %st.1.ph13450 = phi ptr [ %st.1.ph.lcssa13449, %if.else6357 ], [ %st.1.ph.lcssa13448, %if.end116 ], [ %st.1.ph.lcssa13442, %if.end940 ], [ %st.1.ph.lcssa13441, %if.end1696 ], [ %st.1.ph.lcssa13440, %if.end1726 ], [ %st.1.ph.lcssa13438, %if.end1774 ], [ %st.1.ph.lcssa13439, %if.end2193 ], [ %st.1.ph.lcssa13437, %if.end1898 ], [ %st.1.ph.lcssa13436, %if.end1857 ], [ %st.1.ph.lcssa13435, %if.end1823 ], [ %st.1.ph.lcssa13434, %if.then2207 ], [ %st.1.ph.lcssa13393, %S_reg_check_named_buff_matched.exit9079 ], [ %st.1.ph.lcssa13396, %if.then3363 ], [ %st.1.ph.lcssa13397, %sw.bb3379 ], [ %st.1.ph.lcssa13403, %sw.bb3886 ], [ %st.1.ph.lcssa13405, %sw.bb5973 ], [ %st.1.ph13453, %if.then6310 ], [ %st.1.ph.lcssa13434, %land.lhs.true2215 ], [ %st.1.ph.lcssa13392, %land.rhs3324 ], [ %st.1.ph.lcssa13392, %sw.bb3319 ], [ %st.1.ph.lcssa13394, %land.rhs3346 ], [ %st.1.ph.lcssa13394, %lor.rhs3348 ], [ %st.1.ph.lcssa13394, %sw.bb3343 ], [ %st.1.ph.lcssa13396, %if.else3366 ], [ %st.1.ph13452, %cleanup5913.thread9373 ], [ %st.1.ph.lcssa13445, %if.end860 ], [ %st.1.ph.lcssa13390, %sw.bb3209 ], [ %st.1.ph.lcssa13434, %if.else2222 ], [ %st.1.ph.lcssa13387, %sw.epilog6360.loopexit9419 ], [ %st.1.ph.lcssa13444, %sw.epilog6360.loopexit ], [ %st.1.ph.lcssa13443, %sw.epilog6360.loopexit12296 ], [ %st.1.ph.lcssa13395, %sw.epilog6360.loopexit12314 ], [ %st.1.ph.lcssa13433, %sw.epilog6360.loopexit12320 ], [ %st.1.ph.lcssa13409.lcssa, %sw.epilog6360.loopexit12321 ], [ %st.1.ph.lcssa13434, %sw.epilog6360.loopexit12322 ], [ %st.1.ph13451, %sw.epilog6360.loopexit12324 ]
  %rexi.1.ph13375 = phi ptr [ %rexi.1.ph.lcssa13374, %if.else6357 ], [ %rexi.1.ph.lcssa13373, %if.end116 ], [ %rexi.1.ph.lcssa13367, %if.end940 ], [ %rexi.1.ph.lcssa13366, %if.end1696 ], [ %rexi.1.ph.lcssa13365, %if.end1726 ], [ %rexi.1.ph.lcssa13363, %if.end1774 ], [ %rexi.1.ph.lcssa13364, %if.end2193 ], [ %rexi.1.ph.lcssa13362, %if.end1898 ], [ %rexi.1.ph.lcssa13361, %if.end1857 ], [ %rexi.1.ph.lcssa13360, %if.end1823 ], [ %rexi.1.ph.lcssa13359, %if.then2207 ], [ %rexi.1.ph.lcssa13318, %S_reg_check_named_buff_matched.exit9079 ], [ %rexi.1.ph.lcssa13321, %if.then3363 ], [ %rexi.1.ph.lcssa13322, %sw.bb3379 ], [ %rexi.1.ph.lcssa13328, %sw.bb3886 ], [ %rexi.1.ph.lcssa13330, %sw.bb5973 ], [ %rexi.1.ph13378, %if.then6310 ], [ %rexi.1.ph.lcssa13359, %land.lhs.true2215 ], [ %rexi.1.ph.lcssa13317, %land.rhs3324 ], [ %rexi.1.ph.lcssa13317, %sw.bb3319 ], [ %rexi.1.ph.lcssa13319, %land.rhs3346 ], [ %rexi.1.ph.lcssa13319, %lor.rhs3348 ], [ %rexi.1.ph.lcssa13319, %sw.bb3343 ], [ %rexi.1.ph.lcssa13321, %if.else3366 ], [ %rexi.1.ph13377, %cleanup5913.thread9373 ], [ %rexi.1.ph.lcssa13370, %if.end860 ], [ %rexi.1.ph.lcssa13315, %sw.bb3209 ], [ %rexi.1.ph.lcssa13359, %if.else2222 ], [ %rexi.1.ph.lcssa13312, %sw.epilog6360.loopexit9419 ], [ %rexi.1.ph.lcssa13369, %sw.epilog6360.loopexit ], [ %rexi.1.ph.lcssa13368, %sw.epilog6360.loopexit12296 ], [ %rexi.1.ph.lcssa13320, %sw.epilog6360.loopexit12314 ], [ %rexi.1.ph.lcssa13358, %sw.epilog6360.loopexit12320 ], [ %rexi.1.ph.lcssa13334.lcssa, %sw.epilog6360.loopexit12321 ], [ %rexi.1.ph.lcssa13359, %sw.epilog6360.loopexit12322 ], [ %rexi.1.ph13376, %sw.epilog6360.loopexit12324 ]
  %rex.1.ph13299 = phi ptr [ %rex.1.ph.lcssa13298, %if.else6357 ], [ %rex.1.ph.lcssa13297, %if.end116 ], [ %rex.1.ph.lcssa13291, %if.end940 ], [ %rex.1.ph.lcssa13290, %if.end1696 ], [ %rex.1.ph.lcssa13289, %if.end1726 ], [ %rex.1.ph.lcssa13287, %if.end1774 ], [ %rex.1.ph.lcssa13288, %if.end2193 ], [ %rex.1.ph.lcssa13286, %if.end1898 ], [ %rex.1.ph.lcssa13285, %if.end1857 ], [ %rex.1.ph.lcssa13284, %if.end1823 ], [ %rex.1.ph.lcssa13283, %if.then2207 ], [ %rex.1.ph.lcssa13242, %S_reg_check_named_buff_matched.exit9079 ], [ %rex.1.ph.lcssa13245, %if.then3363 ], [ %rex.1.ph.lcssa13246, %sw.bb3379 ], [ %rex.1.ph.lcssa13252, %sw.bb3886 ], [ %rex.1.ph.lcssa13254, %sw.bb5973 ], [ %rex.1.ph13302, %if.then6310 ], [ %rex.1.ph.lcssa13283, %land.lhs.true2215 ], [ %rex.1.ph.lcssa13241, %land.rhs3324 ], [ %rex.1.ph.lcssa13241, %sw.bb3319 ], [ %rex.1.ph.lcssa13243, %land.rhs3346 ], [ %rex.1.ph.lcssa13243, %lor.rhs3348 ], [ %rex.1.ph.lcssa13243, %sw.bb3343 ], [ %rex.1.ph.lcssa13245, %if.else3366 ], [ %rex.1.ph13301, %cleanup5913.thread9373 ], [ %rex.1.ph.lcssa13294, %if.end860 ], [ %rex.1.ph.lcssa13239, %sw.bb3209 ], [ %rex.1.ph.lcssa13283, %if.else2222 ], [ %rex.1.ph.lcssa13236, %sw.epilog6360.loopexit9419 ], [ %rex.1.ph.lcssa13293, %sw.epilog6360.loopexit ], [ %rex.1.ph.lcssa13292, %sw.epilog6360.loopexit12296 ], [ %rex.1.ph.lcssa13244, %sw.epilog6360.loopexit12314 ], [ %rex.1.ph.lcssa13282, %sw.epilog6360.loopexit12320 ], [ %rex.1.ph.lcssa13258.lcssa, %sw.epilog6360.loopexit12321 ], [ %rex.1.ph.lcssa13283, %sw.epilog6360.loopexit12322 ], [ %rex.1.ph13300, %sw.epilog6360.loopexit12324 ]
  %rex_sv.1.ph13222 = phi ptr [ %rex_sv.1.ph.lcssa13221, %if.else6357 ], [ %rex_sv.1.ph.lcssa13220, %if.end116 ], [ %rex_sv.1.ph.lcssa13214, %if.end940 ], [ %rex_sv.1.ph.lcssa13213, %if.end1696 ], [ %rex_sv.1.ph.lcssa13212, %if.end1726 ], [ %rex_sv.1.ph.lcssa13210, %if.end1774 ], [ %rex_sv.1.ph.lcssa13211, %if.end2193 ], [ %rex_sv.1.ph.lcssa13209, %if.end1898 ], [ %rex_sv.1.ph.lcssa13208, %if.end1857 ], [ %rex_sv.1.ph.lcssa13207, %if.end1823 ], [ %rex_sv.1.ph.lcssa13206, %if.then2207 ], [ %rex_sv.1.ph.lcssa13165, %S_reg_check_named_buff_matched.exit9079 ], [ %rex_sv.1.ph.lcssa13168, %if.then3363 ], [ %rex_sv.1.ph.lcssa13169, %sw.bb3379 ], [ %rex_sv.1.ph.lcssa13175, %sw.bb3886 ], [ %rex_sv.1.ph.lcssa13177, %sw.bb5973 ], [ %rex_sv.1.ph13225, %if.then6310 ], [ %rex_sv.1.ph.lcssa13206, %land.lhs.true2215 ], [ %rex_sv.1.ph.lcssa13164, %land.rhs3324 ], [ %rex_sv.1.ph.lcssa13164, %sw.bb3319 ], [ %rex_sv.1.ph.lcssa13166, %land.rhs3346 ], [ %rex_sv.1.ph.lcssa13166, %lor.rhs3348 ], [ %rex_sv.1.ph.lcssa13166, %sw.bb3343 ], [ %rex_sv.1.ph.lcssa13168, %if.else3366 ], [ %rex_sv.1.ph13224, %cleanup5913.thread9373 ], [ %rex_sv.1.ph.lcssa13217, %if.end860 ], [ %rex_sv.1.ph.lcssa13162, %sw.bb3209 ], [ %rex_sv.1.ph.lcssa13206, %if.else2222 ], [ %rex_sv.1.ph.lcssa13159, %sw.epilog6360.loopexit9419 ], [ %rex_sv.1.ph.lcssa13216, %sw.epilog6360.loopexit ], [ %rex_sv.1.ph.lcssa13215, %sw.epilog6360.loopexit12296 ], [ %rex_sv.1.ph.lcssa13167, %sw.epilog6360.loopexit12314 ], [ %rex_sv.1.ph.lcssa13205, %sw.epilog6360.loopexit12320 ], [ %rex_sv.1.ph.lcssa13181.lcssa, %sw.epilog6360.loopexit12321 ], [ %rex_sv.1.ph.lcssa13206, %sw.epilog6360.loopexit12322 ], [ %rex_sv.1.ph13223, %sw.epilog6360.loopexit12324 ]
  %match.3 = phi i8 [ %match.1.ph.lcssa14601, %if.else6357 ], [ %match.1.ph.lcssa14600, %if.end116 ], [ %match.1.ph.lcssa14594, %if.end940 ], [ %match.1.ph.lcssa14593, %if.end1696 ], [ %match.1.ph.lcssa14592, %if.end1726 ], [ %match.1.ph.lcssa14590, %if.end1774 ], [ %match.1.ph.lcssa14591, %if.end2193 ], [ %match.1.ph.lcssa14589, %if.end1898 ], [ %match.1.ph.lcssa14588, %if.end1857 ], [ %match.1.ph.lcssa14587, %if.end1823 ], [ %match.1.ph.lcssa14586, %if.then2207 ], [ %match.1.ph.lcssa14545, %S_reg_check_named_buff_matched.exit9079 ], [ %match.1.ph.lcssa14548, %if.then3363 ], [ %match.1.ph.lcssa14549, %sw.bb3379 ], [ %match.1.ph.lcssa14555, %sw.bb3886 ], [ %match.1.ph.lcssa14557, %sw.bb5973 ], [ %match.1.ph14616, %if.then6310 ], [ %match.1.ph.lcssa14586, %land.lhs.true2215 ], [ %match.1.ph.lcssa14544, %land.rhs3324 ], [ %match.1.ph.lcssa14544, %sw.bb3319 ], [ %match.1.ph.lcssa14546, %land.rhs3346 ], [ %match.1.ph.lcssa14546, %lor.rhs3348 ], [ %match.1.ph.lcssa14546, %sw.bb3343 ], [ %match.1.ph.lcssa14548, %if.else3366 ], [ %match.1.ph14614, %cleanup5913.thread9373 ], [ %match.1.ph.lcssa14597, %if.end860 ], [ %match.1.ph.lcssa14542, %sw.bb3209 ], [ %match.1.ph.lcssa14586, %if.else2222 ], [ %match.1.ph.lcssa14539, %sw.epilog6360.loopexit9419 ], [ %match.1.ph.lcssa14596, %sw.epilog6360.loopexit ], [ %match.1.ph.lcssa14595, %sw.epilog6360.loopexit12296 ], [ %match.1.ph.lcssa14547, %sw.epilog6360.loopexit12314 ], [ %match.3.ph, %sw.epilog6360.loopexit12320 ], [ %match.1.ph.lcssa14561.lcssa, %sw.epilog6360.loopexit12321 ], [ %match.1.ph.lcssa14586, %sw.epilog6360.loopexit12322 ], [ %match.1.ph14602, %sw.epilog6360.loopexit12324 ]
  %last_pushed_cv.3 = phi ptr [ %last_pushed_cv.0.ph.lcssa14872, %if.else6357 ], [ %last_pushed_cv.0.ph.lcssa14871, %if.end116 ], [ %last_pushed_cv.0.ph.lcssa14866, %if.end940 ], [ %last_pushed_cv.0.ph.lcssa14865, %if.end1696 ], [ %last_pushed_cv.0.ph.lcssa14864, %if.end1726 ], [ %last_pushed_cv.0.ph.lcssa14862, %if.end1774 ], [ %last_pushed_cv.0.ph.lcssa14863, %if.end2193 ], [ %last_pushed_cv.0.ph.lcssa14861, %if.end1898 ], [ %last_pushed_cv.0.ph.lcssa14860, %if.end1857 ], [ %last_pushed_cv.0.ph.lcssa14859, %if.end1823 ], [ %last_pushed_cv.0.ph.lcssa14858, %if.then2207 ], [ %last_pushed_cv.0.ph.lcssa14843, %S_reg_check_named_buff_matched.exit9079 ], [ %last_pushed_cv.0.ph.lcssa14846, %if.then3363 ], [ %last_pushed_cv.0.ph.lcssa14847, %sw.bb3379 ], [ %last_pushed_cv.0.ph.lcssa14848, %sw.bb3886 ], [ %last_pushed_cv.0.ph.lcssa14849, %sw.bb5973 ], [ %last_pushed_cv.0.ph14875, %if.then6310 ], [ %last_pushed_cv.0.ph.lcssa14858, %land.lhs.true2215 ], [ %last_pushed_cv.0.ph.lcssa14842, %land.rhs3324 ], [ %last_pushed_cv.0.ph.lcssa14842, %sw.bb3319 ], [ %last_pushed_cv.0.ph.lcssa14844, %land.rhs3346 ], [ %last_pushed_cv.0.ph.lcssa14844, %lor.rhs3348 ], [ %last_pushed_cv.0.ph.lcssa14844, %sw.bb3343 ], [ %last_pushed_cv.0.ph.lcssa14846, %if.else3366 ], [ %last_pushed_cv.0.ph14874, %cleanup5913.thread9373 ], [ %last_pushed_cv.0.ph.lcssa14869, %if.end860 ], [ %last_pushed_cv.0.ph.lcssa14841, %sw.bb3209 ], [ %last_pushed_cv.0.ph.lcssa14858, %if.else2222 ], [ %last_pushed_cv.0.ph.lcssa14840, %sw.epilog6360.loopexit9419 ], [ %last_pushed_cv.0.ph.lcssa14868, %sw.epilog6360.loopexit ], [ %last_pushed_cv.0.ph.lcssa14867, %sw.epilog6360.loopexit12296 ], [ %last_pushed_cv.0.ph.lcssa14845, %sw.epilog6360.loopexit12314 ], [ %last_pushed_cv.0.ph.lcssa14857, %sw.epilog6360.loopexit12320 ], [ %last_pushed_cv.0.ph.lcssa14854, %sw.epilog6360.loopexit12321 ], [ %last_pushed_cv.0.ph.lcssa14858, %sw.epilog6360.loopexit12322 ], [ %last_pushed_cv.3.ph, %sw.epilog6360.loopexit12324 ]
  %caller_cv.3 = phi ptr [ %caller_cv.0.ph.lcssa14836, %if.else6357 ], [ %caller_cv.0.ph.lcssa14835, %if.end116 ], [ %caller_cv.0.ph.lcssa14830, %if.end940 ], [ %caller_cv.0.ph.lcssa14829, %if.end1696 ], [ %caller_cv.0.ph.lcssa14828, %if.end1726 ], [ %caller_cv.0.ph.lcssa14826, %if.end1774 ], [ %caller_cv.0.ph.lcssa14827, %if.end2193 ], [ %caller_cv.0.ph.lcssa14825, %if.end1898 ], [ %caller_cv.0.ph.lcssa14824, %if.end1857 ], [ %caller_cv.0.ph.lcssa14823, %if.end1823 ], [ %caller_cv.0.ph.lcssa14822, %if.then2207 ], [ %caller_cv.0.ph.lcssa14807, %S_reg_check_named_buff_matched.exit9079 ], [ %caller_cv.0.ph.lcssa14810, %if.then3363 ], [ %caller_cv.0.ph.lcssa14811, %sw.bb3379 ], [ %caller_cv.0.ph.lcssa14812, %sw.bb3886 ], [ %caller_cv.0.ph.lcssa14813, %sw.bb5973 ], [ %caller_cv.0.ph14838, %if.then6310 ], [ %caller_cv.0.ph.lcssa14822, %land.lhs.true2215 ], [ %caller_cv.0.ph.lcssa14806, %land.rhs3324 ], [ %caller_cv.0.ph.lcssa14806, %sw.bb3319 ], [ %caller_cv.0.ph.lcssa14808, %land.rhs3346 ], [ %caller_cv.0.ph.lcssa14808, %lor.rhs3348 ], [ %caller_cv.0.ph.lcssa14808, %sw.bb3343 ], [ %caller_cv.0.ph.lcssa14810, %if.else3366 ], [ %caller_cv.0.ph14837, %cleanup5913.thread9373 ], [ %caller_cv.0.ph.lcssa14833, %if.end860 ], [ %caller_cv.0.ph.lcssa14805, %sw.bb3209 ], [ %caller_cv.0.ph.lcssa14822, %if.else2222 ], [ %caller_cv.0.ph.lcssa14804, %sw.epilog6360.loopexit9419 ], [ %caller_cv.0.ph.lcssa14832, %sw.epilog6360.loopexit ], [ %caller_cv.0.ph.lcssa14831, %sw.epilog6360.loopexit12296 ], [ %caller_cv.0.ph.lcssa14809, %sw.epilog6360.loopexit12314 ], [ %caller_cv.0.ph.lcssa14821, %sw.epilog6360.loopexit12320 ], [ %caller_cv.0.ph.lcssa14818, %sw.epilog6360.loopexit12321 ], [ %caller_cv.0.ph.lcssa14822, %sw.epilog6360.loopexit12322 ], [ %caller_cv.3.ph, %sw.epilog6360.loopexit12324 ]
  %multicall_oldcatch.4 = phi i8 [ %multicall_oldcatch.0.ph.lcssa14799, %if.else6357 ], [ %multicall_oldcatch.0.ph.lcssa14798, %if.end116 ], [ %multicall_oldcatch.0.ph.lcssa14793, %if.end940 ], [ %multicall_oldcatch.0.ph.lcssa14792, %if.end1696 ], [ %multicall_oldcatch.0.ph.lcssa14791, %if.end1726 ], [ %multicall_oldcatch.0.ph.lcssa14789, %if.end1774 ], [ %multicall_oldcatch.0.ph.lcssa14790, %if.end2193 ], [ %multicall_oldcatch.0.ph.lcssa14788, %if.end1898 ], [ %multicall_oldcatch.0.ph.lcssa14787, %if.end1857 ], [ %multicall_oldcatch.0.ph.lcssa14786, %if.end1823 ], [ %multicall_oldcatch.0.ph.lcssa14785, %if.then2207 ], [ %multicall_oldcatch.0.ph.lcssa14770, %S_reg_check_named_buff_matched.exit9079 ], [ %multicall_oldcatch.0.ph.lcssa14773, %if.then3363 ], [ %multicall_oldcatch.0.ph.lcssa14774, %sw.bb3379 ], [ %multicall_oldcatch.0.ph.lcssa14775, %sw.bb3886 ], [ %multicall_oldcatch.0.ph.lcssa14776, %sw.bb5973 ], [ %multicall_oldcatch.0.ph14802, %if.then6310 ], [ %multicall_oldcatch.0.ph.lcssa14785, %land.lhs.true2215 ], [ %multicall_oldcatch.0.ph.lcssa14769, %land.rhs3324 ], [ %multicall_oldcatch.0.ph.lcssa14769, %sw.bb3319 ], [ %multicall_oldcatch.0.ph.lcssa14771, %land.rhs3346 ], [ %multicall_oldcatch.0.ph.lcssa14771, %lor.rhs3348 ], [ %multicall_oldcatch.0.ph.lcssa14771, %sw.bb3343 ], [ %multicall_oldcatch.0.ph.lcssa14773, %if.else3366 ], [ %multicall_oldcatch.0.ph14801, %cleanup5913.thread9373 ], [ %multicall_oldcatch.0.ph.lcssa14796, %if.end860 ], [ %multicall_oldcatch.0.ph.lcssa14768, %sw.bb3209 ], [ %multicall_oldcatch.0.ph.lcssa14785, %if.else2222 ], [ %multicall_oldcatch.0.ph.lcssa14767, %sw.epilog6360.loopexit9419 ], [ %multicall_oldcatch.0.ph.lcssa14795, %sw.epilog6360.loopexit ], [ %multicall_oldcatch.0.ph.lcssa14794, %sw.epilog6360.loopexit12296 ], [ %multicall_oldcatch.0.ph.lcssa14772, %sw.epilog6360.loopexit12314 ], [ %multicall_oldcatch.0.ph.lcssa14784, %sw.epilog6360.loopexit12320 ], [ %multicall_oldcatch.0.ph.lcssa14781, %sw.epilog6360.loopexit12321 ], [ %multicall_oldcatch.0.ph.lcssa14785, %sw.epilog6360.loopexit12322 ], [ %multicall_oldcatch.4.ph, %sw.epilog6360.loopexit12324 ]
  %multicall_cv.4 = phi ptr [ %multicall_cv.0.ph.lcssa14762, %if.else6357 ], [ %multicall_cv.0.ph.lcssa14761, %if.end116 ], [ %multicall_cv.0.ph.lcssa14756, %if.end940 ], [ %multicall_cv.0.ph.lcssa14755, %if.end1696 ], [ %multicall_cv.0.ph.lcssa14754, %if.end1726 ], [ %multicall_cv.0.ph.lcssa14752, %if.end1774 ], [ %multicall_cv.0.ph.lcssa14753, %if.end2193 ], [ %multicall_cv.0.ph.lcssa14751, %if.end1898 ], [ %multicall_cv.0.ph.lcssa14750, %if.end1857 ], [ %multicall_cv.0.ph.lcssa14749, %if.end1823 ], [ %multicall_cv.0.ph.lcssa14748, %if.then2207 ], [ %multicall_cv.0.ph.lcssa14733, %S_reg_check_named_buff_matched.exit9079 ], [ %multicall_cv.0.ph.lcssa14736, %if.then3363 ], [ %multicall_cv.0.ph.lcssa14737, %sw.bb3379 ], [ %multicall_cv.0.ph.lcssa14738, %sw.bb3886 ], [ %multicall_cv.0.ph.lcssa14739, %sw.bb5973 ], [ %multicall_cv.0.ph14765, %if.then6310 ], [ %multicall_cv.0.ph.lcssa14748, %land.lhs.true2215 ], [ %multicall_cv.0.ph.lcssa14732, %land.rhs3324 ], [ %multicall_cv.0.ph.lcssa14732, %sw.bb3319 ], [ %multicall_cv.0.ph.lcssa14734, %land.rhs3346 ], [ %multicall_cv.0.ph.lcssa14734, %lor.rhs3348 ], [ %multicall_cv.0.ph.lcssa14734, %sw.bb3343 ], [ %multicall_cv.0.ph.lcssa14736, %if.else3366 ], [ %multicall_cv.0.ph14764, %cleanup5913.thread9373 ], [ %multicall_cv.0.ph.lcssa14759, %if.end860 ], [ %multicall_cv.0.ph.lcssa14731, %sw.bb3209 ], [ %multicall_cv.0.ph.lcssa14748, %if.else2222 ], [ %multicall_cv.0.ph.lcssa14730, %sw.epilog6360.loopexit9419 ], [ %multicall_cv.0.ph.lcssa14758, %sw.epilog6360.loopexit ], [ %multicall_cv.0.ph.lcssa14757, %sw.epilog6360.loopexit12296 ], [ %multicall_cv.0.ph.lcssa14735, %sw.epilog6360.loopexit12314 ], [ %multicall_cv.0.ph.lcssa14747, %sw.epilog6360.loopexit12320 ], [ %multicall_cv.0.ph.lcssa14744, %sw.epilog6360.loopexit12321 ], [ %multicall_cv.0.ph.lcssa14748, %sw.epilog6360.loopexit12322 ], [ %multicall_cv.4.ph, %sw.epilog6360.loopexit12324 ]
  %last_pad.2 = phi ptr [ %last_pad.0.ph.lcssa14726, %if.else6357 ], [ %last_pad.0.ph.lcssa14725, %if.end116 ], [ %last_pad.0.ph.lcssa14720, %if.end940 ], [ %last_pad.0.ph.lcssa14719, %if.end1696 ], [ %last_pad.0.ph.lcssa14718, %if.end1726 ], [ %last_pad.0.ph.lcssa14716, %if.end1774 ], [ %last_pad.0.ph.lcssa14717, %if.end2193 ], [ %last_pad.0.ph.lcssa14715, %if.end1898 ], [ %last_pad.0.ph.lcssa14714, %if.end1857 ], [ %last_pad.0.ph.lcssa14713, %if.end1823 ], [ %last_pad.0.ph.lcssa14712, %if.then2207 ], [ %last_pad.0.ph.lcssa14697, %S_reg_check_named_buff_matched.exit9079 ], [ %last_pad.0.ph.lcssa14700, %if.then3363 ], [ %last_pad.0.ph.lcssa14701, %sw.bb3379 ], [ %last_pad.0.ph.lcssa14702, %sw.bb3886 ], [ %last_pad.0.ph.lcssa14703, %sw.bb5973 ], [ %last_pad.0.ph14728, %if.then6310 ], [ %last_pad.0.ph.lcssa14712, %land.lhs.true2215 ], [ %last_pad.0.ph.lcssa14696, %land.rhs3324 ], [ %last_pad.0.ph.lcssa14696, %sw.bb3319 ], [ %last_pad.0.ph.lcssa14698, %land.rhs3346 ], [ %last_pad.0.ph.lcssa14698, %lor.rhs3348 ], [ %last_pad.0.ph.lcssa14698, %sw.bb3343 ], [ %last_pad.0.ph.lcssa14700, %if.else3366 ], [ %last_pad.0.ph14727, %cleanup5913.thread9373 ], [ %last_pad.0.ph.lcssa14723, %if.end860 ], [ %last_pad.0.ph.lcssa14695, %sw.bb3209 ], [ %last_pad.0.ph.lcssa14712, %if.else2222 ], [ %last_pad.0.ph.lcssa14694, %sw.epilog6360.loopexit9419 ], [ %last_pad.0.ph.lcssa14722, %sw.epilog6360.loopexit ], [ %last_pad.0.ph.lcssa14721, %sw.epilog6360.loopexit12296 ], [ %last_pad.0.ph.lcssa14699, %sw.epilog6360.loopexit12314 ], [ %last_pad.0.ph.lcssa14711, %sw.epilog6360.loopexit12320 ], [ %last_pad.0.ph.lcssa14708, %sw.epilog6360.loopexit12321 ], [ %last_pad.0.ph.lcssa14712, %sw.epilog6360.loopexit12322 ], [ %last_pad.2.ph, %sw.epilog6360.loopexit12324 ]
  %logical.7 = phi i32 [ %logical.1.ph.lcssa14452, %if.else6357 ], [ %logical.1.ph.lcssa14451, %if.end116 ], [ %logical.1.ph.lcssa14445, %if.end940 ], [ %logical.1.ph.lcssa14444, %if.end1696 ], [ %logical.1.ph.lcssa14443, %if.end1726 ], [ %logical.1.ph.lcssa14441, %if.end1774 ], [ %logical.1.ph.lcssa14442, %if.end2193 ], [ %logical.1.ph.lcssa14440, %if.end1898 ], [ %logical.1.ph.lcssa14439, %if.end1857 ], [ %logical.1.ph.lcssa14438, %if.end1823 ], [ %logical.1.ph.lcssa14437, %if.then2207 ], [ %logical.1.ph.lcssa14396, %S_reg_check_named_buff_matched.exit9079 ], [ %logical.1.ph.lcssa14399, %if.then3363 ], [ %conv3381, %sw.bb3379 ], [ %logical.1.ph.lcssa14406, %sw.bb3886 ], [ %logical.1.ph.lcssa14408, %sw.bb5973 ], [ %logical.1.ph14463, %if.then6310 ], [ %logical.1.ph.lcssa14437, %land.lhs.true2215 ], [ %logical.1.ph.lcssa14395, %land.rhs3324 ], [ %logical.1.ph.lcssa14395, %sw.bb3319 ], [ %logical.1.ph.lcssa14397, %land.rhs3346 ], [ %logical.1.ph.lcssa14397, %lor.rhs3348 ], [ %logical.1.ph.lcssa14397, %sw.bb3343 ], [ %logical.1.ph.lcssa14399, %if.else3366 ], [ 0, %cleanup5913.thread9373 ], [ %logical.1.ph.lcssa14448, %if.end860 ], [ %logical.1.ph.lcssa14393, %sw.bb3209 ], [ %logical.1.ph.lcssa14437, %if.else2222 ], [ %logical.1.ph.lcssa14390, %sw.epilog6360.loopexit9419 ], [ %logical.1.ph.lcssa14447, %sw.epilog6360.loopexit ], [ %logical.1.ph.lcssa14446, %sw.epilog6360.loopexit12296 ], [ %logical.1.ph.lcssa14398, %sw.epilog6360.loopexit12314 ], [ %logical.1.ph.lcssa14436, %sw.epilog6360.loopexit12320 ], [ %logical.1.ph.lcssa14412.lcssa, %sw.epilog6360.loopexit12321 ], [ %logical.1.ph.lcssa14437, %sw.epilog6360.loopexit12322 ], [ %logical.7.ph, %sw.epilog6360.loopexit12324 ]
  %minmod.7 = phi i8 [ %minmod.112948.lcssa, %if.else6357 ], [ %minmod.1.lcssa12837.lcssa, %if.end116 ], [ %minmod.112947.lcssa, %if.end940 ], [ %minmod.1.lcssa12856.lcssa12980, %if.end1696 ], [ %minmod.1.lcssa12856.lcssa, %if.end1726 ], [ %minmod.112953.lcssa, %if.end1774 ], [ %minmod.112954.lcssa, %if.end2193 ], [ %minmod.112955.lcssa12972, %if.end1898 ], [ %minmod.112955.lcssa, %if.end1857 ], [ %minmod.112957.lcssa, %if.end1823 ], [ %minmod.1.lcssa12865.lcssa, %if.then2207 ], [ %minmod.1.lcssa12885, %S_reg_check_named_buff_matched.exit9079 ], [ %minmod.1.lcssa12888, %if.then3363 ], [ %minmod.1.lcssa12889, %sw.bb3379 ], [ 1, %sw.bb3886 ], [ %minmod.1.lcssa12919, %sw.bb5973 ], [ %minmod.1.lcssa1292912975, %if.then6310 ], [ %minmod.1.lcssa12865.lcssa, %land.lhs.true2215 ], [ %minmod.1.lcssa12884, %land.rhs3324 ], [ %minmod.1.lcssa12884, %sw.bb3319 ], [ %minmod.1.lcssa12886, %land.rhs3346 ], [ %minmod.1.lcssa12886, %lor.rhs3348 ], [ %minmod.1.lcssa12886, %sw.bb3343 ], [ %minmod.1.lcssa12888, %if.else3366 ], [ %minmod.11296412971, %cleanup5913.thread9373 ], [ %minmod.1.lcssa12842.lcssa12982, %if.end860 ], [ %minmod.1.lcssa12881, %sw.bb3209 ], [ %minmod.1.lcssa12865.lcssa, %if.else2222 ], [ %minmod.1.lcssa12876, %sw.epilog6360.loopexit9419 ], [ %minmod.1.lcssa12842.lcssa12981, %sw.epilog6360.loopexit ], [ %minmod.1.lcssa12842.lcssa, %sw.epilog6360.loopexit12296 ], [ %minmod.1.lcssa12887, %sw.epilog6360.loopexit12314 ], [ %minmod.112935, %sw.epilog6360.loopexit12320 ], [ %minmod.1.lcssa12927.lcssa, %sw.epilog6360.loopexit12321 ], [ %minmod.1.lcssa12865.lcssa, %sw.epilog6360.loopexit12322 ], [ %minmod.112934, %sw.epilog6360.loopexit12324 ]
  %sw.8 = phi i1 [ %sw.0.ph9430.lcssa14679, %if.else6357 ], [ %sw.0.ph9430.lcssa14678, %if.end116 ], [ %sw.0.ph9430.lcssa14672, %if.end940 ], [ %sw.0.ph9430.lcssa14671, %if.end1696 ], [ %sw.0.ph9430.lcssa14670, %if.end1726 ], [ %sw.0.ph9430.lcssa14668, %if.end1774 ], [ %sw.0.ph9430.lcssa14669, %if.end2193 ], [ %sw.0.ph9430.lcssa14667, %if.end1898 ], [ %sw.0.ph9430.lcssa14666, %if.end1857 ], [ %sw.0.ph9430.lcssa14665, %if.end1823 ], [ %sw.0.ph9430.lcssa14664, %if.then2207 ], [ %cmp3338, %S_reg_check_named_buff_matched.exit9079 ], [ true, %if.then3363 ], [ %sw.0.ph9430.lcssa14629, %sw.bb3379 ], [ %sw.0.ph9430.lcssa14635, %sw.bb3886 ], [ %sw.0.ph9430.lcssa14637, %sw.bb5973 ], [ %sw.0.ph943014689, %if.then6310 ], [ %sw.0.ph9430.lcssa14664, %land.lhs.true2215 ], [ %cmp3329, %land.rhs3324 ], [ false, %sw.bb3319 ], [ true, %land.rhs3346 ], [ %cmp3351, %lor.rhs3348 ], [ false, %sw.bb3343 ], [ false, %if.else3366 ], [ %sw.4, %cleanup5913.thread9373 ], [ %sw.0.ph9430.lcssa14675, %if.end860 ], [ %sw.0.ph9430.lcssa14622, %sw.bb3209 ], [ %sw.0.ph9430.lcssa14664, %if.else2222 ], [ %sw.0.ph9430.lcssa14619, %sw.epilog6360.loopexit9419 ], [ %sw.0.ph9430.lcssa14674, %sw.epilog6360.loopexit ], [ %sw.0.ph9430.lcssa14673, %sw.epilog6360.loopexit12296 ], [ false, %sw.epilog6360.loopexit12314 ], [ %sw.0.ph9430.lcssa14663, %sw.epilog6360.loopexit12320 ], [ %sw.0.ph9430.lcssa14641.lcssa, %sw.epilog6360.loopexit12321 ], [ %sw.0.ph9430.lcssa14664, %sw.epilog6360.loopexit12322 ], [ %sw.8.ph, %sw.epilog6360.loopexit12324 ]
  %lastopen.1 = phi i32 [ %lastopen.0.ph.ph, %if.else6357 ], [ %lastopen.0.ph.ph, %if.end116 ], [ %lastopen.0.ph.ph, %if.end940 ], [ %lastopen.0.ph.ph, %if.end1696 ], [ %lastopen.0.ph.ph, %if.end1726 ], [ %lastopen.0.ph.ph, %if.end1774 ], [ %lastopen.0.ph.ph, %if.end2193 ], [ %lastopen.0.ph.ph, %if.end1898 ], [ %lastopen.0.ph.ph, %if.end1857 ], [ %lastopen.0.ph.ph, %if.end1823 ], [ %lastopen.0.ph.ph, %if.then2207 ], [ %lastopen.0.ph.ph, %S_reg_check_named_buff_matched.exit9079 ], [ %lastopen.0.ph.ph, %if.then3363 ], [ %lastopen.0.ph.ph, %sw.bb3379 ], [ %lastopen.0.ph.ph, %sw.bb3886 ], [ %lastopen.0.ph.ph, %sw.bb5973 ], [ %lastopen.0.ph.ph, %if.then6310 ], [ %lastopen.0.ph.ph, %land.lhs.true2215 ], [ %lastopen.0.ph.ph, %land.rhs3324 ], [ %lastopen.0.ph.ph, %sw.bb3319 ], [ %lastopen.0.ph.ph, %land.rhs3346 ], [ %lastopen.0.ph.ph, %lor.rhs3348 ], [ %lastopen.0.ph.ph, %sw.bb3343 ], [ %lastopen.0.ph.ph, %if.else3366 ], [ %lastopen.0.ph.ph, %cleanup5913.thread9373 ], [ %lastopen.0.ph.ph, %if.end860 ], [ %678, %sw.bb3209 ], [ %lastopen.0.ph.ph, %if.else2222 ], [ %lastopen.0.ph.ph, %sw.epilog6360.loopexit9419 ], [ %lastopen.0.ph.ph, %sw.epilog6360.loopexit ], [ %lastopen.0.ph.ph, %sw.epilog6360.loopexit12296 ], [ %lastopen.0.ph.ph, %sw.epilog6360.loopexit12314 ], [ %lastopen.0.ph.ph, %sw.epilog6360.loopexit12320 ], [ %lastopen.0.ph.ph, %sw.epilog6360.loopexit12321 ], [ %lastopen.0.ph.ph, %sw.epilog6360.loopexit12322 ], [ %lastopen.0.ph.ph, %sw.epilog6360.loopexit12324 ]
  %nochange_depth.6 = phi i32 [ %nochange_depth.1.ph.lcssa13681, %if.else6357 ], [ %nochange_depth.1.ph.lcssa13680, %if.end116 ], [ %nochange_depth.1.ph.lcssa13674, %if.end940 ], [ %nochange_depth.1.ph.lcssa13673, %if.end1696 ], [ %nochange_depth.1.ph.lcssa13672, %if.end1726 ], [ %nochange_depth.1.ph.lcssa13670, %if.end1774 ], [ %nochange_depth.1.ph.lcssa13671, %if.end2193 ], [ %nochange_depth.1.ph.lcssa13669, %if.end1898 ], [ %nochange_depth.1.ph.lcssa13668, %if.end1857 ], [ %nochange_depth.1.ph.lcssa13667, %if.end1823 ], [ %nochange_depth.1.ph.lcssa13666, %if.then2207 ], [ %nochange_depth.1.ph.lcssa13625, %S_reg_check_named_buff_matched.exit9079 ], [ %nochange_depth.1.ph.lcssa13628, %if.then3363 ], [ %nochange_depth.1.ph.lcssa13629, %sw.bb3379 ], [ %nochange_depth.1.ph.lcssa13635, %sw.bb3886 ], [ %nochange_depth.1.ph.lcssa13637, %sw.bb5973 ], [ %nochange_depth.1.ph13692, %if.then6310 ], [ %nochange_depth.1.ph.lcssa13666, %land.lhs.true2215 ], [ %nochange_depth.1.ph.lcssa13624, %land.rhs3324 ], [ %nochange_depth.1.ph.lcssa13624, %sw.bb3319 ], [ %nochange_depth.1.ph.lcssa13626, %land.rhs3346 ], [ %nochange_depth.1.ph.lcssa13626, %lor.rhs3348 ], [ %nochange_depth.1.ph.lcssa13626, %sw.bb3343 ], [ %nochange_depth.1.ph.lcssa13628, %if.else3366 ], [ %nochange_depth.1.ph13689, %cleanup5913.thread9373 ], [ %nochange_depth.1.ph.lcssa13677, %if.end860 ], [ %nochange_depth.1.ph.lcssa13622, %sw.bb3209 ], [ %nochange_depth.1.ph.lcssa13666, %if.else2222 ], [ %nochange_depth.1.ph.lcssa13619, %sw.epilog6360.loopexit9419 ], [ %nochange_depth.1.ph.lcssa13676, %sw.epilog6360.loopexit ], [ %nochange_depth.1.ph.lcssa13675, %sw.epilog6360.loopexit12296 ], [ %nochange_depth.1.ph.lcssa13627, %sw.epilog6360.loopexit12314 ], [ %nochange_depth.1.ph.lcssa13665, %sw.epilog6360.loopexit12320 ], [ %nochange_depth.1.ph.lcssa13641.lcssa, %sw.epilog6360.loopexit12321 ], [ %nochange_depth.1.ph.lcssa13666, %sw.epilog6360.loopexit12322 ], [ %nochange_depth.6.ph, %sw.epilog6360.loopexit12324 ]
  %locinput.27 = phi ptr [ %incdec.ptr6358, %if.else6357 ], [ %incdec.ptr, %if.end116 ], [ %add.ptr941, %if.end940 ], [ %add.ptr1701, %if.end1696 ], [ %incdec.ptr1727, %if.end1726 ], [ %add.ptr1779, %if.end1774 ], [ %add.ptr2198, %if.end2193 ], [ %add.ptr1899, %if.end1898 ], [ %incdec.ptr1858, %if.end1857 ], [ %incdec.ptr1824, %if.end1823 ], [ %incdec.ptr2208, %if.then2207 ], [ %locinput.1.lcssa12625, %S_reg_check_named_buff_matched.exit9079 ], [ %locinput.1.lcssa12628, %if.then3363 ], [ %locinput.1.lcssa12629, %sw.bb3379 ], [ %locinput.1.lcssa12645, %sw.bb3886 ], [ %locinput.1.lcssa12659, %sw.bb5973 ], [ %add.ptr6312, %if.then6310 ], [ %spec.select8705, %land.lhs.true2215 ], [ %locinput.1.lcssa12624, %land.rhs3324 ], [ %locinput.1.lcssa12624, %sw.bb3319 ], [ %locinput.1.lcssa12626, %land.rhs3346 ], [ %locinput.1.lcssa12626, %lor.rhs3348 ], [ %locinput.1.lcssa12626, %sw.bb3343 ], [ %locinput.1.lcssa12628, %if.else3366 ], [ %locinput.11268612710, %cleanup5913.thread9373 ], [ %add.ptr861, %if.end860 ], [ %locinput.1.lcssa12621, %sw.bb3209 ], [ %add.ptr2237, %if.else2222 ], [ %locinput.1.lcssa12616, %sw.epilog6360.loopexit9419 ], [ %l.1.lcssa, %sw.epilog6360.loopexit ], [ %incdec.ptr836.lcssa, %sw.epilog6360.loopexit12296 ], [ %locinput.1.lcssa12627, %sw.epilog6360.loopexit12314 ], [ %locinput.27.ph, %sw.epilog6360.loopexit12320 ], [ %locinput.1.lcssa12667.lcssa, %sw.epilog6360.loopexit12321 ], [ %locinput.27.ph12323, %sw.epilog6360.loopexit12322 ], [ %locinput.112674, %sw.epilog6360.loopexit12324 ]
  %next.6 = phi ptr [ %next.1.ph.lcssa13528, %if.else6357 ], [ %next.1.ph.lcssa13527, %if.end116 ], [ %next.1.ph.lcssa13521, %if.end940 ], [ %next.1.ph.lcssa13520, %if.end1696 ], [ %next.1.ph.lcssa13519, %if.end1726 ], [ %next.1.ph.lcssa13517, %if.end1774 ], [ %next.1.ph.lcssa13518, %if.end2193 ], [ %next.1.ph.lcssa13516, %if.end1898 ], [ %next.1.ph.lcssa13515, %if.end1857 ], [ %next.1.ph.lcssa13514, %if.end1823 ], [ %next.1.ph.lcssa13513, %if.then2207 ], [ %next.1.ph.lcssa13472, %S_reg_check_named_buff_matched.exit9079 ], [ %add.ptr3365, %if.then3363 ], [ %next.1.ph.lcssa13476, %sw.bb3379 ], [ %next.1.ph.lcssa13482, %sw.bb3886 ], [ %spec.store.select6653, %sw.bb5973 ], [ %next.1.ph13539, %if.then6310 ], [ %next.1.ph.lcssa13513, %land.lhs.true2215 ], [ %next.1.ph.lcssa13471, %land.rhs3324 ], [ %next.1.ph.lcssa13471, %sw.bb3319 ], [ %next.1.ph.lcssa13473, %land.rhs3346 ], [ %next.1.ph.lcssa13473, %lor.rhs3348 ], [ %next.1.ph.lcssa13473, %sw.bb3343 ], [ %spec.select8714, %if.else3366 ], [ %spec.store.select6651, %cleanup5913.thread9373 ], [ %next.1.ph.lcssa13524, %if.end860 ], [ %next.1.ph.lcssa13469, %sw.bb3209 ], [ %next.1.ph.lcssa13513, %if.else2222 ], [ %next.1.ph.lcssa13466, %sw.epilog6360.loopexit9419 ], [ %next.1.ph.lcssa13523, %sw.epilog6360.loopexit ], [ %next.1.ph.lcssa13522, %sw.epilog6360.loopexit12296 ], [ %next.1.ph.lcssa13474, %sw.epilog6360.loopexit12314 ], [ %next.1.ph.lcssa13512, %sw.epilog6360.loopexit12320 ], [ %next.1.ph.lcssa13488.lcssa, %sw.epilog6360.loopexit12321 ], [ %next.1.ph.lcssa13513, %sw.epilog6360.loopexit12322 ], [ %next.1.ph13529, %sw.epilog6360.loopexit12324 ]
  br label %while.cond.outer.outer, !llvm.loop !17

push_yes_state:                                   ; preds = %sw.bb5996, %do_ifmatch, %if.end5817, %curlym_do_A, %if.then3810, %if.end3707, %cleanup3615.thread9321, %if.end3394, %if.end3118
  %match.1.ph14604 = phi i8 [ %match.1.ph14613, %if.end3118 ], [ %match.1.ph14607, %if.end5817 ], [ %match.1.ph.lcssa14550, %if.end3394 ], [ %match.1.ph14605, %if.end3707 ], [ %match.1.ph14610, %if.then3810 ], [ %match.1.ph14612, %curlym_do_A ], [ %match.1.ph14611, %do_ifmatch ], [ %match.1.ph.lcssa14560, %sw.bb5996 ], [ %match.1.ph14606, %cleanup3615.thread9321 ]
  %popmark.1.ph14225 = phi ptr [ %popmark.1.ph14234, %if.end3118 ], [ %popmark.1.ph14228, %if.end5817 ], [ %popmark.1.ph.lcssa14168, %if.end3394 ], [ %popmark.1.ph14226, %if.end3707 ], [ %popmark.1.ph14231, %if.then3810 ], [ %popmark.1.ph14233, %curlym_do_A ], [ %popmark.1.ph14232, %do_ifmatch ], [ %popmark.1.ph.lcssa14178, %sw.bb5996 ], [ %popmark.1.ph14227, %cleanup3615.thread9321 ]
  %do_cutgroup.1.ph14146 = phi i8 [ %do_cutgroup.1.ph14154, %if.end3118 ], [ %do_cutgroup.1.ph14152, %if.end5817 ], [ %do_cutgroup.1.ph.lcssa14090, %if.end3394 ], [ %do_cutgroup.1.ph14147, %if.end3707 ], [ %do_cutgroup.1.ph14151, %if.then3810 ], [ %do_cutgroup.1.ph14150, %curlym_do_A ], [ %do_cutgroup.1.ph14149, %do_ifmatch ], [ %do_cutgroup.1.ph.lcssa14100, %sw.bb5996 ], [ %do_cutgroup.1.ph14148, %cleanup3615.thread9321 ]
  %no_final.1.ph14068 = phi i8 [ %no_final.1.ph14076, %if.end3118 ], [ %no_final.1.ph14074, %if.end5817 ], [ %no_final.1.ph.lcssa14012, %if.end3394 ], [ %no_final.1.ph14069, %if.end3707 ], [ %no_final.1.ph14073, %if.then3810 ], [ %no_final.1.ph14072, %curlym_do_A ], [ %no_final.1.ph14071, %do_ifmatch ], [ %no_final.1.ph.lcssa14022, %sw.bb5996 ], [ %no_final.1.ph14070, %cleanup3615.thread9321 ]
  %yes_state.1.ph13760 = phi ptr [ %yes_state.1.ph13768, %if.end3118 ], [ %yes_state.1.ph13766, %if.end5817 ], [ %yes_state.1.ph.lcssa13704, %if.end3394 ], [ %yes_state.1.ph13761, %if.end3707 ], [ %yes_state.1.ph13765, %if.then3810 ], [ %yes_state.1.ph13764, %curlym_do_A ], [ %yes_state.1.ph13763, %do_ifmatch ], [ %yes_state.1.ph.lcssa13714, %sw.bb5996 ], [ %yes_state.1.ph13762, %cleanup3615.thread9321 ]
  %depth.1.ph13608 = phi i32 [ %depth.1.ph13617, %if.end3118 ], [ %depth.1.ph13611, %if.end5817 ], [ %depth.1.ph.lcssa13551, %if.end3394 ], [ %depth.1.ph13609, %if.end3707 ], [ %depth.1.ph13614, %if.then3810 ], [ %depth.1.ph13616, %curlym_do_A ], [ %depth.1.ph13615, %do_ifmatch ], [ %depth.1.ph.lcssa13561, %sw.bb5996 ], [ %depth.1.ph13610, %cleanup3615.thread9321 ]
  %st.1.ph13455 = phi ptr [ %st.1.ph13464, %if.end3118 ], [ %st.1.ph13458, %if.end5817 ], [ %st.1.ph.lcssa13398, %if.end3394 ], [ %st.1.ph13456, %if.end3707 ], [ %st.1.ph13461, %if.then3810 ], [ %st.1.ph13463, %curlym_do_A ], [ %st.1.ph13462, %do_ifmatch ], [ %st.1.ph.lcssa13408, %sw.bb5996 ], [ %st.1.ph13457, %cleanup3615.thread9321 ]
  %is_utf8_pat.2 = phi i8 [ %storedv3109, %if.end3118 ], [ %storedv5809, %if.end5817 ], [ %is_utf8_pat.1.ph.lcssa14475, %if.end3394 ], [ %is_utf8_pat.1.ph14531, %if.end3707 ], [ %is_utf8_pat.1.ph14533, %if.then3810 ], [ %is_utf8_pat.1.ph14534, %curlym_do_A ], [ %is_utf8_pat.1.ph14536, %do_ifmatch ], [ %is_utf8_pat.1.ph.lcssa14485, %sw.bb5996 ], [ %is_utf8_pat.1.ph14532, %cleanup3615.thread9321 ]
  %last_pushed_cv.4 = phi ptr [ %last_pushed_cv.2, %if.end3118 ], [ %last_pushed_cv.0.ph, %if.end5817 ], [ %last_pushed_cv.0.ph, %if.end3394 ], [ %last_pushed_cv.0.ph, %if.end3707 ], [ %last_pushed_cv.0.ph, %if.then3810 ], [ %last_pushed_cv.0.ph, %curlym_do_A ], [ %last_pushed_cv.0.ph, %do_ifmatch ], [ %last_pushed_cv.0.ph, %sw.bb5996 ], [ %last_pushed_cv.0.ph, %cleanup3615.thread9321 ]
  %caller_cv.4 = phi ptr [ %caller_cv.2, %if.end3118 ], [ %caller_cv.0.ph, %if.end5817 ], [ %caller_cv.0.ph, %if.end3394 ], [ %caller_cv.0.ph, %if.end3707 ], [ %caller_cv.0.ph, %if.then3810 ], [ %caller_cv.0.ph, %curlym_do_A ], [ %caller_cv.0.ph, %do_ifmatch ], [ %caller_cv.0.ph, %sw.bb5996 ], [ %caller_cv.0.ph, %cleanup3615.thread9321 ]
  %multicall_oldcatch.5 = phi i8 [ %multicall_oldcatch.3, %if.end3118 ], [ %multicall_oldcatch.0.ph, %if.end5817 ], [ %multicall_oldcatch.0.ph, %if.end3394 ], [ %multicall_oldcatch.0.ph, %if.end3707 ], [ %multicall_oldcatch.0.ph, %if.then3810 ], [ %multicall_oldcatch.0.ph, %curlym_do_A ], [ %multicall_oldcatch.0.ph, %do_ifmatch ], [ %multicall_oldcatch.0.ph, %sw.bb5996 ], [ %multicall_oldcatch.0.ph, %cleanup3615.thread9321 ]
  %multicall_cv.5 = phi ptr [ %multicall_cv.3, %if.end3118 ], [ %multicall_cv.0.ph, %if.end5817 ], [ %multicall_cv.0.ph, %if.end3394 ], [ %multicall_cv.0.ph, %if.end3707 ], [ %multicall_cv.0.ph, %if.then3810 ], [ %multicall_cv.0.ph, %curlym_do_A ], [ %multicall_cv.0.ph, %do_ifmatch ], [ %multicall_cv.0.ph, %sw.bb5996 ], [ %multicall_cv.0.ph, %cleanup3615.thread9321 ]
  %last_pad.3 = phi ptr [ %last_pad.1, %if.end3118 ], [ %last_pad.0.ph, %if.end5817 ], [ %last_pad.0.ph, %if.end3394 ], [ %last_pad.0.ph, %if.end3707 ], [ %last_pad.0.ph, %if.then3810 ], [ %last_pad.0.ph, %curlym_do_A ], [ %last_pad.0.ph, %do_ifmatch ], [ %last_pad.0.ph, %sw.bb5996 ], [ %last_pad.0.ph, %cleanup3615.thread9321 ]
  %logical.8 = phi i32 [ %logical.3, %if.end3118 ], [ %logical.1.ph14454, %if.end5817 ], [ %logical.1.ph.lcssa14401, %if.end3394 ], [ %logical.1.ph14456, %if.end3707 ], [ %logical.1.ph14458, %if.then3810 ], [ %logical.1.ph14459, %curlym_do_A ], [ 0, %do_ifmatch ], [ %logical.1.ph.lcssa14411, %sw.bb5996 ], [ %logical.1.ph14457, %cleanup3615.thread9321 ]
  %minmod.8 = phi i8 [ %minmod.112959, %if.end3118 ], [ %minmod.69360, %if.end5817 ], [ 0, %if.end3394 ], [ %minmod.112960, %if.end3707 ], [ %minmod.112961, %if.then3810 ], [ %minmod.2, %curlym_do_A ], [ %minmod.112963, %do_ifmatch ], [ %minmod.1.lcssa12924, %sw.bb5996 ], [ %minmod.1.lcssa1289312979, %cleanup3615.thread9321 ]
  %sw.9 = phi i1 [ %sw.3, %if.end3118 ], [ %sw.0.ph943014681, %if.end5817 ], [ %sw.0.ph9430.lcssa14630, %if.end3394 ], [ %sw.0.ph943014683, %if.end3707 ], [ %sw.0.ph943014685, %if.then3810 ], [ %sw.0.ph943014686, %curlym_do_A ], [ %sw.0.ph943014687, %do_ifmatch ], [ %sw.0.ph9430.lcssa14640, %sw.bb5996 ], [ %sw.0.ph943014684, %cleanup3615.thread9321 ]
  %sv_yes_mark.3 = phi ptr [ %sv_yes_mark.1.ph14380, %if.end3118 ], [ %sv_yes_mark.1.ph14381, %if.end5817 ], [ %sv_yes_mark.1.ph.lcssa14324, %if.end3394 ], [ %sv_yes_mark.1.ph14383, %if.end3707 ], [ %sv_yes_mark.1.ph14385, %if.then3810 ], [ %sv_yes_mark.1.ph14386, %curlym_do_A ], [ %sv_yes_mark.1.ph14387, %do_ifmatch ], [ %1163, %sw.bb5996 ], [ %sv_yes_mark.1.ph14384, %cleanup3615.thread9321 ]
  %sv_commit.5 = phi ptr [ %sv_commit.1.ph14303, %if.end3118 ], [ %sv_commit.1.ph14304, %if.end5817 ], [ %sv_commit.1.ph.lcssa14247, %if.end3394 ], [ %sv_commit.1.ph14306, %if.end3707 ], [ %sv_commit.1.ph14308, %if.then3810 ], [ %sv_commit.1.ph14309, %curlym_do_A ], [ %sv_commit.1.ph14310, %do_ifmatch ], [ %1163, %sw.bb5996 ], [ %sv_commit.1.ph14307, %cleanup3615.thread9321 ]
  %cur_curlyx.4 = phi ptr [ null, %if.end3118 ], [ %1129, %if.end5817 ], [ %st.1.ph.lcssa13398, %if.end3394 ], [ %791, %if.end3707 ], [ %cur_curlyx.1.ph13995, %if.then3810 ], [ %cur_curlyx.1.ph13996, %curlym_do_A ], [ %cur_curlyx.1.ph13998, %do_ifmatch ], [ %cur_curlyx.1.ph.lcssa13946, %sw.bb5996 ], [ %758, %cleanup3615.thread9321 ]
  %cur_eval.2 = phi ptr [ %st.1.ph13464, %if.end3118 ], [ %1132, %if.end5817 ], [ %cur_eval.1.ph.lcssa13859, %if.end3394 ], [ %cur_eval.1.ph13918, %if.end3707 ], [ %cur_eval.1.ph13920, %if.then3810 ], [ %cur_eval.1.ph13921, %curlym_do_A ], [ %cur_eval.1.ph13922, %do_ifmatch ], [ %cur_eval.1.ph.lcssa13869, %sw.bb5996 ], [ %cur_eval.1.ph13919, %cleanup3615.thread9321 ]
  %mark_state.2 = phi ptr [ %mark_state.1.ph13838, %if.end3118 ], [ %mark_state.1.ph13839, %if.end5817 ], [ %mark_state.1.ph.lcssa13782, %if.end3394 ], [ %mark_state.1.ph13841, %if.end3707 ], [ %mark_state.1.ph13843, %if.then3810 ], [ %mark_state.1.ph13844, %curlym_do_A ], [ %mark_state.1.ph13845, %do_ifmatch ], [ %st.1.ph.lcssa13408, %sw.bb5996 ], [ %mark_state.1.ph13842, %cleanup3615.thread9321 ]
  %nochange_depth.7 = phi i32 [ %nochange_depth.4, %if.end3118 ], [ %spec.select8729, %if.end5817 ], [ %nochange_depth.1.ph.lcssa13630, %if.end3394 ], [ %nochange_depth.1.ph13684, %if.end3707 ], [ %nochange_depth.1.ph13686, %if.then3810 ], [ %nochange_depth.1.ph13687, %curlym_do_A ], [ %nochange_depth.1.ph13688, %do_ifmatch ], [ %nochange_depth.1.ph.lcssa13640, %sw.bb5996 ], [ %nochange_depth.1.ph13685, %cleanup3615.thread9321 ]
  %pushinput.10 = phi ptr [ %locinput.112697, %if.end3118 ], [ %locinput.259361, %if.end5817 ], [ %locinput.1.lcssa12630, %if.end3394 ], [ %locinput.112698, %if.end3707 ], [ %locinput.112699, %if.then3810 ], [ %locinput.112700, %curlym_do_A ], [ %newstart.3, %do_ifmatch ], [ %locinput.1.lcssa12664, %sw.bb5996 ], [ %locinput.1.lcssa1263312717, %cleanup3615.thread9321 ]
  %locinput.28 = phi ptr [ %locinput.112697, %if.end3118 ], [ %locinput.259361, %if.end5817 ], [ %locinput.1.lcssa12630, %if.end3394 ], [ %locinput.112698, %if.end3707 ], [ %locinput.112699, %if.then3810 ], [ %locinput.112700, %curlym_do_A ], [ %locinput.112702, %do_ifmatch ], [ %locinput.1.lcssa12664, %sw.bb5996 ], [ %locinput.1.lcssa1263312717, %cleanup3615.thread9321 ]
  %next.7 = phi ptr [ %next.1.ph13530, %if.end3118 ], [ %next.1.ph13531, %if.end5817 ], [ %next.2, %if.end3394 ], [ %next.1.ph13533, %if.end3707 ], [ %next.3, %if.then3810 ], [ %next.1.ph13535, %curlym_do_A ], [ %next.1.ph13536, %do_ifmatch ], [ %next.1.ph.lcssa13487, %sw.bb5996 ], [ %next.1.ph13534, %cleanup3615.thread9321 ]
  %scan.15 = phi ptr [ %startpoint2385.1, %if.end3118 ], [ %1133, %if.end5817 ], [ %add.ptr3417, %if.end3394 ], [ %792, %if.end3707 ], [ %add.ptr3799, %if.then3810 ], [ %840, %curlym_do_A ], [ %add.ptr5923, %do_ifmatch ], [ %next.1.ph.lcssa13487, %sw.bb5996 ], [ %763, %cleanup3615.thread9321 ]
  %rexi.2 = phi ptr [ %rei.0, %if.end3118 ], [ %1128, %if.end5817 ], [ %rexi.1.ph.lcssa13323, %if.end3394 ], [ %rexi.1.ph13379, %if.end3707 ], [ %rexi.1.ph13381, %if.then3810 ], [ %rexi.1.ph13382, %curlym_do_A ], [ %rexi.1.ph13384, %do_ifmatch ], [ %rexi.1.ph.lcssa13333, %sw.bb5996 ], [ %rexi.1.ph13380, %cleanup3615.thread9321 ]
  %rex.2 = phi ptr [ %re.0, %if.end3118 ], [ %.val, %if.end5817 ], [ %rex.1.ph.lcssa13247, %if.end3394 ], [ %rex.1.ph13305, %if.end3707 ], [ %rex.1.ph13307, %if.then3810 ], [ %rex.1.ph13308, %curlym_do_A ], [ %rex.1.ph13309, %do_ifmatch ], [ %rex.1.ph.lcssa13257, %sw.bb5996 ], [ %rex.1.ph13306, %cleanup3615.thread9321 ]
  %rex_sv.2 = phi ptr [ %re_sv.4, %if.end3118 ], [ %1118, %if.end5817 ], [ %rex_sv.1.ph.lcssa13170, %if.end3394 ], [ %rex_sv.1.ph13229, %if.end3707 ], [ %rex_sv.1.ph13231, %if.then3810 ], [ %rex_sv.1.ph13232, %curlym_do_A ], [ %rex_sv.1.ph13233, %do_ifmatch ], [ %rex_sv.1.ph.lcssa13180, %sw.bb5996 ], [ %rex_sv.1.ph13230, %cleanup3615.thread9321 ]
  %u6362 = getelementptr inbounds nuw i8, ptr %st.1.ph13455, i64 16
  store ptr %yes_state.1.ph13760, ptr %u6362, align 8
  br label %push_state

push_state:                                       ; preds = %push_yes_state, %cleanup6091, %if.then6064, %if.end5992, %cleanup5735, %if.end5578, %cleanup5433.thread9345, %if.end4507, %cond.end3825, %if.else3812, %if.end3772, %if.then3603, %if.then3462, %if.then730, %sw.bb64
  %match.1.ph14603 = phi i8 [ %match.1.ph.lcssa, %sw.bb64 ], [ %match.1.ph.lcssa14599, %if.then730 ], [ %match.1.ph14604, %push_yes_state ], [ %match.1.ph.lcssa14579, %if.end3772 ], [ %match.1.ph14610, %if.else3812 ], [ %match.1.ph.lcssa14554, %cond.end3825 ], [ %match.1.ph.lcssa14578, %if.end4507 ], [ %match.1.ph14609, %if.end5578 ], [ %match.1.ph.lcssa14572, %cleanup5735 ], [ %match.1.ph14608, %if.end5992 ], [ %match.1.ph.lcssa14561, %if.then6064 ], [ %match.1.ph.lcssa14561, %cleanup6091 ], [ %match.1.ph.lcssa14574, %cleanup5433.thread9345 ], [ %match.1.ph.lcssa14580, %if.then3462 ], [ %match.1.ph14606, %if.then3603 ]
  %popmark.1.ph14224 = phi ptr [ %popmark.1.ph.lcssa, %sw.bb64 ], [ %popmark.1.ph.lcssa14217, %if.then730 ], [ %popmark.1.ph14225, %push_yes_state ], [ %popmark.1.ph.lcssa14197, %if.end3772 ], [ %popmark.1.ph14231, %if.else3812 ], [ %popmark.1.ph.lcssa14172, %cond.end3825 ], [ %popmark.1.ph.lcssa14196, %if.end4507 ], [ %popmark.1.ph14230, %if.end5578 ], [ %popmark.1.ph.lcssa14190, %cleanup5735 ], [ %popmark.1.ph14229, %if.end5992 ], [ %popmark.1.ph.lcssa14179, %if.then6064 ], [ %popmark.1.ph.lcssa14179, %cleanup6091 ], [ %popmark.1.ph.lcssa14192, %cleanup5433.thread9345 ], [ %popmark.1.ph.lcssa14198, %if.then3462 ], [ %popmark.1.ph14227, %if.then3603 ]
  %depth.1.ph13607 = phi i32 [ %depth.1.ph.lcssa, %sw.bb64 ], [ %depth.1.ph.lcssa13600, %if.then730 ], [ %depth.1.ph13608, %push_yes_state ], [ %depth.1.ph.lcssa13580, %if.end3772 ], [ %depth.1.ph13614, %if.else3812 ], [ %depth.1.ph.lcssa13555, %cond.end3825 ], [ %depth.1.ph.lcssa13579, %if.end4507 ], [ %depth.1.ph13613, %if.end5578 ], [ %depth.1.ph.lcssa13573, %cleanup5735 ], [ %depth.1.ph13612, %if.end5992 ], [ %depth.1.ph.lcssa13562, %if.then6064 ], [ %depth.1.ph.lcssa13562, %cleanup6091 ], [ %depth.1.ph.lcssa13575, %cleanup5433.thread9345 ], [ %depth.1.ph.lcssa13581, %if.then3462 ], [ %depth.1.ph13610, %if.then3603 ]
  %st.1.ph13454 = phi ptr [ %st.1.ph.lcssa, %sw.bb64 ], [ %st.1.ph.lcssa13447, %if.then730 ], [ %st.1.ph13455, %push_yes_state ], [ %st.1.ph.lcssa13427, %if.end3772 ], [ %st.1.ph13461, %if.else3812 ], [ %st.1.ph.lcssa13402, %cond.end3825 ], [ %st.1.ph.lcssa13426, %if.end4507 ], [ %st.1.ph13460, %if.end5578 ], [ %st.1.ph.lcssa13420, %cleanup5735 ], [ %st.1.ph13459, %if.end5992 ], [ %st.1.ph.lcssa13409, %if.then6064 ], [ %st.1.ph.lcssa13409, %cleanup6091 ], [ %st.1.ph.lcssa13422, %cleanup5433.thread9345 ], [ %st.1.ph.lcssa13428, %if.then3462 ], [ %st.1.ph13457, %if.then3603 ]
  %is_utf8_pat.3 = phi i8 [ %is_utf8_pat.1.ph.lcssa, %sw.bb64 ], [ %is_utf8_pat.1.ph.lcssa14524, %if.then730 ], [ %is_utf8_pat.2, %push_yes_state ], [ %is_utf8_pat.1.ph.lcssa14504, %if.end3772 ], [ %is_utf8_pat.1.ph14533, %if.else3812 ], [ %is_utf8_pat.1.ph.lcssa14479, %cond.end3825 ], [ %is_utf8_pat.1.ph.lcssa14503, %if.end4507 ], [ %is_utf8_pat.1.ph14535, %if.end5578 ], [ %is_utf8_pat.1.ph.lcssa14497, %cleanup5735 ], [ %is_utf8_pat.1.ph14538, %if.end5992 ], [ %is_utf8_pat.1.ph.lcssa14486, %if.then6064 ], [ %is_utf8_pat.1.ph.lcssa14486, %cleanup6091 ], [ %is_utf8_pat.1.ph.lcssa14499, %cleanup5433.thread9345 ], [ %is_utf8_pat.1.ph.lcssa14505, %if.then3462 ], [ %is_utf8_pat.1.ph14532, %if.then3603 ]
  %last_pushed_cv.5 = phi ptr [ %last_pushed_cv.0.ph, %sw.bb64 ], [ %last_pushed_cv.0.ph, %if.then730 ], [ %last_pushed_cv.4, %push_yes_state ], [ %last_pushed_cv.0.ph, %if.end3772 ], [ %last_pushed_cv.0.ph, %if.else3812 ], [ %last_pushed_cv.0.ph, %cond.end3825 ], [ %last_pushed_cv.0.ph, %if.end4507 ], [ %last_pushed_cv.0.ph, %if.end5578 ], [ %last_pushed_cv.0.ph, %cleanup5735 ], [ %last_pushed_cv.0.ph, %if.end5992 ], [ %last_pushed_cv.0.ph, %if.then6064 ], [ %last_pushed_cv.0.ph, %cleanup6091 ], [ %last_pushed_cv.0.ph, %cleanup5433.thread9345 ], [ %last_pushed_cv.0.ph, %if.then3462 ], [ %last_pushed_cv.0.ph, %if.then3603 ]
  %caller_cv.5 = phi ptr [ %caller_cv.0.ph, %sw.bb64 ], [ %caller_cv.0.ph, %if.then730 ], [ %caller_cv.4, %push_yes_state ], [ %caller_cv.0.ph, %if.end3772 ], [ %caller_cv.0.ph, %if.else3812 ], [ %caller_cv.0.ph, %cond.end3825 ], [ %caller_cv.0.ph, %if.end4507 ], [ %caller_cv.0.ph, %if.end5578 ], [ %caller_cv.0.ph, %cleanup5735 ], [ %caller_cv.0.ph, %if.end5992 ], [ %caller_cv.0.ph, %if.then6064 ], [ %caller_cv.0.ph, %cleanup6091 ], [ %caller_cv.0.ph, %cleanup5433.thread9345 ], [ %caller_cv.0.ph, %if.then3462 ], [ %caller_cv.0.ph, %if.then3603 ]
  %multicall_oldcatch.6 = phi i8 [ %multicall_oldcatch.0.ph, %sw.bb64 ], [ %multicall_oldcatch.0.ph, %if.then730 ], [ %multicall_oldcatch.5, %push_yes_state ], [ %multicall_oldcatch.0.ph, %if.end3772 ], [ %multicall_oldcatch.0.ph, %if.else3812 ], [ %multicall_oldcatch.0.ph, %cond.end3825 ], [ %multicall_oldcatch.0.ph, %if.end4507 ], [ %multicall_oldcatch.0.ph, %if.end5578 ], [ %multicall_oldcatch.0.ph, %cleanup5735 ], [ %multicall_oldcatch.0.ph, %if.end5992 ], [ %multicall_oldcatch.0.ph, %if.then6064 ], [ %multicall_oldcatch.0.ph, %cleanup6091 ], [ %multicall_oldcatch.0.ph, %cleanup5433.thread9345 ], [ %multicall_oldcatch.0.ph, %if.then3462 ], [ %multicall_oldcatch.0.ph, %if.then3603 ]
  %multicall_cv.6 = phi ptr [ %multicall_cv.0.ph, %sw.bb64 ], [ %multicall_cv.0.ph, %if.then730 ], [ %multicall_cv.5, %push_yes_state ], [ %multicall_cv.0.ph, %if.end3772 ], [ %multicall_cv.0.ph, %if.else3812 ], [ %multicall_cv.0.ph, %cond.end3825 ], [ %multicall_cv.0.ph, %if.end4507 ], [ %multicall_cv.0.ph, %if.end5578 ], [ %multicall_cv.0.ph, %cleanup5735 ], [ %multicall_cv.0.ph, %if.end5992 ], [ %multicall_cv.0.ph, %if.then6064 ], [ %multicall_cv.0.ph, %cleanup6091 ], [ %multicall_cv.0.ph, %cleanup5433.thread9345 ], [ %multicall_cv.0.ph, %if.then3462 ], [ %multicall_cv.0.ph, %if.then3603 ]
  %last_pad.4 = phi ptr [ %last_pad.0.ph, %sw.bb64 ], [ %last_pad.0.ph, %if.then730 ], [ %last_pad.3, %push_yes_state ], [ %last_pad.0.ph, %if.end3772 ], [ %last_pad.0.ph, %if.else3812 ], [ %last_pad.0.ph, %cond.end3825 ], [ %last_pad.0.ph, %if.end4507 ], [ %last_pad.0.ph, %if.end5578 ], [ %last_pad.0.ph, %cleanup5735 ], [ %last_pad.0.ph, %if.end5992 ], [ %last_pad.0.ph, %if.then6064 ], [ %last_pad.0.ph, %cleanup6091 ], [ %last_pad.0.ph, %cleanup5433.thread9345 ], [ %last_pad.0.ph, %if.then3462 ], [ %last_pad.0.ph, %if.then3603 ]
  %logical.9 = phi i32 [ %logical.1.ph.lcssa, %sw.bb64 ], [ %logical.1.ph.lcssa14450, %if.then730 ], [ %logical.8, %push_yes_state ], [ %logical.1.ph.lcssa14430, %if.end3772 ], [ %logical.1.ph14458, %if.else3812 ], [ %logical.1.ph.lcssa14405, %cond.end3825 ], [ %logical.1.ph.lcssa14429, %if.end4507 ], [ %logical.1.ph14455, %if.end5578 ], [ %logical.1.ph.lcssa14423, %cleanup5735 ], [ %logical.1.ph14462, %if.end5992 ], [ %logical.1.ph.lcssa14412, %if.then6064 ], [ %logical.1.ph.lcssa14412, %cleanup6091 ], [ %logical.1.ph.lcssa14425, %cleanup5433.thread9345 ], [ %logical.1.ph.lcssa14431, %if.then3462 ], [ %logical.1.ph14457, %if.then3603 ]
  %minmod.9 = phi i8 [ %minmod.1.lcssa12831, %sw.bb64 ], [ %minmod.112950.lcssa, %if.then730 ], [ %minmod.8, %push_yes_state ], [ %minmod.1.lcssa12898.lcssa, %if.end3772 ], [ %minmod.112961, %if.else3812 ], [ %minmod.1.lcssa12901, %cond.end3825 ], [ %minmod.3.lcssa.lcssa, %if.end4507 ], [ %minmod.5, %if.end5578 ], [ %minmod.110086.lcssa, %cleanup5735 ], [ %minmod.112966, %if.end5992 ], [ %minmod.1.lcssa12927, %if.then6064 ], [ %minmod.1.lcssa12927, %cleanup6091 ], [ %minmod.4.lcssa, %cleanup5433.thread9345 ], [ %minmod.1.lcssa12893.lcssa, %if.then3462 ], [ %minmod.1.lcssa1289312979, %if.then3603 ]
  %sw.10 = phi i1 [ %sw.0.ph9430.lcssa14618, %sw.bb64 ], [ %sw.0.ph9430.lcssa14677, %if.then730 ], [ %sw.9, %push_yes_state ], [ %sw.0.ph9430.lcssa14657, %if.end3772 ], [ %sw.0.ph943014685, %if.else3812 ], [ %sw.0.ph9430.lcssa14634, %cond.end3825 ], [ %sw.0.ph9430.lcssa14656, %if.end4507 ], [ %sw.0.ph943014682, %if.end5578 ], [ %sw.0.ph9430.lcssa14650, %cleanup5735 ], [ %sw.0.ph943014688, %if.end5992 ], [ %sw.0.ph9430.lcssa14641, %if.then6064 ], [ %sw.0.ph9430.lcssa14641, %cleanup6091 ], [ %sw.0.ph9430.lcssa14652, %cleanup5433.thread9345 ], [ %sw.0.ph9430.lcssa14658, %if.then3462 ], [ %sw.0.ph943014684, %if.then3603 ]
  %sv_yes_mark.4 = phi ptr [ %sv_yes_mark.1.ph.lcssa, %sw.bb64 ], [ %sv_yes_mark.1.ph.lcssa14373, %if.then730 ], [ %sv_yes_mark.3, %push_yes_state ], [ %sv_yes_mark.1.ph.lcssa14353, %if.end3772 ], [ %sv_yes_mark.1.ph14385, %if.else3812 ], [ %cond3826, %cond.end3825 ], [ %sv_yes_mark.1.ph.lcssa14352, %if.end4507 ], [ %sv_yes_mark.1.ph14382, %if.end5578 ], [ %sv_yes_mark.1.ph.lcssa14346, %cleanup5735 ], [ %sv_yes_mark.2, %if.end5992 ], [ %sv_yes_mark.1.ph.lcssa14335, %if.then6064 ], [ %sv_yes_mark.1.ph.lcssa14335, %cleanup6091 ], [ %sv_yes_mark.1.ph.lcssa14348, %cleanup5433.thread9345 ], [ %sv_yes_mark.1.ph.lcssa14354, %if.then3462 ], [ %sv_yes_mark.1.ph14384, %if.then3603 ]
  %sv_commit.6 = phi ptr [ %sv_commit.1.ph.lcssa, %sw.bb64 ], [ %sv_commit.1.ph.lcssa14296, %if.then730 ], [ %sv_commit.5, %push_yes_state ], [ %sv_commit.1.ph.lcssa14276, %if.end3772 ], [ %sv_commit.1.ph14308, %if.else3812 ], [ %sv_commit.1.ph.lcssa14251, %cond.end3825 ], [ %sv_commit.1.ph.lcssa14275, %if.end4507 ], [ %sv_commit.1.ph14305, %if.end5578 ], [ %sv_commit.1.ph.lcssa14269, %cleanup5735 ], [ %sv_commit.2, %if.end5992 ], [ %sv_commit.1.ph.lcssa14258, %if.then6064 ], [ %sv_commit.1.ph.lcssa14258, %cleanup6091 ], [ %sv_commit.1.ph.lcssa14271, %cleanup5433.thread9345 ], [ %sv_commit.1.ph.lcssa14277, %if.then3462 ], [ %sv_commit.1.ph14307, %if.then3603 ]
  %do_cutgroup.4 = phi i8 [ %do_cutgroup.1.ph.lcssa, %sw.bb64 ], [ %spec.select8701.lcssa, %if.then730 ], [ %do_cutgroup.1.ph14146, %push_yes_state ], [ %do_cutgroup.1.ph.lcssa14119, %if.end3772 ], [ %do_cutgroup.1.ph14151, %if.else3812 ], [ %do_cutgroup.1.ph.lcssa14094, %cond.end3825 ], [ %do_cutgroup.1.ph.lcssa14118, %if.end4507 ], [ %do_cutgroup.1.ph14153, %if.end5578 ], [ %do_cutgroup.1.ph.lcssa14112, %cleanup5735 ], [ %do_cutgroup.1.ph14156, %if.end5992 ], [ %do_cutgroup.1.ph.lcssa14101, %if.then6064 ], [ %do_cutgroup.1.ph.lcssa14101, %cleanup6091 ], [ %do_cutgroup.1.ph.lcssa14114, %cleanup5433.thread9345 ], [ %do_cutgroup.1.ph.lcssa14120, %if.then3462 ], [ %do_cutgroup.1.ph14148, %if.then3603 ]
  %no_final.4 = phi i8 [ %no_final.1.ph.lcssa, %sw.bb64 ], [ %spec.select8702.lcssa, %if.then730 ], [ %no_final.1.ph14068, %push_yes_state ], [ %no_final.1.ph.lcssa14041, %if.end3772 ], [ %no_final.1.ph14073, %if.else3812 ], [ %no_final.1.ph.lcssa14016, %cond.end3825 ], [ %no_final.1.ph.lcssa14040, %if.end4507 ], [ %no_final.1.ph14075, %if.end5578 ], [ %no_final.1.ph.lcssa14034, %cleanup5735 ], [ %no_final.1.ph14078, %if.end5992 ], [ %no_final.1.ph.lcssa14023, %if.then6064 ], [ %no_final.1.ph.lcssa14023, %cleanup6091 ], [ %no_final.1.ph.lcssa14036, %cleanup5433.thread9345 ], [ %no_final.1.ph.lcssa14042, %if.then3462 ], [ %no_final.1.ph14070, %if.then3603 ]
  %cur_curlyx.5 = phi ptr [ %cur_curlyx.1.ph.lcssa, %sw.bb64 ], [ %cur_curlyx.1.ph.lcssa13985, %if.then730 ], [ %cur_curlyx.4, %push_yes_state ], [ %.lcssa13140, %if.end3772 ], [ %cur_curlyx.1.ph13995, %if.else3812 ], [ %cur_curlyx.1.ph.lcssa13940, %cond.end3825 ], [ %cur_curlyx.1.ph.lcssa13964, %if.end4507 ], [ %cur_curlyx.1.ph13997, %if.end5578 ], [ %cur_curlyx.1.ph.lcssa13958, %cleanup5735 ], [ %cur_curlyx.1.ph14000, %if.end5992 ], [ %cur_curlyx.1.ph.lcssa13947, %if.then6064 ], [ %cur_curlyx.1.ph.lcssa13947, %cleanup6091 ], [ %cur_curlyx.1.ph.lcssa13960, %cleanup5433.thread9345 ], [ %cur_curlyx.1.ph.lcssa13966, %if.then3462 ], [ %cur_curlyx.1.ph13994, %if.then3603 ]
  %cur_eval.3 = phi ptr [ %cur_eval.1.ph.lcssa, %sw.bb64 ], [ %cur_eval.1.ph.lcssa13908, %if.then730 ], [ %cur_eval.2, %push_yes_state ], [ %cur_eval.1.ph.lcssa13888, %if.end3772 ], [ %cur_eval.1.ph13920, %if.else3812 ], [ %cur_eval.1.ph.lcssa13863, %cond.end3825 ], [ %cur_eval.1.ph.lcssa13887, %if.end4507 ], [ %cur_eval.1.ph13917, %if.end5578 ], [ %cur_eval.1.ph.lcssa13881, %cleanup5735 ], [ %cur_eval.1.ph13924, %if.end5992 ], [ %cur_eval.1.ph.lcssa13870, %if.then6064 ], [ %cur_eval.1.ph.lcssa13870, %cleanup6091 ], [ %cur_eval.1.ph.lcssa13883, %cleanup5433.thread9345 ], [ %cur_eval.1.ph.lcssa13889, %if.then3462 ], [ %cur_eval.1.ph13919, %if.then3603 ]
  %mark_state.3 = phi ptr [ %mark_state.1.ph.lcssa, %sw.bb64 ], [ %mark_state.1.ph.lcssa13831, %if.then730 ], [ %mark_state.2, %push_yes_state ], [ %mark_state.1.ph.lcssa13811, %if.end3772 ], [ %mark_state.1.ph13843, %if.else3812 ], [ %mark_state.1.ph.lcssa13786, %cond.end3825 ], [ %mark_state.1.ph.lcssa13810, %if.end4507 ], [ %mark_state.1.ph13840, %if.end5578 ], [ %mark_state.1.ph.lcssa13804, %cleanup5735 ], [ %mark_state.1.ph13847, %if.end5992 ], [ %mark_state.1.ph.lcssa13793, %if.then6064 ], [ %mark_state.1.ph.lcssa13793, %cleanup6091 ], [ %mark_state.1.ph.lcssa13806, %cleanup5433.thread9345 ], [ %mark_state.1.ph.lcssa13812, %if.then3462 ], [ %mark_state.1.ph13842, %if.then3603 ]
  %yes_state.2 = phi ptr [ %yes_state.1.ph.lcssa, %sw.bb64 ], [ %yes_state.1.ph.lcssa13753, %if.then730 ], [ %st.1.ph13455, %push_yes_state ], [ %yes_state.1.ph.lcssa13733, %if.end3772 ], [ %yes_state.1.ph13765, %if.else3812 ], [ %yes_state.1.ph.lcssa13708, %cond.end3825 ], [ %yes_state.1.ph.lcssa13732, %if.end4507 ], [ %yes_state.1.ph13767, %if.end5578 ], [ %yes_state.1.ph.lcssa13726, %cleanup5735 ], [ %yes_state.1.ph13770, %if.end5992 ], [ %yes_state.1.ph.lcssa13715, %if.then6064 ], [ %yes_state.1.ph.lcssa13715, %cleanup6091 ], [ %yes_state.1.ph.lcssa13728, %cleanup5433.thread9345 ], [ %yes_state.1.ph.lcssa13734, %if.then3462 ], [ %yes_state.1.ph13762, %if.then3603 ]
  %nochange_depth.8 = phi i32 [ %nochange_depth.1.ph.lcssa, %sw.bb64 ], [ %nochange_depth.1.ph.lcssa13679, %if.then730 ], [ %nochange_depth.7, %push_yes_state ], [ %nochange_depth.1.ph.lcssa13659, %if.end3772 ], [ %nochange_depth.1.ph13686, %if.else3812 ], [ %nochange_depth.1.ph.lcssa13634, %cond.end3825 ], [ %nochange_depth.1.ph.lcssa13658, %if.end4507 ], [ %nochange_depth.1.ph13683, %if.end5578 ], [ %nochange_depth.1.ph.lcssa13652, %cleanup5735 ], [ %nochange_depth.1.ph13691, %if.end5992 ], [ %nochange_depth.1.ph.lcssa13641, %if.then6064 ], [ %nochange_depth.1.ph.lcssa13641, %cleanup6091 ], [ %nochange_depth.1.ph.lcssa13654, %cleanup5433.thread9345 ], [ %nochange_depth.1.ph.lcssa13660, %if.then3462 ], [ %nochange_depth.1.ph13685, %if.then3603 ]
  %pushinput.11 = phi ptr [ %locinput.1.lcssa12571, %sw.bb64 ], [ %uc534.3.lcssa, %if.then730 ], [ %pushinput.10, %push_yes_state ], [ %locinput.1.lcssa12638.lcssa, %if.end3772 ], [ %locinput.112699, %if.else3812 ], [ %locinput.1.lcssa12641, %cond.end3825 ], [ %locinput.10.lcssa.lcssa, %if.end4507 ], [ %locinput.22, %if.end5578 ], [ %locinput.23.lcssa, %cleanup5735 ], [ %locinput.112704, %if.end5992 ], [ %locinput.1.lcssa12667, %if.then6064 ], [ %locinput.1.lcssa12667, %cleanup6091 ], [ %locinput.20.lcssa, %cleanup5433.thread9345 ], [ %locinput.1.lcssa12633.lcssa, %if.then3462 ], [ %locinput.1.lcssa1263312717, %if.then3603 ]
  %locinput.29 = phi ptr [ %locinput.1.lcssa12571, %sw.bb64 ], [ %locinput.112688.lcssa, %if.then730 ], [ %locinput.28, %push_yes_state ], [ %locinput.1.lcssa12638.lcssa, %if.end3772 ], [ %locinput.112699, %if.else3812 ], [ %locinput.1.lcssa12641, %cond.end3825 ], [ %locinput.10.lcssa.lcssa, %if.end4507 ], [ %locinput.22, %if.end5578 ], [ %locinput.23.lcssa, %cleanup5735 ], [ %locinput.112704, %if.end5992 ], [ %locinput.1.lcssa12667, %if.then6064 ], [ %locinput.1.lcssa12667, %cleanup6091 ], [ %locinput.20.lcssa, %cleanup5433.thread9345 ], [ %locinput.1.lcssa12633.lcssa, %if.then3462 ], [ %locinput.1.lcssa1263312717, %if.then3603 ]
  %next.8 = phi ptr [ %next.1.ph.lcssa, %sw.bb64 ], [ %next.1.ph.lcssa13526, %if.then730 ], [ %next.7, %push_yes_state ], [ %next.1.ph.lcssa13506, %if.end3772 ], [ %next.3, %if.else3812 ], [ %next.1.ph.lcssa13481, %cond.end3825 ], [ %next.1.ph.lcssa13505, %if.end4507 ], [ %next.1.ph13532, %if.end5578 ], [ %next.1.ph.lcssa13499, %cleanup5735 ], [ %next.1.ph13538, %if.end5992 ], [ %next.1.ph.lcssa13488, %if.then6064 ], [ %next.1.ph.lcssa13488, %cleanup6091 ], [ %next.1.ph.lcssa13501, %cleanup5433.thread9345 ], [ %next.1.ph.lcssa13507, %if.then3462 ], [ %next.1.ph13534, %if.then3603 ]
  %scan.16 = phi ptr [ %next.1.ph.lcssa, %sw.bb64 ], [ %add.ptr722.lcssa, %if.then730 ], [ %scan.15, %push_yes_state ], [ %add.ptr3787, %if.end3772 ], [ %add.ptr3799, %if.else3812 ], [ %next.1.ph.lcssa13481, %cond.end3825 ], [ %913, %if.end4507 ], [ %1072, %if.end5578 ], [ %1100, %cleanup5735 ], [ %next.1.ph13538, %if.end5992 ], [ %next.1.ph.lcssa13488, %if.then6064 ], [ %next.1.ph.lcssa13488, %cleanup6091 ], [ %1041, %cleanup5433.thread9345 ], [ %add.ptr3451.le12226, %if.then3462 ], [ %add.ptr345110289, %if.then3603 ]
  %rexi.3 = phi ptr [ %rexi.1.ph.lcssa, %sw.bb64 ], [ %rexi.1.ph.lcssa13372, %if.then730 ], [ %rexi.2, %push_yes_state ], [ %rexi.1.ph.lcssa13352, %if.end3772 ], [ %rexi.1.ph13381, %if.else3812 ], [ %rexi.1.ph.lcssa13327, %cond.end3825 ], [ %rexi.1.ph.lcssa13351, %if.end4507 ], [ %rexi.1.ph13383, %if.end5578 ], [ %rexi.1.ph.lcssa13345, %cleanup5735 ], [ %rexi.1.ph13386, %if.end5992 ], [ %rexi.1.ph.lcssa13334, %if.then6064 ], [ %rexi.1.ph.lcssa13334, %cleanup6091 ], [ %rexi.1.ph.lcssa13347, %cleanup5433.thread9345 ], [ %rexi.1.ph.lcssa13353, %if.then3462 ], [ %rexi.1.ph13380, %if.then3603 ]
  %rex.3 = phi ptr [ %rex.1.ph.lcssa, %sw.bb64 ], [ %rex.1.ph.lcssa13296, %if.then730 ], [ %rex.2, %push_yes_state ], [ %rex.1.ph.lcssa13276, %if.end3772 ], [ %rex.1.ph13307, %if.else3812 ], [ %rex.1.ph.lcssa13251, %cond.end3825 ], [ %rex.1.ph.lcssa13275, %if.end4507 ], [ %rex.1.ph13304, %if.end5578 ], [ %rex.1.ph.lcssa13269, %cleanup5735 ], [ %rex.1.ph13311, %if.end5992 ], [ %rex.1.ph.lcssa13258, %if.then6064 ], [ %rex.1.ph.lcssa13258, %cleanup6091 ], [ %rex.1.ph.lcssa13271, %cleanup5433.thread9345 ], [ %rex.1.ph.lcssa13277, %if.then3462 ], [ %rex.1.ph13306, %if.then3603 ]
  %rex_sv.3 = phi ptr [ %rex_sv.1.ph.lcssa, %sw.bb64 ], [ %rex_sv.1.ph.lcssa13219, %if.then730 ], [ %rex_sv.2, %push_yes_state ], [ %rex_sv.1.ph.lcssa13199, %if.end3772 ], [ %rex_sv.1.ph13231, %if.else3812 ], [ %rex_sv.1.ph.lcssa13174, %cond.end3825 ], [ %rex_sv.1.ph.lcssa13198, %if.end4507 ], [ %rex_sv.1.ph13228, %if.end5578 ], [ %rex_sv.1.ph.lcssa13192, %cleanup5735 ], [ %rex_sv.1.ph13235, %if.end5992 ], [ %rex_sv.1.ph.lcssa13181, %if.then6064 ], [ %rex_sv.1.ph.lcssa13181, %cleanup6091 ], [ %rex_sv.1.ph.lcssa13194, %cleanup5433.thread9345 ], [ %rex_sv.1.ph.lcssa13200, %if.then3462 ], [ %rex_sv.1.ph13230, %if.then3603 ]
  %inc6363 = add nsw i32 %depth.1.ph13607, 1
  %locinput6364 = getelementptr inbounds nuw i8, ptr %st.1.ph13454, i64 8
  store ptr %locinput.29, ptr %locinput6364, align 8
  %add.ptr6365 = getelementptr inbounds nuw i8, ptr %st.1.ph13454, i64 120
  %1208 = load ptr, ptr @PL_regmatch_slab, align 8
  %arrayidx6367 = getelementptr inbounds nuw i8, ptr %1208, i64 3840
  %cmp6368 = icmp ugt ptr %add.ptr6365, %arrayidx6367
  br i1 %cmp6368, label %if.then6370, label %if.end6372

if.then6370:                                      ; preds = %push_state
  %next.i = getelementptr inbounds nuw i8, ptr %1208, i64 3968
  %1209 = load ptr, ptr %next.i, align 8
  %tobool.not.i = icmp eq ptr %1209, null
  br i1 %tobool.not.i, label %if.then.i9262, label %S_push_slab.exit

if.then.i9262:                                    ; preds = %if.then6370
  %call.i = call ptr @Perl_safesysmalloc(i64 noundef 3976) #10
  %1210 = load ptr, ptr @PL_regmatch_slab, align 8
  %prev.i = getelementptr inbounds nuw i8, ptr %call.i, i64 3960
  store ptr %1210, ptr %prev.i, align 8
  %next1.i = getelementptr inbounds nuw i8, ptr %call.i, i64 3968
  store ptr null, ptr %next1.i, align 8
  %next2.i = getelementptr inbounds nuw i8, ptr %1210, i64 3968
  store ptr %call.i, ptr %next2.i, align 8
  br label %S_push_slab.exit

S_push_slab.exit:                                 ; preds = %if.then.i9262, %if.then6370
  %s.0.i = phi ptr [ %1209, %if.then6370 ], [ %call.i, %if.then.i9262 ]
  store ptr %s.0.i, ptr @PL_regmatch_slab, align 8
  br label %if.end6372

if.end6372:                                       ; preds = %S_push_slab.exit, %push_state
  %newst.0 = phi ptr [ %s.0.i, %S_push_slab.exit ], [ %add.ptr6365, %push_state ]
  store ptr %newst.0, ptr @PL_regmatch_state, align 8
  br label %while.cond.outer

while.end6374:                                    ; preds = %while.cond
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.17) #10
  br label %no_silent

yes.loopexit:                                     ; preds = %cond.end42, %cond.end42
  %minmod.1.lcssa12903 = phi i8 [ %minmod.1, %cond.end42 ], [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12643 = phi ptr [ %locinput.1, %cond.end42 ], [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12510 = phi ptr [ %scan.1, %cond.end42 ], [ %scan.1, %cond.end42 ]
  br label %yes

yes:                                              ; preds = %if.then6437, %yes.loopexit, %sw.bb6007, %if.end5839, %sw.bb3619, %sw.bb3420, %S_SvREFCNT_dec.exit9041
  %match.4 = phi i8 [ %match.5, %if.then6437 ], [ %match.1.ph, %if.end5839 ], [ %match.1.ph, %sw.bb3420 ], [ %match.1.ph, %sw.bb3619 ], [ %match.1.ph, %sw.bb6007 ], [ %match.1.ph, %S_SvREFCNT_dec.exit9041 ], [ %match.1.ph, %yes.loopexit ]
  %is_utf8_pat.4 = phi i8 [ %is_utf8_pat.5, %if.then6437 ], [ %is_utf8_pat.1.ph, %if.end5839 ], [ %is_utf8_pat.1.ph, %sw.bb3420 ], [ %is_utf8_pat.1.ph, %sw.bb3619 ], [ %is_utf8_pat.1.ph, %sw.bb6007 ], [ %storedv3131, %S_SvREFCNT_dec.exit9041 ], [ %is_utf8_pat.1.ph, %yes.loopexit ]
  %logical.10 = phi i32 [ %logical.11, %if.then6437 ], [ %logical.1.ph, %if.end5839 ], [ %logical.1.ph, %sw.bb3420 ], [ %logical.1.ph, %sw.bb3619 ], [ %logical.1.ph, %sw.bb6007 ], [ %logical.1.ph, %S_SvREFCNT_dec.exit9041 ], [ %logical.1.ph, %yes.loopexit ]
  %minmod.10 = phi i8 [ %minmod.11, %if.then6437 ], [ %minmod.112949, %if.end5839 ], [ %minmod.1.lcssa12891, %sw.bb3420 ], [ %minmod.1.lcssa12894, %sw.bb3619 ], [ %minmod.1.lcssa12925, %sw.bb6007 ], [ %minmod.1.lcssa12879, %S_SvREFCNT_dec.exit9041 ], [ %minmod.1.lcssa12903, %yes.loopexit ]
  %sv_yes_mark.5 = phi ptr [ %sv_yes_mark.6, %if.then6437 ], [ %sv_yes_mark.1.ph, %if.end5839 ], [ %sv_yes_mark.1.ph, %sw.bb3420 ], [ %sv_yes_mark.1.ph, %sw.bb3619 ], [ %sv_yes_mark.1.ph, %sw.bb6007 ], [ %sv_yes_mark.1.ph, %S_SvREFCNT_dec.exit9041 ], [ %sv_yes_mark.1.ph, %yes.loopexit ]
  %sv_commit.7 = phi ptr [ %sv_commit.8, %if.then6437 ], [ %sv_commit.1.ph, %if.end5839 ], [ %sv_commit.1.ph, %sw.bb3420 ], [ %sv_commit.1.ph, %sw.bb3619 ], [ %sv_commit.1.ph, %sw.bb6007 ], [ %sv_commit.1.ph, %S_SvREFCNT_dec.exit9041 ], [ %sv_commit.1.ph, %yes.loopexit ]
  %popmark.4 = phi ptr [ %popmark.5, %if.then6437 ], [ %popmark.1.ph, %if.end5839 ], [ %popmark.1.ph, %sw.bb3420 ], [ %popmark.1.ph, %sw.bb3619 ], [ %popmark.1.ph, %sw.bb6007 ], [ %popmark.1.ph, %S_SvREFCNT_dec.exit9041 ], [ %popmark.1.ph, %yes.loopexit ]
  %do_cutgroup.5 = phi i8 [ %do_cutgroup.6, %if.then6437 ], [ %do_cutgroup.1.ph, %if.end5839 ], [ %do_cutgroup.1.ph, %sw.bb3420 ], [ %do_cutgroup.1.ph, %sw.bb3619 ], [ %do_cutgroup.1.ph, %sw.bb6007 ], [ %do_cutgroup.1.ph, %S_SvREFCNT_dec.exit9041 ], [ %do_cutgroup.1.ph, %yes.loopexit ]
  %no_final.5 = phi i8 [ %no_final.6, %if.then6437 ], [ %no_final.1.ph, %if.end5839 ], [ %no_final.1.ph, %sw.bb3420 ], [ %no_final.1.ph, %sw.bb3619 ], [ %no_final.1.ph, %sw.bb6007 ], [ %no_final.1.ph, %S_SvREFCNT_dec.exit9041 ], [ %no_final.1.ph, %yes.loopexit ]
  %cur_curlyx.6 = phi ptr [ %cur_curlyx.7, %if.then6437 ], [ %cur_curlyx.1.ph, %if.end5839 ], [ %725, %sw.bb3420 ], [ %767, %sw.bb3619 ], [ %cur_curlyx.1.ph, %sw.bb6007 ], [ %662, %S_SvREFCNT_dec.exit9041 ], [ %cur_curlyx.1.ph, %yes.loopexit ]
  %cur_eval.4 = phi ptr [ %cur_eval.5, %if.then6437 ], [ null, %if.end5839 ], [ %cur_eval.1.ph, %sw.bb3420 ], [ %cur_eval.1.ph, %sw.bb3619 ], [ %cur_eval.1.ph, %sw.bb6007 ], [ %661, %S_SvREFCNT_dec.exit9041 ], [ %cur_eval.1.ph, %yes.loopexit ]
  %mark_state.4 = phi ptr [ %mark_state.5, %if.then6437 ], [ %mark_state.1.ph, %if.end5839 ], [ %mark_state.1.ph, %sw.bb3420 ], [ %mark_state.1.ph, %sw.bb3619 ], [ %1164, %sw.bb6007 ], [ %mark_state.1.ph, %S_SvREFCNT_dec.exit9041 ], [ %mark_state.1.ph, %yes.loopexit ]
  %yes_state.3 = phi ptr [ %yes_state.4, %if.then6437 ], [ %yes_state.1.ph, %if.end5839 ], [ %yes_state.1.ph, %sw.bb3420 ], [ %yes_state.1.ph, %sw.bb3619 ], [ %yes_state.1.ph, %sw.bb6007 ], [ %yes_state.1.ph, %S_SvREFCNT_dec.exit9041 ], [ %yes_state.1.ph, %yes.loopexit ]
  %nochange_depth.9 = phi i32 [ %nochange_depth.10, %if.then6437 ], [ %nochange_depth.1.ph, %if.end5839 ], [ %nochange_depth.1.ph, %sw.bb3420 ], [ %nochange_depth.1.ph, %sw.bb3619 ], [ %nochange_depth.1.ph, %sw.bb6007 ], [ %spec.select8712, %S_SvREFCNT_dec.exit9041 ], [ %nochange_depth.1.ph, %yes.loopexit ]
  %depth.2 = phi i32 [ %depth.4, %if.then6437 ], [ %depth.1.ph, %if.end5839 ], [ %depth.1.ph, %sw.bb3420 ], [ %depth.1.ph, %sw.bb3619 ], [ %depth.1.ph, %sw.bb6007 ], [ %depth.1.ph, %S_SvREFCNT_dec.exit9041 ], [ %depth.1.ph, %yes.loopexit ]
  %locinput.30 = phi ptr [ %locinput.32, %if.then6437 ], [ %locinput.112685, %if.end5839 ], [ %locinput.1.lcssa12631, %sw.bb3420 ], [ %locinput.1.lcssa12634, %sw.bb3619 ], [ %locinput.1.lcssa12665, %sw.bb6007 ], [ %locinput.1.lcssa12619, %S_SvREFCNT_dec.exit9041 ], [ %locinput.1.lcssa12643, %yes.loopexit ]
  %next.9 = phi ptr [ %next.10, %if.then6437 ], [ %next.1.ph, %if.end5839 ], [ %next.1.ph, %sw.bb3420 ], [ %next.1.ph, %sw.bb3619 ], [ %next.1.ph, %sw.bb6007 ], [ %next.1.ph, %S_SvREFCNT_dec.exit9041 ], [ %next.1.ph, %yes.loopexit ]
  %scan.17 = phi ptr [ %scan.18, %if.then6437 ], [ %scan.112560, %if.end5839 ], [ %scan.1.lcssa12498, %sw.bb3420 ], [ %scan.1.lcssa12501, %sw.bb3619 ], [ %scan.1.lcssa12532, %sw.bb6007 ], [ %scan.1.lcssa12486, %S_SvREFCNT_dec.exit9041 ], [ %scan.1.lcssa12510, %yes.loopexit ]
  %st.2 = phi ptr [ %st.4, %if.then6437 ], [ %st.1.ph, %if.end5839 ], [ %st.1.ph, %sw.bb3420 ], [ %st.1.ph, %sw.bb3619 ], [ %st.1.ph, %sw.bb6007 ], [ %st.1.ph, %S_SvREFCNT_dec.exit9041 ], [ %st.1.ph, %yes.loopexit ]
  %rexi.4 = phi ptr [ %rexi.5, %if.then6437 ], [ %rexi.1.ph, %if.end5839 ], [ %rexi.1.ph, %sw.bb3420 ], [ %rexi.1.ph, %sw.bb3619 ], [ %rexi.1.ph, %sw.bb6007 ], [ %650, %S_SvREFCNT_dec.exit9041 ], [ %rexi.1.ph, %yes.loopexit ]
  %rex.4 = phi ptr [ %rex.5, %if.then6437 ], [ %rex.1.ph, %if.end5839 ], [ %rex.1.ph, %sw.bb3420 ], [ %rex.1.ph, %sw.bb3619 ], [ %rex.1.ph, %sw.bb6007 ], [ %.val8741, %S_SvREFCNT_dec.exit9041 ], [ %rex.1.ph, %yes.loopexit ]
  %rex_sv.4 = phi ptr [ %rex_sv.5, %if.then6437 ], [ %rex_sv.1.ph, %if.end5839 ], [ %rex_sv.1.ph, %sw.bb3420 ], [ %rex_sv.1.ph, %sw.bb3619 ], [ %rex_sv.1.ph, %sw.bb6007 ], [ %640, %S_SvREFCNT_dec.exit9041 ], [ %rex_sv.1.ph, %yes.loopexit ]
  %tobool6375.not = icmp eq ptr %yes_state.3, null
  br i1 %tobool6375.not, label %if.end6421, label %while.cond6377.preheader

while.cond6377.preheader:                         ; preds = %yes
  %PL_regmatch_slab.promoted = load ptr, ptr @PL_regmatch_slab, align 8
  %cmp638012013 = icmp ult ptr %yes_state.3, %PL_regmatch_slab.promoted
  %arrayidx638412014 = getelementptr inbounds nuw i8, ptr %PL_regmatch_slab.promoted, i64 3840
  %cmp638512015 = icmp ugt ptr %yes_state.3, %arrayidx638412014
  %1211 = select i1 %cmp638012013, i1 true, i1 %cmp638512015
  br i1 %1211, label %while.body6389.preheader, label %while.end6403

while.body6389.preheader:                         ; preds = %while.cond6377.preheader
  br label %while.body6389

while.body6389:                                   ; preds = %while.body6389, %while.body6389.preheader
  %st.312017 = phi ptr [ %arrayidx6402, %while.body6389 ], [ %st.2, %while.body6389.preheader ]
  %depth.312016 = phi i32 [ %conv6399, %while.body6389 ], [ %depth.2, %while.body6389.preheader ]
  %1212 = phi ptr [ %1215, %while.body6389 ], [ %PL_regmatch_slab.promoted, %while.body6389.preheader ]
  %sub.ptr.lhs.cast6392 = ptrtoint ptr %st.312017 to i64
  %sub.ptr.rhs.cast6393 = ptrtoint ptr %1212 to i64
  %sub.ptr.sub6394 = sub i64 %sub.ptr.lhs.cast6392, %sub.ptr.rhs.cast6393
  %sub.ptr.div6395 = sdiv exact i64 %sub.ptr.sub6394, 120
  %1213 = trunc i64 %sub.ptr.div6395 to i32
  %1214 = xor i32 %1213, -1
  %conv6399 = add i32 %depth.312016, %1214
  %prev6400 = getelementptr inbounds nuw i8, ptr %1212, i64 3960
  %1215 = load ptr, ptr %prev6400, align 8
  %arrayidx6402 = getelementptr inbounds nuw i8, ptr %1215, i64 3840
  %cmp6380 = icmp ult ptr %yes_state.3, %1215
  %arrayidx6384 = getelementptr inbounds nuw i8, ptr %1215, i64 3840
  %cmp6385 = icmp ugt ptr %yes_state.3, %arrayidx6384
  %1216 = select i1 %cmp6380, i1 true, i1 %cmp6385
  br i1 %1216, label %while.body6389, label %while.cond6377.while.end6403_crit_edge, !llvm.loop !36

while.cond6377.while.end6403_crit_edge:           ; preds = %while.body6389
  %conv6399.lcssa = phi i32 [ %conv6399, %while.body6389 ]
  %.lcssa = phi ptr [ %1215, %while.body6389 ]
  %arrayidx6402.lcssa = phi ptr [ %arrayidx6402, %while.body6389 ]
  store ptr %.lcssa, ptr @PL_regmatch_slab, align 8
  br label %while.end6403

while.end6403:                                    ; preds = %while.cond6377.while.end6403_crit_edge, %while.cond6377.preheader
  %depth.3.lcssa = phi i32 [ %conv6399.lcssa, %while.cond6377.while.end6403_crit_edge ], [ %depth.2, %while.cond6377.preheader ]
  %st.3.lcssa = phi ptr [ %arrayidx6402.lcssa, %while.cond6377.while.end6403_crit_edge ], [ %st.2, %while.cond6377.preheader ]
  %sub.ptr.lhs.cast6404 = ptrtoint ptr %st.3.lcssa to i64
  %sub.ptr.rhs.cast6405 = ptrtoint ptr %yes_state.3 to i64
  %sub.ptr.sub6406 = sub i64 %sub.ptr.lhs.cast6404, %sub.ptr.rhs.cast6405
  %sub.ptr.div6407.neg = sdiv exact i64 %sub.ptr.sub6406, -120
  %1217 = trunc i64 %sub.ptr.div6407.neg to i32
  %conv6410 = add i32 %depth.3.lcssa, %1217
  %u6411 = getelementptr inbounds nuw i8, ptr %yes_state.3, i64 16
  %1218 = load ptr, ptr %u6411, align 8
  store ptr %yes_state.3, ptr @PL_regmatch_state, align 8
  %loadedv6413 = trunc i8 %no_final.5 to i1
  br i1 %loadedv6413, label %if.then6414, label %if.end6416

if.then6414:                                      ; preds = %while.end6403
  %locinput6415 = getelementptr inbounds nuw i8, ptr %yes_state.3, i64 8
  %1219 = load ptr, ptr %locinput6415, align 8
  br label %if.end6416

if.end6416:                                       ; preds = %if.then6414, %while.end6403
  %locinput.31 = phi ptr [ %1219, %if.then6414 ], [ %locinput.30, %while.end6403 ]
  %1220 = load i32, ptr %yes_state.3, align 8
  %loadedv6413.mask = and i8 %no_final.5, 1
  %conv6419 = zext nneg i8 %loadedv6413.mask to i32
  %add6420 = add nsw i32 %1220, %conv6419
  br label %reenter_switch.preheader

if.end6421:                                       ; preds = %yes
  %last_pushed_cv.0.ph.lcssa14839 = phi ptr [ %last_pushed_cv.0.ph, %yes ]
  %multicall_oldcatch.0.ph.lcssa14766 = phi i8 [ %multicall_oldcatch.0.ph, %yes ]
  %multicall_cv.0.ph.lcssa14729 = phi ptr [ %multicall_cv.0.ph, %yes ]
  %sv_yes_mark.5.lcssa = phi ptr [ %sv_yes_mark.5, %yes ]
  %sv_commit.7.lcssa = phi ptr [ %sv_commit.7, %yes ]
  %locinput.30.lcssa = phi ptr [ %locinput.30, %yes ]
  %rex.4.lcssa = phi ptr [ %rex.4, %yes ]
  %info_aux_eval6422 = getelementptr inbounds nuw i8, ptr %reginfo, i64 64
  %1221 = load ptr, ptr %info_aux_eval6422, align 8
  %tobool6423.not = icmp eq ptr %1221, null
  br i1 %tobool6423.not, label %final_exit, label %if.then6424

if.then6424:                                      ; preds = %if.end6421
  %1222 = load ptr, ptr @PL_replgv, align 8
  %sv_u6425 = getelementptr inbounds nuw i8, ptr %1222, i64 16
  %1223 = load ptr, ptr %sv_u6425, align 8
  %1224 = load ptr, ptr %1223, align 8
  %cmp6428.not = icmp eq ptr %10, %1224
  br i1 %cmp6428.not, label %final_exit, label %if.then6430

if.then6430:                                      ; preds = %if.then6424
  call void @Perl_sv_setsv_flags(ptr noundef %10, ptr noundef %1224, i32 noundef 1538) #10
  br label %final_exit

no_silent.critedge9407:                           ; preds = %cond.false6272, %land.rhs6253, %cond.true6248, %land.rhs6194, %land.lhs.true6189, %cond.true6178, %cond.true6173
  br label %no_silent

no_silent.critedge:                               ; preds = %while.end
  call void @llvm.lifetime.end.p0(ptr nonnull %foldbuf) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %foldlen) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %len) #10
  br label %no_silent

no_silent.loopexit:                               ; preds = %if.end4561, %if.then4346, %land.lhs.true4088, %lor.lhs.false4073, %do.end4068, %cond.end42
  %minmod.11.ph = phi i8 [ %minmod.3, %if.then4346 ], [ %minmod.1, %cond.end42 ], [ %minmod.1, %if.end4561 ], [ %minmod.1, %land.lhs.true4088 ], [ %minmod.1, %lor.lhs.false4073 ], [ %minmod.1, %do.end4068 ]
  %locinput.32.ph = phi ptr [ %locinput.10, %if.then4346 ], [ %locinput.1, %cond.end42 ], [ %locinput.1, %if.end4561 ], [ %locinput.1, %land.lhs.true4088 ], [ %locinput.1, %lor.lhs.false4073 ], [ %locinput.1, %do.end4068 ]
  %scan.18.ph = phi ptr [ %scan.5, %if.then4346 ], [ %scan.1, %cond.end42 ], [ %scan.1, %if.end4561 ], [ %scan.1, %land.lhs.true4088 ], [ %scan.1, %lor.lhs.false4073 ], [ %scan.1, %do.end4068 ]
  br label %no_silent

no_silent.loopexit12316:                          ; preds = %cond.end42
  %minmod.1.lcssa12922 = phi i8 [ %minmod.1, %cond.end42 ]
  %locinput.1.lcssa12662 = phi ptr [ %locinput.1, %cond.end42 ]
  %scan.1.lcssa12529 = phi ptr [ %scan.1, %cond.end42 ]
  br label %no_silent

no_silent:                                        ; preds = %no_silent.loopexit12316, %no_silent.loopexit, %no_silent.critedge, %no_silent.critedge9407, %while.end6374, %if.then6346, %cond.end6307, %if.end6140, %cond.end6059, %if.else5944, %if.else5898, %if.end5839, %if.end5772, %cleanup.cont5478, %if.end5468, %cleanup5433, %cleanup5144, %cleanup5072, %if.else4929, %land.lhs.true4552, %if.then4497, %lor.lhs.false3874, %for.end3866, %sw.bb3829, %if.then3759, %if.end3752, %if.then3670, %do.end3659, %if.then3635, %sw.bb3622, %if.then3538, %do.end3434, %do.end3199, %cond.false2378, %cond.true2375, %if.end2357, %lor.lhs.false2349, %land.lhs.true2345, %if.then2322, %do_nref_ref_common, %S_reg_check_named_buff_matched.exit, %sw.bb2201, %sw.default, %land.end2180, %cond.end2156, %cond.end2091, %cond.end2008, %if.end1916, %land.rhs1875, %land.end1849, %utf8_posix, %land.end1817, %posixa, %sw.bb1785, %if.then1756, %if.then1740, %sw.bb1730, %cond.false1710, %cond.true1706, %if.then1691, %sw.bb1685, %if.end1678, %cond.end1260, %if.end1221, %land.lhs.true935, %if.end924, %land.lhs.true916, %if.then896, %sw.bb867, %cleanup863, %if.end559, %if.then238, %land.lhs.true128, %sw.bb117, %sw.bb112, %sw.bb107, %sw.bb102, %sw.bb86, %sw.bb78, %sw.bb71, %sw.bb59, %land.lhs.true, %lor.lhs.false, %sw.bb
  %match.5 = phi i8 [ %match.1.ph, %if.then6346 ], [ %match.1.ph, %sw.bb ], [ %match.1.ph, %lor.lhs.false ], [ %match.1.ph, %land.lhs.true ], [ %match.1.ph, %sw.bb59 ], [ %match.1.ph, %sw.bb71 ], [ %match.1.ph, %sw.bb78 ], [ %match.1.ph, %sw.bb86 ], [ %match.1.ph, %sw.bb102 ], [ %match.1.ph, %sw.bb107 ], [ %match.1.ph, %sw.bb112 ], [ %match.1.ph, %sw.bb117 ], [ %match.1.ph, %land.lhs.true128 ], [ %match.1.ph, %if.end559 ], [ %match.1.ph, %cleanup863 ], [ %match.1.ph, %if.then896 ], [ %match.1.ph, %if.end924 ], [ %match.1.ph, %land.lhs.true935 ], [ %match.1.ph, %land.lhs.true916 ], [ %match.1.ph, %sw.bb867 ], [ %match.2, %if.end1678 ], [ %match.1.ph, %if.end1221 ], [ %match.1.ph, %cond.end1260 ], [ %match.1.ph, %sw.bb1685 ], [ %match.1.ph, %if.then1691 ], [ %match.1.ph, %cond.true1706 ], [ %match.1.ph, %cond.false1710 ], [ %match.1.ph, %sw.bb1730 ], [ %match.1.ph, %if.then1756 ], [ %match.1.ph, %if.end1916 ], [ %match.1.ph, %sw.default ], [ %match.1.ph, %cond.end2008 ], [ %match.1.ph, %cond.end2091 ], [ %match.1.ph, %cond.end2156 ], [ %match.1.ph, %land.end2180 ], [ %match.1.ph, %if.then1740 ], [ %match.1.ph, %utf8_posix ], [ %match.1.ph, %land.rhs1875 ], [ %match.1.ph, %land.end1849 ], [ %match.1.ph, %posixa ], [ %match.1.ph, %land.end1817 ], [ %match.1.ph, %sw.bb1785 ], [ %match.1.ph, %sw.bb2201 ], [ %match.1.ph, %do_nref_ref_common ], [ %match.1.ph, %if.then2322 ], [ %match.1.ph, %if.end2357 ], [ %match.1.ph, %cond.true2375 ], [ %match.1.ph, %cond.false2378 ], [ %match.1.ph, %land.lhs.true2345 ], [ %match.1.ph, %lor.lhs.false2349 ], [ %match.1.ph, %S_reg_check_named_buff_matched.exit ], [ %match.1.ph, %if.end5839 ], [ %match.1.ph, %do.end3434 ], [ %match.1.ph, %if.then3635 ], [ %match.1.ph, %sw.bb3622 ], [ %match.1.ph, %if.then3670 ], [ %match.1.ph, %do.end3659 ], [ %match.1.ph, %if.then3759 ], [ %match.1.ph, %if.end3752 ], [ %match.1.ph, %for.end3866 ], [ %match.1.ph, %cleanup5433 ], [ %match.1.ph, %cleanup5072 ], [ %match.1.ph, %if.end5772 ], [ %match.1.ph, %cleanup5144 ], [ %match.1.ph, %if.end5468 ], [ %match.1.ph, %if.else5944 ], [ %match.1.ph, %cond.end6059 ], [ %match.1.ph, %if.end6140 ], [ %match.1.ph, %cond.end6307 ], [ %match.0, %while.end6374 ], [ %match.1.ph, %do.end3199 ], [ %match.1.ph, %sw.bb3829 ], [ %match.1.ph, %lor.lhs.false3874 ], [ %match.1.ph, %if.then3538 ], [ %match.1.ph, %if.then4497 ], [ %match.1.ph, %land.lhs.true4552 ], [ %match.1.ph, %if.else4929 ], [ %match.1.ph, %if.else5898 ], [ %match.1.ph, %no_silent.critedge9407 ], [ %match.1.ph, %if.then238 ], [ %match.1.ph, %no_silent.critedge ], [ %match.1.ph, %no_silent.loopexit ], [ %match.1.ph, %cleanup.cont5478 ], [ %match.1.ph, %no_silent.loopexit12316 ]
  %is_utf8_pat.5 = phi i8 [ %is_utf8_pat.1.ph, %if.then6346 ], [ %is_utf8_pat.1.ph, %sw.bb ], [ %is_utf8_pat.1.ph, %lor.lhs.false ], [ %is_utf8_pat.1.ph, %land.lhs.true ], [ %is_utf8_pat.1.ph, %sw.bb59 ], [ %is_utf8_pat.1.ph, %sw.bb71 ], [ %is_utf8_pat.1.ph, %sw.bb78 ], [ %is_utf8_pat.1.ph, %sw.bb86 ], [ %is_utf8_pat.1.ph, %sw.bb102 ], [ %is_utf8_pat.1.ph, %sw.bb107 ], [ %is_utf8_pat.1.ph, %sw.bb112 ], [ %is_utf8_pat.1.ph, %sw.bb117 ], [ %is_utf8_pat.1.ph, %land.lhs.true128 ], [ %is_utf8_pat.1.ph, %if.end559 ], [ %is_utf8_pat.1.ph, %cleanup863 ], [ %is_utf8_pat.1.ph, %if.then896 ], [ %is_utf8_pat.1.ph, %if.end924 ], [ %is_utf8_pat.1.ph, %land.lhs.true935 ], [ %is_utf8_pat.1.ph, %land.lhs.true916 ], [ %is_utf8_pat.1.ph, %sw.bb867 ], [ %is_utf8_pat.1.ph, %if.end1678 ], [ %is_utf8_pat.1.ph, %if.end1221 ], [ %is_utf8_pat.1.ph, %cond.end1260 ], [ %is_utf8_pat.1.ph, %sw.bb1685 ], [ %is_utf8_pat.1.ph, %if.then1691 ], [ %is_utf8_pat.1.ph, %cond.true1706 ], [ %is_utf8_pat.1.ph, %cond.false1710 ], [ %is_utf8_pat.1.ph, %sw.bb1730 ], [ %is_utf8_pat.1.ph, %if.then1756 ], [ %is_utf8_pat.1.ph, %if.end1916 ], [ %is_utf8_pat.1.ph, %sw.default ], [ %is_utf8_pat.1.ph, %cond.end2008 ], [ %is_utf8_pat.1.ph, %cond.end2091 ], [ %is_utf8_pat.1.ph, %cond.end2156 ], [ %is_utf8_pat.1.ph, %land.end2180 ], [ %is_utf8_pat.1.ph, %if.then1740 ], [ %is_utf8_pat.1.ph, %utf8_posix ], [ %is_utf8_pat.1.ph, %land.rhs1875 ], [ %is_utf8_pat.1.ph, %land.end1849 ], [ %is_utf8_pat.1.ph, %posixa ], [ %is_utf8_pat.1.ph, %land.end1817 ], [ %is_utf8_pat.1.ph, %sw.bb1785 ], [ %is_utf8_pat.1.ph, %sw.bb2201 ], [ %is_utf8_pat.1.ph, %do_nref_ref_common ], [ %is_utf8_pat.1.ph, %if.then2322 ], [ %is_utf8_pat.1.ph, %if.end2357 ], [ %is_utf8_pat.1.ph, %cond.true2375 ], [ %is_utf8_pat.1.ph, %cond.false2378 ], [ %is_utf8_pat.1.ph, %land.lhs.true2345 ], [ %is_utf8_pat.1.ph, %lor.lhs.false2349 ], [ %is_utf8_pat.1.ph, %S_reg_check_named_buff_matched.exit ], [ %is_utf8_pat.1.ph, %if.end5839 ], [ %is_utf8_pat.1.ph, %do.end3434 ], [ %is_utf8_pat.1.ph, %if.then3635 ], [ %is_utf8_pat.1.ph, %sw.bb3622 ], [ %is_utf8_pat.1.ph, %if.then3670 ], [ %is_utf8_pat.1.ph, %do.end3659 ], [ %is_utf8_pat.1.ph, %if.then3759 ], [ %is_utf8_pat.1.ph, %if.end3752 ], [ %is_utf8_pat.1.ph, %for.end3866 ], [ %is_utf8_pat.1.ph, %cleanup5433 ], [ %is_utf8_pat.1.ph, %cleanup5072 ], [ %is_utf8_pat.1.ph, %if.end5772 ], [ %is_utf8_pat.1.ph, %cleanup5144 ], [ %is_utf8_pat.1.ph, %if.end5468 ], [ %is_utf8_pat.1.ph, %if.else5944 ], [ %is_utf8_pat.1.ph, %cond.end6059 ], [ %is_utf8_pat.1.ph, %if.end6140 ], [ %is_utf8_pat.1.ph, %cond.end6307 ], [ %is_utf8_pat.0, %while.end6374 ], [ %storedv3178, %do.end3199 ], [ %is_utf8_pat.1.ph, %sw.bb3829 ], [ %is_utf8_pat.1.ph, %lor.lhs.false3874 ], [ %is_utf8_pat.1.ph, %if.then3538 ], [ %is_utf8_pat.1.ph, %if.then4497 ], [ %is_utf8_pat.1.ph, %land.lhs.true4552 ], [ %is_utf8_pat.1.ph, %if.else4929 ], [ %is_utf8_pat.1.ph, %if.else5898 ], [ %is_utf8_pat.1.ph, %no_silent.critedge9407 ], [ %is_utf8_pat.1.ph, %if.then238 ], [ %is_utf8_pat.1.ph, %no_silent.critedge ], [ %is_utf8_pat.1.ph, %no_silent.loopexit ], [ %is_utf8_pat.1.ph, %cleanup.cont5478 ], [ %is_utf8_pat.1.ph, %no_silent.loopexit12316 ]
  %logical.11 = phi i32 [ %logical.1.ph, %if.then6346 ], [ %logical.1.ph, %sw.bb ], [ %logical.1.ph, %lor.lhs.false ], [ %logical.1.ph, %land.lhs.true ], [ %logical.1.ph, %sw.bb59 ], [ %logical.1.ph, %sw.bb71 ], [ %logical.1.ph, %sw.bb78 ], [ %logical.1.ph, %sw.bb86 ], [ %logical.1.ph, %sw.bb102 ], [ %logical.1.ph, %sw.bb107 ], [ %logical.1.ph, %sw.bb112 ], [ %logical.1.ph, %sw.bb117 ], [ %logical.1.ph, %land.lhs.true128 ], [ %logical.1.ph, %if.end559 ], [ %logical.1.ph, %cleanup863 ], [ %logical.1.ph, %if.then896 ], [ %logical.1.ph, %if.end924 ], [ %logical.1.ph, %land.lhs.true935 ], [ %logical.1.ph, %land.lhs.true916 ], [ %logical.1.ph, %sw.bb867 ], [ %logical.1.ph, %if.end1678 ], [ %logical.1.ph, %if.end1221 ], [ %logical.1.ph, %cond.end1260 ], [ %logical.1.ph, %sw.bb1685 ], [ %logical.1.ph, %if.then1691 ], [ %logical.1.ph, %cond.true1706 ], [ %logical.1.ph, %cond.false1710 ], [ %logical.1.ph, %sw.bb1730 ], [ %logical.1.ph, %if.then1756 ], [ %logical.1.ph, %if.end1916 ], [ %logical.1.ph, %sw.default ], [ %logical.1.ph, %cond.end2008 ], [ %logical.1.ph, %cond.end2091 ], [ %logical.1.ph, %cond.end2156 ], [ %logical.1.ph, %land.end2180 ], [ %logical.1.ph, %if.then1740 ], [ %logical.1.ph, %utf8_posix ], [ %logical.1.ph, %land.rhs1875 ], [ %logical.1.ph, %land.end1849 ], [ %logical.1.ph, %posixa ], [ %logical.1.ph, %land.end1817 ], [ %logical.1.ph, %sw.bb1785 ], [ %logical.1.ph, %sw.bb2201 ], [ %logical.1.ph, %do_nref_ref_common ], [ %logical.1.ph, %if.then2322 ], [ %logical.1.ph, %if.end2357 ], [ %logical.1.ph, %cond.true2375 ], [ %logical.1.ph, %cond.false2378 ], [ %logical.1.ph, %land.lhs.true2345 ], [ %logical.1.ph, %lor.lhs.false2349 ], [ %logical.1.ph, %S_reg_check_named_buff_matched.exit ], [ %logical.1.ph, %if.end5839 ], [ %logical.1.ph, %do.end3434 ], [ %logical.1.ph, %if.then3635 ], [ %logical.1.ph, %sw.bb3622 ], [ %logical.1.ph, %if.then3670 ], [ %logical.1.ph, %do.end3659 ], [ %logical.1.ph, %if.then3759 ], [ %logical.1.ph, %if.end3752 ], [ %logical.1.ph, %for.end3866 ], [ %logical.1.ph, %cleanup5433 ], [ %logical.1.ph, %cleanup5072 ], [ %logical.1.ph, %if.end5772 ], [ %logical.1.ph, %cleanup5144 ], [ %logical.1.ph, %if.end5468 ], [ %logical.1.ph, %if.else5944 ], [ %logical.1.ph, %cond.end6059 ], [ %logical.1.ph, %if.end6140 ], [ %logical.1.ph, %cond.end6307 ], [ %logical.0, %while.end6374 ], [ %logical.1.ph, %do.end3199 ], [ %logical.1.ph, %sw.bb3829 ], [ %logical.1.ph, %lor.lhs.false3874 ], [ %logical.1.ph, %if.then3538 ], [ %logical.1.ph, %if.then4497 ], [ %logical.1.ph, %land.lhs.true4552 ], [ %logical.1.ph, %if.else4929 ], [ 0, %if.else5898 ], [ %logical.1.ph, %no_silent.critedge9407 ], [ %logical.1.ph, %if.then238 ], [ %logical.1.ph, %no_silent.critedge ], [ %logical.1.ph, %no_silent.loopexit ], [ %logical.1.ph, %cleanup.cont5478 ], [ %logical.1.ph, %no_silent.loopexit12316 ]
  %minmod.11 = phi i8 [ %minmod.112948, %if.then6346 ], [ %minmod.1.lcssa12828, %sw.bb ], [ %minmod.1.lcssa12829, %lor.lhs.false ], [ %minmod.1.lcssa12829, %land.lhs.true ], [ %minmod.1.lcssa12830, %sw.bb59 ], [ %minmod.1.lcssa12832, %sw.bb71 ], [ %minmod.1.lcssa12833, %sw.bb78 ], [ %minmod.1.lcssa12834, %sw.bb86 ], [ %minmod.1.lcssa12835, %sw.bb102 ], [ %minmod.1.lcssa12836, %sw.bb107 ], [ %minmod.1.lcssa12837, %sw.bb112 ], [ %minmod.1.lcssa12838, %sw.bb117 ], [ %minmod.1.lcssa12839, %land.lhs.true128 ], [ %minmod.1.lcssa12841, %if.end559 ], [ %minmod.112952, %cleanup863 ], [ %minmod.112946, %if.then896 ], [ %minmod.112947, %if.end924 ], [ %minmod.112947, %land.lhs.true935 ], [ %minmod.112947, %land.lhs.true916 ], [ %minmod.1.lcssa12844, %sw.bb867 ], [ %minmod.112941, %if.end1678 ], [ %minmod.112945, %if.end1221 ], [ %minmod.112940, %cond.end1260 ], [ %minmod.1.lcssa12856, %sw.bb1685 ], [ %minmod.1.lcssa12856, %if.then1691 ], [ %minmod.1.lcssa12856, %cond.true1706 ], [ %minmod.1.lcssa12856, %cond.false1710 ], [ %minmod.112953, %sw.bb1730 ], [ %minmod.112953, %if.then1756 ], [ %minmod.112954, %if.end1916 ], [ %minmod.112954, %sw.default ], [ %minmod.112954, %cond.end2008 ], [ %minmod.112954, %cond.end2091 ], [ %minmod.112954, %cond.end2156 ], [ %minmod.112954, %land.end2180 ], [ %minmod.112953, %if.then1740 ], [ %minmod.112955, %utf8_posix ], [ %minmod.112955, %land.rhs1875 ], [ %minmod.112955, %land.end1849 ], [ %minmod.112958, %posixa ], [ %minmod.112957, %land.end1817 ], [ %minmod.1.lcssa12861, %sw.bb1785 ], [ %minmod.1.lcssa12865, %sw.bb2201 ], [ %minmod.112937, %do_nref_ref_common ], [ %minmod.112937, %if.then2322 ], [ %minmod.112937, %if.end2357 ], [ %minmod.112937, %cond.true2375 ], [ %minmod.112937, %cond.false2378 ], [ %minmod.112937, %land.lhs.true2345 ], [ %minmod.112937, %lor.lhs.false2349 ], [ %minmod.112939, %S_reg_check_named_buff_matched.exit ], [ %minmod.112949, %if.end5839 ], [ %minmod.1.lcssa12892, %do.end3434 ], [ %minmod.1.lcssa12895, %if.then3635 ], [ %minmod.1.lcssa12895, %sw.bb3622 ], [ %minmod.1.lcssa12896, %if.then3670 ], [ %minmod.1.lcssa12896, %do.end3659 ], [ %minmod.1.lcssa12898, %if.then3759 ], [ %minmod.1.lcssa12898, %if.end3752 ], [ %minmod.1.lcssa12904, %for.end3866 ], [ %minmod.4, %cleanup5433 ], [ 0, %cleanup5072 ], [ %minmod.110087, %if.end5772 ], [ %minmod.112962, %cleanup5144 ], [ %minmod.1.lcssa12911, %if.end5468 ], [ %minmod.112965, %if.else5944 ], [ %minmod.1.lcssa12926, %cond.end6059 ], [ %minmod.1.lcssa12928, %if.end6140 ], [ %minmod.1.lcssa12929, %cond.end6307 ], [ %minmod.0, %while.end6374 ], [ %minmod.1.lcssa12880, %do.end3199 ], [ %minmod.1.lcssa12902, %sw.bb3829 ], [ %minmod.1.lcssa12904, %lor.lhs.false3874 ], [ %minmod.1.lcssa12893, %if.then3538 ], [ %minmod.3.lcssa, %if.then4497 ], [ %minmod.1.lcssa12930, %land.lhs.true4552 ], [ %minmod.112962, %if.else4929 ], [ %minmod.112964, %if.else5898 ], [ %minmod.1.lcssa12929, %no_silent.critedge9407 ], [ %minmod.112936, %if.then238 ], [ %minmod.112936, %no_silent.critedge ], [ %minmod.11.ph, %no_silent.loopexit ], [ %minmod.1.lcssa12911, %cleanup.cont5478 ], [ %minmod.1.lcssa12922, %no_silent.loopexit12316 ]
  %sv_yes_mark.6 = phi ptr [ %sv_yes_mark.1.ph, %if.then6346 ], [ %sv_yes_mark.1.ph, %sw.bb ], [ %sv_yes_mark.1.ph, %lor.lhs.false ], [ %sv_yes_mark.1.ph, %land.lhs.true ], [ %sv_yes_mark.1.ph, %sw.bb59 ], [ %sv_yes_mark.1.ph, %sw.bb71 ], [ %sv_yes_mark.1.ph, %sw.bb78 ], [ %sv_yes_mark.1.ph, %sw.bb86 ], [ %sv_yes_mark.1.ph, %sw.bb102 ], [ %sv_yes_mark.1.ph, %sw.bb107 ], [ %sv_yes_mark.1.ph, %sw.bb112 ], [ %sv_yes_mark.1.ph, %sw.bb117 ], [ %sv_yes_mark.1.ph, %land.lhs.true128 ], [ %sv_yes_mark.1.ph, %if.end559 ], [ %sv_yes_mark.1.ph, %cleanup863 ], [ %sv_yes_mark.1.ph, %if.then896 ], [ %sv_yes_mark.1.ph, %if.end924 ], [ %sv_yes_mark.1.ph, %land.lhs.true935 ], [ %sv_yes_mark.1.ph, %land.lhs.true916 ], [ %sv_yes_mark.1.ph, %sw.bb867 ], [ %sv_yes_mark.1.ph, %if.end1678 ], [ %sv_yes_mark.1.ph, %if.end1221 ], [ %sv_yes_mark.1.ph, %cond.end1260 ], [ %sv_yes_mark.1.ph, %sw.bb1685 ], [ %sv_yes_mark.1.ph, %if.then1691 ], [ %sv_yes_mark.1.ph, %cond.true1706 ], [ %sv_yes_mark.1.ph, %cond.false1710 ], [ %sv_yes_mark.1.ph, %sw.bb1730 ], [ %sv_yes_mark.1.ph, %if.then1756 ], [ %sv_yes_mark.1.ph, %if.end1916 ], [ %sv_yes_mark.1.ph, %sw.default ], [ %sv_yes_mark.1.ph, %cond.end2008 ], [ %sv_yes_mark.1.ph, %cond.end2091 ], [ %sv_yes_mark.1.ph, %cond.end2156 ], [ %sv_yes_mark.1.ph, %land.end2180 ], [ %sv_yes_mark.1.ph, %if.then1740 ], [ %sv_yes_mark.1.ph, %utf8_posix ], [ %sv_yes_mark.1.ph, %land.rhs1875 ], [ %sv_yes_mark.1.ph, %land.end1849 ], [ %sv_yes_mark.1.ph, %posixa ], [ %sv_yes_mark.1.ph, %land.end1817 ], [ %sv_yes_mark.1.ph, %sw.bb1785 ], [ %sv_yes_mark.1.ph, %sw.bb2201 ], [ %sv_yes_mark.1.ph, %do_nref_ref_common ], [ %sv_yes_mark.1.ph, %if.then2322 ], [ %sv_yes_mark.1.ph, %if.end2357 ], [ %sv_yes_mark.1.ph, %cond.true2375 ], [ %sv_yes_mark.1.ph, %cond.false2378 ], [ %sv_yes_mark.1.ph, %land.lhs.true2345 ], [ %sv_yes_mark.1.ph, %lor.lhs.false2349 ], [ %sv_yes_mark.1.ph, %S_reg_check_named_buff_matched.exit ], [ %sv_yes_mark.1.ph, %if.end5839 ], [ %sv_yes_mark.1.ph, %do.end3434 ], [ %sv_yes_mark.1.ph, %if.then3635 ], [ %sv_yes_mark.1.ph, %sw.bb3622 ], [ %sv_yes_mark.1.ph, %if.then3670 ], [ %sv_yes_mark.1.ph, %do.end3659 ], [ %sv_yes_mark.1.ph, %if.then3759 ], [ %sv_yes_mark.1.ph, %if.end3752 ], [ %sv_yes_mark.1.ph, %for.end3866 ], [ %sv_yes_mark.1.ph, %cleanup5433 ], [ %sv_yes_mark.1.ph, %cleanup5072 ], [ %sv_yes_mark.1.ph, %if.end5772 ], [ %sv_yes_mark.1.ph, %cleanup5144 ], [ %sv_yes_mark.1.ph, %if.end5468 ], [ %sv_yes_mark.1.ph, %if.else5944 ], [ %cond6060, %cond.end6059 ], [ %sv_yes_mark.1.ph, %if.end6140 ], [ %sv_yes_mark.1.ph, %cond.end6307 ], [ %sv_yes_mark.0, %while.end6374 ], [ %sv_yes_mark.1.ph, %do.end3199 ], [ %sv_yes_mark.1.ph, %sw.bb3829 ], [ %sv_yes_mark.1.ph, %lor.lhs.false3874 ], [ %sv_yes_mark.1.ph, %if.then3538 ], [ %sv_yes_mark.1.ph, %if.then4497 ], [ %sv_yes_mark.1.ph, %land.lhs.true4552 ], [ %sv_yes_mark.1.ph, %if.else4929 ], [ %sv_yes_mark.1.ph, %if.else5898 ], [ %sv_yes_mark.1.ph, %no_silent.critedge9407 ], [ %sv_yes_mark.1.ph, %if.then238 ], [ %sv_yes_mark.1.ph, %no_silent.critedge ], [ %sv_yes_mark.1.ph, %no_silent.loopexit ], [ %sv_yes_mark.1.ph, %cleanup.cont5478 ], [ %sv_yes_mark.1.ph, %no_silent.loopexit12316 ]
  %sv_commit.8 = phi ptr [ %sv_commit.1.ph, %if.then6346 ], [ %sv_commit.1.ph, %sw.bb ], [ %sv_commit.1.ph, %lor.lhs.false ], [ %sv_commit.1.ph, %land.lhs.true ], [ %sv_commit.1.ph, %sw.bb59 ], [ %sv_commit.1.ph, %sw.bb71 ], [ %sv_commit.1.ph, %sw.bb78 ], [ %sv_commit.1.ph, %sw.bb86 ], [ %sv_commit.1.ph, %sw.bb102 ], [ %sv_commit.1.ph, %sw.bb107 ], [ %sv_commit.1.ph, %sw.bb112 ], [ %sv_commit.1.ph, %sw.bb117 ], [ %sv_commit.1.ph, %land.lhs.true128 ], [ %sv_commit.1.ph, %if.end559 ], [ %sv_commit.1.ph, %cleanup863 ], [ %sv_commit.1.ph, %if.then896 ], [ %sv_commit.1.ph, %if.end924 ], [ %sv_commit.1.ph, %land.lhs.true935 ], [ %sv_commit.1.ph, %land.lhs.true916 ], [ %sv_commit.1.ph, %sw.bb867 ], [ %sv_commit.1.ph, %if.end1678 ], [ %sv_commit.1.ph, %if.end1221 ], [ %sv_commit.1.ph, %cond.end1260 ], [ %sv_commit.1.ph, %sw.bb1685 ], [ %sv_commit.1.ph, %if.then1691 ], [ %sv_commit.1.ph, %cond.true1706 ], [ %sv_commit.1.ph, %cond.false1710 ], [ %sv_commit.1.ph, %sw.bb1730 ], [ %sv_commit.1.ph, %if.then1756 ], [ %sv_commit.1.ph, %if.end1916 ], [ %sv_commit.1.ph, %sw.default ], [ %sv_commit.1.ph, %cond.end2008 ], [ %sv_commit.1.ph, %cond.end2091 ], [ %sv_commit.1.ph, %cond.end2156 ], [ %sv_commit.1.ph, %land.end2180 ], [ %sv_commit.1.ph, %if.then1740 ], [ %sv_commit.1.ph, %utf8_posix ], [ %sv_commit.1.ph, %land.rhs1875 ], [ %sv_commit.1.ph, %land.end1849 ], [ %sv_commit.1.ph, %posixa ], [ %sv_commit.1.ph, %land.end1817 ], [ %sv_commit.1.ph, %sw.bb1785 ], [ %sv_commit.1.ph, %sw.bb2201 ], [ %sv_commit.1.ph, %do_nref_ref_common ], [ %sv_commit.1.ph, %if.then2322 ], [ %sv_commit.1.ph, %if.end2357 ], [ %sv_commit.1.ph, %cond.true2375 ], [ %sv_commit.1.ph, %cond.false2378 ], [ %sv_commit.1.ph, %land.lhs.true2345 ], [ %sv_commit.1.ph, %lor.lhs.false2349 ], [ %sv_commit.1.ph, %S_reg_check_named_buff_matched.exit ], [ %sv_commit.1.ph, %if.end5839 ], [ %sv_commit.1.ph, %do.end3434 ], [ %sv_commit.1.ph, %if.then3635 ], [ %sv_commit.1.ph, %sw.bb3622 ], [ %sv_commit.1.ph, %if.then3670 ], [ %sv_commit.1.ph, %do.end3659 ], [ %sv_commit.1.ph, %if.then3759 ], [ %sv_commit.1.ph, %if.end3752 ], [ %sv_commit.1.ph, %for.end3866 ], [ %sv_commit.1.ph, %cleanup5433 ], [ %sv_commit.1.ph, %cleanup5072 ], [ %sv_commit.1.ph, %if.end5772 ], [ %sv_commit.1.ph, %cleanup5144 ], [ %sv_commit.1.ph, %if.end5468 ], [ %sv_commit.1.ph, %if.else5944 ], [ %sv_commit.3, %cond.end6059 ], [ %sv_commit.4, %if.end6140 ], [ %sv_commit.1.ph, %cond.end6307 ], [ %sv_commit.0, %while.end6374 ], [ %sv_commit.1.ph, %do.end3199 ], [ %spec.select8717, %sw.bb3829 ], [ %sv_commit.1.ph, %lor.lhs.false3874 ], [ %sv_commit.1.ph, %if.then3538 ], [ %sv_commit.1.ph, %if.then4497 ], [ %sv_commit.1.ph, %land.lhs.true4552 ], [ %sv_commit.1.ph, %if.else4929 ], [ %sv_commit.1.ph, %if.else5898 ], [ %sv_commit.1.ph, %no_silent.critedge9407 ], [ %sv_commit.1.ph, %if.then238 ], [ %sv_commit.1.ph, %no_silent.critedge ], [ %sv_commit.1.ph, %no_silent.loopexit ], [ %sv_commit.1.ph, %cleanup.cont5478 ], [ %sv_commit.1.ph, %no_silent.loopexit12316 ]
  %popmark.5 = phi ptr [ %popmark.1.ph, %if.then6346 ], [ %popmark.1.ph, %sw.bb ], [ %popmark.1.ph, %lor.lhs.false ], [ %popmark.1.ph, %land.lhs.true ], [ %popmark.1.ph, %sw.bb59 ], [ %popmark.1.ph, %sw.bb71 ], [ %popmark.1.ph, %sw.bb78 ], [ %popmark.1.ph, %sw.bb86 ], [ %popmark.1.ph, %sw.bb102 ], [ %popmark.1.ph, %sw.bb107 ], [ %popmark.1.ph, %sw.bb112 ], [ %popmark.1.ph, %sw.bb117 ], [ %popmark.1.ph, %land.lhs.true128 ], [ %popmark.1.ph, %if.end559 ], [ %popmark.1.ph, %cleanup863 ], [ %popmark.1.ph, %if.then896 ], [ %popmark.1.ph, %if.end924 ], [ %popmark.1.ph, %land.lhs.true935 ], [ %popmark.1.ph, %land.lhs.true916 ], [ %popmark.1.ph, %sw.bb867 ], [ %popmark.1.ph, %if.end1678 ], [ %popmark.1.ph, %if.end1221 ], [ %popmark.1.ph, %cond.end1260 ], [ %popmark.1.ph, %sw.bb1685 ], [ %popmark.1.ph, %if.then1691 ], [ %popmark.1.ph, %cond.true1706 ], [ %popmark.1.ph, %cond.false1710 ], [ %popmark.1.ph, %sw.bb1730 ], [ %popmark.1.ph, %if.then1756 ], [ %popmark.1.ph, %if.end1916 ], [ %popmark.1.ph, %sw.default ], [ %popmark.1.ph, %cond.end2008 ], [ %popmark.1.ph, %cond.end2091 ], [ %popmark.1.ph, %cond.end2156 ], [ %popmark.1.ph, %land.end2180 ], [ %popmark.1.ph, %if.then1740 ], [ %popmark.1.ph, %utf8_posix ], [ %popmark.1.ph, %land.rhs1875 ], [ %popmark.1.ph, %land.end1849 ], [ %popmark.1.ph, %posixa ], [ %popmark.1.ph, %land.end1817 ], [ %popmark.1.ph, %sw.bb1785 ], [ %popmark.1.ph, %sw.bb2201 ], [ %popmark.1.ph, %do_nref_ref_common ], [ %popmark.1.ph, %if.then2322 ], [ %popmark.1.ph, %if.end2357 ], [ %popmark.1.ph, %cond.true2375 ], [ %popmark.1.ph, %cond.false2378 ], [ %popmark.1.ph, %land.lhs.true2345 ], [ %popmark.1.ph, %lor.lhs.false2349 ], [ %popmark.1.ph, %S_reg_check_named_buff_matched.exit ], [ %popmark.1.ph, %if.end5839 ], [ %popmark.1.ph, %do.end3434 ], [ %popmark.1.ph, %if.then3635 ], [ %popmark.1.ph, %sw.bb3622 ], [ %popmark.1.ph, %if.then3670 ], [ %popmark.1.ph, %do.end3659 ], [ %popmark.1.ph, %if.then3759 ], [ %popmark.1.ph, %if.end3752 ], [ %popmark.1.ph, %for.end3866 ], [ %popmark.1.ph, %cleanup5433 ], [ %popmark.1.ph, %cleanup5072 ], [ %popmark.1.ph, %if.end5772 ], [ %popmark.1.ph, %cleanup5144 ], [ %popmark.1.ph, %if.end5468 ], [ %popmark.1.ph, %if.else5944 ], [ %popmark.2, %cond.end6059 ], [ %popmark.3, %if.end6140 ], [ %popmark.1.ph, %cond.end6307 ], [ %popmark.0, %while.end6374 ], [ %popmark.1.ph, %do.end3199 ], [ %popmark.1.ph, %sw.bb3829 ], [ %popmark.1.ph, %lor.lhs.false3874 ], [ %popmark.1.ph, %if.then3538 ], [ %popmark.1.ph, %if.then4497 ], [ %popmark.1.ph, %land.lhs.true4552 ], [ %popmark.1.ph, %if.else4929 ], [ %popmark.1.ph, %if.else5898 ], [ %popmark.1.ph, %no_silent.critedge9407 ], [ %popmark.1.ph, %if.then238 ], [ %popmark.1.ph, %no_silent.critedge ], [ %popmark.1.ph, %no_silent.loopexit ], [ %popmark.1.ph, %cleanup.cont5478 ], [ %popmark.1.ph, %no_silent.loopexit12316 ]
  %do_cutgroup.6 = phi i8 [ %do_cutgroup.1.ph, %if.then6346 ], [ %do_cutgroup.1.ph, %sw.bb ], [ %do_cutgroup.1.ph, %lor.lhs.false ], [ %do_cutgroup.1.ph, %land.lhs.true ], [ %do_cutgroup.1.ph, %sw.bb59 ], [ %do_cutgroup.1.ph, %sw.bb71 ], [ %do_cutgroup.1.ph, %sw.bb78 ], [ %do_cutgroup.1.ph, %sw.bb86 ], [ %do_cutgroup.1.ph, %sw.bb102 ], [ %do_cutgroup.1.ph, %sw.bb107 ], [ %do_cutgroup.1.ph, %sw.bb112 ], [ %do_cutgroup.1.ph, %sw.bb117 ], [ %do_cutgroup.1.ph, %land.lhs.true128 ], [ %do_cutgroup.1.ph, %if.end559 ], [ %do_cutgroup.1.ph, %cleanup863 ], [ %do_cutgroup.1.ph, %if.then896 ], [ %do_cutgroup.1.ph, %if.end924 ], [ %do_cutgroup.1.ph, %land.lhs.true935 ], [ %do_cutgroup.1.ph, %land.lhs.true916 ], [ %do_cutgroup.1.ph, %sw.bb867 ], [ %do_cutgroup.1.ph, %if.end1678 ], [ %do_cutgroup.1.ph, %if.end1221 ], [ %do_cutgroup.1.ph, %cond.end1260 ], [ %do_cutgroup.1.ph, %sw.bb1685 ], [ %do_cutgroup.1.ph, %if.then1691 ], [ %do_cutgroup.1.ph, %cond.true1706 ], [ %do_cutgroup.1.ph, %cond.false1710 ], [ %do_cutgroup.1.ph, %sw.bb1730 ], [ %do_cutgroup.1.ph, %if.then1756 ], [ %do_cutgroup.1.ph, %if.end1916 ], [ %do_cutgroup.1.ph, %sw.default ], [ %do_cutgroup.1.ph, %cond.end2008 ], [ %do_cutgroup.1.ph, %cond.end2091 ], [ %do_cutgroup.1.ph, %cond.end2156 ], [ %do_cutgroup.1.ph, %land.end2180 ], [ %do_cutgroup.1.ph, %if.then1740 ], [ %do_cutgroup.1.ph, %utf8_posix ], [ %do_cutgroup.1.ph, %land.rhs1875 ], [ %do_cutgroup.1.ph, %land.end1849 ], [ %do_cutgroup.1.ph, %posixa ], [ %do_cutgroup.1.ph, %land.end1817 ], [ %do_cutgroup.1.ph, %sw.bb1785 ], [ %do_cutgroup.1.ph, %sw.bb2201 ], [ %do_cutgroup.1.ph, %do_nref_ref_common ], [ %do_cutgroup.1.ph, %if.then2322 ], [ %do_cutgroup.1.ph, %if.end2357 ], [ %do_cutgroup.1.ph, %cond.true2375 ], [ %do_cutgroup.1.ph, %cond.false2378 ], [ %do_cutgroup.1.ph, %land.lhs.true2345 ], [ %do_cutgroup.1.ph, %lor.lhs.false2349 ], [ %do_cutgroup.1.ph, %S_reg_check_named_buff_matched.exit ], [ %do_cutgroup.1.ph, %if.end5839 ], [ %do_cutgroup.1.ph, %do.end3434 ], [ %do_cutgroup.1.ph, %if.then3635 ], [ %do_cutgroup.1.ph, %sw.bb3622 ], [ %do_cutgroup.1.ph, %if.then3670 ], [ %do_cutgroup.1.ph, %do.end3659 ], [ %do_cutgroup.1.ph, %if.then3759 ], [ %do_cutgroup.1.ph, %if.end3752 ], [ %spec.select8718, %for.end3866 ], [ %do_cutgroup.1.ph, %cleanup5433 ], [ %do_cutgroup.1.ph, %cleanup5072 ], [ %do_cutgroup.1.ph, %if.end5772 ], [ %do_cutgroup.1.ph, %cleanup5144 ], [ %do_cutgroup.1.ph, %if.end5468 ], [ %do_cutgroup.1.ph, %if.else5944 ], [ %do_cutgroup.1.ph, %cond.end6059 ], [ %do_cutgroup.1.ph, %if.end6140 ], [ %do_cutgroup.1.ph, %cond.end6307 ], [ %do_cutgroup.0, %while.end6374 ], [ %do_cutgroup.1.ph, %do.end3199 ], [ 1, %sw.bb3829 ], [ %spec.select8718, %lor.lhs.false3874 ], [ %do_cutgroup.1.ph, %if.then3538 ], [ %do_cutgroup.1.ph, %if.then4497 ], [ %do_cutgroup.1.ph, %land.lhs.true4552 ], [ %do_cutgroup.1.ph, %if.else4929 ], [ %do_cutgroup.1.ph, %if.else5898 ], [ %do_cutgroup.1.ph, %no_silent.critedge9407 ], [ %do_cutgroup.1.ph, %if.then238 ], [ %do_cutgroup.1.ph, %no_silent.critedge ], [ %do_cutgroup.1.ph, %no_silent.loopexit ], [ %do_cutgroup.1.ph, %cleanup.cont5478 ], [ %do_cutgroup.1.ph, %no_silent.loopexit12316 ]
  %no_final.6 = phi i8 [ %no_final.1.ph, %if.then6346 ], [ %no_final.1.ph, %sw.bb ], [ %no_final.1.ph, %lor.lhs.false ], [ %no_final.1.ph, %land.lhs.true ], [ %no_final.1.ph, %sw.bb59 ], [ %no_final.1.ph, %sw.bb71 ], [ %no_final.1.ph, %sw.bb78 ], [ %no_final.1.ph, %sw.bb86 ], [ %no_final.1.ph, %sw.bb102 ], [ %no_final.1.ph, %sw.bb107 ], [ %no_final.1.ph, %sw.bb112 ], [ %no_final.1.ph, %sw.bb117 ], [ %no_final.1.ph, %land.lhs.true128 ], [ %no_final.1.ph, %if.end559 ], [ %no_final.1.ph, %cleanup863 ], [ %no_final.1.ph, %if.then896 ], [ %no_final.1.ph, %if.end924 ], [ %no_final.1.ph, %land.lhs.true935 ], [ %no_final.1.ph, %land.lhs.true916 ], [ %no_final.1.ph, %sw.bb867 ], [ %no_final.1.ph, %if.end1678 ], [ %no_final.1.ph, %if.end1221 ], [ %no_final.1.ph, %cond.end1260 ], [ %no_final.1.ph, %sw.bb1685 ], [ %no_final.1.ph, %if.then1691 ], [ %no_final.1.ph, %cond.true1706 ], [ %no_final.1.ph, %cond.false1710 ], [ %no_final.1.ph, %sw.bb1730 ], [ %no_final.1.ph, %if.then1756 ], [ %no_final.1.ph, %if.end1916 ], [ %no_final.1.ph, %sw.default ], [ %no_final.1.ph, %cond.end2008 ], [ %no_final.1.ph, %cond.end2091 ], [ %no_final.1.ph, %cond.end2156 ], [ %no_final.1.ph, %land.end2180 ], [ %no_final.1.ph, %if.then1740 ], [ %no_final.1.ph, %utf8_posix ], [ %no_final.1.ph, %land.rhs1875 ], [ %no_final.1.ph, %land.end1849 ], [ %no_final.1.ph, %posixa ], [ %no_final.1.ph, %land.end1817 ], [ %no_final.1.ph, %sw.bb1785 ], [ %no_final.1.ph, %sw.bb2201 ], [ %no_final.1.ph, %do_nref_ref_common ], [ %no_final.1.ph, %if.then2322 ], [ %no_final.1.ph, %if.end2357 ], [ %no_final.1.ph, %cond.true2375 ], [ %no_final.1.ph, %cond.false2378 ], [ %no_final.1.ph, %land.lhs.true2345 ], [ %no_final.1.ph, %lor.lhs.false2349 ], [ %no_final.1.ph, %S_reg_check_named_buff_matched.exit ], [ %no_final.1.ph, %if.end5839 ], [ %no_final.1.ph, %do.end3434 ], [ %no_final.1.ph, %if.then3635 ], [ %no_final.1.ph, %sw.bb3622 ], [ %no_final.1.ph, %if.then3670 ], [ %no_final.1.ph, %do.end3659 ], [ %no_final.1.ph, %if.then3759 ], [ %no_final.1.ph, %if.end3752 ], [ %spec.select8719, %for.end3866 ], [ %no_final.1.ph, %cleanup5433 ], [ %no_final.1.ph, %cleanup5072 ], [ %no_final.1.ph, %if.end5772 ], [ %no_final.1.ph, %cleanup5144 ], [ %no_final.1.ph, %if.end5468 ], [ %no_final.1.ph, %if.else5944 ], [ %no_final.1.ph, %cond.end6059 ], [ 1, %if.end6140 ], [ %no_final.1.ph, %cond.end6307 ], [ %no_final.0, %while.end6374 ], [ %no_final.1.ph, %do.end3199 ], [ 1, %sw.bb3829 ], [ %spec.select8719, %lor.lhs.false3874 ], [ %no_final.1.ph, %if.then3538 ], [ %no_final.1.ph, %if.then4497 ], [ %no_final.1.ph, %land.lhs.true4552 ], [ %no_final.1.ph, %if.else4929 ], [ %no_final.1.ph, %if.else5898 ], [ %no_final.1.ph, %no_silent.critedge9407 ], [ %no_final.1.ph, %if.then238 ], [ %no_final.1.ph, %no_silent.critedge ], [ %no_final.1.ph, %no_silent.loopexit ], [ %no_final.1.ph, %cleanup.cont5478 ], [ 1, %no_silent.loopexit12316 ]
  %cur_curlyx.7 = phi ptr [ %cur_curlyx.1.ph, %if.then6346 ], [ %cur_curlyx.1.ph, %sw.bb ], [ %cur_curlyx.1.ph, %lor.lhs.false ], [ %cur_curlyx.1.ph, %land.lhs.true ], [ %cur_curlyx.1.ph, %sw.bb59 ], [ %cur_curlyx.1.ph, %sw.bb71 ], [ %cur_curlyx.1.ph, %sw.bb78 ], [ %cur_curlyx.1.ph, %sw.bb86 ], [ %cur_curlyx.1.ph, %sw.bb102 ], [ %cur_curlyx.1.ph, %sw.bb107 ], [ %cur_curlyx.1.ph, %sw.bb112 ], [ %cur_curlyx.1.ph, %sw.bb117 ], [ %cur_curlyx.1.ph, %land.lhs.true128 ], [ %cur_curlyx.1.ph, %if.end559 ], [ %cur_curlyx.1.ph, %cleanup863 ], [ %cur_curlyx.1.ph, %if.then896 ], [ %cur_curlyx.1.ph, %if.end924 ], [ %cur_curlyx.1.ph, %land.lhs.true935 ], [ %cur_curlyx.1.ph, %land.lhs.true916 ], [ %cur_curlyx.1.ph, %sw.bb867 ], [ %cur_curlyx.1.ph, %if.end1678 ], [ %cur_curlyx.1.ph, %if.end1221 ], [ %cur_curlyx.1.ph, %cond.end1260 ], [ %cur_curlyx.1.ph, %sw.bb1685 ], [ %cur_curlyx.1.ph, %if.then1691 ], [ %cur_curlyx.1.ph, %cond.true1706 ], [ %cur_curlyx.1.ph, %cond.false1710 ], [ %cur_curlyx.1.ph, %sw.bb1730 ], [ %cur_curlyx.1.ph, %if.then1756 ], [ %cur_curlyx.1.ph, %if.end1916 ], [ %cur_curlyx.1.ph, %sw.default ], [ %cur_curlyx.1.ph, %cond.end2008 ], [ %cur_curlyx.1.ph, %cond.end2091 ], [ %cur_curlyx.1.ph, %cond.end2156 ], [ %cur_curlyx.1.ph, %land.end2180 ], [ %cur_curlyx.1.ph, %if.then1740 ], [ %cur_curlyx.1.ph, %utf8_posix ], [ %cur_curlyx.1.ph, %land.rhs1875 ], [ %cur_curlyx.1.ph, %land.end1849 ], [ %cur_curlyx.1.ph, %posixa ], [ %cur_curlyx.1.ph, %land.end1817 ], [ %cur_curlyx.1.ph, %sw.bb1785 ], [ %cur_curlyx.1.ph, %sw.bb2201 ], [ %cur_curlyx.1.ph, %do_nref_ref_common ], [ %cur_curlyx.1.ph, %if.then2322 ], [ %cur_curlyx.1.ph, %if.end2357 ], [ %cur_curlyx.1.ph, %cond.true2375 ], [ %cur_curlyx.1.ph, %cond.false2378 ], [ %cur_curlyx.1.ph, %land.lhs.true2345 ], [ %cur_curlyx.1.ph, %lor.lhs.false2349 ], [ %cur_curlyx.1.ph, %S_reg_check_named_buff_matched.exit ], [ %cur_curlyx.1.ph, %if.end5839 ], [ %728, %do.end3434 ], [ %768, %if.then3635 ], [ %768, %sw.bb3622 ], [ %cur_curlyx.1.ph, %if.then3670 ], [ %cur_curlyx.1.ph, %do.end3659 ], [ %793, %if.then3759 ], [ %793, %if.end3752 ], [ %cur_curlyx.1.ph, %for.end3866 ], [ %cur_curlyx.1.ph, %cleanup5433 ], [ %cur_curlyx.1.ph, %cleanup5072 ], [ %cur_curlyx.1.ph, %if.end5772 ], [ %cur_curlyx.1.ph, %cleanup5144 ], [ %cur_curlyx.1.ph, %if.end5468 ], [ %cur_curlyx.1.ph, %if.else5944 ], [ %cur_curlyx.1.ph, %cond.end6059 ], [ %cur_curlyx.1.ph, %if.end6140 ], [ %cur_curlyx.1.ph, %cond.end6307 ], [ %cur_curlyx.0, %while.end6374 ], [ %677, %do.end3199 ], [ %cur_curlyx.1.ph, %sw.bb3829 ], [ %cur_curlyx.1.ph, %lor.lhs.false3874 ], [ %cur_curlyx.1.ph, %if.then3538 ], [ %cur_curlyx.1.ph, %if.then4497 ], [ %cur_curlyx.1.ph, %land.lhs.true4552 ], [ %cur_curlyx.1.ph, %if.else4929 ], [ %cur_curlyx.1.ph, %if.else5898 ], [ %cur_curlyx.1.ph, %no_silent.critedge9407 ], [ %cur_curlyx.1.ph, %if.then238 ], [ %cur_curlyx.1.ph, %no_silent.critedge ], [ %cur_curlyx.1.ph, %no_silent.loopexit ], [ %cur_curlyx.1.ph, %cleanup.cont5478 ], [ %cur_curlyx.1.ph, %no_silent.loopexit12316 ]
  %cur_eval.5 = phi ptr [ %cur_eval.1.ph, %if.then6346 ], [ %cur_eval.1.ph, %sw.bb ], [ %cur_eval.1.ph, %lor.lhs.false ], [ %cur_eval.1.ph, %land.lhs.true ], [ %cur_eval.1.ph, %sw.bb59 ], [ %cur_eval.1.ph, %sw.bb71 ], [ %cur_eval.1.ph, %sw.bb78 ], [ %cur_eval.1.ph, %sw.bb86 ], [ %cur_eval.1.ph, %sw.bb102 ], [ %cur_eval.1.ph, %sw.bb107 ], [ %cur_eval.1.ph, %sw.bb112 ], [ %cur_eval.1.ph, %sw.bb117 ], [ %cur_eval.1.ph, %land.lhs.true128 ], [ %cur_eval.1.ph, %if.end559 ], [ %cur_eval.1.ph, %cleanup863 ], [ %cur_eval.1.ph, %if.then896 ], [ %cur_eval.1.ph, %if.end924 ], [ %cur_eval.1.ph, %land.lhs.true935 ], [ %cur_eval.1.ph, %land.lhs.true916 ], [ %cur_eval.1.ph, %sw.bb867 ], [ %cur_eval.1.ph, %if.end1678 ], [ %cur_eval.1.ph, %if.end1221 ], [ %cur_eval.1.ph, %cond.end1260 ], [ %cur_eval.1.ph, %sw.bb1685 ], [ %cur_eval.1.ph, %if.then1691 ], [ %cur_eval.1.ph, %cond.true1706 ], [ %cur_eval.1.ph, %cond.false1710 ], [ %cur_eval.1.ph, %sw.bb1730 ], [ %cur_eval.1.ph, %if.then1756 ], [ %cur_eval.1.ph, %if.end1916 ], [ %cur_eval.1.ph, %sw.default ], [ %cur_eval.1.ph, %cond.end2008 ], [ %cur_eval.1.ph, %cond.end2091 ], [ %cur_eval.1.ph, %cond.end2156 ], [ %cur_eval.1.ph, %land.end2180 ], [ %cur_eval.1.ph, %if.then1740 ], [ %cur_eval.1.ph, %utf8_posix ], [ %cur_eval.1.ph, %land.rhs1875 ], [ %cur_eval.1.ph, %land.end1849 ], [ %cur_eval.1.ph, %posixa ], [ %cur_eval.1.ph, %land.end1817 ], [ %cur_eval.1.ph, %sw.bb1785 ], [ %cur_eval.1.ph, %sw.bb2201 ], [ %cur_eval.1.ph, %do_nref_ref_common ], [ %cur_eval.1.ph, %if.then2322 ], [ %cur_eval.1.ph, %if.end2357 ], [ %cur_eval.1.ph, %cond.true2375 ], [ %cur_eval.1.ph, %cond.false2378 ], [ %cur_eval.1.ph, %land.lhs.true2345 ], [ %cur_eval.1.ph, %lor.lhs.false2349 ], [ %cur_eval.1.ph, %S_reg_check_named_buff_matched.exit ], [ null, %if.end5839 ], [ %cur_eval.1.ph, %do.end3434 ], [ %cur_eval.1.ph, %if.then3635 ], [ %cur_eval.1.ph, %sw.bb3622 ], [ %cur_eval.1.ph, %if.then3670 ], [ %cur_eval.1.ph, %do.end3659 ], [ %cur_eval.1.ph, %if.then3759 ], [ %cur_eval.1.ph, %if.end3752 ], [ %cur_eval.1.ph, %for.end3866 ], [ %cur_eval.1.ph, %cleanup5433 ], [ %cur_eval.1.ph, %cleanup5072 ], [ %cur_eval.1.ph, %if.end5772 ], [ %cur_eval.1.ph, %cleanup5144 ], [ %cur_eval.1.ph, %if.end5468 ], [ %cur_eval.1.ph, %if.else5944 ], [ %cur_eval.1.ph, %cond.end6059 ], [ %cur_eval.1.ph, %if.end6140 ], [ %cur_eval.1.ph, %cond.end6307 ], [ %cur_eval.0, %while.end6374 ], [ %676, %do.end3199 ], [ %cur_eval.1.ph, %sw.bb3829 ], [ %cur_eval.1.ph, %lor.lhs.false3874 ], [ %cur_eval.1.ph, %if.then3538 ], [ %cur_eval.1.ph, %if.then4497 ], [ %cur_eval.1.ph, %land.lhs.true4552 ], [ %cur_eval.1.ph, %if.else4929 ], [ %cur_eval.1.ph, %if.else5898 ], [ %cur_eval.1.ph, %no_silent.critedge9407 ], [ %cur_eval.1.ph, %if.then238 ], [ %cur_eval.1.ph, %no_silent.critedge ], [ %cur_eval.1.ph, %no_silent.loopexit ], [ %cur_eval.1.ph, %cleanup.cont5478 ], [ %cur_eval.1.ph, %no_silent.loopexit12316 ]
  %mark_state.5 = phi ptr [ %mark_state.1.ph, %if.then6346 ], [ %mark_state.1.ph, %sw.bb ], [ %mark_state.1.ph, %lor.lhs.false ], [ %mark_state.1.ph, %land.lhs.true ], [ %mark_state.1.ph, %sw.bb59 ], [ %mark_state.1.ph, %sw.bb71 ], [ %mark_state.1.ph, %sw.bb78 ], [ %mark_state.1.ph, %sw.bb86 ], [ %mark_state.1.ph, %sw.bb102 ], [ %mark_state.1.ph, %sw.bb107 ], [ %mark_state.1.ph, %sw.bb112 ], [ %mark_state.1.ph, %sw.bb117 ], [ %mark_state.1.ph, %land.lhs.true128 ], [ %mark_state.1.ph, %if.end559 ], [ %mark_state.1.ph, %cleanup863 ], [ %mark_state.1.ph, %if.then896 ], [ %mark_state.1.ph, %if.end924 ], [ %mark_state.1.ph, %land.lhs.true935 ], [ %mark_state.1.ph, %land.lhs.true916 ], [ %mark_state.1.ph, %sw.bb867 ], [ %mark_state.1.ph, %if.end1678 ], [ %mark_state.1.ph, %if.end1221 ], [ %mark_state.1.ph, %cond.end1260 ], [ %mark_state.1.ph, %sw.bb1685 ], [ %mark_state.1.ph, %if.then1691 ], [ %mark_state.1.ph, %cond.true1706 ], [ %mark_state.1.ph, %cond.false1710 ], [ %mark_state.1.ph, %sw.bb1730 ], [ %mark_state.1.ph, %if.then1756 ], [ %mark_state.1.ph, %if.end1916 ], [ %mark_state.1.ph, %sw.default ], [ %mark_state.1.ph, %cond.end2008 ], [ %mark_state.1.ph, %cond.end2091 ], [ %mark_state.1.ph, %cond.end2156 ], [ %mark_state.1.ph, %land.end2180 ], [ %mark_state.1.ph, %if.then1740 ], [ %mark_state.1.ph, %utf8_posix ], [ %mark_state.1.ph, %land.rhs1875 ], [ %mark_state.1.ph, %land.end1849 ], [ %mark_state.1.ph, %posixa ], [ %mark_state.1.ph, %land.end1817 ], [ %mark_state.1.ph, %sw.bb1785 ], [ %mark_state.1.ph, %sw.bb2201 ], [ %mark_state.1.ph, %do_nref_ref_common ], [ %mark_state.1.ph, %if.then2322 ], [ %mark_state.1.ph, %if.end2357 ], [ %mark_state.1.ph, %cond.true2375 ], [ %mark_state.1.ph, %cond.false2378 ], [ %mark_state.1.ph, %land.lhs.true2345 ], [ %mark_state.1.ph, %lor.lhs.false2349 ], [ %mark_state.1.ph, %S_reg_check_named_buff_matched.exit ], [ %mark_state.1.ph, %if.end5839 ], [ %mark_state.1.ph, %do.end3434 ], [ %mark_state.1.ph, %if.then3635 ], [ %mark_state.1.ph, %sw.bb3622 ], [ %mark_state.1.ph, %if.then3670 ], [ %mark_state.1.ph, %do.end3659 ], [ %mark_state.1.ph, %if.then3759 ], [ %mark_state.1.ph, %if.end3752 ], [ %mark_state.1.ph, %for.end3866 ], [ %mark_state.1.ph, %cleanup5433 ], [ %mark_state.1.ph, %cleanup5072 ], [ %mark_state.1.ph, %if.end5772 ], [ %mark_state.1.ph, %cleanup5144 ], [ %mark_state.1.ph, %if.end5468 ], [ %mark_state.1.ph, %if.else5944 ], [ %1171, %cond.end6059 ], [ %mark_state.1.ph, %if.end6140 ], [ %mark_state.1.ph, %cond.end6307 ], [ %mark_state.0, %while.end6374 ], [ %mark_state.1.ph, %do.end3199 ], [ %mark_state.1.ph, %sw.bb3829 ], [ %mark_state.1.ph, %lor.lhs.false3874 ], [ %mark_state.1.ph, %if.then3538 ], [ %mark_state.1.ph, %if.then4497 ], [ %mark_state.1.ph, %land.lhs.true4552 ], [ %mark_state.1.ph, %if.else4929 ], [ %mark_state.1.ph, %if.else5898 ], [ %mark_state.1.ph, %no_silent.critedge9407 ], [ %mark_state.1.ph, %if.then238 ], [ %mark_state.1.ph, %no_silent.critedge ], [ %mark_state.1.ph, %no_silent.loopexit ], [ %mark_state.1.ph, %cleanup.cont5478 ], [ %mark_state.1.ph, %no_silent.loopexit12316 ]
  %yes_state.4 = phi ptr [ %yes_state.1.ph, %if.then6346 ], [ %yes_state.1.ph, %sw.bb ], [ %yes_state.1.ph, %lor.lhs.false ], [ %yes_state.1.ph, %land.lhs.true ], [ %yes_state.1.ph, %sw.bb59 ], [ %yes_state.1.ph, %sw.bb71 ], [ %yes_state.1.ph, %sw.bb78 ], [ %yes_state.1.ph, %sw.bb86 ], [ %yes_state.1.ph, %sw.bb102 ], [ %yes_state.1.ph, %sw.bb107 ], [ %yes_state.1.ph, %sw.bb112 ], [ %yes_state.1.ph, %sw.bb117 ], [ %yes_state.1.ph, %land.lhs.true128 ], [ %yes_state.1.ph, %if.end559 ], [ %yes_state.1.ph, %cleanup863 ], [ %yes_state.1.ph, %if.then896 ], [ %yes_state.1.ph, %if.end924 ], [ %yes_state.1.ph, %land.lhs.true935 ], [ %yes_state.1.ph, %land.lhs.true916 ], [ %yes_state.1.ph, %sw.bb867 ], [ %yes_state.1.ph, %if.end1678 ], [ %yes_state.1.ph, %if.end1221 ], [ %yes_state.1.ph, %cond.end1260 ], [ %yes_state.1.ph, %sw.bb1685 ], [ %yes_state.1.ph, %if.then1691 ], [ %yes_state.1.ph, %cond.true1706 ], [ %yes_state.1.ph, %cond.false1710 ], [ %yes_state.1.ph, %sw.bb1730 ], [ %yes_state.1.ph, %if.then1756 ], [ %yes_state.1.ph, %if.end1916 ], [ %yes_state.1.ph, %sw.default ], [ %yes_state.1.ph, %cond.end2008 ], [ %yes_state.1.ph, %cond.end2091 ], [ %yes_state.1.ph, %cond.end2156 ], [ %yes_state.1.ph, %land.end2180 ], [ %yes_state.1.ph, %if.then1740 ], [ %yes_state.1.ph, %utf8_posix ], [ %yes_state.1.ph, %land.rhs1875 ], [ %yes_state.1.ph, %land.end1849 ], [ %yes_state.1.ph, %posixa ], [ %yes_state.1.ph, %land.end1817 ], [ %yes_state.1.ph, %sw.bb1785 ], [ %yes_state.1.ph, %sw.bb2201 ], [ %yes_state.1.ph, %do_nref_ref_common ], [ %yes_state.1.ph, %if.then2322 ], [ %yes_state.1.ph, %if.end2357 ], [ %yes_state.1.ph, %cond.true2375 ], [ %yes_state.1.ph, %cond.false2378 ], [ %yes_state.1.ph, %land.lhs.true2345 ], [ %yes_state.1.ph, %lor.lhs.false2349 ], [ %yes_state.1.ph, %S_reg_check_named_buff_matched.exit ], [ %yes_state.1.ph, %if.end5839 ], [ %yes_state.1.ph, %do.end3434 ], [ %yes_state.1.ph, %if.then3635 ], [ %yes_state.1.ph, %sw.bb3622 ], [ %yes_state.1.ph, %if.then3670 ], [ %yes_state.1.ph, %do.end3659 ], [ %yes_state.1.ph, %if.then3759 ], [ %yes_state.1.ph, %if.end3752 ], [ %yes_state.1.ph, %for.end3866 ], [ %yes_state.1.ph, %cleanup5433 ], [ %yes_state.1.ph, %cleanup5072 ], [ %yes_state.1.ph, %if.end5772 ], [ %yes_state.1.ph, %cleanup5144 ], [ %yes_state.1.ph, %if.end5468 ], [ %yes_state.1.ph, %if.else5944 ], [ %yes_state.1.ph, %cond.end6059 ], [ %yes_state.1.ph, %if.end6140 ], [ %yes_state.1.ph, %cond.end6307 ], [ %yes_state.0, %while.end6374 ], [ %yes_state.1.ph, %do.end3199 ], [ %yes_state.1.ph, %sw.bb3829 ], [ %yes_state.1.ph, %lor.lhs.false3874 ], [ %yes_state.1.ph, %if.then3538 ], [ %yes_state.1.ph, %if.then4497 ], [ %yes_state.1.ph, %land.lhs.true4552 ], [ %yes_state.1.ph, %if.else4929 ], [ %yes_state.1.ph, %if.else5898 ], [ %yes_state.1.ph, %no_silent.critedge9407 ], [ %yes_state.1.ph, %if.then238 ], [ %yes_state.1.ph, %no_silent.critedge ], [ %yes_state.1.ph, %no_silent.loopexit ], [ %yes_state.1.ph, %cleanup.cont5478 ], [ %yes_state.1.ph, %no_silent.loopexit12316 ]
  %nochange_depth.10 = phi i32 [ %nochange_depth.1.ph, %if.then6346 ], [ %nochange_depth.1.ph, %sw.bb ], [ %nochange_depth.1.ph, %lor.lhs.false ], [ %nochange_depth.1.ph, %land.lhs.true ], [ %nochange_depth.1.ph, %sw.bb59 ], [ %nochange_depth.1.ph, %sw.bb71 ], [ %nochange_depth.1.ph, %sw.bb78 ], [ %nochange_depth.1.ph, %sw.bb86 ], [ %nochange_depth.1.ph, %sw.bb102 ], [ %nochange_depth.1.ph, %sw.bb107 ], [ %nochange_depth.1.ph, %sw.bb112 ], [ %nochange_depth.1.ph, %sw.bb117 ], [ %nochange_depth.1.ph, %land.lhs.true128 ], [ %nochange_depth.1.ph, %if.end559 ], [ %nochange_depth.1.ph, %cleanup863 ], [ %nochange_depth.1.ph, %if.then896 ], [ %nochange_depth.1.ph, %if.end924 ], [ %nochange_depth.1.ph, %land.lhs.true935 ], [ %nochange_depth.1.ph, %land.lhs.true916 ], [ %nochange_depth.1.ph, %sw.bb867 ], [ %nochange_depth.1.ph, %if.end1678 ], [ %nochange_depth.1.ph, %if.end1221 ], [ %nochange_depth.1.ph, %cond.end1260 ], [ %nochange_depth.1.ph, %sw.bb1685 ], [ %nochange_depth.1.ph, %if.then1691 ], [ %nochange_depth.1.ph, %cond.true1706 ], [ %nochange_depth.1.ph, %cond.false1710 ], [ %nochange_depth.1.ph, %sw.bb1730 ], [ %nochange_depth.1.ph, %if.then1756 ], [ %nochange_depth.1.ph, %if.end1916 ], [ %nochange_depth.1.ph, %sw.default ], [ %nochange_depth.1.ph, %cond.end2008 ], [ %nochange_depth.1.ph, %cond.end2091 ], [ %nochange_depth.1.ph, %cond.end2156 ], [ %nochange_depth.1.ph, %land.end2180 ], [ %nochange_depth.1.ph, %if.then1740 ], [ %nochange_depth.1.ph, %utf8_posix ], [ %nochange_depth.1.ph, %land.rhs1875 ], [ %nochange_depth.1.ph, %land.end1849 ], [ %nochange_depth.1.ph, %posixa ], [ %nochange_depth.1.ph, %land.end1817 ], [ %nochange_depth.1.ph, %sw.bb1785 ], [ %nochange_depth.1.ph, %sw.bb2201 ], [ %nochange_depth.1.ph, %do_nref_ref_common ], [ %nochange_depth.1.ph, %if.then2322 ], [ %nochange_depth.1.ph, %if.end2357 ], [ %nochange_depth.1.ph, %cond.true2375 ], [ %nochange_depth.1.ph, %cond.false2378 ], [ %nochange_depth.1.ph, %land.lhs.true2345 ], [ %nochange_depth.1.ph, %lor.lhs.false2349 ], [ %nochange_depth.1.ph, %S_reg_check_named_buff_matched.exit ], [ %nochange_depth.1.ph, %if.end5839 ], [ %nochange_depth.1.ph, %do.end3434 ], [ %nochange_depth.1.ph, %if.then3635 ], [ %nochange_depth.1.ph, %sw.bb3622 ], [ %nochange_depth.1.ph, %if.then3670 ], [ %nochange_depth.1.ph, %do.end3659 ], [ %nochange_depth.1.ph, %if.then3759 ], [ %nochange_depth.1.ph, %if.end3752 ], [ %nochange_depth.1.ph, %for.end3866 ], [ %nochange_depth.1.ph, %cleanup5433 ], [ %nochange_depth.1.ph, %cleanup5072 ], [ %nochange_depth.1.ph, %if.end5772 ], [ %nochange_depth.1.ph, %cleanup5144 ], [ %nochange_depth.1.ph, %if.end5468 ], [ %nochange_depth.1.ph, %if.else5944 ], [ %nochange_depth.1.ph, %cond.end6059 ], [ %nochange_depth.1.ph, %if.end6140 ], [ %nochange_depth.1.ph, %cond.end6307 ], [ %nochange_depth.0, %while.end6374 ], [ %spec.select8713, %do.end3199 ], [ %nochange_depth.1.ph, %sw.bb3829 ], [ %nochange_depth.1.ph, %lor.lhs.false3874 ], [ %nochange_depth.1.ph, %if.then3538 ], [ %nochange_depth.1.ph, %if.then4497 ], [ %nochange_depth.1.ph, %land.lhs.true4552 ], [ %nochange_depth.1.ph, %if.else4929 ], [ %nochange_depth.1.ph, %if.else5898 ], [ %nochange_depth.1.ph, %no_silent.critedge9407 ], [ %nochange_depth.1.ph, %if.then238 ], [ %nochange_depth.1.ph, %no_silent.critedge ], [ %nochange_depth.1.ph, %no_silent.loopexit ], [ %nochange_depth.1.ph, %cleanup.cont5478 ], [ %nochange_depth.1.ph, %no_silent.loopexit12316 ]
  %depth.4 = phi i32 [ %depth.1.ph, %if.then6346 ], [ %depth.1.ph, %sw.bb ], [ %depth.1.ph, %lor.lhs.false ], [ %depth.1.ph, %land.lhs.true ], [ %depth.1.ph, %sw.bb59 ], [ %depth.1.ph, %sw.bb71 ], [ %depth.1.ph, %sw.bb78 ], [ %depth.1.ph, %sw.bb86 ], [ %depth.1.ph, %sw.bb102 ], [ %depth.1.ph, %sw.bb107 ], [ %depth.1.ph, %sw.bb112 ], [ %depth.1.ph, %sw.bb117 ], [ %depth.1.ph, %land.lhs.true128 ], [ %depth.1.ph, %if.end559 ], [ %depth.1.ph, %cleanup863 ], [ %depth.1.ph, %if.then896 ], [ %depth.1.ph, %if.end924 ], [ %depth.1.ph, %land.lhs.true935 ], [ %depth.1.ph, %land.lhs.true916 ], [ %depth.1.ph, %sw.bb867 ], [ %depth.1.ph, %if.end1678 ], [ %depth.1.ph, %if.end1221 ], [ %depth.1.ph, %cond.end1260 ], [ %depth.1.ph, %sw.bb1685 ], [ %depth.1.ph, %if.then1691 ], [ %depth.1.ph, %cond.true1706 ], [ %depth.1.ph, %cond.false1710 ], [ %depth.1.ph, %sw.bb1730 ], [ %depth.1.ph, %if.then1756 ], [ %depth.1.ph, %if.end1916 ], [ %depth.1.ph, %sw.default ], [ %depth.1.ph, %cond.end2008 ], [ %depth.1.ph, %cond.end2091 ], [ %depth.1.ph, %cond.end2156 ], [ %depth.1.ph, %land.end2180 ], [ %depth.1.ph, %if.then1740 ], [ %depth.1.ph, %utf8_posix ], [ %depth.1.ph, %land.rhs1875 ], [ %depth.1.ph, %land.end1849 ], [ %depth.1.ph, %posixa ], [ %depth.1.ph, %land.end1817 ], [ %depth.1.ph, %sw.bb1785 ], [ %depth.1.ph, %sw.bb2201 ], [ %depth.1.ph, %do_nref_ref_common ], [ %depth.1.ph, %if.then2322 ], [ %depth.1.ph, %if.end2357 ], [ %depth.1.ph, %cond.true2375 ], [ %depth.1.ph, %cond.false2378 ], [ %depth.1.ph, %land.lhs.true2345 ], [ %depth.1.ph, %lor.lhs.false2349 ], [ %depth.1.ph, %S_reg_check_named_buff_matched.exit ], [ %depth.1.ph, %if.end5839 ], [ %depth.1.ph, %do.end3434 ], [ %depth.1.ph, %if.then3635 ], [ %depth.1.ph, %sw.bb3622 ], [ %depth.1.ph, %if.then3670 ], [ %depth.1.ph, %do.end3659 ], [ %depth.1.ph, %if.then3759 ], [ %depth.1.ph, %if.end3752 ], [ %depth.1.ph, %for.end3866 ], [ %depth.1.ph, %cleanup5433 ], [ %depth.1.ph, %cleanup5072 ], [ %depth.1.ph, %if.end5772 ], [ %depth.1.ph, %cleanup5144 ], [ %depth.1.ph, %if.end5468 ], [ %depth.1.ph, %if.else5944 ], [ %depth.1.ph, %cond.end6059 ], [ %depth.1.ph, %if.end6140 ], [ %depth.1.ph, %cond.end6307 ], [ %depth.0, %while.end6374 ], [ %depth.1.ph, %do.end3199 ], [ %depth.1.ph, %sw.bb3829 ], [ %depth.1.ph, %lor.lhs.false3874 ], [ %depth.1.ph, %if.then3538 ], [ %depth.1.ph, %if.then4497 ], [ %depth.1.ph, %land.lhs.true4552 ], [ %depth.1.ph, %if.else4929 ], [ %depth.1.ph, %if.else5898 ], [ %depth.1.ph, %no_silent.critedge9407 ], [ %depth.1.ph, %if.then238 ], [ %depth.1.ph, %no_silent.critedge ], [ %depth.1.ph, %no_silent.loopexit ], [ %depth.1.ph, %cleanup.cont5478 ], [ %depth.1.ph, %no_silent.loopexit12316 ]
  %locinput.32 = phi ptr [ %add.ptr6351, %if.then6346 ], [ %locinput.1.lcssa12568, %sw.bb ], [ %locinput.1.lcssa12569, %lor.lhs.false ], [ %locinput.1.lcssa12569, %land.lhs.true ], [ %locinput.1.lcssa12570, %sw.bb59 ], [ %locinput.1.lcssa12572, %sw.bb71 ], [ %locinput.1.lcssa12573, %sw.bb78 ], [ %locinput.1.lcssa12574, %sw.bb86 ], [ %locinput.1.lcssa12575, %sw.bb102 ], [ %locinput.1.lcssa12576, %sw.bb107 ], [ %locinput.1.lcssa12577, %sw.bb112 ], [ %locinput.1.lcssa12578, %sw.bb117 ], [ %locinput.1.lcssa12579, %land.lhs.true128 ], [ %locinput.1.lcssa12581, %if.end559 ], [ %locinput.1.lcssa12582, %cleanup863 ], [ %locinput.112689, %if.then896 ], [ %locinput.112690, %if.end924 ], [ %locinput.112690, %land.lhs.true935 ], [ %locinput.112690, %land.lhs.true916 ], [ %locinput.1.lcssa12584, %sw.bb867 ], [ %locinput.112682, %if.end1678 ], [ %locinput.112681, %if.end1221 ], [ %locinput.112679, %cond.end1260 ], [ %locinput.1.lcssa12596, %sw.bb1685 ], [ %locinput.1.lcssa12596, %if.then1691 ], [ %locinput.1.lcssa12596, %cond.true1706 ], [ %locinput.1.lcssa12596, %cond.false1710 ], [ %locinput.112691, %sw.bb1730 ], [ %locinput.112691, %if.then1756 ], [ %locinput.112692, %if.end1916 ], [ %locinput.112692, %sw.default ], [ %locinput.112692, %cond.end2008 ], [ %locinput.112692, %cond.end2091 ], [ %locinput.112692, %cond.end2156 ], [ %locinput.112692, %land.end2180 ], [ %locinput.112691, %if.then1740 ], [ %locinput.112693, %utf8_posix ], [ %locinput.112693, %land.rhs1875 ], [ %locinput.112693, %land.end1849 ], [ %locinput.112696, %posixa ], [ %locinput.112695, %land.end1817 ], [ %locinput.1.lcssa12601, %sw.bb1785 ], [ %locinput.1.lcssa12605, %sw.bb2201 ], [ %locinput.112676, %do_nref_ref_common ], [ %locinput.112676, %if.then2322 ], [ %locinput.112676, %if.end2357 ], [ %locinput.112676, %cond.true2375 ], [ %locinput.112676, %cond.false2378 ], [ %locinput.112676, %land.lhs.true2345 ], [ %locinput.112676, %lor.lhs.false2349 ], [ %locinput.112678, %S_reg_check_named_buff_matched.exit ], [ %locinput.112685, %if.end5839 ], [ %locinput.1.lcssa12632, %do.end3434 ], [ %locinput.1.lcssa12635, %if.then3635 ], [ %locinput.1.lcssa12635, %sw.bb3622 ], [ %locinput.1.lcssa12636, %if.then3670 ], [ %locinput.1.lcssa12636, %do.end3659 ], [ %locinput.1.lcssa12638, %if.then3759 ], [ %locinput.1.lcssa12638, %if.end3752 ], [ %locinput.1.lcssa12644, %for.end3866 ], [ %locinput.20, %cleanup5433 ], [ %locinput.112701, %cleanup5072 ], [ %locinput.24, %if.end5772 ], [ %locinput.12, %cleanup5144 ], [ %locinput.1.lcssa12651, %if.end5468 ], [ %locinput.112703, %if.else5944 ], [ %locinput.1.lcssa12666, %cond.end6059 ], [ %locinput.1.lcssa12668, %if.end6140 ], [ %locinput.1.lcssa12669, %cond.end6307 ], [ %locinput.0, %while.end6374 ], [ %locinput.1.lcssa12620, %do.end3199 ], [ %locinput.1.lcssa12642, %sw.bb3829 ], [ %locinput.1.lcssa12644, %lor.lhs.false3874 ], [ %locinput.1.lcssa12633, %if.then3538 ], [ %locinput.10.lcssa, %if.then4497 ], [ %locinput.1.lcssa12670, %land.lhs.true4552 ], [ %locinput.112701, %if.else4929 ], [ %locinput.112686, %if.else5898 ], [ %locinput.1.lcssa12669, %no_silent.critedge9407 ], [ %locinput.112675, %if.then238 ], [ %locinput.112675, %no_silent.critedge ], [ %locinput.32.ph, %no_silent.loopexit ], [ %1051, %cleanup.cont5478 ], [ %locinput.1.lcssa12662, %no_silent.loopexit12316 ]
  %next.10 = phi ptr [ %next.1.ph, %if.then6346 ], [ %next.1.ph, %sw.bb ], [ %next.1.ph, %lor.lhs.false ], [ %next.1.ph, %land.lhs.true ], [ %next.1.ph, %sw.bb59 ], [ %next.1.ph, %sw.bb71 ], [ %next.1.ph, %sw.bb78 ], [ %next.1.ph, %sw.bb86 ], [ %next.1.ph, %sw.bb102 ], [ %next.1.ph, %sw.bb107 ], [ %next.1.ph, %sw.bb112 ], [ %next.1.ph, %sw.bb117 ], [ %next.1.ph, %land.lhs.true128 ], [ %next.1.ph, %if.end559 ], [ %next.1.ph, %cleanup863 ], [ %next.1.ph, %if.then896 ], [ %next.1.ph, %if.end924 ], [ %next.1.ph, %land.lhs.true935 ], [ %next.1.ph, %land.lhs.true916 ], [ %next.1.ph, %sw.bb867 ], [ %next.1.ph, %if.end1678 ], [ %next.1.ph, %if.end1221 ], [ %next.1.ph, %cond.end1260 ], [ %next.1.ph, %sw.bb1685 ], [ %next.1.ph, %if.then1691 ], [ %next.1.ph, %cond.true1706 ], [ %next.1.ph, %cond.false1710 ], [ %next.1.ph, %sw.bb1730 ], [ %next.1.ph, %if.then1756 ], [ %next.1.ph, %if.end1916 ], [ %next.1.ph, %sw.default ], [ %next.1.ph, %cond.end2008 ], [ %next.1.ph, %cond.end2091 ], [ %next.1.ph, %cond.end2156 ], [ %next.1.ph, %land.end2180 ], [ %next.1.ph, %if.then1740 ], [ %next.1.ph, %utf8_posix ], [ %next.1.ph, %land.rhs1875 ], [ %next.1.ph, %land.end1849 ], [ %next.1.ph, %posixa ], [ %next.1.ph, %land.end1817 ], [ %next.1.ph, %sw.bb1785 ], [ %next.1.ph, %sw.bb2201 ], [ %next.1.ph, %do_nref_ref_common ], [ %next.1.ph, %if.then2322 ], [ %next.1.ph, %if.end2357 ], [ %next.1.ph, %cond.true2375 ], [ %next.1.ph, %cond.false2378 ], [ %next.1.ph, %land.lhs.true2345 ], [ %next.1.ph, %lor.lhs.false2349 ], [ %next.1.ph, %S_reg_check_named_buff_matched.exit ], [ %next.1.ph, %if.end5839 ], [ %next.1.ph, %do.end3434 ], [ %next.1.ph, %if.then3635 ], [ %next.1.ph, %sw.bb3622 ], [ %next.1.ph, %if.then3670 ], [ %next.1.ph, %do.end3659 ], [ %next.1.ph, %if.then3759 ], [ %next.1.ph, %if.end3752 ], [ %next.1.ph, %for.end3866 ], [ %next.1.ph, %cleanup5433 ], [ %next.1.ph, %cleanup5072 ], [ %next.1.ph, %if.end5772 ], [ %next.1.ph, %cleanup5144 ], [ %next.1.ph, %if.end5468 ], [ %next.1.ph, %if.else5944 ], [ %next.1.ph, %cond.end6059 ], [ %next.1.ph, %if.end6140 ], [ %next.1.ph, %cond.end6307 ], [ %next.0, %while.end6374 ], [ %next.1.ph, %do.end3199 ], [ %next.1.ph, %sw.bb3829 ], [ %next.1.ph, %lor.lhs.false3874 ], [ %next.1.ph, %if.then3538 ], [ %next.1.ph, %if.then4497 ], [ %next.1.ph, %land.lhs.true4552 ], [ %next.1.ph, %if.else4929 ], [ %next.1.ph, %if.else5898 ], [ %next.1.ph, %no_silent.critedge9407 ], [ %next.1.ph, %if.then238 ], [ %next.1.ph, %no_silent.critedge ], [ %next.1.ph, %no_silent.loopexit ], [ %next.1.ph, %cleanup.cont5478 ], [ %next.1.ph, %no_silent.loopexit12316 ]
  %scan.18 = phi ptr [ %scan.112541, %if.then6346 ], [ %scan.1.lcssa12435, %sw.bb ], [ %scan.1.lcssa12436, %lor.lhs.false ], [ %scan.1.lcssa12436, %land.lhs.true ], [ %scan.1.lcssa12437, %sw.bb59 ], [ %scan.1.lcssa12439, %sw.bb71 ], [ %scan.1.lcssa12440, %sw.bb78 ], [ %scan.1.lcssa12441, %sw.bb86 ], [ %scan.1.lcssa12442, %sw.bb102 ], [ %scan.1.lcssa12443, %sw.bb107 ], [ %scan.1.lcssa12444, %sw.bb112 ], [ %scan.1.lcssa12445, %sw.bb117 ], [ %scan.1.lcssa12446, %land.lhs.true128 ], [ %scan.1.lcssa12448, %if.end559 ], [ %scan.1.lcssa12449, %cleanup863 ], [ %scan.112543, %if.then896 ], [ %scan.112544, %if.end924 ], [ %scan.112544, %land.lhs.true935 ], [ %scan.112544, %land.lhs.true916 ], [ %scan.1.lcssa12451, %sw.bb867 ], [ %scan.112545, %if.end1678 ], [ %scan.112548, %if.end1221 ], [ %scan.112550, %cond.end1260 ], [ %scan.1.lcssa12463, %sw.bb1685 ], [ %scan.1.lcssa12463, %if.then1691 ], [ %scan.1.lcssa12463, %cond.true1706 ], [ %scan.1.lcssa12463, %cond.false1710 ], [ %scan.112554, %sw.bb1730 ], [ %scan.112554, %if.then1756 ], [ %scan.112551, %if.end1916 ], [ %scan.112551, %sw.default ], [ %scan.112551, %cond.end2008 ], [ %scan.112551, %cond.end2091 ], [ %scan.112551, %cond.end2156 ], [ %scan.112551, %land.end2180 ], [ %scan.112554, %if.then1740 ], [ %scan.112552, %utf8_posix ], [ %scan.112552, %land.rhs1875 ], [ %scan.112552, %land.end1849 ], [ %scan.112556, %posixa ], [ %scan.112555, %land.end1817 ], [ %scan.1.lcssa12468, %sw.bb1785 ], [ %scan.1.lcssa12472, %sw.bb2201 ], [ %scan.112557, %do_nref_ref_common ], [ %scan.112557, %if.then2322 ], [ %scan.112557, %if.end2357 ], [ %scan.112557, %cond.true2375 ], [ %scan.112557, %cond.false2378 ], [ %scan.112557, %land.lhs.true2345 ], [ %scan.112557, %lor.lhs.false2349 ], [ %scan.112559, %S_reg_check_named_buff_matched.exit ], [ %scan.112560, %if.end5839 ], [ %scan.1.lcssa12499, %do.end3434 ], [ %scan.1.lcssa12502, %if.then3635 ], [ %scan.1.lcssa12502, %sw.bb3622 ], [ %scan.1.lcssa12503, %if.then3670 ], [ %scan.1.lcssa12503, %do.end3659 ], [ %scan.1.lcssa12505, %if.then3759 ], [ %scan.1.lcssa12505, %if.end3752 ], [ null, %for.end3866 ], [ %scan.7, %cleanup5433 ], [ %scan.6, %cleanup5072 ], [ %scan.12, %if.end5772 ], [ %scan.6, %cleanup5144 ], [ %scan.1.lcssa12518, %if.end5468 ], [ %scan.112563, %if.else5944 ], [ %scan.1.lcssa12533, %cond.end6059 ], [ %scan.1.lcssa12535, %if.end6140 ], [ %scan.1.lcssa12536, %cond.end6307 ], [ null, %while.end6374 ], [ %scan.1.lcssa12487, %do.end3199 ], [ %scan.1.lcssa12509, %sw.bb3829 ], [ %828, %lor.lhs.false3874 ], [ %scan.1.lcssa12500, %if.then3538 ], [ %scan.5.lcssa, %if.then4497 ], [ %scan.1.lcssa12537, %land.lhs.true4552 ], [ %scan.6, %if.else4929 ], [ %scan.112562, %if.else5898 ], [ %scan.1.lcssa12536, %no_silent.critedge9407 ], [ %scan.112542, %if.then238 ], [ %scan.112542, %no_silent.critedge ], [ %scan.18.ph, %no_silent.loopexit ], [ %scan.1.lcssa12518, %cleanup.cont5478 ], [ %scan.1.lcssa12529, %no_silent.loopexit12316 ]
  %st.4 = phi ptr [ %st.1.ph, %if.then6346 ], [ %st.1.ph, %sw.bb ], [ %st.1.ph, %lor.lhs.false ], [ %st.1.ph, %land.lhs.true ], [ %st.1.ph, %sw.bb59 ], [ %st.1.ph, %sw.bb71 ], [ %st.1.ph, %sw.bb78 ], [ %st.1.ph, %sw.bb86 ], [ %st.1.ph, %sw.bb102 ], [ %st.1.ph, %sw.bb107 ], [ %st.1.ph, %sw.bb112 ], [ %st.1.ph, %sw.bb117 ], [ %st.1.ph, %land.lhs.true128 ], [ %st.1.ph, %if.end559 ], [ %st.1.ph, %cleanup863 ], [ %st.1.ph, %if.then896 ], [ %st.1.ph, %if.end924 ], [ %st.1.ph, %land.lhs.true935 ], [ %st.1.ph, %land.lhs.true916 ], [ %st.1.ph, %sw.bb867 ], [ %st.1.ph, %if.end1678 ], [ %st.1.ph, %if.end1221 ], [ %st.1.ph, %cond.end1260 ], [ %st.1.ph, %sw.bb1685 ], [ %st.1.ph, %if.then1691 ], [ %st.1.ph, %cond.true1706 ], [ %st.1.ph, %cond.false1710 ], [ %st.1.ph, %sw.bb1730 ], [ %st.1.ph, %if.then1756 ], [ %st.1.ph, %if.end1916 ], [ %st.1.ph, %sw.default ], [ %st.1.ph, %cond.end2008 ], [ %st.1.ph, %cond.end2091 ], [ %st.1.ph, %cond.end2156 ], [ %st.1.ph, %land.end2180 ], [ %st.1.ph, %if.then1740 ], [ %st.1.ph, %utf8_posix ], [ %st.1.ph, %land.rhs1875 ], [ %st.1.ph, %land.end1849 ], [ %st.1.ph, %posixa ], [ %st.1.ph, %land.end1817 ], [ %st.1.ph, %sw.bb1785 ], [ %st.1.ph, %sw.bb2201 ], [ %st.1.ph, %do_nref_ref_common ], [ %st.1.ph, %if.then2322 ], [ %st.1.ph, %if.end2357 ], [ %st.1.ph, %cond.true2375 ], [ %st.1.ph, %cond.false2378 ], [ %st.1.ph, %land.lhs.true2345 ], [ %st.1.ph, %lor.lhs.false2349 ], [ %st.1.ph, %S_reg_check_named_buff_matched.exit ], [ %st.1.ph, %if.end5839 ], [ %st.1.ph, %do.end3434 ], [ %st.1.ph, %if.then3635 ], [ %st.1.ph, %sw.bb3622 ], [ %st.1.ph, %if.then3670 ], [ %st.1.ph, %do.end3659 ], [ %st.1.ph, %if.then3759 ], [ %st.1.ph, %if.end3752 ], [ %st.1.ph, %for.end3866 ], [ %st.1.ph, %cleanup5433 ], [ %st.1.ph, %cleanup5072 ], [ %st.1.ph, %if.end5772 ], [ %st.1.ph, %cleanup5144 ], [ %st.1.ph, %if.end5468 ], [ %st.1.ph, %if.else5944 ], [ %st.1.ph, %cond.end6059 ], [ %st.1.ph, %if.end6140 ], [ %st.1.ph, %cond.end6307 ], [ %st.0, %while.end6374 ], [ %st.1.ph, %do.end3199 ], [ %st.1.ph, %sw.bb3829 ], [ %st.1.ph, %lor.lhs.false3874 ], [ %st.1.ph, %if.then3538 ], [ %st.1.ph, %if.then4497 ], [ %st.1.ph, %land.lhs.true4552 ], [ %st.1.ph, %if.else4929 ], [ %st.1.ph, %if.else5898 ], [ %st.1.ph, %no_silent.critedge9407 ], [ %st.1.ph, %if.then238 ], [ %st.1.ph, %no_silent.critedge ], [ %st.1.ph, %no_silent.loopexit ], [ %st.1.ph, %cleanup.cont5478 ], [ %st.1.ph, %no_silent.loopexit12316 ]
  %rexi.5 = phi ptr [ %rexi.1.ph, %if.then6346 ], [ %rexi.1.ph, %sw.bb ], [ %rexi.1.ph, %lor.lhs.false ], [ %rexi.1.ph, %land.lhs.true ], [ %rexi.1.ph, %sw.bb59 ], [ %rexi.1.ph, %sw.bb71 ], [ %rexi.1.ph, %sw.bb78 ], [ %rexi.1.ph, %sw.bb86 ], [ %rexi.1.ph, %sw.bb102 ], [ %rexi.1.ph, %sw.bb107 ], [ %rexi.1.ph, %sw.bb112 ], [ %rexi.1.ph, %sw.bb117 ], [ %rexi.1.ph, %land.lhs.true128 ], [ %rexi.1.ph, %if.end559 ], [ %rexi.1.ph, %cleanup863 ], [ %rexi.1.ph, %if.then896 ], [ %rexi.1.ph, %if.end924 ], [ %rexi.1.ph, %land.lhs.true935 ], [ %rexi.1.ph, %land.lhs.true916 ], [ %rexi.1.ph, %sw.bb867 ], [ %rexi.1.ph, %if.end1678 ], [ %rexi.1.ph, %if.end1221 ], [ %rexi.1.ph, %cond.end1260 ], [ %rexi.1.ph, %sw.bb1685 ], [ %rexi.1.ph, %if.then1691 ], [ %rexi.1.ph, %cond.true1706 ], [ %rexi.1.ph, %cond.false1710 ], [ %rexi.1.ph, %sw.bb1730 ], [ %rexi.1.ph, %if.then1756 ], [ %rexi.1.ph, %if.end1916 ], [ %rexi.1.ph, %sw.default ], [ %rexi.1.ph, %cond.end2008 ], [ %rexi.1.ph, %cond.end2091 ], [ %rexi.1.ph, %cond.end2156 ], [ %rexi.1.ph, %land.end2180 ], [ %rexi.1.ph, %if.then1740 ], [ %rexi.1.ph, %utf8_posix ], [ %rexi.1.ph, %land.rhs1875 ], [ %rexi.1.ph, %land.end1849 ], [ %rexi.1.ph, %posixa ], [ %rexi.1.ph, %land.end1817 ], [ %rexi.1.ph, %sw.bb1785 ], [ %rexi.1.ph, %sw.bb2201 ], [ %rexi.1.ph, %do_nref_ref_common ], [ %rexi.1.ph, %if.then2322 ], [ %rexi.1.ph, %if.end2357 ], [ %rexi.1.ph, %cond.true2375 ], [ %rexi.1.ph, %cond.false2378 ], [ %rexi.1.ph, %land.lhs.true2345 ], [ %rexi.1.ph, %lor.lhs.false2349 ], [ %rexi.1.ph, %S_reg_check_named_buff_matched.exit ], [ %rexi.1.ph, %if.end5839 ], [ %rexi.1.ph, %do.end3434 ], [ %rexi.1.ph, %if.then3635 ], [ %rexi.1.ph, %sw.bb3622 ], [ %rexi.1.ph, %if.then3670 ], [ %rexi.1.ph, %do.end3659 ], [ %rexi.1.ph, %if.then3759 ], [ %rexi.1.ph, %if.end3752 ], [ %rexi.1.ph, %for.end3866 ], [ %rexi.1.ph, %cleanup5433 ], [ %rexi.1.ph, %cleanup5072 ], [ %rexi.1.ph, %if.end5772 ], [ %rexi.1.ph, %cleanup5144 ], [ %rexi.1.ph, %if.end5468 ], [ %rexi.1.ph, %if.else5944 ], [ %rexi.1.ph, %cond.end6059 ], [ %rexi.1.ph, %if.end6140 ], [ %rexi.1.ph, %cond.end6307 ], [ %rexi.0, %while.end6374 ], [ %673, %do.end3199 ], [ %rexi.1.ph, %sw.bb3829 ], [ %rexi.1.ph, %lor.lhs.false3874 ], [ %rexi.1.ph, %if.then3538 ], [ %rexi.1.ph, %if.then4497 ], [ %rexi.1.ph, %land.lhs.true4552 ], [ %rexi.1.ph, %if.else4929 ], [ %rexi.1.ph, %if.else5898 ], [ %rexi.1.ph, %no_silent.critedge9407 ], [ %rexi.1.ph, %if.then238 ], [ %rexi.1.ph, %no_silent.critedge ], [ %rexi.1.ph, %no_silent.loopexit ], [ %rexi.1.ph, %cleanup.cont5478 ], [ %rexi.1.ph, %no_silent.loopexit12316 ]
  %rex.5 = phi ptr [ %rex.1.ph, %if.then6346 ], [ %rex.1.ph, %sw.bb ], [ %rex.1.ph, %lor.lhs.false ], [ %rex.1.ph, %land.lhs.true ], [ %rex.1.ph, %sw.bb59 ], [ %rex.1.ph, %sw.bb71 ], [ %rex.1.ph, %sw.bb78 ], [ %rex.1.ph, %sw.bb86 ], [ %rex.1.ph, %sw.bb102 ], [ %rex.1.ph, %sw.bb107 ], [ %rex.1.ph, %sw.bb112 ], [ %rex.1.ph, %sw.bb117 ], [ %rex.1.ph, %land.lhs.true128 ], [ %rex.1.ph, %if.end559 ], [ %rex.1.ph, %cleanup863 ], [ %rex.1.ph, %if.then896 ], [ %rex.1.ph, %if.end924 ], [ %rex.1.ph, %land.lhs.true935 ], [ %rex.1.ph, %land.lhs.true916 ], [ %rex.1.ph, %sw.bb867 ], [ %rex.1.ph, %if.end1678 ], [ %rex.1.ph, %if.end1221 ], [ %rex.1.ph, %cond.end1260 ], [ %rex.1.ph, %sw.bb1685 ], [ %rex.1.ph, %if.then1691 ], [ %rex.1.ph, %cond.true1706 ], [ %rex.1.ph, %cond.false1710 ], [ %rex.1.ph, %sw.bb1730 ], [ %rex.1.ph, %if.then1756 ], [ %rex.1.ph, %if.end1916 ], [ %rex.1.ph, %sw.default ], [ %rex.1.ph, %cond.end2008 ], [ %rex.1.ph, %cond.end2091 ], [ %rex.1.ph, %cond.end2156 ], [ %rex.1.ph, %land.end2180 ], [ %rex.1.ph, %if.then1740 ], [ %rex.1.ph, %utf8_posix ], [ %rex.1.ph, %land.rhs1875 ], [ %rex.1.ph, %land.end1849 ], [ %rex.1.ph, %posixa ], [ %rex.1.ph, %land.end1817 ], [ %rex.1.ph, %sw.bb1785 ], [ %rex.1.ph, %sw.bb2201 ], [ %rex.1.ph, %do_nref_ref_common ], [ %rex.1.ph, %if.then2322 ], [ %rex.1.ph, %if.end2357 ], [ %rex.1.ph, %cond.true2375 ], [ %rex.1.ph, %cond.false2378 ], [ %rex.1.ph, %land.lhs.true2345 ], [ %rex.1.ph, %lor.lhs.false2349 ], [ %rex.1.ph, %S_reg_check_named_buff_matched.exit ], [ %rex.1.ph, %if.end5839 ], [ %rex.1.ph, %do.end3434 ], [ %rex.1.ph, %if.then3635 ], [ %rex.1.ph, %sw.bb3622 ], [ %rex.1.ph, %if.then3670 ], [ %rex.1.ph, %do.end3659 ], [ %rex.1.ph, %if.then3759 ], [ %rex.1.ph, %if.end3752 ], [ %rex.1.ph, %for.end3866 ], [ %rex.1.ph, %cleanup5433 ], [ %rex.1.ph, %cleanup5072 ], [ %rex.1.ph, %if.end5772 ], [ %rex.1.ph, %cleanup5144 ], [ %rex.1.ph, %if.end5468 ], [ %rex.1.ph, %if.else5944 ], [ %rex.1.ph, %cond.end6059 ], [ %rex.1.ph, %if.end6140 ], [ %rex.1.ph, %cond.end6307 ], [ %rex.0, %while.end6374 ], [ %.val8740, %do.end3199 ], [ %rex.1.ph, %sw.bb3829 ], [ %rex.1.ph, %lor.lhs.false3874 ], [ %rex.1.ph, %if.then3538 ], [ %rex.1.ph, %if.then4497 ], [ %rex.1.ph, %land.lhs.true4552 ], [ %rex.1.ph, %if.else4929 ], [ %rex.1.ph, %if.else5898 ], [ %rex.1.ph, %no_silent.critedge9407 ], [ %rex.1.ph, %if.then238 ], [ %rex.1.ph, %no_silent.critedge ], [ %rex.1.ph, %no_silent.loopexit ], [ %rex.1.ph, %cleanup.cont5478 ], [ %rex.1.ph, %no_silent.loopexit12316 ]
  %rex_sv.5 = phi ptr [ %rex_sv.1.ph, %if.then6346 ], [ %rex_sv.1.ph, %sw.bb ], [ %rex_sv.1.ph, %lor.lhs.false ], [ %rex_sv.1.ph, %land.lhs.true ], [ %rex_sv.1.ph, %sw.bb59 ], [ %rex_sv.1.ph, %sw.bb71 ], [ %rex_sv.1.ph, %sw.bb78 ], [ %rex_sv.1.ph, %sw.bb86 ], [ %rex_sv.1.ph, %sw.bb102 ], [ %rex_sv.1.ph, %sw.bb107 ], [ %rex_sv.1.ph, %sw.bb112 ], [ %rex_sv.1.ph, %sw.bb117 ], [ %rex_sv.1.ph, %land.lhs.true128 ], [ %rex_sv.1.ph, %if.end559 ], [ %rex_sv.1.ph, %cleanup863 ], [ %rex_sv.1.ph, %if.then896 ], [ %rex_sv.1.ph, %if.end924 ], [ %rex_sv.1.ph, %land.lhs.true935 ], [ %rex_sv.1.ph, %land.lhs.true916 ], [ %rex_sv.1.ph, %sw.bb867 ], [ %rex_sv.1.ph, %if.end1678 ], [ %rex_sv.1.ph, %if.end1221 ], [ %rex_sv.1.ph, %cond.end1260 ], [ %rex_sv.1.ph, %sw.bb1685 ], [ %rex_sv.1.ph, %if.then1691 ], [ %rex_sv.1.ph, %cond.true1706 ], [ %rex_sv.1.ph, %cond.false1710 ], [ %rex_sv.1.ph, %sw.bb1730 ], [ %rex_sv.1.ph, %if.then1756 ], [ %rex_sv.1.ph, %if.end1916 ], [ %rex_sv.1.ph, %sw.default ], [ %rex_sv.1.ph, %cond.end2008 ], [ %rex_sv.1.ph, %cond.end2091 ], [ %rex_sv.1.ph, %cond.end2156 ], [ %rex_sv.1.ph, %land.end2180 ], [ %rex_sv.1.ph, %if.then1740 ], [ %rex_sv.1.ph, %utf8_posix ], [ %rex_sv.1.ph, %land.rhs1875 ], [ %rex_sv.1.ph, %land.end1849 ], [ %rex_sv.1.ph, %posixa ], [ %rex_sv.1.ph, %land.end1817 ], [ %rex_sv.1.ph, %sw.bb1785 ], [ %rex_sv.1.ph, %sw.bb2201 ], [ %rex_sv.1.ph, %do_nref_ref_common ], [ %rex_sv.1.ph, %if.then2322 ], [ %rex_sv.1.ph, %if.end2357 ], [ %rex_sv.1.ph, %cond.true2375 ], [ %rex_sv.1.ph, %cond.false2378 ], [ %rex_sv.1.ph, %land.lhs.true2345 ], [ %rex_sv.1.ph, %lor.lhs.false2349 ], [ %rex_sv.1.ph, %S_reg_check_named_buff_matched.exit ], [ %rex_sv.1.ph, %if.end5839 ], [ %rex_sv.1.ph, %do.end3434 ], [ %rex_sv.1.ph, %if.then3635 ], [ %rex_sv.1.ph, %sw.bb3622 ], [ %rex_sv.1.ph, %if.then3670 ], [ %rex_sv.1.ph, %do.end3659 ], [ %rex_sv.1.ph, %if.then3759 ], [ %rex_sv.1.ph, %if.end3752 ], [ %rex_sv.1.ph, %for.end3866 ], [ %rex_sv.1.ph, %cleanup5433 ], [ %rex_sv.1.ph, %cleanup5072 ], [ %rex_sv.1.ph, %if.end5772 ], [ %rex_sv.1.ph, %cleanup5144 ], [ %rex_sv.1.ph, %if.end5468 ], [ %rex_sv.1.ph, %if.else5944 ], [ %rex_sv.1.ph, %cond.end6059 ], [ %rex_sv.1.ph, %if.end6140 ], [ %rex_sv.1.ph, %cond.end6307 ], [ %rex_sv.0, %while.end6374 ], [ %663, %do.end3199 ], [ %rex_sv.1.ph, %sw.bb3829 ], [ %rex_sv.1.ph, %lor.lhs.false3874 ], [ %rex_sv.1.ph, %if.then3538 ], [ %rex_sv.1.ph, %if.then4497 ], [ %rex_sv.1.ph, %land.lhs.true4552 ], [ %rex_sv.1.ph, %if.else4929 ], [ %rex_sv.1.ph, %if.else5898 ], [ %rex_sv.1.ph, %no_silent.critedge9407 ], [ %rex_sv.1.ph, %if.then238 ], [ %rex_sv.1.ph, %no_silent.critedge ], [ %rex_sv.1.ph, %no_silent.loopexit ], [ %rex_sv.1.ph, %cleanup.cont5478 ], [ %rex_sv.1.ph, %no_silent.loopexit12316 ]
  %loadedv6436 = trunc i8 %no_final.6 to i1
  br i1 %loadedv6436, label %if.then6437, label %if.end6441

if.then6437:                                      ; preds = %no_silent
  %tobool6438.not = icmp eq ptr %yes_state.4, null
  br i1 %tobool6438.not, label %final_exit.loopexit, label %yes

if.end6441:                                       ; preds = %no_silent
  %tobool6442.not = icmp eq i32 %depth.4, 0
  br i1 %tobool6442.not, label %final_exit.loopexit, label %if.then6443

if.then6443:                                      ; preds = %if.end6441
  %incdec.ptr6444 = getelementptr inbounds i8, ptr %st.4, i64 -120
  %1225 = load ptr, ptr @PL_regmatch_slab, align 8
  %cmp6447 = icmp ult ptr %incdec.ptr6444, %1225
  br i1 %cmp6447, label %if.then6449, label %if.end6453

if.then6449:                                      ; preds = %if.then6443
  %prev6450 = getelementptr inbounds nuw i8, ptr %1225, i64 3960
  %1226 = load ptr, ptr %prev6450, align 8
  store ptr %1226, ptr @PL_regmatch_slab, align 8
  %arrayidx6452 = getelementptr inbounds nuw i8, ptr %1226, i64 3840
  br label %if.end6453

if.end6453:                                       ; preds = %if.then6449, %if.then6443
  %st.5 = phi ptr [ %arrayidx6452, %if.then6449 ], [ %incdec.ptr6444, %if.then6443 ]
  store ptr %st.5, ptr @PL_regmatch_state, align 8
  %locinput6454 = getelementptr inbounds nuw i8, ptr %st.5, i64 8
  %1227 = load ptr, ptr %locinput6454, align 8
  %dec6455 = add nsw i32 %depth.4, -1
  %cmp6456 = icmp eq ptr %yes_state.4, %st.5
  br i1 %cmp6456, label %if.then6458, label %if.end6461

if.then6458:                                      ; preds = %if.end6453
  %u6459 = getelementptr inbounds nuw i8, ptr %st.5, i64 16
  %1228 = load ptr, ptr %u6459, align 8
  br label %if.end6461

if.end6461:                                       ; preds = %if.then6458, %if.end6453
  %yes_state.5 = phi ptr [ %1228, %if.then6458 ], [ %yes_state.4, %if.end6453 ]
  %1229 = load i32, ptr %st.5, align 8
  %add6463 = add nsw i32 %1229, 1
  br label %reenter_switch.preheader

final_exit.loopexit:                              ; preds = %if.end6441, %if.then6437
  %last_pushed_cv.0.ph.lcssa = phi ptr [ %last_pushed_cv.0.ph, %if.then6437 ], [ %last_pushed_cv.0.ph, %if.end6441 ]
  %multicall_oldcatch.0.ph.lcssa = phi i8 [ %multicall_oldcatch.0.ph, %if.then6437 ], [ %multicall_oldcatch.0.ph, %if.end6441 ]
  %multicall_cv.0.ph.lcssa = phi ptr [ %multicall_cv.0.ph, %if.then6437 ], [ %multicall_cv.0.ph, %if.end6441 ]
  %sv_yes_mark.6.lcssa = phi ptr [ %sv_yes_mark.6, %if.then6437 ], [ %sv_yes_mark.6, %if.end6441 ]
  %sv_commit.8.lcssa = phi ptr [ %sv_commit.8, %if.then6437 ], [ %sv_commit.8, %if.end6441 ]
  %locinput.32.lcssa = phi ptr [ %locinput.32, %if.then6437 ], [ %locinput.32, %if.end6441 ]
  %rex.5.lcssa = phi ptr [ %rex.5, %if.then6437 ], [ %rex.5, %if.end6441 ]
  br label %final_exit

final_exit:                                       ; preds = %final_exit.loopexit, %if.then6430, %if.then6424, %if.end6421
  %last_pushed_cv.0.ph14873 = phi ptr [ %last_pushed_cv.0.ph.lcssa14839, %if.then6424 ], [ %last_pushed_cv.0.ph.lcssa14839, %if.then6430 ], [ %last_pushed_cv.0.ph.lcssa14839, %if.end6421 ], [ %last_pushed_cv.0.ph.lcssa, %final_exit.loopexit ]
  %multicall_oldcatch.0.ph14800 = phi i8 [ %multicall_oldcatch.0.ph.lcssa14766, %if.then6424 ], [ %multicall_oldcatch.0.ph.lcssa14766, %if.then6430 ], [ %multicall_oldcatch.0.ph.lcssa14766, %if.end6421 ], [ %multicall_oldcatch.0.ph.lcssa, %final_exit.loopexit ]
  %multicall_cv.0.ph14763 = phi ptr [ %multicall_cv.0.ph.lcssa14729, %if.then6424 ], [ %multicall_cv.0.ph.lcssa14729, %if.then6430 ], [ %multicall_cv.0.ph.lcssa14729, %if.end6421 ], [ %multicall_cv.0.ph.lcssa, %final_exit.loopexit ]
  %sv_yes_mark.7 = phi ptr [ %sv_yes_mark.5.lcssa, %if.then6424 ], [ %sv_yes_mark.5.lcssa, %if.then6430 ], [ %sv_yes_mark.5.lcssa, %if.end6421 ], [ %sv_yes_mark.6.lcssa, %final_exit.loopexit ]
  %sv_commit.9 = phi ptr [ %sv_commit.7.lcssa, %if.then6424 ], [ %sv_commit.7.lcssa, %if.then6430 ], [ %sv_commit.7.lcssa, %if.end6421 ], [ %sv_commit.8.lcssa, %final_exit.loopexit ]
  %result.0 = phi i1 [ true, %if.then6424 ], [ true, %if.then6430 ], [ true, %if.end6421 ], [ false, %final_exit.loopexit ]
  %locinput.33 = phi ptr [ %locinput.30.lcssa, %if.then6424 ], [ %locinput.30.lcssa, %if.then6430 ], [ %locinput.30.lcssa, %if.end6421 ], [ %locinput.32.lcssa, %final_exit.loopexit ]
  %rex.6 = phi ptr [ %rex.4.lcssa, %if.then6424 ], [ %rex.4.lcssa, %if.then6430 ], [ %rex.4.lcssa, %if.end6421 ], [ %rex.5.lcssa, %final_exit.loopexit ]
  %intflags6465 = getelementptr inbounds nuw i8, ptr %rex.6, i64 100
  %1230 = load i32, ptr %intflags6465, align 4
  %and6466 = and i32 %1230, 8
  %tobool6467.not = icmp eq i32 %and6466, 0
  br i1 %tobool6467.not, label %if.end6482, label %if.then6468

if.then6468:                                      ; preds = %final_exit
  %call6469 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.18, i32 noundef 1) #10
  %call6471 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.13, i32 noundef 1) #10
  %tobool6474.not = icmp eq ptr %sv_yes_mark.7, null
  %spec.store.select6654 = select i1 %tobool6474.not, ptr @PL_sv_yes, ptr %sv_yes_mark.7
  %tobool6478.not = icmp eq ptr %sv_commit.9, null
  %spec.store.select6655 = select i1 %tobool6478.not, ptr @PL_sv_yes, ptr %sv_commit.9
  %sv_yes_mark.8 = select i1 %result.0, ptr %spec.store.select6654, ptr @PL_sv_no
  %sv_commit.10 = select i1 %result.0, ptr @PL_sv_no, ptr %spec.store.select6655
  call void @Perl_sv_setsv_flags(ptr noundef %call6469, ptr noundef nonnull %sv_commit.10, i32 noundef 1538) #10
  call void @Perl_sv_setsv_flags(ptr noundef %call6471, ptr noundef nonnull %sv_yes_mark.8, i32 noundef 1538) #10
  br label %if.end6482

if.end6482:                                       ; preds = %if.then6468, %final_exit
  %tobool6483.not = icmp eq ptr %last_pushed_cv.0.ph14873, null
  br i1 %tobool6483.not, label %if.end6560, label %if.then6484

if.then6484:                                      ; preds = %if.end6482
  %1231 = load ptr, ptr @PL_curstackinfo, align 8
  %si_cxstack6487 = getelementptr inbounds nuw i8, ptr %1231, i64 8
  %1232 = load ptr, ptr %si_cxstack6487, align 8
  %si_cxix6488 = getelementptr inbounds nuw i8, ptr %1231, i64 32
  %1233 = load i32, ptr %si_cxix6488, align 8
  %idxprom6489 = sext i32 %1233 to i64
  %arrayidx6490 = getelementptr inbounds %struct.context, ptr %1232, i64 %idxprom6489
  %olddepth6493 = getelementptr inbounds nuw i8, ptr %arrayidx6490, i64 64
  %1234 = load i32, ptr %olddepth6493, align 8
  %multicall_cv.0.val = load ptr, ptr %multicall_cv.0.ph14763, align 8
  %xcv_depth.i9263 = getelementptr inbounds nuw i8, ptr %multicall_cv.0.val, i64 96
  store i32 %1234, ptr %xcv_depth.i9263, align 4
  %tobool6495.not = icmp eq i32 %1234, 0
  br i1 %tobool6495.not, label %if.then.i9265, label %if.end6500

if.then.i9265:                                    ; preds = %if.then6484
  %sv_refcnt.i9266 = getelementptr inbounds nuw i8, ptr %multicall_cv.0.ph14763, i64 8
  %1235 = load i32, ptr %sv_refcnt.i9266, align 8
  %cmp1.i9267 = icmp ugt i32 %1235, 1
  br i1 %cmp1.i9267, label %if.then4.i9269, label %if.else.i9268

if.then4.i9269:                                   ; preds = %if.then.i9265
  %sub.i9270 = add i32 %1235, -1
  store i32 %sub.i9270, ptr %sv_refcnt.i9266, align 8
  br label %if.end6500

if.else.i9268:                                    ; preds = %if.then.i9265
  call void @Perl_sv_free2(ptr noundef nonnull %multicall_cv.0.ph14763, i32 noundef %1235) #10
  br label %if.end6500

if.end6500:                                       ; preds = %if.else.i9268, %if.then4.i9269, %if.then6484
  %1236 = load ptr, ptr @PL_curstackinfo, align 8
  %si_cxstack6501 = getelementptr inbounds nuw i8, ptr %1236, i64 8
  %1237 = load ptr, ptr %si_cxstack6501, align 8
  %si_cxix6502 = getelementptr inbounds nuw i8, ptr %1236, i64 32
  %1238 = load i32, ptr %si_cxix6502, align 8
  %dec6503 = add nsw i32 %1238, -1
  store i32 %dec6503, ptr %si_cxix6502, align 8
  %idxprom6504 = sext i32 %1238 to i64
  %arrayidx6505 = getelementptr inbounds %struct.context, ptr %1237, i64 %idxprom6504
  %blku_oldcop6511 = getelementptr inbounds nuw i8, ptr %arrayidx6505, i64 8
  %1239 = load ptr, ptr %blku_oldcop6511, align 8
  store ptr %1239, ptr @PL_curcop, align 8
  %1240 = load ptr, ptr @PL_markstack, align 8
  %blku_oldmarksp6513 = getelementptr inbounds nuw i8, ptr %arrayidx6505, i64 16
  %1241 = load i32, ptr %blku_oldmarksp6513, align 8
  %idx.ext6514 = sext i32 %1241 to i64
  %add.ptr6515 = getelementptr inbounds i32, ptr %1240, i64 %idx.ext6514
  store ptr %add.ptr6515, ptr @PL_markstack_ptr, align 8
  %blku_oldscopesp6517 = getelementptr inbounds nuw i8, ptr %arrayidx6505, i64 20
  %1242 = load i32, ptr %blku_oldscopesp6517, align 4
  store i32 %1242, ptr @PL_scopestack_ix, align 4
  %blku_oldpm6519 = getelementptr inbounds nuw i8, ptr %arrayidx6505, i64 24
  %1243 = load ptr, ptr %blku_oldpm6519, align 8
  store ptr %1243, ptr @PL_curpm, align 8
  %1244 = load ptr, ptr @PL_stack_sp, align 8
  %si_prev6526 = getelementptr inbounds nuw i8, ptr %1236, i64 16
  %1245 = load ptr, ptr %si_prev6526, align 8
  %tobool6527.not = icmp eq ptr %1245, null
  br i1 %tobool6527.not, label %if.then6528, label %do.body6530

if.then6528:                                      ; preds = %if.end6500
  call void @Perl_croak_popstack() #10
  br label %do.body6530

do.body6530:                                      ; preds = %if.then6528, %if.end6500
  %1246 = load ptr, ptr @PL_stack_base, align 8
  %sub.ptr.lhs.cast6531 = ptrtoint ptr %1244 to i64
  %sub.ptr.rhs.cast6532 = ptrtoint ptr %1246 to i64
  %sub.ptr.sub6533 = sub i64 %sub.ptr.lhs.cast6531, %sub.ptr.rhs.cast6532
  %sub.ptr.div6534 = ashr exact i64 %sub.ptr.sub6533, 3
  %1247 = load ptr, ptr @PL_curstack, align 8
  %1248 = load ptr, ptr %1247, align 8
  %xav_fill6536 = getelementptr inbounds nuw i8, ptr %1248, i64 16
  store i64 %sub.ptr.div6534, ptr %xav_fill6536, align 8
  %1249 = load ptr, ptr %1245, align 8
  %sv_u6538 = getelementptr inbounds nuw i8, ptr %1249, i64 16
  %1250 = load ptr, ptr %sv_u6538, align 8
  store ptr %1250, ptr @PL_stack_base, align 8
  %1251 = load ptr, ptr %1245, align 8
  %1252 = load ptr, ptr %1251, align 8
  %xav_max6541 = getelementptr inbounds nuw i8, ptr %1252, i64 24
  %1253 = load i64, ptr %xav_max6541, align 8
  %add.ptr6542 = getelementptr inbounds ptr, ptr %1250, i64 %1253
  store ptr %add.ptr6542, ptr @PL_stack_max, align 8
  %1254 = load ptr, ptr %1245, align 8
  %1255 = load ptr, ptr %1254, align 8
  %xav_fill6545 = getelementptr inbounds nuw i8, ptr %1255, i64 16
  %1256 = load i64, ptr %xav_fill6545, align 8
  %add.ptr6546 = getelementptr inbounds ptr, ptr %1250, i64 %1256
  store ptr %add.ptr6546, ptr @PL_stack_sp, align 8
  %1257 = load ptr, ptr %1245, align 8
  store ptr %1257, ptr @PL_curstack, align 8
  store ptr %1245, ptr @PL_curstackinfo, align 8
  %1258 = load ptr, ptr @PL_top_env, align 8
  %je_mustcatch6554 = getelementptr inbounds nuw i8, ptr %1258, i64 212
  %storedv6555 = and i8 %multicall_oldcatch.0.ph14800, 1
  store i8 %storedv6555, ptr %je_mustcatch6554, align 4
  call void @Perl_pop_scope() #10
  br label %if.end6560

if.end6560:                                       ; preds = %do.body6530, %if.end6482
  br i1 %result.0, label %cond.true6563, label %cleanup6571

cond.true6563:                                    ; preds = %if.end6560
  %strbeg6564 = getelementptr inbounds nuw i8, ptr %reginfo, i64 8
  %1259 = load ptr, ptr %strbeg6564, align 8
  %sub.ptr.lhs.cast6565 = ptrtoint ptr %locinput.33 to i64
  %sub.ptr.rhs.cast6566 = ptrtoint ptr %1259 to i64
  %sub.ptr.sub6567 = sub i64 %sub.ptr.lhs.cast6565, %sub.ptr.rhs.cast6566
  br label %cleanup6571

cleanup6571:                                      ; preds = %cond.true6563, %if.end6560
  %retval.0 = phi i64 [ %sub.ptr.sub6567, %cond.true6563 ], [ -1, %if.end6560 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %maxopenparen) #10
  ret i64 %retval.0
}

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl__to_uni_fold_flags(i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc i32 @S_regcppush(ptr noundef readonly captures(none), i32 noundef, i32 noundef) unnamed_addr #1

declare ptr @Perl_find_runcv(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_was_lvalue_sub() local_unnamed_addr #2

declare void @Perl_pad_push(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_cxinc() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare hidden fastcc noundef zeroext i1 @S_sv_only_taint_gmagic(ptr readonly captures(none)) unnamed_addr #5

declare ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_save_scalar(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_reg_temp_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare hidden fastcc void @S_regcppop(ptr noundef captures(none) initializes((112, 120)), ptr noundef nonnull captures(none) initializes((0, 4))) unnamed_addr #6

declare ptr @Perl_regnext(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
declare hidden fastcc noundef zeroext i1 @S_setup_EXACTISH_ST_c1_c2(ptr noundef, ptr noundef writeonly captures(none), ptr noundef, ptr noundef writeonly captures(none), ptr noundef, i8, i8) unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden fastcc i32 @S_regrepeat(ptr noundef, ptr noundef nonnull captures(none), ptr noundef, ptr noundef nonnull readonly captures(none), i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @Perl_sv_eq_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #2

declare void @Perl_croak_popstack() local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!0 = !{i8 0, i8 2}
!1 = !{}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = !{ptr @Perl_foldEQ, ptr @Perl_foldEQ_latin1, ptr @Perl_foldEQ_locale}
!13 = distinct !{!13, !3}
!14 = distinct !{!14, !3}
!15 = distinct !{!15, !3}
!16 = distinct !{!16, !3}
!17 = distinct !{!17, !3}
!18 = distinct !{!18, !3}
!19 = distinct !{!19, !3}
!20 = distinct !{!20, !3}
!21 = distinct !{!21, !3}
!22 = distinct !{!22, !3}
!23 = distinct !{!23, !3}
!24 = distinct !{!24, !3}
!25 = distinct !{!25, !3}
!26 = distinct !{!26, !3}
!27 = distinct !{!27, !3}
!28 = distinct !{!28, !3}
!29 = distinct !{!29, !3}
!30 = distinct !{!30, !3}
!31 = distinct !{!31, !3}
!32 = distinct !{!32, !3}
!33 = distinct !{!33, !3}
!34 = distinct !{!34, !3}
!35 = distinct !{!35, !3}
!36 = distinct !{!36, !3}
