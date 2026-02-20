; ModuleID = '/tmp/tmp.dtRv8HJ9a0/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.any = type { ptr }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@PL_savestack = external local_unnamed_addr global ptr, align 8
@PL_localizing = external local_unnamed_addr global i8, align 1
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_comppad = external local_unnamed_addr global ptr, align 8
@PL_compiling = external local_unnamed_addr global %struct.cop, align 8
@PL_hintgv = external local_unnamed_addr global ptr, align 8
@PL_tainted = external global i8, align 1
@.str.3 = external hidden unnamed_addr constant [37 x i8], align 1
@PL_sub_generation = external local_unnamed_addr global i32, align 4
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.4 = external hidden unnamed_addr constant [36 x i8], align 1

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @Perl_leave_scope(i32 noundef %base) local_unnamed_addr #1 {
entry:
  %0 = load i8, ptr @PL_tainted, align 1, !range !0, !noundef !1
  %cmp = icmp slt i32 %base, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i32 %base to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3, i64 noundef %conv) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr @PL_savestack_ix, align 4
  %cmp11267 = icmp sgt i32 %1, %base
  br i1 %cmp11267, label %while.body.preheader, label %while.end742

while.body.preheader:                             ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %sw.epilog741, %while.body.preheader
  %2 = phi i32 [ %190, %sw.epilog741 ], [ %1, %while.body.preheader ]
  %was.01271 = phi i8 [ %was.1, %sw.epilog741 ], [ %0, %while.body.preheader ]
  %arg0.sroa.0.01270 = phi ptr [ %arg0.sroa.0.1, %sw.epilog741 ], [ null, %while.body.preheader ]
  %arg1.sroa.0.01269 = phi ptr [ %arg1.sroa.0.2, %sw.epilog741 ], [ null, %while.body.preheader ]
  %arg2.sroa.0.01268 = phi ptr [ %arg2.sroa.0.2, %sw.epilog741 ], [ null, %while.body.preheader ]
  store i8 0, ptr @PL_tainted, align 1
  %sub = add nsw i32 %2, -1
  %3 = load ptr, ptr @PL_savestack, align 8
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %union.any, ptr %3, i64 %idxprom
  %4 = load i64, ptr %arrayidx, align 8
  %conv3 = trunc i64 %4 to i32
  %and = and i32 %conv3, 63
  %cmp7 = icmp samesign ugt i32 %and, 3
  br i1 %cmp7, label %if.then9, label %if.end25

if.then9:                                         ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8, ptr %arrayidx, i64 -8
  %arg0.sroa.0.0.copyload = load ptr, ptr %incdec.ptr, align 8
  %cmp11 = icmp samesign ugt i32 %and, 22
  br i1 %cmp11, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.then9
  %incdec.ptr14 = getelementptr inbounds i8, ptr %arrayidx, i64 -16
  %arg1.sroa.0.0.copyload = load ptr, ptr %incdec.ptr14, align 8
  %cmp16 = icmp samesign ugt i32 %and, 47
  br i1 %cmp16, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.then13
  %incdec.ptr19 = getelementptr inbounds i8, ptr %arrayidx, i64 -24
  %arg2.sroa.0.0.copyload = load ptr, ptr %incdec.ptr19, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then13, %if.then9
  %p.0 = phi ptr [ %incdec.ptr19, %if.then18 ], [ %incdec.ptr14, %if.then13 ], [ %incdec.ptr, %if.then9 ]
  %arg2.sroa.0.1 = phi ptr [ %arg2.sroa.0.0.copyload, %if.then18 ], [ %arg2.sroa.0.01268, %if.then13 ], [ %arg2.sroa.0.01268, %if.then9 ]
  %arg1.sroa.0.1 = phi ptr [ %arg1.sroa.0.0.copyload, %if.then18 ], [ %arg1.sroa.0.0.copyload, %if.then13 ], [ %arg1.sroa.0.01269, %if.then9 ]
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %p.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 3
  %5 = trunc i64 %sub.ptr.div to i32
  %conv24 = sub i32 %sub, %5
  br label %if.end25

if.end25:                                         ; preds = %if.end21, %while.body
  %ix.0 = phi i32 [ %conv24, %if.end21 ], [ %sub, %while.body ]
  %arg2.sroa.0.2 = phi ptr [ %arg2.sroa.0.1, %if.end21 ], [ %arg2.sroa.0.01268, %while.body ]
  %arg1.sroa.0.2 = phi ptr [ %arg1.sroa.0.1, %if.end21 ], [ %arg1.sroa.0.01269, %while.body ]
  %arg0.sroa.0.1 = phi ptr [ %arg0.sroa.0.0.copyload, %if.end21 ], [ %arg0.sroa.0.01270, %while.body ]
  store i32 %ix.0, ptr @PL_savestack_ix, align 4
  switch i32 %and, label %sw.default739 [
    i32 35, label %sw.bb
    i32 44, label %restore_sv
    i32 43, label %sw.bb33
    i32 26, label %sw.bb43
    i32 40, label %sw.bb48
    i32 29, label %sw.bb53
    i32 27, label %restore_svp
    i32 51, label %sw.bb59
    i32 23, label %sw.bb166
    i32 32, label %sw.bb180
    i32 15, label %sw.bb194
    i32 34, label %sw.bb196
    i32 42, label %sw.bb197
    i32 5, label %sw.bb198
    i32 13, label %sw.bb212
    i32 33, label %sw.bb215
    i32 41, label %sw.bb216
    i32 45, label %sw.bb217
    i32 38, label %sw.bb217
    i32 31, label %sw.bb218
    i32 47, label %sw.bb219
    i32 28, label %sw.bb220
    i32 11, label %sw.bb361
    i32 22, label %sw.bb362
    i32 8, label %sw.bb363
    i32 16, label %sw.bb364
    i32 9, label %sw.bb366
    i32 10, label %sw.bb367
    i32 1, label %sw.bb368
    i32 2, label %sw.bb376
    i32 53, label %sw.bb516
    i32 46, label %sw.bb518
    i32 25, label %sw.bb520
    i32 3, label %sw.bb521
    i32 0, label %sw.bb521
    i32 20, label %sw.bb526
    i32 52, label %sw.bb529
    i32 48, label %sw.bb569
    i32 18, label %sw.bb602
    i32 30, label %sw.bb603
    i32 7, label %sw.bb645
    i32 49, label %sw.bb653
    i32 39, label %sw.bb658
    i32 50, label %sw.bb670
    i32 17, label %sw.bb675
    i32 37, label %sw.bb676
    i32 36, label %sw.bb677
    i32 12, label %sw.bb678
    i32 14, label %sw.bb681
    i32 24, label %sw.bb684
    i32 6, label %sw.bb685
    i32 19, label %sw.bb696
    i32 21, label %sw.bb697
    i32 4, label %sw.bb700
  ]

sw.bb:                                            ; preds = %if.end25
  tail call void @Perl_sv_replace(ptr noundef %arg1.sroa.0.2, ptr noundef %arg0.sroa.0.1) #3
  %sv_flags = getelementptr inbounds nuw i8, ptr %arg1.sroa.0.2, i64 12
  %6 = load i32, ptr %sv_flags, align 4
  %and27 = and i32 %6, 4194304
  %tobool.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %sw.epilog741, label %if.then30

if.then30:                                        ; preds = %sw.bb
  store i8 2, ptr @PL_localizing, align 1
  %call = tail call i32 @Perl_mg_set(ptr noundef nonnull %arg1.sroa.0.2) #3
  store i8 0, ptr @PL_localizing, align 1
  br label %sw.epilog741

sw.bb33:                                          ; preds = %if.end25
  %sv_u = getelementptr inbounds nuw i8, ptr %arg1.sroa.0.2, i64 16
  %7 = load ptr, ptr %sv_u, align 8
  br label %restore_sv

restore_sv:                                       ; preds = %if.then.i1204, %cond.true587, %if.then582, %if.then563, %cond.true557, %if.then553, %sw.bb33, %if.end25
  %svp.1.ph = phi ptr [ %he_valu575, %cond.true587 ], [ %he_valu575, %if.then582 ], [ %he_valu575, %if.then.i1204 ], [ %arg1.sroa.0.2, %if.end25 ], [ %7, %sw.bb33 ], [ %call530, %cond.true557 ], [ %call530, %if.then553 ], [ %call530, %if.then563 ]
  %refsv.1.ph = phi ptr [ %arg2.sroa.0.2, %cond.true587 ], [ %arg2.sroa.0.2, %if.then582 ], [ %arg2.sroa.0.2, %if.then.i1204 ], [ null, %if.end25 ], [ %arg1.sroa.0.2, %sw.bb33 ], [ %arg2.sroa.0.2, %cond.true557 ], [ %arg2.sroa.0.2, %if.then553 ], [ %arg2.sroa.0.2, %if.then563 ]
  %.pr1253 = load ptr, ptr %svp.1.ph, align 8
  store ptr %arg0.sroa.0.1, ptr %svp.1.ph, align 8
  %cmp.not.i = icmp eq ptr %.pr1253, null
  br i1 %cmp.not.i, label %S_SvREFCNT_dec.exit, label %if.then.i

if.then.i:                                        ; preds = %restore_sv
  %sv_refcnt.i = getelementptr inbounds nuw i8, ptr %.pr1253, i64 8
  %8 = load i32, ptr %sv_refcnt.i, align 8
  %cmp1.i = icmp ugt i32 %8, 1
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %8, -1
  store i32 %sub.i, ptr %sv_refcnt.i, align 8
  br label %S_SvREFCNT_dec.exit

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %.pr1253, i32 noundef %8) #3
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %restore_sv.thread, %if.else.i, %if.then4.i, %restore_sv
  %refsv.11258 = phi ptr [ %arg2.sroa.0.2, %restore_sv.thread ], [ %refsv.1.ph, %restore_sv ], [ %refsv.1.ph, %if.then4.i ], [ %refsv.1.ph, %if.else.i ]
  %sv_flags35 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 12
  %9 = load i32, ptr %sv_flags35, align 4
  %and36 = and i32 %9, 4194304
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %S_SvREFCNT_dec.exit
  store i8 2, ptr @PL_localizing, align 1
  %call41 = tail call i32 @Perl_mg_set(ptr noundef nonnull %arg0.sroa.0.1) #3
  store i8 0, ptr @PL_localizing, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %S_SvREFCNT_dec.exit
  %sv_refcnt.i1043 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 8
  %10 = load i32, ptr %sv_refcnt.i1043, align 8
  %cmp.i = icmp ugt i32 %10, 1
  br i1 %cmp.i, label %if.then.i1045, label %if.else.i1044

if.then.i1045:                                    ; preds = %if.end42
  %sub.i1046 = add i32 %10, -1
  store i32 %sub.i1046, ptr %sv_refcnt.i1043, align 8
  br label %S_SvREFCNT_dec_NN.exit

if.else.i1044:                                    ; preds = %if.end42
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %10) #3
  br label %S_SvREFCNT_dec_NN.exit

S_SvREFCNT_dec_NN.exit:                           ; preds = %if.else.i1044, %if.then.i1045
  %cmp.not.i1047 = icmp eq ptr %refsv.11258, null
  br i1 %cmp.not.i1047, label %sw.epilog741, label %if.then.i1048

if.then.i1048:                                    ; preds = %S_SvREFCNT_dec_NN.exit
  %sv_refcnt.i1049 = getelementptr inbounds nuw i8, ptr %refsv.11258, i64 8
  %11 = load i32, ptr %sv_refcnt.i1049, align 8
  %cmp1.i1050 = icmp ugt i32 %11, 1
  br i1 %cmp1.i1050, label %if.then4.i1052, label %if.else.i1051

