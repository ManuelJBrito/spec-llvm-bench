; ModuleID = '/tmp/tmp.GqtZ2L7Rlr/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/search.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }

@history_h = external dso_local local_unnamed_addr global [8 x [12 x [64 x i32]]], align 16
@gamestate = external global %struct.gamestate_t, align 8
@material = external local_unnamed_addr constant [14 x i32], align 16
@root_scores = external local_unnamed_addr global [240 x i32], align 16
@uci_multipv = external local_unnamed_addr global i32, align 4
@uci_limitstrength = external local_unnamed_addr global i32, align 4
@uci_elo = external local_unnamed_addr global i32, align 4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #0

declare noundef i32 @_Z3seeP7state_tiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i16 @_Z12compact_movei(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden fastcc void @_ZL11order_movesP7state_tPiS1_ij(ptr noundef %s, ptr noundef nonnull readonly captures(none) %moves, ptr noundef nonnull writeonly captures(none) %move_ordering, i32 noundef %num_moves, i32 noundef %best) unnamed_addr #2 {
entry:
  %cmp220 = icmp sgt i32 %num_moves, 0
  br i1 %cmp220, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ply = getelementptr inbounds nuw i8, ptr %s, i64 472
  %ply21 = getelementptr inbounds nuw i8, ptr %s, i64 472
  %checks.i = getelementptr inbounds nuw i8, ptr %s, i64 4100
  %cmp5.i = icmp slt i32 %num_moves, 6
  %cmp8.i = icmp samesign ult i32 %num_moves, 9
  %spec.select.i = select i1 %cmp8.i, i32 40, i32 100
  %.pn.i = select i1 %cmp5.i, i32 20, i32 %spec.select.i
  %arrayidx19.i = getelementptr inbounds nuw i8, ptr %s, i64 436
  %arrayidx21.i = getelementptr inbounds nuw i8, ptr %s, i64 428
  %arrayidx24.i = getelementptr inbounds nuw i8, ptr %s, i64 444
  %arrayidx27.i = getelementptr inbounds nuw i8, ptr %s, i64 412
  %arrayidx30.i = getelementptr inbounds nuw i8, ptr %s, i64 440
  %arrayidx33.i = getelementptr inbounds nuw i8, ptr %s, i64 448
  %arrayidx36.i = getelementptr inbounds nuw i8, ptr %s, i64 416
  %arrayidx39.i = getelementptr inbounds nuw i8, ptr %s, i64 432
  %arrayidx42.i = getelementptr inbounds nuw i8, ptr %s, i64 404
  %arrayidx45.i = getelementptr inbounds nuw i8, ptr %s, i64 408
  %sboard.i = getelementptr inbounds nuw i8, ptr %s, i64 4
  %white_to_move.i = getelementptr inbounds nuw i8, ptr %s, i64 460
  %killerstack = getelementptr inbounds nuw i8, ptr %s, i64 3056
  %ply76 = getelementptr inbounds nuw i8, ptr %s, i64 472
  %sboard117 = getelementptr inbounds nuw i8, ptr %s, i64 4
  %sboard = getelementptr inbounds nuw i8, ptr %s, i64 4
  %white_to_move = getelementptr inbounds nuw i8, ptr %s, i64 460
  %wide.trip.count = zext i32 %num_moves to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds nuw i32, ptr %moves, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !0
  %shr = lshr i32 %0, 6
  %and = and i32 %shr, 63
  %and3 = and i32 %0, 63
  %shr6 = lshr i32 %0, 12
  %and7 = and i32 %shr6, 15
  %shr10 = lshr i32 %0, 19
  %and11 = and i32 %shr10, 15
  %1 = load i32, ptr @uci_multipv, align 4, !tbaa !0
  %cmp12 = icmp sgt i32 %1, 1
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, ptr %ply, align 8, !tbaa !4
  %cmp13 = icmp eq i32 %2, 1
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 20), align 4
  %cmp15 = icmp sgt i32 %3, 2
  %or.cond = select i1 %cmp13, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %arrayidx17 = getelementptr inbounds nuw i32, ptr @root_scores, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx17, align 4, !tbaa !0
  %add = add nsw i32 %4, 100000
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %move_ordering, i64 %indvars.iv
  store i32 %add, ptr %arrayidx19, align 4, !tbaa !0
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %for.body
  %5 = load i32, ptr @uci_limitstrength, align 4, !tbaa !0
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end33, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.end
  %6 = load i32, ptr %ply21, align 8, !tbaa !4
  %cmp22 = icmp sgt i32 %6, 1
  br i1 %cmp22, label %if.then23, label %if.end33

