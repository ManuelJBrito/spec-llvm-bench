; ModuleID = '/tmp/tmp.DymYTujH9s/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/tree-cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }

@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = external hidden unnamed_addr constant [116 x i8], align 1
@.str.2 = external hidden unnamed_addr constant [2 x i8], align 1
@cfgcleanup_altered_bbs = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.64 = external hidden unnamed_addr constant [114 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.65 = external hidden unnamed_addr constant [124 x i8], align 1
@.str.147 = external hidden unnamed_addr constant [119 x i8], align 1
@.str.178 = external hidden unnamed_addr constant [26 x i8], align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local void @replace_uses_by(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare zeroext i8 @stmt_can_throw_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @get_eh_landing_pad_from_number(i32 noundef) local_unnamed_addr #1

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @gimple_merge_blocks(ptr noundef %a, ptr noundef %b) #2 {
entry:
  %last = alloca %struct.gimple_stmt_iterator, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %psi = alloca %struct.gimple_stmt_iterator, align 8
  %iter = alloca %struct.immediate_use_iterator_d, align 8
  %dest_gsi = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %last) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %gsi) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %psi) #7
  %flags.i = getelementptr inbounds nuw i8, ptr %b, i64 96
  %0 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %0, 512
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 510, ptr noundef nonnull @.str.2) #7
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry
  %il.i = getelementptr inbounds nuw i8, ptr %b, i64 64
  %1 = load ptr, ptr %il.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %phi_nodes.exit, label %if.end.i

if.end.i:                                         ; preds = %cond.end.i
  %phi_nodes.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2 = load ptr, ptr %phi_nodes.i, align 8
  br label %phi_nodes.exit

phi_nodes.exit:                                   ; preds = %if.end.i, %cond.end.i
  %retval.0.i = phi ptr [ %2, %if.end.i ], [ null, %cond.end.i ]
  %3 = load ptr, ptr @dump_file, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %phi_nodes.exit
  %index = getelementptr inbounds nuw i8, ptr %a, i64 80
  %4 = load i32, ptr %index, align 8
  %index1 = getelementptr inbounds nuw i8, ptr %b, i64 80
  %5 = load i32, ptr %index1, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.178, i32 noundef %4, i32 noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %phi_nodes.exit
  %flags.i.i = getelementptr inbounds nuw i8, ptr %a, i64 96
  %6 = load i32, ptr %flags.i.i, align 8, !noalias !0
  %and.i.i = and i32 %6, 512
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %gsi_last_bb.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %il.i.i = getelementptr inbounds nuw i8, ptr %a, i64 64
  %7 = load ptr, ptr %il.i.i, align 8, !noalias !0
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %gsi_last_bb.exit, label %bb_seq.exit.i

bb_seq.exit.i:                                    ; preds = %land.lhs.true.i.i
  %8 = load ptr, ptr %7, align 8, !noalias !0
  %tobool.not.i6.i = icmp eq ptr %8, null
  br i1 %tobool.not.i6.i, label %gsi_last_bb.exit, label %cond.true.i7.i

cond.true.i7.i:                                   ; preds = %bb_seq.exit.i
  %last.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %9 = load ptr, ptr %last.i.i, align 8, !noalias !0
  br label %gsi_last_bb.exit

gsi_last_bb.exit:                                 ; preds = %cond.true.i7.i, %bb_seq.exit.i, %land.lhs.true.i.i, %if.end
  %cond.i11.i = phi ptr [ %8, %cond.true.i7.i ], [ null, %bb_seq.exit.i ], [ null, %land.lhs.true.i.i ], [ null, %if.end ]
  %cond.i8.i = phi ptr [ %9, %cond.true.i7.i ], [ null, %bb_seq.exit.i ], [ null, %land.lhs.true.i.i ], [ null, %if.end ]
  store ptr %cond.i8.i, ptr %gsi, align 8
  %tmp.sroa.4.0.gsi.sroa_idx = getelementptr inbounds nuw i8, ptr %gsi, i64 8
  store ptr %cond.i11.i, ptr %tmp.sroa.4.0.gsi.sroa_idx, align 8
  %tmp.sroa.5.0.gsi.sroa_idx = getelementptr inbounds nuw i8, ptr %gsi, i64 16
  store ptr %a, ptr %tmp.sroa.5.0.gsi.sroa_idx, align 8
  %tobool.not.i.i157 = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not.i.i157, label %gsi_start.exit, label %gimple_seq_first.exit.i

gimple_seq_first.exit.i:                          ; preds = %gsi_last_bb.exit
  %10 = load ptr, ptr %retval.0.i, align 8, !noalias !3
  %tobool.not.i158 = icmp eq ptr %10, null
  br i1 %tobool.not.i158, label %gsi_start.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %gimple_seq_first.exit.i
  %11 = load ptr, ptr %10, align 8, !noalias !3
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %gsi_start.exit, label %cond.true.i159

cond.true.i159:                                   ; preds = %land.lhs.true.i
  %12 = getelementptr i8, ptr %11, i64 16
  %.val.i = load ptr, ptr %12, align 8, !noalias !3
  br label %gsi_start.exit

gsi_start.exit:                                   ; preds = %cond.true.i159, %land.lhs.true.i, %gimple_seq_first.exit.i, %gsi_last_bb.exit
  %tmp3.sroa.0.0 = phi ptr [ null, %gimple_seq_first.exit.i ], [ %10, %land.lhs.true.i ], [ %10, %cond.true.i159 ], [ null, %gsi_last_bb.exit ]
  %cond.i = phi ptr [ null, %gimple_seq_first.exit.i ], [ null, %land.lhs.true.i ], [ %.val.i, %cond.true.i159 ], [ null, %gsi_last_bb.exit ]
  store ptr %tmp3.sroa.0.0, ptr %psi, align 8
  %tmp3.sroa.5.0.psi.sroa_idx = getelementptr inbounds nuw i8, ptr %psi, i64 8
  store ptr %retval.0.i, ptr %tmp3.sroa.5.0.psi.sroa_idx, align 8
  %tmp3.sroa.6.0.psi.sroa_idx = getelementptr inbounds nuw i8, ptr %psi, i64 16
  store ptr %cond.i, ptr %tmp3.sroa.6.0.psi.sroa_idx, align 8
  %cmp.i.not288 = icmp eq ptr %tmp3.sroa.0.0, null
  br i1 %cmp.i.not288, label %for.end65, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %gsi_start.exit
  %loop_father = getelementptr inbounds nuw i8, ptr %a, i64 24
  %loop_father25 = getelementptr inbounds nuw i8, ptr %b, i64 24
  %end_p.i = getelementptr inbounds nuw i8, ptr %iter, i64 8
  %iter_node.i = getelementptr inbounds nuw i8, ptr %iter, i64 16
  %next_imm_name.i = getelementptr inbounds nuw i8, ptr %iter, i64 48
  %next.i176 = getelementptr inbounds nuw i8, ptr %iter, i64 24
  br label %for.body

