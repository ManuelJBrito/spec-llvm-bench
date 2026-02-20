; ModuleID = '/tmp/tmp.k6ur56gySt/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/ira.c"
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

@ira_register_move_cost = external dso_local local_unnamed_addr global [87 x ptr], align 16
@ira_may_move_in_cost = external dso_local local_unnamed_addr global [87 x ptr], align 16
@ira_may_move_out_cost = external dso_local local_unnamed_addr global [87 x ptr], align 16
@ira_class_subset_p = external dso_local local_unnamed_addr global [27 x [27 x i32]], align 16
@flag_omit_frame_pointer = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@no_unit_alloc_regs = external hidden unnamed_addr global i64, align 8
@ira_reg_mode_hard_regset = external dso_local local_unnamed_addr global [53 x [87 x i64]], align 16
@ira_memory_move_cost = external dso_local local_unnamed_addr global [87 x [27 x [2 x i16]]], align 16
@ira_class_hard_regs = external dso_local local_unnamed_addr global [27 x [53 x i16]], align 16
@ira_class_hard_regs_num = external dso_local local_unnamed_addr global [27 x i32], align 16
@ira_class_hard_reg_index = external dso_local local_unnamed_addr global [27 x [53 x i16]], align 16
@ira_available_class_regs = external dso_local local_unnamed_addr global [27 x i32], align 16
@ira_reg_class_cover_size = external dso_local local_unnamed_addr global i32, align 4
@ira_reg_class_cover = external dso_local local_unnamed_addr global [27 x i32], align 16
@ira_important_classes_num = external dso_local local_unnamed_addr global i32, align 4
@ira_important_classes = external dso_local global [27 x i32], align 16
@ira_important_class_nums = external dso_local local_unnamed_addr global [27 x i32], align 16
@ira_class_translate = external dso_local local_unnamed_addr global [27 x i32], align 16
@ira_reg_class_intersect = external dso_local local_unnamed_addr global [27 x [27 x i32]], align 16
@ira_reg_classes_intersect_p = external dso_local local_unnamed_addr global [27 x [27 x i8]], align 16
@ira_reg_class_super_classes = external dso_local local_unnamed_addr global [27 x [27 x i32]], align 16
@ira_reg_class_union = external dso_local local_unnamed_addr global [27 x [27 x i32]], align 16
@ira_hard_regno_cover_class = external dso_local local_unnamed_addr global [53 x i32], align 16
@ira_reg_class_nregs = external dso_local local_unnamed_addr global [27 x [87 x i32]], align 16
@ira_max_nregs = external dso_local local_unnamed_addr global i32, align 4
@prohibited_class_mode_regs = external dso_local local_unnamed_addr global [27 x [87 x i64]], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@fixed_reg_set = external local_unnamed_addr global i64, align 8
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@temp_hard_regset = external hidden unnamed_addr global i64, align 8
@reg_alloc_order = external local_unnamed_addr global [53 x i32], align 16
@alloc_reg_class_subclasses = external hidden unnamed_addr global [27 x [27 x i32]], align 16
@setup_cover_and_important_classes.classes = external hidden unnamed_addr global [28 x i32], align 16
@flag_ira_algorithm = external local_unnamed_addr global i32, align 4
@.str.40 = external hidden unnamed_addr constant [111 x i8], align 1
@.str.41 = external hidden unnamed_addr constant [2 x i8], align 1
@cover_class_order = external hidden unnamed_addr global [27 x i32], align 16
@reg_class_subclasses = external local_unnamed_addr global [27 x [27 x i32]], align 16
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local void @ira_init() local_unnamed_addr #3 {
entry:
  %important_class_p.i.i = alloca [27 x i8], align 16
  br label %for.body.i

for.body.i:                                       ; preds = %if.end10.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %if.end10.i ]
  %arrayidx.i = getelementptr inbounds nuw ptr, ptr @ira_may_move_in_cost, i64 %indvars.iv.i
  %0 = load ptr, ptr %arrayidx.i, align 8
  %cmp1.not.i = icmp eq ptr %0, null
  br i1 %cmp1.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  tail call void @free(ptr noundef nonnull %0)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %arrayidx5.i = getelementptr inbounds nuw ptr, ptr @ira_may_move_out_cost, i64 %indvars.iv.i
  %1 = load ptr, ptr %arrayidx5.i, align 8
  %cmp6.not.i = icmp eq ptr %1, null
  br i1 %cmp6.not.i, label %if.end10.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  tail call void @free(ptr noundef nonnull %1)
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i
  %arrayidx12.i = getelementptr inbounds nuw ptr, ptr @ira_register_move_cost, i64 %indvars.iv.i
  store ptr null, ptr %arrayidx12.i, align 8
  store ptr null, ptr %arrayidx.i, align 8
  store ptr null, ptr %arrayidx5.i, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 87
  br i1 %exitcond.not.i, label %for.cond1.preheader.i.preheader, label %for.body.i, !llvm.loop !0

for.cond1.preheader.i.preheader:                  ; preds = %if.end10.i
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc23.i, %for.cond1.preheader.i.preheader
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %for.inc23.i ], [ 0, %for.cond1.preheader.i.preheader ]
  %invariant.gep.i = getelementptr inbounds nuw i64, ptr @ira_reg_mode_hard_regset, i64 %indvars.iv51.i
  %invariant.gep42.i = getelementptr inbounds nuw i8, ptr @hard_regno_nregs, i64 %indvars.iv51.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc21.i, %for.cond1.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next49.i, %for.inc21.i ]
  %gep.i = getelementptr inbounds nuw [87 x i64], ptr %invariant.gep.i, i64 %indvars.iv48.i
  store i64 0, ptr %gep.i, align 8
  %gep43.i = getelementptr inbounds nuw [87 x i8], ptr %invariant.gep42.i, i64 %indvars.iv48.i
  %2 = load i8, ptr %gep43.i, align 1
  %cmp1140.not.i = icmp eq i8 %2, 0
  br i1 %cmp1140.not.i, label %for.inc21.i, label %for.body13.preheader.i

for.body13.preheader.i:                           ; preds = %for.body3.i
  %3 = zext i8 %2 to i64
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc.i, %for.body13.preheader.i
  %indvars.iv.i2 = phi i64 [ %3, %for.body13.preheader.i ], [ %indvars.iv.next.i3, %for.inc.i ]
  %indvars.iv.next.i3 = add nsw i64 %indvars.iv.i2, -1
  %4 = add nsw i64 %indvars.iv.next.i3, %indvars.iv48.i
  %cmp14.i = icmp slt i64 %4, 53
  br i1 %cmp14.i, label %if.then.i5, label %for.inc.i

if.then.i5:                                       ; preds = %for.body13.i
  %shl.i = shl nuw nsw i64 1, %4
  %5 = load i64, ptr %gep.i, align 8
  %or.i = or i64 %5, %shl.i
  store i64 %or.i, ptr %gep.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i5, %for.body13.i
  %cmp11.i = icmp samesign ugt i64 %indvars.iv.i2, 1
  br i1 %cmp11.i, label %for.body13.i, label %for.inc21.i.loopexit, !llvm.loop !2

for.inc21.i.loopexit:                             ; preds = %for.inc.i
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %for.inc21.i.loopexit, %for.body3.i
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1
  %exitcond.not.i4 = icmp eq i64 %indvars.iv.next49.i, 53
  br i1 %exitcond.not.i4, label %for.inc23.i, label %for.body3.i, !llvm.loop !3

for.inc23.i:                                      ; preds = %for.inc21.i
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next52.i, 87
  br i1 %exitcond54.not.i, label %setup_reg_mode_hard_regset.exit, label %for.cond1.preheader.i, !llvm.loop !4

setup_reg_mode_hard_regset.exit:                  ; preds = %for.inc23.i
  %6 = load i32, ptr @flag_omit_frame_pointer, align 4
  %cmp.not = icmp eq i32 %6, 0
  %7 = load i64, ptr @fixed_reg_set, align 8
  %or.i6 = or i64 %7, 64
  %spec.select.i = select i1 %cmp.not, i64 %or.i6, i64 %7
  store i64 %spec.select.i, ptr @no_unit_alloc_regs, align 8
  %not.i.i = xor i64 %spec.select.i, -1
  br label %for.cond7.preheader.i.i

for.cond7.preheader.i.i:                          ; preds = %for.end37.i.i, %setup_reg_mode_hard_regset.exit
  %indvars.iv67.i.i = phi i64 [ 26, %setup_reg_mode_hard_regset.exit ], [ %indvars.iv.next68.i.i, %for.end37.i.i ]
  %arrayidx.i.i = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %indvars.iv67.i.i
  %8 = load i64, ptr %arrayidx.i.i, align 8
  %arrayidx5.i.i = getelementptr inbounds nuw [53 x i16], ptr @ira_class_hard_reg_index, i64 %indvars.iv67.i.i
  store i16 -1, ptr %arrayidx5.i.i, align 2
  %and.i.i = and i64 %8, %not.i.i
  br label %for.body9.i.i

for.body9.i.i:                                    ; preds = %for.inc35.i.i, %for.cond7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.cond7.preheader.i.i ], [ %indvars.iv.next.i.i, %for.inc35.i.i ]
  %processed_hard_reg_set.063.i.i = phi i64 [ 0, %for.cond7.preheader.i.i ], [ %processed_hard_reg_set.1.i.i, %for.inc35.i.i ]
  %n.062.i.i = phi i32 [ 0, %for.cond7.preheader.i.i ], [ %n.1.i.i, %for.inc35.i.i ]
  %arrayidx11.i.i = getelementptr inbounds nuw i32, ptr @reg_alloc_order, i64 %indvars.iv.i.i
  %9 = load i32, ptr %arrayidx11.i.i, align 4
  %sh_prom.i.i = zext nneg i32 %9 to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %and12.i.i = and i64 %shl.i.i, %processed_hard_reg_set.063.i.i
  %tobool.not.i.i = icmp eq i64 %and12.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.inc35.i.i

if.end.i.i:                                       ; preds = %for.body9.i.i
  %or.i.i = or i64 %shl.i.i, %processed_hard_reg_set.063.i.i
  %and17.i.i = and i64 %and.i.i, %shl.i.i
  %tobool18.not.i.i = icmp eq i64 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %for.inc35.sink.split.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %conv.i.i = trunc i32 %n.062.i.i to i16
  %idxprom26.i.i = sext i32 %9 to i64
  %arrayidx27.i.i = getelementptr inbounds i16, ptr %arrayidx5.i.i, i64 %idxprom26.i.i
  store i16 %conv.i.i, ptr %arrayidx27.i.i, align 2
  %conv28.i.i = trunc i32 %9 to i16
  %inc31.i.i = add nsw i32 %n.062.i.i, 1
  br label %for.inc35.sink.split.i.i

for.inc35.sink.split.i.i:                         ; preds = %if.else.i.i, %if.end.i.i
  %.sink70.i.i = phi i32 [ %n.062.i.i, %if.else.i.i ], [ %9, %if.end.i.i ]
  %10 = phi ptr [ @ira_class_hard_regs, %if.else.i.i ], [ @ira_class_hard_reg_index, %if.end.i.i ]
  %.sink.i.i = phi i16 [ %conv28.i.i, %if.else.i.i ], [ -1, %if.end.i.i ]
  %n.1.ph.i.i = phi i32 [ %inc31.i.i, %if.else.i.i ], [ %n.062.i.i, %if.end.i.i ]
  %11 = getelementptr inbounds nuw [53 x i16], ptr %10, i64 %indvars.iv67.i.i
  %idxprom22.i.i = sext i32 %.sink70.i.i to i64
  %arrayidx23.i.i = getelementptr inbounds i16, ptr %11, i64 %idxprom22.i.i
  store i16 %.sink.i.i, ptr %arrayidx23.i.i, align 2
  br label %for.inc35.i.i

for.inc35.i.i:                                    ; preds = %for.inc35.sink.split.i.i, %for.body9.i.i
  %n.1.i.i = phi i32 [ %n.062.i.i, %for.body9.i.i ], [ %n.1.ph.i.i, %for.inc35.sink.split.i.i ]
  %processed_hard_reg_set.1.i.i = phi i64 [ %processed_hard_reg_set.063.i.i, %for.body9.i.i ], [ %or.i.i, %for.inc35.sink.split.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 53
  br i1 %exitcond.not.i.i, label %for.end37.i.i, label %for.body9.i.i, !llvm.loop !5

for.end37.i.i:                                    ; preds = %for.inc35.i.i
  %n.1.i.i.lcssa = phi i32 [ %n.1.i.i, %for.inc35.i.i ]
  %arrayidx39.i.i = getelementptr inbounds nuw i32, ptr @ira_class_hard_regs_num, i64 %indvars.iv67.i.i
  store i32 %n.1.i.i.lcssa, ptr %arrayidx39.i.i, align 4
  %indvars.iv.next68.i.i = add nsw i64 %indvars.iv67.i.i, -1
  %cmp.not.i.i = icmp eq i64 %indvars.iv67.i.i, 0
  br i1 %cmp.not.i.i, label %setup_class_hard_regs.exit.i, label %for.cond7.preheader.i.i, !llvm.loop !6

setup_class_hard_regs.exit.i:                     ; preds = %for.end37.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @ira_available_class_regs, i8 0, i64 108, i1 false)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc8.i.i, %setup_class_hard_regs.exit.i
  %indvars.iv20.i.i = phi i64 [ 0, %setup_class_hard_regs.exit.i ], [ %indvars.iv.next21.i.i, %for.inc8.i.i ]
  %arrayidx.i2.i = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %indvars.iv20.i.i
  %12 = load i64, ptr %arrayidx.i2.i, align 8
  %and.i3.i = and i64 %12, %not.i.i
  %arrayidx6.i.i = getelementptr inbounds nuw i32, ptr @ira_available_class_regs, i64 %indvars.iv20.i.i
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.inc.i.i, %for.body.i.i
  %indvars.iv.i4.i = phi i64 [ 0, %for.body.i.i ], [ %indvars.iv.next.i7.i, %for.inc.i.i ]
  %shl.i5.i = shl nuw nsw i64 1, %indvars.iv.i4.i
  %and4.i.i = and i64 %shl.i5.i, %and.i3.i
  %tobool.not.i6.i = icmp eq i64 %and4.i.i, 0
  br i1 %tobool.not.i6.i, label %for.inc.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body3.i.i
  %13 = load i32, ptr %arrayidx6.i.i, align 4
  %inc.i.i = add nsw i32 %13, 1
  store i32 %inc.i.i, ptr %arrayidx6.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body3.i.i
  %indvars.iv.next.i7.i = add nuw nsw i64 %indvars.iv.i4.i, 1
  %exitcond.not.i8.i = icmp eq i64 %indvars.iv.next.i7.i, 53
  br i1 %exitcond.not.i8.i, label %for.inc8.i.i, label %for.body3.i.i, !llvm.loop !7

for.inc8.i.i:                                     ; preds = %for.inc.i.i
  %indvars.iv.next21.i.i = add nuw nsw i64 %indvars.iv20.i.i, 1
  %exitcond23.not.i.i = icmp eq i64 %indvars.iv.next21.i.i, 27
  br i1 %exitcond23.not.i.i, label %setup_alloc_regs.exit, label %for.body.i.i, !llvm.loop !8

setup_alloc_regs.exit:                            ; preds = %for.inc8.i.i
  %and.i3.i.lcssa = phi i64 [ %and.i3.i, %for.inc8.i.i ]
  store i64 %and.i3.i.lcssa, ptr @temp_hard_regset, align 8
  br label %for.body.i7

for.body.i7:                                      ; preds = %for.body.i7, %setup_alloc_regs.exit
  %indvars.iv.i8 = phi i64 [ 0, %setup_alloc_regs.exit ], [ %indvars.iv.next.i10, %for.body.i7 ]
  %arrayidx.i9 = getelementptr inbounds nuw [27 x [2 x i16]], ptr @ira_memory_move_cost, i64 %indvars.iv.i8
  %arrayidx2.i = getelementptr inbounds nuw i8, ptr %arrayidx.i9, i64 2
  store i16 32767, ptr %arrayidx2.i, align 2
  store i16 32767, ptr %arrayidx.i9, align 4
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i8, 1
  %exitcond.not.i11 = icmp eq i64 %indvars.iv.next.i10, 87
  br i1 %exitcond.not.i11, label %for.body9.i.preheader, label %for.body.i7, !llvm.loop !9

for.body9.i.preheader:                            ; preds = %for.body.i7
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.body80.i, %for.body9.i.preheader
  %indvars.iv144.i = phi i64 [ %indvars.iv.next145.i, %for.body80.i ], [ 26, %for.body9.i.preheader ]
  %cmp10.not.i = icmp eq i64 %indvars.iv144.i, 0
  br i1 %cmp10.not.i, label %for.body80.i, label %for.cond11.preheader.i

for.cond11.preheader.i:                           ; preds = %for.body9.i
  %14 = trunc nuw nsw i64 %indvars.iv144.i to i32
  br label %for.body13.i12

for.body13.i12:                                   ; preds = %for.inc73.i, %for.cond11.preheader.i
  %indvars.iv137.i = phi i64 [ 0, %for.cond11.preheader.i ], [ %indvars.iv.next138.i, %for.inc73.i ]
  %15 = trunc nuw nsw i64 %indvars.iv137.i to i32
  %call.i = tail call i32 @ix86_memory_move_cost(i32 noundef %15, i32 noundef %14, i32 noundef 0) #8
  %conv.i = trunc i32 %call.i to i16
  %arrayidx15.i = getelementptr inbounds nuw [27 x [2 x i16]], ptr @ira_memory_move_cost, i64 %indvars.iv137.i
  %arrayidx17.i = getelementptr inbounds nuw [2 x i16], ptr %arrayidx15.i, i64 %indvars.iv144.i
  store i16 %conv.i, ptr %arrayidx17.i, align 4
  %call19.i = tail call i32 @ix86_memory_move_cost(i32 noundef %15, i32 noundef %14, i32 noundef 1) #8
  %conv20.i = trunc i32 %call19.i to i16
  %arrayidx25.i = getelementptr inbounds nuw i8, ptr %arrayidx17.i, i64 2
  store i16 %conv20.i, ptr %arrayidx25.i, align 2
  %16 = load i16, ptr %arrayidx15.i, align 4
  %17 = load i16, ptr %arrayidx17.i, align 4
  %cmp37.i = icmp sgt i16 %16, %17
  br i1 %cmp37.i, label %if.then39.i, label %if.end.i13

if.then39.i:                                      ; preds = %for.body13.i12
  store i16 %17, ptr %arrayidx15.i, align 4
  br label %if.end.i13

if.end.i13:                                       ; preds = %if.then39.i, %for.body13.i12
  %arrayidx52.i = getelementptr inbounds nuw i8, ptr %arrayidx15.i, i64 2
  %18 = load i16, ptr %arrayidx52.i, align 2
  %19 = load i16, ptr %arrayidx25.i, align 2
  %cmp60.i = icmp sgt i16 %18, %19
  br i1 %cmp60.i, label %if.then62.i, label %for.inc73.i

