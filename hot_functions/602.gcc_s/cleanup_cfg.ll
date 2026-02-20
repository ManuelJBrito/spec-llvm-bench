; ModuleID = '/tmp/tmp.pxBtuM64fz/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/cfgcleanup.c"
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
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }

@cfun = external local_unnamed_addr global ptr, align 8
@.str = external hidden unnamed_addr constant [118 x i8], align 1
@.str.1 = external hidden unnamed_addr constant [2 x i8], align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@crossjumps_occured = external hidden unnamed_addr global i1, align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@first_pass = external hidden unnamed_addr global i1, align 1
@.str.5 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.6 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.7 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.8 = external hidden unnamed_addr constant [119 x i8], align 1
@.str.9 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.10 = external hidden unnamed_addr constant [37 x i8], align 1
@.str.11 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.12 = external hidden unnamed_addr constant [40 x i8], align 1
@optimize = external local_unnamed_addr global i32, align 4
@.str.13 = external hidden unnamed_addr constant [25 x i8], align 1
@.str.14 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.15 = external hidden unnamed_addr constant [38 x i8], align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8

; Function Attrs: nounwind uwtable
declare dso_local zeroext range(i8 0, 2) i8 @delete_unreachable_blocks() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @current_ir_type() local_unnamed_addr #2

declare void @delete_basic_block(ptr noundef) local_unnamed_addr #2

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
declare dso_local void @delete_dead_jumptables() local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext range(i8 0, 2) i8 @cleanup_cfg(i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %label.i.i = alloca ptr, align 8
  %table.i.i = alloca ptr, align 8
  %cond2.i.i.i = alloca ptr, align 8
  %call = tail call i32 @current_ir_type() #7
  %cmp = icmp eq i32 %call, 2
  %or = or i32 %mode, 32
  %spec.select = select i1 %cmp, i32 %or, i32 %mode
  %0 = load i8, ptr @timevar_enable, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.then1

if.then1:                                         ; preds = %entry
  tail call void @timevar_push_1(i32 noundef 23) #7
  br label %do.end

do.end:                                           ; preds = %if.then1, %entry
  %call3 = tail call zeroext i8 @delete_unreachable_blocks()
  %tobool4.not = icmp eq i8 %call3, 0
  br i1 %tobool4.not, label %if.end13, label %if.then5

if.then5:                                         ; preds = %do.end
  %and = and i32 %spec.select, 16
  %tobool6 = icmp ne i32 %and, 0
  %1 = load i32, ptr @reload_completed, align 4
  %tobool7 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool6, i1 true, i1 %tobool7
  br i1 %or.cond, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.then5
  %call9 = tail call ptr @get_insns() #7
  %call10 = tail call i32 @max_reg_num() #7
  %call11 = tail call i32 @delete_trivially_dead_insns(ptr noundef %call9, i32 noundef %call10) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.then5, %do.end
  %changed.0 = phi i8 [ 1, %if.then5 ], [ 1, %if.then8 ], [ 0, %do.end ]
  tail call void @compact_blocks() #7
  %and14 = and i32 %spec.select, 2
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  tail call void @add_noreturn_fake_exit_edges() #7
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  %call18 = tail call zeroext i8 @dbg_cnt(i32 noundef 2) #7
  %tobool19.not = icmp eq i8 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end17
  %and.i = and i32 %spec.select, 10
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and123.i = and i32 %spec.select, 32
  %tobool124.not.not.i = icmp eq i32 %and123.i, 0
  %and12.i.i = and i32 %spec.select, 1
  %tobool13.not.i.i = icmp ne i32 %and12.i.i, 0
  %2 = and i32 %spec.select, 33
  %brmerge.not.i = icmp eq i32 %2, 1
  %and123.lobit.i = lshr exact i32 %and123.i, 5
  %conv279.i = trunc nuw nsw i32 %and123.lobit.i to i8
  %and115.i.i = and i32 %spec.select, 8
  %tobool116.i.i = icmp ne i32 %and115.i.i, 0
  %tobool289.not.i = icmp eq i32 %and14, 0
  %and25 = and i32 %spec.select, 16
  %tobool26.not = icmp eq i32 %and25, 0
  %and28 = and i32 %spec.select, 1
  %tobool29 = icmp eq i32 %and28, 0
  br label %while.cond

while.cond:                                       ; preds = %if.end46, %while.cond.preheader
  %changed.1 = phi i8 [ 1, %if.end46 ], [ %changed.0, %while.cond.preheader ]
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.cond
  call void @clear_bb_flags() #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.cond
  store i1 false, ptr @crossjumps_occured, align 1
  %3 = load ptr, ptr @cfun, align 8
  %cfg.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = load ptr, ptr %cfg.i, align 8
  %5 = load ptr, ptr %4, align 8
  %bb.0.in926.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %bb.0927.i = load ptr, ptr %bb.0.in926.i, align 8
  %x_exit_block_ptr929.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = load ptr, ptr %x_exit_block_ptr929.i, align 8
  %cmp.not930.i = icmp eq ptr %bb.0927.i, %6
  br i1 %cmp.not930.i, label %for.end.i, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.i.preheader
  %bb.0931.i = phi ptr [ %bb.0.i, %for.body.i ], [ %bb.0927.i, %for.body.i.preheader ]
  %call.i.i = call zeroext i8 @forwarder_block_p(ptr noundef %bb.0931.i) #7
  %tobool.not.i.i = icmp eq i8 %call.i.i, 0
  %flags1.i.i = getelementptr inbounds nuw i8, ptr %bb.0931.i, i64 96
  %7 = load i32, ptr %flags1.i.i, align 8
  %and.i.i = and i32 %7, -1025
  %masksel.i.i = select i1 %tobool.not.i.i, i32 0, i32 1024
  %and.sink.i.i = or disjoint i32 %and.i.i, %masksel.i.i
  store i32 %and.sink.i.i, ptr %flags1.i.i, align 8
  %bb.0.in.i = getelementptr inbounds nuw i8, ptr %bb.0931.i, i64 56
  %bb.0.i = load ptr, ptr %bb.0.in.i, align 8
  %8 = load ptr, ptr @cfun, align 8
  %cfg2.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %9 = load ptr, ptr %cfg2.i, align 8
  %x_exit_block_ptr.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %10 = load ptr, ptr %x_exit_block_ptr.i, align 8
  %cmp.not.i = icmp eq ptr %bb.0.i, %10
  br i1 %cmp.not.i, label %for.end.i.loopexit, label %for.body.i, !llvm.loop !0

for.end.i.loopexit:                               ; preds = %for.body.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %if.end.i
  %11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 976), align 8
  %call.i = call zeroext i8 %11() #7
  %tobool4.not.i = icmp eq i8 %call.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end319.i

if.then5.i:                                       ; preds = %for.end.i
  store i1 true, ptr @first_pass, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end314.i, %if.then5.i
  %iterations.0.i = phi i32 [ 0, %if.then5.i ], [ %inc.i, %if.end314.i ]
  %changed_overall.0.i = phi i8 [ 0, %if.then5.i ], [ %or.i, %if.end314.i ]
  %inc.i = add nuw nsw i32 %iterations.0.i, 1
  %12 = load ptr, ptr @dump_file, align 8
  %tobool6.not.i = icmp eq ptr %12, null
  br i1 %tobool6.not.i, label %if.end9.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.body.i
  %call8.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.5, i32 noundef %inc.i) #7
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %do.body.i
  %13 = load ptr, ptr @cfun, align 8
  %cfg11.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %14 = load ptr, ptr %cfg11.i, align 8
  %15 = load ptr, ptr %14, align 8
  %next_bb13.i = getelementptr inbounds nuw i8, ptr %15, i64 56
  %16 = load ptr, ptr %next_bb13.i, align 8
  %x_exit_block_ptr17933.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %17 = load ptr, ptr %x_exit_block_ptr17933.i, align 8
  %cmp18.not934.i = icmp eq ptr %16, %17
  br i1 %cmp18.not934.i, label %for.end303.i, label %for.body19.i.preheader

for.body19.i.preheader:                           ; preds = %if.end9.i
  br label %for.body19.i

for.body19.i:                                     ; preds = %cleanup.i, %for.body19.i.preheader
  %18 = phi ptr [ %459, %cleanup.i ], [ %14, %for.body19.i.preheader ]
  %changed.0937.i = phi i8 [ %changed.3.i, %cleanup.i ], [ 0, %for.body19.i.preheader ]
  %b.0935.i = phi ptr [ %b.3.i, %cleanup.i ], [ %16, %for.body19.i.preheader ]
  %19 = load ptr, ptr %b.0935.i, align 8
  %tobool20.not.i = icmp eq ptr %19, null
  br i1 %tobool20.not.i, label %if.then42.i, label %VEC_edge_base_length.exit.i

VEC_edge_base_length.exit.i:                      ; preds = %for.body19.i
  %20 = load i32, ptr %19, align 8
  %cmp23.i = icmp eq i32 %20, 0
  br i1 %cmp23.i, label %if.then42.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %VEC_edge_base_length.exit.i
  %succs.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 8
  %21 = load ptr, ptr %succs.i, align 8
  %tobool24.not.i = icmp eq ptr %21, null
  br i1 %tobool24.not.i, label %land.lhs.true.i, label %VEC_edge_base_length.exit454.i

VEC_edge_base_length.exit454.i:                   ; preds = %lor.lhs.false.i
  %22 = load i32, ptr %21, align 8
  %cmp32.i = icmp eq i32 %22, 0
  br i1 %cmp32.i, label %land.lhs.true.i, label %if.end57.i

land.lhs.true.i:                                  ; preds = %VEC_edge_base_length.exit454.i, %lor.lhs.false.i
  %23 = getelementptr i8, ptr %b.0935.i, i64 64
  %b.0.val.i = load ptr, ptr %23, align 8
  %end_.i.i = getelementptr inbounds nuw i8, ptr %b.0.val.i, i64 8
  %24 = load ptr, ptr %b.0.val.i, align 8
  %insn.01.i.i = load ptr, ptr %end_.i.i, align 8
  %cmp3.i.i = icmp eq ptr %insn.01.i.i, %24
  br i1 %cmp3.i.i, label %land.lhs.true35.i, label %if.end.i.i.preheader

if.end.i.i.preheader:                             ; preds = %land.lhs.true.i
  br label %if.end.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr inbounds nuw i8, ptr %insn.04.i.i, i64 16
  %insn.0.i.i = load ptr, ptr %arrayidx.i.i, align 8
  %cmp.i.i = icmp eq ptr %insn.0.i.i, %24
  br i1 %cmp.i.i, label %land.lhs.true35.i.loopexit, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.cond.i.i, %if.end.i.i.preheader
  %insn.04.i.i = phi ptr [ %insn.0.i.i, %while.cond.i.i ], [ %insn.01.i.i, %if.end.i.i.preheader ]
  %bf.load.i.i = load i32, ptr %insn.04.i.i, align 8
  %bf.clear.i.i = and i32 %bf.load.i.i, 65535
  %cmp2.i.i = icmp eq i32 %bf.clear.i.i, 7
  br i1 %cmp2.i.i, label %while.cond.i.i, label %if.end57.i.loopexit

land.lhs.true35.i.loopexit:                       ; preds = %while.cond.i.i
  br label %land.lhs.true35.i

land.lhs.true35.i:                                ; preds = %land.lhs.true35.i.loopexit, %land.lhs.true.i
  %25 = load ptr, ptr %18, align 8
  %26 = getelementptr i8, ptr %25, i64 8
  %bb.val.i.i = load ptr, ptr %26, align 8
  %tobool.not.i.i.i = icmp eq ptr %bb.val.i.i, null
  br i1 %tobool.not.i.i.i, label %cond.true.i455.i, label %single_succ_p.exit.i.i

single_succ_p.exit.i.i:                           ; preds = %land.lhs.true35.i
  %27 = load i32, ptr %bb.val.i.i, align 8
  %.not.i.i = icmp eq i32 %27, 1
  br i1 %.not.i.i, label %single_succ_edge.exit.i, label %cond.true.i455.i

cond.true.i455.i:                                 ; preds = %single_succ_p.exit.i.i, %land.lhs.true35.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #7
  br label %single_succ_edge.exit.i

single_succ_edge.exit.i:                          ; preds = %cond.true.i455.i, %single_succ_p.exit.i.i
  %28 = load ptr, ptr %26, align 8
  %vec.i.i.i = getelementptr inbounds nuw i8, ptr %28, i64 8
  %29 = load ptr, ptr %vec.i.i.i, align 8
  %dest.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  %30 = load ptr, ptr %dest.i, align 8
  %cmp40.not.i = icmp eq ptr %30, %b.0935.i
  br i1 %cmp40.not.i, label %if.end57.i, label %if.then42.i

if.then42.i:                                      ; preds = %single_succ_edge.exit.i, %VEC_edge_base_length.exit.i, %for.body19.i
  %prev_bb.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 48
  %31 = load ptr, ptr %prev_bb.i, align 8
  call void @delete_basic_block(ptr noundef %b.0935.i) #7
  %spec.select440.i = select i1 %tobool124.not.not.i, i8 1, i8 %changed.0937.i
  %32 = load ptr, ptr @cfun, align 8
  %cfg48.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  %33 = load ptr, ptr %cfg48.i, align 8
  %34 = load ptr, ptr %33, align 8
  %cmp50.i = icmp eq ptr %31, %34
  br i1 %cmp50.i, label %cond.true52.i, label %cleanup.i, !llvm.loop !2

cond.true52.i:                                    ; preds = %if.then42.i
  %next_bb53.i = getelementptr inbounds nuw i8, ptr %31, i64 56
  %35 = load ptr, ptr %next_bb53.i, align 8
  br label %cleanup.i, !llvm.loop !2

if.end57.i.loopexit:                              ; preds = %if.end.i.i
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.end57.i.loopexit, %single_succ_edge.exit.i, %VEC_edge_base_length.exit454.i
  %b.0.val449.i = load ptr, ptr %b.0935.i, align 8
  %tobool.not.i456.i = icmp eq ptr %b.0.val449.i, null
  br i1 %tobool.not.i456.i, label %if.end122.i, label %single_pred_p.exit.i

single_pred_p.exit.i:                             ; preds = %if.end57.i
  %36 = load i32, ptr %b.0.val449.i, align 8
  %.not.i = icmp eq i32 %36, 1
  br i1 %.not.i, label %single_pred_edge.exit.i, label %if.end122.i

single_pred_edge.exit.i:                          ; preds = %single_pred_p.exit.i
  %vec.i.i461.i = getelementptr inbounds nuw i8, ptr %b.0.val449.i, i64 8
  %37 = load ptr, ptr %vec.i.i461.i, align 8
  %flags.i = getelementptr inbounds nuw i8, ptr %37, i64 48
  %38 = load i32, ptr %flags.i, align 8
  %39 = and i32 %38, 15
  %or.cond72 = icmp eq i32 %39, 1
  br i1 %or.cond72, label %land.lhs.true70.i, label %if.end122.i

land.lhs.true70.i:                                ; preds = %single_pred_edge.exit.i
  %il.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 64
  %40 = load ptr, ptr %il.i, align 8
  %41 = load ptr, ptr %40, align 8
  %bf.load.i = load i32, ptr %41, align 8
  %bf.clear.i = and i32 %bf.load.i, 65535
  %cmp71.i = icmp eq i32 %bf.clear.i, 12
  br i1 %cmp71.i, label %single_pred.exit.i, label %if.end122.i

single_pred.exit.i:                               ; preds = %land.lhs.true70.i
  %42 = load ptr, ptr %b.0935.i, align 8
  %vec.i.i.i.i = getelementptr inbounds nuw i8, ptr %42, i64 8
  %43 = load ptr, ptr %vec.i.i.i.i, align 8
  %44 = load ptr, ptr %43, align 8
  %45 = load ptr, ptr @cfun, align 8
  %cfg76.i = getelementptr inbounds nuw i8, ptr %45, i64 8
  %46 = load ptr, ptr %cfg76.i, align 8
  %47 = load ptr, ptr %46, align 8
  %cmp78.i = icmp eq ptr %44, %47
  br i1 %cmp78.i, label %if.then95.i, label %single_pred_p.exit.i.i472.i

single_pred_p.exit.i.i472.i:                      ; preds = %single_pred.exit.i
  %48 = load i32, ptr %42, align 8
  %.not.i.i473.i = icmp eq i32 %48, 1
  br i1 %.not.i.i473.i, label %single_pred.exit476.i, label %cond.true.i.i474.i

cond.true.i.i474.i:                               ; preds = %single_pred_p.exit.i.i472.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.1) #7
  br label %single_pred.exit476.i

single_pred.exit476.i:                            ; preds = %cond.true.i.i474.i, %single_pred_p.exit.i.i472.i
  %49 = load ptr, ptr %b.0935.i, align 8
  %vec.i.i.i475.i = getelementptr inbounds nuw i8, ptr %49, i64 8
  %50 = load ptr, ptr %vec.i.i.i475.i, align 8
  %51 = load ptr, ptr %50, align 8
  %il82.i = getelementptr inbounds nuw i8, ptr %51, i64 64
  %52 = load ptr, ptr %il82.i, align 8
  %end_.i = getelementptr inbounds nuw i8, ptr %52, i64 8
  %53 = load ptr, ptr %end_.i, align 8
  %bf.load83.i = load i32, ptr %53, align 8
  %bf.clear84.i = and i32 %bf.load83.i, 65535
  %cmp85.i = icmp eq i32 %bf.clear84.i, 9
  br i1 %cmp85.i, label %single_pred_p.exit.i.i479.i, label %if.then95.i

single_pred_p.exit.i.i479.i:                      ; preds = %single_pred.exit476.i
  %54 = load ptr, ptr %il.i, align 8
  %55 = load ptr, ptr %54, align 8
  %56 = load i32, ptr %49, align 8
  %.not.i.i480.i = icmp eq i32 %56, 1
  br i1 %.not.i.i480.i, label %single_pred.exit483.i, label %cond.true.i.i481.i

cond.true.i.i481.i:                               ; preds = %single_pred_p.exit.i.i479.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.1) #7
  br label %single_pred.exit483.i

single_pred.exit483.i:                            ; preds = %cond.true.i.i481.i, %single_pred_p.exit.i.i479.i
  %57 = load ptr, ptr %b.0935.i, align 8
  %vec.i.i.i482.i = getelementptr inbounds nuw i8, ptr %57, i64 8
  %58 = load ptr, ptr %vec.i.i.i482.i, align 8
  %59 = load ptr, ptr %58, align 8
  %il91.i = getelementptr inbounds nuw i8, ptr %59, i64 64
  %60 = load ptr, ptr %il91.i, align 8
  %end_92.i = getelementptr inbounds nuw i8, ptr %60, i64 8
  %61 = load ptr, ptr %end_92.i, align 8
  %call93.i = call zeroext i8 @label_is_jump_target_p(ptr noundef %55, ptr noundef %61) #7
  %tobool94.not.i = icmp eq i8 %call93.i, 0
  br i1 %tobool94.not.i, label %if.then95.i, label %if.end122.i

if.then95.i:                                      ; preds = %single_pred.exit483.i, %single_pred.exit476.i, %single_pred.exit.i
  %62 = load ptr, ptr %il.i, align 8
  %63 = load ptr, ptr %62, align 8
  call void @delete_insn_chain(ptr noundef %63, ptr noundef %63, i8 noundef zeroext 0) #7
  %64 = load ptr, ptr %il.i, align 8
  %65 = load ptr, ptr %64, align 8
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %65, i64 48
  %66 = load i32, ptr %arrayidx.i, align 8
  %cmp100.i = icmp eq i32 %66, 1
  br i1 %cmp100.i, label %if.then102.i, label %if.end117.i

if.then102.i:                                     ; preds = %if.then95.i
  %arrayidx106.i = getelementptr inbounds nuw i8, ptr %65, i64 24
  %67 = load ptr, ptr %arrayidx106.i, align 8
  call void @reorder_insns_nobb(ptr noundef %63, ptr noundef %63, ptr noundef %67) #7
  %68 = load ptr, ptr %il.i, align 8
  store ptr %67, ptr %68, align 8
  %69 = load ptr, ptr %il.i, align 8
  %end_110.i = getelementptr inbounds nuw i8, ptr %69, i64 8
  %70 = load ptr, ptr %end_110.i, align 8
  %cmp111.i = icmp eq ptr %70, %67
  br i1 %cmp111.i, label %if.then113.i, label %if.end117.i

if.then113.i:                                     ; preds = %if.then102.i
  store ptr %63, ptr %end_110.i, align 8
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then113.i, %if.then102.i, %if.then95.i
  %71 = load ptr, ptr @dump_file, align 8
  %tobool118.not.i = icmp eq ptr %71, null
  br i1 %tobool118.not.i, label %if.end122.i, label %if.then119.i

if.then119.i:                                     ; preds = %if.end117.i
  %index.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 80
  %72 = load i32, ptr %index.i, align 8
  %call120.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %71, ptr noundef nonnull @.str.6, i32 noundef %72) #7
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then119.i, %if.end117.i, %single_pred.exit483.i, %land.lhs.true70.i, %single_pred_edge.exit.i, %single_pred_p.exit.i, %if.end57.i
  br i1 %tobool124.not.not.i, label %land.lhs.true125.i, label %if.end176.i

land.lhs.true125.i:                               ; preds = %if.end122.i
  %b.0.val448.i = load ptr, ptr %b.0935.i, align 8
  %tobool.not.i484.i = icmp eq ptr %b.0.val448.i, null
  br i1 %tobool.not.i484.i, label %if.end176.i, label %single_pred_p.exit487.i

single_pred_p.exit487.i:                          ; preds = %land.lhs.true125.i
  %73 = load i32, ptr %b.0.val448.i, align 8
  %.not813.i = icmp eq i32 %73, 1
  br i1 %.not813.i, label %single_pred_edge.exit494.i, label %if.end176.i

single_pred_edge.exit494.i:                       ; preds = %single_pred_p.exit487.i
  %vec.i.i493.i = getelementptr inbounds nuw i8, ptr %b.0.val448.i, i64 8
  %74 = load ptr, ptr %vec.i.i493.i, align 8
  %flags131.i = getelementptr inbounds nuw i8, ptr %74, i64 48
  %75 = load i32, ptr %flags131.i, align 8
  %and132.i = and i32 %75, 1
  %tobool133.not.i = icmp eq i32 %and132.i, 0
  br i1 %tobool133.not.i, label %if.end176.i, label %land.lhs.true134.i

land.lhs.true134.i:                               ; preds = %single_pred_edge.exit494.i
  %il135.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 64
  %76 = load ptr, ptr %il135.i, align 8
  %77 = load ptr, ptr %76, align 8
  %bf.load137.i = load i32, ptr %77, align 8
  %bf.clear138.i = and i32 %bf.load137.i, 65535
  %cmp139.i = icmp eq i32 %bf.clear138.i, 12
  br i1 %cmp139.i, label %if.end176.i, label %land.lhs.true141.i

land.lhs.true141.i:                               ; preds = %land.lhs.true134.i
  %flags142.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 96
  %78 = load i32, ptr %flags142.i, align 8
  %and143.i = and i32 %78, 1024
  %tobool144.not.i = icmp eq i32 %and143.i, 0
  br i1 %tobool144.not.i, label %if.end176.i, label %land.lhs.true145.i

land.lhs.true145.i:                               ; preds = %land.lhs.true141.i
  %bb.val.i495.i = load ptr, ptr %succs.i, align 8
  %tobool.not.i.i496.i = icmp eq ptr %bb.val.i495.i, null
  br i1 %tobool.not.i.i496.i, label %cond.true.i499.i, label %single_succ_p.exit.i497.i

single_succ_p.exit.i497.i:                        ; preds = %land.lhs.true145.i
  %79 = load i32, ptr %bb.val.i495.i, align 8
  %.not.i498.i = icmp eq i32 %79, 1
  br i1 %.not.i498.i, label %single_succ_edge.exit501.i, label %cond.true.i499.i

cond.true.i499.i:                                 ; preds = %single_succ_p.exit.i497.i, %land.lhs.true145.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #7
  br label %single_succ_edge.exit501.i

single_succ_edge.exit501.i:                       ; preds = %cond.true.i499.i, %single_succ_p.exit.i497.i
  %80 = load ptr, ptr %succs.i, align 8
  %vec.i.i500.i = getelementptr inbounds nuw i8, ptr %80, i64 8
  %81 = load ptr, ptr %vec.i.i500.i, align 8
  %flags147.i = getelementptr inbounds nuw i8, ptr %81, i64 48
  %82 = load i32, ptr %flags147.i, align 8
  %and148.i = and i32 %82, 1
  %tobool149.not.i = icmp eq i32 %and148.i, 0
  br i1 %tobool149.not.i, label %if.end176.i, label %land.lhs.true150.i

land.lhs.true150.i:                               ; preds = %single_succ_edge.exit501.i
  %83 = load ptr, ptr @cfun, align 8
  %cfg152.i = getelementptr inbounds nuw i8, ptr %83, i64 8
  %84 = load ptr, ptr %cfg152.i, align 8
  %x_n_basic_blocks.i = getelementptr inbounds nuw i8, ptr %84, i64 24
  %85 = load i32, ptr %x_n_basic_blocks.i, align 8
  %cmp153.i = icmp sgt i32 %85, 3
  br i1 %cmp153.i, label %if.then155.i, label %if.end176.i

if.then155.i:                                     ; preds = %land.lhs.true150.i
  %86 = load ptr, ptr @dump_file, align 8
  %tobool156.not.i = icmp eq ptr %86, null
  br i1 %tobool156.not.i, label %if.end160.i, label %if.then157.i

if.then157.i:                                     ; preds = %if.then155.i
  %index158.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 80
  %87 = load i32, ptr %index158.i, align 8
  %call159.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %86, ptr noundef nonnull @.str.7, i32 noundef %87) #7
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.then157.i, %if.then155.i
  %prev_bb161.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 48
  %88 = load ptr, ptr %prev_bb161.i, align 8
  %89 = load ptr, ptr @cfun, align 8
  %cfg163.i = getelementptr inbounds nuw i8, ptr %89, i64 8
  %90 = load ptr, ptr %cfg163.i, align 8
  %91 = load ptr, ptr %90, align 8
  %cmp165.i = icmp eq ptr %88, %91
  br i1 %cmp165.i, label %cond.true167.i, label %cond.end171.i

cond.true167.i:                                   ; preds = %if.end160.i
  %next_bb168.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 56
  %92 = load ptr, ptr %next_bb168.i, align 8
  br label %cond.end171.i

