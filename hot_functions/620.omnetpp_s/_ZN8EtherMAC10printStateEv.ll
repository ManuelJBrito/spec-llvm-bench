; ModuleID = '/tmp/tmp.czgN6g0KDv/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/model/EtherMAC.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.63 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.64 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.65 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.66 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.67 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.68 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.69 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.70 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.71 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.72 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.73 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.74 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.75 = external hidden unnamed_addr constant [32 x i8], align 1
@.str.76 = external hidden unnamed_addr constant [17 x i8], align 1
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8EtherMAC10printStateEv(ptr noundef nonnull align 8 dereferenceable(1640) %this) unnamed_addr #0 align 2 {
entry:
  %0 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !0
  %disable_tracing.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1 = load i8, ptr %disable_tracing.i, align 8, !tbaa !5, !range !9, !noundef !10
  %loadedv.i = trunc nuw i8 %1 to i1
  br i1 %loadedv.i, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %out.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %call1.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i, ptr noundef nonnull @.str.63, i64 noundef 15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry
  %transmitState = getelementptr inbounds nuw i8, ptr %this, i64 264
  %2 = load i32, ptr %transmitState, align 8, !tbaa !11
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 3, label %sw.bb25
    i32 4, label %sw.bb35
    i32 5, label %sw.bb45
    i32 6, label %sw.bb55
  ]

sw.bb:                                            ; preds = %cond.end
  %3 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !0
  %disable_tracing.i137 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = load i8, ptr %disable_tracing.i137, align 8, !tbaa !5, !range !9, !noundef !10
  %loadedv.i138 = trunc nuw i8 %4 to i1
  br i1 %loadedv.i138, label %sw.epilog, label %cond.false10

cond.false10:                                     ; preds = %sw.bb
  %out.i139 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %call1.i.i141 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i139, ptr noundef nonnull @.str.64, i64 noundef 13)
  br label %sw.epilog

sw.bb15:                                          ; preds = %cond.end
  %5 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !0
  %disable_tracing.i142 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %6 = load i8, ptr %disable_tracing.i142, align 8, !tbaa !5, !range !9, !noundef !10
  %loadedv.i143 = trunc nuw i8 %6 to i1
  br i1 %loadedv.i143, label %sw.epilog, label %cond.false20

cond.false20:                                     ; preds = %sw.bb15
  %out.i144 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %call1.i.i146 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i144, ptr noundef nonnull @.str.65, i64 noundef 14)
  br label %sw.epilog

sw.bb25:                                          ; preds = %cond.end
  %7 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !0
  %disable_tracing.i147 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %8 = load i8, ptr %disable_tracing.i147, align 8, !tbaa !5, !range !9, !noundef !10
  %loadedv.i148 = trunc nuw i8 %8 to i1
  br i1 %loadedv.i148, label %sw.epilog, label %cond.false30

cond.false30:                                     ; preds = %sw.bb25
  %out.i149 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %call1.i.i151 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i149, ptr noundef nonnull @.str.66, i64 noundef 18)
  br label %sw.epilog

sw.bb35:                                          ; preds = %cond.end
  %9 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !0
  %disable_tracing.i152 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %10 = load i8, ptr %disable_tracing.i152, align 8, !tbaa !5, !range !9, !noundef !10
  %loadedv.i153 = trunc nuw i8 %10 to i1
  br i1 %loadedv.i153, label %sw.epilog, label %cond.false40

cond.false40:                                     ; preds = %sw.bb35
  %out.i154 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %call1.i.i156 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i154, ptr noundef nonnull @.str.67, i64 noundef 13)
  br label %sw.epilog

sw.bb45:                                          ; preds = %cond.end
  %11 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !0
  %disable_tracing.i157 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %12 = load i8, ptr %disable_tracing.i157, align 8, !tbaa !5, !range !9, !noundef !10
  %loadedv.i158 = trunc nuw i8 %12 to i1
  br i1 %loadedv.i158, label %sw.epilog, label %cond.false50

cond.false50:                                     ; preds = %sw.bb45
  %out.i159 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %call1.i.i161 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i159, ptr noundef nonnull @.str.68, i64 noundef 13)
  br label %sw.epilog

