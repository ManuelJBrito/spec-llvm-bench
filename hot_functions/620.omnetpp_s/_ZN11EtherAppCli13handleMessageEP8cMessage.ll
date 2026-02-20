; ModuleID = '/tmp/tmp.zDQ7zodkdD/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/model/EtherAppCli.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.SimTime = type { i64 }

@_ZN7SimTime6fscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@_ZN11cSimulation6simPtrE = external local_unnamed_addr global ptr, align 8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare noundef i64 @_ZNK4cPar9longValueEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef i32 @_ZN13cSimpleModule10scheduleAtE7SimTimeP8cMessage(ptr noundef nonnull align 8 dereferenceable(192), ptr dead_on_return noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11EtherAppCli13handleMessageEP8cMessage(ptr noundef nonnull align 8 dereferenceable(448) %this, ptr noundef %msg) unnamed_addr #2 align 2 {
entry:
  %ref.tmp.i12 = alloca %class.SimTime, align 8
  %ref.tmp.i = alloca %class.SimTime, align 8
  %d = alloca %class.SimTime, align 8
  %ref.tmp = alloca %class.SimTime, align 8
  %agg.tmp = alloca %class.SimTime, align 8
  %togate.i = getelementptr inbounds nuw i8, ptr %msg, i64 84
  %0 = load i32, ptr %togate.i, align 4, !tbaa !0
  %cmp.i = icmp eq i32 %0, -1
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this, align 8, !tbaa !15
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 632
  %1 = load ptr, ptr %vfn, align 8
  tail call void %1(ptr noundef nonnull align 8 dereferenceable(448) %this)
  call void @llvm.lifetime.start.p0(ptr nonnull %d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %ref.tmp) #5
  %waitTime = getelementptr inbounds nuw i8, ptr %this, i64 216
  %2 = load ptr, ptr %waitTime, align 8, !tbaa !17
  %call2 = tail call noundef i64 @_ZNK4cPar9longValueEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %conv = sitofp i64 %call2 to double
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !41
  %cmp.i.i.i = icmp eq i32 %3, 65535
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %_ZN7SimTime5checkIdEEvT_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, double noundef %conv)
  br label %_ZN7SimTime5checkIdEEvT_.exit.i.i

_ZN7SimTime5checkIdEEvT_.exit.i.i:                ; preds = %if.then.i.i.i, %if.then
  %4 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !42
  %mul.i.i = fmul double %4, %conv
  %5 = call double @llvm.fabs.f64(double %mul.i.i)
  %cmp.i3.i.i = fcmp ogt double %5, 0x43DFFFFFFFFFEDC8
  br i1 %cmp.i3.i.i, label %if.then.i4.i.i, label %_ZN7SimTimeC2Ed.exit

if.then.i4.i.i:                                   ; preds = %_ZN7SimTime5checkIdEEvT_.exit.i.i
  call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, double noundef %mul.i.i)
  br label %_ZN7SimTimeC2Ed.exit

_ZN7SimTimeC2Ed.exit:                             ; preds = %if.then.i4.i.i, %_ZN7SimTime5checkIdEEvT_.exit.i.i
  %conv.i.i.i = fptosi double %mul.i.i to i64
  store i64 %conv.i.i.i, ptr %ref.tmp, align 8, !tbaa !43
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.lifetime.start.p0(ptr nonnull %ref.tmp.i) #5, !noalias !44
  store i64 %conv.i.i.i, ptr %ref.tmp.i, align 8, !tbaa !43, !noalias !44
  %conv.i.i = sitofp i64 %conv.i.i.i to double
  %div.i.i = fdiv double %conv.i.i, 1.000000e+03
  %6 = call double @llvm.fabs.f64(double %div.i.i)
  %cmp.i.i.i9 = fcmp ogt double %6, 0x43DFFFFFFFFFEDC8
  br i1 %cmp.i.i.i9, label %if.then.i.i.i11, label %_ZdvRK7SimTimed.exit

if.then.i.i.i11:                                  ; preds = %_ZN7SimTimeC2Ed.exit
  call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp.i, double noundef %div.i.i), !noalias !44
  br label %_ZdvRK7SimTimed.exit

_ZdvRK7SimTimed.exit:                             ; preds = %if.then.i.i.i11, %_ZN7SimTimeC2Ed.exit
  %conv.i.i.i10 = fptosi double %div.i.i to i64
  store i64 %conv.i.i.i10, ptr %d, align 8, !tbaa !43, !alias.scope !44
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp.i) #5, !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp) #5
  %7 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !47, !noalias !49
  %sim_time.i.i = getelementptr inbounds nuw i8, ptr %7, i64 120
  %8 = load i64, ptr %sim_time.i.i, align 8, !tbaa !43, !noalias !52
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.lifetime.start.p0(ptr nonnull %ref.tmp.i12) #5, !noalias !55
  %xor.i.i.i.i = xor i64 %8, %conv.i.i.i10
  %cmp.i.i.i.i = icmp slt i64 %xor.i.i.i.i, 0
  %add.i.i.i = add nsw i64 %8, %conv.i.i.i10
  store i64 %add.i.i.i, ptr %ref.tmp.i12, align 8, !tbaa !43, !noalias !55
  %xor.i11.i.i.i = xor i64 %add.i.i.i, %conv.i.i.i10
  %cmp.i12.i.i.i = icmp sgt i64 %xor.i11.i.i.i, -1
  %or.cond.i = select i1 %cmp.i.i.i.i, i1 true, i1 %cmp.i12.i.i.i
  br i1 %or.cond.i, label %_ZplRK7SimTimeS1_.exit, label %if.then.i.i.i13

