; ModuleID = '/tmp/tmp.vxXSRv4InF/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/XStringAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.xalanc_1_10::XString" = type { %"class.xalanc_1_10::XStringBase", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XStringBase" = type { %"class.xalanc_1_10::XObject", double, %"class.xalanc_1_10::XObjectResultTreeFragProxy" }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XObjectResultTreeFragProxy" = type { %"class.xalanc_1_10::XObjectResultTreeFragProxyBase", %"class.xalanc_1_10::XObjectResultTreeFragProxyText" }
%"class.xalanc_1_10::XObjectResultTreeFragProxyBase" = type { %"class.xalanc_1_10::XalanDocumentFragment" }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyText" = type { %"class.xalanc_1_10::XalanText", ptr, ptr }
%"class.xalanc_1_10::XalanText" = type { %"class.xalanc_1_10::XalanCharacterData" }
%"class.xalanc_1_10::XalanCharacterData" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1018ReusableArenaBlockINS_7XStringEtE13destroyObjectEPS1_ = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_7XStringEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %this, ptr noundef %theObject) local_unnamed_addr #0 comdat align 2 {
entry:
  %m_firstFreeBlock = getelementptr inbounds nuw i8, ptr %this, i64 24
  %0 = load i16, ptr %m_firstFreeBlock, align 8, !tbaa !0
  %m_nextFreeBlock = getelementptr inbounds nuw i8, ptr %this, i64 26
  %1 = load i16, ptr %m_nextFreeBlock, align 2, !tbaa !10
  %cmp.not = icmp eq i16 %0, %1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %m_objectBlock = getelementptr inbounds nuw i8, ptr %this, i64 16
  %2 = load ptr, ptr %m_objectBlock, align 8, !tbaa !11
  %idx.ext = zext i16 %0 to i64
  %add.ptr = getelementptr %"class.xalanc_1_10::XString", ptr %2, i64 %idx.ext
  store i16 %1, ptr %add.ptr, align 4, !tbaa !12
  %verificationStamp.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 4
  store i32 -2228259, ptr %verificationStamp.i, align 4, !tbaa !15
  store i16 %0, ptr %m_nextFreeBlock, align 2, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %vtable.i = load ptr, ptr %theObject, align 8, !tbaa !16
  %3 = load ptr, ptr %vtable.i, align 8
  tail call void %3(ptr noundef nonnull align 8 dereferenceable(104) %theObject) #1
  %4 = load i16, ptr %m_firstFreeBlock, align 8, !tbaa !0
  store i16 %4, ptr %theObject, align 4, !tbaa !12
  %verificationStamp.i15 = getelementptr inbounds nuw i8, ptr %theObject, i64 4
  store i32 -2228259, ptr %verificationStamp.i15, align 4, !tbaa !15
  %m_objectBlock9 = getelementptr inbounds nuw i8, ptr %this, i64 16
  %5 = load ptr, ptr %m_objectBlock9, align 8, !tbaa !11
  %sub.ptr.lhs.cast = ptrtoint ptr %theObject to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 104
  %conv10 = trunc i64 %sub.ptr.div to i16
  store i16 %conv10, ptr %m_nextFreeBlock, align 2, !tbaa !10
  store i16 %conv10, ptr %m_firstFreeBlock, align 8, !tbaa !0
  %m_objectCount = getelementptr inbounds nuw i8, ptr %this, i64 8
  %6 = load i16, ptr %m_objectCount, align 8, !tbaa !18
  %dec = add i16 %6, -1
  store i16 %dec, ptr %m_objectCount, align 8, !tbaa !18
  ret void
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!0 = !{!1, !8, i64 24}
!1 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_7XStringEtEE", !2, i64 0, !8, i64 24, !8, i64 26}
!2 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_7XStringEtEE", !3, i64 0, !8, i64 8, !8, i64 10, !9, i64 16}
!3 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_7XStringEEE", !4, i64 0}
!4 = !{!"p1 _ZTSN11xercesc_2_713MemoryManagerE", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"short", !6, i64 0}
!9 = !{!"p1 _ZTSN11xalanc_1_107XStringE", !5, i64 0}
!10 = !{!1, !8, i64 26}
!11 = !{!2, !9, i64 16}
!12 = !{!13, !8, i64 0}
!13 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_7XStringEtE9NextBlockE", !8, i64 0, !14, i64 4}
!14 = !{!"int", !6, i64 0}
!15 = !{!13, !14, i64 4}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !7, i64 0}
!18 = !{!2, !8, i64 8}
