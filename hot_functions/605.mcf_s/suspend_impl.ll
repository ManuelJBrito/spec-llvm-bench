; ModuleID = '/tmp/tmp.1r7KbDd3yv/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/505.mcf_r/src/implicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare void @refresh_neighbour_lists(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @getOriginalArcPosition(ptr noundef, i64 noundef) #1

declare i64 @getArcPosition(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @suspend_impl(ptr noundef %net, i64 noundef %threshold, i64 noundef %all) local_unnamed_addr #2 {
entry:
  %max_elems = getelementptr inbounds nuw i8, ptr %net, i64 640
  store i64 4000, ptr %max_elems, align 8
  %m = getelementptr inbounds nuw i8, ptr %net, i64 424
  %0 = load i64, ptr %m, align 8
  %sub = add nsw i64 %0, -1
  %div = sdiv i64 %sub, 4000
  %add = add nsw i64 %div, 1
  %nr_group = getelementptr inbounds nuw i8, ptr %net, i64 624
  store i64 %add, ptr %nr_group, align 8
  %rem = srem i64 %0, 4000
  %sub3.neg = add nsw i64 %rem, -4000
  %sub4 = add nsw i64 %sub3.neg, %add
  %full_groups = getelementptr inbounds nuw i8, ptr %net, i64 632
  store i64 %sub4, ptr %full_groups, align 8
  %cmp158 = icmp slt i64 %sub4, 0
  br i1 %cmp158, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %max_elems.promoted = load i64, ptr %max_elems, align 8
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %dec159 = phi i64 [ %max_elems.promoted, %while.body.lr.ph ], [ %dec, %while.body ]
  %1 = phi i64 [ %sub4, %while.body.lr.ph ], [ %add8, %while.body ]
  %add8 = add nsw i64 %1, %add
  %dec = add nsw i64 %dec159, -1
  %cmp = icmp slt i64 %add8, 0
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge, !llvm.loop !0

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %add8.lcssa = phi i64 [ %add8, %while.body ]
  %dec.lcssa = phi i64 [ %dec, %while.body ]
  store i64 %add8.lcssa, ptr %full_groups, align 8
  store i64 %dec.lcssa, ptr %max_elems, align 8
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %tobool.not = icmp eq i64 %all, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.end
  %m_impl = getelementptr inbounds nuw i8, ptr %net, i64 440
  %2 = load i64, ptr %m_impl, align 8
  br label %if.end48

if.else:                                          ; preds = %while.end
  %m_impl12 = getelementptr inbounds nuw i8, ptr %net, i64 440
  %3 = load i64, ptr %m_impl12, align 8
  %sub13 = sub nsw i64 %0, %3
  %4 = load i64, ptr %m, align 8
  %cmp18160 = icmp slt i64 %sub13, %4
  br i1 %cmp18160, label %for.body.lr.ph, label %if.end48

for.body.lr.ph:                                   ; preds = %if.else
  %arcs = getelementptr inbounds nuw i8, ptr %net, i64 568
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %startid.0163 = phi i64 [ %sub13, %for.body.lr.ph ], [ %startid.1, %for.inc ]
  %stop.0162 = phi i64 [ %sub13, %for.body.lr.ph ], [ %inc47, %for.inc ]
  %susp.0161 = phi i64 [ 0, %for.body.lr.ph ], [ %susp.1, %for.inc ]
  %5 = load ptr, ptr %arcs, align 8
  %call = tail call i64 @getArcPosition(ptr noundef nonnull %net, i64 noundef %stop.0162) #3
  %add.ptr = getelementptr inbounds %struct.arc, ptr %5, i64 %call
  %ident = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %6 = load i16, ptr %ident, align 8
  switch i16 %6, label %if.end38 [
    i16 1, label %if.then21
    i16 0, label %if.then30
  ]

if.then21:                                        ; preds = %for.body
  %cost = getelementptr inbounds nuw i8, ptr %add.ptr, i64 8
  %7 = load i64, ptr %cost, align 8
  %tail = getelementptr inbounds nuw i8, ptr %add.ptr, i64 16
  %8 = load ptr, ptr %tail, align 8
  %9 = load i64, ptr %8, align 8
  %sub22 = sub i64 %7, %9
  %head = getelementptr inbounds nuw i8, ptr %add.ptr, i64 24
  %10 = load ptr, ptr %head, align 8
  %11 = load i64, ptr %10, align 8
  %add24 = add nsw i64 %sub22, %11
  br label %if.end38

if.then30:                                        ; preds = %for.body
  %tail31 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 16
  %12 = load ptr, ptr %tail31, align 8
  %basic_arc = getelementptr inbounds nuw i8, ptr %12, i64 48
  %13 = load ptr, ptr %basic_arc, align 8
  %cmp32 = icmp eq ptr %13, %add.ptr
  br i1 %cmp32, label %if.end38, label %if.then34

if.then34:                                        ; preds = %if.then30
  %head35 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 24
  %14 = load ptr, ptr %head35, align 8
  %basic_arc36 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %add.ptr, ptr %basic_arc36, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.then30, %if.then21, %for.body
  %red_cost.0 = phi i64 [ %add24, %if.then21 ], [ -2, %if.then30 ], [ -2, %if.then34 ], [ -2, %for.body ]
  %cmp39 = icmp sgt i64 %red_cost.0, %threshold
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.end38
  %inc = add nsw i64 %susp.0161, 1
  br label %for.inc

if.else42:                                        ; preds = %if.end38
  %conv43 = trunc i64 %startid.0163 to i32
  %inc45 = add nsw i64 %startid.0163, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else42, %if.then41
  %conv43.sink = phi i32 [ -1, %if.then41 ], [ %conv43, %if.else42 ]
  %susp.1 = phi i64 [ %inc, %if.then41 ], [ %susp.0161, %if.else42 ]
  %startid.1 = phi i64 [ %startid.0163, %if.then41 ], [ %inc45, %if.else42 ]
  store i32 %conv43.sink, ptr %add.ptr, align 8
  %inc47 = add nsw i64 %stop.0162, 1
  %15 = load i64, ptr %m, align 8
  %cmp18 = icmp slt i64 %inc47, %15
  br i1 %cmp18, label %for.body, label %if.end48.loopexit, !llvm.loop !2

if.end48.loopexit:                                ; preds = %for.inc
  %susp.1.lcssa = phi i64 [ %susp.1, %for.inc ]
  br label %if.end48

if.end48:                                         ; preds = %if.end48.loopexit, %if.else, %if.then
  %susp.2 = phi i64 [ %2, %if.then ], [ 0, %if.else ], [ %susp.1.lcssa, %if.end48.loopexit ]
  %tobool49.not = icmp eq i64 %susp.2, 0
  br i1 %tobool49.not, label %if.end95, label %if.then50

if.then50:                                        ; preds = %if.end48
  %m_impl51 = getelementptr inbounds nuw i8, ptr %net, i64 440
  %16 = load i64, ptr %m_impl51, align 8
  %sub52 = sub nsw i64 %16, %susp.2
  store i64 %sub52, ptr %m_impl51, align 8
  %max_residual_new_m = getelementptr inbounds nuw i8, ptr %net, i64 448
  %17 = load i64, ptr %max_residual_new_m, align 8
  %add53 = add nsw i64 %17, %susp.2
  store i64 %add53, ptr %max_residual_new_m, align 8
  store i64 4000, ptr %max_elems, align 8
  %18 = load i64, ptr %m, align 8
  %19 = xor i64 %susp.2, -1
  %sub57 = add i64 %18, %19
  %div58 = sdiv i64 %sub57, 4000
  %add59 = add nsw i64 %div58, 1
  store i64 %add59, ptr %nr_group, align 8
  %sub62 = sub nsw i64 %18, %susp.2
  %rem63 = srem i64 %sub62, 4000
  %cmp64.not = icmp eq i64 %rem63, 0
  %sub71.neg = add nsw i64 %rem63, -4000
  %sub72 = select i1 %cmp64.not, i64 0, i64 %sub71.neg
  %storemerge = add nsw i64 %sub72, %add59
  store i64 %storemerge, ptr %full_groups, align 8
  %cmp80164 = icmp slt i64 %storemerge, 0
  br i1 %cmp80164, label %while.body82.lr.ph, label %while.end89

while.body82.lr.ph:                               ; preds = %if.then50
  %max_elems.promoted165 = load i64, ptr %max_elems, align 8
  br label %while.body82

while.body82:                                     ; preds = %while.body82, %while.body82.lr.ph
  %dec88166 = phi i64 [ %max_elems.promoted165, %while.body82.lr.ph ], [ %dec88, %while.body82 ]
  %20 = phi i64 [ %storemerge, %while.body82.lr.ph ], [ %add85, %while.body82 ]
  %add85 = add nsw i64 %20, %add59
  %dec88 = add nsw i64 %dec88166, -1
  %cmp80 = icmp slt i64 %add85, 0
  br i1 %cmp80, label %while.body82, label %while.cond78.while.end89_crit_edge, !llvm.loop !3

while.cond78.while.end89_crit_edge:               ; preds = %while.body82
  %add85.lcssa = phi i64 [ %add85, %while.body82 ]
  %dec88.lcssa = phi i64 [ %dec88, %while.body82 ]
  store i64 %add85.lcssa, ptr %full_groups, align 8
  store i64 %dec88.lcssa, ptr %max_elems, align 8
  br label %while.end89

while.end89:                                      ; preds = %while.cond78.while.end89_crit_edge, %if.then50
  %sorted_arcs.i = getelementptr inbounds nuw i8, ptr %net, i64 584
  %21 = load ptr, ptr %sorted_arcs.i, align 8
  %n.i.i = getelementptr inbounds nuw i8, ptr %net, i64 400
  %22 = load i64, ptr %n.i.i, align 8
  %cmp.not60.i.i = icmp slt i64 %22, 0
  br i1 %cmp.not60.i.i, label %refreshArcPointers.exit.i, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %while.end89
  %nodes.i.i = getelementptr inbounds nuw i8, ptr %net, i64 552
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %i.061.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i ]
  %23 = load ptr, ptr %nodes.i.i, align 8
  %add.ptr.i.i = getelementptr inbounds nuw %struct.node, ptr %23, i64 %i.061.i.i
  %basic_arc.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i.i, i64 48
  %24 = load ptr, ptr %basic_arc.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %25 = load i32, ptr %24, align 8
  %cmp2.i.i = icmp sgt i32 %25, -1
  br i1 %cmp2.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %conv.i.i = zext nneg i32 %25 to i64
  %call.i.i = tail call i64 @getOriginalArcPosition(ptr noundef nonnull %net, i64 noundef %conv.i.i) #3
  %arrayidx.i.i = getelementptr inbounds %struct.arc, ptr %21, i64 %call.i.i
  store ptr %arrayidx.i.i, ptr %basic_arc.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i, %for.body.i.i
  %firstin.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i.i, i64 64
  %26 = load ptr, ptr %firstin.i.i, align 8
  %tobool6.not.i.i = icmp eq ptr %26, null
  br i1 %tobool6.not.i.i, label %if.end19.i.i, label %land.lhs.true7.i.i

