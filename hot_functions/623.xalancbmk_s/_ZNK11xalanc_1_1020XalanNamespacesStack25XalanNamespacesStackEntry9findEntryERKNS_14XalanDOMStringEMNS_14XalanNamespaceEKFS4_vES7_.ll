; ModuleID = '/tmp/tmp.fFSNp2PiNM/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/XalanNamespacesStack.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.xalanc_1_10::XalanNamespace" = type { %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.1", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry9findEntryERKNS_14XalanDOMStringEMNS_14XalanNamespaceEKFS4_vES7_(ptr noundef nonnull align 8 dereferenceable(96) %this, ptr noundef nonnull align 8 dereferenceable(36) %theKey, i64 %theKeyFunction.coerce0, i64 %theKeyFunction.coerce1, i64 %theValueFunction.coerce0, i64 %theValueFunction.coerce1) local_unnamed_addr #0 align 2 {
entry:
  %m_size.i.i = getelementptr inbounds nuw i8, ptr %this, i64 24
  %0 = load i64, ptr %m_size.i.i, align 8, !tbaa !0
  %cmp.i.i = icmp eq i64 %0, 0
  br i1 %cmp.i.i, label %return, label %if.then

if.then:                                          ; preds = %entry
  %m_position = getelementptr inbounds nuw i8, ptr %this, i64 80
  %1 = load ptr, ptr %m_position, align 8, !tbaa !9
  %.fr = freeze ptr %1
  %m_pos3.i = getelementptr inbounds nuw i8, ptr %this, i64 88
  %2 = load i64, ptr %m_pos3.i, align 8, !tbaa !12
  %m_blockSize.i.i = getelementptr inbounds nuw i8, ptr %.fr, i64 8
  %m_data.i.i.i = getelementptr inbounds nuw i8, ptr %.fr, i64 40
  %3 = and i64 %theKeyFunction.coerce0, 1
  %memptr.isvirtual.not = icmp eq i64 %3, 0
  %memptr.nonvirtualfn = inttoptr i64 %theKeyFunction.coerce0 to ptr
  %cmp.i.i33.not = icmp eq ptr %.fr, %this
  br i1 %memptr.isvirtual.not, label %if.then.split.us, label %if.then.split

if.then.split.us:                                 ; preds = %if.then
  br i1 %cmp.i.i33.not, label %do.body.us.preheader, label %do.body.us.us.preheader

do.body.us.us.preheader:                          ; preds = %if.then.split.us
  br label %do.body.us.us

do.body.us.preheader:                             ; preds = %if.then.split.us
  br label %do.body.us

do.body.us.us:                                    ; preds = %do.body.us.us, %do.body.us.us.preheader
  %i.sroa.5.0.us.us = phi i64 [ %dec.i.us.us, %do.body.us.us ], [ %2, %do.body.us.us.preheader ]
  %dec.i.us.us = add i64 %i.sroa.5.0.us.us, -1
  %4 = load i64, ptr %m_blockSize.i.i, align 8, !tbaa !13
  %div.i.i.us.us = udiv i64 %dec.i.us.us, %4
  %5 = load ptr, ptr %m_data.i.i.i, align 8, !tbaa !15
  %arrayidx.i.i.i.us.us = getelementptr ptr, ptr %5, i64 %div.i.i.us.us
  %6 = load ptr, ptr %arrayidx.i.i.i.us.us, align 8, !tbaa !16
  %rem.i.i.us.us = urem i64 %dec.i.us.us, %4
  %m_data.i5.i.i.us.us = getelementptr inbounds nuw i8, ptr %6, i64 24
  %7 = load ptr, ptr %m_data.i5.i.i.us.us, align 8, !tbaa !18
  %arrayidx.i6.i.i.us.us = getelementptr %"class.xalanc_1_10::XalanNamespace", ptr %7, i64 %rem.i.i.us.us
  %8 = getelementptr inbounds i8, ptr %arrayidx.i6.i.i.us.us, i64 %theKeyFunction.coerce1
  %call6.us.us = tail call noundef nonnull align 8 dereferenceable(36) ptr %memptr.nonvirtualfn(ptr noundef nonnull align 8 dereferenceable(80) %8)
  %call.i.i.us.us = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %theKey, ptr noundef nonnull align 8 dereferenceable(36) %call6.us.us)
  br i1 %call.i.i.us.us, label %if.then8.loopexit58, label %do.body.us.us

