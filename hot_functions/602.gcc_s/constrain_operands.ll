; ModuleID = '/tmp/tmp.qybayP1kbe/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/recog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.funny_match = type { i32, i32 }

@which_alternative = external dso_local local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@reload_in_progress = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@recog_data = external dso_local global %struct.recog_data, align 8
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @constrain_operands(i32 noundef %strict) local_unnamed_addr #1 {
entry:
  %constraints.i = alloca [30 x ptr], align 16
  %end.i = alloca ptr, align 8
  %constraints = alloca [30 x ptr], align 16
  %matching_operands = alloca [30 x i32], align 16
  %earlyclobber = alloca [30 x i32], align 16
  %funny_match = alloca [30 x %struct.funny_match], align 16
  %end = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %constraints) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %matching_operands) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %earlyclobber) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %funny_match) #5
  store i32 0, ptr @which_alternative, align 4
  %0 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1086), align 2
  %cmp = icmp eq i8 %0, 0
  %1 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1088), align 8
  %cmp3 = icmp eq i8 %1, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %cleanup669, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %conv5 = sext i8 %0 to i32
  %cmp6965 = icmp sgt i8 %0, 0
  br i1 %cmp6965, label %for.body.preheader, label %do.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %2 = zext i32 %conv5 to i64
  %3 = shl nuw nsw i64 %2, 2
  call void @llvm.memset.p0.i64(ptr align 4 %matching_operands, i8 -1, i64 %3, i1 false)
  %4 = zext i32 %conv5 to i64
  %5 = shl nuw nsw i64 %4, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %constraints, ptr align 8 getelementptr inbounds nuw (i8, ptr @recog_data, i64 480), i64 %5, i1 false)
  br label %do.body.preheader.loopexit

do.body.preheader.loopexit:                       ; preds = %for.body.preheader
  br label %do.body.preheader

do.body.preheader:                                ; preds = %do.body.preheader.loopexit, %for.cond.preheader
  %cmp456 = icmp sgt i32 %strict, 0
  %cmp462 = icmp eq i32 %strict, 0
  %cmp422 = icmp sgt i32 %strict, 0
  %cmp428 = icmp slt i32 %strict, 0
  %cmp257 = icmp slt i32 %strict, 0
  %cmp211 = icmp sgt i32 %strict, 0
  %cmp231 = icmp eq i32 %strict, 0
  %cmp196 = icmp slt i32 %strict, 0
  %cmp182 = icmp slt i32 %strict, 0
  %cmp167 = icmp slt i32 %strict, 1
  %cmp117 = icmp slt i32 %strict, 0
  %cmp157 = icmp ne i32 %strict, 0
  %cmp506 = icmp slt i32 %strict, 0
  %cmp509 = icmp eq i32 %strict, 0
  %cmp560 = icmp sgt i32 %strict, 0
  br label %do.body

do.body:                                          ; preds = %do.cond659, %do.body.preheader
  %6 = load i32, ptr @which_alternative, align 4
  %idxprom12 = sext i32 %6 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1089), i64 %idxprom12
  %7 = load i8, ptr %arrayidx13, align 1
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %for.cond15.preheader, label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %do.body
  %8 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1086), align 2
  %cmp31970 = icmp sgt i8 %8, 0
  br i1 %cmp31970, label %for.body33.preheader, label %for.end556

for.body33.preheader:                             ; preds = %for.cond29.preheader
  br label %for.body33

for.cond15.preheader:                             ; preds = %do.body
  %9 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1086), align 2
  %conv16 = sext i8 %9 to i32
  %cmp17988 = icmp sgt i8 %9, 0
  br i1 %cmp17988, label %for.body19.preheader, label %do.cond659

for.body19.preheader:                             ; preds = %for.cond15.preheader
  %wide.trip.count = zext i32 %conv16 to i64
  br label %for.body19

for.body19:                                       ; preds = %skip_alternative.exit, %for.body19.preheader
  %indvars.iv1032 = phi i64 [ 0, %for.body19.preheader ], [ %indvars.iv.next1033, %skip_alternative.exit ]
  %arrayidx21 = getelementptr inbounds nuw ptr, ptr %constraints, i64 %indvars.iv1032
  %10 = load ptr, ptr %arrayidx21, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %for.body19
  %r.0.i = phi ptr [ %10, %for.body19 ], [ %incdec.ptr.i, %while.body.i ]
  %11 = load i8, ptr %r.0.i, align 1
  switch i8 %11, label %while.body.i [
    i8 0, label %skip_alternative.exit
    i8 44, label %skip_alternative.exit
  ]

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %r.0.i, i64 1
  br label %while.cond.i, !llvm.loop !0

skip_alternative.exit:                            ; preds = %while.cond.i, %while.cond.i
  %r.0.i.lcssa = phi ptr [ %r.0.i, %while.cond.i ], [ %r.0.i, %while.cond.i ]
  %.lcssa1022 = phi i8 [ %11, %while.cond.i ], [ %11, %while.cond.i ]
  %cmp6.i = icmp eq i8 %.lcssa1022, 44
  %spec.select.idx.i = zext i1 %cmp6.i to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %r.0.i.lcssa, i64 %spec.select.idx.i
  store ptr %spec.select.i, ptr %arrayidx21, align 8
  %indvars.iv.next1033 = add nuw nsw i64 %indvars.iv1032, 1
  %exitcond = icmp ne i64 %indvars.iv.next1033, %wide.trip.count
  br i1 %exitcond, label %for.body19, label %do.cond659.loopexit, !llvm.loop !2

for.body33:                                       ; preds = %do.end548, %for.body33.preheader
  %indvars.iv = phi i64 [ 0, %for.body33.preheader ], [ %indvars.iv.next, %do.end548 ]
  %funny_match_index.0974 = phi i32 [ %funny_match_index.11016, %do.end548 ], [ 0, %for.body33.preheader ]
  %lose.0973 = phi i32 [ %spec.select841, %do.end548 ], [ 0, %for.body33.preheader ]
  %seen_earlyclobber_at.0971 = phi i32 [ %seen_earlyclobber_at.11020, %do.end548 ], [ -1, %for.body33.preheader ]
  %arrayidx35 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv
  %12 = load ptr, ptr %arrayidx35, align 8
  %bf.load = load i32, ptr %12, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %arrayidx37 = getelementptr inbounds nuw ptr, ptr %constraints, i64 %indvars.iv
  %13 = load ptr, ptr %arrayidx37, align 8
  %arrayidx39 = getelementptr inbounds nuw i32, ptr %earlyclobber, i64 %indvars.iv
  store i32 0, ptr %arrayidx39, align 4
  %bf.clear41 = and i32 %bf.load, 65535
  %idxprom42 = zext nneg i32 %bf.clear41 to i64
  %arrayidx43 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom42
  %14 = load i32, ptr %arrayidx43, align 4
  %cmp44 = icmp eq i32 %14, 4
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %for.body33
  %u = getelementptr inbounds nuw i8, ptr %12, i64 8
  %15 = load ptr, ptr %u, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %for.body33
  %op.0 = phi ptr [ %15, %if.then46 ], [ %12, %for.body33 ]
  %bf.load49 = load i32, ptr %op.0, align 8
  %bf.clear50 = and i32 %bf.load49, 65535
  %cmp51 = icmp eq i32 %bf.clear50, 39
  br i1 %cmp51, label %if.then53, label %if.end83

if.then53:                                        ; preds = %if.end48
  %u54 = getelementptr inbounds nuw i8, ptr %op.0, i64 8
  %16 = load ptr, ptr %u54, align 8
  %bf.load56 = load i32, ptr %16, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp eq i32 %bf.clear57, 37
  br i1 %cmp58, label %land.lhs.true, label %if.end80

land.lhs.true:                                    ; preds = %if.then53
  %17 = getelementptr i8, ptr %16, i64 8
  %.val848 = load i32, ptr %17, align 8
  %cmp63 = icmp ult i32 %.val848, 53
  br i1 %cmp63, label %if.then65, label %if.end80

if.then65:                                        ; preds = %land.lhs.true
  %bf.lshr72 = lshr i32 %bf.load56, 16
  %bf.clear73 = and i32 %bf.lshr72, 255
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %op.0, i64 16
  %18 = load i32, ptr %arrayidx75, align 8
  %bf.lshr77 = lshr i32 %bf.load49, 16
  %bf.clear78 = and i32 %bf.lshr77, 255
  %call79 = call i32 @subreg_regno_offset(i32 noundef %.val848, i32 noundef %bf.clear73, i32 noundef %18, i32 noundef %bf.clear78) #5
  br label %if.end80

if.end80:                                         ; preds = %if.then65, %land.lhs.true, %if.then53
  %offset.0 = phi i32 [ %call79, %if.then65 ], [ 0, %land.lhs.true ], [ 0, %if.then53 ]
  %19 = load ptr, ptr %u54, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.end80, %if.end48
  %op.1 = phi ptr [ %19, %if.end80 ], [ %op.0, %if.end48 ]
  %offset.1 = phi i32 [ %offset.0, %if.end80 ], [ 0, %if.end48 ]
  %20 = load i8, ptr %13, align 1
  %switch.selectcmp.case1 = icmp eq i8 %20, 0
  %switch.selectcmp.case2 = icmp eq i8 %20, 44
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %21 = zext i1 %switch.selectcmp to i32
  %22 = getelementptr i8, ptr %op.1, i64 8
  %23 = getelementptr i8, ptr %op.1, i64 8
  %u408 = getelementptr inbounds nuw i8, ptr %op.1, i64 8
  %u309 = getelementptr inbounds nuw i8, ptr %op.1, i64 8
  %u288 = getelementptr inbounds nuw i8, ptr %op.1, i64 8
  %24 = getelementptr i8, ptr %op.1, i64 8
  %u237 = getelementptr inbounds nuw i8, ptr %op.1, i64 8
  %arrayidx240 = getelementptr inbounds nuw i8, ptr %op.1, i64 16
  %u217 = getelementptr inbounds nuw i8, ptr %op.1, i64 8
  %arrayidx220 = getelementptr inbounds nuw i8, ptr %op.1, i64 16
  %25 = getelementptr i8, ptr %op.1, i64 8
  %26 = getelementptr i8, ptr %op.1, i64 8
  %idxprom1.i.i.i = zext nneg i32 %bf.clear to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr @hard_regno_nregs, i64 %idxprom1.i.i.i
  %arrayidx171 = getelementptr inbounds nuw i32, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 720), i64 %indvars.iv
  %arrayidx147 = getelementptr inbounds nuw i32, ptr %matching_operands, i64 %indvars.iv
  %arrayidx147880 = getelementptr inbounds nuw i32, ptr %matching_operands, i64 %indvars.iv
  %27 = getelementptr i8, ptr %op.1, i64 8
  %28 = getelementptr i8, ptr %op.1, i64 8
  %idxprom1.i.i.i860 = zext nneg i32 %bf.clear to i64
  %invariant.gep967 = getelementptr inbounds nuw i8, ptr @hard_regno_nregs, i64 %idxprom1.i.i.i860
  br label %do.body93

do.body93thread-pre-split:                        ; preds = %do.cond546, %do.cond546.thread
  %add.ptr913 = phi ptr [ %add.ptr908, %do.cond546.thread ], [ %add.ptr, %do.cond546 ]
  %win.4912 = phi i32 [ %win.4.ph, %do.cond546.thread ], [ %win.4, %do.cond546 ]
  %funny_match_index.3911 = phi i32 [ %funny_match_index.3.ph, %do.cond546.thread ], [ %funny_match_index.1, %do.cond546 ]
  %seen_earlyclobber_at.2910 = phi i32 [ %seen_earlyclobber_at.2.ph, %do.cond546.thread ], [ %seen_earlyclobber_at.1, %do.cond546 ]
  %.pr = load i8, ptr %add.ptr913, align 1
  br label %do.body93

do.body93:                                        ; preds = %do.body93thread-pre-split, %if.end83
  %29 = phi i8 [ %.pr, %do.body93thread-pre-split ], [ %20, %if.end83 ]
  %seen_earlyclobber_at.1 = phi i32 [ %seen_earlyclobber_at.2910, %do.body93thread-pre-split ], [ %seen_earlyclobber_at.0971, %if.end83 ]
  %funny_match_index.1 = phi i32 [ %funny_match_index.3911, %do.body93thread-pre-split ], [ %funny_match_index.0974, %if.end83 ]
  %p.0 = phi ptr [ %add.ptr913, %do.body93thread-pre-split ], [ %13, %if.end83 ]
  %win.1 = phi i32 [ %win.4912, %do.body93thread-pre-split ], [ %21, %if.end83 ]
  %cond.i = icmp eq i8 %29, 89
  %..i = select i1 %cond.i, i64 2, i64 1
  switch i8 %29, label %sw.default [
    i8 0, label %do.cond546.thread916.loopexit
    i8 44, label %do.cond546.thread916.loopexit997
    i8 63, label %do.cond546.thread
    i8 33, label %do.cond546.thread
    i8 42, label %do.cond546.thread
    i8 37, label %do.cond546.thread
    i8 61, label %do.cond546.thread
    i8 43, label %do.cond546.thread
    i8 35, label %do.body101.preheader
    i8 38, label %sw.bb107
    i8 48, label %sw.bb114
    i8 49, label %sw.bb114
    i8 50, label %sw.bb114
    i8 51, label %sw.bb114
    i8 52, label %sw.bb114
    i8 53, label %sw.bb114
    i8 54, label %sw.bb114
    i8 55, label %sw.bb114
    i8 56, label %sw.bb114
    i8 57, label %sw.bb114
    i8 112, label %sw.bb166
    i8 103, label %sw.bb176
    i8 88, label %sw.bb204
    i8 109, label %sw.bb205
    i8 60, label %sw.bb282
    i8 62, label %sw.bb303
    i8 69, label %sw.bb324
    i8 70, label %sw.bb324
    i8 71, label %sw.bb345
    i8 72, label %sw.bb345
    i8 115, label %sw.bb357
    i8 105, label %sw.bb375
    i8 110, label %sw.bb384
    i8 73, label %sw.bb402
    i8 74, label %sw.bb402
    i8 75, label %sw.bb402
    i8 76, label %sw.bb402
    i8 77, label %sw.bb402
    i8 78, label %sw.bb402
    i8 79, label %sw.bb402
    i8 80, label %sw.bb402
    i8 86, label %sw.bb416
    i8 111, label %sw.bb455
  ]

