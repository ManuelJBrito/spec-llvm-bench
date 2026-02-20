; ModuleID = '/tmp/tmp.qLq0dPryK8/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/FastState.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -1, 65536) i32 @_ZN9FastState15walk_empty_listEiib(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %color, i32 noundef %vidx, i1 noundef zeroext %allow_sa) local_unnamed_addr #1 align 2 {
entry:
  %call = tail call noundef ptr @_ZN6Random7get_RngEv()
  %call2 = tail call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %call, i16 noundef zeroext 2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %entry
  %cmp36191 = icmp slt i32 %vidx, 0
  br i1 %cmp36191, label %for.end55, label %for.body38.lr.ph

for.body38.lr.ph:                                 ; preds = %for.cond35.preheader
  %komove.i133 = getelementptr inbounds nuw i8, ptr %this, i64 8084
  br i1 %allow_sa, label %for.body38.us.preheader, label %for.body38.preheader

for.body38.preheader:                             ; preds = %for.body38.lr.ph
  %0 = zext i32 %vidx to i64
  br label %for.body38

for.body38.us.preheader:                          ; preds = %for.body38.lr.ph
  %1 = zext i32 %vidx to i64
  br label %for.body38.us

for.body38.us:                                    ; preds = %for.inc52.us, %for.body38.us.preheader
  %indvars.iv221 = phi i64 [ %1, %for.body38.us.preheader ], [ %indvars.iv.next222, %for.inc52.us ]
  %arrayidx.i132.us = getelementptr inbounds nuw i16, ptr %this, i64 %indvars.iv221
  %2 = load i16, ptr %arrayidx.i132.us, align 2, !tbaa !0
  %conv44.us = zext i16 %2 to i32
  %3 = load i32, ptr %komove.i133, align 4, !tbaa !4
  %cmp.not.i134.us = icmp eq i32 %3, %conv44.us
  br i1 %cmp.not.i134.us, label %for.inc52.us, label %land.lhs.true.i135.us

land.lhs.true.i135.us:                            ; preds = %for.body38.us
  %call.i136.us = tail call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %conv44.us)
  br i1 %call.i136.us, label %if.then.i139.us, label %for.inc52.us

if.then.i139.us:                                  ; preds = %land.lhs.true.i135.us
  %call3.i140.us = tail call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %color, i32 noundef %conv44.us)
  %tobool.not.i141.us = icmp eq i32 %call3.i140.us, 0
  br i1 %tobool.not.i141.us, label %cleanup82.loopexit214, label %for.inc52.us

for.inc52.us:                                     ; preds = %if.then.i139.us, %land.lhs.true.i135.us, %for.body38.us
  %indvars.iv.next222 = add nsw i64 %indvars.iv221, -1
  %cmp36.us = icmp slt i64 %indvars.iv221, 1
  br i1 %cmp36.us, label %for.end55.loopexit, label %for.body38.us, !llvm.loop !25

for.cond.preheader:                               ; preds = %entry
  %m_empty_cnt = getelementptr inbounds nuw i8, ptr %this, i64 1764
  %4 = load i32, ptr %m_empty_cnt, align 4, !tbaa !27
  %cmp3.not202 = icmp slt i32 %vidx, %4
  br i1 %cmp3.not202, label %for.body.lr.ph, label %for.cond12.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %komove.i = getelementptr inbounds nuw i8, ptr %this, i64 8084
  %5 = sext i32 %vidx to i64
  br label %for.body

for.cond12.preheader.loopexit:                    ; preds = %for.inc
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.cond12.preheader.loopexit, %for.cond.preheader
  %cmp13.not204 = icmp sgt i32 %vidx, 0
  br i1 %cmp13.not204, label %for.body15.lr.ph, label %cleanup82

for.body15.lr.ph:                                 ; preds = %for.cond12.preheader
  %komove.i119 = getelementptr inbounds nuw i8, ptr %this, i64 8084
  %wide.trip.count = zext i32 %vidx to i64
  br label %for.body15

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv230 = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next231, %for.inc ]
  %arrayidx.i = getelementptr inbounds nuw i16, ptr %this, i64 %indvars.iv230
  %6 = load i16, ptr %arrayidx.i, align 2, !tbaa !0
  %conv6 = zext i16 %6 to i32
  %7 = load i32, ptr %komove.i, align 4, !tbaa !4
  %cmp.not.i = icmp eq i32 %7, %conv6
  br i1 %cmp.not.i, label %for.inc, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body
  %call.i = tail call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %conv6)
  br i1 %call.i, label %if.then.i, label %for.inc

if.then.i:                                        ; preds = %land.lhs.true.i
  %call3.i = tail call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %color, i32 noundef %conv6)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.then4.i, label %for.inc