cond.end171.i:                                    ; preds = %cond.true167.i, %if.end160.i
  %cond172.i = phi ptr [ %92, %cond.true167.i ], [ %88, %if.end160.i ]
  %bb.val.i502.i = load ptr, ptr %b.0935.i, align 8
  %tobool.not.i.i503.i = icmp eq ptr %bb.val.i502.i, null
  br i1 %tobool.not.i.i503.i, label %cond.true.i506.i, label %single_pred_p.exit.i504.i

single_pred_p.exit.i504.i:                        ; preds = %cond.end171.i
  %93 = load i32, ptr %bb.val.i502.i, align 8
  %.not.i505.i = icmp eq i32 %93, 1
  br i1 %.not.i505.i, label %single_pred_edge.exit508.i, label %cond.true.i506.i

cond.true.i506.i:                                 ; preds = %single_pred_p.exit.i504.i, %cond.end171.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.1) #7
  br label %single_pred_edge.exit508.i

single_pred_edge.exit508.i:                       ; preds = %cond.true.i506.i, %single_pred_p.exit.i504.i
  %94 = load ptr, ptr %b.0935.i, align 8
  %vec.i.i507.i = getelementptr inbounds nuw i8, ptr %94, i64 8
  %95 = load ptr, ptr %vec.i.i507.i, align 8
  %bb.val.i.i509.i = load ptr, ptr %succs.i, align 8
  %tobool.not.i.i.i510.i = icmp eq ptr %bb.val.i.i509.i, null
  br i1 %tobool.not.i.i.i510.i, label %cond.true.i.i512.i, label %single_succ_p.exit.i.i.i

single_succ_p.exit.i.i.i:                         ; preds = %single_pred_edge.exit508.i
  %96 = load i32, ptr %bb.val.i.i509.i, align 8
  %.not.i.i511.i = icmp eq i32 %96, 1
  br i1 %.not.i.i511.i, label %single_succ.exit.i, label %cond.true.i.i512.i

cond.true.i.i512.i:                               ; preds = %single_succ_p.exit.i.i.i, %single_pred_edge.exit508.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #7
  br label %single_succ.exit.i

single_succ.exit.i:                               ; preds = %cond.true.i.i512.i, %single_succ_p.exit.i.i.i
  %97 = load ptr, ptr %succs.i, align 8
  %vec.i.i.i513.i = getelementptr inbounds nuw i8, ptr %97, i64 8
  %98 = load ptr, ptr %vec.i.i.i513.i, align 8
  %dest.i.i = getelementptr inbounds nuw i8, ptr %98, i64 8
  %99 = load ptr, ptr %dest.i.i, align 8
  %call175.i = call ptr @redirect_edge_succ_nodup(ptr noundef %95, ptr noundef %99) #7
  call void @delete_basic_block(ptr noundef nonnull %b.0935.i) #7
  br label %cleanup.i, !llvm.loop !2

if.end176.i:                                      ; preds = %land.lhs.true150.i, %single_succ_edge.exit501.i, %land.lhs.true141.i, %land.lhs.true134.i, %single_pred_edge.exit494.i, %single_pred_p.exit487.i, %land.lhs.true125.i, %if.end122.i
  %b.0.val447.i = load ptr, ptr %succs.i, align 8
  %tobool.not.i514.i = icmp eq ptr %b.0.val447.i, null
  br i1 %tobool.not.i514.i, label %if.end241.i, label %single_succ_p.exit.i

single_succ_p.exit.i:                             ; preds = %if.end176.i
  %100 = load i32, ptr %b.0.val447.i, align 8
  %.not814.i = icmp eq i32 %100, 1
  br i1 %.not814.i, label %single_succ_edge.exit523.i, label %if.end241.i

single_succ_edge.exit523.i:                       ; preds = %single_succ_p.exit.i
  %vec.i.i522.i = getelementptr inbounds nuw i8, ptr %b.0.val447.i, i64 8
  %101 = load ptr, ptr %vec.i.i522.i, align 8
  %tobool182.not.i = icmp eq ptr %101, null
  br i1 %tobool182.not.i, label %if.end241.i, label %land.lhs.true183.i

land.lhs.true183.i:                               ; preds = %single_succ_edge.exit523.i
  %flags184.i = getelementptr inbounds nuw i8, ptr %101, i64 48
  %102 = load i32, ptr %flags184.i, align 8
  %and185.i = and i32 %102, 14
  %tobool186.not.i = icmp eq i32 %and185.i, 0
  br i1 %tobool186.not.i, label %land.lhs.true187.i, label %if.end241.i

land.lhs.true187.i:                               ; preds = %land.lhs.true183.i
  %dest188.i = getelementptr inbounds nuw i8, ptr %101, i64 8
  %103 = load ptr, ptr %dest188.i, align 8
  %104 = load ptr, ptr @cfun, align 8
  %cfg190.i = getelementptr inbounds nuw i8, ptr %104, i64 8
  %105 = load ptr, ptr %cfg190.i, align 8
  %x_exit_block_ptr191.i = getelementptr inbounds nuw i8, ptr %105, i64 8
  %106 = load ptr, ptr %x_exit_block_ptr191.i, align 8
  %cmp192.not.i = icmp eq ptr %103, %106
  br i1 %cmp192.not.i, label %if.end241.i, label %land.lhs.true194.i

land.lhs.true194.i:                               ; preds = %land.lhs.true187.i
  %.val.i = load ptr, ptr %103, align 8
  %tobool.not.i524.i = icmp eq ptr %.val.i, null
  br i1 %tobool.not.i524.i, label %if.end241.i, label %single_pred_p.exit527.i

single_pred_p.exit527.i:                          ; preds = %land.lhs.true194.i
  %107 = load i32, ptr %.val.i, align 8
  %108 = icmp ne i32 %107, 1
  %cmp199.not.i = icmp eq ptr %b.0935.i, %103
  %or.cond.i = or i1 %cmp199.not.i, %108
  br i1 %or.cond.i, label %if.end241.i, label %if.then201.i

if.then201.i:                                     ; preds = %single_pred_p.exit527.i
  br i1 %tobool124.not.not.i, label %land.lhs.true211.i, label %land.lhs.true204.i

land.lhs.true204.i:                               ; preds = %if.then201.i
  %call205.i = call zeroext i8 @can_merge_blocks_p(ptr noundef nonnull %b.0935.i, ptr noundef nonnull %103) #7
  %tobool207.not.i = icmp eq i8 %call205.i, 0
  br i1 %tobool207.not.i, label %if.end252.i, label %if.then208.i

if.then208.i:                                     ; preds = %land.lhs.true204.i
  call void @merge_blocks(ptr noundef nonnull %b.0935.i, ptr noundef nonnull %103) #7
  br label %if.end252.sink.split.i

land.lhs.true211.i:                               ; preds = %if.then201.i
  %il212.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 64
  %109 = load ptr, ptr %il212.i, align 8
  %end_213.i = getelementptr inbounds nuw i8, ptr %109, i64 8
  %110 = load ptr, ptr %end_213.i, align 8
  %bf.load214.i = load i32, ptr %110, align 8
  %bf.clear215.i = and i32 %bf.load214.i, 65535
  %cmp216.i = icmp eq i32 %bf.clear215.i, 9
  br i1 %cmp216.i, label %lor.lhs.false218.i, label %land.lhs.true235.i

lor.lhs.false218.i:                               ; preds = %land.lhs.true211.i
  %111 = load i32, ptr @reload_completed, align 4
  %tobool219.not.i = icmp eq i32 %111, 0
  br i1 %tobool219.not.i, label %cond.false225.i, label %cond.true220.i

cond.true220.i:                                   ; preds = %lor.lhs.false218.i
  %call223.i = call i32 @simplejump_p(ptr noundef nonnull %110) #7
  %tobool224.not.i = icmp eq i32 %call223.i, 0
  br i1 %tobool224.not.i, label %if.end241.i, label %land.lhs.true235.i

cond.false225.i:                                  ; preds = %lor.lhs.false218.i
  %call228.i = call i32 @onlyjump_p(ptr noundef nonnull %110) #7
  %tobool229.not.i = icmp eq i32 %call228.i, 0
  br i1 %tobool229.not.i, label %if.end241.i, label %land.lhs.true230.i

land.lhs.true230.i:                               ; preds = %cond.false225.i
  %112 = load ptr, ptr %il212.i, align 8
  %end_232.i = getelementptr inbounds nuw i8, ptr %112, i64 8
  %113 = load ptr, ptr %end_232.i, align 8
  %call233.i = call zeroext i8 @tablejump_p(ptr noundef %113, ptr noundef null, ptr noundef null) #7
  %tobool234.not.i = icmp eq i8 %call233.i, 0
  br i1 %tobool234.not.i, label %land.lhs.true235.i, label %if.end241.i

land.lhs.true235.i:                               ; preds = %land.lhs.true230.i, %cond.true220.i, %land.lhs.true211.i
  %flags.i.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 96
  %114 = load i32, ptr %flags.i.i, align 8
  %flags1.i534.i = getelementptr inbounds nuw i8, ptr %103, i64 96
  %115 = load i32, ptr %flags1.i534.i, align 8
  %116 = xor i32 %115, %114
  %117 = and i32 %116, 96
  %cmp.not.i.i = icmp eq i32 %117, 0
  br i1 %cmp.not.i.i, label %if.end.i535.i, label %merge_blocks_move.exit.i

if.end.i535.i:                                    ; preds = %land.lhs.true235.i
  %118 = load i32, ptr %flags184.i, align 8
  %and4.i.i = and i32 %118, 1
  %tobool.not.i536.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool.not.i536.i, label %if.else.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i535.i
  %index.i.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 80
  %119 = load i32, ptr %index.i.i, align 8
  %index6.i.i = getelementptr inbounds nuw i8, ptr %103, i64 80
  %120 = load i32, ptr %index6.i.i, align 8
  call void @merge_blocks(ptr noundef nonnull %b.0935.i, ptr noundef nonnull %103) #7
  %call.i.i.i = call zeroext i8 @forwarder_block_p(ptr noundef nonnull %b.0935.i) #7
  %tobool.not.i.i537.i = icmp eq i8 %call.i.i.i, 0
  %121 = load i32, ptr %flags.i.i, align 8
  %and.i.i.i = and i32 %121, -1025
  %masksel.i.i.i = select i1 %tobool.not.i.i537.i, i32 0, i32 1024
  %and.sink.i.i.i = or disjoint i32 %and.i.i.i, %masksel.i.i.i
  store i32 %and.sink.i.i.i, ptr %flags.i.i, align 8
  %122 = load ptr, ptr @dump_file, align 8
  %tobool7.not.i.i = icmp eq ptr %122, null
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.then5.i.i
  %call.i538.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %122, ptr noundef nonnull @.str.9, i32 noundef %119, i32 noundef %120) #7
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then8.i.i, %if.then5.i.i
  %prev_bb.i.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 48
  %123 = load ptr, ptr %prev_bb.i.i, align 8
  %124 = load ptr, ptr @cfun, align 8
  %cfg.i.i = getelementptr inbounds nuw i8, ptr %124, i64 8
  %125 = load ptr, ptr %cfg.i.i, align 8
  %126 = load ptr, ptr %125, align 8
  %cmp10.i.i = icmp eq ptr %123, %126
  %b..i.i = select i1 %cmp10.i.i, ptr %b.0935.i, ptr %123
  br label %merge_blocks_move.exit.i

if.else.i.i:                                      ; preds = %if.end.i535.i
  %127 = or i32 %115, %114
  %128 = and i32 %127, 1024
  %129 = icmp eq i32 %128, 0
  %or.cond187.i.i = and i1 %tobool13.not.i.i, %129
  br i1 %or.cond187.i.i, label %if.end22.i.i, label %merge_blocks_move.exit.i

if.end22.i.i:                                     ; preds = %if.else.i.i
  %succs.i.i = getelementptr inbounds nuw i8, ptr %103, i64 8
  br label %ei_container.exit.i.i.i.i

ei_container.exit.i.i.i.i:                        ; preds = %ei_next.exit.i.i, %if.end22.i.i
  %ei.sroa.0.0.i.i = phi i32 [ 0, %if.end22.i.i ], [ %inc.i.i.i, %ei_next.exit.i.i ]
  %130 = load ptr, ptr %succs.i.i, align 8
  %tobool.not.i.i.i539.i = icmp eq ptr %130, null
  br i1 %tobool.not.i.i.i539.i, label %ei_end_p.exit.i.i.i, label %cond.true.i11.i.i.i.i

cond.true.i11.i.i.i.i:                            ; preds = %ei_container.exit.i.i.i.i
  %131 = load i32, ptr %130, align 8
  br label %ei_end_p.exit.i.i.i

ei_end_p.exit.i.i.i:                              ; preds = %cond.true.i11.i.i.i.i, %ei_container.exit.i.i.i.i
  %cond.i.i.i.i.i = phi i32 [ %131, %cond.true.i11.i.i.i.i ], [ 0, %ei_container.exit.i.i.i.i ]
  %cmp.i.not.i.i.i = icmp eq i32 %ei.sroa.0.0.i.i, %cond.i.i.i.i.i
  br i1 %cmp.i.not.i.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %ei_end_p.exit.i.i.i
  %vec.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %130, i64 8
  %idxprom.i.i.i.i.i = zext i32 %ei.sroa.0.0.i.i to i64
  %arrayidx.i.i.i.i.i = getelementptr inbounds nuw ptr, ptr %vec.i.i.i.i.i, i64 %idxprom.i.i.i.i.i
  %132 = load ptr, ptr %arrayidx.i.i.i.i.i, align 8
  %flags26.i.i = getelementptr inbounds nuw i8, ptr %132, i64 48
  %133 = load i32, ptr %flags26.i.i, align 8
  %and27.i.i = and i32 %133, 1
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %VEC_edge_base_length.exit.i.i.i, label %for.end.i.i

VEC_edge_base_length.exit.i.i.i:                  ; preds = %for.body.i.i
  %134 = load i32, ptr %130, align 8
  %cmp.i.i.i = icmp ult i32 %ei.sroa.0.0.i.i, %134
  br i1 %cmp.i.i.i, label %ei_next.exit.i.i, label %cond.true3.i.i.i

cond.true3.i.i.i:                                 ; preds = %VEC_edge_base_length.exit.i.i.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #7
  br label %ei_next.exit.i.i

ei_next.exit.i.i:                                 ; preds = %cond.true3.i.i.i, %VEC_edge_base_length.exit.i.i.i
  %inc.i.i.i = add i32 %ei.sroa.0.0.i.i, 1
  br label %ei_container.exit.i.i.i.i, !llvm.loop !3

for.end.i.i:                                      ; preds = %for.body.i.i, %ei_end_p.exit.i.i.i
  %storemerge.i182.i.i = phi ptr [ %132, %for.body.i.i ], [ null, %ei_end_p.exit.i.i.i ]
  %cmp31.not.i.i = icmp eq ptr %storemerge.i182.i.i, null
  %tobool.not.i.i.i134.i.i = icmp eq ptr %b.0935.i, null
  br i1 %tobool.not.i.i.i134.i.i, label %ei_next.exit162.us.i.i.preheader, label %for.cond35.i.i.preheader

for.cond35.i.i.preheader:                         ; preds = %for.end.i.i
  br label %for.cond35.i.i

ei_next.exit162.us.i.i.preheader:                 ; preds = %for.end.i.i
  br label %ei_next.exit162.us.i.i

ei_next.exit162.us.i.i:                           ; preds = %ei_next.exit162.us.i.i, %ei_next.exit162.us.i.i.preheader
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 687, ptr noundef nonnull @.str.1) #7
  br label %ei_next.exit162.us.i.i, !llvm.loop !4

for.cond35.i.i:                                   ; preds = %ei_next.exit162.i.i, %for.cond35.i.i.preheader
  %ei.sroa.0.1.i.i = phi i32 [ %inc.i159.i.i, %ei_next.exit162.i.i ], [ 0, %for.cond35.i.i.preheader ]
  %135 = load ptr, ptr %b.0935.i, align 8
  %tobool.not.i.i136.i.i = icmp eq ptr %135, null
  br i1 %tobool.not.i.i136.i.i, label %ei_end_p.exit.i138.i.i, label %cond.true.i11.i.i137.i.i

cond.true.i11.i.i137.i.i:                         ; preds = %for.cond35.i.i
  %136 = load i32, ptr %135, align 8
  br label %ei_end_p.exit.i138.i.i

ei_end_p.exit.i138.i.i:                           ; preds = %cond.true.i11.i.i137.i.i, %for.cond35.i.i
  %cond.i.i.i139.i.i = phi i32 [ %136, %cond.true.i11.i.i137.i.i ], [ 0, %for.cond35.i.i ]
  %cmp.i.not.i140.i.i = icmp eq i32 %ei.sroa.0.1.i.i, %cond.i.i.i139.i.i
  br i1 %cmp.i.not.i140.i.i, label %for.end45.i.i, label %for.body38.i.i

for.body38.i.i:                                   ; preds = %ei_end_p.exit.i138.i.i
  %vec.i.i.i142.i.i = getelementptr inbounds nuw i8, ptr %135, i64 8
  %idxprom.i.i.i143.i.i = zext i32 %ei.sroa.0.1.i.i to i64
  %arrayidx.i.i.i144.i.i = getelementptr inbounds nuw ptr, ptr %vec.i.i.i142.i.i, i64 %idxprom.i.i.i143.i.i
  %137 = load ptr, ptr %arrayidx.i.i.i144.i.i, align 8
  %flags39.i.i = getelementptr inbounds nuw i8, ptr %137, i64 48
  %138 = load i32, ptr %flags39.i.i, align 8
  %and40.i.i = and i32 %138, 1
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i.i, label %VEC_edge_base_length.exit.i156.i.i, label %for.end45.i.i

VEC_edge_base_length.exit.i156.i.i:               ; preds = %for.body38.i.i
  %139 = load i32, ptr %135, align 8
  %cmp.i157.i.i = icmp ult i32 %ei.sroa.0.1.i.i, %139
  br i1 %cmp.i157.i.i, label %ei_next.exit162.i.i, label %cond.true3.i158.i.i

cond.true3.i158.i.i:                              ; preds = %VEC_edge_base_length.exit.i156.i.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #7
  br label %ei_next.exit162.i.i

ei_next.exit162.i.i:                              ; preds = %cond.true3.i158.i.i, %VEC_edge_base_length.exit.i156.i.i
  %inc.i159.i.i = add i32 %ei.sroa.0.1.i.i, 1
  br label %for.cond35.i.i, !llvm.loop !4

for.end45.i.i:                                    ; preds = %for.body38.i.i, %ei_end_p.exit.i138.i.i
  %.us-phi.ph189.i.i = phi ptr [ null, %ei_end_p.exit.i138.i.i ], [ %137, %for.body38.i.i ]
  %cmp46.not.i.i = icmp eq ptr %.us-phi.ph189.i.i, null
  %prev_bb49.i.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 48
  %140 = load ptr, ptr %prev_bb49.i.i, align 8
  %cmp50.i.i = icmp eq ptr %140, %103
  br i1 %cmp50.i.i, label %if.then52.i.i, label %if.end54.i.i

if.then52.i.i:                                    ; preds = %for.end45.i.i
  %prev_bb53.i.i = getelementptr inbounds nuw i8, ptr %103, i64 48
  %141 = load ptr, ptr %prev_bb53.i.i, align 8
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then52.i.i, %for.end45.i.i
  %next.0.i.i = phi ptr [ %141, %if.then52.i.i ], [ %140, %for.end45.i.i ]
  br i1 %cmp31.not.i.i, label %if.then56.i.i, label %if.end66.i.i

if.then56.i.i:                                    ; preds = %if.end54.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %label.i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %table.i.i) #7
  %142 = load i32, ptr %flags.i.i, align 8
  %143 = load i32, ptr %flags1.i534.i, align 8
  %144 = xor i32 %143, %142
  %145 = and i32 %144, 96
  %cmp.not.i673.i = icmp eq i32 %145, 0
  br i1 %cmp.not.i673.i, label %if.end.i674.i, label %merge_blocks_move_successor_nojumps.exit.i

if.end.i674.i:                                    ; preds = %if.then56.i.i
  %il.i675.i = getelementptr inbounds nuw i8, ptr %103, i64 64
  %146 = load ptr, ptr %il.i675.i, align 8
  %end_.i676.i = getelementptr inbounds nuw i8, ptr %146, i64 8
  %147 = load ptr, ptr %end_.i676.i, align 8
  %call.i677.i = call zeroext i8 @tablejump_p(ptr noundef %147, ptr noundef nonnull %label.i.i, ptr noundef nonnull %table.i.i) #7
  %tobool.not.i678.i = icmp eq i8 %call.i677.i, 0
  br i1 %tobool.not.i678.i, label %if.end13.i.i, label %land.lhs.true.i679.i

land.lhs.true.i679.i:                             ; preds = %if.end.i674.i
  %148 = load ptr, ptr %label.i.i, align 8
  %call5.i.i = call ptr @prev_active_insn(ptr noundef %148) #7
  %149 = load ptr, ptr %il.i675.i, align 8
  %end_7.i.i = getelementptr inbounds nuw i8, ptr %149, i64 8
  %150 = load ptr, ptr %end_7.i.i, align 8
  %cmp8.i.i = icmp eq ptr %call5.i.i, %150
  br i1 %cmp8.i.i, label %if.then10.i.i, label %if.end13.i.i

if.then10.i.i:                                    ; preds = %land.lhs.true.i679.i
  %151 = load ptr, ptr %table.i.i, align 8
  store ptr %151, ptr %end_7.i.i, align 8
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then10.i.i, %land.lhs.true.i679.i, %if.end.i674.i
  %152 = load ptr, ptr %il.i675.i, align 8
  %end_15.i.i = getelementptr inbounds nuw i8, ptr %152, i64 8
  %153 = load ptr, ptr %end_15.i.i, align 8
  %arrayidx.i680.i = getelementptr inbounds nuw i8, ptr %153, i64 24
  %154 = load ptr, ptr %arrayidx.i680.i, align 8
  %tobool16.not.i.i = icmp eq ptr %154, null
  br i1 %tobool16.not.i.i, label %if.end22.i683.i, label %land.lhs.true17.i.i

land.lhs.true17.i.i:                              ; preds = %if.end13.i.i
  %bf.load.i681.i = load i32, ptr %154, align 8
  %bf.clear.i682.i = and i32 %bf.load.i681.i, 65535
  %cmp18.i.i = icmp eq i32 %bf.clear.i682.i, 11
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.end22.i683.i

if.then20.i.i:                                    ; preds = %land.lhs.true17.i.i
  %call21.i685.i = call ptr @delete_insn(ptr noundef nonnull %154) #7
  br label %if.end22.i683.i

if.end22.i683.i:                                  ; preds = %if.then20.i.i, %land.lhs.true17.i.i, %if.end13.i.i
  %155 = load ptr, ptr %il.i675.i, align 8
  %156 = load ptr, ptr %155, align 8
  %end_25.i.i = getelementptr inbounds nuw i8, ptr %155, i64 8
  %157 = load ptr, ptr %end_25.i.i, align 8
  %158 = load ptr, ptr %il212.i, align 8
  %end_27.i.i = getelementptr inbounds nuw i8, ptr %158, i64 8
  %159 = load ptr, ptr %end_27.i.i, align 8
  call void @reorder_insns_nobb(ptr noundef %156, ptr noundef %157, ptr noundef %159) #7
  %160 = load ptr, ptr %il.i675.i, align 8
  %end_29.i.i = getelementptr inbounds nuw i8, ptr %160, i64 8
  store ptr %147, ptr %end_29.i.i, align 8
  %161 = load ptr, ptr @dump_file, align 8
  %tobool30.not.i.i = icmp eq ptr %161, null
  br i1 %tobool30.not.i.i, label %if.end34.i.i, label %if.then31.i.i

if.then31.i.i:                                    ; preds = %if.end22.i683.i
  %index.i684.i = getelementptr inbounds nuw i8, ptr %103, i64 80
  %162 = load i32, ptr %index.i684.i, align 8
  %index32.i.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 80
  %163 = load i32, ptr %index32.i.i, align 8
  %call33.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %161, ptr noundef nonnull @.str.10, i32 noundef %162, i32 noundef %163) #7
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then31.i.i, %if.end22.i683.i
  call void @merge_blocks(ptr noundef nonnull %b.0935.i, ptr noundef nonnull %103) #7
  br label %merge_blocks_move_successor_nojumps.exit.i

merge_blocks_move_successor_nojumps.exit.i:       ; preds = %if.end34.i.i, %if.then56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %table.i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %label.i.i) #7
  %164 = load ptr, ptr @cfun, align 8
  %cfg58.i.i = getelementptr inbounds nuw i8, ptr %164, i64 8
  %165 = load ptr, ptr %cfg58.i.i, align 8
  %166 = load ptr, ptr %165, align 8
  %cmp60.i.i = icmp eq ptr %next.0.i.i, %166
  br i1 %cmp60.i.i, label %cond.true62.i.i, label %merge_blocks_move.exit.i

cond.true62.i.i:                                  ; preds = %merge_blocks_move_successor_nojumps.exit.i
  %next_bb.i.i = getelementptr inbounds nuw i8, ptr %next.0.i.i, i64 56
  %167 = load ptr, ptr %next_bb.i.i, align 8
  br label %merge_blocks_move.exit.i

if.end66.i.i:                                     ; preds = %if.end54.i.i
  br i1 %cmp46.not.i.i, label %if.end80.i.i, label %if.then68.i.i

if.then68.i.i:                                    ; preds = %if.end66.i.i
  %168 = load ptr, ptr %.us-phi.ph189.i.i, align 8
  %169 = load ptr, ptr @cfun, align 8
  %cfg70.i.i = getelementptr inbounds nuw i8, ptr %169, i64 8
  %170 = load ptr, ptr %cfg70.i.i, align 8
  %171 = load ptr, ptr %170, align 8
  %cmp72.not.i.i = icmp eq ptr %168, %171
  br i1 %cmp72.not.i.i, label %merge_blocks_move.exit.i, label %if.end75.i.i

if.end75.i.i:                                     ; preds = %if.then68.i.i
  %call76.i.i = call ptr @force_nonfallthru(ptr noundef nonnull %.us-phi.ph189.i.i) #7
  %tobool77.not.i.i = icmp eq ptr %call76.i.i, null
  br i1 %tobool77.not.i.i, label %if.end80.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end75.i.i
  %call.i164.i.i = call zeroext i8 @forwarder_block_p(ptr noundef nonnull %call76.i.i) #7
  %tobool1.not.i.i.i = icmp eq i8 %call.i164.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end80.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  %flags.i.i.i = getelementptr inbounds nuw i8, ptr %call76.i.i, i64 96
  %172 = load i32, ptr %flags.i.i.i, align 8
  %or.i.i.i = or i32 %172, 1024
  store i32 %or.i.i.i, ptr %flags.i.i.i, align 8
  br label %if.end80.i.i

