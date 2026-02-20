; ModuleID = '/tmp/tmp.FB2OaMnchO/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/SGXMLScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %this, i16 noundef zeroext %toAppend) local_unnamed_addr #0 comdat align 2 {
entry:
  %0 = load i32, ptr %this, align 8, !tbaa !0
  %fCapacity = getelementptr inbounds nuw i8, ptr %this, i64 4
  %1 = load i32, ptr %fCapacity, align 4, !tbaa !10
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %this, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %fBuffer = getelementptr inbounds nuw i8, ptr %this, i64 32
  %2 = load ptr, ptr %fBuffer, align 8, !tbaa !11
  %3 = load i32, ptr %this, align 8, !tbaa !0
  %inc = add i32 %3, 1
  store i32 %inc, ptr %this, align 8, !tbaa !0
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr i16, ptr %2, i64 %idxprom
  store i16 %toAppend, ptr %arrayidx, align 2, !tbaa !12
  ret void
}

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !2, i64 0}
!1 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !2, i64 0, !2, i64 4, !2, i64 8, !5, i64 12, !6, i64 16, !8, i64 24, !9, i64 32}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"bool", !3, i64 0}
!6 = !{!"p1 _ZTSN11xercesc_2_713MemoryManagerE", !7, i64 0}
!7 = !{!"any pointer", !3, i64 0}
!8 = !{!"p1 _ZTSN11xercesc_2_720XMLBufferFullHandlerE", !7, i64 0}
!9 = !{!"p1 short", !7, i64 0}
!10 = !{!1, !2, i64 4}
!11 = !{!1, !9, i64 32}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !3, i64 0}