if.then4.i:                                       ; preds = %if.then.i
  br i1 %allow_sa, label %cleanup82.loopexit209, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then4.i
  %call6.i = tail call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %color, i32 noundef %conv6)
  br i1 %call6.i, label %for.inc, label %cleanup82.loopexit209

for.inc:                                          ; preds = %lor.lhs.false.i, %if.then.i, %land.lhs.true.i, %for.body
  %indvars.iv.next231 = add nsw i64 %indvars.iv230, 1
  %8 = load i32, ptr %m_empty_cnt, align 4, !tbaa !27
  %9 = sext i32 %8 to i64
  %cmp3.not = icmp slt i64 %indvars.iv.next231, %9
  br i1 %cmp3.not, label %for.body, label %for.cond12.preheader.loopexit, !llvm.loop !28

for.body15:                                       ; preds = %for.inc29, %for.body15.lr.ph
  %indvars.iv233 = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next234, %for.inc29 ]
  %arrayidx.i118 = getelementptr inbounds nuw i16, ptr %this, i64 %indvars.iv233
  %10 = load i16, ptr %arrayidx.i118, align 2, !tbaa !0
  %conv21 = zext i16 %10 to i32
  %11 = load i32, ptr %komove.i119, align 4, !tbaa !4
  %cmp.not.i120 = icmp eq i32 %11, %conv21
  br i1 %cmp.not.i120, label %for.inc29, label %land.lhs.true.i121

land.lhs.true.i121:                               ; preds = %for.body15
  %call.i122 = tail call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %conv21)
  br i1 %call.i122, label %if.then.i125, label %for.inc29

if.then.i125:                                     ; preds = %land.lhs.true.i121
  %call3.i126 = tail call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %color, i32 noundef %conv21)
  %tobool.not.i127 = icmp eq i32 %call3.i126, 0
  br i1 %tobool.not.i127, label %if.then4.i128, label %for.inc29

if.then4.i128:                                    ; preds = %if.then.i125
  br i1 %allow_sa, label %cleanup82.loopexit, label %lor.lhs.false.i129

lor.lhs.false.i129:                               ; preds = %if.then4.i128
  %call6.i130 = tail call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %color, i32 noundef %conv21)
  br i1 %call6.i130, label %for.inc29, label %cleanup82.loopexit

for.inc29:                                        ; preds = %lor.lhs.false.i129, %if.then.i125, %land.lhs.true.i121, %for.body15
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1
  %exitcond = icmp ne i64 %indvars.iv.next234, %wide.trip.count
  br i1 %exitcond, label %for.body15, label %cleanup82.loopexit, !llvm.loop !29

for.body38:                                       ; preds = %for.inc52, %for.body38.preheader
  %indvars.iv = phi i64 [ %0, %for.body38.preheader ], [ %indvars.iv.next, %for.inc52 ]
  %arrayidx.i132 = getelementptr inbounds nuw i16, ptr %this, i64 %indvars.iv
  %12 = load i16, ptr %arrayidx.i132, align 2, !tbaa !0
  %conv44 = zext i16 %12 to i32
  %13 = load i32, ptr %komove.i133, align 4, !tbaa !4
  %cmp.not.i134 = icmp eq i32 %13, %conv44
  br i1 %cmp.not.i134, label %for.inc52, label %land.lhs.true.i135

land.lhs.true.i135:                               ; preds = %for.body38
  %call.i136 = tail call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %conv44)
  br i1 %call.i136, label %if.then.i139, label %for.inc52

if.then.i139:                                     ; preds = %land.lhs.true.i135
  %call3.i140 = tail call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %color, i32 noundef %conv44)
  %tobool.not.i141 = icmp eq i32 %call3.i140, 0
  br i1 %tobool.not.i141, label %if.then4.i142, label %for.inc52

if.then4.i142:                                    ; preds = %if.then.i139
  %call6.i144 = tail call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %color, i32 noundef %conv44)
  br i1 %call6.i144, label %for.inc52, label %cleanup82.loopexit215

for.inc52:                                        ; preds = %if.then4.i142, %if.then.i139, %land.lhs.true.i135, %for.body38
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp36 = icmp slt i64 %indvars.iv, 1
  br i1 %cmp36, label %for.end55.loopexit216, label %for.body38, !llvm.loop !25

for.end55.loopexit:                               ; preds = %for.inc52.us
  br label %for.end55

for.end55.loopexit216:                            ; preds = %for.inc52
  br label %for.end55