if.then62.i:                                      ; preds = %if.end.i13
  store i16 %19, ptr %arrayidx52.i, align 2
  br label %for.inc73.i

for.inc73.i:                                      ; preds = %if.then62.i, %if.end.i13
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next138.i, 87
  br i1 %exitcond140.not.i, label %for.body80.i.loopexit, label %for.body13.i12, !llvm.loop !10

for.body80.i.loopexit:                            ; preds = %for.inc73.i
  br label %for.body80.i

for.body80.i:                                     ; preds = %for.body80.i.loopexit, %for.body9.i
  %arrayidx90.i = getelementptr inbounds nuw [27 x i32], ptr @ira_class_subset_p, i64 %indvars.iv144.i
  %arrayidx82.i = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %indvars.iv144.i
  %20 = load i64, ptr %arrayidx82.i, align 8
  %21 = load i64, ptr @no_unit_alloc_regs, align 8
  %not.i = xor i64 %21, -1
  %and.i = and i64 %20, %not.i
  %22 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 208), align 8
  %.not.i = xor i64 %22, -1
  %and.i.i14 = and i64 %and.i, %.not.i
  %cmp.i.i = icmp eq i64 %and.i.i14, 0
  %conv88.i = zext i1 %cmp.i.i to i32
  %arrayidx92.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 104
  store i32 %conv88.i, ptr %arrayidx92.i, align 4
  %23 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 200), align 8
  %.not.1.i = xor i64 %23, -1
  %and.i.1.i = and i64 %and.i, %.not.1.i
  %cmp.i.1.i = icmp eq i64 %and.i.1.i, 0
  %conv88.1.i = zext i1 %cmp.i.1.i to i32
  %arrayidx92.1.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 100
  store i32 %conv88.1.i, ptr %arrayidx92.1.i, align 4
  %24 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 192), align 8
  %.not.2.i = xor i64 %24, -1
  %and.i.2.i = and i64 %and.i, %.not.2.i
  %cmp.i.2.i = icmp eq i64 %and.i.2.i, 0
  %conv88.2.i = zext i1 %cmp.i.2.i to i32
  %arrayidx92.2.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 96
  store i32 %conv88.2.i, ptr %arrayidx92.2.i, align 4
  %25 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 184), align 8
  %.not.3.i = xor i64 %25, -1
  %and.i.3.i = and i64 %and.i, %.not.3.i
  %cmp.i.3.i = icmp eq i64 %and.i.3.i, 0
  %conv88.3.i = zext i1 %cmp.i.3.i to i32
  %arrayidx92.3.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 92
  store i32 %conv88.3.i, ptr %arrayidx92.3.i, align 4
  %26 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 176), align 8
  %.not.4.i = xor i64 %26, -1
  %and.i.4.i = and i64 %and.i, %.not.4.i
  %cmp.i.4.i = icmp eq i64 %and.i.4.i, 0
  %conv88.4.i = zext i1 %cmp.i.4.i to i32
  %arrayidx92.4.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 88
  store i32 %conv88.4.i, ptr %arrayidx92.4.i, align 4
  %27 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 168), align 8
  %.not.5.i = xor i64 %27, -1
  %and.i.5.i = and i64 %and.i, %.not.5.i
  %cmp.i.5.i = icmp eq i64 %and.i.5.i, 0
  %conv88.5.i = zext i1 %cmp.i.5.i to i32
  %arrayidx92.5.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 84
  store i32 %conv88.5.i, ptr %arrayidx92.5.i, align 4
  %28 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 160), align 8
  %.not.6.i = xor i64 %28, -1
  %and.i.6.i = and i64 %and.i, %.not.6.i
  %cmp.i.6.i = icmp eq i64 %and.i.6.i, 0
  %conv88.6.i = zext i1 %cmp.i.6.i to i32
  %arrayidx92.6.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 80
  store i32 %conv88.6.i, ptr %arrayidx92.6.i, align 4
  %29 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 152), align 8
  %.not.7.i = xor i64 %29, -1
  %and.i.7.i = and i64 %and.i, %.not.7.i
  %cmp.i.7.i = icmp eq i64 %and.i.7.i, 0
  %conv88.7.i = zext i1 %cmp.i.7.i to i32
  %arrayidx92.7.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 76
  store i32 %conv88.7.i, ptr %arrayidx92.7.i, align 4
  %30 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 144), align 8
  %.not.8.i = xor i64 %30, -1
  %and.i.8.i = and i64 %and.i, %.not.8.i
  %cmp.i.8.i = icmp eq i64 %and.i.8.i, 0
  %conv88.8.i = zext i1 %cmp.i.8.i to i32
  %arrayidx92.8.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 72
  store i32 %conv88.8.i, ptr %arrayidx92.8.i, align 4
  %31 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 136), align 8
  %.not.9.i = xor i64 %31, -1
  %and.i.9.i = and i64 %and.i, %.not.9.i
  %cmp.i.9.i = icmp eq i64 %and.i.9.i, 0
  %conv88.9.i = zext i1 %cmp.i.9.i to i32
  %arrayidx92.9.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 68
  store i32 %conv88.9.i, ptr %arrayidx92.9.i, align 4
  %32 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 128), align 8
  %.not.10.i = xor i64 %32, -1
  %and.i.10.i = and i64 %and.i, %.not.10.i
  %cmp.i.10.i = icmp eq i64 %and.i.10.i, 0
  %conv88.10.i = zext i1 %cmp.i.10.i to i32
  %arrayidx92.10.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 64
  store i32 %conv88.10.i, ptr %arrayidx92.10.i, align 4
  %33 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 120), align 8
  %.not.11.i = xor i64 %33, -1
  %and.i.11.i = and i64 %and.i, %.not.11.i
  %cmp.i.11.i = icmp eq i64 %and.i.11.i, 0
  %conv88.11.i = zext i1 %cmp.i.11.i to i32
  %arrayidx92.11.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 60
  store i32 %conv88.11.i, ptr %arrayidx92.11.i, align 4
  %34 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 112), align 8
  %.not.12.i = xor i64 %34, -1
  %and.i.12.i = and i64 %and.i, %.not.12.i
  %cmp.i.12.i = icmp eq i64 %and.i.12.i, 0
  %conv88.12.i = zext i1 %cmp.i.12.i to i32
  %arrayidx92.12.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 56
  store i32 %conv88.12.i, ptr %arrayidx92.12.i, align 4
  %35 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 104), align 8
  %.not.13.i = xor i64 %35, -1
  %and.i.13.i = and i64 %and.i, %.not.13.i
  %cmp.i.13.i = icmp eq i64 %and.i.13.i, 0
  %conv88.13.i = zext i1 %cmp.i.13.i to i32
  %arrayidx92.13.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 52
  store i32 %conv88.13.i, ptr %arrayidx92.13.i, align 4
  %36 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 96), align 8
  %.not.14.i = xor i64 %36, -1
  %and.i.14.i = and i64 %and.i, %.not.14.i
  %cmp.i.14.i = icmp eq i64 %and.i.14.i, 0
  %conv88.14.i = zext i1 %cmp.i.14.i to i32
  %arrayidx92.14.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 48
  store i32 %conv88.14.i, ptr %arrayidx92.14.i, align 4
  %37 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 88), align 8
  %.not.15.i = xor i64 %37, -1
  %and.i.15.i = and i64 %and.i, %.not.15.i
  %cmp.i.15.i = icmp eq i64 %and.i.15.i, 0
  %conv88.15.i = zext i1 %cmp.i.15.i to i32
  %arrayidx92.15.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 44
  store i32 %conv88.15.i, ptr %arrayidx92.15.i, align 4
  %38 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 80), align 8
  %.not.16.i = xor i64 %38, -1
  %and.i.16.i = and i64 %and.i, %.not.16.i
  %cmp.i.16.i = icmp eq i64 %and.i.16.i, 0
  %conv88.16.i = zext i1 %cmp.i.16.i to i32
  %arrayidx92.16.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 40
  store i32 %conv88.16.i, ptr %arrayidx92.16.i, align 4
  %39 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 72), align 8
  %.not.17.i = xor i64 %39, -1
  %and.i.17.i = and i64 %and.i, %.not.17.i
  %cmp.i.17.i = icmp eq i64 %and.i.17.i, 0
  %conv88.17.i = zext i1 %cmp.i.17.i to i32
  %arrayidx92.17.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 36
  store i32 %conv88.17.i, ptr %arrayidx92.17.i, align 4
  %40 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 64), align 8
  %.not.18.i = xor i64 %40, -1
  %and.i.18.i = and i64 %and.i, %.not.18.i
  %cmp.i.18.i = icmp eq i64 %and.i.18.i, 0
  %conv88.18.i = zext i1 %cmp.i.18.i to i32
  %arrayidx92.18.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 32
  store i32 %conv88.18.i, ptr %arrayidx92.18.i, align 4
  %41 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 56), align 8
  %.not.19.i = xor i64 %41, -1
  %and.i.19.i = and i64 %and.i, %.not.19.i
  %cmp.i.19.i = icmp eq i64 %and.i.19.i, 0
  %conv88.19.i = zext i1 %cmp.i.19.i to i32
  %arrayidx92.19.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 28
  store i32 %conv88.19.i, ptr %arrayidx92.19.i, align 4
  %42 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 48), align 8
  %.not.20.i = xor i64 %42, -1
  %and.i.20.i = and i64 %and.i, %.not.20.i
  %cmp.i.20.i = icmp eq i64 %and.i.20.i, 0
  %conv88.20.i = zext i1 %cmp.i.20.i to i32
  %arrayidx92.20.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 24
  store i32 %conv88.20.i, ptr %arrayidx92.20.i, align 4
  %43 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 40), align 8
  %.not.21.i = xor i64 %43, -1
  %and.i.21.i = and i64 %and.i, %.not.21.i
  %cmp.i.21.i = icmp eq i64 %and.i.21.i, 0
  %conv88.21.i = zext i1 %cmp.i.21.i to i32
  %arrayidx92.21.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 20
  store i32 %conv88.21.i, ptr %arrayidx92.21.i, align 4
  %44 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 32), align 8
  %.not.22.i = xor i64 %44, -1
  %and.i.22.i = and i64 %and.i, %.not.22.i
  %cmp.i.22.i = icmp eq i64 %and.i.22.i, 0
  %conv88.22.i = zext i1 %cmp.i.22.i to i32
  %arrayidx92.22.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 16
  store i32 %conv88.22.i, ptr %arrayidx92.22.i, align 4
  %45 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 24), align 8
  %.not.23.i = xor i64 %45, -1
  %and.i.23.i = and i64 %and.i, %.not.23.i
  %cmp.i.23.i = icmp eq i64 %and.i.23.i, 0
  %conv88.23.i = zext i1 %cmp.i.23.i to i32
  %arrayidx92.23.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 12
  store i32 %conv88.23.i, ptr %arrayidx92.23.i, align 4
  %46 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 16), align 8
  %.not.24.i = xor i64 %46, -1
  %and.i.24.i = and i64 %and.i, %.not.24.i
  %cmp.i.24.i = icmp eq i64 %and.i.24.i, 0
  %conv88.24.i = zext i1 %cmp.i.24.i to i32
  %arrayidx92.24.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 8
  store i32 %conv88.24.i, ptr %arrayidx92.24.i, align 4
  %47 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 8), align 8
  %.not.25.i = xor i64 %47, -1
  %and.i.25.i = and i64 %and.i, %.not.25.i
  %cmp.i.25.i = icmp eq i64 %and.i.25.i, 0
  %conv88.25.i = zext i1 %cmp.i.25.i to i32
  %arrayidx92.25.i = getelementptr inbounds nuw i8, ptr %arrayidx90.i, i64 4
  store i32 %conv88.25.i, ptr %arrayidx92.25.i, align 4
  %48 = load i64, ptr @reg_class_contents, align 8
  %.not.26.i = xor i64 %48, -1
  %and.i.26.i = and i64 %and.i, %.not.26.i
  %cmp.i.26.i = icmp eq i64 %and.i.26.i, 0
  %conv88.26.i = zext i1 %cmp.i.26.i to i32
  store i32 %conv88.26.i, ptr %arrayidx90.i, align 4
  store i64 %and.i, ptr @temp_hard_regset, align 8
  %indvars.iv.next145.i = add nsw i64 %indvars.iv144.i, -1
  br i1 %cmp10.not.i, label %for.body3.i.i15.preheader, label %for.body9.i, !llvm.loop !11

for.body3.i.i15.preheader:                        ; preds = %for.body80.i
  %not.i.lcssa = phi i64 [ %not.i, %for.body80.i ]
  br label %for.body3.i.i15

for.body3.i.i15:                                  ; preds = %for.body3.i.i15, %for.body3.i.i15.preheader
  %indvars.iv.i.i16 = phi i64 [ %indvars.iv.next.i.i18, %for.body3.i.i15 ], [ 0, %for.body3.i.i15.preheader ]
  %arrayidx.i.i17 = getelementptr inbounds nuw [27 x i32], ptr @alloc_reg_class_subclasses, i64 %indvars.iv.i.i16
  store i32 27, ptr %arrayidx.i.i17, align 4
  %arrayidx5.1.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 4
  store i32 27, ptr %arrayidx5.1.i.i, align 4
  %arrayidx5.2.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 8
  store i32 27, ptr %arrayidx5.2.i.i, align 4
  %arrayidx5.3.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 12
  store i32 27, ptr %arrayidx5.3.i.i, align 4
  %arrayidx5.4.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 16
  store i32 27, ptr %arrayidx5.4.i.i, align 4
  %arrayidx5.5.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 20
  store i32 27, ptr %arrayidx5.5.i.i, align 4
  %arrayidx5.6.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 24
  store i32 27, ptr %arrayidx5.6.i.i, align 4
  %arrayidx5.7.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 28
  store i32 27, ptr %arrayidx5.7.i.i, align 4
  %arrayidx5.8.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 32
  store i32 27, ptr %arrayidx5.8.i.i, align 4
  %arrayidx5.9.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 36
  store i32 27, ptr %arrayidx5.9.i.i, align 4
  %arrayidx5.10.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 40
  store i32 27, ptr %arrayidx5.10.i.i, align 4
  %arrayidx5.11.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 44
  store i32 27, ptr %arrayidx5.11.i.i, align 4
  %arrayidx5.12.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 48
  store i32 27, ptr %arrayidx5.12.i.i, align 4
  %arrayidx5.13.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 52
  store i32 27, ptr %arrayidx5.13.i.i, align 4
  %arrayidx5.14.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 56
  store i32 27, ptr %arrayidx5.14.i.i, align 4
  %arrayidx5.15.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 60
  store i32 27, ptr %arrayidx5.15.i.i, align 4
  %arrayidx5.16.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 64
  store i32 27, ptr %arrayidx5.16.i.i, align 4
  %arrayidx5.17.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 68
  store i32 27, ptr %arrayidx5.17.i.i, align 4
  %arrayidx5.18.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 72
  store i32 27, ptr %arrayidx5.18.i.i, align 4
  %arrayidx5.19.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 76
  store i32 27, ptr %arrayidx5.19.i.i, align 4
  %arrayidx5.20.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 80
  store i32 27, ptr %arrayidx5.20.i.i, align 4
  %arrayidx5.21.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 84
  store i32 27, ptr %arrayidx5.21.i.i, align 4
  %arrayidx5.22.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 88
  store i32 27, ptr %arrayidx5.22.i.i, align 4
  %arrayidx5.23.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 92
  store i32 27, ptr %arrayidx5.23.i.i, align 4
  %arrayidx5.24.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 96
  store i32 27, ptr %arrayidx5.24.i.i, align 4
  %arrayidx5.25.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 100
  store i32 27, ptr %arrayidx5.25.i.i, align 4
  %arrayidx5.26.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i17, i64 104
  store i32 27, ptr %arrayidx5.26.i.i, align 4
  %indvars.iv.next.i.i18 = add nuw nsw i64 %indvars.iv.i.i16, 1
  %exitcond.not.i.i19 = icmp eq i64 %indvars.iv.next.i.i18, 27
  br i1 %exitcond.not.i.i19, label %for.body11.i.i.preheader, label %for.body3.i.i15, !llvm.loop !12

for.body11.i.i.preheader:                         ; preds = %for.body3.i.i15
  br label %for.body11.i.i

for.body11.i.i:                                   ; preds = %for.inc38.i.i, %for.body11.i.i.preheader
  %indvars.iv71.i.i = phi i64 [ %indvars.iv.next72.i.i, %for.inc38.i.i ], [ 0, %for.body11.i.i.preheader ]
  %cmp12.i.i = icmp eq i64 %indvars.iv71.i.i, 0
  br i1 %cmp12.i.i, label %for.inc38.i.i, label %if.end.i.i21

if.end.i.i21:                                     ; preds = %for.body11.i.i
  %arrayidx14.i.i = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %indvars.iv71.i.i
  %49 = load i64, ptr %arrayidx14.i.i, align 8
  %and.i.i22 = and i64 %49, %not.i.lcssa
  store i64 %and.i.i22, ptr @temp_hard_regset, align 8
  %cmp.i.not.i.i = icmp eq i64 %and.i.i22, 0
  br i1 %cmp.i.not.i.i, label %for.inc38.i.i, label %for.body19.preheader.i.i

for.body19.preheader.i.i:                         ; preds = %if.end.i.i21
  %50 = trunc nuw nsw i64 %indvars.iv71.i.i to i32
  br label %for.body19.i.i

for.body19.i.i:                                   ; preds = %for.inc35.i.i25, %for.body19.preheader.i.i
  %indvars.iv67.i.i23 = phi i64 [ 0, %for.body19.preheader.i.i ], [ %indvars.iv.next68.i.i26, %for.inc35.i.i25 ]
  %cmp20.not.i.i = icmp eq i64 %indvars.iv71.i.i, %indvars.iv67.i.i23
  br i1 %cmp20.not.i.i, label %for.inc35.i.i25, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %for.body19.i.i
  %arrayidx23.i.i24 = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %indvars.iv67.i.i23
  %51 = load i64, ptr %arrayidx23.i.i24, align 8
  %.not.i.i = xor i64 %51, -1
  %and.i.i.i = and i64 %and.i.i22, %.not.i.i
  %cmp.i59.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %cmp.i59.not.i.i, label %if.end29.i.i, label %for.inc35.i.i25

if.end29.i.i:                                     ; preds = %if.then21.i.i
  %arrayidx31.i.i = getelementptr inbounds nuw [27 x i32], ptr @alloc_reg_class_subclasses, i64 %indvars.iv67.i.i23
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.end29.i.i
  %p.0.i.i = phi ptr [ %arrayidx31.i.i, %if.end29.i.i ], [ %incdec.ptr.i.i, %while.cond.i.i ]
  %52 = load i32, ptr %p.0.i.i, align 4
  %cmp33.not.i.i = icmp eq i32 %52, 27
  %incdec.ptr.i.i = getelementptr inbounds nuw i8, ptr %p.0.i.i, i64 4
  br i1 %cmp33.not.i.i, label %while.end.i.i, label %while.cond.i.i, !llvm.loop !13