if.end80.i.i:                                     ; preds = %if.then2.i.i.i, %if.end.i.i.i, %if.end75.i.i, %if.end66.i.i
  %173 = load i32, ptr %flags.i.i, align 8
  %174 = load i32, ptr %flags1.i534.i, align 8
  %175 = xor i32 %174, %173
  %176 = and i32 %175, 96
  %cmp.not.i655.i = icmp eq i32 %176, 0
  br i1 %cmp.not.i655.i, label %if.end.i656.i, label %merge_blocks_move_predecessor_nojumps.exit.i

if.end.i656.i:                                    ; preds = %if.end80.i.i
  %177 = load ptr, ptr %il212.i, align 8
  %end_.i658.i = getelementptr inbounds nuw i8, ptr %177, i64 8
  %178 = load ptr, ptr %end_.i658.i, align 8
  %call.i659.i = call ptr @next_nonnote_insn(ptr noundef %178) #7
  %bf.load.i660.i = load i32, ptr %call.i659.i, align 8
  %bf.clear.i661.i = and i32 %bf.load.i660.i, 65535
  %cmp3.i662.i = icmp eq i32 %bf.clear.i661.i, 11
  br i1 %cmp3.i662.i, label %cond.end.i664.i, label %cond.true.i663.i

cond.true.i663.i:                                 ; preds = %if.end.i656.i
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 667, ptr noundef nonnull @.str.1) #7
  br label %cond.end.i664.i

cond.end.i664.i:                                  ; preds = %cond.true.i663.i, %if.end.i656.i
  %call4.i665.i = call ptr @delete_insn(ptr noundef nonnull %call.i659.i) #7
  %179 = load ptr, ptr %il212.i, align 8
  %end_6.i.i = getelementptr inbounds nuw i8, ptr %179, i64 8
  %180 = load ptr, ptr %end_6.i.i, align 8
  %il7.i.i = getelementptr inbounds nuw i8, ptr %103, i64 64
  %181 = load ptr, ptr %il7.i.i, align 8
  %182 = load ptr, ptr %181, align 8
  %arrayidx.i666.i = getelementptr inbounds nuw i8, ptr %182, i64 16
  %183 = load ptr, ptr %arrayidx.i666.i, align 8
  %cmp8.not.i.i = icmp eq ptr %180, %183
  br i1 %cmp8.not.i.i, label %if.end18.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %cond.end.i664.i
  %184 = load ptr, ptr %179, align 8
  call void @reorder_insns_nobb(ptr noundef %184, ptr noundef %180, ptr noundef %183) #7
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then9.i.i, %cond.end.i664.i
  call void @df_set_bb_dirty(ptr noundef nonnull %b.0935.i) #7
  %185 = load ptr, ptr @dump_file, align 8
  %tobool.not.i667.i = icmp eq ptr %185, null
  br i1 %tobool.not.i667.i, label %if.end22.i669.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.end18.i.i
  %index.i668.i = getelementptr inbounds nuw i8, ptr %b.0935.i, i64 80
  %186 = load i32, ptr %index.i668.i, align 8
  %index20.i.i = getelementptr inbounds nuw i8, ptr %103, i64 80
  %187 = load i32, ptr %index20.i.i, align 8
  %call21.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %185, ptr noundef nonnull @.str.11, i32 noundef %186, i32 noundef %187) #7
  br label %if.end22.i669.i

if.end22.i669.i:                                  ; preds = %if.then19.i.i, %if.end18.i.i
  call void @unlink_block(ptr noundef nonnull %b.0935.i) #7
  %prev_bb.i670.i = getelementptr inbounds nuw i8, ptr %103, i64 48
  %188 = load ptr, ptr %prev_bb.i670.i, align 8
  call void @link_block(ptr noundef nonnull %b.0935.i, ptr noundef %188) #7
  call void @merge_blocks(ptr noundef nonnull %b.0935.i, ptr noundef nonnull %103) #7
  br label %merge_blocks_move_predecessor_nojumps.exit.i

merge_blocks_move_predecessor_nojumps.exit.i:     ; preds = %if.end22.i669.i, %if.end80.i.i
  %189 = load ptr, ptr @cfun, align 8
  %cfg82.i.i = getelementptr inbounds nuw i8, ptr %189, i64 8
  %190 = load ptr, ptr %cfg82.i.i, align 8
  %191 = load ptr, ptr %190, align 8
  %cmp84.i.i = icmp eq ptr %next.0.i.i, %191
  br i1 %cmp84.i.i, label %cond.true86.i.i, label %merge_blocks_move.exit.i

cond.true86.i.i:                                  ; preds = %merge_blocks_move_predecessor_nojumps.exit.i
  %next_bb87.i.i = getelementptr inbounds nuw i8, ptr %next.0.i.i, i64 56
  %192 = load ptr, ptr %next_bb87.i.i, align 8
  br label %merge_blocks_move.exit.i

merge_blocks_move.exit.i:                         ; preds = %cond.true86.i.i, %merge_blocks_move_predecessor_nojumps.exit.i, %if.then68.i.i, %cond.true62.i.i, %merge_blocks_move_successor_nojumps.exit.i, %if.else.i.i, %if.end9.i.i, %land.lhs.true235.i
  %retval.2.i.i = phi ptr [ %b..i.i, %if.end9.i.i ], [ null, %land.lhs.true235.i ], [ null, %if.else.i.i ], [ %167, %cond.true62.i.i ], [ %next.0.i.i, %merge_blocks_move_successor_nojumps.exit.i ], [ %192, %cond.true86.i.i ], [ %next.0.i.i, %merge_blocks_move_predecessor_nojumps.exit.i ], [ null, %if.then68.i.i ]
  %tobool237.not.i = icmp ne ptr %retval.2.i.i, null
  %spec.select441.i = select i1 %tobool237.not.i, ptr %retval.2.i.i, ptr %b.0935.i
  %spec.select442.i = zext i1 %tobool237.not.i to i8
  br label %if.end241.i

if.end241.i:                                      ; preds = %merge_blocks_move.exit.i, %land.lhs.true230.i, %cond.false225.i, %cond.true220.i, %single_pred_p.exit527.i, %land.lhs.true194.i, %land.lhs.true187.i, %land.lhs.true183.i, %single_succ_edge.exit523.i, %single_succ_p.exit.i, %if.end176.i
  %b.1.i = phi ptr [ %b.0935.i, %land.lhs.true183.i ], [ %b.0935.i, %cond.true220.i ], [ %b.0935.i, %land.lhs.true230.i ], [ %b.0935.i, %cond.false225.i ], [ %b.0935.i, %single_pred_p.exit527.i ], [ %b.0935.i, %land.lhs.true187.i ], [ %b.0935.i, %single_succ_edge.exit523.i ], [ %b.0935.i, %single_succ_p.exit.i ], [ %spec.select441.i, %merge_blocks_move.exit.i ], [ %b.0935.i, %if.end176.i ], [ %b.0935.i, %land.lhs.true194.i ]
  %changed_here.0.i = phi i8 [ 0, %land.lhs.true183.i ], [ 0, %cond.true220.i ], [ 0, %land.lhs.true230.i ], [ 0, %cond.false225.i ], [ 0, %single_pred_p.exit527.i ], [ 0, %land.lhs.true187.i ], [ 0, %single_succ_edge.exit523.i ], [ 0, %single_succ_p.exit.i ], [ %spec.select442.i, %merge_blocks_move.exit.i ], [ 0, %if.end176.i ], [ 0, %land.lhs.true194.i ]
  br i1 %brmerge.not.i, label %land.lhs.true247.i, label %if.end252.i

land.lhs.true247.i:                               ; preds = %if.end241.i
  %succs.i540.i = getelementptr inbounds nuw i8, ptr %b.1.i, i64 8
  %193 = load ptr, ptr %succs.i540.i, align 8
  %tobool.not.i541.i = icmp eq ptr %193, null
  br i1 %tobool.not.i541.i, label %if.end252.i, label %VEC_edge_base_length.exit.i.i

VEC_edge_base_length.exit.i.i:                    ; preds = %land.lhs.true247.i
  %194 = load i32, ptr %193, align 8
  %cmp.not.i542.i = icmp eq i32 %194, 2
  br i1 %cmp.not.i542.i, label %if.end.i544.i, label %if.end252.i

if.end.i544.i:                                    ; preds = %VEC_edge_base_length.exit.i.i
  %il.i.i = getelementptr inbounds nuw i8, ptr %b.1.i, i64 64
  %195 = load ptr, ptr %il.i.i, align 8
  %end_.i545.i = getelementptr inbounds nuw i8, ptr %195, i64 8
  %196 = load ptr, ptr %end_.i545.i, align 8
  %call2.i.i = call i32 @any_condjump_p(ptr noundef %196) #7
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end252.i, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i544.i
  %197 = load ptr, ptr %succs.i540.i, align 8
  %vec.i.i546.i = getelementptr inbounds nuw i8, ptr %197, i64 8
  %198 = load ptr, ptr %vec.i.i546.i, align 8
  %flags.i547.i = getelementptr inbounds nuw i8, ptr %198, i64 48
  %199 = load i32, ptr %flags.i547.i, align 8
  %and.i548.i = and i32 %199, 1
  %tobool15.not.i.i = icmp eq i32 %and.i548.i, 0
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %197, i64 16
  %200 = load ptr, ptr %arrayidx.i.i.i, align 8
  %..i.i = select i1 %tobool15.not.i.i, ptr %200, ptr %198
  %.196.i.i = select i1 %tobool15.not.i.i, ptr %198, ptr %200
  %dest.i549.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  %201 = load ptr, ptr %dest.i549.i, align 8
  %.val.i.i = load ptr, ptr %201, align 8
  %tobool.not.i.i550.i = icmp eq ptr %.val.i.i, null
  br i1 %tobool.not.i.i550.i, label %if.end252.i, label %single_pred_p.exit.i551.i

single_pred_p.exit.i551.i:                        ; preds = %if.end5.i.i
  %202 = load i32, ptr %.val.i.i, align 8
  %.not.i552.i = icmp eq i32 %202, 1
  br i1 %.not.i552.i, label %lor.lhs.false.i.i, label %if.end252.i

lor.lhs.false.i.i:                                ; preds = %single_pred_p.exit.i551.i
  %next_bb.i553.i = getelementptr inbounds nuw i8, ptr %201, i64 56
  %203 = load ptr, ptr %next_bb.i553.i, align 8
  %204 = load ptr, ptr @cfun, align 8
  %cfg.i554.i = getelementptr inbounds nuw i8, ptr %204, i64 8
  %205 = load ptr, ptr %cfg.i554.i, align 8
  %x_exit_block_ptr.i.i = getelementptr inbounds nuw i8, ptr %205, i64 8
  %206 = load ptr, ptr %x_exit_block_ptr.i.i, align 8
  %cmp74.i.i = icmp eq ptr %203, %206
  br i1 %cmp74.i.i, label %if.end252.i, label %lor.lhs.false75.i.i

lor.lhs.false75.i.i:                              ; preds = %lor.lhs.false.i.i
  %flags76.i.i = getelementptr inbounds nuw i8, ptr %201, i64 96
  %207 = load i32, ptr %flags76.i.i, align 8
  %and77.i.i = and i32 %207, 1024
  %tobool78.not.i.i = icmp eq i32 %and77.i.i, 0
  br i1 %tobool78.not.i.i, label %if.end252.i, label %if.end80.i555.i

if.end80.i555.i:                                  ; preds = %lor.lhs.false75.i.i
  %208 = getelementptr i8, ptr %201, i64 8
  %bb.val.i.i.i.i = load ptr, ptr %208, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %bb.val.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %cond.true.i.i183.i.i, label %single_succ_p.exit.i.i.i.i

single_succ_p.exit.i.i.i.i:                       ; preds = %if.end80.i555.i
  %209 = load i32, ptr %bb.val.i.i.i.i, align 8
  %.not.i.i.i.i = icmp eq i32 %209, 1
  br i1 %.not.i.i.i.i, label %single_succ.exit.i.i, label %cond.true.i.i183.i.i

cond.true.i.i183.i.i:                             ; preds = %single_succ_p.exit.i.i.i.i, %if.end80.i555.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #7
  br label %single_succ.exit.i.i

single_succ.exit.i.i:                             ; preds = %cond.true.i.i183.i.i, %single_succ_p.exit.i.i.i.i
  %210 = load ptr, ptr %208, align 8
  %vec.i.i.i.i556.i = getelementptr inbounds nuw i8, ptr %210, i64 8
  %211 = load ptr, ptr %vec.i.i.i.i556.i, align 8
  %dest.i.i.i = getelementptr inbounds nuw i8, ptr %211, i64 8
  %212 = load ptr, ptr %dest.i.i.i, align 8
  %213 = load i32, ptr %flags76.i.i, align 8
  %flags84.i.i = getelementptr inbounds nuw i8, ptr %212, i64 96
  %214 = load i32, ptr %flags84.i.i, align 8
  %215 = xor i32 %214, %213
  %216 = and i32 %215, 96
  %cmp86.not.i.i = icmp eq i32 %216, 0
  br i1 %cmp86.not.i.i, label %lor.lhs.false87.i.i, label %if.end252.i

lor.lhs.false87.i.i:                              ; preds = %single_succ.exit.i.i
  %flags88.i.i = getelementptr inbounds nuw i8, ptr %.196.i.i, i64 48
  %217 = load i32, ptr %flags88.i.i, align 8
  %and89.i.i = and i32 %217, 8192
  %tobool90.not.i.i = icmp eq i32 %and89.i.i, 0
  br i1 %tobool90.not.i.i, label %if.end92.i.i, label %if.end252.i

if.end92.i.i:                                     ; preds = %lor.lhs.false87.i.i
  %dest93.i.i = getelementptr inbounds nuw i8, ptr %.196.i.i, i64 8
  %218 = load ptr, ptr %dest93.i.i, align 8
  %219 = load ptr, ptr @cfun, align 8
  %cfg95.i.i = getelementptr inbounds nuw i8, ptr %219, i64 8
  %220 = load ptr, ptr %cfg95.i.i, align 8
  %x_exit_block_ptr96.i.i = getelementptr inbounds nuw i8, ptr %220, i64 8
  %221 = load ptr, ptr %x_exit_block_ptr96.i.i, align 8
  %cmp97.i.i = icmp eq ptr %218, %221
  br i1 %cmp97.i.i, label %if.end252.i, label %lor.lhs.false98.i.i

lor.lhs.false98.i.i:                              ; preds = %if.end92.i.i
  %call99.i.i = call zeroext i8 @can_fallthru(ptr noundef nonnull %201, ptr noundef %218) #7
  %tobool100.not.i.i = icmp eq i8 %call99.i.i, 0
  br i1 %tobool100.not.i.i, label %if.end252.i, label %if.end102.i.i

if.end102.i.i:                                    ; preds = %lor.lhs.false98.i.i
  %call103.i.i = call ptr @block_label(ptr noundef nonnull %212) #7
  %call104.i.i = call i32 @invert_jump(ptr noundef %196, ptr noundef %call103.i.i, i32 noundef 0) #7
  %tobool105.not.i.i = icmp eq i32 %call104.i.i, 0
  br i1 %tobool105.not.i.i, label %if.end252.i, label %if.end107.i.i

if.end107.i.i:                                    ; preds = %if.end102.i.i
  %222 = load ptr, ptr @dump_file, align 8
  %tobool108.not.i.i = icmp eq ptr %222, null
  br i1 %tobool108.not.i.i, label %try_simplify_condjump.exit.i, label %if.then109.i.i

if.then109.i.i:                                   ; preds = %if.end107.i.i
  %u.i.i = getelementptr inbounds nuw i8, ptr %196, i64 8
  %223 = load i32, ptr %u.i.i, align 8
  %il110.i.i = getelementptr inbounds nuw i8, ptr %201, i64 64
  %224 = load ptr, ptr %il110.i.i, align 8
  %end_111.i.i = getelementptr inbounds nuw i8, ptr %224, i64 8
  %225 = load ptr, ptr %end_111.i.i, align 8
  %u112.i.i = getelementptr inbounds nuw i8, ptr %225, i64 8
  %226 = load i32, ptr %u112.i.i, align 8
  %call114.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %222, ptr noundef nonnull @.str.12, i32 noundef %223, i32 noundef %226) #7
  br label %try_simplify_condjump.exit.i

try_simplify_condjump.exit.i:                     ; preds = %if.then109.i.i, %if.end107.i.i
  %call116.i.i = call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %.196.i.i, ptr noundef %218) #7
  %call117.i.i = call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %..i.i, ptr noundef nonnull %212) #7
  %flags118.i.i = getelementptr inbounds nuw i8, ptr %call116.i.i, i64 48
  %227 = load i32, ptr %flags118.i.i, align 8
  %or.i.i = or i32 %227, 1
  store i32 %or.i.i, ptr %flags118.i.i, align 8
  %flags119.i.i = getelementptr inbounds nuw i8, ptr %call117.i.i, i64 48
  %228 = load i32, ptr %flags119.i.i, align 8
  %and120.i.i = and i32 %228, -2
  store i32 %and120.i.i, ptr %flags119.i.i, align 8
  call void @update_br_prob_note(ptr noundef nonnull %b.1.i) #7
  call void @delete_basic_block(ptr noundef nonnull %201) #7
  call void @tidy_fallthru_edge(ptr noundef %call116.i.i) #7
  br label %if.end252.sink.split.i

if.end252.sink.split.i:                           ; preds = %try_simplify_condjump.exit.i, %if.then208.i
  %b.0935.sink1261.i = phi ptr [ %b.0935.i, %if.then208.i ], [ %b.1.i, %try_simplify_condjump.exit.i ]
  %call.i528.i = call zeroext i8 @forwarder_block_p(ptr noundef nonnull %b.0935.sink1261.i) #7
  %tobool.not.i529.i = icmp eq i8 %call.i528.i, 0
  %flags1.i530.i = getelementptr inbounds nuw i8, ptr %b.0935.sink1261.i, i64 96
  %229 = load i32, ptr %flags1.i530.i, align 8
  %and.i531.i = and i32 %229, -1025
  %masksel.i532.i = select i1 %tobool.not.i529.i, i32 0, i32 1024
  %and.sink.i533.i = or disjoint i32 %and.i531.i, %masksel.i532.i
  store i32 %and.sink.i533.i, ptr %flags1.i530.i, align 8
  br label %if.end252.i

if.end252.i:                                      ; preds = %if.end252.sink.split.i, %if.end102.i.i, %lor.lhs.false98.i.i, %if.end92.i.i, %lor.lhs.false87.i.i, %single_succ.exit.i.i, %lor.lhs.false75.i.i, %lor.lhs.false.i.i, %single_pred_p.exit.i551.i, %if.end5.i.i, %if.end.i544.i, %VEC_edge_base_length.exit.i.i, %land.lhs.true247.i, %if.end241.i, %land.lhs.true204.i
  %b.1798.i = phi ptr [ %b.1.i, %if.end241.i ], [ %b.1.i, %if.end5.i.i ], [ %b.1.i, %land.lhs.true247.i ], [ %b.1.i, %if.end102.i.i ], [ %b.1.i, %if.end92.i.i ], [ %b.1.i, %lor.lhs.false98.i.i ], [ %b.1.i, %single_succ.exit.i.i ], [ %b.1.i, %lor.lhs.false87.i.i ], [ %b.1.i, %single_pred_p.exit.i551.i ], [ %b.1.i, %lor.lhs.false.i.i ], [ %b.1.i, %lor.lhs.false75.i.i ], [ %b.1.i, %if.end.i544.i ], [ %b.1.i, %VEC_edge_base_length.exit.i.i ], [ %b.0935.i, %land.lhs.true204.i ], [ %b.0935.sink1261.i, %if.end252.sink.split.i ]
  %changed_here.1.i = phi i8 [ %changed_here.0.i, %if.end241.i ], [ %changed_here.0.i, %if.end5.i.i ], [ %changed_here.0.i, %land.lhs.true247.i ], [ %changed_here.0.i, %if.end102.i.i ], [ %changed_here.0.i, %if.end92.i.i ], [ %changed_here.0.i, %lor.lhs.false98.i.i ], [ %changed_here.0.i, %single_succ.exit.i.i ], [ %changed_here.0.i, %lor.lhs.false87.i.i ], [ %changed_here.0.i, %single_pred_p.exit.i551.i ], [ %changed_here.0.i, %lor.lhs.false.i.i ], [ %changed_here.0.i, %lor.lhs.false75.i.i ], [ %changed_here.0.i, %if.end.i544.i ], [ %changed_here.0.i, %VEC_edge_base_length.exit.i.i ], [ 0, %land.lhs.true204.i ], [ 1, %if.end252.sink.split.i ]
  %230 = getelementptr i8, ptr %b.1798.i, i64 8
  %b.1.val.i = load ptr, ptr %230, align 8
  %tobool.not.i561.i = icmp eq ptr %b.1.val.i, null
  br i1 %tobool.not.i561.i, label %if.end283.i, label %single_succ_p.exit565.i

single_succ_p.exit565.i:                          ; preds = %if.end252.i
  %231 = load i32, ptr %b.1.val.i, align 8
  %.not815.i = icmp eq i32 %231, 1
  br i1 %.not815.i, label %single_succ.exit573.i, label %if.end283.i

single_succ.exit573.i:                            ; preds = %single_succ_p.exit565.i
  %vec.i.i.i571.i = getelementptr inbounds nuw i8, ptr %b.1.val.i, i64 8
  %232 = load ptr, ptr %vec.i.i.i571.i, align 8
  %dest.i572.i = getelementptr inbounds nuw i8, ptr %232, i64 8
  %233 = load ptr, ptr %dest.i572.i, align 8
  %234 = load ptr, ptr @cfun, align 8
  %cfg259.i = getelementptr inbounds nuw i8, ptr %234, i64 8
  %235 = load ptr, ptr %cfg259.i, align 8
  %x_exit_block_ptr260.i = getelementptr inbounds nuw i8, ptr %235, i64 8
  %236 = load ptr, ptr %x_exit_block_ptr260.i, align 8
  %cmp261.not.i = icmp eq ptr %233, %236
  br i1 %cmp261.not.i, label %if.end283.i, label %land.lhs.true263.i

land.lhs.true263.i:                               ; preds = %single_succ.exit573.i
  %il264.i = getelementptr inbounds nuw i8, ptr %b.1798.i, i64 64
  %237 = load ptr, ptr %il264.i, align 8
  %end_265.i = getelementptr inbounds nuw i8, ptr %237, i64 8
  %238 = load ptr, ptr %end_265.i, align 8
  %call266.i = call i32 @onlyjump_p(ptr noundef %238) #7
  %tobool267.not.i = icmp eq i32 %call266.i, 0
  br i1 %tobool267.not.i, label %if.end283.i, label %land.lhs.true268.i

land.lhs.true268.i:                               ; preds = %land.lhs.true263.i
  %239 = load ptr, ptr %il264.i, align 8
  %end_270.i = getelementptr inbounds nuw i8, ptr %239, i64 8
  %240 = load ptr, ptr %end_270.i, align 8
  %call271.i = call ptr @find_reg_note(ptr noundef %240, i32 noundef 29, ptr noundef null) #7
  %tobool272.not.i = icmp eq ptr %call271.i, null
  br i1 %tobool272.not.i, label %land.lhs.true273.i, label %if.end283.i

land.lhs.true273.i:                               ; preds = %land.lhs.true268.i
  %bb.val.i574.i = load ptr, ptr %230, align 8
  %tobool.not.i.i575.i = icmp eq ptr %bb.val.i574.i, null
  br i1 %tobool.not.i.i575.i, label %cond.true.i578.i, label %single_succ_p.exit.i576.i

single_succ_p.exit.i576.i:                        ; preds = %land.lhs.true273.i
  %241 = load i32, ptr %bb.val.i574.i, align 8
  %.not.i577.i = icmp eq i32 %241, 1
  br i1 %.not.i577.i, label %single_succ_p.exit.i.i583.i, label %cond.true.i578.i

cond.true.i578.i:                                 ; preds = %single_succ_p.exit.i576.i, %land.lhs.true273.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #7
  br label %single_succ_p.exit.i.i583.i

single_succ_p.exit.i.i583.i:                      ; preds = %cond.true.i578.i, %single_succ_p.exit.i576.i
  %242 = load ptr, ptr %230, align 8
  %vec.i.i579.i = getelementptr inbounds nuw i8, ptr %242, i64 8
  %243 = load ptr, ptr %vec.i.i579.i, align 8
  %244 = load i32, ptr %242, align 8
  %.not.i.i584.i = icmp eq i32 %244, 1
  br i1 %.not.i.i584.i, label %single_succ.exit588.i, label %cond.true.i.i585.i

cond.true.i.i585.i:                               ; preds = %single_succ_p.exit.i.i583.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #7
  br label %single_succ.exit588.i

single_succ.exit588.i:                            ; preds = %cond.true.i.i585.i, %single_succ_p.exit.i.i583.i
  %245 = load ptr, ptr %230, align 8
  %vec.i.i.i586.i = getelementptr inbounds nuw i8, ptr %245, i64 8
  %246 = load ptr, ptr %vec.i.i.i586.i, align 8
  %dest.i587.i = getelementptr inbounds nuw i8, ptr %246, i64 8
  %247 = load ptr, ptr %dest.i587.i, align 8
  %call280.i = call ptr @try_redirect_by_replacing_jump(ptr noundef %243, ptr noundef %247, i8 noundef zeroext %conv279.i) #7
  %tobool281.not.i = icmp eq ptr %call280.i, null
  br i1 %tobool281.not.i, label %if.end283.i, label %if.then282.i

if.then282.i:                                     ; preds = %single_succ.exit588.i
  %call.i589.i = call zeroext i8 @forwarder_block_p(ptr noundef nonnull %b.1798.i) #7
  %tobool.not.i590.i = icmp eq i8 %call.i589.i, 0
  %flags1.i591.i = getelementptr inbounds nuw i8, ptr %b.1798.i, i64 96
  %248 = load i32, ptr %flags1.i591.i, align 8
  %and.i592.i = and i32 %248, -1025
  %masksel.i593.i = select i1 %tobool.not.i590.i, i32 0, i32 1024
  %and.sink.i594.i = or disjoint i32 %and.i592.i, %masksel.i593.i
  store i32 %and.sink.i594.i, ptr %flags1.i591.i, align 8
  br label %if.end283.i

