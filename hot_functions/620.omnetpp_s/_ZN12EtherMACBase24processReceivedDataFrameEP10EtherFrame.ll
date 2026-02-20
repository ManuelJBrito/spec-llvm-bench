; ModuleID = '/tmp/tmp.0SHFi0iYQ1/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/model/EtherMACBase.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.SimTime = type { i64 }

@.str.64 = external hidden unnamed_addr constant [14 x i8], align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare noundef zeroext i1 @_ZN10cOutVector6recordEd(ptr noundef nonnull align 8 dereferenceable(88), double noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12EtherMACBase24processReceivedDataFrameEP10EtherFrame(ptr noundef nonnull align 8 dereferenceable(1360) %this, ptr noundef %frame) unnamed_addr #2 align 2 {
entry:
  %agg.tmp.i = alloca %class.SimTime, align 8
  %flags.i = getelementptr inbounds nuw i8, ptr %frame, i64 16
  %0 = load i16, ptr %flags.i, align 8, !tbaa !0
  %1 = and i16 %0, 8
  %tobool.i.not = icmp eq i16 %1, 0
  br i1 %tobool.i.not, label %if.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %numDroppedBitError = getelementptr inbounds nuw i8, ptr %this, i64 440
  %2 = load i64, ptr %numDroppedBitError, align 8, !tbaa !8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %numDroppedBitError, align 8, !tbaa !8
  %numDroppedBitErrorVector = getelementptr inbounds nuw i8, ptr %this, i64 920
  %conv = uitofp i64 %inc to double
  %call3 = tail call noundef zeroext i1 @_ZN10cOutVector6recordEd(ptr noundef nonnull align 8 dereferenceable(88) %numDroppedBitErrorVector, double noundef %conv)
  %vtable = load ptr, ptr %frame, align 8, !tbaa !36
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 32
  %3 = load ptr, ptr %vfn, align 8
  tail call void %3(ptr noundef nonnull align 8 dereferenceable(198) %frame) #3
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZN7cPacket12addBitLengthEl(ptr noundef nonnull align 8 dereferenceable(186) %frame, i64 noundef -64)
  %numFramesReceivedOK = getelementptr inbounds nuw i8, ptr %this, i64 400
  %4 = load i64, ptr %numFramesReceivedOK, align 8, !tbaa !38
  %inc4 = add i64 %4, 1
  store i64 %inc4, ptr %numFramesReceivedOK, align 8, !tbaa !38
  %len.i = getelementptr inbounds nuw i8, ptr %frame, i64 160
  %5 = load i64, ptr %len.i, align 8, !tbaa !39
  %add.i = add nsw i64 %5, 7
  %shr.i = ashr i64 %add.i, 3
  %numBytesReceivedOK = getelementptr inbounds nuw i8, ptr %this, i64 416
  %6 = load i64, ptr %numBytesReceivedOK, align 8, !tbaa !44
  %add = add i64 %shr.i, %6
  store i64 %add, ptr %numBytesReceivedOK, align 8, !tbaa !44
  %numFramesReceivedOKVector = getelementptr inbounds nuw i8, ptr %this, i64 568
  %conv7 = uitofp i64 %inc4 to double
  %call8 = tail call noundef zeroext i1 @_ZN10cOutVector6recordEd(ptr noundef nonnull align 8 dereferenceable(88) %numFramesReceivedOKVector, double noundef %conv7)
  %numBytesReceivedOKVector = getelementptr inbounds nuw i8, ptr %this, i64 744
  %7 = load i64, ptr %numBytesReceivedOK, align 8, !tbaa !44
  %conv10 = uitofp i64 %7 to double
  %call11 = tail call noundef zeroext i1 @_ZN10cOutVector6recordEd(ptr noundef nonnull align 8 dereferenceable(88) %numBytesReceivedOKVector, double noundef %conv10)
  %vtable12 = load ptr, ptr %this, align 8, !tbaa !36
  %vfn13 = getelementptr inbounds nuw i8, ptr %vtable12, i64 672
  %8 = load ptr, ptr %vfn13, align 8
  %call14 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(1360) %this, ptr noundef nonnull %frame)
  br i1 %call14, label %if.end16, label %return

if.end16:                                         ; preds = %if.end
  %numFramesPassedToHL = getelementptr inbounds nuw i8, ptr %this, i64 456
  %9 = load i64, ptr %numFramesPassedToHL, align 8, !tbaa !45
  %inc17 = add i64 %9, 1
  store i64 %inc17, ptr %numFramesPassedToHL, align 8, !tbaa !45
  %numFramesPassedToHLVector = getelementptr inbounds nuw i8, ptr %this, i64 1096
  %conv19 = uitofp i64 %inc17 to double
  %call20 = tail call noundef zeroext i1 @_ZN10cOutVector6recordEd(ptr noundef nonnull align 8 dereferenceable(88) %numFramesPassedToHLVector, double noundef %conv19)
  call void @llvm.lifetime.start.p0(ptr nonnull %agg.tmp.i)
  store i64 0, ptr %agg.tmp.i, align 8, !tbaa !46
  %call.i = call noundef i32 @_ZN13cSimpleModule11sendDelayedEP8cMessage7SimTimePKci(ptr noundef nonnull align 8 dereferenceable(192) %this, ptr noundef nonnull %frame, ptr dead_on_return noundef nonnull %agg.tmp.i, ptr noundef nonnull @.str.64, i32 noundef -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %agg.tmp.i)
  br label %return

