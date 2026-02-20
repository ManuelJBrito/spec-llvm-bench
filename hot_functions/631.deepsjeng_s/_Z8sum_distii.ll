; ModuleID = '/tmp/tmp.MZoUOjJXJi/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/board.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 536870919) i32 @_Z8sum_distii(i32 noundef %x, i32 noundef %y) local_unnamed_addr #0 {
entry:
  %and.i = and i32 %x, 7
  %and.i7 = and i32 %y, 7
  %sub = sub nsw i32 %and.i, %and.i7
  %0 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %shr.i = ashr i32 %x, 3
  %shr.i9 = ashr i32 %y, 3
  %1 = sub nsw i32 %shr.i9, %shr.i
  %2 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %add = add nuw nsw i32 %0, %2
  ret i32 %add
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
