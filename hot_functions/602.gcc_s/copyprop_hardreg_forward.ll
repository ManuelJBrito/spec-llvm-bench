; ModuleID = '/tmp/tmp.DfUxMxIiIW/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/regcprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.operand_alternative = type { ptr, i32, i32, i32, i32, i8 }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.value_data = type { [53 x %struct.value_data_entry], i32, i32 }
%struct.value_data_entry = type { i32, i32, i32, ptr }

@cfun = external local_unnamed_addr global ptr, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.6 = external hidden unnamed_addr constant [24 x i8], align 1
@debug_insn_changes_pool = external hidden unnamed_addr global ptr, align 8
@.str.7 = external hidden unnamed_addr constant [119 x i8], align 1
@.str.8 = external hidden unnamed_addr constant [2 x i8], align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.9 = external hidden unnamed_addr constant [116 x i8], align 1
@which_alternative = external local_unnamed_addr global i32, align 4
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@recog_op_alt = external local_unnamed_addr global [30 x [30 x %struct.operand_alternative]], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.10 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.11 = external hidden unnamed_addr constant [40 x i8], align 1
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.12 = external hidden unnamed_addr constant [48 x i8], align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@global_regs = external local_unnamed_addr global [53 x i8], align 16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: nounwind uwtable
define hidden i32 @copyprop_hardreg_forward() #2 {
entry:
  %replaced.i = alloca [30 x i8], align 16
  %0 = load ptr, ptr @cfun, align 8
  %cfg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1 = load ptr, ptr %cfg, align 8
  %x_last_basic_block = getelementptr inbounds nuw i8, ptr %1, i64 32
  %2 = load i32, ptr %x_last_basic_block, align 8
  %conv = sext i32 %2 to i64
  %mul = mul nsw i64 %conv, 1280
  %call = tail call ptr @xmalloc(i64 noundef %mul) #7
  %3 = load ptr, ptr @cfun, align 8
  %cfg2 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = load ptr, ptr %cfg2, align 8
  %x_last_basic_block3 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %5 = load i32, ptr %x_last_basic_block3, align 8
  %call4 = tail call ptr @sbitmap_alloc(i32 noundef %5) #7
  tail call void @sbitmap_zero(ptr noundef %call4) #7
  %6 = load i32, ptr @flag_var_tracking_assignments, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.6, i64 noundef 32, i64 noundef 256) #7
  store ptr %call5, ptr @debug_insn_changes_pool, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr @cfun, align 8
  %cfg7 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %8 = load ptr, ptr %cfg7, align 8
  %9 = load ptr, ptr %8, align 8
  %bb.0.in298 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %bb.0299 = load ptr, ptr %bb.0.in298, align 8
  %x_exit_block_ptr301 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = load ptr, ptr %x_exit_block_ptr301, align 8
  %cmp.not302 = icmp eq ptr %bb.0299, %10
  br i1 %cmp.not302, label %for.end73, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %elms.i = getelementptr inbounds nuw i8, ptr %call4, i64 16
  %elms10.i = getelementptr inbounds nuw i8, ptr %call4, i64 16
  br label %for.body

for.body:                                         ; preds = %copyprop_hardreg_forward_1.exit, %for.body.lr.ph
  %bb.0303 = phi ptr [ %bb.0299, %for.body.lr.ph ], [ %bb.0, %copyprop_hardreg_forward_1.exit ]
  %index = getelementptr inbounds nuw i8, ptr %bb.0303, i64 80
  %11 = load i32, ptr %index, align 8
  %12 = load ptr, ptr %call4, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %SET_BIT.exit, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %div21.i = lshr i32 %11, 6
  %idxprom.i = zext nneg i32 %div21.i to i64
  %arrayidx.i = getelementptr inbounds nuw i64, ptr %elms.i, i64 %idxprom.i
  %13 = load i64, ptr %arrayidx.i, align 8
  %rem.i = and i32 %11, 63
  %sh_prom.i = zext nneg i32 %rem.i to i64
  %14 = shl nuw i64 1, %sh_prom.i
  %15 = and i64 %13, %14
  %tobool1.not.i = icmp eq i64 %15, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %SET_BIT.exit

if.then2.i:                                       ; preds = %if.then.i
  %arrayidx6.i = getelementptr inbounds nuw i8, ptr %12, i64 %idxprom.i
  %16 = load i8, ptr %arrayidx6.i, align 1
  %inc.i = add i8 %16, 1
  store i8 %inc.i, ptr %arrayidx6.i, align 1
  br label %SET_BIT.exit

SET_BIT.exit:                                     ; preds = %if.then2.i, %if.then.i, %for.body
  %rem8.i = and i32 %11, 63
  %sh_prom9.i = zext nneg i32 %rem8.i to i64
  %shl.i = shl nuw i64 1, %sh_prom9.i
  %div1123.i = lshr i32 %11, 6
  %idxprom12.i = zext nneg i32 %div1123.i to i64
  %arrayidx13.i = getelementptr inbounds nuw i64, ptr %elms10.i, i64 %idxprom12.i
  %17 = load i64, ptr %arrayidx13.i, align 8
  %or.i = or i64 %17, %shl.i
  store i64 %or.i, ptr %arrayidx13.i, align 8
  %bb.0.val = load ptr, ptr %bb.0303, align 8
  %tobool.not.i198 = icmp eq ptr %bb.0.val, null
  br i1 %tobool.not.i198, label %if.else, label %single_pred_p.exit

single_pred_p.exit:                               ; preds = %SET_BIT.exit
  %18 = load i32, ptr %bb.0.val, align 8
  %.not = icmp eq i32 %18, 1
  br i1 %.not, label %single_pred_p.exit.i.i, label %if.else

single_pred_p.exit.i.i:                           ; preds = %single_pred_p.exit
  %19 = load i32, ptr %bb.0.val, align 8
  %.not.i.i = icmp eq i32 %19, 1
  br i1 %.not.i.i, label %single_pred_p.exit.i.i202, label %cond.true.i.i199

cond.true.i.i199:                                 ; preds = %single_pred_p.exit.i.i
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 655, ptr noundef nonnull @.str.8) #7
  br label %single_pred_p.exit.i.i202

single_pred_p.exit.i.i202:                        ; preds = %cond.true.i.i199, %single_pred_p.exit.i.i
  %20 = load ptr, ptr %bb.0303, align 8
  %vec.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  %21 = load ptr, ptr %vec.i.i.i, align 8
  %22 = load ptr, ptr %21, align 8
  %index15 = getelementptr inbounds nuw i8, ptr %22, i64 80
  %23 = load i32, ptr %index15, align 8
  %div196 = lshr i32 %23, 6
  %idxprom = zext nneg i32 %div196 to i64
  %arrayidx = getelementptr inbounds nuw i64, ptr %elms10.i, i64 %idxprom
  %24 = load i64, ptr %arrayidx, align 8
  %25 = load i32, ptr %20, align 8
  %.not.i.i203 = icmp eq i32 %25, 1
  br i1 %.not.i.i203, label %single_pred.exit206, label %cond.true.i.i204

cond.true.i.i204:                                 ; preds = %single_pred_p.exit.i.i202
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 655, ptr noundef nonnull @.str.8) #7
  br label %single_pred.exit206

single_pred.exit206:                              ; preds = %cond.true.i.i204, %single_pred_p.exit.i.i202
  %26 = load ptr, ptr %bb.0303, align 8
  %vec.i.i.i205 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %27 = load ptr, ptr %vec.i.i.i205, align 8
  %28 = load ptr, ptr %27, align 8
  %index17 = getelementptr inbounds nuw i8, ptr %28, i64 80
  %29 = load i32, ptr %index17, align 8
  %rem = and i32 %29, 63
  %sh_prom = zext nneg i32 %rem to i64
  %30 = shl nuw i64 1, %sh_prom
  %31 = and i64 %30, %24
  %tobool18.not = icmp eq i64 %31, 0
  br i1 %tobool18.not, label %if.else, label %single_pred_p.exit.i

single_pred_p.exit.i:                             ; preds = %single_pred.exit206
  %32 = load i32, ptr %26, align 8
  %.not.i = icmp eq i32 %32, 1
  br i1 %.not.i, label %single_pred_edge.exit, label %cond.true.i

cond.true.i:                                      ; preds = %single_pred_p.exit.i
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 655, ptr noundef nonnull @.str.8) #7
  br label %single_pred_edge.exit

single_pred_edge.exit:                            ; preds = %cond.true.i, %single_pred_p.exit.i
  %33 = load ptr, ptr %bb.0303, align 8
  %vec.i.i = getelementptr inbounds nuw i8, ptr %33, i64 8
  %34 = load ptr, ptr %vec.i.i, align 8
  %flags = getelementptr inbounds nuw i8, ptr %34, i64 48
  %35 = load i32, ptr %flags, align 8
  %and21 = and i32 %35, 12
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %single_pred_p.exit.i.i209, label %if.else

single_pred_p.exit.i.i209:                        ; preds = %single_pred_edge.exit
  %36 = load i32, ptr %index, align 8
  %idxprom25 = sext i32 %36 to i64
  %arrayidx26 = getelementptr inbounds %struct.value_data, ptr %call, i64 %idxprom25
  %37 = load i32, ptr %33, align 8
  %.not.i.i210 = icmp eq i32 %37, 1
  br i1 %.not.i.i210, label %single_pred.exit213, label %cond.true.i.i211

cond.true.i.i211:                                 ; preds = %single_pred_p.exit.i.i209
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 655, ptr noundef nonnull @.str.8) #7
  br label %single_pred.exit213

single_pred.exit213:                              ; preds = %cond.true.i.i211, %single_pred_p.exit.i.i209
  %38 = load ptr, ptr %bb.0303, align 8
  %vec.i.i.i212 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %39 = load ptr, ptr %vec.i.i.i212, align 8
  %40 = load ptr, ptr %39, align 8
  %index28 = getelementptr inbounds nuw i8, ptr %40, i64 80
  %41 = load i32, ptr %index28, align 8
  %idxprom29 = sext i32 %41 to i64
  %arrayidx30 = getelementptr inbounds %struct.value_data, ptr %call, i64 %idxprom29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %arrayidx26, ptr noundef nonnull align 8 dereferenceable(1280) %arrayidx30, i64 1280, i1 false)
  %42 = load i32, ptr %index, align 8
  %idxprom32 = sext i32 %42 to i64
  %arrayidx33 = getelementptr inbounds %struct.value_data, ptr %call, i64 %idxprom32
  %n_debug_insn_changes = getelementptr inbounds nuw i8, ptr %arrayidx33, i64 1276
  %43 = load i32, ptr %n_debug_insn_changes, align 4
  %tobool34.not = icmp eq i32 %43, 0
  br i1 %tobool34.not, label %if.end66, label %for.body39.preheader

for.body39.preheader:                             ; preds = %single_pred.exit213
  br label %for.body39

for.body39:                                       ; preds = %for.body39.backedge, %for.body39.preheader
  %regno.0297 = phi i32 [ 0, %for.body39.preheader ], [ %regno.0297.be, %for.body39.backedge ]
  %44 = load i32, ptr %index, align 8
  %idxprom41 = sext i32 %44 to i64
  %arrayidx42 = getelementptr inbounds %struct.value_data, ptr %call, i64 %idxprom41
  %idxprom43 = zext nneg i32 %regno.0297 to i64
  %arrayidx44 = getelementptr inbounds nuw %struct.value_data_entry, ptr %arrayidx42, i64 %idxprom43
  %debug_insn_changes = getelementptr inbounds nuw i8, ptr %arrayidx44, i64 16
  %45 = load ptr, ptr %debug_insn_changes, align 8
  %tobool45.not = icmp eq ptr %45, null
  br i1 %tobool45.not, label %for.inc, label %if.then46

if.then46:                                        ; preds = %for.body39
  store ptr null, ptr %debug_insn_changes, align 8
  %46 = load i32, ptr %index, align 8
  %idxprom55 = sext i32 %46 to i64
  %arrayidx56 = getelementptr inbounds %struct.value_data, ptr %call, i64 %idxprom55
  %n_debug_insn_changes57 = getelementptr inbounds nuw i8, ptr %arrayidx56, i64 1276
  %47 = load i32, ptr %n_debug_insn_changes57, align 4
  %dec = add i32 %47, -1
  store i32 %dec, ptr %n_debug_insn_changes57, align 4
  %cmp58 = icmp ne i32 %dec, 0
  %inc = add nuw nsw i32 %regno.0297, 1
  %cmp37 = icmp ult i32 %regno.0297, 52
  %or.cond = and i1 %cmp58, %cmp37
  br i1 %or.cond, label %for.body39.backedge, label %if.end66.loopexit

for.inc:                                          ; preds = %for.body39
  %inc.old = add nuw nsw i32 %regno.0297, 1
  %cmp37.old = icmp ult i32 %regno.0297, 52
  br i1 %cmp37.old, label %for.body39.backedge, label %if.end66.loopexit

for.body39.backedge:                              ; preds = %for.inc, %if.then46
  %regno.0297.be = phi i32 [ %inc.old, %for.inc ], [ %inc, %if.then46 ]
  br label %for.body39, !llvm.loop !0

if.else:                                          ; preds = %single_pred_edge.exit, %single_pred.exit206, %single_pred_p.exit, %SET_BIT.exit
  %48 = load i32, ptr %index, align 8
  %idx.ext = sext i32 %48 to i64
  %add.ptr65 = getelementptr inbounds %struct.value_data, ptr %call, i64 %idx.ext
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.else
  %indvars.iv.i = phi i64 [ 0, %if.else ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx.i214 = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr65, i64 %indvars.iv.i
  store i32 0, ptr %arrayidx.i214, align 8
  %oldest_regno.i = getelementptr inbounds nuw i8, ptr %arrayidx.i214, i64 4
  %49 = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %49, ptr %oldest_regno.i, align 4
  %next_regno.i = getelementptr inbounds nuw i8, ptr %arrayidx.i214, i64 8
  store i32 -1, ptr %next_regno.i, align 8
  %debug_insn_changes.i = getelementptr inbounds nuw i8, ptr %arrayidx.i214, i64 16
  store ptr null, ptr %debug_insn_changes.i, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 53
  br i1 %exitcond.not.i, label %init_value_data.exit, label %for.body.i, !llvm.loop !2

init_value_data.exit:                             ; preds = %for.body.i
  %max_value_regs.i = getelementptr inbounds nuw i8, ptr %add.ptr65, i64 1272
  store i32 0, ptr %max_value_regs.i, align 8
  %n_debug_insn_changes.i = getelementptr inbounds nuw i8, ptr %add.ptr65, i64 1276
  store i32 0, ptr %n_debug_insn_changes.i, align 4
  br label %if.end66

if.end66.loopexit:                                ; preds = %for.inc, %if.then46
  br label %if.end66

if.end66:                                         ; preds = %if.end66.loopexit, %init_value_data.exit, %single_pred.exit213
  %50 = load i32, ptr %index, align 8
  %idx.ext68 = sext i32 %50 to i64
  %add.ptr69 = getelementptr inbounds %struct.value_data, ptr %call, i64 %idx.ext68
  %il.i = getelementptr inbounds nuw i8, ptr %bb.0303, i64 64
  %51 = load ptr, ptr %il.i, align 8
  %n_debug_insn_changes.i215 = getelementptr inbounds nuw i8, ptr %add.ptr69, i64 1276
  %max_value_regs.i801.i = getelementptr inbounds nuw i8, ptr %add.ptr69, i64 1272
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc525.i, %if.end66
  %insn.0.in.i = phi ptr [ %51, %if.end66 ], [ %arrayidx527.i, %for.inc525.i ]
  %insn.0.i = load ptr, ptr %insn.0.in.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %replaced.i) #7
  %bf.load.i = load i32, ptr %insn.0.i, align 8
  %bf.clear.i = and i32 %bf.load.i, 65535
  %bf.clear.off.i = add nsw i32 %bf.clear.i, -7
  %switch.i = icmp ult i32 %bf.clear.off.i, 4
  %52 = icmp eq i32 %bf.clear.i, 7
  br i1 %switch.i, label %land.lhs.true.i, label %if.then.i216

land.lhs.true.i:                                  ; preds = %for.cond.i
  br i1 %52, label %if.then18.i, label %cond.true.i218

if.then.i216:                                     ; preds = %for.cond.i
  br i1 %52, label %if.then18.i, label %if.end35.i

if.then18.i:                                      ; preds = %if.then.i216, %land.lhs.true.i
  %arrayidx.i217 = getelementptr inbounds nuw i8, ptr %insn.0.i, i64 48
  %53 = load ptr, ptr %arrayidx.i217, align 8
  %arrayidx20.i = getelementptr inbounds nuw i8, ptr %53, i64 16
  %54 = load ptr, ptr %arrayidx20.i, align 8
  %bf.load21.i = load i32, ptr %54, align 8
  %bf.clear22.i = and i32 %bf.load21.i, 65535
  %cmp23.i = icmp eq i32 %bf.clear22.i, 25
  br i1 %cmp23.i, label %land.lhs.true24.i, label %if.then28.i

land.lhs.true24.i:                                ; preds = %if.then18.i
  %u25.i = getelementptr inbounds nuw i8, ptr %54, i64 8
  %55 = load ptr, ptr %u25.i, align 8
  %56 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @const_int_rtx, i64 512), align 16
  %cmp27.i = icmp eq ptr %55, %56
  br i1 %cmp27.i, label %if.end35.i, label %if.then28.i

if.then28.i:                                      ; preds = %land.lhs.true24.i, %if.then18.i
  %bf.lshr.i = lshr i32 %bf.load21.i, 16
  %bf.clear34.i = and i32 %bf.lshr.i, 255
  %call.i = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef nonnull %arrayidx20.i, i32 noundef 26, i32 noundef %bf.clear34.i, ptr noundef nonnull %insn.0.i, ptr noundef %add.ptr69)
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then28.i, %land.lhs.true24.i, %if.then.i216
  %57 = load ptr, ptr %il.i, align 8
  %end_.i = getelementptr inbounds nuw i8, ptr %57, i64 8
  %58 = load ptr, ptr %end_.i, align 8
  %cmp37.i = icmp eq ptr %insn.0.i, %58
  br i1 %cmp37.i, label %copyprop_hardreg_forward_1.exit, label %for.inc525.i

