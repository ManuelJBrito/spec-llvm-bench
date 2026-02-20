; ModuleID = '/tmp/tmp.Lb6ompskPE/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/557.xz_r/src/liblzma/lzma/lzma_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: inlinehint nounwind uwtable
define hidden fastcc void @length(ptr noundef captures(none) %rc, ptr noundef %lc, i32 noundef %pos_state, i32 noundef %len, i1 noundef zeroext %fast_mode) unnamed_addr #0 {
entry:
  %sub = add i32 %len, -2
  %cmp = icmp ult i32 %sub, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %symbols.i = getelementptr inbounds nuw i8, ptr %rc, i64 40
  %count.i = getelementptr inbounds nuw i8, ptr %rc, i64 24
  %0 = load i64, ptr %count.i, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds nuw i32, ptr %symbols.i, i64 %0
  store i32 0, ptr %arrayidx.i, align 4, !tbaa !6
  %probs.i = getelementptr inbounds nuw i8, ptr %rc, i64 272
  %arrayidx2.i = getelementptr inbounds nuw ptr, ptr %probs.i, i64 %0
  store ptr %lc, ptr %arrayidx2.i, align 8, !tbaa !7
  %inc.i = add i64 %0, 1
  store i64 %inc.i, ptr %count.i, align 8, !tbaa !0
  %low = getelementptr inbounds nuw i8, ptr %lc, i64 4
  %idxprom = zext i32 %pos_state to i64
  %arrayidx = getelementptr inbounds nuw [8 x i16], ptr %low, i64 %idxprom
  br label %do.body.i

do.body.i:                                        ; preds = %if.then
  %shr.i = lshr i32 %sub, 2
  %and.i = and i32 %shr.i, 1
  %arrayidx.i44 = getelementptr inbounds nuw i16, ptr %arrayidx, i64 1
  %arrayidx.i.i = getelementptr inbounds nuw i32, ptr %symbols.i, i64 %inc.i
  store i32 %and.i, ptr %arrayidx.i.i, align 4, !tbaa !6
  %arrayidx2.i.i = getelementptr inbounds nuw ptr, ptr %probs.i, i64 %inc.i
  store ptr %arrayidx.i44, ptr %arrayidx2.i.i, align 8, !tbaa !7
  %inc.i.i = add i64 %0, 2
  %add.i = or disjoint i32 %and.i, 2
  %shr.i.1 = lshr i32 %sub, 1
  %and.i.1 = and i32 %shr.i.1, 1
  %idxprom.i.1 = zext i32 %add.i to i64
  %arrayidx.i44.1 = getelementptr inbounds nuw i16, ptr %arrayidx, i64 %idxprom.i.1
  %arrayidx.i.i.1 = getelementptr inbounds nuw i32, ptr %symbols.i, i64 %inc.i.i
  store i32 %and.i.1, ptr %arrayidx.i.i.1, align 4, !tbaa !6
  %arrayidx2.i.i.1 = getelementptr inbounds nuw ptr, ptr %probs.i, i64 %inc.i.i
  store ptr %arrayidx.i44.1, ptr %arrayidx2.i.i.1, align 8, !tbaa !7
  %inc.i.i.1 = add i64 %0, 3
  %shl.i.1 = shl i32 %add.i, 1
  %add.i.1 = or disjoint i32 %and.i.1, %shl.i.1
  %and.i.2 = and i32 %sub, 1
  %idxprom.i.2 = zext i32 %add.i.1 to i64
  %arrayidx.i44.2 = getelementptr inbounds nuw i16, ptr %arrayidx, i64 %idxprom.i.2
  %arrayidx.i.i.2 = getelementptr inbounds nuw i32, ptr %symbols.i, i64 %inc.i.i.1
  store i32 %and.i.2, ptr %arrayidx.i.i.2, align 4, !tbaa !6
  %arrayidx2.i.i.2 = getelementptr inbounds nuw ptr, ptr %probs.i, i64 %inc.i.i.1
  store ptr %arrayidx.i44.2, ptr %arrayidx2.i.i.2, align 8, !tbaa !7
  %inc.i.i.2 = add i64 %0, 4
  store i64 %inc.i.i.2, ptr %count.i, align 8, !tbaa !0
  br label %if.end12

