; ModuleID = '/tmp/tmp.taKBtKB9Si/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/Playout.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [7 x i64] }

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120) %this, ptr noundef nonnull align 8 dereferenceable(8388) %state, i1 noundef zeroext %resigning) local_unnamed_addr #0 align 2 {
entry:
  %blackowns = alloca %"class.std::bitset", align 8
  %call = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %state)
  %mul = mul nsw i32 %call, %call
  %div = udiv i32 %mul, 3
  %mul3 = shl nuw nsw i32 %mul, 1
  %m_sq = getelementptr inbounds nuw i8, ptr %this, i64 8
  br i1 %resigning, label %do.body.us.preheader, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  br label %do.body

do.body.us.preheader:                             ; preds = %entry
  br label %do.body.us

do.body.us:                                       ; preds = %land.rhs.us, %do.body.us.preheader
  %counter.0.us = phi i32 [ %inc.us, %land.rhs.us ], [ 0, %do.body.us.preheader ]
  %call4.us = tail call noundef i32 @_ZN9FastState16play_random_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %state)
  %cmp.us = icmp samesign ult i32 %counter.0.us, 30
  %cmp5.us = icmp ne i32 %call4.us, -1
  %or.cond.us = and i1 %cmp.us, %cmp5.us
  br i1 %or.cond.us, label %if.then.us, label %if.end21.us

if.then.us:                                       ; preds = %do.body.us
  %call6.us = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %state)
  %tobool.us = icmp ne i32 %call6.us, 0
  %conv9.us = zext i1 %tobool.us to i64
  %arrayidx.i.us = getelementptr inbounds nuw %"class.std::bitset", ptr %m_sq, i64 %conv9.us
  %conv11.us = sext i32 %call4.us to i64
  %div1.i.i.i.i.us = lshr i64 %conv11.us, 6
  %arrayidx.i.i.i.us = getelementptr inbounds nuw i64, ptr %arrayidx.i.us, i64 %div1.i.i.i.i.us
  %rem.i.i.i.us = and i64 %conv11.us, 63
  %0 = load i64, ptr %arrayidx.i.i.i.us, align 8, !tbaa !0
  %shl.i.i.us = shl nuw i64 1, %rem.i.i.i.us
  %and.i.us = and i64 %0, %shl.i.i.us
  %cmp.i.not.us = icmp eq i64 %and.i.us, 0
  br i1 %cmp.i.not.us, label %if.then14.us, label %if.end21.us

if.then14.us:                                     ; preds = %if.then.us
  %lnot.us = xor i1 %tobool.us, true
  %conv17.us = zext i1 %lnot.us to i64
  %arrayidx.i96.us = getelementptr inbounds nuw %"class.std::bitset", ptr %m_sq, i64 %conv17.us
  %arrayidx.i.i.i98.us = getelementptr inbounds nuw i64, ptr %arrayidx.i96.us, i64 %div1.i.i.i.i.us
  %1 = load i64, ptr %arrayidx.i.i.i98.us, align 8, !tbaa !0
  %or.i.us = or i64 %1, %shl.i.i.us
  store i64 %or.i.us, ptr %arrayidx.i.i.i98.us, align 8, !tbaa !0
  br label %if.end21.us

if.end21.us:                                      ; preds = %if.then14.us, %if.then.us, %do.body.us
  %inc.us = add nuw nsw i32 %counter.0.us, 1
  %call22.us = tail call noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %state)
  %cmp23.us = icmp slt i32 %call22.us, 2
  br i1 %cmp23.us, label %land.lhs.true24.us, label %do.end.loopexit

land.lhs.true24.us:                               ; preds = %if.end21.us
  %call25.us = tail call noundef i32 @_ZN9FastState11get_movenumEv(ptr noundef nonnull align 8 dereferenceable(8388) %state)
  %cmp26.us = icmp slt i32 %call25.us, %mul3
  br i1 %cmp26.us, label %land.rhs.us, label %do.end.loopexit

land.rhs.us:                                      ; preds = %land.lhs.true24.us
  %call27.us = tail call noundef i32 @_ZN9FastState17estimate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %state)
  %2 = tail call i32 @llvm.abs.i32(i32 %call27.us, i1 true)
  %cmp28.us = icmp samesign ult i32 %2, %div
  br i1 %cmp28.us, label %do.body.us, label %do.end.loopexit, !llvm.loop !4