do.body101.preheader:                             ; preds = %do.body93
  br label %do.body101

do.body101:                                       ; preds = %do.body101, %do.body101.preheader
  %p.1 = phi ptr [ %incdec.ptr, %do.body101 ], [ %p.0, %do.body101.preheader ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.1, i64 1
  %30 = load i8, ptr %incdec.ptr, align 1
  switch i8 %30, label %do.body101 [
    i8 0, label %do.cond546.thread.loopexit
    i8 44, label %do.cond546.thread.loopexit
  ]

sw.bb107:                                         ; preds = %do.body93
  store i32 1, ptr %arrayidx39, align 4
  %cmp110 = icmp slt i32 %seen_earlyclobber_at.1, 0
  %31 = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %cmp110, i32 %31, i32 %seen_earlyclobber_at.1
  br label %do.cond546.thread

sw.bb114:                                         ; preds = %do.body93, %do.body93, %do.body93, %do.body93, %do.body93, %do.body93, %do.body93, %do.body93, %do.body93, %do.body93
  call void @llvm.lifetime.start.p0(ptr nonnull %end) #5
  %call115 = call i64 @__isoc23_strtoul(ptr noundef nonnull %p.0, ptr noundef nonnull %end, i32 noundef 10) #5
  %conv116 = trunc i64 %call115 to i32
  %32 = load ptr, ptr %end, align 8
  br i1 %cmp117, label %.thread, label %if.else

.thread:                                          ; preds = %sw.bb114
  store i32 %conv116, ptr %arrayidx147880, align 4
  %sext832881 = shl i64 %call115, 32
  %33 = ashr exact i64 %sext832881, 30
  %arrayidx149882 = getelementptr inbounds i8, ptr %matching_operands, i64 %33
  %34 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %34, ptr %arrayidx149882, align 4
  br label %if.end165

if.else:                                          ; preds = %sw.bb114
  %sext = shl i64 %call115, 32
  %35 = ashr exact i64 %sext, 29
  %arrayidx121 = getelementptr inbounds i8, ptr @recog_data, i64 %35
  %36 = load ptr, ptr %arrayidx121, align 8
  %37 = load ptr, ptr %arrayidx35, align 8
  %bf.load124 = load i32, ptr %36, align 8
  %bf.clear125 = and i32 %bf.load124, 65535
  %idxprom126 = zext nneg i32 %bf.clear125 to i64
  %arrayidx127 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom126
  %38 = load i32, ptr %arrayidx127, align 4
  %cmp128 = icmp eq i32 %38, 4
  br i1 %cmp128, label %if.then130, label %if.end133

if.then130:                                       ; preds = %if.else
  %u131 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %39 = load ptr, ptr %u131, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %if.else
  %op1.0 = phi ptr [ %39, %if.then130 ], [ %36, %if.else ]
  %bf.load134 = load i32, ptr %37, align 8
  %bf.clear135 = and i32 %bf.load134, 65535
  %idxprom136 = zext nneg i32 %bf.clear135 to i64
  %arrayidx137 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom136
  %40 = load i32, ptr %arrayidx137, align 4
  %cmp138 = icmp eq i32 %40, 4
  br i1 %cmp138, label %if.then140, label %if.end145

if.then140:                                       ; preds = %if.end133
  %u141 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %41 = load ptr, ptr %u141, align 8
  br label %if.end145

if.end145:                                        ; preds = %if.then140, %if.end133
  %op2.0 = phi ptr [ %41, %if.then140 ], [ %37, %if.end133 ]
  %call144 = call i32 @operands_match_p(ptr noundef %op1.0, ptr noundef %op2.0) #5
  %call144.fr = freeze i32 %call144
  store i32 %conv116, ptr %arrayidx147, align 4
  %sext832 = shl i64 %call115, 32
  %42 = ashr exact i64 %sext832, 30
  %arrayidx149 = getelementptr inbounds i8, ptr %matching_operands, i64 %42
  %43 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %43, ptr %arrayidx149, align 4
  %cmp150.not = icmp eq i32 %call144.fr, 0
  %spec.select930 = select i1 %cmp150.not, i32 %win.1, i32 1
  %cmp154 = icmp eq i32 %call144.fr, 2
  %or.cond676 = and i1 %cmp157, %cmp154
  br i1 %or.cond676, label %if.then159, label %if.end165

if.then159:                                       ; preds = %if.end145
  %idxprom160 = sext i32 %funny_match_index.1 to i64
  %arrayidx161 = getelementptr inbounds %struct.funny_match, ptr %funny_match, i64 %idxprom160
  %44 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %44, ptr %arrayidx161, align 8
  %inc162 = add nsw i32 %funny_match_index.1, 1
  %other = getelementptr inbounds nuw i8, ptr %arrayidx161, i64 4
  store i32 %conv116, ptr %other, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then159, %if.end145, %.thread
  %45 = phi i32 [ %spec.select930, %if.then159 ], [ %spec.select930, %if.end145 ], [ 1, %.thread ]
  %funny_match_index.2 = phi i32 [ %inc162, %if.then159 ], [ %funny_match_index.1, %if.end145 ], [ %funny_match_index.1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %end) #5
  br label %do.cond546.thread

sw.bb166:                                         ; preds = %do.body93
  br i1 %cmp167, label %if.then174, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %sw.bb166
  %46 = load i32, ptr %arrayidx171, align 4
  %call172 = call i32 @strict_memory_address_addr_space_p(i32 noundef %46, ptr noundef %op.1, i8 noundef zeroext 0) #5
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %do.cond546.thread, label %if.then174

if.then174:                                       ; preds = %lor.lhs.false169, %sw.bb166
  br label %do.cond546.thread

sw.bb176:                                         ; preds = %do.body93
  %bf.load177 = load i32, ptr %op.1, align 8
  %bf.clear178 = and i32 %bf.load177, 65535
  %cmp179 = icmp eq i32 %bf.clear178, 37
  br i1 %cmp179, label %if.then181, label %if.else195

if.then181:                                       ; preds = %sw.bb176
  br i1 %cmp182, label %do.cond546.thread, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %if.then181
  %47 = load i32, ptr @reload_in_progress, align 4
  %tobool185.not = icmp eq i32 %47, 0
  br i1 %tobool185.not, label %lor.lhs.false190, label %land.lhs.true186

land.lhs.true186:                                 ; preds = %lor.lhs.false184
  %op.1.val847 = load i32, ptr %25, align 8
  %cmp188 = icmp ugt i32 %op.1.val847, 52
  br i1 %cmp188, label %do.cond546.thread, label %lor.lhs.false190

lor.lhs.false190:                                 ; preds = %land.lhs.true186, %lor.lhs.false184
  %operand.val.i = load i32, ptr %26, align 8
  %cmp1.i = icmp slt i32 %operand.val.i, 53
  br i1 %cmp1.i, label %land.rhs.i, label %do.cond546.thread

land.rhs.i:                                       ; preds = %lor.lhs.false190
  %48 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 104), align 8
  %add.i = add nsw i32 %operand.val.i, %offset.1
  %sh_prom.i.i = zext nneg i32 %add.i to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %and.i.i = and i64 %48, %shl.i.i
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.cond546.thread, label %if.end.i.i

if.end.i.i:                                       ; preds = %land.rhs.i
  %gep = getelementptr inbounds nuw [87 x i8], ptr %invariant.gep, i64 %sh_prom.i.i
  %49 = load i8, ptr %gep, align 1
  %conv.i.i.i = zext i8 %49 to i32
  %add.i.i.i = add i32 %add.i, %conv.i.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i, %if.end.i.i
  %regno.addr.0.i.i = phi i32 [ %add.i, %if.end.i.i ], [ %inc.i.i, %while.body.i.i ]
  %inc.i.i = add i32 %regno.addr.0.i.i, 1
  %cmp.i.i = icmp ult i32 %inc.i.i, %add.i.i.i
  br i1 %cmp.i.i, label %while.body.i.i, label %do.cond546.thread.loopexit996

while.body.i.i:                                   ; preds = %while.cond.i.i
  %sh_prom1.i.i = zext nneg i32 %inc.i.i to i64
  %shl2.i.i = shl nuw i64 1, %sh_prom1.i.i
  %and3.i.i = and i64 %shl2.i.i, %48
  %tobool4.not.i.i = icmp eq i64 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.cond546.thread.loopexit996, label %while.cond.i.i, !llvm.loop !3

if.else195:                                       ; preds = %sw.bb176
  br i1 %cmp196, label %if.then201, label %lor.lhs.false198

lor.lhs.false198:                                 ; preds = %if.else195
  %call199 = call i32 @general_operand(ptr noundef nonnull %op.1, i32 noundef %bf.clear)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %do.cond546.thread, label %if.then201

if.then201:                                       ; preds = %lor.lhs.false198, %if.else195
  br label %do.cond546.thread

sw.bb204:                                         ; preds = %do.body93
  br label %do.cond546.thread

sw.bb205:                                         ; preds = %do.body93
  %bf.load206 = load i32, ptr %op.1, align 8
  %bf.clear207 = and i32 %bf.load206, 65535
  %cmp208 = icmp eq i32 %bf.clear207, 43
  br i1 %cmp208, label %if.then210, label %if.else256

if.then210:                                       ; preds = %sw.bb205
  br i1 %cmp211, label %land.lhs.true213, label %if.end230

land.lhs.true213:                                 ; preds = %if.then210
  %bf.lshr215 = lshr i32 %bf.load206, 16
  %bf.clear216 = and i32 %bf.lshr215, 255
  %50 = load ptr, ptr %u217, align 8
  %51 = load ptr, ptr %arrayidx220, align 8
  %cmp221 = icmp eq ptr %51, null
  br i1 %cmp221, label %cond.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true213
  %addrspace = getelementptr inbounds nuw i8, ptr %51, i64 32
  %52 = load i8, ptr %addrspace, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true213
  %cond = phi i8 [ %52, %cond.false ], [ 0, %land.lhs.true213 ]
  %call227 = call i32 @strict_memory_address_addr_space_p(i32 noundef %bf.clear216, ptr noundef %50, i8 noundef zeroext %cond) #5
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %do.cond546.thread, label %if.end255

if.end230:                                        ; preds = %if.then210
  br i1 %cmp231, label %land.lhs.true233, label %if.end255

land.lhs.true233:                                 ; preds = %if.end230
  %bf.load234 = load i32, ptr %op.1, align 8
  %bf.lshr235 = lshr i32 %bf.load234, 16
  %bf.clear236 = and i32 %bf.lshr235, 255
  %53 = load ptr, ptr %u237, align 8
  %54 = load ptr, ptr %arrayidx240, align 8
  %cmp241 = icmp eq ptr %54, null
  br i1 %cmp241, label %cond.end249, label %cond.false244

cond.false244:                                    ; preds = %land.lhs.true233
  %addrspace247 = getelementptr inbounds nuw i8, ptr %54, i64 32
  %55 = load i8, ptr %addrspace247, align 8
  br label %cond.end249

cond.end249:                                      ; preds = %cond.false244, %land.lhs.true233
  %cond250 = phi i8 [ %55, %cond.false244 ], [ 0, %land.lhs.true233 ]
  %56 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1200), align 8
  %call.i = call zeroext i8 %56(i32 noundef %bf.clear236, ptr noundef %53, i8 noundef zeroext 0, i8 noundef zeroext %cond250) #5
  %tobool253.not = icmp eq i8 %call.i, 0
  br i1 %tobool253.not, label %do.cond546.thread, label %if.end255

if.end255:                                        ; preds = %cond.end249, %if.end230, %cond.end
  br label %do.cond546.thread

if.else256:                                       ; preds = %sw.bb205
  br i1 %cmp257, label %land.lhs.true259, label %if.else267

land.lhs.true259:                                 ; preds = %if.else256
  %idxprom262 = zext nneg i32 %bf.clear207 to i64
  %arrayidx263 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom262
  %57 = load i32, ptr %arrayidx263, align 4
  %cmp264 = icmp eq i32 %57, 9
  br i1 %cmp264, label %do.cond546.thread, label %if.else267

if.else267:                                       ; preds = %land.lhs.true259, %if.else256
  %58 = load i32, ptr @reload_in_progress, align 4
  %tobool268.not = icmp ne i32 %58, 0
  %cmp272 = icmp eq i32 %bf.clear207, 37
  %or.cond931 = and i1 %cmp272, %tobool268.not
  br i1 %or.cond931, label %land.lhs.true274, label %do.cond546.thread

land.lhs.true274:                                 ; preds = %if.else267
  %op.1.val846 = load i32, ptr %24, align 8
  %cmp276 = icmp ugt i32 %op.1.val846, 52
  %spec.select834 = select i1 %cmp276, i32 1, i32 %win.1
  br label %do.cond546.thread

sw.bb282:                                         ; preds = %do.body93
  %bf.load283 = load i32, ptr %op.1, align 8
  %bf.clear284 = and i32 %bf.load283, 65535
  %cmp285 = icmp eq i32 %bf.clear284, 43
  br i1 %cmp285, label %land.lhs.true287, label %do.cond546.thread

land.lhs.true287:                                 ; preds = %sw.bb282
  %59 = load ptr, ptr %u288, align 8
  %bf.load290 = load i32, ptr %59, align 8
  %trunc935 = trunc i32 %bf.load290 to i16
  switch i16 %trunc935, label %do.cond546.thread [
    i16 74, label %if.then301
    i16 76, label %if.then301
  ]

if.then301:                                       ; preds = %land.lhs.true287, %land.lhs.true287
  br label %do.cond546.thread