if.then4.i1052:                                   ; preds = %if.then.i1048
  %sub.i1053 = add i32 %11, -1
  store i32 %sub.i1053, ptr %sv_refcnt.i1049, align 8
  br label %sw.epilog741

if.else.i1051:                                    ; preds = %if.then.i1048
  tail call void @Perl_sv_free2(ptr noundef nonnull %refsv.11258, i32 noundef %11) #3
  br label %sw.epilog741

sw.bb43:                                          ; preds = %if.end25
  %12 = load ptr, ptr %arg0.sroa.0.1, align 8
  %cmp44.not = icmp eq ptr %12, %arg1.sroa.0.2
  br i1 %cmp44.not, label %sw.epilog741, label %if.then46

if.then46:                                        ; preds = %sw.bb43
  tail call void @Perl_safesysfree(ptr noundef %12) #3
  store ptr %arg1.sroa.0.2, ptr %arg0.sroa.0.1, align 8
  br label %sw.epilog741

sw.bb48:                                          ; preds = %if.end25
  %13 = load ptr, ptr %arg1.sroa.0.2, align 8
  %cmp49.not = icmp eq ptr %13, %arg0.sroa.0.1
  br i1 %cmp49.not, label %sw.epilog741, label %if.then51

if.then51:                                        ; preds = %sw.bb48
  tail call void @free(ptr noundef %13) #3
  store ptr %arg0.sroa.0.1, ptr %arg1.sroa.0.2, align 8
  br label %sw.epilog741

sw.bb53:                                          ; preds = %if.end25
  %sv_u54 = getelementptr inbounds nuw i8, ptr %arg1.sroa.0.2, i64 16
  %14 = load ptr, ptr %sv_u54, align 8
  br label %restore_svp

restore_svp:                                      ; preds = %if.else, %if.then163, %land.lhs.true142, %land.lhs.true69, %land.lhs.true64, %land.lhs.true, %sw.bb59, %sw.bb53, %if.end25
  %svp.2.ph = phi ptr [ %arg1.sroa.0.2, %sw.bb59 ], [ %arg1.sroa.0.2, %land.lhs.true142 ], [ %arg1.sroa.0.2, %land.lhs.true69 ], [ %arg1.sroa.0.2, %land.lhs.true64 ], [ %arg1.sroa.0.2, %land.lhs.true ], [ %arg1.sroa.0.2, %if.else ], [ %arg1.sroa.0.2, %if.then163 ], [ %arg1.sroa.0.2, %if.end25 ], [ %14, %sw.bb53 ]
  %.pr = load ptr, ptr %svp.2.ph, align 8
  store ptr %arg0.sroa.0.1, ptr %svp.2.ph, align 8
  %cmp.not.i1055 = icmp eq ptr %.pr, null
  br i1 %cmp.not.i1055, label %S_SvREFCNT_dec.exit1062, label %if.then.i1056

if.then.i1056:                                    ; preds = %restore_svp
  %sv_refcnt.i1057 = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %15 = load i32, ptr %sv_refcnt.i1057, align 8
  %cmp1.i1058 = icmp ugt i32 %15, 1
  br i1 %cmp1.i1058, label %if.then4.i1060, label %if.else.i1059

if.then4.i1060:                                   ; preds = %if.then.i1056
  %sub.i1061 = add i32 %15, -1
  store i32 %sub.i1061, ptr %sv_refcnt.i1057, align 8
  br label %S_SvREFCNT_dec.exit1062

if.else.i1059:                                    ; preds = %if.then.i1056
  tail call void @Perl_sv_free2(ptr noundef nonnull %.pr, i32 noundef %15) #3
  br label %S_SvREFCNT_dec.exit1062

S_SvREFCNT_dec.exit1062:                          ; preds = %restore_svp.thread, %if.else.i1059, %if.then4.i1060, %restore_svp
  %cmp.not.i1063 = icmp eq ptr %arg0.sroa.0.1, null
  br i1 %cmp.not.i1063, label %sw.epilog741, label %if.then.i1064

if.then.i1064:                                    ; preds = %S_SvREFCNT_dec.exit1062
  %sv_refcnt.i1065 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 8
  %16 = load i32, ptr %sv_refcnt.i1065, align 8
  %cmp1.i1066 = icmp ugt i32 %16, 1
  br i1 %cmp1.i1066, label %if.then4.i1068, label %if.else.i1067

if.then4.i1068:                                   ; preds = %if.then.i1064
  %sub.i1069 = add i32 %16, -1
  store i32 %sub.i1069, ptr %sv_refcnt.i1065, align 8
  br label %sw.epilog741

if.else.i1067:                                    ; preds = %if.then.i1064
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %16) #3
  br label %sw.epilog741

sw.bb59:                                          ; preds = %if.end25
  %17 = load ptr, ptr %arg2.sroa.0.2, align 8
  %xnv_u = getelementptr inbounds nuw i8, ptr %17, i64 40
  %18 = load ptr, ptr %xnv_u, align 8
  %tobool60.not = icmp eq ptr %18, null
  br i1 %tobool60.not, label %restore_svp, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb59
  %sv_flags61 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %19 = load i32, ptr %sv_flags61, align 4
  %and62 = and i32 %19, 33554432
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %restore_svp, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %land.lhs.true
  %sv_u65 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %20 = load ptr, ptr %sv_u65, align 8
  %21 = load ptr, ptr %18, align 8
  %xhv_max = getelementptr inbounds nuw i8, ptr %21, i64 24
  %22 = load i64, ptr %xhv_max, align 8
  %23 = getelementptr ptr, ptr %20, i64 %22
  %arrayidx67 = getelementptr i8, ptr %23, i64 8
  %24 = load ptr, ptr %arrayidx67, align 8
  %tobool68.not = icmp eq ptr %24, null
  br i1 %tobool68.not, label %restore_svp, label %land.lhs.true69

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %xhv_name_count = getelementptr i8, ptr %23, i64 36
  %25 = load i32, ptr %xhv_name_count, align 4
  %cmp75.not = icmp eq i32 %25, -1
  br i1 %cmp75.not, label %restore_svp, label %cond.true77

cond.true77:                                      ; preds = %land.lhs.true69
  %tobool135.not = icmp eq ptr %arg0.sroa.0.1, null
  br i1 %tobool135.not, label %lor.lhs.false, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %cond.true77
  %sv_flags137 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 12
  %26 = load i32, ptr %sv_flags137, align 4
  %and138 = and i32 %26, 255
  %cmp139 = icmp eq i32 %and138, 13
  br i1 %cmp139, label %if.then147, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true136, %cond.true77
  %27 = load ptr, ptr %arg1.sroa.0.2, align 8
  %tobool141.not = icmp eq ptr %27, null
  br i1 %tobool141.not, label %restore_svp.thread, label %land.lhs.true142

restore_svp.thread:                               ; preds = %lor.lhs.false
  store ptr %arg0.sroa.0.1, ptr %arg1.sroa.0.2, align 8
  br label %S_SvREFCNT_dec.exit1062

land.lhs.true142:                                 ; preds = %lor.lhs.false
  %sv_flags143 = getelementptr inbounds nuw i8, ptr %27, i64 12
  %28 = load i32, ptr %sv_flags143, align 4
  %and144 = and i32 %28, 255
  %cmp145 = icmp eq i32 %and144, 13
  br i1 %cmp145, label %if.then147, label %restore_svp

if.then147:                                       ; preds = %land.lhs.true142, %land.lhs.true136
  %sv_u148 = getelementptr inbounds nuw i8, ptr %arg2.sroa.0.2, i64 16
  %29 = load ptr, ptr %sv_u148, align 8
  %cmp150 = icmp ult ptr %arg1.sroa.0.2, %29
  %add.ptr155 = getelementptr inbounds nuw i8, ptr %29, i64 80
  %cmp156 = icmp ugt ptr %arg1.sroa.0.2, %add.ptr155
  %or.cond1039 = select i1 %cmp150, i1 true, i1 %cmp156
  br i1 %or.cond1039, label %if.then163, label %lor.lhs.false158

lor.lhs.false158:                                 ; preds = %if.then147
  %gp_refcnt = getelementptr inbounds nuw i8, ptr %29, i64 28
  %30 = load i32, ptr %gp_refcnt, align 4
  %cmp161 = icmp ugt i32 %30, 2
  br i1 %cmp161, label %if.then163, label %if.else

if.then163:                                       ; preds = %lor.lhs.false158, %if.then147
  %31 = load i32, ptr @PL_sub_generation, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr @PL_sub_generation, align 4
  br label %restore_svp

if.else:                                          ; preds = %lor.lhs.false158
  tail call void @Perl_mro_method_changed_in(ptr noundef nonnull %18) #3
  br label %restore_svp

sw.bb166:                                         ; preds = %if.end25
  %sv_u167 = getelementptr inbounds nuw i8, ptr %arg1.sroa.0.2, i64 16
  %32 = load ptr, ptr %sv_u167, align 8
  %gp_av = getelementptr inbounds nuw i8, ptr %32, i64 40
  %33 = load ptr, ptr %gp_av, align 8
  %cmp.not.i1071 = icmp eq ptr %33, null
  br i1 %cmp.not.i1071, label %S_SvREFCNT_dec.exit1078, label %if.then.i1072

if.then.i1072:                                    ; preds = %sw.bb166
  %sv_refcnt.i1073 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %34 = load i32, ptr %sv_refcnt.i1073, align 8
  %cmp1.i1074 = icmp ugt i32 %34, 1
  br i1 %cmp1.i1074, label %if.then4.i1076, label %if.else.i1075

if.then4.i1076:                                   ; preds = %if.then.i1072
  %sub.i1077 = add i32 %34, -1
  store i32 %sub.i1077, ptr %sv_refcnt.i1073, align 8
  br label %S_SvREFCNT_dec.exit1078

if.else.i1075:                                    ; preds = %if.then.i1072
  tail call void @Perl_sv_free2(ptr noundef nonnull %33, i32 noundef %34) #3
  br label %S_SvREFCNT_dec.exit1078

S_SvREFCNT_dec.exit1078:                          ; preds = %if.else.i1075, %if.then4.i1076, %sw.bb166
  %35 = load ptr, ptr %sv_u167, align 8
  %gp_av171 = getelementptr inbounds nuw i8, ptr %35, i64 40
  store ptr %arg0.sroa.0.1, ptr %gp_av171, align 8
  %sv_flags172 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 12
  %36 = load i32, ptr %sv_flags172, align 4
  %and173 = and i32 %36, 4194304
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.end179, label %if.then177

if.then177:                                       ; preds = %S_SvREFCNT_dec.exit1078
  store i8 2, ptr @PL_localizing, align 1
  %call178 = tail call i32 @Perl_mg_set(ptr noundef nonnull %arg0.sroa.0.1) #3
  store i8 0, ptr @PL_localizing, align 1
  br label %if.end179

if.end179:                                        ; preds = %if.then177, %S_SvREFCNT_dec.exit1078
  %sv_refcnt.i1079 = getelementptr inbounds nuw i8, ptr %arg1.sroa.0.2, i64 8
  %37 = load i32, ptr %sv_refcnt.i1079, align 8
  %cmp.i1080 = icmp ugt i32 %37, 1
  br i1 %cmp.i1080, label %if.then.i1082, label %if.else.i1081