if.else:                                          ; preds = %entry
  %symbols.i45 = getelementptr inbounds nuw i8, ptr %rc, i64 40
  %count.i46 = getelementptr inbounds nuw i8, ptr %rc, i64 24
  %1 = load i64, ptr %count.i46, align 8, !tbaa !0
  %arrayidx.i47 = getelementptr inbounds nuw i32, ptr %symbols.i45, i64 %1
  store i32 1, ptr %arrayidx.i47, align 4, !tbaa !6
  %probs.i48 = getelementptr inbounds nuw i8, ptr %rc, i64 272
  %arrayidx2.i49 = getelementptr inbounds nuw ptr, ptr %probs.i48, i64 %1
  store ptr %lc, ptr %arrayidx2.i49, align 8, !tbaa !7
  %inc.i50 = add i64 %1, 1
  store i64 %inc.i50, ptr %count.i46, align 8, !tbaa !0
  %sub2 = add i32 %len, -10
  %cmp3 = icmp ult i32 %sub2, 8
  br i1 %cmp3, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.else
  %choice2 = getelementptr inbounds nuw i8, ptr %lc, i64 2
  %arrayidx.i53 = getelementptr inbounds nuw i32, ptr %symbols.i45, i64 %inc.i50
  store i32 0, ptr %arrayidx.i53, align 4, !tbaa !6
  %arrayidx2.i55 = getelementptr inbounds nuw ptr, ptr %probs.i48, i64 %inc.i50
  store ptr %choice2, ptr %arrayidx2.i55, align 8, !tbaa !7
  %inc.i56 = add i64 %1, 2
  store i64 %inc.i56, ptr %count.i46, align 8, !tbaa !0
  %mid = getelementptr inbounds nuw i8, ptr %lc, i64 260
  %idxprom5 = zext i32 %pos_state to i64
  %arrayidx6 = getelementptr inbounds nuw [8 x i16], ptr %mid, i64 %idxprom5
  br label %do.body.i61

do.body.i61:                                      ; preds = %if.then4
  %shr.i66 = lshr i32 %sub2, 2
  %and.i67 = and i32 %shr.i66, 1
  %arrayidx.i69 = getelementptr inbounds nuw i16, ptr %arrayidx6, i64 1
  %arrayidx.i.i70 = getelementptr inbounds nuw i32, ptr %symbols.i45, i64 %inc.i56
  store i32 %and.i67, ptr %arrayidx.i.i70, align 4, !tbaa !6
  %arrayidx2.i.i71 = getelementptr inbounds nuw ptr, ptr %probs.i48, i64 %inc.i56
  store ptr %arrayidx.i69, ptr %arrayidx2.i.i71, align 8, !tbaa !7
  %inc.i.i72 = add i64 %1, 3
  %add.i74 = or disjoint i32 %and.i67, 2
  %shr.i66.1 = lshr i32 %sub2, 1
  %and.i67.1 = and i32 %shr.i66.1, 1
  %idxprom.i68.1 = zext i32 %add.i74 to i64
  %arrayidx.i69.1 = getelementptr inbounds nuw i16, ptr %arrayidx6, i64 %idxprom.i68.1
  %arrayidx.i.i70.1 = getelementptr inbounds nuw i32, ptr %symbols.i45, i64 %inc.i.i72
  store i32 %and.i67.1, ptr %arrayidx.i.i70.1, align 4, !tbaa !6
  %arrayidx2.i.i71.1 = getelementptr inbounds nuw ptr, ptr %probs.i48, i64 %inc.i.i72
  store ptr %arrayidx.i69.1, ptr %arrayidx2.i.i71.1, align 8, !tbaa !7
  %inc.i.i72.1 = add i64 %1, 4
  %shl.i73.1 = shl i32 %add.i74, 1
  %add.i74.1 = or disjoint i32 %and.i67.1, %shl.i73.1
  %and.i67.2 = and i32 %sub2, 1
  %idxprom.i68.2 = zext i32 %add.i74.1 to i64
  %arrayidx.i69.2 = getelementptr inbounds nuw i16, ptr %arrayidx6, i64 %idxprom.i68.2
  %arrayidx.i.i70.2 = getelementptr inbounds nuw i32, ptr %symbols.i45, i64 %inc.i.i72.1
  store i32 %and.i67.2, ptr %arrayidx.i.i70.2, align 4, !tbaa !6
  %arrayidx2.i.i71.2 = getelementptr inbounds nuw ptr, ptr %probs.i48, i64 %inc.i.i72.1
  store ptr %arrayidx.i69.2, ptr %arrayidx2.i.i71.2, align 8, !tbaa !7
  %inc.i.i72.2 = add i64 %1, 5
  store i64 %inc.i.i72.2, ptr %count.i46, align 8, !tbaa !0
  br label %if.end12

if.else8:                                         ; preds = %if.else
  %choice29 = getelementptr inbounds nuw i8, ptr %lc, i64 2
  %arrayidx.i79 = getelementptr inbounds nuw i32, ptr %symbols.i45, i64 %inc.i50
  store i32 1, ptr %arrayidx.i79, align 4, !tbaa !6
  %arrayidx2.i81 = getelementptr inbounds nuw ptr, ptr %probs.i48, i64 %inc.i50
  store ptr %choice29, ptr %arrayidx2.i81, align 8, !tbaa !7
  %inc.i82 = add i64 %1, 2
  store i64 %inc.i82, ptr %count.i46, align 8, !tbaa !0
  %sub10 = add i32 %len, -18
  %high = getelementptr inbounds nuw i8, ptr %lc, i64 516
  br label %do.body.i87

