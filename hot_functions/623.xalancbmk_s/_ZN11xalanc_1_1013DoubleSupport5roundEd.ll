; ModuleID = '/tmp/tmp.GKn52LB6Gs/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/DoubleSupport.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }

@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external dso_local global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #0

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %theValue) local_unnamed_addr #1 align 2 {
entry:
  %0 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !0
  %1 = bitcast double %theValue to i64
  %temp.sroa.0.0.extract.trunc.i.i = trunc i64 %1 to i32
  %cmp.i.i = icmp eq i32 %0, %temp.sroa.0.0.extract.trunc.i.i
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 4), align 4
  %temp.sroa.0.4.extract.shift.i.i = lshr i64 %1, 32
  %temp.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %temp.sroa.0.4.extract.shift.i.i to i32
  %cmp4.i.i = icmp eq i32 %2, %temp.sroa.0.4.extract.trunc.i.i
  %3 = select i1 %cmp.i.i, i1 %cmp4.i.i, i1 false
  br i1 %3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !0
  br label %return

if.else:                                          ; preds = %entry
  %5 = fcmp oeq double %theValue, 0x7FF0000000000000
  br i1 %5, label %return, label %if.end5

if.end5:                                          ; preds = %if.else
  %6 = fcmp oeq double %theValue, 0xFFF0000000000000
  br i1 %6, label %return, label %if.else9

if.else9:                                         ; preds = %if.end5
  %cmp = fcmp oeq double %theValue, 0.000000e+00
  br i1 %cmp, label %return, label %if.else11

if.else11:                                        ; preds = %if.else9
  %cmp12 = fcmp ogt double %theValue, 0.000000e+00
  br i1 %cmp12, label %if.then13, label %if.else19

if.then13:                                        ; preds = %if.else11
  %cmp14 = fcmp olt double %theValue, 0x43E0000000000000
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.then13
  %add = fadd double %theValue, 5.000000e-01
  %conv = fptosi double %add to i64
  %conv16 = sitofp i64 %conv to double
  br label %return

if.else17:                                        ; preds = %if.then13
  %add.i = fadd double %theValue, 5.000000e-01
  %7 = tail call { double, double } @llvm.modf.f64(double %add.i)
  %8 = extractvalue { double, double } %7, 1
  br label %return

if.else19:                                        ; preds = %if.else11
  %9 = tail call { double, double } @llvm.modf.f64(double %theValue)
  %10 = extractvalue { double, double } %9, 0
  %cmp20 = fcmp oeq double %10, -5.000000e-01
  %cond.v = select i1 %cmp20, double 5.000000e-01, double -5.000000e-01
  %cond = fadd double %theValue, %cond.v
  %cmp22 = fcmp ogt double %cond, 0xC3E0000000000000
  br i1 %cmp22, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.else19
  %conv24 = fptosi double %cond to i64
  %conv25 = sitofp i64 %conv24 to double
  br label %return

if.else26:                                        ; preds = %if.else19
  %add.i42 = fadd double %cond, 5.000000e-01
  %11 = tail call { double, double } @llvm.modf.f64(double %add.i42)
  %12 = extractvalue { double, double } %11, 1
  br label %return

return:                                           ; preds = %if.else26, %if.then23, %if.else17, %if.then15, %if.else9, %if.end5, %if.else, %if.then
  %retval.1 = phi double [ %4, %if.then ], [ %conv16, %if.then15 ], [ %8, %if.else17 ], [ 0.000000e+00, %if.else9 ], [ %conv25, %if.then23 ], [ %12, %if.else26 ], [ 0x7FF0000000000000, %if.else ], [ 0xFFF0000000000000, %if.end5 ]
  ret double %retval.1
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !1, i64 0}
!1 = !{!"omnipotent char", !2, i64 0}
!2 = !{!"Simple C++ TBAA"}