sw.bb303:                                         ; preds = %do.body93
  %bf.load304 = load i32, ptr %op.1, align 8
  %bf.clear305 = and i32 %bf.load304, 65535
  %cmp306 = icmp eq i32 %bf.clear305, 43
  br i1 %cmp306, label %land.lhs.true308, label %do.cond546.thread

land.lhs.true308:                                 ; preds = %sw.bb303
  %60 = load ptr, ptr %u309, align 8
  %bf.load311 = load i32, ptr %60, align 8
  %trunc934 = trunc i32 %bf.load311 to i16
  switch i16 %trunc934, label %do.cond546.thread [
    i16 75, label %if.then322
    i16 77, label %if.then322
  ]

if.then322:                                       ; preds = %land.lhs.true308, %land.lhs.true308
  br label %do.cond546.thread

sw.bb324:                                         ; preds = %do.body93, %do.body93
  %bf.load325 = load i32, ptr %op.1, align 8
  %trunc933 = trunc i32 %bf.load325 to i16
  switch i16 %trunc933, label %do.cond546.thread [
    i16 32, label %if.then343
    i16 33, label %land.lhs.true334
  ]

land.lhs.true334:                                 ; preds = %sw.bb324
  %bf.lshr336 = lshr i32 %bf.load325, 16
  %bf.clear337 = and i32 %bf.lshr336, 255
  %idxprom338 = zext nneg i32 %bf.clear337 to i64
  %arrayidx339 = getelementptr inbounds nuw i8, ptr @mode_class, i64 %idxprom338
  %61 = load i8, ptr %arrayidx339, align 1
  %cmp341 = icmp eq i8 %61, 17
  br i1 %cmp341, label %if.then343, label %do.cond546.thread

if.then343:                                       ; preds = %land.lhs.true334, %sw.bb324
  br label %do.cond546.thread

sw.bb345:                                         ; preds = %do.body93, %do.body93
  %bf.load346 = load i32, ptr %op.1, align 8
  %bf.clear347 = and i32 %bf.load346, 65535
  %cmp348 = icmp eq i32 %bf.clear347, 32
  br i1 %cmp348, label %land.lhs.true350, label %do.cond546.thread

land.lhs.true350:                                 ; preds = %sw.bb345
  %call351 = call i32 @lookup_constraint(ptr noundef nonnull %p.0) #5
  %call352 = call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %op.1, i32 noundef %call351) #5
  %tobool354.not = icmp eq i8 %call352, 0
  %spec.select835 = select i1 %tobool354.not, i32 %win.1, i32 1
  br label %do.cond546.thread

sw.bb357:                                         ; preds = %do.body93
  %bf.load358 = load i32, ptr %op.1, align 8
  %trunc932 = trunc i32 %bf.load358 to i16
  switch i16 %trunc932, label %sw.bb375 [
    i16 30, label %do.cond546.thread
    i16 32, label %land.lhs.true367
  ]

land.lhs.true367:                                 ; preds = %sw.bb357
  %62 = and i32 %bf.load358, 16711680
  %cmp371 = icmp eq i32 %62, 0
  br i1 %cmp371, label %do.cond546.thread, label %sw.bb375

sw.bb375:                                         ; preds = %land.lhs.true367, %sw.bb357, %do.body93
  %bf.load376 = load i32, ptr %op.1, align 8
  %bf.clear377 = and i32 %bf.load376, 65535
  %idxprom378 = zext nneg i32 %bf.clear377 to i64
  %arrayidx379 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom378
  %63 = load i32, ptr %arrayidx379, align 4
  %cmp380 = icmp eq i32 %63, 9
  %spec.select836 = select i1 %cmp380, i32 1, i32 %win.1
  br label %do.cond546.thread

sw.bb384:                                         ; preds = %do.body93
  %bf.load385 = load i32, ptr %op.1, align 8
  %trunc = trunc i32 %bf.load385 to i16
  switch i16 %trunc, label %do.cond546.thread [
    i16 30, label %if.then400
    i16 32, label %land.lhs.true394
  ]

land.lhs.true394:                                 ; preds = %sw.bb384
  %64 = and i32 %bf.load385, 16711680
  %cmp398 = icmp eq i32 %64, 0
  br i1 %cmp398, label %if.then400, label %do.cond546.thread

if.then400:                                       ; preds = %land.lhs.true394, %sw.bb384
  br label %do.cond546.thread

sw.bb402:                                         ; preds = %do.body93, %do.body93, %do.body93, %do.body93, %do.body93, %do.body93, %do.body93, %do.body93
  %bf.load403 = load i32, ptr %op.1, align 8
  %bf.clear404 = and i32 %bf.load403, 65535
  %cmp405 = icmp eq i32 %bf.clear404, 30
  br i1 %cmp405, label %land.lhs.true407, label %do.cond546.thread

land.lhs.true407:                                 ; preds = %sw.bb402
  %65 = load i64, ptr %u408, align 8
  %call410 = call i32 @lookup_constraint(ptr noundef nonnull %p.0) #5
  %call411 = call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %65, i32 noundef %call410) #5
  %tobool413.not = icmp eq i8 %call411, 0
  %spec.select837 = select i1 %tobool413.not, i32 %win.1, i32 1
  br label %do.cond546.thread

sw.bb416:                                         ; preds = %do.body93
  %bf.load417 = load i32, ptr %op.1, align 8
  %bf.clear418 = and i32 %bf.load417, 65535
  %cmp419 = icmp eq i32 %bf.clear418, 43
  br i1 %cmp419, label %land.lhs.true421, label %do.cond546.thread

land.lhs.true421:                                 ; preds = %sw.bb416
  br i1 %cmp422, label %land.lhs.true424, label %lor.lhs.false427

land.lhs.true424:                                 ; preds = %land.lhs.true421
  %call425 = call i32 @offsettable_memref_p(ptr noundef nonnull %op.1)
  %tobool426.not = icmp eq i32 %call425, 0
  br i1 %tobool426.not, label %if.then453, label %lor.lhs.false442

lor.lhs.false427:                                 ; preds = %land.lhs.true421
  br i1 %cmp428, label %land.lhs.true430, label %lor.lhs.false442

land.lhs.true430:                                 ; preds = %lor.lhs.false427
  %bf.load431 = load i32, ptr %op.1, align 8
  %bf.clear432 = and i32 %bf.load431, 65535
  %idxprom433 = zext nneg i32 %bf.clear432 to i64
  %arrayidx434 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom433
  %66 = load i32, ptr %arrayidx434, align 4
  %cmp435 = icmp eq i32 %66, 9
  %cmp440 = icmp eq i32 %bf.clear432, 43
  %or.cond838 = or i1 %cmp435, %cmp440
  br i1 %or.cond838, label %lor.lhs.false442, label %if.then453

lor.lhs.false442:                                 ; preds = %land.lhs.true430, %lor.lhs.false427, %land.lhs.true424
  %67 = load i32, ptr @reload_in_progress, align 4
  %tobool443.not = icmp eq i32 %67, 0
  br i1 %tobool443.not, label %do.cond546.thread, label %land.lhs.true444

land.lhs.true444:                                 ; preds = %lor.lhs.false442
  %bf.load445 = load i32, ptr %op.1, align 8
  %bf.clear446 = and i32 %bf.load445, 65535
  %cmp447 = icmp eq i32 %bf.clear446, 37
  br i1 %cmp447, label %land.lhs.true449, label %if.then453

land.lhs.true449:                                 ; preds = %land.lhs.true444
  %op.1.val845 = load i32, ptr %23, align 8
  %cmp451 = icmp ugt i32 %op.1.val845, 52
  br i1 %cmp451, label %do.cond546.thread, label %if.then453

if.then453:                                       ; preds = %land.lhs.true449, %land.lhs.true444, %land.lhs.true430, %land.lhs.true424
  br label %do.cond546.thread

sw.bb455:                                         ; preds = %do.body93
  br i1 %cmp456, label %land.lhs.true458, label %lor.lhs.false461

land.lhs.true458:                                 ; preds = %sw.bb455
  %call459 = call i32 @offsettable_memref_p(ptr noundef %op.1)
  %tobool460.not = icmp eq i32 %call459, 0
  br i1 %tobool460.not, label %lor.lhs.false482, label %if.then493

lor.lhs.false461:                                 ; preds = %sw.bb455
  br i1 %cmp462, label %land.lhs.true464, label %land.lhs.true470

land.lhs.true464:                                 ; preds = %lor.lhs.false461
  %call465 = call i32 @offsettable_nonstrict_memref_p(ptr noundef %op.1)
  %tobool466.not = icmp eq i32 %call465, 0
  br i1 %tobool466.not, label %lor.lhs.false482, label %if.then493

land.lhs.true470:                                 ; preds = %lor.lhs.false461
  %bf.load471 = load i32, ptr %op.1, align 8
  %bf.clear472 = and i32 %bf.load471, 65535
  %idxprom473 = zext nneg i32 %bf.clear472 to i64
  %arrayidx474 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom473
  %68 = load i32, ptr %arrayidx474, align 4
  %cmp475 = icmp eq i32 %68, 9
  %cmp480 = icmp eq i32 %bf.clear472, 43
  %or.cond839 = or i1 %cmp475, %cmp480
  br i1 %or.cond839, label %if.then493, label %lor.lhs.false482

lor.lhs.false482:                                 ; preds = %land.lhs.true470, %land.lhs.true464, %land.lhs.true458
  %69 = load i32, ptr @reload_in_progress, align 4
  %tobool483.not = icmp eq i32 %69, 0
  br i1 %tobool483.not, label %do.cond546.thread, label %land.lhs.true484

land.lhs.true484:                                 ; preds = %lor.lhs.false482
  %bf.load485 = load i32, ptr %op.1, align 8
  %bf.clear486 = and i32 %bf.load485, 65535
  %cmp487 = icmp eq i32 %bf.clear486, 37
  br i1 %cmp487, label %land.lhs.true489, label %do.cond546.thread

land.lhs.true489:                                 ; preds = %land.lhs.true484
  %op.1.val844 = load i32, ptr %22, align 8
  %cmp491 = icmp ugt i32 %op.1.val844, 52
  br i1 %cmp491, label %if.then493, label %do.cond546.thread

if.then493:                                       ; preds = %land.lhs.true489, %land.lhs.true470, %land.lhs.true464, %land.lhs.true458
  br label %do.cond546.thread

sw.default:                                       ; preds = %do.body93
  %cmp495 = icmp eq i8 %29, 114
  br i1 %cmp495, label %if.then505, label %cond.end501

cond.end501:                                      ; preds = %sw.default
  %call499 = call i32 @lookup_constraint(ptr noundef nonnull %p.0) #5
  %call500 = call i32 @regclass_for_constraint(i32 noundef %call499) #5
  %cmp503.not = icmp eq i32 %call500, 0
  br i1 %cmp503.not, label %if.else538, label %if.then505

if.then505:                                       ; preds = %cond.end501, %sw.default
  %cond502898 = phi i32 [ %call500, %cond.end501 ], [ 13, %sw.default ]
  br i1 %cmp506, label %do.cond546, label %lor.lhs.false508

lor.lhs.false508:                                 ; preds = %if.then505
  br i1 %cmp509, label %land.lhs.true511, label %lor.lhs.false528

land.lhs.true511:                                 ; preds = %lor.lhs.false508
  %bf.load512 = load i32, ptr %op.1, align 8
  %trunc936 = trunc i32 %bf.load512 to i16
  switch i16 %trunc936, label %lor.lhs.false528 [
    i16 37, label %land.lhs.true516
    i16 38, label %do.cond546
  ]

land.lhs.true516:                                 ; preds = %land.lhs.true511
  %op.1.val = load i32, ptr %27, align 8
  %cmp518 = icmp ugt i32 %op.1.val, 52
  br i1 %cmp518, label %do.cond546, label %lor.lhs.false528

lor.lhs.false528:                                 ; preds = %land.lhs.true516, %land.lhs.true511, %lor.lhs.false508
  %bf.load529 = load i32, ptr %op.1, align 8
  %bf.clear530 = and i32 %bf.load529, 65535
  %cmp531 = icmp eq i32 %bf.clear530, 37
  br i1 %cmp531, label %land.lhs.true533, label %do.cond546

land.lhs.true533:                                 ; preds = %lor.lhs.false528
  %operand.val.i849 = load i32, ptr %28, align 8
  %cmp1.i850 = icmp slt i32 %operand.val.i849, 53
  br i1 %cmp1.i850, label %land.rhs.i852, label %do.cond546

land.rhs.i852:                                    ; preds = %land.lhs.true533
  %idxprom.i = sext i32 %cond502898 to i64
  %arrayidx.i = getelementptr inbounds i64, ptr @reg_class_contents, i64 %idxprom.i
  %70 = load i64, ptr %arrayidx.i, align 8
  %add.i853 = add nsw i32 %operand.val.i849, %offset.1
  %sh_prom.i.i854 = zext nneg i32 %add.i853 to i64
  %shl.i.i855 = shl nuw i64 1, %sh_prom.i.i854
  %and.i.i856 = and i64 %70, %shl.i.i855
  %tobool.not.i.i857 = icmp eq i64 %and.i.i856, 0
  br i1 %tobool.not.i.i857, label %do.cond546, label %if.end.i.i858

if.end.i.i858:                                    ; preds = %land.rhs.i852
  %gep968 = getelementptr inbounds nuw [87 x i8], ptr %invariant.gep967, i64 %sh_prom.i.i854
  %71 = load i8, ptr %gep968, align 1
  %conv.i.i.i862 = zext i8 %71 to i32
  %add.i.i.i863 = add i32 %add.i853, %conv.i.i.i862
  br label %while.cond.i.i864

while.cond.i.i864:                                ; preds = %while.body.i.i868, %if.end.i.i858
  %regno.addr.0.i.i865 = phi i32 [ %add.i853, %if.end.i.i858 ], [ %inc.i.i866, %while.body.i.i868 ]
  %inc.i.i866 = add i32 %regno.addr.0.i.i865, 1
  %cmp.i.i867 = icmp ult i32 %inc.i.i866, %add.i.i.i863
  br i1 %cmp.i.i867, label %while.body.i.i868, label %do.cond546.loopexit