if.then.i1082:                                    ; preds = %if.end179
  %sub.i1083 = add i32 %37, -1
  store i32 %sub.i1083, ptr %sv_refcnt.i1079, align 8
  br label %sw.epilog741

if.else.i1081:                                    ; preds = %if.end179
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg1.sroa.0.2, i32 noundef %37) #3
  br label %sw.epilog741

sw.bb180:                                         ; preds = %if.end25
  %sv_u181 = getelementptr inbounds nuw i8, ptr %arg1.sroa.0.2, i64 16
  %38 = load ptr, ptr %sv_u181, align 8
  %gp_hv = getelementptr inbounds nuw i8, ptr %38, i64 32
  %39 = load ptr, ptr %gp_hv, align 8
  %cmp.not.i1085 = icmp eq ptr %39, null
  br i1 %cmp.not.i1085, label %S_SvREFCNT_dec.exit1092, label %if.then.i1086

if.then.i1086:                                    ; preds = %sw.bb180
  %sv_refcnt.i1087 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %40 = load i32, ptr %sv_refcnt.i1087, align 8
  %cmp1.i1088 = icmp ugt i32 %40, 1
  br i1 %cmp1.i1088, label %if.then4.i1090, label %if.else.i1089

if.then4.i1090:                                   ; preds = %if.then.i1086
  %sub.i1091 = add i32 %40, -1
  store i32 %sub.i1091, ptr %sv_refcnt.i1087, align 8
  br label %S_SvREFCNT_dec.exit1092

if.else.i1089:                                    ; preds = %if.then.i1086
  tail call void @Perl_sv_free2(ptr noundef nonnull %39, i32 noundef %40) #3
  br label %S_SvREFCNT_dec.exit1092

S_SvREFCNT_dec.exit1092:                          ; preds = %if.else.i1089, %if.then4.i1090, %sw.bb180
  %41 = load ptr, ptr %sv_u181, align 8
  %gp_hv185 = getelementptr inbounds nuw i8, ptr %41, i64 32
  store ptr %arg0.sroa.0.1, ptr %gp_hv185, align 8
  %sv_flags186 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 12
  %42 = load i32, ptr %sv_flags186, align 4
  %and187 = and i32 %42, 4194304
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %if.end193, label %if.then191

if.then191:                                       ; preds = %S_SvREFCNT_dec.exit1092
  store i8 2, ptr @PL_localizing, align 1
  %call192 = tail call i32 @Perl_mg_set(ptr noundef nonnull %arg0.sroa.0.1) #3
  store i8 0, ptr @PL_localizing, align 1
  br label %if.end193

if.end193:                                        ; preds = %if.then191, %S_SvREFCNT_dec.exit1092
  %sv_refcnt.i1093 = getelementptr inbounds nuw i8, ptr %arg1.sroa.0.2, i64 8
  %43 = load i32, ptr %sv_refcnt.i1093, align 8
  %cmp.i1094 = icmp ugt i32 %43, 1
  br i1 %cmp.i1094, label %if.then.i1096, label %if.else.i1095

if.then.i1096:                                    ; preds = %if.end193
  %sub.i1097 = add i32 %43, -1
  store i32 %sub.i1097, ptr %sv_refcnt.i1093, align 8
  br label %sw.epilog741

if.else.i1095:                                    ; preds = %if.end193
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg1.sroa.0.2, i32 noundef %43) #3
  br label %sw.epilog741

sw.bb194:                                         ; preds = %if.end25
  %shr = lshr i64 %4, 6
  %conv195 = trunc i64 %shr to i32
  store i32 %conv195, ptr %arg0.sroa.0.1, align 4
  br label %sw.epilog741

sw.bb196:                                         ; preds = %if.end25
  %44 = ptrtoint ptr %arg1.sroa.0.2 to i64
  %arg1.sroa.0.0.extract.trunc = trunc i64 %44 to i32
  store i32 %arg1.sroa.0.0.extract.trunc, ptr %arg0.sroa.0.1, align 4
  br label %sw.epilog741

sw.bb197:                                         ; preds = %if.end25
  %45 = ptrtoint ptr %arg1.sroa.0.2 to i64
  store i64 %45, ptr %arg0.sroa.0.1, align 8
  br label %sw.epilog741

sw.bb198:                                         ; preds = %if.end25
  %tobool200 = icmp ugt i64 %4, 255
  %storedv203 = zext i1 %tobool200 to i8
  store i8 %storedv203, ptr %arg0.sroa.0.1, align 1
  %cmp204 = icmp eq ptr %arg0.sroa.0.1, @PL_tainted
  %spec.select = select i1 %cmp204, i8 %storedv203, i8 %was.01271
  br label %sw.epilog741

sw.bb212:                                         ; preds = %if.end25
  %shr213 = lshr i64 %4, 6
  %conv214 = trunc i64 %shr213 to i32
  store i32 %conv214, ptr %arg0.sroa.0.1, align 4
  br label %sw.epilog741

sw.bb215:                                         ; preds = %if.end25
  %46 = ptrtoint ptr %arg1.sroa.0.2 to i64
  %arg1.sroa.0.0.extract.trunc912 = trunc i64 %46 to i32
  store i32 %arg1.sroa.0.0.extract.trunc912, ptr %arg0.sroa.0.1, align 4
  br label %sw.epilog741

sw.bb216:                                         ; preds = %if.end25
  store ptr %arg1.sroa.0.2, ptr %arg0.sroa.0.1, align 8
  br label %sw.epilog741

sw.bb217:                                         ; preds = %if.end25, %if.end25
  store ptr %arg1.sroa.0.2, ptr %arg0.sroa.0.1, align 8
  br label %sw.epilog741

sw.bb218:                                         ; preds = %if.end25
  store ptr %arg1.sroa.0.2, ptr %arg0.sroa.0.1, align 8
  br label %sw.epilog741

sw.bb219:                                         ; preds = %if.end25
  store ptr %arg1.sroa.0.2, ptr %arg0.sroa.0.1, align 8
  br label %sw.epilog741

sw.bb220:                                         ; preds = %if.end25
  %sv_u222 = getelementptr inbounds nuw i8, ptr %arg1.sroa.0.2, i64 16
  %47 = load ptr, ptr %sv_u222, align 8
  %gp_cvgen = getelementptr inbounds nuw i8, ptr %47, i64 24
  %48 = load i32, ptr %gp_cvgen, align 8
  %tobool224.not = icmp eq i32 %48, 0
  br i1 %tobool224.not, label %cond.false226, label %cond.end229

cond.false226:                                    ; preds = %sw.bb220
  %gp_cv = getelementptr inbounds nuw i8, ptr %47, i64 16
  %49 = load ptr, ptr %gp_cv, align 8
  %50 = icmp eq ptr %49, null
  br label %cond.end229

cond.end229:                                      ; preds = %cond.false226, %sw.bb220
  %cond230 = phi i1 [ %50, %cond.false226 ], [ true, %sw.bb220 ]
  tail call void @Perl_gp_free(ptr noundef nonnull %arg1.sroa.0.2) #3
  store ptr %arg0.sroa.0.1, ptr %sv_u222, align 8
  %51 = load ptr, ptr %arg1.sroa.0.2, align 8
  %xnv_u236 = getelementptr inbounds nuw i8, ptr %51, i64 40
  %52 = load ptr, ptr %xnv_u236, align 8
  %tobool237.not = icmp eq ptr %52, null
  br i1 %tobool237.not, label %if.end360, label %land.lhs.true238

land.lhs.true238:                                 ; preds = %cond.end229
  %sv_flags239 = getelementptr inbounds nuw i8, ptr %52, i64 12
  %53 = load i32, ptr %sv_flags239, align 4
  %and240 = and i32 %53, 33554432
  %tobool241.not = icmp eq i32 %and240, 0
  br i1 %tobool241.not, label %if.end360, label %land.lhs.true242

land.lhs.true242:                                 ; preds = %land.lhs.true238
  %sv_u243 = getelementptr inbounds nuw i8, ptr %52, i64 16
  %54 = load ptr, ptr %sv_u243, align 8
  %55 = load ptr, ptr %52, align 8
  %xhv_max245 = getelementptr inbounds nuw i8, ptr %55, i64 24
  %56 = load i64, ptr %xhv_max245, align 8
  %57 = getelementptr ptr, ptr %54, i64 %56
  %arrayidx247 = getelementptr i8, ptr %57, i64 8
  %58 = load ptr, ptr %arrayidx247, align 8
  %tobool249.not = icmp eq ptr %58, null
  br i1 %tobool249.not, label %if.end360, label %land.lhs.true250

land.lhs.true250:                                 ; preds = %land.lhs.true242
  %xhv_name_count256 = getelementptr i8, ptr %57, i64 36
  %59 = load i32, ptr %xhv_name_count256, align 4
  %cmp257.not = icmp eq i32 %59, -1
  br i1 %cmp257.not, label %if.end360, label %cond.true259

cond.true259:                                     ; preds = %land.lhs.true250
  %xiv_u = getelementptr inbounds nuw i8, ptr %51, i64 32
  %60 = load ptr, ptr %xiv_u, align 8
  %hek_len = getelementptr inbounds nuw i8, ptr %60, i64 4
  %61 = load i32, ptr %hek_len, align 4
  %cmp322 = icmp eq i32 %61, 3
  br i1 %cmp322, label %land.lhs.true324, label %if.else332

land.lhs.true324:                                 ; preds = %cond.true259
  %hek_key327 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %62 = load i8, ptr %hek_key327, align 1
  %.not = icmp eq i8 %62, 73
  br i1 %.not, label %sub_1, label %land.lhs.true324.tail

sub_1:                                            ; preds = %land.lhs.true324
  %63 = getelementptr inbounds nuw i8, ptr %60, i64 9
  %64 = load i8, ptr %63, align 1
  %.not1273 = icmp eq i8 %64, 83
  br i1 %.not1273, label %sub_2, label %land.lhs.true324.tail

sub_2:                                            ; preds = %sub_1
  %65 = getelementptr inbounds nuw i8, ptr %60, i64 10
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 65
  br label %land.lhs.true324.tail

land.lhs.true324.tail:                            ; preds = %sub_2, %sub_1, %land.lhs.true324
  %tobool330.not = phi i1 [ false, %land.lhs.true324 ], [ false, %sub_1 ], [ %67, %sub_2 ]
  br i1 %tobool330.not, label %if.then331, label %if.else332

if.then331:                                       ; preds = %land.lhs.true324.tail
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %52) #3
  br label %if.end360

if.else332:                                       ; preds = %land.lhs.true324.tail, %cond.true259
  br i1 %cond230, label %lor.lhs.false335, label %if.then346

lor.lhs.false335:                                 ; preds = %if.else332
  %gp_cvgen338 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 24
  %68 = load i32, ptr %gp_cvgen338, align 8
  %tobool339.not = icmp eq i32 %68, 0
  br i1 %tobool339.not, label %cond.false341, label %if.end360

cond.false341:                                    ; preds = %lor.lhs.false335
  %gp_cv344 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 16
  %69 = load ptr, ptr %gp_cv344, align 8
  %tobool345.not = icmp eq ptr %69, null
  br i1 %tobool345.not, label %if.end360, label %if.then346

if.then346:                                       ; preds = %cond.false341, %if.else332
  %gp_refcnt349 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 28
  %70 = load i32, ptr %gp_refcnt349, align 4
  %cmp350 = icmp ugt i32 %70, 1
  br i1 %cmp350, label %cond.true352, label %cond.false354

