; ModuleID = '/tmp/tmp.BruLYS73Qh/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/reload.c"
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
%struct.insn_data = type { ptr, %union.anon, ptr, ptr, i8, i8, i8, i8 }
%union.anon = type { ptr }
%struct.reload = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8 }
%struct.replacement = type { ptr, ptr, i32, i32 }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.decomposition = type { i32, i32, ptr, i64, i64 }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }

@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@.str = external hidden unnamed_addr constant [114 x i8], align 1
@.str.1 = external hidden unnamed_addr constant [2 x i8], align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@secondary_memlocs_elim = external hidden unnamed_addr global [87 x [30 x ptr]], align 16
@secondary_memlocs_elim_used = external hidden unnamed_addr global i32, align 4
@reg_renumber = external local_unnamed_addr global ptr, align 8
@reg_equiv_constant = external local_unnamed_addr global ptr, align 8
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@this_insn_is_asm = external hidden unnamed_addr global i32, align 4
@this_insn = external hidden unnamed_addr global ptr, align 8
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@n_reloads = external dso_local local_unnamed_addr global i32, align 4
@rld = external dso_local local_unnamed_addr global [180 x %struct.reload], align 16
@replace_reloads = external hidden unnamed_addr global i32, align 4
@replacements = external hidden global [150 x %struct.replacement], align 16
@n_replacements = external hidden unnamed_addr global i32, align 4
@static_reload_reg_p = external hidden unnamed_addr global ptr, align 8
@hard_regs_live_known = external hidden unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@output_reloadnum = external hidden unnamed_addr global i32, align 4
@n_earlyclobbers = external dso_local local_unnamed_addr global i32, align 4
@reload_earlyclobbers = external dso_local local_unnamed_addr global [30 x ptr], align 16
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@reload_n_operands = external dso_local local_unnamed_addr global i32, align 4
@reg_equiv_memory_loc = external local_unnamed_addr global ptr, align 8
@reg_equiv_address = external local_unnamed_addr global ptr, align 8
@num_not_at_initial_offset = external local_unnamed_addr global i32, align 4
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@reg_equiv_mem = external local_unnamed_addr global ptr, align 8
@flag_pic = external local_unnamed_addr global i32, align 4
@reg_class_size = external local_unnamed_addr global [27 x i32], align 16
@.str.4 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.5 = external hidden unnamed_addr constant [32 x i8], align 1
@.str.6 = external hidden unnamed_addr constant [47 x i8], align 1
@optimize = external local_unnamed_addr global i32, align 4
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@df = external local_unnamed_addr global ptr, align 8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #1

declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden fastcc i32 @find_reloads_address(i32 noundef, ptr noundef captures(address_is_null), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
declare dso_local i32 @push_reload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden fastcc range(i32 0, 2) i32 @reload_inner_reg_of_subreg(ptr noundef, i32 noundef, i32 noundef range(i32 0, 2)) unnamed_addr #2

declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @reg_overlap_mentioned_for_reload_p(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ix86_preferred_reload_class(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ix86_preferred_output_reload_class(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @error_for_asm(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @reg_class_subset_p(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden fastcc ptr @find_dummy_reload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef range(i32 -128, 128)) unnamed_addr #2

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden fastcc range(i32 0, 2) i32 @refers_to_regno_for_reload_p(i32 noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
declare dso_local range(i32 0, 3) i32 @operands_match_p(ptr noundef readonly captures(address), ptr noundef readonly captures(address)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc void @decompose(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @find_reloads(ptr noundef %insn, i32 noundef %replace, i32 noundef %ind_levels, i32 noundef %live_known, ptr noundef %reload_reg_p) local_unnamed_addr #2 {
entry:
  %tmp.i = alloca %struct.decomposition, align 8
  %constraints = alloca [30 x ptr], align 16
  %preferred_class = alloca [30 x i32], align 16
  %pref_or_nothing = alloca [30 x i8], align 16
  %address_reloaded = alloca [30 x i32], align 16
  %address_operand_reloaded = alloca [30 x i32], align 16
  %operand_type = alloca [30 x i32], align 16
  %address_type = alloca [30 x i32], align 16
  %modified = alloca [30 x i32], align 16
  %this_alternative = alloca [30 x i32], align 16
  %this_alternative_match_win = alloca [30 x i8], align 16
  %this_alternative_win = alloca [30 x i8], align 16
  %this_alternative_offmemok = alloca [30 x i8], align 16
  %this_alternative_earlyclobber = alloca [30 x i8], align 16
  %this_alternative_matches = alloca [30 x i32], align 16
  %goal_alternative = alloca [30 x i32], align 16
  %operand_reloadnum = alloca [30 x i32], align 16
  %goal_alternative_matches = alloca [30 x i32], align 16
  %goal_alternative_matched = alloca [30 x i32], align 16
  %goal_alternative_match_win = alloca [30 x i8], align 16
  %goal_alternative_win = alloca [30 x i8], align 16
  %goal_alternative_offmemok = alloca [30 x i8], align 16
  %goal_alternative_earlyclobber = alloca [30 x i8], align 16
  %operands_match = alloca [30 x [30 x i8]], align 16
  %substed_operand = alloca [30 x ptr], align 16
  %operand_mode = alloca [30 x i32], align 16
  %end = alloca ptr, align 8
  %end625 = alloca ptr, align 8
  %tmp = alloca %struct.decomposition, align 8
  %this_address_reloaded = alloca i32, align 4
  %first_inpaddr_num = alloca [30 x i32], align 16
  %first_outpaddr_num = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %constraints) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %preferred_class) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %pref_or_nothing) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %address_reloaded) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %address_operand_reloaded) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %operand_type) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %address_type) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %modified) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %this_alternative) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %this_alternative_match_win) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %this_alternative_win) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %this_alternative_offmemok) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %this_alternative_earlyclobber) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %this_alternative_matches) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %goal_alternative) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %operand_reloadnum) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %goal_alternative_matches) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %goal_alternative_matched) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %goal_alternative_match_win) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %goal_alternative_win) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %goal_alternative_offmemok) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %goal_alternative_earlyclobber) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %operands_match) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %substed_operand) #7
  %arrayidx = getelementptr inbounds nuw i8, ptr %insn, i64 48
  %0 = load ptr, ptr %arrayidx, align 8
  %bf.load = load i32, ptr %insn, align 8
  %bf.clear = and i32 %bf.load, 65535
  %bf.clear.off = add nsw i32 %bf.clear, -7
  %switch = icmp ult i32 %bf.clear.off, 4
  br i1 %switch, label %cond.true, label %cond.end23

cond.true:                                        ; preds = %entry
  %bf.load14 = load i32, ptr %0, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 23
  br i1 %cmp16, label %cond.end23, label %cond.false

cond.false:                                       ; preds = %cond.true
  %call = tail call ptr @single_set_2(ptr noundef nonnull %insn, ptr noundef nonnull %0) #7
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false, %cond.true, %entry
  %cond24 = phi ptr [ %call, %cond.false ], [ null, %entry ], [ %0, %cond.true ]
  call void @llvm.lifetime.start.p0(ptr nonnull %operand_mode) #7
  store ptr %insn, ptr @this_insn, align 8
  store i32 0, ptr @n_reloads, align 4
  store i32 0, ptr @n_replacements, align 4
  store i32 0, ptr @n_earlyclobbers, align 4
  store i32 %replace, ptr @replace_reloads, align 4
  store i32 %live_known, ptr @hard_regs_live_known, align 4
  store ptr %reload_reg_p, ptr @static_reload_reg_p, align 8
  %bf.load26 = load i32, ptr %insn, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %bf.clear27.off = add nsw i32 %bf.clear27, -9
  %switch5344 = icmp ult i32 %bf.clear27.off, 2
  %not.switch5344 = xor i1 %switch5344, true
  %1 = load i32, ptr @secondary_memlocs_elim_used, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %cond.end23
  %conv = zext nneg i32 %1 to i64
  %mul = mul nuw nsw i64 %conv, 240
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @secondary_memlocs_elim, i8 0, i64 %mul, i1 false)
  store i32 0, ptr @secondary_memlocs_elim_used, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %cond.end23
  %bf.load35 = load i32, ptr %0, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 23
  br i1 %cmp37, label %land.lhs.true, label %if.end82

land.lhs.true:                                    ; preds = %if.end34
  %u39 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = load ptr, ptr %u39, align 8
  %bf.load41 = load i32, ptr %2, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 37
  br i1 %cmp43, label %land.lhs.true45, label %if.end82

land.lhs.true45:                                  ; preds = %land.lhs.true
  %3 = getelementptr i8, ptr %2, i64 8
  %.val5389 = load i32, ptr %3, align 8
  %cmp49 = icmp ult i32 %.val5389, 53
  br i1 %cmp49, label %land.lhs.true51, label %if.end82

land.lhs.true51:                                  ; preds = %land.lhs.true45
  %arrayidx53 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %arrayidx53, align 8
  %bf.load54 = load i32, ptr %4, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp eq i32 %bf.clear55, 37
  br i1 %cmp56, label %land.lhs.true58, label %if.end82

land.lhs.true58:                                  ; preds = %land.lhs.true51
  %5 = getelementptr i8, ptr %4, i64 8
  %.val5388 = load i32, ptr %5, align 8
  %cmp62 = icmp ult i32 %.val5388, 53
  br i1 %cmp62, label %land.lhs.true64, label %if.end82

land.lhs.true64:                                  ; preds = %land.lhs.true58
  %bf.lshr = lshr i32 %bf.load54, 16
  %bf.clear68 = and i32 %bf.lshr, 255
  %idxprom = zext nneg i32 %.val5388 to i64
  %arrayidx72 = getelementptr inbounds nuw i32, ptr @regclass_map, i64 %idxprom
  %6 = load i32, ptr %arrayidx72, align 4
  %idxprom76 = zext nneg i32 %.val5389 to i64
  %arrayidx77 = getelementptr inbounds nuw i32, ptr @regclass_map, i64 %idxprom76
  %7 = load i32, ptr %arrayidx77, align 4
  %call78 = tail call i32 @ix86_register_move_cost(i32 noundef %bf.clear68, i32 noundef %6, i32 noundef %7) #7
  %cmp79 = icmp eq i32 %call78, 2
  br i1 %cmp79, label %cleanup4125, label %if.end82

if.end82:                                         ; preds = %land.lhs.true64, %land.lhs.true58, %land.lhs.true51, %land.lhs.true45, %land.lhs.true, %if.end34
  tail call void @extract_insn(ptr noundef nonnull %insn) #7
  %8 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1086), align 2
  %conv83 = sext i8 %8 to i32
  store i32 %conv83, ptr @reload_n_operands, align 4
  %9 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1088), align 8
  %conv84 = sext i8 %9 to i32
  %cmp85 = icmp eq i8 %8, 0
  %cmp88 = icmp eq i8 %9, 0
  %or.cond = select i1 %cmp85, i1 true, i1 %cmp88
  br i1 %or.cond, label %cleanup4125, label %if.end91

if.end91:                                         ; preds = %if.end82
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %insn, i64 56
  %10 = load i32, ptr %arrayidx93, align 8
  %cmp94 = icmp slt i32 %10, 0
  %.lobit = lshr i32 %10, 31
  store i32 %.lobit, ptr @this_insn_is_asm, align 4
  %conv96 = sext i8 %8 to i64
  %mul97 = shl nsw i64 %conv96, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %operand_mode, ptr nonnull align 8 getelementptr inbounds nuw (i8, ptr @recog_data, i64 720), i64 %mul97, i1 false)
  %mul100 = shl nsw i64 %conv96, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %constraints, ptr nonnull align 8 getelementptr inbounds nuw (i8, ptr @recog_data, i64 480), i64 %mul100, i1 false)
  %cmp1015771 = icmp sgt i8 %8, 0
  br i1 %cmp1015771, label %for.body.lr.ph, label %for.cond204.preheader

for.body.lr.ph:                                   ; preds = %if.end91
  %sub = add nsw i32 %conv83, -1
  %11 = zext i32 %sub to i64
  %wide.trip.count = zext i32 %conv83 to i64
  br label %for.body

for.cond204.preheader.loopexit:                   ; preds = %while.end
  %commutative.1.lcssa.lcssa = phi i32 [ %commutative.1.lcssa, %while.end ]
  br label %for.cond204.preheader

for.cond204.preheader:                            ; preds = %for.cond204.preheader.loopexit, %if.end91
  %commutative.0.lcssa = phi i32 [ -1, %if.end91 ], [ %commutative.1.lcssa.lcssa, %for.cond204.preheader.loopexit ]
  %cmp2055775 = icmp sgt i8 %8, 0
  br i1 %cmp2055775, label %for.body207.lr.ph, label %for.end557

for.body207.lr.ph:                                ; preds = %for.cond204.preheader
  %cmp364.not = icmp eq ptr %cond24, null
  %u366 = getelementptr inbounds nuw i8, ptr %cond24, i64 8
  %tobool375.not = icmp eq i32 %replace, 0
  %cmp453 = icmp eq ptr %cond24, null
  %u456 = getelementptr inbounds nuw i8, ptr %cond24, i64 8
  %wide.trip.count6011 = zext i32 %conv83 to i64
  br label %for.body207

for.body:                                         ; preds = %while.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %while.end ]
  %commutative.05772 = phi i32 [ -1, %for.body.lr.ph ], [ %commutative.1.lcssa, %while.end ]
  call void @llvm.lifetime.start.p0(ptr nonnull %end) #7
  %arrayidx104 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv
  %12 = load ptr, ptr %arrayidx104, align 8
  %arrayidx106 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %indvars.iv
  store ptr %12, ptr %arrayidx106, align 8
  %arrayidx108 = getelementptr inbounds nuw ptr, ptr %constraints, i64 %indvars.iv
  %13 = load ptr, ptr %arrayidx108, align 8
  %arrayidx110 = getelementptr inbounds nuw i32, ptr %modified, i64 %indvars.iv
  store i32 0, ptr %arrayidx110, align 4
  %invariant.gep = getelementptr i8, ptr %operands_match, i64 %indvars.iv
  %14 = load i8, ptr %13, align 1
  %tobool112.not5768 = icmp eq i8 %14, 0
  br i1 %tobool112.not5768, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %for.body
  %cmp121.not = icmp eq i64 %indvars.iv, %11
  %15 = trunc nuw nsw i64 %indvars.iv to i32
  br label %while.body

while.body:                                       ; preds = %sw.epilog, %while.body.lr.ph
  %16 = phi i8 [ %14, %while.body.lr.ph ], [ %29, %sw.epilog ]
  %commutative.15770 = phi i32 [ %commutative.05772, %while.body.lr.ph ], [ %commutative.2, %sw.epilog ]
  %p.05769 = phi ptr [ %13, %while.body.lr.ph ], [ %p.1, %sw.epilog ]
  %cond.i = icmp eq i8 %16, 89
  %..i = select i1 %cond.i, i64 2, i64 1
  %add.ptr = getelementptr inbounds nuw i8, ptr %p.05769, i64 %..i
  switch i8 %16, label %sw.epilog [
    i8 61, label %sw.bb
    i8 43, label %sw.bb117
    i8 37, label %sw.bb120
    i8 48, label %sw.bb136
    i8 49, label %sw.bb136
    i8 50, label %sw.bb136
    i8 51, label %sw.bb136
    i8 52, label %sw.bb136
    i8 53, label %sw.bb136
    i8 54, label %sw.bb136
    i8 55, label %sw.bb136
    i8 56, label %sw.bb136
    i8 57, label %sw.bb136
  ]

sw.bb:                                            ; preds = %while.body
  store i32 2, ptr %arrayidx110, align 4
  br label %sw.epilog

sw.bb117:                                         ; preds = %while.body
  store i32 1, ptr %arrayidx110, align 4
  br label %sw.epilog

sw.bb120:                                         ; preds = %while.body
  br i1 %cmp121.not, label %cond.true123, label %cond.end125

cond.true123:                                     ; preds = %sw.bb120
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2709, ptr noundef nonnull @.str.1) #7
  br label %cond.end125

cond.end125:                                      ; preds = %cond.true123, %sw.bb120
  %cmp127 = icmp slt i32 %commutative.15770, 0
  br i1 %cmp127, label %sw.epilog, label %if.else

if.else:                                          ; preds = %cond.end125
  %17 = load i32, ptr @this_insn_is_asm, align 4
  %tobool130.not = icmp eq i32 %17, 0
  br i1 %tobool130.not, label %cond.true131, label %sw.epilog

cond.true131:                                     ; preds = %if.else
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2721, ptr noundef nonnull @.str.1) #7
  br label %sw.epilog

sw.bb136:                                         ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %add.ptr137 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  %call138 = call i64 @__isoc23_strtoul(ptr noundef nonnull %add.ptr137, ptr noundef nonnull %end, i32 noundef 10) #7
  %conv139 = trunc i64 %call138 to i32
  %18 = load ptr, ptr %end, align 8
  %sext5300 = shl i64 %call138, 32
  %idxprom140 = ashr exact i64 %sext5300, 32
  %arrayidx141 = getelementptr inbounds ptr, ptr @recog_data, i64 %idxprom140
  %19 = load ptr, ptr %arrayidx141, align 8
  %20 = load ptr, ptr %arrayidx104, align 8
  %call144 = call i32 @operands_match_p(ptr noundef %19, ptr noundef %20)
  %conv145 = trunc nuw nsw i32 %call144 to i8
  %arrayidx147 = getelementptr inbounds [30 x i8], ptr %operands_match, i64 %idxprom140
  %arrayidx149 = getelementptr inbounds nuw i8, ptr %arrayidx147, i64 %indvars.iv
  store i8 %conv145, ptr %arrayidx149, align 1
  %21 = zext i32 %conv139 to i64
  %cmp150.not = icmp eq i64 %indvars.iv, %21
  br i1 %cmp150.not, label %cond.true152, label %cond.end154

cond.true152:                                     ; preds = %sw.bb136
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2737, ptr noundef nonnull @.str.1) #7
  br label %cond.end154

cond.end154:                                      ; preds = %cond.true152, %sw.bb136
  %cmp156 = icmp sgt i32 %commutative.15770, -1
  br i1 %cmp156, label %if.then158, label %sw.epilog

if.then158:                                       ; preds = %cond.end154
  %cmp159 = icmp eq i32 %commutative.15770, %conv139
  br i1 %cmp159, label %if.then164, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %if.then158
  %add = add nuw nsw i32 %commutative.15770, 1
  %cmp162 = icmp eq i32 %add, %conv139
  br i1 %cmp162, label %if.then164, label %if.end179

if.then164:                                       ; preds = %lor.lhs.false161, %if.then158
  %cond167 = phi i64 [ -1, %lor.lhs.false161 ], [ 1, %if.then158 ]
  %add168 = add i64 %cond167, %call138
  %sext5301 = shl i64 %add168, 32
  %idxprom169 = ashr exact i64 %sext5301, 32
  %arrayidx170 = getelementptr inbounds ptr, ptr @recog_data, i64 %idxprom169
  %22 = load ptr, ptr %arrayidx170, align 8
  %23 = load ptr, ptr %arrayidx104, align 8
  %call173 = call i32 @operands_match_p(ptr noundef %22, ptr noundef %23)
  %conv174 = trunc nuw nsw i32 %call173 to i8
  %gep = getelementptr [30 x i8], ptr %invariant.gep, i64 %idxprom169
  store i8 %conv174, ptr %gep, align 1
  br label %if.end179

if.end179:                                        ; preds = %if.then164, %lor.lhs.false161
  %24 = zext i32 %commutative.15770 to i64
  %cmp180 = icmp eq i64 %indvars.iv, %24
  br i1 %cmp180, label %if.then186, label %lor.lhs.false182

lor.lhs.false182:                                 ; preds = %if.end179
  %add183 = add nuw nsw i32 %commutative.15770, 1
  %25 = zext i32 %add183 to i64
  %cmp184 = icmp eq i64 %indvars.iv, %25
  br i1 %cmp184, label %if.then186, label %sw.epilog

if.then186:                                       ; preds = %lor.lhs.false182, %if.end179
  %cond190 = phi i32 [ -1, %lor.lhs.false182 ], [ 1, %if.end179 ]
  %26 = trunc nuw nsw i64 %indvars.iv to i32
  %add191 = add nsw i32 %cond190, %26
  %27 = load ptr, ptr %arrayidx141, align 8
  %idxprom194 = sext i32 %add191 to i64
  %arrayidx195 = getelementptr inbounds ptr, ptr @recog_data, i64 %idxprom194
  %28 = load ptr, ptr %arrayidx195, align 8
  %call196 = call i32 @operands_match_p(ptr noundef %27, ptr noundef %28)
  %conv197 = trunc nuw nsw i32 %call196 to i8
  %arrayidx201 = getelementptr inbounds i8, ptr %arrayidx147, i64 %idxprom194
  store i8 %conv197, ptr %arrayidx201, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then186, %lor.lhs.false182, %cond.end154, %cond.true131, %if.else, %cond.end125, %sw.bb117, %sw.bb, %while.body
  %p.1 = phi ptr [ %add.ptr, %while.body ], [ %add.ptr, %sw.bb ], [ %add.ptr, %sw.bb117 ], [ %add.ptr, %if.else ], [ %add.ptr, %cond.true131 ], [ %18, %if.then186 ], [ %18, %lor.lhs.false182 ], [ %18, %cond.end154 ], [ %add.ptr, %cond.end125 ]
  %commutative.2 = phi i32 [ %commutative.15770, %while.body ], [ %commutative.15770, %sw.bb ], [ %commutative.15770, %sw.bb117 ], [ %commutative.15770, %if.else ], [ %commutative.15770, %cond.true131 ], [ %commutative.15770, %if.then186 ], [ %commutative.15770, %lor.lhs.false182 ], [ %commutative.15770, %cond.end154 ], [ %15, %cond.end125 ]
  %29 = load i8, ptr %p.1, align 1
  %tobool112.not = icmp eq i8 %29, 0
  br i1 %tobool112.not, label %while.end.loopexit, label %while.body, !llvm.loop !0

while.end.loopexit:                               ; preds = %sw.epilog
  %commutative.2.lcssa = phi i32 [ %commutative.2, %sw.epilog ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %for.body
  %commutative.1.lcssa = phi i32 [ %commutative.05772, %for.body ], [ %commutative.2.lcssa, %while.end.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %end) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.body, label %for.cond204.preheader.loopexit, !llvm.loop !2

for.body207:                                      ; preds = %for.inc555, %for.body207.lr.ph
  %indvars.iv6008 = phi i64 [ 0, %for.body207.lr.ph ], [ %indvars.iv.next6009, %for.inc555 ]
  %arrayidx209 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv6008
  %30 = load ptr, ptr %arrayidx209, align 8
  %bf.load210 = load i32, ptr %30, align 8
  %bf.clear211 = and i32 %bf.load210, 65535
  %arrayidx213 = getelementptr inbounds nuw i32, ptr %address_reloaded, i64 %indvars.iv6008
  store i32 0, ptr %arrayidx213, align 4
  %arrayidx215 = getelementptr inbounds nuw i32, ptr %address_operand_reloaded, i64 %indvars.iv6008
  store i32 0, ptr %arrayidx215, align 4
  %arrayidx217 = getelementptr inbounds nuw i32, ptr %modified, i64 %indvars.iv6008
  %31 = load i32, ptr %arrayidx217, align 4
  %cmp218 = icmp eq i32 %31, 0
  %cmp224 = icmp eq i32 %31, 2
  %cond226 = select i1 %cmp224, i32 1, i32 9
  %cond228 = select i1 %cmp218, i32 0, i32 %cond226
  %arrayidx230 = getelementptr inbounds nuw i32, ptr %operand_type, i64 %indvars.iv6008
  store i32 %cond228, ptr %arrayidx230, align 4
  %cond241 = select i1 %cmp224, i32 5, i32 9
  %cond243 = select i1 %cmp218, i32 3, i32 %cond241
  %arrayidx245 = getelementptr inbounds nuw i32, ptr %address_type, i64 %indvars.iv6008
  store i32 %cond243, ptr %arrayidx245, align 4
  %arrayidx247 = getelementptr inbounds nuw ptr, ptr %constraints, i64 %indvars.iv6008
  %32 = load ptr, ptr %arrayidx247, align 8
  %33 = load i8, ptr %32, align 1
  switch i8 %33, label %if.else320 [
    i8 0, label %if.end512
    i8 112, label %if.then259
  ]

if.then259:                                       ; preds = %for.body207
  %arrayidx261 = getelementptr inbounds nuw i32, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 720), i64 %indvars.iv6008
  %34 = load i32, ptr %arrayidx261, align 4
  %arrayidx265 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6008
  %35 = load ptr, ptr %arrayidx265, align 8
  %36 = trunc nuw nsw i64 %indvars.iv6008 to i32
  %call268 = call fastcc i32 @find_reloads_address(i32 noundef %34, ptr noundef null, ptr noundef nonnull %30, ptr noundef %35, i32 noundef %36, i32 noundef %cond228, i32 noundef %ind_levels, ptr noundef %insn)
  store i32 %call268, ptr %arrayidx215, align 4
  %37 = load ptr, ptr %arrayidx265, align 8
  %38 = load ptr, ptr %37, align 8
  %bf.load273 = load i32, ptr %38, align 8
  %bf.clear274 = and i32 %bf.load273, 65535
  %idxprom275 = zext nneg i32 %bf.clear274 to i64
  %arrayidx276 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom275
  %39 = load i32, ptr %arrayidx276, align 4
  %and = and i32 %39, -2
  %cmp277 = icmp eq i32 %and, 8
  %cmp284 = icmp eq i32 %bf.clear274, 39
  %or.cond5302 = or i1 %cmp284, %cmp277
  br i1 %or.cond5302, label %land.lhs.true286, label %if.end304

land.lhs.true286:                                 ; preds = %if.then259
  %40 = load ptr, ptr %arrayidx209, align 8
  %bf.load289 = load i32, ptr %40, align 8
  %trunc5685 = trunc i32 %bf.load289 to i16
  switch i16 %trunc5685, label %if.end304 [
    i16 52, label %cleanup
    i16 49, label %cleanup
  ]

if.end304:                                        ; preds = %land.lhs.true286, %if.then259
  store ptr %38, ptr %arrayidx209, align 8
  %arrayidx312 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %indvars.iv6008
  store ptr %38, ptr %arrayidx312, align 8
  %bf.load315 = load i32, ptr %38, align 8
  %bf.lshr316 = lshr i32 %bf.load315, 16
  %bf.clear317 = and i32 %bf.lshr316, 255
  %arrayidx319 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6008
  store i32 %bf.clear317, ptr %arrayidx319, align 4
  br label %if.end512

if.else320:                                       ; preds = %for.body207
  %trunc5686 = trunc i32 %bf.load210 to i16
  switch i16 %trunc5686, label %lor.lhs.false424 [
    i16 43, label %if.then323
    i16 39, label %if.then355
    i16 49, label %if.then429
  ]

if.then323:                                       ; preds = %if.else320
  %bf.lshr327 = lshr i32 %bf.load210, 16
  %bf.clear328 = and i32 %bf.lshr327, 255
  %arrayidx330 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6008
  %41 = load ptr, ptr %arrayidx330, align 8
  %u333 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %42 = load ptr, ptr %u333, align 8
  %43 = trunc nuw nsw i64 %indvars.iv6008 to i32
  %call341 = call fastcc i32 @find_reloads_address(i32 noundef %bf.clear328, ptr noundef %41, ptr noundef %42, ptr noundef nonnull %u333, i32 noundef %43, i32 noundef %cond243, i32 noundef %ind_levels, ptr noundef %insn)
  store i32 %call341, ptr %arrayidx213, align 4
  %44 = load ptr, ptr %arrayidx330, align 8
  %45 = load ptr, ptr %44, align 8
  store ptr %45, ptr %arrayidx209, align 8
  %arrayidx351 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %indvars.iv6008
  store ptr %45, ptr %arrayidx351, align 8
  br label %if.end512

if.then355:                                       ; preds = %if.else320
  %u358 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %46 = load ptr, ptr %u358, align 8
  br i1 %cmp364.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then355
  %arrayidx369 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6008
  %47 = load ptr, ptr %arrayidx369, align 8
  %cmp370 = icmp eq ptr %u366, %47
  %48 = zext i1 %cmp370 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then355
  %land.ext = phi i32 [ 0, %if.then355 ], [ %48, %land.rhs ]
  %49 = trunc nuw nsw i64 %indvars.iv6008 to i32
  %call374 = call fastcc ptr @find_reloads_toplev(ptr noundef nonnull %30, i32 noundef %49, i32 noundef %cond243, i32 noundef %ind_levels, i32 noundef %land.ext, ptr noundef %insn, ptr noundef %arrayidx213)
  br i1 %tobool375.not, label %if.end416, label %land.lhs.true376

land.lhs.true376:                                 ; preds = %land.end
  %bf.load377 = load i32, ptr %call374, align 8
  %bf.clear378 = and i32 %bf.load377, 65535
  %cmp379 = icmp eq i32 %bf.clear378, 43
  br i1 %cmp379, label %land.lhs.true381, label %if.end416

land.lhs.true381:                                 ; preds = %land.lhs.true376
  %bf.load382 = load i32, ptr %46, align 8
  %bf.clear383 = and i32 %bf.load382, 65535
  %cmp384 = icmp eq i32 %bf.clear383, 37
  br i1 %cmp384, label %land.lhs.true386, label %if.end416

land.lhs.true386:                                 ; preds = %land.lhs.true381
  %bf.lshr388 = lshr i32 %bf.load382, 16
  %bf.clear389 = and i32 %bf.lshr388, 255
  %idxprom390 = zext nneg i32 %bf.clear389 to i64
  %arrayidx391 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom390
  %50 = load i8, ptr %arrayidx391, align 1
  %bf.lshr395 = lshr i32 %bf.load377, 16
  %bf.clear396 = and i32 %bf.lshr395, 255
  %idxprom397 = zext nneg i32 %bf.clear396 to i64
  %arrayidx398 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom397
  %51 = load i8, ptr %arrayidx398, align 1
  %cmp401.not = icmp ult i8 %50, %51
  br i1 %cmp401.not, label %if.end416, label %land.lhs.true403

land.lhs.true403:                                 ; preds = %land.lhs.true386
  %52 = load ptr, ptr @reg_equiv_constant, align 8
  %53 = getelementptr i8, ptr %46, i64 8
  %.val5385 = load i32, ptr %53, align 8
  %idxprom405 = zext i32 %.val5385 to i64
  %arrayidx406 = getelementptr inbounds nuw ptr, ptr %52, i64 %idxprom405
  %54 = load ptr, ptr %arrayidx406, align 8
  %cmp407 = icmp eq ptr %54, null
  br i1 %cmp407, label %if.then409, label %if.end416

if.then409:                                       ; preds = %land.lhs.true403
  %call410 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %46) #7
  %call411 = call ptr @emit_insn_before(ptr noundef %call410, ptr noundef %insn) #7
  %55 = load ptr, ptr @reg_equiv_memory_loc, align 8
  %.val5384 = load i32, ptr %53, align 8
  %idxprom413 = zext i32 %.val5384 to i64
  %arrayidx414 = getelementptr inbounds nuw ptr, ptr %55, i64 %idxprom413
  %56 = load ptr, ptr %arrayidx414, align 8
  %call415 = call ptr @set_unique_reg_note(ptr noundef %call411, i32 noundef 4, ptr noundef %56) #7
  br label %if.end416

if.end416:                                        ; preds = %if.then409, %land.lhs.true403, %land.lhs.true386, %land.lhs.true381, %land.lhs.true376, %land.end
  store ptr %call374, ptr %arrayidx209, align 8
  %arrayidx420 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %indvars.iv6008
  store ptr %call374, ptr %arrayidx420, align 8
  br label %if.end512

lor.lhs.false424:                                 ; preds = %if.else320
  %idxprom425 = zext nneg i32 %bf.clear211 to i64
  %arrayidx426 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom425
  %57 = load i32, ptr %arrayidx426, align 4
  %cmp427 = icmp eq i32 %57, 4
  br i1 %cmp427, label %if.then429, label %if.else441

if.then429:                                       ; preds = %lor.lhs.false424, %if.else320
  %58 = trunc nuw nsw i64 %indvars.iv6008 to i32
  %call436 = call fastcc ptr @find_reloads_toplev(ptr noundef nonnull %30, i32 noundef %58, i32 noundef %cond243, i32 noundef %ind_levels, i32 noundef 0, ptr noundef %insn, ptr noundef %arrayidx213)
  store ptr %call436, ptr %arrayidx209, align 8
  %arrayidx440 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %indvars.iv6008
  store ptr %call436, ptr %arrayidx440, align 8
  br label %if.end512

if.else441:                                       ; preds = %lor.lhs.false424
  %cmp442 = icmp eq i32 %bf.clear211, 37
  br i1 %cmp442, label %if.then444, label %if.end512

if.then444:                                       ; preds = %if.else441
  %59 = getelementptr i8, ptr %30, i64 8
  %.val5383 = load i32, ptr %59, align 8
  %60 = load ptr, ptr @reg_equiv_constant, align 8
  %idxprom448 = sext i32 %.val5383 to i64
  %arrayidx449 = getelementptr inbounds ptr, ptr %60, i64 %idxprom448
  %61 = load ptr, ptr %arrayidx449, align 8
  %cmp450.not = icmp eq ptr %61, null
  br i1 %cmp450.not, label %if.end482, label %land.lhs.true452

land.lhs.true452:                                 ; preds = %if.then444
  br i1 %cmp453, label %if.then462, label %lor.lhs.false455

lor.lhs.false455:                                 ; preds = %land.lhs.true452
  %arrayidx459 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6008
  %62 = load ptr, ptr %arrayidx459, align 8
  %cmp460.not = icmp eq ptr %u456, %62
  br i1 %cmp460.not, label %if.end482, label %if.then462

if.then462:                                       ; preds = %lor.lhs.false455, %land.lhs.true452
  %arrayidx464 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6008
  %63 = load i32, ptr %arrayidx464, align 4
  %cmp465 = icmp eq i32 %63, 0
  br i1 %cmp465, label %if.then467, label %if.end475

if.then467:                                       ; preds = %if.then462
  %bf.lshr471 = lshr i32 %bf.load210, 16
  %bf.clear472 = and i32 %bf.lshr471, 255
  store i32 %bf.clear472, ptr %arrayidx464, align 4
  br label %if.end475

if.end475:                                        ; preds = %if.then467, %if.then462
  store ptr %61, ptr %arrayidx209, align 8
  %arrayidx481 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %indvars.iv6008
  store ptr %61, ptr %arrayidx481, align 8
  br label %if.end482

if.end482:                                        ; preds = %if.end475, %lor.lhs.false455, %if.then444
  %64 = load ptr, ptr @reg_equiv_memory_loc, align 8
  %arrayidx484 = getelementptr inbounds ptr, ptr %64, i64 %idxprom448
  %65 = load ptr, ptr %arrayidx484, align 8
  %cmp485.not = icmp eq ptr %65, null
  br i1 %cmp485.not, label %if.end512, label %land.lhs.true487

land.lhs.true487:                                 ; preds = %if.end482
  %66 = load ptr, ptr @reg_equiv_address, align 8
  %arrayidx489 = getelementptr inbounds ptr, ptr %66, i64 %idxprom448
  %67 = load ptr, ptr %arrayidx489, align 8
  %cmp490 = icmp ne ptr %67, null
  %68 = load i32, ptr @num_not_at_initial_offset, align 4
  %tobool493 = icmp ne i32 %68, 0
  %or.cond4170 = select i1 %cmp490, i1 true, i1 %tobool493
  br i1 %or.cond4170, label %if.then494, label %if.end512

if.then494:                                       ; preds = %land.lhs.true487
  %69 = load ptr, ptr %arrayidx209, align 8
  %70 = trunc nuw nsw i64 %indvars.iv6008 to i32
  %call501 = call fastcc ptr @find_reloads_toplev(ptr noundef %69, i32 noundef %70, i32 noundef %cond243, i32 noundef %ind_levels, i32 noundef 0, ptr noundef %insn, ptr noundef %arrayidx213)
  store ptr %call501, ptr %arrayidx209, align 8
  %arrayidx505 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %indvars.iv6008
  store ptr %call501, ptr %arrayidx505, align 8
  br label %if.end512

if.end512:                                        ; preds = %if.then494, %land.lhs.true487, %if.end482, %if.else441, %if.then429, %if.end416, %if.then323, %if.end304, %for.body207
  %71 = load ptr, ptr %arrayidx209, align 8
  %bf.load515 = load i32, ptr %71, align 8
  %bf.clear516 = and i32 %bf.load515, 65535
  %cmp517 = icmp eq i32 %bf.clear516, 37
  br i1 %cmp517, label %land.lhs.true519, label %land.end550.critedge

land.lhs.true519:                                 ; preds = %if.end512
  %72 = getelementptr i8, ptr %71, i64 8
  %.val5382 = load i32, ptr %72, align 8
  %cmp523 = icmp ugt i32 %.val5382, 52
  br i1 %cmp523, label %cond.true525, label %land.lhs.true537

cond.true525:                                     ; preds = %land.lhs.true519
  %call529 = call i32 @reg_preferred_class(i32 noundef %.val5382) #7
  br label %land.lhs.true537

land.lhs.true537:                                 ; preds = %cond.true525, %land.lhs.true519
  %cond532 = phi i32 [ %call529, %cond.true525 ], [ 0, %land.lhs.true519 ]
  %arrayidx534 = getelementptr inbounds nuw i32, ptr %preferred_class, i64 %indvars.iv6008
  store i32 %cond532, ptr %arrayidx534, align 4
  %73 = load ptr, ptr %arrayidx209, align 8
  %74 = getelementptr i8, ptr %73, i64 8
  %.val5380 = load i32, ptr %74, align 8
  %cmp541 = icmp ugt i32 %.val5380, 52
  br i1 %cmp541, label %land.rhs543, label %for.inc555

land.rhs543:                                      ; preds = %land.lhs.true537
  %call547 = call i32 @reg_alternate_class(i32 noundef %.val5380) #7
  %cmp548 = icmp eq i32 %call547, 0
  %75 = zext i1 %cmp548 to i8
  br label %for.inc555

land.end550.critedge:                             ; preds = %if.end512
  %arrayidx534.c = getelementptr inbounds nuw i32, ptr %preferred_class, i64 %indvars.iv6008
  store i32 0, ptr %arrayidx534.c, align 4
  br label %for.inc555

cleanup:                                          ; preds = %land.lhs.true286, %land.lhs.true286
  store i32 -1, ptr %arrayidx93, align 8
  %call303 = call i32 @find_reloads(ptr noundef %insn, i32 noundef %replace, i32 noundef %ind_levels, i32 noundef %live_known, ptr noundef %reload_reg_p)
  br label %cleanup4125

for.inc555:                                       ; preds = %land.end550.critedge, %land.rhs543, %land.lhs.true537
  %conv552 = phi i8 [ 0, %land.lhs.true537 ], [ %75, %land.rhs543 ], [ 0, %land.end550.critedge ]
  %arrayidx554 = getelementptr inbounds nuw i8, ptr %pref_or_nothing, i64 %indvars.iv6008
  store i8 %conv552, ptr %arrayidx554, align 1
  %indvars.iv.next6009 = add nuw nsw i64 %indvars.iv6008, 1
  %exitcond6012 = icmp ne i64 %indvars.iv.next6009, %wide.trip.count6011
  br i1 %exitcond6012, label %for.body207, label %for.end557.loopexit, !llvm.loop !3

for.end557.loopexit:                              ; preds = %for.inc555
  br label %for.end557

for.end557:                                       ; preds = %for.end557.loopexit, %for.cond204.preheader
  %cmp558 = icmp ne ptr %cond24, null
  %cmp561 = icmp sgt i8 %8, 1
  %or.cond4171 = and i1 %cmp558, %cmp561
  br i1 %or.cond4171, label %land.lhs.true563, label %if.end593

land.lhs.true563:                                 ; preds = %for.end557
  %76 = load ptr, ptr @recog_data, align 8
  %u564 = getelementptr inbounds nuw i8, ptr %cond24, i64 8
  %77 = load ptr, ptr %u564, align 8
  %cmp566 = icmp eq ptr %76, %77
  br i1 %cmp566, label %land.lhs.true568, label %if.end593

land.lhs.true568:                                 ; preds = %land.lhs.true563
  %78 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 8), align 8
  %arrayidx570 = getelementptr inbounds nuw i8, ptr %cond24, i64 16
  %79 = load ptr, ptr %arrayidx570, align 8
  %cmp571 = icmp eq ptr %78, %79
  br i1 %cmp571, label %if.then573, label %if.end593

if.then573:                                       ; preds = %land.lhs.true568
  %80 = load i32, ptr %preferred_class, align 16
  %idxprom575 = sext i32 %80 to i64
  %arrayidx576 = getelementptr inbounds [27 x i32], ptr @reg_class_subunion, i64 %idxprom575
  %arrayidx577 = getelementptr inbounds nuw i8, ptr %preferred_class, i64 4
  %81 = load i32, ptr %arrayidx577, align 4
  %idxprom578 = sext i32 %81 to i64
  %arrayidx579 = getelementptr inbounds i32, ptr %arrayidx576, i64 %idxprom578
  %82 = load i32, ptr %arrayidx579, align 4
  store i32 %82, ptr %arrayidx577, align 4
  store i32 %82, ptr %preferred_class, align 16
  %arrayidx582 = getelementptr inbounds nuw i8, ptr %pref_or_nothing, i64 1
  %83 = load i8, ptr %arrayidx582, align 1
  %84 = load i8, ptr %pref_or_nothing, align 16
  %or5292 = or i8 %84, %83
  store i8 %or5292, ptr %pref_or_nothing, align 16
  store i8 %or5292, ptr %arrayidx582, align 1
  br label %if.end593

if.end593:                                        ; preds = %if.then573, %land.lhs.true568, %land.lhs.true563, %for.end557
  %cmp5955833 = icmp sgt i8 %9, 0
  %cmp6195795 = icmp sgt i8 %8, 0
  %tobool1114.not = icmp eq i32 %ind_levels, 0
  %tobool1078.not = icmp eq i32 %ind_levels, 0
  %add810 = add nsw i32 %commutative.0.lcssa, 1
  %mul821 = shl nsw i32 %commutative.0.lcssa, 1
  %add822 = or disjoint i32 %mul821, 1
  %add903 = add nsw i32 %commutative.0.lcssa, 1
  %add899 = add nsw i32 %commutative.0.lcssa, 1
  %add919 = add nsw i32 %commutative.0.lcssa, 1
  %add915 = add nsw i32 %commutative.0.lcssa, 1
  %cmp16845820 = icmp sgt i8 %8, 0
  %early_data.sroa.4.0.tmp.sroa_idx = getelementptr inbounds nuw i8, ptr %tmp, i64 4
  %early_data.sroa.5.0.tmp.sroa_idx = getelementptr inbounds nuw i8, ptr %tmp, i64 8
  %early_data.sroa.6.0.tmp.sroa_idx = getelementptr inbounds nuw i8, ptr %tmp, i64 16
  %early_data.sroa.7.0.tmp.sroa_idx = getelementptr inbounds nuw i8, ptr %tmp, i64 24
  %xdata.sroa.3.0.tmp.sroa_idx.i = getelementptr inbounds nuw i8, ptr %tmp.i, i64 8
  %xdata.sroa.9.0.tmp.sroa_idx.i = getelementptr inbounds nuw i8, ptr %tmp.i, i64 16
  %xdata.sroa.10.0.tmp.sroa_idx.i = getelementptr inbounds nuw i8, ptr %tmp.i, i64 24
  %cmp19515825 = icmp sgt i8 %8, 0
  %cmp20385829 = icmp sgt i8 %8, 0
  %cmp2078 = icmp sgt i32 %commutative.0.lcssa, -1
  %add2084 = add nuw nsw i32 %commutative.0.lcssa, 1
  %idxprom2085 = zext nneg i32 %add2084 to i64
  %arrayidx2086 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %idxprom2085
  %idxprom2087 = zext nneg i32 %commutative.0.lcssa to i64
  %arrayidx2088 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %idxprom2087
  %arrayidx2090 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %idxprom2087
  %arrayidx2093 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %idxprom2085
  %arrayidx2124 = getelementptr inbounds nuw i32, ptr %preferred_class, i64 %idxprom2087
  %arrayidx2127 = getelementptr inbounds nuw i32, ptr %preferred_class, i64 %idxprom2085
  %arrayidx2134 = getelementptr inbounds nuw i8, ptr %pref_or_nothing, i64 %idxprom2087
  %arrayidx2138 = getelementptr inbounds nuw i8, ptr %pref_or_nothing, i64 %idxprom2085
  %arrayidx2146 = getelementptr inbounds nuw i32, ptr %address_reloaded, i64 %idxprom2087
  %arrayidx2149 = getelementptr inbounds nuw i32, ptr %address_reloaded, i64 %idxprom2085
  %85 = zext i32 %add903 to i64
  %86 = zext i32 %commutative.0.lcssa to i64
  %87 = zext i32 %add810 to i64
  %88 = zext i32 %commutative.0.lcssa to i64
  %89 = zext i32 %conv83 to i64
  %90 = shl nuw nsw i64 %89, 2
  %91 = zext i32 %conv83 to i64
  %92 = zext i32 %conv83 to i64
  %93 = zext i32 %conv83 to i64
  %94 = zext i32 %conv83 to i64
  %95 = shl nuw nsw i64 %94, 2
  %96 = zext i32 %conv83 to i64
  br label %try_swapped

try_swapped:                                      ; preds = %for.end2122, %if.end593
  %goal_earlyclobber.0 = phi i32 [ 0, %if.end593 ], [ %goal_earlyclobber.1.lcssa, %for.end2122 ]
  %best_small_class_operands_num.0 = phi i32 [ 0, %if.end593 ], [ %best_small_class_operands_num.1.lcssa, %for.end2122 ]
  %best.0 = phi i32 [ 660, %if.end593 ], [ %best.1.lcssa, %for.end2122 ]
  %goal_alternative_swapped.0 = phi i32 [ 0, %if.end593 ], [ %goal_alternative_swapped.1.lcssa, %for.end2122 ]
  %goal_alternative_number.0 = phi i32 [ 0, %if.end593 ], [ %goal_alternative_number.1.lcssa, %for.end2122 ]
  %swapped.0 = phi i32 [ 0, %if.end593 ], [ %lnot.ext, %for.end2122 ]
  br i1 %cmp5955833, label %for.body597.lr.ph, label %for.end2077

for.body597.lr.ph:                                ; preds = %try_swapped
  %tobool805.not = icmp ne i32 %swapped.0, 0
  %wide.trip.count6055 = zext i32 %conv84 to i64
  br label %for.body597

for.body597:                                      ; preds = %for.inc2075, %for.body597.lr.ph
  %indvars.iv6052 = phi i64 [ 0, %for.body597.lr.ph ], [ %indvars.iv.next6053, %for.inc2075 ]
  %goal_alternative_number.15838 = phi i32 [ %goal_alternative_number.0, %for.body597.lr.ph ], [ %goal_alternative_number.4.ph, %for.inc2075 ]
  %goal_alternative_swapped.15837 = phi i32 [ %goal_alternative_swapped.0, %for.body597.lr.ph ], [ %goal_alternative_swapped.4.ph, %for.inc2075 ]
  %best.15836 = phi i32 [ %best.0, %for.body597.lr.ph ], [ %best.4.ph, %for.inc2075 ]
  %best_small_class_operands_num.15835 = phi i32 [ %best_small_class_operands_num.0, %for.body597.lr.ph ], [ %best_small_class_operands_num.4.ph, %for.inc2075 ]
  %goal_earlyclobber.15834 = phi i32 [ %goal_earlyclobber.0, %for.body597.lr.ph ], [ %goal_earlyclobber.4.ph, %for.inc2075 ]
  %arrayidx599 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1089), i64 %indvars.iv6052
  %97 = load i8, ptr %arrayidx599, align 1
  %tobool600.not = icmp eq i8 %97, 0
  br i1 %tobool600.not, label %for.cond603.preheader, label %for.cond618.preheader

for.cond618.preheader:                            ; preds = %for.body597
  br i1 %cmp6195795, label %for.body621.preheader, label %for.cond1683.preheader

for.body621.preheader:                            ; preds = %for.cond618.preheader
  %wide.trip.count6022 = zext i32 %conv83 to i64
  br label %for.body621

for.cond603.preheader:                            ; preds = %for.body597
  %98 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1086), align 2
  %conv604 = sext i8 %98 to i32
  %cmp6055831 = icmp sgt i8 %98, 0
  br i1 %cmp6055831, label %for.body607.preheader, label %for.inc2075

for.body607.preheader:                            ; preds = %for.cond603.preheader
  %wide.trip.count6050 = zext i32 %conv604 to i64
  br label %for.body607

for.body607:                                      ; preds = %skip_alternative.exit, %for.body607.preheader
  %indvars.iv6047 = phi i64 [ 0, %for.body607.preheader ], [ %indvars.iv.next6048, %skip_alternative.exit ]
  %arrayidx609 = getelementptr inbounds nuw ptr, ptr %constraints, i64 %indvars.iv6047
  %99 = load ptr, ptr %arrayidx609, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %for.body607
  %r.0.i = phi ptr [ %99, %for.body607 ], [ %incdec.ptr.i, %while.body.i ]
  %100 = load i8, ptr %r.0.i, align 1
  switch i8 %100, label %while.body.i [
    i8 0, label %skip_alternative.exit
    i8 44, label %skip_alternative.exit
  ]

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %r.0.i, i64 1
  br label %while.cond.i, !llvm.loop !4

skip_alternative.exit:                            ; preds = %while.cond.i, %while.cond.i
  %r.0.i.lcssa = phi ptr [ %r.0.i, %while.cond.i ], [ %r.0.i, %while.cond.i ]
  %.lcssa5995 = phi i8 [ %100, %while.cond.i ], [ %100, %while.cond.i ]
  %cmp6.i = icmp eq i8 %.lcssa5995, 44
  %spec.select.idx.i = zext i1 %cmp6.i to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %r.0.i.lcssa, i64 %spec.select.idx.i
  store ptr %spec.select.i, ptr %arrayidx609, align 8
  %indvars.iv.next6048 = add nuw nsw i64 %indvars.iv6047, 1
  %exitcond6051 = icmp ne i64 %indvars.iv.next6048, %wide.trip.count6050
  br i1 %exitcond6051, label %for.body607, label %for.inc2075.loopexit, !llvm.loop !5

for.cond1683.preheader.loopexit:                  ; preds = %if.end1679
  %bad.95481.lcssa = phi i32 [ %bad.95481, %if.end1679 ]
  %losers.75480.lcssa = phi i32 [ %losers.75480, %if.end1679 ]
  %reject.8.lcssa = phi i32 [ %reject.8, %if.end1679 ]
  %this_earlyclobber.25468.lcssa = phi i32 [ %this_earlyclobber.25468, %if.end1679 ]
  br label %for.cond1683.preheader

for.cond1683.preheader:                           ; preds = %for.cond1683.preheader.loopexit, %for.cond618.preheader
  %losers.0.lcssa = phi i32 [ 0, %for.cond618.preheader ], [ %losers.75480.lcssa, %for.cond1683.preheader.loopexit ]
  %bad.0.lcssa = phi i32 [ 0, %for.cond618.preheader ], [ %bad.95481.lcssa, %for.cond1683.preheader.loopexit ]
  %reject.0.lcssa = phi i32 [ 0, %for.cond618.preheader ], [ %reject.8.lcssa, %for.cond1683.preheader.loopexit ]
  %this_earlyclobber.0.lcssa = phi i32 [ 0, %for.cond618.preheader ], [ %this_earlyclobber.25468.lcssa, %for.cond1683.preheader.loopexit ]
  br i1 %cmp16845820, label %for.body1686.preheader, label %for.end1893

for.body1686.preheader:                           ; preds = %for.cond1683.preheader
  %wide.trip.count6037 = zext i32 %conv83 to i64
  br label %for.body1686

for.body621:                                      ; preds = %if.end1679, %for.body621.preheader
  %indvars.iv6018 = phi i64 [ 0, %for.body621.preheader ], [ %indvars.iv.next6019, %if.end1679 ]
  %this_earlyclobber.05799 = phi i32 [ %this_earlyclobber.25468, %if.end1679 ], [ 0, %for.body621.preheader ]
  %reject.05798 = phi i32 [ %reject.8, %if.end1679 ], [ 0, %for.body621.preheader ]
  %bad.05797 = phi i32 [ %bad.95481, %if.end1679 ], [ 0, %for.body621.preheader ]
  %losers.05796 = phi i32 [ %losers.75480, %if.end1679 ], [ 0, %for.body621.preheader ]
  %indvars6021 = trunc i64 %indvars.iv6018 to i32
  %arrayidx624 = getelementptr inbounds nuw ptr, ptr %constraints, i64 %indvars.iv6018
  %101 = load ptr, ptr %arrayidx624, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %end625) #7
  %arrayidx628 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv6018
  %102 = load ptr, ptr %arrayidx628, align 8
  %bf.load629 = load i32, ptr %102, align 8
  %bf.clear630 = and i32 %bf.load629, 65535
  %idxprom631 = zext nneg i32 %bf.clear630 to i64
  %arrayidx632 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom631
  %103 = load i32, ptr %arrayidx632, align 4
  %cmp633 = icmp eq i32 %103, 4
  br i1 %cmp633, label %land.lhs.true635, label %if.end642

land.lhs.true635:                                 ; preds = %for.body621
  %104 = load i8, ptr %101, align 1
  %cmp637.not = icmp eq i8 %104, 0
  br i1 %cmp637.not, label %if.end642, label %if.then639

if.then639:                                       ; preds = %land.lhs.true635
  %u640 = getelementptr inbounds nuw i8, ptr %102, i64 8
  %105 = load ptr, ptr %u640, align 8
  br label %if.end642

if.end642:                                        ; preds = %if.then639, %land.lhs.true635, %for.body621
  %operand.0 = phi ptr [ %105, %if.then639 ], [ %102, %land.lhs.true635 ], [ %102, %for.body621 ]
  %bf.load6445777 = load i32, ptr %operand.0, align 8
  %bf.clear6455778 = and i32 %bf.load6445777, 65535
  %cmp6465779 = icmp eq i32 %bf.clear6455778, 39
  br i1 %cmp6465779, label %while.body648.lr.ph, label %while.end758

while.body648.lr.ph:                              ; preds = %if.end642
  %arrayidx742 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6018
  br label %while.body648

while.body648:                                    ; preds = %if.end757, %while.body648.lr.ph
  %bf.load6445783 = phi i32 [ %bf.load6445777, %while.body648.lr.ph ], [ %bf.load644, %if.end757 ]
  %force_reload.05782 = phi i32 [ 0, %while.body648.lr.ph ], [ %force_reload.3, %if.end757 ]
  %offset.05781 = phi i32 [ 0, %while.body648.lr.ph ], [ %offset.1, %if.end757 ]
  %operand.15780 = phi ptr [ %operand.0, %while.body648.lr.ph ], [ %112, %if.end757 ]
  %u649 = getelementptr inbounds nuw i8, ptr %operand.15780, i64 8
  %106 = load ptr, ptr %u649, align 8
  %bf.load651 = load i32, ptr %106, align 8
  %bf.clear652 = and i32 %bf.load651, 65535
  %cmp653 = icmp eq i32 %bf.clear652, 37
  br i1 %cmp653, label %land.lhs.true655, label %if.end695

land.lhs.true655:                                 ; preds = %while.body648
  %107 = getelementptr i8, ptr %106, i64 8
  %.val5378 = load i32, ptr %107, align 8
  %cmp659 = icmp ult i32 %.val5378, 53
  br i1 %cmp659, label %if.then661, label %if.end695

if.then661:                                       ; preds = %land.lhs.true655
  %bf.lshr668 = lshr i32 %bf.load651, 16
  %bf.clear669 = and i32 %bf.lshr668, 255
  %arrayidx671 = getelementptr inbounds nuw i8, ptr %operand.15780, i64 16
  %108 = load i32, ptr %arrayidx671, align 8
  %bf.lshr673 = lshr i32 %bf.load6445783, 16
  %bf.clear674 = and i32 %bf.lshr673, 255
  %call675 = call i32 @simplify_subreg_regno(i32 noundef %.val5378, i32 noundef %bf.clear669, i32 noundef %108, i32 noundef %bf.clear674) #7
  %cmp676 = icmp slt i32 %call675, 0
  %spec.select = select i1 %cmp676, i32 1, i32 %force_reload.05782
  %109 = load ptr, ptr %u649, align 8
  %110 = getelementptr i8, ptr %109, i64 8
  %.val5376 = load i32, ptr %110, align 8
  %bf.load685 = load i32, ptr %109, align 8
  %bf.lshr686 = lshr i32 %bf.load685, 16
  %bf.clear687 = and i32 %bf.lshr686, 255
  %111 = load i32, ptr %arrayidx671, align 8
  %bf.load690 = load i32, ptr %operand.15780, align 8
  %bf.lshr691 = lshr i32 %bf.load690, 16
  %bf.clear692 = and i32 %bf.lshr691, 255
  %call693 = call i32 @subreg_regno_offset(i32 noundef %.val5376, i32 noundef %bf.clear687, i32 noundef %111, i32 noundef %bf.clear692) #7
  %add694 = add i32 %call693, %offset.05781
  br label %if.end695

if.end695:                                        ; preds = %if.then661, %land.lhs.true655, %while.body648
  %offset.1 = phi i32 [ %add694, %if.then661 ], [ %offset.05781, %land.lhs.true655 ], [ %offset.05781, %while.body648 ]
  %force_reload.2 = phi i32 [ %spec.select, %if.then661 ], [ %force_reload.05782, %land.lhs.true655 ], [ %force_reload.05782, %while.body648 ]
  %112 = load ptr, ptr %u649, align 8
  %bf.load698 = load i32, ptr %112, align 8
  %bf.clear699 = and i32 %bf.load698, 65535
  %idxprom700 = zext nneg i32 %bf.clear699 to i64
  %arrayidx701 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom700
  %113 = load i32, ptr %arrayidx701, align 4
  %cmp702 = icmp eq i32 %113, 9
  %cmp707 = icmp eq i32 %bf.clear699, 49
  %or.cond5303 = or i1 %cmp702, %cmp707
  br i1 %or.cond5303, label %if.then756, label %lor.lhs.false709

lor.lhs.false709:                                 ; preds = %if.end695
  %trunc5684 = trunc i32 %bf.load698 to i16
  switch i16 %trunc5684, label %if.end757 [
    i16 43, label %land.lhs.true723
    i16 37, label %land.lhs.true719
  ]

land.lhs.true719:                                 ; preds = %lor.lhs.false709
  %114 = getelementptr i8, ptr %112, i64 8
  %.val5375 = load i32, ptr %114, align 8
  %cmp721 = icmp ugt i32 %.val5375, 52
  br i1 %cmp721, label %land.lhs.true723, label %if.end757

land.lhs.true723:                                 ; preds = %land.lhs.true719, %lor.lhs.false709
  %bf.lshr725 = lshr i32 %bf.load698, 16
  %bf.clear726 = and i32 %bf.lshr725, 255
  %idxprom727 = zext nneg i32 %bf.clear726 to i64
  %arrayidx728 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom727
  %115 = load i8, ptr %arrayidx728, align 1
  %conv730.tr = zext i8 %115 to i32
  %conv732 = shl nuw nsw i32 %conv730.tr, 3
  %116 = load i32, ptr @ix86_isa_flags, align 4
  %and734 = and i32 %116, 32
  %cmp735.not = icmp eq i32 %and734, 0
  %cond737 = select i1 %cmp735.not, i32 128, i32 256
  %cmp738 = icmp samesign ult i32 %conv732, %cond737
  br i1 %cmp738, label %land.lhs.true740, label %if.end757

land.lhs.true740:                                 ; preds = %land.lhs.true723
  %117 = load i32, ptr %arrayidx742, align 4
  %idxprom743 = zext i32 %117 to i64
  %arrayidx744 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom743
  %118 = load i8, ptr %arrayidx744, align 1
  %cmp754 = icmp ugt i8 %118, %115
  br i1 %cmp754, label %if.then756, label %if.end757

if.then756:                                       ; preds = %land.lhs.true740, %if.end695
  br label %if.end757

if.end757:                                        ; preds = %if.then756, %land.lhs.true740, %land.lhs.true723, %land.lhs.true719, %lor.lhs.false709
  %force_reload.3 = phi i32 [ 1, %if.then756 ], [ %force_reload.2, %land.lhs.true740 ], [ %force_reload.2, %land.lhs.true723 ], [ %force_reload.2, %land.lhs.true719 ], [ %force_reload.2, %lor.lhs.false709 ]
  %bf.load644 = load i32, ptr %112, align 8
  %bf.clear645 = and i32 %bf.load644, 65535
  %cmp646 = icmp eq i32 %bf.clear645, 39
  br i1 %cmp646, label %while.body648, label %while.end758.loopexit, !llvm.loop !6

while.end758.loopexit:                            ; preds = %if.end757
  %force_reload.3.lcssa = phi i32 [ %force_reload.3, %if.end757 ]
  %offset.1.lcssa = phi i32 [ %offset.1, %if.end757 ]
  %.lcssa5953 = phi ptr [ %112, %if.end757 ]
  br label %while.end758

while.end758:                                     ; preds = %while.end758.loopexit, %if.end642
  %operand.1.lcssa = phi ptr [ %operand.0, %if.end642 ], [ %.lcssa5953, %while.end758.loopexit ]
  %offset.0.lcssa = phi i32 [ 0, %if.end642 ], [ %offset.1.lcssa, %while.end758.loopexit ]
  %force_reload.0.lcssa = phi i32 [ 0, %if.end642 ], [ %force_reload.3.lcssa, %while.end758.loopexit ]
  %arrayidx760 = getelementptr inbounds nuw i32, ptr %this_alternative, i64 %indvars.iv6018
  store i32 0, ptr %arrayidx760, align 4
  %arrayidx762 = getelementptr inbounds nuw i8, ptr %this_alternative_win, i64 %indvars.iv6018
  store i8 0, ptr %arrayidx762, align 1
  %arrayidx764 = getelementptr inbounds nuw i8, ptr %this_alternative_match_win, i64 %indvars.iv6018
  store i8 0, ptr %arrayidx764, align 1
  %arrayidx766 = getelementptr inbounds nuw i8, ptr %this_alternative_offmemok, i64 %indvars.iv6018
  store i8 0, ptr %arrayidx766, align 1
  %arrayidx768 = getelementptr inbounds nuw i8, ptr %this_alternative_earlyclobber, i64 %indvars.iv6018
  store i8 0, ptr %arrayidx768, align 1
  %arrayidx770 = getelementptr inbounds nuw i32, ptr %this_alternative_matches, i64 %indvars.iv6018
  store i32 -1, ptr %arrayidx770, align 4
  %119 = load i8, ptr %101, align 1
  switch i8 %119, label %if.end779 [
    i8 0, label %if.then778
    i8 44, label %if.then778
  ]

if.then778:                                       ; preds = %while.end758, %while.end758
  br label %if.end779

if.end779:                                        ; preds = %if.then778, %while.end758
  %win.0 = phi i32 [ 1, %if.then778 ], [ 0, %while.end758 ]
  %badop.0 = phi i32 [ 0, %if.then778 ], [ 1, %while.end758 ]
  %invariant.gep5791 = getelementptr i8, ptr %operands_match, i64 %indvars.iv6018
  %120 = getelementptr i8, ptr %operand.1.lcssa, i64 8
  %u1274 = getelementptr inbounds nuw i8, ptr %operand.1.lcssa, i64 8
  %arrayidx1123 = getelementptr inbounds nuw i32, ptr %address_reloaded, i64 %indvars.iv6018
  %121 = getelementptr i8, ptr %operand.1.lcssa, i64 8
  %u10865440 = getelementptr inbounds nuw i8, ptr %operand.1.lcssa, i64 8
  %u1086 = getelementptr inbounds nuw i8, ptr %operand.1.lcssa, i64 8
  %arrayidx1051 = getelementptr inbounds nuw i32, ptr %address_reloaded, i64 %indvars.iv6018
  %u1054 = getelementptr inbounds nuw i8, ptr %operand.1.lcssa, i64 8
  %arrayidx1026 = getelementptr inbounds nuw i32, ptr %address_reloaded, i64 %indvars.iv6018
  %u1029 = getelementptr inbounds nuw i8, ptr %operand.1.lcssa, i64 8
  %122 = getelementptr i8, ptr %operand.1.lcssa, i64 8
  %cmp811.not = icmp eq i64 %indvars.iv6018, %87
  %cmp829 = icmp eq i64 %indvars.iv6018, %88
  %or.cond5306 = select i1 %cmp829, i1 true, i1 %cmp811.not
  %sub838 = sub nsw i32 %add822, %indvars6021
  %123 = trunc nuw nsw i64 %indvars.iv6018 to i32
  %cond841 = select i1 %or.cond5306, i32 %sub838, i32 %123
  %idxprom842 = sext i32 %cond841 to i64
  %invariant.gep5793 = getelementptr i8, ptr %operands_match, i64 %idxprom842
  %cmp896 = icmp eq i64 %indvars.iv6018, %86
  %or.cond5309 = select i1 %tobool805.not, i1 %cmp896, i1 false
  %cmp904 = icmp eq i64 %indvars.iv6018, %85
  %or.cond5311 = select i1 %tobool805.not, i1 %cmp904, i1 false
  %124 = trunc nuw nsw i64 %indvars.iv6018 to i32
  %spec.select5347 = select i1 %or.cond5311, i32 %commutative.0.lcssa, i32 %124
  %arrayidx935 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6018
  %cmp9585787.not = icmp eq i64 %indvars.iv6018, 0
  br label %do.body

do.body:                                          ; preds = %do.cond1380, %if.end779
  %losers.1 = phi i32 [ %losers.05796, %if.end779 ], [ %losers.5, %do.cond1380 ]
  %bad.1 = phi i32 [ %bad.05797, %if.end779 ], [ %bad.5, %do.cond1380 ]
  %reject.1 = phi i32 [ %reject.05798, %if.end779 ], [ %reject.2, %do.cond1380 ]
  %p622.0 = phi ptr [ %101, %if.end779 ], [ %add.ptr1381, %do.cond1380 ]
  %win.1 = phi i32 [ %win.0, %if.end779 ], [ %win.6, %do.cond1380 ]
  %did_match.0 = phi i32 [ 0, %if.end779 ], [ %did_match.2, %do.cond1380 ]
  %badop.1 = phi i32 [ %badop.0, %if.end779 ], [ %badop.6, %do.cond1380 ]
  %winreg.0 = phi i32 [ 0, %if.end779 ], [ %winreg.1, %do.cond1380 ]
  %this_earlyclobber.1 = phi i32 [ %this_earlyclobber.05799, %if.end779 ], [ %this_earlyclobber.2, %do.cond1380 ]
  %force_reload.4 = phi i32 [ %force_reload.0.lcssa, %if.end779 ], [ %force_reload.5, %do.cond1380 ]
  %offmemok.0 = phi i8 [ 0, %if.end779 ], [ %offmemok.1, %do.cond1380 ]
  %constmemok.0 = phi i32 [ 0, %if.end779 ], [ %constmemok.1, %do.cond1380 ]
  %earlyclobber.0 = phi i8 [ 0, %if.end779 ], [ %earlyclobber.1, %do.cond1380 ]
  %125 = load i8, ptr %p622.0, align 1
  %conv780 = sext i8 %125 to i32
  %cond.i5390 = icmp eq i8 %125, 89
  %..i5391 = select i1 %cond.i5390, i64 2, i64 1
  switch i8 %125, label %sw.default [
    i8 0, label %do.cond1380.thread.loopexit
    i8 44, label %do.cond1380.thread.loopexit5936
    i8 61, label %do.cond1380
    i8 43, label %do.cond1380
    i8 42, label %do.cond1380
    i8 37, label %do.cond1380
    i8 63, label %sw.bb787
    i8 33, label %sw.bb789
    i8 35, label %do.body791.preheader
    i8 48, label %sw.bb800
    i8 49, label %sw.bb800
    i8 50, label %sw.bb800
    i8 51, label %sw.bb800
    i8 52, label %sw.bb800
    i8 53, label %sw.bb800
    i8 54, label %sw.bb800
    i8 55, label %sw.bb800
    i8 56, label %sw.bb800
    i8 57, label %sw.bb800
    i8 112, label %sw.bb973
    i8 109, label %sw.bb977
    i8 60, label %sw.bb1019
    i8 62, label %sw.bb1044
    i8 86, label %sw.bb1069
    i8 111, label %sw.bb1105
    i8 38, label %sw.bb1183
    i8 69, label %sw.bb1184
    i8 70, label %sw.bb1184
    i8 71, label %sw.bb1205
    i8 72, label %sw.bb1205
    i8 115, label %sw.bb1217
    i8 105, label %sw.bb1235
    i8 110, label %sw.bb1250
    i8 73, label %sw.bb1268
    i8 74, label %sw.bb1268
    i8 75, label %sw.bb1268
    i8 76, label %sw.bb1268
    i8 77, label %sw.bb1268
    i8 78, label %sw.bb1268
    i8 79, label %sw.bb1268
    i8 80, label %sw.bb1268
    i8 88, label %sw.bb1282
    i8 103, label %sw.bb1283
    i8 114, label %sw.bb1326
  ]

do.body791.preheader:                             ; preds = %do.body
  br label %do.body791

sw.bb787:                                         ; preds = %do.body
  %add788 = add nsw i32 %reject.1, 6
  br label %do.cond1380

sw.bb789:                                         ; preds = %do.body
  br label %do.cond1380

do.body791:                                       ; preds = %do.body791, %do.body791.preheader
  %p622.1 = phi ptr [ %incdec.ptr, %do.body791 ], [ %p622.0, %do.body791.preheader ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p622.1, i64 1
  %126 = load i8, ptr %incdec.ptr, align 1
  switch i8 %126, label %do.body791 [
    i8 0, label %do.cond1380.loopexit
    i8 44, label %do.cond1380.loopexit
  ]

sw.bb800:                                         ; preds = %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body
  %call801 = call i64 @__isoc23_strtoul(ptr noundef nonnull %p622.0, ptr noundef nonnull %end625, i32 noundef 10) #7
  %conv802 = trunc i64 %call801 to i32
  %127 = load ptr, ptr %end625, align 8
  store i32 %conv802, ptr %arrayidx770, align 4
  br i1 %tobool805.not, label %land.lhs.true806, label %cond.false846

land.lhs.true806:                                 ; preds = %sw.bb800
  %cmp807.not = icmp eq i32 %commutative.0.lcssa, %conv802
  %or.cond5304 = select i1 %cmp807.not, i1 %cmp811.not, i1 false
  br i1 %or.cond5304, label %cond.false846, label %cond.true813

cond.true813:                                     ; preds = %land.lhs.true806
  %cmp818 = icmp eq i32 %add810, %conv802
  %or.cond5305 = select i1 %cmp807.not, i1 true, i1 %cmp818
  %sub823 = sub nsw i32 %add822, %conv802
  %cond826 = select i1 %or.cond5305, i32 %sub823, i32 %conv802
  %idxprom827 = sext i32 %cond826 to i64
  %gep5794 = getelementptr [30 x i8], ptr %invariant.gep5793, i64 %idxprom827
  %128 = load i8, ptr %gep5794, align 1
  %tobool845.not = icmp eq i8 %128, 0
  br i1 %tobool845.not, label %if.else879, label %if.then853

cond.false846:                                    ; preds = %land.lhs.true806, %sw.bb800
  %sext = shl i64 %call801, 32
  %idxprom847 = ashr exact i64 %sext, 32
  %gep5792 = getelementptr [30 x i8], ptr %invariant.gep5791, i64 %idxprom847
  %129 = load i8, ptr %gep5792, align 1
  %tobool852.not = icmp eq i8 %129, 0
  br i1 %tobool852.not, label %if.else879, label %if.then853

if.then853:                                       ; preds = %cond.false846, %cond.true813
  %sext5298 = shl i64 %call801, 32
  %idxprom854 = ashr exact i64 %sext5298, 32
  %arrayidx855 = getelementptr inbounds i8, ptr %this_alternative_offmemok, i64 %idxprom854
  %130 = load i8, ptr %arrayidx855, align 1
  %tobool857.not = icmp eq i8 %130, 0
  br i1 %tobool857.not, label %if.end875, label %land.lhs.true858

land.lhs.true858:                                 ; preds = %if.then853
  %arrayidx860 = getelementptr inbounds ptr, ptr @recog_data, i64 %idxprom854
  %131 = load ptr, ptr %arrayidx860, align 8
  %bf.load861 = load i32, ptr %131, align 8
  %bf.clear862 = and i32 %bf.load861, 65535
  %cmp863 = icmp eq i32 %bf.clear862, 43
  br i1 %cmp863, label %land.lhs.true865, label %if.end875

land.lhs.true865:                                 ; preds = %land.lhs.true858
  %arrayidx867 = getelementptr inbounds i32, ptr %this_alternative, i64 %idxprom854
  %132 = load i32, ptr %arrayidx867, align 4
  %cmp868 = icmp eq i32 %132, 0
  br i1 %cmp868, label %land.lhs.true870, label %if.end875

land.lhs.true870:                                 ; preds = %land.lhs.true865
  %arrayidx872 = getelementptr inbounds i8, ptr %this_alternative_win, i64 %idxprom854
  %133 = load i8, ptr %arrayidx872, align 1
  %tobool873.not = icmp eq i8 %133, 0
  %spec.select5307 = select i1 %tobool873.not, i32 1, i32 %bad.1
  br label %if.end875

if.end875:                                        ; preds = %land.lhs.true870, %land.lhs.true865, %land.lhs.true858, %if.then853
  %bad.2 = phi i32 [ %bad.1, %land.lhs.true865 ], [ %bad.1, %land.lhs.true858 ], [ %bad.1, %if.then853 ], [ %spec.select5307, %land.lhs.true870 ]
  %arrayidx877 = getelementptr inbounds i8, ptr %this_alternative_win, i64 %idxprom854
  %134 = load i8, ptr %arrayidx877, align 1
  %conv878 = sext i8 %134 to i32
  br label %if.end948

if.else879:                                       ; preds = %cond.false846, %cond.true813
  %sext5297 = shl i64 %call801, 32
  %idxprom880 = ashr exact i64 %sext5297, 32
  %arrayidx881 = getelementptr inbounds i8, ptr %this_alternative_win, i64 %idxprom880
  %135 = load i8, ptr %arrayidx881, align 1
  %tobool882.not = icmp ne i8 %135, 0
  %inc884 = zext i1 %tobool882.not to i32
  %spec.select5308 = add nsw i32 %losers.1, %inc884
  store i8 0, ptr %arrayidx881, align 1
  %arrayidx889 = getelementptr inbounds i32, ptr %this_alternative, i64 %idxprom880
  %136 = load i32, ptr %arrayidx889, align 4
  %cmp890 = icmp eq i32 %136, 0
  %bad.3 = select i1 %cmp890, i32 1, i32 %bad.1
  %add899.spec.select5347 = select i1 %or.cond5309, i32 %add899, i32 %spec.select5347
  %cmp912 = icmp eq i32 %commutative.0.lcssa, %conv802
  %or.cond5313 = select i1 %tobool805.not, i1 %cmp912, i1 false
  %cmp920 = icmp eq i32 %add919, %conv802
  %or.cond5315 = select i1 %tobool805.not, i1 %cmp920, i1 false
  %spec.select5348 = select i1 %or.cond5315, i32 %commutative.0.lcssa, i32 %conv802
  %loc2.0 = select i1 %or.cond5313, i32 %add915, i32 %spec.select5348
  %137 = load ptr, ptr %arrayidx628, align 8
  %arrayidx929 = getelementptr inbounds ptr, ptr @recog_data, i64 %idxprom880
  %138 = load ptr, ptr %arrayidx929, align 8
  %idxprom930 = sext i32 %add899.spec.select5347 to i64
  %arrayidx931 = getelementptr inbounds ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %idxprom930
  %139 = load ptr, ptr %arrayidx931, align 8
  %idxprom932 = sext i32 %loc2.0 to i64
  %arrayidx933 = getelementptr inbounds ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %idxprom932
  %140 = load ptr, ptr %arrayidx933, align 8
  %141 = load i32, ptr %arrayidx935, align 4
  %arrayidx937 = getelementptr inbounds i32, ptr %operand_mode, i64 %idxprom880
  %142 = load i32, ptr %arrayidx937, align 4
  %arrayidx941 = getelementptr inbounds i8, ptr %this_alternative_earlyclobber, i64 %idxprom880
  %143 = load i8, ptr %arrayidx941, align 1
  %conv942 = sext i8 %143 to i32
  %call943 = call fastcc ptr @find_dummy_reload(ptr noundef %137, ptr noundef %138, ptr noundef %139, ptr noundef %140, i32 noundef %141, i32 noundef %142, i32 noundef %136, i32 noundef -1, i32 noundef %conv942)
  %cmp944.not = icmp ne ptr %call943, null
  %dec = sext i1 %cmp944.not to i32
  %spec.select5316 = add nsw i32 %spec.select5308, %dec
  br label %if.end948

if.end948:                                        ; preds = %if.else879, %if.end875
  %losers.4 = phi i32 [ %losers.1, %if.end875 ], [ %spec.select5316, %if.else879 ]
  %bad.4 = phi i32 [ %bad.2, %if.end875 ], [ %bad.3, %if.else879 ]
  %did_match.1 = phi i32 [ %conv878, %if.end875 ], [ %did_match.0, %if.else879 ]
  %sext5299 = shl i64 %call801, 32
  %144 = ashr exact i64 %sext5299, 30
  %arrayidx950 = getelementptr inbounds i8, ptr %this_alternative, i64 %144
  %145 = load i32, ptr %arrayidx950, align 4
  store i32 %145, ptr %arrayidx760, align 4
  %tobool953 = icmp eq i32 %did_match.1, 0
  %tobool955 = icmp ne i32 %force_reload.4, 0
  %or.cond4172 = select i1 %tobool953, i1 true, i1 %tobool955
  br i1 %or.cond4172, label %for.cond957.preheader, label %do.cond1380

for.cond957.preheader:                            ; preds = %if.end948
  br i1 %cmp9585787.not, label %do.cond1380, label %for.body960.preheader

for.body960.preheader:                            ; preds = %for.cond957.preheader
  br label %for.body960

for.body960:                                      ; preds = %for.body960, %for.body960.preheader
  %indvars.iv6013 = phi i64 [ 0, %for.body960.preheader ], [ %indvars.iv.next6014, %for.body960 ]
  %badop.25788 = phi i32 [ %spec.select5317, %for.body960 ], [ 0, %for.body960.preheader ]
  %arrayidx962 = getelementptr inbounds nuw i32, ptr %this_alternative_matches, i64 %indvars.iv6013
  %146 = load i32, ptr %arrayidx962, align 4
  %cmp965 = icmp eq i32 %146, %conv802
  %spec.select5317 = select i1 %cmp965, i32 1, i32 %badop.25788
  %indvars.iv.next6014 = add nuw nsw i64 %indvars.iv6013, 1
  %exitcond6017 = icmp ne i64 %indvars.iv.next6014, %indvars.iv6018
  br i1 %exitcond6017, label %for.body960, label %do.cond1380.loopexit5935, !llvm.loop !7

sw.bb973:                                         ; preds = %do.body
  store i32 13, ptr %arrayidx760, align 4
  br label %do.cond1380

sw.bb977:                                         ; preds = %do.body
  %tobool978.not = icmp eq i32 %force_reload.4, 0
  br i1 %tobool978.not, label %if.end980, label %do.cond1380

if.end980:                                        ; preds = %sw.bb977
  %bf.load981 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear982 = and i32 %bf.load981, 65535
  %trunc5683 = trunc i32 %bf.load981 to i16
  switch i16 %trunc5683, label %if.end1002 [
    i16 43, label %if.then1001
    i16 37, label %land.lhs.true990
  ]

land.lhs.true990:                                 ; preds = %if.end980
  %operand.1.val5374 = load i32, ptr %122, align 8
  %cmp992 = icmp ugt i32 %operand.1.val5374, 52
  br i1 %cmp992, label %land.lhs.true994, label %if.end1002

land.lhs.true994:                                 ; preds = %land.lhs.true990
  %147 = load ptr, ptr @reg_renumber, align 8
  %idxprom996 = zext i32 %operand.1.val5374 to i64
  %arrayidx997 = getelementptr inbounds nuw i16, ptr %147, i64 %idxprom996
  %148 = load i16, ptr %arrayidx997, align 2
  %cmp999 = icmp slt i16 %148, 0
  br i1 %cmp999, label %if.then1001, label %if.end1002

if.then1001:                                      ; preds = %land.lhs.true994, %if.end980
  br label %if.end1002

if.end1002:                                       ; preds = %if.then1001, %land.lhs.true994, %land.lhs.true990, %if.end980
  %win.2 = phi i32 [ 1, %if.then1001 ], [ %win.1, %land.lhs.true994 ], [ %win.1, %land.lhs.true990 ], [ %win.1, %if.end980 ]
  %idxprom1005 = zext nneg i32 %bf.clear982 to i64
  %arrayidx1006 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom1005
  %149 = load i32, ptr %arrayidx1006, align 4
  %cmp1007 = icmp ne i32 %149, 9
  %cmp1012.not = icmp eq i32 %bf.clear982, 121
  %or.cond5318 = or i1 %cmp1012.not, %cmp1007
  br i1 %or.cond5318, label %do.cond1380, label %land.lhs.true1014

land.lhs.true1014:                                ; preds = %if.end1002
  %150 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1008), align 8
  %call1015 = call zeroext i8 %150(ptr noundef nonnull %operand.1.lcssa) #7
  %tobool1016.not = icmp eq i8 %call1015, 0
  %spec.select5319 = select i1 %tobool1016.not, i32 0, i32 %badop.1
  br label %do.cond1380

sw.bb1019:                                        ; preds = %do.body
  %bf.load1020 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1021 = and i32 %bf.load1020, 65535
  %cmp1022 = icmp eq i32 %bf.clear1021, 43
  br i1 %cmp1022, label %land.lhs.true1024, label %do.cond1380

land.lhs.true1024:                                ; preds = %sw.bb1019
  %151 = load i32, ptr %arrayidx1026, align 4
  %tobool1027.not = icmp eq i32 %151, 0
  br i1 %tobool1027.not, label %land.lhs.true1028, label %do.cond1380

land.lhs.true1028:                                ; preds = %land.lhs.true1024
  %152 = load ptr, ptr %u1029, align 8
  %bf.load1031 = load i32, ptr %152, align 8
  %trunc5682 = trunc i32 %bf.load1031 to i16
  switch i16 %trunc5682, label %do.cond1380 [
    i16 74, label %if.then1042
    i16 76, label %if.then1042
  ]

if.then1042:                                      ; preds = %land.lhs.true1028, %land.lhs.true1028
  br label %do.cond1380

sw.bb1044:                                        ; preds = %do.body
  %bf.load1045 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1046 = and i32 %bf.load1045, 65535
  %cmp1047 = icmp eq i32 %bf.clear1046, 43
  br i1 %cmp1047, label %land.lhs.true1049, label %do.cond1380

land.lhs.true1049:                                ; preds = %sw.bb1044
  %153 = load i32, ptr %arrayidx1051, align 4
  %tobool1052.not = icmp eq i32 %153, 0
  br i1 %tobool1052.not, label %land.lhs.true1053, label %do.cond1380

land.lhs.true1053:                                ; preds = %land.lhs.true1049
  %154 = load ptr, ptr %u1054, align 8
  %bf.load1056 = load i32, ptr %154, align 8
  %trunc5681 = trunc i32 %bf.load1056 to i16
  switch i16 %trunc5681, label %do.cond1380 [
    i16 75, label %if.then1067
    i16 77, label %if.then1067
  ]

if.then1067:                                      ; preds = %land.lhs.true1053, %land.lhs.true1053
  br label %do.cond1380

sw.bb1069:                                        ; preds = %do.body
  %tobool1070.not = icmp eq i32 %force_reload.4, 0
  br i1 %tobool1070.not, label %if.end1072, label %do.cond1380

if.end1072:                                       ; preds = %sw.bb1069
  %bf.load1073 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1074 = and i32 %bf.load1073, 65535
  %cmp1075 = icmp eq i32 %bf.clear1074, 43
  br i1 %cmp1075, label %land.lhs.true1077, label %do.cond1380

land.lhs.true1077:                                ; preds = %if.end1072
  br i1 %tobool1078.not, label %cond.false1082, label %cond.true1079

cond.true1079:                                    ; preds = %land.lhs.true1077
  %call1080 = call i32 @offsettable_memref_p(ptr noundef nonnull %operand.1.lcssa) #7
  %tobool1081.not = icmp eq i32 %call1080, 0
  br i1 %tobool1081.not, label %land.lhs.true1085.thread, label %do.cond1380

cond.false1082:                                   ; preds = %land.lhs.true1077
  %call1083 = call i32 @offsettable_nonstrict_memref_p(ptr noundef nonnull %operand.1.lcssa) #7
  %tobool1084.not = icmp eq i32 %call1083, 0
  br i1 %tobool1084.not, label %land.lhs.true1085, label %do.cond1380

land.lhs.true1085:                                ; preds = %cond.false1082
  %155 = load ptr, ptr %u1086, align 8
  %bf.load1088 = load i32, ptr %155, align 8
  %bf.clear1089 = and i32 %bf.load1088, 65535
  %cmp1090 = icmp eq i32 %bf.clear1089, 37
  br i1 %cmp1090, label %do.cond1380, label %if.then1103

land.lhs.true1085.thread:                         ; preds = %cond.true1079
  %156 = load ptr, ptr %u10865440, align 8
  %bf.load10885441 = load i32, ptr %156, align 8
  %bf.clear10895442 = and i32 %bf.load10885441, 65535
  %cmp10905443 = icmp eq i32 %bf.clear10895442, 37
  br i1 %cmp10905443, label %lor.lhs.false1095, label %if.then1103

lor.lhs.false1095:                                ; preds = %land.lhs.true1085.thread
  %157 = load ptr, ptr @reg_equiv_address, align 8
  %158 = getelementptr i8, ptr %156, i64 8
  %.val5372 = load i32, ptr %158, align 8
  %idxprom1099 = zext i32 %.val5372 to i64
  %arrayidx1100 = getelementptr inbounds nuw ptr, ptr %157, i64 %idxprom1099
  %159 = load ptr, ptr %arrayidx1100, align 8
  %cmp1101.not = icmp eq ptr %159, null
  br i1 %cmp1101.not, label %if.then1103, label %do.cond1380

if.then1103:                                      ; preds = %lor.lhs.false1095, %land.lhs.true1085.thread, %land.lhs.true1085
  br label %do.cond1380

sw.bb1105:                                        ; preds = %do.body
  %tobool1106.not = icmp eq i32 %force_reload.4, 0
  br i1 %tobool1106.not, label %if.end1108, label %do.cond1380

if.end1108:                                       ; preds = %sw.bb1105
  %bf.load1109 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1110 = and i32 %bf.load1109, 65535
  %cmp1111 = icmp eq i32 %bf.clear1110, 43
  br i1 %cmp1111, label %land.lhs.true1113, label %lor.lhs.false1126

land.lhs.true1113:                                ; preds = %if.end1108
  br i1 %tobool1114.not, label %cond.false1118, label %cond.true1115

cond.true1115:                                    ; preds = %land.lhs.true1113
  %call1116 = call i32 @offsettable_memref_p(ptr noundef nonnull %operand.1.lcssa) #7
  %tobool1117.not = icmp eq i32 %call1116, 0
  br i1 %tobool1117.not, label %lor.lhs.false1121, label %if.then1160

cond.false1118:                                   ; preds = %land.lhs.true1113
  %call1119 = call i32 @offsettable_nonstrict_memref_p(ptr noundef nonnull %operand.1.lcssa) #7
  %tobool1120.not = icmp eq i32 %call1119, 0
  br i1 %tobool1120.not, label %lor.lhs.false1121, label %if.then1160

lor.lhs.false1121:                                ; preds = %cond.false1118, %cond.true1115
  %160 = load i32, ptr %arrayidx1123, align 4
  %cmp1124 = icmp eq i32 %160, 1
  br i1 %cmp1124, label %if.then1160, label %lor.lhs.false1126

lor.lhs.false1126:                                ; preds = %lor.lhs.false1121, %if.end1108
  %bf.load1127 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1128 = and i32 %bf.load1127, 65535
  %cmp1129 = icmp eq i32 %bf.clear1128, 37
  br i1 %cmp1129, label %land.lhs.true1131, label %if.end1161

land.lhs.true1131:                                ; preds = %lor.lhs.false1126
  %operand.1.val5371 = load i32, ptr %121, align 8
  %cmp1133 = icmp ugt i32 %operand.1.val5371, 52
  br i1 %cmp1133, label %land.lhs.true1135, label %if.end1161

land.lhs.true1135:                                ; preds = %land.lhs.true1131
  %161 = load ptr, ptr @reg_renumber, align 8
  %idxprom1137 = zext i32 %operand.1.val5371 to i64
  %arrayidx1138 = getelementptr inbounds nuw i16, ptr %161, i64 %idxprom1137
  %162 = load i16, ptr %arrayidx1138, align 2
  %cmp1140 = icmp slt i16 %162, 0
  br i1 %cmp1140, label %land.lhs.true1142, label %if.end1161

land.lhs.true1142:                                ; preds = %land.lhs.true1135
  %163 = load ptr, ptr @reg_equiv_mem, align 8
  %arrayidx1145 = getelementptr inbounds nuw ptr, ptr %163, i64 %idxprom1137
  %164 = load ptr, ptr %arrayidx1145, align 8
  %cmp1146.not = icmp eq ptr %164, null
  br i1 %cmp1146.not, label %lor.lhs.false1154, label %land.lhs.true1148

land.lhs.true1148:                                ; preds = %land.lhs.true1142
  %call1152 = call i32 @offsettable_memref_p(ptr noundef nonnull %164) #7
  %tobool1153.not = icmp eq i32 %call1152, 0
  br i1 %tobool1153.not, label %lor.lhs.false1154, label %if.then1160

lor.lhs.false1154:                                ; preds = %land.lhs.true1148, %land.lhs.true1142
  %165 = load ptr, ptr @reg_equiv_address, align 8
  %operand.1.val5367 = load i32, ptr %121, align 8
  %idxprom1156 = zext i32 %operand.1.val5367 to i64
  %arrayidx1157 = getelementptr inbounds nuw ptr, ptr %165, i64 %idxprom1156
  %166 = load ptr, ptr %arrayidx1157, align 8
  %cmp1158.not = icmp eq ptr %166, null
  br i1 %cmp1158.not, label %if.end1161, label %if.then1160

if.then1160:                                      ; preds = %lor.lhs.false1154, %land.lhs.true1148, %lor.lhs.false1121, %cond.false1118, %cond.true1115
  br label %if.end1161

if.end1161:                                       ; preds = %if.then1160, %lor.lhs.false1154, %land.lhs.true1135, %land.lhs.true1131, %lor.lhs.false1126
  %win.3 = phi i32 [ 1, %if.then1160 ], [ %win.1, %lor.lhs.false1154 ], [ %win.1, %land.lhs.true1135 ], [ %win.1, %land.lhs.true1131 ], [ %win.1, %lor.lhs.false1126 ]
  %bf.load1162 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1163 = and i32 %bf.load1162, 65535
  %idxprom1164 = zext nneg i32 %bf.clear1163 to i64
  %arrayidx1165 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom1164
  %167 = load i32, ptr %arrayidx1165, align 4
  %cmp1166 = icmp ne i32 %167, 9
  %cmp1171.not = icmp eq i32 %bf.clear1163, 121
  %or.cond5320 = or i1 %cmp1166, %cmp1171.not
  br i1 %or.cond5320, label %lor.lhs.false1176, label %land.lhs.true1173

land.lhs.true1173:                                ; preds = %if.end1161
  %168 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1008), align 8
  %call1174 = call zeroext i8 %168(ptr noundef nonnull %operand.1.lcssa) #7
  %tobool1175.not = icmp eq i8 %call1174, 0
  br i1 %tobool1175.not, label %if.then1181, label %lor.lhs.false1176

lor.lhs.false1176:                                ; preds = %land.lhs.true1173, %if.end1161
  %bf.load1177 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1178 = and i32 %bf.load1177, 65535
  %cmp1179 = icmp eq i32 %bf.clear1178, 43
  br i1 %cmp1179, label %if.then1181, label %do.cond1380

if.then1181:                                      ; preds = %lor.lhs.false1176, %land.lhs.true1173
  br label %do.cond1380

sw.bb1183:                                        ; preds = %do.body
  br label %do.cond1380

sw.bb1184:                                        ; preds = %do.body, %do.body
  %bf.load1185 = load i32, ptr %operand.1.lcssa, align 8
  %trunc5680 = trunc i32 %bf.load1185 to i16
  switch i16 %trunc5680, label %do.cond1380 [
    i16 32, label %if.then1203
    i16 33, label %land.lhs.true1194
  ]

land.lhs.true1194:                                ; preds = %sw.bb1184
  %bf.lshr1196 = lshr i32 %bf.load1185, 16
  %bf.clear1197 = and i32 %bf.lshr1196, 255
  %idxprom1198 = zext nneg i32 %bf.clear1197 to i64
  %arrayidx1199 = getelementptr inbounds nuw i8, ptr @mode_class, i64 %idxprom1198
  %169 = load i8, ptr %arrayidx1199, align 1
  %cmp1201 = icmp eq i8 %169, 17
  br i1 %cmp1201, label %if.then1203, label %do.cond1380

if.then1203:                                      ; preds = %land.lhs.true1194, %sw.bb1184
  br label %do.cond1380

sw.bb1205:                                        ; preds = %do.body, %do.body
  %bf.load1206 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1207 = and i32 %bf.load1206, 65535
  %cmp1208 = icmp eq i32 %bf.clear1207, 32
  br i1 %cmp1208, label %land.lhs.true1210, label %do.cond1380

land.lhs.true1210:                                ; preds = %sw.bb1205
  %call1211 = call i32 @lookup_constraint(ptr noundef nonnull %p622.0) #7
  %call1212 = call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %operand.1.lcssa, i32 noundef %call1211) #7
  %tobool1214.not = icmp eq i8 %call1212, 0
  %spec.select5321 = select i1 %tobool1214.not, i32 %win.1, i32 1
  br label %do.cond1380

sw.bb1217:                                        ; preds = %do.body
  %bf.load1218 = load i32, ptr %operand.1.lcssa, align 8
  %trunc5679 = trunc i32 %bf.load1218 to i16
  switch i16 %trunc5679, label %sw.bb1235 [
    i16 30, label %do.cond1380
    i16 32, label %land.lhs.true1227
  ]

land.lhs.true1227:                                ; preds = %sw.bb1217
  %170 = and i32 %bf.load1218, 16711680
  %cmp1231 = icmp eq i32 %170, 0
  br i1 %cmp1231, label %do.cond1380, label %sw.bb1235

sw.bb1235:                                        ; preds = %land.lhs.true1227, %sw.bb1217, %do.body
  %bf.load1236 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1237 = and i32 %bf.load1236, 65535
  %idxprom1238 = zext nneg i32 %bf.clear1237 to i64
  %arrayidx1239 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom1238
  %171 = load i32, ptr %arrayidx1239, align 4
  %cmp1240 = icmp eq i32 %171, 9
  br i1 %cmp1240, label %land.lhs.true1242, label %do.cond1380

land.lhs.true1242:                                ; preds = %sw.bb1235
  %172 = load i32, ptr @flag_pic, align 4
  %tobool1243.not = icmp eq i32 %172, 0
  br i1 %tobool1243.not, label %if.then1248, label %lor.lhs.false1244

lor.lhs.false1244:                                ; preds = %land.lhs.true1242
  %call1245 = call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %operand.1.lcssa) #7
  %tobool1247.not = icmp eq i8 %call1245, 0
  br i1 %tobool1247.not, label %do.cond1380, label %if.then1248

if.then1248:                                      ; preds = %lor.lhs.false1244, %land.lhs.true1242
  br label %do.cond1380

sw.bb1250:                                        ; preds = %do.body
  %bf.load1251 = load i32, ptr %operand.1.lcssa, align 8
  %trunc5678 = trunc i32 %bf.load1251 to i16
  switch i16 %trunc5678, label %do.cond1380 [
    i16 30, label %if.then1266
    i16 32, label %land.lhs.true1260
  ]

land.lhs.true1260:                                ; preds = %sw.bb1250
  %173 = and i32 %bf.load1251, 16711680
  %cmp1264 = icmp eq i32 %173, 0
  br i1 %cmp1264, label %if.then1266, label %do.cond1380

if.then1266:                                      ; preds = %land.lhs.true1260, %sw.bb1250
  br label %do.cond1380

sw.bb1268:                                        ; preds = %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body
  %bf.load1269 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1270 = and i32 %bf.load1269, 65535
  %cmp1271 = icmp eq i32 %bf.clear1270, 30
  br i1 %cmp1271, label %land.lhs.true1273, label %do.cond1380

land.lhs.true1273:                                ; preds = %sw.bb1268
  %174 = load i64, ptr %u1274, align 8
  %call1276 = call i32 @lookup_constraint(ptr noundef nonnull %p622.0) #7
  %call1277 = call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %174, i32 noundef %call1276) #7
  %tobool1279.not = icmp eq i8 %call1277, 0
  %spec.select5322 = select i1 %tobool1279.not, i32 %win.1, i32 1
  br label %do.cond1380

sw.bb1282:                                        ; preds = %do.body
  br label %do.cond1380

sw.bb1283:                                        ; preds = %do.body
  %tobool1284.not = icmp eq i32 %force_reload.4, 0
  br i1 %tobool1284.not, label %land.lhs.true1285, label %sw.bb1326

land.lhs.true1285:                                ; preds = %sw.bb1283
  %bf.load1286 = load i32, ptr %operand.1.lcssa, align 8
  %trunc5677 = trunc i32 %bf.load1286 to i16
  switch i16 %trunc5677, label %land.lhs.true1295 [
    i16 49, label %sw.bb1326
    i16 38, label %sw.bb1326
  ]

land.lhs.true1295:                                ; preds = %land.lhs.true1285
  %bf.clear1287 = and i32 %bf.load1286, 65535
  %idxprom1298 = zext nneg i32 %bf.clear1287 to i64
  %arrayidx1299 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom1298
  %175 = load i32, ptr %arrayidx1299, align 4
  %cmp1300 = icmp eq i32 %175, 9
  %176 = load i32, ptr @flag_pic, align 4
  %tobool1303 = icmp ne i32 %176, 0
  %or.cond4173 = select i1 %cmp1300, i1 %tobool1303, i1 false
  br i1 %or.cond4173, label %lor.lhs.false1304, label %land.lhs.true1308

lor.lhs.false1304:                                ; preds = %land.lhs.true1295
  %call1305 = call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %operand.1.lcssa) #7
  %tobool1307.not = icmp eq i8 %call1305, 0
  br i1 %tobool1307.not, label %sw.bb1326, label %land.lhs.true1308

land.lhs.true1308:                                ; preds = %lor.lhs.false1304, %land.lhs.true1295
  %bf.load1309 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1310 = and i32 %bf.load1309, 65535
  %cmp1311 = icmp eq i32 %bf.clear1310, 37
  br i1 %cmp1311, label %lor.lhs.false1313, label %if.then1324

lor.lhs.false1313:                                ; preds = %land.lhs.true1308
  %operand.1.val5366 = load i32, ptr %120, align 8
  %cmp1315 = icmp ugt i32 %operand.1.val5366, 52
  br i1 %cmp1315, label %land.lhs.true1317, label %sw.bb1326

land.lhs.true1317:                                ; preds = %lor.lhs.false1313
  %177 = load ptr, ptr @reg_renumber, align 8
  %idxprom1319 = zext i32 %operand.1.val5366 to i64
  %arrayidx1320 = getelementptr inbounds nuw i16, ptr %177, i64 %idxprom1319
  %178 = load i16, ptr %arrayidx1320, align 2
  %cmp1322 = icmp slt i16 %178, 0
  br i1 %cmp1322, label %if.then1324, label %sw.bb1326

if.then1324:                                      ; preds = %land.lhs.true1317, %land.lhs.true1308
  br label %sw.bb1326

sw.bb1326:                                        ; preds = %if.then1324, %land.lhs.true1317, %lor.lhs.false1313, %lor.lhs.false1304, %land.lhs.true1285, %land.lhs.true1285, %sw.bb1283, %do.body
  %win.4 = phi i32 [ %win.1, %sw.bb1283 ], [ 1, %if.then1324 ], [ %win.1, %land.lhs.true1317 ], [ %win.1, %lor.lhs.false1313 ], [ %win.1, %lor.lhs.false1304 ], [ %win.1, %land.lhs.true1285 ], [ %win.1, %do.body ], [ %win.1, %land.lhs.true1285 ]
  %179 = load i32, ptr %arrayidx760, align 4
  %idxprom1329 = zext i32 %179 to i64
  %arrayidx1330 = getelementptr inbounds nuw [27 x i32], ptr @reg_class_subunion, i64 %idxprom1329
  %arrayidx1331 = getelementptr inbounds nuw i8, ptr %arrayidx1330, i64 52
  br label %reg1355

sw.default:                                       ; preds = %do.body
  %call1334 = call i32 @lookup_constraint(ptr noundef nonnull %p622.0) #7
  %call1335 = call i32 @regclass_for_constraint(i32 noundef %call1334) #7
  %cmp1336 = icmp eq i32 %call1335, 0
  br i1 %cmp1336, label %if.then1338, label %if.end1344

if.then1338:                                      ; preds = %sw.default
  %call1339 = call i32 @lookup_constraint(ptr noundef nonnull %p622.0) #7
  %call1340 = call zeroext i8 @constraint_satisfied_p(ptr noundef %operand.1.lcssa, i32 noundef %call1339) #7
  %tobool1341.not = icmp eq i8 %call1340, 0
  %spec.select5323 = select i1 %tobool1341.not, i32 %win.1, i32 1
  br label %do.cond1380

if.end1344:                                       ; preds = %sw.default
  %180 = load i32, ptr %arrayidx760, align 4
  %idxprom1347 = zext i32 %180 to i64
  %arrayidx1348 = getelementptr inbounds nuw [27 x i32], ptr @reg_class_subunion, i64 %idxprom1347
  %call1349 = call i32 @lookup_constraint(ptr noundef nonnull %p622.0) #7
  %call1350 = call i32 @regclass_for_constraint(i32 noundef %call1349) #7
  %idxprom1351 = sext i32 %call1350 to i64
  %arrayidx1352 = getelementptr inbounds i32, ptr %arrayidx1348, i64 %idxprom1351
  br label %reg1355

reg1355:                                          ; preds = %if.end1344, %sw.bb1326
  %storemerge5296.in = phi ptr [ %arrayidx1331, %sw.bb1326 ], [ %arrayidx1352, %if.end1344 ]
  %win.5 = phi i32 [ %win.4, %sw.bb1326 ], [ %win.1, %if.end1344 ]
  %storemerge5296 = load i32, ptr %storemerge5296.in, align 4
  store i32 %storemerge5296, ptr %arrayidx760, align 4
  %bf.load1356 = load i32, ptr %operand.1.lcssa, align 8
  %181 = and i32 %bf.load1356, 16711680
  %cmp1359 = icmp eq i32 %181, 65536
  br i1 %cmp1359, label %do.cond1380, label %if.end1362

if.end1362:                                       ; preds = %reg1355
  %bf.clear1364 = and i32 %bf.load1356, 65535
  %cmp1365 = icmp eq i32 %bf.clear1364, 37
  br i1 %cmp1365, label %land.lhs.true1367, label %do.cond1380

land.lhs.true1367:                                ; preds = %if.end1362
  %182 = load ptr, ptr %arrayidx628, align 8
  %bf.load1372 = load i32, ptr %182, align 8
  %bf.lshr1373 = lshr i32 %bf.load1372, 16
  %bf.clear1374 = and i32 %bf.lshr1373, 255
  %call1375 = call i32 @reg_fits_class_p(ptr noundef nonnull %operand.1.lcssa, i32 noundef %storemerge5296, i32 noundef %offset.0.lcssa, i32 noundef %bf.clear1374) #7
  %tobool1376.not = icmp eq i32 %call1375, 0
  %spec.select5324 = select i1 %tobool1376.not, i32 %win.5, i32 1
  br label %do.cond1380

do.cond1380.thread.loopexit:                      ; preds = %do.body
  %losers.1.lcssa = phi i32 [ %losers.1, %do.body ]
  %bad.1.lcssa = phi i32 [ %bad.1, %do.body ]
  %reject.1.lcssa = phi i32 [ %reject.1, %do.body ]
  %p622.0.lcssa = phi ptr [ %p622.0, %do.body ]
  %win.1.lcssa = phi i32 [ %win.1, %do.body ]
  %did_match.0.lcssa = phi i32 [ %did_match.0, %do.body ]
  %badop.1.lcssa = phi i32 [ %badop.1, %do.body ]
  %winreg.0.lcssa = phi i32 [ %winreg.0, %do.body ]
  %this_earlyclobber.1.lcssa = phi i32 [ %this_earlyclobber.1, %do.body ]
  %force_reload.4.lcssa = phi i32 [ %force_reload.4, %do.body ]
  %offmemok.0.lcssa = phi i8 [ %offmemok.0, %do.body ]
  %constmemok.0.lcssa = phi i32 [ %constmemok.0, %do.body ]
  %earlyclobber.0.lcssa = phi i8 [ %earlyclobber.0, %do.body ]
  br label %do.cond1380.thread

do.cond1380.thread.loopexit5936:                  ; preds = %do.body
  %losers.1.lcssa5992 = phi i32 [ %losers.1, %do.body ]
  %bad.1.lcssa5989 = phi i32 [ %bad.1, %do.body ]
  %reject.1.lcssa5986 = phi i32 [ %reject.1, %do.body ]
  %p622.0.lcssa5983 = phi ptr [ %p622.0, %do.body ]
  %win.1.lcssa5980 = phi i32 [ %win.1, %do.body ]
  %did_match.0.lcssa5977 = phi i32 [ %did_match.0, %do.body ]
  %badop.1.lcssa5974 = phi i32 [ %badop.1, %do.body ]
  %winreg.0.lcssa5971 = phi i32 [ %winreg.0, %do.body ]
  %this_earlyclobber.1.lcssa5968 = phi i32 [ %this_earlyclobber.1, %do.body ]
  %force_reload.4.lcssa5965 = phi i32 [ %force_reload.4, %do.body ]
  %offmemok.0.lcssa5962 = phi i8 [ %offmemok.0, %do.body ]
  %constmemok.0.lcssa5959 = phi i32 [ %constmemok.0, %do.body ]
  %earlyclobber.0.lcssa5956 = phi i8 [ %earlyclobber.0, %do.body ]
  %..i5391.lcssa5954 = phi i64 [ %..i5391, %do.body ]
  br label %do.cond1380.thread

do.cond1380.thread:                               ; preds = %do.cond1380.thread.loopexit5936, %do.cond1380.thread.loopexit
  %losers.15994 = phi i32 [ %losers.1.lcssa, %do.cond1380.thread.loopexit ], [ %losers.1.lcssa5992, %do.cond1380.thread.loopexit5936 ]
  %bad.15991 = phi i32 [ %bad.1.lcssa, %do.cond1380.thread.loopexit ], [ %bad.1.lcssa5989, %do.cond1380.thread.loopexit5936 ]
  %reject.15988 = phi i32 [ %reject.1.lcssa, %do.cond1380.thread.loopexit ], [ %reject.1.lcssa5986, %do.cond1380.thread.loopexit5936 ]
  %p622.05985 = phi ptr [ %p622.0.lcssa, %do.cond1380.thread.loopexit ], [ %p622.0.lcssa5983, %do.cond1380.thread.loopexit5936 ]
  %win.15982 = phi i32 [ %win.1.lcssa, %do.cond1380.thread.loopexit ], [ %win.1.lcssa5980, %do.cond1380.thread.loopexit5936 ]
  %did_match.05979 = phi i32 [ %did_match.0.lcssa, %do.cond1380.thread.loopexit ], [ %did_match.0.lcssa5977, %do.cond1380.thread.loopexit5936 ]
  %badop.15976 = phi i32 [ %badop.1.lcssa, %do.cond1380.thread.loopexit ], [ %badop.1.lcssa5974, %do.cond1380.thread.loopexit5936 ]
  %winreg.05973 = phi i32 [ %winreg.0.lcssa, %do.cond1380.thread.loopexit ], [ %winreg.0.lcssa5971, %do.cond1380.thread.loopexit5936 ]
  %this_earlyclobber.15970 = phi i32 [ %this_earlyclobber.1.lcssa, %do.cond1380.thread.loopexit ], [ %this_earlyclobber.1.lcssa5968, %do.cond1380.thread.loopexit5936 ]
  %force_reload.45967 = phi i32 [ %force_reload.4.lcssa, %do.cond1380.thread.loopexit ], [ %force_reload.4.lcssa5965, %do.cond1380.thread.loopexit5936 ]
  %offmemok.05964 = phi i8 [ %offmemok.0.lcssa, %do.cond1380.thread.loopexit ], [ %offmemok.0.lcssa5962, %do.cond1380.thread.loopexit5936 ]
  %constmemok.05961 = phi i32 [ %constmemok.0.lcssa, %do.cond1380.thread.loopexit ], [ %constmemok.0.lcssa5959, %do.cond1380.thread.loopexit5936 ]
  %earlyclobber.05958 = phi i8 [ %earlyclobber.0.lcssa, %do.cond1380.thread.loopexit ], [ %earlyclobber.0.lcssa5956, %do.cond1380.thread.loopexit5936 ]
  %len.0.ph = phi i64 [ 0, %do.cond1380.thread.loopexit ], [ %..i5391.lcssa5954, %do.cond1380.thread.loopexit5936 ]
  %add.ptr13815459 = getelementptr inbounds nuw i8, ptr %p622.05985, i64 %len.0.ph
  br label %do.end1383

do.cond1380.loopexit:                             ; preds = %do.body791, %do.body791
  %incdec.ptr.lcssa = phi ptr [ %incdec.ptr, %do.body791 ], [ %incdec.ptr, %do.body791 ]
  br label %do.cond1380

do.cond1380.loopexit5935:                         ; preds = %for.body960
  %spec.select5317.lcssa = phi i32 [ %spec.select5317, %for.body960 ]
  br label %do.cond1380

do.cond1380:                                      ; preds = %do.cond1380.loopexit5935, %do.cond1380.loopexit, %land.lhs.true1367, %if.end1362, %reg1355, %if.then1338, %sw.bb1282, %land.lhs.true1273, %sw.bb1268, %if.then1266, %land.lhs.true1260, %sw.bb1250, %if.then1248, %lor.lhs.false1244, %sw.bb1235, %land.lhs.true1227, %sw.bb1217, %land.lhs.true1210, %sw.bb1205, %if.then1203, %land.lhs.true1194, %sw.bb1184, %sw.bb1183, %if.then1181, %lor.lhs.false1176, %sw.bb1105, %if.then1103, %lor.lhs.false1095, %land.lhs.true1085, %cond.false1082, %cond.true1079, %if.end1072, %sw.bb1069, %if.then1067, %land.lhs.true1053, %land.lhs.true1049, %sw.bb1044, %if.then1042, %land.lhs.true1028, %land.lhs.true1024, %sw.bb1019, %land.lhs.true1014, %if.end1002, %sw.bb977, %sw.bb973, %for.cond957.preheader, %if.end948, %sw.bb789, %sw.bb787, %do.body, %do.body, %do.body, %do.body
  %losers.5 = phi i32 [ %losers.1, %reg1355 ], [ %losers.1, %if.end1362 ], [ %losers.1, %do.body ], [ %losers.1, %do.body ], [ %losers.1, %do.body ], [ %losers.1, %do.body ], [ %losers.1, %sw.bb787 ], [ %losers.1, %sw.bb789 ], [ %losers.4, %if.end948 ], [ %losers.1, %sw.bb973 ], [ %losers.1, %sw.bb977 ], [ %losers.1, %land.lhs.true1024 ], [ %losers.1, %if.then1042 ], [ %losers.1, %sw.bb1019 ], [ %losers.1, %land.lhs.true1049 ], [ %losers.1, %if.then1067 ], [ %losers.1, %sw.bb1044 ], [ %losers.1, %sw.bb1069 ], [ %losers.1, %cond.true1079 ], [ %losers.1, %lor.lhs.false1095 ], [ %losers.1, %if.then1103 ], [ %losers.1, %cond.false1082 ], [ %losers.1, %if.end1072 ], [ %losers.1, %sw.bb1105 ], [ %losers.1, %sw.bb1183 ], [ %losers.1, %if.then1203 ], [ %losers.1, %land.lhs.true1194 ], [ %losers.1, %sw.bb1205 ], [ %losers.1, %sw.bb1217 ], [ %losers.1, %land.lhs.true1227 ], [ %losers.1, %if.then1248 ], [ %losers.1, %lor.lhs.false1244 ], [ %losers.1, %sw.bb1235 ], [ %losers.1, %if.then1266 ], [ %losers.1, %land.lhs.true1260 ], [ %losers.1, %sw.bb1268 ], [ %losers.1, %sw.bb1282 ], [ %losers.1, %land.lhs.true1014 ], [ %losers.1, %if.end1002 ], [ %losers.1, %land.lhs.true1028 ], [ %losers.1, %land.lhs.true1053 ], [ %losers.1, %if.then1181 ], [ %losers.1, %lor.lhs.false1176 ], [ %losers.1, %sw.bb1184 ], [ %losers.1, %land.lhs.true1210 ], [ %losers.1, %sw.bb1250 ], [ %losers.1, %land.lhs.true1273 ], [ %losers.1, %if.then1338 ], [ %losers.1, %land.lhs.true1367 ], [ %losers.1, %land.lhs.true1085 ], [ %losers.4, %for.cond957.preheader ], [ %losers.1, %do.cond1380.loopexit ], [ %losers.4, %do.cond1380.loopexit5935 ]
  %bad.5 = phi i32 [ %bad.1, %reg1355 ], [ %bad.1, %if.end1362 ], [ %bad.1, %do.body ], [ %bad.1, %do.body ], [ %bad.1, %do.body ], [ %bad.1, %do.body ], [ %bad.1, %sw.bb787 ], [ %bad.1, %sw.bb789 ], [ %bad.4, %if.end948 ], [ %bad.1, %sw.bb973 ], [ %bad.1, %sw.bb977 ], [ %bad.1, %land.lhs.true1024 ], [ %bad.1, %if.then1042 ], [ %bad.1, %sw.bb1019 ], [ %bad.1, %land.lhs.true1049 ], [ %bad.1, %if.then1067 ], [ %bad.1, %sw.bb1044 ], [ %bad.1, %sw.bb1069 ], [ %bad.1, %cond.true1079 ], [ %bad.1, %lor.lhs.false1095 ], [ %bad.1, %if.then1103 ], [ %bad.1, %cond.false1082 ], [ %bad.1, %if.end1072 ], [ %bad.1, %sw.bb1105 ], [ %bad.1, %sw.bb1183 ], [ %bad.1, %if.then1203 ], [ %bad.1, %land.lhs.true1194 ], [ %bad.1, %sw.bb1205 ], [ %bad.1, %sw.bb1217 ], [ %bad.1, %land.lhs.true1227 ], [ %bad.1, %if.then1248 ], [ %bad.1, %lor.lhs.false1244 ], [ %bad.1, %sw.bb1235 ], [ %bad.1, %if.then1266 ], [ %bad.1, %land.lhs.true1260 ], [ %bad.1, %sw.bb1268 ], [ %bad.1, %sw.bb1282 ], [ %bad.1, %land.lhs.true1014 ], [ %bad.1, %if.end1002 ], [ %bad.1, %land.lhs.true1028 ], [ %bad.1, %land.lhs.true1053 ], [ %bad.1, %if.then1181 ], [ %bad.1, %lor.lhs.false1176 ], [ %bad.1, %sw.bb1184 ], [ %bad.1, %land.lhs.true1210 ], [ %bad.1, %sw.bb1250 ], [ %bad.1, %land.lhs.true1273 ], [ %bad.1, %if.then1338 ], [ %bad.1, %land.lhs.true1367 ], [ %bad.1, %land.lhs.true1085 ], [ %bad.4, %for.cond957.preheader ], [ %bad.1, %do.cond1380.loopexit ], [ %bad.4, %do.cond1380.loopexit5935 ]
  %reject.2 = phi i32 [ %reject.1, %reg1355 ], [ %reject.1, %if.end1362 ], [ %reject.1, %do.body ], [ %reject.1, %do.body ], [ %reject.1, %do.body ], [ %reject.1, %do.body ], [ %add788, %sw.bb787 ], [ 600, %sw.bb789 ], [ %reject.1, %if.end948 ], [ %reject.1, %sw.bb973 ], [ %reject.1, %sw.bb977 ], [ %reject.1, %land.lhs.true1024 ], [ %reject.1, %if.then1042 ], [ %reject.1, %sw.bb1019 ], [ %reject.1, %land.lhs.true1049 ], [ %reject.1, %if.then1067 ], [ %reject.1, %sw.bb1044 ], [ %reject.1, %sw.bb1069 ], [ %reject.1, %cond.true1079 ], [ %reject.1, %lor.lhs.false1095 ], [ %reject.1, %if.then1103 ], [ %reject.1, %cond.false1082 ], [ %reject.1, %if.end1072 ], [ %reject.1, %sw.bb1105 ], [ %reject.1, %sw.bb1183 ], [ %reject.1, %if.then1203 ], [ %reject.1, %land.lhs.true1194 ], [ %reject.1, %sw.bb1205 ], [ %reject.1, %sw.bb1217 ], [ %reject.1, %land.lhs.true1227 ], [ %reject.1, %if.then1248 ], [ %reject.1, %lor.lhs.false1244 ], [ %reject.1, %sw.bb1235 ], [ %reject.1, %if.then1266 ], [ %reject.1, %land.lhs.true1260 ], [ %reject.1, %sw.bb1268 ], [ %reject.1, %sw.bb1282 ], [ %reject.1, %land.lhs.true1014 ], [ %reject.1, %if.end1002 ], [ %reject.1, %land.lhs.true1028 ], [ %reject.1, %land.lhs.true1053 ], [ %reject.1, %if.then1181 ], [ %reject.1, %lor.lhs.false1176 ], [ %reject.1, %sw.bb1184 ], [ %reject.1, %land.lhs.true1210 ], [ %reject.1, %sw.bb1250 ], [ %reject.1, %land.lhs.true1273 ], [ %reject.1, %if.then1338 ], [ %reject.1, %land.lhs.true1367 ], [ %reject.1, %land.lhs.true1085 ], [ %reject.1, %for.cond957.preheader ], [ %reject.1, %do.cond1380.loopexit ], [ %reject.1, %do.cond1380.loopexit5935 ]
  %p622.2 = phi ptr [ %p622.0, %reg1355 ], [ %p622.0, %if.end1362 ], [ %p622.0, %do.body ], [ %p622.0, %do.body ], [ %p622.0, %do.body ], [ %p622.0, %do.body ], [ %p622.0, %sw.bb787 ], [ %p622.0, %sw.bb789 ], [ %127, %if.end948 ], [ %p622.0, %sw.bb973 ], [ %p622.0, %sw.bb977 ], [ %p622.0, %land.lhs.true1024 ], [ %p622.0, %if.then1042 ], [ %p622.0, %sw.bb1019 ], [ %p622.0, %land.lhs.true1049 ], [ %p622.0, %if.then1067 ], [ %p622.0, %sw.bb1044 ], [ %p622.0, %sw.bb1069 ], [ %p622.0, %cond.true1079 ], [ %p622.0, %lor.lhs.false1095 ], [ %p622.0, %if.then1103 ], [ %p622.0, %cond.false1082 ], [ %p622.0, %if.end1072 ], [ %p622.0, %sw.bb1105 ], [ %p622.0, %sw.bb1183 ], [ %p622.0, %if.then1203 ], [ %p622.0, %land.lhs.true1194 ], [ %p622.0, %sw.bb1205 ], [ %p622.0, %sw.bb1217 ], [ %p622.0, %land.lhs.true1227 ], [ %p622.0, %if.then1248 ], [ %p622.0, %lor.lhs.false1244 ], [ %p622.0, %sw.bb1235 ], [ %p622.0, %if.then1266 ], [ %p622.0, %land.lhs.true1260 ], [ %p622.0, %sw.bb1268 ], [ %p622.0, %sw.bb1282 ], [ %p622.0, %land.lhs.true1014 ], [ %p622.0, %if.end1002 ], [ %p622.0, %land.lhs.true1028 ], [ %p622.0, %land.lhs.true1053 ], [ %p622.0, %if.then1181 ], [ %p622.0, %lor.lhs.false1176 ], [ %p622.0, %sw.bb1184 ], [ %p622.0, %land.lhs.true1210 ], [ %p622.0, %sw.bb1250 ], [ %p622.0, %land.lhs.true1273 ], [ %p622.0, %if.then1338 ], [ %p622.0, %land.lhs.true1367 ], [ %p622.0, %land.lhs.true1085 ], [ %127, %for.cond957.preheader ], [ %incdec.ptr.lcssa, %do.cond1380.loopexit ], [ %127, %do.cond1380.loopexit5935 ]
  %len.0 = phi i64 [ %..i5391, %reg1355 ], [ %..i5391, %if.end1362 ], [ %..i5391, %do.body ], [ %..i5391, %do.body ], [ %..i5391, %do.body ], [ %..i5391, %do.body ], [ %..i5391, %sw.bb787 ], [ %..i5391, %sw.bb789 ], [ 0, %if.end948 ], [ %..i5391, %sw.bb973 ], [ %..i5391, %sw.bb977 ], [ %..i5391, %land.lhs.true1024 ], [ %..i5391, %if.then1042 ], [ %..i5391, %sw.bb1019 ], [ %..i5391, %land.lhs.true1049 ], [ %..i5391, %if.then1067 ], [ %..i5391, %sw.bb1044 ], [ %..i5391, %sw.bb1069 ], [ %..i5391, %cond.true1079 ], [ %..i5391, %lor.lhs.false1095 ], [ %..i5391, %if.then1103 ], [ %..i5391, %cond.false1082 ], [ %..i5391, %if.end1072 ], [ %..i5391, %sw.bb1105 ], [ %..i5391, %sw.bb1183 ], [ %..i5391, %if.then1203 ], [ %..i5391, %land.lhs.true1194 ], [ %..i5391, %sw.bb1205 ], [ %..i5391, %sw.bb1217 ], [ %..i5391, %land.lhs.true1227 ], [ %..i5391, %if.then1248 ], [ %..i5391, %lor.lhs.false1244 ], [ %..i5391, %sw.bb1235 ], [ %..i5391, %if.then1266 ], [ %..i5391, %land.lhs.true1260 ], [ %..i5391, %sw.bb1268 ], [ %..i5391, %sw.bb1282 ], [ %..i5391, %land.lhs.true1014 ], [ %..i5391, %if.end1002 ], [ %..i5391, %land.lhs.true1028 ], [ %..i5391, %land.lhs.true1053 ], [ %..i5391, %if.then1181 ], [ %..i5391, %lor.lhs.false1176 ], [ %..i5391, %sw.bb1184 ], [ %..i5391, %land.lhs.true1210 ], [ %..i5391, %sw.bb1250 ], [ %..i5391, %land.lhs.true1273 ], [ %..i5391, %if.then1338 ], [ %..i5391, %land.lhs.true1367 ], [ %..i5391, %land.lhs.true1085 ], [ 0, %for.cond957.preheader ], [ 0, %do.cond1380.loopexit ], [ 0, %do.cond1380.loopexit5935 ]
  %win.6 = phi i32 [ %win.5, %reg1355 ], [ %win.5, %if.end1362 ], [ %win.1, %do.body ], [ %win.1, %do.body ], [ %win.1, %do.body ], [ %win.1, %do.body ], [ %win.1, %sw.bb787 ], [ %win.1, %sw.bb789 ], [ %win.1, %if.end948 ], [ 1, %sw.bb973 ], [ %win.1, %sw.bb977 ], [ %win.1, %land.lhs.true1024 ], [ 1, %if.then1042 ], [ %win.1, %sw.bb1019 ], [ %win.1, %land.lhs.true1049 ], [ 1, %if.then1067 ], [ %win.1, %sw.bb1044 ], [ %win.1, %sw.bb1069 ], [ %win.1, %cond.true1079 ], [ %win.1, %lor.lhs.false1095 ], [ 1, %if.then1103 ], [ %win.1, %cond.false1082 ], [ %win.1, %if.end1072 ], [ %win.1, %sw.bb1105 ], [ %win.1, %sw.bb1183 ], [ 1, %if.then1203 ], [ %win.1, %land.lhs.true1194 ], [ %win.1, %sw.bb1205 ], [ %win.1, %sw.bb1217 ], [ %win.1, %land.lhs.true1227 ], [ 1, %if.then1248 ], [ %win.1, %lor.lhs.false1244 ], [ %win.1, %sw.bb1235 ], [ 1, %if.then1266 ], [ %win.1, %land.lhs.true1260 ], [ %win.1, %sw.bb1268 ], [ 1, %sw.bb1282 ], [ %win.2, %land.lhs.true1014 ], [ %win.2, %if.end1002 ], [ %win.1, %land.lhs.true1028 ], [ %win.1, %land.lhs.true1053 ], [ %win.3, %if.then1181 ], [ %win.3, %lor.lhs.false1176 ], [ %win.1, %sw.bb1184 ], [ %spec.select5321, %land.lhs.true1210 ], [ %win.1, %sw.bb1250 ], [ %spec.select5322, %land.lhs.true1273 ], [ %spec.select5323, %if.then1338 ], [ %spec.select5324, %land.lhs.true1367 ], [ %win.1, %land.lhs.true1085 ], [ %win.1, %for.cond957.preheader ], [ %win.1, %do.cond1380.loopexit ], [ %win.1, %do.cond1380.loopexit5935 ]
  %did_match.2 = phi i32 [ %did_match.0, %reg1355 ], [ %did_match.0, %if.end1362 ], [ %did_match.0, %do.body ], [ %did_match.0, %do.body ], [ %did_match.0, %do.body ], [ %did_match.0, %do.body ], [ %did_match.0, %sw.bb787 ], [ %did_match.0, %sw.bb789 ], [ %did_match.1, %if.end948 ], [ %did_match.0, %sw.bb973 ], [ %did_match.0, %sw.bb977 ], [ %did_match.0, %land.lhs.true1024 ], [ %did_match.0, %if.then1042 ], [ %did_match.0, %sw.bb1019 ], [ %did_match.0, %land.lhs.true1049 ], [ %did_match.0, %if.then1067 ], [ %did_match.0, %sw.bb1044 ], [ %did_match.0, %sw.bb1069 ], [ %did_match.0, %cond.true1079 ], [ %did_match.0, %lor.lhs.false1095 ], [ %did_match.0, %if.then1103 ], [ %did_match.0, %cond.false1082 ], [ %did_match.0, %if.end1072 ], [ %did_match.0, %sw.bb1105 ], [ %did_match.0, %sw.bb1183 ], [ %did_match.0, %if.then1203 ], [ %did_match.0, %land.lhs.true1194 ], [ %did_match.0, %sw.bb1205 ], [ %did_match.0, %sw.bb1217 ], [ %did_match.0, %land.lhs.true1227 ], [ %did_match.0, %if.then1248 ], [ %did_match.0, %lor.lhs.false1244 ], [ %did_match.0, %sw.bb1235 ], [ %did_match.0, %if.then1266 ], [ %did_match.0, %land.lhs.true1260 ], [ %did_match.0, %sw.bb1268 ], [ %did_match.0, %sw.bb1282 ], [ %did_match.0, %land.lhs.true1014 ], [ %did_match.0, %if.end1002 ], [ %did_match.0, %land.lhs.true1028 ], [ %did_match.0, %land.lhs.true1053 ], [ %did_match.0, %if.then1181 ], [ %did_match.0, %lor.lhs.false1176 ], [ %did_match.0, %sw.bb1184 ], [ %did_match.0, %land.lhs.true1210 ], [ %did_match.0, %sw.bb1250 ], [ %did_match.0, %land.lhs.true1273 ], [ %did_match.0, %if.then1338 ], [ %did_match.0, %land.lhs.true1367 ], [ %did_match.0, %land.lhs.true1085 ], [ %did_match.1, %for.cond957.preheader ], [ %did_match.0, %do.cond1380.loopexit ], [ %did_match.1, %do.cond1380.loopexit5935 ]
  %badop.6 = phi i32 [ %badop.1, %reg1355 ], [ %badop.1, %if.end1362 ], [ %badop.1, %do.body ], [ %badop.1, %do.body ], [ %badop.1, %do.body ], [ %badop.1, %do.body ], [ %badop.1, %sw.bb787 ], [ %badop.1, %sw.bb789 ], [ 0, %if.end948 ], [ 0, %sw.bb973 ], [ %badop.1, %sw.bb977 ], [ %badop.1, %land.lhs.true1024 ], [ %badop.1, %if.then1042 ], [ %badop.1, %sw.bb1019 ], [ %badop.1, %land.lhs.true1049 ], [ %badop.1, %if.then1067 ], [ %badop.1, %sw.bb1044 ], [ %badop.1, %sw.bb1069 ], [ %badop.1, %cond.true1079 ], [ %badop.1, %lor.lhs.false1095 ], [ %badop.1, %if.then1103 ], [ %badop.1, %cond.false1082 ], [ %badop.1, %if.end1072 ], [ %badop.1, %sw.bb1105 ], [ %badop.1, %sw.bb1183 ], [ %badop.1, %if.then1203 ], [ %badop.1, %land.lhs.true1194 ], [ %badop.1, %sw.bb1205 ], [ %badop.1, %sw.bb1217 ], [ %badop.1, %land.lhs.true1227 ], [ %badop.1, %if.then1248 ], [ %badop.1, %lor.lhs.false1244 ], [ %badop.1, %sw.bb1235 ], [ %badop.1, %if.then1266 ], [ %badop.1, %land.lhs.true1260 ], [ %badop.1, %sw.bb1268 ], [ %badop.1, %sw.bb1282 ], [ %spec.select5319, %land.lhs.true1014 ], [ %badop.1, %if.end1002 ], [ %badop.1, %land.lhs.true1028 ], [ %badop.1, %land.lhs.true1053 ], [ 0, %if.then1181 ], [ %badop.1, %lor.lhs.false1176 ], [ %badop.1, %sw.bb1184 ], [ %badop.1, %land.lhs.true1210 ], [ %badop.1, %sw.bb1250 ], [ %badop.1, %land.lhs.true1273 ], [ %badop.1, %if.then1338 ], [ %badop.1, %land.lhs.true1367 ], [ %badop.1, %land.lhs.true1085 ], [ 0, %for.cond957.preheader ], [ %badop.1, %do.cond1380.loopexit ], [ %spec.select5317.lcssa, %do.cond1380.loopexit5935 ]
  %winreg.1 = phi i32 [ %winreg.0, %reg1355 ], [ 1, %if.end1362 ], [ %winreg.0, %do.body ], [ %winreg.0, %do.body ], [ %winreg.0, %do.body ], [ %winreg.0, %do.body ], [ %winreg.0, %sw.bb787 ], [ %winreg.0, %sw.bb789 ], [ %winreg.0, %if.end948 ], [ %winreg.0, %sw.bb973 ], [ %winreg.0, %sw.bb977 ], [ %winreg.0, %land.lhs.true1024 ], [ %winreg.0, %if.then1042 ], [ %winreg.0, %sw.bb1019 ], [ %winreg.0, %land.lhs.true1049 ], [ %winreg.0, %if.then1067 ], [ %winreg.0, %sw.bb1044 ], [ %winreg.0, %sw.bb1069 ], [ %winreg.0, %cond.true1079 ], [ %winreg.0, %lor.lhs.false1095 ], [ %winreg.0, %if.then1103 ], [ %winreg.0, %cond.false1082 ], [ %winreg.0, %if.end1072 ], [ %winreg.0, %sw.bb1105 ], [ %winreg.0, %sw.bb1183 ], [ %winreg.0, %if.then1203 ], [ %winreg.0, %land.lhs.true1194 ], [ %winreg.0, %sw.bb1205 ], [ %winreg.0, %sw.bb1217 ], [ %winreg.0, %land.lhs.true1227 ], [ %winreg.0, %if.then1248 ], [ %winreg.0, %lor.lhs.false1244 ], [ %winreg.0, %sw.bb1235 ], [ %winreg.0, %if.then1266 ], [ %winreg.0, %land.lhs.true1260 ], [ %winreg.0, %sw.bb1268 ], [ %winreg.0, %sw.bb1282 ], [ %winreg.0, %land.lhs.true1014 ], [ %winreg.0, %if.end1002 ], [ %winreg.0, %land.lhs.true1028 ], [ %winreg.0, %land.lhs.true1053 ], [ %winreg.0, %if.then1181 ], [ %winreg.0, %lor.lhs.false1176 ], [ %winreg.0, %sw.bb1184 ], [ %winreg.0, %land.lhs.true1210 ], [ %winreg.0, %sw.bb1250 ], [ %winreg.0, %land.lhs.true1273 ], [ %winreg.0, %if.then1338 ], [ 1, %land.lhs.true1367 ], [ %winreg.0, %land.lhs.true1085 ], [ %winreg.0, %for.cond957.preheader ], [ %winreg.0, %do.cond1380.loopexit ], [ %winreg.0, %do.cond1380.loopexit5935 ]
  %c626.0 = phi i32 [ %conv780, %reg1355 ], [ %conv780, %if.end1362 ], [ %conv780, %do.body ], [ %conv780, %do.body ], [ %conv780, %do.body ], [ %conv780, %do.body ], [ 63, %sw.bb787 ], [ 63, %sw.bb789 ], [ %conv780, %if.end948 ], [ 63, %sw.bb973 ], [ 63, %sw.bb977 ], [ 63, %land.lhs.true1024 ], [ 63, %if.then1042 ], [ 63, %sw.bb1019 ], [ 63, %land.lhs.true1049 ], [ 63, %if.then1067 ], [ 63, %sw.bb1044 ], [ 63, %sw.bb1069 ], [ 63, %cond.true1079 ], [ 63, %lor.lhs.false1095 ], [ 63, %if.then1103 ], [ 63, %cond.false1082 ], [ 63, %if.end1072 ], [ 63, %sw.bb1105 ], [ 63, %sw.bb1183 ], [ %conv780, %if.then1203 ], [ %conv780, %land.lhs.true1194 ], [ %conv780, %sw.bb1205 ], [ 63, %sw.bb1217 ], [ 63, %land.lhs.true1227 ], [ %conv780, %if.then1248 ], [ %conv780, %lor.lhs.false1244 ], [ %conv780, %sw.bb1235 ], [ 63, %if.then1266 ], [ 63, %land.lhs.true1260 ], [ %conv780, %sw.bb1268 ], [ 63, %sw.bb1282 ], [ 63, %land.lhs.true1014 ], [ 63, %if.end1002 ], [ 63, %land.lhs.true1028 ], [ 63, %land.lhs.true1053 ], [ 63, %if.then1181 ], [ 63, %lor.lhs.false1176 ], [ %conv780, %sw.bb1184 ], [ %conv780, %land.lhs.true1210 ], [ 63, %sw.bb1250 ], [ %conv780, %land.lhs.true1273 ], [ %conv780, %if.then1338 ], [ %conv780, %land.lhs.true1367 ], [ 63, %land.lhs.true1085 ], [ %conv780, %for.cond957.preheader ], [ 63, %do.cond1380.loopexit ], [ %conv780, %do.cond1380.loopexit5935 ]
  %this_earlyclobber.2 = phi i32 [ %this_earlyclobber.1, %reg1355 ], [ %this_earlyclobber.1, %if.end1362 ], [ %this_earlyclobber.1, %do.body ], [ %this_earlyclobber.1, %do.body ], [ %this_earlyclobber.1, %do.body ], [ %this_earlyclobber.1, %do.body ], [ %this_earlyclobber.1, %sw.bb787 ], [ %this_earlyclobber.1, %sw.bb789 ], [ %this_earlyclobber.1, %if.end948 ], [ %this_earlyclobber.1, %sw.bb973 ], [ %this_earlyclobber.1, %sw.bb977 ], [ %this_earlyclobber.1, %land.lhs.true1024 ], [ %this_earlyclobber.1, %if.then1042 ], [ %this_earlyclobber.1, %sw.bb1019 ], [ %this_earlyclobber.1, %land.lhs.true1049 ], [ %this_earlyclobber.1, %if.then1067 ], [ %this_earlyclobber.1, %sw.bb1044 ], [ %this_earlyclobber.1, %sw.bb1069 ], [ %this_earlyclobber.1, %cond.true1079 ], [ %this_earlyclobber.1, %lor.lhs.false1095 ], [ %this_earlyclobber.1, %if.then1103 ], [ %this_earlyclobber.1, %cond.false1082 ], [ %this_earlyclobber.1, %if.end1072 ], [ %this_earlyclobber.1, %sw.bb1105 ], [ 1, %sw.bb1183 ], [ %this_earlyclobber.1, %if.then1203 ], [ %this_earlyclobber.1, %land.lhs.true1194 ], [ %this_earlyclobber.1, %sw.bb1205 ], [ %this_earlyclobber.1, %sw.bb1217 ], [ %this_earlyclobber.1, %land.lhs.true1227 ], [ %this_earlyclobber.1, %if.then1248 ], [ %this_earlyclobber.1, %lor.lhs.false1244 ], [ %this_earlyclobber.1, %sw.bb1235 ], [ %this_earlyclobber.1, %if.then1266 ], [ %this_earlyclobber.1, %land.lhs.true1260 ], [ %this_earlyclobber.1, %sw.bb1268 ], [ %this_earlyclobber.1, %sw.bb1282 ], [ %this_earlyclobber.1, %land.lhs.true1014 ], [ %this_earlyclobber.1, %if.end1002 ], [ %this_earlyclobber.1, %land.lhs.true1028 ], [ %this_earlyclobber.1, %land.lhs.true1053 ], [ %this_earlyclobber.1, %if.then1181 ], [ %this_earlyclobber.1, %lor.lhs.false1176 ], [ %this_earlyclobber.1, %sw.bb1184 ], [ %this_earlyclobber.1, %land.lhs.true1210 ], [ %this_earlyclobber.1, %sw.bb1250 ], [ %this_earlyclobber.1, %land.lhs.true1273 ], [ %this_earlyclobber.1, %if.then1338 ], [ %this_earlyclobber.1, %land.lhs.true1367 ], [ %this_earlyclobber.1, %land.lhs.true1085 ], [ %this_earlyclobber.1, %for.cond957.preheader ], [ %this_earlyclobber.1, %do.cond1380.loopexit ], [ %this_earlyclobber.1, %do.cond1380.loopexit5935 ]
  %force_reload.5 = phi i32 [ %force_reload.4, %reg1355 ], [ %force_reload.4, %if.end1362 ], [ %force_reload.4, %do.body ], [ %force_reload.4, %do.body ], [ %force_reload.4, %do.body ], [ %force_reload.4, %do.body ], [ %force_reload.4, %sw.bb787 ], [ %force_reload.4, %sw.bb789 ], [ 0, %if.end948 ], [ %force_reload.4, %sw.bb973 ], [ 1, %sw.bb977 ], [ %force_reload.4, %land.lhs.true1024 ], [ %force_reload.4, %if.then1042 ], [ %force_reload.4, %sw.bb1019 ], [ %force_reload.4, %land.lhs.true1049 ], [ %force_reload.4, %if.then1067 ], [ %force_reload.4, %sw.bb1044 ], [ 1, %sw.bb1069 ], [ 0, %cond.true1079 ], [ 0, %lor.lhs.false1095 ], [ 0, %if.then1103 ], [ 0, %cond.false1082 ], [ 0, %if.end1072 ], [ 1, %sw.bb1105 ], [ %force_reload.4, %sw.bb1183 ], [ %force_reload.4, %if.then1203 ], [ %force_reload.4, %land.lhs.true1194 ], [ %force_reload.4, %sw.bb1205 ], [ %force_reload.4, %sw.bb1217 ], [ %force_reload.4, %land.lhs.true1227 ], [ %force_reload.4, %if.then1248 ], [ %force_reload.4, %lor.lhs.false1244 ], [ %force_reload.4, %sw.bb1235 ], [ %force_reload.4, %if.then1266 ], [ %force_reload.4, %land.lhs.true1260 ], [ %force_reload.4, %sw.bb1268 ], [ 0, %sw.bb1282 ], [ 0, %land.lhs.true1014 ], [ 0, %if.end1002 ], [ %force_reload.4, %land.lhs.true1028 ], [ %force_reload.4, %land.lhs.true1053 ], [ 0, %if.then1181 ], [ 0, %lor.lhs.false1176 ], [ %force_reload.4, %sw.bb1184 ], [ %force_reload.4, %land.lhs.true1210 ], [ %force_reload.4, %sw.bb1250 ], [ %force_reload.4, %land.lhs.true1273 ], [ %force_reload.4, %if.then1338 ], [ %force_reload.4, %land.lhs.true1367 ], [ 0, %land.lhs.true1085 ], [ %force_reload.4, %for.cond957.preheader ], [ %force_reload.4, %do.cond1380.loopexit ], [ %force_reload.4, %do.cond1380.loopexit5935 ]
  %offmemok.1 = phi i8 [ %offmemok.0, %reg1355 ], [ %offmemok.0, %if.end1362 ], [ %offmemok.0, %do.body ], [ %offmemok.0, %do.body ], [ %offmemok.0, %do.body ], [ %offmemok.0, %do.body ], [ %offmemok.0, %sw.bb787 ], [ %offmemok.0, %sw.bb789 ], [ %offmemok.0, %if.end948 ], [ %offmemok.0, %sw.bb973 ], [ %offmemok.0, %sw.bb977 ], [ %offmemok.0, %land.lhs.true1024 ], [ %offmemok.0, %if.then1042 ], [ %offmemok.0, %sw.bb1019 ], [ %offmemok.0, %land.lhs.true1049 ], [ %offmemok.0, %if.then1067 ], [ %offmemok.0, %sw.bb1044 ], [ %offmemok.0, %sw.bb1069 ], [ %offmemok.0, %cond.true1079 ], [ %offmemok.0, %lor.lhs.false1095 ], [ %offmemok.0, %if.then1103 ], [ %offmemok.0, %cond.false1082 ], [ %offmemok.0, %if.end1072 ], [ %offmemok.0, %sw.bb1105 ], [ %offmemok.0, %sw.bb1183 ], [ %offmemok.0, %if.then1203 ], [ %offmemok.0, %land.lhs.true1194 ], [ %offmemok.0, %sw.bb1205 ], [ %offmemok.0, %sw.bb1217 ], [ %offmemok.0, %land.lhs.true1227 ], [ %offmemok.0, %if.then1248 ], [ %offmemok.0, %lor.lhs.false1244 ], [ %offmemok.0, %sw.bb1235 ], [ %offmemok.0, %if.then1266 ], [ %offmemok.0, %land.lhs.true1260 ], [ %offmemok.0, %sw.bb1268 ], [ %offmemok.0, %sw.bb1282 ], [ %offmemok.0, %land.lhs.true1014 ], [ %offmemok.0, %if.end1002 ], [ %offmemok.0, %land.lhs.true1028 ], [ %offmemok.0, %land.lhs.true1053 ], [ 1, %if.then1181 ], [ 1, %lor.lhs.false1176 ], [ %offmemok.0, %sw.bb1184 ], [ %offmemok.0, %land.lhs.true1210 ], [ %offmemok.0, %sw.bb1250 ], [ %offmemok.0, %land.lhs.true1273 ], [ %offmemok.0, %if.then1338 ], [ %offmemok.0, %land.lhs.true1367 ], [ %offmemok.0, %land.lhs.true1085 ], [ %offmemok.0, %for.cond957.preheader ], [ %offmemok.0, %do.cond1380.loopexit ], [ %offmemok.0, %do.cond1380.loopexit5935 ]
  %constmemok.1 = phi i32 [ %constmemok.0, %reg1355 ], [ %constmemok.0, %if.end1362 ], [ %constmemok.0, %do.body ], [ %constmemok.0, %do.body ], [ %constmemok.0, %do.body ], [ %constmemok.0, %do.body ], [ %constmemok.0, %sw.bb787 ], [ %constmemok.0, %sw.bb789 ], [ %constmemok.0, %if.end948 ], [ %constmemok.0, %sw.bb973 ], [ %constmemok.0, %sw.bb977 ], [ %constmemok.0, %land.lhs.true1024 ], [ %constmemok.0, %if.then1042 ], [ %constmemok.0, %sw.bb1019 ], [ %constmemok.0, %land.lhs.true1049 ], [ %constmemok.0, %if.then1067 ], [ %constmemok.0, %sw.bb1044 ], [ %constmemok.0, %sw.bb1069 ], [ %constmemok.0, %cond.true1079 ], [ %constmemok.0, %lor.lhs.false1095 ], [ %constmemok.0, %if.then1103 ], [ %constmemok.0, %cond.false1082 ], [ %constmemok.0, %if.end1072 ], [ %constmemok.0, %sw.bb1105 ], [ %constmemok.0, %sw.bb1183 ], [ %constmemok.0, %if.then1203 ], [ %constmemok.0, %land.lhs.true1194 ], [ %constmemok.0, %sw.bb1205 ], [ %constmemok.0, %sw.bb1217 ], [ %constmemok.0, %land.lhs.true1227 ], [ %constmemok.0, %if.then1248 ], [ %constmemok.0, %lor.lhs.false1244 ], [ %constmemok.0, %sw.bb1235 ], [ %constmemok.0, %if.then1266 ], [ %constmemok.0, %land.lhs.true1260 ], [ %constmemok.0, %sw.bb1268 ], [ %constmemok.0, %sw.bb1282 ], [ 1, %land.lhs.true1014 ], [ 1, %if.end1002 ], [ %constmemok.0, %land.lhs.true1028 ], [ %constmemok.0, %land.lhs.true1053 ], [ 1, %if.then1181 ], [ 1, %lor.lhs.false1176 ], [ %constmemok.0, %sw.bb1184 ], [ %constmemok.0, %land.lhs.true1210 ], [ %constmemok.0, %sw.bb1250 ], [ %constmemok.0, %land.lhs.true1273 ], [ %constmemok.0, %if.then1338 ], [ %constmemok.0, %land.lhs.true1367 ], [ %constmemok.0, %land.lhs.true1085 ], [ %constmemok.0, %for.cond957.preheader ], [ %constmemok.0, %do.cond1380.loopexit ], [ %constmemok.0, %do.cond1380.loopexit5935 ]
  %earlyclobber.1 = phi i8 [ %earlyclobber.0, %reg1355 ], [ %earlyclobber.0, %if.end1362 ], [ %earlyclobber.0, %do.body ], [ %earlyclobber.0, %do.body ], [ %earlyclobber.0, %do.body ], [ %earlyclobber.0, %do.body ], [ %earlyclobber.0, %sw.bb787 ], [ %earlyclobber.0, %sw.bb789 ], [ %earlyclobber.0, %if.end948 ], [ %earlyclobber.0, %sw.bb973 ], [ %earlyclobber.0, %sw.bb977 ], [ %earlyclobber.0, %land.lhs.true1024 ], [ %earlyclobber.0, %if.then1042 ], [ %earlyclobber.0, %sw.bb1019 ], [ %earlyclobber.0, %land.lhs.true1049 ], [ %earlyclobber.0, %if.then1067 ], [ %earlyclobber.0, %sw.bb1044 ], [ %earlyclobber.0, %sw.bb1069 ], [ %earlyclobber.0, %cond.true1079 ], [ %earlyclobber.0, %lor.lhs.false1095 ], [ %earlyclobber.0, %if.then1103 ], [ %earlyclobber.0, %cond.false1082 ], [ %earlyclobber.0, %if.end1072 ], [ %earlyclobber.0, %sw.bb1105 ], [ 1, %sw.bb1183 ], [ %earlyclobber.0, %if.then1203 ], [ %earlyclobber.0, %land.lhs.true1194 ], [ %earlyclobber.0, %sw.bb1205 ], [ %earlyclobber.0, %sw.bb1217 ], [ %earlyclobber.0, %land.lhs.true1227 ], [ %earlyclobber.0, %if.then1248 ], [ %earlyclobber.0, %lor.lhs.false1244 ], [ %earlyclobber.0, %sw.bb1235 ], [ %earlyclobber.0, %if.then1266 ], [ %earlyclobber.0, %land.lhs.true1260 ], [ %earlyclobber.0, %sw.bb1268 ], [ %earlyclobber.0, %sw.bb1282 ], [ %earlyclobber.0, %land.lhs.true1014 ], [ %earlyclobber.0, %if.end1002 ], [ %earlyclobber.0, %land.lhs.true1028 ], [ %earlyclobber.0, %land.lhs.true1053 ], [ %earlyclobber.0, %if.then1181 ], [ %earlyclobber.0, %lor.lhs.false1176 ], [ %earlyclobber.0, %sw.bb1184 ], [ %earlyclobber.0, %land.lhs.true1210 ], [ %earlyclobber.0, %sw.bb1250 ], [ %earlyclobber.0, %land.lhs.true1273 ], [ %earlyclobber.0, %if.then1338 ], [ %earlyclobber.0, %land.lhs.true1367 ], [ %earlyclobber.0, %land.lhs.true1085 ], [ %earlyclobber.0, %for.cond957.preheader ], [ %earlyclobber.0, %do.cond1380.loopexit ], [ %earlyclobber.0, %do.cond1380.loopexit5935 ]
  %add.ptr1381 = getelementptr inbounds nuw i8, ptr %p622.2, i64 %len.0
  %tobool1382.not = icmp eq i32 %c626.0, 0
  br i1 %tobool1382.not, label %do.end1383.loopexit, label %do.body, !llvm.loop !8

do.end1383.loopexit:                              ; preds = %do.cond1380
  %losers.5.lcssa = phi i32 [ %losers.5, %do.cond1380 ]
  %bad.5.lcssa = phi i32 [ %bad.5, %do.cond1380 ]
  %reject.2.lcssa = phi i32 [ %reject.2, %do.cond1380 ]
  %win.6.lcssa = phi i32 [ %win.6, %do.cond1380 ]
  %did_match.2.lcssa = phi i32 [ %did_match.2, %do.cond1380 ]
  %badop.6.lcssa = phi i32 [ %badop.6, %do.cond1380 ]
  %winreg.1.lcssa = phi i32 [ %winreg.1, %do.cond1380 ]
  %this_earlyclobber.2.lcssa = phi i32 [ %this_earlyclobber.2, %do.cond1380 ]
  %force_reload.5.lcssa = phi i32 [ %force_reload.5, %do.cond1380 ]
  %offmemok.1.lcssa = phi i8 [ %offmemok.1, %do.cond1380 ]
  %constmemok.1.lcssa = phi i32 [ %constmemok.1, %do.cond1380 ]
  %earlyclobber.1.lcssa = phi i8 [ %earlyclobber.1, %do.cond1380 ]
  %add.ptr1381.lcssa = phi ptr [ %add.ptr1381, %do.cond1380 ]
  br label %do.end1383

do.end1383:                                       ; preds = %do.end1383.loopexit, %do.cond1380.thread
  %add.ptr13815473 = phi ptr [ %add.ptr13815459, %do.cond1380.thread ], [ %add.ptr1381.lcssa, %do.end1383.loopexit ]
  %earlyclobber.15472 = phi i8 [ %earlyclobber.05958, %do.cond1380.thread ], [ %earlyclobber.1.lcssa, %do.end1383.loopexit ]
  %constmemok.15471 = phi i32 [ %constmemok.05961, %do.cond1380.thread ], [ %constmemok.1.lcssa, %do.end1383.loopexit ]
  %offmemok.15470 = phi i8 [ %offmemok.05964, %do.cond1380.thread ], [ %offmemok.1.lcssa, %do.end1383.loopexit ]
  %force_reload.55469 = phi i32 [ %force_reload.45967, %do.cond1380.thread ], [ %force_reload.5.lcssa, %do.end1383.loopexit ]
  %this_earlyclobber.25468 = phi i32 [ %this_earlyclobber.15970, %do.cond1380.thread ], [ %this_earlyclobber.2.lcssa, %do.end1383.loopexit ]
  %winreg.15467 = phi i32 [ %winreg.05973, %do.cond1380.thread ], [ %winreg.1.lcssa, %do.end1383.loopexit ]
  %badop.65466 = phi i32 [ %badop.15976, %do.cond1380.thread ], [ %badop.6.lcssa, %do.end1383.loopexit ]
  %did_match.25465 = phi i32 [ %did_match.05979, %do.cond1380.thread ], [ %did_match.2.lcssa, %do.end1383.loopexit ]
  %win.65464 = phi i32 [ %win.15982, %do.cond1380.thread ], [ %win.6.lcssa, %do.end1383.loopexit ]
  %reject.25463 = phi i32 [ %reject.15988, %do.cond1380.thread ], [ %reject.2.lcssa, %do.end1383.loopexit ]
  %bad.55462 = phi i32 [ %bad.15991, %do.cond1380.thread ], [ %bad.5.lcssa, %do.end1383.loopexit ]
  %losers.55461 = phi i32 [ %losers.15994, %do.cond1380.thread ], [ %losers.5.lcssa, %do.end1383.loopexit ]
  store ptr %add.ptr13815473, ptr %arrayidx624, align 8
  %tobool1386.not = icmp eq i32 %winreg.15467, 0
  br i1 %tobool1386.not, label %if.end1393, label %land.lhs.true1387

land.lhs.true1387:                                ; preds = %do.end1383
  %183 = load i32, ptr %arrayidx760, align 4
  %cmp1390.not = icmp eq i32 %183, 0
  %spec.select5325 = select i1 %cmp1390.not, i32 %badop.65466, i32 0
  br label %if.end1393

if.end1393:                                       ; preds = %land.lhs.true1387, %do.end1383
  %badop.7 = phi i32 [ %badop.65466, %do.end1383 ], [ %spec.select5325, %land.lhs.true1387 ]
  store i8 %earlyclobber.15472, ptr %arrayidx768, align 1
  %tobool1397 = icmp eq i32 %win.65464, 0
  %tobool1399 = icmp ne i32 %force_reload.55469, 0
  %or.cond4174 = select i1 %tobool1397, i1 true, i1 %tobool1399
  br i1 %or.cond4174, label %if.else1403, label %if.then1400

if.then1400:                                      ; preds = %if.end1393
  store i8 1, ptr %arrayidx762, align 1
  br label %if.end1679

if.else1403:                                      ; preds = %if.end1393
  %tobool1404 = icmp eq i32 %did_match.25465, 0
  %or.cond4175 = select i1 %tobool1404, i1 true, i1 %tobool1399
  br i1 %or.cond4175, label %if.else1410, label %if.then1407

if.then1407:                                      ; preds = %if.else1403
  store i8 1, ptr %arrayidx764, align 1
  br label %if.end1679

if.else1410:                                      ; preds = %if.else1403
  store i8 %offmemok.15470, ptr %arrayidx766, align 1
  %inc1414 = add nsw i32 %losers.55461, 1
  %tobool1415.not = icmp eq i32 %badop.7, 0
  %spec.select5326 = select i1 %tobool1415.not, i32 %bad.55462, i32 1
  %bf.load1418 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1419 = and i32 %bf.load1418, 65535
  %cmp1420 = icmp eq i32 %bf.clear1419, 37
  br i1 %cmp1420, label %land.lhs.true1422, label %if.end1433

land.lhs.true1422:                                ; preds = %if.else1410
  %184 = load i32, ptr %arrayidx760, align 4
  %cmp1425 = icmp eq i32 %184, 0
  br i1 %cmp1425, label %land.lhs.true1427, label %if.end1433

land.lhs.true1427:                                ; preds = %land.lhs.true1422
  %185 = load i32, ptr %arrayidx770, align 4
  %cmp1430 = icmp slt i32 %185, 0
  %spec.select5327 = select i1 %cmp1430, i32 1, i32 %spec.select5326
  br label %if.end1433

if.end1433:                                       ; preds = %land.lhs.true1427, %land.lhs.true1422, %if.else1410
  %bad.7 = phi i32 [ %spec.select5326, %land.lhs.true1422 ], [ %spec.select5326, %if.else1410 ], [ %spec.select5327, %land.lhs.true1427 ]
  %idxprom1436 = zext nneg i32 %bf.clear1419 to i64
  %arrayidx1437 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom1436
  %186 = load i32, ptr %arrayidx1437, align 4
  %cmp1438 = icmp ne i32 %186, 9
  %cmp1443.not = icmp eq i32 %bf.clear1419, 121
  %or.cond5328 = or i1 %cmp1443.not, %cmp1438
  br i1 %or.cond5328, label %if.end1469, label %land.lhs.true1445

land.lhs.true1445:                                ; preds = %if.end1433
  %187 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1008), align 8
  %call1446 = call zeroext i8 %187(ptr noundef nonnull %operand.1.lcssa) #7
  %tobool1447.not = icmp eq i8 %call1446, 0
  br i1 %tobool1447.not, label %land.lhs.true1448, label %if.end1469

land.lhs.true1448:                                ; preds = %land.lhs.true1445
  %188 = load i32, ptr %arrayidx760, align 4
  %call1451 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %operand.1.lcssa, i32 noundef %188) #7
  %cmp1452 = icmp eq i32 %call1451, 0
  br i1 %cmp1452, label %land.lhs.true1456, label %if.end1469

land.lhs.true1456:                                ; preds = %land.lhs.true1448
  %arrayidx1458 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6018
  %189 = load i32, ptr %arrayidx1458, align 4
  %cmp1459.not = icmp eq i32 %189, 0
  br i1 %cmp1459.not, label %if.end1469, label %if.then1461

if.then1461:                                      ; preds = %land.lhs.true1456
  %190 = load i32, ptr %arrayidx760, align 4
  %cmp1464.not = icmp eq i32 %190, 0
  %inc1467 = add nsw i32 %losers.55461, 2
  %spec.select5329 = select i1 %cmp1464.not, i32 %inc1414, i32 %inc1467
  br label %if.end1469

if.end1469:                                       ; preds = %if.then1461, %land.lhs.true1456, %land.lhs.true1448, %land.lhs.true1445, %if.end1433
  %losers.6 = phi i32 [ %inc1414, %land.lhs.true1445 ], [ %inc1414, %land.lhs.true1456 ], [ %inc1414, %land.lhs.true1448 ], [ %inc1414, %if.end1433 ], [ %spec.select5329, %if.then1461 ]
  %tobool1543 = phi i1 [ false, %land.lhs.true1445 ], [ false, %land.lhs.true1456 ], [ false, %land.lhs.true1448 ], [ false, %if.end1433 ], [ true, %if.then1461 ]
  %bf.load1470 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1471 = and i32 %bf.load1470, 65535
  %cmp1472.not = icmp eq i32 %bf.clear1471, 38
  br i1 %cmp1472.not, label %if.else1485, label %land.lhs.true1474

land.lhs.true1474:                                ; preds = %if.end1469
  %arrayidx1476 = getelementptr inbounds nuw i32, ptr %modified, i64 %indvars.iv6018
  %191 = load i32, ptr %arrayidx1476, align 4
  %cmp1477 = icmp ne i32 %191, 0
  %or.cond4177 = and i1 %switch5344, %cmp1477
  br i1 %or.cond4177, label %land.lhs.true1481, label %if.else1485

land.lhs.true1481:                                ; preds = %land.lhs.true1474
  %call1482 = call ptr @find_reg_note(ptr noundef %insn, i32 noundef 6, ptr noundef nonnull %operand.1.lcssa) #7
  %tobool1483.not = icmp eq ptr %call1482, null
  br i1 %tobool1483.not, label %if.end1496, label %if.else1485

if.else1485:                                      ; preds = %land.lhs.true1481, %land.lhs.true1474, %if.end1469
  br label %if.end1496

if.end1496:                                       ; preds = %if.else1485, %land.lhs.true1481
  %bad.8 = phi i32 [ %bad.7, %if.else1485 ], [ 1, %land.lhs.true1481 ]
  %bf.load1497 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1498 = and i32 %bf.load1497, 65535
  %idxprom1499 = zext nneg i32 %bf.clear1498 to i64
  %arrayidx1500 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom1499
  %192 = load i32, ptr %arrayidx1500, align 4
  %cmp1501 = icmp eq i32 %192, 9
  br i1 %cmp1501, label %if.end1528, label %land.lhs.true1503

land.lhs.true1503:                                ; preds = %if.end1496
  %193 = load i32, ptr %arrayidx760, align 4
  %cmp1506.not = icmp eq i32 %193, 0
  br i1 %cmp1506.not, label %if.end1528, label %if.then1508

if.then1508:                                      ; preds = %land.lhs.true1503
  %call1511 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %operand.1.lcssa, i32 noundef %193) #7
  %cmp1512 = icmp eq i32 %call1511, 0
  %spec.select5330 = select i1 %cmp1512, i32 600, i32 %reject.25463
  %arrayidx1517 = getelementptr inbounds nuw i32, ptr %operand_type, i64 %indvars.iv6018
  %194 = load i32, ptr %arrayidx1517, align 4
  %cmp1518 = icmp eq i32 %194, 1
  br i1 %cmp1518, label %land.lhs.true1520, label %if.end1528

land.lhs.true1520:                                ; preds = %if.then1508
  %195 = load i32, ptr %arrayidx760, align 4
  %call1523 = call i32 @ix86_preferred_output_reload_class(ptr noundef nonnull %operand.1.lcssa, i32 noundef %195) #7
  %cmp1524 = icmp eq i32 %call1523, 0
  %spec.select5331 = select i1 %cmp1524, i32 600, i32 %spec.select5330
  br label %if.end1528

if.end1528:                                       ; preds = %land.lhs.true1520, %if.then1508, %land.lhs.true1503, %if.end1496
  %reject.4 = phi i32 [ %reject.25463, %if.end1496 ], [ %spec.select5330, %if.then1508 ], [ %reject.25463, %land.lhs.true1503 ], [ %spec.select5331, %land.lhs.true1520 ]
  %bf.load1529 = load i32, ptr %operand.1.lcssa, align 8
  %bf.clear1530 = and i32 %bf.load1529, 65535
  %cmp1531 = icmp eq i32 %bf.clear1530, 37
  br i1 %cmp1531, label %land.lhs.true1533, label %land.lhs.true1537

land.lhs.true1533:                                ; preds = %if.end1528
  %196 = getelementptr i8, ptr %operand.1.lcssa, i64 8
  %operand.1.val = load i32, ptr %196, align 8
  %cmp1535 = icmp ugt i32 %operand.1.val, 52
  br i1 %cmp1535, label %if.end1548, label %land.lhs.true1537

land.lhs.true1537:                                ; preds = %land.lhs.true1533, %if.end1528
  %cmp1540.not = icmp eq i32 %bf.clear1530, 38
  %tobool1545 = icmp ne i32 %constmemok.15471, 0
  %or.cond4180 = select i1 %tobool1543, i1 %tobool1545, i1 false
  %or.cond5332 = select i1 %cmp1540.not, i1 true, i1 %or.cond4180
  %add1547 = add nsw i32 %reject.4, 2
  %spec.select5349 = select i1 %or.cond5332, i32 %reject.4, i32 %add1547
  br label %if.end1548

if.end1548:                                       ; preds = %land.lhs.true1537, %land.lhs.true1533
  %reject.5 = phi i32 [ %reject.4, %land.lhs.true1533 ], [ %spec.select5349, %land.lhs.true1537 ]
  %arrayidx1550 = getelementptr inbounds nuw i32, ptr %operand_type, i64 %indvars.iv6018
  %197 = load i32, ptr %arrayidx1550, align 4
  %cmp1551.not = icmp ne i32 %197, 0
  %cmp1556.not = icmp ne i32 %bf.clear1530, 38
  %narrow = and i1 %cmp1556.not, %cmp1551.not
  %spec.select5333 = zext i1 %narrow to i32
  %reject.7 = add nsw i32 %reject.5, %spec.select5333
  %tobool1563 = icmp ne i32 %win.65464, 0
  %tobool1565 = icmp ne i32 %did_match.25465, 0
  %or.cond4181 = select i1 %tobool1563, i1 true, i1 %tobool1565
  br i1 %or.cond4181, label %if.end1679, label %land.lhs.true1566

land.lhs.true1566:                                ; preds = %if.end1548
  %198 = load i32, ptr %arrayidx760, align 4
  %cmp1569.not = icmp eq i32 %198, 0
  br i1 %cmp1569.not, label %if.end1679, label %land.lhs.true1571

land.lhs.true1571:                                ; preds = %land.lhs.true1566
  %arrayidx1573 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6018
  %199 = load i32, ptr %arrayidx1573, align 4
  %idxprom1574 = zext i32 %199 to i64
  %arrayidx1575 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom1574
  %200 = load i8, ptr %arrayidx1575, align 1
  %cmp1578 = icmp ult i8 %200, 5
  br i1 %cmp1578, label %land.lhs.true1580, label %if.end1679

land.lhs.true1580:                                ; preds = %land.lhs.true1571
  %arrayidx1582 = getelementptr inbounds nuw i32, ptr %preferred_class, i64 %indvars.iv6018
  %201 = load i32, ptr %arrayidx1582, align 4
  %idxprom1583 = sext i32 %201 to i64
  %arrayidx1584 = getelementptr inbounds i32, ptr @reg_class_size, i64 %idxprom1583
  %202 = load i32, ptr %arrayidx1584, align 4
  %cmp1585.not = icmp eq i32 %202, 0
  br i1 %cmp1585.not, label %if.end1679, label %land.lhs.true1587

land.lhs.true1587:                                ; preds = %land.lhs.true1580
  %idxprom1590 = zext i32 %201 to i64
  %arrayidx1591 = getelementptr inbounds nuw i32, ptr @reg_class_size, i64 %idxprom1590
  %203 = load i32, ptr %arrayidx1591, align 4
  switch i32 %203, label %land.lhs.true1601 [
    i32 1, label %if.end1679
    i32 0, label %if.then1651
  ]

land.lhs.true1601:                                ; preds = %land.lhs.true1587
  switch i32 %201, label %if.then1651 [
    i32 1, label %if.end1679
    i32 2, label %if.end1679
    i32 3, label %if.end1679
    i32 4, label %if.end1679
    i32 7, label %if.end1679
    i32 5, label %if.end1679
    i32 6, label %if.end1679
    i32 17, label %if.end1679
    i32 14, label %if.end1679
    i32 15, label %if.end1679
  ]

if.then1651:                                      ; preds = %land.lhs.true1601, %land.lhs.true1587
  %call1656 = call i32 @reg_class_subset_p(i32 noundef %198, i32 noundef %201) #7
  %tobool1657.not = icmp eq i32 %call1656, 0
  br i1 %tobool1657.not, label %if.then1658, label %if.end1679

if.then1658:                                      ; preds = %if.then1651
  %call1663 = call i32 @reg_class_subset_p(i32 noundef %201, i32 noundef %198) #7
  %tobool1664.not = icmp eq i32 %call1663, 0
  br i1 %tobool1664.not, label %if.else1670, label %if.then1665

if.then1665:                                      ; preds = %if.then1658
  store i32 %201, ptr %arrayidx760, align 4
  br label %if.end1679

if.else1670:                                      ; preds = %if.then1658
  %arrayidx1672 = getelementptr inbounds nuw i8, ptr %pref_or_nothing, i64 %indvars.iv6018
  %204 = load i8, ptr %arrayidx1672, align 1
  %conv1673 = sext i8 %204 to i32
  %mul1674 = shl nsw i32 %conv1673, 1
  %add1675 = add i32 %reject.7, 2
  %add1676 = add i32 %add1675, %mul1674
  br label %if.end1679

if.end1679:                                       ; preds = %if.else1670, %if.then1665, %if.then1651, %land.lhs.true1601, %land.lhs.true1601, %land.lhs.true1601, %land.lhs.true1601, %land.lhs.true1601, %land.lhs.true1601, %land.lhs.true1601, %land.lhs.true1601, %land.lhs.true1601, %land.lhs.true1601, %land.lhs.true1587, %land.lhs.true1580, %land.lhs.true1571, %land.lhs.true1566, %if.end1548, %if.then1407, %if.then1400
  %bad.95481 = phi i32 [ %bad.8, %if.end1548 ], [ %bad.8, %land.lhs.true1587 ], [ %bad.8, %land.lhs.true1601 ], [ %bad.8, %if.then1651 ], [ %bad.8, %if.then1665 ], [ %bad.8, %if.else1670 ], [ %bad.8, %land.lhs.true1580 ], [ %bad.8, %land.lhs.true1571 ], [ %bad.8, %land.lhs.true1566 ], [ %bad.8, %land.lhs.true1601 ], [ %bad.8, %land.lhs.true1601 ], [ %bad.8, %land.lhs.true1601 ], [ %bad.8, %land.lhs.true1601 ], [ %bad.8, %land.lhs.true1601 ], [ %bad.8, %land.lhs.true1601 ], [ %bad.8, %land.lhs.true1601 ], [ %bad.8, %land.lhs.true1601 ], [ %bad.8, %land.lhs.true1601 ], [ %bad.55462, %if.then1400 ], [ %bad.55462, %if.then1407 ]
  %losers.75480 = phi i32 [ %losers.6, %if.end1548 ], [ %losers.6, %land.lhs.true1587 ], [ %losers.6, %land.lhs.true1601 ], [ %losers.6, %if.then1651 ], [ %losers.6, %if.then1665 ], [ %losers.6, %if.else1670 ], [ %losers.6, %land.lhs.true1580 ], [ %losers.6, %land.lhs.true1571 ], [ %losers.6, %land.lhs.true1566 ], [ %losers.6, %land.lhs.true1601 ], [ %losers.6, %land.lhs.true1601 ], [ %losers.6, %land.lhs.true1601 ], [ %losers.6, %land.lhs.true1601 ], [ %losers.6, %land.lhs.true1601 ], [ %losers.6, %land.lhs.true1601 ], [ %losers.6, %land.lhs.true1601 ], [ %losers.6, %land.lhs.true1601 ], [ %losers.6, %land.lhs.true1601 ], [ %losers.55461, %if.then1400 ], [ %losers.55461, %if.then1407 ]
  %reject.8 = phi i32 [ %reject.7, %if.end1548 ], [ %reject.7, %land.lhs.true1587 ], [ %reject.7, %land.lhs.true1601 ], [ %reject.7, %if.then1651 ], [ %reject.7, %if.then1665 ], [ %add1676, %if.else1670 ], [ %reject.7, %land.lhs.true1580 ], [ %reject.7, %land.lhs.true1571 ], [ %reject.7, %land.lhs.true1566 ], [ %reject.7, %land.lhs.true1601 ], [ %reject.7, %land.lhs.true1601 ], [ %reject.7, %land.lhs.true1601 ], [ %reject.7, %land.lhs.true1601 ], [ %reject.7, %land.lhs.true1601 ], [ %reject.7, %land.lhs.true1601 ], [ %reject.7, %land.lhs.true1601 ], [ %reject.7, %land.lhs.true1601 ], [ %reject.7, %land.lhs.true1601 ], [ %reject.25463, %if.then1400 ], [ %reject.25463, %if.then1407 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %end625) #7
  %indvars.iv.next6019 = add nuw nsw i64 %indvars.iv6018, 1
  %exitcond6023 = icmp ne i64 %indvars.iv.next6019, %wide.trip.count6022
  br i1 %exitcond6023, label %for.body621, label %for.cond1683.preheader.loopexit, !llvm.loop !9

for.body1686:                                     ; preds = %for.inc1891, %for.body1686.preheader
  %indvars.iv6034 = phi i64 [ 0, %for.body1686.preheader ], [ %indvars.iv.next6035, %for.inc1891 ]
  %losers.85821 = phi i32 [ %losers.14, %for.inc1891 ], [ %losers.0.lcssa, %for.body1686.preheader ]
  %arrayidx1688 = getelementptr inbounds nuw i8, ptr %this_alternative_earlyclobber, i64 %indvars.iv6034
  %205 = load i8, ptr %arrayidx1688, align 1
  %tobool1690.not = icmp eq i8 %205, 0
  br i1 %tobool1690.not, label %for.inc1891, label %land.lhs.true1691

land.lhs.true1691:                                ; preds = %for.body1686
  %arrayidx1693 = getelementptr inbounds nuw i8, ptr %this_alternative_win, i64 %indvars.iv6034
  %206 = load i8, ptr %arrayidx1693, align 1
  %tobool1695.not = icmp eq i8 %206, 0
  br i1 %tobool1695.not, label %lor.lhs.false1696, label %if.then1701

lor.lhs.false1696:                                ; preds = %land.lhs.true1691
  %arrayidx1698 = getelementptr inbounds nuw i8, ptr %this_alternative_match_win, i64 %indvars.iv6034
  %207 = load i8, ptr %arrayidx1698, align 1
  %tobool1700.not = icmp eq i8 %207, 0
  br i1 %tobool1700.not, label %for.inc1891, label %if.then1701

if.then1701:                                      ; preds = %lor.lhs.false1696, %land.lhs.true1691
  call void @llvm.lifetime.start.p0(ptr nonnull %tmp) #7
  %arrayidx1703 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv6034
  %208 = load ptr, ptr %arrayidx1703, align 8
  call fastcc void @decompose(ptr dead_on_unwind noalias writable align 8 %tmp, ptr noundef %208)
  %early_data.sroa.0.0.copyload = load i32, ptr %tmp, align 8
  %early_data.sroa.4.0.copyload = load i32, ptr %early_data.sroa.4.0.tmp.sroa_idx, align 4
  %early_data.sroa.5.0.copyload = load ptr, ptr %early_data.sroa.5.0.tmp.sroa_idx, align 8
  %early_data.sroa.6.0.copyload = load i64, ptr %early_data.sroa.6.0.tmp.sroa_idx, align 8
  %early_data.sroa.7.0.copyload = load i64, ptr %early_data.sroa.7.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %tmp) #7
  %arrayidx1705 = getelementptr inbounds nuw i32, ptr %modified, i64 %indvars.iv6034
  %209 = load i32, ptr %arrayidx1705, align 4
  %cmp1706.not = icmp eq i32 %209, 0
  br i1 %cmp1706.not, label %cond.true1708, label %cond.end1710

cond.true1708:                                    ; preds = %if.then1701
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3618, ptr noundef nonnull @.str.1) #7
  br label %cond.end1710

cond.end1710:                                     ; preds = %cond.true1708, %if.then1701
  %arrayidx1713 = getelementptr inbounds nuw i32, ptr %this_alternative, i64 %indvars.iv6034
  %210 = load i32, ptr %arrayidx1713, align 4
  %cmp1714 = icmp eq i32 %210, 0
  br i1 %cmp1714, label %if.then1716, label %for.body1728.lr.ph

if.then1716:                                      ; preds = %cond.end1710
  store i8 0, ptr %arrayidx1688, align 1
  %211 = load i32, ptr @this_insn_is_asm, align 4
  %tobool1719.not = icmp eq i32 %211, 0
  br i1 %tobool1719.not, label %cond.true1720, label %cond.end1722

cond.true1720:                                    ; preds = %if.then1716
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3623, ptr noundef nonnull @.str.1) #7
  br label %cond.end1722

cond.end1722:                                     ; preds = %cond.true1720, %if.then1716
  %212 = load ptr, ptr @this_insn, align 8
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef %212, ptr noundef nonnull @.str.4) #7
  br label %for.body1728.lr.ph

for.body1728.lr.ph:                               ; preds = %cond.end1722, %cond.end1710
  %tobool.not.i = icmp eq i32 %early_data.sroa.0.0.copyload, 0
  %conv.i = trunc i64 %early_data.sroa.6.0.copyload to i32
  %conv1.i = trunc i64 %early_data.sroa.7.0.copyload to i32
  %tobool3.not.i = icmp eq i32 %early_data.sroa.4.0.copyload, 0
  %idxprom1771 = zext i32 %210 to i64
  %arrayidx1772 = getelementptr inbounds nuw i32, ptr @reg_class_size, i64 %idxprom1771
  %wide.trip.count6027 = zext i32 %conv83 to i64
  br label %for.body1728

for.body1728:                                     ; preds = %for.inc1855, %for.body1728.lr.ph
  %indvars.iv6024 = phi i64 [ 0, %for.body1728.lr.ph ], [ %indvars.iv.next6025, %for.inc1855 ]
  %losers.95806 = phi i32 [ %losers.85821, %for.body1728.lr.ph ], [ %losers.10, %for.inc1855 ]
  %arrayidx1730 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv6024
  %213 = load ptr, ptr %arrayidx1730, align 8
  %bf.load1731 = load i32, ptr %213, align 8
  %bf.clear1732 = and i32 %bf.load1731, 65535
  %cmp1733 = icmp eq i32 %bf.clear1732, 43
  br i1 %cmp1733, label %land.lhs.true1740, label %lor.lhs.false1735

lor.lhs.false1735:                                ; preds = %for.body1728
  %arrayidx1737 = getelementptr inbounds nuw i32, ptr %modified, i64 %indvars.iv6024
  %214 = load i32, ptr %arrayidx1737, align 4
  %cmp1738.not = icmp eq i32 %214, 2
  %cmp1741.not = icmp eq i64 %indvars.iv6024, %indvars.iv6034
  %or.cond5334 = or i1 %cmp1741.not, %cmp1738.not
  br i1 %or.cond5334, label %for.inc1855, label %land.lhs.true1743

land.lhs.true1740:                                ; preds = %for.body1728
  %cmp1741.not.old = icmp eq i64 %indvars.iv6024, %indvars.iv6034
  br i1 %cmp1741.not.old, label %for.inc1855, label %land.lhs.true1743

land.lhs.true1743:                                ; preds = %land.lhs.true1740, %lor.lhs.false1735
  %arrayidx1745 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 480), i64 %indvars.iv6024
  %215 = load ptr, ptr %arrayidx1745, align 8
  %216 = load i8, ptr %215, align 1
  %cmp1747.not = icmp eq i8 %216, 0
  br i1 %cmp1747.not, label %for.inc1855, label %land.lhs.true1749

land.lhs.true1749:                                ; preds = %land.lhs.true1743
  %arrayidx1751 = getelementptr inbounds nuw i32, ptr %this_alternative_matches, i64 %indvars.iv6024
  %217 = load i32, ptr %arrayidx1751, align 4
  %218 = zext i32 %217 to i64
  %cmp1752 = icmp eq i64 %218, %indvars.iv6034
  br i1 %cmp1752, label %land.lhs.true1754, label %land.lhs.true1761

land.lhs.true1754:                                ; preds = %land.lhs.true1749
  %219 = load ptr, ptr %arrayidx1703, align 8
  %call1759 = call i32 @rtx_equal_p(ptr noundef %219, ptr noundef nonnull %213) #7
  %tobool1760.not = icmp eq i32 %call1759, 0
  br i1 %tobool1760.not, label %land.lhs.true1761, label %for.inc1855

land.lhs.true1761:                                ; preds = %land.lhs.true1754, %land.lhs.true1749
  %220 = load ptr, ptr %arrayidx1730, align 8
  %221 = load ptr, ptr %arrayidx1703, align 8
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true1761
  %call.i = call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %conv.i, i32 noundef %conv1.i, ptr noundef %220, ptr noundef null)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br label %immune_p.exit

if.end.i:                                         ; preds = %land.lhs.true1761
  br i1 %tobool3.not.i, label %if.end5.i, label %for.inc1855

if.end5.i:                                        ; preds = %if.end.i
  %bf.load.i = load i32, ptr %221, align 8
  %bf.clear.i = and i32 %bf.load.i, 65535
  %cmp.i = icmp eq i32 %bf.clear.i, 43
  br i1 %cmp.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end5.i
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2491, ptr noundef nonnull @.str.1) #7
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end5.i
  %bf.load7.i = load i32, ptr %220, align 8
  %bf.clear8.i = and i32 %bf.load7.i, 65535
  %cmp9.i = icmp eq i32 %bf.clear8.i, 43
  br i1 %cmp9.i, label %if.end12.i, label %for.inc1855

if.end12.i:                                       ; preds = %cond.end.i
  call void @llvm.lifetime.start.p0(ptr nonnull %tmp.i) #7
  call fastcc void @decompose(ptr dead_on_unwind noalias writable align 8 %tmp.i, ptr noundef nonnull %220)
  %xdata.sroa.3.0.copyload.i = load ptr, ptr %xdata.sroa.3.0.tmp.sroa_idx.i, align 8
  %xdata.sroa.9.0.copyload.i = load i64, ptr %xdata.sroa.9.0.tmp.sroa_idx.i, align 8
  %xdata.sroa.10.0.copyload.i = load i64, ptr %xdata.sroa.10.0.tmp.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %tmp.i) #7
  %call14.i = call i32 @rtx_equal_p(ptr noundef %xdata.sroa.3.0.copyload.i, ptr noundef %early_data.sroa.5.0.copyload) #7
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end72.i

if.then16.i:                                      ; preds = %if.end12.i
  %bf.load18.i = load i32, ptr %xdata.sroa.3.0.copyload.i, align 8
  %bf.clear19.i = and i32 %bf.load18.i, 65535
  %idxprom.i = zext nneg i32 %bf.clear19.i to i64
  %arrayidx.i = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom.i
  %222 = load i32, ptr %arrayidx.i, align 4
  %cmp20.i = icmp eq i32 %222, 9
  br i1 %cmp20.i, label %land.lhs.true.i, label %if.end50.i

land.lhs.true.i:                                  ; preds = %if.then16.i
  %bf.load23.i = load i32, ptr %early_data.sroa.5.0.copyload, align 8
  %bf.clear24.i = and i32 %bf.load23.i, 65535
  %idxprom25.i = zext nneg i32 %bf.clear24.i to i64
  %arrayidx26.i = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom25.i
  %223 = load i32, ptr %arrayidx26.i, align 4
  %cmp27.i = icmp eq i32 %223, 9
  br i1 %cmp27.i, label %for.inc1855, label %land.lhs.true38.i

land.lhs.true38.i:                                ; preds = %land.lhs.true.i
  %224 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_rtl, i64 24), align 8
  %cmp40.i = icmp eq ptr %early_data.sroa.5.0.copyload, %224
  %225 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_rtl, i64 32), align 16
  %cmp43.i = icmp eq ptr %early_data.sroa.5.0.copyload, %225
  %or.cond.i = select i1 %cmp40.i, i1 true, i1 %cmp43.i
  %226 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_rtl, i64 16), align 16
  %cmp47.i = icmp eq ptr %early_data.sroa.5.0.copyload, %226
  %or.cond88.i = select i1 %or.cond.i, i1 true, i1 %cmp47.i
  br i1 %or.cond88.i, label %for.inc1855, label %if.end50.i

if.end50.i:                                       ; preds = %land.lhs.true38.i, %if.then16.i
  %bf.load52.i = load i32, ptr %early_data.sroa.5.0.copyload, align 8
  %bf.clear53.i = and i32 %bf.load52.i, 65535
  %idxprom54.i = zext nneg i32 %bf.clear53.i to i64
  %arrayidx55.i = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom54.i
  %227 = load i32, ptr %arrayidx55.i, align 4
  %cmp56.i = icmp eq i32 %227, 9
  br i1 %cmp56.i, label %land.lhs.true58.i, label %if.then1768

land.lhs.true58.i:                                ; preds = %if.end50.i
  %228 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_rtl, i64 24), align 8
  %cmp60.i = icmp eq ptr %xdata.sroa.3.0.copyload.i, %228
  %229 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_rtl, i64 32), align 16
  %cmp64.i = icmp eq ptr %xdata.sroa.3.0.copyload.i, %229
  %or.cond89.i = select i1 %cmp60.i, i1 true, i1 %cmp64.i
  %230 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_rtl, i64 16), align 16
  %cmp68.i = icmp eq ptr %xdata.sroa.3.0.copyload.i, %230
  %or.cond90.i = select i1 %or.cond89.i, i1 true, i1 %cmp68.i
  br i1 %or.cond90.i, label %for.inc1855, label %if.then1768

if.end72.i:                                       ; preds = %if.end12.i
  %cmp75.i = icmp sge i64 %xdata.sroa.9.0.copyload.i, %early_data.sroa.7.0.copyload
  %cmp79.i = icmp sge i64 %early_data.sroa.6.0.copyload, %xdata.sroa.10.0.copyload.i
  %231 = select i1 %cmp75.i, i1 true, i1 %cmp79.i
  br label %immune_p.exit

immune_p.exit:                                    ; preds = %if.end72.i, %if.then.i
  %retval.0.shrunk.i = phi i1 [ %tobool2.not.i, %if.then.i ], [ %231, %if.end72.i ]
  br i1 %retval.0.shrunk.i, label %for.inc1855, label %if.then1768

if.then1768:                                      ; preds = %immune_p.exit, %land.lhs.true58.i, %if.end50.i
  %232 = load i32, ptr %arrayidx1772, align 4
  %233 = trunc nuw nsw i64 %indvars.iv6024 to i32
  switch i32 %232, label %land.lhs.true1782 [
    i32 1, label %land.lhs.true1832
    i32 0, label %for.end1857
  ]

land.lhs.true1782:                                ; preds = %if.then1768
  switch i32 %210, label %for.end1857 [
    i32 1, label %land.lhs.true1832
    i32 2, label %land.lhs.true1832
    i32 3, label %land.lhs.true1832
    i32 4, label %land.lhs.true1832
    i32 7, label %land.lhs.true1832
    i32 5, label %land.lhs.true1832
    i32 6, label %land.lhs.true1832
    i32 17, label %land.lhs.true1832
    i32 14, label %land.lhs.true1832
    i32 15, label %land.lhs.true1832
  ]

land.lhs.true1832:                                ; preds = %land.lhs.true1782, %land.lhs.true1782, %land.lhs.true1782, %land.lhs.true1782, %land.lhs.true1782, %land.lhs.true1782, %land.lhs.true1782, %land.lhs.true1782, %land.lhs.true1782, %land.lhs.true1782, %if.then1768
  %234 = load ptr, ptr %arrayidx1730, align 8
  %bf.load1835 = load i32, ptr %234, align 8
  %trunc5676 = trunc i32 %bf.load1835 to i16
  switch i16 %trunc5676, label %for.end1857 [
    i16 37, label %if.then1846
    i16 39, label %if.then1846
  ]

if.then1846:                                      ; preds = %land.lhs.true1832, %land.lhs.true1832
  %inc1847 = add nsw i32 %losers.95806, 1
  %arrayidx1849 = getelementptr inbounds nuw i8, ptr %this_alternative_win, i64 %indvars.iv6024
  store i8 0, ptr %arrayidx1849, align 1
  %arrayidx1851 = getelementptr inbounds nuw i8, ptr %this_alternative_match_win, i64 %indvars.iv6024
  store i8 0, ptr %arrayidx1851, align 1
  br label %for.inc1855

for.inc1855:                                      ; preds = %if.then1846, %immune_p.exit, %land.lhs.true58.i, %land.lhs.true38.i, %land.lhs.true.i, %cond.end.i, %if.end.i, %land.lhs.true1754, %land.lhs.true1743, %land.lhs.true1740, %lor.lhs.false1735
  %losers.10 = phi i32 [ %losers.95806, %land.lhs.true1754 ], [ %losers.95806, %immune_p.exit ], [ %inc1847, %if.then1846 ], [ %losers.95806, %land.lhs.true1743 ], [ %losers.95806, %land.lhs.true1740 ], [ %losers.95806, %lor.lhs.false1735 ], [ %losers.95806, %if.end.i ], [ %losers.95806, %cond.end.i ], [ %losers.95806, %land.lhs.true.i ], [ %losers.95806, %land.lhs.true38.i ], [ %losers.95806, %land.lhs.true58.i ]
  %indvars.iv.next6025 = add nuw nsw i64 %indvars.iv6024, 1
  %exitcond6028 = icmp ne i64 %indvars.iv.next6025, %wide.trip.count6027
  br i1 %exitcond6028, label %for.body1728, label %for.end1857, !llvm.loop !10

for.end1857:                                      ; preds = %for.inc1855, %land.lhs.true1832, %land.lhs.true1782, %if.then1768
  %losers.9.lcssa = phi i32 [ %losers.95806, %land.lhs.true1832 ], [ %losers.95806, %land.lhs.true1782 ], [ %losers.95806, %if.then1768 ], [ %losers.10, %for.inc1855 ]
  %j.1.lcssa = phi i32 [ %233, %land.lhs.true1832 ], [ %233, %land.lhs.true1782 ], [ %233, %if.then1768 ], [ %conv83, %for.inc1855 ]
  %cmp1858.not = icmp eq i32 %j.1.lcssa, %conv83
  br i1 %cmp1858.not, label %for.inc1891, label %if.then1860

if.then1860:                                      ; preds = %for.end1857
  %inc1861 = add nsw i32 %losers.9.lcssa, 1
  store i8 0, ptr %arrayidx1693, align 1
  %idxprom1864 = zext nneg i32 %j.1.lcssa to i64
  %arrayidx1865 = getelementptr inbounds nuw i8, ptr %this_alternative_match_win, i64 %idxprom1864
  store i8 0, ptr %arrayidx1865, align 1
  %wide.trip.count6032 = zext i32 %conv83 to i64
  br label %for.body1869

for.body1869:                                     ; preds = %for.inc1886, %if.then1860
  %indvars.iv6029 = phi i64 [ 0, %if.then1860 ], [ %indvars.iv.next6030, %for.inc1886 ]
  %losers.115817 = phi i32 [ %inc1861, %if.then1860 ], [ %losers.12, %for.inc1886 ]
  %arrayidx1871 = getelementptr inbounds nuw i32, ptr %this_alternative_matches, i64 %indvars.iv6029
  %235 = load i32, ptr %arrayidx1871, align 4
  %236 = zext i32 %235 to i64
  %cmp1872 = icmp eq i64 %236, %indvars.iv6034
  br i1 %cmp1872, label %land.lhs.true1874, label %for.inc1886

land.lhs.true1874:                                ; preds = %for.body1869
  %arrayidx1876 = getelementptr inbounds nuw i8, ptr %this_alternative_match_win, i64 %indvars.iv6029
  %237 = load i8, ptr %arrayidx1876, align 1
  %tobool1878.not = icmp eq i8 %237, 0
  br i1 %tobool1878.not, label %for.inc1886, label %if.then1879

if.then1879:                                      ; preds = %land.lhs.true1874
  %arrayidx1881 = getelementptr inbounds nuw i8, ptr %this_alternative_win, i64 %indvars.iv6029
  store i8 0, ptr %arrayidx1881, align 1
  store i8 0, ptr %arrayidx1876, align 1
  %inc1884 = add nsw i32 %losers.115817, 1
  br label %for.inc1886

for.inc1886:                                      ; preds = %if.then1879, %land.lhs.true1874, %for.body1869
  %losers.12 = phi i32 [ %inc1884, %if.then1879 ], [ %losers.115817, %land.lhs.true1874 ], [ %losers.115817, %for.body1869 ]
  %indvars.iv.next6030 = add nuw nsw i64 %indvars.iv6029, 1
  %exitcond6033 = icmp ne i64 %indvars.iv.next6030, %wide.trip.count6032
  br i1 %exitcond6033, label %for.body1869, label %for.inc1891.loopexit, !llvm.loop !11

for.inc1891.loopexit:                             ; preds = %for.inc1886
  %losers.12.lcssa = phi i32 [ %losers.12, %for.inc1886 ]
  br label %for.inc1891

for.inc1891:                                      ; preds = %for.inc1891.loopexit, %for.end1857, %lor.lhs.false1696, %for.body1686
  %losers.14 = phi i32 [ %losers.85821, %lor.lhs.false1696 ], [ %losers.85821, %for.body1686 ], [ %losers.9.lcssa, %for.end1857 ], [ %losers.12.lcssa, %for.inc1891.loopexit ]
  %indvars.iv.next6035 = add nuw nsw i64 %indvars.iv6034, 1
  %exitcond6038 = icmp ne i64 %indvars.iv.next6035, %wide.trip.count6037
  br i1 %exitcond6038, label %for.body1686, label %for.end1893.loopexit, !llvm.loop !12

for.end1893.loopexit:                             ; preds = %for.inc1891
  %losers.14.lcssa = phi i32 [ %losers.14, %for.inc1891 ]
  br label %for.end1893

for.end1893:                                      ; preds = %for.end1893.loopexit, %for.cond1683.preheader
  %losers.8.lcssa = phi i32 [ %losers.0.lcssa, %for.cond1683.preheader ], [ %losers.14.lcssa, %for.end1893.loopexit ]
  %cmp1894 = icmp eq i32 %losers.8.lcssa, 0
  br i1 %cmp1894, label %if.then1896, label %if.end1942

if.then1896:                                      ; preds = %for.end1893
  %swapped.0.lcssa = phi i32 [ %swapped.0, %for.end1893 ]
  %this_alternative_number.05839.lcssa.wide = phi i64 [ %indvars.iv6052, %for.end1893 ]
  %this_earlyclobber.0.lcssa.lcssa = phi i32 [ %this_earlyclobber.0.lcssa, %for.end1893 ]
  %238 = trunc nuw nsw i64 %this_alternative_number.05839.lcssa.wide to i32
  %cmp1897 = icmp sgt i32 %commutative.0.lcssa, -1
  br i1 %cmp1897, label %if.then1899, label %if.end1910

if.then1899:                                      ; preds = %if.then1896
  %idxprom1900 = zext nneg i32 %commutative.0.lcssa to i64
  %arrayidx1901 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %idxprom1900
  %239 = load ptr, ptr %arrayidx1901, align 8
  %arrayidx1903 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %idxprom1900
  store ptr %239, ptr %arrayidx1903, align 8
  %add1904 = add nuw nsw i32 %commutative.0.lcssa, 1
  %idxprom1905 = zext nneg i32 %add1904 to i64
  %arrayidx1906 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %idxprom1905
  %240 = load ptr, ptr %arrayidx1906, align 8
  %arrayidx1909 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %idxprom1905
  store ptr %240, ptr %arrayidx1909, align 8
  br label %if.end1910

if.end1910:                                       ; preds = %if.then1899, %if.then1896
  %cmp19125851 = icmp sgt i8 %8, 0
  br i1 %cmp19125851, label %for.body1914.preheader, label %finish

for.body1914.preheader:                           ; preds = %if.end1910
  %241 = zext i32 %conv83 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %goal_alternative_win, ptr align 1 %this_alternative_win, i64 %241, i1 false)
  %242 = zext i32 %conv83 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %goal_alternative_match_win, ptr align 1 %this_alternative_match_win, i64 %242, i1 false)
  %243 = zext i32 %conv83 to i64
  %244 = shl nuw nsw i64 %243, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %goal_alternative, ptr align 4 %this_alternative, i64 %244, i1 false)
  %245 = zext i32 %conv83 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %goal_alternative_offmemok, ptr align 1 %this_alternative_offmemok, i64 %245, i1 false)
  %246 = zext i32 %conv83 to i64
  %247 = shl nuw nsw i64 %246, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %goal_alternative_matches, ptr align 4 %this_alternative_matches, i64 %247, i1 false)
  %248 = zext i32 %conv83 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %goal_alternative_earlyclobber, ptr align 1 %this_alternative_earlyclobber, i64 %248, i1 false)
  br label %finish.loopexit

if.end1942:                                       ; preds = %for.end1893
  %mul1943 = mul nsw i32 %losers.8.lcssa, 6
  %add1944 = add nsw i32 %mul1943, %reject.0.lcssa
  %tobool1945.not = icmp ne i32 %bad.0.lcssa, 0
  %cmp1947.not = icmp slt i32 %best.15836, %add1944
  %or.cond5668 = select i1 %tobool1945.not, i1 true, i1 %cmp1947.not
  br i1 %or.cond5668, label %for.inc2075, label %for.cond1950.preheader

for.cond1950.preheader:                           ; preds = %if.end1942
  br i1 %cmp19515825, label %for.body1953.preheader, label %for.end2023

for.body1953.preheader:                           ; preds = %for.cond1950.preheader
  %wide.trip.count6042 = zext i32 %conv83 to i64
  br label %for.body1953

for.body1953:                                     ; preds = %lor.end2018, %for.body1953.preheader
  %indvars.iv6039 = phi i64 [ 0, %for.body1953.preheader ], [ %indvars.iv.next6040, %lor.end2018 ]
  %small_class_operands_num.05826 = phi i32 [ %add2020, %lor.end2018 ], [ 0, %for.body1953.preheader ]
  %arrayidx1955 = getelementptr inbounds nuw i32, ptr %this_alternative, i64 %indvars.iv6039
  %249 = load i32, ptr %arrayidx1955, align 4
  %idxprom1956 = zext i32 %249 to i64
  %arrayidx1957 = getelementptr inbounds nuw i32, ptr @reg_class_size, i64 %idxprom1956
  %250 = load i32, ptr %arrayidx1957, align 4
  switch i32 %250, label %land.rhs1966 [
    i32 1, label %lor.end2018
    i32 0, label %lor.end2018.fold.split
  ]

land.rhs1966:                                     ; preds = %for.body1953
  switch i32 %249, label %lor.rhs2011 [
    i32 1, label %lor.end2018
    i32 2, label %lor.end2018
    i32 3, label %lor.end2018
    i32 4, label %lor.end2018
    i32 7, label %lor.end2018
    i32 5, label %lor.end2018
    i32 6, label %lor.end2018
    i32 17, label %lor.end2018
    i32 14, label %lor.end2018
  ]

lor.rhs2011:                                      ; preds = %land.rhs1966
  %cmp2014 = icmp eq i32 %249, 15
  %251 = zext i1 %cmp2014 to i32
  br label %lor.end2018

lor.end2018.fold.split:                           ; preds = %for.body1953
  br label %lor.end2018

lor.end2018:                                      ; preds = %lor.end2018.fold.split, %lor.rhs2011, %land.rhs1966, %land.rhs1966, %land.rhs1966, %land.rhs1966, %land.rhs1966, %land.rhs1966, %land.rhs1966, %land.rhs1966, %land.rhs1966, %for.body1953
  %cond2019 = phi i32 [ 1, %for.body1953 ], [ 1, %land.rhs1966 ], [ %251, %lor.rhs2011 ], [ 0, %lor.end2018.fold.split ], [ 1, %land.rhs1966 ], [ 1, %land.rhs1966 ], [ 1, %land.rhs1966 ], [ 1, %land.rhs1966 ], [ 1, %land.rhs1966 ], [ 1, %land.rhs1966 ], [ 1, %land.rhs1966 ], [ 1, %land.rhs1966 ]
  %add2020 = add nuw nsw i32 %cond2019, %small_class_operands_num.05826
  %indvars.iv.next6040 = add nuw nsw i64 %indvars.iv6039, 1
  %exitcond6043 = icmp ne i64 %indvars.iv.next6040, %wide.trip.count6042
  br i1 %exitcond6043, label %for.body1953, label %for.end2023.loopexit, !llvm.loop !13

for.end2023.loopexit:                             ; preds = %lor.end2018
  %add2020.lcssa = phi i32 [ %add2020, %lor.end2018 ]
  br label %for.end2023

for.end2023:                                      ; preds = %for.end2023.loopexit, %for.cond1950.preheader
  %small_class_operands_num.0.lcssa = phi i32 [ 0, %for.cond1950.preheader ], [ %add2020.lcssa, %for.end2023.loopexit ]
  %cmp2024 = icmp sgt i32 %best.15836, %add1944
  br i1 %cmp2024, label %if.end2034, label %lor.lhs.false2026

lor.lhs.false2026:                                ; preds = %for.end2023
  %cmp2027 = icmp eq i32 %best.15836, %add1944
  %cmp2030 = icmp slt i32 %small_class_operands_num.0.lcssa, %best_small_class_operands_num.15835
  %or.cond5335 = select i1 %cmp2027, i1 %cmp2030, i1 false
  br i1 %or.cond5335, label %if.end2034, label %for.inc2075

if.end2034:                                       ; preds = %lor.lhs.false2026, %for.end2023
  %252 = trunc nuw nsw i64 %indvars.iv6052 to i32
  br i1 %cmp20385829, label %for.body2040.preheader, label %for.inc2075

for.body2040.preheader:                           ; preds = %if.end2034
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %goal_alternative, ptr align 4 %this_alternative, i64 %90, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %goal_alternative_win, ptr align 1 %this_alternative_win, i64 %91, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %goal_alternative_match_win, ptr align 1 %this_alternative_match_win, i64 %92, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %goal_alternative_offmemok, ptr align 1 %this_alternative_offmemok, i64 %93, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %goal_alternative_matches, ptr align 4 %this_alternative_matches, i64 %95, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %goal_alternative_earlyclobber, ptr align 1 %this_alternative_earlyclobber, i64 %96, i1 false)
  br label %for.inc2075.loopexit5937

for.inc2075.loopexit:                             ; preds = %skip_alternative.exit
  br label %for.inc2075

for.inc2075.loopexit5937:                         ; preds = %for.body2040.preheader
  br label %for.inc2075

for.inc2075:                                      ; preds = %for.inc2075.loopexit5937, %for.inc2075.loopexit, %if.end2034, %lor.lhs.false2026, %if.end1942, %for.cond603.preheader
  %goal_earlyclobber.4.ph = phi i32 [ %goal_earlyclobber.15834, %if.end1942 ], [ %goal_earlyclobber.15834, %lor.lhs.false2026 ], [ %goal_earlyclobber.15834, %for.cond603.preheader ], [ %this_earlyclobber.0.lcssa, %if.end2034 ], [ %goal_earlyclobber.15834, %for.inc2075.loopexit ], [ %this_earlyclobber.0.lcssa, %for.inc2075.loopexit5937 ]
  %best_small_class_operands_num.4.ph = phi i32 [ %best_small_class_operands_num.15835, %if.end1942 ], [ %best_small_class_operands_num.15835, %lor.lhs.false2026 ], [ %best_small_class_operands_num.15835, %for.cond603.preheader ], [ %small_class_operands_num.0.lcssa, %if.end2034 ], [ %best_small_class_operands_num.15835, %for.inc2075.loopexit ], [ %small_class_operands_num.0.lcssa, %for.inc2075.loopexit5937 ]
  %best.4.ph = phi i32 [ %best.15836, %if.end1942 ], [ %best.15836, %lor.lhs.false2026 ], [ %best.15836, %for.cond603.preheader ], [ %add1944, %if.end2034 ], [ %best.15836, %for.inc2075.loopexit ], [ %add1944, %for.inc2075.loopexit5937 ]
  %goal_alternative_swapped.4.ph = phi i32 [ %goal_alternative_swapped.15837, %if.end1942 ], [ %goal_alternative_swapped.15837, %lor.lhs.false2026 ], [ %goal_alternative_swapped.15837, %for.cond603.preheader ], [ %swapped.0, %if.end2034 ], [ %goal_alternative_swapped.15837, %for.inc2075.loopexit ], [ %swapped.0, %for.inc2075.loopexit5937 ]
  %goal_alternative_number.4.ph = phi i32 [ %goal_alternative_number.15838, %if.end1942 ], [ %goal_alternative_number.15838, %lor.lhs.false2026 ], [ %goal_alternative_number.15838, %for.cond603.preheader ], [ %252, %if.end2034 ], [ %goal_alternative_number.15838, %for.inc2075.loopexit ], [ %252, %for.inc2075.loopexit5937 ]
  %indvars.iv.next6053 = add nuw nsw i64 %indvars.iv6052, 1
  %exitcond6056 = icmp ne i64 %indvars.iv.next6053, %wide.trip.count6055
  br i1 %exitcond6056, label %for.body597, label %for.end2077.loopexit, !llvm.loop !14

for.end2077.loopexit:                             ; preds = %for.inc2075
  %goal_earlyclobber.4.ph.lcssa = phi i32 [ %goal_earlyclobber.4.ph, %for.inc2075 ]
  %best_small_class_operands_num.4.ph.lcssa = phi i32 [ %best_small_class_operands_num.4.ph, %for.inc2075 ]
  %best.4.ph.lcssa = phi i32 [ %best.4.ph, %for.inc2075 ]
  %goal_alternative_swapped.4.ph.lcssa = phi i32 [ %goal_alternative_swapped.4.ph, %for.inc2075 ]
  %goal_alternative_number.4.ph.lcssa = phi i32 [ %goal_alternative_number.4.ph, %for.inc2075 ]
  br label %for.end2077

for.end2077:                                      ; preds = %for.end2077.loopexit, %try_swapped
  %goal_earlyclobber.1.lcssa = phi i32 [ %goal_earlyclobber.0, %try_swapped ], [ %goal_earlyclobber.4.ph.lcssa, %for.end2077.loopexit ]
  %best_small_class_operands_num.1.lcssa = phi i32 [ %best_small_class_operands_num.0, %try_swapped ], [ %best_small_class_operands_num.4.ph.lcssa, %for.end2077.loopexit ]
  %best.1.lcssa = phi i32 [ %best.0, %try_swapped ], [ %best.4.ph.lcssa, %for.end2077.loopexit ]
  %goal_alternative_swapped.1.lcssa = phi i32 [ %goal_alternative_swapped.0, %try_swapped ], [ %goal_alternative_swapped.4.ph.lcssa, %for.end2077.loopexit ]
  %goal_alternative_number.1.lcssa = phi i32 [ %goal_alternative_number.0, %try_swapped ], [ %goal_alternative_number.4.ph.lcssa, %for.end2077.loopexit ]
  br i1 %cmp2078, label %if.then2080, label %if.end2201.loopexit5938

if.then2080:                                      ; preds = %for.end2077
  %tobool2081.not = icmp eq i32 %swapped.0, 0
  %lnot.ext = xor i32 %swapped.0, 1
  br i1 %tobool2081.not, label %if.then2083, label %if.else2160

if.then2083:                                      ; preds = %if.then2080
  %253 = load ptr, ptr %arrayidx2086, align 8
  store ptr %253, ptr %arrayidx2088, align 8
  %254 = load ptr, ptr %arrayidx2090, align 8
  store ptr %254, ptr %arrayidx2093, align 8
  %255 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1087), align 1
  %cmp20965846 = icmp sgt i8 %255, 0
  br i1 %cmp20965846, label %for.body2098.preheader, label %for.end2122

for.body2098.preheader:                           ; preds = %if.then2083
  br label %for.body2098

for.body2098:                                     ; preds = %for.inc2120, %for.body2098.preheader
  %indvars.iv6057 = phi i64 [ 0, %for.body2098.preheader ], [ %indvars.iv.next6058, %for.inc2120 ]
  %arrayidx2100 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1072), i64 %indvars.iv6057
  %256 = load i8, ptr %arrayidx2100, align 1
  %conv2101 = sext i8 %256 to i32
  %cmp2102 = icmp eq i32 %commutative.0.lcssa, %conv2101
  %cmp2109 = icmp eq i32 %add2084, %conv2101
  %or.cond5337 = or i1 %cmp2102, %cmp2109
  br i1 %or.cond5337, label %if.then2111, label %for.inc2120

if.then2111:                                      ; preds = %for.body2098
  %idxprom2115 = sext i8 %256 to i64
  %arrayidx2116 = getelementptr inbounds ptr, ptr @recog_data, i64 %idxprom2115
  %257 = load ptr, ptr %arrayidx2116, align 8
  %arrayidx2118 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 960), i64 %indvars.iv6057
  %258 = load ptr, ptr %arrayidx2118, align 8
  store ptr %257, ptr %258, align 8
  br label %for.inc2120

for.inc2120:                                      ; preds = %if.then2111, %for.body2098
  %indvars.iv.next6058 = add nuw nsw i64 %indvars.iv6057, 1
  %259 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1087), align 1
  %conv2095 = sext i8 %259 to i32
  %260 = sext i32 %conv2095 to i64
  %cmp2096 = icmp slt i64 %indvars.iv.next6058, %260
  br i1 %cmp2096, label %for.body2098, label %for.end2122.loopexit, !llvm.loop !15

for.end2122.loopexit:                             ; preds = %for.inc2120
  br label %for.end2122

for.end2122:                                      ; preds = %for.end2122.loopexit, %if.then2083
  %261 = load i32, ptr %arrayidx2124, align 4
  %262 = load i32, ptr %arrayidx2127, align 4
  store i32 %262, ptr %arrayidx2124, align 4
  store i32 %261, ptr %arrayidx2127, align 4
  %263 = load i8, ptr %arrayidx2134, align 1
  %264 = load i8, ptr %arrayidx2138, align 1
  store i8 %264, ptr %arrayidx2134, align 1
  store i8 %263, ptr %arrayidx2138, align 1
  %265 = load i32, ptr %arrayidx2146, align 4
  %266 = load i32, ptr %arrayidx2149, align 4
  store i32 %266, ptr %arrayidx2146, align 4
  store i32 %265, ptr %arrayidx2149, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %constraints, ptr nonnull align 8 getelementptr inbounds nuw (i8, ptr @recog_data, i64 480), i64 %mul100, i1 false)
  br label %try_swapped

if.else2160:                                      ; preds = %if.then2080
  %goal_earlyclobber.1.lcssa.lcssa6005 = phi i32 [ %goal_earlyclobber.1.lcssa, %if.then2080 ]
  %best.1.lcssa.lcssa6003 = phi i32 [ %best.1.lcssa, %if.then2080 ]
  %goal_alternative_swapped.1.lcssa.lcssa6001 = phi i32 [ %goal_alternative_swapped.1.lcssa, %if.then2080 ]
  %goal_alternative_number.1.lcssa.lcssa5999 = phi i32 [ %goal_alternative_number.1.lcssa, %if.then2080 ]
  %idxprom2161 = zext nneg i32 %commutative.0.lcssa to i64
  %arrayidx2162 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %idxprom2161
  %267 = load ptr, ptr %arrayidx2162, align 8
  %arrayidx2164 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %idxprom2161
  store ptr %267, ptr %arrayidx2164, align 8
  %add2165 = add nuw nsw i32 %commutative.0.lcssa, 1
  %idxprom2166 = zext nneg i32 %add2165 to i64
  %arrayidx2167 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %idxprom2166
  %268 = load ptr, ptr %arrayidx2167, align 8
  %arrayidx2170 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %idxprom2166
  store ptr %268, ptr %arrayidx2170, align 8
  %269 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1087), align 1
  %cmp21735849 = icmp sgt i8 %269, 0
  br i1 %cmp21735849, label %for.body2175.preheader, label %if.end2201

for.body2175.preheader:                           ; preds = %if.else2160
  br label %for.body2175

for.body2175:                                     ; preds = %for.inc2197, %for.body2175.preheader
  %indvars.iv6063 = phi i64 [ 0, %for.body2175.preheader ], [ %indvars.iv.next6064, %for.inc2197 ]
  %arrayidx2177 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1072), i64 %indvars.iv6063
  %270 = load i8, ptr %arrayidx2177, align 1
  %conv2178 = sext i8 %270 to i32
  %cmp2179 = icmp eq i32 %commutative.0.lcssa, %conv2178
  %cmp2186 = icmp eq i32 %add2165, %conv2178
  %or.cond5338 = or i1 %cmp2179, %cmp2186
  br i1 %or.cond5338, label %if.then2188, label %for.inc2197

if.then2188:                                      ; preds = %for.body2175
  %idxprom2192 = sext i8 %270 to i64
  %arrayidx2193 = getelementptr inbounds ptr, ptr @recog_data, i64 %idxprom2192
  %271 = load ptr, ptr %arrayidx2193, align 8
  %arrayidx2195 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 960), i64 %indvars.iv6063
  %272 = load ptr, ptr %arrayidx2195, align 8
  store ptr %271, ptr %272, align 8
  br label %for.inc2197

for.inc2197:                                      ; preds = %if.then2188, %for.body2175
  %indvars.iv.next6064 = add nuw nsw i64 %indvars.iv6063, 1
  %273 = load i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1087), align 1
  %conv2172 = sext i8 %273 to i32
  %274 = sext i32 %conv2172 to i64
  %cmp2173 = icmp slt i64 %indvars.iv.next6064, %274
  br i1 %cmp2173, label %for.body2175, label %if.end2201.loopexit, !llvm.loop !16

if.end2201.loopexit:                              ; preds = %for.inc2197
  br label %if.end2201

if.end2201.loopexit5938:                          ; preds = %for.end2077
  %goal_earlyclobber.1.lcssa.lcssa = phi i32 [ %goal_earlyclobber.1.lcssa, %for.end2077 ]
  %best.1.lcssa.lcssa = phi i32 [ %best.1.lcssa, %for.end2077 ]
  %goal_alternative_swapped.1.lcssa.lcssa = phi i32 [ %goal_alternative_swapped.1.lcssa, %for.end2077 ]
  %goal_alternative_number.1.lcssa.lcssa = phi i32 [ %goal_alternative_number.1.lcssa, %for.end2077 ]
  br label %if.end2201

if.end2201:                                       ; preds = %if.end2201.loopexit5938, %if.end2201.loopexit, %if.else2160
  %goal_earlyclobber.1.lcssa6006 = phi i32 [ %goal_earlyclobber.1.lcssa.lcssa, %if.end2201.loopexit5938 ], [ %goal_earlyclobber.1.lcssa.lcssa6005, %if.end2201.loopexit ], [ %goal_earlyclobber.1.lcssa.lcssa6005, %if.else2160 ]
  %best.1.lcssa6004 = phi i32 [ %best.1.lcssa.lcssa, %if.end2201.loopexit5938 ], [ %best.1.lcssa.lcssa6003, %if.end2201.loopexit ], [ %best.1.lcssa.lcssa6003, %if.else2160 ]
  %goal_alternative_swapped.1.lcssa6002 = phi i32 [ %goal_alternative_swapped.1.lcssa.lcssa, %if.end2201.loopexit5938 ], [ %goal_alternative_swapped.1.lcssa.lcssa6001, %if.end2201.loopexit ], [ %goal_alternative_swapped.1.lcssa.lcssa6001, %if.else2160 ]
  %goal_alternative_number.1.lcssa6000 = phi i32 [ %goal_alternative_number.1.lcssa.lcssa, %if.end2201.loopexit5938 ], [ %goal_alternative_number.1.lcssa.lcssa5999, %if.end2201.loopexit ], [ %goal_alternative_number.1.lcssa.lcssa5999, %if.else2160 ]
  %cmp2202 = icmp eq i32 %best.1.lcssa6004, 660
  br i1 %cmp2202, label %if.then2204, label %finish

if.then2204:                                      ; preds = %if.end2201
  %cmp2205 = icmp sgt i32 %10, -1
  br i1 %cmp2205, label %if.then2207, label %if.end2208

if.then2207:                                      ; preds = %if.then2204
  call void @_fatal_insn(ptr noundef nonnull @.str.5, ptr noundef %insn, ptr noundef nonnull @.str, i32 noundef 3821, ptr noundef nonnull @.str.1) #7
  br label %if.end2208

if.end2208:                                       ; preds = %if.then2207, %if.then2204
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef %insn, ptr noundef nonnull @.str.6) #7
  %275 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @const_int_rtx, i64 512), align 16
  %call2209 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %275) #7
  store ptr %call2209, ptr %arrayidx, align 8
  store i32 0, ptr @n_reloads, align 4
  br label %cleanup4125

finish.loopexit:                                  ; preds = %for.body1914.preheader
  br label %finish

finish:                                           ; preds = %finish.loopexit, %if.end2201, %if.end1910
  %goal_earlyclobber.5 = phi i32 [ %goal_earlyclobber.1.lcssa6006, %if.end2201 ], [ %this_earlyclobber.0.lcssa.lcssa, %if.end1910 ], [ %this_earlyclobber.0.lcssa.lcssa, %finish.loopexit ]
  %goal_alternative_swapped.5 = phi i32 [ %goal_alternative_swapped.1.lcssa6002, %if.end2201 ], [ %swapped.0.lcssa, %if.end1910 ], [ %swapped.0.lcssa, %finish.loopexit ]
  %goal_alternative_number.5 = phi i32 [ %goal_alternative_number.1.lcssa6000, %if.end2201 ], [ %238, %if.end1910 ], [ %238, %finish.loopexit ]
  %cmp22145853 = icmp sgt i8 %8, 0
  br i1 %cmp22145853, label %for.body2216.preheader, label %for.cond2222.preheader

for.body2216.preheader:                           ; preds = %finish
  %276 = zext i32 %conv83 to i64
  %277 = shl nuw nsw i64 %276, 2
  call void @llvm.memset.p0.i64(ptr align 4 %goal_alternative_matched, i8 -1, i64 %277, i1 false)
  br label %for.cond2222.preheader.loopexit

for.cond2222.preheader.loopexit:                  ; preds = %for.body2216.preheader
  br label %for.cond2222.preheader

for.cond2222.preheader:                           ; preds = %for.cond2222.preheader.loopexit, %finish
  %cmp22235855 = icmp sgt i8 %8, 0
  br i1 %cmp22235855, label %for.body2225.preheader, label %for.cond2243.preheader

for.body2225.preheader:                           ; preds = %for.cond2222.preheader
  %wide.trip.count6072 = zext i32 %conv83 to i64
  br label %for.body2225

for.cond2243.preheader.loopexit:                  ; preds = %for.inc2240
  br label %for.cond2243.preheader

for.cond2243.preheader:                           ; preds = %for.cond2243.preheader.loopexit, %for.cond2222.preheader
  %cmp22445857 = icmp sgt i8 %8, 0
  br i1 %cmp22445857, label %for.body2246.preheader, label %for.end2257

for.body2246.preheader:                           ; preds = %for.cond2243.preheader
  %wide.trip.count6077 = zext i32 %conv83 to i64
  br label %for.body2246

for.body2225:                                     ; preds = %for.inc2240, %for.body2225.preheader
  %indvars.iv6069 = phi i64 [ 0, %for.body2225.preheader ], [ %indvars.iv.next6070, %for.inc2240 ]
  %arrayidx2227 = getelementptr inbounds nuw i8, ptr %goal_alternative_win, i64 %indvars.iv6069
  %278 = load i8, ptr %arrayidx2227, align 1
  %tobool2228.not = icmp eq i8 %278, 0
  br i1 %tobool2228.not, label %land.lhs.true2229, label %for.inc2240

land.lhs.true2229:                                ; preds = %for.body2225
  %arrayidx2231 = getelementptr inbounds nuw i32, ptr %goal_alternative_matches, i64 %indvars.iv6069
  %279 = load i32, ptr %arrayidx2231, align 4
  %cmp2232 = icmp sgt i32 %279, -1
  br i1 %cmp2232, label %if.then2234, label %for.inc2240

if.then2234:                                      ; preds = %land.lhs.true2229
  %idxprom2237 = zext nneg i32 %279 to i64
  %arrayidx2238 = getelementptr inbounds nuw i32, ptr %goal_alternative_matched, i64 %idxprom2237
  %280 = trunc nuw nsw i64 %indvars.iv6069 to i32
  store i32 %280, ptr %arrayidx2238, align 4
  br label %for.inc2240

for.inc2240:                                      ; preds = %if.then2234, %land.lhs.true2229, %for.body2225
  %indvars.iv.next6070 = add nuw nsw i64 %indvars.iv6069, 1
  %exitcond6073 = icmp ne i64 %indvars.iv.next6070, %wide.trip.count6072
  br i1 %exitcond6073, label %for.body2225, label %for.cond2243.preheader.loopexit, !llvm.loop !17

for.body2246:                                     ; preds = %for.body2246, %for.body2246.preheader
  %indvars.iv6074 = phi i64 [ 0, %for.body2246.preheader ], [ %indvars.iv.next6075, %for.body2246 ]
  %arrayidx2248 = getelementptr inbounds nuw i8, ptr %goal_alternative_match_win, i64 %indvars.iv6074
  %281 = load i8, ptr %arrayidx2248, align 1
  %arrayidx2251 = getelementptr inbounds nuw i8, ptr %goal_alternative_win, i64 %indvars.iv6074
  %282 = load i8, ptr %arrayidx2251, align 1
  %or22535295 = or i8 %282, %281
  store i8 %or22535295, ptr %arrayidx2251, align 1
  %indvars.iv.next6075 = add nuw nsw i64 %indvars.iv6074, 1
  %exitcond6078 = icmp ne i64 %indvars.iv.next6075, %wide.trip.count6077
  br i1 %exitcond6078, label %for.body2246, label %for.end2257.loopexit, !llvm.loop !18

for.end2257.loopexit:                             ; preds = %for.body2246
  br label %for.end2257

for.end2257:                                      ; preds = %for.end2257.loopexit, %for.cond2243.preheader
  %tobool2258.not = icmp eq i32 %goal_alternative_swapped.5, 0
  br i1 %tobool2258.not, label %if.end2319, label %if.then2259

if.then2259:                                      ; preds = %for.end2257
  %idxprom2260 = sext i32 %commutative.0.lcssa to i64
  %arrayidx2261 = getelementptr inbounds ptr, ptr %substed_operand, i64 %idxprom2260
  %283 = load ptr, ptr %arrayidx2261, align 8
  %add2262 = add nsw i32 %commutative.0.lcssa, 1
  %idxprom2263 = sext i32 %add2262 to i64
  %arrayidx2264 = getelementptr inbounds ptr, ptr %substed_operand, i64 %idxprom2263
  %284 = load ptr, ptr %arrayidx2264, align 8
  store ptr %284, ptr %arrayidx2261, align 8
  store ptr %283, ptr %arrayidx2264, align 8
  %arrayidx2271 = getelementptr inbounds ptr, ptr @recog_data, i64 %idxprom2260
  %285 = load ptr, ptr %arrayidx2271, align 8
  %arrayidx2274 = getelementptr inbounds ptr, ptr @recog_data, i64 %idxprom2263
  %286 = load ptr, ptr %arrayidx2274, align 8
  store ptr %286, ptr %arrayidx2271, align 8
  store ptr %285, ptr %arrayidx2274, align 8
  %arrayidx2281 = getelementptr inbounds ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %idxprom2260
  %287 = load ptr, ptr %arrayidx2281, align 8
  %288 = load ptr, ptr %287, align 8
  %arrayidx2284 = getelementptr inbounds ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %idxprom2263
  %289 = load ptr, ptr %arrayidx2284, align 8
  %290 = load ptr, ptr %289, align 8
  store ptr %290, ptr %287, align 8
  %291 = load ptr, ptr %arrayidx2284, align 8
  store ptr %288, ptr %291, align 8
  %292 = load i32, ptr @n_reloads, align 4
  %cmp22915859 = icmp sgt i32 %292, 0
  br i1 %cmp22915859, label %for.body2293.preheader, label %if.end2319

for.body2293.preheader:                           ; preds = %if.then2259
  %wide.trip.count6082 = zext i32 %292 to i64
  br label %for.body2293

for.body2293:                                     ; preds = %for.inc2316, %for.body2293.preheader
  %indvars.iv6079 = phi i64 [ 0, %for.body2293.preheader ], [ %indvars.iv.next6080, %for.inc2316 ]
  %arrayidx2295 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %indvars.iv6079
  %opnum = getelementptr inbounds nuw i8, ptr %arrayidx2295, i64 72
  %293 = load i32, ptr %opnum, align 8
  %cmp2296 = icmp eq i32 %293, %commutative.0.lcssa
  br i1 %cmp2296, label %if.then2298, label %if.else2303

if.then2298:                                      ; preds = %for.body2293
  store i32 %add2262, ptr %opnum, align 8
  br label %for.inc2316

if.else2303:                                      ; preds = %for.body2293
  %cmp2308 = icmp eq i32 %293, %add2262
  br i1 %cmp2308, label %if.then2310, label %for.inc2316

if.then2310:                                      ; preds = %if.else2303
  store i32 %commutative.0.lcssa, ptr %opnum, align 8
  br label %for.inc2316

for.inc2316:                                      ; preds = %if.then2310, %if.else2303, %if.then2298
  %indvars.iv.next6080 = add nuw nsw i64 %indvars.iv6079, 1
  %exitcond6083 = icmp ne i64 %indvars.iv.next6080, %wide.trip.count6082
  br i1 %exitcond6083, label %for.body2293, label %if.end2319.loopexit, !llvm.loop !19

if.end2319.loopexit:                              ; preds = %for.inc2316
  br label %if.end2319

if.end2319:                                       ; preds = %if.end2319.loopexit, %if.then2259, %for.end2257
  %cmp23215861 = icmp sgt i8 %8, 0
  br i1 %cmp23215861, label %for.body2323.preheader, label %for.cond2347.preheader

for.body2323.preheader:                           ; preds = %if.end2319
  %wide.trip.count6087 = zext i32 %conv83 to i64
  br label %for.body2323

for.cond2347.preheader.loopexit:                  ; preds = %for.inc2344
  br label %for.cond2347.preheader

for.cond2347.preheader:                           ; preds = %for.cond2347.preheader.loopexit, %if.end2319
  %cmp23485863 = icmp sgt i8 %8, 0
  br i1 %cmp23485863, label %for.body2350.lr.ph, label %for.end2457

for.body2350.lr.ph:                               ; preds = %for.cond2347.preheader
  %cmp1.i = icmp sgt i32 %goal_alternative_number.5, 0
  %wide.trip.count6092 = zext i32 %conv83 to i64
  br label %for.body2350

for.body2323:                                     ; preds = %for.inc2344, %for.body2323.preheader
  %indvars.iv6084 = phi i64 [ 0, %for.body2323.preheader ], [ %indvars.iv.next6085, %for.inc2344 ]
  %arrayidx2325 = getelementptr inbounds nuw i32, ptr %operand_reloadnum, i64 %indvars.iv6084
  store i32 -1, ptr %arrayidx2325, align 4
  %arrayidx2327 = getelementptr inbounds nuw i8, ptr %goal_alternative_earlyclobber, i64 %indvars.iv6084
  %294 = load i8, ptr %arrayidx2327, align 1
  %tobool2329.not = icmp eq i8 %294, 0
  br i1 %tobool2329.not, label %for.inc2344, label %land.lhs.true2330

land.lhs.true2330:                                ; preds = %for.body2323
  %arrayidx2332 = getelementptr inbounds nuw i32, ptr %operand_type, i64 %indvars.iv6084
  %295 = load i32, ptr %arrayidx2332, align 4
  %cmp2333.not = icmp eq i32 %295, 9
  br i1 %cmp2333.not, label %for.inc2344, label %if.then2335

if.then2335:                                      ; preds = %land.lhs.true2330
  %arrayidx2337 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv6084
  %296 = load ptr, ptr %arrayidx2337, align 8
  %call2338 = call ptr @find_reg_note(ptr noundef %insn, i32 noundef 6, ptr noundef %296) #7
  %tobool2339.not = icmp eq ptr %call2338, null
  %cond2340 = select i1 %tobool2339.not, i32 9, i32 2
  store i32 %cond2340, ptr %arrayidx2332, align 4
  br label %for.inc2344

for.inc2344:                                      ; preds = %if.then2335, %land.lhs.true2330, %for.body2323
  %indvars.iv.next6085 = add nuw nsw i64 %indvars.iv6084, 1
  %exitcond6088 = icmp ne i64 %indvars.iv.next6085, %wide.trip.count6087
  br i1 %exitcond6088, label %for.body2323, label %for.cond2347.preheader.loopexit, !llvm.loop !20

for.body2350:                                     ; preds = %for.inc2455, %for.body2350.lr.ph
  %indvars.iv6089 = phi i64 [ 0, %for.body2350.lr.ph ], [ %indvars.iv.next6090, %for.inc2455 ]
  %arrayidx2352 = getelementptr inbounds nuw i8, ptr %goal_alternative_win, i64 %indvars.iv6089
  %297 = load i8, ptr %arrayidx2352, align 1
  %tobool2353.not = icmp eq i8 %297, 0
  br i1 %tobool2353.not, label %if.then2354, label %for.inc2455

if.then2354:                                      ; preds = %for.body2350
  %arrayidx2357 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv6089
  %298 = load ptr, ptr %arrayidx2357, align 8
  %arrayidx2359 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6089
  %299 = load i32, ptr %arrayidx2359, align 4
  %bf.load2360 = load i32, ptr %298, align 8
  %bf.clear2361 = and i32 %bf.load2360, 65535
  %cmp2362 = icmp eq i32 %bf.clear2361, 39
  br i1 %cmp2362, label %if.then2364, label %if.end2370

if.then2364:                                      ; preds = %if.then2354
  %u2365 = getelementptr inbounds nuw i8, ptr %298, i64 8
  %300 = load ptr, ptr %u2365, align 8
  %bf.load2367 = load i32, ptr %300, align 8
  %bf.lshr2368 = lshr i32 %bf.load2367, 16
  %bf.clear2369 = and i32 %bf.lshr2368, 255
  br label %if.end2370

if.end2370:                                       ; preds = %if.then2364, %if.then2354
  %op2355.0 = phi ptr [ %300, %if.then2364 ], [ %298, %if.then2354 ]
  %subreg.0 = phi ptr [ %298, %if.then2364 ], [ null, %if.then2354 ]
  %mode.0 = phi i32 [ %bf.clear2369, %if.then2364 ], [ %299, %if.then2354 ]
  %bf.load2371 = load i32, ptr %op2355.0, align 8
  %bf.clear2372 = and i32 %bf.load2371, 65535
  %cmp2373 = icmp eq i32 %bf.clear2372, 49
  br i1 %cmp2373, label %if.then2375, label %if.end2378

if.then2375:                                      ; preds = %if.end2370
  %arrayidx2377 = getelementptr inbounds nuw i8, ptr %op2355.0, i64 16
  %301 = load ptr, ptr %arrayidx2377, align 8
  br label %if.end2378

if.end2378:                                       ; preds = %if.then2375, %if.end2370
  %op2355.1 = phi ptr [ %301, %if.then2375 ], [ %op2355.0, %if.end2370 ]
  %plus.0 = phi ptr [ %op2355.0, %if.then2375 ], [ null, %if.end2370 ]
  %bf.load2379 = load i32, ptr %op2355.1, align 8
  %bf.clear2380 = and i32 %bf.load2379, 65535
  %idxprom2381 = zext nneg i32 %bf.clear2380 to i64
  %arrayidx2382 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom2381
  %302 = load i32, ptr %arrayidx2382, align 4
  %cmp2383 = icmp ne i32 %302, 9
  %cmp2388.not = icmp eq i32 %bf.clear2380, 121
  %or.cond5339 = or i1 %cmp2383, %cmp2388.not
  br i1 %or.cond5339, label %for.inc2455, label %land.lhs.true2390

land.lhs.true2390:                                ; preds = %if.end2378
  %303 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1008), align 8
  %call2391 = call zeroext i8 %303(ptr noundef nonnull %op2355.1) #7
  %tobool2392.not = icmp eq i8 %call2391, 0
  br i1 %tobool2392.not, label %land.lhs.true2393, label %for.inc2455

land.lhs.true2393:                                ; preds = %land.lhs.true2390
  %arrayidx2395 = getelementptr inbounds nuw i32, ptr %goal_alternative, i64 %indvars.iv6089
  %304 = load i32, ptr %arrayidx2395, align 4
  %call2396 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %op2355.1, i32 noundef %304) #7
  %cmp2397 = icmp eq i32 %call2396, 0
  %cmp2402 = icmp ne i32 %mode.0, 0
  %or.cond4183 = select i1 %cmp2397, i1 %cmp2402, i1 false
  br i1 %or.cond4183, label %if.then2404, label %for.inc2455

if.then2404:                                      ; preds = %land.lhs.true2393
  call void @llvm.lifetime.start.p0(ptr nonnull %this_address_reloaded) #7
  %call2406 = call ptr @force_const_mem(i32 noundef %mode.0, ptr noundef nonnull %op2355.1) #7
  %cmp2407.not = icmp eq ptr %plus.0, null
  br i1 %cmp2407.not, label %if.end2413, label %if.then2409

if.then2409:                                      ; preds = %if.then2404
  %u2410 = getelementptr inbounds nuw i8, ptr %plus.0, i64 8
  %305 = load ptr, ptr %u2410, align 8
  %call2412 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %mode.0, ptr noundef %305, ptr noundef %call2406) #7
  br label %if.end2413

if.end2413:                                       ; preds = %if.then2409, %if.then2404
  %tem2405.0 = phi ptr [ %call2412, %if.then2409 ], [ %call2406, %if.then2404 ]
  %cmp2414.not = icmp eq ptr %subreg.0, null
  br i1 %cmp2414.not, label %if.end2422, label %if.then2416

if.then2416:                                      ; preds = %if.end2413
  %306 = load i32, ptr %arrayidx2359, align 4
  %arrayidx2420 = getelementptr inbounds nuw i8, ptr %subreg.0, i64 16
  %307 = load i32, ptr %arrayidx2420, align 8
  %call2421 = call ptr @gen_rtx_SUBREG(i32 noundef %306, ptr noundef %tem2405.0, i32 noundef %307) #7
  br label %if.end2422

if.end2422:                                       ; preds = %if.then2416, %if.end2413
  %tem2405.1 = phi ptr [ %call2421, %if.then2416 ], [ %tem2405.0, %if.end2413 ]
  store i32 0, ptr %this_address_reloaded, align 4
  %arrayidx2424 = getelementptr inbounds nuw i32, ptr %address_type, i64 %indvars.iv6089
  %308 = load i32, ptr %arrayidx2424, align 4
  %309 = trunc nuw nsw i64 %indvars.iv6089 to i32
  %call2425 = call fastcc ptr @find_reloads_toplev(ptr noundef %tem2405.1, i32 noundef %309, i32 noundef %308, i32 noundef %ind_levels, i32 noundef 0, ptr noundef %insn, ptr noundef %this_address_reloaded)
  store ptr %call2425, ptr %arrayidx2357, align 8
  %arrayidx2429 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %indvars.iv6089
  store ptr %call2425, ptr %arrayidx2429, align 8
  %or.cond4184 = and i1 %cmp2414.not, %cmp2407.not
  br i1 %or.cond4184, label %land.lhs.true2435, label %if.end2452

land.lhs.true2435:                                ; preds = %if.end2422
  %arrayidx2445 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 480), i64 %indvars.iv6089
  %310 = load ptr, ptr %arrayidx2445, align 8
  br i1 %cmp1.i, label %while.cond1.preheader.i.preheader, label %for.cond.preheader.i

while.cond1.preheader.i.preheader:                ; preds = %land.lhs.true2435
  br label %while.cond1.preheader.i

while.cond1.preheader.i:                          ; preds = %while.end.i, %while.cond1.preheader.i.preheader
  %altnum.addr.03.i = phi i32 [ %dec.i, %while.end.i ], [ %goal_alternative_number.5, %while.cond1.preheader.i.preheader ]
  %constraint.addr.02.i = phi ptr [ %incdec.ptr.i5394.lcssa, %while.end.i ], [ %310, %while.cond1.preheader.i.preheader ]
  br label %while.cond1.i

for.cond.preheader.i.loopexit:                    ; preds = %while.end.i
  %incdec.ptr.i5394.lcssa.lcssa = phi ptr [ %incdec.ptr.i5394.lcssa, %while.end.i ]
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.cond.preheader.i.loopexit, %land.lhs.true2435
  %constraint.addr.0.lcssa.i = phi ptr [ %310, %land.lhs.true2435 ], [ %incdec.ptr.i5394.lcssa.lcssa, %for.cond.preheader.i.loopexit ]
  br label %for.cond.i

while.cond1.i:                                    ; preds = %while.cond1.i, %while.cond1.preheader.i
  %constraint.addr.1.i = phi ptr [ %incdec.ptr.i5394, %while.cond1.i ], [ %constraint.addr.02.i, %while.cond1.preheader.i ]
  %incdec.ptr.i5394 = getelementptr inbounds nuw i8, ptr %constraint.addr.1.i, i64 1
  %311 = load i8, ptr %constraint.addr.1.i, align 1
  %cmp2.not.i = icmp eq i8 %311, 44
  br i1 %cmp2.not.i, label %while.end.i, label %while.cond1.i, !llvm.loop !21

while.end.i:                                      ; preds = %while.cond1.i
  %incdec.ptr.i5394.lcssa = phi ptr [ %incdec.ptr.i5394, %while.cond1.i ]
  %dec.i = add nsw i32 %altnum.addr.03.i, -1
  %cmp.i5395 = icmp sgt i32 %altnum.addr.03.i, 1
  br i1 %cmp.i5395, label %while.cond1.preheader.i, label %for.cond.preheader.i.loopexit, !llvm.loop !22

for.cond.i:                                       ; preds = %for.inc.i, %for.cond.preheader.i
  %constraint.addr.2.i = phi ptr [ %add.ptr.i, %for.inc.i ], [ %constraint.addr.0.lcssa.i, %for.cond.preheader.i ]
  %312 = load i8, ptr %constraint.addr.2.i, align 1
  switch i8 %312, label %for.body.i [
    i8 44, label %if.end2452.loopexit
    i8 35, label %if.end2452.loopexit
    i8 0, label %if.end2452.loopexit
  ]

for.body.i:                                       ; preds = %for.cond.i
  %313 = and i8 %312, -3
  %or.cond16.i = icmp eq i8 %313, 109
  br i1 %or.cond16.i, label %if.then2449, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %cond.i.i = icmp eq i8 %312, 89
  %..i.i = select i1 %cond.i.i, i64 2, i64 1
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %constraint.addr.2.i, i64 %..i.i
  br label %for.cond.i, !llvm.loop !23

if.then2449:                                      ; preds = %for.body.i
  store i8 1, ptr %arrayidx2352, align 1
  br label %if.end2452

if.end2452.loopexit:                              ; preds = %for.cond.i, %for.cond.i, %for.cond.i
  br label %if.end2452

if.end2452:                                       ; preds = %if.end2452.loopexit, %if.then2449, %if.end2422
  call void @llvm.lifetime.end.p0(ptr nonnull %this_address_reloaded) #7
  br label %for.inc2455

for.inc2455:                                      ; preds = %if.end2452, %land.lhs.true2393, %land.lhs.true2390, %if.end2378, %for.body2350
  %indvars.iv.next6090 = add nuw nsw i64 %indvars.iv6089, 1
  %exitcond6093 = icmp ne i64 %indvars.iv.next6090, %wide.trip.count6092
  br i1 %exitcond6093, label %for.body2350, label %for.end2457.loopexit, !llvm.loop !24

for.end2457.loopexit:                             ; preds = %for.inc2455
  br label %for.end2457

for.end2457:                                      ; preds = %for.end2457.loopexit, %for.cond2347.preheader
  %tobool2458.not = icmp ne i32 %goal_earlyclobber.5, 0
  %n_earlyclobbers.promoted = load i32, ptr @n_earlyclobbers, align 1
  %cmp24615867 = icmp sgt i8 %8, 0
  %or.cond5926 = and i1 %tobool2458.not, %cmp24615867
  br i1 %or.cond5926, label %for.body2463.preheader, label %if.end2477

for.body2463.preheader:                           ; preds = %for.end2457
  %wide.trip.count6097 = zext i32 %conv83 to i64
  br label %for.body2463

for.body2463:                                     ; preds = %for.inc2474, %for.body2463.preheader
  %indvars.iv6094 = phi i64 [ 0, %for.body2463.preheader ], [ %indvars.iv.next6095, %for.inc2474 ]
  %inc247058665868 = phi i32 [ %inc24705865, %for.inc2474 ], [ %n_earlyclobbers.promoted, %for.body2463.preheader ]
  %arrayidx2465 = getelementptr inbounds nuw i8, ptr %goal_alternative_earlyclobber, i64 %indvars.iv6094
  %314 = load i8, ptr %arrayidx2465, align 1
  %tobool2466.not = icmp eq i8 %314, 0
  br i1 %tobool2466.not, label %for.inc2474, label %if.then2467

if.then2467:                                      ; preds = %for.body2463
  %arrayidx2469 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv6094
  %315 = load ptr, ptr %arrayidx2469, align 8
  %inc2470 = add nsw i32 %inc247058665868, 1
  store i32 %inc2470, ptr @n_earlyclobbers, align 4
  %idxprom2471 = sext i32 %inc247058665868 to i64
  %arrayidx2472 = getelementptr inbounds ptr, ptr @reload_earlyclobbers, i64 %idxprom2471
  store ptr %315, ptr %arrayidx2472, align 8
  br label %for.inc2474

for.inc2474:                                      ; preds = %if.then2467, %for.body2463
  %inc24705865 = phi i32 [ %inc247058665868, %for.body2463 ], [ %inc2470, %if.then2467 ]
  %indvars.iv.next6095 = add nuw nsw i64 %indvars.iv6094, 1
  %exitcond6098 = icmp ne i64 %indvars.iv.next6095, %wide.trip.count6097
  br i1 %exitcond6098, label %for.body2463, label %if.end2477.loopexit, !llvm.loop !25

if.end2477.loopexit:                              ; preds = %for.inc2474
  br label %if.end2477

if.end2477:                                       ; preds = %if.end2477.loopexit, %for.end2457
  %cmp24795872 = icmp sgt i8 %8, 0
  br i1 %cmp24795872, label %for.body2481.lr.ph, label %for.cond3091.preheader

for.body2481.lr.ph:                               ; preds = %if.end2477
  %idxprom2914 = zext nneg i32 %10 to i64
  %arrayidx2915 = getelementptr inbounds nuw %struct.insn_data, ptr @insn_data, i64 %idxprom2914
  %operand2916 = getelementptr inbounds nuw i8, ptr %arrayidx2915, i64 24
  %tobool2929.not = icmp eq i32 %replace, 0
  %idxprom2675 = zext nneg i32 %10 to i64
  %arrayidx2676 = getelementptr inbounds nuw %struct.insn_data, ptr @insn_data, i64 %idxprom2675
  %operand2677 = getelementptr inbounds nuw i8, ptr %arrayidx2676, i64 24
  %wide.trip.count6107 = zext i32 %conv83 to i64
  br label %for.body2481

for.cond3091.preheader.loopexit:                  ; preds = %for.inc3088
  br label %for.cond3091.preheader

for.cond3091.preheader:                           ; preds = %for.cond3091.preheader.loopexit, %if.end2477
  %cmp30925875 = icmp sgt i8 %8, 0
  br i1 %cmp30925875, label %for.body3094.lr.ph, label %for.end3135

for.body3094.lr.ph:                               ; preds = %for.cond3091.preheader
  %tobool3095.not = icmp eq i32 %replace, 0
  %wide.trip.count6112 = zext i32 %conv83 to i64
  br label %for.body3094

for.body2481:                                     ; preds = %for.inc3088, %for.body2481.lr.ph
  %indvars.iv6104 = phi i64 [ 0, %for.body2481.lr.ph ], [ %indvars.iv.next6105, %for.inc3088 ]
  %arrayidx2483 = getelementptr inbounds nuw i8, ptr %goal_alternative_win, i64 %indvars.iv6104
  %316 = load i8, ptr %arrayidx2483, align 1
  %tobool2484.not = icmp eq i8 %316, 0
  br i1 %tobool2484.not, label %if.then2485, label %if.else2783

if.then2485:                                      ; preds = %for.body2481
  %arrayidx2487 = getelementptr inbounds nuw i32, ptr %goal_alternative_matches, i64 %indvars.iv6104
  %317 = load i32, ptr %arrayidx2487, align 4
  %cmp2488 = icmp sgt i32 %317, -1
  br i1 %cmp2488, label %for.inc3088, label %if.else2491

if.else2491:                                      ; preds = %if.then2485
  %arrayidx2493 = getelementptr inbounds nuw i32, ptr %goal_alternative_matched, i64 %indvars.iv6104
  %318 = load i32, ptr %arrayidx2493, align 4
  %cmp2494 = icmp eq i32 %318, -1
  br i1 %cmp2494, label %land.lhs.true2496, label %if.else2688

land.lhs.true2496:                                ; preds = %if.else2491
  %arrayidx2498 = getelementptr inbounds nuw i8, ptr %goal_alternative_offmemok, i64 %indvars.iv6104
  %319 = load i8, ptr %arrayidx2498, align 1
  %tobool2500.not = icmp eq i8 %319, 0
  br i1 %tobool2500.not, label %if.then2608, label %land.lhs.true2501

land.lhs.true2501:                                ; preds = %land.lhs.true2496
  %arrayidx2503 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv6104
  %320 = load ptr, ptr %arrayidx2503, align 8
  %bf.load2504 = load i32, ptr %320, align 8
  %bf.clear2505 = and i32 %bf.load2504, 65535
  %cmp2506 = icmp eq i32 %bf.clear2505, 43
  br i1 %cmp2506, label %if.then2508, label %if.then2608

if.then2508:                                      ; preds = %land.lhs.true2501
  %u2511 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %321 = load ptr, ptr %u2511, align 8
  %bf.load2513 = load i32, ptr %321, align 8
  %bf.lshr2514 = lshr i32 %bf.load2513, 16
  %bf.clear2515 = and i32 %bf.lshr2514, 255
  %cmp2516 = icmp eq i32 %bf.clear2515, 0
  br i1 %cmp2516, label %if.then2518, label %if.end2536

if.then2518:                                      ; preds = %if.then2508
  %arrayidx2522 = getelementptr inbounds nuw i8, ptr %320, i64 16
  %322 = load ptr, ptr %arrayidx2522, align 8
  %cmp2523 = icmp eq ptr %322, null
  br i1 %cmp2523, label %cond.end2532, label %cond.false2526

cond.false2526:                                   ; preds = %if.then2518
  %addrspace = getelementptr inbounds nuw i8, ptr %322, i64 32
  %323 = load i8, ptr %addrspace, align 8
  br label %cond.end2532

cond.end2532:                                     ; preds = %cond.false2526, %if.then2518
  %cond2533 = phi i8 [ %323, %cond.false2526 ], [ 0, %if.then2518 ]
  %324 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1184), align 8
  %call2535 = call i32 %324(i8 noundef zeroext %cond2533) #7
  br label %if.end2536

if.end2536:                                       ; preds = %cond.end2532, %if.then2508
  %address_mode.0 = phi i32 [ %call2535, %cond.end2532 ], [ %bf.clear2515, %if.then2508 ]
  %325 = load ptr, ptr %arrayidx2503, align 8
  %u2539 = getelementptr inbounds nuw i8, ptr %325, i64 8
  %326 = load ptr, ptr %u2539, align 8
  %327 = trunc nuw nsw i64 %indvars.iv6104 to i32
  %call2546 = call i32 @push_reload(ptr noundef %326, ptr noundef null, ptr noundef nonnull %u2539, ptr noundef null, i32 noundef 13, i32 noundef %address_mode.0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %327, i32 noundef 0)
  %arrayidx2548 = getelementptr inbounds nuw i32, ptr %operand_reloadnum, i64 %indvars.iv6104
  store i32 %call2546, ptr %arrayidx2548, align 4
  %328 = load ptr, ptr %arrayidx2503, align 8
  %bf.load2551 = load i32, ptr %328, align 8
  %bf.lshr2552 = lshr i32 %bf.load2551, 16
  %bf.clear2553 = and i32 %bf.lshr2552, 255
  %idxprom2554 = zext nneg i32 %bf.clear2553 to i64
  %arrayidx2555 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom2554
  %329 = load i8, ptr %arrayidx2555, align 1
  %conv2557 = zext i8 %329 to i32
  %idxprom2560 = sext i32 %call2546 to i64
  %arrayidx2561 = getelementptr inbounds %struct.reload, ptr @rld, i64 %idxprom2560
  %inc2562 = getelementptr inbounds nuw i8, ptr %arrayidx2561, i64 36
  store i32 %conv2557, ptr %inc2562, align 4
  %arrayidx2564 = getelementptr inbounds nuw i32, ptr %modified, i64 %indvars.iv6104
  %330 = load i32, ptr %arrayidx2564, align 4
  %cmp2565 = icmp eq i32 %330, 2
  br i1 %cmp2565, label %for.cond2568.preheader, label %for.inc3088

for.cond2568.preheader:                           ; preds = %if.end2536
  %331 = load i32, ptr @n_reloads, align 4
  %cmp25695870 = icmp sgt i32 %331, 0
  br i1 %cmp25695870, label %for.body2571.preheader, label %for.inc3088

for.body2571.preheader:                           ; preds = %for.cond2568.preheader
  %wide.trip.count6102 = zext i32 %331 to i64
  br label %for.body2571

for.body2571:                                     ; preds = %for.inc2599, %for.body2571.preheader
  %indvars.iv6099 = phi i64 [ 0, %for.body2571.preheader ], [ %indvars.iv.next6100, %for.inc2599 ]
  %arrayidx2573 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %indvars.iv6099
  %opnum2574 = getelementptr inbounds nuw i8, ptr %arrayidx2573, i64 72
  %332 = load i32, ptr %opnum2574, align 8
  %333 = zext i32 %332 to i64
  %cmp2575 = icmp eq i64 %333, %indvars.iv6104
  br i1 %cmp2575, label %if.then2577, label %for.inc2599

if.then2577:                                      ; preds = %for.body2571
  %when_needed = getelementptr inbounds nuw i8, ptr %arrayidx2573, i64 92
  %334 = load i32, ptr %when_needed, align 4
  switch i32 %334, label %for.inc2599 [
    i32 5, label %if.then2582
    i32 6, label %if.then2592
  ]

if.then2582:                                      ; preds = %if.then2577
  store i32 3, ptr %when_needed, align 4
  br label %for.inc2599

if.then2592:                                      ; preds = %if.then2577
  store i32 4, ptr %when_needed, align 4
  br label %for.inc2599

for.inc2599:                                      ; preds = %if.then2592, %if.then2582, %if.then2577, %for.body2571
  %indvars.iv.next6100 = add nuw nsw i64 %indvars.iv6099, 1
  %exitcond6103 = icmp ne i64 %indvars.iv.next6100, %wide.trip.count6102
  br i1 %exitcond6103, label %for.body2571, label %for.inc3088.loopexit, !llvm.loop !26

if.then2608:                                      ; preds = %land.lhs.true2501, %land.lhs.true2496
  %arrayidx2610 = getelementptr inbounds nuw i32, ptr %modified, i64 %indvars.iv6104
  %335 = load i32, ptr %arrayidx2610, align 4
  %cmp2611.not = icmp eq i32 %335, 2
  br i1 %cmp2611.not, label %cond.end2659.thread, label %cond.end2617

cond.end2659.thread:                              ; preds = %if.then2608
  %arrayidx26455561 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6104
  %336 = load ptr, ptr %arrayidx26455561, align 8
  br label %cond.false2666

cond.end2617:                                     ; preds = %if.then2608
  %arrayidx2615 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv6104
  %337 = load ptr, ptr %arrayidx2615, align 8
  %cmp2621.not = icmp eq i32 %335, 0
  br i1 %cmp2621.not, label %cond.end2659.thread5579, label %cond.end2659

cond.end2659.thread5579:                          ; preds = %cond.end2617
  %arrayidx26355539 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6104
  %338 = load ptr, ptr %arrayidx26355539, align 8
  %arrayidx26585585 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6104
  %339 = load i32, ptr %arrayidx26585585, align 4
  br label %cond.end2669

cond.end2659:                                     ; preds = %cond.end2617
  %arrayidx2635 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6104
  %340 = load ptr, ptr %arrayidx2635, align 8
  %arrayidx2658 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6104
  %341 = load i32, ptr %arrayidx2658, align 4
  br label %cond.false2666

cond.false2666:                                   ; preds = %cond.end2659, %cond.end2659.thread
  %cond26605577 = phi i32 [ 0, %cond.end2659.thread ], [ %341, %cond.end2659 ]
  %cond2638553455475575 = phi ptr [ null, %cond.end2659.thread ], [ %340, %cond.end2659 ]
  %cond261855075516553055515573 = phi ptr [ null, %cond.end2659.thread ], [ %337, %cond.end2659 ]
  %cond264855555569 = phi ptr [ %336, %cond.end2659.thread ], [ %340, %cond.end2659 ]
  %cond26285518552855535571.in = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv6104
  %cond26285518552855535571 = load ptr, ptr %cond26285518552855535571.in, align 8
  %arrayidx2668 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6104
  %342 = load i32, ptr %arrayidx2668, align 4
  br label %cond.end2669

cond.end2669:                                     ; preds = %cond.false2666, %cond.end2659.thread5579
  %cond26605578 = phi i32 [ %cond26605577, %cond.false2666 ], [ %339, %cond.end2659.thread5579 ]
  %cond2638553455475576 = phi ptr [ %cond2638553455475575, %cond.false2666 ], [ %338, %cond.end2659.thread5579 ]
  %cond261855075516553055515574 = phi ptr [ %cond261855075516553055515573, %cond.false2666 ], [ %337, %cond.end2659.thread5579 ]
  %cond26285518552855535572 = phi ptr [ %cond26285518552855535571, %cond.false2666 ], [ null, %cond.end2659.thread5579 ]
  %cond264855555570 = phi ptr [ %cond264855555569, %cond.false2666 ], [ null, %cond.end2659.thread5579 ]
  %cond2670 = phi i32 [ %342, %cond.false2666 ], [ 0, %cond.end2659.thread5579 ]
  %.in5675 = getelementptr inbounds nuw i32, ptr %goal_alternative, i64 %indvars.iv6104
  %343 = load i32, ptr %.in5675, align 4
  br i1 %cmp94, label %cond.end2681, label %cond.false2674

cond.false2674:                                   ; preds = %cond.end2669
  %344 = load ptr, ptr %operand2677, align 8
  %arrayidx2679 = getelementptr inbounds nuw %struct.insn_operand_data, ptr %344, i64 %indvars.iv6104
  %strict_low = getelementptr inbounds nuw i8, ptr %arrayidx2679, i64 18
  %345 = load i8, ptr %strict_low, align 2
  %conv2680 = sext i8 %345 to i32
  br label %cond.end2681

cond.end2681:                                     ; preds = %cond.false2674, %cond.end2669
  %cond2682 = phi i32 [ %conv2680, %cond.false2674 ], [ 0, %cond.end2669 ]
  %arrayidx2684 = getelementptr inbounds nuw i32, ptr %operand_type, i64 %indvars.iv6104
  %346 = load i32, ptr %arrayidx2684, align 4
  %347 = trunc nuw nsw i64 %indvars.iv6104 to i32
  %call2685 = call i32 @push_reload(ptr noundef %cond261855075516553055515574, ptr noundef %cond26285518552855535572, ptr noundef %cond2638553455475576, ptr noundef %cond264855555570, i32 noundef %343, i32 noundef %cond26605578, i32 noundef %cond2670, i32 noundef %cond2682, i32 noundef 0, i32 noundef %347, i32 noundef %346)
  %arrayidx2687 = getelementptr inbounds nuw i32, ptr %operand_reloadnum, i64 %indvars.iv6104
  store i32 %call2685, ptr %arrayidx2687, align 4
  br label %for.inc3088

if.else2688:                                      ; preds = %if.else2491
  %arrayidx2690 = getelementptr inbounds nuw i32, ptr %modified, i64 %indvars.iv6104
  %348 = load i32, ptr %arrayidx2690, align 4
  switch i32 %348, label %if.else2768 [
    i32 0, label %land.lhs.true2693
    i32 2, label %land.lhs.true2733
  ]

land.lhs.true2693:                                ; preds = %if.else2688
  %idxprom2696 = sext i32 %318 to i64
  %arrayidx2697 = getelementptr inbounds i32, ptr %modified, i64 %idxprom2696
  %349 = load i32, ptr %arrayidx2697, align 4
  %cmp2698 = icmp eq i32 %349, 2
  br i1 %cmp2698, label %if.then2700, label %if.else2768

if.then2700:                                      ; preds = %land.lhs.true2693
  %arrayidx2702 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv6104
  %350 = load ptr, ptr %arrayidx2702, align 8
  %arrayidx2706 = getelementptr inbounds ptr, ptr @recog_data, i64 %idxprom2696
  %351 = load ptr, ptr %arrayidx2706, align 8
  %arrayidx2708 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6104
  %352 = load ptr, ptr %arrayidx2708, align 8
  %arrayidx2712 = getelementptr inbounds ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %idxprom2696
  %353 = load ptr, ptr %arrayidx2712, align 8
  %arrayidx2714 = getelementptr inbounds nuw i32, ptr %goal_alternative, i64 %indvars.iv6104
  %354 = load i32, ptr %arrayidx2714, align 4
  %arrayidx2716 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6104
  %355 = load i32, ptr %arrayidx2716, align 4
  %arrayidx2720 = getelementptr inbounds i32, ptr %operand_mode, i64 %idxprom2696
  %356 = load i32, ptr %arrayidx2720, align 4
  %357 = trunc nuw nsw i64 %indvars.iv6104 to i32
  %call2721 = call i32 @push_reload(ptr noundef %350, ptr noundef %351, ptr noundef %352, ptr noundef %353, i32 noundef %354, i32 noundef %355, i32 noundef %356, i32 noundef 0, i32 noundef 0, i32 noundef %357, i32 noundef 9)
  %arrayidx2723 = getelementptr inbounds nuw i32, ptr %operand_reloadnum, i64 %indvars.iv6104
  store i32 %call2721, ptr %arrayidx2723, align 4
  %358 = load i32, ptr @output_reloadnum, align 4
  %arrayidx2727 = getelementptr inbounds i32, ptr %operand_reloadnum, i64 %idxprom2696
  store i32 %358, ptr %arrayidx2727, align 4
  br label %for.inc3088

land.lhs.true2733:                                ; preds = %if.else2688
  %idxprom2736 = sext i32 %318 to i64
  %arrayidx2737 = getelementptr inbounds i32, ptr %modified, i64 %idxprom2736
  %359 = load i32, ptr %arrayidx2737, align 4
  %cmp2738 = icmp eq i32 %359, 0
  br i1 %cmp2738, label %if.then2740, label %if.else2768

if.then2740:                                      ; preds = %land.lhs.true2733
  %arrayidx2744 = getelementptr inbounds ptr, ptr @recog_data, i64 %idxprom2736
  %360 = load ptr, ptr %arrayidx2744, align 8
  %arrayidx2746 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv6104
  %361 = load ptr, ptr %arrayidx2746, align 8
  %arrayidx2750 = getelementptr inbounds ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %idxprom2736
  %362 = load ptr, ptr %arrayidx2750, align 8
  %arrayidx2752 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6104
  %363 = load ptr, ptr %arrayidx2752, align 8
  %arrayidx2754 = getelementptr inbounds nuw i32, ptr %goal_alternative, i64 %indvars.iv6104
  %364 = load i32, ptr %arrayidx2754, align 4
  %arrayidx2758 = getelementptr inbounds i32, ptr %operand_mode, i64 %idxprom2736
  %365 = load i32, ptr %arrayidx2758, align 4
  %arrayidx2760 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6104
  %366 = load i32, ptr %arrayidx2760, align 4
  %367 = trunc nuw nsw i64 %indvars.iv6104 to i32
  %call2761 = call i32 @push_reload(ptr noundef %360, ptr noundef %361, ptr noundef %362, ptr noundef %363, i32 noundef %364, i32 noundef %365, i32 noundef %366, i32 noundef 0, i32 noundef 0, i32 noundef %367, i32 noundef 9)
  %arrayidx2765 = getelementptr inbounds i32, ptr %operand_reloadnum, i64 %idxprom2736
  store i32 %call2761, ptr %arrayidx2765, align 4
  %368 = load i32, ptr @output_reloadnum, align 4
  %arrayidx2767 = getelementptr inbounds nuw i32, ptr %operand_reloadnum, i64 %indvars.iv6104
  store i32 %368, ptr %arrayidx2767, align 4
  br label %for.inc3088

if.else2768:                                      ; preds = %land.lhs.true2733, %land.lhs.true2693, %if.else2688
  br i1 %cmp94, label %cond.end2773, label %cond.true2771

cond.true2771:                                    ; preds = %if.else2768
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4082, ptr noundef nonnull @.str.1) #7
  br label %cond.end2773

cond.end2773:                                     ; preds = %cond.true2771, %if.else2768
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef %insn, ptr noundef nonnull @.str.6) #7
  %369 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @const_int_rtx, i64 512), align 16
  %call2775 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %369) #7
  store ptr %call2775, ptr %arrayidx, align 8
  store i32 0, ptr @n_reloads, align 4
  br label %cleanup4125

if.else2783:                                      ; preds = %for.body2481
  %arrayidx2785 = getelementptr inbounds nuw i32, ptr %goal_alternative_matched, i64 %indvars.iv6104
  %370 = load i32, ptr %arrayidx2785, align 4
  %cmp2786 = icmp slt i32 %370, 0
  br i1 %cmp2786, label %land.lhs.true2788, label %if.else2989

land.lhs.true2788:                                ; preds = %if.else2783
  %arrayidx2790 = getelementptr inbounds nuw i32, ptr %goal_alternative_matches, i64 %indvars.iv6104
  %371 = load i32, ptr %arrayidx2790, align 4
  %cmp2791 = icmp slt i32 %371, 0
  br i1 %cmp2791, label %land.lhs.true2793, label %if.else2989

land.lhs.true2793:                                ; preds = %land.lhs.true2788
  %arrayidx2795 = getelementptr inbounds nuw i32, ptr %address_operand_reloaded, i64 %indvars.iv6104
  %372 = load i32, ptr %arrayidx2795, align 4
  %cmp2796 = icmp ne i32 %372, 1
  %373 = load i32, ptr @optimize, align 4
  %tobool2799 = icmp ne i32 %373, 0
  %or.cond4185 = select i1 %cmp2796, i1 %tobool2799, i1 false
  br i1 %or.cond4185, label %if.then2800, label %if.else2989

if.then2800:                                      ; preds = %land.lhs.true2793
  %arrayidx2803 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv6104
  br label %while.cond2804

while.cond2804:                                   ; preds = %while.body2809, %if.then2800
  %operand2801.0.in = phi ptr [ %arrayidx2803, %if.then2800 ], [ %u2810, %while.body2809 ]
  %operand2801.0 = load ptr, ptr %operand2801.0.in, align 8
  %bf.load2805 = load i32, ptr %operand2801.0, align 8
  %trunc5672 = trunc i32 %bf.load2805 to i16
  switch i16 %trunc5672, label %if.else2928.loopexit [
    i16 39, label %while.body2809
    i16 43, label %land.lhs.true2826.loopexit
    i16 37, label %land.lhs.true2822
  ]

while.body2809:                                   ; preds = %while.cond2804
  %u2810 = getelementptr inbounds nuw i8, ptr %operand2801.0, i64 8
  br label %while.cond2804, !llvm.loop !27

land.lhs.true2822:                                ; preds = %while.cond2804
  %operand2801.0.lcssa5949 = phi ptr [ %operand2801.0, %while.cond2804 ]
  %bf.load2805.lcssa5945 = phi i32 [ %bf.load2805, %while.cond2804 ]
  %374 = getelementptr i8, ptr %operand2801.0.lcssa5949, i64 8
  %operand2801.0.val5364 = load i32, ptr %374, align 8
  %cmp2824 = icmp ugt i32 %operand2801.0.val5364, 52
  br i1 %cmp2824, label %land.lhs.true2826, label %if.else2928

land.lhs.true2826.loopexit:                       ; preds = %while.cond2804
  %operand2801.0.lcssa5948 = phi ptr [ %operand2801.0, %while.cond2804 ]
  %bf.load2805.lcssa5944 = phi i32 [ %bf.load2805, %while.cond2804 ]
  br label %land.lhs.true2826

land.lhs.true2826:                                ; preds = %land.lhs.true2826.loopexit, %land.lhs.true2822
  %operand2801.05951 = phi ptr [ %operand2801.0.lcssa5948, %land.lhs.true2826.loopexit ], [ %operand2801.0.lcssa5949, %land.lhs.true2822 ]
  %bf.load28055947 = phi i32 [ %bf.load2805.lcssa5944, %land.lhs.true2826.loopexit ], [ %bf.load2805.lcssa5945, %land.lhs.true2822 ]
  %arrayidx2828 = getelementptr inbounds nuw i32, ptr %goal_alternative, i64 %indvars.iv6104
  %375 = load i32, ptr %arrayidx2828, align 4
  %cmp2829.not = icmp eq i32 %375, 0
  br i1 %cmp2829.not, label %lor.lhs.false2831, label %land.lhs.true2838

lor.lhs.false2831:                                ; preds = %land.lhs.true2826
  %arrayidx2833 = getelementptr inbounds nuw i32, ptr %modified, i64 %indvars.iv6104
  %376 = load i32, ptr %arrayidx2833, align 4
  %cmp2834.not = icmp eq i32 %376, 2
  br i1 %cmp2834.not, label %land.lhs.true2838, label %if.else2928

land.lhs.true2838:                                ; preds = %lor.lhs.false2831, %land.lhs.true2826
  %arrayidx2840 = getelementptr inbounds nuw i32, ptr %modified, i64 %indvars.iv6104
  %377 = load i32, ptr %arrayidx2840, align 4
  %cmp2841 = icmp eq i32 %377, 0
  br i1 %cmp2841, label %cond.end2898.thread5661, label %lor.lhs.false2843

cond.end2898.thread5661:                          ; preds = %land.lhs.true2838
  %378 = load ptr, ptr %arrayidx2803, align 8
  %arrayidx28745626 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6104
  %379 = load ptr, ptr %arrayidx28745626, align 8
  %arrayidx28975666 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6104
  %380 = load i32, ptr %arrayidx28975666, align 4
  br label %cond.end2908

lor.lhs.false2843:                                ; preds = %land.lhs.true2838
  %381 = load i32, ptr @this_insn_is_asm, align 4
  %tobool2846 = icmp ne i32 %381, 0
  %or.cond4188 = select i1 %switch5344, i1 true, i1 %tobool2846
  br i1 %or.cond4188, label %if.else2928, label %if.then2847

if.then2847:                                      ; preds = %lor.lhs.false2843
  %cmp2850.not = icmp eq i32 %377, 2
  br i1 %cmp2850.not, label %cond.end2898.thread, label %cond.end2898

cond.end2898.thread:                              ; preds = %if.then2847
  %382 = load ptr, ptr %arrayidx2803, align 8
  %arrayidx28845645 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6104
  %383 = load ptr, ptr %arrayidx28845645, align 8
  br label %cond.false2905

cond.end2898:                                     ; preds = %if.then2847
  %384 = load ptr, ptr %arrayidx2803, align 8
  %arrayidx2874 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6104
  %385 = load ptr, ptr %arrayidx2874, align 8
  %arrayidx2897 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6104
  %386 = load i32, ptr %arrayidx2897, align 4
  br label %cond.false2905

cond.false2905:                                   ; preds = %cond.end2898, %cond.end2898.thread
  %cond28995659 = phi i32 [ 0, %cond.end2898.thread ], [ %386, %cond.end2898 ]
  %cond2877562156335657 = phi ptr [ null, %cond.end2898.thread ], [ %385, %cond.end2898 ]
  %cond285755955602561956355655 = phi ptr [ null, %cond.end2898.thread ], [ %384, %cond.end2898 ]
  %cond28675606561556375653 = phi ptr [ %382, %cond.end2898.thread ], [ %384, %cond.end2898 ]
  %cond288756395651 = phi ptr [ %383, %cond.end2898.thread ], [ %385, %cond.end2898 ]
  %arrayidx2907 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6104
  %387 = load i32, ptr %arrayidx2907, align 4
  br label %cond.end2908

cond.end2908:                                     ; preds = %cond.false2905, %cond.end2898.thread5661
  %cond28995660 = phi i32 [ %cond28995659, %cond.false2905 ], [ %380, %cond.end2898.thread5661 ]
  %cond2877562156335658 = phi ptr [ %cond2877562156335657, %cond.false2905 ], [ %379, %cond.end2898.thread5661 ]
  %cond285755955602561956355656 = phi ptr [ %cond285755955602561956355655, %cond.false2905 ], [ %378, %cond.end2898.thread5661 ]
  %cond28675606561556375654 = phi ptr [ %cond28675606561556375653, %cond.false2905 ], [ null, %cond.end2898.thread5661 ]
  %cond288756395652 = phi ptr [ %cond288756395651, %cond.false2905 ], [ null, %cond.end2898.thread5661 ]
  %cond2909 = phi i32 [ %387, %cond.false2905 ], [ 0, %cond.end2898.thread5661 ]
  br i1 %cmp94, label %cond.end2921, label %cond.false2913

cond.false2913:                                   ; preds = %cond.end2908
  %388 = load ptr, ptr %operand2916, align 8
  %arrayidx2918 = getelementptr inbounds nuw %struct.insn_operand_data, ptr %388, i64 %indvars.iv6104
  %strict_low2919 = getelementptr inbounds nuw i8, ptr %arrayidx2918, i64 18
  %389 = load i8, ptr %strict_low2919, align 2
  %conv2920 = sext i8 %389 to i32
  br label %cond.end2921

cond.end2921:                                     ; preds = %cond.false2913, %cond.end2908
  %cond2922 = phi i32 [ %conv2920, %cond.false2913 ], [ 0, %cond.end2908 ]
  %arrayidx2924 = getelementptr inbounds nuw i32, ptr %operand_type, i64 %indvars.iv6104
  %390 = load i32, ptr %arrayidx2924, align 4
  %391 = trunc nuw nsw i64 %indvars.iv6104 to i32
  %call2925 = call i32 @push_reload(ptr noundef %cond285755955602561956355656, ptr noundef %cond28675606561556375654, ptr noundef %cond2877562156335658, ptr noundef %cond288756395652, i32 noundef %375, i32 noundef %cond28995660, i32 noundef %cond2909, i32 noundef %cond2922, i32 noundef 1, i32 noundef %391, i32 noundef %390)
  %arrayidx2927 = getelementptr inbounds nuw i32, ptr %operand_reloadnum, i64 %indvars.iv6104
  store i32 %call2925, ptr %arrayidx2927, align 4
  br label %for.inc3088

if.else2928.loopexit:                             ; preds = %while.cond2804
  %operand2801.0.lcssa = phi ptr [ %operand2801.0, %while.cond2804 ]
  %bf.load2805.lcssa = phi i32 [ %bf.load2805, %while.cond2804 ]
  br label %if.else2928

if.else2928:                                      ; preds = %if.else2928.loopexit, %lor.lhs.false2843, %lor.lhs.false2831, %land.lhs.true2822
  %operand2801.05950 = phi ptr [ %operand2801.0.lcssa, %if.else2928.loopexit ], [ %operand2801.05951, %lor.lhs.false2843 ], [ %operand2801.05951, %lor.lhs.false2831 ], [ %operand2801.0.lcssa5949, %land.lhs.true2822 ]
  %bf.load28055946 = phi i32 [ %bf.load2805.lcssa, %if.else2928.loopexit ], [ %bf.load28055947, %lor.lhs.false2843 ], [ %bf.load28055947, %lor.lhs.false2831 ], [ %bf.load2805.lcssa5945, %land.lhs.true2822 ]
  br i1 %tobool2929.not, label %for.inc3088, label %land.lhs.true2930

land.lhs.true2930:                                ; preds = %if.else2928
  %trunc5673 = trunc i32 %bf.load28055946 to i16
  switch i16 %trunc5673, label %for.inc3088 [
    i16 43, label %if.then2951
    i16 37, label %land.lhs.true2940
  ]

land.lhs.true2940:                                ; preds = %land.lhs.true2930
  %392 = getelementptr i8, ptr %operand2801.05950, i64 8
  %operand2801.0.val5363 = load i32, ptr %392, align 8
  %cmp2942 = icmp ugt i32 %operand2801.0.val5363, 52
  br i1 %cmp2942, label %land.lhs.true2944, label %for.inc3088

land.lhs.true2944:                                ; preds = %land.lhs.true2940
  %393 = load ptr, ptr @reg_renumber, align 8
  %idxprom2946 = zext i32 %operand2801.0.val5363 to i64
  %arrayidx2947 = getelementptr inbounds nuw i16, ptr %393, i64 %idxprom2946
  %394 = load i16, ptr %arrayidx2947, align 2
  %cmp2949 = icmp slt i16 %394, 0
  br i1 %cmp2949, label %if.then2951, label %for.inc3088

if.then2951:                                      ; preds = %land.lhs.true2944, %land.lhs.true2930
  %arrayidx2953 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6104
  %395 = load ptr, ptr %arrayidx2953, align 8
  br label %while.cond2954

while.cond2954:                                   ; preds = %while.body2959, %if.then2951
  %operand2801.1.in = phi ptr [ %395, %if.then2951 ], [ %u2960, %while.body2959 ]
  %operand2801.1 = load ptr, ptr %operand2801.1.in, align 8
  %bf.load2955 = load i32, ptr %operand2801.1, align 8
  %trunc5674 = trunc i32 %bf.load2955 to i16
  switch i16 %trunc5674, label %for.inc3088.loopexit5933 [
    i16 39, label %while.body2959
    i16 37, label %if.then2967
  ]

while.body2959:                                   ; preds = %while.cond2954
  %u2960 = getelementptr inbounds nuw i8, ptr %operand2801.1, i64 8
  br label %while.cond2954, !llvm.loop !28

if.then2967:                                      ; preds = %while.cond2954
  %operand2801.1.lcssa5952 = phi ptr [ %operand2801.1, %while.cond2954 ]
  %arrayidx2969 = getelementptr inbounds nuw i32, ptr %modified, i64 %indvars.iv6104
  %396 = load i32, ptr %arrayidx2969, align 4
  %cmp2970.not = icmp eq i32 %396, 2
  br i1 %cmp2970.not, label %if.then2982, label %if.end2977

if.end2977:                                       ; preds = %if.then2967
  %call2973 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %operand2801.1.lcssa5952) #7
  %call2974 = call ptr @emit_insn_before(ptr noundef %call2973, ptr noundef %insn) #7
  %bf.load2975 = load i32, ptr %call2974, align 8
  %bf.clear2976 = and i32 %bf.load2975, -16711681
  %bf.set = or disjoint i32 %bf.clear2976, 917504
  store i32 %bf.set, ptr %call2974, align 8
  %cmp2980.not = icmp eq i32 %396, 0
  br i1 %cmp2980.not, label %for.inc3088, label %if.then2982

if.then2982:                                      ; preds = %if.end2977, %if.then2967
  %call2983 = call ptr @gen_clobber(ptr noundef nonnull %operand2801.1.lcssa5952) #7
  %call2984 = call ptr @emit_insn_after(ptr noundef %call2983, ptr noundef %insn) #7
  br label %for.inc3088

if.else2989:                                      ; preds = %land.lhs.true2793, %land.lhs.true2788, %if.else2783
  %arrayidx2991 = getelementptr inbounds nuw i32, ptr %goal_alternative_matches, i64 %indvars.iv6104
  %397 = load i32, ptr %arrayidx2991, align 4
  %cmp2992 = icmp sgt i32 %397, -1
  br i1 %cmp2992, label %land.lhs.true2994, label %for.inc3088

land.lhs.true2994:                                ; preds = %if.else2989
  %idxprom2997 = zext nneg i32 %397 to i64
  %arrayidx2998 = getelementptr inbounds nuw i8, ptr %goal_alternative_win, i64 %idxprom2997
  %398 = load i8, ptr %arrayidx2998, align 1
  %tobool3000.not = icmp eq i8 %398, 0
  br i1 %tobool3000.not, label %for.inc3088, label %land.lhs.true3001

land.lhs.true3001:                                ; preds = %land.lhs.true2994
  %arrayidx3003 = getelementptr inbounds nuw i32, ptr %modified, i64 %indvars.iv6104
  %399 = load i32, ptr %arrayidx3003, align 4
  %cmp3004 = icmp eq i32 %399, 0
  br i1 %cmp3004, label %land.lhs.true3006, label %for.inc3088

land.lhs.true3006:                                ; preds = %land.lhs.true3001
  %arrayidx3010 = getelementptr inbounds nuw i32, ptr %modified, i64 %idxprom2997
  %400 = load i32, ptr %arrayidx3010, align 4
  %cmp3011 = icmp eq i32 %400, 2
  %or.cond4192.not5294 = and i1 %cmp3011, %not.switch5344
  %401 = load i32, ptr @optimize, align 4
  %tobool3018 = icmp ne i32 %401, 0
  %or.cond4194 = select i1 %or.cond4192.not5294, i1 %tobool3018, i1 false
  br i1 %or.cond4194, label %if.then3019, label %for.inc3088

if.then3019:                                      ; preds = %land.lhs.true3006
  %arrayidx3022 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %indvars.iv6104
  br label %while.cond3023

while.cond3023:                                   ; preds = %while.body3028, %if.then3019
  %operand3020.0.in = phi ptr [ %arrayidx3022, %if.then3019 ], [ %u3029, %while.body3028 ]
  %operand3020.0 = load ptr, ptr %operand3020.0.in, align 8
  %bf.load3024 = load i32, ptr %operand3020.0, align 8
  %trunc = trunc i32 %bf.load3024 to i16
  switch i16 %trunc, label %for.inc3088.loopexit5934 [
    i16 39, label %while.body3028
    i16 43, label %land.lhs.true3045.loopexit
    i16 37, label %land.lhs.true3041
  ]

while.body3028:                                   ; preds = %while.cond3023
  %u3029 = getelementptr inbounds nuw i8, ptr %operand3020.0, i64 8
  br label %while.cond3023, !llvm.loop !29

land.lhs.true3041:                                ; preds = %while.cond3023
  %operand3020.0.lcssa5943 = phi ptr [ %operand3020.0, %while.cond3023 ]
  %402 = getelementptr i8, ptr %operand3020.0.lcssa5943, i64 8
  %operand3020.0.val = load i32, ptr %402, align 8
  %cmp3043 = icmp ugt i32 %operand3020.0.val, 52
  br i1 %cmp3043, label %land.lhs.true3045, label %for.inc3088

land.lhs.true3045.loopexit:                       ; preds = %while.cond3023
  br label %land.lhs.true3045

land.lhs.true3045:                                ; preds = %land.lhs.true3045.loopexit, %land.lhs.true3041
  %idxprom3048 = zext nneg i32 %397 to i64
  %arrayidx3049 = getelementptr inbounds nuw i32, ptr %goal_alternative, i64 %idxprom3048
  %403 = load i32, ptr %arrayidx3049, align 4
  %cmp3050.not = icmp eq i32 %403, 0
  br i1 %cmp3050.not, label %for.inc3088, label %if.then3052

if.then3052:                                      ; preds = %land.lhs.true3045
  %arrayidx3056 = getelementptr inbounds nuw ptr, ptr @recog_data, i64 %idxprom3048
  %404 = load ptr, ptr %arrayidx3056, align 8
  %405 = load ptr, ptr %arrayidx3022, align 8
  %arrayidx3062 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %idxprom3048
  %406 = load ptr, ptr %arrayidx3062, align 8
  %arrayidx3064 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6104
  %407 = load ptr, ptr %arrayidx3064, align 8
  %arrayidx3072 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %idxprom3048
  %408 = load i32, ptr %arrayidx3072, align 4
  %arrayidx3074 = getelementptr inbounds nuw i32, ptr %operand_mode, i64 %indvars.iv6104
  %409 = load i32, ptr %arrayidx3074, align 4
  %call3077 = call i32 @push_reload(ptr noundef %404, ptr noundef %405, ptr noundef %406, ptr noundef %407, i32 noundef %403, i32 noundef %408, i32 noundef %409, i32 noundef 0, i32 noundef 1, i32 noundef %397, i32 noundef 9)
  %arrayidx3081 = getelementptr inbounds nuw i32, ptr %operand_reloadnum, i64 %idxprom3048
  store i32 %call3077, ptr %arrayidx3081, align 4
  %arrayidx3083 = getelementptr inbounds nuw i32, ptr %operand_reloadnum, i64 %indvars.iv6104
  store i32 %call3077, ptr %arrayidx3083, align 4
  br label %for.inc3088

for.inc3088.loopexit:                             ; preds = %for.inc2599
  br label %for.inc3088

for.inc3088.loopexit5933:                         ; preds = %while.cond2954
  br label %for.inc3088

for.inc3088.loopexit5934:                         ; preds = %while.cond3023
  br label %for.inc3088

for.inc3088:                                      ; preds = %for.inc3088.loopexit5934, %for.inc3088.loopexit5933, %for.inc3088.loopexit, %if.then3052, %land.lhs.true3045, %land.lhs.true3041, %land.lhs.true3006, %land.lhs.true3001, %land.lhs.true2994, %if.else2989, %if.then2982, %if.end2977, %land.lhs.true2944, %land.lhs.true2940, %land.lhs.true2930, %if.else2928, %cond.end2921, %if.then2740, %if.then2700, %cond.end2681, %for.cond2568.preheader, %if.end2536, %if.then2485
  %indvars.iv.next6105 = add nuw nsw i64 %indvars.iv6104, 1
  %exitcond6108 = icmp ne i64 %indvars.iv.next6105, %wide.trip.count6107
  br i1 %exitcond6108, label %for.body2481, label %for.cond3091.preheader.loopexit, !llvm.loop !30

for.body3094:                                     ; preds = %for.inc3133, %for.body3094.lr.ph
  %indvars.iv6109 = phi i64 [ 0, %for.body3094.lr.ph ], [ %indvars.iv.next6110, %for.inc3133 ]
  %retval25.25876 = phi i32 [ 0, %for.body3094.lr.ph ], [ %retval25.3, %for.inc3133 ]
  br i1 %tobool3095.not, label %if.else3124, label %if.then3096

if.then3096:                                      ; preds = %for.body3094
  %arrayidx3098 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %indvars.iv6109
  %410 = load ptr, ptr %arrayidx3098, align 8
  %arrayidx3100 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6109
  %411 = load ptr, ptr %arrayidx3100, align 8
  store ptr %410, ptr %411, align 8
  %bf.load3101 = load i32, ptr %410, align 8
  %bf.clear3102 = and i32 %bf.load3101, 65535
  %cmp3103 = icmp eq i32 %bf.clear3102, 44
  br i1 %cmp3103, label %land.lhs.true3105, label %for.inc3133

land.lhs.true3105:                                ; preds = %if.then3096
  %u3106 = getelementptr inbounds nuw i8, ptr %410, i64 8
  %412 = load ptr, ptr %u3106, align 8
  %call3108 = call ptr @find_reg_note(ptr noundef %insn, i32 noundef 10, ptr noundef %412) #7
  %tobool3109.not = icmp eq ptr %call3108, null
  br i1 %tobool3109.not, label %land.lhs.true3110, label %for.inc3133

land.lhs.true3110:                                ; preds = %land.lhs.true3105
  %bf.load3111 = load i32, ptr %insn, align 8
  %bf.clear3112 = and i32 %bf.load3111, 65535
  %cmp3113 = icmp eq i32 %bf.clear3112, 9
  br i1 %cmp3113, label %lor.lhs.false3115, label %if.then3120

lor.lhs.false3115:                                ; preds = %land.lhs.true3110
  %413 = load ptr, ptr %u3106, align 8
  %call3118 = call zeroext i8 @label_is_jump_target_p(ptr noundef %413, ptr noundef nonnull %insn) #7
  %tobool3119.not = icmp eq i8 %call3118, 0
  br i1 %tobool3119.not, label %if.then3120, label %for.inc3133

if.then3120:                                      ; preds = %lor.lhs.false3115, %land.lhs.true3110
  %414 = load ptr, ptr %u3106, align 8
  call void @add_reg_note(ptr noundef nonnull %insn, i32 noundef 10, ptr noundef %414) #7
  br label %for.inc3133

if.else3124:                                      ; preds = %for.body3094
  %arrayidx3126 = getelementptr inbounds nuw ptr, ptr %substed_operand, i64 %indvars.iv6109
  %415 = load ptr, ptr %arrayidx3126, align 8
  %arrayidx3128 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %indvars.iv6109
  %416 = load ptr, ptr %arrayidx3128, align 8
  %417 = load ptr, ptr %416, align 8
  %cmp3129 = icmp ne ptr %415, %417
  %conv3130 = zext i1 %cmp3129 to i32
  %or3131 = or i32 %retval25.25876, %conv3130
  br label %for.inc3133

for.inc3133:                                      ; preds = %if.else3124, %if.then3120, %lor.lhs.false3115, %land.lhs.true3105, %if.then3096
  %retval25.3 = phi i32 [ %or3131, %if.else3124 ], [ %retval25.25876, %if.then3120 ], [ %retval25.25876, %lor.lhs.false3115 ], [ %retval25.25876, %land.lhs.true3105 ], [ %retval25.25876, %if.then3096 ]
  %indvars.iv.next6110 = add nuw nsw i64 %indvars.iv6109, 1
  %exitcond6113 = icmp ne i64 %indvars.iv.next6110, %wide.trip.count6112
  br i1 %exitcond6113, label %for.body3094, label %for.end3135.loopexit, !llvm.loop !31

for.end3135.loopexit:                             ; preds = %for.inc3133
  %retval25.3.lcssa = phi i32 [ %retval25.3, %for.inc3133 ]
  br label %for.end3135

for.end3135:                                      ; preds = %for.end3135.loopexit, %for.cond3091.preheader
  %retval25.2.lcssa = phi i32 [ 0, %for.cond3091.preheader ], [ %retval25.3.lcssa, %for.end3135.loopexit ]
  %cmp3136 = icmp sgt i32 %10, -1
  %tobool3139 = icmp ne i32 %replace, 0
  %or.cond4196 = and i1 %tobool3139, %cmp3136
  br i1 %or.cond4196, label %if.then3140, label %if.end3163

if.then3140:                                      ; preds = %for.end3135
  %idxprom3141 = zext nneg i32 %10 to i64
  %arrayidx3142 = getelementptr inbounds nuw %struct.insn_data, ptr @insn_data, i64 %idxprom3141
  %n_dups = getelementptr inbounds nuw i8, ptr %arrayidx3142, i64 33
  %418 = load i8, ptr %n_dups, align 1
  %cmp31465883 = icmp sgt i8 %418, 0
  br i1 %cmp31465883, label %for.body3148.lr.ph, label %if.end3163

for.body3148.lr.ph:                               ; preds = %if.then3140
  %conv3143 = sext i8 %418 to i32
  %n_replacements.promoted = load i32, ptr @n_replacements, align 1
  %419 = load i32, ptr @replace_reloads, align 4
  %.fr.i = freeze i32 %419
  %tobool.not.i.i = icmp eq i32 %.fr.i, 0
  %420 = zext i32 %conv3143 to i64
  br label %for.body3148

for.body3148:                                     ; preds = %dup_replacements.exit, %for.body3148.lr.ph
  %indvars.iv6114 = phi i64 [ %420, %for.body3148.lr.ph ], [ %indvars.iv.next6115, %dup_replacements.exit ]
  %inc.i.i58825884 = phi i32 [ %n_replacements.promoted, %for.body3148.lr.ph ], [ %inc.i.i5881, %dup_replacements.exit ]
  %indvars.iv.next6115 = add nsw i64 %indvars.iv6114, -1
  %arrayidx3150 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 1072), i64 %indvars.iv.next6115
  %421 = load i8, ptr %arrayidx3150, align 1
  %idxprom3152 = sext i8 %421 to i64
  %arrayidx3153 = getelementptr inbounds ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 240), i64 %idxprom3152
  %422 = load ptr, ptr %arrayidx3153, align 8
  %423 = load ptr, ptr %422, align 8
  %arrayidx3155 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @recog_data, i64 960), i64 %indvars.iv.next6115
  %424 = load ptr, ptr %arrayidx3155, align 8
  store ptr %423, ptr %424, align 8
  %425 = load ptr, ptr %arrayidx3155, align 8
  %426 = load ptr, ptr %arrayidx3153, align 8
  %cmp8.i = icmp slt i32 %inc.i.i58825884, 1
  %or.cond.i5396 = or i1 %cmp8.i, %tobool.not.i.i
  br i1 %or.cond.i5396, label %dup_replacements.exit, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %for.body3148
  %wide.trip.count.i = zext nneg i32 %inc.i.i58825884 to i64
  br label %for.body.i5397

for.body.i5397:                                   ; preds = %if.end.i5399, %for.body.preheader.i
  %inc.i.i5880 = phi i32 [ %inc.i.i58825884, %for.body.preheader.i ], [ %inc.i.i5879, %if.end.i5399 ]
  %indvars.iv.i = phi i64 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %if.end.i5399 ]
  %inc.i79.i = phi i32 [ %inc.i.i58825884, %for.body.preheader.i ], [ %inc.i6.i, %if.end.i5399 ]
  %arrayidx.i5398 = getelementptr inbounds nuw %struct.replacement, ptr @replacements, i64 %indvars.iv.i
  %427 = load ptr, ptr %arrayidx.i5398, align 8
  %cmp1.not.i = icmp eq ptr %427, %426
  br i1 %cmp1.not.i, label %if.then.i.i, label %if.end.i5399

if.then.i.i:                                      ; preds = %for.body.i5397
  %mode.i = getelementptr inbounds nuw i8, ptr %arrayidx.i5398, i64 20
  %428 = load i32, ptr %mode.i, align 4
  %what.i = getelementptr inbounds nuw i8, ptr %arrayidx.i5398, i64 16
  %429 = load i32, ptr %what.i, align 8
  %inc.i.i = add nuw nsw i32 %inc.i79.i, 1
  store i32 %inc.i.i, ptr @n_replacements, align 4
  %idxprom.i.i = zext nneg i32 %inc.i79.i to i64
  %arrayidx.i.i = getelementptr inbounds nuw %struct.replacement, ptr @replacements, i64 %idxprom.i.i
  %what.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i, i64 16
  store i32 %429, ptr %what.i.i, align 8
  store ptr %425, ptr %arrayidx.i.i, align 8
  %subreg_loc.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i, i64 8
  store ptr null, ptr %subreg_loc.i.i, align 8
  %mode1.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i, i64 20
  store i32 %428, ptr %mode1.i.i, align 4
  br label %if.end.i5399

if.end.i5399:                                     ; preds = %if.then.i.i, %for.body.i5397
  %inc.i.i5879 = phi i32 [ %inc.i.i, %if.then.i.i ], [ %inc.i.i5880, %for.body.i5397 ]
  %inc.i6.i = phi i32 [ %inc.i.i, %if.then.i.i ], [ %inc.i79.i, %for.body.i5397 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %dup_replacements.exit.loopexit, label %for.body.i5397, !llvm.loop !32

dup_replacements.exit.loopexit:                   ; preds = %if.end.i5399
  %inc.i.i5879.lcssa = phi i32 [ %inc.i.i5879, %if.end.i5399 ]
  br label %dup_replacements.exit

dup_replacements.exit:                            ; preds = %dup_replacements.exit.loopexit, %for.body3148
  %inc.i.i5881 = phi i32 [ %inc.i.i58825884, %for.body3148 ], [ %inc.i.i5879.lcssa, %dup_replacements.exit.loopexit ]
  %cmp3146 = icmp sgt i64 %indvars.iv6114, 1
  br i1 %cmp3146, label %for.body3148, label %if.end3163.loopexit, !llvm.loop !33

if.end3163.loopexit:                              ; preds = %dup_replacements.exit
  br label %if.end3163

if.end3163:                                       ; preds = %if.end3163.loopexit, %if.then3140, %for.end3135
  %430 = load ptr, ptr %arrayidx, align 8
  %bf.load3166 = load i32, ptr %430, align 8
  %bf.clear3167 = and i32 %bf.load3166, 65535
  %cmp3168 = icmp eq i32 %bf.clear3167, 24
  br i1 %cmp3168, label %land.lhs.true3170, label %if.end3180

land.lhs.true3170:                                ; preds = %if.end3163
  %u3173 = getelementptr inbounds nuw i8, ptr %430, i64 8
  %431 = load ptr, ptr %u3173, align 8
  %bf.load3175 = load i32, ptr %431, align 8
  %bf.clear3176 = and i32 %bf.load3175, 65535
  %cmp3177 = icmp eq i32 %bf.clear3176, 30
  br i1 %cmp3177, label %if.then3179, label %if.end3180

if.then3179:                                      ; preds = %land.lhs.true3170
  store i32 0, ptr @n_reloads, align 4
  br label %if.end3180

if.end3180:                                       ; preds = %if.then3179, %land.lhs.true3170, %if.end3163
  br i1 %tobool2458.not, label %if.end3183, label %if.then3182

if.then3182:                                      ; preds = %if.end3180
  %432 = load i32, ptr @n_reloads, align 4
  %cmp819.i = icmp sgt i32 %432, 0
  br i1 %cmp819.i, label %for.body.preheader.i5400, label %if.end3183

for.body.preheader.i5400:                         ; preds = %if.then3182
  %wide.trip.count.i5401 = zext nneg i32 %432 to i64
  br label %for.body.i5402

for.body.i5402:                                   ; preds = %for.inc.i5407, %for.body.preheader.i5400
  %indvars.iv.i5403 = phi i64 [ 0, %for.body.preheader.i5400 ], [ %indvars.iv.next.i5408, %for.inc.i5407 ]
  %output_reload.0821.i = phi i32 [ -1, %for.body.preheader.i5400 ], [ %output_reload.1.i, %for.inc.i5407 ]
  %arrayidx.i5404 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %indvars.iv.i5403
  %out.i = getelementptr inbounds nuw i8, ptr %arrayidx.i5404, i64 8
  %433 = load ptr, ptr %out.i, align 8
  %cmp1.not.i5405 = icmp eq ptr %433, null
  br i1 %cmp1.not.i5405, label %for.inc.i5407, label %if.then.i5406

if.then.i5406:                                    ; preds = %for.body.i5402
  %cmp2.i = icmp sgt i32 %output_reload.0821.i, -1
  %434 = trunc nuw nsw i64 %indvars.iv.i5403 to i32
  br i1 %cmp2.i, label %if.end3183.loopexit5932, label %for.inc.i5407

for.inc.i5407:                                    ; preds = %if.then.i5406, %for.body.i5402
  %output_reload.1.i = phi i32 [ %output_reload.0821.i, %for.body.i5402 ], [ %434, %if.then.i5406 ]
  %indvars.iv.next.i5408 = add nuw nsw i64 %indvars.iv.i5403, 1
  %exitcond.not.i5409 = icmp eq i64 %indvars.iv.next.i5408, %wide.trip.count.i5401
  br i1 %exitcond.not.i5409, label %for.end.i, label %for.body.i5402, !llvm.loop !34

for.end.i:                                        ; preds = %for.inc.i5407
  %output_reload.1.i.lcssa = phi i32 [ %output_reload.1.i, %for.inc.i5407 ]
  %cmp5.i = icmp slt i32 %output_reload.1.i.lcssa, 0
  br i1 %cmp5.i, label %if.end3183, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.end.i
  %idxprom6.i = zext nneg i32 %output_reload.1.i.lcssa to i64
  %arrayidx7.i = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %idxprom6.i
  %optional.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i, i64 96
  %bf.load.i5410 = load i8, ptr %optional.i, align 8
  %bf.clear.i5411 = and i8 %bf.load.i5410, 1
  %tobool.not.i5412 = icmp eq i8 %bf.clear.i5411, 0
  br i1 %tobool.not.i5412, label %if.end9.i, label %if.end3183

if.end9.i:                                        ; preds = %lor.lhs.false.i
  %435 = load ptr, ptr %arrayidx7.i, align 8
  %cmp12.not.i = icmp eq ptr %435, null
  br i1 %cmp12.not.i, label %if.end14.i, label %if.end3183

if.end14.i:                                       ; preds = %if.end9.i
  %out17.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i, i64 8
  %436 = load ptr, ptr %out17.i, align 8
  %437 = load i32, ptr @n_earlyclobbers, align 4
  %cmp4.i.i = icmp sgt i32 %437, 0
  br i1 %cmp4.i.i, label %for.body.preheader.i.i, label %earlyclobber_operand_p.exit.i

for.body.preheader.i.i:                           ; preds = %if.end14.i
  %wide.trip.count.i.i = zext nneg i32 %437 to i64
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %earlyclobber_operand_p.exit.i.loopexit, label %for.body.i.i, !llvm.loop !35

for.body.i.i:                                     ; preds = %for.cond.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i ]
  %arrayidx.i.i5419 = getelementptr inbounds nuw ptr, ptr @reload_earlyclobbers, i64 %indvars.iv.i.i
  %438 = load ptr, ptr %arrayidx.i.i5419, align 8
  %cmp1.i.i = icmp eq ptr %438, %436
  br i1 %cmp1.i.i, label %if.end3183.loopexit5931, label %for.cond.i.i

earlyclobber_operand_p.exit.i.loopexit:           ; preds = %for.cond.i.i
  br label %earlyclobber_operand_p.exit.i

earlyclobber_operand_p.exit.i:                    ; preds = %earlyclobber_operand_p.exit.i.loopexit, %if.end14.i
  %opnum36.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i, i64 72
  br label %for.body23.i

for.cond43.preheader.i:                           ; preds = %for.inc40.i
  %rclass118.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i, i64 16
  %outmode143.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i, i64 24
  br label %for.body45.i

for.body23.i:                                     ; preds = %for.inc40.i, %earlyclobber_operand_p.exit.i
  %indvars.iv843.i = phi i64 [ 0, %earlyclobber_operand_p.exit.i ], [ %indvars.iv.next844.i, %for.inc40.i ]
  %arrayidx25.i = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %indvars.iv843.i
  %when_needed.i = getelementptr inbounds nuw i8, ptr %arrayidx25.i, i64 92
  %439 = load i32, ptr %when_needed.i, align 4
  %.off.i = add i32 %439, -5
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true.i5418, label %for.inc40.i

land.lhs.true.i5418:                              ; preds = %for.body23.i
  %opnum.i = getelementptr inbounds nuw i8, ptr %arrayidx25.i, i64 72
  %440 = load i32, ptr %opnum.i, align 8
  %441 = load i32, ptr %opnum36.i, align 8
  %cmp37.i = icmp eq i32 %440, %441
  br i1 %cmp37.i, label %if.end3183.loopexit5930, label %for.inc40.i

for.inc40.i:                                      ; preds = %land.lhs.true.i5418, %for.body23.i
  %indvars.iv.next844.i = add nuw nsw i64 %indvars.iv843.i, 1
  %exitcond847.not.i = icmp eq i64 %indvars.iv.next844.i, %wide.trip.count.i5401
  br i1 %exitcond847.not.i, label %for.cond43.preheader.i, label %for.body23.i, !llvm.loop !36

for.body45.i:                                     ; preds = %for.inc477.i, %for.cond43.preheader.i
  %indvars.iv848.i = phi i64 [ 0, %for.cond43.preheader.i ], [ %indvars.iv.next849.i, %for.inc477.i ]
  %arrayidx47.i = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %indvars.iv848.i
  %442 = load ptr, ptr %arrayidx47.i, align 8
  %tobool49.not.i = icmp eq ptr %442, null
  br i1 %tobool49.not.i, label %for.inc477.i, label %land.lhs.true50.i

land.lhs.true50.i:                                ; preds = %for.body45.i
  %optional53.i = getelementptr inbounds nuw i8, ptr %arrayidx47.i, i64 96
  %bf.load54.i = load i8, ptr %optional53.i, align 8
  %443 = and i8 %bf.load54.i, 3
  %or.cond.i5413 = icmp eq i8 %443, 0
  br i1 %or.cond.i5413, label %land.lhs.true65.i, label %for.inc477.i

land.lhs.true65.i:                                ; preds = %land.lhs.true50.i
  %when_needed68.i = getelementptr inbounds nuw i8, ptr %arrayidx47.i, i64 92
  %444 = load i32, ptr %when_needed68.i, align 4
  switch i32 %444, label %land.lhs.true80.i [
    i32 5, label %for.inc477.i
    i32 6, label %for.inc477.i
    i32 9, label %for.inc477.i
  ]

land.lhs.true80.i:                                ; preds = %land.lhs.true65.i
  %rclass.i = getelementptr inbounds nuw i8, ptr %arrayidx47.i, i64 16
  %445 = load i32, ptr %rclass.i, align 8
  %call83.i = call i32 @reg_classes_intersect_p(i32 noundef %445, i32 noundef 13) #7
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  %inmode.i = getelementptr inbounds nuw i8, ptr %arrayidx47.i, i64 20
  %446 = load i32, ptr %inmode.i, align 4
  br i1 %tobool84.not.i, label %cond.true.i5416, label %cond.false.i

cond.true.i5416:                                  ; preds = %land.lhs.true80.i
  %idxprom87.i = zext i32 %446 to i64
  %arrayidx88.i = getelementptr inbounds nuw i8, ptr @mode_class, i64 %idxprom87.i
  %447 = load i8, ptr %arrayidx88.i, align 1
  %448 = and i8 %447, -2
  %449 = icmp eq i8 %448, 10
  %cond.i5417 = select i1 %449, i32 2, i32 1
  br label %cond.end114.i

cond.false.i:                                     ; preds = %land.lhs.true80.i
  %cmp102.i = icmp eq i32 %446, 40
  br i1 %cmp102.i, label %cond.end114.i, label %cond.false105.i

cond.false105.i:                                  ; preds = %cond.false.i
  %idxprom109.i = zext i32 %446 to i64
  %arrayidx110.i = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom109.i
  %450 = load i8, ptr %arrayidx110.i, align 1
  %conv112.i = zext i8 %450 to i32
  %451 = add nuw nsw i32 %conv112.i, 3
  %452 = lshr i32 %451, 2
  br label %cond.end114.i

cond.end114.i:                                    ; preds = %cond.false105.i, %cond.false.i, %cond.true.i5416
  %cond115.i = phi i32 [ %cond.i5417, %cond.true.i5416 ], [ %452, %cond.false105.i ], [ 3, %cond.false.i ]
  %453 = load i32, ptr %rclass118.i, align 8
  %call119.i = call i32 @reg_classes_intersect_p(i32 noundef %453, i32 noundef 13) #7
  %tobool120.not.i = icmp eq i32 %call119.i, 0
  %454 = load i32, ptr %outmode143.i, align 8
  br i1 %tobool120.not.i, label %cond.true121.i, label %cond.false140.i

cond.true121.i:                                   ; preds = %cond.end114.i
  %idxprom124.i = zext i32 %454 to i64
  %arrayidx125.i = getelementptr inbounds nuw i8, ptr @mode_class, i64 %idxprom124.i
  %455 = load i8, ptr %arrayidx125.i, align 1
  %456 = and i8 %455, -2
  %457 = icmp eq i8 %456, 10
  %cond139.i = select i1 %457, i32 2, i32 1
  br label %cond.end160.i

cond.false140.i:                                  ; preds = %cond.end114.i
  %cmp144.i = icmp eq i32 %454, 40
  br i1 %cmp144.i, label %cond.end160.i, label %cond.false147.i

cond.false147.i:                                  ; preds = %cond.false140.i
  %idxprom151.i = zext i32 %454 to i64
  %arrayidx152.i = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom151.i
  %458 = load i8, ptr %arrayidx152.i, align 1
  %conv154.i = zext i8 %458 to i32
  %459 = add nuw nsw i32 %conv154.i, 3
  %460 = lshr i32 %459, 2
  br label %cond.end160.i

cond.end160.i:                                    ; preds = %cond.false147.i, %cond.false140.i, %cond.true121.i
  %cond161.i = phi i32 [ %cond139.i, %cond.true121.i ], [ %460, %cond.false147.i ], [ 3, %cond.false140.i ]
  %cmp162.i = icmp eq i32 %cond115.i, %cond161.i
  br i1 %cmp162.i, label %land.lhs.true164.i, label %for.inc477.i

land.lhs.true164.i:                               ; preds = %cond.end160.i
  %inc167.i = getelementptr inbounds nuw i8, ptr %arrayidx47.i, i64 36
  %461 = load i32, ptr %inc167.i, align 4
  %cmp168.i = icmp eq i32 %461, 0
  br i1 %cmp168.i, label %land.lhs.true170.i, label %for.inc477.i

land.lhs.true170.i:                               ; preds = %land.lhs.true164.i
  %reg_rtx.i = getelementptr inbounds nuw i8, ptr %arrayidx47.i, i64 64
  %462 = load ptr, ptr %reg_rtx.i, align 8
  %cmp173.i = icmp eq ptr %462, null
  br i1 %cmp173.i, label %land.lhs.true175.i, label %for.inc477.i

land.lhs.true175.i:                               ; preds = %land.lhs.true170.i
  %idxprom179.i = sext i32 %454 to i64
  %arrayidx180.i = getelementptr inbounds [30 x ptr], ptr @secondary_memlocs_elim, i64 %idxprom179.i
  %opnum183.i = getelementptr inbounds nuw i8, ptr %arrayidx47.i, i64 72
  %463 = load i32, ptr %opnum183.i, align 8
  %idxprom184.i = sext i32 %463 to i64
  %arrayidx185.i = getelementptr inbounds ptr, ptr %arrayidx180.i, i64 %idxprom184.i
  %464 = load ptr, ptr %arrayidx185.i, align 8
  %cmp186.i = icmp eq ptr %464, null
  br i1 %cmp186.i, label %cond.true225.i, label %lor.lhs.false188.i

lor.lhs.false188.i:                               ; preds = %land.lhs.true175.i
  %465 = load i32, ptr %opnum36.i, align 8
  %idxprom197.i = sext i32 %465 to i64
  %arrayidx198.i = getelementptr inbounds ptr, ptr %arrayidx180.i, i64 %idxprom197.i
  %466 = load ptr, ptr %arrayidx198.i, align 8
  %cmp199.i = icmp eq ptr %466, null
  br i1 %cmp199.i, label %cond.true225.i, label %lor.lhs.false201.i

lor.lhs.false201.i:                               ; preds = %lor.lhs.false188.i
  %call222.i = call i32 @rtx_equal_p(ptr noundef nonnull %464, ptr noundef nonnull %466) #7
  %tobool223.not.i = icmp eq i32 %call222.i, 0
  br i1 %tobool223.not.i, label %for.inc477.i, label %cond.true225.i

cond.true225.i:                                   ; preds = %lor.lhs.false201.i, %lor.lhs.false188.i, %land.lhs.true175.i
  %467 = load i32, ptr %rclass.i, align 8
  %468 = load i32, ptr %rclass118.i, align 8
  %cmp232.i = icmp eq i32 %467, %468
  br i1 %cmp232.i, label %land.lhs.true252.i, label %for.inc477.i

land.lhs.true252.i:                               ; preds = %cond.true225.i
  %469 = load ptr, ptr %arrayidx47.i, align 8
  %470 = load ptr, ptr %out17.i, align 8
  %cmp259.i = icmp eq ptr %469, %470
  br i1 %cmp259.i, label %land.lhs.true335.i, label %lor.lhs.false261.i

lor.lhs.false261.i:                               ; preds = %land.lhs.true252.i
  %cmp265.not.i = icmp eq ptr %469, null
  br i1 %cmp265.not.i, label %lor.lhs.false309.i, label %land.lhs.true267.i

land.lhs.true267.i:                               ; preds = %lor.lhs.false261.i
  %bf.load271.i = load i32, ptr %469, align 8
  %bf.clear272.i = and i32 %bf.load271.i, 65535
  %cmp273.i = icmp eq i32 %bf.clear272.i, 37
  br i1 %cmp273.i, label %cond.true275.i, label %cond.false294.i

cond.true275.i:                                   ; preds = %land.lhs.true267.i
  %bf.load279.i = load i32, ptr %470, align 8
  %bf.clear280.i = and i32 %bf.load279.i, 65535
  %cmp281.i = icmp eq i32 %bf.clear280.i, 37
  br i1 %cmp281.i, label %land.lhs.true283.i, label %lor.lhs.false309.i

land.lhs.true283.i:                               ; preds = %cond.true275.i
  %471 = getelementptr i8, ptr %469, i64 8
  %.val806.i = load i32, ptr %471, align 8
  %472 = getelementptr i8, ptr %470, i64 8
  %.val805.i = load i32, ptr %472, align 8
  %cmp292.i = icmp eq i32 %.val806.i, %.val805.i
  br i1 %cmp292.i, label %land.lhs.true335.i, label %lor.lhs.false309.i

cond.false294.i:                                  ; preds = %land.lhs.true267.i
  %call301.i = call i32 @rtx_equal_p(ptr noundef nonnull %469, ptr noundef %470) #7
  %tobool302.not.i = icmp eq i32 %call301.i, 0
  br i1 %tobool302.not.i, label %lor.lhs.false309.i, label %land.lhs.true303.i

land.lhs.true303.i:                               ; preds = %cond.false294.i
  %473 = load ptr, ptr %arrayidx47.i, align 8
  %call307.i = call i32 @side_effects_p(ptr noundef %473) #7
  %tobool308.not.i = icmp eq i32 %call307.i, 0
  br i1 %tobool308.not.i, label %land.lhs.true335.i, label %lor.lhs.false309.i

lor.lhs.false309.i:                               ; preds = %land.lhs.true303.i, %cond.false294.i, %land.lhs.true283.i, %cond.true275.i, %lor.lhs.false261.i
  %474 = load ptr, ptr %out17.i, align 8
  %475 = load ptr, ptr %arrayidx47.i, align 8
  %call316.i = call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %474, ptr noundef %475)
  %tobool317.not.i = icmp eq i32 %call316.i, 0
  br i1 %tobool317.not.i, label %land.lhs.true318.i, label %for.inc477.i

land.lhs.true318.i:                               ; preds = %lor.lhs.false309.i
  %476 = load ptr, ptr %arrayidx47.i, align 8
  %bf.load322.i = load i32, ptr %476, align 8
  %bf.clear323.i = and i32 %bf.load322.i, 65535
  %cmp324.i = icmp eq i32 %bf.clear323.i, 37
  br i1 %cmp324.i, label %land.lhs.true326.i, label %land.lhs.true335.i

land.lhs.true326.i:                               ; preds = %land.lhs.true318.i
  %477 = load ptr, ptr %out17.i, align 8
  %call333.i = call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %476, ptr noundef %477)
  %tobool334.not.i = icmp eq i32 %call333.i, 0
  br i1 %tobool334.not.i, label %land.lhs.true335.i, label %for.inc477.i

land.lhs.true335.i:                               ; preds = %land.lhs.true326.i, %land.lhs.true318.i, %land.lhs.true303.i, %land.lhs.true283.i, %land.lhs.true252.i
  %478 = load ptr, ptr %arrayidx47.i, align 8
  %479 = load i32, ptr %inmode.i, align 4
  %480 = load i32, ptr %when_needed68.i, align 4
  %cmp345.i = icmp ne i32 %480, 0
  %conv346.i = zext i1 %cmp345.i to i32
  %call347.i = call fastcc i32 @reload_inner_reg_of_subreg(ptr noundef %478, i32 noundef %479, i32 noundef %conv346.i)
  %tobool348.not.i = icmp eq i32 %call347.i, 0
  br i1 %tobool348.not.i, label %land.lhs.true349.i, label %for.inc477.i

land.lhs.true349.i:                               ; preds = %land.lhs.true335.i
  %481 = load i32, ptr %when_needed68.i, align 4
  %switch804.i = icmp ult i32 %481, 2
  br i1 %switch804.i, label %if.then369.i, label %for.inc477.i

if.then369.i:                                     ; preds = %land.lhs.true349.i
  %indvars.iv848.i.lcssa = phi i64 [ %indvars.iv848.i, %land.lhs.true349.i ]
  %arrayidx47.i.lcssa = phi ptr [ %arrayidx47.i, %land.lhs.true349.i ]
  %rclass.i.lcssa = phi ptr [ %rclass.i, %land.lhs.true349.i ]
  %when_needed68.i.lcssa = phi ptr [ %when_needed68.i, %land.lhs.true349.i ]
  %opnum183.i.le = getelementptr inbounds nuw i8, ptr %arrayidx47.i.lcssa, i64 72
  %482 = trunc nuw nsw i64 %indvars.iv848.i.lcssa to i32
  %483 = load ptr, ptr %out17.i, align 8
  %out375.i = getelementptr inbounds nuw i8, ptr %arrayidx47.i.lcssa, i64 8
  store ptr %483, ptr %out375.i, align 8
  %out_reg.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i, i64 48
  %484 = load ptr, ptr %out_reg.i, align 8
  %out_reg380.i = getelementptr inbounds nuw i8, ptr %arrayidx47.i.lcssa, i64 48
  store ptr %484, ptr %out_reg380.i, align 8
  %485 = load i32, ptr %outmode143.i, align 8
  %outmode386.i = getelementptr inbounds nuw i8, ptr %arrayidx47.i.lcssa, i64 24
  store i32 %485, ptr %outmode386.i, align 8
  store ptr null, ptr %out17.i, align 8
  store i32 9, ptr %when_needed68.i.lcssa, align 4
  %secondary_out_reload.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i, i64 80
  %486 = load i32, ptr %secondary_out_reload.i, align 8
  %cmp395.not.i = icmp eq i32 %486, -1
  br i1 %cmp395.not.i, label %if.end409.i, label %if.then397.i

if.then397.i:                                     ; preds = %if.then369.i
  %secondary_out_reload403.i = getelementptr inbounds nuw i8, ptr %arrayidx47.i.lcssa, i64 80
  store i32 %486, ptr %secondary_out_reload403.i, align 8
  %secondary_out_icode.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i, i64 88
  %487 = load i32, ptr %secondary_out_icode.i, align 8
  %secondary_out_icode408.i = getelementptr inbounds nuw i8, ptr %arrayidx47.i.lcssa, i64 88
  store i32 %487, ptr %secondary_out_icode408.i, align 8
  br label %if.end409.i

if.end409.i:                                      ; preds = %if.then397.i, %if.then369.i
  %488 = load i32, ptr %outmode143.i, align 8
  %idxprom413.i = sext i32 %488 to i64
  %arrayidx414.i = getelementptr inbounds [30 x ptr], ptr @secondary_memlocs_elim, i64 %idxprom413.i
  %489 = load i32, ptr %opnum36.i, align 8
  %idxprom418.i = sext i32 %489 to i64
  %arrayidx419.i = getelementptr inbounds ptr, ptr %arrayidx414.i, i64 %idxprom418.i
  %490 = load ptr, ptr %arrayidx419.i, align 8
  %cmp420.not.i = icmp eq ptr %490, null
  br i1 %cmp420.not.i, label %if.end443.i, label %if.then422.i

if.then422.i:                                     ; preds = %if.end409.i
  %491 = load i32, ptr %opnum183.i.le, align 8
  %idxprom441.i = sext i32 %491 to i64
  %arrayidx442.i = getelementptr inbounds ptr, ptr %arrayidx414.i, i64 %idxprom441.i
  store ptr %490, ptr %arrayidx442.i, align 8
  br label %if.end443.i

if.end443.i:                                      ; preds = %if.then422.i, %if.end409.i
  %492 = load i32, ptr %rclass118.i, align 8
  %493 = load i32, ptr %rclass.i.lcssa, align 8
  %call450.i = call i32 @reg_class_subset_p(i32 noundef %492, i32 noundef %493) #7
  %tobool451.not.i = icmp eq i32 %call450.i, 0
  br i1 %tobool451.not.i, label %if.end459.i, label %if.then452.i

if.then452.i:                                     ; preds = %if.end443.i
  %494 = load i32, ptr %rclass118.i, align 8
  store i32 %494, ptr %rclass.i.lcssa, align 8
  br label %if.end459.i

if.end459.i:                                      ; preds = %if.then452.i, %if.end443.i
  %495 = load i32, ptr @n_replacements, align 4
  %cmp461833.i = icmp sgt i32 %495, 0
  br i1 %cmp461833.i, label %for.body463.preheader.i, label %if.end3183

for.body463.preheader.i:                          ; preds = %if.end459.i
  %wide.trip.count854.i = zext nneg i32 %495 to i64
  br label %for.body463.i

for.body463.i:                                    ; preds = %for.inc473.i, %for.body463.preheader.i
  %indvars.iv851.i = phi i64 [ 0, %for.body463.preheader.i ], [ %indvars.iv.next852.i, %for.inc473.i ]
  %arrayidx465.i = getelementptr inbounds nuw %struct.replacement, ptr @replacements, i64 %indvars.iv851.i
  %what.i5415 = getelementptr inbounds nuw i8, ptr %arrayidx465.i, i64 16
  %496 = load i32, ptr %what.i5415, align 8
  %cmp466.i = icmp eq i32 %496, %output_reload.1.i.lcssa
  br i1 %cmp466.i, label %if.then468.i, label %for.inc473.i

if.then468.i:                                     ; preds = %for.body463.i
  store i32 %482, ptr %what.i5415, align 8
  br label %for.inc473.i

for.inc473.i:                                     ; preds = %if.then468.i, %for.body463.i
  %indvars.iv.next852.i = add nuw nsw i64 %indvars.iv851.i, 1
  %exitcond855.not.i = icmp eq i64 %indvars.iv.next852.i, %wide.trip.count854.i
  br i1 %exitcond855.not.i, label %if.end3183.loopexit5929, label %for.body463.i, !llvm.loop !37

for.inc477.i:                                     ; preds = %land.lhs.true349.i, %land.lhs.true335.i, %land.lhs.true326.i, %lor.lhs.false309.i, %cond.true225.i, %lor.lhs.false201.i, %land.lhs.true170.i, %land.lhs.true164.i, %cond.end160.i, %land.lhs.true65.i, %land.lhs.true65.i, %land.lhs.true65.i, %land.lhs.true50.i, %for.body45.i
  %indvars.iv.next849.i = add nuw nsw i64 %indvars.iv848.i, 1
  %497 = load i32, ptr @n_reloads, align 4
  %498 = sext i32 %497 to i64
  %cmp44.i = icmp slt i64 %indvars.iv.next849.i, %498
  br i1 %cmp44.i, label %for.body45.i, label %for.end479.i, !llvm.loop !38

for.end479.i:                                     ; preds = %for.inc477.i
  %499 = load ptr, ptr @this_insn, align 8
  %arrayidx480.i = getelementptr inbounds nuw i8, ptr %499, i64 56
  %500 = load i32, ptr %arrayidx480.i, align 8
  %cmp481.i = icmp eq i32 %500, -1
  br i1 %cmp481.i, label %if.end3183, label %for.cond485.preheader.i

for.cond485.preheader.i:                          ; preds = %for.end479.i
  %idxprom488.i = sext i32 %500 to i64
  %arrayidx489.i = getelementptr inbounds %struct.insn_data, ptr @insn_data, i64 %idxprom488.i
  %n_operands.i = getelementptr inbounds nuw i8, ptr %arrayidx489.i, i64 32
  %501 = load i8, ptr %n_operands.i, align 8
  %cmp491828.i = icmp sgt i8 %501, 1
  br i1 %cmp491828.i, label %for.body493.lr.ph.i, label %for.end521.i

for.body493.lr.ph.i:                              ; preds = %for.cond485.preheader.i
  %conv490.i = zext nneg i8 %501 to i64
  %operand.i = getelementptr inbounds nuw i8, ptr %arrayidx489.i, i64 24
  %502 = load ptr, ptr %operand.i, align 8
  br label %for.body493.i

for.body493.i:                                    ; preds = %for.inc519.i, %for.body493.lr.ph.i
  %indvars.iv856.i = phi i64 [ 1, %for.body493.lr.ph.i ], [ %indvars.iv.next857.i, %for.inc519.i ]
  %arrayidx499.i = getelementptr inbounds nuw %struct.insn_operand_data, ptr %502, i64 %indvars.iv856.i
  %constraint.i = getelementptr inbounds nuw i8, ptr %arrayidx499.i, i64 8
  %503 = load ptr, ptr %constraint.i, align 8
  %504 = load i8, ptr %503, align 1
  switch i8 %504, label %for.inc519.i [
    i8 61, label %if.end3183.loopexit5928
    i8 43, label %if.end3183.loopexit5928
  ]

for.inc519.i:                                     ; preds = %for.body493.i
  %indvars.iv.next857.i = add nuw nsw i64 %indvars.iv856.i, 1
  %exitcond860.not.i = icmp eq i64 %indvars.iv.next857.i, %conv490.i
  br i1 %exitcond860.not.i, label %for.end521.i.loopexit, label %for.body493.i, !llvm.loop !39

for.end521.i.loopexit:                            ; preds = %for.inc519.i
  br label %for.end521.i

for.end521.i:                                     ; preds = %for.end521.i.loopexit, %for.cond485.preheader.i
  %arrayidx523.i = getelementptr inbounds nuw i8, ptr %499, i64 64
  %note.0830.i = load ptr, ptr %arrayidx523.i, align 8
  %tobool525.not831.i = icmp eq ptr %note.0830.i, null
  br i1 %tobool525.not831.i, label %if.end3183, label %for.body526.lr.ph.i

for.body526.lr.ph.i:                              ; preds = %for.end521.i
  %secondary_out_reload591.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i, i64 80
  br label %for.body526.i

for.body526.i:                                    ; preds = %for.inc662.i, %for.body526.lr.ph.i
  %note.0832.i = phi ptr [ %note.0830.i, %for.body526.lr.ph.i ], [ %note.0.i, %for.inc662.i ]
  %bf.load527.i = load i32, ptr %note.0832.i, align 8
  %505 = and i32 %bf.load527.i, 16711680
  %cmp530.i = icmp eq i32 %505, 65536
  br i1 %cmp530.i, label %land.lhs.true532.i, label %for.inc662.i

land.lhs.true532.i:                               ; preds = %for.body526.i
  %u533.i = getelementptr inbounds nuw i8, ptr %note.0832.i, i64 8
  %506 = load ptr, ptr %u533.i, align 8
  %bf.load535.i = load i32, ptr %506, align 8
  %bf.clear536.i = and i32 %bf.load535.i, 65535
  %cmp537.i = icmp eq i32 %bf.clear536.i, 37
  br i1 %cmp537.i, label %land.lhs.true539.i, label %for.inc662.i

land.lhs.true539.i:                               ; preds = %land.lhs.true532.i
  %507 = load ptr, ptr %out17.i, align 8
  %call545.i = call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %506, ptr noundef %507)
  %tobool546.not.i = icmp eq i32 %call545.i, 0
  br i1 %tobool546.not.i, label %land.lhs.true547.i, label %for.inc662.i

land.lhs.true547.i:                               ; preds = %land.lhs.true539.i
  %508 = load ptr, ptr %u533.i, align 8
  %509 = getelementptr i8, ptr %508, i64 8
  %.val.i = load i32, ptr %509, align 8
  %cmp551.i = icmp slt i32 %.val.i, 53
  br i1 %cmp551.i, label %land.lhs.true553.i, label %for.inc662.i

land.lhs.true553.i:                               ; preds = %land.lhs.true547.i
  %510 = load i32, ptr %outmode143.i, align 8
  %call557.i = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %.val.i, i32 noundef %510) #7
  %tobool559.not.i = icmp eq i8 %call557.i, 0
  br i1 %tobool559.not.i, label %for.inc662.i, label %land.lhs.true560.i

land.lhs.true560.i:                               ; preds = %land.lhs.true553.i
  %511 = load i32, ptr %rclass118.i, align 8
  %idxprom564.i = sext i32 %511 to i64
  %arrayidx565.i = getelementptr inbounds i64, ptr @reg_class_contents, i64 %idxprom564.i
  %512 = load i64, ptr %arrayidx565.i, align 8
  %sh_prom.i = zext nneg i32 %.val.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and.i = and i64 %512, %shl.i
  %tobool566.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool566.not.i, label %for.inc662.i, label %land.lhs.true567.i

land.lhs.true567.i:                               ; preds = %land.lhs.true560.i
  %idxprom568.i = sext i32 %.val.i to i64
  %arrayidx569.i = getelementptr inbounds [87 x i8], ptr @hard_regno_nregs, i64 %idxprom568.i
  %513 = load i32, ptr %outmode143.i, align 8
  %idxprom573.i = zext i32 %513 to i64
  %arrayidx574.i = getelementptr inbounds nuw i8, ptr %arrayidx569.i, i64 %idxprom573.i
  %514 = load i8, ptr %arrayidx574.i, align 1
  %515 = load ptr, ptr %u533.i, align 8
  %bf.load580.i = load i32, ptr %515, align 8
  %bf.lshr581.i = lshr i32 %bf.load580.i, 16
  %bf.clear582.i = and i32 %bf.lshr581.i, 255
  %idxprom583.i = zext nneg i32 %bf.clear582.i to i64
  %arrayidx584.i = getelementptr inbounds nuw i8, ptr %arrayidx569.i, i64 %idxprom583.i
  %516 = load i8, ptr %arrayidx584.i, align 1
  %cmp586.not.i = icmp ugt i8 %514, %516
  br i1 %cmp586.not.i, label %for.inc662.i, label %land.lhs.true588.i

land.lhs.true588.i:                               ; preds = %land.lhs.true567.i
  %517 = load i32, ptr %secondary_out_reload591.i, align 8
  %cmp592.i = icmp eq i32 %517, -1
  br i1 %cmp592.i, label %land.lhs.true620.i, label %lor.lhs.false594.i

lor.lhs.false594.i:                               ; preds = %land.lhs.true588.i
  %idxprom595.i = sext i32 %517 to i64
  %arrayidx596.i = getelementptr inbounds %struct.reload, ptr @rld, i64 %idxprom595.i
  %rclass597.i = getelementptr inbounds nuw i8, ptr %arrayidx596.i, i64 16
  %518 = load i32, ptr %rclass597.i, align 8
  %idxprom598.i = sext i32 %518 to i64
  %arrayidx599.i = getelementptr inbounds i64, ptr @reg_class_contents, i64 %idxprom598.i
  %519 = load i64, ptr %arrayidx599.i, align 8
  %and602.i = and i64 %519, %shl.i
  %tobool603.not.i = icmp eq i64 %and602.i, 0
  br i1 %tobool603.not.i, label %land.lhs.true604.i, label %for.inc662.i

land.lhs.true604.i:                               ; preds = %lor.lhs.false594.i
  %secondary_out_reload607.i = getelementptr inbounds nuw i8, ptr %arrayidx596.i, i64 80
  %520 = load i32, ptr %secondary_out_reload607.i, align 8
  %cmp608.i = icmp eq i32 %520, -1
  br i1 %cmp608.i, label %land.lhs.true620.i, label %lor.lhs.false610.i

lor.lhs.false610.i:                               ; preds = %land.lhs.true604.i
  %idxprom611.i = sext i32 %520 to i64
  %arrayidx612.i = getelementptr inbounds %struct.reload, ptr @rld, i64 %idxprom611.i
  %rclass613.i = getelementptr inbounds nuw i8, ptr %arrayidx612.i, i64 16
  %521 = load i32, ptr %rclass613.i, align 8
  %idxprom614.i = sext i32 %521 to i64
  %arrayidx615.i = getelementptr inbounds i64, ptr @reg_class_contents, i64 %idxprom614.i
  %522 = load i64, ptr %arrayidx615.i, align 8
  %and618.i = and i64 %522, %shl.i
  %tobool619.not.i = icmp eq i64 %and618.i, 0
  br i1 %tobool619.not.i, label %land.lhs.true620.i, label %for.inc662.i

land.lhs.true620.i:                               ; preds = %lor.lhs.false610.i, %land.lhs.true604.i, %land.lhs.true588.i
  %arrayidx622.i = getelementptr inbounds i8, ptr @fixed_regs, i64 %idxprom568.i
  %523 = load i8, ptr %arrayidx622.i, align 1
  %tobool623.not.i = icmp eq i8 %523, 0
  br i1 %tobool623.not.i, label %land.lhs.true624.i, label %for.inc662.i

land.lhs.true624.i:                               ; preds = %land.lhs.true620.i
  %arrayidx628.i = getelementptr inbounds nuw i8, ptr %515, i64 16
  %524 = load i32, ptr %arrayidx628.i, align 8
  %cmp629.i = icmp ult i32 %524, 53
  br i1 %cmp629.i, label %if.then653.i, label %lor.lhs.false631.i

lor.lhs.false631.i:                               ; preds = %land.lhs.true624.i
  %525 = load ptr, ptr @cfun, align 8
  %cfg.i = getelementptr inbounds nuw i8, ptr %525, i64 8
  %526 = load ptr, ptr %cfg.i, align 8
  %527 = load ptr, ptr %526, align 8
  %index.i = getelementptr inbounds nuw i8, ptr %527, i64 80
  %528 = load i32, ptr %index.i, align 8
  %529 = load ptr, ptr @df, align 8
  %arrayidx.i807.i = getelementptr inbounds nuw i8, ptr %529, i64 72
  %530 = load ptr, ptr %arrayidx.i807.i, align 8
  %block_info_size.i.i = getelementptr inbounds nuw i8, ptr %530, i64 16
  %531 = load i32, ptr %block_info_size.i.i, align 8
  %cmp.i.i = icmp ult i32 %528, %531
  call void @llvm.assume(i1 %cmp.i.i)
  %block_info.i.i = getelementptr inbounds nuw i8, ptr %530, i64 8
  %532 = load ptr, ptr %block_info.i.i, align 8
  %idxprom.i.i5414 = zext i32 %528 to i64
  %arrayidx3.i.i = getelementptr inbounds nuw ptr, ptr %532, i64 %idxprom.i.i5414
  %533 = load ptr, ptr %arrayidx3.i.i, align 8
  %out633.i = getelementptr inbounds nuw i8, ptr %533, i64 24
  %534 = load ptr, ptr %out633.i, align 8
  %call638.i = call i32 @bitmap_bit_p(ptr noundef %534, i32 noundef %524) #7
  %tobool639.not.i = icmp eq i32 %call638.i, 0
  br i1 %tobool639.not.i, label %land.lhs.true640.i, label %for.inc662.i

land.lhs.true640.i:                               ; preds = %lor.lhs.false631.i
  %535 = load ptr, ptr %u533.i, align 8
  %bf.load645.i = load i32, ptr %535, align 8
  %bf.lshr646.i = lshr i32 %bf.load645.i, 16
  %bf.clear647.i = and i32 %bf.lshr646.i, 255
  %idxprom648.i = zext nneg i32 %bf.clear647.i to i64
  %arrayidx649.i = getelementptr inbounds nuw i8, ptr %arrayidx569.i, i64 %idxprom648.i
  %536 = load i8, ptr %arrayidx649.i, align 1
  %cmp651.i = icmp eq i8 %536, 1
  br i1 %cmp651.i, label %if.then653.i, label %for.inc662.i

if.then653.i:                                     ; preds = %land.lhs.true640.i, %land.lhs.true624.i
  %.val.i.lcssa = phi i32 [ %.val.i, %land.lhs.true640.i ], [ %.val.i, %land.lhs.true624.i ]
  %537 = load i32, ptr %outmode143.i, align 8
  %call657.i = call ptr @gen_rtx_REG(i32 noundef %537, i32 noundef %.val.i.lcssa) #7
  %reg_rtx660.i = getelementptr inbounds nuw i8, ptr %arrayidx7.i, i64 64
  store ptr %call657.i, ptr %reg_rtx660.i, align 8
  br label %if.end3183

for.inc662.i:                                     ; preds = %land.lhs.true640.i, %lor.lhs.false631.i, %land.lhs.true620.i, %lor.lhs.false610.i, %lor.lhs.false594.i, %land.lhs.true567.i, %land.lhs.true560.i, %land.lhs.true553.i, %land.lhs.true547.i, %land.lhs.true539.i, %land.lhs.true532.i, %for.body526.i
  %arrayidx664.i = getelementptr inbounds nuw i8, ptr %note.0832.i, i64 16
  %note.0.i = load ptr, ptr %arrayidx664.i, align 8
  %tobool525.not.i = icmp eq ptr %note.0.i, null
  br i1 %tobool525.not.i, label %if.end3183.loopexit, label %for.body526.i, !llvm.loop !40

if.end3183.loopexit:                              ; preds = %for.inc662.i
  br label %if.end3183

if.end3183.loopexit5928:                          ; preds = %for.body493.i, %for.body493.i
  br label %if.end3183

if.end3183.loopexit5929:                          ; preds = %for.inc473.i
  br label %if.end3183

if.end3183.loopexit5930:                          ; preds = %land.lhs.true.i5418
  br label %if.end3183

if.end3183.loopexit5931:                          ; preds = %for.body.i.i
  br label %if.end3183

if.end3183.loopexit5932:                          ; preds = %if.then.i5406
  br label %if.end3183

if.end3183:                                       ; preds = %if.end3183.loopexit5932, %if.end3183.loopexit5931, %if.end3183.loopexit5930, %if.end3183.loopexit5929, %if.end3183.loopexit5928, %if.end3183.loopexit, %if.then653.i, %for.end521.i, %for.end479.i, %if.end459.i, %if.end9.i, %lor.lhs.false.i, %for.end.i, %if.then3182, %if.end3180
  %538 = load i32, ptr @n_reloads, align 4
  %cmp31855892 = icmp sgt i32 %538, 0
  br i1 %cmp31855892, label %for.body3187.preheader, label %for.cond3357.preheader

for.body3187.preheader:                           ; preds = %if.end3183
  br label %for.body3187

for.cond3184.loopexit.loopexit:                   ; preds = %for.inc3351
  br label %for.cond3184.loopexit

for.cond3184.loopexit:                            ; preds = %for.body3187, %for.cond3184.loopexit.loopexit
  %539 = load i32, ptr @n_reloads, align 4
  %540 = sext i32 %539 to i64
  %cmp3185 = icmp slt i64 %indvars.iv.next6128, %540
  %indvars.iv.next6123 = add nuw nsw i64 %indvars.iv6122, 1
  br i1 %cmp3185, label %for.body3187, label %for.cond3357.preheader.loopexit, !llvm.loop !41

for.cond3357.preheader.loopexit:                  ; preds = %for.cond3184.loopexit
  %.lcssa5939 = phi i32 [ %539, %for.cond3184.loopexit ]
  br label %for.cond3357.preheader

for.cond3357.preheader:                           ; preds = %for.cond3357.preheader.loopexit, %if.end3183
  %.lcssa = phi i32 [ %538, %if.end3183 ], [ %.lcssa5939, %for.cond3357.preheader.loopexit ]
  %cmp33585895 = icmp sgt i32 %.lcssa, 0
  br i1 %cmp33585895, label %for.body3360.preheader, label %for.end3590

for.body3360.preheader:                           ; preds = %for.cond3357.preheader
  %wide.trip.count6133 = zext i32 %.lcssa to i64
  br label %for.body3360

for.body3187:                                     ; preds = %for.cond3184.loopexit, %for.body3187.preheader
  %indvars.iv6127 = phi i64 [ 0, %for.body3187.preheader ], [ %indvars.iv.next6128, %for.cond3184.loopexit ]
  %indvars.iv6122 = phi i64 [ 1, %for.body3187.preheader ], [ %indvars.iv.next6123, %for.cond3184.loopexit ]
  %indvars.iv.next6128 = add nuw nsw i64 %indvars.iv6127, 1
  %541 = load i32, ptr @n_reloads, align 4
  %542 = sext i32 %541 to i64
  %cmp31905889 = icmp slt i64 %indvars.iv.next6128, %542
  br i1 %cmp31905889, label %for.body3192.lr.ph, label %for.cond3184.loopexit

for.body3192.lr.ph:                               ; preds = %for.body3187
  %arrayidx3194 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %indvars.iv6127
  %when_needed3195 = getelementptr inbounds nuw i8, ptr %arrayidx3194, i64 92
  %opnum3251 = getelementptr inbounds nuw i8, ptr %arrayidx3194, i64 72
  br label %for.body3192

for.body3192:                                     ; preds = %for.inc3351, %for.body3192.lr.ph
  %indvars.iv6124 = phi i64 [ %indvars.iv6122, %for.body3192.lr.ph ], [ %indvars.iv.next6125, %for.inc3351 ]
  %543 = load i32, ptr %when_needed3195, align 4
  %.off = add i32 %543, -3
  %switch5350 = icmp ult i32 %.off, 4
  br i1 %switch5350, label %land.lhs.true3216, label %for.inc3351

land.lhs.true3216:                                ; preds = %for.body3192
  %arrayidx3218 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %indvars.iv6124
  %when_needed3219 = getelementptr inbounds nuw i8, ptr %arrayidx3218, i64 92
  %544 = load i32, ptr %when_needed3219, align 4
  %.off5351 = add i32 %544, -3
  %switch5352 = icmp ult i32 %.off5351, 4
  br i1 %switch5352, label %land.lhs.true3240, label %for.inc3351

land.lhs.true3240:                                ; preds = %land.lhs.true3216
  %545 = load ptr, ptr %arrayidx3194, align 8
  %546 = load ptr, ptr %arrayidx3218, align 8
  %call3246 = call i32 @rtx_equal_p(ptr noundef %545, ptr noundef %546) #7
  %tobool3247.not = icmp eq i32 %call3246, 0
  br i1 %tobool3247.not, label %for.inc3351, label %land.lhs.true3248

land.lhs.true3248:                                ; preds = %land.lhs.true3240
  %547 = load i32, ptr %opnum3251, align 8
  %idxprom3252 = sext i32 %547 to i64
  %arrayidx3253 = getelementptr inbounds i32, ptr %operand_reloadnum, i64 %idxprom3252
  %548 = load i32, ptr %arrayidx3253, align 4
  %cmp3254 = icmp slt i32 %548, 0
  br i1 %cmp3254, label %land.lhs.true3267, label %lor.lhs.false3256

lor.lhs.false3256:                                ; preds = %land.lhs.true3248
  %idxprom3262 = zext nneg i32 %548 to i64
  %arrayidx3263 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %idxprom3262
  %optional = getelementptr inbounds nuw i8, ptr %arrayidx3263, i64 96
  %bf.load3264 = load i8, ptr %optional, align 8
  %bf.clear3265 = and i8 %bf.load3264, 1
  %tobool3266.not = icmp eq i8 %bf.clear3265, 0
  br i1 %tobool3266.not, label %for.inc3351, label %land.lhs.true3267

land.lhs.true3267:                                ; preds = %lor.lhs.false3256, %land.lhs.true3248
  %opnum3270 = getelementptr inbounds nuw i8, ptr %arrayidx3218, i64 72
  %549 = load i32, ptr %opnum3270, align 8
  %idxprom3271 = sext i32 %549 to i64
  %arrayidx3272 = getelementptr inbounds i32, ptr %operand_reloadnum, i64 %idxprom3271
  %550 = load i32, ptr %arrayidx3272, align 4
  %cmp3273 = icmp slt i32 %550, 0
  br i1 %cmp3273, label %land.lhs.true3288, label %lor.lhs.false3275

lor.lhs.false3275:                                ; preds = %land.lhs.true3267
  %idxprom3281 = zext nneg i32 %550 to i64
  %arrayidx3282 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %idxprom3281
  %optional3283 = getelementptr inbounds nuw i8, ptr %arrayidx3282, i64 96
  %bf.load3284 = load i8, ptr %optional3283, align 8
  %bf.clear3285 = and i8 %bf.load3284, 1
  %tobool3287.not = icmp eq i8 %bf.clear3285, 0
  br i1 %tobool3287.not, label %for.inc3351, label %land.lhs.true3288

land.lhs.true3288:                                ; preds = %lor.lhs.false3275, %land.lhs.true3267
  %arrayidx3293 = getelementptr inbounds i32, ptr %goal_alternative_matches, i64 %idxprom3252
  %551 = load i32, ptr %arrayidx3293, align 4
  %cmp3297 = icmp eq i32 %551, %549
  br i1 %cmp3297, label %if.then3310, label %lor.lhs.false3299

lor.lhs.false3299:                                ; preds = %land.lhs.true3288
  %arrayidx3304 = getelementptr inbounds i32, ptr %goal_alternative_matches, i64 %idxprom3271
  %552 = load i32, ptr %arrayidx3304, align 4
  %cmp3308 = icmp eq i32 %552, %547
  br i1 %cmp3308, label %if.then3310, label %for.inc3351

if.then3310:                                      ; preds = %lor.lhs.false3299, %land.lhs.true3288
  %553 = load i32, ptr @n_replacements, align 4
  %cmp33125887 = icmp sgt i32 %553, 0
  br i1 %cmp33125887, label %for.body3314.preheader, label %for.end3326

for.body3314.preheader:                           ; preds = %if.then3310
  %wide.trip.count6120 = zext i32 %553 to i64
  br label %for.body3314

for.body3314:                                     ; preds = %for.inc3324, %for.body3314.preheader
  %indvars.iv6117 = phi i64 [ 0, %for.body3314.preheader ], [ %indvars.iv.next6118, %for.inc3324 ]
  %arrayidx3316 = getelementptr inbounds nuw %struct.replacement, ptr @replacements, i64 %indvars.iv6117
  %what = getelementptr inbounds nuw i8, ptr %arrayidx3316, i64 16
  %554 = load i32, ptr %what, align 8
  %555 = zext i32 %554 to i64
  %cmp3317 = icmp eq i64 %555, %indvars.iv6124
  br i1 %cmp3317, label %if.then3319, label %for.inc3324

if.then3319:                                      ; preds = %for.body3314
  %556 = trunc nuw nsw i64 %indvars.iv6127 to i32
  store i32 %556, ptr %what, align 8
  br label %for.inc3324

for.inc3324:                                      ; preds = %if.then3319, %for.body3314
  %indvars.iv.next6118 = add nuw nsw i64 %indvars.iv6117, 1
  %exitcond6121 = icmp ne i64 %indvars.iv.next6118, %wide.trip.count6120
  br i1 %exitcond6121, label %for.body3314, label %for.end3326.loopexit, !llvm.loop !42

for.end3326.loopexit:                             ; preds = %for.inc3324
  br label %for.end3326

for.end3326:                                      ; preds = %for.end3326.loopexit, %if.then3310
  %557 = load i32, ptr %when_needed3195, align 4
  %558 = and i32 %557, -3
  %switch.selectcmp = icmp eq i32 %558, 4
  %559 = select i1 %switch.selectcmp, i32 8, i32 7
  store i32 %559, ptr %when_needed3195, align 4
  store ptr null, ptr %arrayidx3218, align 8
  br label %for.inc3351

for.inc3351:                                      ; preds = %for.end3326, %lor.lhs.false3299, %lor.lhs.false3275, %lor.lhs.false3256, %land.lhs.true3240, %land.lhs.true3216, %for.body3192
  %indvars.iv.next6125 = add nuw nsw i64 %indvars.iv6124, 1
  %560 = load i32, ptr @n_reloads, align 4
  %561 = trunc nuw i64 %indvars.iv.next6125 to i32
  %cmp3190 = icmp slt i32 %561, %560
  br i1 %cmp3190, label %for.body3192, label %for.cond3184.loopexit.loopexit, !llvm.loop !43

for.body3360:                                     ; preds = %for.inc3588, %for.body3360.preheader
  %indvars.iv6130 = phi i64 [ 0, %for.body3360.preheader ], [ %indvars.iv.next6131, %for.inc3588 ]
  %arrayidx3362 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %indvars.iv6130
  %secondary_p = getelementptr inbounds nuw i8, ptr %arrayidx3362, i64 96
  %bf.load3363 = load i8, ptr %secondary_p, align 8
  %562 = and i8 %bf.load3363, 4
  %tobool3367.not = icmp eq i8 %562, 0
  br i1 %tobool3367.not, label %if.end3388, label %land.lhs.true3368

land.lhs.true3368:                                ; preds = %for.body3360
  %when_needed3371 = getelementptr inbounds nuw i8, ptr %arrayidx3362, i64 92
  %563 = load i32, ptr %when_needed3371, align 4
  %opnum3374 = getelementptr inbounds nuw i8, ptr %arrayidx3362, i64 72
  %564 = load i32, ptr %opnum3374, align 8
  %idxprom3375 = sext i32 %564 to i64
  %arrayidx3376 = getelementptr inbounds i32, ptr %operand_type, i64 %idxprom3375
  %565 = load i32, ptr %arrayidx3376, align 4
  %cmp3377 = icmp eq i32 %563, %565
  br i1 %cmp3377, label %if.then3379, label %if.end3388

if.then3379:                                      ; preds = %land.lhs.true3368
  %arrayidx3384 = getelementptr inbounds i32, ptr %address_type, i64 %idxprom3375
  %566 = load i32, ptr %arrayidx3384, align 4
  store i32 %566, ptr %when_needed3371, align 4
  br label %if.end3388

if.end3388:                                       ; preds = %if.then3379, %land.lhs.true3368, %for.body3360
  %when_needed3391 = getelementptr inbounds nuw i8, ptr %arrayidx3362, i64 92
  %567 = load i32, ptr %when_needed3391, align 4
  %.off5353 = add i32 %567, -3
  %switch5354 = icmp ult i32 %.off5353, 4
  br i1 %switch5354, label %land.lhs.true3412, label %if.end3535

land.lhs.true3412:                                ; preds = %if.end3388
  %opnum3415 = getelementptr inbounds nuw i8, ptr %arrayidx3362, i64 72
  %568 = load i32, ptr %opnum3415, align 8
  %idxprom3416 = sext i32 %568 to i64
  %arrayidx3417 = getelementptr inbounds i32, ptr %operand_reloadnum, i64 %idxprom3416
  %569 = load i32, ptr %arrayidx3417, align 4
  %cmp3418 = icmp slt i32 %569, 0
  br i1 %cmp3418, label %if.then3433, label %lor.lhs.false3420

lor.lhs.false3420:                                ; preds = %land.lhs.true3412
  %idxprom3426 = zext nneg i32 %569 to i64
  %arrayidx3427 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %idxprom3426
  %optional3428 = getelementptr inbounds nuw i8, ptr %arrayidx3427, i64 96
  %bf.load3429 = load i8, ptr %optional3428, align 8
  %bf.clear3430 = and i8 %bf.load3429, 1
  %tobool3432.not = icmp eq i8 %bf.clear3430, 0
  br i1 %tobool3432.not, label %if.end3535, label %if.then3433

if.then3433:                                      ; preds = %lor.lhs.false3420, %land.lhs.true3412
  %switch5356 = icmp samesign ult i32 %.off5353, 2
  br i1 %switch5356, label %land.lhs.true3445, label %if.end3474

land.lhs.true3445:                                ; preds = %if.then3433
  %secondary_in_reload = getelementptr inbounds nuw i8, ptr %arrayidx3362, i64 76
  %570 = load i32, ptr %secondary_in_reload, align 4
  %cmp3448.not = icmp eq i32 %570, -1
  br i1 %cmp3448.not, label %if.end3474, label %if.then3450

if.then3450:                                      ; preds = %land.lhs.true3445
  %idxprom3455 = sext i32 %570 to i64
  %arrayidx3456 = getelementptr inbounds %struct.reload, ptr @rld, i64 %idxprom3455
  %when_needed3457 = getelementptr inbounds nuw i8, ptr %arrayidx3456, i64 92
  store i32 8, ptr %when_needed3457, align 4
  %cmp3458 = icmp sgt i32 %570, 0
  br i1 %cmp3458, label %land.lhs.true3460, label %if.end3474

land.lhs.true3460:                                ; preds = %if.then3450
  %secondary_in_reload3463 = getelementptr inbounds nuw i8, ptr %arrayidx3456, i64 76
  %571 = load i32, ptr %secondary_in_reload3463, align 4
  %cmp3464.not = icmp eq i32 %571, -1
  br i1 %cmp3464.not, label %if.end3474, label %if.then3466

if.then3466:                                      ; preds = %land.lhs.true3460
  %idxprom3470 = sext i32 %571 to i64
  %arrayidx3471 = getelementptr inbounds %struct.reload, ptr @rld, i64 %idxprom3470
  %when_needed3472 = getelementptr inbounds nuw i8, ptr %arrayidx3471, i64 92
  store i32 8, ptr %when_needed3472, align 4
  br label %if.end3474

if.end3474:                                       ; preds = %if.then3466, %land.lhs.true3460, %if.then3450, %land.lhs.true3445, %if.then3433
  %572 = load i32, ptr %when_needed3391, align 4
  %.off5357 = add i32 %572, -5
  %switch5358 = icmp ult i32 %.off5357, 2
  br i1 %switch5358, label %land.lhs.true3486, label %if.end3514

land.lhs.true3486:                                ; preds = %if.end3474
  %secondary_out_reload = getelementptr inbounds nuw i8, ptr %arrayidx3362, i64 80
  %573 = load i32, ptr %secondary_out_reload, align 8
  %cmp3489.not = icmp eq i32 %573, -1
  br i1 %cmp3489.not, label %if.end3514thread-pre-split, label %if.then3491

if.then3491:                                      ; preds = %land.lhs.true3486
  %idxprom3496 = sext i32 %573 to i64
  %arrayidx3497 = getelementptr inbounds %struct.reload, ptr @rld, i64 %idxprom3496
  %when_needed3498 = getelementptr inbounds nuw i8, ptr %arrayidx3497, i64 92
  store i32 8, ptr %when_needed3498, align 4
  %tobool3499.not = icmp eq i32 %573, 0
  br i1 %tobool3499.not, label %if.end3514thread-pre-split, label %land.lhs.true3500

land.lhs.true3500:                                ; preds = %if.then3491
  %secondary_out_reload3503 = getelementptr inbounds nuw i8, ptr %arrayidx3497, i64 80
  %574 = load i32, ptr %secondary_out_reload3503, align 8
  %cmp3504.not = icmp eq i32 %574, -1
  br i1 %cmp3504.not, label %if.end3514thread-pre-split, label %if.then3506

if.then3506:                                      ; preds = %land.lhs.true3500
  %idxprom3510 = sext i32 %574 to i64
  %arrayidx3511 = getelementptr inbounds %struct.reload, ptr @rld, i64 %idxprom3510
  %when_needed3512 = getelementptr inbounds nuw i8, ptr %arrayidx3511, i64 92
  store i32 8, ptr %when_needed3512, align 4
  br label %if.end3514thread-pre-split

if.end3514thread-pre-split:                       ; preds = %if.then3506, %land.lhs.true3500, %if.then3491, %land.lhs.true3486
  %.pr = load i32, ptr %when_needed3391, align 4
  br label %if.end3514

if.end3514:                                       ; preds = %if.end3514thread-pre-split, %if.end3474
  %575 = phi i32 [ %.pr, %if.end3514thread-pre-split ], [ %572, %if.end3474 ]
  switch i32 %575, label %if.else3530 [
    i32 4, label %if.then3526
    i32 6, label %if.then3526
  ]

if.then3526:                                      ; preds = %if.end3514, %if.end3514
  store i32 8, ptr %when_needed3391, align 4
  br label %if.end3535

if.else3530:                                      ; preds = %if.end3514
  store i32 7, ptr %when_needed3391, align 4
  br label %if.end3535

if.end3535:                                       ; preds = %if.else3530, %if.then3526, %lor.lhs.false3420, %if.end3388
  %576 = load i32, ptr %when_needed3391, align 4
  %.off5359 = add i32 %576, -3
  %switch5360 = icmp ult i32 %.off5359, 2
  br i1 %switch5360, label %land.lhs.true3547, label %if.end3570

land.lhs.true3547:                                ; preds = %if.end3535
  %opnum3550 = getelementptr inbounds nuw i8, ptr %arrayidx3362, i64 72
  %577 = load i32, ptr %opnum3550, align 8
  %idxprom3551 = sext i32 %577 to i64
  %arrayidx3552 = getelementptr inbounds i32, ptr %operand_reloadnum, i64 %idxprom3551
  %578 = load i32, ptr %arrayidx3552, align 4
  %cmp3553 = icmp sgt i32 %578, -1
  br i1 %cmp3553, label %land.lhs.true3555, label %if.end3570

land.lhs.true3555:                                ; preds = %land.lhs.true3547
  %idxprom3561 = zext nneg i32 %578 to i64
  %arrayidx3562 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %idxprom3561
  %when_needed3563 = getelementptr inbounds nuw i8, ptr %arrayidx3562, i64 92
  %579 = load i32, ptr %when_needed3563, align 4
  %cmp3564 = icmp eq i32 %579, 9
  br i1 %cmp3564, label %if.then3566, label %if.end3570

if.then3566:                                      ; preds = %land.lhs.true3555
  store i32 10, ptr %when_needed3391, align 4
  br label %if.end3570

if.end3570:                                       ; preds = %if.then3566, %land.lhs.true3555, %land.lhs.true3547, %if.end3535
  %opnum3573 = getelementptr inbounds nuw i8, ptr %arrayidx3362, i64 72
  %580 = load i32, ptr %opnum3573, align 8
  %idxprom3574 = sext i32 %580 to i64
  %arrayidx3575 = getelementptr inbounds i32, ptr %goal_alternative_matches, i64 %idxprom3574
  %581 = load i32, ptr %arrayidx3575, align 4
  %cmp3576 = icmp sgt i32 %581, -1
  br i1 %cmp3576, label %if.then3578, label %for.inc3588

if.then3578:                                      ; preds = %if.end3570
  store i32 %581, ptr %opnum3573, align 8
  br label %for.inc3588

for.inc3588:                                      ; preds = %if.then3578, %if.end3570
  %indvars.iv.next6131 = add nuw nsw i64 %indvars.iv6130, 1
  %exitcond6134 = icmp ne i64 %indvars.iv.next6131, %wide.trip.count6133
  br i1 %exitcond6134, label %for.body3360, label %for.end3590.loopexit, !llvm.loop !44

for.end3590.loopexit:                             ; preds = %for.inc3588
  br label %for.end3590

for.end3590:                                      ; preds = %for.end3590.loopexit, %for.cond3357.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %first_inpaddr_num) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %first_outpaddr_num) #7
  %cmp35925897 = icmp sgt i8 %8, 0
  br i1 %cmp35925897, label %for.body3594.preheader, label %for.cond3603.preheader

for.body3594.preheader:                           ; preds = %for.end3590
  %wide.trip.count6138 = zext i32 %conv83 to i64
  br label %for.body3594

for.cond3603.preheader.loopexit:                  ; preds = %for.body3594
  br label %for.cond3603.preheader

for.cond3603.preheader:                           ; preds = %for.cond3603.preheader.loopexit, %for.end3590
  %cmp36045900 = icmp sgt i32 %.lcssa, 0
  br i1 %cmp36045900, label %for.body3606.preheader, label %for.end3652

for.body3606.preheader:                           ; preds = %for.cond3603.preheader
  %582 = zext i32 %.lcssa to i64
  br label %for.body3606

for.body3594:                                     ; preds = %for.body3594, %for.body3594.preheader
  %indvars.iv6135 = phi i64 [ 0, %for.body3594.preheader ], [ %indvars.iv.next6136, %for.body3594 ]
  %arrayidx3596 = getelementptr inbounds nuw i32, ptr %first_outpaddr_num, i64 %indvars.iv6135
  store i32 -2, ptr %arrayidx3596, align 4
  %arrayidx3598 = getelementptr inbounds nuw i32, ptr %first_inpaddr_num, i64 %indvars.iv6135
  store i32 -2, ptr %arrayidx3598, align 4
  %indvars.iv.next6136 = add nuw nsw i64 %indvars.iv6135, 1
  %exitcond6139 = icmp ne i64 %indvars.iv.next6136, %wide.trip.count6138
  br i1 %exitcond6139, label %for.body3594, label %for.cond3603.preheader.loopexit, !llvm.loop !45

for.body3606:                                     ; preds = %for.inc3650, %for.body3606.preheader
  %indvars.iv6140 = phi i64 [ %582, %for.body3606.preheader ], [ %indvars.iv.next6141, %for.inc3650 ]
  %need_change.05902 = phi i32 [ %need_change.1, %for.inc3650 ], [ 0, %for.body3606.preheader ]
  %first_op_addr_num.05901 = phi i32 [ %first_op_addr_num.1, %for.inc3650 ], [ -2, %for.body3606.preheader ]
  %indvars.iv.next6141 = add nsw i64 %indvars.iv6140, -1
  %arrayidx3608 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %indvars.iv.next6141
  %when_needed3609 = getelementptr inbounds nuw i8, ptr %arrayidx3608, i64 92
  %583 = load i32, ptr %when_needed3609, align 4
  switch i32 %583, label %for.inc3650 [
    i32 7, label %sw.bb3610
    i32 3, label %sw.bb3616
    i32 5, label %sw.bb3632
  ]

sw.bb3610:                                        ; preds = %for.body3606
  %cmp3612 = icmp sgt i32 %first_op_addr_num.05901, -2
  %584 = trunc nuw nsw i64 %indvars.iv.next6141 to i32
  %spec.select5341 = select i1 %cmp3612, i32 %584, i32 -1
  %spec.select5342 = select i1 %cmp3612, i32 1, i32 %need_change.05902
  br label %for.inc3650

sw.bb3616:                                        ; preds = %for.body3606
  %opnum3619 = getelementptr inbounds nuw i8, ptr %arrayidx3608, i64 72
  %585 = load i32, ptr %opnum3619, align 8
  %idxprom3620 = sext i32 %585 to i64
  %arrayidx3621 = getelementptr inbounds i32, ptr %first_inpaddr_num, i64 %idxprom3620
  %586 = load i32, ptr %arrayidx3621, align 4
  %inc3622 = add nsw i32 %586, 1
  %cmp3623 = icmp sgt i32 %586, -2
  %587 = trunc nuw nsw i64 %indvars.iv.next6141 to i32
  %spec.store.select = select i1 %cmp3623, i32 %587, i32 %inc3622
  store i32 %spec.store.select, ptr %arrayidx3621, align 4
  %spec.select5669 = select i1 %cmp3623, i32 1, i32 %need_change.05902
  br label %for.inc3650

sw.bb3632:                                        ; preds = %for.body3606
  %opnum3635 = getelementptr inbounds nuw i8, ptr %arrayidx3608, i64 72
  %588 = load i32, ptr %opnum3635, align 8
  %idxprom3636 = sext i32 %588 to i64
  %arrayidx3637 = getelementptr inbounds i32, ptr %first_outpaddr_num, i64 %idxprom3636
  %589 = load i32, ptr %arrayidx3637, align 4
  %inc3638 = add nsw i32 %589, 1
  %cmp3639 = icmp sgt i32 %589, -2
  %590 = trunc nuw nsw i64 %indvars.iv.next6141 to i32
  %spec.store.select5670 = select i1 %cmp3639, i32 %590, i32 %inc3638
  store i32 %spec.store.select5670, ptr %arrayidx3637, align 4
  %spec.select5671 = select i1 %cmp3639, i32 1, i32 %need_change.05902
  br label %for.inc3650

for.inc3650:                                      ; preds = %sw.bb3632, %sw.bb3616, %sw.bb3610, %for.body3606
  %first_op_addr_num.1 = phi i32 [ %first_op_addr_num.05901, %for.body3606 ], [ %spec.select5341, %sw.bb3610 ], [ %first_op_addr_num.05901, %sw.bb3616 ], [ %first_op_addr_num.05901, %sw.bb3632 ]
  %need_change.1 = phi i32 [ %need_change.05902, %for.body3606 ], [ %spec.select5342, %sw.bb3610 ], [ %spec.select5669, %sw.bb3616 ], [ %spec.select5671, %sw.bb3632 ]
  %cmp3604 = icmp sgt i64 %indvars.iv6140, 1
  br i1 %cmp3604, label %for.body3606, label %for.end3652.loopexit, !llvm.loop !46

for.end3652.loopexit:                             ; preds = %for.inc3650
  %first_op_addr_num.1.lcssa = phi i32 [ %first_op_addr_num.1, %for.inc3650 ]
  %need_change.1.lcssa = phi i32 [ %need_change.1, %for.inc3650 ]
  br label %for.end3652

for.end3652:                                      ; preds = %for.end3652.loopexit, %for.cond3603.preheader
  %first_op_addr_num.0.lcssa = phi i32 [ -2, %for.cond3603.preheader ], [ %first_op_addr_num.1.lcssa, %for.end3652.loopexit ]
  %need_change.0.lcssa = phi i32 [ 0, %for.cond3603.preheader ], [ %need_change.1.lcssa, %for.end3652.loopexit ]
  %tobool3653.not = icmp ne i32 %need_change.0.lcssa, 0
  %591 = load i32, ptr @n_reloads, align 4
  %cmp36565909 = icmp sgt i32 %591, 0
  %or.cond5927 = select i1 %tobool3653.not, i1 %cmp36565909, i1 false
  br i1 %or.cond5927, label %for.body3658.preheader, label %if.end3739

for.body3658.preheader:                           ; preds = %for.end3652
  br label %for.body3658

for.body3658:                                     ; preds = %cleanup3732, %for.body3658.preheader
  %indvars.iv6143 = phi i64 [ 0, %for.body3658.preheader ], [ %indvars.iv.next6144, %cleanup3732 ]
  %592 = phi i32 [ %605, %cleanup3732 ], [ %591, %for.body3658.preheader ]
  %arrayidx3660 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %indvars.iv6143
  %when_needed3661 = getelementptr inbounds nuw i8, ptr %arrayidx3660, i64 92
  %593 = load i32, ptr %when_needed3661, align 4
  switch i32 %593, label %cleanup3732 [
    i32 8, label %sw.epilog3676
    i32 4, label %sw.bb3663
    i32 6, label %sw.bb3669
  ]

sw.bb3663:                                        ; preds = %for.body3658
  %opnum3666 = getelementptr inbounds nuw i8, ptr %arrayidx3660, i64 72
  %594 = load i32, ptr %opnum3666, align 8
  %idxprom3667 = sext i32 %594 to i64
  %arrayidx3668 = getelementptr inbounds i32, ptr %first_inpaddr_num, i64 %idxprom3667
  %595 = load i32, ptr %arrayidx3668, align 4
  br label %sw.epilog3676

sw.bb3669:                                        ; preds = %for.body3658
  %opnum3672 = getelementptr inbounds nuw i8, ptr %arrayidx3660, i64 72
  %596 = load i32, ptr %opnum3672, align 8
  %idxprom3673 = sext i32 %596 to i64
  %arrayidx3674 = getelementptr inbounds i32, ptr %first_outpaddr_num, i64 %idxprom3673
  %597 = load i32, ptr %arrayidx3674, align 4
  br label %sw.epilog3676

sw.epilog3676:                                    ; preds = %sw.bb3669, %sw.bb3663, %for.body3658
  %first_num.0 = phi i32 [ %595, %sw.bb3663 ], [ %597, %sw.bb3669 ], [ %first_op_addr_num.0.lcssa, %for.body3658 ]
  %type.0 = phi i32 [ 3, %sw.bb3663 ], [ 5, %sw.bb3669 ], [ 7, %for.body3658 ]
  %cmp3677 = icmp slt i32 %first_num.0, 0
  br i1 %cmp3677, label %cleanup3732, label %if.else3680

if.else3680:                                      ; preds = %sw.epilog3676
  %598 = sext i32 %first_num.0 to i64
  %cmp3681 = icmp sgt i64 %indvars.iv6143, %598
  br i1 %cmp3681, label %if.then3683, label %for.cond3689.preheader

for.cond3689.preheader:                           ; preds = %if.else3680
  %j.55906 = add nsw i32 %592, -1
  %cmp36905907 = icmp sgt i32 %j.55906, %first_num.0
  br i1 %cmp36905907, label %for.body3692.lr.ph, label %cleanup3732

for.body3692.lr.ph:                               ; preds = %for.cond3689.preheader
  %secondary_p3701 = getelementptr inbounds nuw i8, ptr %arrayidx3660, i64 96
  br label %for.body3692

if.then3683:                                      ; preds = %if.else3680
  store i32 %type.0, ptr %when_needed3661, align 4
  br label %cleanup3732

for.body3692:                                     ; preds = %for.inc3727, %for.body3692.lr.ph
  %j.55908 = phi i32 [ %j.55906, %for.body3692.lr.ph ], [ %j.5, %for.inc3727 ]
  %idxprom3693 = zext nneg i32 %j.55908 to i64
  %arrayidx3694 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %idxprom3693
  %when_needed3695 = getelementptr inbounds nuw i8, ptr %arrayidx3694, i64 92
  %599 = load i32, ptr %when_needed3695, align 4
  %cmp3696 = icmp eq i32 %599, %type.0
  br i1 %cmp3696, label %land.lhs.true3698, label %for.inc3727

land.lhs.true3698:                                ; preds = %for.body3692
  %bf.load3702 = load i8, ptr %secondary_p3701, align 8
  %600 = and i8 %bf.load3702, 4
  %tobool3706.not = icmp eq i8 %600, 0
  br i1 %tobool3706.not, label %cond.false3713, label %cond.true3707

cond.true3707:                                    ; preds = %land.lhs.true3698
  %secondary_in_reload3710 = getelementptr inbounds nuw i8, ptr %arrayidx3694, i64 76
  %601 = load i32, ptr %secondary_in_reload3710, align 4
  %602 = zext i32 %601 to i64
  %cmp3711 = icmp eq i64 %602, %indvars.iv6143
  br i1 %cmp3711, label %if.then3722, label %for.inc3727

cond.false3713:                                   ; preds = %land.lhs.true3698
  %603 = load ptr, ptr %arrayidx3660, align 8
  %604 = load ptr, ptr %arrayidx3694, align 8
  %call3720 = call i32 @reg_mentioned_p(ptr noundef %603, ptr noundef %604) #7
  %tobool3721.not = icmp eq i32 %call3720, 0
  br i1 %tobool3721.not, label %for.inc3727, label %if.then3722

if.then3722:                                      ; preds = %cond.false3713, %cond.true3707
  store i32 %type.0, ptr %when_needed3661, align 4
  br label %cleanup3732

for.inc3727:                                      ; preds = %cond.false3713, %cond.true3707, %for.body3692
  %j.5 = add nsw i32 %j.55908, -1
  %cmp3690 = icmp sgt i32 %j.5, %first_num.0
  br i1 %cmp3690, label %for.body3692, label %cleanup3732.loopexit, !llvm.loop !47

cleanup3732.loopexit:                             ; preds = %for.inc3727
  br label %cleanup3732

cleanup3732:                                      ; preds = %cleanup3732.loopexit, %if.then3722, %if.then3683, %for.cond3689.preheader, %sw.epilog3676, %for.body3658
  %indvars.iv.next6144 = add nuw nsw i64 %indvars.iv6143, 1
  %605 = load i32, ptr @n_reloads, align 4
  %606 = sext i32 %605 to i64
  %cmp3656 = icmp slt i64 %indvars.iv.next6144, %606
  br i1 %cmp3656, label %for.body3658, label %if.end3739.loopexit, !llvm.loop !48

if.end3739.loopexit:                              ; preds = %cleanup3732
  br label %if.end3739

if.end3739:                                       ; preds = %if.end3739.loopexit, %for.end3652
  call void @llvm.lifetime.end.p0(ptr nonnull %first_outpaddr_num) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %first_inpaddr_num) #7
  %607 = load i32, ptr @n_reloads, align 4
  %cmp37415915 = icmp sgt i32 %607, 0
  br i1 %cmp37415915, label %for.body3743.preheader, label %for.cond3923.preheader

for.body3743.preheader:                           ; preds = %if.end3739
  br label %for.body3743

for.cond3923.preheader.loopexit:                  ; preds = %for.inc3920
  br label %for.cond3923.preheader

for.cond3923.preheader:                           ; preds = %for.cond3923.preheader.loopexit, %if.end3739
  %608 = load i32, ptr @n_reloads, align 4
  %cmp39245918 = icmp sgt i32 %608, 0
  br i1 %cmp39245918, label %for.body3926.preheader, label %for.cond4011.preheader

for.body3926.preheader:                           ; preds = %for.cond3923.preheader
  br label %for.body3926

for.body3743:                                     ; preds = %for.inc3920, %for.body3743.preheader
  %indvars.iv6149 = phi i64 [ 0, %for.body3743.preheader ], [ %indvars.iv.next6150, %for.inc3920 ]
  %arrayidx3745 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %indvars.iv6149
  %609 = load ptr, ptr %arrayidx3745, align 8
  %cmp3747.not = icmp eq ptr %609, null
  br i1 %cmp3747.not, label %for.inc3920, label %land.lhs.true3749

land.lhs.true3749:                                ; preds = %for.body3743
  %out = getelementptr inbounds nuw i8, ptr %arrayidx3745, i64 8
  %610 = load ptr, ptr %out, align 8
  %cmp3752 = icmp eq ptr %610, null
  br i1 %cmp3752, label %land.lhs.true3754, label %for.inc3920

land.lhs.true3754:                                ; preds = %land.lhs.true3749
  %when_needed3757 = getelementptr inbounds nuw i8, ptr %arrayidx3745, i64 92
  %611 = load i32, ptr %when_needed3757, align 4
  switch i32 %611, label %for.inc3920 [
    i32 7, label %if.then3772
    i32 8, label %if.then3772
    i32 10, label %if.then3772
  ]

if.then3772:                                      ; preds = %land.lhs.true3754, %land.lhs.true3754, %land.lhs.true3754
  %612 = load i32, ptr @n_reloads, align 4
  %cmp37745912 = icmp sgt i32 %612, 0
  br i1 %cmp37745912, label %for.body3776.lr.ph, label %for.inc3920

for.body3776.lr.ph:                               ; preds = %if.then3772
  %rclass = getelementptr inbounds nuw i8, ptr %arrayidx3745, i64 16
  %nocombine = getelementptr inbounds nuw i8, ptr %arrayidx3745, i64 96
  %reg_rtx = getelementptr inbounds nuw i8, ptr %arrayidx3745, i64 64
  %opnum3893 = getelementptr inbounds nuw i8, ptr %arrayidx3745, i64 72
  br label %for.body3776

for.body3776:                                     ; preds = %for.inc3916, %for.body3776.lr.ph
  %indvars.iv6146 = phi i64 [ 0, %for.body3776.lr.ph ], [ %indvars.iv.next6147, %for.inc3916 ]
  %cmp3777.not = icmp eq i64 %indvars.iv6149, %indvars.iv6146
  br i1 %cmp3777.not, label %for.inc3916, label %land.lhs.true3779

land.lhs.true3779:                                ; preds = %for.body3776
  %arrayidx3781 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %indvars.iv6146
  %613 = load ptr, ptr %arrayidx3781, align 8
  %cmp3783.not = icmp eq ptr %613, null
  br i1 %cmp3783.not, label %for.inc3916, label %land.lhs.true3785

land.lhs.true3785:                                ; preds = %land.lhs.true3779
  %out3788 = getelementptr inbounds nuw i8, ptr %arrayidx3781, i64 8
  %614 = load ptr, ptr %out3788, align 8
  %cmp3789 = icmp eq ptr %614, null
  br i1 %cmp3789, label %land.lhs.true3791, label %for.inc3916

land.lhs.true3791:                                ; preds = %land.lhs.true3785
  %when_needed3794 = getelementptr inbounds nuw i8, ptr %arrayidx3781, i64 92
  %615 = load i32, ptr %when_needed3794, align 4
  %616 = load i32, ptr %when_needed3757, align 4
  %cmp3798 = icmp eq i32 %615, %616
  br i1 %cmp3798, label %land.lhs.true3800, label %for.inc3916

land.lhs.true3800:                                ; preds = %land.lhs.true3791
  %617 = load ptr, ptr %arrayidx3745, align 8
  %cmp3807 = icmp eq ptr %617, %613
  br i1 %cmp3807, label %land.lhs.true3857, label %lor.lhs.false3809

lor.lhs.false3809:                                ; preds = %land.lhs.true3800
  %cmp3813.not = icmp eq ptr %617, null
  br i1 %cmp3813.not, label %for.inc3916, label %land.lhs.true3815

land.lhs.true3815:                                ; preds = %lor.lhs.false3809
  %bf.load3819 = load i32, ptr %617, align 8
  %bf.clear3820 = and i32 %bf.load3819, 65535
  %cmp3821 = icmp eq i32 %bf.clear3820, 37
  br i1 %cmp3821, label %cond.true3823, label %cond.false3842

cond.true3823:                                    ; preds = %land.lhs.true3815
  %bf.load3827 = load i32, ptr %613, align 8
  %bf.clear3828 = and i32 %bf.load3827, 65535
  %cmp3829 = icmp eq i32 %bf.clear3828, 37
  br i1 %cmp3829, label %land.lhs.true3831, label %for.inc3916

land.lhs.true3831:                                ; preds = %cond.true3823
  %618 = getelementptr i8, ptr %617, i64 8
  %.val5362 = load i32, ptr %618, align 8
  %619 = getelementptr i8, ptr %613, i64 8
  %.val5361 = load i32, ptr %619, align 8
  %cmp3840 = icmp eq i32 %.val5362, %.val5361
  br i1 %cmp3840, label %land.lhs.true3857, label %for.inc3916

cond.false3842:                                   ; preds = %land.lhs.true3815
  %call3849 = call i32 @rtx_equal_p(ptr noundef nonnull %617, ptr noundef nonnull %613) #7
  %tobool3850.not = icmp eq i32 %call3849, 0
  br i1 %tobool3850.not, label %for.inc3916, label %land.lhs.true3851

land.lhs.true3851:                                ; preds = %cond.false3842
  %620 = load ptr, ptr %arrayidx3745, align 8
  %call3855 = call i32 @side_effects_p(ptr noundef %620) #7
  %tobool3856.not = icmp eq i32 %call3855, 0
  br i1 %tobool3856.not, label %land.lhs.true3857, label %for.inc3916

land.lhs.true3857:                                ; preds = %land.lhs.true3851, %land.lhs.true3831, %land.lhs.true3800
  %621 = load i32, ptr %rclass, align 8
  %rclass3862 = getelementptr inbounds nuw i8, ptr %arrayidx3781, i64 16
  %622 = load i32, ptr %rclass3862, align 8
  %cmp3863 = icmp eq i32 %621, %622
  br i1 %cmp3863, label %land.lhs.true3865, label %for.inc3916

land.lhs.true3865:                                ; preds = %land.lhs.true3857
  %bf.load3868 = load i8, ptr %nocombine, align 8
  %623 = and i8 %bf.load3868, 2
  %tobool3872.not = icmp eq i8 %623, 0
  br i1 %tobool3872.not, label %land.lhs.true3873, label %for.inc3916

land.lhs.true3873:                                ; preds = %land.lhs.true3865
  %nocombine3876 = getelementptr inbounds nuw i8, ptr %arrayidx3781, i64 96
  %bf.load3877 = load i8, ptr %nocombine3876, align 8
  %624 = and i8 %bf.load3877, 2
  %tobool3881.not = icmp eq i8 %624, 0
  br i1 %tobool3881.not, label %land.lhs.true3882, label %for.inc3916

land.lhs.true3882:                                ; preds = %land.lhs.true3873
  %625 = load ptr, ptr %reg_rtx, align 8
  %reg_rtx3887 = getelementptr inbounds nuw i8, ptr %arrayidx3781, i64 64
  %626 = load ptr, ptr %reg_rtx3887, align 8
  %cmp3888 = icmp eq ptr %625, %626
  br i1 %cmp3888, label %if.then3890, label %for.inc3916

if.then3890:                                      ; preds = %land.lhs.true3882
  %627 = load i32, ptr %opnum3893, align 8
  %opnum3896 = getelementptr inbounds nuw i8, ptr %arrayidx3781, i64 72
  %628 = load i32, ptr %opnum3896, align 8
  %. = call i32 @llvm.smin.i32(i32 %627, i32 %628)
  store i32 %., ptr %opnum3893, align 8
  %629 = load i32, ptr @n_replacements, align 4
  %cmp8.i5420 = icmp sgt i32 %629, 0
  br i1 %cmp8.i5420, label %for.body.preheader.i5422, label %transfer_replacements.exit

for.body.preheader.i5422:                         ; preds = %if.then3890
  %wide.trip.count.i5423 = zext nneg i32 %629 to i64
  br label %for.body.i5424

for.body.i5424:                                   ; preds = %for.inc.i5429, %for.body.preheader.i5422
  %indvars.iv.i5425 = phi i64 [ 0, %for.body.preheader.i5422 ], [ %indvars.iv.next.i5430, %for.inc.i5429 ]
  %arrayidx.i5426 = getelementptr inbounds nuw %struct.replacement, ptr @replacements, i64 %indvars.iv.i5425
  %what.i5427 = getelementptr inbounds nuw i8, ptr %arrayidx.i5426, i64 16
  %630 = load i32, ptr %what.i5427, align 8
  %631 = zext i32 %630 to i64
  %cmp1.i5428 = icmp eq i64 %631, %indvars.iv6146
  br i1 %cmp1.i5428, label %if.then.i5432, label %for.inc.i5429

if.then.i5432:                                    ; preds = %for.body.i5424
  %632 = trunc nuw nsw i64 %indvars.iv6149 to i32
  store i32 %632, ptr %what.i5427, align 8
  br label %for.inc.i5429

for.inc.i5429:                                    ; preds = %if.then.i5432, %for.body.i5424
  %indvars.iv.next.i5430 = add nuw nsw i64 %indvars.iv.i5425, 1
  %exitcond.not.i5431 = icmp eq i64 %indvars.iv.next.i5430, %wide.trip.count.i5423
  br i1 %exitcond.not.i5431, label %transfer_replacements.exit.loopexit, label %for.body.i5424, !llvm.loop !49

transfer_replacements.exit.loopexit:              ; preds = %for.inc.i5429
  br label %transfer_replacements.exit

transfer_replacements.exit:                       ; preds = %transfer_replacements.exit.loopexit, %if.then3890
  store ptr null, ptr %arrayidx3781, align 8
  br label %for.inc3916

for.inc3916:                                      ; preds = %transfer_replacements.exit, %land.lhs.true3882, %land.lhs.true3873, %land.lhs.true3865, %land.lhs.true3857, %land.lhs.true3851, %cond.false3842, %land.lhs.true3831, %cond.true3823, %lor.lhs.false3809, %land.lhs.true3791, %land.lhs.true3785, %land.lhs.true3779, %for.body3776
  %indvars.iv.next6147 = add nuw nsw i64 %indvars.iv6146, 1
  %633 = load i32, ptr @n_reloads, align 4
  %634 = sext i32 %633 to i64
  %cmp3774 = icmp slt i64 %indvars.iv.next6147, %634
  br i1 %cmp3774, label %for.body3776, label %for.inc3920.loopexit, !llvm.loop !50

for.inc3920.loopexit:                             ; preds = %for.inc3916
  br label %for.inc3920

for.inc3920:                                      ; preds = %for.inc3920.loopexit, %if.then3772, %land.lhs.true3754, %land.lhs.true3749, %for.body3743
  %indvars.iv.next6150 = add nuw nsw i64 %indvars.iv6149, 1
  %635 = load i32, ptr @n_reloads, align 4
  %636 = sext i32 %635 to i64
  %cmp3741 = icmp slt i64 %indvars.iv.next6150, %636
  br i1 %cmp3741, label %for.body3743, label %for.cond3923.preheader.loopexit, !llvm.loop !51

for.cond4011.preheader.loopexit:                  ; preds = %cond.end4004
  br label %for.cond4011.preheader

for.cond4011.preheader:                           ; preds = %for.cond4011.preheader.loopexit, %for.cond3923.preheader
  %637 = load i32, ptr @n_reloads, align 4
  %cmp40125924 = icmp sgt i32 %637, 0
  br i1 %cmp40125924, label %for.body4014.preheader, label %cleanup4125

for.body4014.preheader:                           ; preds = %for.cond4011.preheader
  br label %for.body4014

for.body3926:                                     ; preds = %cond.end4004, %for.body3926.preheader
  %indvars.iv6152 = phi i64 [ 0, %for.body3926.preheader ], [ %indvars.iv.next6153, %cond.end4004 ]
  %arrayidx3928 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %indvars.iv6152
  %inmode = getelementptr inbounds nuw i8, ptr %arrayidx3928, i64 20
  %638 = load i32, ptr %inmode, align 4
  %cmp3929 = icmp eq i32 %638, 0
  br i1 %cmp3929, label %cond.true3947, label %lor.lhs.false3931

lor.lhs.false3931:                                ; preds = %for.body3926
  %outmode = getelementptr inbounds nuw i8, ptr %arrayidx3928, i64 24
  %639 = load i32, ptr %outmode, align 8
  %idxprom3934 = zext i32 %639 to i64
  %arrayidx3935 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom3934
  %640 = load i8, ptr %arrayidx3935, align 1
  %idxprom3941 = zext i32 %638 to i64
  %arrayidx3942 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom3941
  %641 = load i8, ptr %arrayidx3942, align 1
  %cmp3945 = icmp ugt i8 %640, %641
  br i1 %cmp3945, label %cond.true3947, label %cond.end3955

cond.true3947:                                    ; preds = %lor.lhs.false3931, %for.body3926
  %outmode3950 = getelementptr inbounds nuw i8, ptr %arrayidx3928, i64 24
  %642 = load i32, ptr %outmode3950, align 8
  br label %cond.end3955

cond.end3955:                                     ; preds = %cond.true3947, %lor.lhs.false3931
  %cond3956 = phi i32 [ %642, %cond.true3947 ], [ %638, %lor.lhs.false3931 ]
  %mode3959 = getelementptr inbounds nuw i8, ptr %arrayidx3928, i64 28
  store i32 %cond3956, ptr %mode3959, align 4
  %rclass3962 = getelementptr inbounds nuw i8, ptr %arrayidx3928, i64 16
  %643 = load i32, ptr %rclass3962, align 8
  %call3963 = call i32 @reg_classes_intersect_p(i32 noundef %643, i32 noundef 13) #7
  %tobool3964.not = icmp eq i32 %call3963, 0
  br i1 %tobool3964.not, label %cond.true3965, label %cond.false3985

cond.true3965:                                    ; preds = %cond.end3955
  %644 = load i32, ptr %mode3959, align 4
  %idxprom3969 = zext i32 %644 to i64
  %arrayidx3970 = getelementptr inbounds nuw i8, ptr @mode_class, i64 %idxprom3969
  %645 = load i8, ptr %arrayidx3970, align 1
  %646 = and i8 %645, -2
  %647 = icmp eq i8 %646, 10
  %cond3984 = select i1 %647, i32 2, i32 1
  br label %cond.end4004

cond.false3985:                                   ; preds = %cond.end3955
  %648 = load i32, ptr %mode3959, align 4
  %cmp3989 = icmp eq i32 %648, 40
  br i1 %cmp3989, label %cond.end4004, label %cond.false3992

cond.false3992:                                   ; preds = %cond.false3985
  %idxprom3996 = zext i32 %648 to i64
  %arrayidx3997 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom3996
  %649 = load i8, ptr %arrayidx3997, align 1
  %conv3999 = zext i8 %649 to i32
  %650 = add nuw nsw i32 %conv3999, 3
  %651 = lshr i32 %650, 2
  br label %cond.end4004

cond.end4004:                                     ; preds = %cond.false3992, %cond.false3985, %cond.true3965
  %cond4005 = phi i32 [ %cond3984, %cond.true3965 ], [ %651, %cond.false3992 ], [ 3, %cond.false3985 ]
  %nregs = getelementptr inbounds nuw i8, ptr %arrayidx3928, i64 32
  store i32 %cond4005, ptr %nregs, align 8
  %indvars.iv.next6153 = add nuw nsw i64 %indvars.iv6152, 1
  %652 = load i32, ptr @n_reloads, align 4
  %653 = sext i32 %652 to i64
  %cmp3924 = icmp slt i64 %indvars.iv.next6153, %653
  br i1 %cmp3924, label %for.body3926, label %for.cond4011.preheader.loopexit, !llvm.loop !52

for.body4014:                                     ; preds = %for.inc4122, %for.body4014.preheader
  %indvars.iv6161 = phi i64 [ 0, %for.body4014.preheader ], [ %indvars.iv.next6162, %for.inc4122 ]
  %arrayidx4016 = getelementptr inbounds nuw %struct.reload, ptr @rld, i64 %indvars.iv6161
  %when_needed4017 = getelementptr inbounds nuw i8, ptr %arrayidx4016, i64 92
  %654 = load i32, ptr %when_needed4017, align 4
  %cmp4018 = icmp eq i32 %654, 0
  br i1 %cmp4018, label %land.lhs.true4020, label %for.inc4122

land.lhs.true4020:                                ; preds = %for.body4014
  %655 = load ptr, ptr %arrayidx, align 8
  %bf.load4023 = load i32, ptr %655, align 8
  %bf.clear4024 = and i32 %bf.load4023, 65535
  %cmp4025 = icmp eq i32 %bf.clear4024, 23
  br i1 %cmp4025, label %land.lhs.true4027, label %for.inc4122

land.lhs.true4027:                                ; preds = %land.lhs.true4020
  %u4030 = getelementptr inbounds nuw i8, ptr %655, i64 8
  %656 = load ptr, ptr %u4030, align 8
  %bf.load4032 = load i32, ptr %656, align 8
  %bf.clear4033 = and i32 %bf.load4032, 65535
  %cmp4034 = icmp eq i32 %bf.clear4033, 37
  br i1 %cmp4034, label %land.lhs.true4036, label %for.inc4122

land.lhs.true4036:                                ; preds = %land.lhs.true4027
  %arrayidx4040 = getelementptr inbounds nuw i8, ptr %655, i64 16
  %657 = load ptr, ptr %arrayidx4040, align 8
  %658 = load ptr, ptr %arrayidx4016, align 8
  %cmp4044 = icmp eq ptr %657, %658
  br i1 %cmp4044, label %land.lhs.true4055, label %lor.lhs.false4046

lor.lhs.false4046:                                ; preds = %land.lhs.true4036
  %in_reg = getelementptr inbounds nuw i8, ptr %arrayidx4016, i64 40
  %659 = load ptr, ptr %in_reg, align 8
  %cmp4053 = icmp eq ptr %657, %659
  br i1 %cmp4053, label %land.lhs.true4055, label %for.inc4122

land.lhs.true4055:                                ; preds = %lor.lhs.false4046, %land.lhs.true4036
  %call4060 = call zeroext i8 @elimination_target_reg_p(ptr noundef nonnull %656) #7
  %tobool4061.not = icmp eq i8 %call4060, 0
  br i1 %tobool4061.not, label %if.then4062, label %for.inc4122

if.then4062:                                      ; preds = %land.lhs.true4055
  %660 = load ptr, ptr %arrayidx, align 8
  %u4065 = getelementptr inbounds nuw i8, ptr %660, i64 8
  %661 = load ptr, ptr %u4065, align 8
  %662 = getelementptr i8, ptr %661, i64 8
  %.val = load i32, ptr %662, align 8
  %cmp4069 = icmp ult i32 %.val, 53
  br i1 %cmp4069, label %land.lhs.true4071, label %for.inc4122

land.lhs.true4071:                                ; preds = %if.then4062
  %rclass4074 = getelementptr inbounds nuw i8, ptr %arrayidx4016, i64 16
  %663 = load i32, ptr %rclass4074, align 8
  %idxprom4075 = zext i32 %663 to i64
  %arrayidx4076 = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %idxprom4075
  %664 = load i64, ptr %arrayidx4076, align 8
  %sh_prom = zext nneg i32 %.val to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %and4077 = and i64 %664, %shl
  %tobool4078.not = icmp eq i64 %and4077, 0
  br i1 %tobool4078.not, label %for.inc4122, label %land.lhs.true4079

land.lhs.true4079:                                ; preds = %land.lhs.true4071
  %mode4082 = getelementptr inbounds nuw i8, ptr %arrayidx4016, i64 28
  %665 = load i32, ptr %mode4082, align 4
  %call4083 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %.val, i32 noundef %665) #7
  %tobool4085.not = icmp eq i8 %call4083, 0
  br i1 %tobool4085.not, label %for.inc4122, label %if.then4086

if.then4086:                                      ; preds = %land.lhs.true4079
  %arrayidx4088 = getelementptr inbounds nuw [87 x i8], ptr @hard_regno_nregs, i64 %sh_prom
  %666 = load i32, ptr %mode4082, align 4
  %idxprom4092 = zext i32 %666 to i64
  %arrayidx4093 = getelementptr inbounds nuw i8, ptr %arrayidx4088, i64 %idxprom4092
  %667 = load i8, ptr %arrayidx4093, align 1
  %conv4094 = zext i8 %667 to i32
  %cmp40965920 = icmp ugt i8 %667, 1
  br i1 %cmp40965920, label %for.body4098.lr.ph, label %for.end4113

for.body4098.lr.ph:                               ; preds = %if.then4086
  %668 = load i32, ptr %rclass4074, align 8
  %idxprom4102 = zext i32 %668 to i64
  %arrayidx4103 = getelementptr inbounds nuw i64, ptr @reg_class_contents, i64 %idxprom4102
  %669 = load i64, ptr %arrayidx4103, align 8
  %670 = zext i32 %.val to i64
  %wide.trip.count6159 = zext i32 %conv4094 to i64
  br label %for.body4098

for.body4098:                                     ; preds = %for.body4098, %for.body4098.lr.ph
  %indvars.iv6155 = phi i64 [ 1, %for.body4098.lr.ph ], [ %indvars.iv.next6156, %for.body4098 ]
  %ok.05921 = phi i32 [ 1, %for.body4098.lr.ph ], [ %spec.select5343, %for.body4098 ]
  %671 = add nuw nsw i64 %indvars.iv6155, %670
  %shl4106 = shl nuw i64 1, %671
  %and4107 = and i64 %669, %shl4106
  %tobool4108.not = icmp eq i64 %and4107, 0
  %spec.select5343 = select i1 %tobool4108.not, i32 0, i32 %ok.05921
  %indvars.iv.next6156 = add nuw nsw i64 %indvars.iv6155, 1
  %exitcond6160 = icmp ne i64 %indvars.iv.next6156, %wide.trip.count6159
  br i1 %exitcond6160, label %for.body4098, label %for.end4113.loopexit, !llvm.loop !53

for.end4113.loopexit:                             ; preds = %for.body4098
  %spec.select5343.lcssa = phi i32 [ %spec.select5343, %for.body4098 ]
  br label %for.end4113

for.end4113:                                      ; preds = %for.end4113.loopexit, %if.then4086
  %ok.0.lcssa = phi i32 [ 1, %if.then4086 ], [ %spec.select5343.lcssa, %for.end4113.loopexit ]
  %tobool4114.not = icmp eq i32 %ok.0.lcssa, 0
  br i1 %tobool4114.not, label %for.inc4122, label %if.then4115

if.then4115:                                      ; preds = %for.end4113
  %reg_rtx4118 = getelementptr inbounds nuw i8, ptr %arrayidx4016, i64 64
  store ptr %661, ptr %reg_rtx4118, align 8
  br label %for.inc4122

for.inc4122:                                      ; preds = %if.then4115, %for.end4113, %land.lhs.true4079, %land.lhs.true4071, %if.then4062, %land.lhs.true4055, %lor.lhs.false4046, %land.lhs.true4027, %land.lhs.true4020, %for.body4014
  %indvars.iv.next6162 = add nuw nsw i64 %indvars.iv6161, 1
  %672 = load i32, ptr @n_reloads, align 4
  %673 = sext i32 %672 to i64
  %cmp4012 = icmp slt i64 %indvars.iv.next6162, %673
  br i1 %cmp4012, label %for.body4014, label %cleanup4125.loopexit, !llvm.loop !54

cleanup4125.loopexit:                             ; preds = %for.inc4122
  br label %cleanup4125

cleanup4125:                                      ; preds = %cleanup4125.loopexit, %for.cond4011.preheader, %cond.end2773, %if.end2208, %cleanup, %if.end82, %land.lhs.true64
  %retval.2 = phi i32 [ %call303, %cleanup ], [ 0, %cond.end2773 ], [ 0, %if.end2208 ], [ 0, %land.lhs.true64 ], [ 0, %if.end82 ], [ %retval25.2.lcssa, %for.cond4011.preheader ], [ %retval25.2.lcssa, %cleanup4125.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %operand_mode) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %substed_operand) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %operands_match) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %goal_alternative_earlyclobber) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %goal_alternative_offmemok) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %goal_alternative_win) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %goal_alternative_match_win) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %goal_alternative_matched) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %goal_alternative_matches) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %operand_reloadnum) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %goal_alternative) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %this_alternative_matches) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %this_alternative_earlyclobber) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %this_alternative_offmemok) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %this_alternative_win) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %this_alternative_match_win) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %this_alternative) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %modified) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %address_type) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %operand_type) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %address_operand_reloaded) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %address_reloaded) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %pref_or_nothing) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %preferred_class) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %constraints) #7
  ret i32 %retval.2
}

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ix86_register_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @extract_insn(ptr noundef) local_unnamed_addr #1

declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden fastcc ptr @find_reloads_toplev(ptr noundef, i32 noundef range(i32 -2147483648, 127), i32 noundef, i32 noundef, i32 noundef range(i32 0, 2), ptr noundef, ptr noundef nonnull writeonly captures(none)) unnamed_addr #2

declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #1

declare i32 @reg_alternate_class(i32 noundef) local_unnamed_addr #1

declare i32 @simplify_subreg_regno(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @offsettable_memref_p(ptr noundef) local_unnamed_addr #1

declare i32 @offsettable_nonstrict_memref_p(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @constraint_satisfied_p(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @legitimate_pic_operand_p(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @reg_fits_class_p(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_fatal_insn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gen_clobber(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @label_is_jump_target_p(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #1

declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @elimination_target_reg_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!42 = distinct !{!42, !1}
!43 = distinct !{!43, !1}
!44 = distinct !{!44, !1}
!45 = distinct !{!45, !1}
!46 = distinct !{!46, !1}
!47 = distinct !{!47, !1}
!48 = distinct !{!48, !1}
!49 = distinct !{!49, !1}
!50 = distinct !{!50, !1}
!51 = distinct !{!51, !1}
!52 = distinct !{!52, !1}
!53 = distinct !{!53, !1}
!54 = distinct !{!54, !1}