while.body.i.i868:                                ; preds = %while.cond.i.i864
  %sh_prom1.i.i869 = zext nneg i32 %inc.i.i866 to i64
  %shl2.i.i870 = shl nuw i64 1, %sh_prom1.i.i869
  %and3.i.i871 = and i64 %shl2.i.i870, %70
  %tobool4.not.i.i872 = icmp eq i64 %and3.i.i871, 0
  br i1 %tobool4.not.i.i872, label %do.cond546.loopexit, label %while.cond.i.i864, !llvm.loop !3

if.else538:                                       ; preds = %cond.end501
  %call539 = call i32 @lookup_constraint(ptr noundef nonnull %p.0) #5
  %call540 = call zeroext i8 @constraint_satisfied_p(ptr noundef %op.1, i32 noundef %call539) #5
  %tobool541.not = icmp eq i8 %call540, 0
  %spec.select840 = select i1 %tobool541.not, i32 %win.1, i32 1
  br label %do.cond546

do.cond546.thread.loopexit:                       ; preds = %do.body101, %do.body101
  %incdec.ptr.lcssa = phi ptr [ %incdec.ptr, %do.body101 ], [ %incdec.ptr, %do.body101 ]
  br label %do.cond546.thread

do.cond546.thread.loopexit996:                    ; preds = %while.body.i.i, %while.cond.i.i
  %win.4.ph.ph = phi i32 [ 1, %while.cond.i.i ], [ %win.1, %while.body.i.i ]
  br label %do.cond546.thread

do.cond546.thread:                                ; preds = %do.cond546.thread.loopexit996, %do.cond546.thread.loopexit, %if.then493, %land.lhs.true489, %land.lhs.true484, %lor.lhs.false482, %if.then453, %land.lhs.true449, %lor.lhs.false442, %sw.bb416, %land.lhs.true407, %sw.bb402, %if.then400, %land.lhs.true394, %sw.bb384, %sw.bb375, %land.lhs.true367, %sw.bb357, %land.lhs.true350, %sw.bb345, %if.then343, %land.lhs.true334, %sw.bb324, %if.then322, %land.lhs.true308, %sw.bb303, %if.then301, %land.lhs.true287, %sw.bb282, %land.lhs.true274, %if.else267, %land.lhs.true259, %if.end255, %cond.end249, %cond.end, %sw.bb204, %if.then201, %lor.lhs.false198, %land.rhs.i, %lor.lhs.false190, %land.lhs.true186, %if.then181, %if.then174, %lor.lhs.false169, %if.end165, %sw.bb107, %do.body93, %do.body93, %do.body93, %do.body93, %do.body93, %do.body93
  %seen_earlyclobber_at.2.ph = phi i32 [ %seen_earlyclobber_at.1, %if.then181 ], [ %seen_earlyclobber_at.1, %land.lhs.true186 ], [ %seen_earlyclobber_at.1, %land.lhs.true407 ], [ %seen_earlyclobber_at.1, %sw.bb384 ], [ %seen_earlyclobber_at.1, %sw.bb375 ], [ %seen_earlyclobber_at.1, %land.lhs.true350 ], [ %seen_earlyclobber_at.1, %sw.bb324 ], [ %seen_earlyclobber_at.1, %land.lhs.true308 ], [ %seen_earlyclobber_at.1, %land.lhs.true287 ], [ %seen_earlyclobber_at.1, %land.lhs.true274 ], [ %seen_earlyclobber_at.1, %land.lhs.true259 ], [ %spec.select, %sw.bb107 ], [ %seen_earlyclobber_at.1, %lor.lhs.false482 ], [ %seen_earlyclobber_at.1, %land.lhs.true484 ], [ %seen_earlyclobber_at.1, %land.lhs.true489 ], [ %seen_earlyclobber_at.1, %if.then493 ], [ %seen_earlyclobber_at.1, %sw.bb416 ], [ %seen_earlyclobber_at.1, %lor.lhs.false442 ], [ %seen_earlyclobber_at.1, %if.then453 ], [ %seen_earlyclobber_at.1, %land.lhs.true449 ], [ %seen_earlyclobber_at.1, %sw.bb402 ], [ %seen_earlyclobber_at.1, %land.lhs.true394 ], [ %seen_earlyclobber_at.1, %if.then400 ], [ %seen_earlyclobber_at.1, %land.lhs.true367 ], [ %seen_earlyclobber_at.1, %sw.bb357 ], [ %seen_earlyclobber_at.1, %sw.bb345 ], [ %seen_earlyclobber_at.1, %land.lhs.true334 ], [ %seen_earlyclobber_at.1, %if.then343 ], [ %seen_earlyclobber_at.1, %sw.bb303 ], [ %seen_earlyclobber_at.1, %if.then322 ], [ %seen_earlyclobber_at.1, %sw.bb282 ], [ %seen_earlyclobber_at.1, %if.then301 ], [ %seen_earlyclobber_at.1, %if.else267 ], [ %seen_earlyclobber_at.1, %cond.end ], [ %seen_earlyclobber_at.1, %cond.end249 ], [ %seen_earlyclobber_at.1, %if.end255 ], [ %seen_earlyclobber_at.1, %sw.bb204 ], [ %seen_earlyclobber_at.1, %lor.lhs.false198 ], [ %seen_earlyclobber_at.1, %if.then201 ], [ %seen_earlyclobber_at.1, %lor.lhs.false169 ], [ %seen_earlyclobber_at.1, %if.then174 ], [ %seen_earlyclobber_at.1, %if.end165 ], [ %seen_earlyclobber_at.1, %do.body93 ], [ %seen_earlyclobber_at.1, %do.body93 ], [ %seen_earlyclobber_at.1, %do.body93 ], [ %seen_earlyclobber_at.1, %do.body93 ], [ %seen_earlyclobber_at.1, %do.body93 ], [ %seen_earlyclobber_at.1, %do.body93 ], [ %seen_earlyclobber_at.1, %lor.lhs.false190 ], [ %seen_earlyclobber_at.1, %land.rhs.i ], [ %seen_earlyclobber_at.1, %do.cond546.thread.loopexit ], [ %seen_earlyclobber_at.1, %do.cond546.thread.loopexit996 ]
  %funny_match_index.3.ph = phi i32 [ %funny_match_index.1, %if.then181 ], [ %funny_match_index.1, %land.lhs.true186 ], [ %funny_match_index.1, %land.lhs.true407 ], [ %funny_match_index.1, %sw.bb384 ], [ %funny_match_index.1, %sw.bb375 ], [ %funny_match_index.1, %land.lhs.true350 ], [ %funny_match_index.1, %sw.bb324 ], [ %funny_match_index.1, %land.lhs.true308 ], [ %funny_match_index.1, %land.lhs.true287 ], [ %funny_match_index.1, %land.lhs.true274 ], [ %funny_match_index.1, %land.lhs.true259 ], [ %funny_match_index.1, %sw.bb107 ], [ %funny_match_index.1, %lor.lhs.false482 ], [ %funny_match_index.1, %land.lhs.true484 ], [ %funny_match_index.1, %land.lhs.true489 ], [ %funny_match_index.1, %if.then493 ], [ %funny_match_index.1, %sw.bb416 ], [ %funny_match_index.1, %lor.lhs.false442 ], [ %funny_match_index.1, %if.then453 ], [ %funny_match_index.1, %land.lhs.true449 ], [ %funny_match_index.1, %sw.bb402 ], [ %funny_match_index.1, %land.lhs.true394 ], [ %funny_match_index.1, %if.then400 ], [ %funny_match_index.1, %land.lhs.true367 ], [ %funny_match_index.1, %sw.bb357 ], [ %funny_match_index.1, %sw.bb345 ], [ %funny_match_index.1, %land.lhs.true334 ], [ %funny_match_index.1, %if.then343 ], [ %funny_match_index.1, %sw.bb303 ], [ %funny_match_index.1, %if.then322 ], [ %funny_match_index.1, %sw.bb282 ], [ %funny_match_index.1, %if.then301 ], [ %funny_match_index.1, %if.else267 ], [ %funny_match_index.1, %cond.end ], [ %funny_match_index.1, %cond.end249 ], [ %funny_match_index.1, %if.end255 ], [ %funny_match_index.1, %sw.bb204 ], [ %funny_match_index.1, %lor.lhs.false198 ], [ %funny_match_index.1, %if.then201 ], [ %funny_match_index.1, %lor.lhs.false169 ], [ %funny_match_index.1, %if.then174 ], [ %funny_match_index.2, %if.end165 ], [ %funny_match_index.1, %do.body93 ], [ %funny_match_index.1, %do.body93 ], [ %funny_match_index.1, %do.body93 ], [ %funny_match_index.1, %do.body93 ], [ %funny_match_index.1, %do.body93 ], [ %funny_match_index.1, %do.body93 ], [ %funny_match_index.1, %lor.lhs.false190 ], [ %funny_match_index.1, %land.rhs.i ], [ %funny_match_index.1, %do.cond546.thread.loopexit ], [ %funny_match_index.1, %do.cond546.thread.loopexit996 ]
  %p.2.ph = phi ptr [ %p.0, %if.then181 ], [ %p.0, %land.lhs.true186 ], [ %p.0, %land.lhs.true407 ], [ %p.0, %sw.bb384 ], [ %p.0, %sw.bb375 ], [ %p.0, %land.lhs.true350 ], [ %p.0, %sw.bb324 ], [ %p.0, %land.lhs.true308 ], [ %p.0, %land.lhs.true287 ], [ %p.0, %land.lhs.true274 ], [ %p.0, %land.lhs.true259 ], [ %p.0, %sw.bb107 ], [ %p.0, %lor.lhs.false482 ], [ %p.0, %land.lhs.true484 ], [ %p.0, %land.lhs.true489 ], [ %p.0, %if.then493 ], [ %p.0, %sw.bb416 ], [ %p.0, %lor.lhs.false442 ], [ %p.0, %if.then453 ], [ %p.0, %land.lhs.true449 ], [ %p.0, %sw.bb402 ], [ %p.0, %land.lhs.true394 ], [ %p.0, %if.then400 ], [ %p.0, %land.lhs.true367 ], [ %p.0, %sw.bb357 ], [ %p.0, %sw.bb345 ], [ %p.0, %land.lhs.true334 ], [ %p.0, %if.then343 ], [ %p.0, %sw.bb303 ], [ %p.0, %if.then322 ], [ %p.0, %sw.bb282 ], [ %p.0, %if.then301 ], [ %p.0, %if.else267 ], [ %p.0, %cond.end ], [ %p.0, %cond.end249 ], [ %p.0, %if.end255 ], [ %p.0, %sw.bb204 ], [ %p.0, %lor.lhs.false198 ], [ %p.0, %if.then201 ], [ %p.0, %lor.lhs.false169 ], [ %p.0, %if.then174 ], [ %32, %if.end165 ], [ %p.0, %do.body93 ], [ %p.0, %do.body93 ], [ %p.0, %do.body93 ], [ %p.0, %do.body93 ], [ %p.0, %do.body93 ], [ %p.0, %do.body93 ], [ %p.0, %lor.lhs.false190 ], [ %p.0, %land.rhs.i ], [ %incdec.ptr.lcssa, %do.cond546.thread.loopexit ], [ %p.0, %do.cond546.thread.loopexit996 ]
  %win.4.ph = phi i32 [ 1, %if.then181 ], [ 1, %land.lhs.true186 ], [ %spec.select837, %land.lhs.true407 ], [ %win.1, %sw.bb384 ], [ %spec.select836, %sw.bb375 ], [ %spec.select835, %land.lhs.true350 ], [ %win.1, %sw.bb324 ], [ %win.1, %land.lhs.true308 ], [ %win.1, %land.lhs.true287 ], [ %spec.select834, %land.lhs.true274 ], [ 1, %land.lhs.true259 ], [ %win.1, %sw.bb107 ], [ %win.1, %lor.lhs.false482 ], [ %win.1, %land.lhs.true484 ], [ %win.1, %land.lhs.true489 ], [ 1, %if.then493 ], [ %win.1, %sw.bb416 ], [ %win.1, %lor.lhs.false442 ], [ 1, %if.then453 ], [ %win.1, %land.lhs.true449 ], [ %win.1, %sw.bb402 ], [ %win.1, %land.lhs.true394 ], [ 1, %if.then400 ], [ %win.1, %land.lhs.true367 ], [ %win.1, %sw.bb357 ], [ %win.1, %sw.bb345 ], [ %win.1, %land.lhs.true334 ], [ 1, %if.then343 ], [ %win.1, %sw.bb303 ], [ 1, %if.then322 ], [ %win.1, %sw.bb282 ], [ 1, %if.then301 ], [ %win.1, %if.else267 ], [ %win.1, %cond.end ], [ %win.1, %cond.end249 ], [ 1, %if.end255 ], [ 1, %sw.bb204 ], [ %win.1, %lor.lhs.false198 ], [ 1, %if.then201 ], [ %win.1, %lor.lhs.false169 ], [ 1, %if.then174 ], [ %45, %if.end165 ], [ %win.1, %do.body93 ], [ %win.1, %do.body93 ], [ %win.1, %do.body93 ], [ %win.1, %do.body93 ], [ %win.1, %do.body93 ], [ %win.1, %do.body93 ], [ %win.1, %lor.lhs.false190 ], [ %win.1, %land.rhs.i ], [ %win.1, %do.cond546.thread.loopexit ], [ %win.4.ph.ph, %do.cond546.thread.loopexit996 ]
  %len.0.ph = phi i64 [ %..i, %if.then181 ], [ %..i, %land.lhs.true186 ], [ %..i, %land.lhs.true407 ], [ %..i, %sw.bb384 ], [ %..i, %sw.bb375 ], [ %..i, %land.lhs.true350 ], [ %..i, %sw.bb324 ], [ %..i, %land.lhs.true308 ], [ %..i, %land.lhs.true287 ], [ %..i, %land.lhs.true274 ], [ %..i, %land.lhs.true259 ], [ %..i, %sw.bb107 ], [ %..i, %lor.lhs.false482 ], [ %..i, %land.lhs.true484 ], [ %..i, %land.lhs.true489 ], [ %..i, %if.then493 ], [ %..i, %sw.bb416 ], [ %..i, %lor.lhs.false442 ], [ %..i, %if.then453 ], [ %..i, %land.lhs.true449 ], [ %..i, %sw.bb402 ], [ %..i, %land.lhs.true394 ], [ %..i, %if.then400 ], [ %..i, %land.lhs.true367 ], [ %..i, %sw.bb357 ], [ %..i, %sw.bb345 ], [ %..i, %land.lhs.true334 ], [ %..i, %if.then343 ], [ %..i, %sw.bb303 ], [ %..i, %if.then322 ], [ %..i, %sw.bb282 ], [ %..i, %if.then301 ], [ %..i, %if.else267 ], [ %..i, %cond.end ], [ %..i, %cond.end249 ], [ %..i, %if.end255 ], [ %..i, %sw.bb204 ], [ %..i, %lor.lhs.false198 ], [ %..i, %if.then201 ], [ %..i, %lor.lhs.false169 ], [ %..i, %if.then174 ], [ 0, %if.end165 ], [ %..i, %do.body93 ], [ %..i, %do.body93 ], [ %..i, %do.body93 ], [ %..i, %do.body93 ], [ %..i, %do.body93 ], [ %..i, %do.body93 ], [ %..i, %lor.lhs.false190 ], [ %..i, %land.rhs.i ], [ 0, %do.cond546.thread.loopexit ], [ %..i, %do.cond546.thread.loopexit996 ]
  %add.ptr908 = getelementptr inbounds nuw i8, ptr %p.2.ph, i64 %len.0.ph
  br label %do.body93thread-pre-split