while.end.i.i:                                    ; preds = %while.cond.i.i
  %p.0.i.i.lcssa = phi ptr [ %p.0.i.i, %while.cond.i.i ]
  store i32 %50, ptr %p.0.i.i.lcssa, align 4
  br label %for.inc35.i.i25

for.inc35.i.i25:                                  ; preds = %while.end.i.i, %if.then21.i.i, %for.body19.i.i
  %indvars.iv.next68.i.i26 = add nuw nsw i64 %indvars.iv67.i.i23, 1
  %exitcond70.not.i.i = icmp eq i64 %indvars.iv.next68.i.i26, 27
  br i1 %exitcond70.not.i.i, label %for.inc38.i.i.loopexit, label %for.body19.i.i, !llvm.loop !14

for.inc38.i.i.loopexit:                           ; preds = %for.inc35.i.i25
  br label %for.inc38.i.i

for.inc38.i.i:                                    ; preds = %for.inc38.i.i.loopexit, %if.end.i.i21, %for.body11.i.i
  %indvars.iv.next72.i.i = add nuw nsw i64 %indvars.iv71.i.i, 1
  %exitcond74.not.i.i = icmp eq i64 %indvars.iv.next72.i.i, 27
  br i1 %exitcond74.not.i.i, label %setup_reg_subclasses.exit.i, label %for.body11.i.i, !llvm.loop !15

setup_reg_subclasses.exit.i:                      ; preds = %for.inc38.i.i
  %53 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1720), align 8
  %cmp.i.i27 = icmp eq ptr %53, null
  br i1 %cmp.i.i27, label %if.end9.i.i, label %if.end.i1.i

if.end.i1.i:                                      ; preds = %setup_reg_subclasses.exit.i
  %call.i.i = tail call ptr %53() #8
  %cmp1.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp1.i.i, label %if.end9.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i1.i
  %54 = load i32, ptr %call.i.i, align 4
  %cmp4.not225.i.i = icmp eq i32 %54, 27
  br i1 %cmp4.not225.i.i, label %for.end.i.i, label %for.body.i.i28.preheader

for.body.i.i28.preheader:                         ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i28

for.body.i.i28:                                   ; preds = %for.body.i.i28, %for.body.i.i28.preheader
  %indvars.iv.i2.i = phi i64 [ %indvars.iv.next.i3.i, %for.body.i.i28 ], [ 0, %for.body.i.i28.preheader ]
  %55 = phi i32 [ %56, %for.body.i.i28 ], [ %54, %for.body.i.i28.preheader ]
  %arrayidx6.i.i29 = getelementptr inbounds nuw i32, ptr @setup_cover_and_important_classes.classes, i64 %indvars.iv.i2.i
  store i32 %55, ptr %arrayidx6.i.i29, align 4
  %indvars.iv.next.i3.i = add nuw nsw i64 %indvars.iv.i2.i, 1
  %arrayidx.i4.i = getelementptr inbounds nuw i32, ptr %call.i.i, i64 %indvars.iv.next.i3.i
  %56 = load i32, ptr %arrayidx.i4.i, align 4
  %cmp4.not.i.i = icmp eq i32 %56, 27
  br i1 %cmp4.not.i.i, label %for.end.i.i.loopexit, label %for.body.i.i28, !llvm.loop !16

for.end.i.i.loopexit:                             ; preds = %for.body.i.i28
  %indvars.iv.next.i3.i.lcssa = phi i64 [ %indvars.iv.next.i3.i, %for.body.i.i28 ]
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.i.i.loopexit, %for.cond.preheader.i.i
  %idxprom.lcssa.i.i = phi i64 [ 0, %for.cond.preheader.i.i ], [ %indvars.iv.next.i3.i.lcssa, %for.end.i.i.loopexit ]
  %arrayidx8.i.i = getelementptr inbounds nuw i32, ptr @setup_cover_and_important_classes.classes, i64 %idxprom.lcssa.i.i
  store i32 27, ptr %arrayidx8.i.i, align 4
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %for.end.i.i, %if.end.i1.i, %setup_reg_subclasses.exit.i
  %57 = load i32, ptr @flag_ira_algorithm, align 4
  %cmp10.i.i = icmp eq i32 %57, 1
  br i1 %cmp10.i.i, label %for.body14.i.i.preheader, label %if.end63.i.i

for.body14.i.i.preheader:                         ; preds = %if.end9.i.i
  br label %for.body14.i.i

for.body14.i.i:                                   ; preds = %for.inc58.i.i, %for.body14.i.i.preheader
  %indvars.iv258.i.i = phi i64 [ %indvars.iv.next259.i.i, %for.inc58.i.i ], [ 0, %for.body14.i.i.preheader ]
  %n.0231.i.i = phi i32 [ %n.1.i.i33, %for.inc58.i.i ], [ 0, %for.body14.i.i.preheader ]
  %cmp15.i.i = icmp eq i64 %indvars.iv258.i.i, 0
  br i1 %cmp15.i.i, label %for.inc58.i.i, label %for.body20.i.i

for.cond18.i.i:                                   ; preds = %for.body20.i.i
  %call21.1.i.i = tail call i32 @regclass_for_constraint(i32 noundef 1) #8
  %58 = zext i32 %call21.1.i.i to i64
  %cmp22.1.i.i = icmp eq i64 %indvars.iv258.i.i, %58
  br i1 %cmp22.1.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.1.i.i

for.cond18.1.i.i:                                 ; preds = %for.cond18.i.i
  %call21.2.i.i = tail call i32 @regclass_for_constraint(i32 noundef 2) #8
  %59 = zext i32 %call21.2.i.i to i64
  %cmp22.2.i.i = icmp eq i64 %indvars.iv258.i.i, %59
  br i1 %cmp22.2.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.2.i.i

for.cond18.2.i.i:                                 ; preds = %for.cond18.1.i.i
  %call21.3.i.i = tail call i32 @regclass_for_constraint(i32 noundef 3) #8
  %60 = zext i32 %call21.3.i.i to i64
  %cmp22.3.i.i = icmp eq i64 %indvars.iv258.i.i, %60
  br i1 %cmp22.3.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.3.i.i

for.cond18.3.i.i:                                 ; preds = %for.cond18.2.i.i
  %call21.4.i.i = tail call i32 @regclass_for_constraint(i32 noundef 4) #8
  %61 = zext i32 %call21.4.i.i to i64
  %cmp22.4.i.i = icmp eq i64 %indvars.iv258.i.i, %61
  br i1 %cmp22.4.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.4.i.i

for.cond18.4.i.i:                                 ; preds = %for.cond18.3.i.i
  %call21.5.i.i = tail call i32 @regclass_for_constraint(i32 noundef 5) #8
  %62 = zext i32 %call21.5.i.i to i64
  %cmp22.5.i.i = icmp eq i64 %indvars.iv258.i.i, %62
  br i1 %cmp22.5.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.5.i.i

for.cond18.5.i.i:                                 ; preds = %for.cond18.4.i.i
  %call21.6.i.i = tail call i32 @regclass_for_constraint(i32 noundef 6) #8
  %63 = zext i32 %call21.6.i.i to i64
  %cmp22.6.i.i = icmp eq i64 %indvars.iv258.i.i, %63
  br i1 %cmp22.6.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.6.i.i

for.cond18.6.i.i:                                 ; preds = %for.cond18.5.i.i
  %call21.7.i.i = tail call i32 @regclass_for_constraint(i32 noundef 7) #8
  %64 = zext i32 %call21.7.i.i to i64
  %cmp22.7.i.i = icmp eq i64 %indvars.iv258.i.i, %64
  br i1 %cmp22.7.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.7.i.i

for.cond18.7.i.i:                                 ; preds = %for.cond18.6.i.i
  %call21.8.i.i = tail call i32 @regclass_for_constraint(i32 noundef 8) #8
  %65 = zext i32 %call21.8.i.i to i64
  %cmp22.8.i.i = icmp eq i64 %indvars.iv258.i.i, %65
  br i1 %cmp22.8.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.8.i.i

for.cond18.8.i.i:                                 ; preds = %for.cond18.7.i.i
  %call21.9.i.i = tail call i32 @regclass_for_constraint(i32 noundef 9) #8
  %66 = zext i32 %call21.9.i.i to i64
  %cmp22.9.i.i = icmp eq i64 %indvars.iv258.i.i, %66
  br i1 %cmp22.9.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.9.i.i

for.cond18.9.i.i:                                 ; preds = %for.cond18.8.i.i
  %call21.10.i.i = tail call i32 @regclass_for_constraint(i32 noundef 10) #8
  %67 = zext i32 %call21.10.i.i to i64
  %cmp22.10.i.i = icmp eq i64 %indvars.iv258.i.i, %67
  br i1 %cmp22.10.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.10.i.i

for.cond18.10.i.i:                                ; preds = %for.cond18.9.i.i
  %call21.11.i.i = tail call i32 @regclass_for_constraint(i32 noundef 11) #8
  %68 = zext i32 %call21.11.i.i to i64
  %cmp22.11.i.i = icmp eq i64 %indvars.iv258.i.i, %68
  br i1 %cmp22.11.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.11.i.i

for.cond18.11.i.i:                                ; preds = %for.cond18.10.i.i
  %call21.12.i.i = tail call i32 @regclass_for_constraint(i32 noundef 12) #8
  %69 = zext i32 %call21.12.i.i to i64
  %cmp22.12.i.i = icmp eq i64 %indvars.iv258.i.i, %69
  br i1 %cmp22.12.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.12.i.i

for.cond18.12.i.i:                                ; preds = %for.cond18.11.i.i
  %call21.13.i.i = tail call i32 @regclass_for_constraint(i32 noundef 13) #8
  %70 = zext i32 %call21.13.i.i to i64
  %cmp22.13.i.i = icmp eq i64 %indvars.iv258.i.i, %70
  br i1 %cmp22.13.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.13.i.i

for.cond18.13.i.i:                                ; preds = %for.cond18.12.i.i
  %call21.14.i.i = tail call i32 @regclass_for_constraint(i32 noundef 14) #8
  %71 = zext i32 %call21.14.i.i to i64
  %cmp22.14.i.i = icmp eq i64 %indvars.iv258.i.i, %71
  br i1 %cmp22.14.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.14.i.i

for.cond18.14.i.i:                                ; preds = %for.cond18.13.i.i
  %call21.15.i.i = tail call i32 @regclass_for_constraint(i32 noundef 15) #8
  %72 = zext i32 %call21.15.i.i to i64
  %cmp22.15.i.i = icmp eq i64 %indvars.iv258.i.i, %72
  br i1 %cmp22.15.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.15.i.i

for.cond18.15.i.i:                                ; preds = %for.cond18.14.i.i
  %call21.16.i.i = tail call i32 @regclass_for_constraint(i32 noundef 16) #8
  %73 = zext i32 %call21.16.i.i to i64
  %cmp22.16.i.i = icmp eq i64 %indvars.iv258.i.i, %73
  br i1 %cmp22.16.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.16.i.i

for.cond18.16.i.i:                                ; preds = %for.cond18.15.i.i
  %call21.17.i.i = tail call i32 @regclass_for_constraint(i32 noundef 17) #8
  %74 = zext i32 %call21.17.i.i to i64
  %cmp22.17.i.i = icmp eq i64 %indvars.iv258.i.i, %74
  br i1 %cmp22.17.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.17.i.i

for.cond18.17.i.i:                                ; preds = %for.cond18.16.i.i
  %call21.18.i.i = tail call i32 @regclass_for_constraint(i32 noundef 18) #8
  %75 = zext i32 %call21.18.i.i to i64
  %cmp22.18.i.i = icmp eq i64 %indvars.iv258.i.i, %75
  br i1 %cmp22.18.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.18.i.i

for.cond18.18.i.i:                                ; preds = %for.cond18.17.i.i
  %call21.19.i.i = tail call i32 @regclass_for_constraint(i32 noundef 19) #8
  %76 = zext i32 %call21.19.i.i to i64
  %cmp22.19.i.i = icmp eq i64 %indvars.iv258.i.i, %76
  br i1 %cmp22.19.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.19.i.i

for.cond18.19.i.i:                                ; preds = %for.cond18.18.i.i
  %call21.20.i.i = tail call i32 @regclass_for_constraint(i32 noundef 20) #8
  %77 = zext i32 %call21.20.i.i to i64
  %cmp22.20.i.i = icmp eq i64 %indvars.iv258.i.i, %77
  br i1 %cmp22.20.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.20.i.i

for.cond18.20.i.i:                                ; preds = %for.cond18.19.i.i
  %call21.21.i.i = tail call i32 @regclass_for_constraint(i32 noundef 21) #8
  %78 = zext i32 %call21.21.i.i to i64
  %cmp22.21.i.i = icmp eq i64 %indvars.iv258.i.i, %78
  br i1 %cmp22.21.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.21.i.i

for.cond18.21.i.i:                                ; preds = %for.cond18.20.i.i
  %call21.22.i.i = tail call i32 @regclass_for_constraint(i32 noundef 22) #8
  %79 = zext i32 %call21.22.i.i to i64
  %cmp22.22.i.i = icmp eq i64 %indvars.iv258.i.i, %79
  br i1 %cmp22.22.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.22.i.i

for.cond18.22.i.i:                                ; preds = %for.cond18.21.i.i
  %call21.23.i.i = tail call i32 @regclass_for_constraint(i32 noundef 23) #8
  %80 = zext i32 %call21.23.i.i to i64
  %cmp22.23.i.i = icmp eq i64 %indvars.iv258.i.i, %80
  br i1 %cmp22.23.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.23.i.i

for.cond18.23.i.i:                                ; preds = %for.cond18.22.i.i
  %call21.24.i.i = tail call i32 @regclass_for_constraint(i32 noundef 24) #8
  %81 = zext i32 %call21.24.i.i to i64
  %cmp22.24.i.i = icmp eq i64 %indvars.iv258.i.i, %81
  br i1 %cmp22.24.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.24.i.i

for.cond18.24.i.i:                                ; preds = %for.cond18.23.i.i
  %call21.25.i.i = tail call i32 @regclass_for_constraint(i32 noundef 25) #8
  %82 = zext i32 %call21.25.i.i to i64
  %cmp22.25.i.i = icmp eq i64 %indvars.iv258.i.i, %82
  br i1 %cmp22.25.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.25.i.i

for.cond18.25.i.i:                                ; preds = %for.cond18.24.i.i
  %call21.26.i.i = tail call i32 @regclass_for_constraint(i32 noundef 26) #8
  %83 = zext i32 %call21.26.i.i to i64
  %cmp22.26.i.i = icmp eq i64 %indvars.iv258.i.i, %83
  br i1 %cmp22.26.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.26.i.i

for.cond18.26.i.i:                                ; preds = %for.cond18.25.i.i
  %call21.27.i.i = tail call i32 @regclass_for_constraint(i32 noundef 27) #8
  %84 = zext i32 %call21.27.i.i to i64
  %cmp22.27.i.i = icmp eq i64 %indvars.iv258.i.i, %84
  br i1 %cmp22.27.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.27.i.i

for.cond18.27.i.i:                                ; preds = %for.cond18.26.i.i
  %call21.28.i.i = tail call i32 @regclass_for_constraint(i32 noundef 28) #8
  %85 = zext i32 %call21.28.i.i to i64
  %cmp22.28.i.i = icmp eq i64 %indvars.iv258.i.i, %85
  br i1 %cmp22.28.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.28.i.i

for.cond18.28.i.i:                                ; preds = %for.cond18.27.i.i
  %call21.29.i.i = tail call i32 @regclass_for_constraint(i32 noundef 29) #8
  %86 = zext i32 %call21.29.i.i to i64
  %cmp22.29.i.i = icmp eq i64 %indvars.iv258.i.i, %86
  br i1 %cmp22.29.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.29.i.i

for.cond18.29.i.i:                                ; preds = %for.cond18.28.i.i
  %call21.30.i.i = tail call i32 @regclass_for_constraint(i32 noundef 30) #8
  %87 = zext i32 %call21.30.i.i to i64
  %cmp22.30.i.i = icmp eq i64 %indvars.iv258.i.i, %87
  br i1 %cmp22.30.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.30.i.i

for.cond18.30.i.i:                                ; preds = %for.cond18.29.i.i
  %call21.31.i.i = tail call i32 @regclass_for_constraint(i32 noundef 31) #8
  %88 = zext i32 %call21.31.i.i to i64
  %cmp22.31.i.i = icmp eq i64 %indvars.iv258.i.i, %88
  br i1 %cmp22.31.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.31.i.i

for.cond18.31.i.i:                                ; preds = %for.cond18.30.i.i
  %call21.32.i.i = tail call i32 @regclass_for_constraint(i32 noundef 32) #8
  %89 = zext i32 %call21.32.i.i to i64
  %cmp22.32.i.i = icmp eq i64 %indvars.iv258.i.i, %89
  br i1 %cmp22.32.i.i, label %for.inc58.sink.split.i.i, label %if.end41.i.i

for.body20.i.i:                                   ; preds = %for.body14.i.i
  %call21.i.i = tail call i32 @regclass_for_constraint(i32 noundef 0) #8
  %90 = zext i32 %call21.i.i to i64
  %cmp22.i.i = icmp eq i64 %indvars.iv258.i.i, %90
  br i1 %cmp22.i.i, label %for.inc58.sink.split.i.i, label %for.cond18.i.i

if.end41.i.i:                                     ; preds = %for.cond18.31.i.i
  %arrayidx35.i.i = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %indvars.iv258.i.i
  %91 = load i64, ptr %arrayidx35.i.i, align 8
  %92 = load i64, ptr @no_unit_alloc_regs, align 8
  %not.i5.i = xor i64 %92, -1
  %and.i6.i = and i64 %91, %not.i5.i
  store i64 %and.i6.i, ptr @temp_hard_regset, align 8
  %93 = load i64, ptr @reg_class_contents, align 8
  %and45.i.i = and i64 %93, %not.i5.i
  %cmp.i.not.i7.i = icmp eq i64 %and.i6.i, %and45.i.i
  br i1 %cmp.i.not.i7.i, label %for.end51.i.i, label %for.inc49.i.i

for.inc49.i.i:                                    ; preds = %if.end41.i.i
  %cmp39.1.i.i = icmp eq i64 %indvars.iv258.i.i, 1
  br i1 %cmp39.1.i.i, label %if.end41.2.thread.i.i, label %if.end41.1.i.i

if.end41.1.i.i:                                   ; preds = %for.inc49.i.i
  %94 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 8), align 8
  %and45.1.i.i = and i64 %94, %not.i5.i
  %cmp.i.not.1.i.i = icmp eq i64 %and.i6.i, %and45.1.i.i
  br i1 %cmp.i.not.1.i.i, label %for.end51.i.i, label %for.inc49.1.i.i