for.end55:                                        ; preds = %for.end55.loopexit216, %for.end55.loopexit, %for.cond35.preheader
  %m_empty_cnt58 = getelementptr inbounds nuw i8, ptr %this, i64 1764
  %14 = load i32, ptr %m_empty_cnt58, align 4, !tbaa !27
  %i56.0194 = add nsw i32 %14, -1
  %cmp60.not195 = icmp sgt i32 %i56.0194, %vidx
  br i1 %cmp60.not195, label %for.body62.lr.ph, label %cleanup82

for.body62.lr.ph:                                 ; preds = %for.end55
  %komove.i147 = getelementptr inbounds nuw i8, ptr %this, i64 8084
  br i1 %allow_sa, label %for.body62.us.preheader, label %for.body62.preheader

for.body62.preheader:                             ; preds = %for.body62.lr.ph
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, -1
  %17 = sext i32 %vidx to i64
  br label %for.body62

for.body62.us.preheader:                          ; preds = %for.body62.lr.ph
  %18 = sext i32 %14 to i64
  %19 = add nsw i64 %18, -1
  %20 = sext i32 %vidx to i64
  br label %for.body62.us

for.body62.us:                                    ; preds = %_ZN9FastState8try_moveEiib.exit159.us, %for.body62.us.preheader
  %indvars.iv227 = phi i64 [ %19, %for.body62.us.preheader ], [ %indvars.iv.next228, %_ZN9FastState8try_moveEiib.exit159.us ]
  %arrayidx.i146.us = getelementptr inbounds nuw i16, ptr %this, i64 %indvars.iv227
  %21 = load i16, ptr %arrayidx.i146.us, align 2, !tbaa !0
  %conv68.us = zext i16 %21 to i32
  %22 = load i32, ptr %komove.i147, align 4, !tbaa !4
  %cmp.not.i148.us = icmp eq i32 %22, %conv68.us
  br i1 %cmp.not.i148.us, label %_ZN9FastState8try_moveEiib.exit159.us, label %land.lhs.true.i149.us

land.lhs.true.i149.us:                            ; preds = %for.body62.us
  %call.i150.us = tail call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %conv68.us)
  br i1 %call.i150.us, label %if.then.i153.us, label %_ZN9FastState8try_moveEiib.exit159.us

if.then.i153.us:                                  ; preds = %land.lhs.true.i149.us
  %call3.i154.us = tail call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %color, i32 noundef %conv68.us)
  %tobool.not.i155.us = icmp eq i32 %call3.i154.us, 0
  br i1 %tobool.not.i155.us, label %cleanup82.loopexit210, label %_ZN9FastState8try_moveEiib.exit159.us

_ZN9FastState8try_moveEiib.exit159.us:            ; preds = %if.then.i153.us, %land.lhs.true.i149.us, %for.body62.us
  %indvars.iv.next228 = add nsw i64 %indvars.iv227, -1
  %cmp60.not.us = icmp sgt i64 %indvars.iv.next228, %20
  br i1 %cmp60.not.us, label %for.body62.us, label %cleanup82.loopexit210, !llvm.loop !30

for.body62:                                       ; preds = %_ZN9FastState8try_moveEiib.exit159, %for.body62.preheader
  %indvars.iv224 = phi i64 [ %16, %for.body62.preheader ], [ %indvars.iv.next225, %_ZN9FastState8try_moveEiib.exit159 ]
  %arrayidx.i146 = getelementptr inbounds nuw i16, ptr %this, i64 %indvars.iv224
  %23 = load i16, ptr %arrayidx.i146, align 2, !tbaa !0
  %conv68 = zext i16 %23 to i32
  %24 = load i32, ptr %komove.i147, align 4, !tbaa !4
  %cmp.not.i148 = icmp eq i32 %24, %conv68
  br i1 %cmp.not.i148, label %_ZN9FastState8try_moveEiib.exit159, label %land.lhs.true.i149

land.lhs.true.i149:                               ; preds = %for.body62
  %call.i150 = tail call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %conv68)
  br i1 %call.i150, label %if.then.i153, label %_ZN9FastState8try_moveEiib.exit159

if.then.i153:                                     ; preds = %land.lhs.true.i149
  %call3.i154 = tail call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %color, i32 noundef %conv68)
  %tobool.not.i155 = icmp eq i32 %call3.i154, 0
  br i1 %tobool.not.i155, label %if.then4.i156, label %_ZN9FastState8try_moveEiib.exit159

if.then4.i156:                                    ; preds = %if.then.i153
  %call6.i158 = tail call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8388) %this, i32 noundef %color, i32 noundef %conv68)
  br i1 %call6.i158, label %_ZN9FastState8try_moveEiib.exit159, label %cleanup82.loopexit212

_ZN9FastState8try_moveEiib.exit159:               ; preds = %if.then4.i156, %if.then.i153, %land.lhs.true.i149, %for.body62
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, -1
  %cmp60.not = icmp sgt i64 %indvars.iv.next225, %17
  br i1 %cmp60.not, label %for.body62, label %cleanup82.loopexit212, !llvm.loop !30

