; ModuleID = '/tmp/tmp.Cx4inJ0j2Y/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/557.xz_r/src/liblzma/lzma/lzma_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_rc_prices = external local_unnamed_addr constant [128 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden fastcc void @length_update_prices(ptr noundef captures(none) %lc, i32 noundef %pos_state) unnamed_addr #0 {
entry:
  %table_size1 = getelementptr inbounds nuw i8, ptr %lc, i64 18436
  %0 = load i32, ptr %table_size1, align 4, !tbaa !0
  %counters = getelementptr inbounds nuw i8, ptr %lc, i64 18440
  %idxprom = zext i32 %pos_state to i64
  %arrayidx = getelementptr inbounds nuw i32, ptr %counters, i64 %idxprom
  store i32 %0, ptr %arrayidx, align 4, !tbaa !6
  %1 = load i16, ptr %lc, align 4, !tbaa !7
  %2 = lshr i16 %1, 4
  %idxprom.i = zext nneg i16 %2 to i64
  %arrayidx.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i
  %3 = load i8, ptr %arrayidx.i, align 1, !tbaa !8
  %conv1.i = zext i8 %3 to i32
  %4 = xor i16 %2, 127
  %idxprom.i80 = zext nneg i16 %4 to i64
  %arrayidx.i81 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i80
  %5 = load i8, ptr %arrayidx.i81, align 1, !tbaa !8
  %conv1.i82 = zext i8 %5 to i32
  %choice24 = getelementptr inbounds nuw i8, ptr %lc, i64 2
  %6 = load i16, ptr %choice24, align 2, !tbaa !9
  %7 = lshr i16 %6, 4
  %idxprom.i83 = zext nneg i16 %7 to i64
  %arrayidx.i84 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i83
  %8 = load i8, ptr %arrayidx.i84, align 1, !tbaa !8
  %conv1.i85 = zext i8 %8 to i32
  %add = add nuw nsw i32 %conv1.i85, %conv1.i82
  %9 = xor i16 %7, 127
  %idxprom.i86 = zext nneg i16 %9 to i64
  %arrayidx.i87 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i86
  %10 = load i8, ptr %arrayidx.i87, align 1, !tbaa !8
  %conv1.i88 = zext i8 %10 to i32
  %add8 = add nuw nsw i32 %conv1.i88, %conv1.i82
  %prices9 = getelementptr inbounds nuw i8, ptr %lc, i64 1028
  %arrayidx11 = getelementptr inbounds nuw [272 x i32], ptr %prices9, i64 %idxprom
  %invariant.umin = call i32 @llvm.umin.i32(i32 %0, i32 8)
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %for.cond20.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %low = getelementptr inbounds nuw i8, ptr %lc, i64 4
  %arrayidx14 = getelementptr inbounds nuw [8 x i16], ptr %low, i64 %idxprom
  %wide.trip.count = zext i32 %invariant.umin to i64
  br label %for.body

for.cond20.preheader.loopexit:                    ; preds = %rc_bittree_price.exit
  %inc.lcssa.wide = phi i64 [ %indvars.iv.next, %rc_bittree_price.exit ]
  %11 = trunc nuw nsw i64 %inc.lcssa.wide to i32
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond20.preheader.loopexit, %entry
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %11, %for.cond20.preheader.loopexit ]
  %invariant.umin127 = call i32 @llvm.umin.i32(i32 %0, i32 16)
  %12 = icmp ult i32 %i.0.lcssa, %invariant.umin127
  br i1 %12, label %for.body25.lr.ph, label %for.cond36.preheader

for.body25.lr.ph:                                 ; preds = %for.cond20.preheader
  %mid = getelementptr inbounds nuw i8, ptr %lc, i64 260
  %arrayidx27 = getelementptr inbounds nuw [8 x i16], ptr %mid, i64 %idxprom
  %13 = zext nneg i32 %i.0.lcssa to i64
  %wide.trip.count137 = zext i32 %invariant.umin127 to i64
  br label %for.body25

