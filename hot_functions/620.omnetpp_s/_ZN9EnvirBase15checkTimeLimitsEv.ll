; ModuleID = '/tmp/tmp.o2dUEorVR1/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/simulator/envirbase.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.SimTime = type { i64 }

@_ZTI21cTerminationException = external dso_local constant { ptr, ptr, ptr }, align 8
@_ZN11cSimulation6simPtrE = external local_unnamed_addr global ptr, align 8
@_ZN7SimTime6fscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EnvirBase15checkTimeLimitsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(600) %this) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %class.SimTime, align 8
  %opt_simtimelimit = getelementptr inbounds nuw i8, ptr %this, i64 432
  call void @llvm.lifetime.start.p0(ptr nonnull %ref.tmp) #6
  %0 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !0
  %cmp.i.i.i = icmp eq i32 %0, 65535
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %_ZN7SimTime5checkIdEEvT_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, double noundef 0.000000e+00)
  br label %_ZN7SimTime5checkIdEEvT_.exit.i.i

_ZN7SimTime5checkIdEEvT_.exit.i.i:                ; preds = %if.then.i.i.i, %entry
  %1 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !4
  %mul.i.i = fmul double %1, 0.000000e+00
  %2 = call double @llvm.fabs.f64(double %mul.i.i)
  %cmp.i3.i.i = fcmp ogt double %2, 0x43DFFFFFFFFFEDC8
  br i1 %cmp.i3.i.i, label %if.then.i4.i.i, label %_ZN7SimTimeC2Ed.exit

if.then.i4.i.i:                                   ; preds = %_ZN7SimTime5checkIdEEvT_.exit.i.i
  call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, double noundef %mul.i.i)
  br label %_ZN7SimTimeC2Ed.exit

_ZN7SimTimeC2Ed.exit:                             ; preds = %if.then.i4.i.i, %_ZN7SimTime5checkIdEEvT_.exit.i.i
  %conv.i.i.i = fptosi double %mul.i.i to i64
  store i64 %conv.i.i.i, ptr %ref.tmp, align 8, !tbaa !6
  %3 = load i64, ptr %opt_simtimelimit, align 8, !tbaa !6
  %cmp.i.not = icmp eq i64 %3, %conv.i.i.i
  br i1 %cmp.i.not, label %if.end.critedge, label %land.rhs

land.rhs:                                         ; preds = %_ZN7SimTimeC2Ed.exit
  %4 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !9
  %sim_time.i = getelementptr inbounds nuw i8, ptr %4, i64 120
  %5 = load i64, ptr %sim_time.i, align 8, !tbaa !6, !noalias !12
  %cmp.i25.not = icmp slt i64 %5, %3
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp) #6
  br i1 %cmp.i25.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.rhs
  %exception = call ptr @__cxa_allocate_exception(i64 128) #6
  invoke void (ptr, i32, ...) @_ZN21cTerminationExceptionC1E12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %exception, i32 noundef 36)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTI21cTerminationException, ptr nonnull @_ZN10cExceptionD2Ev) #7
  unreachable

lpad:                                             ; preds = %if.then
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %exception) #6
  br label %eh.resume

if.end.critedge:                                  ; preds = %_ZN7SimTimeC2Ed.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp) #6
  br label %if.end

if.end:                                           ; preds = %if.end.critedge, %land.rhs
  %opt_cputimelimit = getelementptr inbounds nuw i8, ptr %this, i64 440
  %7 = load i64, ptr %opt_cputimelimit, align 8, !tbaa !15
  %cmp = icmp eq i64 %7, 0
  br i1 %cmp, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %disable_tracing = getelementptr inbounds nuw i8, ptr %this, i64 8
  %8 = load i8, ptr %disable_tracing, align 8, !tbaa !35, !range !36, !noundef !37
  %loadedv = trunc nuw i8 %8 to i1
  br i1 %loadedv, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end7
  %9 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !9
  %event_num.i = getelementptr inbounds nuw i8, ptr %9, i64 128
  %10 = load i64, ptr %event_num.i, align 8, !tbaa !38
  %and = and i64 %10, 255
  %cmp10.not = icmp eq i64 %and, 0
  br i1 %cmp10.not, label %if.end12, label %return

if.end12:                                         ; preds = %land.lhs.true, %if.end7
  %laststarted = getelementptr inbounds nuw i8, ptr %this, i64 560
  %11 = load i64, ptr %laststarted, align 8, !tbaa !58
  %elapsedtime = getelementptr inbounds nuw i8, ptr %this, i64 576
  %12 = load i64, ptr %elapsedtime, align 8, !tbaa !59
  %add = sub nsw i64 %12, %11
  %cmp17.not = icmp slt i64 %add, %7
  br i1 %cmp17.not, label %return, label %if.then18

if.then18:                                        ; preds = %if.end12
  %exception19 = call ptr @__cxa_allocate_exception(i64 128) #6
  invoke void (ptr, i32, ...) @_ZN21cTerminationExceptionC1E12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %exception19, i32 noundef 35)
          to label %invoke.cont21 unwind label %lpad20

invoke.cont21:                                    ; preds = %if.then18
  call void @__cxa_throw(ptr nonnull %exception19, ptr nonnull @_ZTI21cTerminationException, ptr nonnull @_ZN10cExceptionD2Ev) #7
  unreachable

lpad20:                                           ; preds = %if.then18
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %exception19) #6
  br label %eh.resume

