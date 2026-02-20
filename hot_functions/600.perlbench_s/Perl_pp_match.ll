; ModuleID = '/tmp/tmp.fK2fH5vnSx/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/pp_hot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.regexp_paren_pair = type { i64, i64, i64 }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curcop = external global ptr, align 8
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_tmps_max = external local_unnamed_addr global i64, align 8
@.str.14 = external hidden unnamed_addr constant [16 x i8], align 1
@PL_curpm = external global ptr, align 8
@.str.15 = external hidden unnamed_addr constant [88 x i8], align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Perl_block_gimme() local_unnamed_addr #1

declare void @Perl_leave_scope(i32 noundef) local_unnamed_addr #1

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #1

declare i64 @Perl_tmps_grow_p(i64 noundef) local_unnamed_addr #1

declare ptr @Perl_sv_newmortal() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_match() local_unnamed_addr #2 {
entry:
  %len = alloca i64, align 8
  %0 = load ptr, ptr @PL_stack_sp, align 8
  %1 = load ptr, ptr @PL_op, align 8
  %op_pmregexp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %2 = load ptr, ptr %op_pmregexp, align 8
  %op_flags = getelementptr inbounds nuw i8, ptr %1, i64 34
  %3 = load i8, ptr %op_flags, align 2
  %4 = and i8 %3, 3
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %and = zext nneg i8 %4 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call i32 @Perl_block_gimme() #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and, %cond.true ], [ %call, %cond.false ]
  call void @llvm.lifetime.start.p0(ptr nonnull %len) #3
  %5 = load i32, ptr @PL_savestack_ix, align 4
  %6 = load ptr, ptr @PL_op, align 8
  %op_flags4 = getelementptr inbounds nuw i8, ptr %6, i64 34
  %7 = load i8, ptr %op_flags4, align 2
  %8 = and i8 %7, 64
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 -8
  %9 = load ptr, ptr %0, align 8
  br label %if.end31

if.else:                                          ; preds = %cond.end
  %op_targ = getelementptr inbounds nuw i8, ptr %6, i64 24
  %10 = load i64, ptr %op_targ, align 8
  %tobool8.not = icmp eq i64 %10, 0
  br i1 %tobool8.not, label %if.else11, label %if.then9

if.then9:                                         ; preds = %if.else
  %11 = load ptr, ptr @PL_curpad, align 8
  %arrayidx = getelementptr inbounds nuw ptr, ptr %11, i64 %10
  %12 = load ptr, ptr %arrayidx, align 8
  br label %if.end31

if.else11:                                        ; preds = %if.else
  %13 = load ptr, ptr @PL_defgv, align 8
  %sv_u = getelementptr inbounds nuw i8, ptr %13, i64 16
  %14 = load ptr, ptr %sv_u, align 8
  %15 = load ptr, ptr %14, align 8
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %cond.false17, label %cond.end22

cond.false17:                                     ; preds = %if.else11
  %call18 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %13, i32 noundef 0) #3
  %sv_u19 = getelementptr inbounds nuw i8, ptr %call18, i64 16
  %16 = load ptr, ptr %sv_u19, align 8
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false17, %if.else11
  %cond23 = phi ptr [ %16, %cond.false17 ], [ %14, %if.else11 ]
  %17 = load ptr, ptr %cond23, align 8
  %18 = load ptr, ptr @PL_stack_max, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then28, label %if.end31

if.then28:                                        ; preds = %cond.end22
  %call29 = tail call ptr @Perl_stack_grow(ptr noundef %0, ptr noundef %0, i64 noundef 1) #3
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %cond.end22, %if.then9, %if.then
  %targ.0 = phi ptr [ %9, %if.then ], [ %12, %if.then9 ], [ %17, %if.then28 ], [ %17, %cond.end22 ]
  %sp.0 = phi ptr [ %incdec.ptr, %if.then ], [ %0, %if.then9 ], [ %call29, %if.then28 ], [ %0, %cond.end22 ]
  store ptr %sp.0, ptr @PL_stack_sp, align 8
  %19 = getelementptr i8, ptr %2, i64 16
  %.val668 = load ptr, ptr %19, align 8
  %mother_re = getelementptr inbounds nuw i8, ptr %.val668, i64 40
  %20 = load ptr, ptr %mother_re, align 8
  %tobool33.not = icmp eq ptr %20, null
  br i1 %tobool33.not, label %cond.false45, label %cond.true34

cond.true34:                                      ; preds = %if.end31
  %sv_flags = getelementptr inbounds nuw i8, ptr %targ.0, i64 12
  %21 = load i32, ptr %sv_flags, align 4
  %and35 = and i32 %21, 2098176
  %cmp36 = icmp eq i32 %and35, 1024
  br i1 %cmp36, label %cond.true38, label %cond.false41

cond.true38:                                      ; preds = %cond.true34
  %22 = load ptr, ptr %targ.0, align 8
  %xpv_cur = getelementptr inbounds nuw i8, ptr %22, i64 16
  %23 = load i64, ptr %xpv_cur, align 8
  store i64 %23, ptr %len, align 8
  %sv_u39 = getelementptr inbounds nuw i8, ptr %targ.0, i64 16
  %24 = load ptr, ptr %sv_u39, align 8
  br label %cond.end59

cond.false41:                                     ; preds = %cond.true34
  %call42 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %targ.0, ptr noundef nonnull %len, i32 noundef 32) #3
  br label %cond.end59