cond.true352:                                     ; preds = %if.then346
  %71 = load i32, ptr @PL_sub_generation, align 4
  %inc353 = add i32 %71, 1
  store i32 %inc353, ptr @PL_sub_generation, align 4
  br label %if.end360

cond.false354:                                    ; preds = %if.then346
  tail call void @Perl_mro_method_changed_in(ptr noundef nonnull %52) #3
  br label %if.end360

if.end360:                                        ; preds = %cond.false354, %cond.true352, %cond.false341, %lor.lhs.false335, %if.then331, %land.lhs.true250, %land.lhs.true242, %land.lhs.true238, %cond.end229
  %sv_refcnt.i1099 = getelementptr inbounds nuw i8, ptr %arg1.sroa.0.2, i64 8
  %72 = load i32, ptr %sv_refcnt.i1099, align 8
  %cmp.i1100 = icmp ugt i32 %72, 1
  br i1 %cmp.i1100, label %if.then.i1102, label %if.else.i1101

if.then.i1102:                                    ; preds = %if.end360
  %sub.i1103 = add i32 %72, -1
  store i32 %sub.i1103, ptr %sv_refcnt.i1099, align 8
  br label %sw.epilog741

if.else.i1101:                                    ; preds = %if.end360
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg1.sroa.0.2, i32 noundef %72) #3
  br label %sw.epilog741

sw.bb361:                                         ; preds = %if.end25
  %cmp.not.i1105 = icmp eq ptr %arg0.sroa.0.1, null
  br i1 %cmp.not.i1105, label %sw.epilog741, label %if.then.i1106

if.then.i1106:                                    ; preds = %sw.bb361
  %sv_refcnt.i1107 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 8
  %73 = load i32, ptr %sv_refcnt.i1107, align 8
  %cmp1.i1108 = icmp ugt i32 %73, 1
  br i1 %cmp1.i1108, label %if.then4.i1110, label %if.else.i1109

if.then4.i1110:                                   ; preds = %if.then.i1106
  %sub.i1111 = add i32 %73, -1
  store i32 %sub.i1111, ptr %sv_refcnt.i1107, align 8
  br label %sw.epilog741

if.else.i1109:                                    ; preds = %if.then.i1106
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %73) #3
  br label %sw.epilog741

sw.bb362:                                         ; preds = %if.end25
  tail call void @Perl_padname_free(ptr noundef %arg0.sroa.0.1) #3
  br label %sw.epilog741

sw.bb363:                                         ; preds = %if.end25
  tail call void @Perl_refcounted_he_free(ptr noundef %arg0.sroa.0.1) #3
  br label %sw.epilog741

sw.bb364:                                         ; preds = %if.end25
  %call365 = tail call ptr @Perl_sv_2mortal(ptr noundef %arg0.sroa.0.1) #3
  br label %sw.epilog741

sw.bb366:                                         ; preds = %if.end25
  tail call void @Perl_op_free(ptr noundef %arg0.sroa.0.1) #3
  br label %sw.epilog741

sw.bb367:                                         ; preds = %if.end25
  tail call void @Perl_safesysfree(ptr noundef %arg0.sroa.0.1) #3
  br label %sw.epilog741

sw.bb368:                                         ; preds = %if.end25
  %74 = lshr i32 %conv3, 6
  %conv371 = and i32 %74, 127
  %75 = load ptr, ptr @PL_curpad, align 8
  %shr372 = lshr i64 %4, 13
  %arrayidx373 = getelementptr inbounds nuw ptr, ptr %75, i64 %shr372
  %idx.ext = zext nneg i32 %conv371 to i64
  %add.ptr374 = getelementptr inbounds nuw ptr, ptr %arrayidx373, i64 %idx.ext
  %add.ptr375 = getelementptr inbounds i8, ptr %add.ptr374, i64 -8
  br label %clearsv

sw.bb376:                                         ; preds = %if.end25
  %76 = load ptr, ptr @PL_curpad, align 8
  %shr377 = lshr i64 %4, 6
  %arrayidx378 = getelementptr inbounds nuw ptr, ptr %76, i64 %shr377
  br label %clearsv

clearsv:                                          ; preds = %sw.bb376, %sw.bb368
  %svp.3 = phi ptr [ %add.ptr375, %sw.bb368 ], [ %arrayidx378, %sw.bb376 ]
  %i.0 = phi i32 [ %conv371, %sw.bb368 ], [ 1, %sw.bb376 ]
  %tobool379.not1264 = icmp eq i32 %i.0, 0
  br i1 %tobool379.not1264, label %sw.epilog741, label %for.body.preheader

for.body.preheader:                               ; preds = %clearsv
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %i.11266 = phi i32 [ %dec, %for.inc ], [ %i.0, %for.body.preheader ]
  %svp.41265 = phi ptr [ %incdec.ptr515, %for.inc ], [ %svp.3, %for.body.preheader ]
  %77 = load ptr, ptr %svp.41265, align 8
  %sv_refcnt = getelementptr inbounds nuw i8, ptr %77, i64 8
  %78 = load i32, ptr %sv_refcnt, align 8
  %cmp380 = icmp eq i32 %78, 1
  br i1 %cmp380, label %land.lhs.true382, label %if.else468

land.lhs.true382:                                 ; preds = %for.body
  %sv_flags383 = getelementptr inbounds nuw i8, ptr %77, i64 12
  %79 = load i32, ptr %sv_flags383, align 4
  %and384 = and i32 %79, 1048576
  %tobool385.not = icmp eq i32 %and384, 0
  br i1 %tobool385.not, label %if.then386, label %if.else468

if.then386:                                       ; preds = %land.lhs.true382
  %and388 = and i32 %79, 467732480
  %tobool389.not = icmp eq i32 %and388, 0
  br i1 %tobool389.not, label %if.end431, label %if.then392

if.then392:                                       ; preds = %if.then386
  %and394 = and i32 %79, 134283264
  %tobool395.not = icmp eq i32 %and394, 0
  br i1 %tobool395.not, label %if.end399, label %if.then396

if.then396:                                       ; preds = %if.then392
  %and398 = and i32 %79, -135331841
  store i32 %and398, ptr %sv_flags383, align 4
  br label %if.end399

if.end399:                                        ; preds = %if.then396, %if.then392
  %80 = load i32, ptr %sv_flags383, align 4
  %and401 = and i32 %80, 33554432
  %tobool402.not = icmp eq i32 %and401, 0
  br i1 %tobool402.not, label %if.end412, label %if.then403

if.then403:                                       ; preds = %if.end399
  %and405 = and i32 %80, 255
  %cmp406 = icmp eq i32 %and405, 12
  br i1 %cmp406, label %if.then408, label %if.else409

if.then408:                                       ; preds = %if.then403
  tail call void @Perl_hv_kill_backrefs(ptr noundef nonnull %77) #3
  br label %if.end412

if.else409:                                       ; preds = %if.then403
  %call410 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %77) #3
  br label %if.end412

if.end412:                                        ; preds = %if.else409, %if.then408, %if.end399
  %81 = load i32, ptr %sv_flags383, align 4
  %and414 = and i32 %81, 14680064
  %tobool415.not = icmp eq i32 %and414, 0
  br i1 %tobool415.not, label %if.end425, label %if.then416

if.then416:                                       ; preds = %if.end412
  %call417 = tail call i32 @Perl_sv_unmagic(ptr noundef nonnull %77, i32 noundef 60) #3
  %82 = load i32, ptr %sv_flags383, align 4
  %and419 = and i32 %82, 255
  %cmp420.not = icmp eq i32 %and419, 13
  br i1 %cmp420.not, label %if.end425, label %if.then422

if.then422:                                       ; preds = %if.then416
  %call423 = tail call i32 @Perl_mg_free(ptr noundef nonnull %77) #3
  br label %if.end425

if.end425:                                        ; preds = %if.then422, %if.then416, %if.end412
  %83 = load i32, ptr %sv_flags383, align 4
  %and427 = and i32 %83, 427886592
  %tobool428.not = icmp eq i32 %and427, 0
  br i1 %tobool428.not, label %if.end431, label %if.then429

if.then429:                                       ; preds = %if.end425
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %77, i32 noundef 5) #3
  br label %if.end431

if.end431:                                        ; preds = %if.then429, %if.end425, %if.then386
  %84 = load i32, ptr %sv_flags383, align 4
  %trunc = trunc i32 %84 to i8
  switch i8 %trunc, label %sw.default [
    i8 0, label %sw.epilog
    i8 11, label %sw.bb434
    i8 12, label %sw.bb435
    i8 13, label %sw.bb436
  ]

sw.bb434:                                         ; preds = %if.end431
  tail call void @Perl_av_clear(ptr noundef nonnull %77) #3
  br label %sw.epilog

sw.bb435:                                         ; preds = %if.end431
  tail call void @Perl_hv_clear(ptr noundef nonnull %77) #3
  br label %sw.epilog

sw.bb436:                                         ; preds = %if.end431
  %85 = load ptr, ptr %77, align 8
  %xcv_flags = getelementptr inbounds nuw i8, ptr %85, i64 92
  %86 = load i32, ptr %xcv_flags, align 4
  %and438 = and i32 %86, 32768
  %tobool439.not = icmp eq i32 %and438, 0
  br i1 %tobool439.not, label %S_CvGV.exit, label %CvNAME_HEK.exit

CvNAME_HEK.exit:                                  ; preds = %sw.bb436
  %xcv_gv_u.i = getelementptr inbounds nuw i8, ptr %85, i64 56
  br label %cond.end446

S_CvGV.exit:                                      ; preds = %sw.bb436
  %xcv_gv_u.i1118 = getelementptr inbounds nuw i8, ptr %85, i64 56
  %87 = load ptr, ptr %xcv_gv_u.i1118, align 8
  %88 = load ptr, ptr %87, align 8
  %xiv_u445 = getelementptr inbounds nuw i8, ptr %88, i64 32
  br label %cond.end446

cond.end446:                                      ; preds = %S_CvGV.exit, %CvNAME_HEK.exit
  %cond447.in = phi ptr [ %xcv_gv_u.i, %CvNAME_HEK.exit ], [ %xiv_u445, %S_CvGV.exit ]
  %cond447 = load ptr, ptr %cond447.in, align 8
  %he_valu = getelementptr inbounds i8, ptr %cond447, i64 -8
  %89 = load i64, ptr %he_valu, align 8
  %inc449 = add i64 %89, 1
  store i64 %inc449, ptr %he_valu, align 8
  tail call void @Perl_cv_undef(ptr noundef nonnull %77) #3
  %.val1041 = load ptr, ptr %77, align 8
  %xcv_flags.i1119 = getelementptr inbounds nuw i8, ptr %.val1041, i64 92
  %90 = load i32, ptr %xcv_flags.i1119, align 4
  %and.i1120 = and i32 %90, 32768
  %tobool.not.i1121 = icmp eq i32 %and.i1120, 0
  br i1 %tobool.not.i1121, label %cond.end455, label %CvNAME_HEK.exit1125

CvNAME_HEK.exit1125:                              ; preds = %cond.end446
  %xcv_gv_u.i1123 = getelementptr inbounds nuw i8, ptr %.val1041, i64 56
  %91 = load ptr, ptr %xcv_gv_u.i1123, align 8
  %tobool451.not = icmp eq ptr %91, null
  br i1 %tobool451.not, label %cond.end455, label %cond.true452

cond.true452:                                     ; preds = %CvNAME_HEK.exit1125
  %xcv_gv_u = getelementptr inbounds nuw i8, ptr %.val1041, i64 56
  %92 = load ptr, ptr %xcv_gv_u, align 8
  tail call void @Perl_unshare_hek(ptr noundef %92) #3
  br label %cond.end455