do.body.us:                                       ; preds = %do.cond.us, %do.body.us.preheader
  %i.sroa.5.0.us = phi i64 [ %dec.i.us, %do.cond.us ], [ %2, %do.body.us.preheader ]
  %dec.i.us = add i64 %i.sroa.5.0.us, -1
  %9 = load i64, ptr %m_blockSize.i.i, align 8, !tbaa !13
  %div.i.i.us = udiv i64 %dec.i.us, %9
  %10 = load ptr, ptr %m_data.i.i.i, align 8, !tbaa !15
  %arrayidx.i.i.i.us = getelementptr ptr, ptr %10, i64 %div.i.i.us
  %11 = load ptr, ptr %arrayidx.i.i.i.us, align 8, !tbaa !16
  %rem.i.i.us = urem i64 %dec.i.us, %9
  %m_data.i5.i.i.us = getelementptr inbounds nuw i8, ptr %11, i64 24
  %12 = load ptr, ptr %m_data.i5.i.i.us, align 8, !tbaa !18
  %arrayidx.i6.i.i.us = getelementptr %"class.xalanc_1_10::XalanNamespace", ptr %12, i64 %rem.i.i.us
  %13 = getelementptr inbounds i8, ptr %arrayidx.i6.i.i.us, i64 %theKeyFunction.coerce1
  %call6.us = tail call noundef nonnull align 8 dereferenceable(36) ptr %memptr.nonvirtualfn(ptr noundef nonnull align 8 dereferenceable(80) %13)
  %call.i.i.us = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %theKey, ptr noundef nonnull align 8 dereferenceable(36) %call6.us)
  br i1 %call.i.i.us, label %if.then8.loopexit, label %do.cond.us

do.cond.us:                                       ; preds = %do.body.us
  %cmp4.i.i.us.not = icmp eq i64 %dec.i.us, 0
  br i1 %cmp4.i.i.us.not, label %return.loopexit, label %do.body.us, !llvm.loop !21

if.then.split:                                    ; preds = %if.then
  br i1 %cmp.i.i33.not, label %do.body.preheader, label %do.body.us41.preheader

do.body.us41.preheader:                           ; preds = %if.then.split
  br label %do.body.us41

do.body.preheader:                                ; preds = %if.then.split
  br label %do.body

do.body.us41:                                     ; preds = %do.body.us41, %do.body.us41.preheader
  %i.sroa.5.0.us42 = phi i64 [ %dec.i.us43, %do.body.us41 ], [ %2, %do.body.us41.preheader ]
  %dec.i.us43 = add i64 %i.sroa.5.0.us42, -1
  %14 = load i64, ptr %m_blockSize.i.i, align 8, !tbaa !13
  %div.i.i.us44 = udiv i64 %dec.i.us43, %14
  %15 = load ptr, ptr %m_data.i.i.i, align 8, !tbaa !15
  %arrayidx.i.i.i.us45 = getelementptr ptr, ptr %15, i64 %div.i.i.us44
  %16 = load ptr, ptr %arrayidx.i.i.i.us45, align 8, !tbaa !16
  %rem.i.i.us46 = urem i64 %dec.i.us43, %14
  %m_data.i5.i.i.us47 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %17 = load ptr, ptr %m_data.i5.i.i.us47, align 8, !tbaa !18
  %arrayidx.i6.i.i.us48 = getelementptr %"class.xalanc_1_10::XalanNamespace", ptr %17, i64 %rem.i.i.us46
  %18 = getelementptr inbounds i8, ptr %arrayidx.i6.i.i.us48, i64 %theKeyFunction.coerce1
  %vtable.us = load ptr, ptr %18, align 8, !tbaa !23
  %19 = getelementptr i8, ptr %vtable.us, i64 %theKeyFunction.coerce0
  %20 = getelementptr i8, ptr %19, i64 -1
  %memptr.virtualfn.us = load ptr, ptr %20, align 8, !nosanitize !25
  %call6.us49 = tail call noundef nonnull align 8 dereferenceable(36) ptr %memptr.virtualfn.us(ptr noundef nonnull align 8 dereferenceable(80) %18)
  %call.i.i.us50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %theKey, ptr noundef nonnull align 8 dereferenceable(36) %call6.us49)
  br i1 %call.i.i.us50, label %if.then8.loopexit61, label %do.body.us41

do.body:                                          ; preds = %do.cond, %do.body.preheader
  %i.sroa.5.0 = phi i64 [ %dec.i, %do.cond ], [ %2, %do.body.preheader ]
  %dec.i = add i64 %i.sroa.5.0, -1
  %21 = load i64, ptr %m_blockSize.i.i, align 8, !tbaa !13
  %div.i.i = udiv i64 %dec.i, %21
  %22 = load ptr, ptr %m_data.i.i.i, align 8, !tbaa !15
  %arrayidx.i.i.i = getelementptr ptr, ptr %22, i64 %div.i.i
  %23 = load ptr, ptr %arrayidx.i.i.i, align 8, !tbaa !16
  %rem.i.i = urem i64 %dec.i, %21
  %m_data.i5.i.i = getelementptr inbounds nuw i8, ptr %23, i64 24
  %24 = load ptr, ptr %m_data.i5.i.i, align 8, !tbaa !18
  %arrayidx.i6.i.i = getelementptr %"class.xalanc_1_10::XalanNamespace", ptr %24, i64 %rem.i.i
  %25 = getelementptr inbounds i8, ptr %arrayidx.i6.i.i, i64 %theKeyFunction.coerce1
  %vtable = load ptr, ptr %25, align 8, !tbaa !23
  %26 = getelementptr i8, ptr %vtable, i64 %theKeyFunction.coerce0
  %27 = getelementptr i8, ptr %26, i64 -1
  %memptr.virtualfn = load ptr, ptr %27, align 8, !nosanitize !25
  %call6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %memptr.virtualfn(ptr noundef nonnull align 8 dereferenceable(80) %25)
  %call.i.i = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %theKey, ptr noundef nonnull align 8 dereferenceable(36) %call6)
  br i1 %call.i.i, label %if.then8.loopexit59, label %do.cond