cond.false45:                                     ; preds = %if.end31
  %sv_flags46 = getelementptr inbounds nuw i8, ptr %targ.0, i64 12
  %25 = load i32, ptr %sv_flags46, align 4
  %and47 = and i32 %25, 2098176
  %cmp48 = icmp eq i32 %and47, 1024
  br i1 %cmp48, label %cond.true50, label %cond.false55

cond.true50:                                      ; preds = %cond.false45
  %26 = load ptr, ptr %targ.0, align 8
  %xpv_cur52 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %27 = load i64, ptr %xpv_cur52, align 8
  store i64 %27, ptr %len, align 8
  %sv_u53 = getelementptr inbounds nuw i8, ptr %targ.0, i64 16
  %28 = load ptr, ptr %sv_u53, align 8
  br label %cond.end59

cond.false55:                                     ; preds = %cond.false45
  %call56 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %targ.0, ptr noundef nonnull %len, i32 noundef 34) #3
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false55, %cond.true50, %cond.false41, %cond.true38
  %cond60 = phi ptr [ %24, %cond.true38 ], [ %call42, %cond.false41 ], [ %28, %cond.true50 ], [ %call56, %cond.false55 ]
  %tobool61.not = icmp eq ptr %cond60, null
  br i1 %tobool61.not, label %if.then62, label %if.end64

if.then62:                                        ; preds = %cond.end59
  %call63 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.14) #3
  br label %cleanup468

if.end64:                                         ; preds = %cond.end59
  %29 = load i64, ptr %len, align 8
  %add.ptr65 = getelementptr inbounds nuw i8, ptr %cond60, i64 %29
  %.val667 = load ptr, ptr %19, align 8
  %extflags = getelementptr inbounds nuw i8, ptr %.val667, i64 56
  %30 = load i32, ptr %extflags, align 8
  %and67 = and i32 %30, 134217728
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end64
  %31 = load i8, ptr @PL_tainted, align 1, !range !0, !noundef !1
  %loadedv = trunc nuw i8 %31 to i1
  br i1 %loadedv, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %op_pmflags = getelementptr inbounds nuw i8, ptr %1, i64 64
  %32 = load i32, ptr %op_pmflags, align 8
  %and70 = and i32 %32, 524288
  %tobool71 = icmp ne i32 %and70, 0
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %lor.rhs, %if.end64
  %33 = phi i1 [ true, %if.end64 ], [ false, %lor.rhs ], [ %tobool71, %land.rhs ]
  store i8 0, ptr @PL_tainted, align 1
  %op_pmflags72 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %34 = load i32, ptr %op_pmflags72, align 8
  %and73 = and i32 %34, 16777216
  %and75 = and i32 %34, 2097152
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end78, label %nope

if.end78:                                         ; preds = %lor.end
  %.val666 = load ptr, ptr %19, align 8
  %mother_re80 = getelementptr inbounds nuw i8, ptr %.val666, i64 40
  %35 = load ptr, ptr %mother_re80, align 8
  %tobool81.not = icmp eq ptr %35, null
  br i1 %tobool81.not, label %land.lhs.true, label %if.end92

land.lhs.true:                                    ; preds = %if.end78
  %36 = load ptr, ptr %2, align 8
  %xpv_cur83 = getelementptr inbounds nuw i8, ptr %36, i64 16
  %37 = load i64, ptr %xpv_cur83, align 8
  %pre_prefix = getelementptr inbounds nuw i8, ptr %.val666, i64 176
  %bf.load = load i16, ptr %pre_prefix, align 8
  %bf.clear = and i16 %bf.load, 15
  %.neg = add nuw nsw i16 %bf.clear, 1
  %sub86 = zext nneg i16 %.neg to i64
  %tobool87 = icmp eq i64 %37, %sub86
  %38 = load ptr, ptr @PL_curpm, align 8
  %tobool89 = icmp ne ptr %38, null
  %or.cond = select i1 %tobool87, i1 %tobool89, i1 false
  br i1 %or.cond, label %if.then90, label %if.end92

if.then90:                                        ; preds = %land.lhs.true
  %op_pmregexp91 = getelementptr inbounds nuw i8, ptr %38, i64 56
  %39 = load ptr, ptr %op_pmregexp91, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %land.lhs.true, %if.end78
  %rx.0 = phi ptr [ %2, %if.end78 ], [ %39, %if.then90 ], [ %2, %land.lhs.true ]
  %pm.0 = phi ptr [ %1, %if.end78 ], [ %38, %if.then90 ], [ %1, %land.lhs.true ]
  %40 = getelementptr i8, ptr %rx.0, i64 16
  %rx.0.val665 = load ptr, ptr %40, align 8
  %minlen = getelementptr inbounds nuw i8, ptr %rx.0.val665, i64 64
  %41 = load i64, ptr %minlen, align 8
  %cmp94 = icmp sgt i64 %41, -1
  %cmp99 = icmp ugt i64 %41, %29
  %or.cond685 = select i1 %cmp94, i1 %cmp99, i1 false
  br i1 %or.cond685, label %nope, label %if.end102

if.end102:                                        ; preds = %if.end92
  %tobool103 = icmp ne i32 %and73, 0
  br i1 %tobool103, label %if.then104, label %if.end118

if.then104:                                       ; preds = %if.end102
  %call105 = call ptr @Perl_mg_find_mglob(ptr noundef nonnull %targ.0) #3
  %tobool106.not = icmp eq ptr %call105, null
  br i1 %tobool106.not, label %if.end118, label %land.lhs.true107

land.lhs.true107:                                 ; preds = %if.then104
  %mg_len = getelementptr inbounds nuw i8, ptr %call105, i64 24
  %42 = load i64, ptr %mg_len, align 8
  %cmp108 = icmp sgt i64 %42, -1
  br i1 %cmp108, label %if.then110, label %if.end118