cond.true.i218:                                   ; preds = %land.lhs.true.i
  %arrayidx56.i = getelementptr inbounds nuw i8, ptr %insn.0.i, i64 48
  %59 = load ptr, ptr %arrayidx56.i, align 8
  %bf.load57.i = load i32, ptr %59, align 8
  %bf.clear58.i = and i32 %bf.load57.i, 65535
  %cmp59.i = icmp eq i32 %bf.clear58.i, 23
  br i1 %cmp59.i, label %cond.end67.i, label %cond.false.i

cond.false.i:                                     ; preds = %cond.true.i218
  %call65.i = tail call ptr @single_set_2(ptr noundef nonnull %insn.0.i, ptr noundef nonnull %59) #7
  br label %cond.end67.i

cond.end67.i:                                     ; preds = %cond.false.i, %cond.true.i218
  %cond68.i = phi ptr [ %call65.i, %cond.false.i ], [ %59, %cond.true.i218 ]
  tail call void @extract_insn(ptr noundef nonnull %insn.0.i) #7
  %call69.i = tail call i32 @constrain_operands(i32 noundef 1) #7
  %tobool.not.i219 = icmp eq i32 %call69.i, 0
  br i1 %tobool.not.i219, label %if.then70.i, label %if.end71.i

if.then70.i:                                      ; preds = %cond.end67.i
  tail call void @_fatal_insn_not_found(ptr noundef nonnull %insn.0.i, ptr noundef nonnull @.str.9, i32 noundef 767, ptr noundef nonnull @.str.8) #7
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then70.i, %cond.end67.i
  tail call void @preprocess_constraints() #7
  %60 = load i32, ptr @which_alternative, align 4
  %61 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1086), align 2
  %conv.i = sext i8 %61 to i32
  %u72.i = getelementptr inbounds nuw i8, ptr %insn.0.i, i64 8
  %62 = load ptr, ptr %arrayidx56.i, align 8
  %call74.i = tail call i32 @asm_noperands(ptr noundef %62) #7
  %cmp75.i = icmp sgt i32 %call74.i, -1
  %63 = load ptr, ptr %arrayidx56.i, align 8
  %bf.load80.i = load i32, ptr %63, align 8
  %bf.clear81.i = and i32 %bf.load80.i, 65535
  %cmp82.i = icmp eq i32 %bf.clear81.i, 14
  %cmp85993.i = icmp sgt i8 %61, 0
  br i1 %cmp85993.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end71.i
  %idxprom88.i = sext i32 %60 to i64
  %invariant.gep.i = getelementptr %struct.operand_alternative, ptr @recog_op_alt, i64 %idxprom88.i
  %wide.trip.count.i = zext nneg i32 %conv.i to i64
  br label %for.body.i224

for.body.i224:                                    ; preds = %if.end123.i, %for.body.lr.ph.i
  %indvars.iv.i225 = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i226, %if.end123.i ]
  %gep.i = getelementptr [30 x %struct.operand_alternative], ptr %invariant.gep.i, i64 %indvars.iv.i225
  %matches90.i = getelementptr inbounds nuw i8, ptr %gep.i, i64 16
  %64 = load i32, ptr %matches90.i, align 16
  %cmp91.i = icmp sgt i32 %64, -1
  br i1 %cmp91.i, label %if.then93.i, label %lor.lhs.false106.i

if.then93.i:                                      ; preds = %for.body.i224
  %idxprom94.i = zext nneg i32 %64 to i64
  %gep996.i = getelementptr [30 x %struct.operand_alternative], ptr %invariant.gep.i, i64 %idxprom94.i
  %cl.i = getelementptr inbounds nuw i8, ptr %gep996.i, i64 8
  %65 = load i32, ptr %cl.i, align 8
  %cl102.i = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  store i32 %65, ptr %cl102.i, align 8
  br label %if.then120.i

lor.lhs.false106.i:                               ; preds = %for.body.i224
  %matched.i = getelementptr inbounds nuw i8, ptr %gep.i, i64 20
  %66 = load i32, ptr %matched.i, align 4
  %cmp111.i = icmp sgt i32 %66, -1
  br i1 %cmp111.i, label %if.then120.i, label %lor.lhs.false113.i

lor.lhs.false113.i:                               ; preds = %lor.lhs.false106.i
  br i1 %cmp82.i, label %land.lhs.true115.i, label %if.end123.i

land.lhs.true115.i:                               ; preds = %lor.lhs.false113.i
  %arrayidx117.i = getelementptr inbounds nuw i32, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 840), i64 %indvars.iv.i225
  %67 = load i32, ptr %arrayidx117.i, align 4
  %cmp118.i = icmp eq i32 %67, 1
  br i1 %cmp118.i, label %if.then120.i, label %if.end123.i

if.then120.i:                                     ; preds = %land.lhs.true115.i, %lor.lhs.false106.i, %if.then93.i
  %arrayidx122.i = getelementptr inbounds nuw i32, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 840), i64 %indvars.iv.i225
  store i32 2, ptr %arrayidx122.i, align 4
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then120.i, %land.lhs.true115.i, %lor.lhs.false113.i
  %indvars.iv.next.i226 = add nuw nsw i64 %indvars.iv.i225, 1
  %exitcond.not.i227 = icmp eq i64 %indvars.iv.next.i226, %wide.trip.count.i
  br i1 %exitcond.not.i227, label %for.end.i.loopexit, label %for.body.i224, !llvm.loop !3

for.end.i.loopexit:                               ; preds = %if.end123.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %if.end71.i
  %68 = load i32, ptr %n_debug_insn_changes.i215, align 4
  %tobool124.not.i = icmp eq i32 %68, 0
  br i1 %tobool124.not.i, label %if.end128.i, label %if.then125.i

if.then125.i:                                     ; preds = %for.end.i
  tail call void @note_uses(ptr noundef nonnull %arrayidx56.i, ptr noundef nonnull @cprop_find_used_regs, ptr noundef nonnull %add.ptr69) #7
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then125.i, %for.end.i
  br i1 %cmp85993.i, label %for.body132.lr.ph.i, label %for.end171.critedge.i

for.body132.lr.ph.i:                              ; preds = %if.end128.i
  %idxprom135.i = sext i32 %60 to i64
  %invariant.gep999.i = getelementptr %struct.operand_alternative, ptr @recog_op_alt, i64 %idxprom135.i
  %wide.trip.count1023.i = zext nneg i32 %conv.i to i64
  br label %for.body132.i

for.body132.i:                                    ; preds = %for.inc144.i, %for.body132.lr.ph.i
  %indvars.iv1020.i = phi i64 [ 0, %for.body132.lr.ph.i ], [ %indvars.iv.next1021.i, %for.inc144.i ]
  %gep1000.i = getelementptr [30 x %struct.operand_alternative], ptr %invariant.gep999.i, i64 %indvars.iv1020.i
  %earlyclobber.i = getelementptr inbounds nuw i8, ptr %gep1000.i, i64 24
  %bf.load137.i = load i8, ptr %earlyclobber.i, align 8
  %bf.clear138.i = and i8 %bf.load137.i, 1
  %tobool139.not.i = icmp eq i8 %bf.clear138.i, 0
  br i1 %tobool139.not.i, label %for.inc144.i, label %if.then140.i

if.then140.i:                                     ; preds = %for.body132.i
  %arrayidx142.i = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv1020.i
  %69 = load ptr, ptr %arrayidx142.i, align 8
  %bf.load.i.i = load i32, ptr %69, align 8
  %bf.clear.i.i = and i32 %bf.load.i.i, 65535
  %cmp.i.i = icmp eq i32 %bf.clear.i.i, 39
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end14.i.i

if.then.i.i:                                      ; preds = %if.then140.i
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 16
  %bf.clear2.i.i = and i32 %bf.lshr.i.i, 255
  %u.i.i = getelementptr inbounds nuw i8, ptr %69, i64 8
  %70 = load ptr, ptr %u.i.i, align 8
  %bf.load5.i.i = load i32, ptr %70, align 8
  %bf.lshr6.i.i = lshr i32 %bf.load5.i.i, 16
  %bf.clear7.i.i = and i32 %bf.lshr6.i.i, 255
  %arrayidx9.i.i = getelementptr inbounds nuw i8, ptr %69, i64 16
  %71 = load i32, ptr %arrayidx9.i.i, align 8
  %call.i.i = tail call ptr @simplify_subreg(i32 noundef %bf.clear2.i.i, ptr noundef %70, i32 noundef %bf.clear7.i.i, i32 noundef %71) #7
  %cmp10.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.end14.i.i

if.then11.i.i:                                    ; preds = %if.then.i.i
  %72 = load ptr, ptr %u.i.i, align 8
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then11.i.i, %if.then.i.i, %if.then140.i
  %x.addr.0.i.i = phi ptr [ %72, %if.then11.i.i ], [ %call.i.i, %if.then.i.i ], [ %69, %if.then140.i ]
  %bf.load15.i.i = load i32, ptr %x.addr.0.i.i, align 8
  %bf.clear16.i.i = and i32 %bf.load15.i.i, 65535
  %cmp17.i.i = icmp eq i32 %bf.clear16.i.i, 37
  br i1 %cmp17.i.i, label %if.then18.i.i, label %for.inc144.i

if.then18.i.i:                                    ; preds = %if.end14.i.i
  %73 = getelementptr i8, ptr %x.addr.0.i.i, i64 8
  %x.addr.0.val.i.i = load i32, ptr %73, align 8
  %idxprom.i.i = zext i32 %x.addr.0.val.i.i to i64
  %arrayidx20.i.i = getelementptr inbounds nuw [87 x i8], ptr @hard_regno_nregs, i64 %idxprom.i.i
  %bf.lshr22.i.i = lshr i32 %bf.load15.i.i, 16
  %bf.clear23.i.i = and i32 %bf.lshr22.i.i, 255
  %idxprom24.i.i = zext nneg i32 %bf.clear23.i.i to i64
  %arrayidx25.i.i = getelementptr inbounds nuw i8, ptr %arrayidx20.i.i, i64 %idxprom24.i.i
  %74 = load i8, ptr %arrayidx25.i.i, align 1
  %cmp91.not.i.i = icmp eq i8 %74, 0
  br i1 %cmp91.not.i.i, label %for.end.i800.i, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then18.i.i
  %wide.trip.count.i.i = zext i8 %74 to i64
  br label %for.body.i772.i

for.body.i772.i:                                  ; preds = %kill_value_one_regno.exit.i797.i, %for.body.lr.ph.i.i
  %indvars.iv.i773.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i798.i, %kill_value_one_regno.exit.i797.i ]
  %75 = trunc nuw nsw i64 %indvars.iv.i773.i to i32
  %add.i774.i = add i32 %x.addr.0.val.i.i, %75
  %idxprom.i.i775.i = zext i32 %add.i774.i to i64
  %arrayidx.i.i776.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom.i.i775.i
  %oldest_regno.i.i777.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i776.i, i64 4
  %76 = load i32, ptr %oldest_regno.i.i777.i, align 4
  %cmp.not.i.i778.i = icmp eq i32 %76, %add.i774.i
  br i1 %cmp.not.i.i778.i, label %if.else.i.i864.i, label %for.cond.i.i779.i.preheader

for.cond.i.i779.i.preheader:                      ; preds = %for.body.i772.i
  br label %for.cond.i.i779.i

for.cond.i.i779.i:                                ; preds = %for.cond.i.i779.i, %for.cond.i.i779.i.preheader
  %i.0.i.i780.i = phi i32 [ %77, %for.cond.i.i779.i ], [ %76, %for.cond.i.i779.i.preheader ]
  %idxprom6.i.i781.i = zext i32 %i.0.i.i780.i to i64
  %arrayidx7.i.i782.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom6.i.i781.i
  %next_regno.i.i783.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i.i782.i, i64 8
  %77 = load i32, ptr %next_regno.i.i783.i, align 8
  %cmp8.not.i.i784.i = icmp eq i32 %77, %add.i774.i
  br i1 %cmp8.not.i.i784.i, label %for.end.i.i785.i, label %for.cond.i.i779.i, !llvm.loop !4

for.end.i.i785.i:                                 ; preds = %for.cond.i.i779.i
  %arrayidx7.i.i782.i.lcssa = phi ptr [ %arrayidx7.i.i782.i, %for.cond.i.i779.i ]
  %next_regno.i.i783.i.le = getelementptr inbounds nuw i8, ptr %arrayidx7.i.i782.i.lcssa, i64 8
  %next_regno16.i.i787.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i776.i, i64 8
  %78 = load i32, ptr %next_regno16.i.i787.i, align 8
  store i32 %78, ptr %next_regno.i.i783.i.le, align 8
  br label %if.end40.i.i788.i

if.else.i.i864.i:                                 ; preds = %for.body.i772.i
  %next_regno24.i.i865.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i776.i, i64 8
  %79 = load i32, ptr %next_regno24.i.i865.i, align 8
  %cmp25.not.i.i866.i = icmp eq i32 %79, -1
  br i1 %cmp25.not.i.i866.i, label %if.end40.i.i788.i, label %for.body29.i.i867.i.preheader

for.body29.i.i867.i.preheader:                    ; preds = %if.else.i.i864.i
  br label %for.body29.i.i867.i

for.body29.i.i867.i:                              ; preds = %for.body29.i.i867.i, %for.body29.i.i867.i.preheader
  %i.189.i.i868.i = phi i32 [ %80, %for.body29.i.i867.i ], [ %79, %for.body29.i.i867.i.preheader ]
  %idxprom31.i.i869.i = zext i32 %i.189.i.i868.i to i64
  %arrayidx32.i.i870.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom31.i.i869.i
  %oldest_regno33.i.i871.i = getelementptr inbounds nuw i8, ptr %arrayidx32.i.i870.i, i64 4
  store i32 %79, ptr %oldest_regno33.i.i871.i, align 4
  %next_regno38.i.i872.i = getelementptr inbounds nuw i8, ptr %arrayidx32.i.i870.i, i64 8
  %80 = load i32, ptr %next_regno38.i.i872.i, align 8
  %cmp28.not.i.i873.i = icmp eq i32 %80, -1
  br i1 %cmp28.not.i.i873.i, label %if.end40.i.i788.i.loopexit, label %for.body29.i.i867.i, !llvm.loop !5

if.end40.i.i788.i.loopexit:                       ; preds = %for.body29.i.i867.i
  br label %if.end40.i.i788.i

if.end40.i.i788.i:                                ; preds = %if.end40.i.i788.i.loopexit, %if.else.i.i864.i, %for.end.i.i785.i
  store i32 0, ptr %arrayidx.i.i776.i, align 8
  store i32 %add.i774.i, ptr %oldest_regno.i.i777.i, align 4
  %next_regno51.i.i789.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i776.i, i64 8
  store i32 -1, ptr %next_regno51.i.i789.i, align 8
  %debug_insn_changes.i.i790.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i776.i, i64 16
  %81 = load ptr, ptr %debug_insn_changes.i.i790.i, align 8
  %tobool.not.i.i791.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i791.i, label %kill_value_one_regno.exit.i797.i, label %for.body.i.i.i792.i.preheader

for.body.i.i.i792.i.preheader:                    ; preds = %if.end40.i.i788.i
  br label %for.body.i.i.i792.i

for.body.i.i.i792.i:                              ; preds = %for.body.i.i.i792.i, %for.body.i.i.i792.i.preheader
  %cur.012.i.i.i793.i = phi ptr [ %82, %for.body.i.i.i792.i ], [ %81, %for.body.i.i.i792.i.preheader ]
  %82 = load ptr, ptr %cur.012.i.i.i793.i, align 8
  %83 = load i32, ptr %n_debug_insn_changes.i215, align 4
  %dec.i.i.i794.i = add i32 %83, -1
  store i32 %dec.i.i.i794.i, ptr %n_debug_insn_changes.i215, align 4
  %84 = load ptr, ptr @debug_insn_changes_pool, align 8
  tail call void @pool_free(ptr noundef %84, ptr noundef nonnull %cur.012.i.i.i793.i) #7
  %tobool.not.i.i.i795.i = icmp eq ptr %82, null
  br i1 %tobool.not.i.i.i795.i, label %free_debug_insn_changes.exit.i.i796.i, label %for.body.i.i.i792.i, !llvm.loop !6

free_debug_insn_changes.exit.i.i796.i:            ; preds = %for.body.i.i.i792.i
  store ptr null, ptr %debug_insn_changes.i.i790.i, align 8
  br label %kill_value_one_regno.exit.i797.i

kill_value_one_regno.exit.i797.i:                 ; preds = %free_debug_insn_changes.exit.i.i796.i, %if.end40.i.i788.i
  %indvars.iv.next.i798.i = add nuw nsw i64 %indvars.iv.i773.i, 1
  %exitcond.not.i799.i = icmp eq i64 %indvars.iv.next.i798.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i799.i, label %for.end.i800.i.loopexit, label %for.body.i772.i, !llvm.loop !7

for.end.i800.i.loopexit:                          ; preds = %kill_value_one_regno.exit.i797.i
  br label %for.end.i800.i

for.end.i800.i:                                   ; preds = %for.end.i800.i.loopexit, %if.then18.i.i
  %85 = load i32, ptr %max_value_regs.i801.i, align 8
  %j.1.i802.i = tail call i32 @llvm.usub.sat.i32(i32 %x.addr.0.val.i.i, i32 %85)
  %cmp495.i803.i = icmp ult i32 %j.1.i802.i, %x.addr.0.val.i.i
  br i1 %cmp495.i803.i, label %for.body5.lr.ph.i804.i, label %for.inc144.i

for.body5.lr.ph.i804.i:                           ; preds = %for.end.i800.i
  %86 = zext i32 %j.1.i802.i to i64
  br label %for.body5.i807.i

for.body5.i807.i:                                 ; preds = %cleanup.i821.i, %for.body5.lr.ph.i804.i
  %indvars.iv103.i808.i = phi i64 [ %86, %for.body5.lr.ph.i804.i ], [ %indvars.iv.next104.i822.i, %cleanup.i821.i ]
  %indvars105.i809.i = trunc i64 %indvars.iv103.i808.i to i32
  %arrayidx.i810.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %indvars.iv103.i808.i
  %87 = load i32, ptr %arrayidx.i810.i, align 8
  %cmp6.i811.i = icmp eq i32 %87, 0
  br i1 %cmp6.i811.i, label %cleanup.i821.i, label %if.end8.i812.i

