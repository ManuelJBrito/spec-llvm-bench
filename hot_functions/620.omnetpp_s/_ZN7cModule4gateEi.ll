; ModuleID = '/tmp/tmp.bDaJ7BQgFm/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/simulator/cmodule.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"struct.cGate::Desc" = type { ptr, ptr, i32, %union.anon.14, %union.anon.15 }
%union.anon.14 = type { ptr }
%union.anon.15 = type { ptr }

@_ZTI13cRuntimeError = external dso_local constant { ptr, ptr, ptr }, align 8
@.str.7 = external hidden unnamed_addr constant [98 x i8], align 1
@.str.53 = external hidden unnamed_addr constant [1 x i8], align 1

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #0

declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN7cModule4gateEi(ptr noundef nonnull align 8 dereferenceable(176) %this, i32 noundef %id) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %cmp = icmp ult i32 %id, 1048576
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %shr = lshr i32 %id, 1
  %descvSize = getelementptr inbounds nuw i8, ptr %this, i64 152
  %0 = load i32, ptr %descvSize, align 8, !tbaa !0
  %cmp2 = icmp ult i32 %shr, %0
  br i1 %cmp2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %exception = tail call ptr @__cxa_allocate_exception(i64 128) #4
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %exception, ptr noundef nonnull %this, i32 noundef 19, i32 noundef %id)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then3
  tail call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #5
  unreachable

lpad:                                             ; preds = %if.then3
  %1 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %exception) #4
  br label %ehcleanup114

if.end:                                           ; preds = %if.then
  %descv = getelementptr inbounds nuw i8, ptr %this, i64 160
  %2 = load ptr, ptr %descv, align 8, !tbaa !23
  %idx.ext = zext nneg i32 %shr to i64
  %add.ptr = getelementptr inbounds nuw %"struct.cGate::Desc", ptr %2, i64 %idx.ext
  %namep = getelementptr inbounds nuw i8, ptr %add.ptr, i64 8
  %3 = load ptr, ptr %namep, align 8, !tbaa !24
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %exception5 = tail call ptr @__cxa_allocate_exception(i64 128) #4
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %exception5, ptr noundef nonnull %this, i32 noundef 19, i32 noundef %id)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %if.then4
  tail call void @__cxa_throw(ptr nonnull %exception5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #5
  unreachable

lpad6:                                            ; preds = %if.then4
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %exception5) #4
  br label %ehcleanup114

if.end8:                                          ; preds = %if.end
  %size.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 16
  %5 = load i32, ptr %size.i, align 8, !tbaa !27
  %cmp.i = icmp sgt i32 %5, -1
  br i1 %cmp.i, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end8
  %exception10 = tail call ptr @__cxa_allocate_exception(i64 128) #4
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %exception10, ptr noundef nonnull %this, i32 noundef 19, i32 noundef %id)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %if.then9
  tail call void @__cxa_throw(ptr nonnull %exception10, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #5
  unreachable

lpad11:                                           ; preds = %if.then9
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %exception10) #4
  br label %ehcleanup114

if.end13:                                         ; preds = %if.end8
  %and14 = and i32 %id, 1
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end13
  %type.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %7 = load i32, ptr %type.i, align 8, !tbaa !28
  %cmp17.not = icmp eq i32 %7, 79
  br i1 %cmp17.not, label %if.then20, label %if.end24

cond.false:                                       ; preds = %if.end13
  %type.i165 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %type.i165, align 8, !tbaa !28
  %cmp19.not = icmp eq i32 %8, 73
  br i1 %cmp19.not, label %if.then20, label %if.end24

if.then20:                                        ; preds = %cond.false, %cond.true
  %exception21 = tail call ptr @__cxa_allocate_exception(i64 128) #4
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %exception21, ptr noundef nonnull %this, i32 noundef 19, i32 noundef %id)
          to label %invoke.cont23 unwind label %lpad22

invoke.cont23:                                    ; preds = %if.then20
  tail call void @__cxa_throw(ptr nonnull %exception21, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #5
  unreachable

lpad22:                                           ; preds = %if.then20
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %exception21) #4
  br label %ehcleanup114

if.end24:                                         ; preds = %cond.false, %cond.true
  %cond.in.v = phi i64 [ 32, %cond.false ], [ 24, %cond.true ]
  %cond.in = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %cond.in.v
  %cond = load ptr, ptr %cond.in, align 8, !tbaa !32
  %pos = getelementptr inbounds nuw i8, ptr %cond, i64 16
  %10 = load i32, ptr %pos, align 8, !tbaa !33
  %and30 = and i32 %10, 1
  %cmp31 = icmp eq i32 %and14, %and30
  br i1 %cmp31, label %cleanup, label %if.then32