if.then110:                                       ; preds = %land.lhs.true107
  %43 = load i64, ptr %len, align 8
  %mg_flags.i = getelementptr inbounds nuw i8, ptr %call105, i64 19
  %44 = load i8, ptr %mg_flags.i, align 1
  %45 = and i8 %44, 64
  %tobool.not.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %S_MgBYTEPOS.exit

lor.lhs.false.i:                                  ; preds = %if.then110
  %sv_flags.i = getelementptr inbounds nuw i8, ptr %targ.0, i64 12
  %46 = load i32, ptr %sv_flags.i, align 4
  %and1.i = and i32 %46, 536870912
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %S_MgBYTEPOS.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %47 = load ptr, ptr @PL_curcop, align 8
  %cop_hints.i = getelementptr inbounds nuw i8, ptr %47, i64 56
  %48 = load i32, ptr %cop_hints.i, align 8
  %and3.i = and i32 %48, 8
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %S_MgBYTEPOS.exit

if.else.i:                                        ; preds = %land.lhs.true.i
  %and7.i = and i32 %46, 2097152
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %cond.true.i

lor.lhs.false9.i:                                 ; preds = %if.else.i
  %and11.i = and i32 %46, 2048
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %cond.false.i, label %land.lhs.true13.i

land.lhs.true13.i:                                ; preds = %lor.lhs.false9.i
  %sv_u.i = getelementptr inbounds nuw i8, ptr %targ.0, i64 16
  %49 = load ptr, ptr %sv_u.i, align 8
  %sv_flags14.i = getelementptr inbounds nuw i8, ptr %49, i64 12
  %50 = load i32, ptr %sv_flags14.i, align 4
  %and15.i = and i32 %50, 1048576
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %cond.false.i, label %land.lhs.true17.i

land.lhs.true17.i:                                ; preds = %land.lhs.true13.i
  %51 = load ptr, ptr %49, align 8
  %52 = load ptr, ptr %51, align 8
  %sv_flags19.i = getelementptr inbounds nuw i8, ptr %52, i64 12
  %53 = load i32, ptr %sv_flags19.i, align 4
  %and20.i = and i32 %53, 268435456
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %land.lhs.true17.i, %if.else.i
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %cond60, i64 %43
  %call.i = call i64 @Perl_utf8_length(ptr noundef nonnull %cond60, ptr noundef nonnull %add.ptr.i) #3
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true17.i, %land.lhs.true13.i, %lor.lhs.false9.i
  %call22.i = call i64 @Perl_sv_len_utf8(ptr noundef nonnull %targ.0) #3
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %call.i, %cond.true.i ], [ %call22.i, %cond.false.i ]
  %cmp.i = icmp ugt i64 %42, %cond.i
  br i1 %cmp.i, label %if.then24.i, label %if.end.i

if.then24.i:                                      ; preds = %cond.end.i
  %add25.i = add i64 %43, 1
  br label %S_MgBYTEPOS.exit

if.end.i:                                         ; preds = %cond.end.i
  %54 = load i32, ptr %sv_flags.i, align 4
  %and.i.i = and i32 %54, 2097152
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %and2.i.i = and i32 %54, 2048
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end19.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %sv_u.i.i = getelementptr inbounds nuw i8, ptr %targ.0, i64 16
  %55 = load ptr, ptr %sv_u.i.i, align 8
  %sv_flags4.i.i = getelementptr inbounds nuw i8, ptr %55, i64 12
  %56 = load i32, ptr %sv_flags4.i.i, align 4
  %and5.i.i = and i32 %56, 1048576
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end19.i.i, label %land.lhs.true7.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %57 = load ptr, ptr %55, align 8
  %58 = load ptr, ptr %57, align 8
  %sv_flags9.i.i = getelementptr inbounds nuw i8, ptr %58, i64 12
  %59 = load i32, ptr %sv_flags9.i.i, align 4
  %and10.i.i = and i32 %59, 268435456
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end19.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i, %if.end.i
  %conv.i.i = trunc i64 %42 to i32
  %call.i.i = call ptr @Perl_utf8_hop(ptr noundef nonnull %cond60, i32 noundef %conv.i.i) #3
  %sub.ptr.lhs.cast16.i.i = ptrtoint ptr %call.i.i to i64
  %sub.ptr.rhs.cast17.i.i = ptrtoint ptr %cond60 to i64
  %sub.ptr.sub18.i.i = sub i64 %sub.ptr.lhs.cast16.i.i, %sub.ptr.rhs.cast17.i.i
  br label %S_MgBYTEPOS.exit

if.end19.i.i:                                     ; preds = %land.lhs.true7.i.i, %land.lhs.true.i.i, %lor.lhs.false.i.i
  %call20.i.i = call i64 @Perl_sv_pos_u2b_flags(ptr noundef nonnull %targ.0, i64 noundef %42, ptr noundef null, i32 noundef 32) #3
  br label %S_MgBYTEPOS.exit

S_MgBYTEPOS.exit:                                 ; preds = %if.end19.i.i, %if.then.i.i, %if.then24.i, %land.lhs.true.i, %lor.lhs.false.i, %if.then110
  %retval.1.i = phi i64 [ %add25.i, %if.then24.i ], [ %sub.ptr.sub18.i.i, %if.then.i.i ], [ %call20.i.i, %if.end19.i.i ], [ %42, %land.lhs.true.i ], [ %42, %lor.lhs.false.i ], [ %42, %if.then110 ]
  %60 = load i8, ptr %mg_flags.i, align 1
  %61 = and i8 %60, 1
  %spec.select = zext nneg i8 %61 to i64
  br label %if.end118