for.inc49.1.i.i:                                  ; preds = %if.end41.1.i.i
  %cmp39.2.i.i = icmp eq i64 %indvars.iv258.i.i, 2
  br i1 %cmp39.2.i.i, label %if.end41.3.i.i, label %if.end41.2.i.i

if.end41.2.i.i:                                   ; preds = %for.inc49.1.i.i
  %95 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 16), align 8
  %and45.2.i.i = and i64 %95, %not.i5.i
  %cmp.i.not.2.i.i = icmp eq i64 %and.i6.i, %and45.2.i.i
  br i1 %cmp.i.not.2.i.i, label %for.end51.i.i, label %for.inc49.2.i.i

if.end41.2.thread.i.i:                            ; preds = %for.inc49.i.i
  %96 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 16), align 8
  %and45.2298.i.i = and i64 %96, %not.i5.i
  %cmp.i.not.2299.i.i = icmp eq i64 %and.i6.i, %and45.2298.i.i
  br i1 %cmp.i.not.2299.i.i, label %for.end51.i.i, label %if.end41.3.i.i

for.inc49.2.i.i:                                  ; preds = %if.end41.2.i.i
  %cmp39.3.i.i = icmp eq i64 %indvars.iv258.i.i, 3
  br i1 %cmp39.3.i.i, label %if.end41.4.thread.i.i, label %if.end41.3.i.i

if.end41.3.i.i:                                   ; preds = %for.inc49.2.i.i, %if.end41.2.thread.i.i, %for.inc49.1.i.i
  %97 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 24), align 8
  %and45.3.i.i = and i64 %97, %not.i5.i
  %cmp.i.not.3.i.i = icmp eq i64 %and.i6.i, %and45.3.i.i
  br i1 %cmp.i.not.3.i.i, label %for.end51.i.i, label %for.inc49.3.i.i

for.inc49.3.i.i:                                  ; preds = %if.end41.3.i.i
  %cmp39.4.i.i = icmp eq i64 %indvars.iv258.i.i, 4
  br i1 %cmp39.4.i.i, label %if.end41.5.i.i, label %if.end41.4.i.i

if.end41.4.i.i:                                   ; preds = %for.inc49.3.i.i
  %98 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 32), align 8
  %and45.4.i.i = and i64 %98, %not.i5.i
  %cmp.i.not.4.i.i = icmp eq i64 %and.i6.i, %and45.4.i.i
  br i1 %cmp.i.not.4.i.i, label %for.end51.i.i, label %for.inc49.4.i.i

if.end41.4.thread.i.i:                            ; preds = %for.inc49.2.i.i
  %99 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 32), align 8
  %and45.4304.i.i = and i64 %99, %not.i5.i
  %cmp.i.not.4305.i.i = icmp eq i64 %and.i6.i, %and45.4304.i.i
  br i1 %cmp.i.not.4305.i.i, label %for.end51.i.i, label %if.end41.5.i.i

for.inc49.4.i.i:                                  ; preds = %if.end41.4.i.i
  %cmp39.5.i.i = icmp eq i64 %indvars.iv258.i.i, 5
  br i1 %cmp39.5.i.i, label %if.end41.6.thread.i.i, label %if.end41.5.i.i

if.end41.5.i.i:                                   ; preds = %for.inc49.4.i.i, %if.end41.4.thread.i.i, %for.inc49.3.i.i
  %100 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 40), align 8
  %and45.5.i.i = and i64 %100, %not.i5.i
  %cmp.i.not.5.i.i = icmp eq i64 %and.i6.i, %and45.5.i.i
  br i1 %cmp.i.not.5.i.i, label %for.end51.i.i, label %for.inc49.5.i.i

for.inc49.5.i.i:                                  ; preds = %if.end41.5.i.i
  %cmp39.6.i.i = icmp eq i64 %indvars.iv258.i.i, 6
  br i1 %cmp39.6.i.i, label %if.end41.7.i.i, label %if.end41.6.i.i

if.end41.6.i.i:                                   ; preds = %for.inc49.5.i.i
  %101 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 48), align 8
  %and45.6.i.i = and i64 %101, %not.i5.i
  %cmp.i.not.6.i.i = icmp eq i64 %and.i6.i, %and45.6.i.i
  br i1 %cmp.i.not.6.i.i, label %for.end51.i.i, label %for.inc49.6.i.i

if.end41.6.thread.i.i:                            ; preds = %for.inc49.4.i.i
  %102 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 48), align 8
  %and45.6310.i.i = and i64 %102, %not.i5.i
  %cmp.i.not.6311.i.i = icmp eq i64 %and.i6.i, %and45.6310.i.i
  br i1 %cmp.i.not.6311.i.i, label %for.end51.i.i, label %if.end41.7.i.i

for.inc49.6.i.i:                                  ; preds = %if.end41.6.i.i
  %cmp39.7.i.i = icmp eq i64 %indvars.iv258.i.i, 7
  br i1 %cmp39.7.i.i, label %if.end41.8.thread.i.i, label %if.end41.7.i.i

if.end41.7.i.i:                                   ; preds = %for.inc49.6.i.i, %if.end41.6.thread.i.i, %for.inc49.5.i.i
  %103 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 56), align 8
  %and45.7.i.i = and i64 %103, %not.i5.i
  %cmp.i.not.7.i.i = icmp eq i64 %and.i6.i, %and45.7.i.i
  br i1 %cmp.i.not.7.i.i, label %for.end51.i.i, label %for.inc49.7.i.i

for.inc49.7.i.i:                                  ; preds = %if.end41.7.i.i
  %cmp39.8.i.i = icmp eq i64 %indvars.iv258.i.i, 8
  br i1 %cmp39.8.i.i, label %if.end41.9.i.i, label %if.end41.8.i.i

if.end41.8.i.i:                                   ; preds = %for.inc49.7.i.i
  %104 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 64), align 8
  %and45.8.i.i = and i64 %104, %not.i5.i
  %cmp.i.not.8.i.i = icmp eq i64 %and.i6.i, %and45.8.i.i
  br i1 %cmp.i.not.8.i.i, label %for.end51.i.i, label %for.inc49.8.i.i

if.end41.8.thread.i.i:                            ; preds = %for.inc49.6.i.i
  %105 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 64), align 8
  %and45.8316.i.i = and i64 %105, %not.i5.i
  %cmp.i.not.8317.i.i = icmp eq i64 %and.i6.i, %and45.8316.i.i
  br i1 %cmp.i.not.8317.i.i, label %for.end51.i.i, label %if.end41.9.i.i

for.inc49.8.i.i:                                  ; preds = %if.end41.8.i.i
  %cmp39.9.i.i = icmp eq i64 %indvars.iv258.i.i, 9
  br i1 %cmp39.9.i.i, label %if.end41.10.thread.i.i, label %if.end41.9.i.i

if.end41.9.i.i:                                   ; preds = %for.inc49.8.i.i, %if.end41.8.thread.i.i, %for.inc49.7.i.i
  %106 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 72), align 8
  %and45.9.i.i = and i64 %106, %not.i5.i
  %cmp.i.not.9.i.i = icmp eq i64 %and.i6.i, %and45.9.i.i
  br i1 %cmp.i.not.9.i.i, label %for.end51.i.i, label %for.inc49.9.i.i

for.inc49.9.i.i:                                  ; preds = %if.end41.9.i.i
  %cmp39.10.i.i = icmp eq i64 %indvars.iv258.i.i, 10
  br i1 %cmp39.10.i.i, label %if.end41.11.i.i, label %if.end41.10.i.i

if.end41.10.i.i:                                  ; preds = %for.inc49.9.i.i
  %107 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 80), align 8
  %and45.10.i.i = and i64 %107, %not.i5.i
  %cmp.i.not.10.i.i = icmp eq i64 %and.i6.i, %and45.10.i.i
  br i1 %cmp.i.not.10.i.i, label %for.end51.i.i, label %for.inc49.10.i.i

if.end41.10.thread.i.i:                           ; preds = %for.inc49.8.i.i
  %108 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 80), align 8
  %and45.10322.i.i = and i64 %108, %not.i5.i
  %cmp.i.not.10323.i.i = icmp eq i64 %and.i6.i, %and45.10322.i.i
  br i1 %cmp.i.not.10323.i.i, label %for.end51.i.i, label %if.end41.11.i.i

for.inc49.10.i.i:                                 ; preds = %if.end41.10.i.i
  %cmp39.11.i.i = icmp eq i64 %indvars.iv258.i.i, 11
  br i1 %cmp39.11.i.i, label %if.end41.12.thread.i.i, label %if.end41.11.i.i

if.end41.11.i.i:                                  ; preds = %for.inc49.10.i.i, %if.end41.10.thread.i.i, %for.inc49.9.i.i
  %109 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 88), align 8
  %and45.11.i.i = and i64 %109, %not.i5.i
  %cmp.i.not.11.i.i = icmp eq i64 %and.i6.i, %and45.11.i.i
  br i1 %cmp.i.not.11.i.i, label %for.end51.i.i, label %for.inc49.11.i.i

for.inc49.11.i.i:                                 ; preds = %if.end41.11.i.i
  %cmp39.12.i.i = icmp eq i64 %indvars.iv258.i.i, 12
  br i1 %cmp39.12.i.i, label %if.end41.13.i.i, label %if.end41.12.i.i

if.end41.12.i.i:                                  ; preds = %for.inc49.11.i.i
  %110 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 96), align 8
  %and45.12.i.i = and i64 %110, %not.i5.i
  %cmp.i.not.12.i.i = icmp eq i64 %and.i6.i, %and45.12.i.i
  br i1 %cmp.i.not.12.i.i, label %for.end51.i.i, label %for.inc49.12.i.i

if.end41.12.thread.i.i:                           ; preds = %for.inc49.10.i.i
  %111 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 96), align 8
  %and45.12328.i.i = and i64 %111, %not.i5.i
  %cmp.i.not.12329.i.i = icmp eq i64 %and.i6.i, %and45.12328.i.i
  br i1 %cmp.i.not.12329.i.i, label %for.end51.i.i, label %if.end41.13.i.i

for.inc49.12.i.i:                                 ; preds = %if.end41.12.i.i
  %cmp39.13.i.i = icmp eq i64 %indvars.iv258.i.i, 13
  br i1 %cmp39.13.i.i, label %if.end41.14.thread.i.i, label %if.end41.13.i.i

if.end41.13.i.i:                                  ; preds = %for.inc49.12.i.i, %if.end41.12.thread.i.i, %for.inc49.11.i.i
  %112 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 104), align 8
  %and45.13.i.i = and i64 %112, %not.i5.i
  %cmp.i.not.13.i.i = icmp eq i64 %and.i6.i, %and45.13.i.i
  br i1 %cmp.i.not.13.i.i, label %for.end51.i.i, label %for.inc49.13.i.i

for.inc49.13.i.i:                                 ; preds = %if.end41.13.i.i
  %cmp39.14.i.i = icmp eq i64 %indvars.iv258.i.i, 14
  br i1 %cmp39.14.i.i, label %if.end41.15.i.i, label %if.end41.14.i.i

if.end41.14.i.i:                                  ; preds = %for.inc49.13.i.i
  %113 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 112), align 8
  %and45.14.i.i = and i64 %113, %not.i5.i
  %cmp.i.not.14.i.i = icmp eq i64 %and.i6.i, %and45.14.i.i
  br i1 %cmp.i.not.14.i.i, label %for.end51.i.i, label %for.inc49.14.i.i

if.end41.14.thread.i.i:                           ; preds = %for.inc49.12.i.i
  %114 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 112), align 8
  %and45.14334.i.i = and i64 %114, %not.i5.i
  %cmp.i.not.14335.i.i = icmp eq i64 %and.i6.i, %and45.14334.i.i
  br i1 %cmp.i.not.14335.i.i, label %for.end51.i.i, label %if.end41.15.i.i

for.inc49.14.i.i:                                 ; preds = %if.end41.14.i.i
  %cmp39.15.i.i = icmp eq i64 %indvars.iv258.i.i, 15
  br i1 %cmp39.15.i.i, label %if.end41.16.thread.i.i, label %if.end41.15.i.i

if.end41.15.i.i:                                  ; preds = %for.inc49.14.i.i, %if.end41.14.thread.i.i, %for.inc49.13.i.i
  %115 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 120), align 8
  %and45.15.i.i = and i64 %115, %not.i5.i
  %cmp.i.not.15.i.i = icmp eq i64 %and.i6.i, %and45.15.i.i
  br i1 %cmp.i.not.15.i.i, label %for.end51.i.i, label %for.inc49.15.i.i

for.inc49.15.i.i:                                 ; preds = %if.end41.15.i.i
  %cmp39.16.i.i = icmp eq i64 %indvars.iv258.i.i, 16
  br i1 %cmp39.16.i.i, label %if.end41.17.i.i, label %if.end41.16.i.i

if.end41.16.i.i:                                  ; preds = %for.inc49.15.i.i
  %116 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 128), align 8
  %and45.16.i.i = and i64 %116, %not.i5.i
  %cmp.i.not.16.i.i = icmp eq i64 %and.i6.i, %and45.16.i.i
  br i1 %cmp.i.not.16.i.i, label %for.end51.i.i, label %for.inc49.16.i.i

if.end41.16.thread.i.i:                           ; preds = %for.inc49.14.i.i
  %117 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 128), align 8
  %and45.16340.i.i = and i64 %117, %not.i5.i
  %cmp.i.not.16341.i.i = icmp eq i64 %and.i6.i, %and45.16340.i.i
  br i1 %cmp.i.not.16341.i.i, label %for.end51.i.i, label %if.end41.17.i.i

for.inc49.16.i.i:                                 ; preds = %if.end41.16.i.i
  %cmp39.17.i.i = icmp eq i64 %indvars.iv258.i.i, 17
  br i1 %cmp39.17.i.i, label %if.end41.18.thread.i.i, label %if.end41.17.i.i

if.end41.17.i.i:                                  ; preds = %for.inc49.16.i.i, %if.end41.16.thread.i.i, %for.inc49.15.i.i
  %118 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 136), align 8
  %and45.17.i.i = and i64 %118, %not.i5.i
  %cmp.i.not.17.i.i = icmp eq i64 %and.i6.i, %and45.17.i.i
  br i1 %cmp.i.not.17.i.i, label %for.end51.i.i, label %for.inc49.17.i.i

for.inc49.17.i.i:                                 ; preds = %if.end41.17.i.i
  %cmp39.18.i.i = icmp eq i64 %indvars.iv258.i.i, 18
  br i1 %cmp39.18.i.i, label %if.end41.19.i.i, label %if.end41.18.i.i

if.end41.18.i.i:                                  ; preds = %for.inc49.17.i.i
  %119 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 144), align 8
  %and45.18.i.i = and i64 %119, %not.i5.i
  %cmp.i.not.18.i.i = icmp eq i64 %and.i6.i, %and45.18.i.i
  br i1 %cmp.i.not.18.i.i, label %for.end51.i.i, label %for.inc49.18.i.i

if.end41.18.thread.i.i:                           ; preds = %for.inc49.16.i.i
  %120 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 144), align 8
  %and45.18346.i.i = and i64 %120, %not.i5.i
  %cmp.i.not.18347.i.i = icmp eq i64 %and.i6.i, %and45.18346.i.i
  br i1 %cmp.i.not.18347.i.i, label %for.end51.i.i, label %if.end41.19.i.i

for.inc49.18.i.i:                                 ; preds = %if.end41.18.i.i
  %cmp39.19.i.i = icmp eq i64 %indvars.iv258.i.i, 19
  br i1 %cmp39.19.i.i, label %if.end41.20.thread.i.i, label %if.end41.19.i.i

if.end41.19.i.i:                                  ; preds = %for.inc49.18.i.i, %if.end41.18.thread.i.i, %for.inc49.17.i.i
  %121 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 152), align 8
  %and45.19.i.i = and i64 %121, %not.i5.i
  %cmp.i.not.19.i.i = icmp eq i64 %and.i6.i, %and45.19.i.i
  br i1 %cmp.i.not.19.i.i, label %for.end51.i.i, label %for.inc49.19.i.i

for.inc49.19.i.i:                                 ; preds = %if.end41.19.i.i
  %cmp39.20.i.i = icmp eq i64 %indvars.iv258.i.i, 20
  br i1 %cmp39.20.i.i, label %if.end41.21.i.i, label %if.end41.20.i.i

if.end41.20.i.i:                                  ; preds = %for.inc49.19.i.i
  %122 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 160), align 8
  %and45.20.i.i = and i64 %122, %not.i5.i
  %cmp.i.not.20.i.i = icmp eq i64 %and.i6.i, %and45.20.i.i
  br i1 %cmp.i.not.20.i.i, label %for.end51.i.i, label %for.inc49.20.i.i

if.end41.20.thread.i.i:                           ; preds = %for.inc49.18.i.i
  %123 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 160), align 8
  %and45.20352.i.i = and i64 %123, %not.i5.i
  %cmp.i.not.20353.i.i = icmp eq i64 %and.i6.i, %and45.20352.i.i
  br i1 %cmp.i.not.20353.i.i, label %for.end51.i.i, label %if.end41.21.i.i

for.inc49.20.i.i:                                 ; preds = %if.end41.20.i.i
  %cmp39.21.i.i = icmp eq i64 %indvars.iv258.i.i, 21
  br i1 %cmp39.21.i.i, label %if.end41.22.thread.i.i, label %if.end41.21.i.i

if.end41.21.i.i:                                  ; preds = %for.inc49.20.i.i, %if.end41.20.thread.i.i, %for.inc49.19.i.i
  %124 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 168), align 8
  %and45.21.i.i = and i64 %124, %not.i5.i
  %cmp.i.not.21.i.i = icmp eq i64 %and.i6.i, %and45.21.i.i
  br i1 %cmp.i.not.21.i.i, label %for.end51.i.i, label %for.inc49.21.i.i

for.inc49.21.i.i:                                 ; preds = %if.end41.21.i.i
  %cmp39.22.i.i = icmp eq i64 %indvars.iv258.i.i, 22
  br i1 %cmp39.22.i.i, label %if.end41.23.i.i, label %if.end41.22.i.i

if.end41.22.i.i:                                  ; preds = %for.inc49.21.i.i
  %125 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 176), align 8
  %and45.22.i.i = and i64 %125, %not.i5.i
  %cmp.i.not.22.i.i = icmp eq i64 %and.i6.i, %and45.22.i.i
  br i1 %cmp.i.not.22.i.i, label %for.end51.i.i, label %for.inc49.22.i.i

if.end41.22.thread.i.i:                           ; preds = %for.inc49.20.i.i
  %126 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 176), align 8
  %and45.22358.i.i = and i64 %126, %not.i5.i
  %cmp.i.not.22359.i.i = icmp eq i64 %and.i6.i, %and45.22358.i.i
  br i1 %cmp.i.not.22359.i.i, label %for.end51.i.i, label %if.end41.23.i.i

