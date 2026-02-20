; ModuleID = '/tmp/tmp.j1AMCSY7Pw/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/model/EtherMACBase.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.69 = external hidden unnamed_addr constant [47 x i8], align 1
@.str.70 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.71 = external hidden unnamed_addr constant [46 x i8], align 1
@.str.72 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.73 = external hidden unnamed_addr constant [22 x i8], align 1
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8

declare void @_ZNK13cSimpleModule5errorEPKcz(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, ...) local_unnamed_addr #0

declare noundef ptr @_ZNK6cQueue5frontEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12EtherMACBase18handleEndIFGPeriodEv(ptr noundef nonnull align 8 dereferenceable(1360) %this) unnamed_addr #1 align 2 {
entry:
  %transmitState = getelementptr inbounds nuw i8, ptr %this, i64 264
  %0 = load i32, ptr %transmitState, align 8, !tbaa !0
  %cmp.not = icmp eq i32 %0, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @_ZNK13cSimpleModule5errorEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %this, ptr noundef nonnull @.str.69)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %txQueue = getelementptr inbounds nuw i8, ptr %this, i64 280
  %vtable.i.i = load ptr, ptr %txQueue, align 8, !tbaa !35
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 264
  %1 = load ptr, ptr %vfn.i.i, align 8
  %call.i.i = tail call noundef i32 %1(ptr noundef nonnull align 8 dereferenceable(72) %txQueue)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @_ZNK13cSimpleModule5errorEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %this, ptr noundef nonnull @.str.70)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %call5 = tail call noundef ptr @_ZNK6cQueue5frontEv(ptr noundef nonnull align 8 dereferenceable(72) %txQueue)
  %2 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !37
  %disable_tracing.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %3 = load i8, ptr %disable_tracing.i, align 8, !tbaa !39, !range !42, !noundef !43
  %loadedv.i = trunc nuw i8 %3 to i1
  br i1 %loadedv.i, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end3
  %out.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %call1.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i, ptr noundef nonnull @.str.71, i64 noundef 45)
  %call.i.i39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %out.i, ptr noundef %call5)
  %vtable.i = load ptr, ptr %out.i, align 8, !tbaa !35
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %out.i, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %4 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !44
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %cond.false
  tail call void @_ZSt16__throw_bad_castv() #3
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %cond.false
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %5 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !59
  %tobool.not.i3.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i3.i.i, label %if.end.i.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 67
  %6 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !64
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %4)
  %vtable.i.i.i = load ptr, ptr %4, align 8, !tbaa !35
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %7 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i53 = tail call noundef signext i8 %7(ptr noundef nonnull align 8 dereferenceable(570) %4, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.end.i.i.i, %if.then.i4.i.i
  %retval.0.i.i.i = phi i8 [ %6, %if.then.i4.i.i ], [ %call.i.i.i53, %if.end.i.i.i ]
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %out.i, i8 noundef signext %retval.0.i.i.i)
  %call.i.i52 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %cond.end

cond.end:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %if.end3
  %carrierExtension = getelementptr inbounds nuw i8, ptr %this, i64 209
  %8 = load i8, ptr %carrierExtension, align 1, !tbaa !65, !range !42, !noundef !43
  %loadedv = trunc nuw i8 %8 to i1
  br i1 %loadedv, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %cond.end
  %len.i = getelementptr inbounds nuw i8, ptr %call5, i64 160
  %9 = load i64, ptr %len.i, align 8, !tbaa !66
  %cmp14 = icmp slt i64 %9, 4089
  br i1 %cmp14, label %if.then15, label %if.end25

if.then15:                                        ; preds = %land.lhs.true
  %10 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !37
  %disable_tracing.i42 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %11 = load i8, ptr %disable_tracing.i42, align 8, !tbaa !39, !range !42, !noundef !43
  %loadedv.i43 = trunc nuw i8 %11 to i1
  br i1 %loadedv.i43, label %cond.end23, label %cond.false20

