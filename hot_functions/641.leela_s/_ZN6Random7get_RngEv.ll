; ModuleID = '/tmp/tmp.CgXbaMqYfz/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/Random.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ZN6Random5s_rngE = external dso_local local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN6Random7get_RngEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = load ptr, ptr @_ZN6Random5s_rngE, align 8, !tbaa !0
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %invoke.cont, label %if.end

invoke.cont:                                      ; preds = %entry
  %call = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #2
  store i32 -743990373, ptr %call, align 4, !tbaa !5
  %1 = getelementptr inbounds nuw i8, ptr %call, i64 4
  store i32 -229110867, ptr %1, align 4, !tbaa !8
  %2 = getelementptr inbounds nuw i8, ptr %call, i64 8
  store i32 -1546396975, ptr %2, align 4, !tbaa !9
  store ptr %call, ptr @_ZN6Random5s_rngE, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %3 = load ptr, ptr @_ZN6Random5s_rngE, align 8, !tbaa !0
  ret ptr %3
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { builtin allocsize(0) }

!0 = !{!1, !1, i64 0}
!1 = !{!"p1 _ZTS6Random", !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTS6Random", !7, i64 0, !7, i64 4, !7, i64 8}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !7, i64 4}
!9 = !{!6, !7, i64 8}