for.inc49.22.i.i:                                 ; preds = %if.end41.22.i.i
  %cmp39.23.i.i = icmp eq i64 %indvars.iv258.i.i, 23
  br i1 %cmp39.23.i.i, label %if.end41.24.thread.i.i, label %if.end41.23.i.i

if.end41.23.i.i:                                  ; preds = %for.inc49.22.i.i, %if.end41.22.thread.i.i, %for.inc49.21.i.i
  %127 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 184), align 8
  %and45.23.i.i = and i64 %127, %not.i5.i
  %cmp.i.not.23.i.i = icmp eq i64 %and.i6.i, %and45.23.i.i
  br i1 %cmp.i.not.23.i.i, label %for.end51.i.i, label %for.inc49.23.i.i

for.inc49.23.i.i:                                 ; preds = %if.end41.23.i.i
  %cmp39.24.i.i = icmp eq i64 %indvars.iv258.i.i, 24
  br i1 %cmp39.24.i.i, label %if.end41.25.i.i, label %if.end41.24.i.i

if.end41.24.i.i:                                  ; preds = %for.inc49.23.i.i
  %128 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 192), align 8
  %and45.24.i.i = and i64 %128, %not.i5.i
  %cmp.i.not.24.i.i = icmp eq i64 %and.i6.i, %and45.24.i.i
  br i1 %cmp.i.not.24.i.i, label %for.end51.i.i, label %for.inc49.24.i.i

if.end41.24.thread.i.i:                           ; preds = %for.inc49.22.i.i
  %129 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 192), align 8
  %and45.24364.i.i = and i64 %129, %not.i5.i
  %cmp.i.not.24365.i.i = icmp eq i64 %and.i6.i, %and45.24364.i.i
  br i1 %cmp.i.not.24365.i.i, label %for.end51.i.i, label %if.end41.25.i.i

for.inc49.24.i.i:                                 ; preds = %if.end41.24.i.i
  %cmp39.25.i.i = icmp eq i64 %indvars.iv258.i.i, 25
  br i1 %cmp39.25.i.i, label %if.end41.26.i.i, label %if.end41.25.i.i

if.end41.25.i.i:                                  ; preds = %for.inc49.24.i.i, %if.end41.24.thread.i.i, %for.inc49.23.i.i
  %130 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 200), align 8
  %and45.25.i.i = and i64 %130, %not.i5.i
  %cmp.i.not.25.i.i = icmp eq i64 %and.i6.i, %and45.25.i.i
  br i1 %cmp.i.not.25.i.i, label %for.end51.i.i, label %for.inc49.25.i.i

for.inc49.25.i.i:                                 ; preds = %if.end41.25.i.i
  %cmp39.26.i.i = icmp eq i64 %indvars.iv258.i.i, 26
  br i1 %cmp39.26.i.i, label %for.inc49.26.i.i, label %if.end41.26.i.i

if.end41.26.i.i:                                  ; preds = %for.inc49.25.i.i, %for.inc49.24.i.i
  %131 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 208), align 8
  %and45.26.i.i = and i64 %131, %not.i5.i
  %cmp.i.not.26.i.i = icmp eq i64 %and.i6.i, %and45.26.i.i
  br i1 %cmp.i.not.26.i.i, label %for.end51.i.i, label %for.inc49.26.i.i

for.inc49.26.i.i:                                 ; preds = %if.end41.26.i.i, %for.inc49.25.i.i
  br label %for.end51.i.i

for.end51.i.i:                                    ; preds = %for.inc49.26.i.i, %if.end41.26.i.i, %if.end41.25.i.i, %if.end41.24.thread.i.i, %if.end41.24.i.i, %if.end41.23.i.i, %if.end41.22.thread.i.i, %if.end41.22.i.i, %if.end41.21.i.i, %if.end41.20.thread.i.i, %if.end41.20.i.i, %if.end41.19.i.i, %if.end41.18.thread.i.i, %if.end41.18.i.i, %if.end41.17.i.i, %if.end41.16.thread.i.i, %if.end41.16.i.i, %if.end41.15.i.i, %if.end41.14.thread.i.i, %if.end41.14.i.i, %if.end41.13.i.i, %if.end41.12.thread.i.i, %if.end41.12.i.i, %if.end41.11.i.i, %if.end41.10.thread.i.i, %if.end41.10.i.i, %if.end41.9.i.i, %if.end41.8.thread.i.i, %if.end41.8.i.i, %if.end41.7.i.i, %if.end41.6.thread.i.i, %if.end41.6.i.i, %if.end41.5.i.i, %if.end41.4.thread.i.i, %if.end41.4.i.i, %if.end41.3.i.i, %if.end41.2.thread.i.i, %if.end41.2.i.i, %if.end41.1.i.i, %if.end41.i.i
  %j.1.lcssa.i.i = phi i64 [ 0, %if.end41.i.i ], [ 1, %if.end41.1.i.i ], [ 2, %if.end41.2.i.i ], [ 3, %if.end41.3.i.i ], [ 4, %if.end41.4.i.i ], [ 5, %if.end41.5.i.i ], [ 6, %if.end41.6.i.i ], [ 7, %if.end41.7.i.i ], [ 8, %if.end41.8.i.i ], [ 9, %if.end41.9.i.i ], [ 10, %if.end41.10.i.i ], [ 11, %if.end41.11.i.i ], [ 12, %if.end41.12.i.i ], [ 13, %if.end41.13.i.i ], [ 14, %if.end41.14.i.i ], [ 15, %if.end41.15.i.i ], [ 16, %if.end41.16.i.i ], [ 17, %if.end41.17.i.i ], [ 18, %if.end41.18.i.i ], [ 19, %if.end41.19.i.i ], [ 20, %if.end41.20.i.i ], [ 21, %if.end41.21.i.i ], [ 22, %if.end41.22.i.i ], [ 23, %if.end41.23.i.i ], [ 24, %if.end41.24.i.i ], [ 25, %if.end41.25.i.i ], [ 26, %if.end41.26.i.i ], [ 27, %for.inc49.26.i.i ], [ 2, %if.end41.2.thread.i.i ], [ 4, %if.end41.4.thread.i.i ], [ 6, %if.end41.6.thread.i.i ], [ 8, %if.end41.8.thread.i.i ], [ 10, %if.end41.10.thread.i.i ], [ 12, %if.end41.12.thread.i.i ], [ 14, %if.end41.14.thread.i.i ], [ 16, %if.end41.16.thread.i.i ], [ 18, %if.end41.18.thread.i.i ], [ 20, %if.end41.20.thread.i.i ], [ 22, %if.end41.22.thread.i.i ], [ 24, %if.end41.24.thread.i.i ]
  %cmp52.not.i.i = icmp samesign ult i64 %j.1.lcssa.i.i, %indvars.iv258.i.i
  br i1 %cmp52.not.i.i, label %for.inc58.i.i, label %for.inc58.sink.split.i.i

for.inc58.sink.split.i.i:                         ; preds = %for.end51.i.i, %for.body20.i.i, %for.cond18.31.i.i, %for.cond18.30.i.i, %for.cond18.29.i.i, %for.cond18.28.i.i, %for.cond18.27.i.i, %for.cond18.26.i.i, %for.cond18.25.i.i, %for.cond18.24.i.i, %for.cond18.23.i.i, %for.cond18.22.i.i, %for.cond18.21.i.i, %for.cond18.20.i.i, %for.cond18.19.i.i, %for.cond18.18.i.i, %for.cond18.17.i.i, %for.cond18.16.i.i, %for.cond18.15.i.i, %for.cond18.14.i.i, %for.cond18.13.i.i, %for.cond18.12.i.i, %for.cond18.11.i.i, %for.cond18.10.i.i, %for.cond18.9.i.i, %for.cond18.8.i.i, %for.cond18.7.i.i, %for.cond18.6.i.i, %for.cond18.5.i.i, %for.cond18.4.i.i, %for.cond18.3.i.i, %for.cond18.2.i.i, %for.cond18.1.i.i, %for.cond18.i.i
  %inc54.i.i = add nsw i32 %n.0231.i.i, 1
  %idxprom55.i.i = sext i32 %n.0231.i.i to i64
  %arrayidx56.i.i = getelementptr inbounds i32, ptr @setup_cover_and_important_classes.classes, i64 %idxprom55.i.i
  %132 = trunc nuw nsw i64 %indvars.iv258.i.i to i32
  store i32 %132, ptr %arrayidx56.i.i, align 4
  br label %for.inc58.i.i

for.inc58.i.i:                                    ; preds = %for.inc58.sink.split.i.i, %for.end51.i.i, %for.body14.i.i
  %n.1.i.i33 = phi i32 [ %n.0231.i.i, %for.body14.i.i ], [ %n.0231.i.i, %for.end51.i.i ], [ %inc54.i.i, %for.inc58.sink.split.i.i ]
  %indvars.iv.next259.i.i = add nuw nsw i64 %indvars.iv258.i.i, 1
  %exitcond.not.i8.i34 = icmp eq i64 %indvars.iv.next259.i.i, 28
  br i1 %exitcond.not.i8.i34, label %for.end60.i.i, label %for.body14.i.i, !llvm.loop !17

for.end60.i.i:                                    ; preds = %for.inc58.i.i
  %n.1.i.i33.lcssa = phi i32 [ %n.1.i.i33, %for.inc58.i.i ]
  %idxprom61.i.i = sext i32 %n.1.i.i33.lcssa to i64
  %arrayidx62.i.i = getelementptr inbounds i32, ptr @setup_cover_and_important_classes.classes, i64 %idxprom61.i.i
  store i32 27, ptr %arrayidx62.i.i, align 4
  br label %if.end63.i.i

if.end63.i.i:                                     ; preds = %for.end60.i.i, %if.end9.i.i
  store i32 0, ptr @ira_reg_class_cover_size, align 4
  %133 = load i32, ptr @setup_cover_and_important_classes.classes, align 4
  %cmp67.not234.i.i = icmp eq i32 %133, 27
  br i1 %cmp67.not234.i.i, label %for.end95.i.thread.i, label %for.cond69.preheader.i.i.preheader

for.cond69.preheader.i.i.preheader:               ; preds = %if.end63.i.i
  br label %for.cond69.preheader.i.i

for.end95.i.thread.i:                             ; preds = %if.end63.i.i
  store i32 0, ptr @ira_important_classes_num, align 4
  %134 = load i64, ptr @no_unit_alloc_regs, align 8
  %not101.i50.i = xor i64 %134, -1
  br label %setup_cover_and_important_classes.exit.thread.i

for.cond69.preheader.i.i:                         ; preds = %for.inc93.i.i, %for.cond69.preheader.i.i.preheader
  %indvars.iv265.i.i = phi i64 [ %indvars.iv.next266.i.i, %for.inc93.i.i ], [ 0, %for.cond69.preheader.i.i.preheader ]
  %135 = phi i32 [ %143, %for.inc93.i.i ], [ %133, %for.cond69.preheader.i.i.preheader ]
  %cmp70232.not.i.i = icmp eq i64 %indvars.iv265.i.i, 0
  %136 = load i32, ptr @flag_ira_algorithm, align 4
  %137 = icmp eq i32 %136, 1
  %or.cond.i.i = select i1 %cmp70232.not.i.i, i1 true, i1 %137
  br i1 %or.cond.i.i, label %for.end81.i.i, label %for.body71.i.i.preheader

for.body71.i.i.preheader:                         ; preds = %for.cond69.preheader.i.i
  br label %for.body71.i.i

for.body71thread-pre-split.i.i:                   ; preds = %for.inc79.i.i
  %.pr.i.i = load i32, ptr @flag_ira_algorithm, align 4
  br label %for.body71.i.i

for.body71.i.i:                                   ; preds = %for.body71thread-pre-split.i.i, %for.body71.i.i.preheader
  %138 = phi i32 [ %.pr.i.i, %for.body71thread-pre-split.i.i ], [ %136, %for.body71.i.i.preheader ]
  %indvars.iv261.i.i = phi i64 [ %indvars.iv.next262.i.i, %for.body71thread-pre-split.i.i ], [ 0, %for.body71.i.i.preheader ]
  %cmp72.not.i.i = icmp eq i32 %138, 1
  br i1 %cmp72.not.i.i, label %for.inc79.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.body71.i.i
  %arrayidx74.i.i = getelementptr inbounds nuw i32, ptr @setup_cover_and_important_classes.classes, i64 %indvars.iv261.i.i
  %139 = load i32, ptr %arrayidx74.i.i, align 4
  %call75.i.i = tail call i32 @reg_classes_intersect_p(i32 noundef %135, i32 noundef %139) #8
  %tobool76.not.i.i = icmp eq i32 %call75.i.i, 0
  br i1 %tobool76.not.i.i, label %for.inc79.i.i, label %if.then77.i.i

if.then77.i.i:                                    ; preds = %land.lhs.true.i.i
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 792, ptr noundef nonnull @.str.41) #8
  br label %for.inc79.i.i

for.inc79.i.i:                                    ; preds = %if.then77.i.i, %land.lhs.true.i.i, %for.body71.i.i
  %indvars.iv.next262.i.i = add nuw nsw i64 %indvars.iv261.i.i, 1
  %exitcond264.not.i.i = icmp eq i64 %indvars.iv.next262.i.i, %indvars.iv265.i.i
  br i1 %exitcond264.not.i.i, label %for.end81.i.i.loopexit, label %for.body71thread-pre-split.i.i, !llvm.loop !18

for.end81.i.i.loopexit:                           ; preds = %for.inc79.i.i
  br label %for.end81.i.i

for.end81.i.i:                                    ; preds = %for.end81.i.i.loopexit, %for.cond69.preheader.i.i
  %idxprom82.i.i = sext i32 %135 to i64
  %arrayidx83.i.i = getelementptr inbounds i64, ptr @reg_class_contents, i64 %idxprom82.i.i
  %140 = load i64, ptr %arrayidx83.i.i, align 8
  %141 = load i64, ptr @no_unit_alloc_regs, align 8
  %not84.i.i = xor i64 %141, -1
  %and85.i.i = and i64 %140, %not84.i.i
  store i64 %and85.i.i, ptr @temp_hard_regset, align 8
  %cmp.i212.not.i.i = icmp eq i64 %and85.i.i, 0
  br i1 %cmp.i212.not.i.i, label %for.inc93.i.i, label %if.then88.i.i

if.then88.i.i:                                    ; preds = %for.end81.i.i
  %142 = load i32, ptr @ira_reg_class_cover_size, align 4
  %inc89.i.i = add nsw i32 %142, 1
  store i32 %inc89.i.i, ptr @ira_reg_class_cover_size, align 4
  %idxprom90.i.i = sext i32 %142 to i64
  %arrayidx91.i.i = getelementptr inbounds i32, ptr @ira_reg_class_cover, i64 %idxprom90.i.i
  store i32 %135, ptr %arrayidx91.i.i, align 4
  br label %for.inc93.i.i

for.inc93.i.i:                                    ; preds = %if.then88.i.i, %for.end81.i.i
  %indvars.iv.next266.i.i = add nuw nsw i64 %indvars.iv265.i.i, 1
  %arrayidx66.i.i = getelementptr inbounds nuw i32, ptr @setup_cover_and_important_classes.classes, i64 %indvars.iv.next266.i.i
  %143 = load i32, ptr %arrayidx66.i.i, align 4
  %cmp67.not.i.i = icmp eq i32 %143, 27
  br i1 %cmp67.not.i.i, label %for.end95.i.i, label %for.cond69.preheader.i.i, !llvm.loop !20

for.end95.i.i:                                    ; preds = %for.inc93.i.i
  %not84.i.i.lcssa = phi i64 [ %not84.i.i, %for.inc93.i.i ]
  %.pr.i = load i32, ptr @ira_reg_class_cover_size, align 4
  %.fr.i.i = freeze i32 %.pr.i
  store i32 0, ptr @ira_important_classes_num, align 4
  %cmp107237.i.i = icmp sgt i32 %.fr.i.i, 0
  br i1 %cmp107237.i.i, label %for.body98.us.preheader.i.i, label %setup_cover_and_important_classes.exit.thread.i

for.body98.us.preheader.i.i:                      ; preds = %for.end95.i.i
  %wide.trip.count.i.i = zext nneg i32 %.fr.i.i to i64
  br label %for.body98.us.i.i

for.body98.us.i.i:                                ; preds = %for.inc145.us.i.i, %for.body98.us.preheader.i.i
  %indvars.iv275.i.i = phi i64 [ 0, %for.body98.us.preheader.i.i ], [ %indvars.iv.next276.i.i, %for.inc145.us.i.i ]
  %inc140243244.us.i.i = phi i32 [ 0, %for.body98.us.preheader.i.i ], [ %inc140242.us.i.i, %for.inc145.us.i.i ]
  %arrayidx100.us.i.i = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %indvars.iv275.i.i
  %144 = load i64, ptr %arrayidx100.us.i.i, align 8
  %and102.us.i.i = and i64 %144, %not84.i.i.lcssa
  %cmp.i214.not.us.i.i = icmp eq i64 %and102.us.i.i, 0
  br i1 %cmp.i214.not.us.i.i, label %for.inc145.us.i.i, label %for.body108.us.i.i.preheader

for.body108.us.i.i.preheader:                     ; preds = %for.body98.us.i.i
  br label %for.body108.us.i.i

if.then139.us.i.i:                                ; preds = %for.cond106.for.end133_crit_edge.us.i.i
  %inc140.us.i.i = add nsw i32 %inc140243244.us.i.i, 1
  store i32 %inc140.us.i.i, ptr @ira_important_classes_num, align 4
  %idxprom141.us.i.i = sext i32 %inc140243244.us.i.i to i64
  %arrayidx142.us.i.i = getelementptr inbounds i32, ptr @ira_important_classes, i64 %idxprom141.us.i.i
  %145 = trunc nuw nsw i64 %indvars.iv275.i.i to i32
  store i32 %145, ptr %arrayidx142.us.i.i, align 4
  br label %for.inc145.us.i.i

for.body108.us.i.i:                               ; preds = %if.else125.us.i.i, %for.body108.us.i.i.preheader
  %indvars.iv272.i.i = phi i64 [ %indvars.iv.next273.i.i, %if.else125.us.i.i ], [ 0, %for.body108.us.i.i.preheader ]
  %set_p.0239.us.i.i = phi i8 [ %spec.select.us.i.i, %if.else125.us.i.i ], [ 0, %for.body108.us.i.i.preheader ]
  %arrayidx114.us.i.i = getelementptr inbounds nuw i32, ptr @ira_reg_class_cover, i64 %indvars.iv272.i.i
  %146 = load i32, ptr %arrayidx114.us.i.i, align 4
  %idxprom115.us.i.i = zext i32 %146 to i64
  %arrayidx116.us.i.i = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %idxprom115.us.i.i
  %147 = load i64, ptr %arrayidx116.us.i.i, align 8
  %and118.us.i.i = and i64 %147, %not84.i.i.lcssa
  %cmp121.us.i.i = icmp eq i64 %indvars.iv275.i.i, %idxprom115.us.i.i
  %cmp.i216.not.us.i.i = icmp eq i64 %and102.us.i.i, %and118.us.i.i
  %or.cond.us.i.i = select i1 %cmp121.us.i.i, i1 true, i1 %cmp.i216.not.us.i.i
  br i1 %or.cond.us.i.i, label %for.inc145.us.i.i.loopexit, label %if.else125.us.i.i