do.cond546.thread916.loopexit:                    ; preds = %do.body93
  %seen_earlyclobber_at.1.lcssa = phi i32 [ %seen_earlyclobber_at.1, %do.body93 ]
  %funny_match_index.1.lcssa = phi i32 [ %funny_match_index.1, %do.body93 ]
  %p.0.lcssa = phi ptr [ %p.0, %do.body93 ]
  %win.1.lcssa = phi i32 [ %win.1, %do.body93 ]
  br label %do.cond546.thread916

do.cond546.thread916.loopexit997:                 ; preds = %do.body93
  %seen_earlyclobber_at.1.lcssa1018 = phi i32 [ %seen_earlyclobber_at.1, %do.body93 ]
  %funny_match_index.1.lcssa1014 = phi i32 [ %funny_match_index.1, %do.body93 ]
  %p.0.lcssa1011 = phi ptr [ %p.0, %do.body93 ]
  %win.1.lcssa1008 = phi i32 [ %win.1, %do.body93 ]
  %..i.lcssa1006 = phi i64 [ %..i, %do.body93 ]
  br label %do.cond546.thread916

do.cond546.thread916:                             ; preds = %do.cond546.thread916.loopexit997, %do.cond546.thread916.loopexit
  %seen_earlyclobber_at.11021 = phi i32 [ %seen_earlyclobber_at.1.lcssa, %do.cond546.thread916.loopexit ], [ %seen_earlyclobber_at.1.lcssa1018, %do.cond546.thread916.loopexit997 ]
  %funny_match_index.11017 = phi i32 [ %funny_match_index.1.lcssa, %do.cond546.thread916.loopexit ], [ %funny_match_index.1.lcssa1014, %do.cond546.thread916.loopexit997 ]
  %p.01013 = phi ptr [ %p.0.lcssa, %do.cond546.thread916.loopexit ], [ %p.0.lcssa1011, %do.cond546.thread916.loopexit997 ]
  %win.11010 = phi i32 [ %win.1.lcssa, %do.cond546.thread916.loopexit ], [ %win.1.lcssa1008, %do.cond546.thread916.loopexit997 ]
  %len.0.ph915 = phi i64 [ 0, %do.cond546.thread916.loopexit ], [ %..i.lcssa1006, %do.cond546.thread916.loopexit997 ]
  %add.ptr923 = getelementptr inbounds nuw i8, ptr %p.01013, i64 %len.0.ph915
  br label %do.end548

do.cond546.loopexit:                              ; preds = %while.body.i.i868, %while.cond.i.i864
  %win.4.ph995 = phi i32 [ 1, %while.cond.i.i864 ], [ %win.1, %while.body.i.i868 ]
  br label %do.cond546

do.cond546:                                       ; preds = %do.cond546.loopexit, %if.else538, %land.rhs.i852, %land.lhs.true533, %lor.lhs.false528, %land.lhs.true516, %land.lhs.true511, %if.then505
  %win.4 = phi i32 [ %win.1, %lor.lhs.false528 ], [ %spec.select840, %if.else538 ], [ 1, %land.lhs.true516 ], [ 1, %if.then505 ], [ %win.1, %land.lhs.true533 ], [ %win.1, %land.rhs.i852 ], [ 1, %land.lhs.true511 ], [ %win.4.ph995, %do.cond546.loopexit ]
  %add.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 %..i
  %tobool547.not = icmp eq i8 %29, 0
  br i1 %tobool547.not, label %do.end548.loopexit, label %do.body93thread-pre-split, !llvm.loop !4

do.end548.loopexit:                               ; preds = %do.cond546
  %win.4.lcssa = phi i32 [ %win.4, %do.cond546 ]
  %add.ptr.lcssa = phi ptr [ %add.ptr, %do.cond546 ]
  %seen_earlyclobber_at.1.lcssa1019 = phi i32 [ %seen_earlyclobber_at.1, %do.cond546 ]
  %funny_match_index.1.lcssa1015 = phi i32 [ %funny_match_index.1, %do.cond546 ]
  br label %do.end548

do.end548:                                        ; preds = %do.end548.loopexit, %do.cond546.thread916
  %seen_earlyclobber_at.11020 = phi i32 [ %seen_earlyclobber_at.11021, %do.cond546.thread916 ], [ %seen_earlyclobber_at.1.lcssa1019, %do.end548.loopexit ]
  %funny_match_index.11016 = phi i32 [ %funny_match_index.11017, %do.cond546.thread916 ], [ %funny_match_index.1.lcssa1015, %do.end548.loopexit ]
  %add.ptr928 = phi ptr [ %add.ptr923, %do.cond546.thread916 ], [ %add.ptr.lcssa, %do.end548.loopexit ]
  %win.4927 = phi i32 [ %win.11010, %do.cond546.thread916 ], [ %win.4.lcssa, %do.end548.loopexit ]
  store ptr %add.ptr928, ptr %arrayidx37, align 8
  %tobool551.not = icmp eq i32 %win.4927, 0
  %spec.select841 = select i1 %tobool551.not, i32 1, i32 %lose.0973
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %72 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1086), align 2
  %conv30 = sext i8 %72 to i32
  %73 = sext i32 %conv30 to i64
  %cmp31 = icmp slt i64 %indvars.iv.next, %73
  br i1 %cmp31, label %for.body33, label %for.end556.loopexit, !llvm.loop !5

for.end556.loopexit:                              ; preds = %do.end548
  %spec.select841.lcssa = phi i32 [ %spec.select841, %do.end548 ]
  %seen_earlyclobber_at.11020.lcssa = phi i32 [ %seen_earlyclobber_at.11020, %do.end548 ]
  %funny_match_index.11016.lcssa = phi i32 [ %funny_match_index.11016, %do.end548 ]
  br label %for.end556

for.end556:                                       ; preds = %for.end556.loopexit, %for.cond29.preheader
  %seen_earlyclobber_at.0.lcssa = phi i32 [ -1, %for.cond29.preheader ], [ %seen_earlyclobber_at.11020.lcssa, %for.end556.loopexit ]
  %lose.0.lcssa = phi i32 [ 0, %for.cond29.preheader ], [ %spec.select841.lcssa, %for.end556.loopexit ]
  %funny_match_index.0.lcssa = phi i32 [ 0, %for.cond29.preheader ], [ %funny_match_index.11016.lcssa, %for.end556.loopexit ]
  %tobool557.not = icmp eq i32 %lose.0.lcssa, 0
  br i1 %tobool557.not, label %if.then558, label %if.end652

if.then558:                                       ; preds = %for.end556
  %cmp563 = icmp sgt i32 %seen_earlyclobber_at.0.lcssa, -1
  %or.cond677 = select i1 %cmp560, i1 %cmp563, i1 false
  %74 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1086), align 2
  %conv567982 = sext i8 %74 to i32
  %cmp568983 = icmp slt i32 %seen_earlyclobber_at.0.lcssa, %conv567982
  %or.cond992 = select i1 %or.cond677, i1 %cmp568983, i1 false
  br i1 %or.cond992, label %for.body570.preheader, label %if.end635

for.body570.preheader:                            ; preds = %if.then558
  %75 = zext i32 %seen_earlyclobber_at.0.lcssa to i64
  br label %for.body570

for.body570:                                      ; preds = %for.inc632, %for.body570.preheader
  %indvars.iv1029 = phi i64 [ %75, %for.body570.preheader ], [ %indvars.iv.next1030, %for.inc632 ]
  %lose.2984 = phi i32 [ %lose.5, %for.inc632 ], [ 0, %for.body570.preheader ]
  %arrayidx572 = getelementptr inbounds nuw i32, ptr %earlyclobber, i64 %indvars.iv1029
  %76 = load i32, ptr %arrayidx572, align 4
  %tobool573.not = icmp eq i32 %76, 0
  br i1 %tobool573.not, label %for.inc632, label %land.lhs.true574

land.lhs.true574:                                 ; preds = %for.body570
  %arrayidx576 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv1029
  %77 = load ptr, ptr %arrayidx576, align 8
  %bf.load577 = load i32, ptr %77, align 8
  %bf.clear578 = and i32 %bf.load577, 65535
  %cmp579 = icmp eq i32 %bf.clear578, 37
  %78 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1086), align 2
  %cmp584978 = icmp sgt i8 %78, 0
  %or.cond993 = select i1 %cmp579, i1 %cmp584978, i1 false
  br i1 %or.cond993, label %for.body586.preheader, label %for.inc632

for.body586.preheader:                            ; preds = %land.lhs.true574
  br label %for.body586

for.body586:                                      ; preds = %for.inc628, %for.body586.preheader
  %indvars.iv1026 = phi i64 [ 0, %for.body586.preheader ], [ %indvars.iv.next1027, %for.inc628 ]
  %lose.3979 = phi i32 [ %lose.4, %for.inc628 ], [ %lose.2984, %for.body586.preheader ]
  %arrayidx588 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv1026
  %79 = load ptr, ptr %arrayidx588, align 8
  %bf.load589 = load i32, ptr %79, align 8
  %bf.clear590 = and i32 %bf.load589, 65535
  %cmp591 = icmp eq i32 %bf.clear590, 43
  br i1 %cmp591, label %land.lhs.true598, label %lor.lhs.false593

lor.lhs.false593:                                 ; preds = %for.body586
  %arrayidx595 = getelementptr inbounds nuw i32, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 840), i64 %indvars.iv1026
  %80 = load i32, ptr %arrayidx595, align 4
  %cmp596.not = icmp eq i32 %80, 1
  %cmp599.not = icmp eq i64 %indvars.iv1026, %indvars.iv1029
  %or.cond842 = or i1 %cmp599.not, %cmp596.not
  br i1 %or.cond842, label %for.inc628, label %land.lhs.true601

land.lhs.true598:                                 ; preds = %for.body586
  %cmp599.not.old = icmp eq i64 %indvars.iv1026, %indvars.iv1029
  br i1 %cmp599.not.old, label %for.inc628, label %land.lhs.true601

land.lhs.true601:                                 ; preds = %land.lhs.true598, %lor.lhs.false593
  %arrayidx603 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 480), i64 %indvars.iv1026
  %81 = load ptr, ptr %arrayidx603, align 8
  %82 = load i8, ptr %81, align 1
  %cmp605.not = icmp eq i8 %82, 0
  br i1 %cmp605.not, label %for.inc628, label %land.lhs.true607

land.lhs.true607:                                 ; preds = %land.lhs.true601
  %arrayidx609 = getelementptr inbounds nuw i32, ptr %matching_operands, i64 %indvars.iv1026
  %83 = load i32, ptr %arrayidx609, align 4
  %84 = zext i32 %83 to i64
  %cmp610 = icmp eq i64 %84, %indvars.iv1029
  br i1 %cmp610, label %land.lhs.true612, label %land.lhs.true619

land.lhs.true612:                                 ; preds = %land.lhs.true607
  %85 = load ptr, ptr %arrayidx576, align 8
  %call617 = call i32 @operands_match_p(ptr noundef nonnull %79, ptr noundef %85) #5
  %tobool618.not = icmp eq i32 %call617, 0
  br i1 %tobool618.not, label %land.lhs.true619, label %for.inc628

land.lhs.true619:                                 ; preds = %land.lhs.true612, %land.lhs.true607
  %86 = load ptr, ptr %arrayidx588, align 8
  %87 = load ptr, ptr %arrayidx576, align 8
  %call624 = call i32 @safe_from_earlyclobber(ptr noundef %86, ptr noundef %87) #5
  %tobool625.not = icmp eq i32 %call624, 0
  %spec.select843 = select i1 %tobool625.not, i32 1, i32 %lose.3979
  br label %for.inc628

for.inc628:                                       ; preds = %land.lhs.true619, %land.lhs.true612, %land.lhs.true601, %land.lhs.true598, %lor.lhs.false593
  %lose.4 = phi i32 [ %lose.3979, %land.lhs.true612 ], [ %lose.3979, %land.lhs.true601 ], [ %lose.3979, %land.lhs.true598 ], [ %lose.3979, %lor.lhs.false593 ], [ %spec.select843, %land.lhs.true619 ]
  %indvars.iv.next1027 = add nuw nsw i64 %indvars.iv1026, 1
  %88 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1086), align 2
  %conv583 = sext i8 %88 to i32
  %89 = sext i32 %conv583 to i64
  %cmp584 = icmp slt i64 %indvars.iv.next1027, %89
  br i1 %cmp584, label %for.body586, label %for.inc632.loopexit, !llvm.loop !6