if.end8.i812.i:                                   ; preds = %for.body5.i807.i
  %arrayidx10.i813.i = getelementptr inbounds nuw [87 x i8], ptr @hard_regno_nregs, i64 %indvars.iv103.i808.i
  %idxprom15.i814.i = zext i32 %87 to i64
  %arrayidx16.i815.i = getelementptr inbounds nuw i8, ptr %arrayidx10.i813.i, i64 %idxprom15.i814.i
  %88 = load i8, ptr %arrayidx16.i815.i, align 1
  %conv.i816.i = zext i8 %88 to i32
  %add17.i817.i = add i32 %conv.i816.i, %indvars105.i809.i
  %cmp18.i818.i = icmp ugt i32 %add17.i817.i, %x.addr.0.val.i.i
  %cmp2293.i819.i = icmp ne i8 %88, 0
  %or.cond.i820.i = and i1 %cmp2293.i819.i, %cmp18.i818.i
  br i1 %or.cond.i820.i, label %for.body24.preheader.i824.i, label %cleanup.i821.i

for.body24.preheader.i824.i:                      ; preds = %if.end8.i812.i
  %wide.trip.count101.i825.i = zext i8 %88 to i64
  br label %for.body24.i826.i

for.body24.i826.i:                                ; preds = %kill_value_one_regno.exit90.i851.i, %for.body24.preheader.i824.i
  %indvars.iv98.i827.i = phi i64 [ 0, %for.body24.preheader.i824.i ], [ %indvars.iv.next99.i852.i, %kill_value_one_regno.exit90.i851.i ]
  %89 = trunc nuw nsw i64 %indvars.iv98.i827.i to i32
  %add25.i828.i = add i32 %89, %indvars105.i809.i
  %idxprom.i56.i829.i = zext i32 %add25.i828.i to i64
  %arrayidx.i57.i830.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom.i56.i829.i
  %oldest_regno.i58.i831.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i830.i, i64 4
  %90 = load i32, ptr %oldest_regno.i58.i831.i, align 4
  %cmp.not.i59.i832.i = icmp eq i32 %90, %add25.i828.i
  br i1 %cmp.not.i59.i832.i, label %if.else.i80.i854.i, label %for.cond.i60.i833.i.preheader

for.cond.i60.i833.i.preheader:                    ; preds = %for.body24.i826.i
  br label %for.cond.i60.i833.i

for.cond.i60.i833.i:                              ; preds = %for.cond.i60.i833.i, %for.cond.i60.i833.i.preheader
  %i.0.i61.i834.i = phi i32 [ %91, %for.cond.i60.i833.i ], [ %90, %for.cond.i60.i833.i.preheader ]
  %idxprom6.i62.i835.i = zext i32 %i.0.i61.i834.i to i64
  %arrayidx7.i63.i836.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom6.i62.i835.i
  %next_regno.i64.i837.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i63.i836.i, i64 8
  %91 = load i32, ptr %next_regno.i64.i837.i, align 8
  %cmp8.not.i65.i838.i = icmp eq i32 %91, %add25.i828.i
  br i1 %cmp8.not.i65.i838.i, label %for.end.i66.i839.i, label %for.cond.i60.i833.i, !llvm.loop !4

for.end.i66.i839.i:                               ; preds = %for.cond.i60.i833.i
  %arrayidx7.i63.i836.i.lcssa = phi ptr [ %arrayidx7.i63.i836.i, %for.cond.i60.i833.i ]
  %next_regno.i64.i837.i.le = getelementptr inbounds nuw i8, ptr %arrayidx7.i63.i836.i.lcssa, i64 8
  %next_regno16.i68.i841.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i830.i, i64 8
  %92 = load i32, ptr %next_regno16.i68.i841.i, align 8
  store i32 %92, ptr %next_regno.i64.i837.i.le, align 8
  br label %if.end40.i69.i842.i

if.else.i80.i854.i:                               ; preds = %for.body24.i826.i
  %next_regno24.i81.i855.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i830.i, i64 8
  %93 = load i32, ptr %next_regno24.i81.i855.i, align 8
  %cmp25.not.i82.i856.i = icmp eq i32 %93, -1
  br i1 %cmp25.not.i82.i856.i, label %if.end40.i69.i842.i, label %for.body29.i83.i857.i.preheader

for.body29.i83.i857.i.preheader:                  ; preds = %if.else.i80.i854.i
  br label %for.body29.i83.i857.i

for.body29.i83.i857.i:                            ; preds = %for.body29.i83.i857.i, %for.body29.i83.i857.i.preheader
  %i.189.i84.i858.i = phi i32 [ %94, %for.body29.i83.i857.i ], [ %93, %for.body29.i83.i857.i.preheader ]
  %idxprom31.i85.i859.i = zext i32 %i.189.i84.i858.i to i64
  %arrayidx32.i86.i860.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom31.i85.i859.i
  %oldest_regno33.i87.i861.i = getelementptr inbounds nuw i8, ptr %arrayidx32.i86.i860.i, i64 4
  store i32 %93, ptr %oldest_regno33.i87.i861.i, align 4
  %next_regno38.i88.i862.i = getelementptr inbounds nuw i8, ptr %arrayidx32.i86.i860.i, i64 8
  %94 = load i32, ptr %next_regno38.i88.i862.i, align 8
  %cmp28.not.i89.i863.i = icmp eq i32 %94, -1
  br i1 %cmp28.not.i89.i863.i, label %if.end40.i69.i842.i.loopexit, label %for.body29.i83.i857.i, !llvm.loop !5

if.end40.i69.i842.i.loopexit:                     ; preds = %for.body29.i83.i857.i
  br label %if.end40.i69.i842.i

if.end40.i69.i842.i:                              ; preds = %if.end40.i69.i842.i.loopexit, %if.else.i80.i854.i, %for.end.i66.i839.i
  store i32 0, ptr %arrayidx.i57.i830.i, align 8
  store i32 %add25.i828.i, ptr %oldest_regno.i58.i831.i, align 4
  %next_regno51.i70.i843.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i830.i, i64 8
  store i32 -1, ptr %next_regno51.i70.i843.i, align 8
  %debug_insn_changes.i71.i844.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i830.i, i64 16
  %95 = load ptr, ptr %debug_insn_changes.i71.i844.i, align 8
  %tobool.not.i72.i845.i = icmp eq ptr %95, null
  br i1 %tobool.not.i72.i845.i, label %kill_value_one_regno.exit90.i851.i, label %for.body.i.i75.i846.i.preheader

for.body.i.i75.i846.i.preheader:                  ; preds = %if.end40.i69.i842.i
  br label %for.body.i.i75.i846.i

for.body.i.i75.i846.i:                            ; preds = %for.body.i.i75.i846.i, %for.body.i.i75.i846.i.preheader
  %cur.012.i.i76.i847.i = phi ptr [ %96, %for.body.i.i75.i846.i ], [ %95, %for.body.i.i75.i846.i.preheader ]
  %96 = load ptr, ptr %cur.012.i.i76.i847.i, align 8
  %97 = load i32, ptr %n_debug_insn_changes.i215, align 4
  %dec.i.i77.i848.i = add i32 %97, -1
  store i32 %dec.i.i77.i848.i, ptr %n_debug_insn_changes.i215, align 4
  %98 = load ptr, ptr @debug_insn_changes_pool, align 8
  tail call void @pool_free(ptr noundef %98, ptr noundef nonnull %cur.012.i.i76.i847.i) #7
  %tobool.not.i.i78.i849.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i78.i849.i, label %free_debug_insn_changes.exit.i79.i850.i, label %for.body.i.i75.i846.i, !llvm.loop !6

free_debug_insn_changes.exit.i79.i850.i:          ; preds = %for.body.i.i75.i846.i
  store ptr null, ptr %debug_insn_changes.i71.i844.i, align 8
  br label %kill_value_one_regno.exit90.i851.i

kill_value_one_regno.exit90.i851.i:               ; preds = %free_debug_insn_changes.exit.i79.i850.i, %if.end40.i69.i842.i
  %indvars.iv.next99.i852.i = add nuw nsw i64 %indvars.iv98.i827.i, 1
  %exitcond102.not.i853.i = icmp eq i64 %indvars.iv.next99.i852.i, %wide.trip.count101.i825.i
  br i1 %exitcond102.not.i853.i, label %cleanup.i821.i.loopexit, label %for.body24.i826.i, !llvm.loop !8

cleanup.i821.i.loopexit:                          ; preds = %kill_value_one_regno.exit90.i851.i
  br label %cleanup.i821.i

cleanup.i821.i:                                   ; preds = %cleanup.i821.i.loopexit, %if.end8.i812.i, %for.body5.i807.i
  %indvars.iv.next104.i822.i = add nuw nsw i64 %indvars.iv103.i808.i, 1
  %exitcond107.not.i823.i = icmp eq i64 %indvars.iv.next104.i822.i, %idxprom.i.i
  br i1 %exitcond107.not.i823.i, label %for.inc144.i.loopexit, label %for.body5.i807.i, !llvm.loop !9

for.inc144.i.loopexit:                            ; preds = %cleanup.i821.i
  br label %for.inc144.i

for.inc144.i:                                     ; preds = %for.inc144.i.loopexit, %for.end.i800.i, %if.end14.i.i, %for.body132.i
  %indvars.iv.next1021.i = add nuw nsw i64 %indvars.iv1020.i, 1
  %exitcond1024.not.i = icmp eq i64 %indvars.iv.next1021.i, %wide.trip.count1023.i
  br i1 %exitcond1024.not.i, label %for.end146.i, label %for.body132.i, !llvm.loop !10

for.end146.i:                                     ; preds = %for.inc144.i
  %99 = load ptr, ptr %arrayidx56.i, align 8
  tail call void @note_stores(ptr noundef %99, ptr noundef nonnull @kill_clobbered_value, ptr noundef %add.ptr69) #7
  %call151.i = tail call i32 @for_each_rtx(ptr noundef nonnull %arrayidx56.i, ptr noundef nonnull @kill_autoinc_value, ptr noundef %add.ptr69) #7
  br label %for.body155.i

for.body155.i:                                    ; preds = %for.inc169.i, %for.end146.i
  %indvars.iv1025.i = phi i64 [ 0, %for.end146.i ], [ %indvars.iv.next1026.i, %for.inc169.i ]
  %gep1004.i = getelementptr [30 x %struct.operand_alternative], ptr %invariant.gep999.i, i64 %indvars.iv1025.i
  %earlyclobber160.i = getelementptr inbounds nuw i8, ptr %gep1004.i, i64 24
  %bf.load161.i = load i8, ptr %earlyclobber160.i, align 8
  %bf.clear162.i = and i8 %bf.load161.i, 1
  %tobool164.not.i = icmp eq i8 %bf.clear162.i, 0
  br i1 %tobool164.not.i, label %for.inc169.i, label %if.then165.i

if.then165.i:                                     ; preds = %for.body155.i
  %arrayidx167.i = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv1025.i
  %100 = load ptr, ptr %arrayidx167.i, align 8
  %bf.load.i707.i = load i32, ptr %100, align 8
  %bf.clear.i708.i = and i32 %bf.load.i707.i, 65535
  %cmp.i709.i = icmp eq i32 %bf.clear.i708.i, 39
  br i1 %cmp.i709.i, label %if.then.i724.i, label %if.end14.i710.i

if.then.i724.i:                                   ; preds = %if.then165.i
  %bf.lshr.i725.i = lshr i32 %bf.load.i707.i, 16
  %bf.clear2.i726.i = and i32 %bf.lshr.i725.i, 255
  %u.i727.i = getelementptr inbounds nuw i8, ptr %100, i64 8
  %101 = load ptr, ptr %u.i727.i, align 8
  %bf.load5.i728.i = load i32, ptr %101, align 8
  %bf.lshr6.i729.i = lshr i32 %bf.load5.i728.i, 16
  %bf.clear7.i730.i = and i32 %bf.lshr6.i729.i, 255
  %arrayidx9.i731.i = getelementptr inbounds nuw i8, ptr %100, i64 16
  %102 = load i32, ptr %arrayidx9.i731.i, align 8
  %call.i732.i = tail call ptr @simplify_subreg(i32 noundef %bf.clear2.i726.i, ptr noundef %101, i32 noundef %bf.clear7.i730.i, i32 noundef %102) #7
  %cmp10.i733.i = icmp eq ptr %call.i732.i, null
  br i1 %cmp10.i733.i, label %if.then11.i734.i, label %if.end14.i710.i

if.then11.i734.i:                                 ; preds = %if.then.i724.i
  %103 = load ptr, ptr %u.i727.i, align 8
  br label %if.end14.i710.i

if.end14.i710.i:                                  ; preds = %if.then11.i734.i, %if.then.i724.i, %if.then165.i
  %x.addr.0.i711.i = phi ptr [ %103, %if.then11.i734.i ], [ %call.i732.i, %if.then.i724.i ], [ %100, %if.then165.i ]
  %bf.load15.i712.i = load i32, ptr %x.addr.0.i711.i, align 8
  %bf.clear16.i713.i = and i32 %bf.load15.i712.i, 65535
  %cmp17.i714.i = icmp eq i32 %bf.clear16.i713.i, 37
  br i1 %cmp17.i714.i, label %if.then18.i715.i, label %for.inc169.i

if.then18.i715.i:                                 ; preds = %if.end14.i710.i
  %104 = getelementptr i8, ptr %x.addr.0.i711.i, i64 8
  %x.addr.0.val.i716.i = load i32, ptr %104, align 8
  %idxprom.i717.i = zext i32 %x.addr.0.val.i716.i to i64
  %arrayidx20.i718.i = getelementptr inbounds nuw [87 x i8], ptr @hard_regno_nregs, i64 %idxprom.i717.i
  %bf.lshr22.i719.i = lshr i32 %bf.load15.i712.i, 16
  %bf.clear23.i720.i = and i32 %bf.lshr22.i719.i, 255
  %idxprom24.i721.i = zext nneg i32 %bf.clear23.i720.i to i64
  %arrayidx25.i722.i = getelementptr inbounds nuw i8, ptr %arrayidx20.i718.i, i64 %idxprom24.i721.i
  %105 = load i8, ptr %arrayidx25.i722.i, align 1
  %cmp91.not.i875.i = icmp eq i8 %105, 0
  br i1 %cmp91.not.i875.i, label %for.end.i907.i, label %for.body.lr.ph.i876.i

for.body.lr.ph.i876.i:                            ; preds = %if.then18.i715.i
  %wide.trip.count.i878.i = zext i8 %105 to i64
  br label %for.body.i879.i

for.body.i879.i:                                  ; preds = %kill_value_one_regno.exit.i904.i, %for.body.lr.ph.i876.i
  %indvars.iv.i880.i = phi i64 [ 0, %for.body.lr.ph.i876.i ], [ %indvars.iv.next.i905.i, %kill_value_one_regno.exit.i904.i ]
  %106 = trunc nuw nsw i64 %indvars.iv.i880.i to i32
  %add.i881.i = add i32 %x.addr.0.val.i716.i, %106
  %idxprom.i.i882.i = zext i32 %add.i881.i to i64
  %arrayidx.i.i883.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom.i.i882.i
  %oldest_regno.i.i884.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i883.i, i64 4
  %107 = load i32, ptr %oldest_regno.i.i884.i, align 4
  %cmp.not.i.i885.i = icmp eq i32 %107, %add.i881.i
  br i1 %cmp.not.i.i885.i, label %if.else.i.i971.i, label %for.cond.i.i886.i.preheader

for.cond.i.i886.i.preheader:                      ; preds = %for.body.i879.i
  br label %for.cond.i.i886.i

for.cond.i.i886.i:                                ; preds = %for.cond.i.i886.i, %for.cond.i.i886.i.preheader
  %i.0.i.i887.i = phi i32 [ %108, %for.cond.i.i886.i ], [ %107, %for.cond.i.i886.i.preheader ]
  %idxprom6.i.i888.i = zext i32 %i.0.i.i887.i to i64
  %arrayidx7.i.i889.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom6.i.i888.i
  %next_regno.i.i890.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i.i889.i, i64 8
  %108 = load i32, ptr %next_regno.i.i890.i, align 8
  %cmp8.not.i.i891.i = icmp eq i32 %108, %add.i881.i
  br i1 %cmp8.not.i.i891.i, label %for.end.i.i892.i, label %for.cond.i.i886.i, !llvm.loop !4

for.end.i.i892.i:                                 ; preds = %for.cond.i.i886.i
  %arrayidx7.i.i889.i.lcssa = phi ptr [ %arrayidx7.i.i889.i, %for.cond.i.i886.i ]
  %next_regno.i.i890.i.le = getelementptr inbounds nuw i8, ptr %arrayidx7.i.i889.i.lcssa, i64 8
  %next_regno16.i.i894.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i883.i, i64 8
  %109 = load i32, ptr %next_regno16.i.i894.i, align 8
  store i32 %109, ptr %next_regno.i.i890.i.le, align 8
  br label %if.end40.i.i895.i

if.else.i.i971.i:                                 ; preds = %for.body.i879.i
  %next_regno24.i.i972.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i883.i, i64 8
  %110 = load i32, ptr %next_regno24.i.i972.i, align 8
  %cmp25.not.i.i973.i = icmp eq i32 %110, -1
  br i1 %cmp25.not.i.i973.i, label %if.end40.i.i895.i, label %for.body29.i.i974.i.preheader

for.body29.i.i974.i.preheader:                    ; preds = %if.else.i.i971.i
  br label %for.body29.i.i974.i

for.body29.i.i974.i:                              ; preds = %for.body29.i.i974.i, %for.body29.i.i974.i.preheader
  %i.189.i.i975.i = phi i32 [ %111, %for.body29.i.i974.i ], [ %110, %for.body29.i.i974.i.preheader ]
  %idxprom31.i.i976.i = zext i32 %i.189.i.i975.i to i64
  %arrayidx32.i.i977.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom31.i.i976.i
  %oldest_regno33.i.i978.i = getelementptr inbounds nuw i8, ptr %arrayidx32.i.i977.i, i64 4
  store i32 %110, ptr %oldest_regno33.i.i978.i, align 4
  %next_regno38.i.i979.i = getelementptr inbounds nuw i8, ptr %arrayidx32.i.i977.i, i64 8
  %111 = load i32, ptr %next_regno38.i.i979.i, align 8
  %cmp28.not.i.i980.i = icmp eq i32 %111, -1
  br i1 %cmp28.not.i.i980.i, label %if.end40.i.i895.i.loopexit, label %for.body29.i.i974.i, !llvm.loop !5