if.then8.loopexit:                                ; preds = %do.body.us
  %arrayidx.i6.i.i.us.lcssa = phi ptr [ %arrayidx.i6.i.i.us, %do.body.us ]
  br label %if.then8

if.then8.loopexit58:                              ; preds = %do.body.us.us
  %arrayidx.i6.i.i.us.us.lcssa = phi ptr [ %arrayidx.i6.i.i.us.us, %do.body.us.us ]
  br label %if.then8

if.then8.loopexit59:                              ; preds = %do.body
  %arrayidx.i6.i.i.lcssa = phi ptr [ %arrayidx.i6.i.i, %do.body ]
  br label %if.then8

if.then8.loopexit61:                              ; preds = %do.body.us41
  %arrayidx.i6.i.i.us48.lcssa = phi ptr [ %arrayidx.i6.i.i.us48, %do.body.us41 ]
  br label %if.then8

if.then8:                                         ; preds = %if.then8.loopexit61, %if.then8.loopexit59, %if.then8.loopexit58, %if.then8.loopexit
  %.us-phi = phi ptr [ %arrayidx.i6.i.i.us.lcssa, %if.then8.loopexit ], [ %arrayidx.i6.i.i.us.us.lcssa, %if.then8.loopexit58 ], [ %arrayidx.i6.i.i.lcssa, %if.then8.loopexit59 ], [ %arrayidx.i6.i.i.us48.lcssa, %if.then8.loopexit61 ]
  %28 = getelementptr inbounds i8, ptr %.us-phi, i64 %theValueFunction.coerce1
  %29 = and i64 %theValueFunction.coerce0, 1
  %memptr.isvirtual11.not = icmp eq i64 %29, 0
  br i1 %memptr.isvirtual11.not, label %memptr.nonvirtual15, label %memptr.virtual12

memptr.virtual12:                                 ; preds = %if.then8
  %vtable13 = load ptr, ptr %28, align 8, !tbaa !23
  %30 = getelementptr i8, ptr %vtable13, i64 %theValueFunction.coerce0
  %31 = getelementptr i8, ptr %30, i64 -1
  %memptr.virtualfn14 = load ptr, ptr %31, align 8, !nosanitize !25
  br label %cleanup23

memptr.nonvirtual15:                              ; preds = %if.then8
  %memptr.nonvirtualfn16 = inttoptr i64 %theValueFunction.coerce0 to ptr
  br label %cleanup23

do.cond:                                          ; preds = %do.body
  %cmp4.i.i.not = icmp eq i64 %dec.i, 0
  br i1 %cmp4.i.i.not, label %return.loopexit60, label %do.body, !llvm.loop !21

cleanup23:                                        ; preds = %memptr.nonvirtual15, %memptr.virtual12
  %32 = phi ptr [ %memptr.virtualfn14, %memptr.virtual12 ], [ %memptr.nonvirtualfn16, %memptr.nonvirtual15 ]
  %call18 = tail call noundef nonnull align 8 dereferenceable(36) ptr %32(ptr noundef nonnull align 8 dereferenceable(80) %28)
  br label %return

return.loopexit:                                  ; preds = %do.cond.us
  br label %return

return.loopexit60:                                ; preds = %do.cond
  br label %return

return:                                           ; preds = %return.loopexit60, %return.loopexit, %cleanup23, %entry
  %retval.2 = phi ptr [ %call18, %cleanup23 ], [ null, %entry ], [ null, %return.loopexit ], [ null, %return.loopexit60 ]
  ret ptr %retval.2
}

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !6, i64 8}
!1 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEEE", !2, i64 0, !6, i64 8, !6, i64 16, !7, i64 24}
!2 = !{!"p1 _ZTSN11xercesc_2_713MemoryManagerE", !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"long", !4, i64 0}
!7 = !{!"p2 _ZTSN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEE", !8, i64 0}
!8 = !{!"any p2 pointer", !3, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_14XalanNamespaceEEENS_10XalanDequeIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEEEE", !11, i64 0, !6, i64 8}
!11 = !{!"p1 _ZTSN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEE", !3, i64 0}
!12 = !{!10, !6, i64 8}
!13 = !{!14, !6, i64 8}
!14 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEE", !2, i64 0, !6, i64 8, !1, i64 16, !1, i64 48}
!15 = !{!1, !7, i64 24}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTSN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEE", !3, i64 0}
!18 = !{!19, !20, i64 24}
!19 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEE", !2, i64 0, !6, i64 8, !6, i64 16, !20, i64 24}
!20 = !{!"p1 _ZTSN11xalanc_1_1014XalanNamespaceE", !3, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !5, i64 0}
!25 = !{}
