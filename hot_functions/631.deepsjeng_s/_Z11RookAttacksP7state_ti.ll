; ModuleID = '/tmp/tmp.1qFrJ31qdX/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/bitboard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aFileAttacks = external dso_local local_unnamed_addr global [64 x [8 x i64]], align 16
@firstRankAttacks = external dso_local local_unnamed_addr global [64 x [8 x i8]], align 16

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef readonly captures(none) %s, i32 noundef %sq) local_unnamed_addr #0 {
entry:
  %All = getelementptr inbounds nuw i8, ptr %s, i64 264
  %0 = load i64, ptr %All, align 8, !tbaa !0
  %and.i = and i32 %sq, 7
  %and1.i = and i32 %sq, -8
  %add.i = or disjoint i32 %and1.i, 1
  %sh_prom.i = zext nneg i32 %add.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %and2.i = and i64 %shr.i, 63
  %arrayidx.i = getelementptr inbounds nuw [8 x i8], ptr @firstRankAttacks, i64 %and2.i
  %idxprom3.i = zext nneg i32 %and.i to i64
  %arrayidx4.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 %idxprom3.i
  %1 = load i8, ptr %arrayidx4.i, align 1, !tbaa !6
  %conv5.i = zext i8 %1 to i64
  %sh_prom6.i = zext nneg i32 %and1.i to i64
  %shl.i = shl i64 %conv5.i, %sh_prom6.i
  %shr.i7 = lshr i64 %0, %idxprom3.i
  %and1.i8 = and i64 %shr.i7, 72340172838076673
  %mul.i = mul i64 %and1.i8, 36099303471055872
  %shr2.i = lshr i64 %mul.i, 58
  %arrayidx.i9 = getelementptr inbounds nuw [8 x i64], ptr @aFileAttacks, i64 %shr2.i
  %shr3.i = lshr i32 %sq, 3
  %idxprom4.i = zext nneg i32 %shr3.i to i64
  %arrayidx5.i = getelementptr inbounds nuw i64, ptr %arrayidx.i9, i64 %idxprom4.i
  %2 = load i64, ptr %arrayidx5.i, align 8, !tbaa !7
  %shl.i10 = shl i64 %2, %idxprom3.i
  %or = or i64 %shl.i, %shl.i10
  ret i64 %or
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !5, i64 264}
!1 = !{!"_ZTS7state_t", !2, i64 0, !3, i64 4, !5, i64 264, !5, i64 272, !5, i64 280, !3, i64 288, !2, i64 392, !2, i64 396, !3, i64 400, !2, i64 452, !2, i64 456, !2, i64 460, !2, i64 464, !2, i64 468, !2, i64 472, !2, i64 476, !5, i64 480, !5, i64 488, !3, i64 496, !3, i64 2544, !3, i64 2800, !3, i64 3056, !5, i64 4080, !5, i64 4088, !2, i64 4096, !3, i64 4100, !2, i64 4356, !2, i64 4360, !2, i64 4364, !2, i64 4368, !2, i64 4372, !2, i64 4376, !2, i64 4380, !2, i64 4384, !2, i64 4388, !2, i64 4392, !3, i64 4400}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"long long", !3, i64 0}
!6 = !{!3, !3, i64 0}
!7 = !{!5, !5, i64 0}