if.end40.i.i895.i.loopexit:                       ; preds = %for.body29.i.i974.i
  br label %if.end40.i.i895.i

if.end40.i.i895.i:                                ; preds = %if.end40.i.i895.i.loopexit, %if.else.i.i971.i, %for.end.i.i892.i
  store i32 0, ptr %arrayidx.i.i883.i, align 8
  store i32 %add.i881.i, ptr %oldest_regno.i.i884.i, align 4
  %next_regno51.i.i896.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i883.i, i64 8
  store i32 -1, ptr %next_regno51.i.i896.i, align 8
  %debug_insn_changes.i.i897.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i883.i, i64 16
  %112 = load ptr, ptr %debug_insn_changes.i.i897.i, align 8
  %tobool.not.i.i898.i = icmp eq ptr %112, null
  br i1 %tobool.not.i.i898.i, label %kill_value_one_regno.exit.i904.i, label %for.body.i.i.i899.i.preheader

for.body.i.i.i899.i.preheader:                    ; preds = %if.end40.i.i895.i
  br label %for.body.i.i.i899.i

for.body.i.i.i899.i:                              ; preds = %for.body.i.i.i899.i, %for.body.i.i.i899.i.preheader
  %cur.012.i.i.i900.i = phi ptr [ %113, %for.body.i.i.i899.i ], [ %112, %for.body.i.i.i899.i.preheader ]
  %113 = load ptr, ptr %cur.012.i.i.i900.i, align 8
  %114 = load i32, ptr %n_debug_insn_changes.i215, align 4
  %dec.i.i.i901.i = add i32 %114, -1
  store i32 %dec.i.i.i901.i, ptr %n_debug_insn_changes.i215, align 4
  %115 = load ptr, ptr @debug_insn_changes_pool, align 8
  tail call void @pool_free(ptr noundef %115, ptr noundef nonnull %cur.012.i.i.i900.i) #7
  %tobool.not.i.i.i902.i = icmp eq ptr %113, null
  br i1 %tobool.not.i.i.i902.i, label %free_debug_insn_changes.exit.i.i903.i, label %for.body.i.i.i899.i, !llvm.loop !6

free_debug_insn_changes.exit.i.i903.i:            ; preds = %for.body.i.i.i899.i
  store ptr null, ptr %debug_insn_changes.i.i897.i, align 8
  br label %kill_value_one_regno.exit.i904.i

kill_value_one_regno.exit.i904.i:                 ; preds = %free_debug_insn_changes.exit.i.i903.i, %if.end40.i.i895.i
  %indvars.iv.next.i905.i = add nuw nsw i64 %indvars.iv.i880.i, 1
  %exitcond.not.i906.i = icmp eq i64 %indvars.iv.next.i905.i, %wide.trip.count.i878.i
  br i1 %exitcond.not.i906.i, label %for.end.i907.i.loopexit, label %for.body.i879.i, !llvm.loop !7

for.end.i907.i.loopexit:                          ; preds = %kill_value_one_regno.exit.i904.i
  br label %for.end.i907.i

for.end.i907.i:                                   ; preds = %for.end.i907.i.loopexit, %if.then18.i715.i
  %116 = load i32, ptr %max_value_regs.i801.i, align 8
  %j.1.i909.i = tail call i32 @llvm.usub.sat.i32(i32 %x.addr.0.val.i716.i, i32 %116)
  %cmp495.i910.i = icmp ult i32 %j.1.i909.i, %x.addr.0.val.i716.i
  br i1 %cmp495.i910.i, label %for.body5.lr.ph.i911.i, label %for.inc169.i

for.body5.lr.ph.i911.i:                           ; preds = %for.end.i907.i
  %117 = zext i32 %j.1.i909.i to i64
  br label %for.body5.i914.i

for.body5.i914.i:                                 ; preds = %cleanup.i928.i, %for.body5.lr.ph.i911.i
  %indvars.iv103.i915.i = phi i64 [ %117, %for.body5.lr.ph.i911.i ], [ %indvars.iv.next104.i929.i, %cleanup.i928.i ]
  %indvars105.i916.i = trunc i64 %indvars.iv103.i915.i to i32
  %arrayidx.i917.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %indvars.iv103.i915.i
  %118 = load i32, ptr %arrayidx.i917.i, align 8
  %cmp6.i918.i = icmp eq i32 %118, 0
  br i1 %cmp6.i918.i, label %cleanup.i928.i, label %if.end8.i919.i

if.end8.i919.i:                                   ; preds = %for.body5.i914.i
  %arrayidx10.i920.i = getelementptr inbounds nuw [87 x i8], ptr @hard_regno_nregs, i64 %indvars.iv103.i915.i
  %idxprom15.i921.i = zext i32 %118 to i64
  %arrayidx16.i922.i = getelementptr inbounds nuw i8, ptr %arrayidx10.i920.i, i64 %idxprom15.i921.i
  %119 = load i8, ptr %arrayidx16.i922.i, align 1
  %conv.i923.i = zext i8 %119 to i32
  %add17.i924.i = add i32 %conv.i923.i, %indvars105.i916.i
  %cmp18.i925.i = icmp ugt i32 %add17.i924.i, %x.addr.0.val.i716.i
  %cmp2293.i926.i = icmp ne i8 %119, 0
  %or.cond.i927.i = and i1 %cmp2293.i926.i, %cmp18.i925.i
  br i1 %or.cond.i927.i, label %for.body24.preheader.i931.i, label %cleanup.i928.i

for.body24.preheader.i931.i:                      ; preds = %if.end8.i919.i
  %wide.trip.count101.i932.i = zext i8 %119 to i64
  br label %for.body24.i933.i

for.body24.i933.i:                                ; preds = %kill_value_one_regno.exit90.i958.i, %for.body24.preheader.i931.i
  %indvars.iv98.i934.i = phi i64 [ 0, %for.body24.preheader.i931.i ], [ %indvars.iv.next99.i959.i, %kill_value_one_regno.exit90.i958.i ]
  %120 = trunc nuw nsw i64 %indvars.iv98.i934.i to i32
  %add25.i935.i = add i32 %120, %indvars105.i916.i
  %idxprom.i56.i936.i = zext i32 %add25.i935.i to i64
  %arrayidx.i57.i937.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom.i56.i936.i
  %oldest_regno.i58.i938.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i937.i, i64 4
  %121 = load i32, ptr %oldest_regno.i58.i938.i, align 4
  %cmp.not.i59.i939.i = icmp eq i32 %121, %add25.i935.i
  br i1 %cmp.not.i59.i939.i, label %if.else.i80.i961.i, label %for.cond.i60.i940.i.preheader

for.cond.i60.i940.i.preheader:                    ; preds = %for.body24.i933.i
  br label %for.cond.i60.i940.i

for.cond.i60.i940.i:                              ; preds = %for.cond.i60.i940.i, %for.cond.i60.i940.i.preheader
  %i.0.i61.i941.i = phi i32 [ %122, %for.cond.i60.i940.i ], [ %121, %for.cond.i60.i940.i.preheader ]
  %idxprom6.i62.i942.i = zext i32 %i.0.i61.i941.i to i64
  %arrayidx7.i63.i943.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom6.i62.i942.i
  %next_regno.i64.i944.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i63.i943.i, i64 8
  %122 = load i32, ptr %next_regno.i64.i944.i, align 8
  %cmp8.not.i65.i945.i = icmp eq i32 %122, %add25.i935.i
  br i1 %cmp8.not.i65.i945.i, label %for.end.i66.i946.i, label %for.cond.i60.i940.i, !llvm.loop !4

for.end.i66.i946.i:                               ; preds = %for.cond.i60.i940.i
  %arrayidx7.i63.i943.i.lcssa = phi ptr [ %arrayidx7.i63.i943.i, %for.cond.i60.i940.i ]
  %next_regno.i64.i944.i.le = getelementptr inbounds nuw i8, ptr %arrayidx7.i63.i943.i.lcssa, i64 8
  %next_regno16.i68.i948.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i937.i, i64 8
  %123 = load i32, ptr %next_regno16.i68.i948.i, align 8
  store i32 %123, ptr %next_regno.i64.i944.i.le, align 8
  br label %if.end40.i69.i949.i

if.else.i80.i961.i:                               ; preds = %for.body24.i933.i
  %next_regno24.i81.i962.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i937.i, i64 8
  %124 = load i32, ptr %next_regno24.i81.i962.i, align 8
  %cmp25.not.i82.i963.i = icmp eq i32 %124, -1
  br i1 %cmp25.not.i82.i963.i, label %if.end40.i69.i949.i, label %for.body29.i83.i964.i.preheader

for.body29.i83.i964.i.preheader:                  ; preds = %if.else.i80.i961.i
  br label %for.body29.i83.i964.i

for.body29.i83.i964.i:                            ; preds = %for.body29.i83.i964.i, %for.body29.i83.i964.i.preheader
  %i.189.i84.i965.i = phi i32 [ %125, %for.body29.i83.i964.i ], [ %124, %for.body29.i83.i964.i.preheader ]
  %idxprom31.i85.i966.i = zext i32 %i.189.i84.i965.i to i64
  %arrayidx32.i86.i967.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom31.i85.i966.i
  %oldest_regno33.i87.i968.i = getelementptr inbounds nuw i8, ptr %arrayidx32.i86.i967.i, i64 4
  store i32 %124, ptr %oldest_regno33.i87.i968.i, align 4
  %next_regno38.i88.i969.i = getelementptr inbounds nuw i8, ptr %arrayidx32.i86.i967.i, i64 8
  %125 = load i32, ptr %next_regno38.i88.i969.i, align 8
  %cmp28.not.i89.i970.i = icmp eq i32 %125, -1
  br i1 %cmp28.not.i89.i970.i, label %if.end40.i69.i949.i.loopexit, label %for.body29.i83.i964.i, !llvm.loop !5

if.end40.i69.i949.i.loopexit:                     ; preds = %for.body29.i83.i964.i
  br label %if.end40.i69.i949.i

if.end40.i69.i949.i:                              ; preds = %if.end40.i69.i949.i.loopexit, %if.else.i80.i961.i, %for.end.i66.i946.i
  store i32 0, ptr %arrayidx.i57.i937.i, align 8
  store i32 %add25.i935.i, ptr %oldest_regno.i58.i938.i, align 4
  %next_regno51.i70.i950.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i937.i, i64 8
  store i32 -1, ptr %next_regno51.i70.i950.i, align 8
  %debug_insn_changes.i71.i951.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i937.i, i64 16
  %126 = load ptr, ptr %debug_insn_changes.i71.i951.i, align 8
  %tobool.not.i72.i952.i = icmp eq ptr %126, null
  br i1 %tobool.not.i72.i952.i, label %kill_value_one_regno.exit90.i958.i, label %for.body.i.i75.i953.i.preheader

for.body.i.i75.i953.i.preheader:                  ; preds = %if.end40.i69.i949.i
  br label %for.body.i.i75.i953.i

for.body.i.i75.i953.i:                            ; preds = %for.body.i.i75.i953.i, %for.body.i.i75.i953.i.preheader
  %cur.012.i.i76.i954.i = phi ptr [ %127, %for.body.i.i75.i953.i ], [ %126, %for.body.i.i75.i953.i.preheader ]
  %127 = load ptr, ptr %cur.012.i.i76.i954.i, align 8
  %128 = load i32, ptr %n_debug_insn_changes.i215, align 4
  %dec.i.i77.i955.i = add i32 %128, -1
  store i32 %dec.i.i77.i955.i, ptr %n_debug_insn_changes.i215, align 4
  %129 = load ptr, ptr @debug_insn_changes_pool, align 8
  tail call void @pool_free(ptr noundef %129, ptr noundef nonnull %cur.012.i.i76.i954.i) #7
  %tobool.not.i.i78.i956.i = icmp eq ptr %127, null
  br i1 %tobool.not.i.i78.i956.i, label %free_debug_insn_changes.exit.i79.i957.i, label %for.body.i.i75.i953.i, !llvm.loop !6

free_debug_insn_changes.exit.i79.i957.i:          ; preds = %for.body.i.i75.i953.i
  store ptr null, ptr %debug_insn_changes.i71.i951.i, align 8
  br label %kill_value_one_regno.exit90.i958.i

kill_value_one_regno.exit90.i958.i:               ; preds = %free_debug_insn_changes.exit.i79.i957.i, %if.end40.i69.i949.i
  %indvars.iv.next99.i959.i = add nuw nsw i64 %indvars.iv98.i934.i, 1
  %exitcond102.not.i960.i = icmp eq i64 %indvars.iv.next99.i959.i, %wide.trip.count101.i932.i
  br i1 %exitcond102.not.i960.i, label %cleanup.i928.i.loopexit, label %for.body24.i933.i, !llvm.loop !8

cleanup.i928.i.loopexit:                          ; preds = %kill_value_one_regno.exit90.i958.i
  br label %cleanup.i928.i

cleanup.i928.i:                                   ; preds = %cleanup.i928.i.loopexit, %if.end8.i919.i, %for.body5.i914.i
  %indvars.iv.next104.i929.i = add nuw nsw i64 %indvars.iv103.i915.i, 1
  %exitcond107.not.i930.i = icmp eq i64 %indvars.iv.next104.i929.i, %idxprom.i717.i
  br i1 %exitcond107.not.i930.i, label %for.inc169.i.loopexit, label %for.body5.i914.i, !llvm.loop !9

for.inc169.i.loopexit:                            ; preds = %cleanup.i928.i
  br label %for.inc169.i

for.inc169.i:                                     ; preds = %for.inc169.i.loopexit, %for.end.i907.i, %if.end14.i710.i, %for.body155.i
  %indvars.iv.next1026.i = add nuw nsw i64 %indvars.iv1025.i, 1
  %exitcond1029.not.i = icmp eq i64 %indvars.iv.next1026.i, %wide.trip.count1023.i
  br i1 %exitcond1029.not.i, label %for.end171.i.loopexit, label %for.body155.i, !llvm.loop !11

for.end171.critedge.i:                            ; preds = %if.end128.i
  %130 = load ptr, ptr %arrayidx56.i, align 8
  tail call void @note_stores(ptr noundef %130, ptr noundef nonnull @kill_clobbered_value, ptr noundef nonnull %add.ptr69) #7
  %call151.c.i = tail call i32 @for_each_rtx(ptr noundef nonnull %arrayidx56.i, ptr noundef nonnull @kill_autoinc_value, ptr noundef nonnull %add.ptr69) #7
  br label %for.end171.i

for.end171.i.loopexit:                            ; preds = %for.inc169.i
  br label %for.end171.i

for.end171.i:                                     ; preds = %for.end171.i.loopexit, %for.end171.critedge.i
  %tobool172.not.i = icmp eq ptr %cond68.i, null
  br i1 %tobool172.not.i, label %no_move_special_case.i, label %land.lhs.true173.i

land.lhs.true173.i:                               ; preds = %for.end171.i
  %u174.i = getelementptr inbounds nuw i8, ptr %cond68.i, i64 8
  %arrayidx175.i = getelementptr inbounds nuw i8, ptr %cond68.i, i64 16
  %131 = load ptr, ptr %arrayidx175.i, align 8
  %bf.load176.i = load i32, ptr %131, align 8
  %bf.clear177.i = and i32 %bf.load176.i, 65535
  %cmp178.i = icmp eq i32 %bf.clear177.i, 37
  br i1 %cmp178.i, label %if.then180.i, label %no_move_special_case.i

if.then180.i:                                     ; preds = %land.lhs.true173.i
  %132 = getelementptr i8, ptr %131, i64 8
  %.val705.i = load i32, ptr %132, align 8
  %bf.lshr185.i = lshr i32 %bf.load176.i, 16
  %bf.clear186.i = and i32 %bf.lshr185.i, 255
  %idxprom188.i = zext i32 %.val705.i to i64
  %arrayidx189.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom188.i
  %133 = load i32, ptr %arrayidx189.i, align 8
  %cmp191.not.i = icmp eq i32 %bf.clear186.i, %133
  br i1 %cmp191.not.i, label %if.end212.i, label %if.then193.i

if.then193.i:                                     ; preds = %if.then180.i
  %arrayidx195.i = getelementptr inbounds nuw [87 x i8], ptr @hard_regno_nregs, i64 %idxprom188.i
  %idxprom196.i = zext nneg i32 %bf.clear186.i to i64
  %arrayidx197.i = getelementptr inbounds nuw i8, ptr %arrayidx195.i, i64 %idxprom196.i
  %134 = load i8, ptr %arrayidx197.i, align 1
  %idxprom205.i = zext i32 %133 to i64
  %arrayidx206.i = getelementptr inbounds nuw i8, ptr %arrayidx195.i, i64 %idxprom205.i
  %135 = load i8, ptr %arrayidx206.i, align 1
  %cmp208.i = icmp ugt i8 %134, %135
  br i1 %cmp208.i, label %no_move_special_case.i, label %if.end212.i

if.end212.i:                                      ; preds = %if.then193.i, %if.then180.i
  %136 = load ptr, ptr %u174.i, align 8
  %bf.load215.i = load i32, ptr %136, align 8
  %bf.clear216.i = and i32 %bf.load215.i, 65535
  %cmp217.i = icmp eq i32 %bf.clear216.i, 37
  br i1 %cmp217.i, label %if.then219.i, label %if.end239.i

if.then219.i:                                     ; preds = %if.end212.i
  %arrayidx221.i = getelementptr inbounds nuw i32, ptr @regclass_map, i64 %idxprom188.i
  %137 = load i32, ptr %arrayidx221.i, align 4
  %call222.i = tail call fastcc ptr @find_oldest_value_reg(i32 noundef %137, ptr noundef nonnull %131, ptr noundef nonnull %add.ptr69)
  %tobool223.not.i = icmp eq ptr %call222.i, null
  br i1 %tobool223.not.i, label %if.end239.i, label %land.lhs.true224.i

land.lhs.true224.i:                               ; preds = %if.then219.i
  %call227.i = tail call zeroext i8 @validate_change(ptr noundef %insn.0.i, ptr noundef nonnull %arrayidx175.i, ptr noundef nonnull %call222.i, i8 noundef zeroext 0) #7
  %tobool229.not.i = icmp eq i8 %call227.i, 0
  br i1 %tobool229.not.i, label %if.end239.i, label %if.then230.i

if.then230.i:                                     ; preds = %land.lhs.true224.i
  %138 = load ptr, ptr @dump_file, align 8
  %tobool231.not.i = icmp eq ptr %138, null
  br i1 %tobool231.not.i, label %did_replacement.i, label %if.then232.i