cond.end455:                                      ; preds = %cond.true452, %CvNAME_HEK.exit1125, %cond.end446
  %93 = load ptr, ptr %77, align 8
  %xcv_gv_u457 = getelementptr inbounds nuw i8, ptr %93, i64 56
  store ptr %cond447, ptr %xcv_gv_u457, align 8
  %94 = load ptr, ptr %77, align 8
  %xcv_flags459 = getelementptr inbounds nuw i8, ptr %94, i64 92
  %95 = load i32, ptr %xcv_flags459, align 4
  %or = or i32 %95, 32768
  store i32 %or, ptr %xcv_flags459, align 4
  %96 = load ptr, ptr %77, align 8
  %xcv_flags461 = getelementptr inbounds nuw i8, ptr %96, i64 92
  %97 = load i32, ptr %xcv_flags461, align 4
  %or462 = or i32 %97, 65536
  store i32 %or462, ptr %xcv_flags461, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end431
  %and464 = and i32 %84, 1610547455
  store i32 %and464, ptr %sv_flags383, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end455, %sw.bb435, %sw.bb434, %if.end431
  %98 = load i32, ptr %sv_flags383, align 4
  %and466 = and i32 %98, -393217
  %or.i = or disjoint i32 %and466, 262144
  store i32 %or.i, ptr %sv_flags383, align 4
  br label %for.inc

if.else468:                                       ; preds = %land.lhs.true382, %for.body
  %sv_flags469 = getelementptr inbounds nuw i8, ptr %77, i64 12
  %99 = load i32, ptr %sv_flags469, align 4
  %trunc1038 = trunc i32 %99 to i8
  switch i8 %trunc1038, label %sw.default509 [
    i8 11, label %sw.bb471
    i8 12, label %sw.bb473
    i8 13, label %sw.bb475
  ]

sw.bb471:                                         ; preds = %if.else468
  %call472 = tail call ptr @Perl_newSV_type(i32 noundef 11) #3
  store ptr %call472, ptr %svp.41265, align 8
  br label %sw.epilog511

sw.bb473:                                         ; preds = %if.else468
  %call474 = tail call ptr @Perl_newSV_type(i32 noundef 12) #3
  store ptr %call474, ptr %svp.41265, align 8
  br label %sw.epilog511

sw.bb475:                                         ; preds = %if.else468
  %100 = load ptr, ptr %77, align 8
  %xcv_flags478 = getelementptr inbounds nuw i8, ptr %100, i64 92
  %101 = load i32, ptr %xcv_flags478, align 4
  %and479 = and i32 %101, 32768
  %tobool480.not = icmp eq i32 %and479, 0
  br i1 %tobool480.not, label %S_CvGV.exit1141, label %CvNAME_HEK.exit1132

CvNAME_HEK.exit1132:                              ; preds = %sw.bb475
  %xcv_gv_u.i1130 = getelementptr inbounds nuw i8, ptr %100, i64 56
  br label %cond.end487

S_CvGV.exit1141:                                  ; preds = %sw.bb475
  %xcv_gv_u.i1140 = getelementptr inbounds nuw i8, ptr %100, i64 56
  %102 = load ptr, ptr %xcv_gv_u.i1140, align 8
  %103 = load ptr, ptr %102, align 8
  %xiv_u486 = getelementptr inbounds nuw i8, ptr %103, i64 32
  br label %cond.end487

cond.end487:                                      ; preds = %S_CvGV.exit1141, %CvNAME_HEK.exit1132
  %cond488.in = phi ptr [ %xcv_gv_u.i1130, %CvNAME_HEK.exit1132 ], [ %xiv_u486, %S_CvGV.exit1141 ]
  %cond488 = load ptr, ptr %cond488.in, align 8
  %call489 = tail call ptr @Perl_newSV_type(i32 noundef 13) #3
  store ptr %call489, ptr %svp.41265, align 8
  %call489.val = load ptr, ptr %call489, align 8
  %xcv_flags.i1142 = getelementptr inbounds nuw i8, ptr %call489.val, i64 92
  %104 = load i32, ptr %xcv_flags.i1142, align 4
  %and.i1143 = and i32 %104, 32768
  %tobool.not.i1144 = icmp eq i32 %and.i1143, 0
  br i1 %tobool.not.i1144, label %cond.end496, label %CvNAME_HEK.exit1148

CvNAME_HEK.exit1148:                              ; preds = %cond.end487
  %xcv_gv_u.i1146 = getelementptr inbounds nuw i8, ptr %call489.val, i64 56
  %105 = load ptr, ptr %xcv_gv_u.i1146, align 8
  %tobool491.not = icmp eq ptr %105, null
  br i1 %tobool491.not, label %cond.end496, label %cond.true492

cond.true492:                                     ; preds = %CvNAME_HEK.exit1148
  %xcv_gv_u494 = getelementptr inbounds nuw i8, ptr %call489.val, i64 56
  %106 = load ptr, ptr %xcv_gv_u494, align 8
  tail call void @Perl_unshare_hek(ptr noundef %106) #3
  br label %cond.end496

cond.end496:                                      ; preds = %cond.true492, %CvNAME_HEK.exit1148, %cond.end487
  %he_valu499 = getelementptr inbounds i8, ptr %cond488, i64 -8
  %107 = load i64, ptr %he_valu499, align 8
  %inc500 = add i64 %107, 1
  store i64 %inc500, ptr %he_valu499, align 8
  %108 = load ptr, ptr %svp.41265, align 8
  %109 = load ptr, ptr %108, align 8
  %xcv_gv_u502 = getelementptr inbounds nuw i8, ptr %109, i64 56
  store ptr %cond488, ptr %xcv_gv_u502, align 8
  %110 = load ptr, ptr %svp.41265, align 8
  %111 = load ptr, ptr %110, align 8
  %xcv_flags504 = getelementptr inbounds nuw i8, ptr %111, i64 92
  %112 = load i32, ptr %xcv_flags504, align 4
  %or505 = or i32 %112, 32768
  store i32 %or505, ptr %xcv_flags504, align 4
  %113 = load ptr, ptr %svp.41265, align 8
  %114 = load ptr, ptr %113, align 8
  %xcv_flags507 = getelementptr inbounds nuw i8, ptr %114, i64 92
  %115 = load i32, ptr %xcv_flags507, align 4
  %or508 = or i32 %115, 65536
  store i32 %or508, ptr %xcv_flags507, align 4
  br label %sw.epilog511

sw.default509:                                    ; preds = %if.else468
  %call510 = tail call ptr @Perl_newSV(i64 noundef 0) #3
  store ptr %call510, ptr %svp.41265, align 8
  br label %sw.epilog511

sw.epilog511:                                     ; preds = %sw.default509, %cond.end496, %sw.bb473, %sw.bb471
  %116 = load i32, ptr %sv_refcnt, align 8
  %cmp.i1150 = icmp ugt i32 %116, 1
  br i1 %cmp.i1150, label %if.then.i1152, label %if.else.i1151

if.then.i1152:                                    ; preds = %sw.epilog511
  %sub.i1153 = add i32 %116, -1
  store i32 %sub.i1153, ptr %sv_refcnt, align 8
  br label %S_SvREFCNT_dec_NN.exit1154

if.else.i1151:                                    ; preds = %sw.epilog511
  tail call void @Perl_sv_free2(ptr noundef nonnull %77, i32 noundef %116) #3
  br label %S_SvREFCNT_dec_NN.exit1154

S_SvREFCNT_dec_NN.exit1154:                       ; preds = %if.else.i1151, %if.then.i1152
  %117 = load ptr, ptr %svp.41265, align 8
  %sv_flags512 = getelementptr inbounds nuw i8, ptr %117, i64 12
  %118 = load i32, ptr %sv_flags512, align 4
  %or513 = or i32 %118, 262144
  store i32 %or513, ptr %sv_flags512, align 4
  br label %for.inc

for.inc:                                          ; preds = %S_SvREFCNT_dec_NN.exit1154, %sw.epilog
  %dec = add nsw i32 %i.11266, -1
  %incdec.ptr515 = getelementptr inbounds i8, ptr %svp.41265, i64 -8
  %tobool379.not = icmp eq i32 %dec, 0
  br i1 %tobool379.not, label %sw.epilog741.loopexit, label %for.body, !llvm.loop !2

sw.bb516:                                         ; preds = %if.end25
  %119 = ptrtoint ptr %arg1.sroa.0.2 to i64
  %arg1.sroa.0.0.extract.trunc914 = trunc i64 %119 to i32
  %call517 = tail call ptr @Perl_hv_common_key_len(ptr noundef %arg0.sroa.0.1, ptr noundef %arg2.sroa.0.2, i32 noundef %arg1.sroa.0.0.extract.trunc914, i32 noundef 68, ptr noundef null, i32 noundef 0) #3
  %cmp.not.i1155 = icmp eq ptr %arg0.sroa.0.1, null
  br i1 %cmp.not.i1155, label %S_SvREFCNT_dec.exit1162, label %if.then.i1156

if.then.i1156:                                    ; preds = %sw.bb516
  %sv_refcnt.i1157 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 8
  %120 = load i32, ptr %sv_refcnt.i1157, align 8
  %cmp1.i1158 = icmp ugt i32 %120, 1
  br i1 %cmp1.i1158, label %if.then4.i1160, label %if.else.i1159

if.then4.i1160:                                   ; preds = %if.then.i1156
  %sub.i1161 = add i32 %120, -1
  store i32 %sub.i1161, ptr %sv_refcnt.i1157, align 8
  br label %S_SvREFCNT_dec.exit1162

if.else.i1159:                                    ; preds = %if.then.i1156
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %120) #3
  br label %S_SvREFCNT_dec.exit1162

S_SvREFCNT_dec.exit1162:                          ; preds = %if.else.i1159, %if.then4.i1160, %sw.bb516
  tail call void @Perl_safesysfree(ptr noundef %arg2.sroa.0.2) #3
  br label %sw.epilog741

sw.bb518:                                         ; preds = %if.end25
  %121 = ptrtoint ptr %arg1.sroa.0.2 to i64
  %call519 = tail call ptr @Perl_av_delete(ptr noundef %arg0.sroa.0.1, i64 noundef %121, i32 noundef 4) #3
  %cmp.not.i1163 = icmp eq ptr %arg0.sroa.0.1, null
  br i1 %cmp.not.i1163, label %sw.epilog741, label %if.then.i1164

if.then.i1164:                                    ; preds = %sw.bb518
  %sv_refcnt.i1165 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 8
  %122 = load i32, ptr %sv_refcnt.i1165, align 8
  %cmp1.i1166 = icmp ugt i32 %122, 1
  br i1 %cmp1.i1166, label %if.then4.i1168, label %if.else.i1167

if.then4.i1168:                                   ; preds = %if.then.i1164
  %sub.i1169 = add i32 %122, -1
  store i32 %sub.i1169, ptr %sv_refcnt.i1165, align 8
  br label %sw.epilog741

if.else.i1167:                                    ; preds = %if.then.i1164
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %122) #3
  br label %sw.epilog741

sw.bb520:                                         ; preds = %if.end25
  tail call void %arg1.sroa.0.2(ptr noundef %arg0.sroa.0.1) #3
  br label %sw.epilog741