if.end118:                                        ; preds = %S_MgBYTEPOS.exit, %land.lhs.true107, %if.then104, %if.end102
  %curpos.0 = phi i64 [ 0, %land.lhs.true107 ], [ 0, %if.then104 ], [ 0, %if.end102 ], [ %retval.1.i, %S_MgBYTEPOS.exit ]
  %had_zerolen.0 = phi i64 [ 0, %land.lhs.true107 ], [ 0, %if.then104 ], [ 0, %if.end102 ], [ %spec.select, %S_MgBYTEPOS.exit ]
  %mg.0 = phi ptr [ %call105, %land.lhs.true107 ], [ null, %if.then104 ], [ null, %if.end102 ], [ %call105, %S_MgBYTEPOS.exit ]
  %cmp123 = icmp eq i32 %cond, 3
  %or.cond487 = select i1 %tobool103, i1 %cmp123, i1 false
  %spec.select639 = select i1 %or.cond487, i8 33, i8 97
  %sv_flags174 = getelementptr inbounds nuw i8, ptr %targ.0, i64 12
  %cmp250 = icmp ne i32 %cond, 3
  %sv_flags387 = getelementptr inbounds nuw i8, ptr %targ.0, i64 12
  %or425 = or disjoint i8 %spec.select639, 24
  br label %play_it_again

play_it_again:                                    ; preds = %cleanup436, %if.end118
  %r_flags.1 = phi i8 [ %spec.select639, %if.end118 ], [ %or425, %cleanup436 ]
  %curpos.1 = phi i64 [ %curpos.0, %if.end118 ], [ %119, %cleanup436 ]
  %s.0 = phi ptr [ %cond60, %if.end118 ], [ %add.ptr132, %cleanup436 ]
  %had_zerolen.1 = phi i64 [ %had_zerolen.0, %if.end118 ], [ %conv423, %cleanup436 ]
  %mg.1 = phi ptr [ %mg.0, %if.end118 ], [ %mg.3, %cleanup436 ]
  %sp.1 = phi ptr [ %sp.0, %if.end118 ], [ %sp.3.lcssa, %cleanup436 ]
  %add.ptr132 = getelementptr inbounds i8, ptr %cond60, i64 %curpos.1
  %spec.select640 = select i1 %tobool103, ptr %add.ptr132, ptr %s.0
  %rx.0.val663 = load ptr, ptr %40, align 8
  %engine = getelementptr inbounds nuw i8, ptr %rx.0.val663, i64 32
  %62 = load ptr, ptr %engine, align 8
  %exec = getelementptr inbounds nuw i8, ptr %62, i64 8
  %63 = load ptr, ptr %exec, align 8
  %conv136 = zext nneg i8 %r_flags.1 to i32
  %call137 = call i32 %63(ptr noundef nonnull %rx.0, ptr noundef %spec.select640, ptr noundef %add.ptr65, ptr noundef %cond60, i64 noundef %had_zerolen.1, ptr noundef %targ.0, ptr noundef null, i32 noundef %conv136) #3
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %nope.loopexit, label %if.end140

if.end140:                                        ; preds = %play_it_again
  store ptr %pm.0, ptr @PL_curpm, align 8
  %64 = load i32, ptr %op_pmflags72, align 8
  %and142 = and i32 %64, 1048576
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end147, label %if.then144

if.then144:                                       ; preds = %if.end140
  %or146 = or i32 %64, 2097152
  store i32 %or146, ptr %op_pmflags72, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %if.end140
  br i1 %33, label %if.then149, label %if.end153

if.then149:                                       ; preds = %if.end147
  %rx.0.val662 = load ptr, ptr %40, align 8
  %extflags151 = getelementptr inbounds nuw i8, ptr %rx.0.val662, i64 56
  %65 = load i32, ptr %extflags151, align 8
  %or152 = or i32 %65, 67108864
  store i32 %or152, ptr %extflags151, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then149, %if.end147
  %rx.0.val661 = load ptr, ptr %40, align 8
  %extflags155 = getelementptr inbounds nuw i8, ptr %rx.0.val661, i64 56
  %66 = load i32, ptr %extflags155, align 8
  %and156 = and i32 %66, 67108864
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end161, label %if.then160

if.then160:                                       ; preds = %if.end153
  store i8 1, ptr @PL_tainted, align 1
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %if.end153
  br i1 %tobool103, label %land.lhs.true163, label %if.end244

land.lhs.true163:                                 ; preds = %if.end161
  br i1 %cmp123, label %lor.lhs.false, label %if.then169

lor.lhs.false:                                    ; preds = %land.lhs.true163
  %67 = load i32, ptr %op_pmflags72, align 8
  %and167 = and i32 %67, 33554432
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.end244, label %if.then169

if.then169:                                       ; preds = %lor.lhs.false, %land.lhs.true163
  %tobool170.not = icmp eq ptr %mg.1, null
  br i1 %tobool170.not, label %if.then171, label %if.end173

if.then171:                                       ; preds = %if.then169
  %call172 = call ptr @Perl_sv_magicext_mglob(ptr noundef %targ.0) #3
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %if.then169
  %mg.2 = phi ptr [ %mg.1, %if.then169 ], [ %call172, %if.then171 ]
  %68 = load i32, ptr %sv_flags174, align 4
  %and175 = and i32 %68, 1024
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %cond.false193, label %land.lhs.true177

