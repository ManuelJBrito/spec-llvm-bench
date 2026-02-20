; ModuleID = '/tmp/tmp.n49AGuXFlc/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/Random.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 65535) i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 captures(none) dereferenceable(12) %this, i16 noundef zeroext %max) local_unnamed_addr #0 align 2 {
entry:
  %0 = load i32, ptr %this, align 4, !tbaa !0
  %shl.i = shl i32 %0, 13
  %xor.i = xor i32 %shl.i, %0
  %shr.i = lshr i32 %xor.i, 19
  %and4.i = shl i32 %0, 12
  %shl5.i = and i32 %and4.i, -8192
  %xor7.i = or disjoint i32 %shr.i, %shl5.i
  store i32 %xor7.i, ptr %this, align 4, !tbaa !0
  %s2.i = getelementptr inbounds nuw i8, ptr %this, i64 4
  %1 = load i32, ptr %s2.i, align 4, !tbaa !5
  %shl9.i = shl i32 %1, 2
  %xor12.i = xor i32 %shl9.i, %1
  %shr13.i = lshr i32 %xor12.i, 25
  %and15.i = shl i32 %1, 4
  %shl16.i = and i32 %and15.i, -128
  %xor18.i = or disjoint i32 %shr13.i, %shl16.i
  store i32 %xor18.i, ptr %s2.i, align 4, !tbaa !5
  %s3.i = getelementptr inbounds nuw i8, ptr %this, i64 8
  %2 = load i32, ptr %s3.i, align 4, !tbaa !6
  %shl20.i = shl i32 %2, 3
  %xor23.i = xor i32 %shl20.i, %2
  %shr24.i = lshr i32 %xor23.i, 11
  %and26.i = shl i32 %2, 17
  %shl27.i = and i32 %and26.i, -2097152
  %xor29.i = or disjoint i32 %shr24.i, %shl27.i
  store i32 %xor29.i, ptr %s3.i, align 4, !tbaa !6
  %xor33.i = xor i32 %and15.i, %and4.i
  %xor35.i = xor i32 %xor33.i, %xor29.i
  %shr = lshr i32 %xor35.i, 16
  %conv = zext i16 %max to i32
  %mul = mul nuw i32 %shr, %conv
  %shr2 = lshr i32 %mul, 16
  ret i32 %shr2
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !2, i64 0}
!1 = !{!"_ZTS6Random", !2, i64 0, !2, i64 4, !2, i64 8}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!1, !2, i64 4}
!6 = !{!1, !2, i64 8}
