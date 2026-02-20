; ModuleID = '/tmp/tmp.29yTOk1FPp/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/search.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }

@history_hit = external dso_local local_unnamed_addr global [8 x [12 x [64 x i32]]], align 16
@history_tot = external dso_local local_unnamed_addr global [8 x [12 x [64 x i32]]], align 16
@gamestate = external global %struct.gamestate_t, align 8
@contempt = external local_unnamed_addr global i32, align 4
@material = external local_unnamed_addr constant [14 x i32], align 16

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %s, i32 noundef %alpha, i32 noundef %beta, i32 noundef %depth, i32 noundef %qply) local_unnamed_addr #0 {
entry:
  %best = alloca i32, align 4
  %bound = alloca i32, align 4
  %xdummy = alloca i32, align 4
  %moves = alloca [240 x i32], align 16
  %move_ordering = alloca [240 x i32], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %best) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %bound) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %xdummy) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %moves) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %move_ordering) #5
  %nodes = getelementptr inbounds nuw i8, ptr %s, i64 4080
  %0 = load i64, ptr %nodes, align 8, !tbaa !0
  %inc = add i64 %0, 1
  store i64 %inc, ptr %nodes, align 8, !tbaa !0
  %qnodes = getelementptr inbounds nuw i8, ptr %s, i64 4088
  %1 = load i64, ptr %qnodes, align 8, !tbaa !6
  %inc1 = add i64 %1, 1
  store i64 %inc1, ptr %qnodes, align 8, !tbaa !6
  %ply = getelementptr inbounds nuw i8, ptr %s, i64 472
  %2 = load i32, ptr %ply, align 8, !tbaa !7
  %maxply = getelementptr inbounds nuw i8, ptr %s, i64 4096
  %3 = load i32, ptr %maxply, align 8, !tbaa !8
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %2, ptr %maxply, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call fastcc noundef i32 @_ZL17search_time_checkP7state_t(i64 %inc)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %cleanup340

if.end5:                                          ; preds = %if.end
  %call6 = tail call noundef i32 @_Z7is_drawP11gamestate_tP7state_t(ptr noundef nonnull @gamestate, ptr noundef nonnull %s)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %if.end5
  %fifty = getelementptr inbounds nuw i8, ptr %s, i64 476
  %4 = load i32, ptr %fifty, align 4, !tbaa !9
  %cmp8 = icmp sgt i32 %4, 99
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %lor.lhs.false, %if.end5
  %5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 12), align 4, !tbaa !10
  %white_to_move = getelementptr inbounds nuw i8, ptr %s, i64 460
  %6 = load i32, ptr %white_to_move, align 4, !tbaa !12
  %cmp10 = icmp eq i32 %5, %6
  %7 = load i32, ptr @contempt, align 4
  %sub = sub nsw i32 0, %7
  %cond = select i1 %cmp10, i32 %7, i32 %sub
  br label %cleanup340

if.end11:                                         ; preds = %lor.lhs.false
  %call12 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef nonnull %s, ptr noundef nonnull %bound, i32 noundef %alpha, i32 noundef %beta, ptr noundef nonnull %best, ptr noundef nonnull %xdummy, ptr noundef nonnull %xdummy, ptr noundef nonnull %xdummy, ptr noundef nonnull %xdummy, i32 noundef 0)
  switch i32 %call12, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb13
    i32 2, label %sw.bb17
    i32 4, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end11
  %8 = load i32, ptr %bound, align 4, !tbaa !13
  br label %cleanup340

sw.bb13:                                          ; preds = %if.end11
  %9 = load i32, ptr %bound, align 4, !tbaa !13
  %cmp14.not = icmp sgt i32 %9, %alpha
  br i1 %cmp14.not, label %sw.epilog, label %cleanup340

sw.bb17:                                          ; preds = %if.end11
  %10 = load i32, ptr %bound, align 4, !tbaa !13
  %cmp18.not = icmp slt i32 %10, %beta
  br i1 %cmp18.not, label %sw.epilog, label %cleanup340

sw.bb21:                                          ; preds = %if.end11
  store i32 65535, ptr %best, align 4, !tbaa !13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb17, %sw.bb13, %if.end11
  %11 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 20), align 4, !tbaa !14
  %mul = shl nsw i32 %11, 1
  %cmp22 = icmp sgt i32 %qply, %mul
  br i1 %cmp22, label %if.then26, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %sw.epilog
  %12 = load i32, ptr %ply, align 8, !tbaa !7
  %cmp25 = icmp sgt i32 %12, 60
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %lor.lhs.false23, %sw.epilog
  %call27 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef nonnull %s, i32 noundef %alpha, i32 noundef %beta, i32 noundef 0)
  br label %cleanup340

if.end28:                                         ; preds = %lor.lhs.false23
  %checks = getelementptr inbounds nuw i8, ptr %s, i64 4100
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32, ptr %checks, i64 %idxprom
  %13 = load i32, ptr %arrayidx, align 4, !tbaa !13
  %call30 = call noundef i32 @_Z13retrieve_evalP7state_t(ptr noundef nonnull %s)
  %add = add nsw i32 %call30, 50
  %tobool31 = icmp ne i32 %13, 0
  br i1 %tobool31, label %if.end118.thread, label %if.then32

if.then32:                                        ; preds = %if.end28
  %cmp33.not = icmp slt i32 %call30, %beta
  br i1 %cmp33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.then32
  %14 = load i32, ptr %best, align 4, !tbaa !13
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %s, i32 noundef %call30, i32 noundef %alpha, i32 noundef %beta, i32 noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %cleanup340

if.else:                                          ; preds = %if.then32
  %cmp35 = icmp sgt i32 %call30, %alpha
  br i1 %cmp35, label %if.end118, label %if.else37

