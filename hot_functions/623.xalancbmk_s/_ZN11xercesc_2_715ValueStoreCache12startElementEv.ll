; ModuleID = '/tmp/tmp.Odfq9QXUly/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/ValueStoreCache.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache12startElementEv(ptr noundef nonnull align 8 captures(none) dereferenceable(48) %this) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %fGlobalMapStack = getelementptr inbounds nuw i8, ptr %this, i64 24
  %0 = load ptr, ptr %fGlobalMapStack, align 8, !tbaa !0
  %fGlobalICMap = getelementptr inbounds nuw i8, ptr %this, i64 8
  %1 = load ptr, ptr %fGlobalICMap, align 8, !tbaa !11
  %fCurCount.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %2 = load i32, ptr %fCurCount.i.i.i, align 4, !tbaa !12
  %add.i.i.i = add i32 %2, 1
  %fMaxCount.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load i32, ptr %fMaxCount.i.i.i, align 8, !tbaa !18
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i.i, %3
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE4pushEPS3_.exit

if.end.i.i.i:                                     ; preds = %entry
  %div42.i.i.i = lshr i32 %3, 1
  %add4.i.i.i = add i32 %div42.i.i.i, %3
  %spec.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %add.i.i.i, i32 %add4.i.i.i)
  %fMemoryManager.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4 = load ptr, ptr %fMemoryManager.i.i.i, align 8, !tbaa !19
  %conv.i.i.i = zext i32 %spec.select.i.i.i to i64
  %mul.i.i.i = shl nuw nsw i64 %conv.i.i.i, 3
  %vtable.i.i.i = load ptr, ptr %4, align 8, !tbaa !20
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 16
  %5 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %mul.i.i.i)
  %6 = load i32, ptr %fCurCount.i.i.i, align 4, !tbaa !12
  %cmp1343.not.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp1343.not.i.i.i, label %for.cond16.preheader.i.i.i, label %for.body.lr.ph.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i.i
  %fElemList.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load ptr, ptr %fElemList.i.i.i, align 8, !tbaa !22
  %wide.trip.count.i.i.i = zext i32 %6 to i64
  br label %for.body.i.i.i

for.cond16.preheader.loopexit.i.i.i:              ; preds = %for.body.i.i.i
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i, %for.body.i.i.i ]
  %8 = trunc nuw i64 %indvars.iv.next.i.i.i.lcssa to i32
  br label %for.cond16.preheader.i.i.i

for.cond16.preheader.i.i.i:                       ; preds = %for.cond16.preheader.loopexit.i.i.i, %if.end.i.i.i
  %index.0.lcssa.i.i.i = phi i32 [ 0, %if.end.i.i.i ], [ %8, %for.cond16.preheader.loopexit.i.i.i ]
  %cmp1745.i.i.i = icmp ult i32 %index.0.lcssa.i.i.i, %spec.select.i.i.i
  br i1 %cmp1745.i.i.i, label %for.end23.loopexit.i.i.i, label %for.end23.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %for.body.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %for.body.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %for.body.i.i.i ]
  %arrayidx.i.i.i = getelementptr ptr, ptr %7, i64 %indvars.iv.i.i.i
  %9 = load ptr, ptr %arrayidx.i.i.i, align 8, !tbaa !23
  %arrayidx15.i.i.i = getelementptr ptr, ptr %call.i.i.i, i64 %indvars.iv.i.i.i
  store ptr %9, ptr %arrayidx15.i.i.i, align 8, !tbaa !23
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond16.preheader.loopexit.i.i.i, label %for.body.i.i.i, !llvm.loop !24

for.end23.loopexit.i.i.i:                         ; preds = %for.cond16.preheader.i.i.i
  %10 = zext i32 %index.0.lcssa.i.i.i to i64
  %11 = shl nuw nsw i64 %10, 3
  %scevgep.i.i.i = getelementptr i8, ptr %call.i.i.i, i64 %11
  %12 = xor i32 %index.0.lcssa.i.i.i, -1
  %13 = add i32 %spec.select.i.i.i, %12
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = add nuw nsw i64 %15, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %16, i1 false), !tbaa !23
  br label %for.end23.i.i.i

for.end23.i.i.i:                                  ; preds = %for.end23.loopexit.i.i.i, %for.cond16.preheader.i.i.i
  %17 = load ptr, ptr %fMemoryManager.i.i.i, align 8, !tbaa !19
  %fElemList25.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %18 = load ptr, ptr %fElemList25.i.i.i, align 8, !tbaa !22
  %vtable26.i.i.i = load ptr, ptr %17, align 8, !tbaa !20
  %vfn27.i.i.i = getelementptr inbounds nuw i8, ptr %vtable26.i.i.i, i64 24
  %19 = load ptr, ptr %vfn27.i.i.i, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %18)
  store ptr %call.i.i.i, ptr %fElemList25.i.i.i, align 8, !tbaa !22
  store i32 %spec.select.i.i.i, ptr %fMaxCount.i.i.i, align 8, !tbaa !18
  br label %_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE4pushEPS3_.exit