land.lhs.true177:                                 ; preds = %if.end173
  %and179 = and i32 %68, 2097152
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %cond.true184, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %land.lhs.true177
  %targ.0.val = load ptr, ptr %targ.0, align 8
  %xmg_u.i = getelementptr inbounds nuw i8, ptr %targ.0.val, i64 8
  %mg.01.i = load ptr, ptr %xmg_u.i, align 8
  %tobool.not2.i = icmp eq ptr %mg.01.i, null
  br i1 %tobool.not2.i, label %cond.true184, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %lor.lhs.false181
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i671, %while.body.i.preheader
  %mg.03.i = phi ptr [ %mg.0.i, %if.end.i671 ], [ %mg.01.i, %while.body.i.preheader ]
  %mg_type.i = getelementptr inbounds nuw i8, ptr %mg.03.i, i64 18
  %69 = load i8, ptr %mg_type.i, align 2
  %cmp.not.i = icmp eq i8 %69, 116
  br i1 %cmp.not.i, label %if.end.i671, label %land.lhs.true.i669

land.lhs.true.i669:                               ; preds = %while.body.i
  %mg_flags.i670 = getelementptr inbounds nuw i8, ptr %mg.03.i, i64 19
  %70 = load i8, ptr %mg_flags.i670, align 1
  %71 = and i8 %70, 4
  %tobool3.not.i = icmp eq i8 %71, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %if.end.i671

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i669
  %mg_virtual.i = getelementptr inbounds nuw i8, ptr %mg.03.i, i64 8
  %72 = load ptr, ptr %mg_virtual.i, align 8
  %73 = load ptr, ptr %72, align 8
  %tobool5.not.i = icmp eq ptr %73, null
  br i1 %tobool5.not.i, label %if.end.i671, label %cond.false193.loopexit

if.end.i671:                                      ; preds = %land.lhs.true4.i, %land.lhs.true.i669, %while.body.i
  %mg.0.i = load ptr, ptr %mg.03.i, align 8
  %tobool.not.i672 = icmp eq ptr %mg.0.i, null
  br i1 %tobool.not.i672, label %cond.true184.loopexit, label %while.body.i, !llvm.loop !2

cond.true184.loopexit:                            ; preds = %if.end.i671
  br label %cond.true184

cond.true184:                                     ; preds = %cond.true184.loopexit, %lor.lhs.false181, %land.lhs.true177
  %rx.0.val660 = load ptr, ptr %40, align 8
  %offs = getelementptr inbounds nuw i8, ptr %rx.0.val660, i64 120
  %74 = load ptr, ptr %offs, align 8
  %end = getelementptr inbounds nuw i8, ptr %74, i64 8
  %75 = load i64, ptr %end, align 8
  %mg_len187 = getelementptr inbounds nuw i8, ptr %mg.2, i64 24
  store i64 %75, ptr %mg_len187, align 8
  %mg_flags188 = getelementptr inbounds nuw i8, ptr %mg.2, i64 19
  %76 = load i8, ptr %mg_flags188, align 1
  %77 = or i8 %76, 64
  store i8 %77, ptr %mg_flags188, align 1
  br label %cond.end220

cond.false193.loopexit:                           ; preds = %land.lhs.true4.i
  br label %cond.false193

cond.false193:                                    ; preds = %cond.false193.loopexit, %if.end173
  %and195 = and i32 %68, 536870912
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %cond.false207, label %land.lhs.true197

land.lhs.true197:                                 ; preds = %cond.false193
  %78 = load ptr, ptr @PL_curcop, align 8
  %cop_hints = getelementptr inbounds nuw i8, ptr %78, i64 56
  %79 = load i32, ptr %cop_hints, align 8
  %and198 = and i32 %79, 8
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %cond.true200, label %cond.false207

cond.true200:                                     ; preds = %land.lhs.true197
  %rx.0.val659 = load ptr, ptr %40, align 8
  %offs202 = getelementptr inbounds nuw i8, ptr %rx.0.val659, i64 120
  %80 = load ptr, ptr %offs202, align 8
  %end204 = getelementptr inbounds nuw i8, ptr %80, i64 8
  %81 = load i64, ptr %end204, align 8
  %add.ptr205 = getelementptr inbounds i8, ptr %cond60, i64 %81
  %call206 = call i64 @Perl_utf8_length(ptr noundef %cond60, ptr noundef %add.ptr205) #3
  br label %cond.end212

cond.false207:                                    ; preds = %land.lhs.true197, %cond.false193
  %rx.0.val658 = load ptr, ptr %40, align 8
  %offs209 = getelementptr inbounds nuw i8, ptr %rx.0.val658, i64 120
  %82 = load ptr, ptr %offs209, align 8
  %end211 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %83 = load i64, ptr %end211, align 8
  br label %cond.end212

cond.end212:                                      ; preds = %cond.false207, %cond.true200
  %cond213 = phi i64 [ %call206, %cond.true200 ], [ %83, %cond.false207 ]
  %mg_len214 = getelementptr inbounds nuw i8, ptr %mg.2, i64 24
  store i64 %cond213, ptr %mg_len214, align 8
  %mg_flags215 = getelementptr inbounds nuw i8, ptr %mg.2, i64 19
  %84 = load i8, ptr %mg_flags215, align 1
  %85 = and i8 %84, -65
  store i8 %85, ptr %mg_flags215, align 1
  br label %cond.end220