if.else37:                                        ; preds = %if.else
  %add38 = add nsw i32 %call30, 985
  %cmp39.not = icmp sgt i32 %add38, %alpha
  br i1 %cmp39.not, label %if.else43, label %if.then40

if.then40:                                        ; preds = %if.else37
  %15 = load i32, ptr %best, align 4, !tbaa !13
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %s, i32 noundef %add38, i32 noundef %alpha, i32 noundef %beta, i32 noundef %15, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %cleanup340

if.else43:                                        ; preds = %if.else37
  %white_to_move45 = getelementptr inbounds nuw i8, ptr %s, i64 460
  %16 = load i32, ptr %white_to_move45, align 4, !tbaa !12
  %tobool46.not = icmp eq i32 %16, 0
  br i1 %tobool46.not, label %if.else80, label %if.then47

if.then47:                                        ; preds = %if.else43
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %s, i64 440
  %17 = load i32, ptr %arrayidx48, align 4, !tbaa !13
  %tobool49.not = icmp eq i32 %17, 0
  br i1 %tobool49.not, label %if.then50, label %if.end118

if.then50:                                        ; preds = %if.then47
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %s, i64 432
  %18 = load i32, ptr %arrayidx51, align 4, !tbaa !13
  %tobool52.not = icmp eq i32 %18, 0
  br i1 %tobool52.not, label %if.then53, label %if.else71

if.then53:                                        ; preds = %if.then50
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %s, i64 448
  %19 = load i32, ptr %arrayidx54, align 4, !tbaa !13
  %tobool55.not = icmp eq i32 %19, 0
  br i1 %tobool55.not, label %land.lhs.true, label %if.else64

land.lhs.true:                                    ; preds = %if.then53
  %arrayidx56 = getelementptr inbounds nuw i8, ptr %s, i64 416
  %20 = load i32, ptr %arrayidx56, align 4, !tbaa !13
  %tobool57.not = icmp eq i32 %20, 0
  br i1 %tobool57.not, label %if.then58, label %if.else64

if.then58:                                        ; preds = %land.lhs.true
  %add59 = add nsw i32 %call30, 135
  %cmp60.not = icmp sgt i32 %add59, %alpha
  br i1 %cmp60.not, label %if.end118, label %cleanup340

if.else64:                                        ; preds = %land.lhs.true, %if.then53
  %add65 = add nsw i32 %call30, 380
  %cmp66.not = icmp sgt i32 %add65, %alpha
  br i1 %cmp66.not, label %if.end118, label %cleanup340

if.else71:                                        ; preds = %if.then50
  %add72 = add nsw i32 %call30, 540
  %cmp73.not = icmp sgt i32 %add72, %alpha
  br i1 %cmp73.not, label %if.end118, label %if.then74

if.then74:                                        ; preds = %if.else71
  %21 = load i32, ptr %best, align 4, !tbaa !13
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %s, i32 noundef %add72, i32 noundef %alpha, i32 noundef %beta, i32 noundef %21, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %cleanup340

if.else80:                                        ; preds = %if.else43
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %s, i64 436
  %22 = load i32, ptr %arrayidx81, align 4, !tbaa !13
  %tobool82.not = icmp eq i32 %22, 0
  br i1 %tobool82.not, label %if.then83, label %if.end118

if.then83:                                        ; preds = %if.else80
  %arrayidx84 = getelementptr inbounds nuw i8, ptr %s, i64 428
  %23 = load i32, ptr %arrayidx84, align 4, !tbaa !13
  %tobool85.not = icmp eq i32 %23, 0
  br i1 %tobool85.not, label %if.then86, label %if.else105

if.then86:                                        ; preds = %if.then83
  %arrayidx87 = getelementptr inbounds nuw i8, ptr %s, i64 444
  %24 = load i32, ptr %arrayidx87, align 4, !tbaa !13
  %tobool88.not = icmp eq i32 %24, 0
  br i1 %tobool88.not, label %land.lhs.true89, label %if.else98

land.lhs.true89:                                  ; preds = %if.then86
  %arrayidx90 = getelementptr inbounds nuw i8, ptr %s, i64 412
  %25 = load i32, ptr %arrayidx90, align 4, !tbaa !13
  %tobool91.not = icmp eq i32 %25, 0
  br i1 %tobool91.not, label %if.then92, label %if.else98

if.then92:                                        ; preds = %land.lhs.true89
  %add93 = add nsw i32 %call30, 135
  %cmp94.not = icmp sgt i32 %add93, %alpha
  br i1 %cmp94.not, label %if.end118, label %cleanup340

if.else98:                                        ; preds = %land.lhs.true89, %if.then86
  %add99 = add nsw i32 %call30, 380
  %cmp100.not = icmp sgt i32 %add99, %alpha
  br i1 %cmp100.not, label %if.end118, label %cleanup340

if.else105:                                       ; preds = %if.then83
  %add106 = add nsw i32 %call30, 540
  %cmp107.not = icmp sgt i32 %add106, %alpha
  br i1 %cmp107.not, label %if.end118, label %if.then108

if.then108:                                       ; preds = %if.else105
  %26 = load i32, ptr %best, align 4, !tbaa !13
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %s, i32 noundef %add106, i32 noundef %alpha, i32 noundef %beta, i32 noundef %26, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %cleanup340

if.end118:                                        ; preds = %if.else105, %if.else98, %if.then92, %if.else80, %if.else71, %if.else64, %if.then58, %if.then47, %if.else
  %alpha.addr.0 = phi i32 [ %call30, %if.else ], [ %alpha, %if.else64 ], [ %alpha, %if.then58 ], [ %alpha, %if.else71 ], [ %alpha, %if.then47 ], [ %alpha, %if.else98 ], [ %alpha, %if.then92 ], [ %alpha, %if.else105 ], [ %alpha, %if.else80 ]
  %sub121 = sub nsw i32 %alpha.addr.0, %add
  %27 = load i32, ptr %best, align 4, !tbaa !13
  %cmp124 = icmp sgt i32 %depth, -6
  %call132 = call noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef nonnull %s, ptr noundef nonnull %moves)
  br label %if.end143