return:                                           ; preds = %if.end16, %if.end, %delete.notnull
  ret void
}

declare void @_ZN7cPacket12addBitLengthEl(ptr noundef nonnull align 8 dereferenceable(186), i64 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN13cSimpleModule11sendDelayedEP8cMessage7SimTimePKci(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, ptr dead_on_return noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!0 = !{!1, !7, i64 16}
!1 = !{!"_ZTS12cNamedObject", !2, i64 0, !3, i64 8, !7, i64 16, !7, i64 18}
!2 = !{!"_ZTS7cObject"}
!3 = !{!"p1 omnipotent char", !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"short", !5, i64 0}
!8 = !{!9, !30, i64 440}
!9 = !{!"_ZTS12EtherMACBase", !10, i64 0, !28, i64 192, !28, i64 193, !28, i64 194, !29, i64 195, !17, i64 204, !28, i64 208, !28, i64 209, !28, i64 210, !30, i64 216, !31, i64 224, !31, i64 232, !31, i64 240, !31, i64 248, !31, i64 256, !17, i64 264, !17, i64 268, !17, i64 272, !32, i64 280, !34, i64 352, !26, i64 360, !26, i64 368, !26, i64 376, !17, i64 384, !17, i64 388, !30, i64 392, !30, i64 400, !30, i64 408, !30, i64 416, !30, i64 424, !30, i64 432, !30, i64 440, !30, i64 448, !30, i64 456, !30, i64 464, !30, i64 472, !35, i64 480, !35, i64 568, !35, i64 656, !35, i64 744, !35, i64 832, !35, i64 920, !35, i64 1008, !35, i64 1096, !35, i64 1184, !35, i64 1272}
!10 = !{!"_ZTS13cSimpleModule", !11, i64 0, !26, i64 176, !27, i64 184}
!11 = !{!"_ZTS7cModule", !12, i64 0, !3, i64 104, !17, i64 112, !24, i64 120, !24, i64 128, !24, i64 136, !24, i64 144, !17, i64 152, !25, i64 160, !17, i64 168, !17, i64 172}
!12 = !{!"_ZTS10cComponent", !13, i64 0, !20, i64 56, !7, i64 64, !21, i64 72, !7, i64 80, !7, i64 82, !22, i64 88, !23, i64 96}
!13 = !{!"_ZTS12cDefaultList", !14, i64 0, !18, i64 40, !17, i64 48, !17, i64 52}
!14 = !{!"_ZTS23cNoncopyableOwnedObject", !15, i64 0}
!15 = !{!"_ZTS12cOwnedObject", !1, i64 0, !16, i64 24, !17, i64 32}
!16 = !{!"p1 _ZTS7cObject", !4, i64 0}
!17 = !{!"int", !5, i64 0}
!18 = !{!"p2 _ZTS12cOwnedObject", !19, i64 0}
!19 = !{!"any p2 pointer", !4, i64 0}
!20 = !{!"p1 _ZTS14cComponentType", !4, i64 0}
!21 = !{!"p1 int", !4, i64 0}
!22 = !{!"p1 _ZTS4cPar", !4, i64 0}
!23 = !{!"p1 _ZTS14cDisplayString", !4, i64 0}
!24 = !{!"p1 _ZTS7cModule", !4, i64 0}
!25 = !{!"p1 _ZTSN5cGate4DescE", !4, i64 0}
!26 = !{!"p1 _ZTS8cMessage", !4, i64 0}
!27 = !{!"p1 _ZTS10cCoroutine", !4, i64 0}
!28 = !{!"bool", !5, i64 0}
!29 = !{!"_ZTS10MACAddress", !5, i64 0}
!30 = !{!"long", !5, i64 0}
!31 = !{!"_ZTS7SimTime", !30, i64 0}
!32 = !{!"_ZTS6cQueue", !15, i64 0, !28, i64 36, !33, i64 40, !33, i64 48, !17, i64 56, !4, i64 64}
!33 = !{!"p1 _ZTSN6cQueue5QElemE", !4, i64 0}
!34 = !{!"p1 _ZTS5cGate", !4, i64 0}
!35 = !{!"_ZTS10cOutVector", !14, i64 0, !4, i64 40, !31, i64 48, !30, i64 56, !30, i64 64, !4, i64 72, !4, i64 80}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !6, i64 0}
!38 = !{!9, !30, i64 400}
!39 = !{!40, !30, i64 160}
!40 = !{!"_ZTS7cPacket", !41, i64 0, !30, i64 160, !31, i64 168, !43, i64 176, !7, i64 184}
!41 = !{!"_ZTS8cMessage", !15, i64 0, !7, i64 36, !7, i64 38, !7, i64 40, !42, i64 48, !16, i64 56, !4, i64 64, !17, i64 72, !17, i64 76, !17, i64 80, !17, i64 84, !31, i64 88, !31, i64 96, !31, i64 104, !31, i64 112, !17, i64 120, !30, i64 128, !30, i64 136, !30, i64 144, !30, i64 152}
!42 = !{!"p1 _ZTS6cArray", !4, i64 0}
!43 = !{!"p1 _ZTS7cPacket", !4, i64 0}
!44 = !{!9, !30, i64 416}
!45 = !{!9, !30, i64 456}
!46 = !{!31, !30, i64 0}