if.else125.us.i.i:                                ; preds = %for.body108.us.i.i
  %not.i.us.i.i = xor i64 %and118.us.i.i, -1
  %and.i.us.i.i = and i64 %and102.us.i.i, %not.i.us.i.i
  %cmp.i218.not.us.i.i = icmp eq i64 %and.i.us.i.i, 0
  %spec.select.us.i.i = select i1 %cmp.i218.not.us.i.i, i8 1, i8 %set_p.0239.us.i.i
  %indvars.iv.next273.i.i = add nuw nsw i64 %indvars.iv272.i.i, 1
  %exitcond274.not.i.i = icmp eq i64 %indvars.iv.next273.i.i, %wide.trip.count.i.i
  br i1 %exitcond274.not.i.i, label %for.cond106.for.end133_crit_edge.us.i.i, label %for.body108.us.i.i, !llvm.loop !21

for.inc145.us.i.i.loopexit:                       ; preds = %for.body108.us.i.i
  br label %for.inc145.us.i.i

for.inc145.us.i.i:                                ; preds = %for.cond106.for.end133_crit_edge.us.i.i, %for.inc145.us.i.i.loopexit, %if.then139.us.i.i, %for.body98.us.i.i
  %inc140242.us.i.i = phi i32 [ %inc140243244.us.i.i, %for.body98.us.i.i ], [ %inc140.us.i.i, %if.then139.us.i.i ], [ %inc140243244.us.i.i, %for.cond106.for.end133_crit_edge.us.i.i ], [ %inc140243244.us.i.i, %for.inc145.us.i.i.loopexit ]
  %indvars.iv.next276.i.i = add nuw nsw i64 %indvars.iv275.i.i, 1
  %exitcond278.not.i.i = icmp eq i64 %indvars.iv.next276.i.i, 27
  br i1 %exitcond278.not.i.i, label %setup_cover_and_important_classes.exit.i, label %for.body98.us.i.i, !llvm.loop !22

for.cond106.for.end133_crit_edge.us.i.i:          ; preds = %if.else125.us.i.i
  %spec.select.us.i.i.lcssa = phi i8 [ %spec.select.us.i.i, %if.else125.us.i.i ]
  %tobool135.not.us.i.i = icmp eq i8 %spec.select.us.i.i.lcssa, 0
  br i1 %tobool135.not.us.i.i, label %for.inc145.us.i.i, label %if.then139.us.i.i

setup_cover_and_important_classes.exit.i:         ; preds = %for.inc145.us.i.i
  %and102.us.i.i.lcssa = phi i64 [ %and102.us.i.i, %for.inc145.us.i.i ]
  store i64 %and102.us.i.i.lcssa, ptr @temp_hard_regset, align 8
  %ira_important_classes_num.promoted246.i.i = load i32, ptr @ira_important_classes_num, align 1
  %148 = sext i32 %ira_important_classes_num.promoted246.i.i to i64
  %149 = shl nsw i64 %148, 2
  %scevgep.i.i = getelementptr i8, ptr @ira_important_classes, i64 %149
  %150 = shl nuw nsw i64 %wide.trip.count.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i.i, ptr nonnull align 16 @ira_reg_class_cover, i64 %150, i1 false)
  %151 = add i32 %ira_important_classes_num.promoted246.i.i, %.fr.i.i
  store i32 %151, ptr @ira_important_classes_num, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @ira_class_translate, i8 0, i64 108, i1 false)
  %152 = load i32, ptr @flag_ira_algorithm, align 4
  %cmp1.i10.i = icmp eq i32 %152, 1
  br i1 %cmp1.i10.i, label %for.body4.us.i.i.preheader, label %for.body28.i.i.preheader

for.body28.i.i.preheader:                         ; preds = %setup_cover_and_important_classes.exit.i
  br label %for.body28.i.i

for.body4.us.i.i.preheader:                       ; preds = %setup_cover_and_important_classes.exit.i
  br label %for.body4.us.i.i

setup_cover_and_important_classes.exit.thread.i:  ; preds = %for.end95.i.i, %for.end95.i.thread.i
  %not101.i53.i = phi i64 [ %not101.i50.i, %for.end95.i.thread.i ], [ %not84.i.i.lcssa, %for.end95.i.i ]
  %153 = load i64, ptr getelementptr inbounds nuw (i8, ptr @reg_class_contents, i64 208), align 8
  %and102.26.i.i = and i64 %153, %not101.i53.i
  store i64 %and102.26.i.i, ptr @temp_hard_regset, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @ira_class_translate, i8 0, i64 108, i1 false)
  %154 = load i32, ptr @flag_ira_algorithm, align 4
  %cmp1.i1048.i = icmp eq i32 %154, 1
  br i1 %cmp1.i1048.i, label %setup_class_translate.exit.thread.i, label %for.end10.i.sink.split.i

for.body4.us.i.i:                                 ; preds = %for.cond7.for.inc22_crit_edge.us.i.i, %for.body4.us.i.i.preheader
  %indvars.iv182.i.i = phi i64 [ %indvars.iv.next183.i.i, %for.cond7.for.inc22_crit_edge.us.i.i ], [ 0, %for.body4.us.i.i.preheader ]
  %arrayidx6.us.i.i = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %indvars.iv182.i.i
  %155 = load i64, ptr %arrayidx6.us.i.i, align 8
  %and.us.i.i = and i64 %155, %not84.i.i.lcssa
  %arrayidx18.us.i.i = getelementptr inbounds nuw i32, ptr @ira_class_translate, i64 %indvars.iv182.i.i
  br label %for.body9.us.i.i

for.body9.us.i.i:                                 ; preds = %if.end.us.i.i, %for.body4.us.i.i
  %indvars.iv.i16.i = phi i64 [ 0, %for.body4.us.i.i ], [ %indvars.iv.next.i17.i, %if.end.us.i.i ]
  %arrayidx11.us.i.i = getelementptr inbounds nuw i32, ptr @ira_reg_class_cover, i64 %indvars.iv.i16.i
  %156 = load i32, ptr %arrayidx11.us.i.i, align 4
  %idxprom12.us.i.i = zext i32 %156 to i64
  %arrayidx13.us.i.i = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %idxprom12.us.i.i
  %157 = load i64, ptr %arrayidx13.us.i.i, align 8
  %and15.us.i.i = and i64 %157, %not84.i.i.lcssa
  %cmp.i.not.us.i.i = icmp eq i64 %and.us.i.i, %and15.us.i.i
  br i1 %cmp.i.not.us.i.i, label %if.then16.us.i.i, label %if.end.us.i.i

if.then16.us.i.i:                                 ; preds = %for.body9.us.i.i
  store i32 %156, ptr %arrayidx18.us.i.i, align 4
  br label %if.end.us.i.i

if.end.us.i.i:                                    ; preds = %if.then16.us.i.i, %for.body9.us.i.i
  %indvars.iv.next.i17.i = add nuw nsw i64 %indvars.iv.i16.i, 1
  %exitcond.not.i18.i = icmp eq i64 %indvars.iv.next.i17.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i18.i, label %for.cond7.for.inc22_crit_edge.us.i.i, label %for.body9.us.i.i, !llvm.loop !23

for.cond7.for.inc22_crit_edge.us.i.i:             ; preds = %if.end.us.i.i
  %indvars.iv.next183.i.i = add nuw nsw i64 %indvars.iv182.i.i, 1
  %exitcond185.not.i.i = icmp eq i64 %indvars.iv.next183.i.i, 27
  br i1 %exitcond185.not.i.i, label %for.body28.us.preheader.i.i, label %for.body4.us.i.i, !llvm.loop !24

setup_class_translate.exit.thread.i:              ; preds = %setup_cover_and_important_classes.exit.thread.i
  store i64 %and102.26.i.i, ptr @temp_hard_regset, align 8
  br label %for.end10.i.sink.split.i

for.body28.us.preheader.i.i:                      ; preds = %for.cond7.for.inc22_crit_edge.us.i.i
  %and.us.i.i.lcssa = phi i64 [ %and.us.i.i, %for.cond7.for.inc22_crit_edge.us.i.i ]
  store i64 %and.us.i.i.lcssa, ptr @temp_hard_regset, align 8
  br label %for.body28.us.i.i

for.body28.us.i.i:                                ; preds = %for.body28.us.i.i, %for.body28.us.preheader.i.i
  %indvars.iv191.i.i = phi i64 [ 0, %for.body28.us.preheader.i.i ], [ %indvars.iv.next192.i.i, %for.body28.us.i.i ]
  %arrayidx30.us.i.i = getelementptr inbounds nuw i32, ptr @ira_reg_class_cover, i64 %indvars.iv191.i.i
  %158 = load i32, ptr %arrayidx30.us.i.i, align 4
  %idxprom49.us.i.i = zext i32 %158 to i64
  %arrayidx50.us.i.i = getelementptr inbounds nuw i32, ptr @ira_class_translate, i64 %idxprom49.us.i.i
  store i32 %158, ptr %arrayidx50.us.i.i, align 4
  %indvars.iv.next192.i.i = add nuw nsw i64 %indvars.iv191.i.i, 1
  %exitcond195.not.i.i = icmp eq i64 %indvars.iv.next192.i.i, %wide.trip.count.i.i
  br i1 %exitcond195.not.i.i, label %for.body56.us.preheader.i.i.loopexit, label %for.body28.us.i.i, !llvm.loop !25

for.body56.us.preheader.i.i.loopexit:             ; preds = %for.body28.us.i.i
  br label %for.body56.us.preheader.i.i

for.body56.us.preheader.i.i.loopexit71:           ; preds = %if.end48.loopexit.i.i
  br label %for.body56.us.preheader.i.i

for.body56.us.preheader.i.i:                      ; preds = %for.body56.us.preheader.i.i.loopexit71, %for.body56.us.preheader.i.i.loopexit
  br label %for.body56.us.i.i

for.body56.us.i.i:                                ; preds = %for.inc112.us.i.i, %for.body56.us.preheader.i.i
  %indvars.iv209.i.i = phi i64 [ 0, %for.body56.us.preheader.i.i ], [ %indvars.iv.next210.i.i, %for.inc112.us.i.i ]
  %cmp57.us.i.i = icmp eq i64 %indvars.iv209.i.i, 0
  br i1 %cmp57.us.i.i, label %for.inc112.us.i.i, label %lor.lhs.false.us.i.i

lor.lhs.false.us.i.i:                             ; preds = %for.body56.us.i.i
  %arrayidx59.us.i.i = getelementptr inbounds nuw i32, ptr @ira_class_translate, i64 %indvars.iv209.i.i
  %159 = load i32, ptr %arrayidx59.us.i.i, align 4
  %cmp60.not.us.i.i = icmp eq i32 %159, 0
  br i1 %cmp60.not.us.i.i, label %for.cond63.preheader.us.i.i, label %for.inc112.us.i.i

for.body65.us.i.i:                                ; preds = %for.cond63.preheader.us.i.i, %for.inc107.us.i.i
  %indvars.iv204.i.i = phi i64 [ 0, %for.cond63.preheader.us.i.i ], [ %indvars.iv.next205.i.i, %for.inc107.us.i.i ]
  %best_cost.0175.us.i.i = phi i32 [ 2147483647, %for.cond63.preheader.us.i.i ], [ %best_cost.1.us.i.i, %for.inc107.us.i.i ]
  %best_class.0173.us.i.i = phi i32 [ 0, %for.cond63.preheader.us.i.i ], [ %best_class.1.us.i.i, %for.inc107.us.i.i ]
  %arrayidx67.us.i.i = getelementptr inbounds nuw i32, ptr @ira_reg_class_cover, i64 %indvars.iv204.i.i
  %160 = load i32, ptr %arrayidx67.us.i.i, align 4
  %idxprom68.us.i.i = zext i32 %160 to i64
  %arrayidx69.us.i.i = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %idxprom68.us.i.i
  %161 = load i64, ptr %arrayidx69.us.i.i, align 8
  %162 = and i64 %165, %161
  %and74.us.reass.i.i = and i64 %162, %not84.i.i.lcssa
  %cmp.i157.not.us.i.i = icmp eq i64 %and74.us.reass.i.i, 0
  br i1 %cmp.i157.not.us.i.i, label %for.inc107.us.i.i, label %for.body80.us.i.i.preheader

for.body80.us.i.i.preheader:                      ; preds = %for.body65.us.i.i
  br label %for.body80.us.i.i

for.end98.us.i.i:                                 ; preds = %for.body80.us.i.i
  %spec.select.us.i12.i.lcssa = phi i32 [ %spec.select.us.i12.i, %for.body80.us.i.i ]
  %cmp99.us.i.i = icmp eq i32 %best_class.0173.us.i.i, 0
  %cmp102.us.i.i = icmp sgt i32 %best_cost.0175.us.i.i, %spec.select.us.i12.i.lcssa
  %or.cond.us.i13.i = select i1 %cmp99.us.i.i, i1 true, i1 %cmp102.us.i.i
  %spec.select155.us.i.i = select i1 %or.cond.us.i13.i, i32 %160, i32 %best_class.0173.us.i.i
  %spec.select156.us.i.i = select i1 %or.cond.us.i13.i, i32 %spec.select.us.i12.i.lcssa, i32 %best_cost.0175.us.i.i
  br label %for.inc107.us.i.i

for.body80.us.i.i:                                ; preds = %for.body80.us.i.i, %for.body80.us.i.i.preheader
  %indvars.iv200.i.i = phi i64 [ %indvars.iv.next201.i.i, %for.body80.us.i.i ], [ 0, %for.body80.us.i.i.preheader ]
  %min_cost.0171.us.i.i = phi i32 [ %spec.select.us.i12.i, %for.body80.us.i.i ], [ 2147483647, %for.body80.us.i.i.preheader ]
  %gep.us.i.i = getelementptr inbounds nuw [27 x [2 x i16]], ptr %invariant.gep.us.i.i, i64 %indvars.iv200.i.i
  %163 = load i16, ptr %gep.us.i.i, align 4
  %conv.us.i.i = sext i16 %163 to i32
  %arrayidx90.us.i.i = getelementptr inbounds nuw i8, ptr %gep.us.i.i, i64 2
  %164 = load i16, ptr %arrayidx90.us.i.i, align 2
  %conv91.us.i.i = sext i16 %164 to i32
  %add.us.i.i = add nsw i32 %conv91.us.i.i, %conv.us.i.i
  %spec.select.us.i12.i = tail call i32 @llvm.smin.i32(i32 %min_cost.0171.us.i.i, i32 %add.us.i.i)
  %indvars.iv.next201.i.i = add nuw nsw i64 %indvars.iv200.i.i, 1
  %exitcond203.not.i.i = icmp eq i64 %indvars.iv.next201.i.i, 87
  br i1 %exitcond203.not.i.i, label %for.end98.us.i.i, label %for.body80.us.i.i, !llvm.loop !26

for.inc107.us.i.i:                                ; preds = %for.end98.us.i.i, %for.body65.us.i.i
  %best_class.1.us.i.i = phi i32 [ %best_class.0173.us.i.i, %for.body65.us.i.i ], [ %spec.select155.us.i.i, %for.end98.us.i.i ]
  %best_cost.1.us.i.i = phi i32 [ %best_cost.0175.us.i.i, %for.body65.us.i.i ], [ %spec.select156.us.i.i, %for.end98.us.i.i ]
  %indvars.iv.next205.i.i = add nuw nsw i64 %indvars.iv204.i.i, 1
  %exitcond208.not.i.i = icmp eq i64 %indvars.iv.next205.i.i, %wide.trip.count.i.i
  br i1 %exitcond208.not.i.i, label %for.cond63.for.end109_crit_edge.us.i.i, label %for.body65.us.i.i, !llvm.loop !27

for.inc112.us.i.i:                                ; preds = %for.cond63.for.end109_crit_edge.us.i.i, %lor.lhs.false.us.i.i, %for.body56.us.i.i
  %indvars.iv.next210.i.i = add nuw nsw i64 %indvars.iv209.i.i, 1
  %exitcond212.not.i.i = icmp eq i64 %indvars.iv.next210.i.i, 27
  br i1 %exitcond212.not.i.i, label %setup_class_translate.exit.i, label %for.body56.us.i.i, !llvm.loop !28

for.cond63.preheader.us.i.i:                      ; preds = %lor.lhs.false.us.i.i
  %arrayidx71.us.i.i = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %indvars.iv209.i.i
  %165 = load i64, ptr %arrayidx71.us.i.i, align 8
  %invariant.gep.us.i.i = getelementptr inbounds nuw [2 x i16], ptr @ira_memory_move_cost, i64 %indvars.iv209.i.i
  br label %for.body65.us.i.i

for.cond63.for.end109_crit_edge.us.i.i:           ; preds = %for.inc107.us.i.i
  %best_class.1.us.i.i.lcssa = phi i32 [ %best_class.1.us.i.i, %for.inc107.us.i.i ]
  %and74.us.reass.i.i.lcssa = phi i64 [ %and74.us.reass.i.i, %for.inc107.us.i.i ]
  store i64 %and74.us.reass.i.i.lcssa, ptr @temp_hard_regset, align 8
  store i32 %best_class.1.us.i.i.lcssa, ptr %arrayidx59.us.i.i, align 4
  br label %for.inc112.us.i.i

for.body28.i.i:                                   ; preds = %if.end48.loopexit.i.i, %for.body28.i.i.preheader
  %indvars.iv186.i.i = phi i64 [ %indvars.iv.next187.i.i, %if.end48.loopexit.i.i ], [ 0, %for.body28.i.i.preheader ]
  %arrayidx30.i.i = getelementptr inbounds nuw i32, ptr @ira_reg_class_cover, i64 %indvars.iv186.i.i
  %166 = load i32, ptr %arrayidx30.i.i, align 4
  %idxprom33.i.i = zext i32 %166 to i64
  %arrayidx34.i.i = getelementptr inbounds nuw [27 x i32], ptr @alloc_reg_class_subclasses, i64 %idxprom33.i.i
  %167 = load i32, ptr %arrayidx34.i.i, align 4
  %cmp37.not165.i.i = icmp eq i32 %167, 27
  br i1 %cmp37.not165.i.i, label %if.end48.loopexit.i.i, label %for.body38.i.i.preheader

for.body38.i.i.preheader:                         ; preds = %for.body28.i.i
  br label %for.body38.i.i