for.body:                                         ; preds = %if.end64, %for.body.lr.ph
  %psi.val289 = phi ptr [ %tmp3.sroa.0.0, %for.body.lr.ph ], [ %psi.val, %if.end64 ]
  %psi.val155.val = load ptr, ptr %psi.val289, align 8
  %13 = getelementptr i8, ptr %psi.val155.val, i64 40
  %call6.val = load ptr, ptr %13, align 8
  %14 = getelementptr i8, ptr %psi.val155.val, i64 72
  %call.val.i = load ptr, ptr %14, align 8
  %call.val.val.i = load ptr, ptr %call.val.i, align 8
  %call.val.val.i.fr = freeze ptr %call.val.val.i
  %call9 = call zeroext i8 @is_gimple_reg(ptr noundef %call6.val) #7
  %tobool10.not = icmp eq i8 %call9, 0
  br i1 %tobool10.not, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %call11 = call zeroext i8 @may_propagate_copy(ptr noundef %call6.val, ptr noundef %call.val.val.i.fr) #7
  %tobool12.not = icmp eq i8 %call11, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %conv13 = phi i1 [ false, %for.body ], [ %tobool12.not, %lor.rhs ]
  %15 = load ptr, ptr @cfun, align 8
  %x_current_loops = getelementptr inbounds nuw i8, ptr %15, i64 32
  %16 = load ptr, ptr %x_current_loops, align 8
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %if.end29, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.end
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 32
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %if.end29, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true
  %call19 = call zeroext i8 @is_gimple_reg(ptr noundef %call6.val) #7
  %tobool21.not = icmp eq i8 %call19, 0
  br i1 %tobool21.not, label %if.end29, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %bf.load = load i64, ptr %call.val.val.i.fr, align 8
  %bf.cast153 = and i64 %bf.load, 65535
  %cmp = icmp eq i64 %bf.cast153, 141
  br i1 %cmp, label %land.lhs.true24, label %if.end29

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %19 = load ptr, ptr %loop_father, align 8
  %20 = load ptr, ptr %loop_father25, align 8
  %cmp26.not = icmp ne ptr %19, %20
  %or.cond = select i1 %cmp26.not, i1 true, i1 %conv13
  br i1 %or.cond, label %if.then31, label %if.else

if.end29:                                         ; preds = %land.lhs.true22, %land.lhs.true18, %land.lhs.true, %lor.end
  br i1 %conv13, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29, %land.lhs.true24
  %call32 = call zeroext i8 @is_gimple_reg(ptr noundef %call6.val) #7
  %tobool33.not = icmp eq i8 %call32, 0
  br i1 %tobool33.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then31
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1596, ptr noundef nonnull @.str.2) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then31
  %call34 = call ptr @gimple_build_assign_stat(ptr noundef %call6.val, ptr noundef %call.val.val.i.fr) #7
  call void @gsi_insert_after(ptr noundef nonnull %gsi, ptr noundef %call34, i32 noundef 0) #7
  call void @remove_phi_node(ptr noundef nonnull %psi, i8 noundef zeroext 0) #7
  br label %if.end64

if.else:                                          ; preds = %if.end29, %land.lhs.true24
  %call35 = call zeroext i8 @is_gimple_reg(ptr noundef %call6.val) #7
  %tobool36.not = icmp eq i8 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.else62

if.then37:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(ptr nonnull %iter) #7
  %imm_uses.i = getelementptr inbounds nuw i8, ptr %call6.val, i64 56
  store ptr %imm_uses.i, ptr %end_p.i, align 8
  %next.i = getelementptr inbounds nuw i8, ptr %call6.val, i64 64
  %21 = load ptr, ptr %next.i, align 8
  store ptr %21, ptr %iter, align 8
  %cmp.i.not.i = icmp eq ptr %21, %imm_uses.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %iter_node.i, i8 0, i64 40, i1 false)
  br i1 %cmp.i.not.i, label %first_imm_use_stmt.exit, label %if.end.i162

if.end.i162:                                      ; preds = %if.then37
  call fastcc void @link_use_stmts_after(ptr noundef %21, ptr noundef nonnull %iter)
  br label %first_imm_use_stmt.exit

first_imm_use_stmt.exit:                          ; preds = %if.end.i162, %if.then37
  %iter.val283 = load ptr, ptr %iter, align 8
  %iter.val156284 = load ptr, ptr %end_p.i, align 8
  %cmp.i164.not285 = icmp eq ptr %iter.val283, %iter.val156284
  br i1 %cmp.i164.not285, label %for.end53, label %for.body43.lr.ph

for.body43.lr.ph:                                 ; preds = %first_imm_use_stmt.exit
  %tobool.not.i.i170 = icmp eq ptr %call.val.val.i.fr, null
  %imm_uses.i.i = getelementptr inbounds nuw i8, ptr %call.val.val.i.fr, i64 56
  %next.i.i.i = getelementptr inbounds nuw i8, ptr %call.val.val.i.fr, i64 64
  br i1 %tobool.not.i.i170, label %for.body43.us.preheader, label %for.body43.preheader

for.body43.preheader:                             ; preds = %for.body43.lr.ph
  br label %for.body43

for.body43.us.preheader:                          ; preds = %for.body43.lr.ph
  br label %for.body43.us

for.body43.us:                                    ; preds = %next_imm_use_stmt.exit.us, %for.body43.us.preheader
  %iter.val286.us = phi ptr [ %iter.val.us, %next_imm_use_stmt.exit.us ], [ %iter.val283, %for.body43.us.preheader ]
  %next.i166.us = getelementptr inbounds nuw i8, ptr %iter.val286.us, i64 8
  %22 = load ptr, ptr %next.i166.us, align 8
  store ptr %22, ptr %next_imm_name.i, align 8
  %23 = load ptr, ptr %iter, align 8
  %cmp.i168.not281.us = icmp eq ptr %23, %iter_node.i
  br i1 %cmp.i168.not281.us, label %for.inc51.us, label %for.body49.us.us.preheader