sw.bb521:                                         ; preds = %if.end25, %if.end25
  %shr522 = lshr i64 %4, 6
  %123 = trunc i64 %shr522 to i32
  %conv525 = sub i32 %ix.0, %123
  store i32 %conv525, ptr @PL_savestack_ix, align 4
  br label %sw.epilog741

sw.bb526:                                         ; preds = %if.end25
  %124 = load ptr, ptr @PL_stack_base, align 8
  %125 = ptrtoint ptr %arg0.sroa.0.1 to i64
  %sext = shl i64 %125, 32
  %126 = ashr exact i64 %sext, 29
  %add.ptr528 = getelementptr inbounds i8, ptr %124, i64 %126
  store ptr %add.ptr528, ptr @PL_stack_sp, align 8
  br label %sw.epilog741

sw.bb529:                                         ; preds = %if.end25
  %127 = ptrtoint ptr %arg1.sroa.0.2 to i64
  %call530 = tail call ptr @Perl_av_fetch(ptr noundef %arg2.sroa.0.2, i64 noundef %127, i32 noundef 1) #3
  %sv_flags531 = getelementptr inbounds nuw i8, ptr %arg2.sroa.0.2, i64 12
  %128 = load i32, ptr %sv_flags531, align 4
  %or.cond1040 = icmp sgt i32 %128, -1073741825
  %cmp.not.i1171 = icmp eq ptr %arg0.sroa.0.1, null
  %or.cond1259 = select i1 %or.cond1040, i1 true, i1 %cmp.not.i1171
  br i1 %or.cond1259, label %if.end541, label %if.then.i1172

if.then.i1172:                                    ; preds = %sw.bb529
  %sv_refcnt.i1173 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 8
  %129 = load i32, ptr %sv_refcnt.i1173, align 8
  %cmp1.i1174 = icmp ugt i32 %129, 1
  br i1 %cmp1.i1174, label %if.then4.i1176, label %if.else.i1175

if.then4.i1176:                                   ; preds = %if.then.i1172
  %sub.i1177 = add i32 %129, -1
  store i32 %sub.i1177, ptr %sv_refcnt.i1173, align 8
  br label %if.end541

if.else.i1175:                                    ; preds = %if.then.i1172
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %129) #3
  br label %if.end541

if.end541:                                        ; preds = %if.else.i1175, %if.then4.i1176, %sw.bb529
  %tobool542.not = icmp eq ptr %call530, null
  br i1 %tobool542.not, label %if.then.i1180, label %if.then545

if.then545:                                       ; preds = %if.end541
  %130 = load ptr, ptr %call530, align 8
  %tobool547 = icmp ne ptr %130, null
  %cmp549 = icmp ne ptr %130, @PL_sv_undef
  %or.cond = and i1 %tobool547, %cmp549
  br i1 %or.cond, label %if.then553, label %if.then.i1180

if.then553:                                       ; preds = %if.then545
  %131 = load i32, ptr %sv_flags531, align 4
  %and555 = and i32 %131, 8388608
  %tobool556.not = icmp eq i32 %and555, 0
  br i1 %tobool556.not, label %restore_sv, label %cond.true557

cond.true557:                                     ; preds = %if.then553
  %call558 = tail call ptr @Perl_mg_find(ptr noundef nonnull %arg2.sroa.0.2, i32 noundef 80) #3
  %tobool559.not = icmp eq ptr %call558, null
  br i1 %tobool559.not, label %restore_sv, label %if.then563

if.then563:                                       ; preds = %cond.true557
  %sv_refcnt564 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %132 = load i32, ptr %sv_refcnt564, align 8
  %inc565 = add i32 %132, 1
  store i32 %inc565, ptr %sv_refcnt564, align 8
  br label %restore_sv

if.then.i1180:                                    ; preds = %if.then545, %if.end541
  %sv_refcnt.i1181 = getelementptr inbounds nuw i8, ptr %arg2.sroa.0.2, i64 8
  %133 = load i32, ptr %sv_refcnt.i1181, align 8
  %cmp1.i1182 = icmp ugt i32 %133, 1
  br i1 %cmp1.i1182, label %if.then4.i1184, label %if.else.i1183

if.then4.i1184:                                   ; preds = %if.then.i1180
  %sub.i1185 = add i32 %133, -1
  store i32 %sub.i1185, ptr %sv_refcnt.i1181, align 8
  br label %S_SvREFCNT_dec.exit1186

if.else.i1183:                                    ; preds = %if.then.i1180
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg2.sroa.0.2, i32 noundef %133) #3
  br label %S_SvREFCNT_dec.exit1186

S_SvREFCNT_dec.exit1186:                          ; preds = %if.else.i1183, %if.then4.i1184
  %cmp.not.i1187 = icmp eq ptr %arg0.sroa.0.1, null
  br i1 %cmp.not.i1187, label %sw.epilog741, label %if.then.i1188

if.then.i1188:                                    ; preds = %S_SvREFCNT_dec.exit1186
  %sv_refcnt.i1189 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 8
  %134 = load i32, ptr %sv_refcnt.i1189, align 8
  %cmp1.i1190 = icmp ugt i32 %134, 1
  br i1 %cmp1.i1190, label %if.then4.i1192, label %if.else.i1191

if.then4.i1192:                                   ; preds = %if.then.i1188
  %sub.i1193 = add i32 %134, -1
  store i32 %sub.i1193, ptr %sv_refcnt.i1189, align 8
  br label %sw.epilog741

if.else.i1191:                                    ; preds = %if.then.i1188
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %134) #3
  br label %sw.epilog741

sw.bb569:                                         ; preds = %if.end25
  %call570 = tail call ptr @Perl_hv_common(ptr noundef %arg2.sroa.0.2, ptr noundef %arg1.sroa.0.2, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #3
  %cmp.not.i1195 = icmp eq ptr %arg1.sroa.0.2, null
  br i1 %cmp.not.i1195, label %S_SvREFCNT_dec.exit1202, label %if.then.i1196

if.then.i1196:                                    ; preds = %sw.bb569
  %sv_refcnt.i1197 = getelementptr inbounds nuw i8, ptr %arg1.sroa.0.2, i64 8
  %135 = load i32, ptr %sv_refcnt.i1197, align 8
  %cmp1.i1198 = icmp ugt i32 %135, 1
  br i1 %cmp1.i1198, label %if.then4.i1200, label %if.else.i1199

if.then4.i1200:                                   ; preds = %if.then.i1196
  %sub.i1201 = add i32 %135, -1
  store i32 %sub.i1201, ptr %sv_refcnt.i1197, align 8
  br label %S_SvREFCNT_dec.exit1202

if.else.i1199:                                    ; preds = %if.then.i1196
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg1.sroa.0.2, i32 noundef %135) #3
  br label %S_SvREFCNT_dec.exit1202

S_SvREFCNT_dec.exit1202:                          ; preds = %if.else.i1199, %if.then4.i1200, %sw.bb569
  %tobool571.not = icmp eq ptr %call570, null
  br i1 %tobool571.not, label %if.end599, label %if.then574

if.then574:                                       ; preds = %S_SvREFCNT_dec.exit1202
  %he_valu575 = getelementptr inbounds nuw i8, ptr %call570, i64 16
  %136 = load ptr, ptr %he_valu575, align 8
  %tobool576 = icmp eq ptr %136, null
  %cmp578 = icmp eq ptr %136, @PL_sv_undef
  %or.cond746.not = or i1 %tobool576, %cmp578
  br i1 %or.cond746.not, label %if.end599, label %if.then582

if.then582:                                       ; preds = %if.then574
  %sv_flags584 = getelementptr inbounds nuw i8, ptr %arg2.sroa.0.2, i64 12
  %137 = load i32, ptr %sv_flags584, align 4
  %and585 = and i32 %137, 8388608
  %tobool586.not = icmp eq i32 %and585, 0
  br i1 %tobool586.not, label %restore_sv, label %cond.true587

cond.true587:                                     ; preds = %if.then582
  %call588 = tail call ptr @Perl_mg_find(ptr noundef nonnull %arg2.sroa.0.2, i32 noundef 80) #3
  %tobool589.not = icmp eq ptr %call588, null
  br i1 %tobool589.not, label %restore_sv, label %if.then593

if.then593:                                       ; preds = %cond.true587
  %138 = load ptr, ptr %he_valu575, align 8
  %cmp.not.i1203 = icmp eq ptr %138, null
  br i1 %cmp.not.i1203, label %restore_sv.thread, label %if.then.i1204

restore_sv.thread:                                ; preds = %if.then593
  store ptr %arg0.sroa.0.1, ptr %he_valu575, align 8
  br label %S_SvREFCNT_dec.exit

if.then.i1204:                                    ; preds = %if.then593
  %sv_refcnt.i1205 = getelementptr inbounds nuw i8, ptr %138, i64 8
  %139 = load i32, ptr %sv_refcnt.i1205, align 8
  %inc.i = add i32 %139, 1
  store i32 %inc.i, ptr %sv_refcnt.i1205, align 8
  br label %restore_sv

if.end599:                                        ; preds = %if.then574, %S_SvREFCNT_dec.exit1202
  %cmp.not.i1206 = icmp eq ptr %arg2.sroa.0.2, null
  br i1 %cmp.not.i1206, label %S_SvREFCNT_dec.exit1213, label %if.then.i1207

if.then.i1207:                                    ; preds = %if.end599
  %sv_refcnt.i1208 = getelementptr inbounds nuw i8, ptr %arg2.sroa.0.2, i64 8
  %140 = load i32, ptr %sv_refcnt.i1208, align 8
  %cmp1.i1209 = icmp ugt i32 %140, 1
  br i1 %cmp1.i1209, label %if.then4.i1211, label %if.else.i1210

if.then4.i1211:                                   ; preds = %if.then.i1207
  %sub.i1212 = add i32 %140, -1
  store i32 %sub.i1212, ptr %sv_refcnt.i1208, align 8
  br label %S_SvREFCNT_dec.exit1213

if.else.i1210:                                    ; preds = %if.then.i1207
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg2.sroa.0.2, i32 noundef %140) #3
  br label %S_SvREFCNT_dec.exit1213

S_SvREFCNT_dec.exit1213:                          ; preds = %if.else.i1210, %if.then4.i1211, %if.end599
  %cmp.not.i1214 = icmp eq ptr %arg0.sroa.0.1, null
  br i1 %cmp.not.i1214, label %sw.epilog741, label %if.then.i1215

if.then.i1215:                                    ; preds = %S_SvREFCNT_dec.exit1213
  %sv_refcnt.i1216 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 8
  %141 = load i32, ptr %sv_refcnt.i1216, align 8
  %cmp1.i1217 = icmp ugt i32 %141, 1
  br i1 %cmp1.i1217, label %if.then4.i1219, label %if.else.i1218

if.then4.i1219:                                   ; preds = %if.then.i1215
  %sub.i1220 = add i32 %141, -1
  store i32 %sub.i1220, ptr %sv_refcnt.i1216, align 8
  br label %sw.epilog741

if.else.i1218:                                    ; preds = %if.then.i1215
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %141) #3
  br label %sw.epilog741

sw.bb602:                                         ; preds = %if.end25
  store ptr %arg0.sroa.0.1, ptr @PL_op, align 8
  br label %sw.epilog741

sw.bb603:                                         ; preds = %if.end25
  %142 = load i32, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  %and604 = and i32 %142, 131072
  %tobool605.not = icmp eq i32 %and604, 0
  br i1 %tobool605.not, label %if.end620, label %while.cond607.preheader

