; ModuleID = '/tmp/tmp.AZzEQGeisL/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/simulator/coutvector.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.SimTime = type { i64 }

$_ZN10cOutVector19recordWithTimestampE7SimTimeS0_ = comdat any

@_ZN7SimTime9invfscaleE = external local_unnamed_addr global double, align 8

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN10cOutVector19recordWithTimestampE7SimTimeS0_(ptr noundef nonnull align 8 dereferenceable(88) %this, ptr dead_on_return noundef %t, ptr dead_on_return noundef %value) unnamed_addr #0 comdat align 2 {
entry:
  %agg.tmp = alloca %class.SimTime, align 8
  %0 = load i64, ptr %t, align 8, !tbaa !0
  store i64 %0, ptr %agg.tmp, align 8, !tbaa !0
  %1 = load i64, ptr %value, align 8, !tbaa !0
  %conv.i = sitofp i64 %1 to double
  %2 = load double, ptr @_ZN7SimTime9invfscaleE, align 8, !tbaa !5
  %mul.i = fmul double %2, %conv.i
  %vtable = load ptr, ptr %this, align 8, !tbaa !7
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 264
  %3 = load ptr, ptr %vfn, align 8
  %call2 = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(88) %this, ptr dead_on_return noundef nonnull %agg.tmp, double noundef %mul.i)
  ret i1 %call2
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !2, i64 0}
!1 = !{!"_ZTS7SimTime", !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !4, i64 0}