for.body49.us.us.preheader:                       ; preds = %for.body43.us
  br label %for.body49.us.us

for.inc51.us.loopexit:                            ; preds = %next_imm_use_on_stmt.exit.us.us
  br label %for.inc51.us

for.inc51.us:                                     ; preds = %for.inc51.us.loopexit, %for.body43.us
  %24 = load ptr, ptr %next.i176, align 8
  store ptr %24, ptr %iter, align 8
  %imm.val14.i.us = load ptr, ptr %end_p.i, align 8
  %cmp.i.not.i177.us = icmp eq ptr %24, %imm.val14.i.us
  br i1 %cmp.i.not.i177.us, label %if.then.i.us, label %if.end4.i.us

if.end4.i.us:                                     ; preds = %for.inc51.us
  call fastcc void @link_use_stmts_after(ptr noundef %24, ptr noundef nonnull %iter)
  br label %next_imm_use_stmt.exit.us

if.then.i.us:                                     ; preds = %for.inc51.us
  %25 = load ptr, ptr %iter_node.i, align 8
  %cmp.not.i.us = icmp eq ptr %25, null
  br i1 %cmp.not.i.us, label %next_imm_use_stmt.exit.us, label %delink_imm_use.exit.i179.us

delink_imm_use.exit.i179.us:                      ; preds = %if.then.i.us
  %next2.i.i180.us = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %24, ptr %next2.i.i180.us, align 8
  %26 = load ptr, ptr %iter_node.i, align 8
  %27 = load ptr, ptr %next.i176, align 8
  store ptr %26, ptr %27, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %iter_node.i, i8 0, i64 16, i1 false)
  br label %next_imm_use_stmt.exit.us

next_imm_use_stmt.exit.us:                        ; preds = %delink_imm_use.exit.i179.us, %if.then.i.us, %if.end4.i.us
  %iter.val.us = load ptr, ptr %iter, align 8
  %iter.val156.us = load ptr, ptr %end_p.i, align 8
  %cmp.i164.not.us = icmp eq ptr %iter.val.us, %iter.val156.us
  br i1 %cmp.i164.not.us, label %for.end53.loopexit, label %for.body43.us, !llvm.loop !6

for.body49.us.us:                                 ; preds = %next_imm_use_on_stmt.exit.us.us, %for.body49.us.us.preheader
  %use_p.0282.us.us = phi ptr [ %retval.0.i174.us.us, %next_imm_use_on_stmt.exit.us.us ], [ %iter.val286.us, %for.body49.us.us.preheader ]
  %28 = load ptr, ptr %use_p.0282.us.us, align 8
  %cmp.i.i.us.us = icmp eq ptr %28, null
  br i1 %cmp.i.i.us.us, label %delink_imm_use.exit.i.us.us, label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %for.body49.us.us
  %next.i.i.us.us = getelementptr inbounds nuw i8, ptr %use_p.0282.us.us, i64 8
  %29 = load ptr, ptr %next.i.i.us.us, align 8
  %next2.i.i.us.us = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %29, ptr %next2.i.i.us.us, align 8
  %30 = load ptr, ptr %use_p.0282.us.us, align 8
  %31 = load ptr, ptr %next.i.i.us.us, align 8
  store ptr %30, ptr %31, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %use_p.0282.us.us, i8 0, i64 16, i1 false)
  br label %delink_imm_use.exit.i.us.us

delink_imm_use.exit.i.us.us:                      ; preds = %if.end.i.i.us.us, %for.body49.us.us
  %use1.i.us.us = getelementptr inbounds nuw i8, ptr %use_p.0282.us.us, i64 24
  %32 = load ptr, ptr %use1.i.us.us, align 8
  store ptr %call.val.val.i.fr, ptr %32, align 8
  store ptr null, ptr %use_p.0282.us.us, align 8
  %33 = load ptr, ptr %next_imm_name.i, align 8
  store ptr %33, ptr %iter, align 8
  %cmp.i.not.i172.us.us = icmp eq ptr %33, %iter_node.i
  br i1 %cmp.i.not.i172.us.us, label %next_imm_use_on_stmt.exit.us.us, label %if.else.i.us.us

if.else.i.us.us:                                  ; preds = %delink_imm_use.exit.i.us.us
  %next.i173.us.us = getelementptr inbounds nuw i8, ptr %33, i64 8
  %34 = load ptr, ptr %next.i173.us.us, align 8
  store ptr %34, ptr %next_imm_name.i, align 8
  br label %next_imm_use_on_stmt.exit.us.us

next_imm_use_on_stmt.exit.us.us:                  ; preds = %if.else.i.us.us, %delink_imm_use.exit.i.us.us
  %retval.0.i174.us.us = phi ptr [ %33, %if.else.i.us.us ], [ null, %delink_imm_use.exit.i.us.us ]
  %35 = load ptr, ptr %iter, align 8
  %cmp.i168.not.us.us = icmp eq ptr %35, %iter_node.i
  br i1 %cmp.i168.not.us.us, label %for.inc51.us.loopexit, label %for.body49.us.us, !llvm.loop !8

for.body43:                                       ; preds = %next_imm_use_stmt.exit, %for.body43.preheader
  %iter.val286 = phi ptr [ %iter.val, %next_imm_use_stmt.exit ], [ %iter.val283, %for.body43.preheader ]
  %next.i166 = getelementptr inbounds nuw i8, ptr %iter.val286, i64 8
  %36 = load ptr, ptr %next.i166, align 8
  store ptr %36, ptr %next_imm_name.i, align 8
  %37 = load ptr, ptr %iter, align 8
  %cmp.i168.not281 = icmp eq ptr %37, %iter_node.i
  br i1 %cmp.i168.not281, label %for.inc51, label %for.body49.preheader

for.body49.preheader:                             ; preds = %for.body43
  br label %for.body49