for.body38.i.i:                                   ; preds = %for.inc46.i.i, %for.body38.i.i.preheader
  %168 = phi i32 [ %170, %for.inc46.i.i ], [ %167, %for.body38.i.i.preheader ]
  %cl_ptr.0166.i.i = phi ptr [ %incdec.ptr.i11.i, %for.inc46.i.i ], [ %arrayidx34.i.i, %for.body38.i.i.preheader ]
  %idxprom39.i.i = sext i32 %168 to i64
  %arrayidx40.i.i = getelementptr inbounds i32, ptr @ira_class_translate, i64 %idxprom39.i.i
  %169 = load i32, ptr %arrayidx40.i.i, align 4
  %cmp41.i.i = icmp eq i32 %169, 0
  br i1 %cmp41.i.i, label %if.then42.i.i, label %for.inc46.i.i

if.then42.i.i:                                    ; preds = %for.body38.i.i
  store i32 %166, ptr %arrayidx40.i.i, align 4
  br label %for.inc46.i.i

for.inc46.i.i:                                    ; preds = %if.then42.i.i, %for.body38.i.i
  %incdec.ptr.i11.i = getelementptr inbounds nuw i8, ptr %cl_ptr.0166.i.i, i64 4
  %170 = load i32, ptr %incdec.ptr.i11.i, align 4
  %cmp37.not.i.i = icmp eq i32 %170, 27
  br i1 %cmp37.not.i.i, label %if.end48.loopexit.i.i.loopexit, label %for.body38.i.i, !llvm.loop !29

if.end48.loopexit.i.i.loopexit:                   ; preds = %for.inc46.i.i
  br label %if.end48.loopexit.i.i

if.end48.loopexit.i.i:                            ; preds = %if.end48.loopexit.i.i.loopexit, %for.body28.i.i
  %arrayidx50.i.i = getelementptr inbounds nuw i32, ptr @ira_class_translate, i64 %idxprom33.i.i
  store i32 %166, ptr %arrayidx50.i.i, align 4
  %indvars.iv.next187.i.i = add nuw nsw i64 %indvars.iv186.i.i, 1
  %exitcond190.not.i.i = icmp eq i64 %indvars.iv.next187.i.i, %wide.trip.count.i.i
  br i1 %exitcond190.not.i.i, label %for.body56.us.preheader.i.i.loopexit71, label %for.body28.i.i, !llvm.loop !25

setup_class_translate.exit.i:                     ; preds = %for.inc112.us.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @cover_class_order, i8 -1, i64 108, i1 false)
  br label %for.body3.i22.i

for.body3.i22.i:                                  ; preds = %for.body3.i22.i, %setup_class_translate.exit.i
  %indvars.iv.i23.i = phi i64 [ 0, %setup_class_translate.exit.i ], [ %indvars.iv.next.i24.i, %for.body3.i22.i ]
  %arrayidx5.i.i32 = getelementptr inbounds nuw i32, ptr @ira_reg_class_cover, i64 %indvars.iv.i23.i
  %171 = load i32, ptr %arrayidx5.i.i32, align 4
  %idxprom6.i.i = zext i32 %171 to i64
  %arrayidx7.i.i = getelementptr inbounds nuw i32, ptr @cover_class_order, i64 %idxprom6.i.i
  %172 = trunc nuw nsw i64 %indvars.iv.i23.i to i32
  store i32 %172, ptr %arrayidx7.i.i, align 4
  %indvars.iv.next.i24.i = add nuw nsw i64 %indvars.iv.i23.i, 1
  %exitcond.not.i25.i = icmp eq i64 %indvars.iv.next.i24.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i25.i, label %for.end10.i.i.loopexit, label %for.body3.i22.i, !llvm.loop !30

for.end10.i.sink.split.i:                         ; preds = %setup_class_translate.exit.thread.i, %setup_cover_and_important_classes.exit.thread.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @cover_class_order, i8 -1, i64 108, i1 false)
  br label %for.end10.i.i

for.end10.i.i.loopexit:                           ; preds = %for.body3.i22.i
  br label %for.end10.i.i

for.end10.i.i:                                    ; preds = %for.end10.i.i.loopexit, %for.end10.i.sink.split.i
  %173 = load i32, ptr @ira_important_classes_num, align 4
  %conv.i.i30 = sext i32 %173 to i64
  tail call void @spec_qsort(ptr noundef nonnull @ira_important_classes, i64 noundef %conv.i.i30, i64 noundef 4, ptr noundef nonnull @comp_reg_classes_func) #8
  %174 = load i32, ptr @ira_important_classes_num, align 4
  %cmp1235.i.i = icmp sgt i32 %174, 0
  br i1 %cmp1235.i.i, label %for.body14.preheader.i.i, label %reorder_important_classes.exit.i

for.body14.preheader.i.i:                         ; preds = %for.end10.i.i
  %wide.trip.count42.i.i = zext nneg i32 %174 to i64
  br label %for.body14.i20.i

for.body14.i20.i:                                 ; preds = %for.body14.i20.i, %for.body14.preheader.i.i
  %indvars.iv39.i.i = phi i64 [ 0, %for.body14.preheader.i.i ], [ %indvars.iv.next40.i.i, %for.body14.i20.i ]
  %arrayidx16.i.i = getelementptr inbounds nuw i32, ptr @ira_important_classes, i64 %indvars.iv39.i.i
  %175 = load i32, ptr %arrayidx16.i.i, align 4
  %idxprom17.i.i = zext i32 %175 to i64
  %arrayidx18.i.i = getelementptr inbounds nuw i32, ptr @ira_important_class_nums, i64 %idxprom17.i.i
  %176 = trunc nuw nsw i64 %indvars.iv39.i.i to i32
  store i32 %176, ptr %arrayidx18.i.i, align 4
  %indvars.iv.next40.i.i = add nuw nsw i64 %indvars.iv39.i.i, 1
  %exitcond43.not.i.i = icmp eq i64 %indvars.iv.next40.i.i, %wide.trip.count42.i.i
  br i1 %exitcond43.not.i.i, label %for.body.preheader.i.i, label %for.body14.i20.i, !llvm.loop !31

reorder_important_classes.exit.i:                 ; preds = %for.end10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %important_class_p.i.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %important_class_p.i.i, i8 0, i64 27, i1 false)
  br label %for.cond3.preheader.i.i

for.body.preheader.i.i:                           ; preds = %for.body14.i20.i
  call void @llvm.lifetime.start.p0(ptr nonnull %important_class_p.i.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %important_class_p.i.i, i8 0, i64 27, i1 false)
  br label %for.body.i43.i

for.cond3.preheader.i.i.loopexit:                 ; preds = %for.body.i43.i
  br label %for.cond3.preheader.i.i

for.cond3.preheader.i.i:                          ; preds = %for.cond3.preheader.i.i.loopexit, %reorder_important_classes.exit.i
  br label %for.body5.i.i

for.body.i43.i:                                   ; preds = %for.body.i43.i, %for.body.preheader.i.i
  %indvars.iv.i44.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i46.i, %for.body.i43.i ]
  %arrayidx.i45.i = getelementptr inbounds nuw i32, ptr @ira_important_classes, i64 %indvars.iv.i44.i
  %177 = load i32, ptr %arrayidx.i45.i, align 4
  %idxprom1.i.i = zext i32 %177 to i64
  %arrayidx2.i.i = getelementptr inbounds nuw i8, ptr %important_class_p.i.i, i64 %idxprom1.i.i
  store i8 1, ptr %arrayidx2.i.i, align 1
  %indvars.iv.next.i46.i = add nuw nsw i64 %indvars.iv.i44.i, 1
  %exitcond.not.i47.i = icmp eq i64 %indvars.iv.next.i46.i, %wide.trip.count42.i.i
  br i1 %exitcond.not.i47.i, label %for.cond3.preheader.i.i.loopexit, label %for.body.i43.i, !llvm.loop !32

for.body5.i.i:                                    ; preds = %for.inc198.i.i, %for.cond3.preheader.i.i
  %indvars.iv331.i.i = phi i64 [ 0, %for.cond3.preheader.i.i ], [ %indvars.iv.next332.i.i, %for.inc198.i.i ]
  %arrayidx7.i26.i = getelementptr inbounds nuw [27 x i32], ptr @ira_reg_class_super_classes, i64 %indvars.iv331.i.i
  store i32 27, ptr %arrayidx7.i26.i, align 4
  %arrayidx13.i.i = getelementptr inbounds nuw [27 x i8], ptr @ira_reg_classes_intersect_p, i64 %indvars.iv331.i.i
  %arrayidx17.i.i = getelementptr inbounds nuw [27 x i32], ptr @ira_reg_class_intersect, i64 %indvars.iv331.i.i
  %arrayidx21.i.i = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %indvars.iv331.i.i
  %arrayidx67.i.i = getelementptr inbounds nuw i8, ptr %important_class_p.i.i, i64 %indvars.iv331.i.i
  %arrayidx88.i.i = getelementptr inbounds nuw [27 x i32], ptr @ira_reg_class_union, i64 %indvars.iv331.i.i
  %arrayidx31.i27.i = getelementptr inbounds nuw [27 x i32], ptr @reg_class_subclasses, i64 %indvars.iv331.i.i
  %arrayidx53.i.i = getelementptr inbounds nuw [27 x i32], ptr @reg_class_subunion, i64 %indvars.iv331.i.i
  br label %for.body11.i28.i

for.body11.i28.i:                                 ; preds = %for.inc195.i.i, %for.body5.i.i
  %indvars.iv327.i.i = phi i64 [ 0, %for.body5.i.i ], [ %indvars.iv.next328.i.i, %for.inc195.i.i ]
  %arrayidx15.i.i = getelementptr inbounds nuw i8, ptr %arrayidx13.i.i, i64 %indvars.iv327.i.i
  store i8 0, ptr %arrayidx15.i.i, align 1
  %arrayidx19.i.i = getelementptr inbounds nuw i32, ptr %arrayidx17.i.i, i64 %indvars.iv327.i.i
  store i32 0, ptr %arrayidx19.i.i, align 4
  %178 = load i64, ptr %arrayidx21.i.i, align 8
  %179 = load i64, ptr @no_unit_alloc_regs, align 8
  %not.i29.i = xor i64 %179, -1
  %and.i30.i = and i64 %178, %not.i29.i
  store i64 %and.i30.i, ptr @temp_hard_regset, align 8
  %arrayidx23.i31.i = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %indvars.iv327.i.i
  %180 = load i64, ptr %arrayidx23.i31.i, align 8
  %and25.i.i = and i64 %180, %not.i29.i
  %cmp.i.not.i32.i = icmp eq i64 %and.i30.i, 0
  %cmp.i275.not.i.i = icmp eq i64 %and25.i.i, 0
  %or.cond.i33.i = select i1 %cmp.i.not.i32.i, i1 %cmp.i275.not.i.i, i1 false
  br i1 %or.cond.i33.i, label %for.cond29.preheader.i.i, label %if.end60.i.i

for.cond29.preheader.i.i:                         ; preds = %for.body11.i28.i
  %181 = load i32, ptr %arrayidx31.i27.i, align 4
  %cmp34314.i.i = icmp eq i32 %181, 27
  br i1 %cmp34314.i.i, label %for.end51.i41.i, label %if.end.i39.i.preheader

if.end.i39.i.preheader:                           ; preds = %for.cond29.preheader.i.i
  br label %if.end.i39.i

if.end.i39.i:                                     ; preds = %for.inc49.i40.i, %if.end.i39.i.preheader
  %indvars.iv324.i.i = phi i64 [ %indvars.iv.next325.i.i, %for.inc49.i40.i ], [ 0, %if.end.i39.i.preheader ]
  %182 = phi i32 [ %184, %for.inc49.i40.i ], [ %181, %if.end.i39.i.preheader ]
  %183 = load i32, ptr %arrayidx19.i.i, align 4
  %call41.i.i = tail call i32 @reg_class_subset_p(i32 noundef %183, i32 noundef %182) #8
  %tobool42.not.i.i = icmp eq i32 %call41.i.i, 0
  br i1 %tobool42.not.i.i, label %for.inc49.i40.i, label %if.then43.i.i

if.then43.i.i:                                    ; preds = %if.end.i39.i
  store i32 %182, ptr %arrayidx19.i.i, align 4
  br label %for.inc49.i40.i

for.inc49.i40.i:                                  ; preds = %if.then43.i.i, %if.end.i39.i
  %indvars.iv.next325.i.i = add nuw nsw i64 %indvars.iv324.i.i, 1
  %arrayidx33.i.i = getelementptr inbounds nuw i32, ptr %arrayidx31.i27.i, i64 %indvars.iv.next325.i.i
  %184 = load i32, ptr %arrayidx33.i.i, align 4
  %cmp34.i.i = icmp eq i32 %184, 27
  br i1 %cmp34.i.i, label %for.end51.i41.i.loopexit, label %if.end.i39.i

for.end51.i41.i.loopexit:                         ; preds = %for.inc49.i40.i
  br label %for.end51.i41.i

for.end51.i41.i:                                  ; preds = %for.end51.i41.i.loopexit, %for.cond29.preheader.i.i
  %arrayidx55.i.i = getelementptr inbounds nuw i32, ptr %arrayidx53.i.i, i64 %indvars.iv327.i.i
  %185 = load i32, ptr %arrayidx55.i.i, align 4
  %arrayidx59.i.i = getelementptr inbounds nuw i32, ptr %arrayidx88.i.i, i64 %indvars.iv327.i.i
  store i32 %185, ptr %arrayidx59.i.i, align 4
  br label %for.inc195.i.i

if.end60.i.i:                                     ; preds = %for.body11.i28.i
  %and.i.i34.i = and i64 %180, %and.i30.i
  %cmp.i277.i.i = icmp ne i64 %and.i.i34.i, 0
  %conv1.i278.i.i = zext i1 %cmp.i277.i.i to i8
  store i8 %conv1.i278.i.i, ptr %arrayidx15.i.i, align 1
  %186 = load i8, ptr %arrayidx67.i.i, align 1
  %tobool69.not.i.i = icmp eq i8 %186, 0
  br i1 %tobool69.not.i.i, label %if.end86.i.i, label %land.lhs.true70.i.i

land.lhs.true70.i.i:                              ; preds = %if.end60.i.i
  %arrayidx72.i.i = getelementptr inbounds nuw i8, ptr %important_class_p.i.i, i64 %indvars.iv327.i.i
  %187 = load i8, ptr %arrayidx72.i.i, align 1
  %tobool74.not.i.i = icmp eq i8 %187, 0
  br i1 %tobool74.not.i.i, label %if.end86.i.i, label %land.lhs.true75.i.i

land.lhs.true75.i.i:                              ; preds = %land.lhs.true70.i.i
  %not.i.i.i = xor i64 %and25.i.i, -1
  %and.i279.i.i = and i64 %and.i30.i, %not.i.i.i
  %cmp.i280.not.i.i = icmp eq i64 %and.i279.i.i, 0
  br i1 %cmp.i280.not.i.i, label %while.cond.i35.i.preheader, label %if.end86.i.i

while.cond.i35.i.preheader:                       ; preds = %land.lhs.true75.i.i
  br label %while.cond.i35.i

while.cond.i35.i:                                 ; preds = %while.cond.i35.i, %while.cond.i35.i.preheader
  %p.0.i36.i = phi ptr [ %incdec.ptr.i37.i, %while.cond.i35.i ], [ %arrayidx7.i26.i, %while.cond.i35.i.preheader ]
  %188 = load i32, ptr %p.0.i36.i, align 4
  %cmp83.not.i.i = icmp eq i32 %188, 27
  %incdec.ptr.i37.i = getelementptr inbounds nuw i8, ptr %p.0.i36.i, i64 4
  br i1 %cmp83.not.i.i, label %while.end.i38.i, label %while.cond.i35.i, !llvm.loop !33

while.end.i38.i:                                  ; preds = %while.cond.i35.i
  %p.0.i36.i.lcssa = phi ptr [ %p.0.i36.i, %while.cond.i35.i ]
  %incdec.ptr.i37.i.lcssa = phi ptr [ %incdec.ptr.i37.i, %while.cond.i35.i ]
  %189 = trunc nuw nsw i64 %indvars.iv327.i.i to i32
  store i32 %189, ptr %p.0.i36.i.lcssa, align 4
  store i32 27, ptr %incdec.ptr.i37.i.lcssa, align 4
  br label %if.end86.i.i

if.end86.i.i:                                     ; preds = %while.end.i38.i, %land.lhs.true75.i.i, %land.lhs.true70.i.i, %if.end60.i.i
  %arrayidx90.i.i = getelementptr inbounds nuw i32, ptr %arrayidx88.i.i, i64 %indvars.iv327.i.i
  store i32 0, ptr %arrayidx90.i.i, align 4
  %190 = load i32, ptr @ira_important_classes_num, align 4
  %cmp105312.i.i = icmp sgt i32 %190, 0
  br i1 %cmp105312.i.i, label %for.body107.lr.ph.i.i, label %for.inc195.i.i

for.body107.lr.ph.i.i:                            ; preds = %if.end86.i.i
  %or.i.i31 = or i64 %180, %178
  %and95.i.i = and i64 %180, %178
  %and95.not.i.i = xor i64 %and95.i.i, -1
  %or.not.i.i = xor i64 %or.i.i31, -1
  %wide.trip.count322.i.i = zext nneg i32 %190 to i64
  br label %for.body107.i.i

for.body107.i.i:                                  ; preds = %for.inc192.i.i, %for.body107.lr.ph.i.i
  %indvars.iv319.i.i = phi i64 [ 0, %for.body107.lr.ph.i.i ], [ %indvars.iv.next320.i.i, %for.inc192.i.i ]
  %arrayidx109.i.i = getelementptr inbounds nuw i32, ptr @ira_important_classes, i64 %indvars.iv319.i.i
  %191 = load i32, ptr %arrayidx109.i.i, align 4
  %idxprom110.i.i = sext i32 %191 to i64
  %arrayidx111.i.i = getelementptr inbounds i64, ptr @reg_class_contents, i64 %idxprom110.i.i
  %192 = load i64, ptr %arrayidx111.i.i, align 8
  %and113.i.i = and i64 %192, %not.i29.i
  %and.i283.i.i = and i64 %and113.i.i, %and95.not.i.i
  %cmp.i284.not.i.i = icmp eq i64 %and.i283.i.i, 0
  br i1 %cmp.i284.not.i.i, label %if.then116.i.i, label %if.end148.i.i

if.then116.i.i:                                   ; preds = %for.body107.i.i
  %193 = load i32, ptr %arrayidx19.i.i, align 4
  %idxprom121.i.i = sext i32 %193 to i64
  %arrayidx122.i.i = getelementptr inbounds i64, ptr @reg_class_contents, i64 %idxprom121.i.i
  %194 = load i64, ptr %arrayidx122.i.i, align 8
  %and124.i.i = and i64 %194, %not.i29.i
  %not.i286.i.i = xor i64 %and124.i.i, -1
  %and.i287.i.i = and i64 %and113.i.i, %not.i286.i.i
  %cmp.i288.not.i.i = icmp eq i64 %and.i287.i.i, 0
  br i1 %cmp.i288.not.i.i, label %lor.lhs.false.i.i, label %if.then142.i.i

