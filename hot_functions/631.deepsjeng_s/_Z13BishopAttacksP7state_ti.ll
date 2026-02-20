; ModuleID = '/tmp/tmp.iLc6KdJXL9/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/bitboard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fillUpAttacks = external dso_local local_unnamed_addr global [64 x [8 x i64]], align 16
@DiagMaska1h8 = external dso_local local_unnamed_addr global [64 x i64], align 16
@DiagMaska8h1 = external dso_local local_unnamed_addr global [64 x i64], align 16

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef readonly captures(none) %s, i32 noundef %sq) local_unnamed_addr #0 {
entry:
  %All = getelementptr inbounds nuw i8, ptr %s, i64 264
  %0 = load i64, ptr %All, align 8, !tbaa !0
  %and.i = and i32 %sq, 7
  %idxprom.i = zext i32 %sq to i64
  %arrayidx.i = getelementptr inbounds nuw i64, ptr @DiagMaska1h8, i64 %idxprom.i
  %1 = load i64, ptr %arrayidx.i, align 8, !tbaa !6
  %and1.i = and i64 %1, %0
  %mul.i = mul i64 %and1.i, 144680345676153346
  %shr.i = lshr i64 %mul.i, 58
  %arrayidx5.i = getelementptr inbounds nuw [8 x i64], ptr @fillUpAttacks, i64 %shr.i
  %idxprom6.i = zext nneg i32 %and.i to i64
  %arrayidx7.i = getelementptr inbounds nuw i64, ptr %arrayidx5.i, i64 %idxprom6.i
  %2 = load i64, ptr %arrayidx7.i, align 8, !tbaa !6
  %and8.i = and i64 %2, %1
  %arrayidx.i7 = getelementptr inbounds nuw i64, ptr @DiagMaska8h1, i64 %idxprom.i
  %3 = load i64, ptr %arrayidx.i7, align 8, !tbaa !6
  %and1.i8 = and i64 %3, %0
  %mul.i9 = mul i64 %and1.i8, 144680345676153346
  %shr.i10 = lshr i64 %mul.i9, 58
  %arrayidx5.i11 = getelementptr inbounds nuw [8 x i64], ptr @fillUpAttacks, i64 %shr.i10
  %arrayidx7.i13 = getelementptr inbounds nuw i64, ptr %arrayidx5.i11, i64 %idxprom6.i
  %4 = load i64, ptr %arrayidx7.i13, align 8, !tbaa !6
  %and8.i14 = and i64 %4, %3
  %or = or i64 %and8.i14, %and8.i
  ret i64 %or
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !5, i64 264}
!1 = !{!"_ZTS7state_t", !2, i64 0, !3, i64 4, !5, i64 264, !5, i64 272, !5, i64 280, !3, i64 288, !2, i64 392, !2, i64 396, !3, i64 400, !2, i64 452, !2, i64 456, !2, i64 460, !2, i64 464, !2, i64 468, !2, i64 472, !2, i64 476, !5, i64 480, !5, i64 488, !3, i64 496, !3, i64 2544, !3, i64 2800, !3, i64 3056, !5, i64 4080, !5, i64 4088, !2, i64 4096, !3, i64 4100, !2, i64 4356, !2, i64 4360, !2, i64 4364, !2, i64 4368, !2, i64 4372, !2, i64 4376, !2, i64 4380, !2, i64 4384, !2, i64 4388, !2, i64 4392, !3, i64 4400}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"long long", !3, i64 0}
!6 = !{!5, !5, i64 0}