if.end118.thread:                                 ; preds = %if.end28
  %28 = load i32, ptr %best, align 4, !tbaa !13
  %call129 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef nonnull %s, ptr noundef nonnull %moves, i32 noundef %13)
  br label %if.end143

if.end143:                                        ; preds = %if.end118.thread, %if.end118
  %29 = phi i32 [ %28, %if.end118.thread ], [ %27, %if.end118 ]
  %delta.0545 = phi i32 [ 0, %if.end118.thread ], [ %sub121, %if.end118 ]
  %alpha.addr.0542 = phi i32 [ %alpha, %if.end118.thread ], [ %alpha.addr.0, %if.end118 ]
  %tobool313 = phi i1 [ false, %if.end118.thread ], [ %cmp124, %if.end118 ]
  %num_moves.0 = phi i32 [ %call129, %if.end118.thread ], [ %call132, %if.end118 ]
  %sboard = getelementptr inbounds nuw i8, ptr %s, i64 4
  %sboard.i = getelementptr inbounds nuw i8, ptr %s, i64 4
  %white_to_move227 = getelementptr inbounds nuw i8, ptr %s, i64 460
  %hash = getelementptr inbounds nuw i8, ptr %s, i64 480
  %sub266 = sub nsw i32 0, %beta
  %add291 = add nsw i32 %qply, 1
  %cmp323 = icmp sgt i32 %depth, -1
  %invariant.op = and i1 %cmp323, %tobool313
  br label %mpass

mpass:                                            ; preds = %mpass.backedge, %if.end143
  %sbest.0 = phi i32 [ %29, %if.end143 ], [ %sbest.1.ph593, %mpass.backedge ]
  %no_moves.0 = phi i32 [ 1, %if.end143 ], [ %no_moves.1.ph589, %mpass.backedge ]
  %score.0 = phi i32 [ -32000, %if.end143 ], [ %score.1.ph585, %mpass.backedge ]
  %cmp144 = phi i1 [ false, %if.end143 ], [ %or.cond363, %mpass.backedge ]
  %cmp149 = phi i1 [ false, %if.end143 ], [ %cmp149.be, %mpass.backedge ]
  %cmp163 = phi i1 [ true, %if.end143 ], [ false, %mpass.backedge ]
  %num_moves.1 = phi i32 [ %num_moves.0, %if.end143 ], [ %num_moves.2, %mpass.backedge ]
  %alpha.addr.1 = phi i32 [ %alpha.addr.0542, %if.end143 ], [ %alpha.addr.2.ph581, %mpass.backedge ]
  br i1 %cmp144, label %if.then145, label %if.else148

if.then145:                                       ; preds = %mpass
  %call147 = call noundef i32 @_Z15gen_good_checksP7state_tPi(ptr noundef %s, ptr noundef nonnull %moves)
  br label %if.end154

if.else148:                                       ; preds = %mpass
  br i1 %cmp149, label %if.then150, label %if.end154

if.then150:                                       ; preds = %if.else148
  %call152 = call noundef i32 @_Z9gen_quietP7state_tPi(ptr noundef %s, ptr noundef nonnull %moves)
  br label %if.end154

if.end154:                                        ; preds = %if.then150, %if.else148, %if.then145
  %num_moves.2 = phi i32 [ %call147, %if.then145 ], [ %call152, %if.then150 ], [ %num_moves.1, %if.else148 ]
  %30 = load i32, ptr %best, align 4, !tbaa !13
  call fastcc void @_ZL16fast_order_movesP7state_tPiS1_ij(ptr noundef %s, ptr noundef %moves, ptr noundef %move_ordering, i32 noundef %num_moves.2, i32 noundef %30)
  %or.cond = or i1 %cmp144, %cmp149
  %31 = sext i32 %num_moves.2 to i64
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end312, %if.end154
  %i.0.ph = phi i32 [ %.us-phi575, %if.end312 ], [ -1, %if.end154 ]
  %sbest.1.ph = phi i32 [ %sbest.2, %if.end312 ], [ %sbest.0, %if.end154 ]
  %no_moves.1.ph = phi i32 [ %no_moves.2, %if.end312 ], [ %no_moves.0, %if.end154 ]
  %score.1.ph = phi i32 [ %score.3, %if.end312 ], [ %score.0, %if.end154 ]
  %alpha.addr.2.ph = phi i32 [ %alpha.addr.3, %if.end312 ], [ %alpha.addr.1, %if.end154 ]
  br i1 %tobool31, label %while.cond.outer.split.us, label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.cond.outer
  %32 = sext i32 %i.0.ph to i64
  br label %while.cond

while.cond.outer.split.us:                        ; preds = %while.cond.outer
  %inc.i.us = add nsw i32 %i.0.ph, 1
  %cmp.i.us = icmp slt i32 %i.0.ph, 9
  %cmp165.i.not.us = icmp slt i32 %inc.i.us, %num_moves.2
  br i1 %cmp.i.us, label %for.cond.preheader.i.us, label %_ZL15remove_one_fastPiS_S_i.exit.us

_ZL15remove_one_fastPiS_S_i.exit.us:              ; preds = %while.cond.outer.split.us
  br i1 %cmp165.i.not.us, label %if.end242, label %endpass.loopexit576

for.cond.preheader.i.us:                          ; preds = %while.cond.outer.split.us
  br i1 %cmp165.i.not.us, label %for.body.preheader.i.us, label %endpass.loopexit576