cond.end220:                                      ; preds = %cond.end212, %cond.true184
  %rx.0.val657 = load ptr, ptr %40, align 8
  %offs223 = getelementptr inbounds nuw i8, ptr %rx.0.val657, i64 120
  %86 = load ptr, ptr %offs223, align 8
  %87 = load i64, ptr %86, align 8
  %gofs = getelementptr inbounds nuw i8, ptr %rx.0.val657, i64 80
  %88 = load i64, ptr %gofs, align 8
  %add226 = add nsw i64 %88, %87
  %end230 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %89 = load i64, ptr %end230, align 8
  %cmp231 = icmp eq i64 %add226, %89
  br i1 %cmp231, label %if.then233, label %if.else238

if.then233:                                       ; preds = %cond.end220
  %mg_flags234 = getelementptr inbounds nuw i8, ptr %mg.2, i64 19
  %90 = load i8, ptr %mg_flags234, align 1
  %91 = or i8 %90, 1
  store i8 %91, ptr %mg_flags234, align 1
  br label %if.end244

if.else238:                                       ; preds = %cond.end220
  %mg_flags239 = getelementptr inbounds nuw i8, ptr %mg.2, i64 19
  %92 = load i8, ptr %mg_flags239, align 1
  %93 = and i8 %92, -2
  store i8 %93, ptr %mg_flags239, align 1
  br label %if.end244

if.end244:                                        ; preds = %if.else238, %if.then233, %lor.lhs.false, %if.end161
  %mg.3 = phi ptr [ %mg.2, %if.then233 ], [ %mg.2, %if.else238 ], [ %mg.1, %lor.lhs.false ], [ %mg.1, %if.end161 ]
  %rx.0.val654 = load ptr, ptr %40, align 8
  %nparens = getelementptr inbounds nuw i8, ptr %rx.0.val654, i64 96
  %94 = load i32, ptr %nparens, align 8
  %95 = or i32 %94, %and73
  %or.cond488.not638 = icmp eq i32 %95, 0
  %or.cond489 = select i1 %or.cond488.not638, i1 true, i1 %cmp250
  br i1 %or.cond489, label %do.body253, label %if.end261

do.body253:                                       ; preds = %if.end244
  %sp.1.lcssa701 = phi ptr [ %sp.1, %if.end244 ]
  %96 = load i32, ptr @PL_savestack_ix, align 4
  %cmp254 = icmp sgt i32 %96, %5
  br i1 %cmp254, label %if.then256, label %do.end259

if.then256:                                       ; preds = %do.body253
  call void @Perl_leave_scope(i32 noundef %5) #3
  br label %do.end259

do.end259:                                        ; preds = %if.then256, %do.body253
  %incdec.ptr260 = getelementptr inbounds nuw i8, ptr %sp.1.lcssa701, i64 8
  store ptr @PL_sv_yes, ptr %incdec.ptr260, align 8
  store ptr %incdec.ptr260, ptr @PL_stack_sp, align 8
  %97 = load ptr, ptr @PL_op, align 8
  %98 = load ptr, ptr %97, align 8
  br label %cleanup468

if.end261:                                        ; preds = %if.end244
  %tobool267.not = icmp eq i32 %94, 0
  %99 = and i1 %tobool103, %tobool267.not
  %cond269 = zext i1 %99 to i32
  %100 = load ptr, ptr @PL_stack_sp, align 8
  %101 = load ptr, ptr @PL_stack_max, align 8
  %sub.ptr.lhs.cast271 = ptrtoint ptr %101 to i64
  %sub.ptr.rhs.cast272 = ptrtoint ptr %100 to i64
  %sub.ptr.sub273 = sub i64 %sub.ptr.lhs.cast271, %sub.ptr.rhs.cast272
  %sub.ptr.div274 = ashr exact i64 %sub.ptr.sub273, 3
  %add275 = add nsw i32 %94, %cond269
  %conv276 = sext i32 %add275 to i64
  %cmp277 = icmp slt i64 %sub.ptr.div274, %conv276
  br i1 %cmp277, label %if.then281, label %do.body288

if.then281:                                       ; preds = %if.end261
  %call284 = call ptr @Perl_stack_grow(ptr noundef %100, ptr noundef %100, i64 noundef %conv276) #3
  br label %do.body288

do.body288:                                       ; preds = %if.then281, %if.end261
  %sp.2 = phi ptr [ %call284, %if.then281 ], [ %100, %if.end261 ]
  %102 = load i64, ptr @PL_tmps_ix, align 8
  %add291 = add nsw i64 %102, %conv276
  %103 = load i64, ptr @PL_tmps_max, align 8
  %cmp292.not = icmp slt i64 %add291, %103
  br i1 %cmp292.not, label %if.end298, label %if.then296

if.then296:                                       ; preds = %do.body288
  %call297 = call i64 @Perl_tmps_grow_p(i64 noundef %add291) #3
  br label %if.end298

if.end298:                                        ; preds = %if.then296, %do.body288
  %lnot302 = xor i1 %99, true
  %lnot.ext = zext i1 %lnot302 to i32
  %cmp303.not694 = icmp slt i32 %94, %lnot.ext
  br i1 %cmp303.not694, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end298
  %104 = zext i1 %lnot302 to i64
  %105 = add i32 %94, 1
  %wide.trip.count = zext i32 %105 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ %104, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %sp.3696 = phi ptr [ %incdec.ptr306, %for.inc ], [ %sp.2, %for.body.preheader ]
  %call305 = call ptr @Perl_sv_newmortal() #3
  %incdec.ptr306 = getelementptr inbounds nuw i8, ptr %sp.3696, i64 8
  store ptr %call305, ptr %incdec.ptr306, align 8
  %rx.0.val652 = load ptr, ptr %40, align 8
  %offs308 = getelementptr inbounds nuw i8, ptr %rx.0.val652, i64 120
  %106 = load ptr, ptr %offs308, align 8
  %arrayidx309 = getelementptr inbounds nuw %struct.regexp_paren_pair, ptr %106, i64 %indvars.iv
  %107 = load i64, ptr %arrayidx309, align 8
  %cmp311.not = icmp eq i64 %107, -1
  br i1 %cmp311.not, label %for.inc, label %land.lhs.true313

