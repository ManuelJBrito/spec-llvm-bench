; ModuleID = '/tmp/tmp.guVlp9vYKI/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/simulator/cmessage.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ZN8cMessage7next_idE = external dso_local local_unnamed_addr global i64, align 8
@_ZN8cMessage10total_msgsE = external dso_local local_unnamed_addr global i64, align 8
@_ZN8cMessage9live_msgsE = external dso_local local_unnamed_addr global i64, align 8
@_ZTV8cMessage = external dso_local unnamed_addr constant { [28 x ptr] }, align 8
@_ZTV7cPacket = external dso_local unnamed_addr constant { [28 x ptr] }, align 8

declare void @_ZN12cOwnedObjectC2ERKS_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
declare dso_local noundef nonnull align 8 dereferenceable(160) ptr @_ZN8cMessageaSERKS_(ptr noundef nonnull returned align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1 align 2

; Function Attrs: nounwind
declare void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare dso_local void @_ZN8cMessageD2Ev(ptr noundef nonnull align 8 dereferenceable(160) initializes((0, 8))) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cPacketC2ERKS_(ptr noundef nonnull align 8 dereferenceable(186) %this, ptr noundef nonnull align 8 dereferenceable(186) %pkt) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  tail call void @_ZN12cOwnedObjectC2ERKS_(ptr noundef nonnull align 8 dereferenceable(160) %this, ptr noundef nonnull align 8 dereferenceable(160) %pkt)
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV8cMessage, i64 16), ptr %this, align 8, !tbaa !0
  %created.i = getelementptr inbounds nuw i8, ptr %this, i64 88
  %parlistp.i = getelementptr inbounds nuw i8, ptr %this, i64 48
  %heapindex.i = getelementptr inbounds nuw i8, ptr %this, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %parlistp.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %created.i, i8 0, i64 32, i1 false)
  store i32 -1, ptr %heapindex.i, align 8, !tbaa !3
  %prev_event_num.i = getelementptr inbounds nuw i8, ptr %this, i64 136
  store i64 -1, ptr %prev_event_num.i, align 8, !tbaa !17
  %call.i = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN8cMessageaSERKS_(ptr noundef nonnull align 8 dereferenceable(160) %this, ptr noundef nonnull align 8 dereferenceable(160) %pkt)
          to label %_ZN8cMessageC2ERKS_.exit unwind label %lpad.i

common.resume:                                    ; preds = %lpad, %lpad.i
  %common.resume.op = phi { ptr, i32 } [ %0, %lpad.i ], [ %4, %lpad ]
  resume { ptr, i32 } %common.resume.op

lpad.i:                                           ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %this) #5
  br label %common.resume

_ZN8cMessageC2ERKS_.exit:                         ; preds = %entry
  %1 = load i64, ptr @_ZN8cMessage7next_idE, align 8, !tbaa !18
  %inc.i = add nsw i64 %1, 1
  store i64 %inc.i, ptr @_ZN8cMessage7next_idE, align 8, !tbaa !18
  %msgid.i = getelementptr inbounds nuw i8, ptr %this, i64 144
  store i64 %1, ptr %msgid.i, align 8, !tbaa !19
  %2 = load i64, ptr @_ZN8cMessage10total_msgsE, align 8, !tbaa !18
  %inc6.i = add nsw i64 %2, 1
  store i64 %inc6.i, ptr @_ZN8cMessage10total_msgsE, align 8, !tbaa !18
  %3 = load i64, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !18
  %inc7.i = add nsw i64 %3, 1
  store i64 %inc7.i, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV7cPacket, i64 16), ptr %this, align 8, !tbaa !0
  %duration = getelementptr inbounds nuw i8, ptr %this, i64 168
  store i64 0, ptr %duration, align 8, !tbaa !20
  %encapmsg = getelementptr inbounds nuw i8, ptr %this, i64 176
  store ptr null, ptr %encapmsg, align 8, !tbaa !21
  %sharecount = getelementptr inbounds nuw i8, ptr %this, i64 184
  store i16 0, ptr %sharecount, align 8, !tbaa !24
  %call = invoke noundef nonnull align 8 dereferenceable(186) ptr @_ZN7cPacketaSERKS_(ptr noundef nonnull align 8 dereferenceable(186) %this, ptr noundef nonnull align 8 dereferenceable(186) %pkt)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %_ZN8cMessageC2ERKS_.exit
  ret void

lpad:                                             ; preds = %_ZN8cMessageC2ERKS_.exit
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8cMessageD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %this) #5
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
declare dso_local noundef nonnull align 8 dereferenceable(186) ptr @_ZN7cPacketaSERKS_(ptr noundef nonnull returned align 8 dereferenceable(186), ptr noundef nonnull align 8 dereferenceable(186)) local_unnamed_addr #1 align 2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!0 = !{!1, !1, i64 0}
!1 = !{!"vtable pointer", !2, i64 0}
!2 = !{!"Simple C++ TBAA"}
!3 = !{!4, !13, i64 120}
!4 = !{!"_ZTS8cMessage", !5, i64 0, !11, i64 36, !11, i64 38, !11, i64 40, !14, i64 48, !12, i64 56, !9, i64 64, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !13, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152}
!5 = !{!"_ZTS12cOwnedObject", !6, i64 0, !12, i64 24, !13, i64 32}
!6 = !{!"_ZTS12cNamedObject", !7, i64 0, !8, i64 8, !11, i64 16, !11, i64 18}
!7 = !{!"_ZTS7cObject"}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !2, i64 0}
!11 = !{!"short", !10, i64 0}
!12 = !{!"p1 _ZTS7cObject", !9, i64 0}
!13 = !{!"int", !10, i64 0}
!14 = !{!"p1 _ZTS6cArray", !9, i64 0}
!15 = !{!"_ZTS7SimTime", !16, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = !{!4, !16, i64 136}
!18 = !{!16, !16, i64 0}
!19 = !{!4, !16, i64 144}
!20 = !{!15, !16, i64 0}
!21 = !{!22, !23, i64 176}
!22 = !{!"_ZTS7cPacket", !4, i64 0, !16, i64 160, !15, i64 168, !23, i64 176, !11, i64 184}
!23 = !{!"p1 _ZTS7cPacket", !9, i64 0}
!24 = !{!22, !11, i64 184}