for.body49:                                       ; preds = %next_imm_use_on_stmt.exit, %for.body49.preheader
  %use_p.0282 = phi ptr [ %retval.0.i174, %next_imm_use_on_stmt.exit ], [ %iter.val286, %for.body49.preheader ]
  %38 = load ptr, ptr %use_p.0282, align 8
  %cmp.i.i = icmp eq ptr %38, null
  br i1 %cmp.i.i, label %delink_imm_use.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body49
  %next.i.i = getelementptr inbounds nuw i8, ptr %use_p.0282, i64 8
  %39 = load ptr, ptr %next.i.i, align 8
  %next2.i.i = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %39, ptr %next2.i.i, align 8
  %40 = load ptr, ptr %use_p.0282, align 8
  %41 = load ptr, ptr %next.i.i, align 8
  store ptr %40, ptr %41, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %use_p.0282, i8 0, i64 16, i1 false)
  br label %delink_imm_use.exit.i

delink_imm_use.exit.i:                            ; preds = %if.end.i.i, %for.body49
  %use1.i = getelementptr inbounds nuw i8, ptr %use_p.0282, i64 24
  %42 = load ptr, ptr %use1.i, align 8
  store ptr %call.val.val.i.fr, ptr %42, align 8
  %bf.load.i.i = load i64, ptr %call.val.val.i.fr, align 8
  %bf.cast4.i.i = and i64 %bf.load.i.i, 65535
  %cmp.not.i.i = icmp eq i64 %bf.cast4.i.i, 141
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %delink_imm_use.exit.i
  store ptr null, ptr %use_p.0282, align 8
  br label %set_ssa_use_from_ptr.exit

if.else.i.i:                                      ; preds = %delink_imm_use.exit.i
  store ptr %imm_uses.i.i, ptr %use_p.0282, align 8
  %43 = load ptr, ptr %next.i.i.i, align 8
  %next1.i.i.i = getelementptr inbounds nuw i8, ptr %use_p.0282, i64 8
  store ptr %43, ptr %next1.i.i.i, align 8
  %44 = load ptr, ptr %next.i.i.i, align 8
  store ptr %use_p.0282, ptr %44, align 8
  store ptr %use_p.0282, ptr %next.i.i.i, align 8
  br label %set_ssa_use_from_ptr.exit

set_ssa_use_from_ptr.exit:                        ; preds = %if.else.i.i, %if.then.i.i
  %45 = load ptr, ptr %next_imm_name.i, align 8
  store ptr %45, ptr %iter, align 8
  %cmp.i.not.i172 = icmp eq ptr %45, %iter_node.i
  br i1 %cmp.i.not.i172, label %next_imm_use_on_stmt.exit, label %if.else.i

if.else.i:                                        ; preds = %set_ssa_use_from_ptr.exit
  %next.i173 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %46 = load ptr, ptr %next.i173, align 8
  store ptr %46, ptr %next_imm_name.i, align 8
  br label %next_imm_use_on_stmt.exit

next_imm_use_on_stmt.exit:                        ; preds = %if.else.i, %set_ssa_use_from_ptr.exit
  %retval.0.i174 = phi ptr [ %45, %if.else.i ], [ null, %set_ssa_use_from_ptr.exit ]
  %47 = load ptr, ptr %iter, align 8
  %cmp.i168.not = icmp eq ptr %47, %iter_node.i
  br i1 %cmp.i168.not, label %for.inc51.loopexit, label %for.body49, !llvm.loop !8

for.inc51.loopexit:                               ; preds = %next_imm_use_on_stmt.exit
  br label %for.inc51

for.inc51:                                        ; preds = %for.inc51.loopexit, %for.body43
  %48 = load ptr, ptr %next.i176, align 8
  store ptr %48, ptr %iter, align 8
  %imm.val14.i = load ptr, ptr %end_p.i, align 8
  %cmp.i.not.i177 = icmp eq ptr %48, %imm.val14.i
  br i1 %cmp.i.not.i177, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %for.inc51
  %49 = load ptr, ptr %iter_node.i, align 8
  %cmp.not.i = icmp eq ptr %49, null
  br i1 %cmp.not.i, label %next_imm_use_stmt.exit, label %delink_imm_use.exit.i179

delink_imm_use.exit.i179:                         ; preds = %if.then.i
  %next2.i.i180 = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %48, ptr %next2.i.i180, align 8
  %50 = load ptr, ptr %iter_node.i, align 8
  %51 = load ptr, ptr %next.i176, align 8
  store ptr %50, ptr %51, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %iter_node.i, i8 0, i64 16, i1 false)
  br label %next_imm_use_stmt.exit

if.end4.i:                                        ; preds = %for.inc51
  call fastcc void @link_use_stmts_after(ptr noundef %48, ptr noundef nonnull %iter)
  br label %next_imm_use_stmt.exit

next_imm_use_stmt.exit:                           ; preds = %if.end4.i, %delink_imm_use.exit.i179, %if.then.i
  %iter.val = load ptr, ptr %iter, align 8
  %iter.val156 = load ptr, ptr %end_p.i, align 8
  %cmp.i164.not = icmp eq ptr %iter.val, %iter.val156
  br i1 %cmp.i164.not, label %for.end53.loopexit293, label %for.body43, !llvm.loop !6

for.end53.loopexit:                               ; preds = %next_imm_use_stmt.exit.us
  br label %for.end53

for.end53.loopexit293:                            ; preds = %next_imm_use_stmt.exit
  br label %for.end53

for.end53:                                        ; preds = %for.end53.loopexit293, %for.end53.loopexit, %first_imm_use_stmt.exit
  %bf.load54 = load i64, ptr %call6.val, align 8
  %52 = and i64 %bf.load54, 4194304
  %tobool57.not = icmp eq i64 %52, 0
  br i1 %tobool57.not, label %if.end61, label %if.then58

if.then58:                                        ; preds = %for.end53
  %bf.load59 = load i64, ptr %call.val.val.i.fr, align 8
  %bf.set = or i64 %bf.load59, 4194304
  store i64 %bf.set, ptr %call.val.val.i.fr, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %for.end53
  call void @llvm.lifetime.end.p0(ptr nonnull %iter) #7
  br label %if.end63

if.else62:                                        ; preds = %if.else
  call void @replace_uses_by(ptr noundef %call6.val, ptr noundef %call.val.val.i.fr)
  br label %if.end63

if.end63:                                         ; preds = %if.else62, %if.end61
  call void @remove_phi_node(ptr noundef nonnull %psi, i8 noundef zeroext 1) #7
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %cond.end
  %psi.val = load ptr, ptr %psi, align 8
  %cmp.i.not = icmp eq ptr %psi.val, null
  br i1 %cmp.i.not, label %for.end65.loopexit, label %for.body, !llvm.loop !9