if.end283.i:                                      ; preds = %if.then282.i, %single_succ.exit588.i, %land.lhs.true268.i, %land.lhs.true263.i, %single_succ.exit573.i, %single_succ_p.exit565.i, %if.end252.i
  %changed_here.2.i = phi i8 [ %changed_here.1.i, %land.lhs.true268.i ], [ 1, %if.then282.i ], [ %changed_here.1.i, %single_succ.exit588.i ], [ %changed_here.1.i, %land.lhs.true263.i ], [ %changed_here.1.i, %single_succ.exit573.i ], [ %changed_here.1.i, %single_succ_p.exit565.i ], [ %changed_here.1.i, %if.end252.i ]
  %il.i595.i = getelementptr inbounds nuw i8, ptr %b.1798.i, i64 64
  %249 = load ptr, ptr %il.i595.i, align 8
  %end_.i596.i = getelementptr inbounds nuw i8, ptr %249, i64 8
  %250 = load ptr, ptr %end_.i596.i, align 8
  %call.i597.i = call ptr @find_reg_note(ptr noundef %250, i32 noundef 29, ptr noundef null) #7
  %tobool.not.i598.i = icmp eq ptr %call.i597.i, null
  br i1 %tobool.not.i598.i, label %if.end.i600.i, label %.loopexit.i

if.end.i600.i:                                    ; preds = %if.end283.i
  %frequency.i.i = getelementptr inbounds nuw i8, ptr %b.1798.i, i64 88
  %flags226.i.i = getelementptr inbounds nuw i8, ptr %b.1798.i, i64 96
  %index217.i.i = getelementptr inbounds nuw i8, ptr %b.1798.i, i64 80
  br label %ei_container.exit.i.i.i602.i

ei_container.exit.i.i.i602.i:                     ; preds = %cleanup303.i.i, %if.end.i600.i
  %ei.sroa.0.0.i603.i = phi i32 [ 0, %if.end.i600.i ], [ %ei.sroa.0.1.i623.i, %cleanup303.i.i ]
  %threaded_edges.0.i.i = phi ptr [ null, %if.end.i600.i ], [ %threaded_edges.8.i.i, %cleanup303.i.i ]
  %changed.0.i.i = phi i8 [ 0, %if.end.i600.i ], [ %changed.2.i.i, %cleanup303.i.i ]
  %251 = load ptr, ptr %230, align 8
  %tobool.not.i.i.i604.i = icmp eq ptr %251, null
  br i1 %tobool.not.i.i.i604.i, label %ei_end_p.exit.i.i606.i, label %cond.true.i11.i.i.i605.i

cond.true.i11.i.i.i605.i:                         ; preds = %ei_container.exit.i.i.i602.i
  %252 = load i32, ptr %251, align 8
  br label %ei_end_p.exit.i.i606.i

ei_end_p.exit.i.i606.i:                           ; preds = %cond.true.i11.i.i.i605.i, %ei_container.exit.i.i.i602.i
  %cond.i.i.i.i607.i = phi i32 [ %252, %cond.true.i11.i.i.i605.i ], [ 0, %ei_container.exit.i.i.i602.i ]
  %cmp.i.not.i.i608.i = icmp eq i32 %ei.sroa.0.0.i603.i, %cond.i.i.i.i607.i
  br i1 %cmp.i.not.i.i608.i, label %for.end312.i.i, label %ei_safe_edge.exit.i.i

ei_safe_edge.exit.i.i:                            ; preds = %ei_end_p.exit.i.i606.i
  %vec.i.i.i.i609.i = getelementptr inbounds nuw i8, ptr %251, i64 8
  %idxprom.i.i.i.i610.i = zext i32 %ei.sroa.0.0.i603.i to i64
  %arrayidx.i.i.i.i611.i = getelementptr inbounds nuw ptr, ptr %vec.i.i.i.i609.i, i64 %idxprom.i.i.i.i610.i
  %253 = load ptr, ptr %arrayidx.i.i.i.i611.i, align 8
  %tobool3.not.i612.i = icmp eq ptr %253, null
  br i1 %tobool3.not.i612.i, label %for.end312.i.i, label %for.body.i613.i

for.body.i613.i:                                  ; preds = %ei_safe_edge.exit.i.i
  %.b.i.i = load i1, ptr @first_pass, align 1
  %call4.i.i = call zeroext i8 @df_get_bb_dirty(ptr noundef nonnull %b.1798.i) #7
  %254 = zext i1 %.b.i.i to i8
  %or434.i.i = or i8 %call4.i.i, %254
  %flags.i614.i = getelementptr inbounds nuw i8, ptr %253, i64 48
  %255 = load i32, ptr %flags.i614.i, align 8
  %and.i615.i = and i32 %255, 14
  %tobool7.not.i616.i = icmp eq i32 %and.i615.i, 0
  br i1 %tobool7.not.i616.i, label %if.end9.i624.i, label %ei_container.exit.i.i.i

ei_container.exit.i.i.i:                          ; preds = %for.body.i613.i
  %256 = load ptr, ptr %230, align 8
  %tobool.not.i.i617.i = icmp eq ptr %256, null
  br i1 %tobool.not.i.i617.i, label %cond.true3.i.i620.i, label %VEC_edge_base_length.exit.i.i618.i

VEC_edge_base_length.exit.i.i618.i:               ; preds = %ei_container.exit.i.i.i
  %257 = load i32, ptr %256, align 8
  %cmp.i.i619.i = icmp ult i32 %ei.sroa.0.0.i603.i, %257
  br i1 %cmp.i.i619.i, label %ei_next.exit.i621.i, label %cond.true3.i.i620.i

cond.true3.i.i620.i:                              ; preds = %VEC_edge_base_length.exit.i.i618.i, %ei_container.exit.i.i.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #7
  br label %ei_next.exit.i621.i

ei_next.exit.i621.i:                              ; preds = %cond.true3.i.i620.i, %VEC_edge_base_length.exit.i.i618.i
  %inc.i.i622.i = add i32 %ei.sroa.0.0.i603.i, 1
  br label %cleanup303.i.i, !llvm.loop !5

if.end9.i624.i:                                   ; preds = %for.body.i613.i
  %dest.i625.i = getelementptr inbounds nuw i8, ptr %253, i64 8
  %258 = load ptr, ptr %dest.i625.i, align 8
  %goto_locus10.i.i = getelementptr inbounds nuw i8, ptr %253, i64 40
  %259 = load i32, ptr %goto_locus10.i.i, align 8
  %260 = load ptr, ptr @cfun, align 8
  %cfg.i626.i = getelementptr inbounds nuw i8, ptr %260, i64 8
  %261 = load ptr, ptr %cfg.i626.i, align 8
  %x_exit_block_ptr.i627.i = getelementptr inbounds nuw i8, ptr %261, i64 8
  %262 = load ptr, ptr %x_exit_block_ptr.i627.i, align 8
  %cmp.not.i628.i = icmp eq ptr %258, %262
  br i1 %cmp.not.i628.i, label %if.end17.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end9.i624.i
  %il12.i.i = getelementptr inbounds nuw i8, ptr %258, i64 64
  %263 = load ptr, ptr %il12.i.i, align 8
  %end_13.i.i = getelementptr inbounds nuw i8, ptr %263, i64 8
  %264 = load ptr, ptr %end_13.i.i, align 8
  %call14.i.i = call ptr @find_reg_note(ptr noundef %264, i32 noundef 29, ptr noundef null) #7
  %tobool15.not.i629.i = icmp eq ptr %call14.i.i, null
  br i1 %tobool15.not.i629.i, label %if.end17.i.i, label %.loopexit.i.loopexit

if.end17.i.i:                                     ; preds = %land.lhs.true.i.i, %if.end9.i624.i
  %265 = load ptr, ptr @cfun, align 8
  %cfg19646.i.i = getelementptr inbounds nuw i8, ptr %265, i64 8
  %266 = load ptr, ptr %cfg19646.i.i, align 8
  %x_n_basic_blocks647.i.i = getelementptr inbounds nuw i8, ptr %266, i64 24
  %267 = load i32, ptr %x_n_basic_blocks647.i.i, align 8
  %cmp20648.i.i = icmp sgt i32 %267, 2
  br i1 %cmp20648.i.i, label %while.body.i.i.preheader, label %while.end.i.i

while.body.i.i.preheader:                         ; preds = %if.end17.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup177.i.i, %while.body.i.i.preheader
  %threaded_edges.1655.i.i = phi ptr [ %threaded_edges.5799.i.i, %cleanup177.i.i ], [ %threaded_edges.0.i.i, %while.body.i.i.preheader ]
  %may_thread.0654.i.i = phi i8 [ %or25435.i.i, %cleanup177.i.i ], [ %or434.i.i, %while.body.i.i.preheader ]
  %nthreaded_edges.0653.i.i = phi i32 [ %nthreaded_edges.3796.i.i, %cleanup177.i.i ], [ 0, %while.body.i.i.preheader ]
  %threaded.0652.i.i = phi i8 [ %new_target_threaded.2798.i.i, %cleanup177.i.i ], [ 0, %while.body.i.i.preheader ]
  %goto_locus.0651.i.i = phi i32 [ %goto_locus.3795.i.i, %cleanup177.i.i ], [ %259, %while.body.i.i.preheader ]
  %counter.0650.i.i = phi i32 [ %inc172.i.i, %cleanup177.i.i ], [ 2, %while.body.i.i.preheader ]
  %target.0649.i.i = phi ptr [ %new_target.2797.i.i, %cleanup177.i.i ], [ %258, %while.body.i.i.preheader ]
  %call22.i.i = call zeroext i8 @df_get_bb_dirty(ptr noundef %target.0649.i.i) #7
  %or25435.i.i = or i8 %call22.i.i, %may_thread.0654.i.i
  %flags27.i.i = getelementptr inbounds nuw i8, ptr %target.0649.i.i, i64 96
  %268 = load i32, ptr %flags27.i.i, align 8
  %and28.i.i = and i32 %268, 1024
  %tobool29.not.i.i = icmp eq i32 %and28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.else114.i.i, label %land.lhs.true30.i.i

land.lhs.true30.i.i:                              ; preds = %while.body.i.i
  %269 = getelementptr i8, ptr %target.0649.i.i, i64 8
  %bb.val.i.i635.i = load ptr, ptr %269, align 8
  %tobool.not.i.i443.i.i = icmp eq ptr %bb.val.i.i635.i, null
  br i1 %tobool.not.i.i443.i.i, label %cond.true.i444.i.i, label %single_succ_p.exit.i.i636.i

single_succ_p.exit.i.i636.i:                      ; preds = %land.lhs.true30.i.i
  %270 = load i32, ptr %bb.val.i.i635.i, align 8
  %.not.i.i637.i = icmp eq i32 %270, 1
  br i1 %.not.i.i637.i, label %single_succ_edge.exit.i.i, label %cond.true.i444.i.i

cond.true.i444.i.i:                               ; preds = %single_succ_p.exit.i.i636.i, %land.lhs.true30.i.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #7
  br label %single_succ_edge.exit.i.i

single_succ_edge.exit.i.i:                        ; preds = %cond.true.i444.i.i, %single_succ_p.exit.i.i636.i
  %271 = load ptr, ptr %269, align 8
  %vec.i.i.i638.i = getelementptr inbounds nuw i8, ptr %271, i64 8
  %272 = load ptr, ptr %vec.i.i.i638.i, align 8
  %flags32.i.i = getelementptr inbounds nuw i8, ptr %272, i64 48
  %273 = load i32, ptr %flags32.i.i, align 8
  %and33.i.i = and i32 %273, 8192
  %tobool34.not.i.i = icmp eq i32 %and33.i.i, 0
  br i1 %tobool34.not.i.i, label %single_succ_p.exit.i.i.i645.i, label %if.else114.i.i

single_succ_p.exit.i.i.i645.i:                    ; preds = %single_succ_edge.exit.i.i
  %274 = load i32, ptr %271, align 8
  %.not.i.i.i646.i = icmp eq i32 %274, 1
  br i1 %.not.i.i.i646.i, label %single_succ.exit.i647.i, label %cond.true.i.i447.i.i

cond.true.i.i447.i.i:                             ; preds = %single_succ_p.exit.i.i.i645.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #7
  br label %single_succ.exit.i647.i

single_succ.exit.i647.i:                          ; preds = %cond.true.i.i447.i.i, %single_succ_p.exit.i.i.i645.i
  %275 = load ptr, ptr %269, align 8
  %vec.i.i.i448.i.i = getelementptr inbounds nuw i8, ptr %275, i64 8
  %276 = load ptr, ptr %vec.i.i.i448.i.i, align 8
  %dest.i.i648.i = getelementptr inbounds nuw i8, ptr %276, i64 8
  %277 = load ptr, ptr %dest.i.i648.i, align 8
  %278 = load ptr, ptr @cfun, align 8
  %cfg38.i.i = getelementptr inbounds nuw i8, ptr %278, i64 8
  %279 = load ptr, ptr %cfg38.i.i, align 8
  %x_exit_block_ptr39.i.i = getelementptr inbounds nuw i8, ptr %279, i64 8
  %280 = load ptr, ptr %x_exit_block_ptr39.i.i, align 8
  %cmp40.not.i.i = icmp eq ptr %277, %280
  br i1 %cmp40.not.i.i, label %if.else114.i.i, label %single_succ_p.exit.i.i451.i.i

single_succ_p.exit.i.i451.i.i:                    ; preds = %single_succ.exit.i647.i
  %281 = load i32, ptr %275, align 8
  %.not.i.i452.i.i = icmp eq i32 %281, 1
  br i1 %.not.i.i452.i.i, label %single_succ.exit456.i.i, label %cond.true.i.i453.i.i

cond.true.i.i453.i.i:                             ; preds = %single_succ_p.exit.i.i451.i.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #7
  br label %single_succ.exit456.i.i

single_succ.exit456.i.i:                          ; preds = %cond.true.i.i453.i.i, %single_succ_p.exit.i.i451.i.i
  %282 = load ptr, ptr %269, align 8
  %vec.i.i.i454.i.i = getelementptr inbounds nuw i8, ptr %282, i64 8
  %283 = load ptr, ptr %vec.i.i.i454.i.i, align 8
  %dest.i455.i.i = getelementptr inbounds nuw i8, ptr %283, i64 8
  %284 = load ptr, ptr %dest.i455.i.i, align 8
  %cmp44.i.i = icmp eq ptr %target.0649.i.i, %284
  br i1 %cmp44.i.i, label %if.end168.thread.i.i, label %if.else.i649.i

if.end168.thread.i.i:                             ; preds = %single_succ.exit456.i.i
  %285 = load ptr, ptr @cfun, align 8
  %cfg48.i.i = getelementptr inbounds nuw i8, ptr %285, i64 8
  %286 = load ptr, ptr %cfg48.i.i, align 8
  %x_n_basic_blocks49.i.i = getelementptr inbounds nuw i8, ptr %286, i64 24
  %287 = load i32, ptr %x_n_basic_blocks49.i.i, align 8
  br label %cleanup177.i.i

if.else.i649.i:                                   ; preds = %single_succ.exit456.i.i
  %288 = load i32, ptr @optimize, align 4
  %tobool50.not.i.i = icmp eq i32 %288, 0
  br i1 %tobool50.not.i.i, label %single_succ_p.exit.i459.i.i, label %if.end168.i.i

single_succ_p.exit.i459.i.i:                      ; preds = %if.else.i649.i
  %289 = load i32, ptr %282, align 8
  %.not.i460.i.i = icmp eq i32 %289, 1
  br i1 %.not.i460.i.i, label %single_succ_edge.exit464.i.i, label %cond.true.i461.i.i

cond.true.i461.i.i:                               ; preds = %single_succ_p.exit.i459.i.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #7
  br label %single_succ_edge.exit464.i.i

single_succ_edge.exit464.i.i:                     ; preds = %cond.true.i461.i.i, %single_succ_p.exit.i459.i.i
  %290 = load ptr, ptr %269, align 8
  %vec.i.i463.i.i = getelementptr inbounds nuw i8, ptr %290, i64 8
  %291 = load ptr, ptr %vec.i.i463.i.i, align 8
  %goto_locus53.i.i = getelementptr inbounds nuw i8, ptr %291, i64 40
  %292 = load i32, ptr %goto_locus53.i.i, align 8
  %tobool54.i.i = icmp ne i32 %292, 0
  %tobool56.i.i = icmp ne i32 %goto_locus.0651.i.i, 0
  %or.cond.i.i = select i1 %tobool54.i.i, i1 %tobool56.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true57.i.i, label %if.else64.i.i

land.lhs.true57.i.i:                              ; preds = %single_succ_edge.exit464.i.i
  %call58.i.i = call zeroext i8 @locator_eq(i32 noundef %292, i32 noundef %goto_locus.0651.i.i) #7
  %tobool59.not.i.i = icmp eq i8 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %if.then60.i.i, label %if.else64.i.i

if.then60.i.i:                                    ; preds = %land.lhs.true57.i.i
  %293 = load ptr, ptr @cfun, align 8
  %cfg62.i.i = getelementptr inbounds nuw i8, ptr %293, i64 8
  %294 = load ptr, ptr %cfg62.i.i, align 8
  %x_n_basic_blocks63.i.i = getelementptr inbounds nuw i8, ptr %294, i64 24
  %295 = load i32, ptr %x_n_basic_blocks63.i.i, align 8
  br label %if.end68.i.i

if.else64.i.i:                                    ; preds = %land.lhs.true57.i.i, %single_succ_edge.exit464.i.i
  %spec.select.i.i = select i1 %tobool54.i.i, i32 %292, i32 %goto_locus.0651.i.i
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.else64.i.i, %if.then60.i.i
  %counter.1.i.i = phi i32 [ %295, %if.then60.i.i ], [ %counter.0650.i.i, %if.else64.i.i ]
  %goto_locus.1.i.i = phi i32 [ %goto_locus.0651.i.i, %if.then60.i.i ], [ %spec.select.i.i, %if.else64.i.i ]
  %il69.i.i = getelementptr inbounds nuw i8, ptr %target.0649.i.i, i64 64
  %296 = load ptr, ptr %il69.i.i, align 8
  %end_70.i.i = getelementptr inbounds nuw i8, ptr %296, i64 8
  %297 = load ptr, ptr %end_70.i.i, align 8
  %bf.load.i650.i = load i32, ptr %297, align 8
  %bf.clear.i651.i = and i32 %bf.load.i650.i, 65535
  %bf.clear.off.i.i = add nsw i32 %bf.clear.i651.i, -7
  %switch.i.i = icmp ult i32 %bf.clear.off.i.i, 4
  br i1 %switch.i.i, label %if.then93.i.i, label %if.end168.i.i

if.then93.i.i:                                    ; preds = %if.end68.i.i
  %arrayidx.i652.i = getelementptr inbounds nuw i8, ptr %297, i64 40
  %298 = load i32, ptr %arrayidx.i652.i, align 8
  %tobool96.i.i = icmp ne i32 %298, 0
  %tobool98.i.i = icmp ne i32 %goto_locus.1.i.i, 0
  %or.cond322.i.i = select i1 %tobool96.i.i, i1 %tobool98.i.i, i1 false
  br i1 %or.cond322.i.i, label %land.lhs.true99.i.i, label %if.else106.i.i

land.lhs.true99.i.i:                              ; preds = %if.then93.i.i
  %call100.i.i = call zeroext i8 @locator_eq(i32 noundef %298, i32 noundef %goto_locus.1.i.i) #7
  %tobool101.not.i.i = icmp eq i8 %call100.i.i, 0
  br i1 %tobool101.not.i.i, label %if.then102.i.i, label %if.else106.i.i

if.then102.i.i:                                   ; preds = %land.lhs.true99.i.i
  %299 = load ptr, ptr @cfun, align 8
  %cfg104.i.i = getelementptr inbounds nuw i8, ptr %299, i64 8
  %300 = load ptr, ptr %cfg104.i.i, align 8
  %x_n_basic_blocks105.i.i = getelementptr inbounds nuw i8, ptr %300, i64 24
  %301 = load i32, ptr %x_n_basic_blocks105.i.i, align 8
  br label %if.end168.i.i

if.else106.i.i:                                   ; preds = %land.lhs.true99.i.i, %if.then93.i.i
  %spec.select438.i.i = select i1 %tobool96.i.i, i32 %298, i32 %goto_locus.1.i.i
  br label %if.end168.i.i

if.else114.i.i:                                   ; preds = %single_succ.exit.i647.i, %single_succ_edge.exit.i.i, %while.body.i.i
  %tobool119.i.i = icmp ne i8 %or25435.i.i, 0
  %or.cond323.i.i = select i1 %tobool116.i.i, i1 %tobool119.i.i, i1 false
  br i1 %or.cond323.i.i, label %if.then120.i.i, label %while.end.i.i.loopexit

if.then120.i.i:                                   ; preds = %if.else114.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %cond2.i.i.i) #7
  %302 = load i32, ptr %flags27.i.i, align 8
  %and.i.i639.i = and i32 %302, 2048
  %tobool.not.i465.i.i = icmp eq i32 %and.i.i639.i, 0
  br i1 %tobool.not.i465.i.i, label %if.end.i.i640.i, label %thread_jump.exit.thread.i.i.loopexit

if.end.i.i640.i:                                  ; preds = %if.then120.i.i
  %303 = load ptr, ptr %253, align 8
  %succs.i.i.i = getelementptr inbounds nuw i8, ptr %303, i64 8
  %304 = load ptr, ptr %succs.i.i.i, align 8
  %tobool1.not.i.i641.i = icmp eq ptr %304, null
  br i1 %tobool1.not.i.i641.i, label %thread_jump.exit.thread.i.i.loopexit, label %VEC_edge_base_length.exit.i466.i.i

VEC_edge_base_length.exit.i466.i.i:               ; preds = %if.end.i.i640.i
  %305 = load i32, ptr %304, align 8
  %cmp.not.i.i.i = icmp eq i32 %305, 2
  br i1 %cmp.not.i.i.i, label %if.end5.i.i.i, label %thread_jump.exit.thread.i.i.loopexit

if.end5.i.i.i:                                    ; preds = %VEC_edge_base_length.exit.i466.i.i
  %succs6.i.i.i = getelementptr inbounds nuw i8, ptr %target.0649.i.i, i64 8
  %306 = load ptr, ptr %succs6.i.i.i, align 8
  %tobool7.not.i.i.i = icmp eq ptr %306, null
  br i1 %tobool7.not.i.i.i, label %if.then16.i.i.i, label %VEC_edge_base_length.exit446.i.i.i

VEC_edge_base_length.exit446.i.i.i:               ; preds = %if.end5.i.i.i
  %307 = load i32, ptr %306, align 8
  %cmp15.not.i.i.i = icmp eq i32 %307, 2
  br i1 %cmp15.not.i.i.i, label %if.end18.i.i.i, label %if.then16.i.i.i

if.then16.i.i.i:                                  ; preds = %VEC_edge_base_length.exit446.i.i.i, %if.end5.i.i.i
  %threaded_edges.1655.i.i.lcssa231 = phi ptr [ %threaded_edges.1655.i.i, %VEC_edge_base_length.exit446.i.i.i ], [ %threaded_edges.1655.i.i, %if.end5.i.i.i ]
  %nthreaded_edges.0653.i.i.lcssa221 = phi i32 [ %nthreaded_edges.0653.i.i, %VEC_edge_base_length.exit446.i.i.i ], [ %nthreaded_edges.0653.i.i, %if.end5.i.i.i ]
  %threaded.0652.i.i.lcssa211 = phi i8 [ %threaded.0652.i.i, %VEC_edge_base_length.exit446.i.i.i ], [ %threaded.0652.i.i, %if.end5.i.i.i ]
  %goto_locus.0651.i.i.lcssa201 = phi i32 [ %goto_locus.0651.i.i, %VEC_edge_base_length.exit446.i.i.i ], [ %goto_locus.0651.i.i, %if.end5.i.i.i ]
  %counter.0650.i.i.lcssa191 = phi i32 [ %counter.0650.i.i, %VEC_edge_base_length.exit446.i.i.i ], [ %counter.0650.i.i, %if.end5.i.i.i ]
  %target.0649.i.i.lcssa181 = phi ptr [ %target.0649.i.i, %VEC_edge_base_length.exit446.i.i.i ], [ %target.0649.i.i, %if.end5.i.i.i ]
  %flags27.i.i.lcssa173 = phi ptr [ %flags27.i.i, %VEC_edge_base_length.exit446.i.i.i ], [ %flags27.i.i, %if.end5.i.i.i ]
  %.lcssa161 = phi i32 [ %302, %VEC_edge_base_length.exit446.i.i.i ], [ %302, %if.end5.i.i.i ]
  %or.i.i642.i = or disjoint i32 %.lcssa161, 2048
  store i32 %or.i.i642.i, ptr %flags27.i.i.lcssa173, align 8
  br label %thread_jump.exit.thread.i.i

if.end18.i.i.i:                                   ; preds = %VEC_edge_base_length.exit446.i.i.i
  %il.i.i.i = getelementptr inbounds nuw i8, ptr %303, i64 64
  %308 = load ptr, ptr %il.i.i.i, align 8
  %end_.i.i.i = getelementptr inbounds nuw i8, ptr %308, i64 8
  %309 = load ptr, ptr %end_.i.i.i, align 8
  %call20.i.i.i = call i32 @any_condjump_p(ptr noundef %309) #7
  %tobool21.not.i.i.i = icmp eq i32 %call20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %thread_jump.exit.thread.i.i.loopexit, label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.end18.i.i.i
  %il24.i.i.i = getelementptr inbounds nuw i8, ptr %target.0649.i.i, i64 64
  %310 = load ptr, ptr %il24.i.i.i, align 8
  %end_25.i.i.i = getelementptr inbounds nuw i8, ptr %310, i64 8
  %311 = load ptr, ptr %end_25.i.i.i, align 8
  %call26.i.i.i = call i32 @any_condjump_p(ptr noundef %311) #7
  %tobool27.not.i.i.i = icmp eq i32 %call26.i.i.i, 0
  br i1 %tobool27.not.i.i.i, label %if.then32.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end23.i.i.i
  %312 = load ptr, ptr %il24.i.i.i, align 8
  %end_29.i.i.i = getelementptr inbounds nuw i8, ptr %312, i64 8
  %313 = load ptr, ptr %end_29.i.i.i, align 8
  %call30.i.i.i = call i32 @onlyjump_p(ptr noundef %313) #7
  %tobool31.not.i.i.i = icmp eq i32 %call30.i.i.i, 0
  br i1 %tobool31.not.i.i.i, label %if.then32.i.i.i, label %if.end35.i.i.i

