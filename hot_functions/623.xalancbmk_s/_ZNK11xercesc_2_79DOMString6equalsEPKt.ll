; ModuleID = '/tmp/tmp.6hHv4WVrLc/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/DOMString.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsEPKt(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %this, ptr noundef readonly captures(address_is_null) %other) local_unnamed_addr #0 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8, !tbaa !0
  %cmp = icmp ne ptr %0, null
  %cmp2 = icmp ne ptr %other, null
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then, label %if.end25

if.then:                                          ; preds = %entry
  %fDSData = getelementptr i8, ptr %0, i64 8
  %1 = load ptr, ptr %fDSData, align 8, !tbaa !6
  %fData = getelementptr i8, ptr %1, i64 8
  %2 = load i32, ptr %0, align 8, !tbaa !10
  %cmp550.not = icmp eq i32 %2, 0
  br i1 %cmp550.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  %wide.trip.count = zext i32 %2 to i64
  br label %for.body

for.cond:                                         ; preds = %if.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.body, label %for.end.loopexit, !llvm.loop !11

for.body:                                         ; preds = %for.cond, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr i16, ptr %other, i64 %indvars.iv
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %cmp6 = icmp eq i16 %3, 0
  br i1 %cmp6, label %return.loopexit, label %if.end

if.end:                                           ; preds = %for.body
  %arrayidx9 = getelementptr i16, ptr %fData, i64 %indvars.iv
  %4 = load i16, ptr %arrayidx9, align 2, !tbaa !13
  %cmp14.not = icmp eq i16 %4, %3
  br i1 %cmp14.not, label %for.cond, label %return.loopexit

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then
  %idxprom17 = zext i32 %2 to i64
  %arrayidx18 = getelementptr i16, ptr %other, i64 %idxprom17
  %5 = load i16, ptr %arrayidx18, align 2, !tbaa !13
  %cmp20.not = icmp eq i16 %5, 0
  br label %return

if.end25:                                         ; preds = %entry
  br i1 %cmp, label %land.lhs.true27, label %if.end32

land.lhs.true27:                                  ; preds = %if.end25
  %6 = load i32, ptr %0, align 8, !tbaa !10
  %cmp30.not = icmp eq i32 %6, 0
  br i1 %cmp30.not, label %if.end32, label %return

if.end32:                                         ; preds = %land.lhs.true27, %if.end25
  br i1 %cmp2, label %land.lhs.true34, label %if.end38

land.lhs.true34:                                  ; preds = %if.end32
  %7 = load i16, ptr %other, align 2, !tbaa !13
  %cmp36.not = icmp eq i16 %7, 0
  br i1 %cmp36.not, label %if.end38, label %return

if.end38:                                         ; preds = %land.lhs.true34, %if.end32
  br label %return

return.loopexit:                                  ; preds = %if.end, %for.body
  br label %return

return:                                           ; preds = %return.loopexit, %if.end38, %land.lhs.true34, %land.lhs.true27, %for.end
  %retval.1 = phi i1 [ true, %if.end38 ], [ %cmp20.not, %for.end ], [ false, %land.lhs.true27 ], [ false, %land.lhs.true34 ], [ false, %return.loopexit ]
  ret i1 %retval.1
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !2, i64 0}
!1 = !{!"_ZTSN11xercesc_2_79DOMStringE", !2, i64 0}
!2 = !{!"p1 _ZTSN11xercesc_2_715DOMStringHandleE", !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !9, i64 8}
!7 = !{!"_ZTSN11xercesc_2_715DOMStringHandleE", !8, i64 0, !8, i64 4, !9, i64 8}
!8 = !{!"int", !4, i64 0}
!9 = !{!"p1 _ZTSN11xercesc_2_713DOMStringDataE", !3, i64 0}
!10 = !{!7, !8, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !4, i64 0}