land.lhs.true7.i.i:                               ; preds = %if.end.i.i
  %27 = load i32, ptr %26, align 8
  %cmp10.i.i = icmp sgt i32 %27, -1
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.end19.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true7.i.i
  %conv15.i.i = zext nneg i32 %27 to i64
  %call16.i.i = tail call i64 @getOriginalArcPosition(ptr noundef nonnull %net, i64 noundef %conv15.i.i) #3
  %arrayidx17.i.i = getelementptr inbounds %struct.arc, ptr %21, i64 %call16.i.i
  store ptr %arrayidx17.i.i, ptr %firstin.i.i, align 8
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then12.i.i, %land.lhs.true7.i.i, %if.end.i.i
  %firstout.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i.i, i64 56
  %28 = load ptr, ptr %firstout.i.i, align 8
  %tobool20.not.i.i = icmp eq ptr %28, null
  br i1 %tobool20.not.i.i, label %for.inc.i.i, label %land.lhs.true21.i.i

land.lhs.true21.i.i:                              ; preds = %if.end19.i.i
  %29 = load i32, ptr %28, align 8
  %cmp24.i.i = icmp sgt i32 %29, -1
  br i1 %cmp24.i.i, label %if.then26.i.i, label %for.inc.i.i

if.then26.i.i:                                    ; preds = %land.lhs.true21.i.i
  %conv29.i.i = zext nneg i32 %29 to i64
  %call30.i.i = tail call i64 @getOriginalArcPosition(ptr noundef nonnull %net, i64 noundef %conv29.i.i) #3
  %arrayidx31.i.i = getelementptr inbounds %struct.arc, ptr %21, i64 %call30.i.i
  store ptr %arrayidx31.i.i, ptr %firstout.i.i, align 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then26.i.i, %land.lhs.true21.i.i, %if.end19.i.i
  %inc.i.i = add nuw nsw i64 %i.061.i.i, 1
  %30 = load i64, ptr %n.i.i, align 8
  %cmp.not.not.i.i = icmp slt i64 %i.061.i.i, %30
  br i1 %cmp.not.not.i.i, label %for.body.i.i, label %refreshArcPointers.exit.i.loopexit, !llvm.loop !4

