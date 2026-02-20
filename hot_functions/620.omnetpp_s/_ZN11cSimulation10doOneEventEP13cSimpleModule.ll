; ModuleID = '/tmp/tmp.zXyZWPgBj7/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/simulator/csimulation.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%class.cRuntimeError = type { %class.cException.base, [4 x i8] }
%class.cException.base = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32 }>
%"class.std::exception" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@_ZN11cSimulation6simPtrE = external dso_local local_unnamed_addr global ptr, align 8
@_ZTI13cRuntimeError = external dso_local constant { ptr, ptr, ptr }, align 8
@_ZTI10cException = external dso_local constant { ptr, ptr, ptr }, align 8
@_ZTISt9exception = external constant ptr
@_ZN11cSimulation5evPtrE = external dso_local local_unnamed_addr global ptr, align 8
@_ZTI22cDeleteModuleException = external dso_local constant { ptr, ptr, ptr }, align 8
@.str.24 = external hidden unnamed_addr constant [101 x i8], align 1
@.str.25 = external hidden unnamed_addr constant [7 x i8], align 1
@_ZTV13cRuntimeError = external dso_local unnamed_addr constant { [13 x ptr] }, align 8
@defaultList = external global %class.cDefaultList, align 8

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

; Function Attrs: noinline noreturn nounwind uwtable
declare hidden void @__clang_call_terminate(ptr noundef) local_unnamed_addr #1

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #2

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #4

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef ptr @_ZN12cMessageHeap11removeFirstEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZN11cSimulation10transferToEP13cSimpleModule(ptr noundef nonnull align 8 captures(none) dereferenceable(224), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11cSimulation10doOneEventEP13cSimpleModule(ptr noundef nonnull align 8 dereferenceable(224) %this, ptr noundef %mod) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %e2 = alloca %class.cRuntimeError, align 8
  %contextmodp.i = getelementptr inbounds nuw i8, ptr %this, i64 88
  store ptr %mod, ptr %contextmodp.i, align 8, !tbaa !0
  invoke void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef %mod)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %contexttype.i = getelementptr inbounds nuw i8, ptr %this, i64 96
  store i32 2, ptr %contexttype.i, align 8, !tbaa !28
  %hasherp.i = getelementptr inbounds nuw i8, ptr %this, i64 152
  %0 = load ptr, ptr %hasherp.i, align 8, !tbaa !29
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %invoke.cont10

invoke.cont10:                                    ; preds = %invoke.cont
  %1 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !30, !noalias !32
  %sim_time.i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %2 = load i64, ptr %sim_time.i.i, align 8, !tbaa !35, !noalias !36
  %conv.i.i = trunc i64 %2 to i32
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 1)
  %xor.i.i.i = xor i32 %or.i.i.i, %conv.i.i
  %shr.i.i = lshr i64 %2, 32
  %conv2.i.i = trunc nuw i64 %shr.i.i to i32
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i.i, i32 %xor.i.i.i, i32 1)
  %xor.i5.i.i = xor i32 %or.i4.i.i, %conv2.i.i
  store i32 %xor.i5.i.i, ptr %0, align 4, !tbaa !39
  %mod_id.i = getelementptr inbounds nuw i8, ptr %mod, i64 112
  %4 = load i32, ptr %mod_id.i, align 8, !tbaa !41
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i5.i.i, i32 %xor.i5.i.i, i32 1)
  %xor.i.i = xor i32 %or.i.i, %4
  store i32 %xor.i.i, ptr %0, align 4, !tbaa !39
  br label %if.end

lpad:                                             ; preds = %entry
  %5 = landingpad { ptr, i32 }
          catch ptr @_ZTI22cDeleteModuleException
          catch ptr @_ZTI10cException
          catch ptr @_ZTISt9exception
  br label %catch.dispatch

if.end:                                           ; preds = %invoke.cont10, %invoke.cont
  %msgQueue = getelementptr inbounds nuw i8, ptr %this, i64 160
  %call18 = invoke noundef ptr @_ZN12cMessageHeap11removeFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %msgQueue)
          to label %invoke.cont17 unwind label %lpad16

invoke.cont17:                                    ; preds = %if.end
  %6 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !51
  %suppress_notifications = getelementptr inbounds nuw i8, ptr %6, i64 9
  %7 = load i8, ptr %suppress_notifications, align 1, !tbaa !52, !range !56, !noundef !57
  %loadedv = trunc nuw i8 %7 to i1
  br i1 %loadedv, label %cond.end, label %cond.false