while.cond607.preheader:                          ; preds = %sw.bb603
  %143 = load ptr, ptr @PL_hintgv, align 8
  %sv_u6081260 = getelementptr inbounds nuw i8, ptr %143, i64 16
  %144 = load ptr, ptr %sv_u6081260, align 8
  %gp_hv6101261 = getelementptr inbounds nuw i8, ptr %144, i64 32
  %145 = load ptr, ptr %gp_hv6101261, align 8
  %tobool611.not1262 = icmp eq ptr %145, null
  br i1 %tobool611.not1262, label %if.end620, label %if.then.i1223.preheader

if.then.i1223.preheader:                          ; preds = %while.cond607.preheader
  br label %if.then.i1223

if.then.i1223:                                    ; preds = %S_SvREFCNT_dec.exit1229, %if.then.i1223.preheader
  %146 = phi ptr [ %150, %S_SvREFCNT_dec.exit1229 ], [ %145, %if.then.i1223.preheader ]
  %gp_hv6101263 = phi ptr [ %gp_hv610, %S_SvREFCNT_dec.exit1229 ], [ %gp_hv6101261, %if.then.i1223.preheader ]
  store ptr null, ptr %gp_hv6101263, align 8
  %sv_refcnt.i1224 = getelementptr inbounds nuw i8, ptr %146, i64 8
  %147 = load i32, ptr %sv_refcnt.i1224, align 8
  %cmp1.i1225 = icmp ugt i32 %147, 1
  br i1 %cmp1.i1225, label %if.then4.i1227, label %if.else.i1226

if.then4.i1227:                                   ; preds = %if.then.i1223
  %sub.i1228 = add i32 %147, -1
  store i32 %sub.i1228, ptr %sv_refcnt.i1224, align 8
  br label %S_SvREFCNT_dec.exit1229

if.else.i1226:                                    ; preds = %if.then.i1223
  tail call void @Perl_sv_free2(ptr noundef nonnull %146, i32 noundef %147) #3
  br label %S_SvREFCNT_dec.exit1229

S_SvREFCNT_dec.exit1229:                          ; preds = %if.else.i1226, %if.then4.i1227
  %148 = load ptr, ptr @PL_hintgv, align 8
  %sv_u608 = getelementptr inbounds nuw i8, ptr %148, i64 16
  %149 = load ptr, ptr %sv_u608, align 8
  %gp_hv610 = getelementptr inbounds nuw i8, ptr %149, i64 32
  %150 = load ptr, ptr %gp_hv610, align 8
  %tobool611.not = icmp eq ptr %150, null
  br i1 %tobool611.not, label %if.end620.loopexit, label %if.then.i1223, !llvm.loop !4

if.end620.loopexit:                               ; preds = %S_SvREFCNT_dec.exit1229
  br label %if.end620

if.end620:                                        ; preds = %if.end620.loopexit, %while.cond607.preheader, %sw.bb603
  %151 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 72), align 8
  tail call void @Perl_refcounted_he_free(ptr noundef %151) #3
  store ptr %arg0.sroa.0.1, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 72), align 8
  %152 = ptrtoint ptr %arg1.sroa.0.2 to i64
  %arg1.sroa.0.0.extract.trunc916 = trunc i64 %152 to i32
  store i32 %arg1.sroa.0.0.extract.trunc916, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  %and621 = and i32 %arg1.sroa.0.0.extract.trunc916, 131072
  %tobool622.not = icmp eq i32 %and621, 0
  br i1 %tobool622.not, label %if.end633, label %if.then623

if.then623:                                       ; preds = %if.end620
  %153 = load ptr, ptr @PL_hintgv, align 8
  %sv_u624 = getelementptr inbounds nuw i8, ptr %153, i64 16
  %154 = load ptr, ptr %sv_u624, align 8
  %gp_hv626 = getelementptr inbounds nuw i8, ptr %154, i64 32
  %155 = load ptr, ptr %gp_hv626, align 8
  %cmp.not.i1230 = icmp eq ptr %155, null
  br i1 %cmp.not.i1230, label %S_SvREFCNT_dec.exit1237, label %if.then.i1231

if.then.i1231:                                    ; preds = %if.then623
  %sv_refcnt.i1232 = getelementptr inbounds nuw i8, ptr %155, i64 8
  %156 = load i32, ptr %sv_refcnt.i1232, align 8
  %cmp1.i1233 = icmp ugt i32 %156, 1
  br i1 %cmp1.i1233, label %if.then4.i1235, label %if.else.i1234

if.then4.i1235:                                   ; preds = %if.then.i1231
  %sub.i1236 = add i32 %156, -1
  store i32 %sub.i1236, ptr %sv_refcnt.i1232, align 8
  br label %S_SvREFCNT_dec.exit1237

if.else.i1234:                                    ; preds = %if.then.i1231
  tail call void @Perl_sv_free2(ptr noundef nonnull %155, i32 noundef %156) #3
  br label %S_SvREFCNT_dec.exit1237

S_SvREFCNT_dec.exit1237:                          ; preds = %if.else.i1234, %if.then4.i1235, %if.then623
  %157 = load ptr, ptr @PL_savestack, align 8
  %158 = load i32, ptr @PL_savestack_ix, align 4
  %dec627 = add nsw i32 %158, -1
  store i32 %dec627, ptr @PL_savestack_ix, align 4
  %idxprom628 = sext i32 %dec627 to i64
  %arrayidx629 = getelementptr inbounds %union.any, ptr %157, i64 %idxprom628
  %159 = load ptr, ptr %arrayidx629, align 8
  %160 = load ptr, ptr @PL_hintgv, align 8
  %sv_u630 = getelementptr inbounds nuw i8, ptr %160, i64 16
  %161 = load ptr, ptr %sv_u630, align 8
  %gp_hv632 = getelementptr inbounds nuw i8, ptr %161, i64 32
  store ptr %159, ptr %gp_hv632, align 8
  br label %if.end633

if.end633:                                        ; preds = %S_SvREFCNT_dec.exit1237, %if.end620
  %162 = load ptr, ptr @PL_hintgv, align 8
  %sv_u634 = getelementptr inbounds nuw i8, ptr %162, i64 16
  %163 = load ptr, ptr %sv_u634, align 8
  %gp_hv636 = getelementptr inbounds nuw i8, ptr %163, i64 32
  %164 = load ptr, ptr %gp_hv636, align 8
  %tobool637.not = icmp eq ptr %164, null
  br i1 %tobool637.not, label %if.then638, label %sw.epilog741

if.then638:                                       ; preds = %if.end633
  %call640 = tail call ptr @Perl_newSV_type(i32 noundef 12) #3
  tail call void @Perl_sv_magic(ptr noundef %call640, ptr noundef null, i32 noundef 72, ptr noundef null, i32 noundef 0) #3
  %165 = load ptr, ptr @PL_hintgv, align 8
  %sv_u641 = getelementptr inbounds nuw i8, ptr %165, i64 16
  %166 = load ptr, ptr %sv_u641, align 8
  %gp_hv643 = getelementptr inbounds nuw i8, ptr %166, i64 32
  store ptr %call640, ptr %gp_hv643, align 8
  br label %sw.epilog741

sw.bb645:                                         ; preds = %if.end25
  store ptr %arg0.sroa.0.1, ptr @PL_comppad, align 8
  %tobool646.not = icmp eq ptr %arg0.sroa.0.1, null
  br i1 %tobool646.not, label %if.else651, label %if.then649

if.then649:                                       ; preds = %sw.bb645
  %sv_u650 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 16
  %167 = load ptr, ptr %sv_u650, align 8
  store ptr %167, ptr @PL_curpad, align 8
  br label %sw.epilog741

if.else651:                                       ; preds = %sw.bb645
  store ptr null, ptr @PL_curpad, align 8
  br label %sw.epilog741

sw.bb653:                                         ; preds = %if.end25
  %sv_u655 = getelementptr inbounds nuw i8, ptr %arg1.sroa.0.2, i64 16
  %168 = load ptr, ptr %sv_u655, align 8
  %169 = ptrtoint ptr %arg0.sroa.0.1 to i64
  %add.ptr656 = getelementptr inbounds nuw ptr, ptr %168, i64 %169
  %170 = load ptr, ptr %add.ptr656, align 8
  %call657 = tail call ptr @Perl_sv_2mortal(ptr noundef %170) #3
  store ptr %arg2.sroa.0.2, ptr %add.ptr656, align 8
  br label %sw.epilog741

sw.bb658:                                         ; preds = %if.end25
  %171 = load ptr, ptr @PL_stack_sp, align 8
  %172 = load ptr, ptr @PL_stack_base, align 8
  %sub.ptr.lhs.cast659 = ptrtoint ptr %171 to i64
  %sub.ptr.rhs.cast660 = ptrtoint ptr %172 to i64
  %sub.ptr.sub661 = sub i64 %sub.ptr.lhs.cast659, %sub.ptr.rhs.cast660
  %sub.ptr.div662 = ashr exact i64 %sub.ptr.sub661, 3
  %173 = load ptr, ptr %arg0.sroa.0.1, align 8
  %xav_fill = getelementptr inbounds nuw i8, ptr %173, i64 16
  store i64 %sub.ptr.div662, ptr %xav_fill, align 8
  %sv_u664 = getelementptr inbounds nuw i8, ptr %arg1.sroa.0.2, i64 16
  %174 = load ptr, ptr %sv_u664, align 8
  store ptr %174, ptr @PL_stack_base, align 8
  %175 = load ptr, ptr %arg1.sroa.0.2, align 8
  %xav_max = getelementptr inbounds nuw i8, ptr %175, i64 24
  %176 = load i64, ptr %xav_max, align 8
  %add.ptr666 = getelementptr inbounds ptr, ptr %174, i64 %176
  store ptr %add.ptr666, ptr @PL_stack_max, align 8
  %177 = load ptr, ptr %arg1.sroa.0.2, align 8
  %xav_fill668 = getelementptr inbounds nuw i8, ptr %177, i64 16
  %178 = load i64, ptr %xav_fill668, align 8
  %add.ptr669 = getelementptr inbounds ptr, ptr %174, i64 %178
  store ptr %add.ptr669, ptr @PL_stack_sp, align 8
  store ptr %arg1.sroa.0.2, ptr @PL_curstack, align 8
  %179 = load ptr, ptr @PL_curstackinfo, align 8
  store ptr %arg1.sroa.0.2, ptr %179, align 8
  br label %sw.epilog741

sw.bb670:                                         ; preds = %if.end25
  %180 = ptrtoint ptr %arg1.sroa.0.2 to i64
  %arg1.sroa.0.0.extract.trunc918 = trunc i64 %180 to i32
  %not = xor i32 %arg1.sroa.0.0.extract.trunc918, -1
  %sv_flags671 = getelementptr inbounds nuw i8, ptr %arg2.sroa.0.2, i64 12
  %181 = load i32, ptr %sv_flags671, align 4
  %and672 = and i32 %181, %not
  %182 = ptrtoint ptr %arg0.sroa.0.1 to i64
  %arg0.sroa.0.0.extract.trunc985 = trunc i64 %182 to i32
  %or674 = or i32 %and672, %arg0.sroa.0.0.extract.trunc985
  store i32 %or674, ptr %sv_flags671, align 4
  br label %sw.epilog741

sw.bb675:                                         ; preds = %if.end25
  tail call void @Perl_sv_clear(ptr noundef %arg0.sroa.0.1) #3
  br label %sw.epilog741

sw.bb676:                                         ; preds = %if.end25
  %183 = ptrtoint ptr %arg1.sroa.0.2 to i64
  store i64 %183, ptr %arg0.sroa.0.1, align 8
  br label %sw.epilog741

