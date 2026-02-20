; ModuleID = '/tmp/tmp.xFMFiOQeCM/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/simulator/cgate.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.SimTime = type { i64 }

@_ZTI13cRuntimeError = external dso_local constant { ptr, ptr, ptr }, align 8
@.str.21 = external hidden unnamed_addr constant [161 x i8], align 1
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5cGate7deliverEP8cMessage7SimTime(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef %msg, ptr dead_on_return noundef readonly captures(none) %t) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %agg.tmp = alloca %class.SimTime, align 8
  %agg.tmp8 = alloca %class.SimTime, align 8
  %agg.tmp18 = alloca %class.SimTime, align 8
  %nextgatep = getelementptr inbounds nuw i8, ptr %this, i64 40
  %0 = load ptr, ptr %nextgatep, align 8, !tbaa !0
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %desc.i = getelementptr inbounds nuw i8, ptr %this, i64 8
  %1 = load ptr, ptr %desc.i, align 8, !tbaa !10
  %2 = load ptr, ptr %1, align 8, !tbaa !11
  %3 = load i64, ptr %t, align 8, !tbaa !15
  store i64 %3, ptr %agg.tmp, align 8, !tbaa !15
  %vtable = load ptr, ptr %2, align 8, !tbaa !18
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 376
  %4 = load ptr, ptr %vfn, align 8
  call void %4(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef %msg, ptr noundef nonnull %this, ptr dead_on_return noundef nonnull %agg.tmp)
  br label %return

if.else:                                          ; preds = %entry
  %channelp = getelementptr inbounds nuw i8, ptr %this, i64 24
  %5 = load ptr, ptr %channelp, align 8, !tbaa !20
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else12, label %if.then2

if.then2:                                         ; preds = %if.else
  %flags.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %6 = load i16, ptr %flags.i, align 8, !tbaa !21
  %7 = and i16 %6, 8
  %tobool.i.not = icmp eq i16 %7, 0
  br i1 %tobool.i.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then2
  %exception = tail call ptr @__cxa_allocate_exception(i64 128) #4
  %8 = load ptr, ptr %channelp, align 8, !tbaa !20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %exception, ptr noundef %8, ptr noundef nonnull @.str.21)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then5
  tail call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #5
  unreachable

lpad:                                             ; preds = %if.then5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %exception) #4
  resume { ptr, i32 } %9

if.end:                                           ; preds = %if.then2
  %10 = load i64, ptr %t, align 8, !tbaa !15
  store i64 %10, ptr %agg.tmp8, align 8, !tbaa !15
  %vtable9 = load ptr, ptr %5, align 8, !tbaa !18
  %vfn10 = getelementptr inbounds nuw i8, ptr %vtable9, i64 376
  %11 = load ptr, ptr %vfn10, align 8
  %call11 = call noundef zeroext i1 %11(ptr noundef nonnull align 8 dereferenceable(116) %5, ptr noundef %msg, ptr dead_on_return noundef nonnull %agg.tmp8)
  br label %return

if.else12:                                        ; preds = %if.else
  %12 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !25
  %suppress_notifications = getelementptr inbounds nuw i8, ptr %12, i64 9
  %13 = load i8, ptr %suppress_notifications, align 1, !tbaa !27, !range !31, !noundef !32
  %loadedv = trunc nuw i8 %13 to i1
  br i1 %loadedv, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.else12
  %vtable15 = load ptr, ptr %12, align 8, !tbaa !18
  %vfn16 = getelementptr inbounds nuw i8, ptr %vtable15, i64 96
  %14 = load ptr, ptr %vfn16, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(288) %12, ptr noundef %msg, ptr noundef nonnull %this)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.else12
  %15 = load ptr, ptr %nextgatep, align 8, !tbaa !0
  %16 = load i64, ptr %t, align 8, !tbaa !15
  store i64 %16, ptr %agg.tmp18, align 8, !tbaa !15
  %vtable19 = load ptr, ptr %15, align 8, !tbaa !18
  %vfn20 = getelementptr inbounds nuw i8, ptr %vtable19, i64 152
  %17 = load ptr, ptr %vfn20, align 8
  %call21 = call noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %msg, ptr dead_on_return noundef nonnull %agg.tmp18)
  br label %return

return:                                           ; preds = %cond.end, %if.end, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ %call11, %if.end ], [ %call21, %cond.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nounwind uwtable
declare dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #3 align 2

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!0 = !{!1, !9, i64 40}
!1 = !{!"_ZTS5cGate", !2, i64 0, !3, i64 8, !7, i64 16, !8, i64 24, !9, i64 32, !9, i64 40}
!2 = !{!"_ZTS7cObject"}
!3 = !{!"p1 _ZTSN5cGate4DescE", !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"p1 _ZTS8cChannel", !4, i64 0}
!9 = !{!"p1 _ZTS5cGate", !4, i64 0}
!10 = !{!1, !3, i64 8}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSN5cGate4DescE", !13, i64 0, !14, i64 8, !7, i64 16, !5, i64 24, !5, i64 32}
!13 = !{!"p1 _ZTS7cModule", !4, i64 0}
!14 = !{!"p1 _ZTSN5cGate4NameE", !4, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTS7SimTime", !17, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !6, i64 0}
!20 = !{!1, !8, i64 24}
!21 = !{!22, !24, i64 16}
!22 = !{!"_ZTS12cNamedObject", !2, i64 0, !23, i64 8, !24, i64 16, !24, i64 18}
!23 = !{!"p1 omnipotent char", !4, i64 0}
!24 = !{!"short", !5, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS6cEnvir", !4, i64 0}
!27 = !{!28, !29, i64 9}
!28 = !{!"_ZTS6cEnvir", !29, i64 8, !29, i64 9, !29, i64 10, !30, i64 16}
!29 = !{!"bool", !5, i64 0}
!30 = !{!"_ZTSSo"}
!31 = !{i8 0, i8 2}
!32 = !{}