if.then32.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i, %if.end23.i.i.i
  %threaded_edges.1655.i.i.lcssa232 = phi ptr [ %threaded_edges.1655.i.i, %lor.lhs.false.i.i.i ], [ %threaded_edges.1655.i.i, %if.end23.i.i.i ]
  %nthreaded_edges.0653.i.i.lcssa222 = phi i32 [ %nthreaded_edges.0653.i.i, %lor.lhs.false.i.i.i ], [ %nthreaded_edges.0653.i.i, %if.end23.i.i.i ]
  %threaded.0652.i.i.lcssa212 = phi i8 [ %threaded.0652.i.i, %lor.lhs.false.i.i.i ], [ %threaded.0652.i.i, %if.end23.i.i.i ]
  %goto_locus.0651.i.i.lcssa202 = phi i32 [ %goto_locus.0651.i.i, %lor.lhs.false.i.i.i ], [ %goto_locus.0651.i.i, %if.end23.i.i.i ]
  %counter.0650.i.i.lcssa192 = phi i32 [ %counter.0650.i.i, %lor.lhs.false.i.i.i ], [ %counter.0650.i.i, %if.end23.i.i.i ]
  %target.0649.i.i.lcssa182 = phi ptr [ %target.0649.i.i, %lor.lhs.false.i.i.i ], [ %target.0649.i.i, %if.end23.i.i.i ]
  %flags27.i.i.lcssa174 = phi ptr [ %flags27.i.i, %lor.lhs.false.i.i.i ], [ %flags27.i.i, %if.end23.i.i.i ]
  %314 = load i32, ptr %flags27.i.i.lcssa174, align 8
  %or34.i.i.i = or i32 %314, 2048
  store i32 %or34.i.i.i, ptr %flags27.i.i.lcssa174, align 8
  br label %thread_jump.exit.thread.i.i

if.end35.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %315 = load ptr, ptr %253, align 8
  %il37.i.i.i = getelementptr inbounds nuw i8, ptr %315, i64 64
  %316 = load ptr, ptr %il37.i.i.i, align 8
  %end_38.i.i.i = getelementptr inbounds nuw i8, ptr %316, i64 8
  %317 = load ptr, ptr %end_38.i.i.i, align 8
  %call39.i.i.i = call ptr @pc_set(ptr noundef %317) #7
  %318 = load ptr, ptr %il24.i.i.i, align 8
  %end_41.i.i.i = getelementptr inbounds nuw i8, ptr %318, i64 8
  %319 = load ptr, ptr %end_41.i.i.i, align 8
  %call42.i.i.i = call ptr @pc_set(ptr noundef %319) #7
  %320 = load i32, ptr %flags.i614.i, align 8
  %arrayidx.i.i643.i = getelementptr inbounds nuw i8, ptr %call39.i.i.i, i64 16
  %321 = load ptr, ptr %arrayidx.i.i643.i, align 8
  %arrayidx47.i.i.i = getelementptr inbounds nuw i8, ptr %321, i64 16
  %322 = load ptr, ptr %arrayidx47.i.i.i, align 8
  %323 = load ptr, ptr @global_rtl, align 16
  %324 = trunc i32 %320 to i1
  %325 = icmp ne ptr %322, %323
  %cmp50.not.i.i.i = xor i1 %325, %324
  %u56.i.i.i = getelementptr inbounds nuw i8, ptr %321, i64 8
  %326 = load ptr, ptr %u56.i.i.i, align 8
  %arrayidx59.i.i.i = getelementptr inbounds nuw i8, ptr %call42.i.i.i, i64 16
  %327 = load ptr, ptr %arrayidx59.i.i.i, align 8
  %u60.i.i.i = getelementptr inbounds nuw i8, ptr %327, i64 8
  %328 = load ptr, ptr %u60.i.i.i, align 8
  store ptr %328, ptr %cond2.i.i.i, align 8
  br i1 %cmp50.not.i.i.i, label %if.else.i.i.i, label %if.then63.i.i.i

if.then63.i.i.i:                                  ; preds = %if.end35.i.i.i
  %329 = load ptr, ptr %253, align 8
  %il65.i.i.i = getelementptr inbounds nuw i8, ptr %329, i64 64
  %330 = load ptr, ptr %il65.i.i.i, align 8
  %end_66.i.i.i = getelementptr inbounds nuw i8, ptr %330, i64 8
  %331 = load ptr, ptr %end_66.i.i.i, align 8
  %call67.i.i.i = call i32 @reversed_comparison_code(ptr noundef %326, ptr noundef %331) #7
  br label %if.end68.i.i.i

if.else.i.i.i:                                    ; preds = %if.end35.i.i.i
  %bf.load.i.i.i = load i32, ptr %326, align 8
  %bf.clear.i.i.i = and i32 %bf.load.i.i.i, 65535
  br label %if.end68.i.i.i

if.end68.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then63.i.i.i
  %code1.0.i.i.i = phi i32 [ %call67.i.i.i, %if.then63.i.i.i ], [ %bf.clear.i.i.i, %if.else.i.i.i ]
  %bf.load69.i.i.i = load i32, ptr %328, align 8
  %bf.clear70.i.i.i = and i32 %bf.load69.i.i.i, 65535
  %332 = load ptr, ptr %il24.i.i.i, align 8
  %end_72.i.i.i = getelementptr inbounds nuw i8, ptr %332, i64 8
  %333 = load ptr, ptr %end_72.i.i.i, align 8
  %call73.i.i.i = call i32 @reversed_comparison_code(ptr noundef %328, ptr noundef %333) #7
  %call74.i.i.i = call i32 @comparison_dominates_p(i32 noundef %code1.0.i.i.i, i32 noundef %bf.clear70.i.i.i) #7
  %tobool75.not.i.i.i = icmp eq i32 %call74.i.i.i, 0
  br i1 %tobool75.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end79.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end68.i.i.i
  %call76.i.i.i = call i32 @comparison_dominates_p(i32 noundef %code1.0.i.i.i, i32 noundef %call73.i.i.i) #7
  %tobool77.not.i.i.i = icmp eq i32 %call76.i.i.i, 0
  br i1 %tobool77.not.i.i.i, label %thread_jump.exit.thread.i.i.loopexit, label %if.end79.i.i.i

if.end79.i.i.i:                                   ; preds = %land.lhs.true.i.i.i, %if.end68.i.i.i
  %u80.i.i.i = getelementptr inbounds nuw i8, ptr %326, i64 8
  %334 = load ptr, ptr %u80.i.i.i, align 8
  %u82.i.i.i = getelementptr inbounds nuw i8, ptr %328, i64 8
  %335 = load ptr, ptr %u82.i.i.i, align 8
  %call84.i.i.i = call i32 @rtx_equal_p(ptr noundef %334, ptr noundef %335) #7
  %tobool85.not.i.i.i = icmp eq i32 %call84.i.i.i, 0
  br i1 %tobool85.not.i.i.i, label %thread_jump.exit.thread.i.i.loopexit, label %lor.lhs.false86.i.i.i

lor.lhs.false86.i.i.i:                            ; preds = %if.end79.i.i.i
  %arrayidx88.i.i.i = getelementptr inbounds nuw i8, ptr %326, i64 16
  %336 = load ptr, ptr %arrayidx88.i.i.i, align 8
  %arrayidx90.i.i.i = getelementptr inbounds nuw i8, ptr %328, i64 16
  %337 = load ptr, ptr %arrayidx90.i.i.i, align 8
  %call91.i.i.i = call i32 @rtx_equal_p(ptr noundef %336, ptr noundef %337) #7
  %tobool92.not.i.i.i = icmp eq i32 %call91.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %thread_jump.exit.thread.i.i.loopexit, label %if.end94.i.i.i

if.end94.i.i.i:                                   ; preds = %lor.lhs.false86.i.i.i
  %338 = load ptr, ptr %il24.i.i.i, align 8
  %339 = load ptr, ptr %338, align 8
  %insn.0.in460.i.i.i = getelementptr inbounds nuw i8, ptr %339, i64 24
  %insn.0461.i.i.i = load ptr, ptr %insn.0.in460.i.i.i, align 8
  %end_99462.i.i.i = getelementptr inbounds nuw i8, ptr %338, i64 8
  %340 = load ptr, ptr %end_99462.i.i.i, align 8
  %arrayidx101463.i.i.i = getelementptr inbounds nuw i8, ptr %340, i64 24
  %341 = load ptr, ptr %arrayidx101463.i.i.i, align 8
  %cmp102.not464.i.i.i = icmp eq ptr %insn.0461.i.i.i, %341
  br i1 %cmp102.not464.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.preheader

for.body.i.i.i.preheader:                         ; preds = %if.end94.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i, %for.body.i.i.i.preheader
  %insn.0465.i.i.i = phi ptr [ %insn.0.i.i.i, %for.inc.i.i.i ], [ %insn.0461.i.i.i, %for.body.i.i.i.preheader ]
  %bf.load104.i.i.i = load i32, ptr %insn.0465.i.i.i, align 8
  %bf.clear105.i.i.i = and i32 %bf.load104.i.i.i, 65535
  %bf.clear105.off.i.i.i = add nsw i32 %bf.clear105.i.i.i, -7
  %switch.i.i.i = icmp ult i32 %bf.clear105.off.i.i.i, 4
  br i1 %switch.i.i.i, label %land.lhs.true123.i.i.i, label %for.inc.i.i.i

land.lhs.true123.i.i.i:                           ; preds = %for.body.i.i.i
  %arrayidx125.i.i.i = getelementptr inbounds nuw i8, ptr %insn.0465.i.i.i, i64 48
  %342 = load ptr, ptr %arrayidx125.i.i.i, align 8
  %call126.i.i.i = call i32 @side_effects_p(ptr noundef %342) #7
  %tobool127.not.i.i.i = icmp eq i32 %call126.i.i.i, 0
  br i1 %tobool127.not.i.i.i, label %for.inc.i.i.i, label %if.then128.i.i.i

if.then128.i.i.i:                                 ; preds = %land.lhs.true123.i.i.i
  %threaded_edges.1655.i.i.lcssa233 = phi ptr [ %threaded_edges.1655.i.i, %land.lhs.true123.i.i.i ]
  %nthreaded_edges.0653.i.i.lcssa223 = phi i32 [ %nthreaded_edges.0653.i.i, %land.lhs.true123.i.i.i ]
  %threaded.0652.i.i.lcssa213 = phi i8 [ %threaded.0652.i.i, %land.lhs.true123.i.i.i ]
  %goto_locus.0651.i.i.lcssa203 = phi i32 [ %goto_locus.0651.i.i, %land.lhs.true123.i.i.i ]
  %counter.0650.i.i.lcssa193 = phi i32 [ %counter.0650.i.i, %land.lhs.true123.i.i.i ]
  %target.0649.i.i.lcssa183 = phi ptr [ %target.0649.i.i, %land.lhs.true123.i.i.i ]
  %flags27.i.i.lcssa175 = phi ptr [ %flags27.i.i, %land.lhs.true123.i.i.i ]
  %343 = load i32, ptr %flags27.i.i.lcssa175, align 8
  %or130.i.i.i = or i32 %343, 2048
  store i32 %or130.i.i.i, ptr %flags27.i.i.lcssa175, align 8
  br label %thread_jump.exit.thread.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true123.i.i.i, %for.body.i.i.i
  %insn.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %insn.0465.i.i.i, i64 24
  %insn.0.i.i.i = load ptr, ptr %insn.0.in.i.i.i, align 8
  %344 = load ptr, ptr %il24.i.i.i, align 8
  %end_99.i.i.i = getelementptr inbounds nuw i8, ptr %344, i64 8
  %345 = load ptr, ptr %end_99.i.i.i, align 8
  %arrayidx101.i.i.i = getelementptr inbounds nuw i8, ptr %345, i64 24
  %346 = load ptr, ptr %arrayidx101.i.i.i, align 8
  %cmp102.not.i.i.i = icmp eq ptr %insn.0.i.i.i, %346
  br i1 %cmp102.not.i.i.i, label %for.end.i.i.i.loopexit, label %for.body.i.i.i, !llvm.loop !6

for.end.i.i.i.loopexit:                           ; preds = %for.inc.i.i.i
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.end.i.i.i.loopexit, %if.end94.i.i.i
  call void @cselib_init(i32 noundef 0) #7
  %347 = load ptr, ptr %253, align 8
  %il135.i.i.i = getelementptr inbounds nuw i8, ptr %347, i64 64
  %348 = load ptr, ptr %il135.i.i.i, align 8
  %349 = load ptr, ptr %348, align 8
  %insn.1.in466.i.i.i = getelementptr inbounds nuw i8, ptr %349, i64 24
  %insn.1467.i.i.i = load ptr, ptr %insn.1.in466.i.i.i, align 8
  %end_142469.i.i.i = getelementptr inbounds nuw i8, ptr %348, i64 8
  %350 = load ptr, ptr %end_142469.i.i.i, align 8
  %arrayidx144470.i.i.i = getelementptr inbounds nuw i8, ptr %350, i64 24
  %351 = load ptr, ptr %arrayidx144470.i.i.i, align 8
  %cmp145.not471.i.i.i = icmp eq ptr %insn.1467.i.i.i, %351
  br i1 %cmp145.not471.i.i.i, label %for.end172.i.i.i, label %for.body147.i.i.i.preheader

for.body147.i.i.i.preheader:                      ; preds = %for.end.i.i.i
  br label %for.body147.i.i.i

for.body147.i.i.i:                                ; preds = %for.inc169.i.i.i, %for.body147.i.i.i.preheader
  %insn.1472.i.i.i = phi ptr [ %insn.1.i.i.i, %for.inc169.i.i.i ], [ %insn.1467.i.i.i, %for.body147.i.i.i.preheader ]
  %bf.load148.i.i.i = load i32, ptr %insn.1472.i.i.i, align 8
  %bf.clear149.i.i.i = and i32 %bf.load148.i.i.i, 65535
  %bf.clear149.off.i.i.i = add nsw i32 %bf.clear149.i.i.i, -7
  %switch442.i.i.i = icmp ult i32 %bf.clear149.off.i.i.i, 4
  br i1 %switch442.i.i.i, label %if.then167.i.i.i, label %for.inc169.i.i.i

if.then167.i.i.i:                                 ; preds = %for.body147.i.i.i
  call void @cselib_process_insn(ptr noundef nonnull %insn.1472.i.i.i) #7
  br label %for.inc169.i.i.i

for.inc169.i.i.i:                                 ; preds = %if.then167.i.i.i, %for.body147.i.i.i
  %insn.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %insn.1472.i.i.i, i64 24
  %insn.1.i.i.i = load ptr, ptr %insn.1.in.i.i.i, align 8
  %352 = load ptr, ptr %253, align 8
  %il141.i.i.i = getelementptr inbounds nuw i8, ptr %352, i64 64
  %353 = load ptr, ptr %il141.i.i.i, align 8
  %end_142.i.i.i = getelementptr inbounds nuw i8, ptr %353, i64 8
  %354 = load ptr, ptr %end_142.i.i.i, align 8
  %arrayidx144.i.i.i = getelementptr inbounds nuw i8, ptr %354, i64 24
  %355 = load ptr, ptr %arrayidx144.i.i.i, align 8
  %cmp145.not.i.i.i = icmp eq ptr %insn.1.i.i.i, %355
  br i1 %cmp145.not.i.i.i, label %for.end172.i.i.i.loopexit, label %for.body147.i.i.i, !llvm.loop !7

for.end172.i.i.i.loopexit:                        ; preds = %for.inc169.i.i.i
  br label %for.end172.i.i.i

for.end172.i.i.i:                                 ; preds = %for.end172.i.i.i.loopexit, %for.end.i.i.i
  %call173.i.i.i = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #7
  call void @bitmap_clear(ptr noundef %call173.i.i.i) #7
  %356 = load ptr, ptr %il24.i.i.i, align 8
  %357 = load ptr, ptr %356, align 8
  %insn.2.in479.i.i.i = getelementptr inbounds nuw i8, ptr %357, i64 24
  %insn.2480.i.i.i = load ptr, ptr %insn.2.in479.i.i.i, align 8
  %end_180481.i.i.i = getelementptr inbounds nuw i8, ptr %356, i64 8
  %358 = load ptr, ptr %end_180481.i.i.i, align 8
  %arrayidx182482.i.i.i = getelementptr inbounds nuw i8, ptr %358, i64 24
  %359 = load ptr, ptr %arrayidx182482.i.i.i, align 8
  %cmp183483.not.i.i.i = icmp eq ptr %insn.2480.i.i.i, %359
  br i1 %cmp183483.not.i.i.i, label %if.end246.i.i.i, label %for.body186.i.i.i.preheader

for.body186.i.i.i.preheader:                      ; preds = %for.end172.i.i.i
  br label %for.body186.i.i.i

for.body186.i.i.i:                                ; preds = %if.end237.i.i.i, %for.body186.i.i.i.preheader
  %insn.2485.i.i.i = phi ptr [ %insn.2.i.i.i, %if.end237.i.i.i ], [ %insn.2480.i.i.i, %for.body186.i.i.i.preheader ]
  %bf.load187.i.i.i = load i32, ptr %insn.2485.i.i.i, align 8
  %bf.clear188.i.i.i = and i32 %bf.load187.i.i.i, 65535
  %bf.clear188.off.i.i.i = add nsw i32 %bf.clear188.i.i.i, -7
  %switch443.i.i.i = icmp ult i32 %bf.clear188.off.i.i.i, 4
  br i1 %switch443.i.i.i, label %if.then206.i.i.i, label %if.end237.i.i.i

if.then206.i.i.i:                                 ; preds = %for.body186.i.i.i
  %arrayidx208.i.i.i = getelementptr inbounds nuw i8, ptr %insn.2485.i.i.i, i64 48
  %360 = load ptr, ptr %arrayidx208.i.i.i, align 8
  %bf.load209.i.i.i = load i32, ptr %360, align 8
  %bf.clear210.i.i.i = and i32 %bf.load209.i.i.i, 65535
  %cmp211.i.i.i = icmp eq i32 %bf.clear210.i.i.i, 15
  br i1 %cmp211.i.i.i, label %for.cond214.preheader.i.i.i, label %if.else230.i.i.i

for.cond214.preheader.i.i.i:                      ; preds = %if.then206.i.i.i
  %u215.i.i.i = getelementptr inbounds nuw i8, ptr %360, i64 8
  %361 = load ptr, ptr %u215.i.i.i, align 8
  %362 = load i32, ptr %361, align 8
  %cmp217473.not.i.i.i = icmp eq i32 %362, 0
  br i1 %cmp217473.not.i.i.i, label %if.end237.i.i.i, label %for.body219.i.i.i.preheader

for.body219.i.i.i.preheader:                      ; preds = %for.cond214.preheader.i.i.i
  br label %for.body219.i.i.i

for.body219.i.i.i:                                ; preds = %mark_effect.exit767.i, %for.body219.i.i.i.preheader
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %mark_effect.exit767.i ], [ 0, %for.body219.i.i.i.preheader ]
  %363 = phi ptr [ %374, %mark_effect.exit767.i ], [ %361, %for.body219.i.i.i.preheader ]
  %failed.1475.i.i.i = phi i8 [ %or226432.i.i.i, %mark_effect.exit767.i ], [ 0, %for.body219.i.i.i.preheader ]
  %elem.i.i.i = getelementptr inbounds nuw i8, ptr %363, i64 8
  %arrayidx222.i.i.i = getelementptr inbounds nuw ptr, ptr %elem.i.i.i, i64 %indvars.iv.i.i.i
  %364 = load ptr, ptr %arrayidx222.i.i.i, align 8
  %bf.load.i706.i = load i32, ptr %364, align 8
  %trunc.i707.i = trunc i32 %bf.load.i706.i to i16
  switch i16 %trunc.i707.i, label %mark_effect.exit767.i [
    i16 25, label %sw.bb.i741.i
    i16 23, label %sw.bb17.i708.i
  ]

sw.bb.i741.i:                                     ; preds = %for.body219.i.i.i
  %u.i742.i = getelementptr inbounds nuw i8, ptr %364, i64 8
  %365 = load ptr, ptr %u.i742.i, align 8
  %bf.load1.i743.i = load i32, ptr %365, align 8
  %bf.clear2.i744.i = and i32 %bf.load1.i743.i, 65535
  %cmp.i745.i = icmp eq i32 %bf.clear2.i744.i, 37
  br i1 %cmp.i745.i, label %if.then.i746.i, label %mark_effect.exit767.i

if.then.i746.i:                                   ; preds = %sw.bb.i741.i
  %366 = getelementptr i8, ptr %365, i64 8
  %.val83.i747.i = load i32, ptr %366, align 8
  %call5.i748.i = call zeroext i8 @bitmap_clear_bit(ptr noundef %call173.i.i.i, i32 noundef %.val83.i747.i) #7
  %cmp6.i749.i = icmp slt i32 %.val83.i747.i, 53
  br i1 %cmp6.i749.i, label %if.then7.i750.i, label %mark_effect.exit767.i

if.then7.i750.i:                                  ; preds = %if.then.i746.i
  %idxprom.i751.i = sext i32 %.val83.i747.i to i64
  %arrayidx8.i752.i = getelementptr inbounds [87 x i8], ptr @hard_regno_nregs, i64 %idxprom.i751.i
  %bf.load9.i753.i = load i32, ptr %365, align 8
  %bf.lshr.i754.i = lshr i32 %bf.load9.i753.i, 16
  %bf.clear10.i755.i = and i32 %bf.lshr.i754.i, 255
  %idxprom11.i756.i = zext nneg i32 %bf.clear10.i755.i to i64
  %arrayidx12.i757.i = getelementptr inbounds nuw i8, ptr %arrayidx8.i752.i, i64 %idxprom11.i756.i
  %367 = load i8, ptr %arrayidx12.i757.i, align 1
  %cmp1387.i758.i = icmp ugt i8 %367, 1
  br i1 %cmp1387.i758.i, label %while.body.preheader.i759.i, label %mark_effect.exit767.i

while.body.preheader.i759.i:                      ; preds = %if.then7.i750.i
  %conv.i760.i = zext i8 %367 to i32
  br label %while.body.i761.i

while.body.i761.i:                                ; preds = %while.body.i761.i, %while.body.preheader.i759.i
  %n.088.i762.i = phi i32 [ %dec.i763.i, %while.body.i761.i ], [ %conv.i760.i, %while.body.preheader.i759.i ]
  %dec.i763.i = add nsw i32 %n.088.i762.i, -1
  %add.i764.i = add nsw i32 %dec.i763.i, %.val83.i747.i
  %call15.i765.i = call zeroext i8 @bitmap_clear_bit(ptr noundef %call173.i.i.i, i32 noundef %add.i764.i) #7
  %cmp13.i766.i = icmp samesign ugt i32 %n.088.i762.i, 2
  br i1 %cmp13.i766.i, label %while.body.i761.i, label %mark_effect.exit767.i.loopexit, !llvm.loop !8

sw.bb17.i708.i:                                   ; preds = %for.body219.i.i.i
  %u18.i709.i = getelementptr inbounds nuw i8, ptr %364, i64 8
  %368 = load ptr, ptr %u18.i709.i, align 8
  %arrayidx21.i710.i = getelementptr inbounds nuw i8, ptr %364, i64 16
  %369 = load ptr, ptr %arrayidx21.i710.i, align 8
  %call22.i711.i = call i32 @rtx_equal_for_cselib_p(ptr noundef %368, ptr noundef %369) #7
  %tobool.not.i712.i = icmp eq i32 %call22.i711.i, 0
  br i1 %tobool.not.i712.i, label %if.end24.i714.i, label %mark_effect.exit767.i

if.end24.i714.i:                                  ; preds = %sw.bb17.i708.i
  %370 = load ptr, ptr %u18.i709.i, align 8
  %371 = load ptr, ptr @global_rtl, align 16
  %cmp27.i715.i = icmp eq ptr %370, %371
  br i1 %cmp27.i715.i, label %mark_effect.exit767.i, label %if.end30.i716.i

if.end30.i716.i:                                  ; preds = %if.end24.i714.i
  %bf.load31.i717.i = load i32, ptr %370, align 8
  %bf.clear32.i718.i = and i32 %bf.load31.i717.i, 65535
  %cmp33.i719.i = icmp eq i32 %bf.clear32.i718.i, 37
  br i1 %cmp33.i719.i, label %if.end36.i720.i, label %mark_effect.exit767.i

if.end36.i720.i:                                  ; preds = %if.end30.i716.i
  %372 = getelementptr i8, ptr %370, i64 8
  %.val.i721.i = load i32, ptr %372, align 8
  %call38.i722.i = call zeroext i8 @bitmap_set_bit(ptr noundef %call173.i.i.i, i32 noundef %.val.i721.i) #7
  %cmp39.i723.i = icmp slt i32 %.val.i721.i, 53
  br i1 %cmp39.i723.i, label %if.then41.i724.i, label %mark_effect.exit767.i

if.then41.i724.i:                                 ; preds = %if.end36.i720.i
  %idxprom43.i725.i = sext i32 %.val.i721.i to i64
  %arrayidx44.i726.i = getelementptr inbounds [87 x i8], ptr @hard_regno_nregs, i64 %idxprom43.i725.i
  %bf.load45.i727.i = load i32, ptr %370, align 8
  %bf.lshr46.i728.i = lshr i32 %bf.load45.i727.i, 16
  %bf.clear47.i729.i = and i32 %bf.lshr46.i728.i, 255
  %idxprom48.i730.i = zext nneg i32 %bf.clear47.i729.i to i64
  %arrayidx49.i731.i = getelementptr inbounds nuw i8, ptr %arrayidx44.i726.i, i64 %idxprom48.i730.i
  %373 = load i8, ptr %arrayidx49.i731.i, align 1
  %cmp5385.i732.i = icmp ugt i8 %373, 1
  br i1 %cmp5385.i732.i, label %while.body55.preheader.i733.i, label %mark_effect.exit767.i

while.body55.preheader.i733.i:                    ; preds = %if.then41.i724.i
  %conv50.i734.i = zext i8 %373 to i32
  br label %while.body55.i735.i

while.body55.i735.i:                              ; preds = %while.body55.i735.i, %while.body55.preheader.i733.i
  %n42.086.i736.i = phi i32 [ %dec52.i737.i, %while.body55.i735.i ], [ %conv50.i734.i, %while.body55.preheader.i733.i ]
  %dec52.i737.i = add nsw i32 %n42.086.i736.i, -1
  %add56.i738.i = add nsw i32 %dec52.i737.i, %.val.i721.i
  %call57.i739.i = call zeroext i8 @bitmap_set_bit(ptr noundef %call173.i.i.i, i32 noundef %add56.i738.i) #7
  %cmp53.i740.i = icmp samesign ugt i32 %n42.086.i736.i, 2
  br i1 %cmp53.i740.i, label %while.body55.i735.i, label %mark_effect.exit767.i.loopexit158, !llvm.loop !9