if.then232.i:                                     ; preds = %if.then230.i
  %139 = load i32, ptr %u72.i, align 8
  %140 = getelementptr i8, ptr %call222.i, i64 8
  %call222.val.i = load i32, ptr %140, align 8
  %call236.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %138, ptr noundef nonnull @.str.10, i32 noundef %139, i32 noundef %.val705.i, i32 noundef %call222.val.i) #7
  br label %did_replacement.i

if.end239.i:                                      ; preds = %land.lhs.true224.i, %if.then219.i, %if.end212.i
  %oldest_regno.i222 = getelementptr inbounds nuw i8, ptr %arrayidx189.i, i64 4
  %i187.01005.i = load i32, ptr %oldest_regno.i222, align 4
  %cmp244.not1006.i = icmp eq i32 %i187.01005.i, %.val705.i
  br i1 %cmp244.not1006.i, label %no_move_special_case.i, label %for.body246.lr.ph.i

for.body246.lr.ph.i:                              ; preds = %if.end239.i
  %idxprom11.i.i = zext nneg i32 %bf.clear186.i to i64
  %arrayidx12.i.i = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom11.i.i
  br label %for.body246.i

for.body246.i:                                    ; preds = %for.inc286.i, %for.body246.lr.ph.i
  %i187.01007.i = phi i32 [ %i187.01005.i, %for.body246.lr.ph.i ], [ %i187.0.i, %for.inc286.i ]
  %idxprom248.i = zext i32 %i187.01007.i to i64
  %arrayidx249.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom248.i
  %141 = load i32, ptr %arrayidx249.i, align 8
  %142 = load i32, ptr %arrayidx189.i, align 8
  %idxprom.i736.i = zext i32 %142 to i64
  %arrayidx.i.i = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom.i736.i
  %143 = load i8, ptr %arrayidx.i.i, align 1
  %idxprom2.i.i = zext i32 %141 to i64
  %arrayidx3.i.i = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom2.i.i
  %144 = load i8, ptr %arrayidx3.i.i, align 1
  %cmp.i737.i = icmp ult i8 %143, %144
  br i1 %cmp.i737.i, label %land.lhs.true.i.i, label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body246.i
  %145 = load i8, ptr %arrayidx12.i.i, align 1
  %cmp15.i.i = icmp ult i8 %143, %145
  br i1 %cmp15.i.i, label %for.inc286.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %for.body246.i
  %cmp17.i738.i = icmp eq i32 %141, %bf.clear186.i
  br i1 %cmp17.i738.i, label %maybe_mode_change.exit.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %146 = load i8, ptr %arrayidx12.i.i, align 1
  %cmp.i.i.i = icmp ult i8 %144, %146
  br i1 %cmp.i.i.i, label %for.inc286.i, label %mode_change_ok.exit.i.i

mode_change_ok.exit.i.i:                          ; preds = %if.else.i.i
  %arrayidx8.i.i.i = getelementptr inbounds nuw i32, ptr @regclass_map, i64 %idxprom248.i
  %147 = load i32, ptr %arrayidx8.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %141, i32 noundef range(i32 0, 256) %bf.clear186.i, i32 noundef %147) #7
  %tobool.not.i.not.i.i = icmp eq i8 %call.i.i.i, 0
  br i1 %tobool.not.i.not.i.i, label %if.then21.i.i, label %for.inc286.i

if.then21.i.i:                                    ; preds = %mode_change_ok.exit.i.i
  %call47.i.i = tail call i32 @subreg_regno_offset(i32 noundef %i187.01007.i, i32 noundef %141, i32 noundef 0, i32 noundef range(i32 0, 256) %bf.clear186.i) #7
  %add.i.i = add i32 %call47.i.i, %i187.01007.i
  br label %maybe_mode_change.exit.i

maybe_mode_change.exit.i:                         ; preds = %if.then21.i.i, %if.end.i.i
  %i187.01007.sink.i = phi i32 [ %add.i.i, %if.then21.i.i ], [ %i187.01007.i, %if.end.i.i ]
  %call.i739.i = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef %bf.clear186.i, i32 noundef %i187.01007.sink.i) #7
  %cmp256.not.i = icmp eq ptr %call.i739.i, null
  br i1 %cmp256.not.i, label %for.inc286.i, label %if.then258.i

if.then258.i:                                     ; preds = %maybe_mode_change.exit.i
  %call261.i = tail call zeroext i8 @validate_change(ptr noundef %insn.0.i, ptr noundef nonnull %arrayidx175.i, ptr noundef nonnull %call.i739.i, i8 noundef zeroext 0) #7
  %tobool262.not.i = icmp eq i8 %call261.i, 0
  br i1 %tobool262.not.i, label %for.inc286.i, label %if.then263.i

if.then263.i:                                     ; preds = %if.then258.i
  %call.i739.i.lcssa = phi ptr [ %call.i739.i, %if.then258.i ]
  %arrayidx265.i = getelementptr inbounds nuw i8, ptr %131, i64 16
  %148 = load i32, ptr %arrayidx265.i, align 8
  %arrayidx267.i = getelementptr inbounds nuw i8, ptr %call.i739.i.lcssa, i64 16
  store i32 %148, ptr %arrayidx267.i, align 8
  %arrayidx269.i = getelementptr inbounds nuw i8, ptr %131, i64 24
  %149 = load ptr, ptr %arrayidx269.i, align 8
  %arrayidx271.i = getelementptr inbounds nuw i8, ptr %call.i739.i.lcssa, i64 24
  store ptr %149, ptr %arrayidx271.i, align 8
  %bf.load272.i = load i32, ptr %131, align 8
  %bf.clear274.i = and i32 %bf.load272.i, 1073741824
  %bf.load275.i = load i32, ptr %call.i739.i.lcssa, align 8
  %bf.clear276.i = and i32 %bf.load275.i, -1073741825
  %bf.set.i = or disjoint i32 %bf.clear276.i, %bf.clear274.i
  store i32 %bf.set.i, ptr %call.i739.i.lcssa, align 8
  %150 = load ptr, ptr @dump_file, align 8
  %tobool277.not.i = icmp eq ptr %150, null
  br i1 %tobool277.not.i, label %did_replacement.i, label %if.then278.i

if.then278.i:                                     ; preds = %if.then263.i
  %151 = load i32, ptr %u72.i, align 8
  %152 = getelementptr i8, ptr %call.i739.i.lcssa, i64 8
  %call255.val.i = load i32, ptr %152, align 8
  %call282.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %150, ptr noundef nonnull @.str.10, i32 noundef %151, i32 noundef %.val705.i, i32 noundef %call255.val.i) #7
  br label %did_replacement.i

for.inc286.i:                                     ; preds = %if.then258.i, %maybe_mode_change.exit.i, %mode_change_ok.exit.i.i, %if.else.i.i, %land.lhs.true.i.i
  %next_regno.i223 = getelementptr inbounds nuw i8, ptr %arrayidx249.i, i64 8
  %i187.0.i = load i32, ptr %next_regno.i223, align 4
  %cmp244.not.i = icmp eq i32 %i187.0.i, %.val705.i
  br i1 %cmp244.not.i, label %no_move_special_case.i.loopexit, label %for.body246.i, !llvm.loop !12

no_move_special_case.i.loopexit:                  ; preds = %for.inc286.i
  br label %no_move_special_case.i

no_move_special_case.i:                           ; preds = %no_move_special_case.i.loopexit, %if.end239.i, %if.then193.i, %land.lhs.true173.i, %for.end171.i
  br i1 %cmp85993.i, label %for.body299.lr.ph.i, label %did_replacement.i

for.body299.lr.ph.i:                              ; preds = %no_move_special_case.i
  %idxprom338.i = sext i32 %60 to i64
  %invariant.gep1014.i = getelementptr %struct.operand_alternative, ptr @recog_op_alt, i64 %idxprom338.i
  %wide.trip.count1035.i = zext nneg i32 %conv.i to i64
  br label %for.body299.i

for.body299.i:                                    ; preds = %for.inc433.i, %for.body299.lr.ph.i
  %indvars.iv1033.i = phi i64 [ 0, %for.body299.lr.ph.i ], [ %indvars.iv.next1034.i, %for.inc433.i ]
  %any_replacements.01012.i = phi i8 [ 0, %for.body299.lr.ph.i ], [ %any_replacements.1.i, %for.inc433.i ]
  %arrayidx301.i = getelementptr inbounds nuw i8, ptr %replaced.i, i64 %indvars.iv1033.i
  store i8 0, ptr %arrayidx301.i, align 1
  %arrayidx303.i = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 480), i64 %indvars.iv1033.i
  %153 = load ptr, ptr %arrayidx303.i, align 8
  %154 = load i8, ptr %153, align 1
  %cmp306.i = icmp eq i8 %154, 0
  br i1 %cmp306.i, label %for.inc433.i, label %if.end309.i

if.end309.i:                                      ; preds = %for.body299.i
  br i1 %cmp75.i, label %land.lhs.true312.i, label %if.end330.i

land.lhs.true312.i:                               ; preds = %if.end309.i
  %arrayidx314.i = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv1033.i
  %155 = load ptr, ptr %arrayidx314.i, align 8
  %bf.load315.i = load i32, ptr %155, align 8
  %bf.clear316.i = and i32 %bf.load315.i, 65535
  %cmp317.i = icmp eq i32 %bf.clear316.i, 37
  br i1 %cmp317.i, label %land.lhs.true319.i, label %if.end330.i

land.lhs.true319.i:                               ; preds = %land.lhs.true312.i
  %156 = getelementptr i8, ptr %155, i64 8
  %.val.i = load i32, ptr %156, align 8
  %arrayidx326.i = getelementptr inbounds nuw i8, ptr %155, i64 16
  %157 = load i32, ptr %arrayidx326.i, align 8
  %cmp327.i = icmp eq i32 %.val.i, %157
  br i1 %cmp327.i, label %for.inc433.i, label %if.end330.i

if.end330.i:                                      ; preds = %land.lhs.true319.i, %land.lhs.true312.i, %if.end309.i
  %arrayidx332.i = getelementptr inbounds nuw i32, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 840), i64 %indvars.iv1033.i
  %158 = load i32, ptr %arrayidx332.i, align 4
  %cmp333.i = icmp eq i32 %158, 0
  br i1 %cmp333.i, label %if.then335.i, label %if.else390.i

if.then335.i:                                     ; preds = %if.end330.i
  %gep1015.i = getelementptr [30 x %struct.operand_alternative], ptr %invariant.gep1014.i, i64 %indvars.iv1033.i
  %is_address.i = getelementptr inbounds nuw i8, ptr %gep1015.i, i64 24
  %bf.load340.i = load i8, ptr %is_address.i, align 8
  %159 = and i8 %bf.load340.i, 64
  %tobool344.not.i = icmp eq i8 %159, 0
  br i1 %tobool344.not.i, label %if.else356.i, label %if.then345.i

if.then345.i:                                     ; preds = %if.then335.i
  %arrayidx347.i = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv1033.i
  %160 = load ptr, ptr %arrayidx347.i, align 8
  %cl352.i = getelementptr inbounds nuw i8, ptr %gep1015.i, i64 8
  %161 = load i32, ptr %cl352.i, align 8
  %call353.i = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef %160, i32 noundef %161, i32 noundef 0, ptr noundef %insn.0.i, ptr noundef %add.ptr69)
  br label %if.end404.i

if.else356.i:                                     ; preds = %if.then335.i
  %arrayidx358.i = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv1033.i
  %162 = load ptr, ptr %arrayidx358.i, align 8
  %bf.load359.i = load i32, ptr %162, align 8
  %trunc.i = trunc i32 %bf.load359.i to i16
  switch i16 %trunc.i, label %for.inc433.i [
    i16 37, label %if.then363.i
    i16 43, label %if.then381.i
  ]

if.then363.i:                                     ; preds = %if.else356.i
  %arrayidx365.i = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv1033.i
  %163 = load ptr, ptr %arrayidx365.i, align 8
  %cl370.i = getelementptr inbounds nuw i8, ptr %gep1015.i, i64 8
  %164 = load i32, ptr %cl370.i, align 8
  %165 = load ptr, ptr %163, align 8
  %166 = getelementptr i8, ptr %165, i64 8
  %reg.val.i = load i32, ptr %166, align 8
  %bf.load.i247 = load i32, ptr %165, align 8
  %bf.lshr.i248 = lshr i32 %bf.load.i247, 16
  %bf.clear.i249 = and i32 %bf.lshr.i248, 255
  %idxprom.i250 = zext i32 %reg.val.i to i64
  %arrayidx.i251 = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom.i250
  %167 = load i32, ptr %arrayidx.i251, align 8
  %cmp.not.i252 = icmp eq i32 %bf.clear.i249, %167
  br i1 %cmp.not.i252, label %if.end18.i256, label %if.then.i253

if.then.i253:                                     ; preds = %if.then363.i
  %arrayidx3.i = getelementptr inbounds nuw [87 x i8], ptr @hard_regno_nregs, i64 %idxprom.i250
  %idxprom4.i = zext nneg i32 %bf.clear.i249 to i64
  %arrayidx5.i = getelementptr inbounds nuw i8, ptr %arrayidx3.i, i64 %idxprom4.i
  %168 = load i8, ptr %arrayidx5.i, align 1
  %idxprom12.i254 = zext i32 %167 to i64
  %arrayidx13.i255 = getelementptr inbounds nuw i8, ptr %arrayidx3.i, i64 %idxprom12.i254
  %169 = load i8, ptr %arrayidx13.i255, align 1
  %cmp15.i = icmp ugt i8 %168, %169
  br i1 %cmp15.i, label %if.end404.i.thread293, label %if.end18.i256

if.end18.i256:                                    ; preds = %if.then.i253, %if.then363.i
  %oldest_regno.i257 = getelementptr inbounds nuw i8, ptr %arrayidx.i251, i64 4
  %i.098.i = load i32, ptr %oldest_regno.i257, align 4
  %cmp22.not99.i = icmp eq i32 %i.098.i, %reg.val.i
  br i1 %cmp22.not99.i, label %if.end404.i.thread293, label %for.body.lr.ph.i258

for.body.lr.ph.i258:                              ; preds = %if.end18.i256
  %idxprom28.i = zext i32 %164 to i64
  %arrayidx29.i = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %idxprom28.i
  %idxprom1.i.i.i = zext nneg i32 %bf.clear.i249 to i64
  %invariant.gep.i259 = getelementptr inbounds nuw i8, ptr @hard_regno_nregs, i64 %idxprom1.i.i.i
  %arrayidx12.i.i260 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom1.i.i.i
  br label %for.body.i261

for.body.i261:                                    ; preds = %for.inc.i, %for.body.lr.ph.i258
  %i.0100.i = phi i32 [ %i.098.i, %for.body.lr.ph.i258 ], [ %i.0.i, %for.inc.i ]
  %idxprom25.i = zext i32 %i.0100.i to i64
  %arrayidx26.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom25.i
  %170 = load i32, ptr %arrayidx26.i, align 8
  %171 = load i64, ptr %arrayidx29.i, align 8
  %shl.i.i = shl nuw i64 1, %idxprom25.i
  %and.i.i = and i64 %171, %shl.i.i
  %tobool.not.i.i262 = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i262, label %if.end404.i.thread293.loopexit313, label %if.end.i.i263

if.end.i.i263:                                    ; preds = %for.body.i261
  %gep.i264 = getelementptr inbounds nuw [87 x i8], ptr %invariant.gep.i259, i64 %idxprom25.i
  %172 = load i8, ptr %gep.i264, align 1
  %conv.i.i.i265 = zext i8 %172 to i32
  %add.i.i.i = add i32 %i.0100.i, %conv.i.i.i265
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i, %if.end.i.i263
  %regno.addr.0.i.i = phi i32 [ %i.0100.i, %if.end.i.i263 ], [ %inc.i.i, %while.body.i.i ]
  %inc.i.i = add i32 %regno.addr.0.i.i, 1
  %cmp.i.i266 = icmp ult i32 %inc.i.i, %add.i.i.i
  br i1 %cmp.i.i266, label %while.body.i.i, label %if.end32.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %sh_prom1.i.i = zext nneg i32 %inc.i.i to i64
  %shl2.i.i = shl nuw i64 1, %sh_prom1.i.i
  %and3.i.i = and i64 %shl2.i.i, %171
  %tobool4.not.i.i = icmp eq i64 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end404.i.thread293.loopexit, label %while.cond.i.i, !llvm.loop !13

if.end32.i:                                       ; preds = %while.cond.i.i
  %173 = load i32, ptr %arrayidx.i251, align 8
  %idxprom.i.i267 = zext i32 %173 to i64
  %arrayidx.i.i268 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom.i.i267
  %174 = load i8, ptr %arrayidx.i.i268, align 1
  %idxprom2.i.i269 = zext i32 %170 to i64
  %arrayidx3.i.i270 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom2.i.i269
  %175 = load i8, ptr %arrayidx3.i.i270, align 1
  %cmp.i87.i = icmp ult i8 %174, %175
  br i1 %cmp.i87.i, label %land.lhs.true.i.i285, label %if.end.i88.i

land.lhs.true.i.i285:                             ; preds = %if.end32.i
  %176 = load i8, ptr %arrayidx12.i.i260, align 1
  %cmp15.i.i286 = icmp ult i8 %174, %176
  br i1 %cmp15.i.i286, label %for.inc.i, label %if.end.i88.i

if.end.i88.i:                                     ; preds = %land.lhs.true.i.i285, %if.end32.i
  %cmp17.i.i271 = icmp eq i32 %170, %bf.clear.i249
  br i1 %cmp17.i.i271, label %maybe_mode_change.exit.i282, label %if.else.i.i272

if.else.i.i272:                                   ; preds = %if.end.i88.i
  %177 = load i8, ptr %arrayidx12.i.i260, align 1
  %cmp.i.i.i273 = icmp ult i8 %175, %177
  br i1 %cmp.i.i.i273, label %for.inc.i, label %mode_change_ok.exit.i.i274