cond.false20:                                     ; preds = %if.then15
  %out.i44 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %call1.i.i46 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i44, ptr noundef nonnull @.str.72, i64 noundef 44)
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false20, %if.then15
  tail call void @_ZN7cPacket12setBitLengthEl(ptr noundef nonnull align 8 dereferenceable(186) %call5, i64 noundef 4096)
  br label %if.end25

if.end25:                                         ; preds = %cond.end23, %land.lhs.true, %cond.end
  %frameBursting = getelementptr inbounds nuw i8, ptr %this, i64 210
  %12 = load i8, ptr %frameBursting, align 2, !tbaa !71, !range !42, !noundef !43
  %loadedv26 = trunc nuw i8 %12 to i1
  br i1 %loadedv26, label %if.then27, label %if.end37

if.then27:                                        ; preds = %if.end25
  %13 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !37
  %disable_tracing.i47 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %14 = load i8, ptr %disable_tracing.i47, align 8, !tbaa !39, !range !42, !noundef !43
  %loadedv.i48 = trunc nuw i8 %14 to i1
  br i1 %loadedv.i48, label %cond.end35, label %cond.false32

cond.false32:                                     ; preds = %if.then27
  %out.i49 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %call1.i.i51 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i49, ptr noundef nonnull @.str.73, i64 noundef 21)
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false32, %if.then27
  %framesSentInBurst = getelementptr inbounds nuw i8, ptr %this, i64 384
  store i32 0, ptr %framesSentInBurst, align 8, !tbaa !72
  %bytesSentInBurst = getelementptr inbounds nuw i8, ptr %this, i64 388
  store i32 0, ptr %bytesSentInBurst, align 4, !tbaa !73
  br label %if.end37

if.end37:                                         ; preds = %cond.end35, %if.end25
  ret void
}

