; ModuleID = '/tmp/tmp.iB72XWaAuM/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/XPathFactoryDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019XPathFactoryDefault14doReturnObjectEPKNS_5XPathEb(ptr noundef nonnull align 8 dereferenceable(144) %this, ptr noundef %theXPath, i1 noundef zeroext %fInReset) unnamed_addr #0 align 2 {
entry:
  %theXPath.addr = alloca ptr, align 8
  store ptr %theXPath, ptr %theXPath.addr, align 8, !tbaa !0
  br i1 %fInReset, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %m_xpaths = getelementptr inbounds nuw i8, ptr %this, i64 8
  %call = call noundef i64 @_ZNK11xalanc_1_108XalanSetIPKNS_5XPathEE5countERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %m_xpaths, ptr noundef nonnull align 8 dereferenceable(8) %theXPath.addr)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %m_xpaths2 = getelementptr inbounds nuw i8, ptr %this, i64 8
  %call.i = call noundef i64 @_ZN11xalanc_1_108XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS3_EEE5eraseERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %m_xpaths2, ptr noundef nonnull align 8 dereferenceable(8) %theXPath.addr)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call.i, %cond.false ]
  %cmp4 = icmp ne i64 %cond, 0
  br i1 %cmp4, label %if.else, label %cleanup

if.else:                                          ; preds = %cond.end
  %0 = load ptr, ptr %theXPath.addr, align 8, !tbaa !0
  %cmp.not.i = icmp eq ptr %0, null
  br i1 %cmp.not.i, label %cleanup, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %m_memoryManager.i.i = getelementptr inbounds nuw i8, ptr %this, i64 16
  %1 = load ptr, ptr %m_memoryManager.i.i, align 8, !tbaa !5
  call void @_ZN11xalanc_1_105XPathD1Ev(ptr noundef nonnull align 8 dereferenceable(129) %0) #2
  %vtable.i = load ptr, ptr %1, align 8, !tbaa !16
  %vfn.i = getelementptr inbounds nuw i8, ptr %vtable.i, i64 24
  %2 = load ptr, ptr %vfn.i, align 8
  call void %2(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.else, %cond.end
  ret i1 %cmp4
}

; Function Attrs: mustprogress uwtable
declare dso_local noundef i64 @_ZNK11xalanc_1_108XalanSetIPKNS_5XPathEE5countERKS3_(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare dso_local noundef i64 @_ZN11xalanc_1_108XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS3_EEE5eraseERKS3_(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_105XPathD1Ev(ptr noundef nonnull align 8 dereferenceable(129)) unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!0 = !{!1, !1, i64 0}
!1 = !{!"p1 _ZTSN11xalanc_1_105XPathE", !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!6, !9, i64 8}
!6 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS3_EEEE", !7, i64 0, !8, i64 1, !9, i64 8, !10, i64 16, !11, i64 24, !11, i64 32, !12, i64 40, !12, i64 64, !14, i64 88, !11, i64 120, !11, i64 128}
!7 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKNS_5XPathEEE"}
!8 = !{!"_ZTSSt8equal_toIPKN11xalanc_1_105XPathEE"}
!9 = !{!"p1 _ZTSN11xercesc_2_713MemoryManagerE", !2, i64 0}
!10 = !{!"float", !3, i64 0}
!11 = !{!"long", !3, i64 0}
!12 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !9, i64 0, !13, i64 8, !13, i64 16}
!13 = !{!"p1 _ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEE4NodeE", !2, i64 0}
!14 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !9, i64 0, !11, i64 8, !11, i64 16, !15, i64 24}
!15 = !{!"p1 _ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEE", !2, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !4, i64 0}