for.body.preheader.i.us:                          ; preds = %for.cond.preheader.i.us
  %33 = sext i32 %i.0.ph to i64
  %34 = add nsw i64 %33, 1
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %for.body.preheader.i.us
  %indvars.iv.i.us = phi i64 [ %34, %for.body.preheader.i.us ], [ %indvars.iv.next.i.us, %for.body.i.us ]
  %tmp.068.i.us = phi i32 [ undef, %for.body.preheader.i.us ], [ %spec.select60.i.us, %for.body.i.us ]
  %best.067.i.us = phi i32 [ -1000000, %for.body.preheader.i.us ], [ %spec.select.i.us, %for.body.i.us ]
  %arrayidx.i.us = getelementptr inbounds i32, ptr %move_ordering, i64 %indvars.iv.i.us
  %35 = load i32, ptr %arrayidx.i.us, align 4, !tbaa !13
  %cmp2.i.us = icmp sgt i32 %35, %best.067.i.us
  %spec.select.i.us = call i32 @llvm.smax.i32(i32 %35, i32 %best.067.i.us)
  %36 = trunc nsw i64 %indvars.iv.i.us to i32
  %spec.select60.i.us = select i1 %cmp2.i.us, i32 %36, i32 %tmp.068.i.us
  %indvars.iv.next.i.us = add nsw i64 %indvars.iv.i.us, 1
  %lftr.wideiv.i.us = trunc i64 %indvars.iv.next.i.us to i32
  %exitcond.not.i.us = icmp eq i32 %num_moves.2, %lftr.wideiv.i.us
  br i1 %exitcond.not.i.us, label %if.end12.i.us, label %for.body.i.us, !llvm.loop !15

if.end12.i.us:                                    ; preds = %for.body.i.us
  %spec.select.i.us.lcssa = phi i32 [ %spec.select.i.us, %for.body.i.us ]
  %spec.select60.i.us.lcssa = phi i32 [ %spec.select60.i.us, %for.body.i.us ]
  %cmp13.i.us = icmp sgt i32 %spec.select.i.us.lcssa, -1000000
  br i1 %cmp13.i.us, label %_ZL15remove_one_fastPiS_S_i.exit.thread558.us, label %endpass.loopexit576