for.inc632.loopexit:                              ; preds = %for.inc628
  %lose.4.lcssa = phi i32 [ %lose.4, %for.inc628 ]
  br label %for.inc632

for.inc632:                                       ; preds = %for.inc632.loopexit, %land.lhs.true574, %for.body570
  %lose.5 = phi i32 [ %lose.2984, %land.lhs.true574 ], [ %lose.2984, %for.body570 ], [ %lose.4.lcssa, %for.inc632.loopexit ]
  %indvars.iv.next1030 = add nuw nsw i64 %indvars.iv1029, 1
  %90 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1086), align 2
  %conv567 = sext i8 %90 to i32
  %91 = trunc nuw i64 %indvars.iv.next1030 to i32
  %cmp568 = icmp slt i32 %91, %conv567
  br i1 %cmp568, label %for.body570, label %if.end635.loopexit, !llvm.loop !7

if.end635.loopexit:                               ; preds = %for.inc632
  %lose.5.lcssa = phi i32 [ %lose.5, %for.inc632 ]
  br label %if.end635

if.end635:                                        ; preds = %if.end635.loopexit, %if.then558
  %lose.6 = phi i32 [ 0, %if.then558 ], [ %lose.5.lcssa, %if.end635.loopexit ]
  %tobool636.not.not = icmp eq i32 %lose.6, 0
  br i1 %tobool636.not.not, label %while.cond.preheader, label %if.end652

while.cond.preheader:                             ; preds = %if.end635
  %funny_match_index.0.lcssa.lcssa1035 = phi i32 [ %funny_match_index.0.lcssa, %if.end635 ]
  %funny_match_index.0.lcssa.lcssa = phi i32 [ %funny_match_index.0.lcssa, %if.end635 ]
  %cmp638990 = icmp sgt i32 %funny_match_index.0.lcssa.lcssa, 0
  br i1 %cmp638990, label %while.body.preheader, label %cleanup669

while.body.preheader:                             ; preds = %while.cond.preheader
  %92 = zext i32 %funny_match_index.0.lcssa.lcssa1035 to i64
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader
  %indvars.iv1036 = phi i64 [ %92, %while.body.preheader ], [ %indvars.iv.next1037, %while.body ]
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -1
  %arrayidx641 = getelementptr inbounds nuw %struct.funny_match, ptr %funny_match, i64 %indvars.iv.next1037
  %93 = load i32, ptr %arrayidx641, align 8
  %idxprom643 = sext i32 %93 to i64
  %arrayidx644 = getelementptr inbounds ptr, ptr @recog_data, i64 %idxprom643
  %94 = load ptr, ptr %arrayidx644, align 8
  %other647 = getelementptr inbounds nuw i8, ptr %arrayidx641, i64 4
  %95 = load i32, ptr %other647, align 4
  %idxprom648 = sext i32 %95 to i64
  %arrayidx649 = getelementptr inbounds ptr, ptr @recog_data, i64 %idxprom648
  store ptr %94, ptr %arrayidx649, align 8
  %cmp638 = icmp sgt i64 %indvars.iv1036, 1
  br i1 %cmp638, label %while.body, label %cleanup669.loopexit, !llvm.loop !8

if.end652:                                        ; preds = %if.end635, %for.end556
  %96 = load i32, ptr @which_alternative, align 4
  br label %do.cond659

do.cond659.loopexit:                              ; preds = %skip_alternative.exit
  br label %do.cond659

do.cond659:                                       ; preds = %do.cond659.loopexit, %if.end652, %for.cond15.preheader
  %storemerge.in = phi i32 [ %96, %if.end652 ], [ %6, %for.cond15.preheader ], [ %6, %do.cond659.loopexit ]
  %storemerge = add nsw i32 %storemerge.in, 1
  store i32 %storemerge, ptr @which_alternative, align 4
  %97 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1088), align 8
  %conv660 = sext i8 %97 to i32
  %cmp661 = icmp slt i32 %storemerge, %conv660
  br i1 %cmp661, label %do.body, label %do.end663, !llvm.loop !9

do.end663:                                        ; preds = %do.cond659
  %.lcssa1023 = phi i8 [ %97, %do.cond659 ]
  store i32 -1, ptr @which_alternative, align 4
  %cmp664 = icmp eq i32 %strict, 0
  br i1 %cmp664, label %if.then666, label %cleanup669

if.then666:                                       ; preds = %do.end663
  call void @llvm.lifetime.start.p0(ptr nonnull %constraints.i) #5
  store i32 0, ptr @which_alternative, align 4
  %98 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1086), align 2
  %cmp.i874 = icmp eq i8 %98, 0
  %cmp3.i = icmp eq i8 %.lcssa1023, 0
  %or.cond.i875 = or i1 %cmp3.i, %cmp.i874
  br i1 %or.cond.i875, label %constrain_operands.specialized.1.exit, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then666
  %cmp655.i = icmp sgt i8 %98, 0
  br i1 %cmp655.i, label %do.body.preheader.loopexit.i, label %do.body.preheader.i

do.body.preheader.loopexit.i:                     ; preds = %for.cond.preheader.i
  %conv5.i = zext nneg i8 %98 to i64
  %99 = shl nuw nsw i64 %conv5.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %constraints.i, ptr nonnull align 8 getelementptr inbounds nuw (i8, ptr @recog_data, i64 480), i64 %99, i1 false)
  br label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %do.body.preheader.loopexit.i, %for.cond.preheader.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond659.i, %do.body.preheader.i
  %100 = load i32, ptr @which_alternative, align 4
  %idxprom12.i = sext i32 %100 to i64
  %arrayidx13.i = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1089), i64 %idxprom12.i
  %101 = load i8, ptr %arrayidx13.i, align 1
  %tobool.not.i = icmp eq i8 %101, 0
  %102 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1086), align 2
  %cmp1762.i = icmp sgt i8 %102, 0
  br i1 %tobool.not.i, label %for.cond15.preheader.i, label %for.cond29.preheader.i

for.cond29.preheader.i:                           ; preds = %do.body.i
  br i1 %cmp1762.i, label %for.body33.i.preheader, label %constrain_operands.specialized.1.exit.loopexit

for.body33.i.preheader:                           ; preds = %for.cond29.preheader.i
  br label %for.body33.i

for.cond15.preheader.i:                           ; preds = %do.body.i
  br i1 %cmp1762.i, label %for.body19.preheader.i, label %do.cond659.i

for.body19.preheader.i:                           ; preds = %for.cond15.preheader.i
  %conv16.i = zext nneg i8 %102 to i64
  br label %for.body19.i

for.body19.i:                                     ; preds = %skip_alternative.exit.i, %for.body19.preheader.i
  %indvars.iv79.i = phi i64 [ 0, %for.body19.preheader.i ], [ %indvars.iv.next80.i, %skip_alternative.exit.i ]
  %arrayidx21.i = getelementptr inbounds nuw ptr, ptr %constraints.i, i64 %indvars.iv79.i
  %103 = load ptr, ptr %arrayidx21.i, align 8
  br label %while.cond.i.i877

while.cond.i.i877:                                ; preds = %while.body.i.i878, %for.body19.i
  %r.0.i.i = phi ptr [ %103, %for.body19.i ], [ %incdec.ptr.i.i, %while.body.i.i878 ]
  %104 = load i8, ptr %r.0.i.i, align 1
  switch i8 %104, label %while.body.i.i878 [
    i8 0, label %skip_alternative.exit.i
    i8 44, label %skip_alternative.exit.i
  ]

while.body.i.i878:                                ; preds = %while.cond.i.i877
  %incdec.ptr.i.i = getelementptr inbounds nuw i8, ptr %r.0.i.i, i64 1
  br label %while.cond.i.i877, !llvm.loop !0

skip_alternative.exit.i:                          ; preds = %while.cond.i.i877, %while.cond.i.i877
  %r.0.i.i.lcssa = phi ptr [ %r.0.i.i, %while.cond.i.i877 ], [ %r.0.i.i, %while.cond.i.i877 ]
  %.lcssa = phi i8 [ %104, %while.cond.i.i877 ], [ %104, %while.cond.i.i877 ]
  %cmp6.i.i = icmp eq i8 %.lcssa, 44
  %spec.select.idx.i.i = zext i1 %cmp6.i.i to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %r.0.i.i.lcssa, i64 %spec.select.idx.i.i
  store ptr %spec.select.i.i, ptr %arrayidx21.i, align 8
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next80.i, %conv16.i
  br i1 %exitcond.not.i, label %do.cond659.i.loopexit, label %for.body19.i, !llvm.loop !10

for.body33.i:                                     ; preds = %do.end548.i, %for.body33.i.preheader
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %do.end548.i ], [ 0, %for.body33.i.preheader ]
  %lose.061.i = phi i32 [ %spec.select8.i, %do.end548.i ], [ 0, %for.body33.i.preheader ]
  %arrayidx35.i = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv.i
  %105 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i = getelementptr inbounds nuw ptr, ptr %constraints.i, i64 %indvars.iv.i
  %106 = load ptr, ptr %arrayidx37.i, align 8
  %bf.load40.i = load i32, ptr %105, align 8
  %bf.clear41.i = and i32 %bf.load40.i, 65535
  %idxprom42.i = zext nneg i32 %bf.clear41.i to i64
  %arrayidx43.i = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom42.i
  %107 = load i32, ptr %arrayidx43.i, align 4
  %cmp44.i = icmp eq i32 %107, 4
  br i1 %cmp44.i, label %if.then46.i, label %if.end48.i

if.then46.i:                                      ; preds = %for.body33.i
  %u.i = getelementptr inbounds nuw i8, ptr %105, i64 8
  %108 = load ptr, ptr %u.i, align 8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %for.body33.i
  %op.0.i = phi ptr [ %108, %if.then46.i ], [ %105, %for.body33.i ]
  %bf.load49.i = load i32, ptr %op.0.i, align 8
  %bf.clear50.i = and i32 %bf.load49.i, 65535
  %cmp51.i = icmp eq i32 %bf.clear50.i, 39
  br i1 %cmp51.i, label %if.then53.i, label %if.end83.i

if.then53.i:                                      ; preds = %if.end48.i
  %u54.i = getelementptr inbounds nuw i8, ptr %op.0.i, i64 8
  %109 = load ptr, ptr %u54.i, align 8
  %bf.load56.i = load i32, ptr %109, align 8
  %bf.clear57.i = and i32 %bf.load56.i, 65535
  %cmp58.i = icmp eq i32 %bf.clear57.i, 37
  br i1 %cmp58.i, label %land.lhs.true.i, label %if.end80.i

land.lhs.true.i:                                  ; preds = %if.then53.i
  %110 = getelementptr i8, ptr %109, i64 8
  %.val11.i = load i32, ptr %110, align 8
  %cmp63.i = icmp ult i32 %.val11.i, 53
  br i1 %cmp63.i, label %if.then65.i, label %if.end80.i

if.then65.i:                                      ; preds = %land.lhs.true.i
  %bf.lshr72.i = lshr i32 %bf.load56.i, 16
  %bf.clear73.i = and i32 %bf.lshr72.i, 255
  %arrayidx75.i = getelementptr inbounds nuw i8, ptr %op.0.i, i64 16
  %111 = load i32, ptr %arrayidx75.i, align 8
  %bf.lshr77.i = lshr i32 %bf.load49.i, 16
  %bf.clear78.i = and i32 %bf.lshr77.i, 255
  %call79.i = call i32 @subreg_regno_offset(i32 noundef %.val11.i, i32 noundef %bf.clear73.i, i32 noundef %111, i32 noundef %bf.clear78.i) #5
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then65.i, %land.lhs.true.i, %if.then53.i
  %112 = load ptr, ptr %u54.i, align 8
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.end80.i, %if.end48.i
  %op.1.i = phi ptr [ %112, %if.end80.i ], [ %op.0.i, %if.end48.i ]
  %113 = load i8, ptr %106, align 1
  %switch.selectcmp.case1.i = icmp eq i8 %113, 0
  %switch.selectcmp.case2.i = icmp eq i8 %113, 44
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %114 = zext i1 %switch.selectcmp.i to i32
  %115 = getelementptr i8, ptr %op.1.i, i64 8
  br label %do.body93.i

do.body93thread-pre-split.i:                      ; preds = %do.cond546.i, %do.cond546.thread.i
  %add.ptr21.i = phi ptr [ %add.ptr17.i, %do.cond546.thread.i ], [ %add.ptr.i, %do.cond546.i ]
  %win.420.i = phi i32 [ %win.4.ph.i, %do.cond546.thread.i ], [ %win.4.i, %do.cond546.i ]
  %.pr.i = load i8, ptr %add.ptr21.i, align 1
  br label %do.body93.i