mode_change_ok.exit.i.i274:                       ; preds = %if.else.i.i272
  %arrayidx8.i.i.i275 = getelementptr inbounds nuw i32, ptr @regclass_map, i64 %idxprom25.i
  %178 = load i32, ptr %arrayidx8.i.i.i275, align 4
  %call.i.i.i276 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %170, i32 noundef range(i32 0, 256) %bf.clear.i249, i32 noundef %178) #7
  %tobool.not.i.not.i.i277 = icmp eq i8 %call.i.i.i276, 0
  br i1 %tobool.not.i.not.i.i277, label %if.then21.i.i279, label %for.inc.i

if.then21.i.i279:                                 ; preds = %mode_change_ok.exit.i.i274
  %call47.i.i280 = tail call i32 @subreg_regno_offset(i32 noundef %i.0100.i, i32 noundef %170, i32 noundef 0, i32 noundef range(i32 0, 256) %bf.clear.i249) #7
  %add.i.i281 = add i32 %call47.i.i280, %i.0100.i
  br label %maybe_mode_change.exit.i282

maybe_mode_change.exit.i282:                      ; preds = %if.then21.i.i279, %if.end.i88.i
  %i.0100.sink.i = phi i32 [ %add.i.i281, %if.then21.i.i279 ], [ %i.0100.i, %if.end.i88.i ]
  %call.i.i283 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef %bf.clear.i249, i32 noundef %i.0100.sink.i) #7
  %tobool38.not.i = icmp eq ptr %call.i.i283, null
  br i1 %tobool38.not.i, label %for.inc.i, label %if.then.i238

for.inc.i:                                        ; preds = %maybe_mode_change.exit.i282, %mode_change_ok.exit.i.i274, %if.else.i.i272, %land.lhs.true.i.i285
  %next_regno.i278 = getelementptr inbounds nuw i8, ptr %arrayidx26.i, i64 8
  %i.0.i = load i32, ptr %next_regno.i278, align 4
  %cmp22.not.i = icmp eq i32 %i.0.i, %reg.val.i
  br i1 %cmp22.not.i, label %if.end404.i.thread293.loopexit313, label %for.body.i261, !llvm.loop !14

if.end404.i.thread293.loopexit:                   ; preds = %while.body.i.i
  br label %if.end404.i.thread293

if.end404.i.thread293.loopexit313:                ; preds = %for.inc.i, %for.body.i261
  br label %if.end404.i.thread293

if.end404.i.thread293:                            ; preds = %if.end404.i.thread293.loopexit313, %if.end404.i.thread293.loopexit, %if.end18.i256, %if.then.i253
  store i8 0, ptr %arrayidx301.i, align 1
  br label %for.inc433.i

if.then.i238:                                     ; preds = %maybe_mode_change.exit.i282
  %call.i.i283.lcssa = phi ptr [ %call.i.i283, %maybe_mode_change.exit.i282 ]
  %arrayidx40.i = getelementptr inbounds nuw i8, ptr %165, i64 16
  %179 = load i32, ptr %arrayidx40.i, align 8
  %arrayidx42.i = getelementptr inbounds nuw i8, ptr %call.i.i283.lcssa, i64 16
  store i32 %179, ptr %arrayidx42.i, align 8
  %arrayidx44.i = getelementptr inbounds nuw i8, ptr %165, i64 24
  %180 = load ptr, ptr %arrayidx44.i, align 8
  %arrayidx46.i = getelementptr inbounds nuw i8, ptr %call.i.i283.lcssa, i64 24
  store ptr %180, ptr %arrayidx46.i, align 8
  %bf.load47.i = load i32, ptr %165, align 8
  %bf.clear49.i = and i32 %bf.load47.i, 1073741824
  %bf.load50.i = load i32, ptr %call.i.i283.lcssa, align 8
  %bf.clear51.i = and i32 %bf.load50.i, -1073741825
  %bf.set.i284 = or disjoint i32 %bf.clear51.i, %bf.clear49.i
  store i32 %bf.set.i284, ptr %call.i.i283.lcssa, align 8
  %bf.load.i239 = load i32, ptr %insn.0.i, align 8
  %bf.clear.i240 = and i32 %bf.load.i239, 65535
  %cmp.i = icmp eq i32 %bf.clear.i240, 7
  %181 = load ptr, ptr @dump_file, align 8
  %tobool2.not.i = icmp eq ptr %181, null
  br i1 %cmp.i, label %if.then1.i, label %if.end18.i

if.then1.i:                                       ; preds = %if.then.i238
  br i1 %tobool2.not.i, label %if.end.i242, label %if.then3.i

if.then3.i:                                       ; preds = %if.then1.i
  %182 = load i32, ptr %u72.i, align 8
  %183 = load ptr, ptr %163, align 8
  %184 = getelementptr i8, ptr %183, i64 8
  %.val54.i = load i32, ptr %184, align 8
  %185 = getelementptr i8, ptr %call.i.i283.lcssa, i64 8
  %call.val53.i = load i32, ptr %185, align 8
  %call6.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %181, ptr noundef nonnull @.str.12, i32 noundef %182, i32 noundef %.val54.i, i32 noundef %call.val53.i) #7
  br label %if.end.i242

if.end.i242:                                      ; preds = %if.then3.i, %if.then1.i
  %186 = load ptr, ptr @debug_insn_changes_pool, align 8
  %call7.i = tail call ptr @pool_alloc(ptr noundef %186) #7
  %187 = getelementptr i8, ptr %call.i.i283.lcssa, i64 8
  %call.val52.i = load i32, ptr %187, align 8
  %idxprom.i243 = zext i32 %call.val52.i to i64
  %arrayidx9.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom.i243
  %debug_insn_changes.i244 = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i64 16
  %188 = load ptr, ptr %debug_insn_changes.i244, align 8
  store ptr %188, ptr %call7.i, align 8
  %insn10.i = getelementptr inbounds nuw i8, ptr %call7.i, i64 8
  store ptr %insn.0.i, ptr %insn10.i, align 8
  %loc11.i = getelementptr inbounds nuw i8, ptr %call7.i, i64 16
  store ptr %163, ptr %loc11.i, align 8
  %new_rtx12.i = getelementptr inbounds nuw i8, ptr %call7.i, i64 24
  store ptr %call.i.i283.lcssa, ptr %new_rtx12.i, align 8
  %call.val51.i = load i32, ptr %187, align 8
  %idxprom15.i = zext i32 %call.val51.i to i64
  %arrayidx16.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom15.i
  %debug_insn_changes17.i = getelementptr inbounds nuw i8, ptr %arrayidx16.i, i64 16
  store ptr %call7.i, ptr %debug_insn_changes17.i, align 8
  %189 = load i32, ptr %n_debug_insn_changes.i215, align 4
  %inc.i246 = add i32 %189, 1
  store i32 %inc.i246, ptr %n_debug_insn_changes.i215, align 4
  br label %if.end404.i.thread

if.end18.i:                                       ; preds = %if.then.i238
  br i1 %tobool2.not.i, label %if.end26.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end18.i
  %190 = load i32, ptr %u72.i, align 8
  %191 = load ptr, ptr %163, align 8
  %192 = getelementptr i8, ptr %191, i64 8
  %.val.i241 = load i32, ptr %192, align 8
  %193 = getelementptr i8, ptr %call.i.i283.lcssa, i64 8
  %call.val.i = load i32, ptr %193, align 8
  %call25.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %181, ptr noundef nonnull @.str.10, i32 noundef %190, i32 noundef %.val.i241, i32 noundef %call.val.i) #7
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then20.i, %if.end18.i
  %call27.i = tail call zeroext i8 @validate_change(ptr noundef nonnull %insn.0.i, ptr noundef nonnull %163, ptr noundef nonnull %call.i.i283.lcssa, i8 noundef zeroext 1) #7
  br label %if.end404.i.thread

if.then381.i:                                     ; preds = %if.else356.i
  %bf.load.i740.i = load i32, ptr %insn.0.i, align 8
  %bf.clear.i741.i = and i32 %bf.load.i740.i, 65535
  %cmp.i742.i = icmp eq i32 %bf.clear.i741.i, 7
  %spec.select.i.i = select i1 %cmp.i742.i, i32 26, i32 13
  %u.i743.i = getelementptr inbounds nuw i8, ptr %162, i64 8
  %bf.lshr4.i.i = lshr i32 %bf.load359.i, 16
  %bf.clear5.i.i = and i32 %bf.lshr4.i.i, 255
  %call6.i.i = tail call fastcc zeroext range(i8 0, 2) i8 @replace_oldest_value_addr(ptr noundef nonnull %u.i743.i, i32 noundef %spec.select.i.i, i32 noundef %bf.clear5.i.i, ptr noundef nonnull %insn.0.i, ptr noundef %add.ptr69)
  br label %if.end404.i

if.else390.i:                                     ; preds = %if.end330.i
  %arrayidx392.i = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv1033.i
  %194 = load ptr, ptr %arrayidx392.i, align 8
  %bf.load393.i = load i32, ptr %194, align 8
  %bf.clear394.i = and i32 %bf.load393.i, 65535
  %cmp395.i = icmp eq i32 %bf.clear394.i, 43
  br i1 %cmp395.i, label %if.then397.i, label %for.inc433.i

if.then397.i:                                     ; preds = %if.else390.i
  %bf.load.i744.i = load i32, ptr %insn.0.i, align 8
  %bf.clear.i745.i = and i32 %bf.load.i744.i, 65535
  %cmp.i746.i = icmp eq i32 %bf.clear.i745.i, 7
  %spec.select.i747.i = select i1 %cmp.i746.i, i32 26, i32 13
  %u.i748.i = getelementptr inbounds nuw i8, ptr %194, i64 8
  %bf.lshr4.i750.i = lshr i32 %bf.load393.i, 16
  %bf.clear5.i751.i = and i32 %bf.lshr4.i750.i, 255
  %call6.i752.i = tail call fastcc zeroext range(i8 0, 2) i8 @replace_oldest_value_addr(ptr noundef nonnull %u.i748.i, i32 noundef %spec.select.i747.i, i32 noundef %bf.clear5.i751.i, ptr noundef nonnull %insn.0.i, ptr noundef %add.ptr69)
  br label %if.end404.i

if.end404.i.thread:                               ; preds = %if.end26.i, %if.end.i242
  store i8 1, ptr %arrayidx301.i, align 1
  br label %if.then408.i

if.end404.i:                                      ; preds = %if.then397.i, %if.then381.i, %if.then345.i
  %call6.i752.sink.i = phi i8 [ %call6.i752.i, %if.then397.i ], [ %call353.i, %if.then345.i ], [ %call6.i.i, %if.then381.i ]
  store i8 %call6.i752.sink.i, ptr %arrayidx301.i, align 1
  %tobool407.not.i = icmp eq i8 %call6.i752.sink.i, 0
  br i1 %tobool407.not.i, label %for.inc433.i, label %if.then408.i

if.then408.i:                                     ; preds = %if.end404.i, %if.end404.i.thread
  %arrayidx411.i = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv1033.i
  %195 = load ptr, ptr %arrayidx411.i, align 8
  %196 = load ptr, ptr %195, align 8
  %arrayidx413.i = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv1033.i
  store ptr %196, ptr %arrayidx413.i, align 8
  %197 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1087), align 1
  %cmp4161009.i = icmp sgt i8 %197, 0
  br i1 %cmp4161009.i, label %for.body418.i.preheader, label %for.inc433.i

for.body418.i.preheader:                          ; preds = %if.then408.i
  br label %for.body418.i

for.body418.i:                                    ; preds = %for.inc429.i, %for.body418.i.preheader
  %indvars.iv1030.i = phi i64 [ %indvars.iv.next1031.i, %for.inc429.i ], [ 0, %for.body418.i.preheader ]
  %arrayidx420.i = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1072), i64 %indvars.iv1030.i
  %198 = load i8, ptr %arrayidx420.i, align 1
  %199 = sext i8 %198 to i64
  %cmp422.i = icmp eq i64 %indvars.iv1033.i, %199
  br i1 %cmp422.i, label %if.then424.i, label %for.inc429.i

if.then424.i:                                     ; preds = %for.body418.i
  %arrayidx426.i = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 960), i64 %indvars.iv1030.i
  %200 = load ptr, ptr %arrayidx426.i, align 8
  %call427.i = tail call zeroext i8 @validate_unshare_change(ptr noundef %insn.0.i, ptr noundef %200, ptr noundef %196, i8 noundef zeroext 1) #7
  br label %for.inc429.i

for.inc429.i:                                     ; preds = %if.then424.i, %for.body418.i
  %indvars.iv.next1031.i = add nuw nsw i64 %indvars.iv1030.i, 1
  %201 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1087), align 1
  %202 = sext i8 %201 to i64
  %cmp416.i = icmp slt i64 %indvars.iv.next1031.i, %202
  br i1 %cmp416.i, label %for.body418.i, label %for.inc433.i.loopexit, !llvm.loop !15

for.inc433.i.loopexit:                            ; preds = %for.inc429.i
  br label %for.inc433.i

for.inc433.i:                                     ; preds = %for.inc433.i.loopexit, %if.then408.i, %if.end404.i, %if.else390.i, %if.end404.i.thread293, %if.else356.i, %land.lhs.true319.i, %for.body299.i
  %any_replacements.1.i = phi i8 [ %any_replacements.01012.i, %for.body299.i ], [ %any_replacements.01012.i, %land.lhs.true319.i ], [ %any_replacements.01012.i, %if.end404.i ], [ 1, %if.then408.i ], [ %any_replacements.01012.i, %if.else390.i ], [ %any_replacements.01012.i, %if.else356.i ], [ %any_replacements.01012.i, %if.end404.i.thread293 ], [ 1, %for.inc433.i.loopexit ]
  %indvars.iv.next1034.i = add nuw nsw i64 %indvars.iv1033.i, 1
  %exitcond1036.not.i = icmp eq i64 %indvars.iv.next1034.i, %wide.trip.count1035.i
  br i1 %exitcond1036.not.i, label %for.end435.i, label %for.body299.i, !llvm.loop !16

for.end435.i:                                     ; preds = %for.inc433.i
  %any_replacements.1.i.lcssa = phi i8 [ %any_replacements.1.i, %for.inc433.i ]
  %203 = icmp eq i8 %any_replacements.1.i.lcssa, 0
  br i1 %203, label %did_replacement.i, label %if.then437.i

if.then437.i:                                     ; preds = %for.end435.i
  %call438.i = tail call i32 @apply_change_group() #7
  %tobool439.not.i = icmp eq i32 %call438.i, 0
  br i1 %tobool439.not.i, label %for.body444.i.preheader, label %did_replacement.i

for.body444.i.preheader:                          ; preds = %if.then437.i
  br label %for.body444.i

for.body444.i:                                    ; preds = %for.inc454.i, %for.body444.i.preheader
  %indvars.iv1037.i = phi i64 [ %indvars.iv.next1038.i, %for.inc454.i ], [ 0, %for.body444.i.preheader ]
  %arrayidx446.i = getelementptr inbounds nuw i8, ptr %replaced.i, i64 %indvars.iv1037.i
  %204 = load i8, ptr %arrayidx446.i, align 1
  %tobool447.not.i = icmp eq i8 %204, 0
  br i1 %tobool447.not.i, label %for.inc454.i, label %if.then448.i

if.then448.i:                                     ; preds = %for.body444.i
  %arrayidx450.i = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv1037.i
  %205 = load ptr, ptr %arrayidx450.i, align 8
  %206 = load ptr, ptr %205, align 8
  %arrayidx452.i = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv1037.i
  store ptr %206, ptr %arrayidx452.i, align 8
  br label %for.inc454.i

for.inc454.i:                                     ; preds = %if.then448.i, %for.body444.i
  %indvars.iv.next1038.i = add nuw nsw i64 %indvars.iv1037.i, 1
  %exitcond1041.not.i = icmp eq i64 %indvars.iv.next1038.i, %wide.trip.count1035.i
  br i1 %exitcond1041.not.i, label %for.end456.i, label %for.body444.i, !llvm.loop !17

for.end456.i:                                     ; preds = %for.inc454.i
  %207 = load ptr, ptr @dump_file, align 8
  %tobool457.not.i = icmp eq ptr %207, null
  br i1 %tobool457.not.i, label %did_replacement.i, label %if.then458.i

if.then458.i:                                     ; preds = %for.end456.i
  %208 = load i32, ptr %u72.i, align 8
  %call461.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %207, ptr noundef nonnull @.str.11, i32 noundef %208) #7
  br label %did_replacement.i

did_replacement.i:                                ; preds = %if.then458.i, %for.end456.i, %if.then437.i, %for.end435.i, %no_move_special_case.i, %if.then278.i, %if.then263.i, %if.then232.i, %if.then230.i
  %bf.load469.i = load i32, ptr %insn.0.i, align 8
  %bf.clear470.i = and i32 %bf.load469.i, 65535
  %cmp471.i = icmp eq i32 %bf.clear470.i, 10
  br i1 %cmp471.i, label %for.body477.i.preheader, label %if.end484.i

for.body477.i.preheader:                          ; preds = %did_replacement.i
  br label %for.body477.i

for.body477.i:                                    ; preds = %for.inc481.i, %for.body477.i.preheader
  %indvars.iv1042.i = phi i64 [ %indvars.iv.next1043.i, %for.inc481.i ], [ 0, %for.body477.i.preheader ]
  %209 = load i64, ptr @regs_invalidated_by_call, align 8
  %shl.i220 = shl nuw nsw i64 1, %indvars.iv1042.i
  %and.i = and i64 %209, %shl.i220
  %tobool478.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool478.not.i, label %for.inc481.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body477.i
  %arrayidx.i.i.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %indvars.iv1042.i
  %oldest_regno.i.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i.i, i64 4
  %210 = load i32, ptr %oldest_regno.i.i.i, align 4
  %211 = zext i32 %210 to i64
  %cmp.not.i.i.i = icmp eq i64 %indvars.iv1042.i, %211
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %for.cond.i.i.i.preheader

for.cond.i.i.i.preheader:                         ; preds = %for.body.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i, %for.cond.i.i.i.preheader
  %i.0.i.i.i = phi i32 [ %212, %for.cond.i.i.i ], [ %210, %for.cond.i.i.i.preheader ]
  %idxprom6.i.i.i = zext i32 %i.0.i.i.i to i64
  %arrayidx7.i.i.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom6.i.i.i
  %next_regno.i.i.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i.i.i, i64 8
  %212 = load i32, ptr %next_regno.i.i.i, align 8
  %213 = zext i32 %212 to i64
  %cmp8.not.i.i.i = icmp eq i64 %indvars.iv1042.i, %213
  br i1 %cmp8.not.i.i.i, label %for.end.i.i.i, label %for.cond.i.i.i, !llvm.loop !4