_ZL15remove_one_fastPiS_S_i.exit.thread558.us:    ; preds = %if.end12.i.us
  %37 = sext i32 %spec.select60.i.us.lcssa to i64
  %idxprom15.i.us = sext i32 %inc.i.us to i64
  %arrayidx16.i.us = getelementptr inbounds i32, ptr %move_ordering, i64 %idxprom15.i.us
  %38 = load i32, ptr %arrayidx16.i.us, align 4, !tbaa !13
  %arrayidx18.i.us = getelementptr inbounds i32, ptr %move_ordering, i64 %37
  store i32 %38, ptr %arrayidx18.i.us, align 4, !tbaa !13
  store i32 %spec.select.i.us.lcssa, ptr %arrayidx16.i.us, align 4, !tbaa !13
  %arrayidx22.i.us = getelementptr inbounds i32, ptr %moves, i64 %idxprom15.i.us
  %39 = load i32, ptr %arrayidx22.i.us, align 4, !tbaa !13
  %arrayidx24.i.us = getelementptr inbounds i32, ptr %moves, i64 %37
  %40 = load i32, ptr %arrayidx24.i.us, align 4, !tbaa !13
  store i32 %40, ptr %arrayidx22.i.us, align 4, !tbaa !13
  store i32 %39, ptr %arrayidx24.i.us, align 4, !tbaa !13
  br label %if.end242

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %indvars.iv = phi i64 [ %32, %while.cond.preheader ], [ %indvars.iv.next, %while.cond.backedge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp.i = icmp slt i64 %indvars.iv, 9
  %cmp165.i.not = icmp slt i64 %indvars.iv.next, %31
  br i1 %cmp.i, label %for.cond.preheader.i, label %_ZL15remove_one_fastPiS_S_i.exit

for.cond.preheader.i:                             ; preds = %while.cond
  br i1 %cmp165.i.not, label %for.body.preheader.i, label %endpass.loopexit

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %41 = add nsw i64 %indvars.iv, 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ %41, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i ]
  %tmp.068.i = phi i32 [ undef, %for.body.preheader.i ], [ %spec.select60.i, %for.body.i ]
  %best.067.i = phi i32 [ -1000000, %for.body.preheader.i ], [ %spec.select.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds i32, ptr %move_ordering, i64 %indvars.iv.i
  %42 = load i32, ptr %arrayidx.i, align 4, !tbaa !13
  %cmp2.i = icmp sgt i32 %42, %best.067.i
  %spec.select.i = call i32 @llvm.smax.i32(i32 %42, i32 %best.067.i)
  %43 = trunc nsw i64 %indvars.iv.i to i32
  %spec.select60.i = select i1 %cmp2.i, i32 %43, i32 %tmp.068.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %num_moves.2, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %if.end12.i, label %for.body.i, !llvm.loop !15

if.end12.i:                                       ; preds = %for.body.i
  %spec.select.i.lcssa = phi i32 [ %spec.select.i, %for.body.i ]
  %spec.select60.i.lcssa = phi i32 [ %spec.select60.i, %for.body.i ]
  %cmp13.i = icmp sgt i32 %spec.select.i.lcssa, -1000000
  br i1 %cmp13.i, label %_ZL15remove_one_fastPiS_S_i.exit.thread558, label %endpass.loopexit

_ZL15remove_one_fastPiS_S_i.exit.thread558:       ; preds = %if.end12.i
  %44 = sext i32 %spec.select60.i.lcssa to i64
  %arrayidx16.i = getelementptr inbounds i32, ptr %move_ordering, i64 %indvars.iv.next
  %45 = load i32, ptr %arrayidx16.i, align 4, !tbaa !13
  %arrayidx18.i = getelementptr inbounds i32, ptr %move_ordering, i64 %44
  store i32 %45, ptr %arrayidx18.i, align 4, !tbaa !13
  store i32 %spec.select.i.lcssa, ptr %arrayidx16.i, align 4, !tbaa !13
  %arrayidx22.i = getelementptr inbounds i32, ptr %moves, i64 %indvars.iv.next
  %46 = load i32, ptr %arrayidx22.i, align 4, !tbaa !13
  %arrayidx24.i = getelementptr inbounds i32, ptr %moves, i64 %44
  %47 = load i32, ptr %arrayidx24.i, align 4, !tbaa !13
  store i32 %47, ptr %arrayidx22.i, align 4, !tbaa !13
  store i32 %46, ptr %arrayidx24.i, align 4, !tbaa !13
  br label %while.body

_ZL15remove_one_fastPiS_S_i.exit:                 ; preds = %while.cond
  br i1 %cmp165.i.not, label %while.body, label %endpass.loopexit

while.body:                                       ; preds = %_ZL15remove_one_fastPiS_S_i.exit, %_ZL15remove_one_fastPiS_S_i.exit.thread558
  br i1 %cmp163, label %if.then164, label %if.end178

if.then164:                                       ; preds = %while.body
  %arrayidx166 = getelementptr inbounds i32, ptr %moves, i64 %indvars.iv.next
  %48 = load i32, ptr %arrayidx166, align 4, !tbaa !13
  %shr = lshr i32 %48, 19
  %and = and i32 %shr, 15
  %idxprom167 = zext nneg i32 %and to i64
  %arrayidx168 = getelementptr inbounds nuw i32, ptr @material, i64 %idxprom167
  %49 = load i32, ptr %arrayidx168, align 4, !tbaa !13
  %50 = call i32 @llvm.abs.i32(i32 %49, i1 true)
  %cmp169.not = icmp sle i32 %50, %delta.0545
  %51 = and i32 %48, 61440
  %tobool175.not = icmp eq i32 %51, 0
  %or.cond521 = and i1 %tobool175.not, %cmp169.not
  br i1 %or.cond521, label %endpass.loopexit, label %if.end178

if.end178:                                        ; preds = %if.then164, %while.body
  %52 = trunc nsw i64 %indvars.iv.next to i32
  br i1 %or.cond, label %land.lhs.true182, label %if.end197.thread

land.lhs.true182:                                 ; preds = %if.end178
  %arrayidx184 = getelementptr inbounds i32, ptr %moves, i64 %indvars.iv.next
  %53 = load i32, ptr %arrayidx184, align 4, !tbaa !13
  %shr185 = lshr i32 %53, 19
  %and186 = and i32 %shr185, 15
  %cmp187.not = icmp eq i32 %and186, 13
  br i1 %cmp187.not, label %if.end197, label %land.lhs.true188

land.lhs.true188:                                 ; preds = %land.lhs.true182
  %idxprom193 = zext nneg i32 %and186 to i64
  %arrayidx194 = getelementptr inbounds nuw i32, ptr @material, i64 %idxprom193
  %54 = load i32, ptr %arrayidx194, align 4, !tbaa !13
  %55 = call i32 @llvm.abs.i32(i32 %54, i1 true)
  %cmp195 = icmp sgt i32 %55, %delta.0545
  br i1 %cmp195, label %while.cond.backedge, label %if.end197

while.cond.backedge:                              ; preds = %if.then226, %if.then199, %land.lhs.true188
  br label %while.cond, !llvm.loop !17

if.end197:                                        ; preds = %land.lhs.true188, %land.lhs.true182
  br i1 %cmp149, label %if.then199, label %if.then226

if.end197.thread:                                 ; preds = %if.end178
  br i1 %cmp149, label %if.then199, label %lor.lhs.false210

if.then199:                                       ; preds = %if.end197.thread, %if.end197
  %arrayidx201 = getelementptr inbounds i32, ptr %moves, i64 %indvars.iv.next
  %56 = load i32, ptr %arrayidx201, align 4, !tbaa !13
  %shr.i = lshr i32 %56, 6
  %and.i = and i32 %shr.i, 63
  %idxprom.i = zext nneg i32 %and.i to i64
  %arrayidx.i524 = getelementptr inbounds nuw i32, ptr %sboard.i, i64 %idxprom.i
  %57 = load i32, ptr %arrayidx.i524, align 4, !tbaa !13
  %sub.i = add nsw i32 %57, -1
  %and1.i = and i32 %56, 63
  %58 = load i32, ptr %s, align 8, !tbaa !18
  %idxprom2.i = sext i32 %58 to i64
  %arrayidx3.i = getelementptr inbounds [12 x [64 x i32]], ptr @history_hit, i64 %idxprom2.i
  %idxprom4.i = sext i32 %sub.i to i64
  %arrayidx5.i = getelementptr inbounds [64 x i32], ptr %arrayidx3.i, i64 %idxprom4.i
  %idxprom6.i = zext nneg i32 %and1.i to i64
  %arrayidx7.i = getelementptr inbounds nuw i32, ptr %arrayidx5.i, i64 %idxprom6.i
  %59 = load i32, ptr %arrayidx7.i, align 4, !tbaa !13
  %arrayidx10.i = getelementptr inbounds [12 x [64 x i32]], ptr @history_tot, i64 %idxprom2.i
  %arrayidx12.i = getelementptr inbounds [64 x i32], ptr %arrayidx10.i, i64 %idxprom4.i
  %arrayidx14.i = getelementptr inbounds nuw i32, ptr %arrayidx12.i, i64 %idxprom6.i
  %60 = load i32, ptr %arrayidx14.i, align 4, !tbaa !13
  %sub15.i = sub nsw i32 %60, %59
  %cmp.i525.not = icmp slt i32 %59, %sub15.i
  br i1 %cmp.i525.not, label %while.cond.backedge, label %if.then226

lor.lhs.false210:                                 ; preds = %if.end197.thread
  %arrayidx212 = getelementptr inbounds i32, ptr %moves, i64 %indvars.iv.next
  %61 = load i32, ptr %arrayidx212, align 4, !tbaa !13
  %shr213 = lshr i32 %61, 19
  %and214 = and i32 %shr213, 15
  %idxprom215 = zext nneg i32 %and214 to i64
  %arrayidx216 = getelementptr inbounds nuw i32, ptr @material, i64 %idxprom215
  %62 = load i32, ptr %arrayidx216, align 4, !tbaa !13
  %63 = call i32 @llvm.abs.i32(i32 %62, i1 true)
  %shr219 = lshr i32 %61, 6
  %and220 = and i32 %shr219, 63
  %idxprom221 = zext nneg i32 %and220 to i64
  %arrayidx222 = getelementptr inbounds nuw i32, ptr %sboard, i64 %idxprom221
  %64 = load i32, ptr %arrayidx222, align 4, !tbaa !13
  %idxprom223 = sext i32 %64 to i64
  %arrayidx224 = getelementptr inbounds i32, ptr @material, i64 %idxprom223
  %65 = load i32, ptr %arrayidx224, align 4, !tbaa !13
  %66 = call i32 @llvm.abs.i32(i32 %65, i1 true)
  %cmp225 = icmp samesign ult i32 %63, %66
  br i1 %cmp225, label %if.then226, label %if.end242.loopexit

if.then226:                                       ; preds = %lor.lhs.false210, %if.then199, %if.end197
  %67 = load i32, ptr %white_to_move227, align 4, !tbaa !12
  %tobool228.not = icmp eq i32 %67, 0
  %cond229 = zext i1 %tobool228.not to i32
  %arrayidx231 = getelementptr inbounds i32, ptr %moves, i64 %indvars.iv.next
  %68 = load i32, ptr %arrayidx231, align 4, !tbaa !13
  %shr232 = lshr i32 %68, 6
  %and233 = and i32 %shr232, 63
  %and236 = and i32 %68, 63
  %call237 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef %s, i32 noundef %cond229, i32 noundef %and233, i32 noundef %and236, i32 noundef 0)
  %cmp238 = icmp slt i32 %call237, -50
  br i1 %cmp238, label %while.cond.backedge, label %if.end242.loopexit

