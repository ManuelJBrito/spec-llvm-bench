; ModuleID = '/tmp/tmp.yD4QiXPx2i/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/HashXMLCh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, -1) i32 @_ZN11xercesc_2_79HashXMLCh10getHashValEPKvjPNS_13MemoryManagerE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %this, ptr noundef readonly captures(address_is_null) %key, i32 noundef %mod, ptr noundef readnone captures(none) %manager) unnamed_addr #0 align 2 {
entry:
  %cmp.i = icmp eq ptr %key, null
  br i1 %cmp.i, label %_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %0 = load i16, ptr %key, align 2, !tbaa !0
  %cmp1.i = icmp eq i16 %0, 0
  br i1 %cmp1.i, label %_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %conv.i = zext i16 %0 to i32
  %curCh.014.i = getelementptr i8, ptr %key, i64 2
  %1 = load i16, ptr %curCh.014.i, align 2, !tbaa !0
  %tobool.not15.i = icmp eq i16 %1, 0
  br i1 %tobool.not15.i, label %while.end.i, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.i.preheader
  %2 = phi i16 [ %3, %while.body.i ], [ %1, %while.body.i.preheader ]
  %curCh.017.i = phi ptr [ %curCh.0.i, %while.body.i ], [ %curCh.014.i, %while.body.i.preheader ]
  %hashVal.016.i = phi i32 [ %add4.i, %while.body.i ], [ %conv.i, %while.body.i.preheader ]
  %mul.i = mul i32 %hashVal.016.i, 38
  %shr.i = lshr i32 %hashVal.016.i, 24
  %conv3.i = zext i16 %2 to i32
  %add.i = add nuw nsw i32 %shr.i, %conv3.i
  %add4.i = add i32 %add.i, %mul.i
  %curCh.0.i = getelementptr i8, ptr %curCh.017.i, i64 2
  %3 = load i16, ptr %curCh.0.i, align 2, !tbaa !0
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %while.end.i.loopexit, label %while.body.i, !llvm.loop !4

while.end.i.loopexit:                             ; preds = %while.body.i
  %add4.i.lcssa = phi i32 [ %add4.i, %while.body.i ]
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %if.end.i
  %hashVal.0.lcssa.i = phi i32 [ %conv.i, %if.end.i ], [ %add4.i.lcssa, %while.end.i.loopexit ]
  %rem.i = urem i32 %hashVal.0.lcssa.i, %mod
  br label %_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE.exit

_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE.exit: ; preds = %while.end.i, %lor.lhs.false.i, %entry
  %retval.0.i = phi i32 [ %rem.i, %while.end.i ], [ 0, %lor.lhs.false.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !1, i64 0}
!1 = !{!"short", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C++ TBAA"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