refreshArcPointers.exit.i.loopexit:               ; preds = %for.inc.i.i
  br label %refreshArcPointers.exit.i

refreshArcPointers.exit.i:                        ; preds = %refreshArcPointers.exit.i.loopexit, %while.end89
  %cmp25.i = icmp sgt i64 %18, 0
  br i1 %cmp25.i, label %for.body.lr.ph.i, label %refreshPositions.exit

for.body.lr.ph.i:                                 ; preds = %refreshArcPointers.exit.i
  %arcs.i = getelementptr inbounds nuw i8, ptr %net, i64 568
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %position.026.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i ]
  %31 = load ptr, ptr %arcs.i, align 8
  %add.ptr.i = getelementptr inbounds nuw %struct.arc, ptr %31, i64 %position.026.i
  %32 = load i32, ptr %add.ptr.i, align 8
  %cmp1.i = icmp slt i32 %32, 0
  br i1 %cmp1.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %conv.i = zext nneg i32 %32 to i64
  %call3.i = tail call i64 @getOriginalArcPosition(ptr noundef nonnull %net, i64 noundef %conv.i) #3
  %arrayidx.i = getelementptr inbounds %struct.arc, ptr %21, i64 %call3.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %arrayidx.i, ptr noundef nonnull align 8 dereferenceable(72) %add.ptr.i, i64 72, i1 false)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i
  %inc.i = add nuw nsw i64 %position.026.i, 1
  %exitcond.not.i = icmp eq i64 %inc.i, %18
  br i1 %exitcond.not.i, label %refreshPositions.exit.loopexit, label %for.body.i, !llvm.loop !5