for.end65.loopexit:                               ; preds = %if.end64
  br label %for.end65

for.end65:                                        ; preds = %for.end65.loopexit, %gsi_start.exit
  %call66 = call zeroext i8 @move_block_after(ptr noundef %b, ptr noundef %a) #7
  %53 = getelementptr i8, ptr %a, i64 8
  %bb.val.i = load ptr, ptr %53, align 8
  %tobool.not.i.i181 = icmp eq ptr %bb.val.i, null
  br i1 %tobool.not.i.i181, label %cond.true.i182, label %single_succ_p.exit.i

single_succ_p.exit.i:                             ; preds = %for.end65
  %54 = load i32, ptr %bb.val.i, align 8
  %.not.i = icmp eq i32 %54, 1
  br i1 %.not.i, label %single_succ_edge.exit, label %cond.true.i182

cond.true.i182:                                   ; preds = %single_succ_p.exit.i, %for.end65
  call void @fancy_abort(ptr noundef nonnull @.str.147, i32 noundef 645, ptr noundef nonnull @.str.2) #7
  br label %single_succ_edge.exit

single_succ_edge.exit:                            ; preds = %cond.true.i182, %single_succ_p.exit.i
  %55 = load ptr, ptr %53, align 8
  %vec.i.i = getelementptr inbounds nuw i8, ptr %55, i64 8
  %56 = load ptr, ptr %vec.i.i, align 8
  %flags = getelementptr inbounds nuw i8, ptr %56, i64 48
  %57 = load i32, ptr %flags, align 8
  %and = and i32 %57, 1
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %cond.true69, label %cond.end71

cond.true69:                                      ; preds = %single_succ_edge.exit
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1634, ptr noundef nonnull @.str.2) #7
  br label %cond.end71

cond.end71:                                       ; preds = %cond.true69, %single_succ_edge.exit
  %58 = load i32, ptr %flags.i.i, align 8, !noalias !10
  %and.i.i.i = and i32 %58, 512
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %cond.end80

land.lhs.true.i.i.i:                              ; preds = %cond.end71
  %il.i.i.i = getelementptr inbounds nuw i8, ptr %a, i64 64
  %59 = load ptr, ptr %il.i.i.i, align 8, !noalias !10
  %tobool1.not.i.i.i = icmp eq ptr %59, null
  br i1 %tobool1.not.i.i.i, label %cond.end80, label %bb_seq.exit.i.i

bb_seq.exit.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %60 = load ptr, ptr %59, align 8, !noalias !10
  %tobool.not.i6.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i6.i.i, label %cond.end80, label %gsi_last_bb.exit.i

gsi_last_bb.exit.i:                               ; preds = %bb_seq.exit.i.i
  %last.i.i.i = getelementptr inbounds nuw i8, ptr %60, i64 8
  %61 = load ptr, ptr %last.i.i.i, align 8, !noalias !10
  %cmp.i.not7.i = icmp eq ptr %61, null
  br i1 %cmp.i.not7.i, label %cond.end80, label %land.rhs.i.preheader

land.rhs.i.preheader:                             ; preds = %gsi_last_bb.exit.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i, %land.rhs.i.preheader
  %i.sroa.0.08.i = phi ptr [ %62, %while.body.i ], [ %61, %land.rhs.i.preheader ]
  %i.val4.val.i = load ptr, ptr %i.sroa.0.08.i, align 8
  %call1.val.i = load i32, ptr %i.val4.val.i, align 8
  %bf.clear.i.i.i = and i32 %call1.val.i, 255
  %cmp.i5.not.i = icmp eq i32 %bf.clear.i.i.i, 2
  br i1 %cmp.i5.not.i, label %while.body.i, label %land.lhs.true.i.i.i189

while.body.i:                                     ; preds = %land.rhs.i
  %prev.i.i = getelementptr inbounds nuw i8, ptr %i.sroa.0.08.i, i64 8
  %62 = load ptr, ptr %prev.i.i, align 8
  %cmp.i.not.i184 = icmp eq ptr %62, null
  br i1 %cmp.i.not.i184, label %cond.end80.loopexit, label %land.rhs.i, !llvm.loop !13

land.lhs.true.i.i.i189:                           ; preds = %land.rhs.i
  %il.i.i.i190 = getelementptr inbounds nuw i8, ptr %a, i64 64
  %63 = load ptr, ptr %il.i.i.i190, align 8, !noalias !14
  %tobool1.not.i.i.i191 = icmp eq ptr %63, null
  br i1 %tobool1.not.i.i.i191, label %last_stmt.exit206, label %bb_seq.exit.i.i192

bb_seq.exit.i.i192:                               ; preds = %land.lhs.true.i.i.i189
  %64 = load ptr, ptr %63, align 8, !noalias !14
  %tobool.not.i6.i.i193 = icmp eq ptr %64, null
  br i1 %tobool.not.i6.i.i193, label %last_stmt.exit206, label %gsi_last_bb.exit.i194

gsi_last_bb.exit.i194:                            ; preds = %bb_seq.exit.i.i192
  %last.i.i.i195 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %65 = load ptr, ptr %last.i.i.i195, align 8, !noalias !14
  %cmp.i.not7.i196 = icmp eq ptr %65, null
  br i1 %cmp.i.not7.i196, label %last_stmt.exit206, label %land.rhs.i197.preheader

land.rhs.i197.preheader:                          ; preds = %gsi_last_bb.exit.i194
  br label %land.rhs.i197

land.rhs.i197:                                    ; preds = %while.body.i203, %land.rhs.i197.preheader
  %i.sroa.0.08.i198 = phi ptr [ %66, %while.body.i203 ], [ %65, %land.rhs.i197.preheader ]
  %i.val4.val.i199 = load ptr, ptr %i.sroa.0.08.i198, align 8
  %call1.val.i200 = load i32, ptr %i.val4.val.i199, align 8
  %bf.clear.i.i.i201 = and i32 %call1.val.i200, 255
  %cmp.i5.not.i202 = icmp eq i32 %bf.clear.i.i.i201, 2
  br i1 %cmp.i5.not.i202, label %while.body.i203, label %last_stmt.exit206.loopexit

while.body.i203:                                  ; preds = %land.rhs.i197
  %prev.i.i204 = getelementptr inbounds nuw i8, ptr %i.sroa.0.08.i198, i64 8
  %66 = load ptr, ptr %prev.i.i204, align 8
  %cmp.i.not.i205 = icmp eq ptr %66, null
  br i1 %cmp.i.not.i205, label %last_stmt.exit206.loopexit, label %land.rhs.i197, !llvm.loop !13

