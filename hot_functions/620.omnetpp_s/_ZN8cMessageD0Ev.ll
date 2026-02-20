; ModuleID = '/tmp/tmp.cenSUiowcw/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/simulator/cmessage.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nounwind uwtable
declare dso_local void @_ZN8cMessageD2Ev(ptr noundef nonnull align 8 dereferenceable(160) initializes((0, 8))) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8cMessageD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %this) unnamed_addr #0 align 2 {
entry:
  tail call void @_ZN8cMessageD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %this) #2
  tail call void @_ZdlPvm(ptr noundef nonnull %this, i64 noundef 160) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { builtin nounwind }
