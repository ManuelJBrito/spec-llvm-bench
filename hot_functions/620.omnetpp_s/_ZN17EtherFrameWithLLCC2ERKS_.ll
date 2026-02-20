; ModuleID = '/tmp/tmp.aSuhtTKLDN/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/model/EtherFrame_m.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ZTV10EtherFrame = external dso_local unnamed_addr constant { [34 x ptr] }, align 8
@_ZTV17EtherFrameWithLLC = external dso_local unnamed_addr constant { [40 x ptr] }, align 8

declare void @_ZN7cPacketC2EPKcsl(ptr noundef nonnull align 8 dereferenceable(186), ptr noundef, i16 noundef signext, i64 noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN7cPacketD2Ev(ptr noundef nonnull align 8 dereferenceable(186)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(186) ptr @_ZN7cPacketaSERKS_(ptr noundef nonnull align 8 dereferenceable(186), ptr noundef nonnull align 8 dereferenceable(186)) local_unnamed_addr #0

declare void @_ZN10MACAddressC1Ev(ptr noundef nonnull align 1 dereferenceable(6)) unnamed_addr #0

declare noundef nonnull align 1 dereferenceable(6) ptr @_ZN10MACAddressaSERKS_(ptr noundef nonnull align 1 dereferenceable(6), ptr noundef nonnull align 1 dereferenceable(6)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17EtherFrameWithLLCC2ERKS_(ptr noundef nonnull align 8 dereferenceable(212) %this, ptr noundef nonnull align 8 dereferenceable(212) %other) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  tail call void @_ZN7cPacketC2EPKcsl(ptr noundef nonnull align 8 dereferenceable(198) %this, ptr noundef null, i16 noundef signext 0, i64 noundef 0)
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTV10EtherFrame, i64 16), ptr %this, align 8, !tbaa !0
  %dest_var.i = getelementptr inbounds nuw i8, ptr %this, i64 186
  invoke void @_ZN10MACAddressC1Ev(ptr noundef nonnull align 1 dereferenceable(6) %dest_var.i)
          to label %invoke.cont.i unwind label %lpad.i

invoke.cont.i:                                    ; preds = %entry
  %src_var.i = getelementptr inbounds nuw i8, ptr %this, i64 192
  invoke void @_ZN10MACAddressC1Ev(ptr noundef nonnull align 1 dereferenceable(6) %src_var.i)
          to label %_ZN10EtherFrameC2EPKci.exit unwind label %lpad.i

common.resume:                                    ; preds = %lpad, %lpad.i
  %common.resume.op = phi { ptr, i32 } [ %0, %lpad.i ], [ %6, %lpad ]
  resume { ptr, i32 } %common.resume.op

lpad.i:                                           ; preds = %invoke.cont.i, %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7cPacketD2Ev(ptr noundef nonnull align 8 dereferenceable(198) %this) #3
  br label %common.resume

_ZN10EtherFrameC2EPKci.exit:                      ; preds = %invoke.cont.i
  store ptr getelementptr inbounds nuw inrange(-16, 304) (i8, ptr @_ZTV17EtherFrameWithLLC, i64 16), ptr %this, align 8, !tbaa !0
  %vtable = load ptr, ptr %other, align 8, !tbaa !0
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %1 = load ptr, ptr %vfn, align 8
  %call = invoke noundef ptr %1(ptr noundef nonnull align 8 dereferenceable(20) %other)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZN10EtherFrameC2EPKci.exit
  %vtable2 = load ptr, ptr %this, align 8, !tbaa !0
  %vfn3 = getelementptr inbounds nuw i8, ptr %vtable2, i64 152
  %2 = load ptr, ptr %vfn3, align 8
  invoke void %2(ptr noundef nonnull align 8 dereferenceable(20) %this, ptr noundef %call)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont
  %cmp.i = icmp eq ptr %this, %other
  br i1 %cmp.i, label %invoke.cont5, label %_ZN10EtherFrameaSERKS_.exit.i

_ZN10EtherFrameaSERKS_.exit.i:                    ; preds = %invoke.cont4
  %call.i.i9 = invoke noundef nonnull align 8 dereferenceable(186) ptr @_ZN7cPacketaSERKS_(ptr noundef nonnull align 8 dereferenceable(212) %this, ptr noundef nonnull align 8 dereferenceable(212) %other)
          to label %call.i.i.noexc unwind label %lpad

call.i.i.noexc:                                   ; preds = %_ZN10EtherFrameaSERKS_.exit.i
  %dest_var.i.i = getelementptr inbounds nuw i8, ptr %other, i64 186
  %call3.i.i10 = invoke noundef nonnull align 1 dereferenceable(6) ptr @_ZN10MACAddressaSERKS_(ptr noundef nonnull align 1 dereferenceable(6) %dest_var.i, ptr noundef nonnull align 1 dereferenceable(6) %dest_var.i.i)
          to label %call3.i.i.noexc unwind label %lpad

call3.i.i.noexc:                                  ; preds = %call.i.i.noexc
  %src_var.i.i = getelementptr inbounds nuw i8, ptr %other, i64 192
  %call5.i.i11 = invoke noundef nonnull align 1 dereferenceable(6) ptr @_ZN10MACAddressaSERKS_(ptr noundef nonnull align 1 dereferenceable(6) %src_var.i, ptr noundef nonnull align 1 dereferenceable(6) %src_var.i.i)
          to label %call5.i.i.noexc unwind label %lpad

call5.i.i.noexc:                                  ; preds = %call3.i.i.noexc
  %ssap_var.i = getelementptr inbounds nuw i8, ptr %other, i64 200
  %3 = load i32, ptr %ssap_var.i, align 8, !tbaa !3
  %ssap_var2.i = getelementptr inbounds nuw i8, ptr %this, i64 200
  store i32 %3, ptr %ssap_var2.i, align 8, !tbaa !3
  %dsap_var.i = getelementptr inbounds nuw i8, ptr %other, i64 204
  %4 = load i32, ptr %dsap_var.i, align 4, !tbaa !22
  %dsap_var3.i = getelementptr inbounds nuw i8, ptr %this, i64 204
  store i32 %4, ptr %dsap_var3.i, align 4, !tbaa !22
  %control_var.i = getelementptr inbounds nuw i8, ptr %other, i64 208
  %5 = load i32, ptr %control_var.i, align 8, !tbaa !23
  %control_var4.i = getelementptr inbounds nuw i8, ptr %this, i64 208
  store i32 %5, ptr %control_var4.i, align 8, !tbaa !23
  br label %invoke.cont5

invoke.cont5:                                     ; preds = %call5.i.i.noexc, %invoke.cont4
  ret void

lpad:                                             ; preds = %call3.i.i.noexc, %call.i.i.noexc, %_ZN10EtherFrameaSERKS_.exit.i, %invoke.cont, %_ZN10EtherFrameC2EPKci.exit
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7cPacketD2Ev(ptr noundef nonnull align 8 dereferenceable(198) %this) #3
  br label %common.resume
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!0 = !{!1, !1, i64 0}
!1 = !{!"vtable pointer", !2, i64 0}
!2 = !{!"Simple C++ TBAA"}
!3 = !{!4, !16, i64 200}
!4 = !{!"_ZTS17EtherFrameWithLLC", !5, i64 0, !16, i64 200, !16, i64 204, !16, i64 208}
!5 = !{!"_ZTS10EtherFrame", !6, i64 0, !21, i64 186, !21, i64 192}
!6 = !{!"_ZTS7cPacket", !7, i64 0, !19, i64 160, !18, i64 168, !20, i64 176, !14, i64 184}
!7 = !{!"_ZTS8cMessage", !8, i64 0, !14, i64 36, !14, i64 38, !14, i64 40, !17, i64 48, !15, i64 56, !12, i64 64, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !16, i64 120, !19, i64 128, !19, i64 136, !19, i64 144, !19, i64 152}
!8 = !{!"_ZTS12cOwnedObject", !9, i64 0, !15, i64 24, !16, i64 32}
!9 = !{!"_ZTS12cNamedObject", !10, i64 0, !11, i64 8, !14, i64 16, !14, i64 18}
!10 = !{!"_ZTS7cObject"}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !13, i64 0}
!13 = !{!"omnipotent char", !2, i64 0}
!14 = !{!"short", !13, i64 0}
!15 = !{!"p1 _ZTS7cObject", !12, i64 0}
!16 = !{!"int", !13, i64 0}
!17 = !{!"p1 _ZTS6cArray", !12, i64 0}
!18 = !{!"_ZTS7SimTime", !19, i64 0}
!19 = !{!"long", !13, i64 0}
!20 = !{!"p1 _ZTS7cPacket", !12, i64 0}
!21 = !{!"_ZTS10MACAddress", !13, i64 0}
!22 = !{!4, !16, i64 204}
!23 = !{!4, !16, i64 208}