return:                                           ; preds = %if.end12, %land.lhs.true, %if.end
  ret void

eh.resume:                                        ; preds = %lpad20, %lpad
  %.pn = phi { ptr, i32 } [ %6, %lpad ], [ %13, %lpad20 ]
  resume { ptr, i32 } %.pn
}

declare void @_ZN21cTerminationExceptionC1E12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef, ...) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #4 align 2

declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { cold noreturn }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!0 = !{!1, !1, i64 0}
!1 = !{!"int", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !2, i64 0}
!6 = !{!7, !8, i64 0}
!7 = !{!"_ZTS7SimTime", !8, i64 0}
!8 = !{!"long", !2, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS11cSimulation", !11, i64 0}
!11 = !{!"any pointer", !2, i64 0}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZNK11cSimulation10getSimTimeEv: %agg.result"}
!14 = distinct !{!14, !"_ZNK11cSimulation10getSimTimeEv"}
!15 = !{!16, !8, i64 440}
!16 = !{!"_ZTS9EnvirBase", !17, i64 0, !21, i64 288, !22, i64 296, !23, i64 304, !1, i64 312, !8, i64 320, !24, i64 328, !19, i64 336, !24, i64 344, !24, i64 352, !24, i64 360, !24, i64 368, !1, i64 376, !24, i64 384, !1, i64 392, !24, i64 400, !24, i64 408, !24, i64 416, !19, i64 424, !19, i64 425, !19, i64 426, !19, i64 427, !7, i64 432, !8, i64 440, !24, i64 448, !26, i64 456, !27, i64 464, !1, i64 472, !28, i64 480, !30, i64 488, !31, i64 496, !32, i64 504, !33, i64 512, !8, i64 520, !34, i64 528, !34, i64 544, !34, i64 560, !34, i64 576, !7, i64 592}
!17 = !{!"_ZTS14cRunnableEnvir", !18, i64 0}
!18 = !{!"_ZTS6cEnvir", !19, i64 8, !19, i64 9, !19, i64 10, !20, i64 16}
!19 = !{!"bool", !2, i64 0}
!20 = !{!"_ZTSSo"}
!21 = !{!"p1 _ZTS16cConfigurationEx", !11, i64 0}
!22 = !{!"p1 _ZTS7ArgList", !11, i64 0}
!23 = !{!"p1 _ZTS12cXMLDocCache", !11, i64 0}
!24 = !{!"_ZTS10opp_string", !25, i64 0}
!25 = !{!"p1 omnipotent char", !11, i64 0}
!26 = !{!"p1 _ZTS21cParsimCommunications", !11, i64 0}
!27 = !{!"p1 _ZTS16cParsimPartition", !11, i64 0}
!28 = !{!"p2 _ZTS4cRNG", !29, i64 0}
!29 = !{!"any p2 pointer", !11, i64 0}
!30 = !{!"p1 _ZTS19EventlogFileManager", !11, i64 0}
!31 = !{!"p1 _ZTS20cOutputVectorManager", !11, i64 0}
!32 = !{!"p1 _ZTS20cOutputScalarManager", !11, i64 0}
!33 = !{!"p1 _ZTS16cSnapshotManager", !11, i64 0}
!34 = !{!"_ZTS7timeval", !8, i64 0, !8, i64 8}
!35 = !{!18, !19, i64 8}
!36 = !{i8 0, i8 2}
!37 = !{}
!38 = !{!39, !8, i64 128}
!39 = !{!"_ZTS11cSimulation", !40, i64 0, !1, i64 36, !1, i64 40, !46, i64 48, !1, i64 56, !47, i64 64, !48, i64 72, !49, i64 80, !50, i64 88, !1, i64 96, !51, i64 104, !52, i64 112, !7, i64 120, !8, i64 128, !53, i64 136, !54, i64 144, !55, i64 152, !56, i64 160}
!40 = !{!"_ZTS23cNoncopyableOwnedObject", !41, i64 0}
!41 = !{!"_ZTS12cOwnedObject", !42, i64 0, !45, i64 24, !1, i64 32}
!42 = !{!"_ZTS12cNamedObject", !43, i64 0, !25, i64 8, !44, i64 16, !44, i64 18}
!43 = !{!"_ZTS7cObject"}
!44 = !{!"short", !2, i64 0}
!45 = !{!"p1 _ZTS7cObject", !11, i64 0}
!46 = !{!"p2 _ZTS7cModule", !29, i64 0}
!47 = !{!"p1 _ZTS6cEnvir", !11, i64 0}
!48 = !{!"p1 _ZTS7cModule", !11, i64 0}
!49 = !{!"p1 _ZTS13cSimpleModule", !11, i64 0}
!50 = !{!"p1 _ZTS10cComponent", !11, i64 0}
!51 = !{!"p1 _ZTS11cModuleType", !11, i64 0}
!52 = !{!"p1 _ZTS10cScheduler", !11, i64 0}
!53 = !{!"p1 _ZTS8cMessage", !11, i64 0}
!54 = !{!"p1 _ZTS10cException", !11, i64 0}
!55 = !{!"p1 _ZTS7cHasher", !11, i64 0}
!56 = !{!"_ZTS12cMessageHeap", !41, i64 0, !57, i64 40, !1, i64 48, !1, i64 52, !8, i64 56}
!57 = !{!"p2 _ZTS8cMessage", !29, i64 0}
!58 = !{!16, !8, i64 560}
!59 = !{!16, !8, i64 576}
