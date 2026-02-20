; ModuleID = '/tmp/tmp.4jDg0tAVqL/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/FastState.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9FastState16play_random_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %this) local_unnamed_addr #0 align 2 {
entry:
  %m_tomove = getelementptr inbounds nuw i8, ptr %this, i64 1768
  %0 = load i32, ptr %m_tomove, align 8, !tbaa !0
  %call = tail call noundef i32 @_ZN9FastState16play_random_moveEi(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: mustprogress uwtable
declare dso_local noundef i32 @_ZN9FastState16play_random_moveEi(ptr noundef nonnull align 8 dereferenceable(8388) initializes((1768, 1772)), i32 noundef) local_unnamed_addr #0 align 2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !5, i64 1768}
!1 = !{!"_ZTS9FastBoard", !2, i64 0, !2, i64 882, !5, i64 1764, !5, i64 1768, !5, i64 1772, !6, i64 1776, !7, i64 3540, !7, i64 4424, !7, i64 5308, !7, i64 6192, !2, i64 7076, !8, i64 7960, !9, i64 7976, !10, i64 8008, !10, i64 8016, !11, i64 8024, !5, i64 8048}
!2 = !{!"_ZTSN5boost5arrayItLm441EEE", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"int", !3, i64 0}
!6 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !3, i64 0}
!7 = !{!"_ZTSN5boost5arrayItLm442EEE", !3, i64 0}
!8 = !{!"_ZTSN5boost5arrayIiLm4EEE", !3, i64 0}
!9 = !{!"_ZTSN5boost5arrayIiLm8EEE", !3, i64 0}
!10 = !{!"_ZTSN5boost5arrayIiLm2EEE", !3, i64 0}
!11 = !{!"_ZTSSt6vectorIiSaIiEE", !12, i64 0}
!12 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !13, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p1 int", !16, i64 0}
!16 = !{!"any pointer", !3, i64 0}