for.body:                                         ; preds = %rc_bittree_price.exit, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %rc_bittree_price.exit ]
  %14 = or disjoint i64 %indvars.iv, 8
  %15 = trunc nuw nsw i64 %14 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %for.body
  %price.0.i = phi i32 [ 0, %for.body ], [ %add1.i, %do.body.i ]
  %symbol.addr.0.i = phi i32 [ %15, %for.body ], [ %shr.i, %do.body.i ]
  %and.i = and i32 %symbol.addr.0.i, 1
  %shr.i = lshr i32 %symbol.addr.0.i, 1
  %idxprom.i89 = zext nneg i32 %shr.i to i64
  %arrayidx.i90 = getelementptr inbounds nuw i16, ptr %arrayidx14, i64 %idxprom.i89
  %16 = load i16, ptr %arrayidx.i90, align 2, !tbaa !10
  %conv.i.i = zext i16 %16 to i64
  %17 = icmp eq i32 %and.i, 0
  %and.i.i = select i1 %17, i64 0, i64 2032
  %xor.i.i = xor i64 %and.i.i, %conv.i.i
  %shr.i.i = lshr i64 %xor.i.i, 4
  %arrayidx.i.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i
  %18 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !8
  %conv1.i.i = zext i8 %18 to i32
  %add1.i = add i32 %price.0.i, %conv1.i.i
  %cmp.not.i = icmp eq i32 %shr.i, 1
  br i1 %cmp.not.i, label %rc_bittree_price.exit, label %do.body.i, !llvm.loop !11

rc_bittree_price.exit:                            ; preds = %do.body.i
  %add1.i.lcssa = phi i32 [ %add1.i, %do.body.i ]
  %add17 = add i32 %add1.i.lcssa, %conv1.i
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %arrayidx11, i64 %indvars.iv
  store i32 %add17, ptr %arrayidx19, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.body, label %for.cond20.preheader.loopexit, !llvm.loop !13

for.cond36.preheader.loopexit:                    ; preds = %rc_bittree_price.exit107
  %inc34.lcssa.wide = phi i64 [ %indvars.iv.next135, %rc_bittree_price.exit107 ]
  %19 = trunc nuw nsw i64 %inc34.lcssa.wide to i32
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond36.preheader.loopexit, %for.cond20.preheader
  %i.1.lcssa = phi i32 [ %i.0.lcssa, %for.cond20.preheader ], [ %19, %for.cond36.preheader.loopexit ]
  %cmp37130 = icmp ult i32 %i.1.lcssa, %0
  br i1 %cmp37130, label %for.body38.lr.ph, label %for.end48

for.body38.lr.ph:                                 ; preds = %for.cond36.preheader
  %high = getelementptr inbounds nuw i8, ptr %lc, i64 516
  %20 = zext nneg i32 %i.1.lcssa to i64
  %wide.trip.count142 = zext i32 %0 to i64
  br label %for.body38

for.body25:                                       ; preds = %rc_bittree_price.exit107, %for.body25.lr.ph
  %indvars.iv134 = phi i64 [ %13, %for.body25.lr.ph ], [ %indvars.iv.next135, %rc_bittree_price.exit107 ]
  %21 = trunc nuw nsw i64 %indvars.iv134 to i32
  br label %do.body.i92

do.body.i92:                                      ; preds = %do.body.i92, %for.body25
  %price.0.i93 = phi i32 [ 0, %for.body25 ], [ %add1.i105, %do.body.i92 ]
  %symbol.addr.0.i94 = phi i32 [ %21, %for.body25 ], [ %shr.i96, %do.body.i92 ]
  %and.i95 = and i32 %symbol.addr.0.i94, 1
  %shr.i96 = lshr i32 %symbol.addr.0.i94, 1
  %idxprom.i97 = zext nneg i32 %shr.i96 to i64
  %arrayidx.i98 = getelementptr inbounds nuw i16, ptr %arrayidx27, i64 %idxprom.i97
  %22 = load i16, ptr %arrayidx.i98, align 2, !tbaa !10
  %conv.i.i99 = zext i16 %22 to i64
  %23 = icmp eq i32 %and.i95, 0
  %and.i.i100 = select i1 %23, i64 0, i64 2032
  %xor.i.i101 = xor i64 %and.i.i100, %conv.i.i99
  %shr.i.i102 = lshr i64 %xor.i.i101, 4
  %arrayidx.i.i103 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i102
  %24 = load i8, ptr %arrayidx.i.i103, align 1, !tbaa !8
  %conv1.i.i104 = zext i8 %24 to i32
  %add1.i105 = add i32 %price.0.i93, %conv1.i.i104
  %cmp.not.i106 = icmp eq i32 %shr.i96, 1
  br i1 %cmp.not.i106, label %rc_bittree_price.exit107, label %do.body.i92, !llvm.loop !11

