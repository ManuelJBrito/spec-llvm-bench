; ModuleID = '/tmp/tmp.NFAuRqXwTg/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/simulator/cmessageheap.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN12cMessageHeap11removeFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %this) local_unnamed_addr #0 align 2 {
entry:
  %n = getelementptr inbounds nuw i8, ptr %this, i64 48
  %0 = load i32, ptr %n, align 8, !tbaa !0
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %h = getelementptr inbounds nuw i8, ptr %this, i64 40
  %1 = load ptr, ptr %h, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !16
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %n, align 8, !tbaa !0
  %idxprom = zext nneg i32 %0 to i64
  %arrayidx4 = getelementptr inbounds nuw ptr, ptr %1, i64 %idxprom
  %3 = load ptr, ptr %arrayidx4, align 8, !tbaa !16
  store ptr %3, ptr %arrayidx, align 8, !tbaa !16
  %heapindex = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i32 1, ptr %heapindex, align 8, !tbaa !18
  %cmp.not75.i = icmp slt i32 %0, 3
  br i1 %cmp.not75.i, label %_ZN12cMessageHeap7shiftupEi.exit, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.then
  %4 = load ptr, ptr %h, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.then15.i, %while.body.lr.ph.i
  %shl77.i = phi i32 [ 2, %while.body.lr.ph.i ], [ %shl.i, %if.then15.i ]
  %i.076.i = phi i32 [ 1, %while.body.lr.ph.i ], [ %j.0.i, %if.then15.i ]
  %cmp3.i = icmp slt i32 %shl77.i, %dec
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %idxprom.i = sext i32 %shl77.i to i64
  %arrayidx.i = getelementptr inbounds ptr, ptr %4, i64 %idxprom.i
  %5 = load ptr, ptr %arrayidx.i, align 8, !tbaa !16
  %add.i = or disjoint i32 %shl77.i, 1
  %idxprom5.i = sext i32 %add.i to i64
  %arrayidx6.i = getelementptr inbounds ptr, ptr %4, i64 %idxprom5.i
  %6 = load ptr, ptr %arrayidx6.i, align 8, !tbaa !16
  %delivd.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 104
  %7 = load i64, ptr %delivd.i.i.i.i, align 8, !tbaa !22, !noalias !23
  %delivd.i37.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 104
  %8 = load i64, ptr %delivd.i37.i.i.i, align 8, !tbaa !22, !noalias !26
  %cmp.i.i.i.i = icmp slt i64 %7, %8
  br i1 %cmp.i.i.i.i, label %_ZgtR8cMessageS0_.exit.thread.i, label %cond.false.i.i.i

cond.false.i.i.i:                                 ; preds = %land.lhs.true.i
  %cmp.i40.i.i.i = icmp sgt i64 %7, %8
  br i1 %cmp.i40.i.i.i, label %if.end.i, label %cond.false6.i.i.i

cond.false6.i.i.i:                                ; preds = %cond.false.i.i.i
  %prior.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 38
  %9 = load i16, ptr %prior.i.i.i.i, align 2, !tbaa !29
  %prior.i41.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 38
  %10 = load i16, ptr %prior.i41.i.i.i, align 2, !tbaa !29
  %cmp.i.i.i = icmp slt i16 %9, %10
  br i1 %cmp.i.i.i, label %_ZgtR8cMessageS0_.exit.thread.i, label %cond.false11.i.i.i

cond.false11.i.i.i:                               ; preds = %cond.false6.i.i.i
  %cmp16.i.i.i = icmp sgt i16 %9, %10
  br i1 %cmp16.i.i.i, label %if.end.i, label %_ZgtR8cMessageS0_.exit.i