for.end.i.i.i:                                    ; preds = %for.cond.i.i.i
  %arrayidx7.i.i.i.lcssa = phi ptr [ %arrayidx7.i.i.i, %for.cond.i.i.i ]
  %next_regno.i.i.i.le = getelementptr inbounds nuw i8, ptr %arrayidx7.i.i.i.lcssa, i64 8
  %next_regno16.i.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i.i, i64 8
  %214 = load i32, ptr %next_regno16.i.i.i, align 8
  store i32 %214, ptr %next_regno.i.i.i.le, align 8
  br label %if.end40.i.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i
  %next_regno24.i.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i.i, i64 8
  %215 = load i32, ptr %next_regno24.i.i.i, align 8
  %cmp25.not.i.i.i = icmp eq i32 %215, -1
  br i1 %cmp25.not.i.i.i, label %if.end40.i.i.i, label %for.body29.i.i.i.preheader

for.body29.i.i.i.preheader:                       ; preds = %if.else.i.i.i
  br label %for.body29.i.i.i

for.body29.i.i.i:                                 ; preds = %for.body29.i.i.i, %for.body29.i.i.i.preheader
  %i.189.i.i.i = phi i32 [ %216, %for.body29.i.i.i ], [ %215, %for.body29.i.i.i.preheader ]
  %idxprom31.i.i.i = zext i32 %i.189.i.i.i to i64
  %arrayidx32.i.i.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom31.i.i.i
  %oldest_regno33.i.i.i = getelementptr inbounds nuw i8, ptr %arrayidx32.i.i.i, i64 4
  store i32 %215, ptr %oldest_regno33.i.i.i, align 4
  %next_regno38.i.i.i = getelementptr inbounds nuw i8, ptr %arrayidx32.i.i.i, i64 8
  %216 = load i32, ptr %next_regno38.i.i.i, align 8
  %cmp28.not.i.i.i = icmp eq i32 %216, -1
  br i1 %cmp28.not.i.i.i, label %if.end40.i.i.i.loopexit, label %for.body29.i.i.i, !llvm.loop !5

if.end40.i.i.i.loopexit:                          ; preds = %for.body29.i.i.i
  br label %if.end40.i.i.i

if.end40.i.i.i:                                   ; preds = %if.end40.i.i.i.loopexit, %if.else.i.i.i, %for.end.i.i.i
  store i32 0, ptr %arrayidx.i.i.i, align 8
  %217 = trunc nuw nsw i64 %indvars.iv1042.i to i32
  store i32 %217, ptr %oldest_regno.i.i.i, align 4
  %next_regno51.i.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i.i, i64 8
  store i32 -1, ptr %next_regno51.i.i.i, align 8
  %debug_insn_changes.i.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i.i, i64 16
  %218 = load ptr, ptr %debug_insn_changes.i.i.i, align 8
  %tobool.not.i.i.i221 = icmp eq ptr %218, null
  br i1 %tobool.not.i.i.i221, label %for.end.i.i, label %for.body.i.i.i.i.preheader

for.body.i.i.i.i.preheader:                       ; preds = %if.end40.i.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i, %for.body.i.i.i.i.preheader
  %cur.012.i.i.i.i = phi ptr [ %219, %for.body.i.i.i.i ], [ %218, %for.body.i.i.i.i.preheader ]
  %219 = load ptr, ptr %cur.012.i.i.i.i, align 8
  %220 = load i32, ptr %n_debug_insn_changes.i215, align 4
  %dec.i.i.i.i = add i32 %220, -1
  store i32 %dec.i.i.i.i, ptr %n_debug_insn_changes.i215, align 4
  %221 = load ptr, ptr @debug_insn_changes_pool, align 8
  tail call void @pool_free(ptr noundef %221, ptr noundef nonnull %cur.012.i.i.i.i) #7
  %tobool.not.i.i.i.i = icmp eq ptr %219, null
  br i1 %tobool.not.i.i.i.i, label %free_debug_insn_changes.exit.i.i.i, label %for.body.i.i.i.i, !llvm.loop !6

free_debug_insn_changes.exit.i.i.i:               ; preds = %for.body.i.i.i.i
  store ptr null, ptr %debug_insn_changes.i.i.i, align 8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %free_debug_insn_changes.exit.i.i.i, %if.end40.i.i.i
  %222 = load i32, ptr %max_value_regs.i801.i, align 8
  %j.1.i.i = tail call i32 @llvm.usub.sat.i32(i32 %217, i32 %222)
  %223 = zext i32 %j.1.i.i to i64
  %cmp495.i.i = icmp samesign ugt i64 %indvars.iv1042.i, %223
  br i1 %cmp495.i.i, label %for.body5.i.i.preheader, label %for.inc481.i

for.body5.i.i.preheader:                          ; preds = %for.end.i.i
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %cleanup.i.i, %for.body5.i.i.preheader
  %indvars.iv103.i.i = phi i64 [ %indvars.iv.next104.i.i, %cleanup.i.i ], [ %223, %for.body5.i.i.preheader ]
  %indvars105.i.i = trunc i64 %indvars.iv103.i.i to i32
  %arrayidx.i754.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %indvars.iv103.i.i
  %224 = load i32, ptr %arrayidx.i754.i, align 8
  %cmp6.i.i = icmp eq i32 %224, 0
  br i1 %cmp6.i.i, label %cleanup.i.i, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.body5.i.i
  %arrayidx10.i.i = getelementptr inbounds nuw [87 x i8], ptr @hard_regno_nregs, i64 %indvars.iv103.i.i
  %idxprom15.i.i = zext i32 %224 to i64
  %arrayidx16.i.i = getelementptr inbounds nuw i8, ptr %arrayidx10.i.i, i64 %idxprom15.i.i
  %225 = load i8, ptr %arrayidx16.i.i, align 1
  %conv.i755.i = zext i8 %225 to i64
  %add17.i.i = add nuw i64 %indvars.iv103.i.i, %conv.i755.i
  %226 = and i64 %add17.i.i, 4294967295
  %cmp18.i.i = icmp samesign ugt i64 %226, %indvars.iv1042.i
  %cmp2293.i.i = icmp ne i8 %225, 0
  %or.cond.i.i = and i1 %cmp2293.i.i, %cmp18.i.i
  br i1 %or.cond.i.i, label %for.body24.i.i.preheader, label %cleanup.i.i

for.body24.i.i.preheader:                         ; preds = %if.end8.i.i
  br label %for.body24.i.i

for.body24.i.i:                                   ; preds = %kill_value_one_regno.exit90.i.i, %for.body24.i.i.preheader
  %indvars.iv98.i.i = phi i64 [ %indvars.iv.next99.i.i, %kill_value_one_regno.exit90.i.i ], [ 0, %for.body24.i.i.preheader ]
  %227 = trunc nuw nsw i64 %indvars.iv98.i.i to i32
  %add25.i.i = add i32 %227, %indvars105.i.i
  %idxprom.i56.i.i = zext i32 %add25.i.i to i64
  %arrayidx.i57.i.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom.i56.i.i
  %oldest_regno.i58.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i.i, i64 4
  %228 = load i32, ptr %oldest_regno.i58.i.i, align 4
  %cmp.not.i59.i.i = icmp eq i32 %228, %add25.i.i
  br i1 %cmp.not.i59.i.i, label %if.else.i80.i.i, label %for.cond.i60.i.i.preheader

for.cond.i60.i.i.preheader:                       ; preds = %for.body24.i.i
  br label %for.cond.i60.i.i

for.cond.i60.i.i:                                 ; preds = %for.cond.i60.i.i, %for.cond.i60.i.i.preheader
  %i.0.i61.i.i = phi i32 [ %229, %for.cond.i60.i.i ], [ %228, %for.cond.i60.i.i.preheader ]
  %idxprom6.i62.i.i = zext i32 %i.0.i61.i.i to i64
  %arrayidx7.i63.i.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom6.i62.i.i
  %next_regno.i64.i.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i63.i.i, i64 8
  %229 = load i32, ptr %next_regno.i64.i.i, align 8
  %cmp8.not.i65.i.i = icmp eq i32 %229, %add25.i.i
  br i1 %cmp8.not.i65.i.i, label %for.end.i66.i.i, label %for.cond.i60.i.i, !llvm.loop !4

for.end.i66.i.i:                                  ; preds = %for.cond.i60.i.i
  %arrayidx7.i63.i.i.lcssa = phi ptr [ %arrayidx7.i63.i.i, %for.cond.i60.i.i ]
  %next_regno.i64.i.i.le = getelementptr inbounds nuw i8, ptr %arrayidx7.i63.i.i.lcssa, i64 8
  %next_regno16.i68.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i.i, i64 8
  %230 = load i32, ptr %next_regno16.i68.i.i, align 8
  store i32 %230, ptr %next_regno.i64.i.i.le, align 8
  br label %if.end40.i69.i.i

if.else.i80.i.i:                                  ; preds = %for.body24.i.i
  %next_regno24.i81.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i.i, i64 8
  %231 = load i32, ptr %next_regno24.i81.i.i, align 8
  %cmp25.not.i82.i.i = icmp eq i32 %231, -1
  br i1 %cmp25.not.i82.i.i, label %if.end40.i69.i.i, label %for.body29.i83.i.i.preheader

for.body29.i83.i.i.preheader:                     ; preds = %if.else.i80.i.i
  br label %for.body29.i83.i.i

for.body29.i83.i.i:                               ; preds = %for.body29.i83.i.i, %for.body29.i83.i.i.preheader
  %i.189.i84.i.i = phi i32 [ %232, %for.body29.i83.i.i ], [ %231, %for.body29.i83.i.i.preheader ]
  %idxprom31.i85.i.i = zext i32 %i.189.i84.i.i to i64
  %arrayidx32.i86.i.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom31.i85.i.i
  %oldest_regno33.i87.i.i = getelementptr inbounds nuw i8, ptr %arrayidx32.i86.i.i, i64 4
  store i32 %231, ptr %oldest_regno33.i87.i.i, align 4
  %next_regno38.i88.i.i = getelementptr inbounds nuw i8, ptr %arrayidx32.i86.i.i, i64 8
  %232 = load i32, ptr %next_regno38.i88.i.i, align 8
  %cmp28.not.i89.i.i = icmp eq i32 %232, -1
  br i1 %cmp28.not.i89.i.i, label %if.end40.i69.i.i.loopexit, label %for.body29.i83.i.i, !llvm.loop !5

if.end40.i69.i.i.loopexit:                        ; preds = %for.body29.i83.i.i
  br label %if.end40.i69.i.i

if.end40.i69.i.i:                                 ; preds = %if.end40.i69.i.i.loopexit, %if.else.i80.i.i, %for.end.i66.i.i
  store i32 0, ptr %arrayidx.i57.i.i, align 8
  store i32 %add25.i.i, ptr %oldest_regno.i58.i.i, align 4
  %next_regno51.i70.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i.i, i64 8
  store i32 -1, ptr %next_regno51.i70.i.i, align 8
  %debug_insn_changes.i71.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i57.i.i, i64 16
  %233 = load ptr, ptr %debug_insn_changes.i71.i.i, align 8
  %tobool.not.i72.i.i = icmp eq ptr %233, null
  br i1 %tobool.not.i72.i.i, label %kill_value_one_regno.exit90.i.i, label %for.body.i.i75.i.i.preheader

for.body.i.i75.i.i.preheader:                     ; preds = %if.end40.i69.i.i
  br label %for.body.i.i75.i.i

for.body.i.i75.i.i:                               ; preds = %for.body.i.i75.i.i, %for.body.i.i75.i.i.preheader
  %cur.012.i.i76.i.i = phi ptr [ %234, %for.body.i.i75.i.i ], [ %233, %for.body.i.i75.i.i.preheader ]
  %234 = load ptr, ptr %cur.012.i.i76.i.i, align 8
  %235 = load i32, ptr %n_debug_insn_changes.i215, align 4
  %dec.i.i77.i.i = add i32 %235, -1
  store i32 %dec.i.i77.i.i, ptr %n_debug_insn_changes.i215, align 4
  %236 = load ptr, ptr @debug_insn_changes_pool, align 8
  tail call void @pool_free(ptr noundef %236, ptr noundef nonnull %cur.012.i.i76.i.i) #7
  %tobool.not.i.i78.i.i = icmp eq ptr %234, null
  br i1 %tobool.not.i.i78.i.i, label %free_debug_insn_changes.exit.i79.i.i, label %for.body.i.i75.i.i, !llvm.loop !6

free_debug_insn_changes.exit.i79.i.i:             ; preds = %for.body.i.i75.i.i
  store ptr null, ptr %debug_insn_changes.i71.i.i, align 8
  br label %kill_value_one_regno.exit90.i.i

kill_value_one_regno.exit90.i.i:                  ; preds = %free_debug_insn_changes.exit.i79.i.i, %if.end40.i69.i.i
  %indvars.iv.next99.i.i = add nuw nsw i64 %indvars.iv98.i.i, 1
  %exitcond102.not.i.i = icmp eq i64 %indvars.iv.next99.i.i, %conv.i755.i
  br i1 %exitcond102.not.i.i, label %cleanup.i.i.loopexit, label %for.body24.i.i, !llvm.loop !8

cleanup.i.i.loopexit:                             ; preds = %kill_value_one_regno.exit90.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.loopexit, %if.end8.i.i, %for.body5.i.i
  %indvars.iv.next104.i.i = add nuw nsw i64 %indvars.iv103.i.i, 1
  %exitcond107.not.i.i = icmp eq i64 %indvars.iv.next104.i.i, %indvars.iv1042.i
  br i1 %exitcond107.not.i.i, label %for.inc481.i.loopexit, label %for.body5.i.i, !llvm.loop !9

for.inc481.i.loopexit:                            ; preds = %cleanup.i.i
  br label %for.inc481.i

for.inc481.i:                                     ; preds = %for.inc481.i.loopexit, %for.end.i.i, %for.body477.i
  %indvars.iv.next1043.i = add nuw nsw i64 %indvars.iv1042.i, 1
  %exitcond1045.not.i = icmp eq i64 %indvars.iv.next1043.i, 53
  br i1 %exitcond1045.not.i, label %if.end484.i.loopexit, label %for.body477.i, !llvm.loop !18

if.end484.i.loopexit:                             ; preds = %for.inc481.i
  br label %if.end484.i

if.end484.i:                                      ; preds = %if.end484.i.loopexit, %did_replacement.i
  %237 = load ptr, ptr %arrayidx56.i, align 8
  tail call void @note_stores(ptr noundef %237, ptr noundef nonnull @kill_set_value, ptr noundef %add.ptr69) #7
  br i1 %tobool172.not.i, label %if.end507.i, label %land.lhs.true488.i

land.lhs.true488.i:                               ; preds = %if.end484.i
  %u489.i = getelementptr inbounds nuw i8, ptr %cond68.i, i64 8
  %238 = load ptr, ptr %u489.i, align 8
  %bf.load491.i = load i32, ptr %238, align 8
  %bf.clear492.i = and i32 %bf.load491.i, 65535
  %cmp493.i = icmp eq i32 %bf.clear492.i, 37
  br i1 %cmp493.i, label %land.lhs.true495.i, label %if.end507.i

land.lhs.true495.i:                               ; preds = %land.lhs.true488.i
  %arrayidx497.i = getelementptr inbounds nuw i8, ptr %cond68.i, i64 16
  %239 = load ptr, ptr %arrayidx497.i, align 8
  %bf.load498.i = load i32, ptr %239, align 8
  %bf.clear499.i = and i32 %bf.load498.i, 65535
  %cmp500.i = icmp eq i32 %bf.clear499.i, 37
  br i1 %cmp500.i, label %if.then502.i, label %if.end507.i

if.then502.i:                                     ; preds = %land.lhs.true495.i
  %240 = getelementptr i8, ptr %239, i64 8
  %.val706.i = load i32, ptr %240, align 8
  %241 = getelementptr i8, ptr %238, i64 8
  %dest.val.i.i = load i32, ptr %241, align 8
  %cmp.i756.i = icmp eq i32 %.val706.i, %dest.val.i.i
  %cmp2.i.i = icmp eq i32 %dest.val.i.i, 7
  %or.cond159.i.i = or i1 %cmp.i756.i, %cmp2.i.i
  br i1 %or.cond159.i.i, label %if.end507.i, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then502.i
  %242 = load i8, ptr getelementptr inbounds nuw (i8, ptr @x_rtl, i64 477), align 1
  %tobool.i.i = icmp ne i8 %242, 0
  %cmp5.i.i = icmp eq i32 %dest.val.i.i, 6
  %or.cond.i757.i = and i1 %cmp5.i.i, %tobool.i.i
  br i1 %or.cond.i757.i, label %if.end507.i, label %if.end8.i758.i

if.end8.i758.i:                                   ; preds = %if.end4.i.i
  %idxprom.i759.i = zext i32 %dest.val.i.i to i64
  %arrayidx.i760.i = getelementptr inbounds nuw i8, ptr @fixed_regs, i64 %idxprom.i759.i
  %243 = load i8, ptr %arrayidx.i760.i, align 1
  %tobool10.not.i.i = icmp eq i8 %243, 0
  br i1 %tobool10.not.i.i, label %lor.lhs.false.i.i, label %if.end507.i

lor.lhs.false.i.i:                                ; preds = %if.end8.i758.i
  %arrayidx12.i762.i = getelementptr inbounds nuw i8, ptr @global_regs, i64 %idxprom.i759.i
  %244 = load i8, ptr %arrayidx12.i762.i, align 1
  %tobool14.not.i.i = icmp eq i8 %244, 0
  br i1 %tobool14.not.i.i, label %if.end16.i.i, label %if.end507.i

if.end16.i.i:                                     ; preds = %lor.lhs.false.i.i
  %bf.lshr.i764.i = lshr i32 %bf.load491.i, 16
  %bf.clear.i765.i = and i32 %bf.lshr.i764.i, 255
  %idxprom19.i.i = zext nneg i32 %bf.clear.i765.i to i64
  %idxprom22.i.i = zext i32 %.val706.i to i64
  %arrayidx23.i.i = getelementptr inbounds nuw [87 x i8], ptr @hard_regno_nregs, i64 %idxprom22.i.i
  %arrayidx28.i.i = getelementptr inbounds nuw i8, ptr %arrayidx23.i.i, i64 %idxprom19.i.i
  %245 = load i8, ptr %arrayidx28.i.i, align 1
  %cmp30.i.i = icmp ugt i32 %dest.val.i.i, %.val706.i
  %conv29.i.i = zext i8 %245 to i32
  %add.i766.i = add i32 %.val706.i, %conv29.i.i
  %cmp33.i.i = icmp ult i32 %dest.val.i.i, %add.i766.i
  %or.cond157.i.i = select i1 %cmp30.i.i, i1 %cmp33.i.i, i1 false
  br i1 %or.cond157.i.i, label %if.end507.i, label %lor.lhs.false35.i.i