do.body93.i:                                      ; preds = %do.body93thread-pre-split.i, %if.end83.i
  %116 = phi i8 [ %.pr.i, %do.body93thread-pre-split.i ], [ %113, %if.end83.i ]
  %p.0.i = phi ptr [ %add.ptr21.i, %do.body93thread-pre-split.i ], [ %106, %if.end83.i ]
  %win.1.i = phi i32 [ %win.420.i, %do.body93thread-pre-split.i ], [ %114, %if.end83.i ]
  %cond.i.i = icmp eq i8 %116, 89
  %..i.i = select i1 %cond.i.i, i64 2, i64 1
  switch i8 %116, label %sw.default.i [
    i8 0, label %do.cond546.thread24.i.loopexit994
    i8 44, label %do.cond546.thread24.i.loopexit
    i8 63, label %do.cond546.thread.i
    i8 33, label %do.cond546.thread.i
    i8 42, label %do.cond546.thread.i
    i8 37, label %do.cond546.thread.i
    i8 61, label %do.cond546.thread.i
    i8 43, label %do.cond546.thread.i
    i8 35, label %do.body101.i.preheader
    i8 38, label %do.cond546.thread.i
    i8 48, label %sw.bb114.i
    i8 49, label %sw.bb114.i
    i8 50, label %sw.bb114.i
    i8 51, label %sw.bb114.i
    i8 52, label %sw.bb114.i
    i8 53, label %sw.bb114.i
    i8 54, label %sw.bb114.i
    i8 55, label %sw.bb114.i
    i8 56, label %sw.bb114.i
    i8 57, label %sw.bb114.i
    i8 112, label %if.then174.i
    i8 103, label %if.then174.i
    i8 88, label %if.then174.i
    i8 109, label %sw.bb205.i
    i8 60, label %sw.bb282.i
    i8 62, label %sw.bb303.i
    i8 69, label %sw.bb324.i
    i8 70, label %sw.bb324.i
    i8 71, label %sw.bb345.i
    i8 72, label %sw.bb345.i
    i8 115, label %sw.bb357.i
    i8 105, label %sw.bb375.i
    i8 110, label %sw.bb384.i
    i8 73, label %sw.bb402.i
    i8 74, label %sw.bb402.i
    i8 75, label %sw.bb402.i
    i8 76, label %sw.bb402.i
    i8 77, label %sw.bb402.i
    i8 78, label %sw.bb402.i
    i8 79, label %sw.bb402.i
    i8 80, label %sw.bb402.i
    i8 86, label %sw.bb416.i
    i8 111, label %land.lhs.true470.i
  ]

do.body101.i.preheader:                           ; preds = %do.body93.i
  br label %do.body101.i

do.body101.i:                                     ; preds = %do.body101.i, %do.body101.i.preheader
  %p.1.i = phi ptr [ %incdec.ptr.i876, %do.body101.i ], [ %p.0.i, %do.body101.i.preheader ]
  %incdec.ptr.i876 = getelementptr inbounds nuw i8, ptr %p.1.i, i64 1
  %117 = load i8, ptr %incdec.ptr.i876, align 1
  switch i8 %117, label %do.body101.i [
    i8 0, label %do.cond546.thread.i.loopexit
    i8 44, label %do.cond546.thread.i.loopexit
  ]

sw.bb114.i:                                       ; preds = %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i
  call void @llvm.lifetime.start.p0(ptr nonnull %end.i) #5
  %call115.i = call i64 @__isoc23_strtoul(ptr noundef nonnull %p.0.i, ptr noundef nonnull %end.i, i32 noundef 10) #5
  %118 = load ptr, ptr %end.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %end.i) #5
  br label %do.cond546.thread.i

if.then174.i:                                     ; preds = %do.body93.i, %do.body93.i, %do.body93.i
  br label %do.cond546.thread.i

sw.bb205.i:                                       ; preds = %do.body93.i
  %bf.load206.i = load i32, ptr %op.1.i, align 8
  %bf.clear207.i = and i32 %bf.load206.i, 65535
  %cmp208.i = icmp eq i32 %bf.clear207.i, 43
  br i1 %cmp208.i, label %do.cond546.thread.i, label %land.lhs.true259.i

land.lhs.true259.i:                               ; preds = %sw.bb205.i
  %idxprom262.i = zext nneg i32 %bf.clear207.i to i64
  %arrayidx263.i = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom262.i
  %119 = load i32, ptr %arrayidx263.i, align 4
  %cmp264.i = icmp eq i32 %119, 9
  br i1 %cmp264.i, label %do.cond546.thread.i, label %if.else267.i

if.else267.i:                                     ; preds = %land.lhs.true259.i
  %120 = load i32, ptr @reload_in_progress, align 4
  %tobool268.not.i = icmp ne i32 %120, 0
  %cmp272.i = icmp eq i32 %bf.clear207.i, 37
  %or.cond36.i = and i1 %cmp272.i, %tobool268.not.i
  br i1 %or.cond36.i, label %land.lhs.true274.i, label %do.cond546.thread.i

land.lhs.true274.i:                               ; preds = %if.else267.i
  %op.1.val10.i = load i32, ptr %115, align 8
  %cmp276.i = icmp ugt i32 %op.1.val10.i, 52
  %spec.select1.i = select i1 %cmp276.i, i32 1, i32 %win.1.i
  br label %do.cond546.thread.i

sw.bb282.i:                                       ; preds = %do.body93.i
  %bf.load283.i = load i32, ptr %op.1.i, align 8
  %bf.clear284.i = and i32 %bf.load283.i, 65535
  %cmp285.i = icmp eq i32 %bf.clear284.i, 43
  br i1 %cmp285.i, label %land.lhs.true287.i, label %do.cond546.thread.i

land.lhs.true287.i:                               ; preds = %sw.bb282.i
  %121 = load ptr, ptr %115, align 8
  %bf.load290.i = load i32, ptr %121, align 8
  %trunc42.i = trunc i32 %bf.load290.i to i16
  switch i16 %trunc42.i, label %do.cond546.thread.i [
    i16 74, label %if.then301.i
    i16 76, label %if.then301.i
  ]

if.then301.i:                                     ; preds = %land.lhs.true287.i, %land.lhs.true287.i
  br label %do.cond546.thread.i

sw.bb303.i:                                       ; preds = %do.body93.i
  %bf.load304.i = load i32, ptr %op.1.i, align 8
  %bf.clear305.i = and i32 %bf.load304.i, 65535
  %cmp306.i = icmp eq i32 %bf.clear305.i, 43
  br i1 %cmp306.i, label %land.lhs.true308.i, label %do.cond546.thread.i

land.lhs.true308.i:                               ; preds = %sw.bb303.i
  %122 = load ptr, ptr %115, align 8
  %bf.load311.i = load i32, ptr %122, align 8
  %trunc41.i = trunc i32 %bf.load311.i to i16
  switch i16 %trunc41.i, label %do.cond546.thread.i [
    i16 75, label %if.then322.i
    i16 77, label %if.then322.i
  ]

if.then322.i:                                     ; preds = %land.lhs.true308.i, %land.lhs.true308.i
  br label %do.cond546.thread.i

sw.bb324.i:                                       ; preds = %do.body93.i, %do.body93.i
  %bf.load325.i = load i32, ptr %op.1.i, align 8
  %trunc40.i = trunc i32 %bf.load325.i to i16
  switch i16 %trunc40.i, label %do.cond546.thread.i [
    i16 32, label %if.then343.i
    i16 33, label %land.lhs.true334.i
  ]

land.lhs.true334.i:                               ; preds = %sw.bb324.i
  %bf.lshr336.i = lshr i32 %bf.load325.i, 16
  %bf.clear337.i = and i32 %bf.lshr336.i, 255
  %idxprom338.i = zext nneg i32 %bf.clear337.i to i64
  %arrayidx339.i = getelementptr inbounds nuw i8, ptr @mode_class, i64 %idxprom338.i
  %123 = load i8, ptr %arrayidx339.i, align 1
  %cmp341.i = icmp eq i8 %123, 17
  br i1 %cmp341.i, label %if.then343.i, label %do.cond546.thread.i

if.then343.i:                                     ; preds = %land.lhs.true334.i, %sw.bb324.i
  br label %do.cond546.thread.i

sw.bb345.i:                                       ; preds = %do.body93.i, %do.body93.i
  %bf.load346.i = load i32, ptr %op.1.i, align 8
  %bf.clear347.i = and i32 %bf.load346.i, 65535
  %cmp348.i = icmp eq i32 %bf.clear347.i, 32
  br i1 %cmp348.i, label %land.lhs.true350.i, label %do.cond546.thread.i

land.lhs.true350.i:                               ; preds = %sw.bb345.i
  %call351.i = call i32 @lookup_constraint(ptr noundef nonnull %p.0.i) #5
  %call352.i = call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %op.1.i, i32 noundef %call351.i) #5
  %tobool354.not.i = icmp eq i8 %call352.i, 0
  %spec.select2.i = select i1 %tobool354.not.i, i32 %win.1.i, i32 1
  br label %do.cond546.thread.i

sw.bb357.i:                                       ; preds = %do.body93.i
  %bf.load358.i = load i32, ptr %op.1.i, align 8
  %trunc39.i = trunc i32 %bf.load358.i to i16
  switch i16 %trunc39.i, label %sw.bb375.i [
    i16 30, label %do.cond546.thread.i
    i16 32, label %land.lhs.true367.i
  ]

land.lhs.true367.i:                               ; preds = %sw.bb357.i
  %124 = and i32 %bf.load358.i, 16711680
  %cmp371.i = icmp eq i32 %124, 0
  br i1 %cmp371.i, label %do.cond546.thread.i, label %sw.bb375.i

sw.bb375.i:                                       ; preds = %land.lhs.true367.i, %sw.bb357.i, %do.body93.i
  %bf.load376.i = load i32, ptr %op.1.i, align 8
  %bf.clear377.i = and i32 %bf.load376.i, 65535
  %idxprom378.i = zext nneg i32 %bf.clear377.i to i64
  %arrayidx379.i = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom378.i
  %125 = load i32, ptr %arrayidx379.i, align 4
  %cmp380.i = icmp eq i32 %125, 9
  %spec.select3.i = select i1 %cmp380.i, i32 1, i32 %win.1.i
  br label %do.cond546.thread.i

sw.bb384.i:                                       ; preds = %do.body93.i
  %bf.load385.i = load i32, ptr %op.1.i, align 8
  %trunc.i = trunc i32 %bf.load385.i to i16
  switch i16 %trunc.i, label %do.cond546.thread.i [
    i16 30, label %if.then400.i
    i16 32, label %land.lhs.true394.i
  ]

land.lhs.true394.i:                               ; preds = %sw.bb384.i
  %126 = and i32 %bf.load385.i, 16711680
  %cmp398.i = icmp eq i32 %126, 0
  br i1 %cmp398.i, label %if.then400.i, label %do.cond546.thread.i

if.then400.i:                                     ; preds = %land.lhs.true394.i, %sw.bb384.i
  br label %do.cond546.thread.i

sw.bb402.i:                                       ; preds = %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i
  %bf.load403.i = load i32, ptr %op.1.i, align 8
  %bf.clear404.i = and i32 %bf.load403.i, 65535
  %cmp405.i = icmp eq i32 %bf.clear404.i, 30
  br i1 %cmp405.i, label %land.lhs.true407.i, label %do.cond546.thread.i

land.lhs.true407.i:                               ; preds = %sw.bb402.i
  %127 = load i64, ptr %115, align 8
  %call410.i = call i32 @lookup_constraint(ptr noundef nonnull %p.0.i) #5
  %call411.i = call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %127, i32 noundef %call410.i) #5
  %tobool413.not.i = icmp eq i8 %call411.i, 0
  %spec.select4.i = select i1 %tobool413.not.i, i32 %win.1.i, i32 1
  br label %do.cond546.thread.i

sw.bb416.i:                                       ; preds = %do.body93.i
  %bf.load417.i = load i32, ptr %op.1.i, align 8
  %bf.clear418.i = and i32 %bf.load417.i, 65535
  %cmp419.i = icmp eq i32 %bf.clear418.i, 43
  br i1 %cmp419.i, label %lor.lhs.false442.i, label %do.cond546.thread.i

lor.lhs.false442.i:                               ; preds = %sw.bb416.i
  %128 = load i32, ptr @reload_in_progress, align 4
  %tobool443.not.i = icmp eq i32 %128, 0
  %spec.select37.i = select i1 %tobool443.not.i, i32 %win.1.i, i32 1
  br label %do.cond546.thread.i

land.lhs.true470.i:                               ; preds = %do.body93.i
  %bf.load471.i = load i32, ptr %op.1.i, align 8
  %bf.clear472.i = and i32 %bf.load471.i, 65535
  %idxprom473.i = zext nneg i32 %bf.clear472.i to i64
  %arrayidx474.i = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom473.i
  %129 = load i32, ptr %arrayidx474.i, align 4
  %cmp475.i = icmp eq i32 %129, 9
  %cmp480.i = icmp eq i32 %bf.clear472.i, 43
  %or.cond6.i = or i1 %cmp475.i, %cmp480.i
  br i1 %or.cond6.i, label %if.then493.i, label %lor.lhs.false482.i

lor.lhs.false482.i:                               ; preds = %land.lhs.true470.i
  %130 = load i32, ptr @reload_in_progress, align 4
  %tobool483.not.i = icmp ne i32 %130, 0
  %cmp487.i = icmp eq i32 %bf.clear472.i, 37
  %or.cond38.i = and i1 %cmp487.i, %tobool483.not.i
  br i1 %or.cond38.i, label %land.lhs.true489.i, label %do.cond546.thread.i

land.lhs.true489.i:                               ; preds = %lor.lhs.false482.i
  %op.1.val.i = load i32, ptr %115, align 8
  %cmp491.i = icmp ugt i32 %op.1.val.i, 52
  br i1 %cmp491.i, label %if.then493.i, label %do.cond546.thread.i

if.then493.i:                                     ; preds = %land.lhs.true489.i, %land.lhs.true470.i
  br label %do.cond546.thread.i

sw.default.i:                                     ; preds = %do.body93.i
  %cmp495.i = icmp eq i8 %116, 114
  br i1 %cmp495.i, label %do.cond546.thread.i, label %cond.false498.i

cond.false498.i:                                  ; preds = %sw.default.i
  %call499.i = call i32 @lookup_constraint(ptr noundef nonnull %p.0.i) #5
  %call500.i = call i32 @regclass_for_constraint(i32 noundef %call499.i) #5
  %131 = icmp eq i32 %call500.i, 0
  br i1 %131, label %if.else538.i, label %do.cond546.i

if.else538.i:                                     ; preds = %cond.false498.i
  %call539.i = call i32 @lookup_constraint(ptr noundef nonnull %p.0.i) #5
  %call540.i = call zeroext i8 @constraint_satisfied_p(ptr noundef %op.1.i, i32 noundef %call539.i) #5
  %tobool541.not.i = icmp eq i8 %call540.i, 0
  %spec.select7.i = select i1 %tobool541.not.i, i32 %win.1.i, i32 1
  br label %do.cond546.i

