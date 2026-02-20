; ModuleID = '/tmp/tmp.4ulKbeqbVc/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/XalanCompiledStylesheetDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE7releaseEv = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %this) local_unnamed_addr #0 comdat align 2 {
entry:
  %tmp.sroa.0.sroa.0.0.copyload = load ptr, ptr %this, align 8
  %tmp.sroa.0.sroa.4.0.m_pointerInfo.sroa_idx = getelementptr inbounds nuw i8, ptr %this, i64 8
  %tmp.sroa.0.sroa.4.0.copyload = load ptr, ptr %tmp.sroa.0.sroa.4.0.m_pointerInfo.sroa_idx, align 8
  store ptr null, ptr %this, align 8, !tbaa !0
  store ptr null, ptr %tmp.sroa.0.sroa.4.0.m_pointerInfo.sroa_idx, align 8, !tbaa !7
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %tmp.sroa.0.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %tmp.sroa.0.sroa.4.0.copyload, 1
  ret { ptr, ptr } %.fca.1.insert
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !2, i64 0}
!1 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanCompiledStylesheetDefaultEE", !2, i64 0, !6, i64 8}
!2 = !{!"p1 _ZTSN11xercesc_2_713MemoryManagerE", !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"p1 _ZTSN11xalanc_1_1030XalanCompiledStylesheetDefaultE", !3, i64 0}
!7 = !{!1, !6, i64 8}
