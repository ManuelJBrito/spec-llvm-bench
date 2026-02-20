; ModuleID = '/tmp/tmp.aPS12ivfZV/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/FormatterToXercesDOM.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: noinline noreturn nounwind uwtable
declare hidden void @__clang_call_terminate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %data) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %theTemp = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %m_size = getelementptr inbounds nuw i8, ptr %this, i64 8
  %0 = load i64, ptr %m_size, align 8, !tbaa !0
  %m_allocation = getelementptr inbounds nuw i8, ptr %this, i64 16
  %1 = load i64, ptr %m_allocation, align 8, !tbaa !9
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %m_data.i = getelementptr inbounds nuw i8, ptr %this, i64 24
  %2 = load ptr, ptr %m_data.i, align 8, !tbaa !10
  %add.ptr.i = getelementptr ptr, ptr %2, i64 %0
  %3 = load ptr, ptr %data, align 8, !tbaa !11
  store ptr %3, ptr %add.ptr.i, align 8, !tbaa !11
  %inc = add nuw i64 %0, 1
  store i64 %inc, ptr %m_size, align 8, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %0, 0
  %conv = uitofp i64 %0 to double
  %4 = tail call double @llvm.fmuladd.f64(double %conv, double 1.600000e+00, double 5.000000e-01)
  %conv7 = fptoui double %4 to i64
  %cond = select i1 %cmp5, i64 1, i64 %conv7
  call void @llvm.lifetime.start.p0(ptr nonnull %theTemp) #4
  %5 = load ptr, ptr %this, align 8, !tbaa !13
  call void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RNS1_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %theTemp, ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %cond)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %theTemp, ptr noundef nonnull align 8 dereferenceable(8) %data)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %6 = load ptr, ptr %this, align 8, !tbaa !13
  %7 = load i64, ptr %m_size, align 8, !tbaa !0
  %8 = load i64, ptr %m_allocation, align 8, !tbaa !9
  %m_data.i13 = getelementptr inbounds nuw i8, ptr %this, i64 24
  %9 = load ptr, ptr %m_data.i13, align 8, !tbaa !10
  %10 = load ptr, ptr %theTemp, align 8, !tbaa !13
  store ptr %10, ptr %this, align 8, !tbaa !13
  %m_size4.i = getelementptr inbounds nuw i8, ptr %theTemp, i64 8
  %11 = load i64, ptr %m_size4.i, align 8, !tbaa !0
  store i64 %11, ptr %m_size, align 8, !tbaa !0
  %m_allocation6.i = getelementptr inbounds nuw i8, ptr %theTemp, i64 16
  %12 = load i64, ptr %m_allocation6.i, align 8, !tbaa !9
  store i64 %12, ptr %m_allocation, align 8, !tbaa !9
  %m_data8.i = getelementptr inbounds nuw i8, ptr %theTemp, i64 24
  %13 = load ptr, ptr %m_data8.i, align 8, !tbaa !10
  store ptr %13, ptr %m_data.i13, align 8, !tbaa !10
  store ptr %6, ptr %theTemp, align 8, !tbaa !13
  store i64 %7, ptr %m_size4.i, align 8, !tbaa !0
  store i64 %8, ptr %m_allocation6.i, align 8, !tbaa !9
  store ptr %9, ptr %m_data8.i, align 8, !tbaa !10
  %cmp.not.i = icmp eq i64 %8, 0
  br i1 %cmp.not.i, label %_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev.exit, label %invoke.cont4.i

invoke.cont4.i:                                   ; preds = %invoke.cont
  %vtable.i.i = load ptr, ptr %6, align 8, !tbaa !14
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 24
  %14 = load ptr, ptr %vfn.i.i, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %9)
          to label %_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %invoke.cont4.i
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  call void @__clang_call_terminate(ptr %16) #5
  unreachable

_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev.exit: ; preds = %invoke.cont4.i, %invoke.cont
  call void @llvm.lifetime.end.p0(ptr nonnull %theTemp) #4
  br label %if.end

lpad:                                             ; preds = %if.else
  %17 = landingpad { ptr, i32 }
          cleanup
  %m_allocation.i15 = getelementptr inbounds nuw i8, ptr %theTemp, i64 16
  %18 = load i64, ptr %m_allocation.i15, align 8, !tbaa !9
  %cmp.not.i16 = icmp eq i64 %18, 0
  br i1 %cmp.not.i16, label %_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev.exit22, label %invoke.cont4.i17

invoke.cont4.i17:                                 ; preds = %lpad
  %m_data.i.i18 = getelementptr inbounds nuw i8, ptr %theTemp, i64 24
  %19 = load ptr, ptr %m_data.i.i18, align 8, !tbaa !10
  %20 = load ptr, ptr %theTemp, align 8, !tbaa !13
  %vtable.i.i19 = load ptr, ptr %20, align 8, !tbaa !14
  %vfn.i.i20 = getelementptr inbounds nuw i8, ptr %vtable.i.i19, i64 24
  %21 = load ptr, ptr %vfn.i.i20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev.exit22 unwind label %terminate.lpad.i21

terminate.lpad.i21:                               ; preds = %invoke.cont4.i17
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  call void @__clang_call_terminate(ptr %23) #5
  unreachable

_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev.exit22: ; preds = %invoke.cont4.i17, %lpad
  call void @llvm.lifetime.end.p0(ptr nonnull %theTemp) #4
  resume { ptr, i32 } %17

if.end:                                           ; preds = %_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev.exit, %if.then
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RNS1_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2 align 2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!0 = !{!1, !6, i64 8}
!1 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEEE", !2, i64 0, !6, i64 8, !6, i64 16, !7, i64 24}
!2 = !{!"p1 _ZTSN11xercesc_2_713MemoryManagerE", !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"long", !4, i64 0}
!7 = !{!"p2 _ZTSN11xercesc_2_710DOMElementE", !8, i64 0}
!8 = !{!"any p2 pointer", !3, i64 0}
!9 = !{!1, !6, i64 16}
!10 = !{!1, !7, i64 24}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTSN11xercesc_2_710DOMElementE", !3, i64 0}
!13 = !{!1, !2, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !5, i64 0}
