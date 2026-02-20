; ModuleID = '/tmp/tmp.4i6IlInqto/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/557.xz_r/src/liblzma/lzma/lzma_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: inlinehint nounwind uwtable
define hidden fastcc void @match(ptr noundef %pcoder, i32 noundef %pos_state, i32 noundef range(i32 -1, -5) %distance, i32 noundef %len) unnamed_addr #0 {
entry:
  %state = getelementptr inbounds nuw i8, ptr %pcoder, i64 736
  %0 = load i32, ptr %state, align 8, !tbaa !0
  %cmp = icmp ult i32 %0, 7
  %cond = select i1 %cmp, i32 7, i32 10
  store i32 %cond, ptr %state, align 8, !tbaa !0
  %match_len_encoder = getelementptr inbounds nuw i8, ptr %pcoder, i64 29184
  %fast_mode = getelementptr inbounds nuw i8, ptr %pcoder, i64 2956
  %1 = load i8, ptr %fast_mode, align 4, !tbaa !10, !range !11, !noundef !12
  %loadedv = trunc nuw i8 %1 to i1
  tail call fastcc void @length(ptr noundef %pcoder, ptr noundef nonnull %match_len_encoder, i32 noundef %pos_state, i32 noundef %len, i1 noundef zeroext %loadedv)
  %cmp.i = icmp ult i32 %distance, 8192
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %idxprom.i = zext nneg i32 %distance to i64
  %arrayidx.i = getelementptr inbounds nuw i8, ptr @lzma_fastpos, i64 %idxprom.i
  %2 = load i8, ptr %arrayidx.i, align 1, !tbaa !13
  %conv.i = zext i8 %2 to i32
  br label %get_pos_slot.exit

if.end.i:                                         ; preds = %entry
  %cmp1.i = icmp ult i32 %distance, 33554432
  br i1 %cmp1.i, label %if.then3.i, label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  %shr.i = lshr i32 %distance, 12
  %idxprom4.i = zext nneg i32 %shr.i to i64
  %arrayidx5.i = getelementptr inbounds nuw i8, ptr @lzma_fastpos, i64 %idxprom4.i
  %3 = load i8, ptr %arrayidx5.i, align 1, !tbaa !13
  %conv6.i = zext i8 %3 to i32
  %add.i = add nuw nsw i32 %conv6.i, 24
  br label %get_pos_slot.exit

if.end7.i:                                        ; preds = %if.end.i
  %shr8.i = lshr i32 %distance, 24
  %idxprom9.i = zext nneg i32 %shr8.i to i64
  %arrayidx10.i = getelementptr inbounds nuw i8, ptr @lzma_fastpos, i64 %idxprom9.i
  %4 = load i8, ptr %arrayidx10.i, align 1, !tbaa !13
  %conv11.i = zext i8 %4 to i32
  %add12.i = add nuw nsw i32 %conv11.i, 48
  br label %get_pos_slot.exit

get_pos_slot.exit:                                ; preds = %if.end7.i, %if.then3.i, %if.then.i
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %add.i, %if.then3.i ], [ %add12.i, %if.end7.i ]
  %5 = tail call i32 @llvm.umin.i32(i32 %len, i32 5)
  %cond3 = add nsw i32 %5, -2
  %pos_slot5 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28412
  %idxprom = zext i32 %cond3 to i64
  %arrayidx = getelementptr inbounds nuw [64 x i16], ptr %pos_slot5, i64 %idxprom
  %symbols.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 40
  %count.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 24
  %probs.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 272
  %count.i.promoted.i = load i64, ptr %count.i.i, align 8, !tbaa !14
  br label %do.body.i