land.lhs.true313:                                 ; preds = %for.body
  %end318 = getelementptr inbounds nuw i8, ptr %arrayidx309, i64 8
  %108 = load i64, ptr %end318, align 8
  %cmp319.not = icmp eq i64 %108, -1
  br i1 %cmp319.not, label %for.inc, label %if.then323

if.then323:                                       ; preds = %land.lhs.true313
  %sub335 = sub nsw i64 %108, %107
  %add.ptr343 = getelementptr inbounds i8, ptr %cond60, i64 %107
  %cmp349 = icmp slt i64 %108, 0
  br i1 %cmp349, label %cleanup, label %lor.lhs.false351

lor.lhs.false351:                                 ; preds = %if.then323
  %cmp357 = icmp slt i64 %107, 0
  %109 = and i64 %sub335, 2147483648
  %cmp360 = icmp ne i64 %109, 0
  %or.cond490 = select i1 %cmp357, i1 true, i1 %cmp360
  br i1 %or.cond490, label %cleanup, label %lor.lhs.false362

lor.lhs.false362:                                 ; preds = %lor.lhs.false351
  %conv363 = and i64 %sub335, 2147483647
  %gepdiff = sub nsw i64 %29, %107
  %cmp367 = icmp sgt i64 %conv363, %gepdiff
  br i1 %cmp367, label %cleanup, label %if.end385

if.end385:                                        ; preds = %lor.lhs.false362
  call void @Perl_sv_setpvn(ptr noundef %call305, ptr noundef %add.ptr343, i64 noundef %conv363) #3
  %110 = load i32, ptr %sv_flags387, align 4
  %and388 = and i32 %110, 536870912
  %tobool389.not = icmp eq i32 %and388, 0
  br i1 %tobool389.not, label %for.inc, label %land.lhs.true390

land.lhs.true390:                                 ; preds = %if.end385
  %111 = load ptr, ptr @PL_curcop, align 8
  %cop_hints391 = getelementptr inbounds nuw i8, ptr %111, i64 56
  %112 = load i32, ptr %cop_hints391, align 8
  %and393 = and i32 %112, 8
  %tobool394.not = icmp eq i32 %and393, 0
  br i1 %tobool394.not, label %land.lhs.true395, label %for.inc

land.lhs.true395:                                 ; preds = %land.lhs.true390
  %call397 = call zeroext i1 @Perl_is_utf8_string(ptr noundef %add.ptr343, i64 noundef %conv363) #3
  br i1 %call397, label %if.then399, label %for.inc

if.then399:                                       ; preds = %land.lhs.true395
  %113 = load ptr, ptr %incdec.ptr306, align 8
  %sv_flags400 = getelementptr inbounds nuw i8, ptr %113, i64 12
  %114 = load i32, ptr %sv_flags400, align 4
  %or401 = or i32 %114, 536870912
  store i32 %or401, ptr %sv_flags400, align 4
  br label %for.inc

cleanup:                                          ; preds = %lor.lhs.false362, %lor.lhs.false351, %if.then323
  %idxprom.lcssa = phi i64 [ %indvars.iv, %lor.lhs.false362 ], [ %indvars.iv, %lor.lhs.false351 ], [ %indvars.iv, %if.then323 ]
  %.lcssa697 = phi i64 [ %107, %lor.lhs.false362 ], [ %107, %lor.lhs.false351 ], [ %107, %if.then323 ]
  %sub335.lcssa = phi i64 [ %sub335, %lor.lhs.false362 ], [ %sub335, %lor.lhs.false351 ], [ %sub335, %if.then323 ]
  %add.ptr343.lcssa = phi ptr [ %add.ptr343, %lor.lhs.false362 ], [ %add.ptr343, %lor.lhs.false351 ], [ %add.ptr343, %if.then323 ]
  %.lcssa = phi i64 [ %108, %lor.lhs.false362 ], [ %108, %lor.lhs.false351 ], [ %108, %if.then323 ]
  %sext = shl i64 %sub335.lcssa, 32
  %conv383 = ashr exact i64 %sext, 32
  %call384 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.15, i64 noundef %idxprom.lcssa, i64 noundef %.lcssa697, i64 noundef %.lcssa, ptr noundef %add.ptr343.lcssa, ptr noundef %add.ptr65, i64 noundef %conv383) #3
  br label %cleanup468

for.inc:                                          ; preds = %if.then399, %land.lhs.true395, %land.lhs.true390, %if.end385, %land.lhs.true313, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.body, label %for.end.loopexit, !llvm.loop !4