if.then23:                                        ; preds = %land.lhs.true20
  %arrayidx27 = getelementptr inbounds nuw i32, ptr %move_ordering, i64 %indvars.iv
  %idxprom.i = zext nneg i32 %6 to i64
  %arrayidx.i = getelementptr inbounds nuw i32, ptr %checks.i, i64 %idxprom.i
  %7 = load i32, ptr %arrayidx.i, align 4, !tbaa !0
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end33

if.end.i:                                         ; preds = %if.then23
  %8 = load i32, ptr @uci_elo, align 4, !tbaa !0
  %call.i = tail call noundef i32 @_Z14elo_to_blunderi(i32 noundef %8)
  %cmp.i = icmp sgt i32 %call.i, 99
  br i1 %cmp.i, label %if.end33, label %if.end2.i

if.end2.i:                                        ; preds = %if.end.i
  %9 = load i32, ptr @uci_elo, align 4, !tbaa !0
  %call3.i = tail call noundef i32 @_Z14elo_to_blunderi(i32 noundef %9)
  %call4.i = tail call noundef i32 @_Z8myrandomv()
  %rem.i = urem i32 %call4.i, 200
  %prob.0.i = sub i32 %.pn.i, %call3.i
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 20), align 4, !tbaa !7
  %cmp13.i = icmp slt i32 %10, 5
  %reass.sub.i = add i32 %prob.0.i, 5
  %add.i = sub i32 %reass.sub.i, %10
  %prob.1.i = select i1 %cmp13.i, i32 %add.i, i32 %prob.0.i
  %11 = load i32, ptr %ply21, align 8, !tbaa !4
  %mul.i = shl nsw i32 %11, 1
  %12 = load i32, ptr %arrayidx19.i, align 4, !tbaa !0
  %13 = load i32, ptr %arrayidx21.i, align 4, !tbaa !0
  %14 = load i32, ptr %arrayidx24.i, align 4, !tbaa !0
  %15 = load i32, ptr %arrayidx27.i, align 4, !tbaa !0
  %16 = load i32, ptr %arrayidx30.i, align 8, !tbaa !0
  %17 = load i32, ptr %arrayidx33.i, align 8, !tbaa !0
  %18 = load i32, ptr %arrayidx36.i, align 8, !tbaa !0
  %19 = load i32, ptr %arrayidx39.i, align 8, !tbaa !0
  %20 = load i32, ptr %arrayidx42.i, align 4, !tbaa !0
  %21 = load i32, ptr %arrayidx45.i, align 8, !tbaa !0
  %add22.i = add i32 %prob.1.i, %mul.i
  %add25.i = add i32 %add22.i, %12
  %add28.i = add i32 %add25.i, %13
  %add31.i = add i32 %add28.i, %14
  %add34.i = add i32 %add31.i, %15
  %add37.i = add i32 %add34.i, %16
  %add40.i = add i32 %add37.i, %17
  %add43.i = add i32 %add40.i, %18
  %add46.i = add i32 %add43.i, %19
  %add18.i = add i32 %add46.i, %20
  %add47.i = add i32 %add18.i, %21
  %idxprom50.i = zext nneg i32 %and to i64
  %arrayidx51.i = getelementptr inbounds nuw i32, ptr %sboard.i, i64 %idxprom50.i
  %22 = load i32, ptr %arrayidx51.i, align 4, !tbaa !0
  %cmp52.i = icmp eq i32 %and11, %22
  %sub54.i = add nsw i32 %add47.i, -30
  %prob.2.i = select i1 %cmp52.i, i32 %sub54.i, i32 %add47.i
  %.off227.i = add i32 %22, -1
  %switch228.i = icmp ult i32 %.off227.i, 2
  %sub69.i = add nsw i32 %prob.2.i, -30
  %spec.select229.i = select i1 %switch228.i, i32 %sub69.i, i32 %prob.2.i
  %cmp73.not.i = icmp eq i32 %and11, 13
  %sub75.i = add nsw i32 %spec.select229.i, -10
  %spec.select223.i = select i1 %cmp73.not.i, i32 %spec.select229.i, i32 %sub75.i
  %and.off.i = add nsw i32 %and11, -9
  %switch.i = icmp ult i32 %and.off.i, 2
  %sub85.i = add nsw i32 %spec.select223.i, -30
  %spec.select224.i = select i1 %switch.i, i32 %sub85.i, i32 %spec.select223.i
  switch i32 %and7, label %if.then101.i [
    i32 0, label %if.end103.i
    i32 13, label %if.end103.i
    i32 9, label %if.end103.i
    i32 10, label %if.end103.i
  ]