rc_bittree_price.exit107:                         ; preds = %do.body.i92
  %add1.i105.lcssa = phi i32 [ %add1.i105, %do.body.i92 ]
  %add30 = add i32 %add, %add1.i105.lcssa
  %arrayidx32 = getelementptr inbounds nuw i32, ptr %arrayidx11, i64 %indvars.iv134
  store i32 %add30, ptr %arrayidx32, align 4, !tbaa !6
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %exitcond138 = icmp ne i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138, label %for.body25, label %for.cond36.preheader.loopexit, !llvm.loop !14

for.body38:                                       ; preds = %rc_bittree_price.exit124, %for.body38.lr.ph
  %indvars.iv139 = phi i64 [ %20, %for.body38.lr.ph ], [ %indvars.iv.next140, %rc_bittree_price.exit124 ]
  %25 = trunc nuw i64 %indvars.iv139 to i32
  %add.i108 = add i32 %25, 240
  br label %do.body.i109

do.body.i109:                                     ; preds = %do.body.i109, %for.body38
  %price.0.i110 = phi i32 [ 0, %for.body38 ], [ %add1.i122, %do.body.i109 ]
  %symbol.addr.0.i111 = phi i32 [ %add.i108, %for.body38 ], [ %shr.i113, %do.body.i109 ]
  %and.i112 = and i32 %symbol.addr.0.i111, 1
  %shr.i113 = lshr i32 %symbol.addr.0.i111, 1
  %idxprom.i114 = zext nneg i32 %shr.i113 to i64
  %arrayidx.i115 = getelementptr inbounds nuw i16, ptr %high, i64 %idxprom.i114
  %26 = load i16, ptr %arrayidx.i115, align 2, !tbaa !10
  %conv.i.i116 = zext i16 %26 to i64
  %27 = icmp eq i32 %and.i112, 0
  %and.i.i117 = select i1 %27, i64 0, i64 2032
  %xor.i.i118 = xor i64 %and.i.i117, %conv.i.i116
  %shr.i.i119 = lshr i64 %xor.i.i118, 4
  %arrayidx.i.i120 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i119
  %28 = load i8, ptr %arrayidx.i.i120, align 1, !tbaa !8
  %conv1.i.i121 = zext i8 %28 to i32
  %add1.i122 = add i32 %price.0.i110, %conv1.i.i121
  %cmp.not.i123 = icmp eq i32 %shr.i113, 1
  br i1 %cmp.not.i123, label %rc_bittree_price.exit124, label %do.body.i109, !llvm.loop !11

rc_bittree_price.exit124:                         ; preds = %do.body.i109
  %add1.i122.lcssa = phi i32 [ %add1.i122, %do.body.i109 ]
  %add43 = add i32 %add8, %add1.i122.lcssa
  %arrayidx45 = getelementptr inbounds nuw i32, ptr %arrayidx11, i64 %indvars.iv139
  store i32 %add43, ptr %arrayidx45, align 4, !tbaa !6
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  %exitcond143 = icmp ne i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143, label %for.body38, label %for.end48.loopexit, !llvm.loop !15

for.end48.loopexit:                               ; preds = %rc_bittree_price.exit124
  br label %for.end48

for.end48:                                        ; preds = %for.end48.loopexit, %for.cond36.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!0 = !{!1, !5, i64 18436}
!1 = !{!"", !2, i64 0, !2, i64 2, !3, i64 4, !3, i64 260, !3, i64 516, !3, i64 1028, !5, i64 18436, !3, i64 18440}
!2 = !{!"short", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"int", !3, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!1, !2, i64 0}
!8 = !{!3, !3, i64 0}
!9 = !{!1, !2, i64 2}
!10 = !{!2, !2, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
