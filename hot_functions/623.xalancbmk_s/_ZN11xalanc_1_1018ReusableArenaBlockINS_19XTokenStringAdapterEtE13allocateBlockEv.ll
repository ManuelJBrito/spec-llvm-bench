; ModuleID = '/tmp/tmp.7o5bSabTL4/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/XTokenStringAdapterAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.xalanc_1_10::XTokenStringAdapter" = type { %"class.xalanc_1_10::XStringBase", ptr }
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

$_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenStringAdapterEtE13allocateBlockEv = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenStringAdapterEtE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(28) %this) local_unnamed_addr #0 comdat align 2 {
entry:
  %m_objectCount = getelementptr inbounds nuw i8, ptr %this, i64 8
  %0 = load i16, ptr %m_objectCount, align 8, !tbaa !0
  %m_blockSize = getelementptr inbounds nuw i8, ptr %this, i64 10
  %1 = load i16, ptr %m_blockSize, align 2, !tbaa !9
  %cmp = icmp eq i16 %0, %1
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %m_firstFreeBlock = getelementptr inbounds nuw i8, ptr %this, i64 24
  %2 = load i16, ptr %m_firstFreeBlock, align 8, !tbaa !10
  %m_nextFreeBlock = getelementptr inbounds nuw i8, ptr %this, i64 26
  %3 = load i16, ptr %m_nextFreeBlock, align 2, !tbaa !12
  %cmp5.not = icmp eq i16 %2, %3
  br i1 %cmp5.not, label %if.else9, label %if.then6

if.then6:                                         ; preds = %if.else
  %m_objectBlock = getelementptr inbounds nuw i8, ptr %this, i64 16
  %4 = load ptr, ptr %m_objectBlock, align 8, !tbaa !13
  %idx.ext = zext i16 %2 to i64
  %add.ptr = getelementptr %"class.xalanc_1_10::XTokenStringAdapter", ptr %4, i64 %idx.ext
  br label %return

if.else9:                                         ; preds = %if.else
  %m_objectBlock10 = getelementptr inbounds nuw i8, ptr %this, i64 16
  %5 = load ptr, ptr %m_objectBlock10, align 8, !tbaa !13
  %idx.ext13 = zext i16 %2 to i64
  %add.ptr14 = getelementptr %"class.xalanc_1_10::XTokenStringAdapter", ptr %5, i64 %idx.ext13
  %6 = load i16, ptr %add.ptr14, align 4, !tbaa !14
  store i16 %6, ptr %m_nextFreeBlock, align 2, !tbaa !12
  %inc = add i16 %0, 1
  store i16 %inc, ptr %m_objectCount, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.else9, %if.then6, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %add.ptr, %if.then6 ], [ %add.ptr14, %if.else9 ]
  ret ptr %retval.0
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !7, i64 8}
!1 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_19XTokenStringAdapterEtEE", !2, i64 0, !7, i64 8, !7, i64 10, !8, i64 16}
!2 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_19XTokenStringAdapterEEE", !3, i64 0}
!3 = !{!"p1 _ZTSN11xercesc_2_713MemoryManagerE", !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"short", !5, i64 0}
!8 = !{!"p1 _ZTSN11xalanc_1_1019XTokenStringAdapterE", !4, i64 0}
!9 = !{!1, !7, i64 10}
!10 = !{!11, !7, i64 24}
!11 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_19XTokenStringAdapterEtEE", !1, i64 0, !7, i64 24, !7, i64 26}
!12 = !{!11, !7, i64 26}
!13 = !{!1, !8, i64 16}
!14 = !{!15, !7, i64 0}
!15 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_19XTokenStringAdapterEtE9NextBlockE", !7, i64 0, !16, i64 4}
!16 = !{!"int", !5, i64 0}