if.then101.i:                                     ; preds = %if.end2.i
  %add102.i = add nsw i32 %spec.select224.i, 40
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then101.i, %if.end2.i, %if.end2.i, %if.end2.i, %if.end2.i
  %prob.6.i = phi i32 [ %add102.i, %if.then101.i ], [ %spec.select224.i, %if.end2.i ], [ %spec.select224.i, %if.end2.i ], [ %spec.select224.i, %if.end2.i ], [ %spec.select224.i, %if.end2.i ]
  %call107.i = tail call noundef i32 @_Z12taxicab_distii(i32 noundef %and, i32 noundef %and3)
  %mul108.i = shl nsw i32 %call107.i, 1
  %add109.i = add nsw i32 %mul108.i, %prob.6.i
  %23 = load i32, ptr %arrayidx51.i, align 4, !tbaa !0
  %.off.i = add i32 %23, -3
  %switch225.i = icmp ult i32 %.off.i, 2
  %add124.i = add nsw i32 %add109.i, 20
  %spec.select226.i = select i1 %switch225.i, i32 %add124.i, i32 %add109.i
  %24 = load i32, ptr %white_to_move.i, align 4, !tbaa !9
  %tobool126.not.i = icmp eq i32 %24, 0
  %call147.i = tail call noundef i32 @_Z4ranki(i32 noundef %and)
  %call149.i = tail call noundef i32 @_Z4ranki(i32 noundef %and3)
  br i1 %tobool126.not.i, label %if.else144.i, label %if.then127.i

if.then127.i:                                     ; preds = %if.end103.i
  %cmp133.i = icmp sgt i32 %call147.i, %call149.i
  br i1 %cmp133.i, label %if.end161.sink.split.i, label %if.end161.i

if.else144.i:                                     ; preds = %if.end103.i
  %cmp150.i = icmp slt i32 %call147.i, %call149.i
  br i1 %cmp150.i, label %if.end161.sink.split.i, label %if.end161.i

if.end161.sink.split.i:                           ; preds = %if.else144.i, %if.then127.i
  %call154.i = tail call noundef i32 @_Z4ranki(i32 noundef %and)
  %call156.i = tail call noundef i32 @_Z4ranki(i32 noundef %and3)
  %sub157.i = sub nsw i32 %call154.i, %call156.i
  %mul158.i = shl nsw i32 %sub157.i, 2
  %add159.i = add nsw i32 %mul158.i, %spec.select226.i
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.end161.sink.split.i, %if.else144.i, %if.then127.i
  %prob.8.i = phi i32 [ %spec.select226.i, %if.then127.i ], [ %spec.select226.i, %if.else144.i ], [ %add159.i, %if.end161.sink.split.i ]
  %cmp162.not.i = icmp slt i32 %prob.8.i, %rem.i
  br i1 %cmp162.not.i, label %if.end33, label %if.then29

if.then29:                                        ; preds = %if.end161.i
  store i32 -1000000, ptr %arrayidx27, align 4, !tbaa !0
  br label %for.inc

if.end33:                                         ; preds = %if.end161.i, %if.end.i, %if.then23, %land.lhs.true20, %if.end
  %25 = load i32, ptr %arrayidx, align 4, !tbaa !0
  %call36 = tail call noundef zeroext i16 @_Z12compact_movei(i32 noundef %25)
  %conv = zext i16 %call36 to i32
  %cmp37 = icmp eq i32 %best, %conv
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end33
  %arrayidx40 = getelementptr inbounds nuw i32, ptr %move_ordering, i64 %indvars.iv
  store i32 128000000, ptr %arrayidx40, align 4, !tbaa !0
  br label %for.inc

if.else:                                          ; preds = %if.end33
  %cmp41 = icmp ne i32 %and11, 13
  %tobool42 = icmp ne i32 %and7, 0
  %or.cond143 = select i1 %cmp41, i1 true, i1 %tobool42
  br i1 %or.cond143, label %if.then43, label %if.else73