do.cond546.thread.i.loopexit:                     ; preds = %do.body101.i, %do.body101.i
  %incdec.ptr.i876.lcssa = phi ptr [ %incdec.ptr.i876, %do.body101.i ], [ %incdec.ptr.i876, %do.body101.i ]
  br label %do.cond546.thread.i

do.cond546.thread.i:                              ; preds = %do.cond546.thread.i.loopexit, %sw.default.i, %if.then493.i, %land.lhs.true489.i, %lor.lhs.false482.i, %lor.lhs.false442.i, %sw.bb416.i, %land.lhs.true407.i, %sw.bb402.i, %if.then400.i, %land.lhs.true394.i, %sw.bb384.i, %sw.bb375.i, %land.lhs.true367.i, %sw.bb357.i, %land.lhs.true350.i, %sw.bb345.i, %if.then343.i, %land.lhs.true334.i, %sw.bb324.i, %if.then322.i, %land.lhs.true308.i, %sw.bb303.i, %if.then301.i, %land.lhs.true287.i, %sw.bb282.i, %land.lhs.true274.i, %if.else267.i, %land.lhs.true259.i, %sw.bb205.i, %if.then174.i, %sw.bb114.i, %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i, %do.body93.i
  %p.2.ph.i = phi ptr [ %p.0.i, %sw.default.i ], [ %p.0.i, %land.lhs.true407.i ], [ %p.0.i, %sw.bb384.i ], [ %p.0.i, %sw.bb375.i ], [ %p.0.i, %land.lhs.true350.i ], [ %p.0.i, %sw.bb324.i ], [ %p.0.i, %land.lhs.true308.i ], [ %p.0.i, %land.lhs.true287.i ], [ %p.0.i, %land.lhs.true274.i ], [ %p.0.i, %land.lhs.true259.i ], [ %p.0.i, %sw.bb205.i ], [ %p.0.i, %lor.lhs.false482.i ], [ %p.0.i, %land.lhs.true489.i ], [ %p.0.i, %if.then493.i ], [ %p.0.i, %sw.bb416.i ], [ %p.0.i, %sw.bb402.i ], [ %p.0.i, %land.lhs.true394.i ], [ %p.0.i, %if.then400.i ], [ %p.0.i, %land.lhs.true367.i ], [ %p.0.i, %sw.bb357.i ], [ %p.0.i, %sw.bb345.i ], [ %p.0.i, %land.lhs.true334.i ], [ %p.0.i, %if.then343.i ], [ %p.0.i, %sw.bb303.i ], [ %p.0.i, %if.then322.i ], [ %p.0.i, %sw.bb282.i ], [ %p.0.i, %if.then301.i ], [ %p.0.i, %if.else267.i ], [ %p.0.i, %if.then174.i ], [ %118, %sw.bb114.i ], [ %p.0.i, %do.body93.i ], [ %p.0.i, %do.body93.i ], [ %p.0.i, %do.body93.i ], [ %p.0.i, %do.body93.i ], [ %p.0.i, %do.body93.i ], [ %p.0.i, %do.body93.i ], [ %p.0.i, %lor.lhs.false442.i ], [ %p.0.i, %do.body93.i ], [ %incdec.ptr.i876.lcssa, %do.cond546.thread.i.loopexit ]
  %win.4.ph.i = phi i32 [ 1, %sw.default.i ], [ %spec.select4.i, %land.lhs.true407.i ], [ %win.1.i, %sw.bb384.i ], [ %spec.select3.i, %sw.bb375.i ], [ %spec.select2.i, %land.lhs.true350.i ], [ %win.1.i, %sw.bb324.i ], [ %win.1.i, %land.lhs.true308.i ], [ %win.1.i, %land.lhs.true287.i ], [ %spec.select1.i, %land.lhs.true274.i ], [ 1, %land.lhs.true259.i ], [ 1, %sw.bb205.i ], [ %win.1.i, %lor.lhs.false482.i ], [ %win.1.i, %land.lhs.true489.i ], [ 1, %if.then493.i ], [ %win.1.i, %sw.bb416.i ], [ %win.1.i, %sw.bb402.i ], [ %win.1.i, %land.lhs.true394.i ], [ 1, %if.then400.i ], [ %win.1.i, %land.lhs.true367.i ], [ %win.1.i, %sw.bb357.i ], [ %win.1.i, %sw.bb345.i ], [ %win.1.i, %land.lhs.true334.i ], [ 1, %if.then343.i ], [ %win.1.i, %sw.bb303.i ], [ 1, %if.then322.i ], [ %win.1.i, %sw.bb282.i ], [ 1, %if.then301.i ], [ %win.1.i, %if.else267.i ], [ 1, %if.then174.i ], [ 1, %sw.bb114.i ], [ %win.1.i, %do.body93.i ], [ %win.1.i, %do.body93.i ], [ %win.1.i, %do.body93.i ], [ %win.1.i, %do.body93.i ], [ %win.1.i, %do.body93.i ], [ %win.1.i, %do.body93.i ], [ %spec.select37.i, %lor.lhs.false442.i ], [ %win.1.i, %do.body93.i ], [ %win.1.i, %do.cond546.thread.i.loopexit ]
  %len.0.ph.i = phi i64 [ %..i.i, %sw.default.i ], [ %..i.i, %land.lhs.true407.i ], [ %..i.i, %sw.bb384.i ], [ %..i.i, %sw.bb375.i ], [ %..i.i, %land.lhs.true350.i ], [ %..i.i, %sw.bb324.i ], [ %..i.i, %land.lhs.true308.i ], [ %..i.i, %land.lhs.true287.i ], [ %..i.i, %land.lhs.true274.i ], [ %..i.i, %land.lhs.true259.i ], [ %..i.i, %sw.bb205.i ], [ %..i.i, %lor.lhs.false482.i ], [ %..i.i, %land.lhs.true489.i ], [ %..i.i, %if.then493.i ], [ %..i.i, %sw.bb416.i ], [ %..i.i, %sw.bb402.i ], [ %..i.i, %land.lhs.true394.i ], [ %..i.i, %if.then400.i ], [ %..i.i, %land.lhs.true367.i ], [ %..i.i, %sw.bb357.i ], [ %..i.i, %sw.bb345.i ], [ %..i.i, %land.lhs.true334.i ], [ %..i.i, %if.then343.i ], [ %..i.i, %sw.bb303.i ], [ %..i.i, %if.then322.i ], [ %..i.i, %sw.bb282.i ], [ %..i.i, %if.then301.i ], [ %..i.i, %if.else267.i ], [ %..i.i, %if.then174.i ], [ 0, %sw.bb114.i ], [ %..i.i, %do.body93.i ], [ %..i.i, %do.body93.i ], [ %..i.i, %do.body93.i ], [ %..i.i, %do.body93.i ], [ %..i.i, %do.body93.i ], [ %..i.i, %do.body93.i ], [ %..i.i, %lor.lhs.false442.i ], [ %..i.i, %do.body93.i ], [ 0, %do.cond546.thread.i.loopexit ]
  %add.ptr17.i = getelementptr inbounds nuw i8, ptr %p.2.ph.i, i64 %len.0.ph.i
  br label %do.body93thread-pre-split.i

do.cond546.thread24.i.loopexit:                   ; preds = %do.body93.i
  %p.0.i.lcssa1003 = phi ptr [ %p.0.i, %do.body93.i ]
  %win.1.i.lcssa1000 = phi i32 [ %win.1.i, %do.body93.i ]
  %..i.i.lcssa998 = phi i64 [ %..i.i, %do.body93.i ]
  br label %do.cond546.thread24.i

do.cond546.thread24.i.loopexit994:                ; preds = %do.body93.i
  %p.0.i.lcssa = phi ptr [ %p.0.i, %do.body93.i ]
  %win.1.i.lcssa = phi i32 [ %win.1.i, %do.body93.i ]
  br label %do.cond546.thread24.i

do.cond546.thread24.i:                            ; preds = %do.cond546.thread24.i.loopexit994, %do.cond546.thread24.i.loopexit
  %p.0.i1005 = phi ptr [ %p.0.i.lcssa1003, %do.cond546.thread24.i.loopexit ], [ %p.0.i.lcssa, %do.cond546.thread24.i.loopexit994 ]
  %win.1.i1002 = phi i32 [ %win.1.i.lcssa1000, %do.cond546.thread24.i.loopexit ], [ %win.1.i.lcssa, %do.cond546.thread24.i.loopexit994 ]
  %len.0.ph23.i = phi i64 [ %..i.i.lcssa998, %do.cond546.thread24.i.loopexit ], [ 0, %do.cond546.thread24.i.loopexit994 ]
  %add.ptr30.i = getelementptr inbounds nuw i8, ptr %p.0.i1005, i64 %len.0.ph23.i
  br label %do.end548.i

do.cond546.i:                                     ; preds = %if.else538.i, %cond.false498.i
  %win.4.i = phi i32 [ 1, %cond.false498.i ], [ %spec.select7.i, %if.else538.i ]
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %p.0.i, i64 %..i.i
  %tobool547.not.i = icmp eq i8 %116, 0
  br i1 %tobool547.not.i, label %do.end548.i.loopexit, label %do.body93thread-pre-split.i, !llvm.loop !11

do.end548.i.loopexit:                             ; preds = %do.cond546.i
  %win.4.i.lcssa = phi i32 [ %win.4.i, %do.cond546.i ]
  %add.ptr.i.lcssa = phi ptr [ %add.ptr.i, %do.cond546.i ]
  br label %do.end548.i

do.end548.i:                                      ; preds = %do.end548.i.loopexit, %do.cond546.thread24.i
  %add.ptr34.i = phi ptr [ %add.ptr30.i, %do.cond546.thread24.i ], [ %add.ptr.i.lcssa, %do.end548.i.loopexit ]
  %win.433.i = phi i32 [ %win.1.i1002, %do.cond546.thread24.i ], [ %win.4.i.lcssa, %do.end548.i.loopexit ]
  store ptr %add.ptr34.i, ptr %arrayidx37.i, align 8
  %tobool551.not.i = icmp eq i32 %win.433.i, 0
  %spec.select8.i = select i1 %tobool551.not.i, i32 1, i32 %lose.061.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %132 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1086), align 2
  %133 = sext i8 %132 to i64
  %cmp31.i = icmp slt i64 %indvars.iv.next.i, %133
  br i1 %cmp31.i, label %for.body33.i, label %for.end556.i, !llvm.loop !12

for.end556.i:                                     ; preds = %do.end548.i
  %spec.select8.i.lcssa = phi i32 [ %spec.select8.i, %do.end548.i ]
  %134 = icmp eq i32 %spec.select8.i.lcssa, 0
  br i1 %134, label %constrain_operands.specialized.1.exit.loopexit, label %if.end652.i

if.end652.i:                                      ; preds = %for.end556.i
  %135 = load i32, ptr @which_alternative, align 4
  br label %do.cond659.i

do.cond659.i.loopexit:                            ; preds = %skip_alternative.exit.i
  br label %do.cond659.i

do.cond659.i:                                     ; preds = %do.cond659.i.loopexit, %if.end652.i, %for.cond15.preheader.i
  %storemerge.in.i = phi i32 [ %135, %if.end652.i ], [ %100, %for.cond15.preheader.i ], [ %100, %do.cond659.i.loopexit ]
  %storemerge.i = add nsw i32 %storemerge.in.i, 1
  store i32 %storemerge.i, ptr @which_alternative, align 4
  %136 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1088), align 8
  %conv660.i = sext i8 %136 to i32
  %cmp661.i = icmp slt i32 %storemerge.i, %conv660.i
  br i1 %cmp661.i, label %do.body.i, label %do.end663.i, !llvm.loop !13

do.end663.i:                                      ; preds = %do.cond659.i
  store i32 -1, ptr @which_alternative, align 4
  br label %constrain_operands.specialized.1.exit

constrain_operands.specialized.1.exit.loopexit:   ; preds = %for.end556.i, %for.cond29.preheader.i
  br label %constrain_operands.specialized.1.exit

constrain_operands.specialized.1.exit:            ; preds = %constrain_operands.specialized.1.exit.loopexit, %do.end663.i, %if.then666
  %retval.4.i = phi i32 [ 0, %do.end663.i ], [ 1, %if.then666 ], [ 1, %constrain_operands.specialized.1.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %constraints.i) #5
  br label %cleanup669

cleanup669.loopexit:                              ; preds = %while.body
  br label %cleanup669

cleanup669:                                       ; preds = %cleanup669.loopexit, %constrain_operands.specialized.1.exit, %do.end663, %while.cond.preheader, %entry
  %retval.4 = phi i32 [ %retval.4.i, %constrain_operands.specialized.1.exit ], [ 1, %entry ], [ 0, %do.end663 ], [ 1, %while.cond.preheader ], [ 1, %cleanup669.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %funny_match) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %earlyclobber) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %matching_operands) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %constraints) #5
  ret i32 %retval.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: nounwind uwtable
declare dso_local range(i32 0, 2) i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local range(i32 0, 2) i32 @offsettable_nonstrict_memref_p(ptr noundef readonly captures(none)) local_unnamed_addr #1

declare zeroext i8 @constraint_satisfied_p(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local range(i32 0, 2) i32 @offsettable_memref_p(ptr noundef readonly captures(none)) local_unnamed_addr #1

declare i32 @strict_memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @operands_match_p(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @safe_from_earlyclobber(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
!3 = distinct !{!3, !1}
!4 = distinct !{!4, !1}
!5 = distinct !{!5, !1}
!6 = distinct !{!6, !1}
!7 = distinct !{!7, !1}
!8 = distinct !{!8, !1}
!9 = distinct !{!9, !1}
!10 = distinct !{!10, !1}
!11 = distinct !{!11, !1}
!12 = distinct !{!12, !1}
!13 = distinct !{!13, !1}