if.then32:                                        ; preds = %if.end24
  %exception33 = tail call ptr @__cxa_allocate_exception(i64 128) #4
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %exception33, ptr noundef nonnull %this, i32 noundef 19, i32 noundef %id)
          to label %invoke.cont35 unwind label %lpad34

invoke.cont35:                                    ; preds = %if.then32
  tail call void @__cxa_throw(ptr nonnull %exception33, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #5
  unreachable

lpad34:                                           ; preds = %if.then32
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %exception33) #4
  br label %ehcleanup114

if.else:                                          ; preds = %entry
  %shr39 = lshr i32 %id, 20
  %sub = add nsw i32 %shr39, -1
  %descvSize40 = getelementptr inbounds nuw i8, ptr %this, i64 152
  %12 = load i32, ptr %descvSize40, align 8, !tbaa !0
  %cmp41 = icmp ult i32 %sub, %12
  br i1 %cmp41, label %if.end47, label %if.then42

if.then42:                                        ; preds = %if.else
  %exception43 = tail call ptr @__cxa_allocate_exception(i64 128) #4
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %exception43, ptr noundef nonnull %this, i32 noundef 19, i32 noundef %id)
          to label %invoke.cont45 unwind label %lpad44

invoke.cont45:                                    ; preds = %if.then42
  tail call void @__cxa_throw(ptr nonnull %exception43, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #5
  unreachable

lpad44:                                           ; preds = %if.then42
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %exception43) #4
  br label %ehcleanup114

if.end47:                                         ; preds = %if.else
  %descv49 = getelementptr inbounds nuw i8, ptr %this, i64 160
  %14 = load ptr, ptr %descv49, align 8, !tbaa !23
  %idx.ext50 = zext nneg i32 %sub to i64
  %add.ptr51 = getelementptr inbounds nuw %"struct.cGate::Desc", ptr %14, i64 %idx.ext50
  %namep52 = getelementptr inbounds nuw i8, ptr %add.ptr51, i64 8
  %15 = load ptr, ptr %namep52, align 8, !tbaa !24
  %tobool53.not = icmp eq ptr %15, null
  br i1 %tobool53.not, label %if.then54, label %if.end59

if.then54:                                        ; preds = %if.end47
  %exception55 = tail call ptr @__cxa_allocate_exception(i64 128) #4
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %exception55, ptr noundef nonnull %this, i32 noundef 19, i32 noundef %id)
          to label %invoke.cont57 unwind label %lpad56

invoke.cont57:                                    ; preds = %if.then54
  tail call void @__cxa_throw(ptr nonnull %exception55, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #5
  unreachable

lpad56:                                           ; preds = %if.then54
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %exception55) #4
  br label %ehcleanup114

if.end59:                                         ; preds = %if.end47
  %size.i166 = getelementptr inbounds nuw i8, ptr %add.ptr51, i64 16
  %17 = load i32, ptr %size.i166, align 8, !tbaa !27
  %cmp.i167 = icmp sgt i32 %17, -1
  br i1 %cmp.i167, label %if.end66, label %if.then61

if.then61:                                        ; preds = %if.end59
  %exception62 = tail call ptr @__cxa_allocate_exception(i64 128) #4
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %exception62, ptr noundef nonnull %this, i32 noundef 19, i32 noundef %id)
          to label %invoke.cont64 unwind label %lpad63

invoke.cont64:                                    ; preds = %if.then61
  tail call void @__cxa_throw(ptr nonnull %exception62, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #5
  unreachable

lpad63:                                           ; preds = %if.then61
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %exception62) #4
  br label %ehcleanup114

if.end66:                                         ; preds = %if.end59
  %and67 = and i32 %id, 524288
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %cond.false72, label %cond.true69

cond.true69:                                      ; preds = %if.end66
  %type.i169 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %19 = load i32, ptr %type.i169, align 8, !tbaa !28
  %cmp71.not = icmp eq i32 %19, 73
  br i1 %cmp71.not, label %if.then75, label %if.end80.thread

cond.false72:                                     ; preds = %if.end66
  %type.i171 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %20 = load i32, ptr %type.i171, align 8, !tbaa !28
  %cmp74.not = icmp eq i32 %20, 79
  br i1 %cmp74.not, label %if.then75, label %if.end80

if.then75:                                        ; preds = %cond.false72, %cond.true69
  %exception76 = tail call ptr @__cxa_allocate_exception(i64 128) #4
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %exception76, ptr noundef nonnull %this, i32 noundef 19, i32 noundef %id)
          to label %invoke.cont78 unwind label %lpad77