if.end242.loopexit:                               ; preds = %if.then226, %lor.lhs.false210
  %inc.i.lcssa577 = phi i32 [ %52, %lor.lhs.false210 ], [ %52, %if.then226 ]
  br label %if.end242

if.end242:                                        ; preds = %if.end242.loopexit, %_ZL15remove_one_fastPiS_S_i.exit.thread558.us, %_ZL15remove_one_fastPiS_S_i.exit.us
  %.us-phi575 = phi i32 [ %inc.i.us, %_ZL15remove_one_fastPiS_S_i.exit.thread558.us ], [ %inc.i.us, %_ZL15remove_one_fastPiS_S_i.exit.us ], [ %inc.i.lcssa577, %if.end242.loopexit ]
  %idxprom243 = sext i32 %.us-phi575 to i64
  %arrayidx244 = getelementptr inbounds i32, ptr %moves, i64 %idxprom243
  %69 = load i32, ptr %arrayidx244, align 4, !tbaa !13
  call void @_Z4makeP7state_ti(ptr noundef %s, i32 noundef %69)
  %70 = load i32, ptr %arrayidx244, align 4, !tbaa !13
  %call247 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %s, i32 noundef %70)
  %tobool248.not = icmp ne i32 %call247, 0
  br i1 %tobool248.not, label %if.then249, label %if.end295

if.then249:                                       ; preds = %if.end242
  %71 = load i64, ptr %hash, align 8, !tbaa !19
  %72 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 60), align 4, !tbaa !20
  %73 = load i32, ptr %ply, align 8, !tbaa !7
  %add251 = add nsw i32 %73, %72
  %74 = sext i32 %add251 to i64
  %75 = getelementptr i64, ptr %s, i64 %74
  %arrayidx254 = getelementptr i8, ptr %75, i64 4392
  store i64 %71, ptr %arrayidx254, align 8, !tbaa !21
  %76 = load i32, ptr %arrayidx244, align 4, !tbaa !13
  %77 = sext i32 %73 to i64
  %78 = getelementptr i32, ptr %s, i64 %77
  %arrayidx260 = getelementptr i8, ptr %78, i64 2540
  store i32 %76, ptr %arrayidx260, align 4, !tbaa !13
  %call261 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %s)
  %79 = load i32, ptr %ply, align 8, !tbaa !7
  %idxprom264 = sext i32 %79 to i64
  %arrayidx265 = getelementptr inbounds i32, ptr %checks, i64 %idxprom264
  store i32 %call261, ptr %arrayidx265, align 4, !tbaa !13
  %add268 = sub i32 60, %alpha.addr.2.ph
  %tobool269 = icmp ne i32 %call261, 0
  %conv = zext i1 %tobool269 to i32
  %call271 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef %s, i32 noundef %sub266, i32 noundef %add268, i32 noundef %conv)
  %sub272 = sub nsw i32 0, %call271
  %cmp275 = icmp sge i32 %alpha.addr.2.ph, %sub272
  %or.cond522.not = select i1 %cmp149, i1 %cmp275, i1 false
  br i1 %or.cond522.not, label %if.end295, label %if.then276

if.then276:                                       ; preds = %if.then249
  %sub267 = sub nsw i32 0, %alpha.addr.2.ph
  %80 = or i32 %call261, %13
  %or.cond361.not = icmp eq i32 %80, 0
  %sub286.sub284.v = select i1 %or.cond361.not, i32 -8, i32 -1
  %sub286.sub284 = select i1 %cmp149, i32 0, i32 %sub286.sub284.v
  %newdepth.0 = add nsw i32 %depth, %sub286.sub284
  %call292 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %s, i32 noundef %sub266, i32 noundef %sub267, i32 noundef %newdepth.0, i32 noundef %add291)
  %sub293 = sub nsw i32 0, %call292
  br label %if.end295