do.body.i:                                        ; preds = %get_pos_slot.exit
  %shr.i71 = lshr i32 %retval.0.i, 5
  %and.i = and i32 %shr.i71, 1
  %arrayidx.i73 = getelementptr inbounds nuw i16, ptr %arrayidx, i64 1
  %arrayidx.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %count.i.promoted.i
  store i32 %and.i, ptr %arrayidx.i.i, align 4, !tbaa !15
  %arrayidx2.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %count.i.promoted.i
  store ptr %arrayidx.i73, ptr %arrayidx2.i.i, align 8, !tbaa !16
  %inc.i.i = add i64 %count.i.promoted.i, 1
  %add.i74 = or disjoint i32 %and.i, 2
  %shr.i71.1 = lshr i32 %retval.0.i, 4
  %and.i.1 = and i32 %shr.i71.1, 1
  %idxprom.i72.1 = zext i32 %add.i74 to i64
  %arrayidx.i73.1 = getelementptr inbounds nuw i16, ptr %arrayidx, i64 %idxprom.i72.1
  %arrayidx.i.i.1 = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i
  store i32 %and.i.1, ptr %arrayidx.i.i.1, align 4, !tbaa !15
  %arrayidx2.i.i.1 = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i
  store ptr %arrayidx.i73.1, ptr %arrayidx2.i.i.1, align 8, !tbaa !16
  %inc.i.i.1 = add i64 %count.i.promoted.i, 2
  %shl.i.1 = shl i32 %add.i74, 1
  %add.i74.1 = or disjoint i32 %and.i.1, %shl.i.1
  %shr.i71.2 = lshr i32 %retval.0.i, 3
  %and.i.2 = and i32 %shr.i71.2, 1
  %idxprom.i72.2 = zext i32 %add.i74.1 to i64
  %arrayidx.i73.2 = getelementptr inbounds nuw i16, ptr %arrayidx, i64 %idxprom.i72.2
  %arrayidx.i.i.2 = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i.1
  store i32 %and.i.2, ptr %arrayidx.i.i.2, align 4, !tbaa !15
  %arrayidx2.i.i.2 = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i.1
  store ptr %arrayidx.i73.2, ptr %arrayidx2.i.i.2, align 8, !tbaa !16
  %inc.i.i.2 = add i64 %count.i.promoted.i, 3
  %shl.i.2 = shl i32 %add.i74.1, 1
  %add.i74.2 = or disjoint i32 %and.i.2, %shl.i.2
  %shr.i71.3 = lshr i32 %retval.0.i, 2
  %and.i.3 = and i32 %shr.i71.3, 1
  %idxprom.i72.3 = zext i32 %add.i74.2 to i64
  %arrayidx.i73.3 = getelementptr inbounds nuw i16, ptr %arrayidx, i64 %idxprom.i72.3
  %arrayidx.i.i.3 = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i.2
  store i32 %and.i.3, ptr %arrayidx.i.i.3, align 4, !tbaa !15
  %arrayidx2.i.i.3 = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i.2
  store ptr %arrayidx.i73.3, ptr %arrayidx2.i.i.3, align 8, !tbaa !16
  %inc.i.i.3 = add i64 %count.i.promoted.i, 4
  %shl.i.3 = shl i32 %add.i74.2, 1
  %add.i74.3 = or disjoint i32 %and.i.3, %shl.i.3
  %shr.i71.4 = lshr i32 %retval.0.i, 1
  %and.i.4 = and i32 %shr.i71.4, 1
  %idxprom.i72.4 = zext i32 %add.i74.3 to i64
  %arrayidx.i73.4 = getelementptr inbounds nuw i16, ptr %arrayidx, i64 %idxprom.i72.4
  %arrayidx.i.i.4 = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i.3
  store i32 %and.i.4, ptr %arrayidx.i.i.4, align 4, !tbaa !15
  %arrayidx2.i.i.4 = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i.3
  store ptr %arrayidx.i73.4, ptr %arrayidx2.i.i.4, align 8, !tbaa !16
  %inc.i.i.4 = add i64 %count.i.promoted.i, 5
  %shl.i.4 = shl i32 %add.i74.3, 1
  %add.i74.4 = or disjoint i32 %and.i.4, %shl.i.4
  %and.i.5 = and i32 %retval.0.i, 1
  %idxprom.i72.5 = zext i32 %add.i74.4 to i64
  %arrayidx.i73.5 = getelementptr inbounds nuw i16, ptr %arrayidx, i64 %idxprom.i72.5
  %arrayidx.i.i.5 = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i.4
  store i32 %and.i.5, ptr %arrayidx.i.i.5, align 4, !tbaa !15
  %arrayidx2.i.i.5 = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i.4
  store ptr %arrayidx.i73.5, ptr %arrayidx2.i.i.5, align 8, !tbaa !16
  %inc.i.i.5 = add i64 %count.i.promoted.i, 6
  store i64 %inc.i.i.5, ptr %count.i.i, align 8, !tbaa !14
  %cmp6 = icmp samesign ugt i32 %retval.0.i, 3
  br i1 %cmp6, label %if.then, label %if.end22