_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE4pushEPS3_.exit: ; preds = %for.end23.i.i.i, %entry
  %fElemList.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %20 = load ptr, ptr %fElemList.i.i, align 8, !tbaa !22
  %21 = load i32, ptr %fCurCount.i.i.i, align 4, !tbaa !12
  %idxprom.i.i = zext i32 %21 to i64
  %arrayidx.i.i = getelementptr ptr, ptr %20, i64 %idxprom.i.i
  store ptr %1, ptr %arrayidx.i.i, align 8, !tbaa !23
  %inc.i.i = add i32 %21, 1
  store i32 %inc.i.i, ptr %fCurCount.i.i.i, align 4, !tbaa !12
  %fMemoryManager = getelementptr inbounds nuw i8, ptr %this, i64 40
  %22 = load ptr, ptr %fMemoryManager, align 8, !tbaa !26
  %call = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %22)
  %23 = load ptr, ptr %fMemoryManager, align 8, !tbaa !26
  %call3 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %23)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE4pushEPS3_.exit
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %call3)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  %24 = load ptr, ptr %fMemoryManager, align 8, !tbaa !26
  store ptr %24, ptr %call, align 8, !tbaa !27
  %fAdoptedElems.i = getelementptr inbounds nuw i8, ptr %call, i64 8
  store i8 0, ptr %fAdoptedElems.i, align 8, !tbaa !31
  %fBucketList.i = getelementptr inbounds nuw i8, ptr %call, i64 16
  store ptr null, ptr %fBucketList.i, align 8, !tbaa !32
  %fHashModulus.i = getelementptr inbounds nuw i8, ptr %call, i64 24
  store i32 13, ptr %fHashModulus.i, align 8, !tbaa !33
  %fInitialModulus.i = getelementptr inbounds nuw i8, ptr %call, i64 28
  store i32 13, ptr %fInitialModulus.i, align 4, !tbaa !34
  %fCount.i = getelementptr inbounds nuw i8, ptr %call, i64 32
  store i32 0, ptr %fCount.i, align 8, !tbaa !35
  %fHash.i = getelementptr inbounds nuw i8, ptr %call, i64 40
  store ptr null, ptr %fHash.i, align 8, !tbaa !36
  %vtable.i.i = load ptr, ptr %24, align 8, !tbaa !20
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 16
  %25 = load ptr, ptr %vfn.i.i, align 8
  %call.i.i11 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef 104)
          to label %call.i.i.noexc unwind label %lpad

call.i.i.noexc:                                   ; preds = %invoke.cont5
  store ptr %call.i.i11, ptr %fBucketList.i, align 8, !tbaa !32
  %26 = load i32, ptr %fHashModulus.i, align 8, !tbaa !33
  %cmp49.not.i.i = icmp eq i32 %26, 0
  br i1 %cmp49.not.i.i, label %invoke.cont7, label %for.cond.cleanup.loopexit.i.i

for.cond.cleanup.loopexit.i.i:                    ; preds = %call.i.i.noexc
  %27 = zext i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %call.i.i11, i8 0, i64 %28, i1 false), !tbaa !37
  br label %invoke.cont7

invoke.cont7:                                     ; preds = %for.cond.cleanup.loopexit.i.i, %call.i.i.noexc
  store ptr %call3, ptr %fHash.i, align 8, !tbaa !36
  store ptr %call, ptr %fGlobalICMap, align 8, !tbaa !11
  ret void

lpad:                                             ; preds = %invoke.cont5, %_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE4pushEPS3_.exit
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad4:                                            ; preds = %invoke.cont
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %call3, ptr noundef %23) #5
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad4, %lpad
  %.pn = phi { ptr, i32 } [ %29, %lpad ], [ %30, %lpad4 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %call, ptr noundef %22) #5
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!0 = !{!1, !8, i64 24}
!1 = !{!"_ZTSN11xercesc_2_715ValueStoreCacheE", !2, i64 0, !6, i64 8, !7, i64 16, !8, i64 24, !9, i64 32, !10, i64 40}
!2 = !{!"p1 _ZTSN11xercesc_2_711RefVectorOfINS_10ValueStoreEEE", !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"p1 _ZTSN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEE", !3, i64 0}
!7 = !{!"p1 _ZTSN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEEE", !3, i64 0}
!8 = !{!"p1 _ZTSN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEEE", !3, i64 0}
!9 = !{!"p1 _ZTSN11xercesc_2_710XMLScannerE", !3, i64 0}
!10 = !{!"p1 _ZTSN11xercesc_2_713MemoryManagerE", !3, i64 0}
!11 = !{!1, !6, i64 8}
!12 = !{!13, !15, i64 12}
!13 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE", !14, i64 8, !15, i64 12, !15, i64 16, !16, i64 24, !10, i64 32}
!14 = !{!"bool", !4, i64 0}
!15 = !{!"int", !4, i64 0}
!16 = !{!"p2 _ZTSN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEE", !17, i64 0}
!17 = !{!"any p2 pointer", !3, i64 0}
!18 = !{!13, !15, i64 16}
!19 = !{!13, !10, i64 32}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !5, i64 0}
!22 = !{!13, !16, i64 24}
!23 = !{!6, !6, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!1, !10, i64 40}
!27 = !{!28, !10, i64 0}
!28 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEE", !10, i64 0, !14, i64 8, !29, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !30, i64 40}
!29 = !{!"p2 _ZTSN11xercesc_2_722RefHashTableBucketElemINS_10ValueStoreEEE", !17, i64 0}
!30 = !{!"p1 _ZTSN11xercesc_2_78HashBaseE", !3, i64 0}
!31 = !{!28, !14, i64 8}
!32 = !{!28, !29, i64 16}
!33 = !{!28, !15, i64 24}
!34 = !{!28, !15, i64 28}
!35 = !{!28, !15, i64 32}
!36 = !{!28, !30, i64 40}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTSN11xercesc_2_722RefHashTableBucketElemINS_10ValueStoreEEE", !3, i64 0}