mark_effect.exit767.i.loopexit:                   ; preds = %while.body.i761.i
  br label %mark_effect.exit767.i

mark_effect.exit767.i.loopexit158:                ; preds = %while.body55.i735.i
  br label %mark_effect.exit767.i

mark_effect.exit767.i:                            ; preds = %mark_effect.exit767.i.loopexit158, %mark_effect.exit767.i.loopexit, %if.then41.i724.i, %if.end36.i720.i, %if.end30.i716.i, %if.end24.i714.i, %sw.bb17.i708.i, %if.then7.i750.i, %if.then.i746.i, %sw.bb.i741.i, %for.body219.i.i.i
  %retval.0.i713.i = phi i8 [ 0, %if.then.i746.i ], [ 0, %sw.bb.i741.i ], [ 0, %sw.bb17.i708.i ], [ 0, %if.end24.i714.i ], [ 1, %if.end30.i716.i ], [ 0, %if.end36.i720.i ], [ 0, %for.body219.i.i.i ], [ 0, %if.then7.i750.i ], [ 0, %if.then41.i724.i ], [ 0, %mark_effect.exit767.i.loopexit ], [ 0, %mark_effect.exit767.i.loopexit158 ]
  %or226432.i.i.i = or i8 %retval.0.i713.i, %failed.1475.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %374 = load ptr, ptr %u215.i.i.i, align 8
  %375 = load i32, ptr %374, align 8
  %376 = zext i32 %375 to i64
  %cmp217.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i, %376
  br i1 %cmp217.i.i.i, label %for.body219.i.i.i, label %if.end237.i.i.loopexit.i, !llvm.loop !10

if.else230.i.i.i:                                 ; preds = %if.then206.i.i.i
  %trunc.i.i = trunc i32 %bf.load209.i.i.i to i16
  switch i16 %trunc.i.i, label %if.end237.i.i.i [
    i16 25, label %sw.bb.i.i
    i16 23, label %sw.bb17.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.else230.i.i.i
  %u.i700.i = getelementptr inbounds nuw i8, ptr %360, i64 8
  %377 = load ptr, ptr %u.i700.i, align 8
  %bf.load1.i.i = load i32, ptr %377, align 8
  %bf.clear2.i.i = and i32 %bf.load1.i.i, 65535
  %cmp.i701.i = icmp eq i32 %bf.clear2.i.i, 37
  br i1 %cmp.i701.i, label %if.then.i.i, label %if.end237.i.i.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  %378 = getelementptr i8, ptr %377, i64 8
  %.val83.i.i = load i32, ptr %378, align 8
  %call5.i702.i = call zeroext i8 @bitmap_clear_bit(ptr noundef %call173.i.i.i, i32 noundef %.val83.i.i) #7
  %cmp6.i.i = icmp slt i32 %.val83.i.i, 53
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.end237.i.i.i

if.then7.i.i:                                     ; preds = %if.then.i.i
  %idxprom.i703.i = sext i32 %.val83.i.i to i64
  %arrayidx8.i.i = getelementptr inbounds [87 x i8], ptr @hard_regno_nregs, i64 %idxprom.i703.i
  %bf.load9.i.i = load i32, ptr %377, align 8
  %bf.lshr.i.i = lshr i32 %bf.load9.i.i, 16
  %bf.clear10.i.i = and i32 %bf.lshr.i.i, 255
  %idxprom11.i.i = zext nneg i32 %bf.clear10.i.i to i64
  %arrayidx12.i.i = getelementptr inbounds nuw i8, ptr %arrayidx8.i.i, i64 %idxprom11.i.i
  %379 = load i8, ptr %arrayidx12.i.i, align 1
  %cmp1387.i.i = icmp ugt i8 %379, 1
  br i1 %cmp1387.i.i, label %while.body.preheader.i.i, label %if.end237.i.i.i

while.body.preheader.i.i:                         ; preds = %if.then7.i.i
  %conv.i.i = zext i8 %379 to i32
  br label %while.body.i704.i

while.body.i704.i:                                ; preds = %while.body.i704.i, %while.body.preheader.i.i
  %n.088.i.i = phi i32 [ %dec.i.i, %while.body.i704.i ], [ %conv.i.i, %while.body.preheader.i.i ]
  %dec.i.i = add nsw i32 %n.088.i.i, -1
  %add.i705.i = add nsw i32 %dec.i.i, %.val83.i.i
  %call15.i.i = call zeroext i8 @bitmap_clear_bit(ptr noundef %call173.i.i.i, i32 noundef %add.i705.i) #7
  %cmp13.i.i = icmp samesign ugt i32 %n.088.i.i, 2
  br i1 %cmp13.i.i, label %while.body.i704.i, label %if.end237.i.i.i.loopexit, !llvm.loop !8

sw.bb17.i.i:                                      ; preds = %if.else230.i.i.i
  %u18.i.i = getelementptr inbounds nuw i8, ptr %360, i64 8
  %380 = load ptr, ptr %u18.i.i, align 8
  %arrayidx21.i.i = getelementptr inbounds nuw i8, ptr %360, i64 16
  %381 = load ptr, ptr %arrayidx21.i.i, align 8
  %call22.i696.i = call i32 @rtx_equal_for_cselib_p(ptr noundef %380, ptr noundef %381) #7
  %tobool.not.i697.i = icmp eq i32 %call22.i696.i, 0
  br i1 %tobool.not.i697.i, label %if.end24.i.i, label %if.end237.i.i.i

if.end24.i.i:                                     ; preds = %sw.bb17.i.i
  %382 = load ptr, ptr %u18.i.i, align 8
  %383 = load ptr, ptr @global_rtl, align 16
  %cmp27.i.i = icmp eq ptr %382, %383
  br i1 %cmp27.i.i, label %if.end237.i.i.i, label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.end24.i.i
  %bf.load31.i.i = load i32, ptr %382, align 8
  %bf.clear32.i.i = and i32 %bf.load31.i.i, 65535
  %cmp33.i.i = icmp eq i32 %bf.clear32.i.i, 37
  br i1 %cmp33.i.i, label %if.end36.i.i, label %if.end237.i.i.i

if.end36.i.i:                                     ; preds = %if.end30.i.i
  %384 = getelementptr i8, ptr %382, i64 8
  %.val.i699.i = load i32, ptr %384, align 8
  %call38.i.i = call zeroext i8 @bitmap_set_bit(ptr noundef %call173.i.i.i, i32 noundef %.val.i699.i) #7
  %cmp39.i.i = icmp slt i32 %.val.i699.i, 53
  br i1 %cmp39.i.i, label %if.then41.i.i, label %if.end237.i.i.i

if.then41.i.i:                                    ; preds = %if.end36.i.i
  %idxprom43.i.i = sext i32 %.val.i699.i to i64
  %arrayidx44.i.i = getelementptr inbounds [87 x i8], ptr @hard_regno_nregs, i64 %idxprom43.i.i
  %bf.load45.i.i = load i32, ptr %382, align 8
  %bf.lshr46.i.i = lshr i32 %bf.load45.i.i, 16
  %bf.clear47.i.i = and i32 %bf.lshr46.i.i, 255
  %idxprom48.i.i = zext nneg i32 %bf.clear47.i.i to i64
  %arrayidx49.i.i = getelementptr inbounds nuw i8, ptr %arrayidx44.i.i, i64 %idxprom48.i.i
  %385 = load i8, ptr %arrayidx49.i.i, align 1
  %cmp5385.i.i = icmp ugt i8 %385, 1
  br i1 %cmp5385.i.i, label %while.body55.preheader.i.i, label %if.end237.i.i.i

while.body55.preheader.i.i:                       ; preds = %if.then41.i.i
  %conv50.i.i = zext i8 %385 to i32
  br label %while.body55.i.i

while.body55.i.i:                                 ; preds = %while.body55.i.i, %while.body55.preheader.i.i
  %n42.086.i.i = phi i32 [ %dec52.i.i, %while.body55.i.i ], [ %conv50.i.i, %while.body55.preheader.i.i ]
  %dec52.i.i = add nsw i32 %n42.086.i.i, -1
  %add56.i.i = add nsw i32 %dec52.i.i, %.val.i699.i
  %call57.i.i = call zeroext i8 @bitmap_set_bit(ptr noundef %call173.i.i.i, i32 noundef %add56.i.i) #7
  %cmp53.i.i = icmp samesign ugt i32 %n42.086.i.i, 2
  br i1 %cmp53.i.i, label %while.body55.i.i, label %if.end237.i.i.i.loopexit159, !llvm.loop !9

if.end237.i.i.loopexit.i:                         ; preds = %mark_effect.exit767.i
  %or226432.i.i.i.lcssa = phi i8 [ %or226432.i.i.i, %mark_effect.exit767.i ]
  %386 = icmp eq i8 %or226432.i.i.i.lcssa, 0
  br label %if.end237.i.i.i

if.end237.i.i.i.loopexit:                         ; preds = %while.body.i704.i
  br label %if.end237.i.i.i

if.end237.i.i.i.loopexit159:                      ; preds = %while.body55.i.i
  br label %if.end237.i.i.i

if.end237.i.i.i:                                  ; preds = %if.end237.i.i.i.loopexit159, %if.end237.i.i.i.loopexit, %if.end237.i.i.loopexit.i, %if.then41.i.i, %if.end36.i.i, %if.end30.i.i, %if.end24.i.i, %sw.bb17.i.i, %if.then7.i.i, %if.then.i.i, %sw.bb.i.i, %if.else230.i.i.i, %for.cond214.preheader.i.i.i, %for.body186.i.i.i
  %failed.3.i.i.i = phi i1 [ true, %for.body186.i.i.i ], [ true, %for.cond214.preheader.i.i.i ], [ true, %if.then.i.i ], [ true, %sw.bb.i.i ], [ true, %sw.bb17.i.i ], [ true, %if.end24.i.i ], [ false, %if.end30.i.i ], [ true, %if.end36.i.i ], [ true, %if.else230.i.i.i ], [ true, %if.then7.i.i ], [ true, %if.then41.i.i ], [ %386, %if.end237.i.i.loopexit.i ], [ true, %if.end237.i.i.i.loopexit ], [ true, %if.end237.i.i.i.loopexit159 ]
  call void @cselib_process_insn(ptr noundef nonnull %insn.2485.i.i.i) #7
  %insn.2.in.i.i.i = getelementptr inbounds nuw i8, ptr %insn.2485.i.i.i, i64 24
  %insn.2.i.i.i = load ptr, ptr %insn.2.in.i.i.i, align 8
  %387 = load ptr, ptr %il24.i.i.i, align 8
  %end_180.i.i.i = getelementptr inbounds nuw i8, ptr %387, i64 8
  %388 = load ptr, ptr %end_180.i.i.i, align 8
  %arrayidx182.i.i.i = getelementptr inbounds nuw i8, ptr %388, i64 24
  %389 = load ptr, ptr %arrayidx182.i.i.i, align 8
  %cmp183.i.i.i = icmp ne ptr %insn.2.i.i.i, %389
  %390 = select i1 %cmp183.i.i.i, i1 %failed.3.i.i.i, i1 false
  br i1 %390, label %for.body186.i.i.i, label %for.end241.i.i.i, !llvm.loop !11

for.end241.i.i.i:                                 ; preds = %if.end237.i.i.i
  %failed.3.i.i.i.lcssa = phi i1 [ %failed.3.i.i.i, %if.end237.i.i.i ]
  br i1 %failed.3.i.i.i.lcssa, label %if.end246.i.i.i, label %if.then243.i.i.i

if.then243.i.i.i:                                 ; preds = %for.end241.i.i.i
  %threaded_edges.1655.i.i.lcssa234 = phi ptr [ %threaded_edges.1655.i.i, %for.end241.i.i.i ]
  %nthreaded_edges.0653.i.i.lcssa224 = phi i32 [ %nthreaded_edges.0653.i.i, %for.end241.i.i.i ]
  %threaded.0652.i.i.lcssa214 = phi i8 [ %threaded.0652.i.i, %for.end241.i.i.i ]
  %goto_locus.0651.i.i.lcssa204 = phi i32 [ %goto_locus.0651.i.i, %for.end241.i.i.i ]
  %counter.0650.i.i.lcssa194 = phi i32 [ %counter.0650.i.i, %for.end241.i.i.i ]
  %target.0649.i.i.lcssa184 = phi ptr [ %target.0649.i.i, %for.end241.i.i.i ]
  %flags27.i.i.lcssa176 = phi ptr [ %flags27.i.i, %for.end241.i.i.i ]
  %call173.i.i.i.lcssa = phi ptr [ %call173.i.i.i, %for.end241.i.i.i ]
  %391 = load i32, ptr %flags27.i.i.lcssa176, align 8
  %or245.i.i.i = or i32 %391, 2048
  store i32 %or245.i.i.i, ptr %flags27.i.i.lcssa176, align 8
  br label %failed_exit.i.i.i

if.end246.i.i.i:                                  ; preds = %for.end241.i.i.i, %for.end172.i.i.i
  %call247.i.i.i = call i32 @for_each_rtx(ptr noundef nonnull %cond2.i.i.i, ptr noundef nonnull @mentions_nonequal_regs, ptr noundef %call173.i.i.i) #7
  %tobool248.not.i.i.i = icmp eq i32 %call247.i.i.i, 0
  br i1 %tobool248.not.i.i.i, label %if.end250.i.i.i, label %failed_exit.i.i.i.loopexit160

if.end250.i.i.i:                                  ; preds = %if.end246.i.i.i
  %call173.val.i.i.i = load ptr, ptr %call173.i.i.i, align 8
  %tobool.not.i.i467.i.i = icmp eq ptr %call173.val.i.i.i, null
  %spec.select.i = select i1 %tobool.not.i.i467.i.i, ptr @bitmap_zero_bits, ptr %call173.val.i.i.i
  %bits.i.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 24
  %392 = load i64, ptr %bits.i.i.i.i, align 8
  %tobool23.not.i.i.i.i = icmp eq i64 %392, 0
  br i1 %tobool23.not.i.i.i.i, label %while.body6.i.i.preheader, label %failed_exit.i.i.i.loopexit160

while.body6.i.i.preheader:                        ; preds = %if.end250.i.i.i
  br label %while.body6.i.i

while.body6.i.i:                                  ; preds = %while.end20.i.i, %while.body6.i.i.preheader
  %rsi.i.i.sroa.0.1.i = phi ptr [ %395, %while.end20.i.i ], [ %spec.select.i, %while.body6.i.i.preheader ]
  %storemerge.i.i = phi i32 [ 0, %while.end20.i.i ], [ 1, %while.body6.i.i.preheader ]
  %bits10.i.i = getelementptr inbounds nuw i8, ptr %rsi.i.i.sroa.0.1.i, i64 24
  br label %while.body9.i.i.peel.begin

while.body9.i.i.peel.begin:                       ; preds = %while.body6.i.i
  br label %while.body9.i.i.peel

while.body9.i.i.peel:                             ; preds = %while.body9.i.i.peel.begin
  %idxprom.i.i.peel = zext nneg i32 %storemerge.i.i to i64
  %arrayidx.i693.i.peel = getelementptr inbounds nuw i64, ptr %bits10.i.i, i64 %idxprom.i.i.peel
  %393 = load i64, ptr %arrayidx.i693.i.peel, align 8
  %tobool14.not.i.i.peel = icmp eq i64 %393, 0
  br i1 %tobool14.not.i.i.peel, label %if.end16.i.i.peel, label %failed_exit.i.i.i.loopexit.loopexit243

if.end16.i.i.peel:                                ; preds = %while.body9.i.i.peel
  %cmp.not.i694.i.peel = icmp eq i32 %storemerge.i.i, 1
  br i1 %cmp.not.i694.i.peel, label %while.end20.i.i, label %while.body9.i.i.peel.next

while.body9.i.i.peel.next:                        ; preds = %if.end16.i.i.peel
  br label %while.body9.i.i.peel.next242

while.body9.i.i.peel.next242:                     ; preds = %while.body9.i.i.peel.next
  br label %while.body6.i.i.peel.newph

while.body6.i.i.peel.newph:                       ; preds = %while.body9.i.i.peel.next242
  br label %while.body9.i.i

while.body9.i.i:                                  ; preds = %if.end16.i.i, %while.body6.i.i.peel.newph
  %arrayidx.i693.i = getelementptr inbounds nuw i64, ptr %bits10.i.i, i64 1
  %394 = load i64, ptr %arrayidx.i693.i, align 8
  %tobool14.not.i.i = icmp eq i64 %394, 0
  br i1 %tobool14.not.i.i, label %if.end16.i.i, label %failed_exit.i.i.i.loopexit.loopexit

if.end16.i.i:                                     ; preds = %while.body9.i.i
  br i1 true, label %while.end20.i.i.loopexit, label %while.body9.i.i, !llvm.loop !12

while.end20.i.i.loopexit:                         ; preds = %if.end16.i.i
  br label %while.end20.i.i

while.end20.i.i:                                  ; preds = %while.end20.i.i.loopexit, %if.end16.i.i.peel
  %395 = load ptr, ptr %rsi.i.i.sroa.0.1.i, align 8
  %tobool24.not.i.i = icmp eq ptr %395, null
  br i1 %tobool24.not.i.i, label %for.end256.i.i.i, label %while.body6.i.i

for.end256.i.i.i:                                 ; preds = %while.end20.i.i
  call void @bitmap_obstack_free(ptr noundef nonnull %call173.i.i.i) #7
  call void @cselib_finish() #7
  %call257.i.i.i = call i32 @comparison_dominates_p(i32 noundef %code1.0.i.i.i, i32 noundef %bf.clear70.i.i.i) #7
  %cmp258.i.i.i = icmp ne i32 %call257.i.i.i, 0
  %396 = load ptr, ptr %arrayidx59.i.i.i, align 8
  %arrayidx263.i.i.i = getelementptr inbounds nuw i8, ptr %396, i64 16
  %397 = load ptr, ptr %arrayidx263.i.i.i, align 8
  %398 = load ptr, ptr @global_rtl, align 16
  %399 = icmp ne ptr %397, %398
  %cmp266.not.i.i.i = xor i1 %cmp258.i.i.i, %399
  %400 = load ptr, ptr %succs6.i.i.i, align 8
  %vec.i450.i.i.i = getelementptr inbounds nuw i8, ptr %400, i64 8
  %401 = load ptr, ptr %vec.i450.i.i.i, align 8
  %flags313.i.i.i = getelementptr inbounds nuw i8, ptr %401, i64 48
  %402 = load i32, ptr %flags313.i.i.i, align 8
  %and314.i.i.i = and i32 %402, 1
  %tobool315.not.i.i.i = icmp eq i32 %and314.i.i.i, 0
  %403 = xor i1 %cmp266.not.i.i.i, %tobool315.not.i.i.i
  br i1 %403, label %thread_jump.exit.thread530.i.i, label %thread_jump.exit.i.i

failed_exit.i.i.i.loopexit.loopexit:              ; preds = %while.body9.i.i
  %threaded_edges.1655.i.i.lcssa236.ph = phi ptr [ %threaded_edges.1655.i.i, %while.body9.i.i ]
  %nthreaded_edges.0653.i.i.lcssa226.ph = phi i32 [ %nthreaded_edges.0653.i.i, %while.body9.i.i ]
  %threaded.0652.i.i.lcssa216.ph = phi i8 [ %threaded.0652.i.i, %while.body9.i.i ]
  %goto_locus.0651.i.i.lcssa206.ph = phi i32 [ %goto_locus.0651.i.i, %while.body9.i.i ]
  %counter.0650.i.i.lcssa196.ph = phi i32 [ %counter.0650.i.i, %while.body9.i.i ]
  %target.0649.i.i.lcssa186.ph = phi ptr [ %target.0649.i.i, %while.body9.i.i ]
  %call173.i.i.i.lcssa169.ph = phi ptr [ %call173.i.i.i, %while.body9.i.i ]
  br label %failed_exit.i.i.i.loopexit

failed_exit.i.i.i.loopexit.loopexit243:           ; preds = %while.body9.i.i.peel
  %threaded_edges.1655.i.i.lcssa236.ph244 = phi ptr [ %threaded_edges.1655.i.i, %while.body9.i.i.peel ]
  %nthreaded_edges.0653.i.i.lcssa226.ph245 = phi i32 [ %nthreaded_edges.0653.i.i, %while.body9.i.i.peel ]
  %threaded.0652.i.i.lcssa216.ph246 = phi i8 [ %threaded.0652.i.i, %while.body9.i.i.peel ]
  %goto_locus.0651.i.i.lcssa206.ph247 = phi i32 [ %goto_locus.0651.i.i, %while.body9.i.i.peel ]
  %counter.0650.i.i.lcssa196.ph248 = phi i32 [ %counter.0650.i.i, %while.body9.i.i.peel ]
  %target.0649.i.i.lcssa186.ph249 = phi ptr [ %target.0649.i.i, %while.body9.i.i.peel ]
  %call173.i.i.i.lcssa169.ph250 = phi ptr [ %call173.i.i.i, %while.body9.i.i.peel ]
  br label %failed_exit.i.i.i.loopexit

failed_exit.i.i.i.loopexit:                       ; preds = %failed_exit.i.i.i.loopexit.loopexit243, %failed_exit.i.i.i.loopexit.loopexit
  %threaded_edges.1655.i.i.lcssa236 = phi ptr [ %threaded_edges.1655.i.i.lcssa236.ph, %failed_exit.i.i.i.loopexit.loopexit ], [ %threaded_edges.1655.i.i.lcssa236.ph244, %failed_exit.i.i.i.loopexit.loopexit243 ]
  %nthreaded_edges.0653.i.i.lcssa226 = phi i32 [ %nthreaded_edges.0653.i.i.lcssa226.ph, %failed_exit.i.i.i.loopexit.loopexit ], [ %nthreaded_edges.0653.i.i.lcssa226.ph245, %failed_exit.i.i.i.loopexit.loopexit243 ]
  %threaded.0652.i.i.lcssa216 = phi i8 [ %threaded.0652.i.i.lcssa216.ph, %failed_exit.i.i.i.loopexit.loopexit ], [ %threaded.0652.i.i.lcssa216.ph246, %failed_exit.i.i.i.loopexit.loopexit243 ]
  %goto_locus.0651.i.i.lcssa206 = phi i32 [ %goto_locus.0651.i.i.lcssa206.ph, %failed_exit.i.i.i.loopexit.loopexit ], [ %goto_locus.0651.i.i.lcssa206.ph247, %failed_exit.i.i.i.loopexit.loopexit243 ]
  %counter.0650.i.i.lcssa196 = phi i32 [ %counter.0650.i.i.lcssa196.ph, %failed_exit.i.i.i.loopexit.loopexit ], [ %counter.0650.i.i.lcssa196.ph248, %failed_exit.i.i.i.loopexit.loopexit243 ]
  %target.0649.i.i.lcssa186 = phi ptr [ %target.0649.i.i.lcssa186.ph, %failed_exit.i.i.i.loopexit.loopexit ], [ %target.0649.i.i.lcssa186.ph249, %failed_exit.i.i.i.loopexit.loopexit243 ]
  %call173.i.i.i.lcssa169 = phi ptr [ %call173.i.i.i.lcssa169.ph, %failed_exit.i.i.i.loopexit.loopexit ], [ %call173.i.i.i.lcssa169.ph250, %failed_exit.i.i.i.loopexit.loopexit243 ]
  br label %failed_exit.i.i.i

failed_exit.i.i.i.loopexit160:                    ; preds = %if.end250.i.i.i, %if.end246.i.i.i
  %threaded_edges.1655.i.i.lcssa235 = phi ptr [ %threaded_edges.1655.i.i, %if.end246.i.i.i ], [ %threaded_edges.1655.i.i, %if.end250.i.i.i ]
  %nthreaded_edges.0653.i.i.lcssa225 = phi i32 [ %nthreaded_edges.0653.i.i, %if.end246.i.i.i ], [ %nthreaded_edges.0653.i.i, %if.end250.i.i.i ]
  %threaded.0652.i.i.lcssa215 = phi i8 [ %threaded.0652.i.i, %if.end246.i.i.i ], [ %threaded.0652.i.i, %if.end250.i.i.i ]
  %goto_locus.0651.i.i.lcssa205 = phi i32 [ %goto_locus.0651.i.i, %if.end246.i.i.i ], [ %goto_locus.0651.i.i, %if.end250.i.i.i ]
  %counter.0650.i.i.lcssa195 = phi i32 [ %counter.0650.i.i, %if.end246.i.i.i ], [ %counter.0650.i.i, %if.end250.i.i.i ]
  %target.0649.i.i.lcssa185 = phi ptr [ %target.0649.i.i, %if.end246.i.i.i ], [ %target.0649.i.i, %if.end250.i.i.i ]
  %call173.i.i.i.lcssa168 = phi ptr [ %call173.i.i.i, %if.end246.i.i.i ], [ %call173.i.i.i, %if.end250.i.i.i ]
  br label %failed_exit.i.i.i

failed_exit.i.i.i:                                ; preds = %failed_exit.i.i.i.loopexit160, %failed_exit.i.i.i.loopexit, %if.then243.i.i.i
  %threaded_edges.1655.i.i239 = phi ptr [ %threaded_edges.1655.i.i.lcssa235, %failed_exit.i.i.i.loopexit160 ], [ %threaded_edges.1655.i.i.lcssa236, %failed_exit.i.i.i.loopexit ], [ %threaded_edges.1655.i.i.lcssa234, %if.then243.i.i.i ]
  %nthreaded_edges.0653.i.i229 = phi i32 [ %nthreaded_edges.0653.i.i.lcssa225, %failed_exit.i.i.i.loopexit160 ], [ %nthreaded_edges.0653.i.i.lcssa226, %failed_exit.i.i.i.loopexit ], [ %nthreaded_edges.0653.i.i.lcssa224, %if.then243.i.i.i ]
  %threaded.0652.i.i219 = phi i8 [ %threaded.0652.i.i.lcssa215, %failed_exit.i.i.i.loopexit160 ], [ %threaded.0652.i.i.lcssa216, %failed_exit.i.i.i.loopexit ], [ %threaded.0652.i.i.lcssa214, %if.then243.i.i.i ]
  %goto_locus.0651.i.i209 = phi i32 [ %goto_locus.0651.i.i.lcssa205, %failed_exit.i.i.i.loopexit160 ], [ %goto_locus.0651.i.i.lcssa206, %failed_exit.i.i.i.loopexit ], [ %goto_locus.0651.i.i.lcssa204, %if.then243.i.i.i ]
  %counter.0650.i.i199 = phi i32 [ %counter.0650.i.i.lcssa195, %failed_exit.i.i.i.loopexit160 ], [ %counter.0650.i.i.lcssa196, %failed_exit.i.i.i.loopexit ], [ %counter.0650.i.i.lcssa194, %if.then243.i.i.i ]
  %target.0649.i.i189 = phi ptr [ %target.0649.i.i.lcssa185, %failed_exit.i.i.i.loopexit160 ], [ %target.0649.i.i.lcssa186, %failed_exit.i.i.i.loopexit ], [ %target.0649.i.i.lcssa184, %if.then243.i.i.i ]
  %call173.i.i.i171 = phi ptr [ %call173.i.i.i.lcssa168, %failed_exit.i.i.i.loopexit160 ], [ %call173.i.i.i.lcssa169, %failed_exit.i.i.i.loopexit ], [ %call173.i.i.i.lcssa, %if.then243.i.i.i ]
  call void @bitmap_obstack_free(ptr noundef %call173.i.i.i171) #7
  call void @cselib_finish() #7
  br label %thread_jump.exit.thread.i.i

thread_jump.exit.thread.i.i.loopexit:             ; preds = %lor.lhs.false86.i.i.i, %if.end79.i.i.i, %land.lhs.true.i.i.i, %if.end18.i.i.i, %VEC_edge_base_length.exit.i466.i.i, %if.end.i.i640.i, %if.then120.i.i
  %threaded_edges.1655.i.i.lcssa230 = phi ptr [ %threaded_edges.1655.i.i, %if.then120.i.i ], [ %threaded_edges.1655.i.i, %if.end.i.i640.i ], [ %threaded_edges.1655.i.i, %VEC_edge_base_length.exit.i466.i.i ], [ %threaded_edges.1655.i.i, %if.end18.i.i.i ], [ %threaded_edges.1655.i.i, %land.lhs.true.i.i.i ], [ %threaded_edges.1655.i.i, %if.end79.i.i.i ], [ %threaded_edges.1655.i.i, %lor.lhs.false86.i.i.i ]
  %nthreaded_edges.0653.i.i.lcssa220 = phi i32 [ %nthreaded_edges.0653.i.i, %if.then120.i.i ], [ %nthreaded_edges.0653.i.i, %if.end.i.i640.i ], [ %nthreaded_edges.0653.i.i, %VEC_edge_base_length.exit.i466.i.i ], [ %nthreaded_edges.0653.i.i, %if.end18.i.i.i ], [ %nthreaded_edges.0653.i.i, %land.lhs.true.i.i.i ], [ %nthreaded_edges.0653.i.i, %if.end79.i.i.i ], [ %nthreaded_edges.0653.i.i, %lor.lhs.false86.i.i.i ]
  %threaded.0652.i.i.lcssa210 = phi i8 [ %threaded.0652.i.i, %if.then120.i.i ], [ %threaded.0652.i.i, %if.end.i.i640.i ], [ %threaded.0652.i.i, %VEC_edge_base_length.exit.i466.i.i ], [ %threaded.0652.i.i, %if.end18.i.i.i ], [ %threaded.0652.i.i, %land.lhs.true.i.i.i ], [ %threaded.0652.i.i, %if.end79.i.i.i ], [ %threaded.0652.i.i, %lor.lhs.false86.i.i.i ]
  %goto_locus.0651.i.i.lcssa200 = phi i32 [ %goto_locus.0651.i.i, %if.then120.i.i ], [ %goto_locus.0651.i.i, %if.end.i.i640.i ], [ %goto_locus.0651.i.i, %VEC_edge_base_length.exit.i466.i.i ], [ %goto_locus.0651.i.i, %if.end18.i.i.i ], [ %goto_locus.0651.i.i, %land.lhs.true.i.i.i ], [ %goto_locus.0651.i.i, %if.end79.i.i.i ], [ %goto_locus.0651.i.i, %lor.lhs.false86.i.i.i ]
  %counter.0650.i.i.lcssa190 = phi i32 [ %counter.0650.i.i, %if.then120.i.i ], [ %counter.0650.i.i, %if.end.i.i640.i ], [ %counter.0650.i.i, %VEC_edge_base_length.exit.i466.i.i ], [ %counter.0650.i.i, %if.end18.i.i.i ], [ %counter.0650.i.i, %land.lhs.true.i.i.i ], [ %counter.0650.i.i, %if.end79.i.i.i ], [ %counter.0650.i.i, %lor.lhs.false86.i.i.i ]
  %target.0649.i.i.lcssa180 = phi ptr [ %target.0649.i.i, %if.then120.i.i ], [ %target.0649.i.i, %if.end.i.i640.i ], [ %target.0649.i.i, %VEC_edge_base_length.exit.i466.i.i ], [ %target.0649.i.i, %if.end18.i.i.i ], [ %target.0649.i.i, %land.lhs.true.i.i.i ], [ %target.0649.i.i, %if.end79.i.i.i ], [ %target.0649.i.i, %lor.lhs.false86.i.i.i ]
  br label %thread_jump.exit.thread.i.i

thread_jump.exit.thread.i.i:                      ; preds = %thread_jump.exit.thread.i.i.loopexit, %failed_exit.i.i.i, %if.then128.i.i.i, %if.then32.i.i.i, %if.then16.i.i.i
  %threaded_edges.1655.i.i238 = phi ptr [ %threaded_edges.1655.i.i.lcssa230, %thread_jump.exit.thread.i.i.loopexit ], [ %threaded_edges.1655.i.i239, %failed_exit.i.i.i ], [ %threaded_edges.1655.i.i.lcssa233, %if.then128.i.i.i ], [ %threaded_edges.1655.i.i.lcssa232, %if.then32.i.i.i ], [ %threaded_edges.1655.i.i.lcssa231, %if.then16.i.i.i ]
  %nthreaded_edges.0653.i.i228 = phi i32 [ %nthreaded_edges.0653.i.i.lcssa220, %thread_jump.exit.thread.i.i.loopexit ], [ %nthreaded_edges.0653.i.i229, %failed_exit.i.i.i ], [ %nthreaded_edges.0653.i.i.lcssa223, %if.then128.i.i.i ], [ %nthreaded_edges.0653.i.i.lcssa222, %if.then32.i.i.i ], [ %nthreaded_edges.0653.i.i.lcssa221, %if.then16.i.i.i ]
  %threaded.0652.i.i218 = phi i8 [ %threaded.0652.i.i.lcssa210, %thread_jump.exit.thread.i.i.loopexit ], [ %threaded.0652.i.i219, %failed_exit.i.i.i ], [ %threaded.0652.i.i.lcssa213, %if.then128.i.i.i ], [ %threaded.0652.i.i.lcssa212, %if.then32.i.i.i ], [ %threaded.0652.i.i.lcssa211, %if.then16.i.i.i ]
  %goto_locus.0651.i.i208 = phi i32 [ %goto_locus.0651.i.i.lcssa200, %thread_jump.exit.thread.i.i.loopexit ], [ %goto_locus.0651.i.i209, %failed_exit.i.i.i ], [ %goto_locus.0651.i.i.lcssa203, %if.then128.i.i.i ], [ %goto_locus.0651.i.i.lcssa202, %if.then32.i.i.i ], [ %goto_locus.0651.i.i.lcssa201, %if.then16.i.i.i ]
  %counter.0650.i.i198 = phi i32 [ %counter.0650.i.i.lcssa190, %thread_jump.exit.thread.i.i.loopexit ], [ %counter.0650.i.i199, %failed_exit.i.i.i ], [ %counter.0650.i.i.lcssa193, %if.then128.i.i.i ], [ %counter.0650.i.i.lcssa192, %if.then32.i.i.i ], [ %counter.0650.i.i.lcssa191, %if.then16.i.i.i ]
  %target.0649.i.i188 = phi ptr [ %target.0649.i.i.lcssa180, %thread_jump.exit.thread.i.i.loopexit ], [ %target.0649.i.i189, %failed_exit.i.i.i ], [ %target.0649.i.i.lcssa183, %if.then128.i.i.i ], [ %target.0649.i.i.lcssa182, %if.then32.i.i.i ], [ %target.0649.i.i.lcssa181, %if.then16.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %cond2.i.i.i) #7
  br label %while.end.i.i

thread_jump.exit.thread530.i.i:                   ; preds = %for.end256.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %cond2.i.i.i) #7
  br label %if.then123.i.i