_ZgtR8cMessageS0_.exit.i:                         ; preds = %cond.false11.i.i.i
  %insertordr.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 128
  %11 = load i64, ptr %insertordr.i.i.i.i, align 8, !tbaa !30
  %insertordr.i44.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 128
  %12 = load i64, ptr %insertordr.i44.i.i.i, align 8, !tbaa !30
  %.fr.i = freeze i64 %11
  %.fr73.i = freeze i64 %12
  %cmp21.i.not.i.not.i = icmp ugt i64 %.fr.i, %.fr73.i
  br i1 %cmp21.i.not.i.not.i, label %if.end.i, label %_ZgtR8cMessageS0_.exit.thread.i

_ZgtR8cMessageS0_.exit.thread.i:                  ; preds = %_ZgtR8cMessageS0_.exit.i, %cond.false6.i.i.i, %land.lhs.true.i
  br label %if.end.i

if.end.i:                                         ; preds = %_ZgtR8cMessageS0_.exit.thread.i, %_ZgtR8cMessageS0_.exit.i, %cond.false11.i.i.i, %cond.false.i.i.i, %while.body.i
  %j.0.i = phi i32 [ %shl77.i, %while.body.i ], [ %shl77.i, %_ZgtR8cMessageS0_.exit.thread.i ], [ %add.i, %_ZgtR8cMessageS0_.exit.i ], [ %add.i, %cond.false.i.i.i ], [ %add.i, %cond.false11.i.i.i ]
  %idxprom8.i = sext i32 %i.076.i to i64
  %arrayidx9.i = getelementptr inbounds ptr, ptr %4, i64 %idxprom8.i
  %13 = load ptr, ptr %arrayidx9.i, align 8, !tbaa !16
  %idxprom11.i = sext i32 %j.0.i to i64
  %arrayidx12.i = getelementptr inbounds ptr, ptr %4, i64 %idxprom11.i
  %14 = load ptr, ptr %arrayidx12.i, align 8, !tbaa !16
  %delivd.i.i.i42.i = getelementptr inbounds nuw i8, ptr %13, i64 104
  %15 = load i64, ptr %delivd.i.i.i42.i, align 8, !tbaa !22, !noalias !31
  %delivd.i37.i.i43.i = getelementptr inbounds nuw i8, ptr %14, i64 104
  %16 = load i64, ptr %delivd.i37.i.i43.i, align 8, !tbaa !22, !noalias !34
  %cmp.i.i.i44.i = icmp slt i64 %15, %16
  br i1 %cmp.i.i.i44.i, label %_ZN12cMessageHeap7shiftupEi.exit.loopexit, label %cond.false.i.i45.i

cond.false.i.i45.i:                               ; preds = %if.end.i
  %cmp.i40.i.i46.i = icmp sgt i64 %15, %16
  br i1 %cmp.i40.i.i46.i, label %if.then15.i, label %cond.false6.i.i47.i

cond.false6.i.i47.i:                              ; preds = %cond.false.i.i45.i
  %prior.i.i.i48.i = getelementptr inbounds nuw i8, ptr %13, i64 38
  %17 = load i16, ptr %prior.i.i.i48.i, align 2, !tbaa !29
  %prior.i41.i.i49.i = getelementptr inbounds nuw i8, ptr %14, i64 38
  %18 = load i16, ptr %prior.i41.i.i49.i, align 2, !tbaa !29
  %cmp.i.i50.i = icmp slt i16 %17, %18
  br i1 %cmp.i.i50.i, label %_ZN12cMessageHeap7shiftupEi.exit.loopexit, label %cond.false11.i.i51.i

cond.false11.i.i51.i:                             ; preds = %cond.false6.i.i47.i
  %cmp16.i.i52.i = icmp sgt i16 %17, %18
  br i1 %cmp16.i.i52.i, label %if.then15.i, label %_ZgtR8cMessageS0_.exit58.i

_ZgtR8cMessageS0_.exit58.i:                       ; preds = %cond.false11.i.i51.i
  %insertordr.i.i.i54.i = getelementptr inbounds nuw i8, ptr %13, i64 128
  %19 = load i64, ptr %insertordr.i.i.i54.i, align 8, !tbaa !30
  %insertordr.i44.i.i55.i = getelementptr inbounds nuw i8, ptr %14, i64 128
  %20 = load i64, ptr %insertordr.i44.i.i55.i, align 8, !tbaa !30
  %cmp21.i.not.i56.not.i = icmp ugt i64 %19, %20
  br i1 %cmp21.i.not.i56.not.i, label %if.then15.i, label %_ZN12cMessageHeap7shiftupEi.exit.loopexit