do.body.i87:                                      ; preds = %if.else8
  %shr.i92 = lshr i32 %sub10, 7
  %and.i93 = and i32 %shr.i92, 1
  %arrayidx.i95 = getelementptr inbounds nuw i16, ptr %high, i64 1
  %arrayidx.i.i96 = getelementptr inbounds nuw i32, ptr %symbols.i45, i64 %inc.i82
  store i32 %and.i93, ptr %arrayidx.i.i96, align 4, !tbaa !6
  %arrayidx2.i.i97 = getelementptr inbounds nuw ptr, ptr %probs.i48, i64 %inc.i82
  store ptr %arrayidx.i95, ptr %arrayidx2.i.i97, align 8, !tbaa !7
  %inc.i.i98 = add i64 %1, 3
  %add.i100 = or disjoint i32 %and.i93, 2
  %shr.i92.1 = lshr i32 %sub10, 6
  %and.i93.1 = and i32 %shr.i92.1, 1
  %idxprom.i94.1 = zext i32 %add.i100 to i64
  %arrayidx.i95.1 = getelementptr inbounds nuw i16, ptr %high, i64 %idxprom.i94.1
  %arrayidx.i.i96.1 = getelementptr inbounds nuw i32, ptr %symbols.i45, i64 %inc.i.i98
  store i32 %and.i93.1, ptr %arrayidx.i.i96.1, align 4, !tbaa !6
  %arrayidx2.i.i97.1 = getelementptr inbounds nuw ptr, ptr %probs.i48, i64 %inc.i.i98
  store ptr %arrayidx.i95.1, ptr %arrayidx2.i.i97.1, align 8, !tbaa !7
  %inc.i.i98.1 = add i64 %1, 4
  %shl.i99.1 = shl i32 %add.i100, 1
  %add.i100.1 = or disjoint i32 %and.i93.1, %shl.i99.1
  %shr.i92.2 = lshr i32 %sub10, 5
  %and.i93.2 = and i32 %shr.i92.2, 1
  %idxprom.i94.2 = zext i32 %add.i100.1 to i64
  %arrayidx.i95.2 = getelementptr inbounds nuw i16, ptr %high, i64 %idxprom.i94.2
  %arrayidx.i.i96.2 = getelementptr inbounds nuw i32, ptr %symbols.i45, i64 %inc.i.i98.1
  store i32 %and.i93.2, ptr %arrayidx.i.i96.2, align 4, !tbaa !6
  %arrayidx2.i.i97.2 = getelementptr inbounds nuw ptr, ptr %probs.i48, i64 %inc.i.i98.1
  store ptr %arrayidx.i95.2, ptr %arrayidx2.i.i97.2, align 8, !tbaa !7
  %inc.i.i98.2 = add i64 %1, 5
  %shl.i99.2 = shl i32 %add.i100.1, 1
  %add.i100.2 = or disjoint i32 %and.i93.2, %shl.i99.2
  %shr.i92.3 = lshr i32 %sub10, 4
  %and.i93.3 = and i32 %shr.i92.3, 1
  %idxprom.i94.3 = zext i32 %add.i100.2 to i64
  %arrayidx.i95.3 = getelementptr inbounds nuw i16, ptr %high, i64 %idxprom.i94.3
  %arrayidx.i.i96.3 = getelementptr inbounds nuw i32, ptr %symbols.i45, i64 %inc.i.i98.2
  store i32 %and.i93.3, ptr %arrayidx.i.i96.3, align 4, !tbaa !6
  %arrayidx2.i.i97.3 = getelementptr inbounds nuw ptr, ptr %probs.i48, i64 %inc.i.i98.2
  store ptr %arrayidx.i95.3, ptr %arrayidx2.i.i97.3, align 8, !tbaa !7
  %inc.i.i98.3 = add i64 %1, 6
  %shl.i99.3 = shl i32 %add.i100.2, 1
  %add.i100.3 = or disjoint i32 %and.i93.3, %shl.i99.3
  %shr.i92.4 = lshr i32 %sub10, 3
  %and.i93.4 = and i32 %shr.i92.4, 1
  %idxprom.i94.4 = zext i32 %add.i100.3 to i64
  %arrayidx.i95.4 = getelementptr inbounds nuw i16, ptr %high, i64 %idxprom.i94.4
  %arrayidx.i.i96.4 = getelementptr inbounds nuw i32, ptr %symbols.i45, i64 %inc.i.i98.3
  store i32 %and.i93.4, ptr %arrayidx.i.i96.4, align 4, !tbaa !6
  %arrayidx2.i.i97.4 = getelementptr inbounds nuw ptr, ptr %probs.i48, i64 %inc.i.i98.3
  store ptr %arrayidx.i95.4, ptr %arrayidx2.i.i97.4, align 8, !tbaa !7
  %inc.i.i98.4 = add i64 %1, 7
  %shl.i99.4 = shl i32 %add.i100.3, 1
  %add.i100.4 = or disjoint i32 %and.i93.4, %shl.i99.4
  %shr.i92.5 = lshr i32 %sub10, 2
  %and.i93.5 = and i32 %shr.i92.5, 1
  %idxprom.i94.5 = zext i32 %add.i100.4 to i64
  %arrayidx.i95.5 = getelementptr inbounds nuw i16, ptr %high, i64 %idxprom.i94.5
  %arrayidx.i.i96.5 = getelementptr inbounds nuw i32, ptr %symbols.i45, i64 %inc.i.i98.4
  store i32 %and.i93.5, ptr %arrayidx.i.i96.5, align 4, !tbaa !6
  %arrayidx2.i.i97.5 = getelementptr inbounds nuw ptr, ptr %probs.i48, i64 %inc.i.i98.4
  store ptr %arrayidx.i95.5, ptr %arrayidx2.i.i97.5, align 8, !tbaa !7
  %inc.i.i98.5 = add i64 %1, 8
  %shl.i99.5 = shl i32 %add.i100.4, 1
  %add.i100.5 = or disjoint i32 %and.i93.5, %shl.i99.5
  %shr.i92.6 = lshr i32 %sub10, 1
  %and.i93.6 = and i32 %shr.i92.6, 1
  %idxprom.i94.6 = zext i32 %add.i100.5 to i64
  %arrayidx.i95.6 = getelementptr inbounds nuw i16, ptr %high, i64 %idxprom.i94.6
  %arrayidx.i.i96.6 = getelementptr inbounds nuw i32, ptr %symbols.i45, i64 %inc.i.i98.5
  store i32 %and.i93.6, ptr %arrayidx.i.i96.6, align 4, !tbaa !6
  %arrayidx2.i.i97.6 = getelementptr inbounds nuw ptr, ptr %probs.i48, i64 %inc.i.i98.5
  store ptr %arrayidx.i95.6, ptr %arrayidx2.i.i97.6, align 8, !tbaa !7
  %inc.i.i98.6 = add i64 %1, 9
  %shl.i99.6 = shl i32 %add.i100.5, 1
  %add.i100.6 = or disjoint i32 %and.i93.6, %shl.i99.6
  %and.i93.7 = and i32 %sub10, 1
  %idxprom.i94.7 = zext i32 %add.i100.6 to i64
  %arrayidx.i95.7 = getelementptr inbounds nuw i16, ptr %high, i64 %idxprom.i94.7
  %arrayidx.i.i96.7 = getelementptr inbounds nuw i32, ptr %symbols.i45, i64 %inc.i.i98.6
  store i32 %and.i93.7, ptr %arrayidx.i.i96.7, align 4, !tbaa !6
  %arrayidx2.i.i97.7 = getelementptr inbounds nuw ptr, ptr %probs.i48, i64 %inc.i.i98.6
  store ptr %arrayidx.i95.7, ptr %arrayidx2.i.i97.7, align 8, !tbaa !7
  %inc.i.i98.7 = add i64 %1, 10
  store i64 %inc.i.i98.7, ptr %count.i46, align 8, !tbaa !0
  br label %if.end12

if.end12:                                         ; preds = %do.body.i87, %do.body.i61, %do.body.i
  br i1 %fast_mode, label %if.end19, label %if.then13

if.then13:                                        ; preds = %if.end12
  %counters = getelementptr inbounds nuw i8, ptr %lc, i64 18440
  %idxprom14 = zext i32 %pos_state to i64
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %counters, i64 %idxprom14
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !6
  %dec = add i32 %2, -1
  store i32 %dec, ptr %arrayidx15, align 4, !tbaa !6
  %cmp16 = icmp eq i32 %dec, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then13
  tail call fastcc void @length_update_prices(ptr noundef nonnull %lc, i32 noundef %pos_state)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then13, %if.end12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare hidden fastcc void @length_update_prices(ptr noundef captures(none), i32 noundef) unnamed_addr #1

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !2, i64 24}
!1 = !{!"", !2, i64 0, !2, i64 8, !5, i64 16, !3, i64 20, !2, i64 24, !2, i64 32, !3, i64 40, !3, i64 272}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"int", !3, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 short", !9, i64 0}
!9 = !{!"any pointer", !3, i64 0}
