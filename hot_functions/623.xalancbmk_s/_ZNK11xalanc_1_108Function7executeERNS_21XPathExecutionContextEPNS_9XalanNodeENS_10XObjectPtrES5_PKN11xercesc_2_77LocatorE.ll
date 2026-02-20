; ModuleID = '/tmp/tmp.e2wiSJqARK/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/Function.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 captures(none) %agg.result, ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef %context, ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, ptr noundef %locator) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %theBuffer = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %theBuffer) #4
  %m_memoryManager.i = getelementptr inbounds nuw i8, ptr %executionContext, i64 8
  %2 = load ptr, ptr %m_memoryManager.i, align 8, !tbaa !0, !nonnull !6, !align !7
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %theBuffer, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %vtable = load ptr, ptr %this, align 8, !tbaa !8
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 64
  %3 = load ptr, ptr %vfn, align 8
  %call3 = invoke noundef nonnull align 8 dereferenceable(36) ptr %3(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(36) %theBuffer)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %vtable4 = load ptr, ptr %executionContext, align 8, !tbaa !8
  %vfn5 = getelementptr inbounds nuw i8, ptr %vtable4, i64 16
  %4 = load ptr, ptr %vfn5, align 8
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(36) %call3, ptr noundef %context, ptr noundef %locator)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont
  store ptr null, ptr %agg.result, align 8, !tbaa !10
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont6
  %m_allocation.i.i = getelementptr inbounds nuw i8, ptr %theBuffer, i64 16
  %5 = load i64, ptr %m_allocation.i.i, align 8, !tbaa !13
  %cmp.not.i.i = icmp eq i64 %5, 0
  br i1 %cmp.not.i.i, label %_ZN11xalanc_1_1014XalanDOMStringD2Ev.exit, label %invoke.cont5.i.i

invoke.cont5.i.i:                                 ; preds = %invoke.cont7
  %m_data.i.i.i = getelementptr inbounds nuw i8, ptr %theBuffer, i64 24
  %6 = load ptr, ptr %m_data.i.i.i, align 8, !tbaa !17
  %7 = load ptr, ptr %theBuffer, align 8, !tbaa !18
  %vtable.i.i.i = load ptr, ptr %7, align 8, !tbaa !8
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 24
  %8 = load ptr, ptr %vfn.i.i.i, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %6)
          to label %_ZN11xalanc_1_1014XalanDOMStringD2Ev.exit unwind label %terminate.lpad.i.i

terminate.lpad.i.i:                               ; preds = %invoke.cont5.i.i
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  call void @__clang_call_terminate(ptr %10) #5
  unreachable

_ZN11xalanc_1_1014XalanDOMStringD2Ev.exit:        ; preds = %invoke.cont5.i.i, %invoke.cont7
  call void @llvm.lifetime.end.p0(ptr nonnull %theBuffer) #4
  ret void

lpad:                                             ; preds = %invoke.cont6, %invoke.cont, %entry
  %11 = landingpad { ptr, i32 }
          cleanup
  %m_allocation.i.i10 = getelementptr inbounds nuw i8, ptr %theBuffer, i64 16
  %12 = load i64, ptr %m_allocation.i.i10, align 8, !tbaa !13
  %cmp.not.i.i11 = icmp eq i64 %12, 0
  br i1 %cmp.not.i.i11, label %_ZN11xalanc_1_1014XalanDOMStringD2Ev.exit17, label %invoke.cont5.i.i12

invoke.cont5.i.i12:                               ; preds = %lpad
  %m_data.i.i.i13 = getelementptr inbounds nuw i8, ptr %theBuffer, i64 24
  %13 = load ptr, ptr %m_data.i.i.i13, align 8, !tbaa !17
  %14 = load ptr, ptr %theBuffer, align 8, !tbaa !18
  %vtable.i.i.i14 = load ptr, ptr %14, align 8, !tbaa !8
  %vfn.i.i.i15 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i14, i64 24
  %15 = load ptr, ptr %vfn.i.i.i15, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %13)
          to label %_ZN11xalanc_1_1014XalanDOMStringD2Ev.exit17 unwind label %terminate.lpad.i.i16

terminate.lpad.i.i16:                             ; preds = %invoke.cont5.i.i12
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  call void @__clang_call_terminate(ptr %17) #5
  unreachable

_ZN11xalanc_1_1014XalanDOMStringD2Ev.exit17:      ; preds = %invoke.cont5.i.i12, %lpad
  call void @llvm.lifetime.end.p0(ptr nonnull %theBuffer) #4
  resume { ptr, i32 } %11
}

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
declare hidden void @__clang_call_terminate(ptr noundef) local_unnamed_addr #3

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!0 = !{!1, !2, i64 8}
!1 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !2, i64 8}
!2 = !{!"p1 _ZTSN11xercesc_2_713MemoryManagerE", !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{}
!7 = !{i64 8}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !12, i64 0}
!12 = !{!"p1 _ZTSN11xalanc_1_107XObjectE", !3, i64 0}
!13 = !{!14, !15, i64 16}
!14 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !2, i64 0, !15, i64 8, !15, i64 16, !16, i64 24}
!15 = !{!"long", !4, i64 0}
!16 = !{!"p1 short", !3, i64 0}
!17 = !{!14, !16, i64 24}
!18 = !{!14, !2, i64 0}
