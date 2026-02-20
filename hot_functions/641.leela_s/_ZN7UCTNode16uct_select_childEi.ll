; ModuleID = '/tmp/tmp.OW0HRlY8po/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/UCTNode.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN7UCTNode16uct_select_childEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %this, i32 noundef %color) local_unnamed_addr #0 align 2 {
entry:
  %child.056 = load ptr, ptr %this, align 8, !tbaa !0
  %cmp.not57 = icmp eq ptr %child.056, null
  br i1 %cmp.not57, label %while.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %while.body, %land.rhs.preheader
  %child.058 = phi ptr [ %child.0, %while.body ], [ %child.056, %land.rhs.preheader ]
  %m_valid.i = getelementptr inbounds nuw i8, ptr %child.058, i64 36
  %0 = load i8, ptr %m_valid.i, align 4, !tbaa !5, !range !11, !noundef !12
  %loadedv.i = trunc nuw i8 %0 to i1
  br i1 %loadedv.i, label %while.end.loopexit, label %while.body

while.body:                                       ; preds = %land.rhs
  %m_nextsibling = getelementptr inbounds nuw i8, ptr %child.058, i64 8
  %child.0 = load ptr, ptr %m_nextsibling, align 8, !tbaa !0
  %cmp.not = icmp eq ptr %child.0, null
  br i1 %cmp.not, label %while.end.loopexit, label %land.rhs, !llvm.loop !13

while.end.loopexit:                               ; preds = %while.body, %land.rhs
  %child.0.lcssa.ph = phi ptr [ %child.058, %land.rhs ], [ %child.0, %while.body ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  %child.0.lcssa = phi ptr [ %child.056, %entry ], [ %child.0.lcssa.ph, %while.end.loopexit ]
  %cmp3.not60 = icmp eq ptr %child.0.lcssa, null
  br i1 %cmp3.not60, label %while.end32, label %while.body4.lr.ph

while.body4.lr.ph:                                ; preds = %while.end
  %cmp.i49 = icmp eq i32 %color, 1
  br label %while.body4

while.body4:                                      ; preds = %while.end31, %while.body4.lr.ph
  %best.063 = phi ptr [ null, %while.body4.lr.ph ], [ %spec.select48, %while.end31 ]
  %best_value.062 = phi i32 [ -10000, %while.body4.lr.ph ], [ %spec.select, %while.end31 ]
  %child.161 = phi ptr [ %child.0.lcssa, %while.body4.lr.ph ], [ %child.2.lcssa, %while.end31 ]
  %m_ravevisits.i = getelementptr inbounds nuw i8, ptr %child.161, i64 32
  %1 = load i32, ptr %m_ravevisits.i, align 8, !tbaa !15
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %if.then, label %if.end18

if.then:                                          ; preds = %while.body4
  %m_visits.i = getelementptr inbounds nuw i8, ptr %child.161, i64 24
  %2 = load i32, ptr %m_visits.i, align 8, !tbaa !16
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then
  %m_blackwins.i.i = getelementptr inbounds nuw i8, ptr %child.161, i64 20
  %3 = load i32, ptr %m_blackwins.i.i, align 4, !tbaa !17
  %mul.i = mul nsw i32 %3, 1000
  %div.i = sdiv i32 %mul.i, %2
  %sub.i = sub nsw i32 1000, %div.i
  %spec.select.i = select i1 %cmp.i49, i32 %sub.i, i32 %div.i
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %uctvalue.0 = phi i32 [ %spec.select.i, %if.then8 ], [ 1100, %if.then ]
  %m_ravestmwins.i = getelementptr inbounds nuw i8, ptr %child.161, i64 28
  %4 = load i32, ptr %m_ravestmwins.i, align 4, !tbaa !18
  %mul.i50 = mul nsw i32 %4, 1000
  %div.i52 = sdiv i32 %mul.i50, %1
  %div = sdiv i32 %2, 200
  %add = add nsw i32 %div, 2
  %div12 = sdiv i32 1000, %add
  %add13 = add nsw i32 %div12, 200
  %mul = mul nsw i32 %add13, %div.i52
  %sub = sub nsw i32 800, %div12
  %mul14 = mul nsw i32 %sub, %uctvalue.0
  %add15 = add nsw i32 %mul, %mul14
  %div16 = sdiv i32 %add15, 1000
  br label %if.end18

if.end18:                                         ; preds = %if.end, %while.body4
  %value.0 = phi i32 [ %div16, %if.end ], [ 1100, %while.body4 ]
  %cmp19 = icmp sgt i32 %value.0, %best_value.062
  %spec.select = tail call i32 @llvm.smax.i32(i32 %value.0, i32 %best_value.062)
  %spec.select48 = select i1 %cmp19, ptr %child.161, ptr %best.063
  br label %while.cond23

while.cond23:                                     ; preds = %land.rhs25, %if.end18
  %child.1.pn = phi ptr [ %child.161, %if.end18 ], [ %child.2, %land.rhs25 ]
  %child.2.in = getelementptr inbounds nuw i8, ptr %child.1.pn, i64 8
  %child.2 = load ptr, ptr %child.2.in, align 8, !tbaa !19
  %cmp24.not = icmp eq ptr %child.2, null
  br i1 %cmp24.not, label %while.end31, label %land.rhs25

land.rhs25:                                       ; preds = %while.cond23
  %m_valid.i54 = getelementptr inbounds nuw i8, ptr %child.2, i64 36
  %5 = load i8, ptr %m_valid.i54, align 4, !tbaa !5, !range !11, !noundef !12
  %loadedv.i55 = trunc nuw i8 %5 to i1
  br i1 %loadedv.i55, label %while.end31, label %while.cond23, !llvm.loop !20

while.end31:                                      ; preds = %land.rhs25, %while.cond23
  %child.2.lcssa = phi ptr [ %child.2, %while.cond23 ], [ %child.2, %land.rhs25 ]
  %cmp3.not = icmp eq ptr %child.2.lcssa, null
  br i1 %cmp3.not, label %while.end32.loopexit, label %while.body4, !llvm.loop !21

while.end32.loopexit:                             ; preds = %while.end31
  %spec.select48.lcssa = phi ptr [ %spec.select48, %while.end31 ]
  br label %while.end32

while.end32:                                      ; preds = %while.end32.loopexit, %while.end
  %best.0.lcssa = phi ptr [ null, %while.end ], [ %spec.select48.lcssa, %while.end32.loopexit ]
  ret ptr %best.0.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!0 = !{!1, !1, i64 0}
!1 = !{!"p1 _ZTS7UCTNode", !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!6, !8, i64 36}
!6 = !{!"_ZTS7UCTNode", !1, i64 0, !1, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !8, i64 36, !7, i64 40, !9, i64 48}
!7 = !{!"int", !3, i64 0}
!8 = !{!"bool", !3, i64 0}
!9 = !{!"_ZTSN3SMP5MutexE", !10, i64 0}
!10 = !{!"long", !3, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 24}
!17 = !{!6, !7, i64 20}
!18 = !{!6, !7, i64 28}
!19 = !{!6, !1, i64 8}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