sw.bb55:                                          ; preds = %cond.end
  %13 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !0
  %disable_tracing.i162 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %14 = load i8, ptr %disable_tracing.i162, align 8, !tbaa !5, !range !9, !noundef !10
  %loadedv.i163 = trunc nuw i8 %14 to i1
  br i1 %loadedv.i163, label %sw.epilog, label %cond.false60

cond.false60:                                     ; preds = %sw.bb55
  %out.i164 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %call1.i.i166 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i164, ptr noundef nonnull @.str.69, i64 noundef 11)
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false60, %sw.bb55, %cond.false50, %sw.bb45, %cond.false40, %sw.bb35, %cond.false30, %sw.bb25, %cond.false20, %sw.bb15, %cond.false10, %sw.bb, %cond.end
  %15 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !0
  %disable_tracing.i167 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %16 = load i8, ptr %disable_tracing.i167, align 8, !tbaa !5, !range !9, !noundef !10
  %loadedv.i168 = trunc nuw i8 %16 to i1
  br i1 %loadedv.i168, label %cond.end72, label %cond.false69

cond.false69:                                     ; preds = %sw.epilog
  %out.i169 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %call1.i.i171 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i169, ptr noundef nonnull @.str.70, i64 noundef 17)
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false69, %sw.epilog
  %receiveState = getelementptr inbounds nuw i8, ptr %this, i64 268
  %17 = load i32, ptr %receiveState, align 4, !tbaa !42
  switch i32 %17, label %sw.epilog104 [
    i32 1, label %sw.bb74
    i32 2, label %sw.bb84
    i32 3, label %sw.bb94
  ]

sw.bb74:                                          ; preds = %cond.end72
  %18 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !0
  %disable_tracing.i172 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %19 = load i8, ptr %disable_tracing.i172, align 8, !tbaa !5, !range !9, !noundef !10
  %loadedv.i173 = trunc nuw i8 %19 to i1
  br i1 %loadedv.i173, label %sw.epilog104, label %cond.false79

cond.false79:                                     ; preds = %sw.bb74
  %out.i174 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %call1.i.i176 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i174, ptr noundef nonnull @.str.71, i64 noundef 13)
  br label %sw.epilog104

sw.bb84:                                          ; preds = %cond.end72
  %20 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !0
  %disable_tracing.i177 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %21 = load i8, ptr %disable_tracing.i177, align 8, !tbaa !5, !range !9, !noundef !10
  %loadedv.i178 = trunc nuw i8 %21 to i1
  br i1 %loadedv.i178, label %sw.epilog104, label %cond.false89

cond.false89:                                     ; preds = %sw.bb84
  %out.i179 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %call1.i.i181 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i179, ptr noundef nonnull @.str.72, i64 noundef 15)
  br label %sw.epilog104

sw.bb94:                                          ; preds = %cond.end72
  %22 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !0
  %disable_tracing.i182 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %23 = load i8, ptr %disable_tracing.i182, align 8, !tbaa !5, !range !9, !noundef !10
  %loadedv.i183 = trunc nuw i8 %23 to i1
  br i1 %loadedv.i183, label %sw.epilog104, label %cond.false99

cond.false99:                                     ; preds = %sw.bb94
  %out.i184 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %call1.i.i186 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i184, ptr noundef nonnull @.str.73, i64 noundef 18)
  br label %sw.epilog104

sw.epilog104:                                     ; preds = %cond.false99, %sw.bb94, %cond.false89, %sw.bb84, %cond.false79, %sw.bb74, %cond.end72
  %24 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !0
  %disable_tracing.i187 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %25 = load i8, ptr %disable_tracing.i187, align 8, !tbaa !5, !range !9, !noundef !10
  %loadedv.i188 = trunc nuw i8 %25 to i1
  br i1 %loadedv.i188, label %cond.end113, label %cond.false109

cond.false109:                                    ; preds = %sw.epilog104
  %out.i189 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %call1.i.i191 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i189, ptr noundef nonnull @.str.74, i64 noundef 13)
  %backoffs = getelementptr inbounds nuw i8, ptr %this, i64 1380
  %26 = load i32, ptr %backoffs, align 4, !tbaa !43
  %call.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %out.i189, i32 noundef %26)
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false109, %sw.epilog104
  %27 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !0
  %disable_tracing.i193 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %28 = load i8, ptr %disable_tracing.i193, align 8, !tbaa !5, !range !9, !noundef !10
  %loadedv.i194 = trunc nuw i8 %28 to i1
  br i1 %loadedv.i194, label %cond.end123, label %cond.false119