if.then43:                                        ; preds = %if.else
  %idxprom44 = zext nneg i32 %and11 to i64
  %arrayidx45 = getelementptr inbounds nuw i32, ptr @material, i64 %idxprom44
  %26 = load i32, ptr %arrayidx45, align 4, !tbaa !0
  %27 = tail call i32 @llvm.abs.i32(i32 %26, i1 true)
  %idxprom46 = zext nneg i32 %and to i64
  %arrayidx47 = getelementptr inbounds nuw i32, ptr %sboard, i64 %idxprom46
  %28 = load i32, ptr %arrayidx47, align 4, !tbaa !0
  %idxprom48 = sext i32 %28 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr @material, i64 %idxprom48
  %29 = load i32, ptr %arrayidx49, align 4, !tbaa !0
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 true)
  %sub = sub nsw i32 %27, %30
  %cmp50 = icmp sgt i32 %sub, 0
  br i1 %cmp50, label %if.then65, label %if.end63

if.end63:                                         ; preds = %if.then43
  %31 = load i32, ptr %white_to_move, align 4, !tbaa !9
  %tobool61.not = icmp eq i32 %31, 0
  %cond = zext i1 %tobool61.not to i32
  %call62 = tail call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %s, i32 noundef %cond, i32 noundef %and, i32 noundef %and3, i32 noundef %and7)
  %cmp64 = icmp sgt i32 %call62, -1
  br i1 %cmp64, label %if.then65, label %if.else69

if.then65:                                        ; preds = %if.end63, %if.then43
  %seev.0219 = phi i32 [ %call62, %if.end63 ], [ %sub, %if.then43 ]
  %add66 = add nuw nsw i32 %seev.0219, 10000000
  %arrayidx68 = getelementptr inbounds nuw i32, ptr %move_ordering, i64 %indvars.iv
  store i32 %add66, ptr %arrayidx68, align 4, !tbaa !0
  br label %for.inc

if.else69:                                        ; preds = %if.end63
  %arrayidx71 = getelementptr inbounds nuw i32, ptr %move_ordering, i64 %indvars.iv
  store i32 %call62, ptr %arrayidx71, align 4, !tbaa !0
  br label %for.inc

if.else73:                                        ; preds = %if.else
  %32 = load i32, ptr %arrayidx, align 4, !tbaa !0
  %33 = load i32, ptr %ply76, align 8, !tbaa !4
  %idxprom77 = sext i32 %33 to i64
  %arrayidx78 = getelementptr inbounds %struct.anon, ptr %killerstack, i64 %idxprom77
  %34 = load i32, ptr %arrayidx78, align 8, !tbaa !10
  %cmp79 = icmp eq i32 %32, %34
  br i1 %cmp79, label %if.then80, label %if.else83

if.then80:                                        ; preds = %if.else73
  %arrayidx82 = getelementptr inbounds nuw i32, ptr %move_ordering, i64 %indvars.iv
  store i32 8000000, ptr %arrayidx82, align 4, !tbaa !0
  br label %for.inc

if.else83:                                        ; preds = %if.else73
  %killer2 = getelementptr inbounds nuw i8, ptr %arrayidx78, i64 4
  %35 = load i32, ptr %killer2, align 4, !tbaa !12
  %cmp90 = icmp eq i32 %32, %35
  br i1 %cmp90, label %if.then91, label %if.else94

if.then91:                                        ; preds = %if.else83
  %arrayidx93 = getelementptr inbounds nuw i32, ptr %move_ordering, i64 %indvars.iv
  store i32 7000000, ptr %arrayidx93, align 4, !tbaa !0
  br label %for.inc

if.else94:                                        ; preds = %if.else83
  %killer3 = getelementptr inbounds nuw i8, ptr %arrayidx78, i64 8
  %36 = load i32, ptr %killer3, align 8, !tbaa !13
  %cmp101 = icmp eq i32 %32, %36
  br i1 %cmp101, label %if.then102, label %if.else105

if.then102:                                       ; preds = %if.else94
  %arrayidx104 = getelementptr inbounds nuw i32, ptr %move_ordering, i64 %indvars.iv
  store i32 6000000, ptr %arrayidx104, align 4, !tbaa !0
  br label %for.inc