if.then:                                          ; preds = %do.body.i
  %shr = lshr i32 %retval.0.i, 1
  %sub7 = add nsw i32 %shr, -1
  %and = and i32 %retval.0.i, 1
  %or = or disjoint i32 %and, 2
  %shl = shl i32 %or, %sub7
  %sub8 = sub i32 %distance, %shl
  %cmp9 = icmp samesign ult i32 %retval.0.i, 14
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %idx.ext = zext i32 %shl to i64
  %add.ptr = getelementptr i16, ptr %pcoder, i64 %idx.ext
  %idx.ext13 = zext nneg i32 %retval.0.i to i64
  %idx.neg = sub nsw i64 0, %idx.ext13
  %add.ptr14 = getelementptr i16, ptr %add.ptr, i64 %idx.neg
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i64 28922
  br label %do.body.i79

do.body.i79:                                      ; preds = %do.body.i79, %if.then10
  %inc.i4.i80 = phi i64 [ %inc.i.i.5, %if.then10 ], [ %inc.i.i89, %do.body.i79 ]
  %symbol.addr.0.i = phi i32 [ %sub8, %if.then10 ], [ %shr.i84, %do.body.i79 ]
  %model_index.0.i81 = phi i32 [ 1, %if.then10 ], [ %add.i91, %do.body.i79 ]
  %bit_count.addr.0.i82 = phi i32 [ %sub7, %if.then10 ], [ %dec.i92, %do.body.i79 ]
  %and.i83 = and i32 %symbol.addr.0.i, 1
  %shr.i84 = lshr i32 %symbol.addr.0.i, 1
  %idxprom.i85 = zext i32 %model_index.0.i81 to i64
  %arrayidx.i86 = getelementptr inbounds nuw i16, ptr %add.ptr15, i64 %idxprom.i85
  %arrayidx.i.i87 = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i4.i80
  store i32 %and.i83, ptr %arrayidx.i.i87, align 4, !tbaa !15
  %arrayidx2.i.i88 = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i4.i80
  store ptr %arrayidx.i86, ptr %arrayidx2.i.i88, align 8, !tbaa !16
  %inc.i.i89 = add i64 %inc.i4.i80, 1
  %shl.i90 = shl i32 %model_index.0.i81, 1
  %add.i91 = or disjoint i32 %shl.i90, %and.i83
  %dec.i92 = add nsw i32 %bit_count.addr.0.i82, -1
  %cmp.not.i93 = icmp eq i32 %dec.i92, 0
  br i1 %cmp.not.i93, label %rc_bittree_reverse.exit, label %do.body.i79, !llvm.loop !19

rc_bittree_reverse.exit:                          ; preds = %do.body.i79
  %inc.i.i89.lcssa = phi i64 [ %inc.i.i89, %do.body.i79 ]
  store i64 %inc.i.i89.lcssa, ptr %count.i.i, align 8, !tbaa !14
  br label %if.end22