do.body:                                          ; preds = %land.lhs.true24, %do.body.preheader
  %counter.0 = phi i32 [ %inc, %land.lhs.true24 ], [ 0, %do.body.preheader ]
  %call4 = tail call noundef i32 @_ZN9FastState16play_random_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %state)
  %cmp = icmp samesign ult i32 %counter.0, 30
  %cmp5 = icmp ne i32 %call4, -1
  %or.cond = and i1 %cmp, %cmp5
  br i1 %or.cond, label %if.then, label %if.end21

if.then:                                          ; preds = %do.body
  %call6 = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %state)
  %tobool = icmp ne i32 %call6, 0
  %conv9 = zext i1 %tobool to i64
  %arrayidx.i = getelementptr inbounds nuw %"class.std::bitset", ptr %m_sq, i64 %conv9
  %conv11 = sext i32 %call4 to i64
  %div1.i.i.i.i = lshr i64 %conv11, 6
  %arrayidx.i.i.i = getelementptr inbounds nuw i64, ptr %arrayidx.i, i64 %div1.i.i.i.i
  %rem.i.i.i = and i64 %conv11, 63
  %3 = load i64, ptr %arrayidx.i.i.i, align 8, !tbaa !0
  %shl.i.i = shl nuw i64 1, %rem.i.i.i
  %and.i = and i64 %3, %shl.i.i
  %cmp.i.not = icmp eq i64 %and.i, 0
  br i1 %cmp.i.not, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.then
  %lnot = xor i1 %tobool, true
  %conv17 = zext i1 %lnot to i64
  %arrayidx.i96 = getelementptr inbounds nuw %"class.std::bitset", ptr %m_sq, i64 %conv17
  %arrayidx.i.i.i98 = getelementptr inbounds nuw i64, ptr %arrayidx.i96, i64 %div1.i.i.i.i
  %4 = load i64, ptr %arrayidx.i.i.i98, align 8, !tbaa !0
  %or.i = or i64 %4, %shl.i.i
  store i64 %or.i, ptr %arrayidx.i.i.i98, align 8, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.then, %do.body
  %call22 = tail call noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %state)
  %cmp23 = icmp slt i32 %call22, 2
  br i1 %cmp23, label %land.lhs.true24, label %do.end.loopexit124

land.lhs.true24:                                  ; preds = %if.end21
  %inc = add nuw nsw i32 %counter.0, 1
  %call25 = tail call noundef i32 @_ZN9FastState11get_movenumEv(ptr noundef nonnull align 8 dereferenceable(8388) %state)
  %cmp26 = icmp slt i32 %call25, %mul3
  br i1 %cmp26, label %do.body, label %do.end.loopexit124, !llvm.loop !4

do.end.loopexit:                                  ; preds = %land.rhs.us, %land.lhs.true24.us, %if.end21.us
  br label %do.end

do.end.loopexit124:                               ; preds = %land.lhs.true24, %if.end21
  br label %do.end

do.end:                                           ; preds = %do.end.loopexit124, %do.end.loopexit
  %call29 = tail call noundef float @_ZN9FastState18calculate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %state)
  call void @llvm.lifetime.start.p0(ptr nonnull %blackowns) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %blackowns, i8 0, i64 56, i1 false)
  %cmp30122 = icmp sgt i32 %call, 0
  br i1 %cmp30122, label %for.cond31.preheader.us.preheader, label %for.cond.cleanup

for.cond31.preheader.us.preheader:                ; preds = %do.end
  br label %for.cond31.preheader.us

for.cond31.preheader.us:                          ; preds = %for.cond31.for.cond.cleanup33_crit_edge.us, %for.cond31.preheader.us.preheader
  %i.0123.us = phi i32 [ %inc60.us, %for.cond31.for.cond.cleanup33_crit_edge.us ], [ 0, %for.cond31.preheader.us.preheader ]
  br label %for.body34.us

for.body34.us:                                    ; preds = %if.end57.us, %for.cond31.preheader.us
  %j.0121.us = phi i32 [ 0, %for.cond31.preheader.us ], [ %inc58.us, %if.end57.us ]
  %call37.us = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %state, i32 noundef %i.0123.us, i32 noundef %j.0121.us)
  %call39.us = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %state, i32 noundef %call37.us)
  %cmp40.us = icmp eq i32 %call39.us, 0
  br i1 %cmp40.us, label %if.then41.us, label %if.else.us

