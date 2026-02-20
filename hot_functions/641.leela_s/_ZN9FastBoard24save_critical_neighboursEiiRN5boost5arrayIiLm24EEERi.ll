; ModuleID = '/tmp/tmp.t6fiTGpkUK/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/FastBoard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.31 = external hidden unnamed_addr constant [26 x i8], align 1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare dso_local void @_ZN9FastBoard15kill_neighboursEiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8052), i32 noundef, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(96), ptr noundef nonnull align 4 captures(none) dereferenceable(4)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare dso_local noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %color, i32 noundef %vertex, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(96) %moves, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %movecnt) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %m_dirs = getelementptr inbounds nuw i8, ptr %this, i64 7960
  %m_square = getelementptr inbounds nuw i8, ptr %this, i64 1776
  %m_parent = getelementptr inbounds nuw i8, ptr %this, i64 4424
  %m_libs = getelementptr inbounds nuw i8, ptr %this, i64 5308
  %m_neighbours.i.i.i = getelementptr inbounds nuw i8, ptr %this, i64 7076
  %m_next.i = getelementptr inbounds nuw i8, ptr %this, i64 3540
  %arrayidx.i34.1.i = getelementptr inbounds nuw i8, ptr %this, i64 7964
  %arrayidx.i34.2.i = getelementptr inbounds nuw i8, ptr %this, i64 7968
  %arrayidx.i34.3.i = getelementptr inbounds nuw i8, ptr %this, i64 7972
  %m_critical = getelementptr inbounds nuw i8, ptr %this, i64 8024
  %_M_finish.i = getelementptr inbounds nuw i8, ptr %this, i64 8032
  %_M_end_of_storage.i = getelementptr inbounds nuw i8, ptr %this, i64 8040
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end24
  ret void

for.body:                                         ; preds = %if.end24, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end24 ]
  %arrayidx.i = getelementptr inbounds nuw i32, ptr %m_dirs, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx.i, align 4, !tbaa !0
  %add = add nsw i32 %0, %vertex
  %conv2 = sext i32 %add to i64
  %arrayidx.i36 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv2
  %1 = load i32, ptr %arrayidx.i36, align 4, !tbaa !4
  %cmp4 = icmp eq i32 %1, %color
  br i1 %cmp4, label %if.then, label %if.end24

if.then:                                          ; preds = %for.body
  %arrayidx.i37 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv2
  %2 = load i16, ptr %arrayidx.i37, align 2, !tbaa !6
  %conv8 = zext i16 %2 to i64
  %arrayidx.i38 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv8
  %3 = load i16, ptr %arrayidx.i38, align 2, !tbaa !6
  %cmp11 = icmp ult i16 %3, 2
  br i1 %cmp11, label %do.body.preheader.i, label %if.end24

do.body.preheader.i:                              ; preds = %if.then
  %4 = load i32, ptr %m_dirs, align 4
  %5 = load i32, ptr %arrayidx.i34.1.i, align 4
  %6 = load i32, ptr %arrayidx.i34.2.i, align 4
  %7 = load i32, ptr %arrayidx.i34.3.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end17.i, %do.body.preheader.i
  %pos.0.i = phi i32 [ %conv20.i, %if.end17.i ], [ %add, %do.body.preheader.i ]
  %conv.i.i.i = sext i32 %pos.0.i to i64
  %arrayidx.i.i.i.i = getelementptr inbounds nuw i16, ptr %m_neighbours.i.i.i, i64 %conv.i.i.i
  %8 = load i16, ptr %arrayidx.i.i.i.i, align 2, !tbaa !6
  %9 = and i16 %8, 1792
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %if.end17.i, label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %add.1.i = add nsw i32 %pos.0.i, %5
  %conv10.1.i = sext i32 %add.1.i to i64
  %arrayidx.i35.1.i = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.1.i
  %10 = load i32, ptr %arrayidx.i35.1.i, align 4, !tbaa !4
  %cmp12.not.1.i = icmp eq i32 %10, 2
  br i1 %cmp12.not.1.i, label %_ZN9FastBoard8in_atariEi.exit, label %for.cond.1.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %add.2.i = add nsw i32 %pos.0.i, %6
  %conv10.2.i = sext i32 %add.2.i to i64
  %arrayidx.i35.2.i = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.2.i
  %11 = load i32, ptr %arrayidx.i35.2.i, align 4, !tbaa !4
  %cmp12.not.2.i = icmp eq i32 %11, 2
  br i1 %cmp12.not.2.i, label %_ZN9FastBoard8in_atariEi.exit, label %for.cond.2.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %add.3.i = add nsw i32 %pos.0.i, %7
  %conv10.3.i = sext i32 %add.3.i to i64
  %arrayidx.i35.3.i = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.3.i
  %12 = load i32, ptr %arrayidx.i35.3.i, align 4, !tbaa !4
  %cmp12.not.3.i = icmp eq i32 %12, 2
  br i1 %cmp12.not.3.i, label %_ZN9FastBoard8in_atariEi.exit, label %if.end17.i

for.body.i:                                       ; preds = %do.body.i
  %add.i = add nsw i32 %pos.0.i, %4
  %conv10.i = sext i32 %add.i to i64
  %arrayidx.i35.i = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.i
  %13 = load i32, ptr %arrayidx.i35.i, align 4, !tbaa !4
  %cmp12.not.i = icmp eq i32 %13, 2
  br i1 %cmp12.not.i, label %_ZN9FastBoard8in_atariEi.exit, label %for.cond.i