cond.false119:                                    ; preds = %cond.end113
  %out.i195 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %call1.i.i197 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i195, ptr noundef nonnull @.str.75, i64 noundef 31)
  %numConcurrentTransmissions = getelementptr inbounds nuw i8, ptr %this, i64 1384
  %29 = load i32, ptr %numConcurrentTransmissions, align 4, !tbaa !43
  %call.i199 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %out.i195, i32 noundef %29)
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false119, %cond.end113
  %30 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !0
  %disable_tracing.i200 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %31 = load i8, ptr %disable_tracing.i200, align 8, !tbaa !5, !range !9, !noundef !10
  %loadedv.i201 = trunc nuw i8 %31 to i1
  br i1 %loadedv.i201, label %cond.end135, label %cond.false129

cond.false129:                                    ; preds = %cond.end123
  %out.i202 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %call1.i.i204 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i202, ptr noundef nonnull @.str.76, i64 noundef 16)
  %txQueue = getelementptr inbounds nuw i8, ptr %this, i64 280
  %vtable.i = load ptr, ptr %txQueue, align 8, !tbaa !44
  %vfn.i = getelementptr inbounds nuw i8, ptr %vtable.i, i64 264
  %32 = load ptr, ptr %vfn.i, align 8
  %call.i205 = tail call noundef i32 %32(ptr noundef nonnull align 8 dereferenceable(72) %txQueue)
  %call.i207 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %out.i202, i32 noundef %call.i205)
  %vtable.i209 = load ptr, ptr %out.i202, align 8, !tbaa !44
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i209, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %out.i202, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %33 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !46
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %cond.false129
  tail call void @_ZSt16__throw_bad_castv() #3
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %cond.false129
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %33, i64 56
  %34 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !61
  %tobool.not.i3.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i3.i.i, label %if.end.i.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %33, i64 67
  %35 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !66
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %33)
  %vtable.i.i.i = load ptr, ptr %33, align 8, !tbaa !44
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %36 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i211 = tail call noundef signext i8 %36(ptr noundef nonnull align 8 dereferenceable(570) %33, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.end.i.i.i, %if.then.i4.i.i
  %retval.0.i.i.i = phi i8 [ %35, %if.then.i4.i.i ], [ %call.i.i.i211, %if.end.i.i.i ]
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %out.i202, i8 noundef signext %retval.0.i.i.i)
  %call.i.i210 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %cond.end135

