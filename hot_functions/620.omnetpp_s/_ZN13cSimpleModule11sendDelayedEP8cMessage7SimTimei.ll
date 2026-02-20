; ModuleID = '/tmp/tmp.U37axXPJHb/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/simulator/csimplemodule.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.SimTime = type { i64 }

@_ZTI13cRuntimeError = external dso_local constant { ptr, ptr, ptr }, align 8
@.str.13 = external hidden unnamed_addr constant [21 x i8], align 1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #0

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
declare hidden void @__clang_call_terminate(ptr noundef) local_unnamed_addr #1

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare dso_local noundef i32 @_ZN13cSimpleModule11sendDelayedEP8cMessage7SimTimeP5cGate(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, ptr dead_on_return noundef, ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13cSimpleModule11sendDelayedEP8cMessage7SimTimei(ptr noundef nonnull align 8 dereferenceable(192) %this, ptr noundef %msg, ptr dead_on_return noundef readonly captures(none) %delay, i32 noundef %gateId) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %agg.tmp = alloca %class.SimTime, align 8
  %vtable = load ptr, ptr %this, align 8, !tbaa !0
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 504
  %0 = load ptr, ptr %vfn, align 8
  %call = invoke noundef ptr %0(ptr noundef nonnull align 8 dereferenceable(176) %this, i32 noundef %gateId)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = load i64, ptr %delay, align 8, !tbaa !3
  store i64 %1, ptr %agg.tmp, align 8, !tbaa !3
  %call7 = call noundef i32 @_ZN13cSimpleModule11sendDelayedEP8cMessage7SimTimeP5cGate(ptr noundef nonnull align 8 dereferenceable(192) %this, ptr noundef %msg, ptr dead_on_return noundef nonnull %agg.tmp, ptr noundef %call)
  ret i32 0

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI13cRuntimeError
  %3 = extractvalue { ptr, i32 } %2, 1
  %4 = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI13cRuntimeError) #3
  %matches = icmp eq i32 %3, %4
  br i1 %matches, label %catch, label %ehcleanup

catch:                                            ; preds = %lpad
  %5 = extractvalue { ptr, i32 } %2, 0
  %6 = tail call ptr @__cxa_begin_catch(ptr %5) #3
  %vtable2 = load ptr, ptr %6, align 8, !tbaa !0
  %vfn3 = getelementptr inbounds nuw i8, ptr %vtable2, i64 48
  %7 = load ptr, ptr %vfn3, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull @.str.13)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #4
          to label %unreachable unwind label %lpad4

lpad4:                                            ; preds = %invoke.cont5, %catch
  %8 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %ehcleanup unwind label %terminate.lpad

ehcleanup:                                        ; preds = %lpad4, %lpad
  %lpad.val10.merged = phi { ptr, i32 } [ %2, %lpad ], [ %8, %lpad4 ]
  resume { ptr, i32 } %lpad.val10.merged

terminate.lpad:                                   ; preds = %lpad4
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #5
  unreachable

unreachable:                                      ; preds = %invoke.cont5
  unreachable
}

attributes #0 = { nounwind memory(none) }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }
attributes #5 = { noreturn nounwind }

!0 = !{!1, !1, i64 0}
!1 = !{!"vtable pointer", !2, i64 0}
!2 = !{!"Simple C++ TBAA"}
!3 = !{!4, !5, i64 0}
!4 = !{!"_ZTS7SimTime", !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !2, i64 0}