cond.false:                                       ; preds = %invoke.cont17
  %vtable = load ptr, ptr %6, align 8, !tbaa !58
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %8 = load ptr, ptr %vfn, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(288) %6, ptr noundef %call18)
          to label %cond.end unwind label %lpad16

cond.end:                                         ; preds = %cond.false, %invoke.cont17
  %event_num = getelementptr inbounds nuw i8, ptr %this, i64 128
  %9 = load i64, ptr %event_num, align 8, !tbaa !60
  %prev_event_num.i = getelementptr inbounds nuw i8, ptr %call18, i64 136
  store i64 %9, ptr %prev_event_num.i, align 8, !tbaa !61
  %flags.i = getelementptr inbounds nuw i8, ptr %mod, i64 16
  %10 = load i16, ptr %flags.i, align 8, !tbaa !64
  %11 = and i16 %10, 8
  %tobool.i.not = icmp eq i16 %11, 0
  br i1 %tobool.i.not, label %if.then27, label %if.end30

if.then27:                                        ; preds = %cond.end
  %exception = tail call ptr @__cxa_allocate_exception(i64 128) #8
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %exception, ptr noundef nonnull %mod, ptr noundef nonnull @.str.24)
          to label %invoke.cont29 unwind label %lpad28

invoke.cont29:                                    ; preds = %if.then27
  invoke void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #9
          to label %unreachable unwind label %lpad16

lpad16:                                           ; preds = %if.else, %if.then33, %invoke.cont29, %cond.false, %if.end
  %12 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI22cDeleteModuleException
          catch ptr @_ZTI10cException
          catch ptr @_ZTISt9exception
  br label %catch.dispatch

lpad28:                                           ; preds = %if.then27
  %13 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI22cDeleteModuleException
          catch ptr @_ZTI10cException
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %exception) #8
  br label %catch.dispatch

if.end30:                                         ; preds = %cond.end
  %14 = and i16 %10, 512
  %tobool.i102.not = icmp eq i16 %14, 0
  br i1 %tobool.i102.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end30
  %msg_for_activity = getelementptr inbounds nuw i8, ptr %this, i64 136
  store ptr %call18, ptr %msg_for_activity, align 8, !tbaa !65
  invoke void @_ZN11cSimulation10transferToEP13cSimpleModule(ptr noundef nonnull align 8 dereferenceable(224) %this, ptr noundef nonnull %mod)
          to label %try.cont unwind label %lpad16

if.else:                                          ; preds = %if.end30
  %vtable35 = load ptr, ptr %mod, align 8, !tbaa !58
  %vfn36 = getelementptr inbounds nuw i8, ptr %vtable35, i64 592
  %15 = load ptr, ptr %vfn36, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(192) %mod, ptr noundef nonnull %call18)
          to label %try.cont unwind label %lpad16

catch.dispatch:                                   ; preds = %lpad28, %lpad16, %lpad
  %.pn.pn = phi { ptr, i32 } [ %5, %lpad ], [ %12, %lpad16 ], [ %13, %lpad28 ]
  %exn.slot.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  %ehselector.slot.1 = extractvalue { ptr, i32 } %.pn.pn, 1
  %16 = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI22cDeleteModuleException) #8
  %matches = icmp eq i32 %ehselector.slot.1, %16
  br i1 %matches, label %catch68, label %catch.fallthrough

catch68:                                          ; preds = %catch.dispatch
  %17 = tail call ptr @__cxa_begin_catch(ptr %exn.slot.1) #8
  store ptr null, ptr %contextmodp.i, align 8, !tbaa !0
  invoke void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef nonnull @defaultList)
          to label %invoke.cont72 unwind label %lpad71

invoke.cont72:                                    ; preds = %catch68
  %isnull = icmp eq ptr %mod, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %invoke.cont72
  %vtable73 = load ptr, ptr %mod, align 8, !tbaa !58
  %vfn74 = getelementptr inbounds nuw i8, ptr %vtable73, i64 32
  %18 = load ptr, ptr %vfn74, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(192) %mod) #8
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %invoke.cont72
  tail call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %delete.end, %if.else, %if.then33
  store ptr null, ptr %contextmodp.i, align 8, !tbaa !0
  tail call void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef nonnull @defaultList)
  %event_num78 = getelementptr inbounds nuw i8, ptr %this, i64 128
  %19 = load i64, ptr %event_num78, align 8, !tbaa !60
  %inc = add nsw i64 %19, 1
  store i64 %inc, ptr %event_num78, align 8, !tbaa !60
  ret void