lor.lhs.false35.i.i:                              ; preds = %if.end16.i.i
  %arrayidx18.i.i = getelementptr inbounds nuw [87 x i8], ptr @hard_regno_nregs, i64 %idxprom.i759.i
  %arrayidx20.i767.i = getelementptr inbounds nuw i8, ptr %arrayidx18.i.i, i64 %idxprom19.i.i
  %246 = load i8, ptr %arrayidx20.i767.i, align 1
  %conv21.i.i = zext i8 %246 to i32
  %cmp36.i.i = icmp ugt i32 %.val706.i, %dest.val.i.i
  %add39.i.i = add i32 %dest.val.i.i, %conv21.i.i
  %cmp40.i.i = icmp ult i32 %.val706.i, %add39.i.i
  %or.cond158.i.i = select i1 %cmp36.i.i, i1 %cmp40.i.i, i1 false
  br i1 %or.cond158.i.i, label %if.end507.i, label %if.end43.i.i

if.end43.i.i:                                     ; preds = %lor.lhs.false35.i.i
  %arrayidx45.i.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom22.i.i
  %247 = load i32, ptr %arrayidx45.i.i, align 8
  %cmp46.i.i = icmp eq i32 %247, 0
  br i1 %cmp46.i.i, label %if.then48.i.i, label %if.else.i768.i

if.then48.i.i:                                    ; preds = %if.end43.i.i
  %arrayidx51.i.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom.i759.i
  %248 = load i32, ptr %arrayidx51.i.i, align 8
  store i32 %248, ptr %arrayidx45.i.i, align 8
  %idxprom4.i.i.i = zext i32 %248 to i64
  %arrayidx5.i.i.i = getelementptr inbounds nuw i8, ptr %arrayidx23.i.i, i64 %idxprom4.i.i.i
  %249 = load i8, ptr %arrayidx5.i.i.i, align 1
  %conv.i.i.i = zext i8 %249 to i32
  %250 = load i32, ptr %max_value_regs.i801.i, align 8
  %cmp.i.i770.i = icmp ult i32 %250, %conv.i.i.i
  br i1 %cmp.i.i770.i, label %if.then.i.i.i, label %if.end91.i.i

if.then.i.i.i:                                    ; preds = %if.then48.i.i
  store i32 %conv.i.i.i, ptr %max_value_regs.i801.i, align 8
  br label %if.end91.i.i

if.else.i768.i:                                   ; preds = %if.end43.i.i
  %idxprom59.i.i = zext i32 %247 to i64
  %arrayidx60.i.i = getelementptr inbounds nuw i8, ptr %arrayidx23.i.i, i64 %idxprom59.i.i
  %251 = load i8, ptr %arrayidx60.i.i, align 1
  %cmp86.i.i = icmp ugt i8 %245, %251
  br i1 %cmp86.i.i, label %if.end507.i, label %if.end91.i.i

if.end91.i.i:                                     ; preds = %if.else.i768.i, %if.then.i.i.i, %if.then48.i.i
  %oldest_regno.i.i = getelementptr inbounds nuw i8, ptr %arrayidx45.i.i, i64 4
  %252 = load i32, ptr %oldest_regno.i.i, align 4
  %arrayidx97.i.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom.i759.i
  %oldest_regno98.i.i = getelementptr inbounds nuw i8, ptr %arrayidx97.i.i, i64 4
  store i32 %252, ptr %oldest_regno98.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i, %if.end91.i.i
  %i.0.i.i = phi i32 [ %.val706.i, %if.end91.i.i ], [ %253, %for.cond.i.i ]
  %idxprom100.i.i = zext i32 %i.0.i.i to i64
  %arrayidx101.i.i = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr69, i64 %idxprom100.i.i
  %next_regno.i.i = getelementptr inbounds nuw i8, ptr %arrayidx101.i.i, i64 8
  %253 = load i32, ptr %next_regno.i.i, align 8
  %cmp102.not.i.i = icmp eq i32 %253, -1
  br i1 %cmp102.not.i.i, label %for.end.i769.i, label %for.cond.i.i, !llvm.loop !19

for.end.i769.i:                                   ; preds = %for.cond.i.i
  %arrayidx101.i.i.lcssa = phi ptr [ %arrayidx101.i.i, %for.cond.i.i ]
  %next_regno.i.i.le = getelementptr inbounds nuw i8, ptr %arrayidx101.i.i.lcssa, i64 8
  store i32 %dest.val.i.i, ptr %next_regno.i.i.le, align 8
  br label %if.end507.i

if.end507.i:                                      ; preds = %for.end.i769.i, %if.else.i768.i, %lor.lhs.false35.i.i, %if.end16.i.i, %lor.lhs.false.i.i, %if.end8.i758.i, %if.end4.i.i, %if.then502.i, %land.lhs.true495.i, %land.lhs.true488.i, %if.end484.i
  %254 = load ptr, ptr %il.i, align 8
  %end_509.i = getelementptr inbounds nuw i8, ptr %254, i64 8
  %255 = load ptr, ptr %end_509.i, align 8
  %cmp510.i = icmp eq ptr %insn.0.i, %255
  br i1 %cmp510.i, label %copyprop_hardreg_forward_1.exit, label %for.inc525.i

for.inc525.i:                                     ; preds = %if.end507.i, %if.end35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %replaced.i) #7
  %arrayidx527.i = getelementptr inbounds nuw i8, ptr %insn.0.i, i64 24
  br label %for.cond.i

copyprop_hardreg_forward_1.exit:                  ; preds = %if.end507.i, %if.end35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %replaced.i) #7
  %bb.0.in = getelementptr inbounds nuw i8, ptr %bb.0303, i64 56
  %bb.0 = load ptr, ptr %bb.0.in, align 8
  %256 = load ptr, ptr @cfun, align 8
  %cfg9 = getelementptr inbounds nuw i8, ptr %256, i64 8
  %257 = load ptr, ptr %cfg9, align 8
  %x_exit_block_ptr = getelementptr inbounds nuw i8, ptr %257, i64 8
  %258 = load ptr, ptr %x_exit_block_ptr, align 8
  %cmp.not = icmp eq ptr %bb.0, %258
  br i1 %cmp.not, label %for.end73.loopexit, label %for.body, !llvm.loop !20

for.end73.loopexit:                               ; preds = %copyprop_hardreg_forward_1.exit
  %.lcssa314 = phi ptr [ %257, %copyprop_hardreg_forward_1.exit ]
  br label %for.end73

for.end73:                                        ; preds = %for.end73.loopexit, %if.end
  %.lcssa = phi ptr [ %8, %if.end ], [ %.lcssa314, %for.end73.loopexit ]
  %259 = load i32, ptr @flag_var_tracking_assignments, align 4
  %tobool74.not = icmp eq i32 %259, 0
  br i1 %tobool74.not, label %if.end146, label %if.then75

if.then75:                                        ; preds = %for.end73
  %260 = load ptr, ptr %.lcssa, align 8
  %bb.1.in305 = getelementptr inbounds nuw i8, ptr %260, i64 56
  %bb.1306 = load ptr, ptr %bb.1.in305, align 8
  %261 = load ptr, ptr @cfun, align 8
  %cfg82307 = getelementptr inbounds nuw i8, ptr %261, i64 8
  %262 = load ptr, ptr %cfg82307, align 8
  %x_exit_block_ptr83308 = getelementptr inbounds nuw i8, ptr %262, i64 8
  %263 = load ptr, ptr %x_exit_block_ptr83308, align 8
  %cmp84.not309 = icmp eq ptr %bb.1306, %263
  br i1 %cmp84.not309, label %for.end145, label %for.body86.lr.ph

for.body86.lr.ph:                                 ; preds = %if.then75
  %elms87 = getelementptr inbounds nuw i8, ptr %call4, i64 16
  br label %for.body86

for.body86:                                       ; preds = %for.inc143, %for.body86.lr.ph
  %bb.1311 = phi ptr [ %bb.1306, %for.body86.lr.ph ], [ %bb.1, %for.inc143 ]
  %analyze_called.0310 = phi i8 [ 0, %for.body86.lr.ph ], [ %analyze_called.2, %for.inc143 ]
  %index88 = getelementptr inbounds nuw i8, ptr %bb.1311, i64 80
  %264 = load i32, ptr %index88, align 8
  %div89195 = lshr i32 %264, 6
  %idxprom90 = zext nneg i32 %div89195 to i64
  %arrayidx91 = getelementptr inbounds nuw i64, ptr %elms87, i64 %idxprom90
  %265 = load i64, ptr %arrayidx91, align 8
  %rem93 = and i32 %264, 63
  %sh_prom94 = zext nneg i32 %rem93 to i64
  %266 = shl nuw i64 1, %sh_prom94
  %267 = and i64 %266, %265
  %tobool97.not = icmp eq i64 %267, 0
  br i1 %tobool97.not, label %for.inc143, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %for.body86
  %idxprom100 = sext i32 %264 to i64
  %arrayidx101 = getelementptr inbounds %struct.value_data, ptr %call, i64 %idxprom100
  %n_debug_insn_changes102 = getelementptr inbounds nuw i8, ptr %arrayidx101, i64 1276
  %268 = load i32, ptr %n_debug_insn_changes102, align 4
  %tobool103.not = icmp eq i32 %268, 0
  br i1 %tobool103.not, label %for.inc143, label %if.then104

if.then104:                                       ; preds = %land.lhs.true98
  %tobool106.not = icmp eq i8 %analyze_called.0310, 0
  br i1 %tobool106.not, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.then104
  tail call void @df_analyze() #7
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.then104
  %call109 = tail call ptr @df_get_live_out(ptr noundef nonnull %bb.1311) #7
  br label %for.body113

for.body113:                                      ; preds = %for.body113.backedge, %if.end108
  %regno105.0304 = phi i32 [ 0, %if.end108 ], [ %regno105.0304.be, %for.body113.backedge ]
  %269 = load i32, ptr %index88, align 8
  %idxprom115 = sext i32 %269 to i64
  %arrayidx116 = getelementptr inbounds %struct.value_data, ptr %call, i64 %idxprom115
  %idxprom118 = zext nneg i32 %regno105.0304 to i64
  %arrayidx119 = getelementptr inbounds nuw %struct.value_data_entry, ptr %arrayidx116, i64 %idxprom118
  %debug_insn_changes120 = getelementptr inbounds nuw i8, ptr %arrayidx119, i64 16
  %270 = load ptr, ptr %debug_insn_changes120, align 8
  %tobool121.not = icmp eq ptr %270, null
  br i1 %tobool121.not, label %for.inc139, label %if.then122

if.then122:                                       ; preds = %for.body113
  %call123 = tail call i32 @bitmap_bit_p(ptr noundef %call109, i32 noundef %regno105.0304) #7
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end129, label %if.then125

if.then125:                                       ; preds = %if.then122
  %271 = load i32, ptr %index88, align 8
  %idx.ext127 = sext i32 %271 to i64
  %add.ptr128 = getelementptr inbounds %struct.value_data, ptr %call, i64 %idx.ext127
  %arrayidx.i229 = getelementptr inbounds nuw %struct.value_data_entry, ptr %add.ptr128, i64 %idxprom118
  %debug_insn_changes.i230 = getelementptr inbounds nuw i8, ptr %arrayidx.i229, i64 16
  %272 = load ptr, ptr %debug_insn_changes.i230, align 8
  %tobool.not18.i = icmp eq ptr %272, null
  br i1 %tobool.not18.i, label %apply_debug_insn_changes.exit, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.then125
  %insn.i = getelementptr inbounds nuw i8, ptr %272, i64 8
  %273 = load ptr, ptr %insn.i, align 8
  br label %for.body.i231

for.body.i231:                                    ; preds = %if.end.i, %for.body.preheader.i
  %last_insn.020.i = phi ptr [ %last_insn.1.i, %if.end.i ], [ %273, %for.body.preheader.i ]
  %change.019.i = phi ptr [ %279, %if.end.i ], [ %272, %for.body.preheader.i ]
  %insn5.i = getelementptr inbounds nuw i8, ptr %change.019.i, i64 8
  %274 = load ptr, ptr %insn5.i, align 8
  %cmp.not.i = icmp eq ptr %last_insn.020.i, %274
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i232

if.then.i232:                                     ; preds = %for.body.i231
  %call.i233 = tail call i32 @apply_change_group() #7
  %275 = load ptr, ptr %insn5.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i232, %for.body.i231
  %last_insn.1.i = phi ptr [ %275, %if.then.i232 ], [ %last_insn.020.i, %for.body.i231 ]
  %276 = load ptr, ptr %insn5.i, align 8
  %loc.i = getelementptr inbounds nuw i8, ptr %change.019.i, i64 16
  %277 = load ptr, ptr %loc.i, align 8
  %new_rtx.i = getelementptr inbounds nuw i8, ptr %change.019.i, i64 24
  %278 = load ptr, ptr %new_rtx.i, align 8
  %call8.i = tail call zeroext i8 @validate_change(ptr noundef %276, ptr noundef %277, ptr noundef %278, i8 noundef zeroext 1) #7
  %279 = load ptr, ptr %change.019.i, align 8
  %tobool.not.i234 = icmp eq ptr %279, null
  br i1 %tobool.not.i234, label %apply_debug_insn_changes.exit.loopexit, label %for.body.i231, !llvm.loop !21

apply_debug_insn_changes.exit.loopexit:           ; preds = %if.end.i
  br label %apply_debug_insn_changes.exit

apply_debug_insn_changes.exit:                    ; preds = %apply_debug_insn_changes.exit.loopexit, %if.then125
  %call9.i = tail call i32 @apply_change_group() #7
  br label %if.end129

if.end129:                                        ; preds = %apply_debug_insn_changes.exit, %if.then122
  %280 = load i32, ptr %index88, align 8
  %idxprom131 = sext i32 %280 to i64
  %arrayidx132 = getelementptr inbounds %struct.value_data, ptr %call, i64 %idxprom131
  %n_debug_insn_changes133 = getelementptr inbounds nuw i8, ptr %arrayidx132, i64 1276
  %281 = load i32, ptr %n_debug_insn_changes133, align 4
  %cmp134 = icmp ne i32 %281, 0
  %inc140 = add nuw nsw i32 %regno105.0304, 1
  %cmp111 = icmp ult i32 %regno105.0304, 52
  %or.cond312 = and i1 %cmp134, %cmp111
  br i1 %or.cond312, label %for.body113.backedge, label %for.inc143.loopexit

for.inc139:                                       ; preds = %for.body113
  %inc140.old = add nuw nsw i32 %regno105.0304, 1
  %cmp111.old = icmp ult i32 %regno105.0304, 52
  br i1 %cmp111.old, label %for.body113.backedge, label %for.inc143.loopexit

for.body113.backedge:                             ; preds = %for.inc139, %if.end129
  %regno105.0304.be = phi i32 [ %inc140.old, %for.inc139 ], [ %inc140, %if.end129 ]
  br label %for.body113, !llvm.loop !22

for.inc143.loopexit:                              ; preds = %for.inc139, %if.end129
  br label %for.inc143

for.inc143:                                       ; preds = %for.inc143.loopexit, %land.lhs.true98, %for.body86
  %analyze_called.2 = phi i8 [ %analyze_called.0310, %land.lhs.true98 ], [ %analyze_called.0310, %for.body86 ], [ 1, %for.inc143.loopexit ]
  %bb.1.in = getelementptr inbounds nuw i8, ptr %bb.1311, i64 56
  %bb.1 = load ptr, ptr %bb.1.in, align 8
  %282 = load ptr, ptr @cfun, align 8
  %cfg82 = getelementptr inbounds nuw i8, ptr %282, i64 8
  %283 = load ptr, ptr %cfg82, align 8
  %x_exit_block_ptr83 = getelementptr inbounds nuw i8, ptr %283, i64 8
  %284 = load ptr, ptr %x_exit_block_ptr83, align 8
  %cmp84.not = icmp eq ptr %bb.1, %284
  br i1 %cmp84.not, label %for.end145.loopexit, label %for.body86, !llvm.loop !23

for.end145.loopexit:                              ; preds = %for.inc143
  br label %for.end145

for.end145:                                       ; preds = %for.end145.loopexit, %if.then75
  %285 = load ptr, ptr @debug_insn_changes_pool, align 8
  tail call void @free_alloc_pool(ptr noundef %285) #7
  br label %if.end146

if.end146:                                        ; preds = %for.end145, %for.end73
  %286 = load ptr, ptr %call4, align 8
  tail call void @free(ptr noundef %286)
  tail call void @free(ptr noundef %call4)
  tail call void @free(ptr noundef %call)
  ret i32 0
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @df_analyze() local_unnamed_addr #3

declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
declare hidden fastcc zeroext range(i8 0, 2) i8 @replace_oldest_value_addr(ptr noundef, i32 noundef, i32 noundef range(i32 0, 256), ptr noundef, ptr noundef) unnamed_addr #2

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #3

declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @preprocess_constraints() local_unnamed_addr #3

declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
declare hidden void @cprop_find_used_regs(ptr noundef, ptr noundef) #2

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
declare hidden void @kill_clobbered_value(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ptr noundef captures(none)) #2

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
declare hidden range(i32 -1, 1) i32 @kill_autoinc_value(ptr noundef readonly captures(none), ptr noundef captures(none)) #2

; Function Attrs: nounwind uwtable
declare hidden fastcc ptr @find_oldest_value_reg(i32 noundef, ptr noundef readonly captures(none), ptr noundef readonly captures(none)) unnamed_addr #2

declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @apply_change_group() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
declare hidden void @kill_set_value(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ptr noundef captures(none)) #2

declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_i00_stat(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!18 = distinct !{!18, !1}
!19 = distinct !{!19, !1}
!20 = distinct !{!20, !1}
!21 = distinct !{!21, !1}
!22 = distinct !{!22, !1}
!23 = distinct !{!23, !1}