if.then.i.i.i13:                                  ; preds = %_ZdvRK7SimTimed.exit
  call void @_ZN7SimTime14overflowAddingERKS_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp.i12, ptr noundef nonnull align 8 dereferenceable(8) %d), !noalias !55
  br label %_ZplRK7SimTimeS1_.exit

_ZplRK7SimTimeS1_.exit:                           ; preds = %if.then.i.i.i13, %_ZdvRK7SimTimed.exit
  %9 = load i64, ptr %ref.tmp.i12, align 8, !tbaa !43, !noalias !55
  store i64 %9, ptr %agg.tmp, align 8, !tbaa !43, !alias.scope !55
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp.i12) #5, !noalias !55
  %call4 = call noundef i32 @_ZN13cSimpleModule10scheduleAtE7SimTimeP8cMessage(ptr noundef nonnull align 8 dereferenceable(192) %this, ptr dead_on_return noundef nonnull %agg.tmp, ptr noundef nonnull %msg)
  call void @llvm.lifetime.end.p0(ptr nonnull %d) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable5 = load ptr, ptr %this, align 8, !tbaa !15
  %vfn6 = getelementptr inbounds nuw i8, ptr %vtable5, i64 640
  %10 = load ptr, ptr %vfn6, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(448) %this, ptr noundef nonnull %msg)
  br label %if.end

if.end:                                           ; preds = %if.else, %_ZplRK7SimTimeS1_.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

declare void @_ZN7SimTime14overflowAddingERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nounwind }

!0 = !{!1, !11, i64 84}
!1 = !{!"_ZTS8cMessage", !2, i64 0, !9, i64 36, !9, i64 38, !9, i64 40, !12, i64 48, !10, i64 56, !6, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !11, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152}
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
!12 = !{!"p1 _ZTS6cArray", !6, i64 0}
!13 = !{!"_ZTS7SimTime", !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{!18, !28, i64 216}
!18 = !{!"_ZTS11EtherAppCli", !19, i64 0, !14, i64 192, !28, i64 200, !28, i64 208, !28, i64 216, !11, i64 224, !11, i64 228, !34, i64 232, !14, i64 240, !14, i64 248, !35, i64 256, !36, i64 344}
!19 = !{!"_ZTS13cSimpleModule", !20, i64 0, !32, i64 176, !33, i64 184}
!20 = !{!"_ZTS7cModule", !21, i64 0, !5, i64 104, !11, i64 112, !30, i64 120, !30, i64 128, !30, i64 136, !30, i64 144, !11, i64 152, !31, i64 160, !11, i64 168, !11, i64 172}
!21 = !{!"_ZTS10cComponent", !22, i64 0, !26, i64 56, !9, i64 64, !27, i64 72, !9, i64 80, !9, i64 82, !28, i64 88, !29, i64 96}
!22 = !{!"_ZTS12cDefaultList", !23, i64 0, !24, i64 40, !11, i64 48, !11, i64 52}
!23 = !{!"_ZTS23cNoncopyableOwnedObject", !2, i64 0}
!24 = !{!"p2 _ZTS12cOwnedObject", !25, i64 0}
!25 = !{!"any p2 pointer", !6, i64 0}
!26 = !{!"p1 _ZTS14cComponentType", !6, i64 0}
!27 = !{!"p1 int", !6, i64 0}
!28 = !{!"p1 _ZTS4cPar", !6, i64 0}
!29 = !{!"p1 _ZTS14cDisplayString", !6, i64 0}
!30 = !{!"p1 _ZTS7cModule", !6, i64 0}
!31 = !{!"p1 _ZTSN5cGate4DescE", !6, i64 0}
!32 = !{!"p1 _ZTS8cMessage", !6, i64 0}
!33 = !{!"p1 _ZTS10cCoroutine", !6, i64 0}
!34 = !{!"_ZTS10MACAddress", !7, i64 0}
!35 = !{!"_ZTS10cOutVector", !23, i64 0, !6, i64 40, !13, i64 48, !14, i64 56, !14, i64 64, !6, i64 72, !6, i64 80}
!36 = !{!"_ZTS7cStdDev", !37, i64 0, !14, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96}
!37 = !{!"_ZTS10cStatistic", !2, i64 0, !38, i64 40, !39, i64 48, !11, i64 56}
!38 = !{!"p1 _ZTS19cTransientDetection", !6, i64 0}
!39 = !{!"p1 _ZTS18cAccuracyDetection", !6, i64 0}
!40 = !{!"double", !7, i64 0}
!41 = !{!11, !11, i64 0}
!42 = !{!40, !40, i64 0}
!43 = !{!13, !14, i64 0}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZdvRK7SimTimed: %agg.result"}
!46 = distinct !{!46, !"_ZdvRK7SimTimed"}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTS11cSimulation", !6, i64 0}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_Z7simTimev: %agg.result"}
!51 = distinct !{!51, !"_Z7simTimev"}
!52 = !{!53, !50}
!53 = distinct !{!53, !54, !"_ZNK11cSimulation10getSimTimeEv: %agg.result"}
!54 = distinct !{!54, !"_ZNK11cSimulation10getSimTimeEv"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZplRK7SimTimeS1_: %agg.result"}
!57 = distinct !{!57, !"_ZplRK7SimTimeS1_"}