if.end17.i:                                       ; preds = %for.cond.2.i, %do.body.i
  %arrayidx.i36.i = getelementptr inbounds nuw i16, ptr %m_next.i, i64 %conv.i.i.i
  %14 = load i16, ptr %arrayidx.i36.i, align 2, !tbaa !6
  %conv20.i = zext i16 %14 to i32
  %cmp21.not.i = icmp eq i32 %add, %conv20.i
  br i1 %cmp21.not.i, label %_ZN9FastBoard8in_atariEi.exit, label %do.body.i, !llvm.loop !8

_ZN9FastBoard8in_atariEi.exit:                    ; preds = %if.end17.i, %for.body.i, %for.cond.2.i, %for.cond.1.i, %for.cond.i
  %retval.6.i = phi i32 [ 0, %if.end17.i ], [ %add.3.i, %for.cond.2.i ], [ %add.2.i, %for.cond.1.i ], [ %add.1.i, %for.cond.i ], [ %add.i, %for.body.i ]
  %15 = load i32, ptr %movecnt, align 4, !tbaa !0
  %call15 = tail call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %color, i32 noundef %retval.6.i)
  br i1 %call15, label %if.end, label %if.then16

if.then16:                                        ; preds = %_ZN9FastBoard8in_atariEi.exit
  %16 = load i32, ptr %movecnt, align 4, !tbaa !0
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %movecnt, align 4, !tbaa !0
  %conv17 = sext i32 %16 to i64
  %arrayidx.i39 = getelementptr inbounds nuw i32, ptr %moves, i64 %conv17
  store i32 %retval.6.i, ptr %arrayidx.i39, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then16, %_ZN9FastBoard8in_atariEi.exit
  tail call void @_ZN9FastBoard15kill_neighboursEiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %add, ptr noundef nonnull align 4 dereferenceable(96) %moves, ptr noundef nonnull align 4 dereferenceable(4) %movecnt)
  %17 = load i32, ptr %movecnt, align 4, !tbaa !0
  %cmp20 = icmp eq i32 %17, %15
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end
  %18 = load ptr, ptr %_M_finish.i, align 8, !tbaa !10
  %19 = load ptr, ptr %_M_end_of_storage.i, align 8, !tbaa !14
  %cmp.not.i = icmp eq ptr %18, %19
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then21
  store i32 %retval.6.i, ptr %18, align 4, !tbaa !0
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %18, i64 4
  store ptr %incdec.ptr.i, ptr %_M_finish.i, align 8, !tbaa !10
  br label %if.end24

if.else.i:                                        ; preds = %if.then21
  %20 = load ptr, ptr %m_critical, align 8, !tbaa !15
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %18 to i64
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %20 to i64
  %sub.ptr.sub.i.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %cmp.i.i.i = icmp eq i64 %sub.ptr.sub.i.i.i.i, 9223372036854775804
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #8
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %if.else.i
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 2
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %sub.ptr.div.i.i.i.i, i64 1)
  %add.i.i.i = add nsw i64 %.sroa.speculated.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp7.i.i.i = icmp ult i64 %add.i.i.i, %sub.ptr.div.i.i.i.i
  %21 = tail call i64 @llvm.umin.i64(i64 %add.i.i.i, i64 2305843009213693951)
  %cond.i.i.i = select i1 %cmp7.i.i.i, i64 2305843009213693951, i64 %21
  %cmp.not.i.i.i = icmp ne i64 %cond.i.i.i, 0
  tail call void @llvm.assume(i1 %cmp.not.i.i.i)
  %mul.i.i.i.i = shl nuw nsw i64 %cond.i.i.i, 2
  %call5.i.i.i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i.i.i) #9
  %add.ptr.i.i = getelementptr inbounds i8, ptr %call5.i.i.i.i, i64 %sub.ptr.sub.i.i.i.i
  store i32 %retval.6.i, ptr %add.ptr.i.i, align 4, !tbaa !0
  %cmp.i.i.i.i.i.i = icmp sgt i64 %sub.ptr.sub.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit38.i.i

if.then.i.i.i.i.i.i:                              ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %call5.i.i.i.i, ptr align 4 %20, i64 %sub.ptr.sub.i.i.i.i, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit38.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit38.i.i: ; preds = %if.then.i.i.i.i.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %incdec.ptr.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i.i, i64 4
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %if.then.i39.i.i

if.then.i39.i.i:                                  ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit38.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %20, i64 noundef %sub.ptr.sub.i.i.i.i) #10
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %if.then.i39.i.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit38.i.i
  store ptr %call5.i.i.i.i, ptr %m_critical, align 8, !tbaa !15
  store ptr %incdec.ptr.i.i, ptr %_M_finish.i, align 8, !tbaa !10
  %add.ptr19.i.i = getelementptr inbounds nuw i32, ptr %call5.i.i.i.i, i64 %cond.i.i.i
  store ptr %add.ptr19.i.i, ptr %_M_end_of_storage.i, align 8, !tbaa !14
  br label %if.end24

if.end24:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %if.then.i, %if.end, %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 4
  br i1 %exitcond, label %for.body, label %for.cond.cleanup, !llvm.loop !16
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { builtin nounwind }

!0 = !{!1, !1, i64 0}
!1 = !{!"int", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"_ZTSN9FastBoard8square_tE", !2, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"short", !2, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !12, i64 8}
!11 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!12 = !{!"p1 int", !13, i64 0}
!13 = !{!"any pointer", !2, i64 0}
!14 = !{!11, !12, i64 16}
!15 = !{!11, !12, i64 0}
!16 = distinct !{!16, !9}