lor.lhs.false.i.i:                                ; preds = %if.then116.i.i
  %cmp.i290.not.i.i = icmp eq i64 %and113.i.i, %and124.i.i
  br i1 %cmp.i290.not.i.i, label %land.lhs.true130.i.i, label %if.end148.i.i

land.lhs.true130.i.i:                             ; preds = %lor.lhs.false.i.i
  %not.i292.i.i = xor i64 %194, -1
  %and.i293.i.i = and i64 %192, %not.i292.i.i
  %cmp.i294.not.i.i = icmp eq i64 %and.i293.i.i, 0
  br i1 %cmp.i294.not.i.i, label %if.then142.i.i, label %if.end148.i.i

if.then142.i.i:                                   ; preds = %land.lhs.true130.i.i, %if.then116.i.i
  store i32 %191, ptr %arrayidx19.i.i, align 4
  br label %if.end148.i.i

if.end148.i.i:                                    ; preds = %if.then142.i.i, %land.lhs.true130.i.i, %lor.lhs.false.i.i, %for.body107.i.i
  %and.i297.i.i = and i64 %and113.i.i, %or.not.i.i
  %cmp.i298.not.i.i = icmp eq i64 %and.i297.i.i, 0
  br i1 %cmp.i298.not.i.i, label %if.then151.i.i, label %for.inc192.i.i

if.then151.i.i:                                   ; preds = %if.end148.i.i
  %195 = load i32, ptr %arrayidx90.i.i, align 4
  %idxprom156.i.i = sext i32 %195 to i64
  %arrayidx157.i.i = getelementptr inbounds i64, ptr @reg_class_contents, i64 %idxprom156.i.i
  %196 = load i64, ptr %arrayidx157.i.i, align 8
  %and159.i.i = and i64 %196, %not.i29.i
  %cmp164.i.i = icmp eq i32 %195, 0
  br i1 %cmp164.i.i, label %if.then185.i.i, label %lor.lhs.false166.i.i

lor.lhs.false166.i.i:                             ; preds = %if.then151.i.i
  %not.i300.i.i = xor i64 %and113.i.i, -1
  %and.i301.i.i = and i64 %and159.i.i, %not.i300.i.i
  %cmp.i302.not.i.i = icmp eq i64 %and.i301.i.i, 0
  br i1 %cmp.i302.not.i.i, label %land.lhs.true170.i.i, label %for.inc192.i.i

land.lhs.true170.i.i:                             ; preds = %lor.lhs.false166.i.i
  %cmp.i304.not.i.i = icmp eq i64 %and159.i.i, %and113.i.i
  br i1 %cmp.i304.not.i.i, label %lor.lhs.false173.i.i, label %if.then185.i.i

lor.lhs.false173.i.i:                             ; preds = %land.lhs.true170.i.i
  %not.i306.i.i = xor i64 %196, -1
  %and.i307.i.i = and i64 %192, %not.i306.i.i
  %cmp.i308.not.i.i = icmp eq i64 %and.i307.i.i, 0
  br i1 %cmp.i308.not.i.i, label %if.then185.i.i, label %for.inc192.i.i

if.then185.i.i:                                   ; preds = %lor.lhs.false173.i.i, %land.lhs.true170.i.i, %if.then151.i.i
  store i32 %191, ptr %arrayidx90.i.i, align 4
  br label %for.inc192.i.i

for.inc192.i.i:                                   ; preds = %if.then185.i.i, %lor.lhs.false173.i.i, %lor.lhs.false166.i.i, %if.end148.i.i
  %indvars.iv.next320.i.i = add nuw nsw i64 %indvars.iv319.i.i, 1
  %exitcond323.not.i.i = icmp eq i64 %indvars.iv.next320.i.i, %wide.trip.count322.i.i
  br i1 %exitcond323.not.i.i, label %for.cond104.for.inc195.loopexit_crit_edge.i.i, label %for.body107.i.i, !llvm.loop !34

for.cond104.for.inc195.loopexit_crit_edge.i.i:    ; preds = %for.inc192.i.i
  %and113.i.i.lcssa = phi i64 [ %and113.i.i, %for.inc192.i.i ]
  store i64 %and113.i.i.lcssa, ptr @temp_hard_regset, align 8
  br label %for.inc195.i.i

for.inc195.i.i:                                   ; preds = %for.cond104.for.inc195.loopexit_crit_edge.i.i, %if.end86.i.i, %for.end51.i41.i
  %indvars.iv.next328.i.i = add nuw nsw i64 %indvars.iv327.i.i, 1
  %exitcond330.not.i.i = icmp eq i64 %indvars.iv.next328.i.i, 27
  br i1 %exitcond330.not.i.i, label %for.inc198.i.i, label %for.body11.i28.i, !llvm.loop !35

for.inc198.i.i:                                   ; preds = %for.inc195.i.i
  %indvars.iv.next332.i.i = add nuw nsw i64 %indvars.iv331.i.i, 1
  %exitcond334.not.i.i = icmp eq i64 %indvars.iv.next332.i.i, 27
  br i1 %exitcond334.not.i.i, label %find_reg_class_closure.exit, label %for.body5.i.i, !llvm.loop !36

find_reg_class_closure.exit:                      ; preds = %for.inc198.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %important_class_p.i.i) #8
  %197 = load i32, ptr @ira_reg_class_cover_size, align 4
  %cmp224.i = icmp sgt i32 %197, 0
  br i1 %cmp224.i, label %for.body.us.preheader.i, label %for.end16.loopexit27.i

for.body.us.preheader.i:                          ; preds = %find_reg_class_closure.exit
  %wide.trip.count.i = zext nneg i32 %197 to i64
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %for.inc14.us.i, %for.body.us.preheader.i
  %indvars.iv31.i = phi i64 [ 0, %for.body.us.preheader.i ], [ %indvars.iv.next32.i, %for.inc14.us.i ]
  %arrayidx.us.i = getelementptr inbounds nuw i32, ptr @ira_hard_regno_cover_class, i64 %indvars.iv31.i
  store i32 0, ptr %arrayidx.us.i, align 4
  %invariant.gep.us.i = getelementptr inbounds nuw i16, ptr @ira_class_hard_reg_index, i64 %indvars.iv31.i
  br label %for.body3.us.i

for.cond1.us.i:                                   ; preds = %for.body3.us.i
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next.i36, %wide.trip.count.i
  br i1 %exitcond.not.i37, label %for.inc14.us.i.loopexit, label %for.body3.us.i, !llvm.loop !37

for.body3.us.i:                                   ; preds = %for.cond1.us.i, %for.body.us.i
  %indvars.iv.i35 = phi i64 [ 0, %for.body.us.i ], [ %indvars.iv.next.i36, %for.cond1.us.i ]
  %arrayidx5.us.i = getelementptr inbounds nuw i32, ptr @ira_reg_class_cover, i64 %indvars.iv.i35
  %198 = load i32, ptr %arrayidx5.us.i, align 4
  %idxprom6.us.i = zext i32 %198 to i64
  %gep.us.i = getelementptr inbounds nuw [53 x i16], ptr %invariant.gep.us.i, i64 %idxprom6.us.i
  %199 = load i16, ptr %gep.us.i, align 2
  %cmp10.us.i = icmp sgt i16 %199, -1
  br i1 %cmp10.us.i, label %if.then.us.i, label %for.cond1.us.i

if.then.us.i:                                     ; preds = %for.body3.us.i
  %.lcssa = phi i32 [ %198, %for.body3.us.i ]
  store i32 %.lcssa, ptr %arrayidx.us.i, align 4
  br label %for.inc14.us.i

for.inc14.us.i.loopexit:                          ; preds = %for.cond1.us.i
  br label %for.inc14.us.i

for.inc14.us.i:                                   ; preds = %for.inc14.us.i.loopexit, %if.then.us.i
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next32.i, 53
  br i1 %exitcond34.not.i, label %setup_hard_regno_cover_class.exit.loopexit, label %for.body.us.i, !llvm.loop !38

for.end16.loopexit27.i:                           ; preds = %find_reg_class_closure.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @ira_hard_regno_cover_class, i8 0, i64 212, i1 false)
  br label %setup_hard_regno_cover_class.exit

setup_hard_regno_cover_class.exit.loopexit:       ; preds = %for.inc14.us.i
  br label %setup_hard_regno_cover_class.exit

setup_hard_regno_cover_class.exit:                ; preds = %setup_hard_regno_cover_class.exit.loopexit, %for.end16.loopexit27.i
  store i32 -1, ptr @ira_max_nregs, align 4
  br label %for.cond1.preheader.i38

for.cond1.preheader.i38:                          ; preds = %for.inc36.i, %setup_hard_regno_cover_class.exit
  %indvars.iv55.i = phi i64 [ 0, %setup_hard_regno_cover_class.exit ], [ %indvars.iv.next56.i, %for.inc36.i ]
  %arrayidx23.i = getelementptr inbounds nuw [87 x i32], ptr @ira_reg_class_nregs, i64 %indvars.iv55.i
  %200 = trunc nuw nsw i64 %indvars.iv55.i to i32
  br label %for.body3.i39

for.body3.i39:                                    ; preds = %for.inc.i45, %for.cond1.preheader.i38
  %indvars.iv.i40 = phi i64 [ 0, %for.cond1.preheader.i38 ], [ %indvars.iv.next.i46, %for.inc.i45 ]
  %call.i41 = tail call i32 @reg_classes_intersect_p(i32 noundef %200, i32 noundef 13) #8
  %tobool.not.i42 = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i42, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %for.body3.i39
  %arrayidx.i49 = getelementptr inbounds nuw i8, ptr @mode_class, i64 %indvars.iv.i40
  %201 = load i8, ptr %arrayidx.i49, align 1
  %202 = and i8 %201, -2
  %203 = icmp eq i8 %202, 10
  %cond.i = select i1 %203, i32 2, i32 1
  br label %cond.end20.i

cond.false.i:                                     ; preds = %for.body3.i39
  %cmp11.i43 = icmp eq i64 %indvars.iv.i40, 40
  br i1 %cmp11.i43, label %cond.end20.i, label %cond.false14.i

cond.false14.i:                                   ; preds = %cond.false.i
  %arrayidx16.i = getelementptr inbounds nuw i8, ptr @mode_size, i64 %indvars.iv.i40
  %204 = load i8, ptr %arrayidx16.i, align 1
  %conv18.i = zext i8 %204 to i32
  %205 = add nuw nsw i32 %conv18.i, 3
  %206 = lshr i32 %205, 2
  br label %cond.end20.i

cond.end20.i:                                     ; preds = %cond.false14.i, %cond.false.i, %cond.true.i
  %cond21.i = phi i32 [ %cond.i, %cond.true.i ], [ %206, %cond.false14.i ], [ 3, %cond.false.i ]
  %arrayidx25.i44 = getelementptr inbounds nuw i32, ptr %arrayidx23.i, i64 %indvars.iv.i40
  store i32 %cond21.i, ptr %arrayidx25.i44, align 4
  %207 = load i32, ptr @ira_max_nregs, align 4
  %cmp30.i = icmp slt i32 %207, %cond21.i
  br i1 %cmp30.i, label %if.then.i48, label %for.inc.i45

if.then.i48:                                      ; preds = %cond.end20.i
  store i32 %cond21.i, ptr @ira_max_nregs, align 4
  br label %for.inc.i45

for.inc.i45:                                      ; preds = %if.then.i48, %cond.end20.i
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i40, 1
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, 87
  br i1 %exitcond.not.i47, label %for.inc36.i, label %for.body3.i39, !llvm.loop !39

for.inc36.i:                                      ; preds = %for.inc.i45
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next56.i, 27
  br i1 %exitcond58.not.i, label %setup_reg_class_nregs.exit, label %for.cond1.preheader.i38, !llvm.loop !40

setup_reg_class_nregs.exit:                       ; preds = %for.inc36.i
  %208 = load i32, ptr @ira_reg_class_cover_size, align 4
  %cmp42.i = icmp sgt i32 %208, 0
  br i1 %cmp42.i, label %for.body.i50.preheader, label %setup_prohibited_class_mode_regs.exit

for.body.i50.preheader:                           ; preds = %setup_reg_class_nregs.exit
  br label %for.body.i50

for.body.i50:                                     ; preds = %for.inc23.i53, %for.body.i50.preheader
  %indvars.iv50.i = phi i64 [ %indvars.iv.next51.i, %for.inc23.i53 ], [ 0, %for.body.i50.preheader ]
  %arrayidx.i51 = getelementptr inbounds nuw i32, ptr @ira_reg_class_cover, i64 %indvars.iv50.i
  %209 = load i32, ptr %arrayidx.i51, align 4
  %idxprom4.i = zext i32 %209 to i64
  %arrayidx5.i52 = getelementptr [87 x i64], ptr @prohibited_class_mode_regs, i64 %idxprom4.i
  %arrayidx9.i = getelementptr inbounds nuw i32, ptr @ira_class_hard_regs_num, i64 %idxprom4.i
  %arrayidx14.i = getelementptr inbounds nuw [53 x i16], ptr @ira_class_hard_regs, i64 %idxprom4.i
  %210 = load i32, ptr %arrayidx9.i, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %for.body3.i54.preheader, label %for.inc23.loopexit44.i

for.body3.i54.preheader:                          ; preds = %for.body.i50
  br label %for.body3.i54

for.body3thread-pre-split.i:                      ; preds = %for.inc21.i55
  %.pr.i57 = load i32, ptr %arrayidx9.i, align 4
  br label %for.body3.i54

for.body3.i54:                                    ; preds = %for.body3thread-pre-split.i, %for.body3.i54.preheader
  %212 = phi i32 [ %.pr.i57, %for.body3thread-pre-split.i ], [ %210, %for.body3.i54.preheader ]
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %for.body3thread-pre-split.i ], [ 0, %for.body3.i54.preheader ]
  %arrayidx7.i = getelementptr inbounds nuw i64, ptr %arrayidx5.i52, i64 %indvars.iv47.i
  store i64 0, ptr %arrayidx7.i, align 8
  %cmp1139.i = icmp sgt i32 %212, 0
  br i1 %cmp1139.i, label %for.body12.preheader.i, label %for.inc21.i55

for.body12.preheader.i:                           ; preds = %for.body3.i54
  %213 = zext nneg i32 %212 to i64
  %214 = trunc nuw nsw i64 %indvars.iv47.i to i32
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc.i64, %for.body12.preheader.i
  %indvars.iv.i58 = phi i64 [ %213, %for.body12.preheader.i ], [ %indvars.iv.next.i59, %for.inc.i64 ]
  %indvars.iv.next.i59 = add nsw i64 %indvars.iv.i58, -1
  %arrayidx16.i60 = getelementptr inbounds nuw i16, ptr %arrayidx14.i, i64 %indvars.iv.next.i59
  %215 = load i16, ptr %arrayidx16.i60, align 2
  %conv.i61 = sext i16 %215 to i32
  %call.i62 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %conv.i61, i32 noundef %214) #8
  %tobool.not.i63 = icmp eq i8 %call.i62, 0
  br i1 %tobool.not.i63, label %if.then.i66, label %for.inc.i64

if.then.i66:                                      ; preds = %for.body12.i
  %sh_prom.i = zext nneg i32 %conv.i61 to i64
  %shl.i67 = shl nuw i64 1, %sh_prom.i
  %216 = load i64, ptr %arrayidx7.i, align 8
  %or.i68 = or i64 %216, %shl.i67
  store i64 %or.i68, ptr %arrayidx7.i, align 8
  br label %for.inc.i64

for.inc.i64:                                      ; preds = %if.then.i66, %for.body12.i
  %cmp11.i65 = icmp samesign ugt i64 %indvars.iv.i58, 1
  br i1 %cmp11.i65, label %for.body12.i, label %for.inc21.i55.loopexit, !llvm.loop !41

for.inc21.i55.loopexit:                           ; preds = %for.inc.i64
  br label %for.inc21.i55

for.inc21.i55:                                    ; preds = %for.inc21.i55.loopexit, %for.body3.i54
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %exitcond.not.i56 = icmp eq i64 %indvars.iv.next48.i, 87
  br i1 %exitcond.not.i56, label %for.inc23.i53.loopexit, label %for.body3thread-pre-split.i, !llvm.loop !42

for.inc23.loopexit44.i:                           ; preds = %for.body.i50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %arrayidx5.i52, i8 0, i64 696, i1 false)
  br label %for.inc23.i53

for.inc23.i53.loopexit:                           ; preds = %for.inc21.i55
  br label %for.inc23.i53

for.inc23.i53:                                    ; preds = %for.inc23.i53.loopexit, %for.inc23.loopexit44.i
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1
  %217 = load i32, ptr @ira_reg_class_cover_size, align 4
  %218 = sext i32 %217 to i64
  %cmp.i = icmp slt i64 %indvars.iv.next51.i, %218
  br i1 %cmp.i, label %for.body.i50, label %setup_prohibited_class_mode_regs.exit.loopexit, !llvm.loop !43

setup_prohibited_class_mode_regs.exit.loopexit:   ; preds = %for.inc23.i53
  br label %setup_prohibited_class_mode_regs.exit

setup_prohibited_class_mode_regs.exit:            ; preds = %setup_prohibited_class_mode_regs.exit.loopexit, %setup_reg_class_nregs.exit
  tail call void @ira_init_costs() #8
  ret void
}

declare void @ira_init_costs() local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @ix86_memory_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #4

declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare hidden i32 @comp_reg_classes_func(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) #6

declare i32 @reg_class_subset_p(i32 noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!14 = distinct !{!14, !1}
!15 = distinct !{!15, !1}
!16 = distinct !{!16, !1}
!17 = distinct !{!17, !1}
!18 = distinct !{!18, !1, !19}
!19 = !{!"llvm.loop.unswitch.partial.disable"}
!20 = distinct !{!20, !1}
!21 = distinct !{!21, !1}
!22 = distinct !{!22, !1}
!23 = distinct !{!23, !1}
!24 = distinct !{!24, !1}
!25 = distinct !{!25, !1}
!26 = distinct !{!26, !1}
!27 = distinct !{!27, !1}
!28 = distinct !{!28, !1}
!29 = distinct !{!29, !1}
!30 = distinct !{!30, !1}
!31 = distinct !{!31, !1}
!32 = distinct !{!32, !1}
!33 = distinct !{!33, !1}
!34 = distinct !{!34, !1}
!35 = distinct !{!35, !1}
!36 = distinct !{!36, !1}
!37 = distinct !{!37, !1}
!38 = distinct !{!38, !1}
!39 = distinct !{!39, !1}
!40 = distinct !{!40, !1}
!41 = distinct !{!41, !1}
!42 = distinct !{!42, !1, !19}
!43 = distinct !{!43, !1}
