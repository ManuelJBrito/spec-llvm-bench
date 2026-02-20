; ModuleID = '/tmp/tmp.bmGa5Ql3pz/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/board.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 536870912) i32 @_Z16taxicab_dist_bitii(i32 noundef %x, i32 noundef %y) local_unnamed_addr #1 {
entry:
  %and.i.i = and i32 %x, 7
  %and.i11.i = and i32 %y, 7
  %sub.i = sub nsw i32 %and.i.i, %and.i11.i
  %0 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true)
  %shr.i.i = ashr i32 %x, 3
  %shr.i13.i = ashr i32 %y, 3
  %1 = sub nsw i32 %shr.i13.i, %shr.i.i
  %2 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %..i = tail call noundef range(i32 0, 536870912) i32 @llvm.umax.i32(i32 %0, i32 %2)
  ret i32 %..i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