if.else105:                                       ; preds = %if.else94
  %killer4 = getelementptr inbounds nuw i8, ptr %arrayidx78, i64 12
  %37 = load i32, ptr %killer4, align 4, !tbaa !14
  %cmp112 = icmp eq i32 %32, %37
  br i1 %cmp112, label %if.then113, label %if.else116

if.then113:                                       ; preds = %if.else105
  %arrayidx115 = getelementptr inbounds nuw i32, ptr %move_ordering, i64 %indvars.iv
  store i32 5000000, ptr %arrayidx115, align 4, !tbaa !0
  br label %for.inc

if.else116:                                       ; preds = %if.else105
  %idxprom118 = zext nneg i32 %and to i64
  %arrayidx119 = getelementptr inbounds nuw i32, ptr %sboard117, i64 %idxprom118
  %38 = load i32, ptr %arrayidx119, align 4, !tbaa !0
  %39 = load i32, ptr %s, align 8, !tbaa !15
  %idxprom121 = sext i32 %39 to i64
  %arrayidx122 = getelementptr inbounds [12 x [64 x i32]], ptr @history_h, i64 %idxprom121
  %40 = sext i32 %38 to i64
  %41 = getelementptr [64 x i32], ptr %arrayidx122, i64 %40
  %arrayidx124 = getelementptr i8, ptr %41, i64 -256
  %idxprom125 = zext nneg i32 %and3 to i64
  %arrayidx126 = getelementptr inbounds nuw i32, ptr %arrayidx124, i64 %idxprom125
  %42 = load i32, ptr %arrayidx126, align 4, !tbaa !0
  %arrayidx133 = getelementptr inbounds nuw i32, ptr %arrayidx124, i64 %idxprom118
  %43 = load i32, ptr %arrayidx133, align 4, !tbaa !0
  %sub134 = sub nsw i32 %42, %43
  %arrayidx136 = getelementptr inbounds nuw i32, ptr %move_ordering, i64 %indvars.iv
  store i32 %sub134, ptr %arrayidx136, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.else116, %if.then113, %if.then102, %if.then91, %if.then80, %if.else69, %if.then65, %if.then38, %if.then29, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.body, label %for.end.loopexit, !llvm.loop !16

for.end.loopexit:                                 ; preds = %for.inc
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  ret void
}

declare noundef i32 @_Z4ranki(i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z14elo_to_blunderi(i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z8myrandomv() local_unnamed_addr #1

declare noundef i32 @_Z12taxicab_distii(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !1, i64 0}
!1 = !{!"int", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!5, !1, i64 472}
!5 = !{!"_ZTS7state_t", !1, i64 0, !2, i64 4, !6, i64 264, !6, i64 272, !6, i64 280, !2, i64 288, !1, i64 392, !1, i64 396, !2, i64 400, !1, i64 452, !1, i64 456, !1, i64 460, !1, i64 464, !1, i64 468, !1, i64 472, !1, i64 476, !6, i64 480, !6, i64 488, !2, i64 496, !2, i64 2544, !2, i64 2800, !2, i64 3056, !6, i64 4080, !6, i64 4088, !1, i64 4096, !2, i64 4100, !1, i64 4356, !1, i64 4360, !1, i64 4364, !1, i64 4368, !1, i64 4372, !1, i64 4376, !1, i64 4380, !1, i64 4384, !1, i64 4388, !1, i64 4392, !2, i64 4400}
!6 = !{!"long long", !2, i64 0}
!7 = !{!8, !1, i64 20}
!8 = !{!"_ZTS11gamestate_t", !1, i64 0, !1, i64 4, !1, i64 8, !1, i64 12, !1, i64 16, !1, i64 20, !1, i64 24, !1, i64 28, !1, i64 32, !1, i64 36, !1, i64 40, !1, i64 44, !1, i64 48, !1, i64 52, !1, i64 56, !1, i64 60, !2, i64 64, !2, i64 4064, !6, i64 36064, !1, i64 36072, !1, i64 36076, !1, i64 36080, !1, i64 36084, !1, i64 36088, !1, i64 36092, !1, i64 36096, !1, i64 36100}
!9 = !{!5, !1, i64 460}
!10 = !{!11, !1, i64 0}
!11 = !{!"_ZTSN7state_tUt_E", !1, i64 0, !1, i64 4, !1, i64 8, !1, i64 12}
!12 = !{!11, !1, i64 4}
!13 = !{!11, !1, i64 8}
!14 = !{!11, !1, i64 12}
!15 = !{!5, !1, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