declare void @_ZN7cPacket12setBitLengthEl(ptr noundef nonnull align 8 dereferenceable(186), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #2

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!0 = !{!1, !16, i64 264}
!1 = !{!"_ZTS12EtherMACBase", !2, i64 0, !27, i64 192, !27, i64 193, !27, i64 194, !28, i64 195, !16, i64 204, !27, i64 208, !27, i64 209, !27, i64 210, !29, i64 216, !30, i64 224, !30, i64 232, !30, i64 240, !30, i64 248, !30, i64 256, !16, i64 264, !16, i64 268, !16, i64 272, !31, i64 280, !33, i64 352, !25, i64 360, !25, i64 368, !25, i64 376, !16, i64 384, !16, i64 388, !29, i64 392, !29, i64 400, !29, i64 408, !29, i64 416, !29, i64 424, !29, i64 432, !29, i64 440, !29, i64 448, !29, i64 456, !29, i64 464, !29, i64 472, !34, i64 480, !34, i64 568, !34, i64 656, !34, i64 744, !34, i64 832, !34, i64 920, !34, i64 1008, !34, i64 1096, !34, i64 1184, !34, i64 1272}
!2 = !{!"_ZTS13cSimpleModule", !3, i64 0, !25, i64 176, !26, i64 184}
!3 = !{!"_ZTS7cModule", !4, i64 0, !10, i64 104, !16, i64 112, !23, i64 120, !23, i64 128, !23, i64 136, !23, i64 144, !16, i64 152, !24, i64 160, !16, i64 168, !16, i64 172}
!4 = !{!"_ZTS10cComponent", !5, i64 0, !19, i64 56, !14, i64 64, !20, i64 72, !14, i64 80, !14, i64 82, !21, i64 88, !22, i64 96}
!5 = !{!"_ZTS12cDefaultList", !6, i64 0, !17, i64 40, !16, i64 48, !16, i64 52}
!6 = !{!"_ZTS23cNoncopyableOwnedObject", !7, i64 0}
!7 = !{!"_ZTS12cOwnedObject", !8, i64 0, !15, i64 24, !16, i64 32}
!8 = !{!"_ZTS12cNamedObject", !9, i64 0, !10, i64 8, !14, i64 16, !14, i64 18}
!9 = !{!"_ZTS7cObject"}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"short", !12, i64 0}
!15 = !{!"p1 _ZTS7cObject", !11, i64 0}
!16 = !{!"int", !12, i64 0}
!17 = !{!"p2 _ZTS12cOwnedObject", !18, i64 0}
!18 = !{!"any p2 pointer", !11, i64 0}
!19 = !{!"p1 _ZTS14cComponentType", !11, i64 0}
!20 = !{!"p1 int", !11, i64 0}
!21 = !{!"p1 _ZTS4cPar", !11, i64 0}
!22 = !{!"p1 _ZTS14cDisplayString", !11, i64 0}
!23 = !{!"p1 _ZTS7cModule", !11, i64 0}
!24 = !{!"p1 _ZTSN5cGate4DescE", !11, i64 0}
!25 = !{!"p1 _ZTS8cMessage", !11, i64 0}
!26 = !{!"p1 _ZTS10cCoroutine", !11, i64 0}
!27 = !{!"bool", !12, i64 0}
!28 = !{!"_ZTS10MACAddress", !12, i64 0}
!29 = !{!"long", !12, i64 0}
!30 = !{!"_ZTS7SimTime", !29, i64 0}
!31 = !{!"_ZTS6cQueue", !7, i64 0, !27, i64 36, !32, i64 40, !32, i64 48, !16, i64 56, !11, i64 64}
!32 = !{!"p1 _ZTSN6cQueue5QElemE", !11, i64 0}
!33 = !{!"p1 _ZTS5cGate", !11, i64 0}
!34 = !{!"_ZTS10cOutVector", !6, i64 0, !11, i64 40, !30, i64 48, !29, i64 56, !29, i64 64, !11, i64 72, !11, i64 80}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !13, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTS6cEnvir", !11, i64 0}
!39 = !{!40, !27, i64 8}
!40 = !{!"_ZTS6cEnvir", !27, i64 8, !27, i64 9, !27, i64 10, !41, i64 16}
!41 = !{!"_ZTSSo"}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!45, !56, i64 240}
!45 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !46, i64 0, !54, i64 216, !12, i64 224, !27, i64 225, !55, i64 232, !56, i64 240, !57, i64 248, !58, i64 256}
!46 = !{!"_ZTSSt8ios_base", !29, i64 8, !29, i64 16, !47, i64 24, !48, i64 28, !48, i64 32, !49, i64 40, !50, i64 48, !12, i64 64, !16, i64 192, !51, i64 200, !52, i64 208}
!47 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!48 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!49 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!50 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !29, i64 8}
!51 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!52 = !{!"_ZTSSt6locale", !53, i64 0}
!53 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!54 = !{!"p1 _ZTSSo", !11, i64 0}
!55 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!56 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!57 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!58 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!59 = !{!60, !12, i64 56}
!60 = !{!"_ZTSSt5ctypeIcE", !61, i64 0, !62, i64 16, !27, i64 24, !20, i64 32, !20, i64 40, !63, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!61 = !{!"_ZTSNSt6locale5facetE", !16, i64 8}
!62 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!63 = !{!"p1 short", !11, i64 0}
!64 = !{!12, !12, i64 0}
!65 = !{!1, !27, i64 209}
!66 = !{!67, !29, i64 160}
!67 = !{!"_ZTS7cPacket", !68, i64 0, !29, i64 160, !30, i64 168, !70, i64 176, !14, i64 184}
!68 = !{!"_ZTS8cMessage", !7, i64 0, !14, i64 36, !14, i64 38, !14, i64 40, !69, i64 48, !15, i64 56, !11, i64 64, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84, !30, i64 88, !30, i64 96, !30, i64 104, !30, i64 112, !16, i64 120, !29, i64 128, !29, i64 136, !29, i64 144, !29, i64 152}
!69 = !{!"p1 _ZTS6cArray", !11, i64 0}
!70 = !{!"p1 _ZTS7cPacket", !11, i64 0}
!71 = !{!1, !27, i64 210}
!72 = !{!1, !16, i64 384}
!73 = !{!1, !16, i64 388}