thread_jump.exit.i.i:                             ; preds = %for.end256.i.i.i
  %retval.0.i.in.i.i = getelementptr inbounds nuw i8, ptr %400, i64 16
  %retval.0.i.i.i = load ptr, ptr %retval.0.i.in.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %cond2.i.i.i) #7
  %tobool122.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool122.not.i.i, label %while.end.i.i.loopexit, label %if.then123.i.i

if.then123.i.i:                                   ; preds = %thread_jump.exit.i.i, %thread_jump.exit.thread530.i.i
  %retval.0.i533.i.i = phi ptr [ %401, %thread_jump.exit.thread530.i.i ], [ %retval.0.i.i.i, %thread_jump.exit.i.i ]
  %tobool124.not.i.i = icmp eq ptr %threaded_edges.1655.i.i, null
  br i1 %tobool124.not.i.i, label %if.then125.i.i, label %for.cond132.preheader.i.i

for.cond132.preheader.i.i:                        ; preds = %if.then123.i.i
  %cmp133.not644.i.i = icmp sgt i32 %nthreaded_edges.0653.i.i, 0
  br i1 %cmp133.not644.i.i, label %for.body135.preheader.i.i, label %if.end148.i.i

for.body135.preheader.i.i:                        ; preds = %for.cond132.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %nthreaded_edges.0653.i.i to i64
  br label %for.body135.i.i

if.then125.i.i:                                   ; preds = %if.then123.i.i
  %404 = load ptr, ptr @cfun, align 8
  %cfg127.i.i = getelementptr inbounds nuw i8, ptr %404, i64 8
  %405 = load ptr, ptr %cfg127.i.i, align 8
  %x_n_basic_blocks128.i.i = getelementptr inbounds nuw i8, ptr %405, i64 24
  %406 = load i32, ptr %x_n_basic_blocks128.i.i, align 8
  %conv129.i.i = sext i32 %406 to i64
  %mul.i.i = shl nsw i64 %conv129.i.i, 3
  %call130.i.i = call ptr @xmalloc(i64 noundef %mul.i.i) #7
  br label %if.end148.i.i

for.cond132.i.i:                                  ; preds = %for.body135.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %if.end148.i.i.loopexit, label %for.body135.i.i, !llvm.loop !14

for.body135.i.i:                                  ; preds = %for.cond132.i.i, %for.body135.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body135.preheader.i.i ], [ %indvars.iv.next.i.i, %for.cond132.i.i ]
  %arrayidx136.i.i = getelementptr inbounds nuw ptr, ptr %threaded_edges.1655.i.i, i64 %indvars.iv.i.i
  %407 = load ptr, ptr %arrayidx136.i.i, align 8
  %cmp137.i.i = icmp eq ptr %407, %retval.0.i533.i.i
  br i1 %cmp137.i.i, label %cleanup.thread.i.i, label %for.cond132.i.i

cleanup.thread.i.i:                               ; preds = %for.body135.i.i
  %threaded_edges.1655.i.i.lcssa237 = phi ptr [ %threaded_edges.1655.i.i, %for.body135.i.i ]
  %nthreaded_edges.0653.i.i.lcssa227 = phi i32 [ %nthreaded_edges.0653.i.i, %for.body135.i.i ]
  %threaded.0652.i.i.lcssa217 = phi i8 [ %threaded.0652.i.i, %for.body135.i.i ]
  %goto_locus.0651.i.i.lcssa207 = phi i32 [ %goto_locus.0651.i.i, %for.body135.i.i ]
  %target.0649.i.i.lcssa187 = phi ptr [ %target.0649.i.i, %for.body135.i.i ]
  %408 = load ptr, ptr @cfun, align 8
  %cfg145.i.i = getelementptr inbounds nuw i8, ptr %408, i64 8
  %409 = load ptr, ptr %cfg145.i.i, align 8
  %x_n_basic_blocks146.i.i = getelementptr inbounds nuw i8, ptr %409, i64 24
  %410 = load i32, ptr %x_n_basic_blocks146.i.i, align 8
  br label %while.end.i.i

if.end148.i.i.loopexit:                           ; preds = %for.cond132.i.i
  br label %if.end148.i.i

if.end148.i.i:                                    ; preds = %if.end148.i.i.loopexit, %if.then125.i.i, %for.cond132.preheader.i.i
  %threaded_edges.2.i.i = phi ptr [ %call130.i.i, %if.then125.i.i ], [ %threaded_edges.1655.i.i, %for.cond132.preheader.i.i ], [ %threaded_edges.1655.i.i, %if.end148.i.i.loopexit ]
  %dest149.i.i = getelementptr inbounds nuw i8, ptr %retval.0.i533.i.i, i64 8
  %411 = load ptr, ptr %dest149.i.i, align 8
  %cmp150.i.i = icmp eq ptr %411, %b.1798.i
  br i1 %cmp150.i.i, label %while.end.i.i.loopexit, label %if.end153.i.i

if.end153.i.i:                                    ; preds = %if.end148.i.i
  %412 = load ptr, ptr @cfun, align 8
  %cfg155.i.i = getelementptr inbounds nuw i8, ptr %412, i64 8
  %413 = load ptr, ptr %cfg155.i.i, align 8
  %x_n_basic_blocks156.i.i = getelementptr inbounds nuw i8, ptr %413, i64 24
  %414 = load i32, ptr %x_n_basic_blocks156.i.i, align 8
  %sub.i.i = add nsw i32 %414, -2
  %cmp157.i.i = icmp slt i32 %nthreaded_edges.0653.i.i, %sub.i.i
  br i1 %cmp157.i.i, label %cond.end.i.i, label %cond.true.i644.i

cond.true.i644.i:                                 ; preds = %if.end153.i.i
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 533, ptr noundef nonnull @.str.1) #7
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i644.i, %if.end153.i.i
  %inc159.i.i = add nsw i32 %nthreaded_edges.0653.i.i, 1
  %idxprom160.i.i = sext i32 %nthreaded_edges.0653.i.i to i64
  %arrayidx161.i.i = getelementptr inbounds ptr, ptr %threaded_edges.2.i.i, i64 %idxprom160.i.i
  store ptr %retval.0.i533.i.i, ptr %arrayidx161.i.i, align 8
  %415 = load ptr, ptr %dest149.i.i, align 8
  br label %if.end168.i.i

if.end168.i.i:                                    ; preds = %cond.end.i.i, %if.else106.i.i, %if.then102.i.i, %if.end68.i.i, %if.else.i649.i
  %counter.7.i.i = phi i32 [ %counter.0650.i.i, %if.else.i649.i ], [ %301, %if.then102.i.i ], [ %counter.1.i.i, %if.end68.i.i ], [ %counter.1.i.i, %if.else106.i.i ], [ %counter.0650.i.i, %cond.end.i.i ]
  %goto_locus.3.i.i = phi i32 [ %goto_locus.0651.i.i, %if.else.i649.i ], [ %goto_locus.1.i.i, %if.then102.i.i ], [ %goto_locus.1.i.i, %if.end68.i.i ], [ %spec.select438.i.i, %if.else106.i.i ], [ %goto_locus.0651.i.i, %cond.end.i.i ]
  %nthreaded_edges.3.i.i = phi i32 [ %nthreaded_edges.0653.i.i, %if.else.i649.i ], [ %nthreaded_edges.0653.i.i, %if.then102.i.i ], [ %nthreaded_edges.0653.i.i, %if.end68.i.i ], [ %nthreaded_edges.0653.i.i, %if.else106.i.i ], [ %inc159.i.i, %cond.end.i.i ]
  %new_target.2.i.i = phi ptr [ %284, %if.else.i649.i ], [ %284, %if.then102.i.i ], [ %284, %if.end68.i.i ], [ %284, %if.else106.i.i ], [ %415, %cond.end.i.i ]
  %new_target_threaded.2.i.i = phi i8 [ %threaded.0652.i.i, %if.else.i649.i ], [ %threaded.0652.i.i, %if.then102.i.i ], [ %threaded.0652.i.i, %if.end68.i.i ], [ %threaded.0652.i.i, %if.else106.i.i ], [ 1, %cond.end.i.i ]
  %threaded_edges.5.i.i = phi ptr [ %threaded_edges.1655.i.i, %if.else.i649.i ], [ %threaded_edges.1655.i.i, %if.then102.i.i ], [ %threaded_edges.1655.i.i, %if.end68.i.i ], [ %threaded_edges.1655.i.i, %if.else106.i.i ], [ %threaded_edges.2.i.i, %cond.end.i.i ]
  %tobool169.not.i.i = icmp eq ptr %new_target.2.i.i, null
  br i1 %tobool169.not.i.i, label %while.end.i.i.loopexit, label %cleanup177.i.i

cleanup177.i.i:                                   ; preds = %if.end168.i.i, %if.end168.thread.i.i
  %threaded_edges.5799.i.i = phi ptr [ %threaded_edges.1655.i.i, %if.end168.thread.i.i ], [ %threaded_edges.5.i.i, %if.end168.i.i ]
  %new_target_threaded.2798.i.i = phi i8 [ %threaded.0652.i.i, %if.end168.thread.i.i ], [ %new_target_threaded.2.i.i, %if.end168.i.i ]
  %new_target.2797.i.i = phi ptr [ %target.0649.i.i, %if.end168.thread.i.i ], [ %new_target.2.i.i, %if.end168.i.i ]
  %nthreaded_edges.3796.i.i = phi i32 [ %nthreaded_edges.0653.i.i, %if.end168.thread.i.i ], [ %nthreaded_edges.3.i.i, %if.end168.i.i ]
  %goto_locus.3795.i.i = phi i32 [ %goto_locus.0651.i.i, %if.end168.thread.i.i ], [ %goto_locus.3.i.i, %if.end168.i.i ]
  %counter.7794.i.i = phi i32 [ %287, %if.end168.thread.i.i ], [ %counter.7.i.i, %if.end168.i.i ]
  %inc172.i.i = add nsw i32 %counter.7794.i.i, 1
  %416 = load ptr, ptr @cfun, align 8
  %cfg19.i.i = getelementptr inbounds nuw i8, ptr %416, i64 8
  %417 = load ptr, ptr %cfg19.i.i, align 8
  %x_n_basic_blocks.i.i = getelementptr inbounds nuw i8, ptr %417, i64 24
  %418 = load i32, ptr %x_n_basic_blocks.i.i, align 8
  %cmp20.i.i = icmp slt i32 %inc172.i.i, %418
  br i1 %cmp20.i.i, label %while.body.i.i, label %while.end.i.i.loopexit

while.end.i.i.loopexit:                           ; preds = %cleanup177.i.i, %if.end168.i.i, %if.end148.i.i, %thread_jump.exit.i.i, %if.else114.i.i
  %target.0639.i.i.ph = phi ptr [ %target.0649.i.i, %thread_jump.exit.i.i ], [ %target.0649.i.i, %if.else114.i.i ], [ %target.0649.i.i, %if.end148.i.i ], [ %target.0649.i.i, %if.end168.i.i ], [ %new_target.2797.i.i, %cleanup177.i.i ]
  %threaded.0611.i.i.ph = phi i8 [ %threaded.0652.i.i, %thread_jump.exit.i.i ], [ %threaded.0652.i.i, %if.else114.i.i ], [ %threaded.0652.i.i, %if.end148.i.i ], [ %threaded.0652.i.i, %if.end168.i.i ], [ %new_target_threaded.2798.i.i, %cleanup177.i.i ]
  %counter.9.i.i.ph = phi i32 [ %counter.0650.i.i, %thread_jump.exit.i.i ], [ %counter.0650.i.i, %if.else114.i.i ], [ %counter.0650.i.i, %if.end148.i.i ], [ %counter.7.i.i, %if.end168.i.i ], [ %inc172.i.i, %cleanup177.i.i ]
  %goto_locus.5.i.i.ph = phi i32 [ %goto_locus.0651.i.i, %thread_jump.exit.i.i ], [ %goto_locus.0651.i.i, %if.else114.i.i ], [ %goto_locus.0651.i.i, %if.end148.i.i ], [ %goto_locus.3.i.i, %if.end168.i.i ], [ %goto_locus.3795.i.i, %cleanup177.i.i ]
  %nthreaded_edges.5.i.i.ph = phi i32 [ %nthreaded_edges.0653.i.i, %thread_jump.exit.i.i ], [ %nthreaded_edges.0653.i.i, %if.else114.i.i ], [ %nthreaded_edges.0653.i.i, %if.end148.i.i ], [ %nthreaded_edges.3.i.i, %if.end168.i.i ], [ %nthreaded_edges.3796.i.i, %cleanup177.i.i ]
  %threaded_edges.7.i.i.ph = phi ptr [ %threaded_edges.1655.i.i, %thread_jump.exit.i.i ], [ %threaded_edges.1655.i.i, %if.else114.i.i ], [ %threaded_edges.2.i.i, %if.end148.i.i ], [ %threaded_edges.5.i.i, %if.end168.i.i ], [ %threaded_edges.5799.i.i, %cleanup177.i.i ]
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.i.i.loopexit, %cleanup.thread.i.i, %thread_jump.exit.thread.i.i, %if.end17.i.i
  %target.0639.i.i = phi ptr [ %target.0649.i.i.lcssa187, %cleanup.thread.i.i ], [ %target.0649.i.i188, %thread_jump.exit.thread.i.i ], [ %258, %if.end17.i.i ], [ %target.0639.i.i.ph, %while.end.i.i.loopexit ]
  %threaded.0611.i.i = phi i8 [ %threaded.0652.i.i.lcssa217, %cleanup.thread.i.i ], [ %threaded.0652.i.i218, %thread_jump.exit.thread.i.i ], [ 0, %if.end17.i.i ], [ %threaded.0611.i.i.ph, %while.end.i.i.loopexit ]
  %counter.9.i.i = phi i32 [ %410, %cleanup.thread.i.i ], [ %counter.0650.i.i198, %thread_jump.exit.thread.i.i ], [ 2, %if.end17.i.i ], [ %counter.9.i.i.ph, %while.end.i.i.loopexit ]
  %goto_locus.5.i.i = phi i32 [ %goto_locus.0651.i.i.lcssa207, %cleanup.thread.i.i ], [ %goto_locus.0651.i.i208, %thread_jump.exit.thread.i.i ], [ %259, %if.end17.i.i ], [ %goto_locus.5.i.i.ph, %while.end.i.i.loopexit ]
  %nthreaded_edges.5.i.i = phi i32 [ %nthreaded_edges.0653.i.i.lcssa227, %cleanup.thread.i.i ], [ %nthreaded_edges.0653.i.i228, %thread_jump.exit.thread.i.i ], [ 0, %if.end17.i.i ], [ %nthreaded_edges.5.i.i.ph, %while.end.i.i.loopexit ]
  %threaded_edges.7.i.i = phi ptr [ %threaded_edges.1655.i.i.lcssa237, %cleanup.thread.i.i ], [ %threaded_edges.1655.i.i238, %thread_jump.exit.thread.i.i ], [ %threaded_edges.0.i.i, %if.end17.i.i ], [ %threaded_edges.7.i.i.ph, %while.end.i.i.loopexit ]
  %419 = load ptr, ptr @cfun, align 8
  %cfg182.i.i = getelementptr inbounds nuw i8, ptr %419, i64 8
  %420 = load ptr, ptr %cfg182.i.i, align 8
  %x_n_basic_blocks183.i.i = getelementptr inbounds nuw i8, ptr %420, i64 24
  %421 = load i32, ptr %x_n_basic_blocks183.i.i, align 8
  %cmp184.not.i.i = icmp slt i32 %counter.9.i.i, %421
  br i1 %cmp184.not.i.i, label %if.else191.i.i, label %if.then186.i.i

if.then186.i.i:                                   ; preds = %while.end.i.i
  %422 = load ptr, ptr @dump_file, align 8
  %tobool187.not.i.i = icmp eq ptr %422, null
  br i1 %tobool187.not.i.i, label %ei_container.exit.i499.i.i, label %if.then188.i.i

if.then188.i.i:                                   ; preds = %if.then186.i.i
  %index.i630.i = getelementptr inbounds nuw i8, ptr %target.0639.i.i, i64 80
  %423 = load i32, ptr %index.i630.i, align 8
  %call189.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %422, ptr noundef nonnull @.str.13, i32 noundef %423) #7
  br label %ei_container.exit.i499.i.i

if.else191.i.i:                                   ; preds = %while.end.i.i
  %cmp192.i.i = icmp eq ptr %target.0639.i.i, %258
  br i1 %cmp192.i.i, label %ei_container.exit.i499.i.i, label %if.else195.i.i

if.else195.i.i:                                   ; preds = %if.else191.i.i
  %count.i.i = getelementptr inbounds nuw i8, ptr %253, i64 56
  %424 = load i64, ptr %count.i.i, align 8
  %probability.i.i = getelementptr inbounds nuw i8, ptr %253, i64 52
  %425 = load i32, ptr %probability.i.i, align 4
  store i32 %goto_locus.5.i.i, ptr %goto_locus10.i.i, align 8
  %tobool198.not.i.i = icmp eq i8 %threaded.0611.i.i, 0
  br i1 %tobool198.not.i.i, label %if.else211.i.i, label %land.lhs.true199.i.i

land.lhs.true199.i.i:                             ; preds = %if.else195.i.i
  %426 = load ptr, ptr %cfg182.i.i, align 8
  %x_exit_block_ptr202.i.i = getelementptr inbounds nuw i8, ptr %426, i64 8
  %427 = load ptr, ptr %x_exit_block_ptr202.i.i, align 8
  %cmp203.not.i.i = icmp eq ptr %target.0639.i.i, %427
  br i1 %cmp203.not.i.i, label %if.else211.i.i, label %if.then205.i.i

if.then205.i.i:                                   ; preds = %land.lhs.true199.i.i
  %call206.i.i = call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %253, ptr noundef %target.0639.i.i) #7
  %tobool.not.i468.i.i = icmp eq ptr %call206.i.i, null
  br i1 %tobool.not.i468.i.i, label %notice_new_block.exit.i.i, label %if.end.i469.i.i

if.end.i469.i.i:                                  ; preds = %if.then205.i.i
  %call.i.i631.i = call zeroext i8 @forwarder_block_p(ptr noundef nonnull %call206.i.i) #7
  %tobool1.not.i470.i.i = icmp eq i8 %call.i.i631.i, 0
  br i1 %tobool1.not.i470.i.i, label %notice_new_block.exit.i.i, label %if.then2.i.i632.i