if.end295:                                        ; preds = %if.then276, %if.then249, %if.end242
  %no_moves.2 = phi i32 [ %no_moves.1.ph, %if.end242 ], [ 0, %if.then249 ], [ 0, %if.then276 ]
  %score.3 = phi i32 [ %score.1.ph, %if.end242 ], [ %score.1.ph, %if.then249 ], [ %sub293, %if.then276 ]
  %81 = load i32, ptr %arrayidx244, align 4, !tbaa !13
  call void @_Z6unmakeP7state_ti(ptr noundef %s, i32 noundef %81)
  %82 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 36096), align 8, !tbaa !22
  %tobool298.not = icmp eq i32 %82, 0
  br i1 %tobool298.not, label %if.end300, label %cleanup340.loopexit

if.end300:                                        ; preds = %if.end295
  %cmp301 = icmp sgt i32 %score.3, %alpha.addr.2.ph
  %or.cond362 = and i1 %tobool248.not, %cmp301
  br i1 %or.cond362, label %if.then304, label %if.end312

if.then304:                                       ; preds = %if.end300
  %83 = load i32, ptr %arrayidx244, align 4, !tbaa !13
  %call307 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %83)
  %conv308 = zext i16 %call307 to i32
  %cmp309.not = icmp slt i32 %score.3, %beta
  br i1 %cmp309.not, label %if.end312, label %if.then310

if.then310:                                       ; preds = %if.then304
  %conv308.lcssa = phi i32 [ %conv308, %if.then304 ]
  %score.3.lcssa594 = phi i32 [ %score.3, %if.then304 ]
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %s, i32 noundef %score.3.lcssa594, i32 noundef %alpha, i32 noundef %beta, i32 noundef %conv308.lcssa, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %cleanup340

if.end312:                                        ; preds = %if.then304, %if.end300
  %sbest.2 = phi i32 [ %sbest.1.ph, %if.end300 ], [ %conv308, %if.then304 ]
  %alpha.addr.3 = phi i32 [ %alpha.addr.2.ph, %if.end300 ], [ %score.3, %if.then304 ]
  br label %while.cond.outer, !llvm.loop !17

endpass.loopexit:                                 ; preds = %if.then164, %_ZL15remove_one_fastPiS_S_i.exit, %if.end12.i, %for.cond.preheader.i
  %sbest.1.ph.lcssa = phi i32 [ %sbest.1.ph, %for.cond.preheader.i ], [ %sbest.1.ph, %if.end12.i ], [ %sbest.1.ph, %if.then164 ], [ %sbest.1.ph, %_ZL15remove_one_fastPiS_S_i.exit ]
  %no_moves.1.ph.lcssa = phi i32 [ %no_moves.1.ph, %for.cond.preheader.i ], [ %no_moves.1.ph, %if.end12.i ], [ %no_moves.1.ph, %if.then164 ], [ %no_moves.1.ph, %_ZL15remove_one_fastPiS_S_i.exit ]
  %score.1.ph.lcssa = phi i32 [ %score.1.ph, %for.cond.preheader.i ], [ %score.1.ph, %if.end12.i ], [ %score.1.ph, %if.then164 ], [ %score.1.ph, %_ZL15remove_one_fastPiS_S_i.exit ]
  %alpha.addr.2.ph.lcssa = phi i32 [ %alpha.addr.2.ph, %for.cond.preheader.i ], [ %alpha.addr.2.ph, %if.end12.i ], [ %alpha.addr.2.ph, %if.then164 ], [ %alpha.addr.2.ph, %_ZL15remove_one_fastPiS_S_i.exit ]
  br label %endpass

endpass.loopexit576:                              ; preds = %if.end12.i.us, %for.cond.preheader.i.us, %_ZL15remove_one_fastPiS_S_i.exit.us
  %sbest.1.ph.lcssa590 = phi i32 [ %sbest.1.ph, %if.end12.i.us ], [ %sbest.1.ph, %for.cond.preheader.i.us ], [ %sbest.1.ph, %_ZL15remove_one_fastPiS_S_i.exit.us ]
  %no_moves.1.ph.lcssa586 = phi i32 [ %no_moves.1.ph, %if.end12.i.us ], [ %no_moves.1.ph, %for.cond.preheader.i.us ], [ %no_moves.1.ph, %_ZL15remove_one_fastPiS_S_i.exit.us ]
  %score.1.ph.lcssa582 = phi i32 [ %score.1.ph, %if.end12.i.us ], [ %score.1.ph, %for.cond.preheader.i.us ], [ %score.1.ph, %_ZL15remove_one_fastPiS_S_i.exit.us ]
  %alpha.addr.2.ph.lcssa578 = phi i32 [ %alpha.addr.2.ph, %if.end12.i.us ], [ %alpha.addr.2.ph, %for.cond.preheader.i.us ], [ %alpha.addr.2.ph, %_ZL15remove_one_fastPiS_S_i.exit.us ]
  br label %endpass

endpass:                                          ; preds = %endpass.loopexit576, %endpass.loopexit
  %sbest.1.ph593 = phi i32 [ %sbest.1.ph.lcssa590, %endpass.loopexit576 ], [ %sbest.1.ph.lcssa, %endpass.loopexit ]
  %no_moves.1.ph589 = phi i32 [ %no_moves.1.ph.lcssa586, %endpass.loopexit576 ], [ %no_moves.1.ph.lcssa, %endpass.loopexit ]
  %score.1.ph585 = phi i32 [ %score.1.ph.lcssa582, %endpass.loopexit576 ], [ %score.1.ph.lcssa, %endpass.loopexit ]
  %alpha.addr.2.ph581 = phi i32 [ %alpha.addr.2.ph.lcssa578, %endpass.loopexit576 ], [ %alpha.addr.2.ph.lcssa, %endpass.loopexit ]
  %or.cond363 = and i1 %tobool313, %cmp163
  br i1 %or.cond363, label %mpass.backedge, label %if.else318