sw.bb677:                                         ; preds = %if.end25
  %184 = ptrtoint ptr %arg1.sroa.0.2 to i64
  store i64 %184, ptr %arg0.sroa.0.1, align 8
  br label %sw.epilog741

sw.bb678:                                         ; preds = %if.end25
  %shr679 = lshr i64 %4, 8
  %conv680 = trunc i64 %shr679 to i16
  store i16 %conv680, ptr %arg0.sroa.0.1, align 2
  br label %sw.epilog741

sw.bb681:                                         ; preds = %if.end25
  %shr682 = lshr i64 %4, 8
  %conv683 = trunc i64 %shr682 to i8
  store i8 %conv683, ptr %arg0.sroa.0.1, align 1
  br label %sw.epilog741

sw.bb684:                                         ; preds = %if.end25
  tail call void %arg1.sroa.0.2(ptr noundef %arg0.sroa.0.1) #3
  br label %sw.epilog741

sw.bb685:                                         ; preds = %if.end25
  %185 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 64), align 8
  %magicptr = ptrtoint ptr %185 to i64
  switch i64 %magicptr, label %if.then694 [
    i64 16, label %if.end695
    i64 8, label %if.end695
    i64 0, label %if.end695
  ]

if.then694:                                       ; preds = %sw.bb685
  tail call void @free(ptr noundef %185) #3
  br label %if.end695

if.end695:                                        ; preds = %if.then694, %sw.bb685, %sw.bb685, %sw.bb685
  store ptr %arg0.sroa.0.1, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 64), align 8
  br label %sw.epilog741

sw.bb696:                                         ; preds = %if.end25
  tail call void @Perl_parser_free(ptr noundef %arg0.sroa.0.1) #3
  br label %sw.epilog741

sw.bb697:                                         ; preds = %if.end25
  %sv_flags698 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 12
  %186 = load i32, ptr %sv_flags698, align 4
  %and699 = and i32 %186, -134283265
  store i32 %and699, ptr %sv_flags698, align 4
  br label %sw.epilog741

sw.bb700:                                         ; preds = %if.end25
  %gp_refcnt701 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 28
  %187 = load i32, ptr %gp_refcnt701, align 4
  %cmp702 = icmp eq i32 %187, 1
  br i1 %cmp702, label %if.then704, label %if.else718

if.then704:                                       ; preds = %sw.bb700
  %call705 = tail call ptr @Perl_newSV_type(i32 noundef 9) #3
  %call706 = tail call ptr @Perl_sv_2mortal(ptr noundef %call705) #3
  %sv_flags708 = getelementptr inbounds nuw i8, ptr %call706, i64 12
  %188 = load i32, ptr %sv_flags708, align 4
  %or709 = or i32 %188, 32768
  store i32 %or709, ptr %sv_flags708, align 4
  %sv_u712 = getelementptr inbounds nuw i8, ptr %call706, i64 16
  store ptr %arg0.sroa.0.1, ptr %sv_u712, align 8
  tail call void @Perl_gp_free(ptr noundef %call706) #3
  %189 = load i32, ptr %sv_flags708, align 4
  %and715 = and i32 %189, -32769
  store i32 %and715, ptr %sv_flags708, align 4
  br label %sw.epilog741

if.else718:                                       ; preds = %sw.bb700
  %dec720 = add i32 %187, -1
  store i32 %dec720, ptr %gp_refcnt701, align 4
  %tobool722.not = icmp ult i64 %4, 256
  br i1 %tobool722.not, label %if.else726, label %if.then723

if.then723:                                       ; preds = %if.else718
  %gp_flags = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 64
  %bf.load = load i32, ptr %gp_flags, align 8
  %bf.set = or i32 %bf.load, -2147483648
  store i32 %bf.set, ptr %gp_flags, align 8
  br label %sw.epilog741

if.else726:                                       ; preds = %if.else718
  %gp_flags727 = getelementptr inbounds nuw i8, ptr %arg0.sroa.0.1, i64 64
  %bf.load728 = load i32, ptr %gp_flags727, align 8
  %bf.clear734 = and i32 %bf.load728, 2147483647
  store i32 %bf.clear734, ptr %gp_flags727, align 8
  br label %sw.epilog741

sw.default739:                                    ; preds = %if.end25
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4, i32 noundef %and) #3
  br label %sw.epilog741

sw.epilog741.loopexit:                            ; preds = %for.inc
  br label %sw.epilog741

sw.epilog741:                                     ; preds = %sw.epilog741.loopexit, %sw.default739, %if.else726, %if.then723, %if.then704, %sw.bb697, %sw.bb696, %if.end695, %sw.bb684, %sw.bb681, %sw.bb678, %sw.bb677, %sw.bb676, %sw.bb675, %sw.bb670, %sw.bb658, %sw.bb653, %if.else651, %if.then649, %if.then638, %if.end633, %sw.bb602, %if.else.i1218, %if.then4.i1219, %S_SvREFCNT_dec.exit1213, %if.else.i1191, %if.then4.i1192, %S_SvREFCNT_dec.exit1186, %sw.bb526, %sw.bb521, %sw.bb520, %if.else.i1167, %if.then4.i1168, %sw.bb518, %S_SvREFCNT_dec.exit1162, %clearsv, %sw.bb367, %sw.bb366, %sw.bb364, %sw.bb363, %sw.bb362, %if.else.i1109, %if.then4.i1110, %sw.bb361, %if.else.i1101, %if.then.i1102, %sw.bb219, %sw.bb218, %sw.bb217, %sw.bb216, %sw.bb215, %sw.bb212, %sw.bb198, %sw.bb197, %sw.bb196, %sw.bb194, %if.else.i1095, %if.then.i1096, %if.else.i1081, %if.then.i1082, %if.else.i1067, %if.then4.i1068, %S_SvREFCNT_dec.exit1062, %if.then51, %sw.bb48, %if.then46, %sw.bb43, %if.else.i1051, %if.then4.i1052, %S_SvREFCNT_dec_NN.exit, %if.then30, %sw.bb
  %was.1 = phi i8 [ %was.01271, %sw.default739 ], [ %was.01271, %if.then30 ], [ %was.01271, %sw.bb ], [ %was.01271, %if.then46 ], [ %was.01271, %sw.bb43 ], [ %was.01271, %if.then51 ], [ %was.01271, %sw.bb48 ], [ %was.01271, %sw.bb194 ], [ %was.01271, %sw.bb196 ], [ %was.01271, %sw.bb197 ], [ %was.01271, %sw.bb212 ], [ %was.01271, %sw.bb215 ], [ %was.01271, %sw.bb216 ], [ %was.01271, %sw.bb217 ], [ %was.01271, %sw.bb218 ], [ %was.01271, %sw.bb219 ], [ %was.01271, %sw.bb362 ], [ %was.01271, %sw.bb363 ], [ %was.01271, %sw.bb364 ], [ %was.01271, %sw.bb366 ], [ %was.01271, %sw.bb367 ], [ %was.01271, %S_SvREFCNT_dec.exit1162 ], [ %was.01271, %sw.bb520 ], [ %was.01271, %sw.bb521 ], [ %was.01271, %sw.bb526 ], [ %was.01271, %sw.bb602 ], [ %was.01271, %if.end633 ], [ %was.01271, %if.then638 ], [ %was.01271, %if.then649 ], [ %was.01271, %if.else651 ], [ %was.01271, %sw.bb653 ], [ %was.01271, %sw.bb658 ], [ %was.01271, %sw.bb670 ], [ %was.01271, %sw.bb675 ], [ %was.01271, %sw.bb676 ], [ %was.01271, %sw.bb677 ], [ %was.01271, %sw.bb678 ], [ %was.01271, %sw.bb681 ], [ %was.01271, %sw.bb684 ], [ %was.01271, %if.end695 ], [ %was.01271, %sw.bb696 ], [ %was.01271, %sw.bb697 ], [ %spec.select, %sw.bb198 ], [ %was.01271, %if.then723 ], [ %was.01271, %if.else726 ], [ %was.01271, %if.then704 ], [ %was.01271, %S_SvREFCNT_dec_NN.exit ], [ %was.01271, %if.then4.i1052 ], [ %was.01271, %if.else.i1051 ], [ %was.01271, %S_SvREFCNT_dec.exit1062 ], [ %was.01271, %if.then4.i1068 ], [ %was.01271, %if.else.i1067 ], [ %was.01271, %if.then.i1082 ], [ %was.01271, %if.else.i1081 ], [ %was.01271, %if.then.i1096 ], [ %was.01271, %if.else.i1095 ], [ %was.01271, %if.then.i1102 ], [ %was.01271, %if.else.i1101 ], [ %was.01271, %sw.bb361 ], [ %was.01271, %if.then4.i1110 ], [ %was.01271, %if.else.i1109 ], [ %was.01271, %sw.bb518 ], [ %was.01271, %if.then4.i1168 ], [ %was.01271, %if.else.i1167 ], [ %was.01271, %S_SvREFCNT_dec.exit1186 ], [ %was.01271, %if.then4.i1192 ], [ %was.01271, %if.else.i1191 ], [ %was.01271, %S_SvREFCNT_dec.exit1213 ], [ %was.01271, %if.then4.i1219 ], [ %was.01271, %if.else.i1218 ], [ %was.01271, %clearsv ], [ %was.01271, %sw.epilog741.loopexit ]
  %190 = load i32, ptr @PL_savestack_ix, align 4
  %cmp1 = icmp sgt i32 %190, %base
  br i1 %cmp1, label %while.body, label %while.end742.loopexit, !llvm.loop !5

while.end742.loopexit:                            ; preds = %sw.epilog741
  %was.1.lcssa = phi i8 [ %was.1, %sw.epilog741 ]
  br label %while.end742

while.end742:                                     ; preds = %while.end742.loopexit, %if.end
  %was.0.lcssa = phi i8 [ %0, %if.end ], [ %was.1.lcssa, %while.end742.loopexit ]
  %storedv744 = and i8 %was.0.lcssa, 1
  store i8 %storedv744, ptr @PL_tainted, align 1
  ret void
}

declare void @Perl_mro_method_changed_in(ptr noundef) local_unnamed_addr #0

declare void @Perl_mro_isa_changed_in(ptr noundef) local_unnamed_addr #0

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #0

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #0

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #0

declare void @Perl_sv_replace(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #0

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

declare void @Perl_gp_free(ptr noundef) local_unnamed_addr #0

declare void @Perl_padname_free(ptr noundef) local_unnamed_addr #0

declare void @Perl_refcounted_he_free(ptr noundef) local_unnamed_addr #0

declare void @Perl_op_free(ptr noundef) local_unnamed_addr #0

declare void @Perl_hv_kill_backrefs(ptr noundef) local_unnamed_addr #0

declare i32 @Perl_sv_backoff(ptr noundef) local_unnamed_addr #0

declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @Perl_mg_free(ptr noundef) local_unnamed_addr #0

declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #0

declare void @Perl_hv_clear(ptr noundef) local_unnamed_addr #0

declare void @Perl_cv_undef(ptr noundef) local_unnamed_addr #0

declare void @Perl_unshare_hek(ptr noundef) local_unnamed_addr #0

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #0

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare ptr @Perl_av_delete(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @Perl_sv_clear(ptr noundef) local_unnamed_addr #0

declare void @Perl_parser_free(ptr noundef) local_unnamed_addr #0

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #0

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!0 = !{i8 0, i8 2}
!1 = !{}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