if.then2.i.i632.i:                                ; preds = %if.end.i469.i.i
  %flags.i471.i.i = getelementptr inbounds nuw i8, ptr %call206.i.i, i64 96
  %428 = load i32, ptr %flags.i471.i.i, align 8
  %or.i472.i.i = or i32 %428, 1024
  store i32 %or.i472.i.i, ptr %flags.i471.i.i, align 8
  br label %notice_new_block.exit.i.i

notice_new_block.exit.i.i:                        ; preds = %if.then2.i.i632.i, %if.end.i469.i.i, %if.then205.i.i
  %429 = load ptr, ptr @dump_file, align 8
  %tobool207.not.i.i = icmp eq ptr %429, null
  br i1 %tobool207.not.i.i, label %if.end224.i.i, label %if.then208.i.i

if.then208.i.i:                                   ; preds = %notice_new_block.exit.i.i
  %430 = call i64 @fwrite(ptr nonnull @.str.14, i64 23, i64 1, ptr nonnull %429)
  br label %if.end224.i.i

if.else211.i.i:                                   ; preds = %land.lhs.true199.i.i, %if.else195.i.i
  %call212.i.i = call ptr @redirect_edge_and_branch(ptr noundef nonnull %253, ptr noundef %target.0639.i.i) #7
  %tobool213.not.i.i = icmp eq ptr %call212.i.i, null
  br i1 %tobool213.not.i.i, label %if.then214.i.i, label %if.end224.i.i

if.then214.i.i:                                   ; preds = %if.else211.i.i
  %431 = load ptr, ptr @dump_file, align 8
  %tobool215.not.i.i = icmp eq ptr %431, null
  br i1 %tobool215.not.i.i, label %ei_container.exit.i474.i.i, label %if.then216.i.i

if.then216.i.i:                                   ; preds = %if.then214.i.i
  %432 = load i32, ptr %index217.i.i, align 8
  %433 = load ptr, ptr %dest.i625.i, align 8
  %index219.i.i = getelementptr inbounds nuw i8, ptr %433, i64 80
  %434 = load i32, ptr %index219.i.i, align 8
  %index220.i.i = getelementptr inbounds nuw i8, ptr %target.0639.i.i, i64 80
  %435 = load i32, ptr %index220.i.i, align 8
  %call221.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %431, ptr noundef nonnull @.str.15, i32 noundef %432, i32 noundef %434, i32 noundef %435) #7
  br label %ei_container.exit.i474.i.i

ei_container.exit.i474.i.i:                       ; preds = %if.then216.i.i, %if.then214.i.i
  %436 = load ptr, ptr %230, align 8
  %tobool.not.i475.i.i = icmp eq ptr %436, null
  br i1 %tobool.not.i475.i.i, label %cond.true3.i482.i.i, label %VEC_edge_base_length.exit.i480.i.i

VEC_edge_base_length.exit.i480.i.i:               ; preds = %ei_container.exit.i474.i.i
  %437 = load i32, ptr %436, align 8
  %cmp.i481.i.i = icmp ult i32 %ei.sroa.0.0.i603.i, %437
  br i1 %cmp.i481.i.i, label %ei_next.exit486.i.i, label %cond.true3.i482.i.i

cond.true3.i482.i.i:                              ; preds = %VEC_edge_base_length.exit.i480.i.i, %ei_container.exit.i474.i.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #7
  br label %ei_next.exit486.i.i

ei_next.exit486.i.i:                              ; preds = %cond.true3.i482.i.i, %VEC_edge_base_length.exit.i480.i.i
  %inc.i483.i.i = add i32 %ei.sroa.0.0.i603.i, 1
  br label %cleanup303.i.i, !llvm.loop !5

if.end224.i.i:                                    ; preds = %if.else211.i.i, %if.then208.i.i, %notice_new_block.exit.i.i
  %438 = load i32, ptr %frequency.i.i, align 8
  %mul225.i.i = mul nsw i32 %438, %425
  %add.i.i = add nsw i32 %mul225.i.i, 5000
  %div.i.i = sdiv i32 %add.i.i, 10000
  %439 = load i32, ptr %flags226.i.i, align 8
  %and227.i.i = and i32 %439, 1024
  %tobool228.not.i.i = icmp eq i32 %and227.i.i, 0
  br i1 %tobool228.not.i.i, label %land.lhs.true229.i.i, label %if.end236.i.i

land.lhs.true229.i.i:                             ; preds = %if.end224.i.i
  %call230.i.i = call zeroext i8 @forwarder_block_p(ptr noundef nonnull %b.1798.i) #7
  %tobool232.not.i.i = icmp eq i8 %call230.i.i, 0
  br i1 %tobool232.not.i.i, label %if.end236.i.i, label %if.then233.i.i

if.then233.i.i:                                   ; preds = %land.lhs.true229.i.i
  %440 = load i32, ptr %flags226.i.i, align 8
  %or235.i.i = or i32 %440, 1024
  store i32 %or235.i.i, ptr %flags226.i.i, align 8
  br label %if.end236.i.i

if.end236.i.i:                                    ; preds = %if.then233.i.i, %land.lhs.true229.i.i, %if.end224.i.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end285.i.i, %if.end236.i.i
  %first.0.i.i = phi ptr [ %258, %if.end236.i.i ], [ %453, %if.end285.i.i ]
  %n.0.i.i = phi i32 [ 0, %if.end236.i.i ], [ %n.2.i.i, %if.end285.i.i ]
  %441 = getelementptr i8, ptr %first.0.i.i, i64 8
  %first.0.val.i.i = load ptr, ptr %441, align 8
  %tobool.not.i487.i.i = icmp eq ptr %first.0.val.i.i, null
  br i1 %tobool.not.i487.i.i, label %if.then240.i.i, label %single_succ_p.exit.i633.i

single_succ_p.exit.i633.i:                        ; preds = %do.body.i.i
  %442 = load i32, ptr %first.0.val.i.i, align 8
  %.not.i634.i = icmp eq i32 %442, 1
  br i1 %.not.i634.i, label %if.else256.i.i, label %if.then240.i.i

if.then240.i.i:                                   ; preds = %single_succ_p.exit.i633.i, %do.body.i.i
  %cmp241.i.i = icmp slt i32 %n.0.i.i, %nthreaded_edges.5.i.i
  br i1 %cmp241.i.i, label %cond.end245.i.i, label %cond.true243.i.i

cond.true243.i.i:                                 ; preds = %if.then240.i.i
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 600, ptr noundef nonnull @.str.1) #7
  br label %cond.end245.i.i

cond.end245.i.i:                                  ; preds = %cond.true243.i.i, %if.then240.i.i
  %inc247.i.i = add nsw i32 %n.0.i.i, 1
  %idxprom248.i.i = sext i32 %n.0.i.i to i64
  %arrayidx249.i.i = getelementptr inbounds ptr, ptr %threaded_edges.7.i.i, i64 %idxprom248.i.i
  %443 = load ptr, ptr %arrayidx249.i.i, align 8
  %444 = load ptr, ptr %443, align 8
  %cmp250.i.i = icmp eq ptr %444, %first.0.i.i
  br i1 %cmp250.i.i, label %cond.end254.i.i, label %cond.true252.i.i

cond.true252.i.i:                                 ; preds = %cond.end245.i.i
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 602, ptr noundef nonnull @.str.1) #7
  br label %cond.end254.i.i

cond.end254.i.i:                                  ; preds = %cond.true252.i.i, %cond.end245.i.i
  call void @update_bb_profile_for_threading(ptr noundef nonnull %first.0.i.i, i32 noundef %div.i.i, i64 noundef %424, ptr noundef nonnull %443) #7
  call void @update_br_prob_note(ptr noundef nonnull %first.0.i.i) #7
  br label %if.end285.i.i

if.else256.i.i:                                   ; preds = %single_succ_p.exit.i633.i
  %count257.i.i = getelementptr inbounds nuw i8, ptr %first.0.i.i, i64 72
  %445 = load i64, ptr %count257.i.i, align 8
  %sub258.i.i = sub nsw i64 %445, %424
  %spec.select439.i.i = call i64 @llvm.smax.i64(i64 %sub258.i.i, i64 0)
  store i64 %spec.select439.i.i, ptr %count257.i.i, align 8
  %frequency265.i.i = getelementptr inbounds nuw i8, ptr %first.0.i.i, i64 88
  %446 = load i32, ptr %frequency265.i.i, align 8
  %sub266.i.i = sub nsw i32 %446, %div.i.i
  %storemerge436.i.i = call i32 @llvm.smax.i32(i32 %sub266.i.i, i32 0)
  store i32 %storemerge436.i.i, ptr %frequency265.i.i, align 8
  %cmp273.i.i = icmp slt i32 %n.0.i.i, %nthreaded_edges.5.i.i
  br i1 %cmp273.i.i, label %land.lhs.true275.i.i, label %single_succ_p.exit.i492.i.i

land.lhs.true275.i.i:                             ; preds = %if.else256.i.i
  %idxprom276.i.i = sext i32 %n.0.i.i to i64
  %arrayidx277.i.i = getelementptr inbounds ptr, ptr %threaded_edges.7.i.i, i64 %idxprom276.i.i
  %447 = load ptr, ptr %arrayidx277.i.i, align 8
  %448 = load ptr, ptr %447, align 8
  %cmp279.i.i = icmp eq ptr %first.0.i.i, %448
  %inc282.i.i = zext i1 %cmp279.i.i to i32
  %spec.select440.i.i = add nsw i32 %n.0.i.i, %inc282.i.i
  br label %single_succ_p.exit.i492.i.i

single_succ_p.exit.i492.i.i:                      ; preds = %land.lhs.true275.i.i, %if.else256.i.i
  %n.1.i.i = phi i32 [ %n.0.i.i, %if.else256.i.i ], [ %spec.select440.i.i, %land.lhs.true275.i.i ]
  %449 = load i32, ptr %first.0.val.i.i, align 8
  %.not.i493.i.i = icmp eq i32 %449, 1
  br i1 %.not.i493.i.i, label %single_succ_edge.exit497.i.i, label %cond.true.i494.i.i

cond.true.i494.i.i:                               ; preds = %single_succ_p.exit.i492.i.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #7
  br label %single_succ_edge.exit497.i.i

single_succ_edge.exit497.i.i:                     ; preds = %cond.true.i494.i.i, %single_succ_p.exit.i492.i.i
  %450 = load ptr, ptr %441, align 8
  %vec.i.i496.i.i = getelementptr inbounds nuw i8, ptr %450, i64 8
  %451 = load ptr, ptr %vec.i.i496.i.i, align 8
  br label %if.end285.i.i

if.end285.i.i:                                    ; preds = %single_succ_edge.exit497.i.i, %cond.end254.i.i
  %n.2.i.i = phi i32 [ %n.1.i.i, %single_succ_edge.exit497.i.i ], [ %inc247.i.i, %cond.end254.i.i ]
  %t237.0.i.i = phi ptr [ %451, %single_succ_edge.exit497.i.i ], [ %443, %cond.end254.i.i ]
  %count286.i.i = getelementptr inbounds nuw i8, ptr %t237.0.i.i, i64 56
  %452 = load i64, ptr %count286.i.i, align 8
  %sub287.i.i = sub nsw i64 %452, %424
  %spec.select441.i.i = call i64 @llvm.smax.i64(i64 %sub287.i.i, i64 0)
  store i64 %spec.select441.i.i, ptr %count286.i.i, align 8
  %dest294.i.i = getelementptr inbounds nuw i8, ptr %t237.0.i.i, i64 8
  %453 = load ptr, ptr %dest294.i.i, align 8
  %cmp295.not.i.i = icmp eq ptr %453, %target.0639.i.i
  br i1 %cmp295.not.i.i, label %do.end.i.i, label %do.body.i.i, !llvm.loop !15

do.end.i.i:                                       ; preds = %if.end285.i.i
  br label %cleanup303.i.i, !llvm.loop !5

ei_container.exit.i499.i.i:                       ; preds = %if.else191.i.i, %if.then188.i.i, %if.then186.i.i
  %454 = load ptr, ptr %230, align 8
  %tobool.not.i500.i.i = icmp eq ptr %454, null
  br i1 %tobool.not.i500.i.i, label %cond.true3.i507.i.i, label %VEC_edge_base_length.exit.i505.i.i

VEC_edge_base_length.exit.i505.i.i:               ; preds = %ei_container.exit.i499.i.i
  %455 = load i32, ptr %454, align 8
  %cmp.i506.i.i = icmp ult i32 %ei.sroa.0.0.i603.i, %455
  br i1 %cmp.i506.i.i, label %ei_next.exit511.i.i, label %cond.true3.i507.i.i

cond.true3.i507.i.i:                              ; preds = %VEC_edge_base_length.exit.i505.i.i, %ei_container.exit.i499.i.i
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #7
  br label %ei_next.exit511.i.i

ei_next.exit511.i.i:                              ; preds = %cond.true3.i507.i.i, %VEC_edge_base_length.exit.i505.i.i
  %inc.i508.i.i = add i32 %ei.sroa.0.0.i603.i, 1
  br label %cleanup303.i.i

cleanup303.i.i:                                   ; preds = %ei_next.exit511.i.i, %do.end.i.i, %ei_next.exit486.i.i, %ei_next.exit.i621.i
  %ei.sroa.0.1.i623.i = phi i32 [ %inc.i508.i.i, %ei_next.exit511.i.i ], [ %inc.i483.i.i, %ei_next.exit486.i.i ], [ %ei.sroa.0.0.i603.i, %do.end.i.i ], [ %inc.i.i622.i, %ei_next.exit.i621.i ]
  %threaded_edges.8.i.i = phi ptr [ %threaded_edges.7.i.i, %ei_next.exit511.i.i ], [ %threaded_edges.7.i.i, %ei_next.exit486.i.i ], [ %threaded_edges.7.i.i, %do.end.i.i ], [ %threaded_edges.0.i.i, %ei_next.exit.i621.i ]
  %changed.2.i.i = phi i8 [ %changed.0.i.i, %ei_next.exit511.i.i ], [ %changed.0.i.i, %ei_next.exit486.i.i ], [ 1, %do.end.i.i ], [ %changed.0.i.i, %ei_next.exit.i621.i ]
  br label %ei_container.exit.i.i.i602.i

for.end312.i.i:                                   ; preds = %ei_safe_edge.exit.i.i, %ei_end_p.exit.i.i606.i
  %threaded_edges.0.i.i.lcssa = phi ptr [ %threaded_edges.0.i.i, %ei_safe_edge.exit.i.i ], [ %threaded_edges.0.i.i, %ei_end_p.exit.i.i606.i ]
  %changed.0.i.i.lcssa = phi i8 [ %changed.0.i.i, %ei_safe_edge.exit.i.i ], [ %changed.0.i.i, %ei_end_p.exit.i.i606.i ]
  %tobool313.not.i.i = icmp eq ptr %threaded_edges.0.i.i.lcssa, null
  br i1 %tobool313.not.i.i, label %try_forward_edges.exit.i, label %if.then314.i.i

if.then314.i.i:                                   ; preds = %for.end312.i.i
  call void @free(ptr noundef nonnull %threaded_edges.0.i.i.lcssa)
  br label %try_forward_edges.exit.i

try_forward_edges.exit.i:                         ; preds = %if.then314.i.i, %for.end312.i.i
  %tobool285.not.i = icmp eq i8 %changed.0.i.i.lcssa, 0
  br i1 %tobool285.not.i, label %.loopexit.i, label %.thread.i

.loopexit.i.loopexit:                             ; preds = %land.lhs.true.i.i
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %try_forward_edges.exit.i, %if.end283.i
  %456 = icmp eq i8 %changed_here.2.i, 0
  br i1 %tobool289.not.i, label %if.end295.i, label %land.lhs.true290.i

.thread.i:                                        ; preds = %try_forward_edges.exit.i
  br i1 %tobool289.not.i, label %cleanup.i, label %land.lhs.true290.thread.i

land.lhs.true290.thread.i:                        ; preds = %.thread.i
  %call2911150.i = call fastcc zeroext i8 @try_crossjump_bb(i32 noundef %spec.select, ptr noundef nonnull %b.1798.i)
  br label %cleanup.i

land.lhs.true290.i:                               ; preds = %.loopexit.i
  %call291.i = call fastcc zeroext i8 @try_crossjump_bb(i32 noundef %spec.select, ptr noundef nonnull %b.1798.i)
  %tobool293.not.i = icmp eq i8 %call291.i, 0
  %or.cond811.i = select i1 %tobool293.not.i, i1 %456, i1 false
  br i1 %or.cond811.i, label %if.then297.i, label %cleanup.i

if.end295.i:                                      ; preds = %.loopexit.i
  br i1 %456, label %if.then297.i, label %cleanup.i

if.then297.i:                                     ; preds = %if.end295.i, %land.lhs.true290.i
  %next_bb298.i = getelementptr inbounds nuw i8, ptr %b.1798.i, i64 56
  %457 = load ptr, ptr %next_bb298.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then297.i, %if.end295.i, %land.lhs.true290.i, %land.lhs.true290.thread.i, %.thread.i, %single_succ.exit.i, %cond.true52.i, %if.then42.i
  %b.3.i = phi ptr [ %cond172.i, %single_succ.exit.i ], [ %35, %cond.true52.i ], [ %31, %if.then42.i ], [ %457, %if.then297.i ], [ %b.1798.i, %if.end295.i ], [ %b.1798.i, %land.lhs.true290.i ], [ %b.1798.i, %.thread.i ], [ %b.1798.i, %land.lhs.true290.thread.i ]
  %changed.3.i = phi i8 [ 1, %single_succ.exit.i ], [ %spec.select440.i, %cond.true52.i ], [ %spec.select440.i, %if.then42.i ], [ %changed.0937.i, %if.then297.i ], [ 1, %if.end295.i ], [ 1, %land.lhs.true290.i ], [ 1, %.thread.i ], [ 1, %land.lhs.true290.thread.i ]
  %458 = load ptr, ptr @cfun, align 8
  %cfg16.i = getelementptr inbounds nuw i8, ptr %458, i64 8
  %459 = load ptr, ptr %cfg16.i, align 8
  %x_exit_block_ptr17.i = getelementptr inbounds nuw i8, ptr %459, i64 8
  %460 = load ptr, ptr %x_exit_block_ptr17.i, align 8
  %cmp18.not.i = icmp eq ptr %b.3.i, %460
  br i1 %cmp18.not.i, label %for.end303.i.loopexit, label %for.body19.i

for.end303.i.loopexit:                            ; preds = %cleanup.i
  %changed.3.i.lcssa = phi i8 [ %changed.3.i, %cleanup.i ]
  %.lcssa = phi ptr [ %460, %cleanup.i ]
  br label %for.end303.i

for.end303.i:                                     ; preds = %for.end303.i.loopexit, %if.end9.i
  %changed.0.lcssa.i = phi i8 [ 0, %if.end9.i ], [ %changed.3.i.lcssa, %for.end303.i.loopexit ]
  %.lcssa923.i = phi ptr [ %16, %if.end9.i ], [ %.lcssa, %for.end303.i.loopexit ]
  br i1 %tobool289.not.i, label %if.end314.i, label %land.lhs.true306.i

land.lhs.true306.i:                               ; preds = %for.end303.i
  %call310.i = call fastcc zeroext i8 @try_crossjump_bb(i32 noundef %spec.select, ptr noundef %.lcssa923.i)
  %tobool312.not.i = icmp eq i8 %call310.i, 0
  %spec.select73 = select i1 %tobool312.not.i, i8 %changed.0.lcssa.i, i8 1
  br label %if.end314.i

if.end314.i:                                      ; preds = %land.lhs.true306.i, %for.end303.i
  %changed.4.i = phi i8 [ %changed.0.lcssa.i, %for.end303.i ], [ %spec.select73, %land.lhs.true306.i ]
  %or.i = or i8 %changed.4.i, %changed_overall.0.i
  store i1 false, ptr @first_pass, align 1
  %tobool318.not.i = icmp eq i8 %changed.4.i, 0
  br i1 %tobool318.not.i, label %if.end319.i.loopexit, label %do.body.i, !llvm.loop !16

if.end319.i.loopexit:                             ; preds = %if.end314.i
  %or.i.lcssa = phi i8 [ %or.i, %if.end314.i ]
  br label %if.end319.i

if.end319.i:                                      ; preds = %if.end319.i.loopexit, %for.end.i
  %changed_overall.1.i = phi i8 [ 0, %for.end.i ], [ %or.i.lcssa, %if.end319.i.loopexit ]
  %461 = load ptr, ptr @cfun, align 8
  %cfg321.i = getelementptr inbounds nuw i8, ptr %461, i64 8
  %462 = load ptr, ptr %cfg321.i, align 8
  %b.4939.i = load ptr, ptr %462, align 8
  %tobool324.not940.i = icmp eq ptr %b.4939.i, null
  br i1 %tobool324.not940.i, label %try_optimize_cfg.exit, label %for.body325.i.preheader

for.body325.i.preheader:                          ; preds = %if.end319.i
  br label %for.body325.i

for.body325.i:                                    ; preds = %for.body325.i, %for.body325.i.preheader
  %b.4941.i = phi ptr [ %b.4.i, %for.body325.i ], [ %b.4939.i, %for.body325.i.preheader ]
  %flags326.i = getelementptr inbounds nuw i8, ptr %b.4941.i, i64 96
  %463 = load i32, ptr %flags326.i, align 8
  %and327.i = and i32 %463, -3073
  store i32 %and327.i, ptr %flags326.i, align 8
  %next_bb329.i = getelementptr inbounds nuw i8, ptr %b.4941.i, i64 56
  %b.4.i = load ptr, ptr %next_bb329.i, align 8
  %tobool324.not.i = icmp eq ptr %b.4.i, null
  br i1 %tobool324.not.i, label %try_optimize_cfg.exit.loopexit, label %for.body325.i, !llvm.loop !17

try_optimize_cfg.exit.loopexit:                   ; preds = %for.body325.i
  br label %try_optimize_cfg.exit

try_optimize_cfg.exit:                            ; preds = %try_optimize_cfg.exit.loopexit, %if.end319.i
  %tobool23.not = icmp eq i8 %changed_overall.1.i, 0
  br i1 %tobool23.not, label %while.end, label %while.body

while.body:                                       ; preds = %try_optimize_cfg.exit
  %call24 = call zeroext i8 @delete_unreachable_blocks()
  br i1 %tobool26.not, label %if.then27, label %while.end

if.then27:                                        ; preds = %while.body
  %464 = load i32, ptr @reload_completed, align 4
  %tobool31 = icmp ne i32 %464, 0
  %or.cond61 = select i1 %tobool29, i1 true, i1 %tobool31
  br i1 %or.cond61, label %if.else, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.then27
  %call33 = call ptr @get_insns() #7
  %call34 = call i32 @max_reg_num() #7
  %call35 = call i32 @delete_trivially_dead_insns(ptr noundef %call33, i32 noundef %call34) #7
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %while.end, label %if.else

if.else:                                          ; preds = %land.lhs.true32, %if.then27
  %.b = load i1, ptr @crossjumps_occured, align 1
  %or.cond62 = select i1 %tobool15, i1 %.b, i1 false
  br i1 %or.cond62, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.else
  call void @run_fast_dce() #7
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.else
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %land.lhs.true32, %while.body, %try_optimize_cfg.exit
  %changed.2 = phi i8 [ 1, %while.body ], [ 1, %land.lhs.true32 ], [ %changed.1, %try_optimize_cfg.exit ]
  br i1 %tobool15, label %if.then49, label %if.end50

if.then49:                                        ; preds = %while.end
  call void @remove_fake_exit_edges() #7
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %while.end
  %and51 = and i32 %spec.select, 32
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.then53, label %do.body55

if.then53:                                        ; preds = %if.end50
  call void @delete_dead_jumptables()
  br label %do.body55

do.body55:                                        ; preds = %if.then53, %if.end50
  %465 = load i8, ptr @timevar_enable, align 1
  %tobool56.not = icmp eq i8 %465, 0
  br i1 %tobool56.not, label %cleanup, label %if.then57

if.then57:                                        ; preds = %do.body55
  call void @timevar_pop_1(i32 noundef 23) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %do.body55, %if.end17
  %retval.0 = phi i8 [ %changed.0, %if.end17 ], [ %changed.2, %if.then57 ], [ %changed.2, %do.body55 ]
  ret i8 %retval.0
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

declare i32 @delete_trivially_dead_insns(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @get_insns() local_unnamed_addr #2

declare i32 @max_reg_num() local_unnamed_addr #2

declare void @compact_blocks() local_unnamed_addr #2

declare void @add_noreturn_fake_exit_edges() local_unnamed_addr #2

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #2

declare void @run_fast_dce() local_unnamed_addr #2

declare void @remove_fake_exit_edges() local_unnamed_addr #2

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @clear_bb_flags() local_unnamed_addr #2

declare zeroext i8 @label_is_jump_target_p(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @delete_insn_chain(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @reorder_insns_nobb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @can_merge_blocks_p(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @merge_blocks(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #2

declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @try_redirect_by_replacing_jump(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc zeroext range(i8 0, 2) i8 @try_crossjump_bb(i32 noundef, ptr noundef) unnamed_addr #0

declare zeroext i8 @forwarder_block_p(ptr noundef) local_unnamed_addr #2

declare ptr @force_nonfallthru(ptr noundef) local_unnamed_addr #2

declare ptr @prev_active_insn(ptr noundef) local_unnamed_addr #2

declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #2

declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #2

declare void @unlink_block(ptr noundef) local_unnamed_addr #2

declare void @link_block(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @can_fallthru(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @invert_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @block_label(ptr noundef) local_unnamed_addr #2

declare void @update_br_prob_note(ptr noundef) local_unnamed_addr #2

declare void @tidy_fallthru_edge(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @df_get_bb_dirty(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @locator_eq(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @update_bb_profile_for_threading(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @pc_set(ptr noundef) local_unnamed_addr #2

declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @comparison_dominates_p(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #2

declare void @cselib_init(i32 noundef) local_unnamed_addr #2

declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #2

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden range(i32 0, 2) i32 @mentions_nonequal_regs(ptr noundef readonly captures(none), ptr noundef) #0

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

declare void @cselib_finish() local_unnamed_addr #2

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @rtx_equal_for_cselib_p(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
!12 = distinct !{!12, !1, !13}
!13 = !{!"llvm.loop.peeled.count", i32 1}
!14 = distinct !{!14, !1}
!15 = distinct !{!15, !1}
!16 = distinct !{!16, !1}
!17 = distinct !{!17, !1}
!18 = distinct !{!18, !1}