catch.fallthrough:                                ; preds = %catch.dispatch
  %20 = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI10cException) #8
  %matches39 = icmp eq i32 %ehselector.slot.1, %20
  br i1 %matches39, label %catch61, label %catch.fallthrough40

catch61:                                          ; preds = %catch.fallthrough
  %21 = tail call ptr @__cxa_begin_catch(ptr %exn.slot.1) #8
  store ptr null, ptr %contextmodp.i, align 8, !tbaa !0
  invoke void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef nonnull @defaultList)
          to label %invoke.cont64 unwind label %lpad63

invoke.cont64:                                    ; preds = %catch61
  invoke void @__cxa_rethrow() #9
          to label %unreachable unwind label %lpad63

catch.fallthrough40:                              ; preds = %catch.fallthrough
  %22 = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #8
  %matches41 = icmp eq i32 %ehselector.slot.1, %22
  br i1 %matches41, label %catch, label %eh.resume

catch:                                            ; preds = %catch.fallthrough40
  %23 = tail call ptr @__cxa_begin_catch(ptr %exn.slot.1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %e2) #8
  %vtable42 = load ptr, ptr %23, align 8, !tbaa !58
  %24 = getelementptr inbounds i8, ptr %vtable42, i64 -8
  %25 = load ptr, ptr %24, align 8
  %call45 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %invoke.cont44 unwind label %lpad43

invoke.cont44:                                    ; preds = %catch
  %vtable46 = load ptr, ptr %23, align 8, !tbaa !58
  %vfn47 = getelementptr inbounds nuw i8, ptr %vtable46, i64 16
  %26 = load ptr, ptr %vfn47, align 8
  %call48 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23) #8
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %e2, ptr noundef nonnull @.str.25, ptr noundef %call45, ptr noundef %call48)
          to label %invoke.cont49 unwind label %lpad43

invoke.cont49:                                    ; preds = %invoke.cont44
  store ptr null, ptr %contextmodp.i, align 8, !tbaa !0
  invoke void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef nonnull @defaultList)
          to label %invoke.cont51 unwind label %lpad50

invoke.cont51:                                    ; preds = %invoke.cont49
  %exception52 = call ptr @__cxa_allocate_exception(i64 128) #8
  invoke void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %exception52, ptr noundef nonnull align 8 dereferenceable(124) %e2)
          to label %invoke.cont54 unwind label %lpad53

invoke.cont54:                                    ; preds = %invoke.cont51
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV13cRuntimeError, i64 16), ptr %exception52, align 8, !tbaa !58
  invoke void @__cxa_throw(ptr nonnull %exception52, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #9
          to label %unreachable unwind label %lpad50

lpad43:                                           ; preds = %invoke.cont44, %catch
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup57

lpad50:                                           ; preds = %invoke.cont54, %invoke.cont49
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup56

lpad53:                                           ; preds = %invoke.cont51
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %exception52) #8
  br label %ehcleanup56

ehcleanup56:                                      ; preds = %lpad53, %lpad50
  %.pn96 = phi { ptr, i32 } [ %28, %lpad50 ], [ %29, %lpad53 ]
  call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %e2) #8
  br label %ehcleanup57

ehcleanup57:                                      ; preds = %ehcleanup56, %lpad43
  %.pn96.pn = phi { ptr, i32 } [ %.pn96, %ehcleanup56 ], [ %27, %lpad43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %e2) #8
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad

lpad63:                                           ; preds = %invoke.cont64, %catch61
  %30 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad

lpad71:                                           ; preds = %catch68
  %31 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad

eh.resume:                                        ; preds = %lpad71, %lpad63, %ehcleanup57, %catch.fallthrough40
  %lpad.val81.merged = phi { ptr, i32 } [ %.pn.pn, %catch.fallthrough40 ], [ %.pn96.pn, %ehcleanup57 ], [ %30, %lpad63 ], [ %31, %lpad71 ]
  resume { ptr, i32 } %lpad.val81.merged

terminate.lpad:                                   ; preds = %lpad71, %lpad63, %ehcleanup57
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #10
  unreachable

unreachable:                                      ; preds = %invoke.cont54, %invoke.cont64, %invoke.cont29
  unreachable
}

declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

declare void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef) local_unnamed_addr #0

declare void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind memory(none) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { noreturn nounwind }