if.else:                                          ; preds = %if.then
  %shr17 = lshr i32 %sub8, 4
  %sub18 = add nsw i32 %shr, -5
  br label %do.body.i94

do.body.i94:                                      ; preds = %do.body.i94, %if.else
  %6 = phi i64 [ %inc.i.i.5, %if.else ], [ %inc.i, %do.body.i94 ]
  %bit_count.addr.0.i95 = phi i32 [ %sub18, %if.else ], [ %dec.i96, %do.body.i94 ]
  %dec.i96 = add nsw i32 %bit_count.addr.0.i95, -1
  %shr.i97 = lshr i32 %shr17, %dec.i96
  %and.i98 = and i32 %shr.i97, 1
  %add.i99 = or disjoint i32 %and.i98, 2
  %inc.i = add i64 %6, 1
  %arrayidx.i100 = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %6
  store i32 %add.i99, ptr %arrayidx.i100, align 4, !tbaa !15
  %cmp.not.i101 = icmp eq i32 %dec.i96, 0
  br i1 %cmp.not.i101, label %rc_direct.exit, label %do.body.i94, !llvm.loop !21

rc_direct.exit:                                   ; preds = %do.body.i94
  %inc.i.lcssa = phi i64 [ %inc.i, %do.body.i94 ]
  store i64 %inc.i.lcssa, ptr %count.i.i, align 8, !tbaa !14
  %pos_align = getelementptr inbounds nuw i8, ptr %pcoder, i64 29152
  %and21 = and i32 %sub8, 15
  br label %do.body.i106

do.body.i106:                                     ; preds = %rc_direct.exit
  %and.i111 = and i32 %and21, 1
  %shr.i112 = lshr i32 %and21, 1
  %arrayidx.i114 = getelementptr inbounds nuw i16, ptr %pos_align, i64 1
  %arrayidx.i.i115 = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.lcssa
  store i32 %and.i111, ptr %arrayidx.i.i115, align 4, !tbaa !15
  %arrayidx2.i.i116 = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.lcssa
  store ptr %arrayidx.i114, ptr %arrayidx2.i.i116, align 8, !tbaa !16
  %inc.i.i117 = add i64 %inc.i.lcssa, 1
  %add.i119 = or disjoint i32 2, %and.i111
  %and.i111.1 = and i32 %shr.i112, 1
  %shr.i112.1 = lshr i32 %shr.i112, 1
  %idxprom.i113.1 = zext i32 %add.i119 to i64
  %arrayidx.i114.1 = getelementptr inbounds nuw i16, ptr %pos_align, i64 %idxprom.i113.1
  %arrayidx.i.i115.1 = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i117
  store i32 %and.i111.1, ptr %arrayidx.i.i115.1, align 4, !tbaa !15
  %arrayidx2.i.i116.1 = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i117
  store ptr %arrayidx.i114.1, ptr %arrayidx2.i.i116.1, align 8, !tbaa !16
  %inc.i.i117.1 = add i64 %inc.i.lcssa, 2
  %shl.i118.1 = shl i32 %add.i119, 1
  %add.i119.1 = or disjoint i32 %shl.i118.1, %and.i111.1
  %and.i111.2 = and i32 %shr.i112.1, 1
  %shr.i112.2 = lshr i32 %shr.i112.1, 1
  %idxprom.i113.2 = zext i32 %add.i119.1 to i64
  %arrayidx.i114.2 = getelementptr inbounds nuw i16, ptr %pos_align, i64 %idxprom.i113.2
  %arrayidx.i.i115.2 = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i117.1
  store i32 %and.i111.2, ptr %arrayidx.i.i115.2, align 4, !tbaa !15
  %arrayidx2.i.i116.2 = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i117.1
  store ptr %arrayidx.i114.2, ptr %arrayidx2.i.i116.2, align 8, !tbaa !16
  %inc.i.i117.2 = add i64 %inc.i.lcssa, 3
  %shl.i118.2 = shl i32 %add.i119.1, 1
  %add.i119.2 = or disjoint i32 %shl.i118.2, %and.i111.2
  %and.i111.3 = and i32 %shr.i112.2, 1
  %idxprom.i113.3 = zext i32 %add.i119.2 to i64
  %arrayidx.i114.3 = getelementptr inbounds nuw i16, ptr %pos_align, i64 %idxprom.i113.3
  %arrayidx.i.i115.3 = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i117.2
  store i32 %and.i111.3, ptr %arrayidx.i.i115.3, align 4, !tbaa !15
  %arrayidx2.i.i116.3 = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i117.2
  store ptr %arrayidx.i114.3, ptr %arrayidx2.i.i116.3, align 8, !tbaa !16
  %inc.i.i117.3 = add i64 %inc.i.lcssa, 4
  store i64 %inc.i.i117.3, ptr %count.i.i, align 8, !tbaa !14
  %align_price_count = getelementptr inbounds nuw i8, ptr %pcoder, i64 69336
  %7 = load i32, ptr %align_price_count, align 8, !tbaa !22
  %inc = add i32 %7, 1
  store i32 %inc, ptr %align_price_count, align 8, !tbaa !22
  br label %if.end22