invoke.cont78:                                    ; preds = %if.then75
  tail call void @__cxa_throw(ptr nonnull %exception76, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #5
  unreachable

lpad77:                                           ; preds = %if.then75
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %exception76) #4
  br label %ehcleanup114

if.end80:                                         ; preds = %cond.false72
  %and81 = and i32 %id, 524287
  %cmp83.not = icmp samesign ult i32 %and81, %17
  br i1 %cmp83.not, label %cond.false105, label %if.then84

if.end80.thread:                                  ; preds = %cond.true69
  %and81180 = and i32 %id, 524287
  %cmp83.not181 = icmp samesign ult i32 %and81180, %17
  br i1 %cmp83.not181, label %cond.true104, label %if.then84

if.then84:                                        ; preds = %if.end80.thread, %if.end80
  %and81182 = phi i32 [ %and81180, %if.end80.thread ], [ %and81, %if.end80 ]
  %cmp85 = icmp samesign ult i32 %and81182, 100000
  br i1 %cmp85, label %if.then86, label %if.else97

if.then86:                                        ; preds = %if.then84
  %exception87 = tail call ptr @__cxa_allocate_exception(i64 128) #4
  %22 = load ptr, ptr %namep52, align 8, !tbaa !24
  %type.i176 = getelementptr inbounds nuw i8, ptr %22, i64 24
  %23 = load i32, ptr %type.i176, align 8, !tbaa !28
  %cmp2.not.i = icmp eq i32 %23, 66
  br i1 %cmp2.not.i, label %cond.false.i, label %_ZNK5cGate4Desc7nameForENS_4TypeE.exit

cond.false.i:                                     ; preds = %if.then86
  br i1 %tobool68.not, label %cond.true5.i, label %cond.false8.i

cond.true5.i:                                     ; preds = %cond.false.i
  %namei.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %_ZNK5cGate4Desc7nameForENS_4TypeE.exit

cond.false8.i:                                    ; preds = %cond.false.i
  %nameo.i = getelementptr inbounds nuw i8, ptr %22, i64 16
  br label %_ZNK5cGate4Desc7nameForENS_4TypeE.exit

_ZNK5cGate4Desc7nameForENS_4TypeE.exit:           ; preds = %cond.false8.i, %cond.true5.i, %if.then86
  %.sink18.in.i = phi ptr [ %namei.i, %cond.true5.i ], [ %nameo.i, %cond.false8.i ], [ %22, %if.then86 ]
  %.sink18.i = load ptr, ptr %.sink18.in.i, align 8, !tbaa !37
  %tobool.not.i14.i = icmp eq ptr %.sink18.i, null
  %spec.select.i15.i = select i1 %tobool.not.i14.i, ptr @.str.53, ptr %.sink18.i
  %24 = load i32, ptr %size.i166, align 8, !tbaa !27
  %cmp.i178 = icmp sgt i32 %24, -1
  %spec.select.i179 = select i1 %cmp.i178, i32 %24, i32 1
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %exception87, ptr noundef nonnull %this, ptr noundef nonnull @.str.7, i32 noundef %id, ptr noundef nonnull %spec.select.i15.i, i32 noundef %spec.select.i179, i32 noundef %and81182)
          to label %invoke.cont95 unwind label %lpad90

invoke.cont95:                                    ; preds = %_ZNK5cGate4Desc7nameForENS_4TypeE.exit
  tail call void @__cxa_throw(ptr nonnull %exception87, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #5
  unreachable

lpad90:                                           ; preds = %_ZNK5cGate4Desc7nameForENS_4TypeE.exit
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %exception87) #4
  br label %ehcleanup114

if.else97:                                        ; preds = %if.then84
  %exception98 = tail call ptr @__cxa_allocate_exception(i64 128) #4
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %exception98, ptr noundef nonnull %this, i32 noundef 19, i32 noundef %id)
          to label %invoke.cont100 unwind label %lpad99

invoke.cont100:                                   ; preds = %if.else97
  tail call void @__cxa_throw(ptr nonnull %exception98, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #5
  unreachable

lpad99:                                           ; preds = %if.else97
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %exception98) #4
  br label %ehcleanup114

cond.true104:                                     ; preds = %if.end80.thread
  %27 = getelementptr inbounds nuw i8, ptr %add.ptr51, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !32
  %idxprom = zext nneg i32 %and81180 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %28, i64 %idxprom
  br label %cond.end108