if.else.us:                                       ; preds = %for.body34.us
  %call46.us = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %state, i32 noundef %call37.us)
  %cmp47.us = icmp eq i32 %call46.us, 2
  br i1 %cmp47.us, label %if.then48.us, label %if.end57.us

if.then48.us:                                     ; preds = %if.else.us
  %call50.us = tail call noundef zeroext i1 @_ZN9FastBoard6is_eyeEii(ptr noundef nonnull align 8 dereferenceable(8052) %state, i32 noundef 0, i32 noundef %call37.us)
  br i1 %call50.us, label %if.then51.us, label %if.end57.us

if.then51.us:                                     ; preds = %if.then48.us
  %conv53.us = sext i32 %call37.us to i64
  %div1.i.i.i.i112.us = lshr i64 %conv53.us, 6
  %arrayidx.i.i.i113.us = getelementptr inbounds nuw i64, ptr %blackowns, i64 %div1.i.i.i.i112.us
  %rem.i.i.i114.us = and i64 %conv53.us, 63
  %shl.i.i118.us = shl nuw i64 1, %rem.i.i.i114.us
  %5 = load i64, ptr %arrayidx.i.i.i113.us, align 8, !tbaa !0
  %or.i119.us = or i64 %5, %shl.i.i118.us
  store i64 %or.i119.us, ptr %arrayidx.i.i.i113.us, align 8, !tbaa !0
  br label %if.end57.us

if.then41.us:                                     ; preds = %for.body34.us
  %conv43.us = sext i32 %call37.us to i64
  %div1.i.i.i.i104.us = lshr i64 %conv43.us, 6
  %arrayidx.i.i.i105.us = getelementptr inbounds nuw i64, ptr %blackowns, i64 %div1.i.i.i.i104.us
  %rem.i.i.i106.us = and i64 %conv43.us, 63
  %shl.i.i110.us = shl nuw i64 1, %rem.i.i.i106.us
  %6 = load i64, ptr %arrayidx.i.i.i105.us, align 8, !tbaa !0
  %or.i111.us = or i64 %6, %shl.i.i110.us
  store i64 %or.i111.us, ptr %arrayidx.i.i.i105.us, align 8, !tbaa !0
  br label %if.end57.us

if.end57.us:                                      ; preds = %if.then41.us, %if.then51.us, %if.then48.us, %if.else.us
  %inc58.us = add nuw nsw i32 %j.0121.us, 1
  %exitcond = icmp ne i32 %inc58.us, %call
  br i1 %exitcond, label %for.body34.us, label %for.cond31.for.cond.cleanup33_crit_edge.us, !llvm.loop !6

for.cond31.for.cond.cleanup33_crit_edge.us:       ; preds = %if.end57.us
  %inc60.us = add nuw nsw i32 %i.0123.us, 1
  %exitcond125 = icmp ne i32 %inc60.us, %call
  br i1 %exitcond125, label %for.cond31.preheader.us, label %for.cond.cleanup.loopexit, !llvm.loop !7

for.cond.cleanup.loopexit:                        ; preds = %for.cond31.for.cond.cleanup33_crit_edge.us
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %do.end
  %call62 = tail call noundef ptr @_ZN12MCOwnerTable7get_MCOEv()
  call void @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE(ptr noundef nonnull align 8 dereferenceable(40) %call62, ptr noundef nonnull align 8 dereferenceable(56) %blackowns)
  store i8 1, ptr %this, align 8, !tbaa !8
  %conv64 = uitofp nneg i32 %mul to float
  %div65 = fdiv float %call29, %conv64
  %m_score = getelementptr inbounds nuw i8, ptr %this, i64 4
  store float %div65, ptr %m_score, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %blackowns) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #2

declare noundef i32 @_ZN9FastState16play_random_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #2

declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #2

declare noundef i32 @_ZN9FastState11get_movenumEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #2

declare noundef i32 @_ZN9FastState17estimate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

declare noundef float @_ZN9FastState18calculate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #2

declare noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN9FastBoard6is_eyeEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN12MCOwnerTable7get_MCOEv() local_unnamed_addr #2

declare void @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!0 = !{!1, !1, i64 0}
!1 = !{!"long", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C++ TBAA"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS7Playout", !10, i64 0, !11, i64 4, !12, i64 8}
!10 = !{!"bool", !2, i64 0}
!11 = !{!"float", !2, i64 0}
!12 = !{!"_ZTSN5boost5arrayISt6bitsetILm441EELm2EEE", !2, i64 0}
!13 = !{!9, !11, i64 4}