last_stmt.exit206.loopexit:                       ; preds = %while.body.i203, %land.rhs.i197
  %stmt.1.i188.ph = phi ptr [ null, %while.body.i203 ], [ %i.val4.val.i199, %land.rhs.i197 ]
  br label %last_stmt.exit206

last_stmt.exit206:                                ; preds = %last_stmt.exit206.loopexit, %gsi_last_bb.exit.i194, %bb_seq.exit.i.i192, %land.lhs.true.i.i.i189
  %stmt.1.i188 = phi ptr [ null, %gsi_last_bb.exit.i194 ], [ null, %bb_seq.exit.i.i192 ], [ null, %land.lhs.true.i.i.i189 ], [ %stmt.1.i188.ph, %last_stmt.exit206.loopexit ]
  %t.val.i.i = load i32, ptr %stmt.1.i188, align 8
  %trunc.i.i = trunc i32 %t.val.i.i to i8
  switch i8 %trunc.i.i, label %stmt_ends_bb_p.exit [
    i8 1, label %cond.true78
    i8 5, label %cond.true78
    i8 3, label %cond.true78
    i8 9, label %cond.true78
    i8 14, label %cond.true78
    i8 8, label %sw.bb.i.i
    i8 15, label %cond.true78
    i8 7, label %sw.bb9.i.i
    i8 26, label %cond.true78
    i8 27, label %cond.true78
    i8 23, label %cond.true78
    i8 30, label %cond.true78
    i8 31, label %cond.true78
    i8 32, label %cond.true78
    i8 29, label %cond.true78
    i8 24, label %cond.true78
    i8 25, label %cond.true78
    i8 22, label %cond.true78
    i8 28, label %cond.true78
    i8 19, label %cond.true78
    i8 20, label %cond.true78
    i8 21, label %cond.true78
  ]

sw.bb.i.i:                                        ; preds = %last_stmt.exit206
  %call1.i.i = call i32 @gimple_call_flags(ptr noundef nonnull %stmt.1.i188) #7
  %and.i.i208 = and i32 %call1.i.i, 3
  %tobool2.not.i.i = icmp eq i32 %and.i.i208, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i210, label %if.end.i.i209

land.lhs.true.i.i210:                             ; preds = %sw.bb.i.i
  %67 = load ptr, ptr @cfun, align 8
  %has_nonlocal_label.i.i = getelementptr inbounds nuw i8, ptr %67, i64 136
  %bf.load.i.i211 = load i32, ptr %has_nonlocal_label.i.i, align 8
  %68 = and i32 %bf.load.i.i211, 1048576
  %and4.i.i = and i32 %call1.i.i, 8
  %69 = or disjoint i32 %68, %and4.i.i
  %or.cond.i.i = icmp eq i32 %69, 0
  br i1 %or.cond.i.i, label %stmt_ends_bb_p.exit, label %cond.true78

if.end.i.i209:                                    ; preds = %sw.bb.i.i
  %and4.old.i.i = and i32 %call1.i.i, 8
  %tobool5.not.old.i.i = icmp eq i32 %and4.old.i.i, 0
  br i1 %tobool5.not.old.i.i, label %stmt_ends_bb_p.exit, label %cond.true78

sw.bb9.i.i:                                       ; preds = %last_stmt.exit206
  %70 = getelementptr i8, ptr %stmt.1.i188, i64 75
  %t.val23.i.i = load i8, ptr %70, align 1
  %cmp.not.i.i207 = icmp eq i8 %t.val23.i.i, 0
  br i1 %cmp.not.i.i207, label %stmt_ends_bb_p.exit, label %cond.true78

stmt_ends_bb_p.exit:                              ; preds = %sw.bb9.i.i, %if.end.i.i209, %land.lhs.true.i.i210, %last_stmt.exit206
  %call14.i.i = call zeroext i8 @stmt_can_throw_internal(ptr noundef nonnull %stmt.1.i188) #7
  %.not = icmp eq i8 %call14.i.i, 0
  br i1 %.not, label %cond.end80, label %cond.true78

cond.true78:                                      ; preds = %stmt_ends_bb_p.exit, %sw.bb9.i.i, %if.end.i.i209, %land.lhs.true.i.i210, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206, %last_stmt.exit206
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1635, ptr noundef nonnull @.str.2) #7
  br label %cond.end80

cond.end80.loopexit:                              ; preds = %while.body.i
  br label %cond.end80

cond.end80:                                       ; preds = %cond.end80.loopexit, %cond.true78, %stmt_ends_bb_p.exit, %gsi_last_bb.exit.i, %bb_seq.exit.i.i, %land.lhs.true.i.i.i, %cond.end71
  %71 = load i32, ptr %flags.i, align 8, !noalias !17
  %and.i.i213 = and i32 %71, 512
  %tobool.not.i.i214 = icmp eq i32 %and.i.i213, 0
  br i1 %tobool.not.i.i214, label %land.lhs.true.i.i220, label %gsi_start_bb.exit

land.lhs.true.i.i220:                             ; preds = %cond.end80
  %72 = load ptr, ptr %il.i, align 8, !noalias !17
  %tobool1.not.i.i222 = icmp eq ptr %72, null
  br i1 %tobool1.not.i.i222, label %gsi_start_bb.exit, label %bb_seq.exit.i223

bb_seq.exit.i223:                                 ; preds = %land.lhs.true.i.i220
  %73 = load ptr, ptr %72, align 8, !noalias !17
  %tobool.not.i6.i224 = icmp eq ptr %73, null
  br i1 %tobool.not.i6.i224, label %gsi_start_bb.exit, label %cond.true.i7.i225

cond.true.i7.i225:                                ; preds = %bb_seq.exit.i223
  %74 = load ptr, ptr %73, align 8, !noalias !17
  br label %gsi_start_bb.exit