for.end.loopexit:                                 ; preds = %for.inc
  %incdec.ptr306.lcssa700 = phi ptr [ %incdec.ptr306, %for.inc ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end298
  %sp.3.lcssa = phi ptr [ %sp.2, %if.end298 ], [ %incdec.ptr306.lcssa700, %for.end.loopexit ]
  br i1 %tobool103, label %cleanup436, label %do.body428

do.body428:                                       ; preds = %for.end
  %sp.3.lcssa.lcssa = phi ptr [ %sp.3.lcssa, %for.end ]
  %115 = load i32, ptr @PL_savestack_ix, align 4
  %cmp429 = icmp sgt i32 %115, %5
  br i1 %cmp429, label %if.then431, label %do.end434

if.then431:                                       ; preds = %do.body428
  call void @Perl_leave_scope(i32 noundef %5) #3
  br label %do.end434

do.end434:                                        ; preds = %if.then431, %do.body428
  store ptr %sp.3.lcssa.lcssa, ptr @PL_stack_sp, align 8
  %116 = load ptr, ptr @PL_op, align 8
  %117 = load ptr, ptr %116, align 8
  br label %cleanup468

cleanup436:                                       ; preds = %for.end
  %rx.0.val643 = load ptr, ptr %40, align 8
  %offs408 = getelementptr inbounds nuw i8, ptr %rx.0.val643, i64 120
  %118 = load ptr, ptr %offs408, align 8
  %end410 = getelementptr inbounds nuw i8, ptr %118, i64 8
  %119 = load i64, ptr %end410, align 8
  %120 = load i64, ptr %118, align 8
  %gofs416 = getelementptr inbounds nuw i8, ptr %rx.0.val643, i64 80
  %121 = load i64, ptr %gofs416, align 8
  %add417 = add nsw i64 %121, %120
  %cmp422 = icmp eq i64 %add417, %119
  %conv423 = zext i1 %cmp422 to i64
  store ptr %sp.3.lcssa, ptr @PL_stack_sp, align 8
  br label %play_it_again

nope.loopexit:                                    ; preds = %play_it_again
  %mg.1.lcssa = phi ptr [ %mg.1, %play_it_again ]
  %sp.1.lcssa = phi ptr [ %sp.1, %play_it_again ]
  br label %nope

nope:                                             ; preds = %nope.loopexit, %if.end92, %lor.end
  %mg.4 = phi ptr [ null, %lor.end ], [ null, %if.end92 ], [ %mg.1.lcssa, %nope.loopexit ]
  %sp.5 = phi ptr [ %sp.0, %lor.end ], [ %sp.0, %if.end92 ], [ %sp.1.lcssa, %nope.loopexit ]
  %tobool439.not = icmp eq i32 %and73, 0
  br i1 %tobool439.not, label %do.body454, label %land.lhs.true440

land.lhs.true440:                                 ; preds = %nope
  %122 = load i32, ptr %op_pmflags72, align 8
  %and442 = and i32 %122, 33554432
  %tobool443.not = icmp eq i32 %and442, 0
  br i1 %tobool443.not, label %if.then444, label %do.body454

if.then444:                                       ; preds = %land.lhs.true440
  %tobool445.not = icmp eq ptr %mg.4, null
  br i1 %tobool445.not, label %if.end448, label %if.then450

if.end448:                                        ; preds = %if.then444
  %call447 = call ptr @Perl_mg_find_mglob(ptr noundef %targ.0) #3
  %tobool449.not = icmp eq ptr %call447, null
  br i1 %tobool449.not, label %do.body454, label %if.then450

if.then450:                                       ; preds = %if.end448, %if.then444
  %mg.5684 = phi ptr [ %call447, %if.end448 ], [ %mg.4, %if.then444 ]
  %mg_len451 = getelementptr inbounds nuw i8, ptr %mg.5684, i64 24
  store i64 -1, ptr %mg_len451, align 8
  br label %do.body454

do.body454:                                       ; preds = %if.then450, %if.end448, %land.lhs.true440, %nope
  %123 = load i32, ptr @PL_savestack_ix, align 4
  %cmp455 = icmp sgt i32 %123, %5
  br i1 %cmp455, label %if.then457, label %do.end460

if.then457:                                       ; preds = %do.body454
  call void @Perl_leave_scope(i32 noundef %5) #3
  br label %do.end460

do.end460:                                        ; preds = %if.then457, %do.body454
  %cmp461 = icmp eq i32 %cond, 3
  br i1 %cmp461, label %if.then463, label %if.end465

if.then463:                                       ; preds = %do.end460
  store ptr %sp.5, ptr @PL_stack_sp, align 8
  %124 = load ptr, ptr @PL_op, align 8
  %125 = load ptr, ptr %124, align 8
  br label %cleanup468

if.end465:                                        ; preds = %do.end460
  %incdec.ptr466 = getelementptr inbounds nuw i8, ptr %sp.5, i64 8
  store ptr @PL_sv_no, ptr %incdec.ptr466, align 8
  store ptr %incdec.ptr466, ptr @PL_stack_sp, align 8
  %126 = load ptr, ptr @PL_op, align 8
  %127 = load ptr, ptr %126, align 8
  br label %cleanup468

cleanup468:                                       ; preds = %if.end465, %if.then463, %do.end434, %cleanup, %do.end259, %if.then62
  %retval.5 = phi ptr [ %125, %if.then463 ], [ %127, %if.end465 ], [ %98, %do.end259 ], [ %call63, %if.then62 ], [ %117, %do.end434 ], [ %call384, %cleanup ]
  call void @llvm.lifetime.end.p0(ptr nonnull %len) #3
  ret ptr %retval.5
}

declare ptr @Perl_mg_find_mglob(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_sv_magicext_mglob(ptr noundef) local_unnamed_addr #1

declare i64 @Perl_utf8_length(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @Perl_is_utf8_string(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @Perl_sv_len_utf8(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_utf8_hop(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @Perl_sv_pos_u2b_flags(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!0 = !{i8 0, i8 2}
!1 = !{}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