!0 = !{!1, !18, i64 88}
!1 = !{!"_ZTS11cSimulation", !2, i64 0, !12, i64 36, !12, i64 40, !13, i64 48, !12, i64 56, !15, i64 64, !16, i64 72, !17, i64 80, !18, i64 88, !12, i64 96, !19, i64 104, !20, i64 112, !21, i64 120, !22, i64 128, !23, i64 136, !24, i64 144, !25, i64 152, !26, i64 160}
!2 = !{!"_ZTS23cNoncopyableOwnedObject", !3, i64 0}
!3 = !{!"_ZTS12cOwnedObject", !4, i64 0, !11, i64 24, !12, i64 32}
!4 = !{!"_ZTS12cNamedObject", !5, i64 0, !6, i64 8, !10, i64 16, !10, i64 18}
!5 = !{!"_ZTS7cObject"}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!"p1 _ZTS7cObject", !7, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!"p2 _ZTS7cModule", !14, i64 0}
!14 = !{!"any p2 pointer", !7, i64 0}
!15 = !{!"p1 _ZTS6cEnvir", !7, i64 0}
!16 = !{!"p1 _ZTS7cModule", !7, i64 0}
!17 = !{!"p1 _ZTS13cSimpleModule", !7, i64 0}
!18 = !{!"p1 _ZTS10cComponent", !7, i64 0}
!19 = !{!"p1 _ZTS11cModuleType", !7, i64 0}
!20 = !{!"p1 _ZTS10cScheduler", !7, i64 0}
!21 = !{!"_ZTS7SimTime", !22, i64 0}
!22 = !{!"long", !8, i64 0}
!23 = !{!"p1 _ZTS8cMessage", !7, i64 0}
!24 = !{!"p1 _ZTS10cException", !7, i64 0}
!25 = !{!"p1 _ZTS7cHasher", !7, i64 0}
!26 = !{!"_ZTS12cMessageHeap", !3, i64 0, !27, i64 40, !12, i64 48, !12, i64 52, !22, i64 56}
!27 = !{!"p2 _ZTS8cMessage", !14, i64 0}
!28 = !{!1, !12, i64 96}
!29 = !{!1, !25, i64 152}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS11cSimulation", !7, i64 0}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_Z7simTimev: %agg.result"}
!34 = distinct !{!34, !"_Z7simTimev"}
!35 = !{!21, !22, i64 0}
!36 = !{!37, !33}
!37 = distinct !{!37, !38, !"_ZNK11cSimulation10getSimTimeEv: %agg.result"}
!38 = distinct !{!38, !"_ZNK11cSimulation10getSimTimeEv"}
!39 = !{!40, !12, i64 0}
!40 = !{!"_ZTS7cHasher", !12, i64 0}
!41 = !{!42, !12, i64 112}
!42 = !{!"_ZTS7cModule", !43, i64 0, !6, i64 104, !12, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !12, i64 152, !50, i64 160, !12, i64 168, !12, i64 172}
!43 = !{!"_ZTS10cComponent", !44, i64 0, !46, i64 56, !10, i64 64, !47, i64 72, !10, i64 80, !10, i64 82, !48, i64 88, !49, i64 96}
!44 = !{!"_ZTS12cDefaultList", !2, i64 0, !45, i64 40, !12, i64 48, !12, i64 52}
!45 = !{!"p2 _ZTS12cOwnedObject", !14, i64 0}
!46 = !{!"p1 _ZTS14cComponentType", !7, i64 0}
!47 = !{!"p1 int", !7, i64 0}
!48 = !{!"p1 _ZTS4cPar", !7, i64 0}
!49 = !{!"p1 _ZTS14cDisplayString", !7, i64 0}
!50 = !{!"p1 _ZTSN5cGate4DescE", !7, i64 0}
!51 = !{!15, !15, i64 0}
!52 = !{!53, !54, i64 9}
!53 = !{!"_ZTS6cEnvir", !54, i64 8, !54, i64 9, !54, i64 10, !55, i64 16}
!54 = !{!"bool", !8, i64 0}
!55 = !{!"_ZTSSo"}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!59, !59, i64 0}
!59 = !{!"vtable pointer", !9, i64 0}
!60 = !{!1, !22, i64 128}
!61 = !{!62, !22, i64 136}
!62 = !{!"_ZTS8cMessage", !3, i64 0, !10, i64 36, !10, i64 38, !10, i64 40, !63, i64 48, !11, i64 56, !7, i64 64, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !21, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !12, i64 120, !22, i64 128, !22, i64 136, !22, i64 144, !22, i64 152}
!63 = !{!"p1 _ZTS6cArray", !7, i64 0}
!64 = !{!4, !10, i64 16}
!65 = !{!1, !23, i64 136}