mpass.backedge:                                   ; preds = %if.else318, %endpass
  %cmp149.be = xor i1 %or.cond363, true
  br label %mpass

if.else318:                                       ; preds = %endpass
  %or.cond366.reass = and i1 %cmp144, %invariant.op
  %cmp326 = icmp sgt i32 %add, %alpha.addr.2.ph581
  %or.cond523 = select i1 %or.cond366.reass, i1 %cmp326, i1 false
  br i1 %or.cond523, label %mpass.backedge, label %if.end332

if.end332:                                        ; preds = %if.else318
  %sbest.1.ph593.lcssa = phi i32 [ %sbest.1.ph593, %if.else318 ]
  %no_moves.1.ph589.lcssa = phi i32 [ %no_moves.1.ph589, %if.else318 ]
  %alpha.addr.2.ph581.lcssa = phi i32 [ %alpha.addr.2.ph581, %if.else318 ]
  %tobool333 = icmp ne i32 %no_moves.1.ph589.lcssa, 0
  %or.cond365 = and i1 %tobool31, %tobool333
  br i1 %or.cond365, label %if.then336, label %if.end339

if.then336:                                       ; preds = %if.end332
  %84 = load i32, ptr %ply, align 8, !tbaa !7
  %add338 = add nsw i32 %84, -32000
  br label %if.end339

if.end339:                                        ; preds = %if.then336, %if.end332
  %alpha.addr.4 = phi i32 [ %add338, %if.then336 ], [ %alpha.addr.2.ph581.lcssa, %if.end332 ]
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %s, i32 noundef %alpha.addr.4, i32 noundef %alpha, i32 noundef %beta, i32 noundef %sbest.1.ph593.lcssa, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %cleanup340

cleanup340.loopexit:                              ; preds = %if.end295
  br label %cleanup340

cleanup340:                                       ; preds = %cleanup340.loopexit, %if.end339, %if.then310, %if.then108, %if.else98, %if.then92, %if.then74, %if.else64, %if.then58, %if.then40, %if.then34, %if.then26, %sw.bb17, %sw.bb13, %sw.bb, %if.then9, %if.end
  %retval.1 = phi i32 [ %cond, %if.then9 ], [ %call27, %if.then26 ], [ %score.3.lcssa594, %if.then310 ], [ %alpha.addr.4, %if.end339 ], [ %call30, %if.then34 ], [ %add38, %if.then40 ], [ %8, %sw.bb ], [ 0, %if.end ], [ %9, %sw.bb13 ], [ %10, %sw.bb17 ], [ %add99, %if.else98 ], [ %add93, %if.then92 ], [ %add65, %if.else64 ], [ %add59, %if.then58 ], [ %add106, %if.then108 ], [ %add72, %if.then74 ], [ 0, %cleanup340.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %move_ordering) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %moves) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %xdummy) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %bound) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %best) #5
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare hidden fastcc noundef range(i32 0, 2) i32 @_ZL17search_time_checkP7state_t(i64) unnamed_addr #0

declare noundef i32 @_Z7is_drawP11gamestate_tP7state_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z4evalP7state_tiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z13retrieve_evalP7state_t(ptr noundef) local_unnamed_addr #2

declare void @_Z7StoreTTP7state_tiiijiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z15gen_good_checksP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z9gen_quietP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare hidden fastcc void @_ZL16fast_order_movesP7state_tPiS1_ij(ptr noundef readonly captures(none), ptr noundef nonnull readonly captures(none), ptr noundef nonnull writeonly captures(none), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

declare noundef i32 @_Z3seeP7state_tiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z4makeP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z11check_legalP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z8in_checkP7state_t(ptr noundef) local_unnamed_addr #2

declare void @_Z6unmakeP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i16 @_Z12compact_movei(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!0 = !{!1, !5, i64 4080}
!1 = !{!"_ZTS7state_t", !2, i64 0, !3, i64 4, !5, i64 264, !5, i64 272, !5, i64 280, !3, i64 288, !2, i64 392, !2, i64 396, !3, i64 400, !2, i64 452, !2, i64 456, !2, i64 460, !2, i64 464, !2, i64 468, !2, i64 472, !2, i64 476, !5, i64 480, !5, i64 488, !3, i64 496, !3, i64 2544, !3, i64 2800, !3, i64 3056, !5, i64 4080, !5, i64 4088, !2, i64 4096, !3, i64 4100, !2, i64 4356, !2, i64 4360, !2, i64 4364, !2, i64 4368, !2, i64 4372, !2, i64 4376, !2, i64 4380, !2, i64 4384, !2, i64 4388, !2, i64 4392, !3, i64 4400}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"long long", !3, i64 0}
!6 = !{!1, !5, i64 4088}
!7 = !{!1, !2, i64 472}
!8 = !{!1, !2, i64 4096}
!9 = !{!1, !2, i64 476}
!10 = !{!11, !2, i64 12}
!11 = !{!"_ZTS11gamestate_t", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !2, i64 48, !2, i64 52, !2, i64 56, !2, i64 60, !3, i64 64, !3, i64 4064, !5, i64 36064, !2, i64 36072, !2, i64 36076, !2, i64 36080, !2, i64 36084, !2, i64 36088, !2, i64 36092, !2, i64 36096, !2, i64 36100}
!12 = !{!1, !2, i64 460}
!13 = !{!2, !2, i64 0}
!14 = !{!11, !2, i64 20}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!1, !2, i64 0}
!19 = !{!1, !5, i64 480}
!20 = !{!11, !2, i64 60}
!21 = !{!5, !5, i64 0}
!22 = !{!11, !2, i64 36096}