gsi_start_bb.exit:                                ; preds = %cond.true.i7.i225, %bb_seq.exit.i223, %land.lhs.true.i.i220, %cond.end80
  %cond.i11.i216 = phi ptr [ %73, %cond.true.i7.i225 ], [ null, %bb_seq.exit.i223 ], [ null, %land.lhs.true.i.i220 ], [ null, %cond.end80 ]
  %cond.i8.i217 = phi ptr [ %74, %cond.true.i7.i225 ], [ null, %bb_seq.exit.i223 ], [ null, %land.lhs.true.i.i220 ], [ null, %cond.end80 ]
  store ptr %cond.i8.i217, ptr %gsi, align 8
  store ptr %cond.i11.i216, ptr %tmp.sroa.4.0.gsi.sroa_idx, align 8
  store ptr %b, ptr %tmp.sroa.5.0.gsi.sroa_idx, align 8
  %cmp.i226.not291 = icmp eq ptr %cond.i8.i217, null
  br i1 %cmp.i226.not291, label %for.end108, label %for.body87.lr.ph

for.body87.lr.ph:                                 ; preds = %gsi_start_bb.exit
  %il.i.i238 = getelementptr inbounds nuw i8, ptr %a, i64 64
  %seq2.i235 = getelementptr inbounds nuw i8, ptr %dest_gsi, i64 8
  %bb3.i236 = getelementptr inbounds nuw i8, ptr %dest_gsi, i64 16
  br label %for.body87

for.body87:                                       ; preds = %if.end107, %for.body87.lr.ph
  %gsi.val292 = phi ptr [ %cond.i8.i217, %for.body87.lr.ph ], [ %gsi.val, %if.end107 ]
  %gsi.val154.val = load ptr, ptr %gsi.val292, align 8
  %call89.val = load i32, ptr %gsi.val154.val, align 8
  %bf.clear.i = and i32 %call89.val, 255
  %cmp91 = icmp eq i32 %bf.clear.i, 4
  br i1 %cmp91, label %if.then.i.i228, label %if.else106

if.then.i.i228:                                   ; preds = %for.body87
  %idxprom.i.i.i.i.i = zext nneg i32 %bf.clear.i to i64
  %arrayidx.i.i.i.i.i = getelementptr inbounds nuw i32, ptr @gss_for_code_, i64 %idxprom.i.i.i.i.i
  %75 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %idxprom.i.i.i = zext i32 %75 to i64
  %arrayidx.i.i.i = getelementptr inbounds nuw i64, ptr @gimple_ops_offset_, i64 %idxprom.i.i.i
  %76 = load i64, ptr %arrayidx.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq i64 %76, 0
  br i1 %cmp.not.i.i.i, label %cond.true.i.i.i, label %gimple_label_label.exit

cond.true.i.i.i:                                  ; preds = %if.then.i.i228
  call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 1622, ptr noundef nonnull @.str.2) #7
  br label %gimple_label_label.exit

gimple_label_label.exit:                          ; preds = %cond.true.i.i.i, %if.then.i.i228
  %add.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %gsi.val154.val, i64 %76
  %77 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void @gsi_remove(ptr noundef nonnull %gsi, i8 noundef zeroext 0) #7
  %bf.load95 = load i64, ptr %77, align 8
  %78 = and i64 %bf.load95, 65536
  %tobool99.not = icmp eq i64 %78, 0
  br i1 %tobool99.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %gimple_label_label.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %dest_gsi) #7
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %79 = load i32, ptr %flags.i.i, align 8, !noalias !20
  %and.i.i230 = and i32 %79, 512
  %tobool.not.i.i231 = icmp eq i32 %and.i.i230, 0
  br i1 %tobool.not.i.i231, label %land.lhs.true.i.i237, label %gsi_start_bb.exit243

land.lhs.true.i.i237:                             ; preds = %if.then100
  %80 = load ptr, ptr %il.i.i238, align 8, !noalias !20
  %tobool1.not.i.i239 = icmp eq ptr %80, null
  br i1 %tobool1.not.i.i239, label %gsi_start_bb.exit243, label %bb_seq.exit.i240

bb_seq.exit.i240:                                 ; preds = %land.lhs.true.i.i237
  %81 = load ptr, ptr %80, align 8, !noalias !20
  %tobool.not.i6.i241 = icmp eq ptr %81, null
  br i1 %tobool.not.i6.i241, label %gsi_start_bb.exit243, label %cond.true.i7.i242

cond.true.i7.i242:                                ; preds = %bb_seq.exit.i240
  %82 = load ptr, ptr %81, align 8, !noalias !20
  br label %gsi_start_bb.exit243

gsi_start_bb.exit243:                             ; preds = %cond.true.i7.i242, %bb_seq.exit.i240, %land.lhs.true.i.i237, %if.then100
  %cond.i11.i233 = phi ptr [ %81, %cond.true.i7.i242 ], [ null, %bb_seq.exit.i240 ], [ null, %land.lhs.true.i.i237 ], [ null, %if.then100 ]
  %cond.i8.i234 = phi ptr [ %82, %cond.true.i7.i242 ], [ null, %bb_seq.exit.i240 ], [ null, %land.lhs.true.i.i237 ], [ null, %if.then100 ]
  store ptr %cond.i8.i234, ptr %dest_gsi, align 8, !alias.scope !20
  store ptr %cond.i11.i233, ptr %seq2.i235, align 8, !alias.scope !20
  store ptr %a, ptr %bb3.i236, align 8, !alias.scope !20
  call void @gsi_insert_before(ptr noundef nonnull %dest_gsi, ptr noundef nonnull %gsi.val154.val, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %dest_gsi) #7
  br label %if.end101

if.end101:                                        ; preds = %gsi_start_bb.exit243, %gimple_label_label.exit
  %eh_landing_pad_nr = getelementptr inbounds nuw i8, ptr %77, i64 124
  %83 = load i32, ptr %eh_landing_pad_nr, align 4
  %tobool102.not = icmp eq i32 %83, 0
  br i1 %tobool102.not, label %if.end107, label %if.then103

if.then103:                                       ; preds = %if.end101
  %call104 = call ptr @get_eh_landing_pad_from_number(i32 noundef %83) #7
  %post_landing_pad = getelementptr inbounds nuw i8, ptr %call104, i64 16
  store ptr null, ptr %post_landing_pad, align 8
  br label %if.end107

if.else106:                                       ; preds = %for.body87
  call void @gimple_set_bb(ptr noundef nonnull %gsi.val154.val, ptr noundef %a) #7
  %84 = load ptr, ptr %gsi, align 8
  %next.i244 = getelementptr inbounds nuw i8, ptr %84, i64 16
  %85 = load ptr, ptr %next.i244, align 8
  store ptr %85, ptr %gsi, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.else106, %if.then103, %if.end101
  %gsi.val = load ptr, ptr %gsi, align 8
  %cmp.i226.not = icmp eq ptr %gsi.val, null
  br i1 %cmp.i226.not, label %for.end108.loopexit, label %for.body87, !llvm.loop !23