cond.end135:                                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %cond.end123
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #2

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!0 = !{!1, !1, i64 0}
!1 = !{!"p1 _ZTS6cEnvir", !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!6, !7, i64 8}
!6 = !{!"_ZTS6cEnvir", !7, i64 8, !7, i64 9, !7, i64 10, !8, i64 16}
!7 = !{!"bool", !3, i64 0}
!8 = !{!"_ZTSSo"}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{!12, !24, i64 264}
!12 = !{!"_ZTS12EtherMACBase", !13, i64 0, !7, i64 192, !7, i64 193, !7, i64 194, !35, i64 195, !24, i64 204, !7, i64 208, !7, i64 209, !7, i64 210, !36, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !24, i64 264, !24, i64 268, !24, i64 272, !38, i64 280, !40, i64 352, !33, i64 360, !33, i64 368, !33, i64 376, !24, i64 384, !24, i64 388, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !41, i64 480, !41, i64 568, !41, i64 656, !41, i64 744, !41, i64 832, !41, i64 920, !41, i64 1008, !41, i64 1096, !41, i64 1184, !41, i64 1272}
!13 = !{!"_ZTS13cSimpleModule", !14, i64 0, !33, i64 176, !34, i64 184}
!14 = !{!"_ZTS7cModule", !15, i64 0, !21, i64 104, !24, i64 112, !31, i64 120, !31, i64 128, !31, i64 136, !31, i64 144, !24, i64 152, !32, i64 160, !24, i64 168, !24, i64 172}
!15 = !{!"_ZTS10cComponent", !16, i64 0, !27, i64 56, !22, i64 64, !28, i64 72, !22, i64 80, !22, i64 82, !29, i64 88, !30, i64 96}
!16 = !{!"_ZTS12cDefaultList", !17, i64 0, !25, i64 40, !24, i64 48, !24, i64 52}
!17 = !{!"_ZTS23cNoncopyableOwnedObject", !18, i64 0}
!18 = !{!"_ZTS12cOwnedObject", !19, i64 0, !23, i64 24, !24, i64 32}
!19 = !{!"_ZTS12cNamedObject", !20, i64 0, !21, i64 8, !22, i64 16, !22, i64 18}
!20 = !{!"_ZTS7cObject"}
!21 = !{!"p1 omnipotent char", !2, i64 0}
!22 = !{!"short", !3, i64 0}
!23 = !{!"p1 _ZTS7cObject", !2, i64 0}
!24 = !{!"int", !3, i64 0}
!25 = !{!"p2 _ZTS12cOwnedObject", !26, i64 0}
!26 = !{!"any p2 pointer", !2, i64 0}
!27 = !{!"p1 _ZTS14cComponentType", !2, i64 0}
!28 = !{!"p1 int", !2, i64 0}
!29 = !{!"p1 _ZTS4cPar", !2, i64 0}
!30 = !{!"p1 _ZTS14cDisplayString", !2, i64 0}
!31 = !{!"p1 _ZTS7cModule", !2, i64 0}
!32 = !{!"p1 _ZTSN5cGate4DescE", !2, i64 0}
!33 = !{!"p1 _ZTS8cMessage", !2, i64 0}
!34 = !{!"p1 _ZTS10cCoroutine", !2, i64 0}
!35 = !{!"_ZTS10MACAddress", !3, i64 0}
!36 = !{!"long", !3, i64 0}
!37 = !{!"_ZTS7SimTime", !36, i64 0}
!38 = !{!"_ZTS6cQueue", !18, i64 0, !7, i64 36, !39, i64 40, !39, i64 48, !24, i64 56, !2, i64 64}
!39 = !{!"p1 _ZTSN6cQueue5QElemE", !2, i64 0}
!40 = !{!"p1 _ZTS5cGate", !2, i64 0}
!41 = !{!"_ZTS10cOutVector", !17, i64 0, !2, i64 40, !37, i64 48, !36, i64 56, !36, i64 64, !2, i64 72, !2, i64 80}
!42 = !{!12, !24, i64 268}
!43 = !{!24, !24, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !4, i64 0}
!46 = !{!47, !58, i64 240}
!47 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !48, i64 0, !56, i64 216, !3, i64 224, !7, i64 225, !57, i64 232, !58, i64 240, !59, i64 248, !60, i64 256}
!48 = !{!"_ZTSSt8ios_base", !36, i64 8, !36, i64 16, !49, i64 24, !50, i64 28, !50, i64 32, !51, i64 40, !52, i64 48, !3, i64 64, !24, i64 192, !53, i64 200, !54, i64 208}
!49 = !{!"_ZTSSt13_Ios_Fmtflags", !3, i64 0}
!50 = !{!"_ZTSSt12_Ios_Iostate", !3, i64 0}
!51 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !2, i64 0}
!52 = !{!"_ZTSNSt8ios_base6_WordsE", !2, i64 0, !36, i64 8}
!53 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !2, i64 0}
!54 = !{!"_ZTSSt6locale", !55, i64 0}
!55 = !{!"p1 _ZTSNSt6locale5_ImplE", !2, i64 0}
!56 = !{!"p1 _ZTSSo", !2, i64 0}
!57 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !2, i64 0}
!58 = !{!"p1 _ZTSSt5ctypeIcE", !2, i64 0}
!59 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !2, i64 0}
!60 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !2, i64 0}
!61 = !{!62, !3, i64 56}
!62 = !{!"_ZTSSt5ctypeIcE", !63, i64 0, !64, i64 16, !7, i64 24, !28, i64 32, !28, i64 40, !65, i64 48, !3, i64 56, !3, i64 57, !3, i64 313, !3, i64 569}
!63 = !{!"_ZTSNSt6locale5facetE", !24, i64 8}
!64 = !{!"p1 _ZTS15__locale_struct", !2, i64 0}
!65 = !{!"p1 short", !2, i64 0}
!66 = !{!3, !3, i64 0}