refreshPositions.exit.loopexit:                   ; preds = %for.inc.i
  br label %refreshPositions.exit

refreshPositions.exit:                            ; preds = %refreshPositions.exit.loopexit, %refreshArcPointers.exit.i
  %arcs4.i = getelementptr inbounds nuw i8, ptr %net, i64 568
  %33 = load ptr, ptr %arcs4.i, align 8
  store ptr %21, ptr %arcs4.i, align 8
  store ptr %33, ptr %sorted_arcs.i, align 8
  %add.ptr7.i = getelementptr inbounds %struct.arc, ptr %21, i64 %18
  %stop_arcs.i = getelementptr inbounds nuw i8, ptr %net, i64 576
  store ptr %add.ptr7.i, ptr %stop_arcs.i, align 8
  %34 = load i64, ptr %m, align 8
  %sub93 = sub nsw i64 %34, %susp.2
  store i64 %sub93, ptr %m, align 8
  %idx.neg = sub i64 0, %susp.2
  %add.ptr94 = getelementptr inbounds %struct.arc, ptr %add.ptr7.i, i64 %idx.neg
  store ptr %add.ptr94, ptr %stop_arcs.i, align 8
  tail call void @refresh_neighbour_lists(ptr noundef nonnull %net, ptr noundef nonnull @getOriginalArcPosition) #3
  br label %if.end95

if.end95:                                         ; preds = %refreshPositions.exit, %if.end48
  ret i64 %susp.2
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
!3 = distinct !{!3, !1}
!4 = distinct !{!4, !1}
!5 = distinct !{!5, !1}