for.end108.loopexit:                              ; preds = %if.end107
  br label %for.end108

for.end108:                                       ; preds = %for.end108.loopexit, %gsi_start_bb.exit
  %86 = load i32, ptr %flags.i.i, align 8, !noalias !24
  %and.i.i246 = and i32 %86, 512
  %tobool.not.i.i247 = icmp eq i32 %and.i.i246, 0
  br i1 %tobool.not.i.i247, label %land.lhs.true.i.i252, label %gsi_last_bb.exit259

land.lhs.true.i.i252:                             ; preds = %for.end108
  %il.i.i253 = getelementptr inbounds nuw i8, ptr %a, i64 64
  %87 = load ptr, ptr %il.i.i253, align 8, !noalias !24
  %tobool1.not.i.i254 = icmp eq ptr %87, null
  br i1 %tobool1.not.i.i254, label %gsi_last_bb.exit259, label %bb_seq.exit.i255

bb_seq.exit.i255:                                 ; preds = %land.lhs.true.i.i252
  %88 = load ptr, ptr %87, align 8, !noalias !24
  %tobool.not.i6.i256 = icmp eq ptr %88, null
  br i1 %tobool.not.i6.i256, label %gsi_last_bb.exit259, label %cond.true.i7.i257

cond.true.i7.i257:                                ; preds = %bb_seq.exit.i255
  %last.i.i258 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %89 = load ptr, ptr %last.i.i258, align 8, !noalias !24
  br label %gsi_last_bb.exit259

gsi_last_bb.exit259:                              ; preds = %cond.true.i7.i257, %bb_seq.exit.i255, %land.lhs.true.i.i252, %for.end108
  %cond.i11.i248 = phi ptr [ %88, %cond.true.i7.i257 ], [ null, %bb_seq.exit.i255 ], [ null, %land.lhs.true.i.i252 ], [ null, %for.end108 ]
  %cond.i8.i249 = phi ptr [ %89, %cond.true.i7.i257 ], [ null, %bb_seq.exit.i255 ], [ null, %land.lhs.true.i.i252 ], [ null, %for.end108 ]
  store ptr %cond.i8.i249, ptr %last, align 8
  %tmp109.sroa.4.0.last.sroa_idx = getelementptr inbounds nuw i8, ptr %last, i64 8
  store ptr %cond.i11.i248, ptr %tmp109.sroa.4.0.last.sroa_idx, align 8
  %tmp109.sroa.5.0.last.sroa_idx = getelementptr inbounds nuw i8, ptr %last, i64 16
  store ptr %a, ptr %tmp109.sroa.5.0.last.sroa_idx, align 8
  %90 = load i32, ptr %flags.i, align 8
  %and.i261 = and i32 %90, 512
  %tobool.not.i262 = icmp eq i32 %and.i261, 0
  br i1 %tobool.not.i262, label %land.lhs.true.i265, label %bb_seq.exit

land.lhs.true.i265:                               ; preds = %gsi_last_bb.exit259
  %91 = load ptr, ptr %il.i, align 8
  %tobool1.not.i267 = icmp eq ptr %91, null
  br i1 %tobool1.not.i267, label %bb_seq.exit, label %cond.true.i268

cond.true.i268:                                   ; preds = %land.lhs.true.i265
  %92 = load ptr, ptr %91, align 8
  br label %bb_seq.exit

bb_seq.exit:                                      ; preds = %cond.true.i268, %land.lhs.true.i265, %gsi_last_bb.exit259
  %cond.i264 = phi ptr [ %92, %cond.true.i268 ], [ null, %land.lhs.true.i265 ], [ null, %gsi_last_bb.exit259 ]
  call void @gsi_insert_seq_after(ptr noundef nonnull %last, ptr noundef %cond.i264, i32 noundef 0) #7
  %93 = load i32, ptr %flags.i, align 8
  %and.i270 = and i32 %93, 512
  %tobool.not.i271 = icmp eq i32 %and.i270, 0
  br i1 %tobool.not.i271, label %set_bb_seq.exit, label %cond.true.i272

cond.true.i272:                                   ; preds = %bb_seq.exit
  call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 248, ptr noundef nonnull @.str.2) #7
  br label %set_bb_seq.exit

set_bb_seq.exit:                                  ; preds = %cond.true.i272, %bb_seq.exit
  %94 = load ptr, ptr %il.i, align 8
  store ptr null, ptr %94, align 8
  %95 = load ptr, ptr @cfgcleanup_altered_bbs, align 8
  %tobool111.not = icmp eq ptr %95, null
  br i1 %tobool111.not, label %if.end115, label %if.then112

if.then112:                                       ; preds = %set_bb_seq.exit
  %index113 = getelementptr inbounds nuw i8, ptr %a, i64 80
  %96 = load i32, ptr %index113, align 8
  %call114 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %95, i32 noundef %96) #7
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %set_bb_seq.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %psi) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %gsi) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %last) #7
  ret void
}

declare void @gimple_set_bb(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
declare hidden fastcc void @link_use_stmts_after(ptr noundef, ptr noundef nonnull) unnamed_addr #5

declare zeroext i8 @move_block_after(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @may_propagate_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind }

!0 = !{!1}
!1 = distinct !{!1, !2, !"gsi_last_bb: %agg.result"}
!2 = distinct !{!2, !"gsi_last_bb"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"gsi_start: %agg.result"}
!5 = distinct !{!5, !"gsi_start"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = !{!11}
!11 = distinct !{!11, !12, !"gsi_last_bb: %agg.result"}
!12 = distinct !{!12, !"gsi_last_bb"}
!13 = distinct !{!13, !7}
!14 = !{!15}
!15 = distinct !{!15, !16, !"gsi_last_bb: %agg.result"}
!16 = distinct !{!16, !"gsi_last_bb"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"gsi_start_bb: %agg.result"}
!19 = distinct !{!19, !"gsi_start_bb"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"gsi_start_bb: %agg.result"}
!22 = distinct !{!22, !"gsi_start_bb"}
!23 = distinct !{!23, !7}
!24 = !{!25}
!25 = distinct !{!25, !26, !"gsi_last_bb: %agg.result"}
!26 = distinct !{!26, !"gsi_last_bb"}
