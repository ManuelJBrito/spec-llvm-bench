; ModuleID = '/tmp/tmp.5VvEPSRFnh/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/XPathExecutionContextDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault11getVariableERKNS_10XalanQNameEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %agg.result, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(432) %this, ptr noundef nonnull align 8 dereferenceable(8) %name, ptr noundef readnone captures(none) %0) unnamed_addr #0 align 2 {
entry:
  %m_xobjectFactory = getelementptr inbounds nuw i8, ptr %this, i64 16
  %1 = load ptr, ptr %m_xobjectFactory, align 8, !tbaa !0
  %vtable = load ptr, ptr %name, align 8, !tbaa !8
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 16
  %2 = load ptr, ptr %vfn, align 8
  %call = tail call noundef nonnull align 8 dereferenceable(36) ptr %2(ptr noundef nonnull align 8 dereferenceable(8) %name)
  %vtable2 = load ptr, ptr %1, align 8, !tbaa !8
  %vfn3 = getelementptr inbounds nuw i8, ptr %vtable2, i64 128
  %3 = load ptr, ptr %vfn3, align 8
  tail call void %3(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %call)
  ret void
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !7, i64 16}
!1 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !2, i64 0, !7, i64 16}
!2 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !3, i64 8}
!3 = !{!"p1 _ZTSN11xercesc_2_713MemoryManagerE", !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"p1 _ZTSN11xalanc_1_1014XObjectFactoryE", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !6, i64 0}