if.end22:                                         ; preds = %do.body.i106, %rc_bittree_reverse.exit, %do.body.i
  %reps = getelementptr inbounds nuw i8, ptr %pcoder, i64 740
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %pcoder, i64 748
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !15
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %pcoder, i64 752
  store i32 %8, ptr %arrayidx25, align 4, !tbaa !15
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %pcoder, i64 744
  %9 = load i32, ptr %arrayidx27, align 4, !tbaa !15
  store i32 %9, ptr %arrayidx23, align 4, !tbaa !15
  %10 = load i32, ptr %reps, align 4, !tbaa !15
  store i32 %10, ptr %arrayidx27, align 4, !tbaa !15
  store i32 %distance, ptr %reps, align 4, !tbaa !15
  %match_price_count = getelementptr inbounds nuw i8, ptr %pcoder, i64 69268
  %11 = load i32, ptr %match_price_count, align 4, !tbaa !23
  %inc36 = add i32 %11, 1
  store i32 %inc36, ptr %match_price_count, align 4, !tbaa !23
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare hidden fastcc void @length(ptr noundef captures(none), ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!0 = !{!1, !6, i64 736}
!1 = !{!"lzma_coder_s", !2, i64 0, !6, i64 736, !4, i64 740, !4, i64 756, !6, i64 2948, !6, i64 2952, !7, i64 2956, !7, i64 2957, !7, i64 2958, !6, i64 2960, !6, i64 2964, !6, i64 2968, !4, i64 2972, !4, i64 27548, !4, i64 27932, !4, i64 27956, !4, i64 27980, !4, i64 28004, !4, i64 28028, !4, i64 28412, !4, i64 28924, !4, i64 29152, !8, i64 29184, !8, i64 47688, !4, i64 66192, !4, i64 67216, !6, i64 69264, !6, i64 69268, !4, i64 69272, !6, i64 69336, !6, i64 69340, !6, i64 69344, !4, i64 69348}
!2 = !{!"", !3, i64 0, !3, i64 8, !6, i64 16, !4, i64 20, !3, i64 24, !3, i64 32, !4, i64 40, !4, i64 272}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"int", !4, i64 0}
!7 = !{!"_Bool", !4, i64 0}
!8 = !{!"", !9, i64 0, !9, i64 2, !4, i64 4, !4, i64 260, !4, i64 516, !4, i64 1028, !6, i64 18436, !4, i64 18440}
!9 = !{!"short", !4, i64 0}
!10 = !{!1, !7, i64 2956}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!4, !4, i64 0}
!14 = !{!2, !3, i64 24}
!15 = !{!6, !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 short", !18, i64 0}
!18 = !{!"any pointer", !4, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = !{!1, !6, i64 69336}
!23 = !{!1, !6, i64 69268}