if.then15.i:                                      ; preds = %_ZgtR8cMessageS0_.exit58.i, %cond.false11.i.i51.i, %cond.false.i.i45.i
  store ptr %13, ptr %arrayidx12.i, align 8, !tbaa !16
  %heapindex.i = getelementptr inbounds nuw i8, ptr %13, i64 120
  store i32 %j.0.i, ptr %heapindex.i, align 8, !tbaa !18
  store ptr %14, ptr %arrayidx9.i, align 8, !tbaa !16
  %heapindex28.i = getelementptr inbounds nuw i8, ptr %14, i64 120
  store i32 %i.076.i, ptr %heapindex28.i, align 8, !tbaa !18
  %shl.i = shl i32 %j.0.i, 1
  %cmp.not.i.not = icmp slt i32 %shl.i, %0
  br i1 %cmp.not.i.not, label %while.body.i, label %_ZN12cMessageHeap7shiftupEi.exit.loopexit, !llvm.loop !37

_ZN12cMessageHeap7shiftupEi.exit.loopexit:        ; preds = %if.then15.i, %_ZgtR8cMessageS0_.exit58.i, %cond.false6.i.i47.i, %if.end.i
  br label %_ZN12cMessageHeap7shiftupEi.exit

_ZN12cMessageHeap7shiftupEi.exit:                 ; preds = %_ZN12cMessageHeap7shiftupEi.exit.loopexit, %if.then
  %vtable = load ptr, ptr %this, align 8, !tbaa !39
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 104
  %21 = load ptr, ptr %vfn, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %2)
  %heapindex7 = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i32 -1, ptr %heapindex7, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %_ZN12cMessageHeap7shiftupEi.exit, %entry
  %retval.0 = phi ptr [ %2, %_ZN12cMessageHeap7shiftupEi.exit ], [ null, %entry ]
  ret ptr %retval.0
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !11, i64 48}
!1 = !{!"_ZTS12cMessageHeap", !2, i64 0, !12, i64 40, !11, i64 48, !11, i64 52, !14, i64 56}
!2 = !{!"_ZTS12cOwnedObject", !3, i64 0, !10, i64 24, !11, i64 32}
!3 = !{!"_ZTS12cNamedObject", !4, i64 0, !5, i64 8, !9, i64 16, !9, i64 18}
!4 = !{!"_ZTS7cObject"}
!5 = !{!"p1 omnipotent char", !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"short", !7, i64 0}
!10 = !{!"p1 _ZTS7cObject", !6, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!"p2 _ZTS8cMessage", !13, i64 0}
!13 = !{!"any p2 pointer", !6, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!1, !12, i64 40}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS8cMessage", !6, i64 0}
!18 = !{!19, !11, i64 120}
!19 = !{!"_ZTS8cMessage", !2, i64 0, !9, i64 36, !9, i64 38, !9, i64 40, !20, i64 48, !10, i64 56, !6, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !21, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !11, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152}
!20 = !{!"p1 _ZTS6cArray", !6, i64 0}
!21 = !{!"_ZTS7SimTime", !14, i64 0}
!22 = !{!21, !14, i64 0}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!25 = distinct !{!25, !"_ZNK8cMessage14getArrivalTimeEv"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!28 = distinct !{!28, !"_ZNK8cMessage14getArrivalTimeEv"}
!29 = !{!19, !9, i64 38}
!30 = !{!19, !14, i64 128}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!33 = distinct !{!33, !"_ZNK8cMessage14getArrivalTimeEv"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!36 = distinct !{!36, !"_ZNK8cMessage14getArrivalTimeEv"}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !8, i64 0}