cleanup82.loopexit:                               ; preds = %for.inc29, %lor.lhs.false.i129, %if.then4.i128
  %retval.12.ph = phi i32 [ %conv21, %if.then4.i128 ], [ %conv21, %lor.lhs.false.i129 ], [ -1, %for.inc29 ]
  br label %cleanup82

cleanup82.loopexit209:                            ; preds = %lor.lhs.false.i, %if.then4.i
  %conv6.lcssa = phi i32 [ %conv6, %lor.lhs.false.i ], [ %conv6, %if.then4.i ]
  br label %cleanup82

cleanup82.loopexit210:                            ; preds = %_ZN9FastState8try_moveEiib.exit159.us, %if.then.i153.us
  %retval.12.ph211 = phi i32 [ %conv68.us, %if.then.i153.us ], [ -1, %_ZN9FastState8try_moveEiib.exit159.us ]
  br label %cleanup82

cleanup82.loopexit212:                            ; preds = %_ZN9FastState8try_moveEiib.exit159, %if.then4.i156
  %retval.12.ph213 = phi i32 [ %conv68, %if.then4.i156 ], [ -1, %_ZN9FastState8try_moveEiib.exit159 ]
  br label %cleanup82

cleanup82.loopexit214:                            ; preds = %if.then.i139.us
  %conv44.us.lcssa = phi i32 [ %conv44.us, %if.then.i139.us ]
  br label %cleanup82

cleanup82.loopexit215:                            ; preds = %if.then4.i142
  %conv44.lcssa = phi i32 [ %conv44, %if.then4.i142 ]
  br label %cleanup82

cleanup82:                                        ; preds = %cleanup82.loopexit215, %cleanup82.loopexit214, %cleanup82.loopexit212, %cleanup82.loopexit210, %cleanup82.loopexit209, %cleanup82.loopexit, %for.end55, %for.cond12.preheader
  %retval.12 = phi i32 [ -1, %for.cond12.preheader ], [ -1, %for.end55 ], [ %retval.12.ph, %cleanup82.loopexit ], [ %conv6.lcssa, %cleanup82.loopexit209 ], [ %retval.12.ph211, %cleanup82.loopexit210 ], [ %retval.12.ph213, %cleanup82.loopexit212 ], [ %conv44.us.lcssa, %cleanup82.loopexit214 ], [ %conv44.lcssa, %cleanup82.loopexit215 ]
  ret i32 %retval.12
}

declare noundef ptr @_ZN6Random7get_RngEv() local_unnamed_addr #0

declare noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12), i16 noundef zeroext) local_unnamed_addr #0

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !1, i64 0}
!1 = !{!"short", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!5, !9, i64 8084}
!5 = !{!"_ZTS9FastState", !6, i64 0, !22, i64 8072, !9, i64 8076, !9, i64 8080, !9, i64 8084, !9, i64 8088, !9, i64 8092, !9, i64 8096, !23, i64 8100, !24, i64 8196}
!6 = !{!"_ZTS9FullBoard", !7, i64 0, !21, i64 8056, !21, i64 8064}
!7 = !{!"_ZTS9FastBoard", !8, i64 0, !8, i64 882, !9, i64 1764, !9, i64 1768, !9, i64 1772, !10, i64 1776, !11, i64 3540, !11, i64 4424, !11, i64 5308, !11, i64 6192, !8, i64 7076, !12, i64 7960, !13, i64 7976, !14, i64 8008, !14, i64 8016, !15, i64 8024, !9, i64 8048}
!8 = !{!"_ZTSN5boost5arrayItLm441EEE", !2, i64 0}
!9 = !{!"int", !2, i64 0}
!10 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !2, i64 0}
!11 = !{!"_ZTSN5boost5arrayItLm442EEE", !2, i64 0}
!12 = !{!"_ZTSN5boost5arrayIiLm4EEE", !2, i64 0}
!13 = !{!"_ZTSN5boost5arrayIiLm8EEE", !2, i64 0}
!14 = !{!"_ZTSN5boost5arrayIiLm2EEE", !2, i64 0}
!15 = !{!"_ZTSSt6vectorIiSaIiEE", !16, i64 0}
!16 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !18, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 int", !20, i64 0}
!20 = !{!"any pointer", !2, i64 0}
!21 = !{!"long long", !2, i64 0}
!22 = !{!"float", !2, i64 0}
!23 = !{!"_ZTSN5boost5arrayIiLm24EEE", !2, i64 0}
!24 = !{!"_ZTSN5boost5arrayISt4pairIiiELm24EEE", !2, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!7, !9, i64 1764}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