cond.false105:                                    ; preds = %if.end80
  %29 = getelementptr inbounds nuw i8, ptr %add.ptr51, i64 24
  %30 = load ptr, ptr %29, align 8, !tbaa !32
  %idxprom106 = zext nneg i32 %and81 to i64
  %arrayidx107 = getelementptr inbounds nuw ptr, ptr %30, i64 %idxprom106
  br label %cond.end108

cond.end108:                                      ; preds = %cond.false105, %cond.true104
  %cond109.in = phi ptr [ %arrayidx, %cond.true104 ], [ %arrayidx107, %cond.false105 ]
  %cond109 = load ptr, ptr %cond109.in, align 8, !tbaa !38
  br label %cleanup

cleanup:                                          ; preds = %cond.end108, %if.end24
  %retval.0 = phi ptr [ %cond109, %cond.end108 ], [ %cond, %if.end24 ]
  ret ptr %retval.0

ehcleanup114:                                     ; preds = %lpad99, %lpad90, %lpad77, %lpad63, %lpad56, %lpad44, %lpad34, %lpad22, %lpad11, %lpad6, %lpad
  %.pn160.pn.pn = phi { ptr, i32 } [ %1, %lpad ], [ %6, %lpad11 ], [ %11, %lpad34 ], [ %9, %lpad22 ], [ %4, %lpad6 ], [ %13, %lpad44 ], [ %18, %lpad63 ], [ %16, %lpad56 ], [ %21, %lpad77 ], [ %25, %lpad90 ], [ %26, %lpad99 ]
  resume { ptr, i32 } %.pn160.pn.pn
}

declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #3 align 2

attributes #0 = { cold noreturn }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!0 = !{!1, !14, i64 152}
!1 = !{!"_ZTS7cModule", !2, i64 0, !8, i64 104, !14, i64 112, !21, i64 120, !21, i64 128, !21, i64 136, !21, i64 144, !14, i64 152, !22, i64 160, !14, i64 168, !14, i64 172}
!2 = !{!"_ZTS10cComponent", !3, i64 0, !17, i64 56, !12, i64 64, !18, i64 72, !12, i64 80, !12, i64 82, !19, i64 88, !20, i64 96}
!3 = !{!"_ZTS12cDefaultList", !4, i64 0, !15, i64 40, !14, i64 48, !14, i64 52}
!4 = !{!"_ZTS23cNoncopyableOwnedObject", !5, i64 0}
!5 = !{!"_ZTS12cOwnedObject", !6, i64 0, !13, i64 24, !14, i64 32}
!6 = !{!"_ZTS12cNamedObject", !7, i64 0, !8, i64 8, !12, i64 16, !12, i64 18}
!7 = !{!"_ZTS7cObject"}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"short", !10, i64 0}
!13 = !{!"p1 _ZTS7cObject", !9, i64 0}
!14 = !{!"int", !10, i64 0}
!15 = !{!"p2 _ZTS12cOwnedObject", !16, i64 0}
!16 = !{!"any p2 pointer", !9, i64 0}
!17 = !{!"p1 _ZTS14cComponentType", !9, i64 0}
!18 = !{!"p1 int", !9, i64 0}
!19 = !{!"p1 _ZTS4cPar", !9, i64 0}
!20 = !{!"p1 _ZTS14cDisplayString", !9, i64 0}
!21 = !{!"p1 _ZTS7cModule", !9, i64 0}
!22 = !{!"p1 _ZTSN5cGate4DescE", !9, i64 0}
!23 = !{!1, !22, i64 160}
!24 = !{!25, !26, i64 8}
!25 = !{!"_ZTSN5cGate4DescE", !21, i64 0, !26, i64 8, !14, i64 16, !10, i64 24, !10, i64 32}
!26 = !{!"p1 _ZTSN5cGate4NameE", !9, i64 0}
!27 = !{!25, !14, i64 16}
!28 = !{!29, !31, i64 24}
!29 = !{!"_ZTSN5cGate4NameE", !30, i64 0, !30, i64 8, !30, i64 16, !31, i64 24}
!30 = !{!"_ZTS10opp_string", !8, i64 0}
!31 = !{!"_ZTSN5cGate4TypeE", !10, i64 0}
!32 = !{!10, !10, i64 0}
!33 = !{!34, !14, i64 16}
!34 = !{!"_ZTS5cGate", !7, i64 0, !22, i64 8, !14, i64 16, !35, i64 24, !36, i64 32, !36, i64 40}
!35 = !{!"p1 _ZTS8cChannel", !9, i64 0}
!36 = !{!"p1 _ZTS5cGate", !9, i64 0}
!37 = !{!30, !8, i64 0}
!38 = !{!36, !36, i64 0}
