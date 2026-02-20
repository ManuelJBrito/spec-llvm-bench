; ModuleID = '/tmp/tmp.r6TnrNx7ZC/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/557.xz_r/src/liblzma/lzma/lzma_encoder_optimum_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_optimal = type { i32, i8, i8, i32, i32, i32, i32, i32, [4 x i32] }
%struct.lzma_match = type { i32, i32 }

@lzma_rc_prices = external local_unnamed_addr constant [128 x i8], align 16
@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local void @lzma_lzma_optimum_normal(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias noundef writeonly captures(none) %back_res, ptr noalias noundef writeonly captures(none) %len_res, i32 noundef %position) local_unnamed_addr #0 {
entry:
  %matches_count.i = alloca i32, align 4
  %rep_lens.i = alloca [4 x i32], align 16
  %reps = alloca [4 x i32], align 16
  %opts_end_index = getelementptr inbounds nuw i8, ptr %pcoder, i64 69340
  %0 = load i32, ptr %opts_end_index, align 4, !tbaa !0
  %opts_current_index = getelementptr inbounds nuw i8, ptr %pcoder, i64 69344
  %1 = load i32, ptr %opts_current_index, align 8, !tbaa !10
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %opts = getelementptr inbounds nuw i8, ptr %pcoder, i64 69348
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts, i64 %idxprom
  %pos_prev = getelementptr inbounds nuw i8, ptr %arrayidx, i64 20
  %2 = load i32, ptr %pos_prev, align 4, !tbaa !11
  %sub = sub i32 %2, %1
  store i32 %sub, ptr %len_res, align 4, !tbaa !13
  %back_prev = getelementptr inbounds nuw i8, ptr %arrayidx, i64 24
  %3 = load i32, ptr %back_prev, align 4, !tbaa !14
  store i32 %3, ptr %back_res, align 4, !tbaa !13
  store i32 %2, ptr %opts_current_index, align 8, !tbaa !10
  br label %cleanup45

if.end:                                           ; preds = %entry
  %read_ahead = getelementptr inbounds nuw i8, ptr %mf, i64 28
  %4 = load i32, ptr %read_ahead, align 4, !tbaa !15
  %cmp13 = icmp eq i32 %4, 0
  br i1 %cmp13, label %if.then14, label %if.end21.thread

if.end21.thread:                                  ; preds = %if.end
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %nice_len1.i328 = getelementptr inbounds nuw i8, ptr %mf, i64 96
  %5 = load i32, ptr %nice_len1.i328, align 8, !tbaa !23, !alias.scope !20, !noalias !24
  call void @llvm.lifetime.start.p0(ptr nonnull %matches_count.i) #6, !noalias !27
  %longest_match_length.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 2952
  %6 = load i32, ptr %longest_match_length.i, align 8, !tbaa !28, !noalias !29
  %matches_count2.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 2948
  %7 = load i32, ptr %matches_count2.i, align 4, !tbaa !33, !noalias !29
  store i32 %7, ptr %matches_count.i, align 4, !tbaa !13, !noalias !29
  br label %if.end.i

if.then14:                                        ; preds = %if.end
  %match_price_count = getelementptr inbounds nuw i8, ptr %pcoder, i64 69268
  %8 = load i32, ptr %match_price_count, align 4, !tbaa !34
  %cmp15 = icmp ugt i32 %8, 127
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  %pos_slot_prices1.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66192
  %dist_table_size.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 69264
  %distances_prices.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 67216
  %pos_slot6.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28412
  %9 = load i32, ptr %dist_table_size.i, align 8, !tbaa !35
  %cmp3132.not.i = icmp eq i32 %9, 0
  br i1 %cmp3132.not.i, label %for.body28.i, label %for.body5.i.preheader

for.body5.i.preheader:                            ; preds = %if.then16
  br label %for.body5.i

for.cond13.preheader.i:                           ; preds = %rc_bittree_price.exit.i
  %.lcssa367 = phi i32 [ %14, %rc_bittree_price.exit.i ]
  %cmp15134.i = icmp ugt i32 %.lcssa367, 14
  br i1 %cmp15134.i, label %for.body17.i.preheader, label %for.body28.i

for.body17.i.preheader:                           ; preds = %for.cond13.preheader.i
  br label %for.body17.i

for.body5.i:                                      ; preds = %rc_bittree_price.exit.i, %for.body5.i.preheader
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %rc_bittree_price.exit.i ], [ 0, %for.body5.i.preheader ]
  %10 = trunc nuw i64 %indvars.iv.i to i32
  %add.i.i = add i32 %10, 64
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i, %for.body5.i
  %price.0.i.i = phi i32 [ 0, %for.body5.i ], [ %add1.i.i, %do.body.i.i ]
  %symbol.addr.0.i.i = phi i32 [ %add.i.i, %for.body5.i ], [ %shr.i.i, %do.body.i.i ]
  %and.i.i = and i32 %symbol.addr.0.i.i, 1
  %shr.i.i = lshr i32 %symbol.addr.0.i.i, 1
  %idxprom.i.i = zext nneg i32 %shr.i.i to i64
  %arrayidx.i.i = getelementptr inbounds nuw i16, ptr %pos_slot6.i, i64 %idxprom.i.i
  %11 = load i16, ptr %arrayidx.i.i, align 2, !tbaa !36
  %conv.i.i.i = zext i16 %11 to i64
  %12 = icmp eq i32 %and.i.i, 0
  %and.i.i.i = select i1 %12, i64 0, i64 2032
  %xor.i.i.i = xor i64 %and.i.i.i, %conv.i.i.i
  %shr.i.i.i = lshr i64 %xor.i.i.i, 4
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i.i
  %13 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !37
  %conv1.i.i.i = zext i8 %13 to i32
  %add1.i.i = add i32 %price.0.i.i, %conv1.i.i.i
  %cmp.not.i.i = icmp eq i32 %shr.i.i, 1
  br i1 %cmp.not.i.i, label %rc_bittree_price.exit.i, label %do.body.i.i, !llvm.loop !38

rc_bittree_price.exit.i:                          ; preds = %do.body.i.i
  %add1.i.i.lcssa = phi i32 [ %add1.i.i, %do.body.i.i ]
  %arrayidx11.i = getelementptr inbounds nuw i32, ptr %pos_slot_prices1.i, i64 %indvars.iv.i
  store i32 %add1.i.i.lcssa, ptr %arrayidx11.i, align 4, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %14 = load i32, ptr %dist_table_size.i, align 8, !tbaa !35
  %15 = zext i32 %14 to i64
  %cmp3.i = icmp samesign ult i64 %indvars.iv.next.i, %15
  br i1 %cmp3.i, label %for.body5.i, label %for.cond13.preheader.i, !llvm.loop !40

for.body17.i:                                     ; preds = %for.body17.i, %for.body17.i.preheader
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i, %for.body17.i ], [ 14, %for.body17.i.preheader ]
  %16 = trunc nuw i64 %indvars.iv143.i to i32
  %17 = shl i32 %16, 3
  %sub18.i = and i32 %17, -16
  %arrayidx21.i = getelementptr inbounds nuw i32, ptr %pos_slot_prices1.i, i64 %indvars.iv143.i
  %18 = load i32, ptr %arrayidx21.i, align 4, !tbaa !13
  %shl.i.i = add i32 %18, -80
  %add.i = add i32 %shl.i.i, %sub18.i
  store i32 %add.i, ptr %arrayidx21.i, align 4, !tbaa !13
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1
  %19 = load i32, ptr %dist_table_size.i, align 8, !tbaa !35
  %20 = zext i32 %19 to i64
  %cmp15.i = icmp samesign ult i64 %indvars.iv.next144.i, %20
  br i1 %cmp15.i, label %for.body17.i, label %for.body28.i.loopexit, !llvm.loop !41

for.body28.i.loopexit:                            ; preds = %for.body17.i
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.loopexit, %for.cond13.preheader.i, %if.then16
  %21 = load i32, ptr %pos_slot_prices1.i, align 4, !tbaa !13
  store i32 %21, ptr %distances_prices.i, align 4, !tbaa !13
  %arrayidx30.1.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66196
  %22 = load i32, ptr %arrayidx30.1.i, align 4, !tbaa !13
  %arrayidx34.1.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 67220
  store i32 %22, ptr %arrayidx34.1.i, align 4, !tbaa !13
  %arrayidx30.2.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66200
  %23 = load i32, ptr %arrayidx30.2.i, align 4, !tbaa !13
  %arrayidx34.2.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 67224
  store i32 %23, ptr %arrayidx34.2.i, align 4, !tbaa !13
  %arrayidx30.3.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66204
  %24 = load i32, ptr %arrayidx30.3.i, align 4, !tbaa !13
  %arrayidx34.3.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 67228
  store i32 %24, ptr %arrayidx34.3.i, align 4, !tbaa !13
  %arrayidx.1.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66448
  %25 = load i32, ptr %dist_table_size.i, align 8, !tbaa !35
  %cmp3132.not.1.i = icmp eq i32 %25, 0
  br i1 %cmp3132.not.1.i, label %for.body28.1.i, label %for.body5.lr.ph.1.i

for.body5.lr.ph.1.i:                              ; preds = %for.body28.i
  %arrayidx8.1.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28540
  br label %for.body5.1.i

for.body5.1.i:                                    ; preds = %rc_bittree_price.exit.1.i, %for.body5.lr.ph.1.i
  %indvars.iv.1.i = phi i64 [ 0, %for.body5.lr.ph.1.i ], [ %indvars.iv.next.1.i, %rc_bittree_price.exit.1.i ]
  %26 = trunc nuw i64 %indvars.iv.1.i to i32
  %add.i.1.i = add i32 %26, 64
  br label %do.body.i.1.i

do.body.i.1.i:                                    ; preds = %do.body.i.1.i, %for.body5.1.i
  %price.0.i.1.i = phi i32 [ 0, %for.body5.1.i ], [ %add1.i.1.i, %do.body.i.1.i ]
  %symbol.addr.0.i.1.i = phi i32 [ %add.i.1.i, %for.body5.1.i ], [ %shr.i.1.i, %do.body.i.1.i ]
  %and.i.1.i = and i32 %symbol.addr.0.i.1.i, 1
  %shr.i.1.i = lshr i32 %symbol.addr.0.i.1.i, 1
  %idxprom.i.1.i = zext nneg i32 %shr.i.1.i to i64
  %arrayidx.i.1.i = getelementptr inbounds nuw i16, ptr %arrayidx8.1.i, i64 %idxprom.i.1.i
  %27 = load i16, ptr %arrayidx.i.1.i, align 2, !tbaa !36
  %conv.i.i.1.i = zext i16 %27 to i64
  %28 = icmp eq i32 %and.i.1.i, 0
  %and.i.i.1.i = select i1 %28, i64 0, i64 2032
  %xor.i.i.1.i = xor i64 %and.i.i.1.i, %conv.i.i.1.i
  %shr.i.i.1.i = lshr i64 %xor.i.i.1.i, 4
  %arrayidx.i.i.1.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i.1.i
  %29 = load i8, ptr %arrayidx.i.i.1.i, align 1, !tbaa !37
  %conv1.i.i.1.i = zext i8 %29 to i32
  %add1.i.1.i = add i32 %price.0.i.1.i, %conv1.i.i.1.i
  %cmp.not.i.1.i = icmp eq i32 %shr.i.1.i, 1
  br i1 %cmp.not.i.1.i, label %rc_bittree_price.exit.1.i, label %do.body.i.1.i, !llvm.loop !38

rc_bittree_price.exit.1.i:                        ; preds = %do.body.i.1.i
  %add1.i.1.i.lcssa = phi i32 [ %add1.i.1.i, %do.body.i.1.i ]
  %arrayidx11.1.i = getelementptr inbounds nuw i32, ptr %arrayidx.1.i, i64 %indvars.iv.1.i
  store i32 %add1.i.1.i.lcssa, ptr %arrayidx11.1.i, align 4, !tbaa !13
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1
  %30 = load i32, ptr %dist_table_size.i, align 8, !tbaa !35
  %31 = zext i32 %30 to i64
  %cmp3.1.i = icmp samesign ult i64 %indvars.iv.next.1.i, %31
  br i1 %cmp3.1.i, label %for.body5.1.i, label %for.cond13.preheader.1.i, !llvm.loop !40

for.cond13.preheader.1.i:                         ; preds = %rc_bittree_price.exit.1.i
  %.lcssa366 = phi i32 [ %30, %rc_bittree_price.exit.1.i ]
  %cmp15134.1.i = icmp ugt i32 %.lcssa366, 14
  br i1 %cmp15134.1.i, label %for.body17.1.i.preheader, label %for.body28.1.i

for.body17.1.i.preheader:                         ; preds = %for.cond13.preheader.1.i
  br label %for.body17.1.i

for.body17.1.i:                                   ; preds = %for.body17.1.i, %for.body17.1.i.preheader
  %indvars.iv143.1.i = phi i64 [ %indvars.iv.next144.1.i, %for.body17.1.i ], [ 14, %for.body17.1.i.preheader ]
  %32 = trunc nuw i64 %indvars.iv143.1.i to i32
  %33 = shl i32 %32, 3
  %sub18.1.i = and i32 %33, -16
  %arrayidx21.1.i = getelementptr inbounds nuw i32, ptr %arrayidx.1.i, i64 %indvars.iv143.1.i
  %34 = load i32, ptr %arrayidx21.1.i, align 4, !tbaa !13
  %shl.i.1.i = add i32 %34, -80
  %add.1.i = add i32 %shl.i.1.i, %sub18.1.i
  store i32 %add.1.i, ptr %arrayidx21.1.i, align 4, !tbaa !13
  %indvars.iv.next144.1.i = add nuw nsw i64 %indvars.iv143.1.i, 1
  %35 = load i32, ptr %dist_table_size.i, align 8, !tbaa !35
  %36 = zext i32 %35 to i64
  %cmp15.1.i = icmp samesign ult i64 %indvars.iv.next144.1.i, %36
  br i1 %cmp15.1.i, label %for.body17.1.i, label %for.body28.1.i.loopexit, !llvm.loop !41

for.body28.1.i.loopexit:                          ; preds = %for.body17.1.i
  br label %for.body28.1.i

for.body28.1.i:                                   ; preds = %for.body28.1.i.loopexit, %for.cond13.preheader.1.i, %for.body28.i
  %arrayidx32.1.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 67728
  %37 = load i32, ptr %arrayidx.1.i, align 4, !tbaa !13
  store i32 %37, ptr %arrayidx32.1.i, align 4, !tbaa !13
  %arrayidx30.1.1.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66452
  %38 = load i32, ptr %arrayidx30.1.1.i, align 4, !tbaa !13
  %arrayidx34.1.1.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 67732
  store i32 %38, ptr %arrayidx34.1.1.i, align 4, !tbaa !13
  %arrayidx30.2.1.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66456
  %39 = load i32, ptr %arrayidx30.2.1.i, align 4, !tbaa !13
  %arrayidx34.2.1.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 67736
  store i32 %39, ptr %arrayidx34.2.1.i, align 4, !tbaa !13
  %arrayidx30.3.1.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66460
  %40 = load i32, ptr %arrayidx30.3.1.i, align 4, !tbaa !13
  %arrayidx34.3.1.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 67740
  store i32 %40, ptr %arrayidx34.3.1.i, align 4, !tbaa !13
  %arrayidx.2.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66704
  %41 = load i32, ptr %dist_table_size.i, align 8, !tbaa !35
  %cmp3132.not.2.i = icmp eq i32 %41, 0
  br i1 %cmp3132.not.2.i, label %for.body28.2.i, label %for.body5.lr.ph.2.i

for.body5.lr.ph.2.i:                              ; preds = %for.body28.1.i
  %arrayidx8.2.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28668
  br label %for.body5.2.i

for.body5.2.i:                                    ; preds = %rc_bittree_price.exit.2.i, %for.body5.lr.ph.2.i
  %indvars.iv.2.i = phi i64 [ 0, %for.body5.lr.ph.2.i ], [ %indvars.iv.next.2.i, %rc_bittree_price.exit.2.i ]
  %42 = trunc nuw i64 %indvars.iv.2.i to i32
  %add.i.2.i = add i32 %42, 64
  br label %do.body.i.2.i

do.body.i.2.i:                                    ; preds = %do.body.i.2.i, %for.body5.2.i
  %price.0.i.2.i = phi i32 [ 0, %for.body5.2.i ], [ %add1.i.2.i, %do.body.i.2.i ]
  %symbol.addr.0.i.2.i = phi i32 [ %add.i.2.i, %for.body5.2.i ], [ %shr.i.2.i, %do.body.i.2.i ]
  %and.i.2.i = and i32 %symbol.addr.0.i.2.i, 1
  %shr.i.2.i = lshr i32 %symbol.addr.0.i.2.i, 1
  %idxprom.i.2.i = zext nneg i32 %shr.i.2.i to i64
  %arrayidx.i.2.i = getelementptr inbounds nuw i16, ptr %arrayidx8.2.i, i64 %idxprom.i.2.i
  %43 = load i16, ptr %arrayidx.i.2.i, align 2, !tbaa !36
  %conv.i.i.2.i = zext i16 %43 to i64
  %44 = icmp eq i32 %and.i.2.i, 0
  %and.i.i.2.i = select i1 %44, i64 0, i64 2032
  %xor.i.i.2.i = xor i64 %and.i.i.2.i, %conv.i.i.2.i
  %shr.i.i.2.i = lshr i64 %xor.i.i.2.i, 4
  %arrayidx.i.i.2.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i.2.i
  %45 = load i8, ptr %arrayidx.i.i.2.i, align 1, !tbaa !37
  %conv1.i.i.2.i = zext i8 %45 to i32
  %add1.i.2.i = add i32 %price.0.i.2.i, %conv1.i.i.2.i
  %cmp.not.i.2.i = icmp eq i32 %shr.i.2.i, 1
  br i1 %cmp.not.i.2.i, label %rc_bittree_price.exit.2.i, label %do.body.i.2.i, !llvm.loop !38

rc_bittree_price.exit.2.i:                        ; preds = %do.body.i.2.i
  %add1.i.2.i.lcssa = phi i32 [ %add1.i.2.i, %do.body.i.2.i ]
  %arrayidx11.2.i = getelementptr inbounds nuw i32, ptr %arrayidx.2.i, i64 %indvars.iv.2.i
  store i32 %add1.i.2.i.lcssa, ptr %arrayidx11.2.i, align 4, !tbaa !13
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1
  %46 = load i32, ptr %dist_table_size.i, align 8, !tbaa !35
  %47 = zext i32 %46 to i64
  %cmp3.2.i = icmp samesign ult i64 %indvars.iv.next.2.i, %47
  br i1 %cmp3.2.i, label %for.body5.2.i, label %for.cond13.preheader.2.i, !llvm.loop !40

for.cond13.preheader.2.i:                         ; preds = %rc_bittree_price.exit.2.i
  %.lcssa365 = phi i32 [ %46, %rc_bittree_price.exit.2.i ]
  %cmp15134.2.i = icmp ugt i32 %.lcssa365, 14
  br i1 %cmp15134.2.i, label %for.body17.2.i.preheader, label %for.body28.2.i

for.body17.2.i.preheader:                         ; preds = %for.cond13.preheader.2.i
  br label %for.body17.2.i

for.body17.2.i:                                   ; preds = %for.body17.2.i, %for.body17.2.i.preheader
  %indvars.iv143.2.i = phi i64 [ %indvars.iv.next144.2.i, %for.body17.2.i ], [ 14, %for.body17.2.i.preheader ]
  %48 = trunc nuw i64 %indvars.iv143.2.i to i32
  %49 = shl i32 %48, 3
  %sub18.2.i = and i32 %49, -16
  %arrayidx21.2.i = getelementptr inbounds nuw i32, ptr %arrayidx.2.i, i64 %indvars.iv143.2.i
  %50 = load i32, ptr %arrayidx21.2.i, align 4, !tbaa !13
  %shl.i.2.i = add i32 %50, -80
  %add.2.i = add i32 %shl.i.2.i, %sub18.2.i
  store i32 %add.2.i, ptr %arrayidx21.2.i, align 4, !tbaa !13
  %indvars.iv.next144.2.i = add nuw nsw i64 %indvars.iv143.2.i, 1
  %51 = load i32, ptr %dist_table_size.i, align 8, !tbaa !35
  %52 = zext i32 %51 to i64
  %cmp15.2.i = icmp samesign ult i64 %indvars.iv.next144.2.i, %52
  br i1 %cmp15.2.i, label %for.body17.2.i, label %for.body28.2.i.loopexit, !llvm.loop !41

for.body28.2.i.loopexit:                          ; preds = %for.body17.2.i
  br label %for.body28.2.i

for.body28.2.i:                                   ; preds = %for.body28.2.i.loopexit, %for.cond13.preheader.2.i, %for.body28.1.i
  %arrayidx32.2.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 68240
  %53 = load i32, ptr %arrayidx.2.i, align 4, !tbaa !13
  store i32 %53, ptr %arrayidx32.2.i, align 4, !tbaa !13
  %arrayidx30.1.2.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66708
  %54 = load i32, ptr %arrayidx30.1.2.i, align 4, !tbaa !13
  %arrayidx34.1.2.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 68244
  store i32 %54, ptr %arrayidx34.1.2.i, align 4, !tbaa !13
  %arrayidx30.2.2.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66712
  %55 = load i32, ptr %arrayidx30.2.2.i, align 4, !tbaa !13
  %arrayidx34.2.2.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 68248
  store i32 %55, ptr %arrayidx34.2.2.i, align 4, !tbaa !13
  %arrayidx30.3.2.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66716
  %56 = load i32, ptr %arrayidx30.3.2.i, align 4, !tbaa !13
  %arrayidx34.3.2.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 68252
  store i32 %56, ptr %arrayidx34.3.2.i, align 4, !tbaa !13
  %arrayidx.3.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66960
  %57 = load i32, ptr %dist_table_size.i, align 8, !tbaa !35
  %cmp3132.not.3.i = icmp eq i32 %57, 0
  br i1 %cmp3132.not.3.i, label %for.body28.3.i, label %for.body5.lr.ph.3.i

for.body5.lr.ph.3.i:                              ; preds = %for.body28.2.i
  %arrayidx8.3.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28796
  br label %for.body5.3.i

for.body5.3.i:                                    ; preds = %rc_bittree_price.exit.3.i, %for.body5.lr.ph.3.i
  %indvars.iv.3.i = phi i64 [ 0, %for.body5.lr.ph.3.i ], [ %indvars.iv.next.3.i, %rc_bittree_price.exit.3.i ]
  %58 = trunc nuw i64 %indvars.iv.3.i to i32
  %add.i.3.i = add i32 %58, 64
  br label %do.body.i.3.i

do.body.i.3.i:                                    ; preds = %do.body.i.3.i, %for.body5.3.i
  %price.0.i.3.i = phi i32 [ 0, %for.body5.3.i ], [ %add1.i.3.i, %do.body.i.3.i ]
  %symbol.addr.0.i.3.i = phi i32 [ %add.i.3.i, %for.body5.3.i ], [ %shr.i.3.i, %do.body.i.3.i ]
  %and.i.3.i = and i32 %symbol.addr.0.i.3.i, 1
  %shr.i.3.i = lshr i32 %symbol.addr.0.i.3.i, 1
  %idxprom.i.3.i = zext nneg i32 %shr.i.3.i to i64
  %arrayidx.i.3.i = getelementptr inbounds nuw i16, ptr %arrayidx8.3.i, i64 %idxprom.i.3.i
  %59 = load i16, ptr %arrayidx.i.3.i, align 2, !tbaa !36
  %conv.i.i.3.i = zext i16 %59 to i64
  %60 = icmp eq i32 %and.i.3.i, 0
  %and.i.i.3.i = select i1 %60, i64 0, i64 2032
  %xor.i.i.3.i = xor i64 %and.i.i.3.i, %conv.i.i.3.i
  %shr.i.i.3.i = lshr i64 %xor.i.i.3.i, 4
  %arrayidx.i.i.3.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i.3.i
  %61 = load i8, ptr %arrayidx.i.i.3.i, align 1, !tbaa !37
  %conv1.i.i.3.i = zext i8 %61 to i32
  %add1.i.3.i = add i32 %price.0.i.3.i, %conv1.i.i.3.i
  %cmp.not.i.3.i = icmp eq i32 %shr.i.3.i, 1
  br i1 %cmp.not.i.3.i, label %rc_bittree_price.exit.3.i, label %do.body.i.3.i, !llvm.loop !38

rc_bittree_price.exit.3.i:                        ; preds = %do.body.i.3.i
  %add1.i.3.i.lcssa = phi i32 [ %add1.i.3.i, %do.body.i.3.i ]
  %arrayidx11.3.i = getelementptr inbounds nuw i32, ptr %arrayidx.3.i, i64 %indvars.iv.3.i
  store i32 %add1.i.3.i.lcssa, ptr %arrayidx11.3.i, align 4, !tbaa !13
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1
  %62 = load i32, ptr %dist_table_size.i, align 8, !tbaa !35
  %63 = zext i32 %62 to i64
  %cmp3.3.i = icmp samesign ult i64 %indvars.iv.next.3.i, %63
  br i1 %cmp3.3.i, label %for.body5.3.i, label %for.cond13.preheader.3.i, !llvm.loop !40

for.cond13.preheader.3.i:                         ; preds = %rc_bittree_price.exit.3.i
  %.lcssa = phi i32 [ %62, %rc_bittree_price.exit.3.i ]
  %cmp15134.3.i = icmp ugt i32 %.lcssa, 14
  br i1 %cmp15134.3.i, label %for.body17.3.i.preheader, label %for.body28.3.i

for.body17.3.i.preheader:                         ; preds = %for.cond13.preheader.3.i
  br label %for.body17.3.i

for.body17.3.i:                                   ; preds = %for.body17.3.i, %for.body17.3.i.preheader
  %indvars.iv143.3.i = phi i64 [ %indvars.iv.next144.3.i, %for.body17.3.i ], [ 14, %for.body17.3.i.preheader ]
  %64 = trunc nuw i64 %indvars.iv143.3.i to i32
  %65 = shl i32 %64, 3
  %sub18.3.i = and i32 %65, -16
  %arrayidx21.3.i = getelementptr inbounds nuw i32, ptr %arrayidx.3.i, i64 %indvars.iv143.3.i
  %66 = load i32, ptr %arrayidx21.3.i, align 4, !tbaa !13
  %shl.i.3.i = add i32 %66, -80
  %add.3.i = add i32 %shl.i.3.i, %sub18.3.i
  store i32 %add.3.i, ptr %arrayidx21.3.i, align 4, !tbaa !13
  %indvars.iv.next144.3.i = add nuw nsw i64 %indvars.iv143.3.i, 1
  %67 = load i32, ptr %dist_table_size.i, align 8, !tbaa !35
  %68 = zext i32 %67 to i64
  %cmp15.3.i = icmp samesign ult i64 %indvars.iv.next144.3.i, %68
  br i1 %cmp15.3.i, label %for.body17.3.i, label %for.body28.3.i.loopexit, !llvm.loop !41

for.body28.3.i.loopexit:                          ; preds = %for.body17.3.i
  br label %for.body28.3.i

for.body28.3.i:                                   ; preds = %for.body28.3.i.loopexit, %for.cond13.preheader.3.i, %for.body28.2.i
  %arrayidx32.3.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 68752
  %69 = load i32, ptr %arrayidx.3.i, align 4, !tbaa !13
  store i32 %69, ptr %arrayidx32.3.i, align 4, !tbaa !13
  %arrayidx30.1.3.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66964
  %70 = load i32, ptr %arrayidx30.1.3.i, align 4, !tbaa !13
  %arrayidx34.1.3.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 68756
  store i32 %70, ptr %arrayidx34.1.3.i, align 4, !tbaa !13
  %arrayidx30.2.3.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66968
  %71 = load i32, ptr %arrayidx30.2.3.i, align 4, !tbaa !13
  %arrayidx34.2.3.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 68760
  store i32 %71, ptr %arrayidx34.2.3.i, align 4, !tbaa !13
  %arrayidx30.3.3.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66972
  %72 = load i32, ptr %arrayidx30.3.3.i, align 4, !tbaa !13
  %arrayidx34.3.3.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 68764
  store i32 %72, ptr %arrayidx34.3.3.i, align 4, !tbaa !13
  br label %for.body45.i

for.body45.i:                                     ; preds = %for.body60.i, %for.body28.3.i
  %indvars.iv156.i = phi i64 [ 4, %for.body28.3.i ], [ %indvars.iv.next157.i, %for.body60.i ]
  %arrayidx.i114.i = getelementptr inbounds nuw i8, ptr @lzma_fastpos, i64 %indvars.iv156.i
  %73 = load i8, ptr %arrayidx.i114.i, align 1, !tbaa !37
  %conv.i.i = zext i8 %73 to i32
  %shr48.i = lshr i32 %conv.i.i, 1
  %sub49.i = add nsw i32 %shr48.i, -1
  %and.i = and i32 %conv.i.i, 1
  %or.i = or disjoint i32 %and.i, 2
  %shl.i = shl i32 %or.i, %sub49.i
  %idx.ext.i = zext i32 %shl.i to i64
  %add.ptr.i = getelementptr i16, ptr %pcoder, i64 %idx.ext.i
  %idx.ext51.i = zext i8 %73 to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext51.i
  %add.ptr52.i = getelementptr i16, ptr %add.ptr.i, i64 %idx.neg.i
  %add.ptr53.i = getelementptr i8, ptr %add.ptr52.i, i64 28922
  %74 = trunc nuw nsw i64 %indvars.iv156.i to i32
  %sub54.i = sub i32 %74, %shl.i
  br label %do.body.i115.i

do.body.i115.i:                                   ; preds = %do.body.i115.i, %for.body45.i
  %symbol.addr.0.i116.i = phi i32 [ %sub54.i, %for.body45.i ], [ %shr.i119.i, %do.body.i115.i ]
  %price.0.i117.i = phi i32 [ 0, %for.body45.i ], [ %add.i128.i, %do.body.i115.i ]
  %model_index.0.i.i = phi i32 [ 1, %for.body45.i ], [ %add1.i130.i, %do.body.i115.i ]
  %bit_levels.addr.0.i.i = phi i32 [ %sub49.i, %for.body45.i ], [ %dec.i.i, %do.body.i115.i ]
  %and.i118.i = and i32 %symbol.addr.0.i116.i, 1
  %shr.i119.i = lshr i32 %symbol.addr.0.i116.i, 1
  %idxprom.i120.i = zext i32 %model_index.0.i.i to i64
  %arrayidx.i121.i = getelementptr inbounds nuw i16, ptr %add.ptr53.i, i64 %idxprom.i120.i
  %75 = load i16, ptr %arrayidx.i121.i, align 2, !tbaa !36
  %conv.i.i122.i = zext i16 %75 to i64
  %76 = icmp eq i32 %and.i118.i, 0
  %and.i.i123.i = select i1 %76, i64 0, i64 2032
  %xor.i.i124.i = xor i64 %and.i.i123.i, %conv.i.i122.i
  %shr.i.i125.i = lshr i64 %xor.i.i124.i, 4
  %arrayidx.i.i126.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i125.i
  %77 = load i8, ptr %arrayidx.i.i126.i, align 1, !tbaa !37
  %conv1.i.i127.i = zext i8 %77 to i32
  %add.i128.i = add i32 %price.0.i117.i, %conv1.i.i127.i
  %shl.i129.i = shl i32 %model_index.0.i.i, 1
  %add1.i130.i = or disjoint i32 %shl.i129.i, %and.i118.i
  %dec.i.i = add i32 %bit_levels.addr.0.i.i, -1
  %cmp.not.i131.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i131.i, label %for.body60.i, label %do.body.i115.i, !llvm.loop !42

for.body60.i:                                     ; preds = %do.body.i115.i
  %add.i128.i.lcssa = phi i32 [ %add.i128.i, %do.body.i115.i ]
  %invariant.gep138.i = getelementptr inbounds nuw i32, ptr %distances_prices.i, i64 %indvars.iv156.i
  %invariant.gep.i = getelementptr inbounds nuw i32, ptr %pos_slot_prices1.i, i64 %idx.ext51.i
  %78 = load i32, ptr %invariant.gep.i, align 4, !tbaa !13
  %add66.i = add i32 %78, %add.i128.i.lcssa
  store i32 %add66.i, ptr %invariant.gep138.i, align 4, !tbaa !13
  %gep.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 256
  %79 = load i32, ptr %gep.1.i, align 4, !tbaa !13
  %add66.1.i = add i32 %79, %add.i128.i.lcssa
  %gep139.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep138.i, i64 512
  store i32 %add66.1.i, ptr %gep139.1.i, align 4, !tbaa !13
  %gep.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 512
  %80 = load i32, ptr %gep.2.i, align 4, !tbaa !13
  %add66.2.i = add i32 %80, %add.i128.i.lcssa
  %gep139.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep138.i, i64 1024
  store i32 %add66.2.i, ptr %gep139.2.i, align 4, !tbaa !13
  %gep.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 768
  %81 = load i32, ptr %gep.3.i, align 4, !tbaa !13
  %add66.3.i = add i32 %81, %add.i128.i.lcssa
  %gep139.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep138.i, i64 1536
  store i32 %add66.3.i, ptr %gep139.3.i, align 4, !tbaa !13
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next157.i, 128
  br i1 %exitcond.not.i, label %fill_distances_prices.exit, label %for.body45.i, !llvm.loop !43

fill_distances_prices.exit:                       ; preds = %for.body60.i
  store i32 0, ptr %match_price_count, align 4, !tbaa !34
  br label %if.end17

if.end17:                                         ; preds = %fill_distances_prices.exit, %if.then14
  %align_price_count = getelementptr inbounds nuw i8, ptr %pcoder, i64 69336
  %82 = load i32, ptr %align_price_count, align 8, !tbaa !44
  %cmp18 = icmp ugt i32 %82, 15
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %pos_align.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 29152
  %align_prices.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 69272
  %arrayidx.i.i92 = getelementptr inbounds nuw i8, ptr %pcoder, i64 29154
  %83 = load i16, ptr %arrayidx.i.i92, align 2, !tbaa !36
  %conv.i.i.i93 = zext i16 %83 to i64
  br label %do.body.i.i94

do.body.i.i94:                                    ; preds = %do.body.i.i94, %if.then19
  %indvars.iv.i95 = phi i64 [ 0, %if.then19 ], [ %indvars.iv.next.i138, %do.body.i.i94 ]
  %84 = trunc nuw nsw i64 %indvars.iv.i95 to i32
  %and.i.i96 = and i32 %84, 1
  %shr.i.i97 = lshr i32 %84, 1
  %85 = icmp eq i32 %and.i.i96, 0
  %and.i.i.i98 = select i1 %85, i64 0, i64 2032
  %xor.i.i.i99 = xor i64 %and.i.i.i98, %conv.i.i.i93
  %shr.i.i.i100 = lshr i64 %xor.i.i.i99, 4
  %arrayidx.i.i.i101 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i.i100
  %86 = load i8, ptr %arrayidx.i.i.i101, align 1, !tbaa !37
  %conv1.i.i.i102 = zext i8 %86 to i32
  %add1.i.i103 = or disjoint i32 %and.i.i96, 2
  %and.i.1.i104 = and i32 %shr.i.i97, 1
  %shr.i.1.i105 = lshr i32 %84, 2
  %idxprom.i.1.i106 = zext nneg i32 %add1.i.i103 to i64
  %arrayidx.i.1.i107 = getelementptr inbounds nuw i16, ptr %pos_align.i, i64 %idxprom.i.1.i106
  %87 = load i16, ptr %arrayidx.i.1.i107, align 2, !tbaa !36
  %conv.i.i.1.i108 = zext i16 %87 to i64
  %88 = icmp eq i32 %and.i.1.i104, 0
  %and.i.i.1.i109 = select i1 %88, i64 0, i64 2032
  %xor.i.i.1.i110 = xor i64 %and.i.i.1.i109, %conv.i.i.1.i108
  %shr.i.i.1.i111 = lshr i64 %xor.i.i.1.i110, 4
  %arrayidx.i.i.1.i112 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i.1.i111
  %89 = load i8, ptr %arrayidx.i.i.1.i112, align 1, !tbaa !37
  %conv1.i.i.1.i113 = zext i8 %89 to i32
  %add.i.1.i114 = add nuw nsw i32 %conv1.i.i.1.i113, %conv1.i.i.i102
  %shl.i.1.i115 = shl nuw nsw i32 %add1.i.i103, 1
  %add1.i.1.i116 = or disjoint i32 %shl.i.1.i115, %and.i.1.i104
  %and.i.2.i117 = and i32 %shr.i.1.i105, 1
  %idxprom.i.2.i118 = zext nneg i32 %add1.i.1.i116 to i64
  %arrayidx.i.2.i119 = getelementptr inbounds nuw i16, ptr %pos_align.i, i64 %idxprom.i.2.i118
  %90 = load i16, ptr %arrayidx.i.2.i119, align 2, !tbaa !36
  %conv.i.i.2.i120 = zext i16 %90 to i64
  %91 = icmp eq i32 %and.i.2.i117, 0
  %and.i.i.2.i121 = select i1 %91, i64 0, i64 2032
  %xor.i.i.2.i122 = xor i64 %and.i.i.2.i121, %conv.i.i.2.i120
  %shr.i.i.2.i123 = lshr i64 %xor.i.i.2.i122, 4
  %arrayidx.i.i.2.i124 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i.2.i123
  %92 = load i8, ptr %arrayidx.i.i.2.i124, align 1, !tbaa !37
  %conv1.i.i.2.i125 = zext i8 %92 to i32
  %add.i.2.i126 = add nuw nsw i32 %add.i.1.i114, %conv1.i.i.2.i125
  %shl.i.2.i127 = shl nuw nsw i32 %add1.i.1.i116, 1
  %add1.i.2.i128 = or disjoint i32 %shl.i.2.i127, %and.i.2.i117
  %idxprom.i.3.i129 = zext nneg i32 %add1.i.2.i128 to i64
  %arrayidx.i.3.i130 = getelementptr inbounds nuw i16, ptr %pos_align.i, i64 %idxprom.i.3.i129
  %93 = load i16, ptr %arrayidx.i.3.i130, align 2, !tbaa !36
  %conv.i.i.3.i131 = zext i16 %93 to i64
  %94 = and i32 %84, 8
  %95 = icmp eq i32 %94, 0
  %and.i.i.3.i132 = select i1 %95, i64 0, i64 2032
  %xor.i.i.3.i133 = xor i64 %and.i.i.3.i132, %conv.i.i.3.i131
  %shr.i.i.3.i134 = lshr i64 %xor.i.i.3.i133, 4
  %arrayidx.i.i.3.i135 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i.3.i134
  %96 = load i8, ptr %arrayidx.i.i.3.i135, align 1, !tbaa !37
  %conv1.i.i.3.i136 = zext i8 %96 to i32
  %add.i.3.i137 = add nuw nsw i32 %add.i.2.i126, %conv1.i.i.3.i136
  %arrayidx.i = getelementptr inbounds nuw i32, ptr %align_prices.i, i64 %indvars.iv.i95
  store i32 %add.i.3.i137, ptr %arrayidx.i, align 4, !tbaa !13
  %indvars.iv.next.i138 = add nuw nsw i64 %indvars.iv.i95, 1
  %exitcond.not.i139 = icmp eq i64 %indvars.iv.next.i138, 16
  br i1 %exitcond.not.i139, label %fill_align_prices.exit, label %do.body.i.i94, !llvm.loop !45

fill_align_prices.exit:                           ; preds = %do.body.i.i94
  store i32 0, ptr %align_price_count, align 8, !tbaa !44
  br label %if.end21

if.end21:                                         ; preds = %fill_align_prices.exit, %if.end17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %nice_len1.i = getelementptr inbounds nuw i8, ptr %mf, i64 96
  %97 = load i32, ptr %nice_len1.i, align 8, !tbaa !23, !alias.scope !46, !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %matches_count.i) #6, !noalias !29
  %matches.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 756
  %call.i = call i32 @lzma_mf_find(ptr noundef nonnull %mf, ptr noundef nonnull %matches_count.i, ptr noundef nonnull %matches.i) #6, !noalias !49
  br label %if.end.i

if.end.i:                                         ; preds = %if.end21, %if.end21.thread
  %98 = phi i32 [ %97, %if.end21 ], [ %5, %if.end21.thread ]
  %nice_len1.i329 = phi ptr [ %nice_len1.i, %if.end21 ], [ %nice_len1.i328, %if.end21.thread ]
  %len_main.0.i = phi i32 [ %call.i, %if.end21 ], [ %6, %if.end21.thread ]
  %99 = getelementptr i8, ptr %mf, i64 24
  %mf.val484.i = load i32, ptr %99, align 8, !tbaa !50, !alias.scope !46, !noalias !49
  %100 = getelementptr i8, ptr %mf, i64 36
  %mf.val485.i = load i32, ptr %100, align 4, !tbaa !51, !alias.scope !46, !noalias !49
  %sub.i.i = sub i32 %mf.val485.i, %mf.val484.i
  %add.i140 = add i32 %sub.i.i, 1
  %cmp4.i = icmp ult i32 %add.i140, 273
  br i1 %cmp4.i, label %cond.end.i, label %for.body.i

cond.end.i:                                       ; preds = %if.end.i
  %cmp7.i = icmp samesign ult i32 %add.i140, 2
  br i1 %cmp7.i, label %helper1.exit.thread, label %for.body.i

helper1.exit.thread:                              ; preds = %cond.end.i
  store i32 -1, ptr %back_res, align 4, !tbaa !13, !alias.scope !47, !noalias !52
  store i32 1, ptr %len_res, align 4, !tbaa !13, !alias.scope !48, !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %matches_count.i) #6, !noalias !29
  br label %cleanup45

for.body.i:                                       ; preds = %cond.end.i, %if.end.i
  %cond550.i = phi i32 [ %add.i140, %cond.end.i ], [ 273, %if.end.i ]
  %mf.val486.i = load ptr, ptr %mf, align 8, !tbaa !54, !alias.scope !46, !noalias !49
  %idx.ext.i.i = zext i32 %mf.val484.i to i64
  %add.ptr.i.i = getelementptr inbounds nuw i8, ptr %mf.val486.i, i64 %idx.ext.i.i
  %add.ptr.i141 = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %rep_lens.i) #6, !noalias !29
  %101 = load i8, ptr %add.ptr.i141, align 1, !tbaa !37, !noalias !49
  %cmp30553.i = icmp samesign ult i32 %cond550.i, 3
  %reps.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 740
  %102 = load i32, ptr %reps.i, align 4, !tbaa !13, !noalias !29
  %idx.ext.i142 = zext i32 %102 to i64
  %idx.neg.i143 = sub nsw i64 0, %idx.ext.i142
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i141, i64 %idx.neg.i143
  %add.ptr13.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 -1
  %103 = load i8, ptr %add.ptr13.i, align 1, !tbaa !37, !noalias !49
  %cmp17.not.i = icmp eq i8 %101, %103
  br i1 %cmp17.not.i, label %lor.lhs.false.i, label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %104 = load i8, ptr %add.ptr.i.i, align 1, !tbaa !37, !noalias !49
  %105 = load i8, ptr %add.ptr12.i, align 1, !tbaa !37, !noalias !49
  %cmp23.not.i = icmp ne i8 %104, %105
  %brmerge.i = or i1 %cmp30553.i, %cmp23.not.i
  %.mux.i = select i1 %cmp23.not.i, i32 0, i32 2
  br i1 %brmerge.i, label %cleanup.i, label %land.rhs.preheader.i

land.rhs.preheader.i:                             ; preds = %lor.lhs.false.i
  %wide.trip.count.i = zext nneg i32 %cond550.i to i64
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i, %land.rhs.preheader.i
  %indvars.iv.i170 = phi i64 [ 2, %land.rhs.preheader.i ], [ %indvars.iv.next.i171, %for.inc.i ]
  %arrayidx33.i = getelementptr inbounds nuw i8, ptr %add.ptr.i141, i64 %indvars.iv.i170
  %106 = load i8, ptr %arrayidx33.i, align 1, !tbaa !37, !noalias !49
  %arrayidx36.i = getelementptr inbounds nuw i8, ptr %add.ptr13.i, i64 %indvars.iv.i170
  %107 = load i8, ptr %arrayidx36.i, align 1, !tbaa !37, !noalias !49
  %cmp38.i = icmp eq i8 %106, %107
  br i1 %cmp38.i, label %for.inc.i, label %cleanup.loopexit.split.loop.exit.i

for.inc.i:                                        ; preds = %land.rhs.i
  %indvars.iv.next.i171 = add nuw nsw i64 %indvars.iv.i170, 1
  %exitcond.not.i172 = icmp eq i64 %indvars.iv.next.i171, %wide.trip.count.i
  br i1 %exitcond.not.i172, label %cleanup.i.loopexit, label %land.rhs.i, !llvm.loop !55

cleanup.loopexit.split.loop.exit.i:               ; preds = %land.rhs.i
  %indvars.iv.i170.lcssa = phi i64 [ %indvars.iv.i170, %land.rhs.i ]
  %108 = trunc nuw nsw i64 %indvars.iv.i170.lcssa to i32
  br label %cleanup.i

cleanup.i.loopexit:                               ; preds = %for.inc.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.loopexit, %cleanup.loopexit.split.loop.exit.i, %lor.lhs.false.i, %for.body.i
  %storemerge.i = phi i32 [ %.mux.i, %lor.lhs.false.i ], [ 0, %for.body.i ], [ %108, %cleanup.loopexit.split.loop.exit.i ], [ %cond550.i, %cleanup.i.loopexit ]
  store i32 %storemerge.i, ptr %rep_lens.i, align 4, !tbaa !13, !noalias !29
  %arrayidx.1.i144 = getelementptr inbounds nuw i8, ptr %pcoder, i64 744
  %109 = load i32, ptr %arrayidx.1.i144, align 4, !tbaa !13, !noalias !29
  %idx.ext.1.i = zext i32 %109 to i64
  %idx.neg.1.i = sub nsw i64 0, %idx.ext.1.i
  %add.ptr12.1.i = getelementptr inbounds i8, ptr %add.ptr.i141, i64 %idx.neg.1.i
  %add.ptr13.1.i = getelementptr inbounds i8, ptr %add.ptr12.1.i, i64 -1
  %110 = load i8, ptr %add.ptr13.1.i, align 1, !tbaa !37, !noalias !49
  %cmp17.not.1.i = icmp eq i8 %101, %110
  br i1 %cmp17.not.1.i, label %lor.lhs.false.1.i, label %if.then25.1.i

lor.lhs.false.1.i:                                ; preds = %cleanup.i
  %111 = load i8, ptr %add.ptr.i.i, align 1, !tbaa !37, !noalias !49
  %112 = load i8, ptr %add.ptr12.1.i, align 1, !tbaa !37, !noalias !49
  %cmp23.not.1.i = icmp eq i8 %111, %112
  br i1 %cmp23.not.1.i, label %for.cond29.preheader.1.i, label %if.then25.1.i

if.then25.1.i:                                    ; preds = %lor.lhs.false.1.i, %cleanup.i
  %arrayidx27.1.i = getelementptr inbounds nuw i8, ptr %rep_lens.i, i64 4
  store i32 0, ptr %arrayidx27.1.i, align 4, !tbaa !13, !noalias !29
  br label %cleanup.1.i

for.cond29.preheader.1.i:                         ; preds = %lor.lhs.false.1.i
  br i1 %cmp30553.i, label %for.end.1.i, label %land.rhs.preheader.1.i

land.rhs.preheader.1.i:                           ; preds = %for.cond29.preheader.1.i
  %wide.trip.count.1.i = zext nneg i32 %cond550.i to i64
  br label %land.rhs.1.i

land.rhs.1.i:                                     ; preds = %for.inc.1.i, %land.rhs.preheader.1.i
  %indvars.iv.1.i168 = phi i64 [ 2, %land.rhs.preheader.1.i ], [ %indvars.iv.next.1.i169, %for.inc.1.i ]
  %arrayidx33.1.i = getelementptr inbounds nuw i8, ptr %add.ptr.i141, i64 %indvars.iv.1.i168
  %113 = load i8, ptr %arrayidx33.1.i, align 1, !tbaa !37, !noalias !49
  %arrayidx36.1.i = getelementptr inbounds nuw i8, ptr %add.ptr13.1.i, i64 %indvars.iv.1.i168
  %114 = load i8, ptr %arrayidx36.1.i, align 1, !tbaa !37, !noalias !49
  %cmp38.1.i = icmp eq i8 %113, %114
  br i1 %cmp38.1.i, label %for.inc.1.i, label %for.end.1.loopexit.split.loop.exit596.i

for.inc.1.i:                                      ; preds = %land.rhs.1.i
  %indvars.iv.next.1.i169 = add nuw nsw i64 %indvars.iv.1.i168, 1
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i169, %wide.trip.count.1.i
  br i1 %exitcond.1.not.i, label %for.end.1.i.loopexit, label %land.rhs.1.i, !llvm.loop !55

for.end.1.loopexit.split.loop.exit596.i:          ; preds = %land.rhs.1.i
  %indvars.iv.1.i168.lcssa = phi i64 [ %indvars.iv.1.i168, %land.rhs.1.i ]
  %115 = trunc nuw nsw i64 %indvars.iv.1.i168.lcssa to i32
  br label %for.end.1.i

for.end.1.i.loopexit:                             ; preds = %for.inc.1.i
  br label %for.end.1.i

for.end.1.i:                                      ; preds = %for.end.1.i.loopexit, %for.end.1.loopexit.split.loop.exit596.i, %for.cond29.preheader.1.i
  %len_test.0.lcssa.1.i = phi i32 [ 2, %for.cond29.preheader.1.i ], [ %115, %for.end.1.loopexit.split.loop.exit596.i ], [ %cond550.i, %for.end.1.i.loopexit ]
  %arrayidx42.1.i = getelementptr inbounds nuw i8, ptr %rep_lens.i, i64 4
  store i32 %len_test.0.lcssa.1.i, ptr %arrayidx42.1.i, align 4, !tbaa !13, !noalias !29
  %cmp45.1.i = icmp ugt i32 %len_test.0.lcssa.1.i, %storemerge.i
  %spec.select.1.i = zext i1 %cmp45.1.i to i32
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %for.end.1.i, %if.then25.1.i
  %116 = phi i32 [ 0, %if.then25.1.i ], [ %len_test.0.lcssa.1.i, %for.end.1.i ]
  %rep_max_index.2.1.i = phi i32 [ 0, %if.then25.1.i ], [ %spec.select.1.i, %for.end.1.i ]
  %arrayidx.2.i145 = getelementptr inbounds nuw i8, ptr %pcoder, i64 748
  %117 = load i32, ptr %arrayidx.2.i145, align 4, !tbaa !13, !noalias !29
  %idx.ext.2.i = zext i32 %117 to i64
  %idx.neg.2.i = sub nsw i64 0, %idx.ext.2.i
  %add.ptr12.2.i = getelementptr inbounds i8, ptr %add.ptr.i141, i64 %idx.neg.2.i
  %add.ptr13.2.i = getelementptr inbounds i8, ptr %add.ptr12.2.i, i64 -1
  %118 = load i8, ptr %add.ptr13.2.i, align 1, !tbaa !37, !noalias !49
  %cmp17.not.2.i = icmp eq i8 %101, %118
  br i1 %cmp17.not.2.i, label %lor.lhs.false.2.i, label %if.then25.2.i

lor.lhs.false.2.i:                                ; preds = %cleanup.1.i
  %119 = load i8, ptr %add.ptr.i.i, align 1, !tbaa !37, !noalias !49
  %120 = load i8, ptr %add.ptr12.2.i, align 1, !tbaa !37, !noalias !49
  %cmp23.not.2.i = icmp eq i8 %119, %120
  br i1 %cmp23.not.2.i, label %for.cond29.preheader.2.i, label %if.then25.2.i

if.then25.2.i:                                    ; preds = %lor.lhs.false.2.i, %cleanup.1.i
  %arrayidx27.2.i = getelementptr inbounds nuw i8, ptr %rep_lens.i, i64 8
  store i32 0, ptr %arrayidx27.2.i, align 4, !tbaa !13, !noalias !29
  br label %cleanup.2.i

for.cond29.preheader.2.i:                         ; preds = %lor.lhs.false.2.i
  br i1 %cmp30553.i, label %for.end.2.i, label %land.rhs.preheader.2.i

land.rhs.preheader.2.i:                           ; preds = %for.cond29.preheader.2.i
  %wide.trip.count.2.i = zext nneg i32 %cond550.i to i64
  br label %land.rhs.2.i

land.rhs.2.i:                                     ; preds = %for.inc.2.i, %land.rhs.preheader.2.i
  %indvars.iv.2.i166 = phi i64 [ 2, %land.rhs.preheader.2.i ], [ %indvars.iv.next.2.i167, %for.inc.2.i ]
  %arrayidx33.2.i = getelementptr inbounds nuw i8, ptr %add.ptr.i141, i64 %indvars.iv.2.i166
  %121 = load i8, ptr %arrayidx33.2.i, align 1, !tbaa !37, !noalias !49
  %arrayidx36.2.i = getelementptr inbounds nuw i8, ptr %add.ptr13.2.i, i64 %indvars.iv.2.i166
  %122 = load i8, ptr %arrayidx36.2.i, align 1, !tbaa !37, !noalias !49
  %cmp38.2.i = icmp eq i8 %121, %122
  br i1 %cmp38.2.i, label %for.inc.2.i, label %for.end.2.loopexit.split.loop.exit598.i

for.inc.2.i:                                      ; preds = %land.rhs.2.i
  %indvars.iv.next.2.i167 = add nuw nsw i64 %indvars.iv.2.i166, 1
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next.2.i167, %wide.trip.count.2.i
  br i1 %exitcond.2.not.i, label %for.end.2.i.loopexit, label %land.rhs.2.i, !llvm.loop !55

for.end.2.loopexit.split.loop.exit598.i:          ; preds = %land.rhs.2.i
  %indvars.iv.2.i166.lcssa = phi i64 [ %indvars.iv.2.i166, %land.rhs.2.i ]
  %123 = trunc nuw nsw i64 %indvars.iv.2.i166.lcssa to i32
  br label %for.end.2.i

for.end.2.i.loopexit:                             ; preds = %for.inc.2.i
  br label %for.end.2.i

for.end.2.i:                                      ; preds = %for.end.2.i.loopexit, %for.end.2.loopexit.split.loop.exit598.i, %for.cond29.preheader.2.i
  %len_test.0.lcssa.2.i = phi i32 [ 2, %for.cond29.preheader.2.i ], [ %123, %for.end.2.loopexit.split.loop.exit598.i ], [ %cond550.i, %for.end.2.i.loopexit ]
  %arrayidx42.2.i = getelementptr inbounds nuw i8, ptr %rep_lens.i, i64 8
  store i32 %len_test.0.lcssa.2.i, ptr %arrayidx42.2.i, align 4, !tbaa !13, !noalias !29
  %idxprom43.2.i = zext nneg i32 %rep_max_index.2.1.i to i64
  %arrayidx44.2.i = getelementptr inbounds nuw i32, ptr %rep_lens.i, i64 %idxprom43.2.i
  %124 = load i32, ptr %arrayidx44.2.i, align 4, !tbaa !13, !noalias !29
  %cmp45.2.i = icmp ugt i32 %len_test.0.lcssa.2.i, %124
  %spec.select.2.i = select i1 %cmp45.2.i, i32 2, i32 %rep_max_index.2.1.i
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %for.end.2.i, %if.then25.2.i
  %125 = phi i32 [ 0, %if.then25.2.i ], [ %len_test.0.lcssa.2.i, %for.end.2.i ]
  %rep_max_index.2.2.i = phi i32 [ %rep_max_index.2.1.i, %if.then25.2.i ], [ %spec.select.2.i, %for.end.2.i ]
  %arrayidx.3.i146 = getelementptr inbounds nuw i8, ptr %pcoder, i64 752
  %126 = load i32, ptr %arrayidx.3.i146, align 4, !tbaa !13, !noalias !29
  %idx.ext.3.i = zext i32 %126 to i64
  %idx.neg.3.i = sub nsw i64 0, %idx.ext.3.i
  %add.ptr12.3.i = getelementptr inbounds i8, ptr %add.ptr.i141, i64 %idx.neg.3.i
  %add.ptr13.3.i = getelementptr inbounds i8, ptr %add.ptr12.3.i, i64 -1
  %127 = load i8, ptr %add.ptr13.3.i, align 1, !tbaa !37, !noalias !49
  %cmp17.not.3.i = icmp eq i8 %101, %127
  br i1 %cmp17.not.3.i, label %lor.lhs.false.3.i, label %if.then25.3.i

lor.lhs.false.3.i:                                ; preds = %cleanup.2.i
  %128 = load i8, ptr %add.ptr.i.i, align 1, !tbaa !37, !noalias !49
  %129 = load i8, ptr %add.ptr12.3.i, align 1, !tbaa !37, !noalias !49
  %cmp23.not.3.i = icmp eq i8 %128, %129
  br i1 %cmp23.not.3.i, label %for.cond29.preheader.3.i, label %if.then25.3.i

if.then25.3.i:                                    ; preds = %lor.lhs.false.3.i, %cleanup.2.i
  %arrayidx27.3.i = getelementptr inbounds nuw i8, ptr %rep_lens.i, i64 12
  store i32 0, ptr %arrayidx27.3.i, align 4, !tbaa !13, !noalias !29
  br label %cleanup.3.i

for.cond29.preheader.3.i:                         ; preds = %lor.lhs.false.3.i
  br i1 %cmp30553.i, label %for.end.3.i, label %land.rhs.preheader.3.i

land.rhs.preheader.3.i:                           ; preds = %for.cond29.preheader.3.i
  %wide.trip.count.3.i = zext nneg i32 %cond550.i to i64
  br label %land.rhs.3.i

land.rhs.3.i:                                     ; preds = %for.inc.3.i, %land.rhs.preheader.3.i
  %indvars.iv.3.i164 = phi i64 [ 2, %land.rhs.preheader.3.i ], [ %indvars.iv.next.3.i165, %for.inc.3.i ]
  %arrayidx33.3.i = getelementptr inbounds nuw i8, ptr %add.ptr.i141, i64 %indvars.iv.3.i164
  %130 = load i8, ptr %arrayidx33.3.i, align 1, !tbaa !37, !noalias !49
  %arrayidx36.3.i = getelementptr inbounds nuw i8, ptr %add.ptr13.3.i, i64 %indvars.iv.3.i164
  %131 = load i8, ptr %arrayidx36.3.i, align 1, !tbaa !37, !noalias !49
  %cmp38.3.i = icmp eq i8 %130, %131
  br i1 %cmp38.3.i, label %for.inc.3.i, label %for.end.3.loopexit.split.loop.exit600.i

for.inc.3.i:                                      ; preds = %land.rhs.3.i
  %indvars.iv.next.3.i165 = add nuw nsw i64 %indvars.iv.3.i164, 1
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.next.3.i165, %wide.trip.count.3.i
  br i1 %exitcond.3.not.i, label %for.end.3.i.loopexit, label %land.rhs.3.i, !llvm.loop !55

for.end.3.loopexit.split.loop.exit600.i:          ; preds = %land.rhs.3.i
  %indvars.iv.3.i164.lcssa = phi i64 [ %indvars.iv.3.i164, %land.rhs.3.i ]
  %132 = trunc nuw nsw i64 %indvars.iv.3.i164.lcssa to i32
  br label %for.end.3.i

for.end.3.i.loopexit:                             ; preds = %for.inc.3.i
  br label %for.end.3.i

for.end.3.i:                                      ; preds = %for.end.3.i.loopexit, %for.end.3.loopexit.split.loop.exit600.i, %for.cond29.preheader.3.i
  %len_test.0.lcssa.3.i = phi i32 [ 2, %for.cond29.preheader.3.i ], [ %132, %for.end.3.loopexit.split.loop.exit600.i ], [ %cond550.i, %for.end.3.i.loopexit ]
  %arrayidx42.3.i = getelementptr inbounds nuw i8, ptr %rep_lens.i, i64 12
  store i32 %len_test.0.lcssa.3.i, ptr %arrayidx42.3.i, align 4, !tbaa !13, !noalias !29
  %idxprom43.3.i = zext nneg i32 %rep_max_index.2.2.i to i64
  %arrayidx44.3.i = getelementptr inbounds nuw i32, ptr %rep_lens.i, i64 %idxprom43.3.i
  %133 = load i32, ptr %arrayidx44.3.i, align 4, !tbaa !13, !noalias !29
  %cmp45.3.i = icmp ugt i32 %len_test.0.lcssa.3.i, %133
  %spec.select.3.i = select i1 %cmp45.3.i, i32 3, i32 %rep_max_index.2.2.i
  br label %cleanup.3.i

cleanup.3.i:                                      ; preds = %for.end.3.i, %if.then25.3.i
  %134 = phi i32 [ 0, %if.then25.3.i ], [ %len_test.0.lcssa.3.i, %for.end.3.i ]
  %rep_max_index.2.3.i = phi i32 [ %rep_max_index.2.2.i, %if.then25.3.i ], [ %spec.select.3.i, %for.end.3.i ]
  %idxprom53.i = zext nneg i32 %rep_max_index.2.3.i to i64
  %arrayidx54.i = getelementptr inbounds nuw i32, ptr %rep_lens.i, i64 %idxprom53.i
  %135 = load i32, ptr %arrayidx54.i, align 4, !tbaa !13, !noalias !29
  %cmp55.not.i = icmp ult i32 %135, %98
  br i1 %cmp55.not.i, label %if.end60.i, label %if.then57.i

if.then57.i:                                      ; preds = %cleanup.3.i
  store i32 %rep_max_index.2.3.i, ptr %back_res, align 4, !tbaa !13, !alias.scope !47, !noalias !52
  store i32 %135, ptr %len_res, align 4, !tbaa !13, !alias.scope !48, !noalias !53
  %sub.i = add i32 %135, -1
  %cmp.not.i.i147 = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i.i147, label %helper1.exit.thread333, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then57.i
  %skip.i.i = getelementptr inbounds nuw i8, ptr %mf, i64 56
  %136 = load ptr, ptr %skip.i.i, align 8, !tbaa !56, !alias.scope !46, !noalias !49
  call void %136(ptr noundef %mf, i32 noundef %sub.i) #6, !noalias !49
  %137 = load i32, ptr %read_ahead, align 4, !tbaa !15, !alias.scope !46, !noalias !49
  %add.i.i148 = add i32 %137, %sub.i
  store i32 %add.i.i148, ptr %read_ahead, align 4, !tbaa !15, !alias.scope !46, !noalias !49
  br label %helper1.exit.thread333

if.end60.i:                                       ; preds = %cleanup.3.i
  %cmp61.not.i = icmp ult i32 %len_main.0.i, %98
  br i1 %cmp61.not.i, label %if.end70.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.end60.i
  %138 = load i32, ptr %matches_count.i, align 4, !tbaa !13, !noalias !29
  %sub65.i = add i32 %138, -1
  %idxprom66.i = zext i32 %sub65.i to i64
  %arrayidx67.i = getelementptr inbounds nuw %struct.lzma_match, ptr %pcoder, i64 %idxprom66.i
  %dist.i = getelementptr inbounds nuw i8, ptr %arrayidx67.i, i64 760
  %139 = load i32, ptr %dist.i, align 4, !tbaa !57, !noalias !29
  %add68.i = add i32 %139, 4
  store i32 %add68.i, ptr %back_res, align 4, !tbaa !13, !alias.scope !47, !noalias !52
  store i32 %len_main.0.i, ptr %len_res, align 4, !tbaa !13, !alias.scope !48, !noalias !53
  %sub69.i = add i32 %len_main.0.i, -1
  %cmp.not.i489.i = icmp eq i32 %sub69.i, 0
  br i1 %cmp.not.i489.i, label %helper1.exit.thread333, label %if.then.i490.i

if.then.i490.i:                                   ; preds = %if.then63.i
  %skip.i491.i = getelementptr inbounds nuw i8, ptr %mf, i64 56
  %140 = load ptr, ptr %skip.i491.i, align 8, !tbaa !56, !alias.scope !46, !noalias !49
  call void %140(ptr noundef %mf, i32 noundef %sub69.i) #6, !noalias !49
  %141 = load i32, ptr %read_ahead, align 4, !tbaa !15, !alias.scope !46, !noalias !49
  %add.i493.i = add i32 %141, %sub69.i
  store i32 %add.i493.i, ptr %read_ahead, align 4, !tbaa !15, !alias.scope !46, !noalias !49
  br label %helper1.exit.thread333

if.end70.i:                                       ; preds = %if.end60.i
  %cmp81.not.i = icmp ne i8 %101, %103
  %142 = or i32 %135, %len_main.0.i
  %143 = icmp ult i32 %142, 2
  %or.cond481.i = and i1 %cmp81.not.i, %143
  br i1 %or.cond481.i, label %if.then88.i, label %if.end89.i

if.then88.i:                                      ; preds = %if.end70.i
  store i32 -1, ptr %back_res, align 4, !tbaa !13, !alias.scope !47, !noalias !52
  store i32 1, ptr %len_res, align 4, !tbaa !13, !alias.scope !48, !noalias !53
  br label %helper1.exit.thread333

if.end89.i:                                       ; preds = %if.end70.i
  %state.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 736
  %144 = load i32, ptr %state.i, align 8, !tbaa !59, !noalias !29
  %opts.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 69348
  store i32 %144, ptr %opts.i, align 4, !tbaa !60, !noalias !29
  %pos_mask.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 2960
  %145 = load i32, ptr %pos_mask.i, align 8, !tbaa !61, !noalias !29
  %and.i149 = and i32 %145, %position
  %is_match.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27548
  %idxprom93.i = zext i32 %144 to i64
  %arrayidx94.i = getelementptr inbounds nuw [16 x i16], ptr %is_match.i, i64 %idxprom93.i
  %idxprom95.i = zext i32 %and.i149 to i64
  %arrayidx96.i = getelementptr inbounds nuw i16, ptr %arrayidx94.i, i64 %idxprom95.i
  %146 = load i16, ptr %arrayidx96.i, align 2, !tbaa !36, !noalias !29
  %147 = lshr i16 %146, 4
  %idxprom.i.i150 = zext nneg i16 %147 to i64
  %arrayidx.i.i151 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i.i150
  %148 = load i8, ptr %arrayidx.i.i151, align 1, !tbaa !37, !noalias !29
  %conv1.i.i = zext i8 %148 to i32
  %arrayidx98.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 -2
  %149 = load i8, ptr %arrayidx98.i, align 1, !tbaa !37, !noalias !49
  %conv99.i = zext i8 %149 to i32
  %cmp101.i = icmp ugt i32 %144, 6
  %conv104.i = zext i8 %101 to i32
  %literal.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 2972
  %literal_pos_mask.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 2968
  %150 = load i32, ptr %literal_pos_mask.i.i, align 8, !tbaa !62, !noalias !29
  %and.i.i152 = and i32 %150, %position
  %literal_context_bits.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 2964
  %151 = load i32, ptr %literal_context_bits.i.i, align 4, !tbaa !63, !noalias !29
  %shl.i.i153 = shl i32 %and.i.i152, %151
  %sub.i495.i = sub i32 8, %151
  %shr.i.i154 = lshr i32 %conv99.i, %sub.i495.i
  %add.i496.i = add i32 %shr.i.i154, %shl.i.i153
  %idxprom.i497.i = zext i32 %add.i496.i to i64
  %arrayidx.i498.i = getelementptr inbounds nuw [768 x i16], ptr %literal.i.i, i64 %idxprom.i497.i
  %add2.i.i = or disjoint i32 %conv104.i, 256
  br i1 %cmp101.i, label %do.body.i.preheader.i, label %do.body.i.i.i.preheader

do.body.i.i.i.preheader:                          ; preds = %if.end89.i
  br label %do.body.i.i.i

do.body.i.preheader.i:                            ; preds = %if.end89.i
  %conv103.i = zext i8 %103 to i32
  br label %do.body.i.i158

do.body.i.i.i:                                    ; preds = %do.body.i.i.i, %do.body.i.i.i.preheader
  %price.0.i.i.i = phi i32 [ %add1.i.i.i, %do.body.i.i.i ], [ 0, %do.body.i.i.i.preheader ]
  %symbol.addr.0.i.i.i = phi i32 [ %shr.i.i.i156, %do.body.i.i.i ], [ %add2.i.i, %do.body.i.i.i.preheader ]
  %and.i.i.i155 = and i32 %symbol.addr.0.i.i.i, 1
  %shr.i.i.i156 = lshr i32 %symbol.addr.0.i.i.i, 1
  %idxprom.i.i.i = zext nneg i32 %shr.i.i.i156 to i64
  %arrayidx.i.i.i157 = getelementptr inbounds nuw i16, ptr %arrayidx.i498.i, i64 %idxprom.i.i.i
  %152 = load i16, ptr %arrayidx.i.i.i157, align 2, !tbaa !36, !noalias !29
  %conv.i.i.i.i = zext i16 %152 to i64
  %153 = icmp eq i32 %and.i.i.i155, 0
  %and.i.i.i.i = select i1 %153, i64 0, i64 2032
  %xor.i.i.i.i = xor i64 %and.i.i.i.i, %conv.i.i.i.i
  %shr.i.i.i.i = lshr i64 %xor.i.i.i.i, 4
  %arrayidx.i.i.i.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i.i.i
  %154 = load i8, ptr %arrayidx.i.i.i.i, align 1, !tbaa !37, !noalias !29
  %conv1.i.i.i.i = zext i8 %154 to i32
  %add1.i.i.i = add i32 %price.0.i.i.i, %conv1.i.i.i.i
  %cmp.not.i.i.i = icmp eq i32 %shr.i.i.i156, 1
  br i1 %cmp.not.i.i.i, label %get_literal_price.exit.i.loopexit357, label %do.body.i.i.i, !llvm.loop !38

do.body.i.i158:                                   ; preds = %do.body.i.i158, %do.body.i.preheader.i
  %offset.0.i.i = phi i32 [ %and15.i.i, %do.body.i.i158 ], [ 256, %do.body.i.preheader.i ]
  %price.0.i.i159 = phi i32 [ %add13.i.i, %do.body.i.i158 ], [ 0, %do.body.i.preheader.i ]
  %symbol.addr.0.i.i160 = phi i32 [ %shl14.i.i, %do.body.i.i158 ], [ %add2.i.i, %do.body.i.preheader.i ]
  %match_byte.addr.0.i.i = phi i32 [ %shl3.i.i, %do.body.i.i158 ], [ %conv103.i, %do.body.i.preheader.i ]
  %shl3.i.i = shl i32 %match_byte.addr.0.i.i, 1
  %and4.i.i = and i32 %shl3.i.i, %offset.0.i.i
  %shr6.i.i = lshr i32 %symbol.addr.0.i.i160, 8
  %add5.i.i = add nuw nsw i32 %shr6.i.i, %offset.0.i.i
  %add7.i.i = add nuw nsw i32 %add5.i.i, %and4.i.i
  %idxprom10.i.i = zext nneg i32 %add7.i.i to i64
  %arrayidx11.i.i = getelementptr inbounds nuw i16, ptr %arrayidx.i498.i, i64 %idxprom10.i.i
  %155 = load i16, ptr %arrayidx11.i.i, align 2, !tbaa !36, !noalias !29
  %conv.i.i.i161 = zext i16 %155 to i64
  %.mask.i.i = and i32 %symbol.addr.0.i.i160, 128
  %isneg.not.i.i = icmp eq i32 %.mask.i.i, 0
  %and.i31.i.i = select i1 %isneg.not.i.i, i64 0, i64 2032
  %xor.i.i.i162 = xor i64 %and.i31.i.i, %conv.i.i.i161
  %shr.i32.i.i = lshr i64 %xor.i.i.i162, 4
  %arrayidx.i34.i.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i32.i.i
  %156 = load i8, ptr %arrayidx.i34.i.i, align 1, !tbaa !37, !noalias !29
  %conv1.i.i.i163 = zext i8 %156 to i32
  %add13.i.i = add i32 %price.0.i.i159, %conv1.i.i.i163
  %shl14.i.i = shl nuw nsw i32 %symbol.addr.0.i.i160, 1
  %157 = xor i32 %shl14.i.i, %shl3.i.i
  %not.i.i = xor i32 %157, -1
  %and15.i.i = and i32 %offset.0.i.i, %not.i.i
  %cmp.i.i = icmp samesign ult i32 %symbol.addr.0.i.i160, 32768
  br i1 %cmp.i.i, label %do.body.i.i158, label %get_literal_price.exit.i.loopexit, !llvm.loop !64

get_literal_price.exit.i.loopexit:                ; preds = %do.body.i.i158
  %add13.i.i.lcssa = phi i32 [ %add13.i.i, %do.body.i.i158 ]
  br label %get_literal_price.exit.i

get_literal_price.exit.i.loopexit357:             ; preds = %do.body.i.i.i
  %add1.i.i.i.lcssa = phi i32 [ %add1.i.i.i, %do.body.i.i.i ]
  br label %get_literal_price.exit.i

get_literal_price.exit.i:                         ; preds = %get_literal_price.exit.i.loopexit357, %get_literal_price.exit.i.loopexit
  %price.1.i.i = phi i32 [ %add13.i.i.lcssa, %get_literal_price.exit.i.loopexit ], [ %add1.i.i.i.lcssa, %get_literal_price.exit.i.loopexit357 ]
  %add106.i = add i32 %price.1.i.i, %conv1.i.i
  %price.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 69408
  store i32 %add106.i, ptr %price.i, align 4, !tbaa !65, !noalias !29
  %back_prev.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 69416
  store i32 -1, ptr %back_prev.i.i, align 4, !tbaa !14, !noalias !29
  %prev_1_is_literal.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 69396
  store i8 0, ptr %prev_1_is_literal.i.i, align 4, !tbaa !66, !noalias !29
  %158 = xor i16 %147, 127
  %idxprom.i499.i = zext nneg i16 %158 to i64
  %arrayidx.i500.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i499.i
  %159 = load i8, ptr %arrayidx.i500.i, align 1, !tbaa !37, !noalias !29
  %conv1.i501.i = zext i8 %159 to i32
  %is_rep.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27932
  %arrayidx120.i = getelementptr inbounds nuw i16, ptr %is_rep.i, i64 %idxprom93.i
  %160 = load i16, ptr %arrayidx120.i, align 2, !tbaa !36, !noalias !29
  %161 = lshr i16 %160, 4
  %162 = xor i16 %161, 127
  %idxprom.i502.i = zext nneg i16 %162 to i64
  %arrayidx.i503.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i502.i
  %163 = load i8, ptr %arrayidx.i503.i, align 1, !tbaa !37, !noalias !29
  %conv1.i504.i = zext i8 %163 to i32
  %add122.i = add nuw nsw i32 %conv1.i504.i, %conv1.i501.i
  br i1 %cmp81.not.i, label %if.end143.i, label %if.then127.i

if.then127.i:                                     ; preds = %get_literal_price.exit.i
  %is_rep0.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27956
  %arrayidx.i506.i = getelementptr inbounds nuw i16, ptr %is_rep0.i.i, i64 %idxprom93.i
  %164 = load i16, ptr %arrayidx.i506.i, align 2, !tbaa !36, !noalias !29
  %165 = lshr i16 %164, 4
  %idxprom.i.i507.i = zext nneg i16 %165 to i64
  %arrayidx.i.i508.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i.i507.i
  %166 = load i8, ptr %arrayidx.i.i508.i, align 1, !tbaa !37, !noalias !29
  %conv1.i.i509.i = zext i8 %166 to i32
  %is_rep0_long.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28028
  %arrayidx2.i.i = getelementptr inbounds nuw [16 x i16], ptr %is_rep0_long.i.i, i64 %idxprom93.i
  %arrayidx4.i.i = getelementptr inbounds nuw i16, ptr %arrayidx2.i.i, i64 %idxprom95.i
  %167 = load i16, ptr %arrayidx4.i.i, align 2, !tbaa !36, !noalias !29
  %168 = lshr i16 %167, 4
  %idxprom.i8.i.i = zext nneg i16 %168 to i64
  %arrayidx.i9.i.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i8.i.i
  %169 = load i8, ptr %arrayidx.i9.i.i, align 1, !tbaa !37, !noalias !29
  %conv1.i10.i.i = zext i8 %169 to i32
  %add.i510.i = add nuw nsw i32 %add122.i, %conv1.i.i509.i
  %add130.i = add nuw nsw i32 %add.i510.i, %conv1.i10.i.i
  %cmp134.i = icmp ult i32 %add130.i, %add106.i
  br i1 %cmp134.i, label %if.then136.i, label %if.end143.i

if.then136.i:                                     ; preds = %if.then127.i
  store i32 %add130.i, ptr %price.i, align 4, !tbaa !65, !noalias !29
  store i32 0, ptr %back_prev.i.i, align 4, !tbaa !14, !noalias !29
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then136.i, %if.then127.i, %get_literal_price.exit.i
  %len_main.0..i = call i32 @llvm.umax.i32(i32 %len_main.0.i, i32 %135)
  %cmp154.i = icmp ult i32 %len_main.0..i, 2
  br i1 %cmp154.i, label %if.then156.i, label %for.body167.i

if.then156.i:                                     ; preds = %if.end143.i
  %170 = load i32, ptr %back_prev.i.i, align 4, !tbaa !14, !noalias !29
  store i32 %170, ptr %back_res, align 4, !tbaa !13, !alias.scope !47, !noalias !52
  store i32 1, ptr %len_res, align 4, !tbaa !13, !alias.scope !48, !noalias !53
  br label %helper1.exit.thread333

for.body167.i:                                    ; preds = %if.end143.i
  %pos_prev.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 69412
  store i32 0, ptr %pos_prev.i, align 4, !tbaa !11, !noalias !29
  %backs.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 69376
  store i32 %102, ptr %backs.i, align 4, !tbaa !13, !noalias !29
  %arrayidx174.1.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 69380
  store i32 %109, ptr %arrayidx174.1.i, align 4, !tbaa !13, !noalias !29
  %arrayidx174.2.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 69384
  store i32 %117, ptr %arrayidx174.2.i, align 4, !tbaa !13, !noalias !29
  %arrayidx174.3.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 69388
  store i32 %126, ptr %arrayidx174.3.i, align 4, !tbaa !13, !noalias !29
  %umax.i = zext i32 %len_main.0..i to i64
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %for.body167.i
  %indvars.iv572.i = phi i64 [ %umax.i, %for.body167.i ], [ %indvars.iv.next573.i, %do.body.i ]
  %len.0.i = phi i32 [ %len_main.0..i, %for.body167.i ], [ %dec.i, %do.body.i ]
  %arrayidx181.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i, i64 %indvars.iv572.i
  %price182.i = getelementptr inbounds nuw i8, ptr %arrayidx181.i, i64 16
  store i32 1073741824, ptr %price182.i, align 4, !tbaa !65, !noalias !29
  %dec.i = add i32 %len.0.i, -1
  %cmp183.i = icmp ugt i32 %dec.i, 1
  %indvars.iv.next573.i = add nsw i64 %indvars.iv572.i, -1
  br i1 %cmp183.i, label %do.body.i, label %for.body190.i, !llvm.loop !67

while.cond.preheader.i:                           ; preds = %cleanup232.3.i
  %matches258.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 756
  br label %while.cond.i

for.body190.i:                                    ; preds = %do.body.i
  %is_rep0.i517.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27956
  %arrayidx.i519.i = getelementptr inbounds nuw i16, ptr %is_rep0.i517.i, i64 %idxprom93.i
  %is_rep1.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27980
  %arrayidx13.i.i = getelementptr inbounds nuw i16, ptr %is_rep1.i.i, i64 %idxprom93.i
  %is_rep2.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28004
  %arrayidx23.i.i = getelementptr inbounds nuw i16, ptr %is_rep2.i.i, i64 %idxprom93.i
  %prices.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 48716
  %arrayidx.i535.i = getelementptr inbounds nuw [272 x i32], ptr %prices.i.i, i64 %idxprom95.i
  %cmp193.i = icmp ult i32 %storemerge.i, 2
  br i1 %cmp193.i, label %cleanup232.i, label %get_pure_rep_price.exit.i

get_pure_rep_price.exit.i:                        ; preds = %for.body190.i
  %is_rep0_long.i529.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28028
  %arrayidx2.i530.i = getelementptr inbounds nuw [16 x i16], ptr %is_rep0_long.i529.i, i64 %idxprom93.i
  %arrayidx4.i532.i = getelementptr inbounds nuw i16, ptr %arrayidx2.i530.i, i64 %idxprom95.i
  %171 = load i16, ptr %arrayidx4.i532.i, align 2, !tbaa !36, !noalias !29
  %172 = lshr i16 %171, 4
  %173 = xor i16 %172, 127
  %idxprom.i43.i.i = zext nneg i16 %173 to i64
  %arrayidx.i44.i.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i43.i.i
  %174 = load i8, ptr %arrayidx.i44.i.i, align 1, !tbaa !37, !noalias !29
  %conv1.i45.i.i = zext i8 %174 to i32
  %175 = load i16, ptr %arrayidx.i519.i, align 2, !tbaa !36, !noalias !29
  %176 = lshr i16 %175, 4
  %idxprom.i.i526.i = zext nneg i16 %176 to i64
  %arrayidx.i.i527.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i.i526.i
  %177 = load i8, ptr %arrayidx.i.i527.i, align 1, !tbaa !37, !noalias !29
  %conv1.i.i528.i = zext i8 %177 to i32
  %add.i533.i = add nuw nsw i32 %add122.i, %conv1.i45.i.i
  %add200.i = add nuw nsw i32 %add.i533.i, %conv1.i.i528.i
  %178 = zext i32 %storemerge.i to i64
  br label %do.body201.i

do.body201.i:                                     ; preds = %if.end226.i, %get_pure_rep_price.exit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end226.i ], [ %178, %get_pure_rep_price.exit.i ]
  %179 = add nsw i64 %indvars.iv, -2
  %arrayidx2.i537.i = getelementptr inbounds nuw i32, ptr %arrayidx.i535.i, i64 %179
  %180 = load i32, ptr %arrayidx2.i537.i, align 4, !tbaa !13, !noalias !29
  %add203.i = add i32 %add200.i, %180
  %arrayidx206.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i, i64 %indvars.iv
  %price207.i = getelementptr inbounds nuw i8, ptr %arrayidx206.i, i64 16
  %181 = load i32, ptr %price207.i, align 4, !tbaa !65, !noalias !29
  %cmp208.i = icmp ult i32 %add203.i, %181
  br i1 %cmp208.i, label %if.then210.i, label %if.end226.i

if.then210.i:                                     ; preds = %do.body201.i
  store i32 %add203.i, ptr %price207.i, align 4, !tbaa !65, !noalias !29
  %pos_prev218.i = getelementptr inbounds nuw i8, ptr %arrayidx206.i, i64 20
  store i32 0, ptr %pos_prev218.i, align 4, !tbaa !11, !noalias !29
  %back_prev222.i = getelementptr inbounds nuw i8, ptr %arrayidx206.i, i64 24
  store i32 0, ptr %back_prev222.i, align 4, !tbaa !14, !noalias !29
  %prev_1_is_literal.i = getelementptr inbounds nuw i8, ptr %arrayidx206.i, i64 4
  store i8 0, ptr %prev_1_is_literal.i, align 4, !tbaa !66, !noalias !29
  br label %if.end226.i

if.end226.i:                                      ; preds = %if.then210.i, %do.body201.i
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars = trunc i64 %indvars.iv.next to i32
  %cmp229.i = icmp ugt i32 %indvars, 1
  br i1 %cmp229.i, label %do.body201.i, label %cleanup232.i.loopexit, !llvm.loop !68

cleanup232.i.loopexit:                            ; preds = %if.end226.i
  br label %cleanup232.i

cleanup232.i:                                     ; preds = %cleanup232.i.loopexit, %for.body190.i
  %cmp193.1.i = icmp ult i32 %116, 2
  br i1 %cmp193.1.i, label %cleanup232.1.i, label %get_pure_rep_price.exit.1.i

get_pure_rep_price.exit.1.i:                      ; preds = %cleanup232.i
  %182 = load i16, ptr %arrayidx13.i.i, align 2, !tbaa !36, !noalias !29
  %183 = lshr i16 %182, 4
  %idxprom.i49.i.1.i = zext nneg i16 %183 to i64
  %arrayidx.i50.i.1.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i49.i.1.i
  %184 = load i8, ptr %arrayidx.i50.i.1.i, align 1, !tbaa !37, !noalias !29
  %conv1.i51.i.1.i = zext i8 %184 to i32
  %185 = load i16, ptr %arrayidx.i519.i, align 2, !tbaa !36, !noalias !29
  %186 = lshr i16 %185, 4
  %187 = xor i16 %186, 127
  %idxprom.i46.i.1.i = zext nneg i16 %187 to i64
  %arrayidx.i47.i.1.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i46.i.1.i
  %188 = load i8, ptr %arrayidx.i47.i.1.i, align 1, !tbaa !37, !noalias !29
  %conv1.i48.i.1.i = zext i8 %188 to i32
  %add15.i.1.i = add nuw nsw i32 %add122.i, %conv1.i51.i.1.i
  %add200.1.i = add nuw nsw i32 %add15.i.1.i, %conv1.i48.i.1.i
  %189 = zext i32 %116 to i64
  br label %do.body201.1.i

do.body201.1.i:                                   ; preds = %if.end226.1.i, %get_pure_rep_price.exit.1.i
  %indvars.iv370 = phi i64 [ %indvars.iv.next371, %if.end226.1.i ], [ %189, %get_pure_rep_price.exit.1.i ]
  %190 = add nsw i64 %indvars.iv370, -2
  %arrayidx2.i537.1.i = getelementptr inbounds nuw i32, ptr %arrayidx.i535.i, i64 %190
  %191 = load i32, ptr %arrayidx2.i537.1.i, align 4, !tbaa !13, !noalias !29
  %add203.1.i = add i32 %add200.1.i, %191
  %arrayidx206.1.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i, i64 %indvars.iv370
  %price207.1.i = getelementptr inbounds nuw i8, ptr %arrayidx206.1.i, i64 16
  %192 = load i32, ptr %price207.1.i, align 4, !tbaa !65, !noalias !29
  %cmp208.1.i = icmp ult i32 %add203.1.i, %192
  br i1 %cmp208.1.i, label %if.then210.1.i, label %if.end226.1.i

if.then210.1.i:                                   ; preds = %do.body201.1.i
  store i32 %add203.1.i, ptr %price207.1.i, align 4, !tbaa !65, !noalias !29
  %pos_prev218.1.i = getelementptr inbounds nuw i8, ptr %arrayidx206.1.i, i64 20
  store i32 0, ptr %pos_prev218.1.i, align 4, !tbaa !11, !noalias !29
  %back_prev222.1.i = getelementptr inbounds nuw i8, ptr %arrayidx206.1.i, i64 24
  store i32 1, ptr %back_prev222.1.i, align 4, !tbaa !14, !noalias !29
  %prev_1_is_literal.1.i = getelementptr inbounds nuw i8, ptr %arrayidx206.1.i, i64 4
  store i8 0, ptr %prev_1_is_literal.1.i, align 4, !tbaa !66, !noalias !29
  br label %if.end226.1.i

if.end226.1.i:                                    ; preds = %if.then210.1.i, %do.body201.1.i
  %indvars.iv.next371 = add nsw i64 %indvars.iv370, -1
  %indvars373 = trunc i64 %indvars.iv.next371 to i32
  %cmp229.1.i = icmp ugt i32 %indvars373, 1
  br i1 %cmp229.1.i, label %do.body201.1.i, label %cleanup232.1.i.loopexit, !llvm.loop !68

cleanup232.1.i.loopexit:                          ; preds = %if.end226.1.i
  br label %cleanup232.1.i

cleanup232.1.i:                                   ; preds = %cleanup232.1.i.loopexit, %cleanup232.i
  %cmp193.2.i = icmp ult i32 %125, 2
  br i1 %cmp193.2.i, label %cleanup232.2.i, label %get_pure_rep_price.exit.2.i

get_pure_rep_price.exit.2.i:                      ; preds = %cleanup232.1.i
  %193 = load i16, ptr %arrayidx13.i.i, align 2, !tbaa !36, !noalias !29
  %194 = lshr i16 %193, 4
  %195 = xor i16 %194, 127
  %idxprom.i52.i.2.i = zext nneg i16 %195 to i64
  %arrayidx.i53.i.2.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i52.i.2.i
  %196 = load i8, ptr %arrayidx.i53.i.2.i, align 1, !tbaa !37, !noalias !29
  %conv1.i54.i.2.i = zext i8 %196 to i32
  %197 = load i16, ptr %arrayidx.i519.i, align 2, !tbaa !36, !noalias !29
  %198 = lshr i16 %197, 4
  %199 = xor i16 %198, 127
  %idxprom.i46.i.2.i = zext nneg i16 %199 to i64
  %arrayidx.i47.i.2.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i46.i.2.i
  %200 = load i8, ptr %arrayidx.i47.i.2.i, align 1, !tbaa !37, !noalias !29
  %conv1.i48.i.2.i = zext i8 %200 to i32
  %201 = load i16, ptr %arrayidx23.i.i, align 2, !tbaa !36, !noalias !29
  %202 = lshr i16 %201, 4
  %idxprom.i55.i.2.i = zext nneg i16 %202 to i64
  %arrayidx.i56.i.2.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i55.i.2.i
  %203 = load i8, ptr %arrayidx.i56.i.2.i, align 1, !tbaa !37, !noalias !29
  %conv1.i57.i.2.i = zext i8 %203 to i32
  %add21.i.2.i = add nuw nsw i32 %add122.i, %conv1.i54.i.2.i
  %add25.i.2.i = add nuw nsw i32 %add21.i.2.i, %conv1.i48.i.2.i
  %add200.2.i = add nuw nsw i32 %add25.i.2.i, %conv1.i57.i.2.i
  %204 = zext i32 %125 to i64
  br label %do.body201.2.i

do.body201.2.i:                                   ; preds = %if.end226.2.i, %get_pure_rep_price.exit.2.i
  %indvars.iv375 = phi i64 [ %indvars.iv.next376, %if.end226.2.i ], [ %204, %get_pure_rep_price.exit.2.i ]
  %205 = add nsw i64 %indvars.iv375, -2
  %arrayidx2.i537.2.i = getelementptr inbounds nuw i32, ptr %arrayidx.i535.i, i64 %205
  %206 = load i32, ptr %arrayidx2.i537.2.i, align 4, !tbaa !13, !noalias !29
  %add203.2.i = add i32 %add200.2.i, %206
  %arrayidx206.2.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i, i64 %indvars.iv375
  %price207.2.i = getelementptr inbounds nuw i8, ptr %arrayidx206.2.i, i64 16
  %207 = load i32, ptr %price207.2.i, align 4, !tbaa !65, !noalias !29
  %cmp208.2.i = icmp ult i32 %add203.2.i, %207
  br i1 %cmp208.2.i, label %if.then210.2.i, label %if.end226.2.i

if.then210.2.i:                                   ; preds = %do.body201.2.i
  store i32 %add203.2.i, ptr %price207.2.i, align 4, !tbaa !65, !noalias !29
  %pos_prev218.2.i = getelementptr inbounds nuw i8, ptr %arrayidx206.2.i, i64 20
  store i32 0, ptr %pos_prev218.2.i, align 4, !tbaa !11, !noalias !29
  %back_prev222.2.i = getelementptr inbounds nuw i8, ptr %arrayidx206.2.i, i64 24
  store i32 2, ptr %back_prev222.2.i, align 4, !tbaa !14, !noalias !29
  %prev_1_is_literal.2.i = getelementptr inbounds nuw i8, ptr %arrayidx206.2.i, i64 4
  store i8 0, ptr %prev_1_is_literal.2.i, align 4, !tbaa !66, !noalias !29
  br label %if.end226.2.i

if.end226.2.i:                                    ; preds = %if.then210.2.i, %do.body201.2.i
  %indvars.iv.next376 = add nsw i64 %indvars.iv375, -1
  %indvars378 = trunc i64 %indvars.iv.next376 to i32
  %cmp229.2.i = icmp ugt i32 %indvars378, 1
  br i1 %cmp229.2.i, label %do.body201.2.i, label %cleanup232.2.i.loopexit, !llvm.loop !68

cleanup232.2.i.loopexit:                          ; preds = %if.end226.2.i
  br label %cleanup232.2.i

cleanup232.2.i:                                   ; preds = %cleanup232.2.i.loopexit, %cleanup232.1.i
  %cmp193.3.i = icmp ult i32 %134, 2
  br i1 %cmp193.3.i, label %cleanup232.3.i, label %get_pure_rep_price.exit.3.i

get_pure_rep_price.exit.3.i:                      ; preds = %cleanup232.2.i
  %208 = load i16, ptr %arrayidx13.i.i, align 2, !tbaa !36, !noalias !29
  %209 = lshr i16 %208, 4
  %210 = xor i16 %209, 127
  %idxprom.i52.i.3.i = zext nneg i16 %210 to i64
  %arrayidx.i53.i.3.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i52.i.3.i
  %211 = load i8, ptr %arrayidx.i53.i.3.i, align 1, !tbaa !37, !noalias !29
  %conv1.i54.i.3.i = zext i8 %211 to i32
  %212 = load i16, ptr %arrayidx.i519.i, align 2, !tbaa !36, !noalias !29
  %213 = lshr i16 %212, 4
  %214 = xor i16 %213, 127
  %idxprom.i46.i.3.i = zext nneg i16 %214 to i64
  %arrayidx.i47.i.3.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i46.i.3.i
  %215 = load i8, ptr %arrayidx.i47.i.3.i, align 1, !tbaa !37, !noalias !29
  %conv1.i48.i.3.i = zext i8 %215 to i32
  %216 = load i16, ptr %arrayidx23.i.i, align 2, !tbaa !36, !noalias !29
  %217 = lshr i16 %216, 4
  %218 = xor i16 %217, 127
  %idxprom.i55.i.3.i = zext nneg i16 %218 to i64
  %arrayidx.i56.i.3.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i55.i.3.i
  %219 = load i8, ptr %arrayidx.i56.i.3.i, align 1, !tbaa !37, !noalias !29
  %conv1.i57.i.3.i = zext i8 %219 to i32
  %add21.i.3.i = add nuw nsw i32 %add122.i, %conv1.i54.i.3.i
  %add25.i.3.i = add nuw nsw i32 %add21.i.3.i, %conv1.i48.i.3.i
  %add200.3.i = add nuw nsw i32 %add25.i.3.i, %conv1.i57.i.3.i
  %220 = zext i32 %134 to i64
  br label %do.body201.3.i

do.body201.3.i:                                   ; preds = %if.end226.3.i, %get_pure_rep_price.exit.3.i
  %indvars.iv380 = phi i64 [ %indvars.iv.next381, %if.end226.3.i ], [ %220, %get_pure_rep_price.exit.3.i ]
  %221 = add nsw i64 %indvars.iv380, -2
  %arrayidx2.i537.3.i = getelementptr inbounds nuw i32, ptr %arrayidx.i535.i, i64 %221
  %222 = load i32, ptr %arrayidx2.i537.3.i, align 4, !tbaa !13, !noalias !29
  %add203.3.i = add i32 %add200.3.i, %222
  %arrayidx206.3.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i, i64 %indvars.iv380
  %price207.3.i = getelementptr inbounds nuw i8, ptr %arrayidx206.3.i, i64 16
  %223 = load i32, ptr %price207.3.i, align 4, !tbaa !65, !noalias !29
  %cmp208.3.i = icmp ult i32 %add203.3.i, %223
  br i1 %cmp208.3.i, label %if.then210.3.i, label %if.end226.3.i

if.then210.3.i:                                   ; preds = %do.body201.3.i
  store i32 %add203.3.i, ptr %price207.3.i, align 4, !tbaa !65, !noalias !29
  %pos_prev218.3.i = getelementptr inbounds nuw i8, ptr %arrayidx206.3.i, i64 20
  store i32 0, ptr %pos_prev218.3.i, align 4, !tbaa !11, !noalias !29
  %back_prev222.3.i = getelementptr inbounds nuw i8, ptr %arrayidx206.3.i, i64 24
  store i32 3, ptr %back_prev222.3.i, align 4, !tbaa !14, !noalias !29
  %prev_1_is_literal.3.i = getelementptr inbounds nuw i8, ptr %arrayidx206.3.i, i64 4
  store i8 0, ptr %prev_1_is_literal.3.i, align 4, !tbaa !66, !noalias !29
  br label %if.end226.3.i

if.end226.3.i:                                    ; preds = %if.then210.3.i, %do.body201.3.i
  %indvars.iv.next381 = add nsw i64 %indvars.iv380, -1
  %indvars383 = trunc i64 %indvars.iv.next381 to i32
  %cmp229.3.i = icmp ugt i32 %indvars383, 1
  br i1 %cmp229.3.i, label %do.body201.3.i, label %cleanup232.3.i.loopexit, !llvm.loop !68

cleanup232.3.i.loopexit:                          ; preds = %if.end226.3.i
  br label %cleanup232.3.i

cleanup232.3.i:                                   ; preds = %cleanup232.3.i.loopexit, %cleanup232.2.i
  %idxprom.i513.i = zext nneg i16 %161 to i64
  %arrayidx.i514.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i513.i
  %224 = load i8, ptr %arrayidx.i514.i, align 1, !tbaa !37, !noalias !29
  %conv1.i515.i = zext i8 %224 to i32
  %225 = call i32 @llvm.umax.i32(i32 %storemerge.i, i32 1)
  %cond253.i = add i32 %225, 1
  %cmp254.not.i = icmp ugt i32 %cond253.i, %len_main.0.i
  br i1 %cmp254.not.i, label %helper1.exit, label %while.cond.preheader.i

while.cond.i:                                     ; preds = %while.cond.i, %while.cond.preheader.i
  %i257.0.i = phi i32 [ %inc264.i, %while.cond.i ], [ 0, %while.cond.preheader.i ]
  %idxprom259.i = zext i32 %i257.0.i to i64
  %arrayidx260.i = getelementptr inbounds nuw %struct.lzma_match, ptr %matches258.i, i64 %idxprom259.i
  %226 = load i32, ptr %arrayidx260.i, align 4, !tbaa !69, !noalias !29
  %cmp262.i = icmp ugt i32 %cond253.i, %226
  %inc264.i = add i32 %i257.0.i, 1
  br i1 %cmp262.i, label %while.cond.i, label %for.cond265.preheader.i, !llvm.loop !70

for.cond265.preheader.i:                          ; preds = %while.cond.i
  %i257.0.i.lcssa = phi i32 [ %i257.0.i, %while.cond.i ]
  %prices.i.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 30212
  %arrayidx.i.i543.i = getelementptr inbounds nuw [272 x i32], ptr %prices.i.i.i, i64 %idxprom95.i
  %add11.i.i = add nuw nsw i32 %conv1.i515.i, %conv1.i501.i
  %227 = load i32, ptr %matches_count.i, align 4, !noalias !29
  %pos_slot_prices.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 66192
  %align_prices.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 69272
  %distances_prices.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 67216
  br label %for.cond265.i

for.cond265.i:                                    ; preds = %for.inc316.i, %for.cond265.preheader.i
  %len.1.i = phi i32 [ %inc317.i, %for.inc316.i ], [ %cond253.i, %for.cond265.preheader.i ]
  %i257.1.i = phi i32 [ %i257.3.i, %for.inc316.i ], [ %i257.0.i.lcssa, %for.cond265.preheader.i ]
  %idxprom268.i = zext i32 %i257.1.i to i64
  %arrayidx269.i = getelementptr inbounds nuw %struct.lzma_match, ptr %matches258.i, i64 %idxprom268.i
  %dist270.i = getelementptr inbounds nuw i8, ptr %arrayidx269.i, i64 4
  %228 = load i32, ptr %dist270.i, align 4, !tbaa !57, !noalias !29
  %229 = call i32 @llvm.umin.i32(i32 %len.1.i, i32 5)
  %cond.i.i = add nsw i32 %229, -2
  %cmp1.i.i = icmp ult i32 %228, 128
  br i1 %cmp1.i.i, label %if.then.i545.i, label %if.else.i538.i

if.then.i545.i:                                   ; preds = %for.cond265.i
  %idxprom.i546.i = zext i32 %cond.i.i to i64
  %arrayidx.i547.i = getelementptr inbounds nuw [128 x i32], ptr %distances_prices.i.i, i64 %idxprom.i546.i
  %idxprom2.i.i = zext nneg i32 %228 to i64
  %arrayidx3.i.i = getelementptr inbounds nuw i32, ptr %arrayidx.i547.i, i64 %idxprom2.i.i
  %230 = load i32, ptr %arrayidx3.i.i, align 4, !tbaa !13, !noalias !29
  br label %get_pos_len_price.exit.i

if.else.i538.i:                                   ; preds = %for.cond265.i
  %cmp.i.i.i = icmp ult i32 %228, 524288
  %cmp1.i.i.i = icmp sgt i32 %228, -1
  %..i.i.i = select i1 %cmp1.i.i.i, i32 18, i32 30
  %.21.i.i.i = select i1 %cmp1.i.i.i, i64 36, i64 60
  %.sink20.i.i.i = select i1 %cmp.i.i.i, i32 6, i32 %..i.i.i
  %.sink.i.i.i = select i1 %cmp.i.i.i, i64 12, i64 %.21.i.i.i
  %shr10.i.i.i = lshr i32 %228, %.sink20.i.i.i
  %idxprom11.i.i.i = zext nneg i32 %shr10.i.i.i to i64
  %arrayidx12.i.i.i = getelementptr inbounds nuw i8, ptr @lzma_fastpos, i64 %idxprom11.i.i.i
  %231 = load i8, ptr %arrayidx12.i.i.i, align 1, !tbaa !37, !noalias !29
  %conv13.i.i.i = zext i8 %231 to i64
  %idxprom4.i.i = zext i32 %cond.i.i to i64
  %arrayidx5.i.i = getelementptr inbounds nuw [64 x i32], ptr %pos_slot_prices.i.i, i64 %idxprom4.i.i
  %232 = getelementptr inbounds nuw i32, ptr %arrayidx5.i.i, i64 %.sink.i.i.i
  %arrayidx7.i.i = getelementptr inbounds nuw i32, ptr %232, i64 %conv13.i.i.i
  %233 = load i32, ptr %arrayidx7.i.i, align 4, !tbaa !13, !noalias !29
  %and.i539.i = and i32 %228, 15
  %idxprom8.i.i = zext nneg i32 %and.i539.i to i64
  %arrayidx9.i.i = getelementptr inbounds nuw i32, ptr %align_prices.i.i, i64 %idxprom8.i.i
  %234 = load i32, ptr %arrayidx9.i.i, align 4, !tbaa !13, !noalias !29
  %add.i540.i = add i32 %234, %233
  br label %get_pos_len_price.exit.i

get_pos_len_price.exit.i:                         ; preds = %if.else.i538.i, %if.then.i545.i
  %price.0.i541.i = phi i32 [ %230, %if.then.i545.i ], [ %add.i540.i, %if.else.i538.i ]
  %sub.i.i544.i = add i32 %len.1.i, -2
  %idxprom1.i.i.i = zext i32 %sub.i.i544.i to i64
  %arrayidx2.i.i.i = getelementptr inbounds nuw i32, ptr %arrayidx.i.i543.i, i64 %idxprom1.i.i.i
  %235 = load i32, ptr %arrayidx2.i.i.i, align 4, !tbaa !13, !noalias !29
  %add244.i = add i32 %add11.i.i, %price.0.i541.i
  %add273.i = add i32 %add244.i, %235
  %idxprom275.i = zext i32 %len.1.i to i64
  %arrayidx276.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i, i64 %idxprom275.i
  %price277.i = getelementptr inbounds nuw i8, ptr %arrayidx276.i, i64 16
  %236 = load i32, ptr %price277.i, align 4, !tbaa !65, !noalias !29
  %cmp278.i = icmp ult i32 %add273.i, %236
  br i1 %cmp278.i, label %if.then280.i, label %if.end298.i

if.then280.i:                                     ; preds = %get_pos_len_price.exit.i
  store i32 %add273.i, ptr %price277.i, align 4, !tbaa !65, !noalias !29
  %pos_prev288.i = getelementptr inbounds nuw i8, ptr %arrayidx276.i, i64 20
  store i32 0, ptr %pos_prev288.i, align 4, !tbaa !11, !noalias !29
  %add289.i = add i32 %228, 4
  %back_prev293.i = getelementptr inbounds nuw i8, ptr %arrayidx276.i, i64 24
  store i32 %add289.i, ptr %back_prev293.i, align 4, !tbaa !14, !noalias !29
  %prev_1_is_literal297.i = getelementptr inbounds nuw i8, ptr %arrayidx276.i, i64 4
  store i8 0, ptr %prev_1_is_literal297.i, align 4, !tbaa !66, !noalias !29
  br label %if.end298.i

if.end298.i:                                      ; preds = %if.then280.i, %get_pos_len_price.exit.i
  %237 = load i32, ptr %arrayidx269.i, align 4, !tbaa !69, !noalias !29
  %cmp303.i = icmp ne i32 %len.1.i, %237
  %inc306.i = add i32 %i257.1.i, 1
  %cmp307.i = icmp ne i32 %inc306.i, %227
  %.not.i = select i1 %cmp303.i, i1 true, i1 %cmp307.i
  br i1 %.not.i, label %for.inc316.i, label %helper1.exit.loopexit

for.inc316.i:                                     ; preds = %if.end298.i
  %i257.3.i = select i1 %cmp303.i, i32 %i257.1.i, i32 %inc306.i
  %inc317.i = add i32 %len.1.i, 1
  br label %for.cond265.i

helper1.exit.thread333:                           ; preds = %if.then156.i, %if.then88.i, %if.then.i490.i, %if.then63.i, %if.then.i.i, %if.then57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %rep_lens.i) #6, !noalias !29
  call void @llvm.lifetime.end.p0(ptr nonnull %matches_count.i) #6, !noalias !29
  br label %cleanup45

helper1.exit.loopexit:                            ; preds = %if.end298.i
  br label %helper1.exit

helper1.exit:                                     ; preds = %helper1.exit.loopexit, %cleanup232.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %rep_lens.i) #6, !noalias !29
  call void @llvm.lifetime.end.p0(ptr nonnull %matches_count.i) #6, !noalias !29
  %cmp22 = icmp eq i32 %len_main.0..i, -1
  br i1 %cmp22, label %cleanup45, label %if.end24

if.end24:                                         ; preds = %helper1.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %reps) #6
  %reps25 = getelementptr inbounds nuw i8, ptr %pcoder, i64 740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %reps, ptr noundef nonnull align 4 dereferenceable(16) %reps25, i64 16, i1 false)
  %matches_count = getelementptr inbounds nuw i8, ptr %pcoder, i64 2948
  %matches = getelementptr inbounds nuw i8, ptr %pcoder, i64 756
  br i1 true, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end24
  %longest_match_length = getelementptr inbounds nuw i8, ptr %pcoder, i64 2952
  %opts.i178 = getelementptr inbounds nuw i8, ptr %pcoder, i64 69348
  %arrayidx152.i = getelementptr inbounds nuw i8, ptr %reps, i64 4
  %arrayidx152.1.i = getelementptr inbounds nuw i8, ptr %reps, i64 8
  %arrayidx152.2.i = getelementptr inbounds nuw i8, ptr %reps, i64 12
  %arrayidx168.1.i = getelementptr inbounds nuw i8, ptr %reps, i64 4
  %arrayidx168.2.i = getelementptr inbounds nuw i8, ptr %reps, i64 8
  %arrayidx168.3.i = getelementptr inbounds nuw i8, ptr %reps, i64 12
  %pos_mask.i188 = getelementptr inbounds nuw i8, ptr %pcoder, i64 2960
  %is_match.i190 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27548
  %literal.i.i195 = getelementptr inbounds nuw i8, ptr %pcoder, i64 2972
  %literal_pos_mask.i.i196 = getelementptr inbounds nuw i8, ptr %pcoder, i64 2968
  %literal_context_bits.i.i198 = getelementptr inbounds nuw i8, ptr %pcoder, i64 2964
  %is_rep.i221 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27932
  %is_rep0.i.i267 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27956
  %is_rep0_long.i.i268 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28028
  %prices.i.i.i264 = getelementptr inbounds nuw i8, ptr %pcoder, i64 48716
  %is_rep0.i.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27956
  %is_rep0_long.i.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28028
  %is_rep0.i1383.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27956
  %is_rep1.i.i222 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27980
  %is_rep2.i.i224 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28004
  %is_rep0_long.i1395.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28028
  %prices.i.i226 = getelementptr inbounds nuw i8, ptr %pcoder, i64 48716
  %arrayidx576.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27708
  %arrayidx583.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27942
  %arrayidx.i5.i1464.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27966
  %arrayidx2.i6.i1469.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28188
  %prices.i.i1483.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 30212
  %pos_slot_prices.i.i229 = getelementptr inbounds nuw i8, ptr %pcoder, i64 66192
  %align_prices.i.i230 = getelementptr inbounds nuw i8, ptr %pcoder, i64 69272
  %distances_prices.i.i231 = getelementptr inbounds nuw i8, ptr %pcoder, i64 67216
  %arrayidx825.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27676
  %arrayidx832.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27940
  %arrayidx.i5.i1546.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27964
  %arrayidx2.i6.i1551.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28156
  %scevgep = getelementptr nuw i8, ptr %reps, i64 4
  br label %for.body

for.body:                                         ; preds = %helper2.exit, %for.body.lr.ph
  %indvars.iv391 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next392, %helper2.exit ]
  %indvars.iv385 = phi i32 [ 4094, %for.body.lr.ph ], [ %indvars.iv.next386, %helper2.exit ]
  %len_end.0350 = phi i32 [ %len_main.0..i, %for.body.lr.ph ], [ %retval.0.i, %helper2.exit ]
  %238 = zext i32 %indvars.iv385 to i64
  %call29 = call i32 @lzma_mf_find(ptr noundef %mf, ptr noundef nonnull %matches_count, ptr noundef nonnull %matches) #6
  store i32 %call29, ptr %longest_match_length, align 8, !tbaa !28
  %239 = load i32, ptr %nice_len1.i329, align 8, !tbaa !23
  %cmp31.not = icmp ult i32 %call29, %239
  %240 = trunc nuw i64 %indvars.iv391 to i32
  br i1 %cmp31.not, label %if.end33, label %for.end.loopexit

if.end33:                                         ; preds = %for.body
  %mf.val90 = load ptr, ptr %mf, align 8, !tbaa !54
  %mf.val91 = load i32, ptr %99, align 8, !tbaa !50
  %idx.ext.i173 = zext i32 %mf.val91 to i64
  %add.ptr.i174 = getelementptr inbounds nuw i8, ptr %mf.val90, i64 %idx.ext.i173
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i174, i64 -1
  %241 = trunc nuw i64 %indvars.iv391 to i32
  %add = add i32 %241, %position
  %mf.val89 = load i32, ptr %100, align 4, !tbaa !51
  %reass.sub = sub i32 %mf.val89, %mf.val91
  %add38 = add i32 %reass.sub, 1
  %242 = trunc nuw i64 %indvars.iv391 to i32
  %sub39 = sub i32 4095, %242
  %spec.select = call i32 @llvm.umin.i32(i32 %add38, i32 %sub39)
  %243 = load i32, ptr %matches_count, align 4, !tbaa !33
  %arrayidx.i179 = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %indvars.iv391
  %pos_prev2.i = getelementptr inbounds nuw i8, ptr %arrayidx.i179, i64 20
  %244 = load i32, ptr %pos_prev2.i, align 4, !tbaa !11
  %prev_1_is_literal.i180 = getelementptr inbounds nuw i8, ptr %arrayidx.i179, i64 4
  %245 = load i8, ptr %prev_1_is_literal.i180, align 4, !tbaa !66, !range !71, !noundef !72
  %loadedv.i = trunc nuw i8 %245 to i1
  br i1 %loadedv.i, label %if.then.i309, label %if.end44.thread.i

if.then.i309:                                     ; preds = %if.end33
  %prev_2.i = getelementptr inbounds nuw i8, ptr %arrayidx.i179, i64 5
  %246 = load i8, ptr %prev_2.i, align 1, !tbaa !73, !range !71, !noundef !72
  %loadedv9.i = trunc nuw i8 %246 to i1
  br i1 %loadedv9.i, label %if.then10.i, label %if.end44.thread1715.i

if.then10.i:                                      ; preds = %if.then.i309
  %pos_prev_2.i = getelementptr inbounds nuw i8, ptr %arrayidx.i179, i64 8
  %247 = load i32, ptr %pos_prev_2.i, align 4, !tbaa !74
  %idxprom15.i = zext i32 %247 to i64
  %arrayidx16.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %idxprom15.i
  %248 = load i32, ptr %arrayidx16.i, align 4, !tbaa !60
  %back_prev_2.i = getelementptr inbounds nuw i8, ptr %arrayidx.i179, i64 12
  %249 = load i32, ptr %back_prev_2.i, align 4, !tbaa !75
  %cmp.i311 = icmp ult i32 %249, 4
  %cmp22.i = icmp ult i32 %248, 7
  %cond.i = select i1 %cmp22.i, i32 8, i32 11
  %cond24.i = select i1 %cmp22.i, i32 7, i32 10
  %state.0.i = select i1 %cmp.i311, i32 %cond.i, i32 %cond24.i
  %cond36.v.i = select i1 %cmp22.i, i32 -3, i32 -6
  %cond36.i = add nsw i32 %state.0.i, %cond36.v.i
  %250 = zext i32 %244 to i64
  %cmp46.i = icmp eq i64 %250, %indvars.iv391
  br i1 %cmp46.i, label %if.then47.i, label %land.lhs.true.i

if.end44.thread1715.i:                            ; preds = %if.then.i309
  %dec.i310 = add i32 %244, -1
  %idxprom27.i = zext i32 %dec.i310 to i64
  %arrayidx28.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %idxprom27.i
  %251 = load i32, ptr %arrayidx28.i, align 4, !tbaa !60
  %cmp311717.i = icmp ult i32 %251, 4
  %cmp321718.i = icmp ult i32 %251, 10
  %cond36.v1719.i = select i1 %cmp321718.i, i32 -3, i32 -6
  %cond361720.i = add i32 %cond36.v1719.i, %251
  %cond381721.i = select i1 %cmp311717.i, i32 0, i32 %cond361720.i
  %252 = zext i32 %244 to i64
  %cmp461722.i = icmp eq i64 %252, %indvars.iv391
  br i1 %cmp461722.i, label %if.then47.i, label %if.else91.i

if.end44.thread.i:                                ; preds = %if.end33
  %idxprom41.i = zext i32 %244 to i64
  %arrayidx42.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %idxprom41.i
  %253 = load i32, ptr %arrayidx42.i, align 4, !tbaa !60
  %254 = add nsw i64 %indvars.iv391, -1
  %255 = zext i32 %244 to i64
  %cmp461561.i = icmp eq i64 %255, %254
  br i1 %cmp461561.i, label %if.then47.i, label %if.else91.i

if.then47.i:                                      ; preds = %if.end44.thread.i, %if.end44.thread1715.i, %if.then10.i
  %state.11562.i = phi i32 [ %253, %if.end44.thread.i ], [ %cond36.i, %if.then10.i ], [ %cond381721.i, %if.end44.thread1715.i ]
  %back_prev.i = getelementptr inbounds nuw i8, ptr %arrayidx.i179, i64 24
  %256 = load i32, ptr %back_prev.i, align 4, !tbaa !14
  %cmp51.i = icmp eq i32 %256, 0
  br i1 %cmp51.i, label %if.then52.i, label %if.else55.i

if.then52.i:                                      ; preds = %if.then47.i
  %cmp53.i = icmp ult i32 %state.11562.i, 7
  %cond54.i = select i1 %cmp53.i, i32 9, i32 11
  br label %for.body166.i

if.else55.i:                                      ; preds = %if.then47.i
  %cmp56.i = icmp ult i32 %state.11562.i, 4
  %cmp59.i = icmp ult i32 %state.11562.i, 10
  %cond65.v.i = select i1 %cmp59.i, i32 -3, i32 -6
  %cond65.i = add i32 %cond65.v.i, %state.11562.i
  %spec.select336 = select i1 %cmp56.i, i32 0, i32 %cond65.i
  br label %for.body166.i

land.lhs.true.i:                                  ; preds = %if.then10.i
  %cmp89.i = icmp samesign ult i32 %cond36.i, 7
  %cond90.i = select i1 %cmp89.i, i32 8, i32 11
  br i1 %cmp.i311, label %if.then106.i, label %for.body143.i

if.else91.i:                                      ; preds = %if.end44.thread.i, %if.end44.thread1715.i
  %state.115631568.i = phi i32 [ %253, %if.end44.thread.i ], [ %cond381721.i, %if.end44.thread1715.i ]
  %pos_prev.015641567.i = phi i32 [ %244, %if.end44.thread.i ], [ %dec.i310, %if.end44.thread1715.i ]
  %back_prev95.i = getelementptr inbounds nuw i8, ptr %arrayidx.i179, i64 24
  %257 = load i32, ptr %back_prev95.i, align 4, !tbaa !14
  %cmp96.i = icmp ult i32 %257, 4
  %cmp98.i = icmp ult i32 %state.115631568.i, 7
  br i1 %cmp96.i, label %if.end104.thread.i, label %if.end104.thread1576.i

if.end104.thread.i:                               ; preds = %if.else91.i
  %cond99.i = select i1 %cmp98.i, i32 8, i32 11
  br label %if.then106.i

if.end104.thread1576.i:                           ; preds = %if.else91.i
  %cond102.i = select i1 %cmp98.i, i32 7, i32 10
  br label %for.body143.i

if.then106.i:                                     ; preds = %if.end104.thread.i, %land.lhs.true.i
  %pos_prev.11575.i = phi i32 [ %pos_prev.015641567.i, %if.end104.thread.i ], [ %247, %land.lhs.true.i ]
  %state.21574.i = phi i32 [ %cond99.i, %if.end104.thread.i ], [ %cond90.i, %land.lhs.true.i ]
  %pos.01573.i = phi i32 [ %257, %if.end104.thread.i ], [ %249, %land.lhs.true.i ]
  %idxprom108.i = zext i32 %pos_prev.11575.i to i64
  %arrayidx109.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %idxprom108.i
  %backs.i302 = getelementptr inbounds nuw i8, ptr %arrayidx109.i, i64 28
  %idxprom110.i = zext nneg i32 %pos.01573.i to i64
  %arrayidx111.i = getelementptr inbounds nuw i32, ptr %backs.i302, i64 %idxprom110.i
  %258 = load i32, ptr %arrayidx111.i, align 4, !tbaa !13
  store i32 %258, ptr %reps, align 4, !tbaa !13
  %cmp113.not1593.i = icmp eq i32 %pos.01573.i, 0
  br i1 %cmp113.not1593.i, label %for.body125.preheader.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.then106.i
  %259 = add nuw nsw i32 %pos.01573.i, 1
  %wide.trip.count.i303 = zext nneg i32 %259 to i64
  %260 = shl nuw nsw i64 %wide.trip.count.i303, 2
  %261 = add nsw i64 %260, -4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %backs.i302, i64 %261, i1 false), !tbaa !13
  br label %for.cond123.preheader.i

for.cond123.preheader.i:                          ; preds = %for.body.preheader.i
  %262 = add nsw i64 %wide.trip.count.i303, -1
  %cmp1241595.i = icmp samesign ult i64 %262, 3
  br i1 %cmp1241595.i, label %for.body125.preheader.i, label %for.body166.i

for.body125.preheader.i:                          ; preds = %for.cond123.preheader.i, %if.then106.i
  %i.0.lcssa1727.i = phi i64 [ %wide.trip.count.i303, %for.cond123.preheader.i ], [ 1, %if.then106.i ]
  br label %for.body125.i

for.body125.i:                                    ; preds = %for.body125.i, %for.body125.preheader.i
  %indvars.iv1641.i = phi i64 [ %i.0.lcssa1727.i, %for.body125.preheader.i ], [ %indvars.iv.next1642.i, %for.body125.i ]
  %arrayidx131.i = getelementptr inbounds nuw i32, ptr %backs.i302, i64 %indvars.iv1641.i
  %263 = load i32, ptr %arrayidx131.i, align 4, !tbaa !13
  %arrayidx133.i = getelementptr inbounds nuw i32, ptr %reps, i64 %indvars.iv1641.i
  store i32 %263, ptr %arrayidx133.i, align 4, !tbaa !13
  %indvars.iv.next1642.i = add nuw nsw i64 %indvars.iv1641.i, 1
  %264 = and i64 %indvars.iv.next1642.i, 4294967295
  %exitcond1644.not.i = icmp eq i64 %264, 4
  br i1 %exitcond1644.not.i, label %for.body166.i.loopexit, label %for.body125.i, !llvm.loop !76

for.body143.i:                                    ; preds = %if.end104.thread1576.i, %land.lhs.true.i
  %pos_prev.11583.i = phi i32 [ %pos_prev.015641567.i, %if.end104.thread1576.i ], [ %247, %land.lhs.true.i ]
  %state.21582.i = phi i32 [ %cond102.i, %if.end104.thread1576.i ], [ %cond90.i, %land.lhs.true.i ]
  %pos.01581.i = phi i32 [ %257, %if.end104.thread1576.i ], [ %249, %land.lhs.true.i ]
  %sub138.i = add i32 %pos.01581.i, -4
  store i32 %sub138.i, ptr %reps, align 4, !tbaa !13
  %idxprom145.i = zext i32 %pos_prev.11583.i to i64
  %arrayidx146.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %idxprom145.i
  %backs147.i = getelementptr inbounds nuw i8, ptr %arrayidx146.i, i64 28
  %265 = load i32, ptr %backs147.i, align 4, !tbaa !13
  store i32 %265, ptr %arrayidx152.i, align 4, !tbaa !13
  %arrayidx150.1.i = getelementptr inbounds nuw i8, ptr %arrayidx146.i, i64 32
  %266 = load i32, ptr %arrayidx150.1.i, align 4, !tbaa !13
  store i32 %266, ptr %arrayidx152.1.i, align 4, !tbaa !13
  %arrayidx150.2.i = getelementptr inbounds nuw i8, ptr %arrayidx146.i, i64 36
  %267 = load i32, ptr %arrayidx150.2.i, align 4, !tbaa !13
  store i32 %267, ptr %arrayidx152.2.i, align 4, !tbaa !13
  br label %for.body166.i

do.body.i.preheader.i276:                         ; preds = %for.body166.i
  %conv190.i = zext i8 %281 to i32
  br label %do.body.i.i277

do.body.i.i.i204:                                 ; preds = %do.body.i.i.i204.preheader, %do.body.i.i.i204
  %price.0.i.i.i205 = phi i32 [ %add1.i.i.i217, %do.body.i.i.i204 ], [ 0, %do.body.i.i.i204.preheader ]
  %symbol.addr.0.i.i.i206 = phi i32 [ %shr.i.i.i208, %do.body.i.i.i204 ], [ %add2.i.i203, %do.body.i.i.i204.preheader ]
  %and.i.i.i207 = and i32 %symbol.addr.0.i.i.i206, 1
  %shr.i.i.i208 = lshr i32 %symbol.addr.0.i.i.i206, 1
  %idxprom.i.i.i209 = zext nneg i32 %shr.i.i.i208 to i64
  %arrayidx.i.i.i210 = getelementptr inbounds nuw i16, ptr %arrayidx.i1356.i, i64 %idxprom.i.i.i209
  %268 = load i16, ptr %arrayidx.i.i.i210, align 2, !tbaa !36
  %conv.i.i.i.i211 = zext i16 %268 to i64
  %269 = icmp eq i32 %and.i.i.i207, 0
  %and.i.i.i.i212 = select i1 %269, i64 0, i64 2032
  %xor.i.i.i.i213 = xor i64 %and.i.i.i.i212, %conv.i.i.i.i211
  %shr.i.i.i.i214 = lshr i64 %xor.i.i.i.i213, 4
  %arrayidx.i.i.i.i215 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i.i.i214
  %270 = load i8, ptr %arrayidx.i.i.i.i215, align 1, !tbaa !37
  %conv1.i.i.i.i216 = zext i8 %270 to i32
  %add1.i.i.i217 = add i32 %price.0.i.i.i205, %conv1.i.i.i.i216
  %cmp.not.i.i.i218 = icmp eq i32 %shr.i.i.i208, 1
  br i1 %cmp.not.i.i.i218, label %get_literal_price.exit.i219.loopexit356, label %do.body.i.i.i204, !llvm.loop !38

do.body.i.i277:                                   ; preds = %do.body.i.i277, %do.body.i.preheader.i276
  %offset.0.i.i278 = phi i32 [ %and15.i.i300, %do.body.i.i277 ], [ 256, %do.body.i.preheader.i276 ]
  %price.0.i.i279 = phi i32 [ %add13.i.i297, %do.body.i.i277 ], [ 0, %do.body.i.preheader.i276 ]
  %symbol.addr.0.i.i280 = phi i32 [ %shl14.i.i298, %do.body.i.i277 ], [ %add2.i.i203, %do.body.i.preheader.i276 ]
  %match_byte.addr.0.i.i281 = phi i32 [ %shl3.i.i282, %do.body.i.i277 ], [ %conv190.i, %do.body.i.preheader.i276 ]
  %shl3.i.i282 = shl i32 %match_byte.addr.0.i.i281, 1
  %and4.i.i283 = and i32 %shl3.i.i282, %offset.0.i.i278
  %shr6.i.i284 = lshr i32 %symbol.addr.0.i.i280, 8
  %add5.i.i285 = add nuw nsw i32 %shr6.i.i284, %offset.0.i.i278
  %add7.i.i286 = add nuw nsw i32 %add5.i.i285, %and4.i.i283
  %idxprom10.i.i287 = zext nneg i32 %add7.i.i286 to i64
  %arrayidx11.i.i288 = getelementptr inbounds nuw i16, ptr %arrayidx.i1356.i, i64 %idxprom10.i.i287
  %271 = load i16, ptr %arrayidx11.i.i288, align 2, !tbaa !36
  %conv.i.i.i289 = zext i16 %271 to i64
  %.mask.i.i290 = and i32 %symbol.addr.0.i.i280, 128
  %isneg.not.i.i291 = icmp eq i32 %.mask.i.i290, 0
  %and.i31.i.i292 = select i1 %isneg.not.i.i291, i64 0, i64 2032
  %xor.i.i.i293 = xor i64 %and.i31.i.i292, %conv.i.i.i289
  %shr.i32.i.i294 = lshr i64 %xor.i.i.i293, 4
  %arrayidx.i34.i.i295 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i32.i.i294
  %272 = load i8, ptr %arrayidx.i34.i.i295, align 1, !tbaa !37
  %conv1.i.i.i296 = zext i8 %272 to i32
  %add13.i.i297 = add i32 %price.0.i.i279, %conv1.i.i.i296
  %shl14.i.i298 = shl nuw nsw i32 %symbol.addr.0.i.i280, 1
  %273 = xor i32 %shl14.i.i298, %shl3.i.i282
  %not.i.i299 = xor i32 %273, -1
  %and15.i.i300 = and i32 %offset.0.i.i278, %not.i.i299
  %cmp.i.i301 = icmp samesign ult i32 %symbol.addr.0.i.i280, 32768
  br i1 %cmp.i.i301, label %do.body.i.i277, label %get_literal_price.exit.i219.loopexit, !llvm.loop !64

get_literal_price.exit.i219.loopexit:             ; preds = %do.body.i.i277
  %add13.i.i297.lcssa = phi i32 [ %add13.i.i297, %do.body.i.i277 ]
  br label %get_literal_price.exit.i219

get_literal_price.exit.i219.loopexit356:          ; preds = %do.body.i.i.i204
  %add1.i.i.i217.lcssa = phi i32 [ %add1.i.i.i217, %do.body.i.i.i204 ]
  br label %get_literal_price.exit.i219

get_literal_price.exit.i219:                      ; preds = %get_literal_price.exit.i219.loopexit356, %get_literal_price.exit.i219.loopexit
  %price.1.i.i220 = phi i32 [ %add13.i.i297.lcssa, %get_literal_price.exit.i219.loopexit ], [ %add1.i.i.i217.lcssa, %get_literal_price.exit.i219.loopexit356 ]
  %add193.i = add i32 %add.i194, %price.1.i.i220
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1
  %indvars394 = trunc i64 %indvars.iv.next392 to i32
  %arrayidx197.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %indvars.iv.next392
  %price198.i = getelementptr inbounds nuw i8, ptr %arrayidx197.i, i64 16
  %274 = load i32, ptr %price198.i, align 4, !tbaa !65
  %cmp199.i = icmp ult i32 %add193.i, %274
  br i1 %cmp199.i, label %if.then201.i, label %if.end216.i

for.body166.i.loopexit:                           ; preds = %for.body125.i
  br label %for.body166.i

for.body166.i:                                    ; preds = %for.body166.i.loopexit, %for.body143.i, %for.cond123.preheader.i, %if.else55.i, %if.then52.i
  %state.3.i = phi i32 [ %cond54.i, %if.then52.i ], [ %state.21574.i, %for.cond123.preheader.i ], [ %state.21582.i, %for.body143.i ], [ %spec.select336, %if.else55.i ], [ %state.21574.i, %for.body166.i.loopexit ]
  store i32 %state.3.i, ptr %arrayidx.i179, align 4, !tbaa !60
  %backs172.i = getelementptr inbounds nuw i8, ptr %arrayidx.i179, i64 28
  %275 = load i32, ptr %reps, align 4, !tbaa !13
  store i32 %275, ptr %backs172.i, align 4, !tbaa !13
  %276 = load i32, ptr %arrayidx168.1.i, align 4, !tbaa !13
  %arrayidx174.1.i181 = getelementptr inbounds nuw i8, ptr %arrayidx.i179, i64 32
  store i32 %276, ptr %arrayidx174.1.i181, align 4, !tbaa !13
  %277 = load i32, ptr %arrayidx168.2.i, align 4, !tbaa !13
  %arrayidx174.2.i182 = getelementptr inbounds nuw i8, ptr %arrayidx.i179, i64 36
  store i32 %277, ptr %arrayidx174.2.i182, align 4, !tbaa !13
  %278 = load i32, ptr %arrayidx168.3.i, align 4, !tbaa !13
  %arrayidx174.3.i183 = getelementptr inbounds nuw i8, ptr %arrayidx.i179, i64 40
  store i32 %278, ptr %arrayidx174.3.i183, align 4, !tbaa !13
  %price.i184 = getelementptr inbounds nuw i8, ptr %arrayidx.i179, i64 16
  %279 = load i32, ptr %price.i184, align 4, !tbaa !65
  %280 = load i8, ptr %add.ptr, align 1, !tbaa !37
  %idx.ext.i185 = zext i32 %275 to i64
  %idx.neg.i186 = sub nsw i64 0, %idx.ext.i185
  %add.ptr.i187 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.i186
  %add.ptr182.i = getelementptr inbounds i8, ptr %add.ptr.i187, i64 -1
  %281 = load i8, ptr %add.ptr182.i, align 1, !tbaa !37
  %282 = load i32, ptr %pos_mask.i188, align 8, !tbaa !61
  %and.i189 = and i32 %282, %add
  %idxprom183.i = zext i32 %state.3.i to i64
  %arrayidx184.i = getelementptr inbounds nuw [16 x i16], ptr %is_match.i190, i64 %idxprom183.i
  %idxprom185.i = zext i32 %and.i189 to i64
  %arrayidx186.i = getelementptr inbounds nuw i16, ptr %arrayidx184.i, i64 %idxprom185.i
  %283 = load i16, ptr %arrayidx186.i, align 2, !tbaa !36
  %284 = lshr i16 %283, 4
  %idxprom.i.i191 = zext nneg i16 %284 to i64
  %arrayidx.i.i192 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i.i191
  %285 = load i8, ptr %arrayidx.i.i192, align 1, !tbaa !37
  %conv1.i.i193 = zext i8 %285 to i32
  %add.i194 = add i32 %279, %conv1.i.i193
  %arrayidx187.i = getelementptr inbounds i8, ptr %add.ptr.i174, i64 -2
  %286 = load i8, ptr %arrayidx187.i, align 1, !tbaa !37
  %conv.i = zext i8 %286 to i32
  %cmp188.i = icmp ugt i32 %state.3.i, 6
  %conv191.i = zext i8 %280 to i32
  %287 = load i32, ptr %literal_pos_mask.i.i196, align 8, !tbaa !62
  %and.i.i197 = and i32 %287, %add
  %288 = load i32, ptr %literal_context_bits.i.i198, align 4, !tbaa !63
  %shl.i.i199 = shl i32 %and.i.i197, %288
  %sub.i.i200 = sub i32 8, %288
  %shr.i.i201 = lshr i32 %conv.i, %sub.i.i200
  %add.i.i202 = add i32 %shr.i.i201, %shl.i.i199
  %idxprom.i1355.i = zext i32 %add.i.i202 to i64
  %arrayidx.i1356.i = getelementptr inbounds nuw [768 x i16], ptr %literal.i.i195, i64 %idxprom.i1355.i
  %add2.i.i203 = or disjoint i32 %conv191.i, 256
  br i1 %cmp188.i, label %do.body.i.preheader.i276, label %do.body.i.i.i204.preheader

do.body.i.i.i204.preheader:                       ; preds = %for.body166.i
  br label %do.body.i.i.i204

if.then201.i:                                     ; preds = %get_literal_price.exit.i219
  store i32 %add193.i, ptr %price198.i, align 4, !tbaa !65
  %pos_prev211.i = getelementptr inbounds nuw i8, ptr %arrayidx197.i, i64 20
  %289 = trunc nuw i64 %indvars.iv391 to i32
  store i32 %289, ptr %pos_prev211.i, align 4, !tbaa !11
  %back_prev.i.i274 = getelementptr inbounds nuw i8, ptr %arrayidx197.i, i64 24
  store i32 -1, ptr %back_prev.i.i274, align 4, !tbaa !14
  %prev_1_is_literal.i.i275 = getelementptr inbounds nuw i8, ptr %arrayidx197.i, i64 4
  store i8 0, ptr %prev_1_is_literal.i.i275, align 4, !tbaa !66
  br label %if.end216.i

if.end216.i:                                      ; preds = %if.then201.i, %get_literal_price.exit.i219
  %290 = xor i16 %284, 127
  %idxprom.i1357.i = zext nneg i16 %290 to i64
  %arrayidx.i1358.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i1357.i
  %291 = load i8, ptr %arrayidx.i1358.i, align 1, !tbaa !37
  %conv1.i1359.i = zext i8 %291 to i32
  %add223.i = add i32 %279, %conv1.i1359.i
  %arrayidx225.i = getelementptr inbounds nuw i16, ptr %is_rep.i221, i64 %idxprom183.i
  %292 = load i16, ptr %arrayidx225.i, align 2, !tbaa !36
  %293 = lshr i16 %292, 4
  %294 = xor i16 %293, 127
  %idxprom.i1360.i = zext nneg i16 %294 to i64
  %arrayidx.i1361.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i1360.i
  %295 = load i8, ptr %arrayidx.i1361.i, align 1, !tbaa !37
  %conv1.i1362.i = zext i8 %295 to i32
  %add227.i = add i32 %add223.i, %conv1.i1362.i
  %cmp230.i = icmp eq i8 %281, %280
  br i1 %cmp230.i, label %land.lhs.true232.i, label %if.end274.i

land.lhs.true232.i:                               ; preds = %if.end216.i
  %pos_prev237.i = getelementptr inbounds nuw i8, ptr %arrayidx197.i, i64 20
  %296 = load i32, ptr %pos_prev237.i, align 4, !tbaa !11
  %297 = zext i32 %296 to i64
  %cmp238.i = icmp samesign ult i64 %297, %indvars.iv391
  br i1 %cmp238.i, label %land.lhs.true240.i, label %if.then248.i

land.lhs.true240.i:                               ; preds = %land.lhs.true232.i
  %back_prev245.i = getelementptr inbounds nuw i8, ptr %arrayidx197.i, i64 24
  %298 = load i32, ptr %back_prev245.i, align 4, !tbaa !14
  %cmp246.i = icmp eq i32 %298, 0
  br i1 %cmp246.i, label %if.end274.i, label %if.then248.i

if.then248.i:                                     ; preds = %land.lhs.true240.i, %land.lhs.true232.i
  %arrayidx.i1364.i = getelementptr inbounds nuw i16, ptr %is_rep0.i.i267, i64 %idxprom183.i
  %299 = load i16, ptr %arrayidx.i1364.i, align 2, !tbaa !36
  %300 = lshr i16 %299, 4
  %idxprom.i.i1365.i = zext nneg i16 %300 to i64
  %arrayidx.i.i1366.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i.i1365.i
  %301 = load i8, ptr %arrayidx.i.i1366.i, align 1, !tbaa !37
  %conv1.i.i1367.i = zext i8 %301 to i32
  %arrayidx2.i.i269 = getelementptr inbounds nuw [16 x i16], ptr %is_rep0_long.i.i268, i64 %idxprom183.i
  %arrayidx4.i.i270 = getelementptr inbounds nuw i16, ptr %arrayidx2.i.i269, i64 %idxprom185.i
  %302 = load i16, ptr %arrayidx4.i.i270, align 2, !tbaa !36
  %303 = lshr i16 %302, 4
  %idxprom.i8.i.i271 = zext nneg i16 %303 to i64
  %arrayidx.i9.i.i272 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i8.i.i271
  %304 = load i8, ptr %arrayidx.i9.i.i272, align 1, !tbaa !37
  %conv1.i10.i.i273 = zext i8 %304 to i32
  %add.i1368.i = add i32 %add227.i, %conv1.i.i1367.i
  %add250.i = add i32 %add.i1368.i, %conv1.i10.i.i273
  %305 = load i32, ptr %price198.i, align 4, !tbaa !65
  %cmp256.not.i = icmp ugt i32 %add250.i, %305
  br i1 %cmp256.not.i, label %if.end274.i, label %if.then258.i

if.then258.i:                                     ; preds = %if.then248.i
  store i32 %add250.i, ptr %price198.i, align 4, !tbaa !65
  %306 = trunc nuw i64 %indvars.iv391 to i32
  store i32 %306, ptr %pos_prev237.i, align 4, !tbaa !11
  %back_prev.i1369.i = getelementptr inbounds nuw i8, ptr %arrayidx197.i, i64 24
  store i32 0, ptr %back_prev.i1369.i, align 4, !tbaa !14
  %prev_1_is_literal.i1370.i = getelementptr inbounds nuw i8, ptr %arrayidx197.i, i64 4
  store i8 0, ptr %prev_1_is_literal.i1370.i, align 4, !tbaa !66
  br label %if.end274.i

if.end274.i:                                      ; preds = %if.then258.i, %if.then248.i, %land.lhs.true240.i, %if.end216.i
  %next_is_literal.2.i = phi i1 [ %cmp199.i, %land.lhs.true240.i ], [ %cmp199.i, %if.end216.i ], [ true, %if.then258.i ], [ %cmp199.i, %if.then248.i ]
  %cmp275.i = icmp ult i32 %spec.select, 2
  br i1 %cmp275.i, label %helper2.exit, label %if.end278.i

if.end278.i:                                      ; preds = %if.end274.i
  %cond284.i = call i32 @llvm.umin.i32(i32 %spec.select, i32 %239)
  %or.cond.i = or i1 %cmp230.i, %next_is_literal.2.i
  br i1 %or.cond.i, label %if.end393.i, label %if.then291.i

if.then291.i:                                     ; preds = %if.end278.i
  %add297.i = add i32 %239, 1
  %cond304.i = call i32 @llvm.umin.i32(i32 %spec.select, i32 %add297.i)
  %cmp3051598.i = icmp ugt i32 %cond304.i, 1
  br i1 %cmp3051598.i, label %land.rhs.preheader.i262, label %if.end393.i

land.rhs.preheader.i262:                          ; preds = %if.then291.i
  %wide.trip.count1652.i = zext i32 %cond304.i to i64
  br label %land.rhs.i263

land.rhs.i263:                                    ; preds = %while.body.i, %land.rhs.preheader.i262
  %indvars.iv1649.i = phi i64 [ 1, %land.rhs.preheader.i262 ], [ %indvars.iv.next1650.i, %while.body.i ]
  %arrayidx308.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %indvars.iv1649.i
  %307 = load i8, ptr %arrayidx308.i, align 1, !tbaa !37
  %arrayidx311.i = getelementptr inbounds nuw i8, ptr %add.ptr182.i, i64 %indvars.iv1649.i
  %308 = load i8, ptr %arrayidx311.i, align 1, !tbaa !37
  %cmp313.i = icmp eq i8 %307, %308
  br i1 %cmp313.i, label %while.body.i, label %while.end.split.loop.exit.i

while.body.i:                                     ; preds = %land.rhs.i263
  %indvars.iv.next1650.i = add nuw nsw i64 %indvars.iv1649.i, 1
  %exitcond1653.not.i = icmp eq i64 %indvars.iv.next1650.i, %wide.trip.count1652.i
  br i1 %exitcond1653.not.i, label %while.end.i.loopexit, label %land.rhs.i263, !llvm.loop !77

while.end.split.loop.exit.i:                      ; preds = %land.rhs.i263
  %indvars.iv1649.i.lcssa = phi i64 [ %indvars.iv1649.i, %land.rhs.i263 ]
  %309 = trunc nuw i64 %indvars.iv1649.i.lcssa to i32
  br label %while.end.i

while.end.i.loopexit:                             ; preds = %while.body.i
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %while.end.split.loop.exit.i
  %len_test.0.lcssa.i = phi i32 [ %309, %while.end.split.loop.exit.i ], [ %cond304.i, %while.end.i.loopexit ]
  %310 = add i32 %len_test.0.lcssa.i, -3
  %cmp317.i = icmp ult i32 %310, -2
  br i1 %cmp317.i, label %if.then319.i, label %if.end393.i

if.then319.i:                                     ; preds = %while.end.i
  %cmp320.i = icmp ult i32 %state.3.i, 4
  %cmp324.i = icmp ult i32 %state.3.i, 10
  %cond331.v.i = select i1 %cmp324.i, i32 -3, i32 -6
  %cond331.i = add i32 %cond331.v.i, %state.3.i
  %cond333.i = select i1 %cmp320.i, i32 0, i32 %cond331.i
  %add334.i = add i32 %add, 1
  %and336.i = and i32 %282, %add334.i
  %idxprom338.i = zext i32 %cond333.i to i64
  %arrayidx339.i = getelementptr inbounds nuw [16 x i16], ptr %is_match.i190, i64 %idxprom338.i
  %idxprom340.i = zext i32 %and336.i to i64
  %arrayidx341.i = getelementptr inbounds nuw i16, ptr %arrayidx339.i, i64 %idxprom340.i
  %311 = load i16, ptr %arrayidx341.i, align 2, !tbaa !36
  %312 = lshr i16 %311, 4
  %313 = xor i16 %312, 127
  %idxprom.i1371.i = zext nneg i16 %313 to i64
  %arrayidx.i1372.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i1371.i
  %314 = load i8, ptr %arrayidx.i1372.i, align 1, !tbaa !37
  %conv1.i1373.i = zext i8 %314 to i32
  %arrayidx346.i = getelementptr inbounds nuw i16, ptr %is_rep.i221, i64 %idxprom338.i
  %315 = load i16, ptr %arrayidx346.i, align 2, !tbaa !36
  %316 = lshr i16 %315, 4
  %317 = xor i16 %316, 127
  %idxprom.i1374.i = zext nneg i16 %317 to i64
  %arrayidx.i1375.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i1374.i
  %318 = load i8, ptr %arrayidx.i1375.i, align 1, !tbaa !37
  %conv1.i1376.i = zext i8 %318 to i32
  %319 = trunc nuw i64 %indvars.iv391 to i32
  %add350.i = add i32 %len_test.0.lcssa.i, %319
  %cmp3521602.i = icmp ult i32 %len_end.0350, %add350.i
  br i1 %cmp3521602.i, label %while.body354.preheader.i, label %while.end360.i

while.body354.preheader.i:                        ; preds = %if.then319.i
  %320 = zext i32 %len_end.0350 to i64
  %wide.trip.count1657.i = zext i32 %add350.i to i64
  br label %while.body354.i

while.body354.i:                                  ; preds = %while.body354.i, %while.body354.preheader.i
  %indvars.iv1654.i = phi i64 [ %320, %while.body354.preheader.i ], [ %indvars.iv.next1655.i, %while.body354.i ]
  %indvars.iv.next1655.i = add nuw nsw i64 %indvars.iv1654.i, 1
  %arrayidx358.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %indvars.iv.next1655.i
  %price359.i = getelementptr inbounds nuw i8, ptr %arrayidx358.i, i64 16
  store i32 1073741824, ptr %price359.i, align 4, !tbaa !65
  %exitcond1658.not.i = icmp eq i64 %indvars.iv.next1655.i, %wide.trip.count1657.i
  br i1 %exitcond1658.not.i, label %while.end360.loopexit.i, label %while.body354.i, !llvm.loop !78

while.end360.loopexit.i:                          ; preds = %while.body354.i
  %indvars.iv.next1655.i.lcssa = phi i64 [ %indvars.iv.next1655.i, %while.body354.i ]
  %321 = trunc nuw i64 %indvars.iv.next1655.i.lcssa to i32
  br label %while.end360.i

while.end360.i:                                   ; preds = %while.end360.loopexit.i, %if.then319.i
  %len_end.addr.0.lcssa.i = phi i32 [ %len_end.0350, %if.then319.i ], [ %321, %while.end360.loopexit.i ]
  %arrayidx.i.i1378.i = getelementptr inbounds nuw [272 x i32], ptr %prices.i.i.i264, i64 %idxprom340.i
  %idxprom1.i.i.i265 = zext i32 %310 to i64
  %arrayidx2.i.i.i266 = getelementptr inbounds nuw i32, ptr %arrayidx.i.i1378.i, i64 %idxprom1.i.i.i265
  %322 = load i32, ptr %arrayidx2.i.i.i266, align 4, !tbaa !13
  %arrayidx.i5.i.i = getelementptr inbounds nuw i16, ptr %is_rep0.i.i.i, i64 %idxprom338.i
  %323 = load i16, ptr %arrayidx.i5.i.i, align 2, !tbaa !36
  %324 = lshr i16 %323, 4
  %idxprom.i.i.i.i = zext nneg i16 %324 to i64
  %arrayidx.i.i.i1379.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i.i.i.i
  %325 = load i8, ptr %arrayidx.i.i.i1379.i, align 1, !tbaa !37
  %conv1.i.i.i1380.i = zext i8 %325 to i32
  %arrayidx2.i6.i.i = getelementptr inbounds nuw [16 x i16], ptr %is_rep0_long.i.i.i, i64 %idxprom338.i
  %arrayidx4.i.i.i = getelementptr inbounds nuw i16, ptr %arrayidx2.i6.i.i, i64 %idxprom340.i
  %326 = load i16, ptr %arrayidx4.i.i.i, align 2, !tbaa !36
  %327 = lshr i16 %326, 4
  %328 = xor i16 %327, 127
  %idxprom.i43.i.i.i = zext nneg i16 %328 to i64
  %arrayidx.i44.i.i.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i43.i.i.i
  %329 = load i8, ptr %arrayidx.i44.i.i.i, align 1, !tbaa !37
  %conv1.i45.i.i.i = zext i8 %329 to i32
  %add.i.i.i = add i32 %add193.i, %conv1.i1373.i
  %add.i1381.i = add i32 %add.i.i.i, %conv1.i1376.i
  %add343.i = add i32 %add.i1381.i, %322
  %add348.i = add i32 %add343.i, %conv1.i.i.i1380.i
  %add362.i = add i32 %add348.i, %conv1.i45.i.i.i
  %idxprom364.i = zext i32 %add350.i to i64
  %arrayidx365.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %idxprom364.i
  %price366.i = getelementptr inbounds nuw i8, ptr %arrayidx365.i, i64 16
  %330 = load i32, ptr %price366.i, align 4, !tbaa !65
  %cmp367.i = icmp ult i32 %add362.i, %330
  br i1 %cmp367.i, label %if.then369.i, label %if.end393.i

if.then369.i:                                     ; preds = %while.end360.i
  store i32 %add362.i, ptr %price366.i, align 4, !tbaa !65
  %pos_prev378.i = getelementptr inbounds nuw i8, ptr %arrayidx365.i, i64 20
  %331 = trunc nuw i64 %indvars.iv.next392 to i32
  store i32 %331, ptr %pos_prev378.i, align 4, !tbaa !11
  %back_prev382.i = getelementptr inbounds nuw i8, ptr %arrayidx365.i, i64 24
  store i32 0, ptr %back_prev382.i, align 4, !tbaa !14
  %prev_1_is_literal386.i = getelementptr inbounds nuw i8, ptr %arrayidx365.i, i64 4
  store i8 1, ptr %prev_1_is_literal386.i, align 4, !tbaa !66
  %prev_2390.i = getelementptr inbounds nuw i8, ptr %arrayidx365.i, i64 5
  store i8 0, ptr %prev_2390.i, align 1, !tbaa !73
  br label %if.end393.i

if.end393.i:                                      ; preds = %if.then369.i, %while.end360.i, %while.end.i, %if.then291.i, %if.end278.i
  %len_end.addr.2.i = phi i32 [ %len_end.0350, %if.end278.i ], [ %len_end.0350, %while.end.i ], [ %len_end.addr.0.lcssa.i, %if.then369.i ], [ %len_end.addr.0.lcssa.i, %while.end360.i ], [ %len_end.0350, %if.then291.i ]
  %cmp4221605.i = icmp ugt i32 %cond284.i, 2
  %arrayidx.i1385.i = getelementptr inbounds nuw i16, ptr %is_rep0.i1383.i, i64 %idxprom183.i
  %arrayidx13.i.i223 = getelementptr inbounds nuw i16, ptr %is_rep1.i.i222, i64 %idxprom183.i
  %arrayidx23.i.i225 = getelementptr inbounds nuw i16, ptr %is_rep2.i.i224, i64 %idxprom183.i
  %arrayidx2.i1396.i = getelementptr inbounds nuw [16 x i16], ptr %is_rep0_long.i1395.i, i64 %idxprom183.i
  %arrayidx4.i1398.i = getelementptr inbounds nuw i16, ptr %arrayidx2.i1396.i, i64 %idxprom185.i
  %arrayidx.i1401.i = getelementptr inbounds nuw [272 x i32], ptr %prices.i.i226, i64 %idxprom185.i
  %cond527.i = select i1 %cmp188.i, i64 11, i64 8
  %arrayidx537.i = getelementptr inbounds nuw [16 x i16], ptr %is_match.i190, i64 %cond527.i
  %wide.trip.count1662.i = zext i32 %cond284.i to i64
  br label %for.body398.i

for.cond.cleanup397.i:                            ; preds = %cleanup.i227
  %start_len.2.i.lcssa387 = phi i32 [ %start_len.2.i, %cleanup.i227 ]
  %start_len.2.i.lcssa = phi i32 [ %start_len.2.i, %cleanup.i227 ]
  %len_end.addr.7.i.lcssa = phi i32 [ %len_end.addr.7.i, %cleanup.i227 ]
  %cmp646.i = icmp ugt i32 %call29, %cond284.i
  br i1 %cmp646.i, label %while.cond649.i.preheader, label %if.end662.i

while.cond649.i.preheader:                        ; preds = %for.cond.cleanup397.i
  br label %while.cond649.i

for.body398.i:                                    ; preds = %cleanup.i227, %if.end393.i
  %indvars.iv1679.i = phi i64 [ 0, %if.end393.i ], [ %indvars.iv.next1680.i, %cleanup.i227 ]
  %len_end.addr.31623.i = phi i32 [ %len_end.addr.2.i, %if.end393.i ], [ %len_end.addr.7.i, %cleanup.i227 ]
  %start_len.01622.i = phi i32 [ 2, %if.end393.i ], [ %start_len.2.i, %cleanup.i227 ]
  %arrayidx401.i = getelementptr inbounds nuw i32, ptr %reps, i64 %indvars.iv1679.i
  %332 = load i32, ptr %arrayidx401.i, align 4, !tbaa !13
  %idx.ext402.i = zext i32 %332 to i64
  %idx.neg403.i = sub nsw i64 0, %idx.ext402.i
  %add.ptr404.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg403.i
  %add.ptr405.i = getelementptr inbounds i8, ptr %add.ptr404.i, i64 -1
  %333 = load i8, ptr %add.ptr, align 1, !tbaa !37
  %334 = load i8, ptr %add.ptr405.i, align 1, !tbaa !37
  %cmp410.not.i = icmp eq i8 %333, %334
  br i1 %cmp410.not.i, label %lor.lhs.false.i254, label %cleanup.i227

lor.lhs.false.i254:                               ; preds = %for.body398.i
  %335 = load i8, ptr %add.ptr.i174, align 1, !tbaa !37
  %336 = load i8, ptr %add.ptr404.i, align 1, !tbaa !37
  %cmp416.not.i = icmp eq i8 %335, %336
  br i1 %cmp416.not.i, label %for.cond421.preheader.i, label %cleanup.i227

for.cond421.preheader.i:                          ; preds = %lor.lhs.false.i254
  br i1 %cmp4221605.i, label %land.rhs424.i.preheader, label %for.end437.i

land.rhs424.i.preheader:                          ; preds = %for.cond421.preheader.i
  br label %land.rhs424.i

land.rhs424.i:                                    ; preds = %for.inc435.i, %land.rhs424.i.preheader
  %indvars.iv1659.i = phi i64 [ %indvars.iv.next1660.i, %for.inc435.i ], [ 2, %land.rhs424.i.preheader ]
  %arrayidx426.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %indvars.iv1659.i
  %337 = load i8, ptr %arrayidx426.i, align 1, !tbaa !37
  %arrayidx429.i = getelementptr inbounds nuw i8, ptr %add.ptr405.i, i64 %indvars.iv1659.i
  %338 = load i8, ptr %arrayidx429.i, align 1, !tbaa !37
  %cmp431.i = icmp eq i8 %337, %338
  br i1 %cmp431.i, label %for.inc435.i, label %for.end437.loopexit.split.loop.exit1733.i

for.inc435.i:                                     ; preds = %land.rhs424.i
  %indvars.iv.next1660.i = add nuw nsw i64 %indvars.iv1659.i, 1
  %exitcond1663.not.i = icmp eq i64 %indvars.iv.next1660.i, %wide.trip.count1662.i
  br i1 %exitcond1663.not.i, label %for.end437.i.loopexit, label %land.rhs424.i, !llvm.loop !79

for.end437.loopexit.split.loop.exit1733.i:        ; preds = %land.rhs424.i
  %indvars.iv1659.i.lcssa = phi i64 [ %indvars.iv1659.i, %land.rhs424.i ]
  %339 = trunc nuw i64 %indvars.iv1659.i.lcssa to i32
  br label %for.end437.i

for.end437.i.loopexit:                            ; preds = %for.inc435.i
  br label %for.end437.i

for.end437.i:                                     ; preds = %for.end437.i.loopexit, %for.end437.loopexit.split.loop.exit1733.i, %for.cond421.preheader.i
  %len_test420.0.lcssa.i = phi i32 [ 2, %for.cond421.preheader.i ], [ %339, %for.end437.loopexit.split.loop.exit1733.i ], [ %cond284.i, %for.end437.i.loopexit ]
  %340 = trunc nuw i64 %indvars.iv391 to i32
  %add439.i = add i32 %len_test420.0.lcssa.i, %340
  %cmp4401609.i = icmp ult i32 %len_end.addr.31623.i, %add439.i
  br i1 %cmp4401609.i, label %while.body442.preheader.i, label %while.end448.i

while.body442.preheader.i:                        ; preds = %for.end437.i
  %341 = zext i32 %len_end.addr.31623.i to i64
  %wide.trip.count1667.i = zext i32 %add439.i to i64
  br label %while.body442.i

while.body442.i:                                  ; preds = %while.body442.i, %while.body442.preheader.i
  %indvars.iv1664.i = phi i64 [ %341, %while.body442.preheader.i ], [ %indvars.iv.next1665.i, %while.body442.i ]
  %indvars.iv.next1665.i = add nuw nsw i64 %indvars.iv1664.i, 1
  %arrayidx446.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %indvars.iv.next1665.i
  %price447.i = getelementptr inbounds nuw i8, ptr %arrayidx446.i, i64 16
  store i32 1073741824, ptr %price447.i, align 4, !tbaa !65
  %exitcond1668.not.i = icmp eq i64 %indvars.iv.next1665.i, %wide.trip.count1667.i
  br i1 %exitcond1668.not.i, label %while.end448.loopexit.i, label %while.body442.i, !llvm.loop !80

while.end448.loopexit.i:                          ; preds = %while.body442.i
  %indvars.iv.next1665.i.lcssa = phi i64 [ %indvars.iv.next1665.i, %while.body442.i ]
  %342 = trunc nuw i64 %indvars.iv.next1665.i.lcssa to i32
  br label %while.end448.i

while.end448.i:                                   ; preds = %while.end448.loopexit.i, %for.end437.i
  %len_end.addr.4.lcssa.i = phi i32 [ %len_end.addr.31623.i, %for.end437.i ], [ %342, %while.end448.loopexit.i ]
  %cmp.i1382.i = icmp eq i64 %indvars.iv1679.i, 0
  %343 = load i16, ptr %arrayidx.i1385.i, align 2, !tbaa !36
  %344 = lshr i16 %343, 4
  br i1 %cmp.i1382.i, label %if.then.i.i258, label %if.else.i.i

if.then.i.i258:                                   ; preds = %while.end448.i
  %idxprom.i.i1392.i = zext nneg i16 %344 to i64
  %arrayidx.i.i1393.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i.i1392.i
  %345 = load i8, ptr %arrayidx.i.i1393.i, align 1, !tbaa !37
  %conv1.i.i1394.i = zext i8 %345 to i32
  %346 = load i16, ptr %arrayidx4.i1398.i, align 2, !tbaa !36
  %347 = lshr i16 %346, 4
  %348 = xor i16 %347, 127
  %idxprom.i43.i.i259 = zext nneg i16 %348 to i64
  %arrayidx.i44.i.i260 = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i43.i.i259
  %349 = load i8, ptr %arrayidx.i44.i.i260, align 1, !tbaa !37
  %conv1.i45.i.i261 = zext i8 %349 to i32
  %add.i1399.i = add nuw nsw i32 %conv1.i45.i.i261, %conv1.i.i1394.i
  br label %get_pure_rep_price.exit.i255

if.else.i.i:                                      ; preds = %while.end448.i
  %350 = xor i16 %344, 127
  %idxprom.i46.i.i = zext nneg i16 %350 to i64
  %arrayidx.i47.i.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i46.i.i
  %351 = load i8, ptr %arrayidx.i47.i.i, align 1, !tbaa !37
  %conv1.i48.i.i = zext i8 %351 to i32
  %cmp10.i.i = icmp eq i64 %indvars.iv1679.i, 1
  %352 = load i16, ptr %arrayidx13.i.i223, align 2, !tbaa !36
  %353 = lshr i16 %352, 4
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.else16.i.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  %idxprom.i49.i.i = zext nneg i16 %353 to i64
  %arrayidx.i50.i.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i49.i.i
  %354 = load i8, ptr %arrayidx.i50.i.i, align 1, !tbaa !37
  %conv1.i51.i.i = zext i8 %354 to i32
  %add15.i.i = add nuw nsw i32 %conv1.i51.i.i, %conv1.i48.i.i
  br label %get_pure_rep_price.exit.i255

if.else16.i.i:                                    ; preds = %if.else.i.i
  %355 = xor i16 %353, 127
  %idxprom.i52.i.i = zext nneg i16 %355 to i64
  %arrayidx.i53.i.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i52.i.i
  %356 = load i8, ptr %arrayidx.i53.i.i, align 1, !tbaa !37
  %conv1.i54.i.i = zext i8 %356 to i32
  %add21.i.i = add nuw nsw i32 %conv1.i54.i.i, %conv1.i48.i.i
  %357 = load i16, ptr %arrayidx23.i.i225, align 2, !tbaa !36
  %conv.i.i1386.i = zext i16 %357 to i64
  %358 = sub nsw i64 2, %indvars.iv1679.i
  %and.i.i1388.i = and i64 %358, 2032
  %xor.i.i1389.i = xor i64 %and.i.i1388.i, %conv.i.i1386.i
  %shr.i.i1390.i = lshr i64 %xor.i.i1389.i, 4
  %arrayidx.i56.i.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i.i1390.i
  %359 = load i8, ptr %arrayidx.i56.i.i, align 1, !tbaa !37
  %conv1.i57.i.i = zext i8 %359 to i32
  %add25.i.i = add nuw nsw i32 %add21.i.i, %conv1.i57.i.i
  br label %get_pure_rep_price.exit.i255

get_pure_rep_price.exit.i255:                     ; preds = %if.else16.i.i, %if.then11.i.i, %if.then.i.i258
  %price.0.i1391.i = phi i32 [ %add.i1399.i, %if.then.i.i258 ], [ %add15.i.i, %if.then11.i.i ], [ %add25.i.i, %if.else16.i.i ]
  %add451.i = add i32 %price.0.i1391.i, %add227.i
  %360 = trunc nuw nsw i64 %indvars.iv1679.i to i32
  br label %do.body.i256

do.body.i256:                                     ; preds = %if.end483.i, %get_pure_rep_price.exit.i255
  %len_test420.1.i = phi i32 [ %len_test420.0.lcssa.i, %get_pure_rep_price.exit.i255 ], [ %dec484.i, %if.end483.i ]
  %sub.i1402.i = add i32 %len_test420.1.i, -2
  %idxprom1.i.i257 = zext i32 %sub.i1402.i to i64
  %arrayidx2.i1403.i = getelementptr inbounds nuw i32, ptr %arrayidx.i1401.i, i64 %idxprom1.i.i257
  %361 = load i32, ptr %arrayidx2.i1403.i, align 4, !tbaa !13
  %add454.i = add i32 %361, %add451.i
  %362 = trunc nuw i64 %indvars.iv391 to i32
  %add456.i = add i32 %len_test420.1.i, %362
  %idxprom457.i = zext i32 %add456.i to i64
  %arrayidx458.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %idxprom457.i
  %price459.i = getelementptr inbounds nuw i8, ptr %arrayidx458.i, i64 16
  %363 = load i32, ptr %price459.i, align 4, !tbaa !65
  %cmp460.i = icmp ult i32 %add454.i, %363
  br i1 %cmp460.i, label %if.then462.i, label %if.end483.i

if.then462.i:                                     ; preds = %do.body.i256
  store i32 %add454.i, ptr %price459.i, align 4, !tbaa !65
  %pos_prev472.i = getelementptr inbounds nuw i8, ptr %arrayidx458.i, i64 20
  %364 = trunc nuw i64 %indvars.iv391 to i32
  store i32 %364, ptr %pos_prev472.i, align 4, !tbaa !11
  %back_prev477.i = getelementptr inbounds nuw i8, ptr %arrayidx458.i, i64 24
  store i32 %360, ptr %back_prev477.i, align 4, !tbaa !14
  %prev_1_is_literal482.i = getelementptr inbounds nuw i8, ptr %arrayidx458.i, i64 4
  store i8 0, ptr %prev_1_is_literal482.i, align 4, !tbaa !66
  br label %if.end483.i

if.end483.i:                                      ; preds = %if.then462.i, %do.body.i256
  %dec484.i = add i32 %len_test420.1.i, -1
  %cmp485.i = icmp ugt i32 %dec484.i, 1
  br i1 %cmp485.i, label %do.body.i256, label %do.end.i, !llvm.loop !81

do.end.i:                                         ; preds = %if.end483.i
  %add490.i = add i32 %len_test420.0.lcssa.i, 1
  %spec.select.i = select i1 %cmp.i1382.i, i32 %add490.i, i32 %start_len.01622.i
  %add494.i = add i32 %add490.i, %239
  %cond501.i = call i32 @llvm.umin.i32(i32 %spec.select, i32 %add494.i)
  %cmp5031613.i = icmp ult i32 %add490.i, %cond501.i
  br i1 %cmp5031613.i, label %land.rhs505.preheader.i, label %for.end518.i

land.rhs505.preheader.i:                          ; preds = %do.end.i
  %365 = zext i32 %add490.i to i64
  br label %land.rhs505.i

land.rhs505.i:                                    ; preds = %for.inc516.i, %land.rhs505.preheader.i
  %indvars.iv1669.i = phi i64 [ %365, %land.rhs505.preheader.i ], [ %indvars.iv.next1670.i, %for.inc516.i ]
  %arrayidx507.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %indvars.iv1669.i
  %366 = load i8, ptr %arrayidx507.i, align 1, !tbaa !37
  %arrayidx510.i = getelementptr inbounds nuw i8, ptr %add.ptr405.i, i64 %indvars.iv1669.i
  %367 = load i8, ptr %arrayidx510.i, align 1, !tbaa !37
  %cmp512.i = icmp eq i8 %366, %367
  br i1 %cmp512.i, label %for.inc516.i, label %for.end518.loopexit.split.loop.exit1735.i

for.inc516.i:                                     ; preds = %land.rhs505.i
  %indvars.iv.next1670.i = add nuw nsw i64 %indvars.iv1669.i, 1
  %lftr.wideiv1672.i = trunc i64 %indvars.iv.next1670.i to i32
  %exitcond1673.not.i = icmp eq i32 %cond501.i, %lftr.wideiv1672.i
  br i1 %exitcond1673.not.i, label %for.end518.i.loopexit, label %land.rhs505.i, !llvm.loop !82

for.end518.loopexit.split.loop.exit1735.i:        ; preds = %land.rhs505.i
  %indvars.iv1669.i.lcssa = phi i64 [ %indvars.iv1669.i, %land.rhs505.i ]
  %368 = trunc nuw i64 %indvars.iv1669.i.lcssa to i32
  br label %for.end518.i

for.end518.i.loopexit:                            ; preds = %for.inc516.i
  br label %for.end518.i

for.end518.i:                                     ; preds = %for.end518.i.loopexit, %for.end518.loopexit.split.loop.exit1735.i, %do.end.i
  %len_test_2.0.lcssa.i = phi i32 [ %add490.i, %do.end.i ], [ %368, %for.end518.loopexit.split.loop.exit1735.i ], [ %cond501.i, %for.end518.i.loopexit ]
  %sub520.i = sub i32 %len_test_2.0.lcssa.i, %add490.i
  %cmp521.i = icmp ugt i32 %sub520.i, 1
  br i1 %cmp521.i, label %if.then523.i, label %cleanup.i227

if.then523.i:                                     ; preds = %for.end518.i
  %add529.i = add i32 %len_test420.0.lcssa.i, %add
  %and531.i = and i32 %add529.i, %282
  %sub.i1407.i = add i32 %len_test420.0.lcssa.i, -2
  %idxprom1.i1408.i = zext i32 %sub.i1407.i to i64
  %arrayidx2.i1409.i = getelementptr inbounds nuw i32, ptr %arrayidx.i1401.i, i64 %idxprom1.i1408.i
  %369 = load i32, ptr %arrayidx2.i1409.i, align 4, !tbaa !13
  %idxprom538.i = zext i32 %and531.i to i64
  %arrayidx539.i = getelementptr inbounds nuw i16, ptr %arrayidx537.i, i64 %idxprom538.i
  %370 = load i16, ptr %arrayidx539.i, align 2, !tbaa !36
  %371 = lshr i16 %370, 4
  %idxprom.i1410.i = zext nneg i16 %371 to i64
  %arrayidx.i1411.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i1410.i
  %372 = load i8, ptr %arrayidx.i1411.i, align 1, !tbaa !37
  %sub543.i = add i32 %len_test420.0.lcssa.i, -1
  %idxprom544.i = zext i32 %sub543.i to i64
  %arrayidx545.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %idxprom544.i
  %373 = load i8, ptr %arrayidx545.i, align 1, !tbaa !37
  %conv546.i = zext i8 %373 to i32
  %idxprom547.i = zext i32 %len_test420.0.lcssa.i to i64
  %arrayidx548.i = getelementptr inbounds nuw i8, ptr %add.ptr405.i, i64 %idxprom547.i
  %374 = load i8, ptr %arrayidx548.i, align 1, !tbaa !37
  %conv549.i = zext i8 %374 to i32
  %arrayidx551.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %idxprom547.i
  %375 = load i8, ptr %arrayidx551.i, align 1, !tbaa !37
  %conv552.i = zext i8 %375 to i32
  %and.i1415.i = and i32 %add529.i, %287
  %shl.i1417.i = shl i32 %and.i1415.i, %288
  %shr.i1419.i = lshr i32 %conv546.i, %sub.i.i200
  %add.i1420.i = add i32 %shr.i1419.i, %shl.i1417.i
  %idxprom.i1421.i = zext i32 %add.i1420.i to i64
  %arrayidx.i1422.i = getelementptr inbounds nuw [768 x i16], ptr %literal.i.i195, i64 %idxprom.i1421.i
  %add2.i1423.i = or disjoint i32 %conv552.i, 256
  br label %do.body.i1424.i

do.body.i1424.i:                                  ; preds = %do.body.i1424.i, %if.then523.i
  %offset.0.i1425.i = phi i32 [ %and15.i1447.i, %do.body.i1424.i ], [ 256, %if.then523.i ]
  %price.0.i1426.i = phi i32 [ %add13.i1444.i, %do.body.i1424.i ], [ 0, %if.then523.i ]
  %symbol.addr.0.i1427.i = phi i32 [ %shl14.i1445.i, %do.body.i1424.i ], [ %add2.i1423.i, %if.then523.i ]
  %match_byte.addr.0.i1428.i = phi i32 [ %shl3.i1429.i, %do.body.i1424.i ], [ %conv549.i, %if.then523.i ]
  %shl3.i1429.i = shl i32 %match_byte.addr.0.i1428.i, 1
  %and4.i1430.i = and i32 %shl3.i1429.i, %offset.0.i1425.i
  %shr6.i1431.i = lshr i32 %symbol.addr.0.i1427.i, 8
  %add5.i1432.i = add nuw nsw i32 %shr6.i1431.i, %offset.0.i1425.i
  %add7.i1433.i = add nuw nsw i32 %add5.i1432.i, %and4.i1430.i
  %idxprom10.i1434.i = zext nneg i32 %add7.i1433.i to i64
  %arrayidx11.i1435.i = getelementptr inbounds nuw i16, ptr %arrayidx.i1422.i, i64 %idxprom10.i1434.i
  %376 = load i16, ptr %arrayidx11.i1435.i, align 2, !tbaa !36
  %conv.i.i1436.i = zext i16 %376 to i64
  %.mask.i1437.i = and i32 %symbol.addr.0.i1427.i, 128
  %isneg.not.i1438.i = icmp eq i32 %.mask.i1437.i, 0
  %and.i31.i1439.i = select i1 %isneg.not.i1438.i, i64 0, i64 2032
  %xor.i.i1440.i = xor i64 %and.i31.i1439.i, %conv.i.i1436.i
  %shr.i32.i1441.i = lshr i64 %xor.i.i1440.i, 4
  %arrayidx.i34.i1442.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i32.i1441.i
  %377 = load i8, ptr %arrayidx.i34.i1442.i, align 1, !tbaa !37
  %conv1.i.i1443.i = zext i8 %377 to i32
  %add13.i1444.i = add i32 %price.0.i1426.i, %conv1.i.i1443.i
  %shl14.i1445.i = shl nuw nsw i32 %symbol.addr.0.i1427.i, 1
  %378 = xor i32 %shl14.i1445.i, %shl3.i1429.i
  %not.i1446.i = xor i32 %378, -1
  %and15.i1447.i = and i32 %offset.0.i1425.i, %not.i1446.i
  %cmp.i1448.i = icmp samesign ult i32 %symbol.addr.0.i1427.i, 32768
  br i1 %cmp.i1448.i, label %do.body.i1424.i, label %get_literal_price.exit1450.i, !llvm.loop !64

get_literal_price.exit1450.i:                     ; preds = %do.body.i1424.i
  %add13.i1444.i.lcssa = phi i32 [ %add13.i1444.i, %do.body.i1424.i ]
  %conv1.i1412.i = zext i8 %372 to i32
  %add570.i = add i32 %add529.i, 1
  %and572.i = and i32 %add570.i, %282
  %idxprom577.i = zext i32 %and572.i to i64
  %arrayidx578.i = getelementptr inbounds nuw i16, ptr %arrayidx576.i, i64 %idxprom577.i
  %379 = load i16, ptr %arrayidx578.i, align 2, !tbaa !36
  %380 = lshr i16 %379, 4
  %381 = xor i16 %380, 127
  %idxprom.i1451.i = zext nneg i16 %381 to i64
  %arrayidx.i1452.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i1451.i
  %382 = load i8, ptr %arrayidx.i1452.i, align 1, !tbaa !37
  %conv1.i1453.i = zext i8 %382 to i32
  %383 = load i16, ptr %arrayidx583.i, align 2, !tbaa !36
  %384 = lshr i16 %383, 4
  %385 = xor i16 %384, 127
  %idxprom.i1454.i = zext nneg i16 %385 to i64
  %arrayidx.i1455.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i1454.i
  %386 = load i8, ptr %arrayidx.i1455.i, align 1, !tbaa !37
  %conv1.i1456.i = zext i8 %386 to i32
  %add588.i = add i32 %add439.i, 1
  %add589.i = add i32 %sub520.i, %add588.i
  %cmp5911617.i = icmp ult i32 %len_end.addr.4.lcssa.i, %add589.i
  br i1 %cmp5911617.i, label %while.body593.preheader.i, label %while.end599.i

while.body593.preheader.i:                        ; preds = %get_literal_price.exit1450.i
  %387 = zext i32 %len_end.addr.4.lcssa.i to i64
  %wide.trip.count1677.i = zext i32 %add589.i to i64
  br label %while.body593.i

while.body593.i:                                  ; preds = %while.body593.i, %while.body593.preheader.i
  %indvars.iv1674.i = phi i64 [ %387, %while.body593.preheader.i ], [ %indvars.iv.next1675.i, %while.body593.i ]
  %indvars.iv.next1675.i = add nuw nsw i64 %indvars.iv1674.i, 1
  %arrayidx597.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %indvars.iv.next1675.i
  %price598.i = getelementptr inbounds nuw i8, ptr %arrayidx597.i, i64 16
  store i32 1073741824, ptr %price598.i, align 4, !tbaa !65
  %exitcond1678.not.i = icmp eq i64 %indvars.iv.next1675.i, %wide.trip.count1677.i
  br i1 %exitcond1678.not.i, label %while.end599.loopexit.i, label %while.body593.i, !llvm.loop !83

while.end599.loopexit.i:                          ; preds = %while.body593.i
  %indvars.iv.next1675.i.lcssa = phi i64 [ %indvars.iv.next1675.i, %while.body593.i ]
  %388 = trunc nuw i64 %indvars.iv.next1675.i.lcssa to i32
  br label %while.end599.i

while.end599.i:                                   ; preds = %while.end599.loopexit.i, %get_literal_price.exit1450.i
  %len_end.addr.5.lcssa.i = phi i32 [ %len_end.addr.4.lcssa.i, %get_literal_price.exit1450.i ], [ %388, %while.end599.loopexit.i ]
  %arrayidx.i.i1459.i = getelementptr inbounds nuw [272 x i32], ptr %prices.i.i226, i64 %idxprom577.i
  %sub.i.i1460.i = add i32 %sub520.i, -2
  %idxprom1.i.i1461.i = zext i32 %sub.i.i1460.i to i64
  %arrayidx2.i.i1462.i = getelementptr inbounds nuw i32, ptr %arrayidx.i.i1459.i, i64 %idxprom1.i.i1461.i
  %389 = load i32, ptr %arrayidx2.i.i1462.i, align 4, !tbaa !13
  %390 = load i16, ptr %arrayidx.i5.i1464.i, align 2, !tbaa !36
  %391 = lshr i16 %390, 4
  %idxprom.i.i.i1465.i = zext nneg i16 %391 to i64
  %arrayidx.i.i.i1466.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i.i.i1465.i
  %392 = load i8, ptr %arrayidx.i.i.i1466.i, align 1, !tbaa !37
  %conv1.i.i.i1467.i = zext i8 %392 to i32
  %arrayidx4.i.i1470.i = getelementptr inbounds nuw i16, ptr %arrayidx2.i6.i1469.i, i64 %idxprom577.i
  %393 = load i16, ptr %arrayidx4.i.i1470.i, align 2, !tbaa !36
  %394 = lshr i16 %393, 4
  %395 = xor i16 %394, 127
  %idxprom.i43.i.i1471.i = zext nneg i16 %395 to i64
  %arrayidx.i44.i.i1472.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i43.i.i1471.i
  %396 = load i8, ptr %arrayidx.i44.i.i1472.i, align 1, !tbaa !37
  %conv1.i45.i.i1473.i = zext i8 %396 to i32
  %add.i.i1474.i = add i32 %369, %add451.i
  %add.i1475.i = add i32 %add.i.i1474.i, %conv1.i1412.i
  %add534.i = add i32 %add.i1475.i, %add13.i1444.i.lcssa
  %add541.i = add i32 %add534.i, %conv1.i1453.i
  %add554.i = add i32 %add541.i, %conv1.i1456.i
  %add580.i = add i32 %add554.i, %389
  %add585.i = add i32 %add580.i, %conv1.i.i.i1467.i
  %add602.i = add i32 %add585.i, %conv1.i45.i.i1473.i
  %idxprom604.i = zext i32 %add589.i to i64
  %arrayidx605.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %idxprom604.i
  %price606.i = getelementptr inbounds nuw i8, ptr %arrayidx605.i, i64 16
  %397 = load i32, ptr %price606.i, align 4, !tbaa !65
  %cmp607.i = icmp ult i32 %add602.i, %397
  br i1 %cmp607.i, label %if.then609.i, label %cleanup.i227

if.then609.i:                                     ; preds = %while.end599.i
  store i32 %add602.i, ptr %price606.i, align 4, !tbaa !65
  %pos_prev619.i = getelementptr inbounds nuw i8, ptr %arrayidx605.i, i64 20
  store i32 %add588.i, ptr %pos_prev619.i, align 4, !tbaa !11
  %back_prev623.i = getelementptr inbounds nuw i8, ptr %arrayidx605.i, i64 24
  store i32 0, ptr %back_prev623.i, align 4, !tbaa !14
  %prev_1_is_literal627.i = getelementptr inbounds nuw i8, ptr %arrayidx605.i, i64 4
  store i8 1, ptr %prev_1_is_literal627.i, align 4, !tbaa !66
  %prev_2631.i = getelementptr inbounds nuw i8, ptr %arrayidx605.i, i64 5
  store i8 1, ptr %prev_2631.i, align 1, !tbaa !73
  %pos_prev_2635.i = getelementptr inbounds nuw i8, ptr %arrayidx605.i, i64 8
  %398 = trunc nuw i64 %indvars.iv391 to i32
  store i32 %398, ptr %pos_prev_2635.i, align 4, !tbaa !74
  %back_prev_2639.i = getelementptr inbounds nuw i8, ptr %arrayidx605.i, i64 12
  store i32 %360, ptr %back_prev_2639.i, align 4, !tbaa !75
  br label %cleanup.i227

cleanup.i227:                                     ; preds = %if.then609.i, %while.end599.i, %for.end518.i, %lor.lhs.false.i254, %for.body398.i
  %start_len.2.i = phi i32 [ %start_len.01622.i, %lor.lhs.false.i254 ], [ %start_len.01622.i, %for.body398.i ], [ %spec.select.i, %while.end599.i ], [ %spec.select.i, %if.then609.i ], [ %spec.select.i, %for.end518.i ]
  %len_end.addr.7.i = phi i32 [ %len_end.addr.31623.i, %lor.lhs.false.i254 ], [ %len_end.addr.31623.i, %for.body398.i ], [ %len_end.addr.5.lcssa.i, %while.end599.i ], [ %len_end.addr.5.lcssa.i, %if.then609.i ], [ %len_end.addr.4.lcssa.i, %for.end518.i ]
  %indvars.iv.next1680.i = add nuw nsw i64 %indvars.iv1679.i, 1
  %exitcond1683.not.i = icmp eq i64 %indvars.iv.next1680.i, 4
  br i1 %exitcond1683.not.i, label %for.cond.cleanup397.i, label %for.body398.i, !llvm.loop !84

while.cond649.i:                                  ; preds = %while.cond649.i, %while.cond649.i.preheader
  %matches_count.0.i = phi i32 [ %inc655.i, %while.cond649.i ], [ 0, %while.cond649.i.preheader ]
  %idxprom650.i = zext i32 %matches_count.0.i to i64
  %arrayidx651.i = getelementptr inbounds nuw %struct.lzma_match, ptr %matches, i64 %idxprom650.i
  %399 = load i32, ptr %arrayidx651.i, align 4, !tbaa !69
  %cmp652.i = icmp ugt i32 %cond284.i, %399
  %inc655.i = add i32 %matches_count.0.i, 1
  br i1 %cmp652.i, label %while.cond649.i, label %while.end656.i, !llvm.loop !85

while.end656.i:                                   ; preds = %while.cond649.i
  %idxprom650.i.lcssa = phi i64 [ %idxprom650.i, %while.cond649.i ]
  %inc655.i.lcssa = phi i32 [ %inc655.i, %while.cond649.i ]
  %arrayidx651.i.le = getelementptr inbounds nuw %struct.lzma_match, ptr %matches, i64 %idxprom650.i.lcssa
  store i32 %cond284.i, ptr %arrayidx651.i.le, align 4, !tbaa !69
  br label %if.end662.i

if.end662.i:                                      ; preds = %while.end656.i, %for.cond.cleanup397.i
  %new_len.0.i = phi i32 [ %cond284.i, %while.end656.i ], [ %call29, %for.cond.cleanup397.i ]
  %matches_count.1.i = phi i32 [ %inc655.i.lcssa, %while.end656.i ], [ %243, %for.cond.cleanup397.i ]
  %cmp663.not.i = icmp ult i32 %new_len.0.i, %start_len.2.i.lcssa
  br i1 %cmp663.not.i, label %helper2.exit, label %if.then665.i

if.then665.i:                                     ; preds = %if.end662.i
  %idxprom.i1476.i = zext nneg i16 %293 to i64
  %arrayidx.i1477.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i1476.i
  %400 = load i8, ptr %arrayidx.i1477.i, align 1, !tbaa !37
  %conv1.i1478.i = zext i8 %400 to i32
  %401 = trunc nuw i64 %indvars.iv391 to i32
  %add672.i = add i32 %new_len.0.i, %401
  %cmp6731624.i = icmp ult i32 %len_end.addr.7.i.lcssa, %add672.i
  br i1 %cmp6731624.i, label %while.body675.preheader.i, label %while.cond683.preheader.i

while.body675.preheader.i:                        ; preds = %if.then665.i
  %402 = zext i32 %len_end.addr.7.i.lcssa to i64
  %wide.trip.count1688.i = zext i32 %add672.i to i64
  br label %while.body675.i

while.cond683.preheader.loopexit.i:               ; preds = %while.body675.i
  %indvars.iv.next1686.i.lcssa = phi i64 [ %indvars.iv.next1686.i, %while.body675.i ]
  %403 = trunc nuw i64 %indvars.iv.next1686.i.lcssa to i32
  br label %while.cond683.preheader.i

while.cond683.preheader.i:                        ; preds = %while.cond683.preheader.loopexit.i, %if.then665.i
  %len_end.addr.8.lcssa.i = phi i32 [ %len_end.addr.7.i.lcssa, %if.then665.i ], [ %403, %while.cond683.preheader.loopexit.i ]
  br label %while.cond683.i

while.body675.i:                                  ; preds = %while.body675.i, %while.body675.preheader.i
  %indvars.iv1685.i = phi i64 [ %402, %while.body675.preheader.i ], [ %indvars.iv.next1686.i, %while.body675.i ]
  %indvars.iv.next1686.i = add nuw nsw i64 %indvars.iv1685.i, 1
  %arrayidx679.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %indvars.iv.next1686.i
  %price680.i = getelementptr inbounds nuw i8, ptr %arrayidx679.i, i64 16
  store i32 1073741824, ptr %price680.i, align 4, !tbaa !65
  %exitcond1689.not.i = icmp eq i64 %indvars.iv.next1686.i, %wide.trip.count1688.i
  br i1 %exitcond1689.not.i, label %while.cond683.preheader.loopexit.i, label %while.body675.i, !llvm.loop !86

while.cond683.i:                                  ; preds = %while.cond683.i, %while.cond683.preheader.i
  %i682.0.i = phi i32 [ %inc691.i, %while.cond683.i ], [ 0, %while.cond683.preheader.i ]
  %idxprom685.i = zext i32 %i682.0.i to i64
  %arrayidx686.i = getelementptr inbounds nuw %struct.lzma_match, ptr %matches, i64 %idxprom685.i
  %404 = load i32, ptr %arrayidx686.i, align 4, !tbaa !69
  %cmp688.i = icmp ugt i32 %start_len.2.i.lcssa, %404
  %inc691.i = add i32 %i682.0.i, 1
  br i1 %cmp688.i, label %while.cond683.i, label %for.cond694.preheader.i, !llvm.loop !87

for.cond694.preheader.i:                          ; preds = %while.cond683.i
  %i682.0.i.lcssa = phi i32 [ %i682.0.i, %while.cond683.i ]
  %arrayidx.i.i1485.i = getelementptr inbounds nuw [272 x i32], ptr %prices.i.i1483.i, i64 %idxprom185.i
  %add11.i.i228 = add i32 %add223.i, %conv1.i1478.i
  %cond779.i = select i1 %cmp188.i, i64 10, i64 7
  %arrayidx787.i = getelementptr inbounds nuw [16 x i16], ptr %is_match.i190, i64 %cond779.i
  %405 = add i32 %239, 1
  %406 = add i32 %405, %start_len.2.i.lcssa387
  %407 = zext i32 %add38 to i64
  br label %for.cond694.i

for.cond694.i:                                    ; preds = %for.inc906.i, %for.cond694.preheader.i
  %indvars.iv388 = phi i32 [ %indvars.iv.next389, %for.inc906.i ], [ %406, %for.cond694.preheader.i ]
  %indvars.iv1691.in.i = phi i32 [ %start_len.2.i.lcssa, %for.cond694.preheader.i ], [ %indvars.iv1691.i, %for.inc906.i ]
  %i682.1.i = phi i32 [ %i682.0.i.lcssa, %for.cond694.preheader.i ], [ %i682.31588.i, %for.inc906.i ]
  %len_end.addr.9.i = phi i32 [ %len_end.addr.8.lcssa.i, %for.cond694.preheader.i ], [ %len_end.addr.131589.i, %for.inc906.i ]
  %408 = zext i32 %indvars.iv388 to i64
  %umin = call i64 @llvm.umin.i64(i64 %238, i64 %408)
  %umin390 = call i64 @llvm.umin.i64(i64 %umin, i64 %407)
  %indvars.iv1691.i = add i32 %indvars.iv1691.in.i, 1
  %409 = zext i32 %indvars.iv1691.i to i64
  %idxprom696.i = zext i32 %i682.1.i to i64
  %arrayidx697.i = getelementptr inbounds nuw %struct.lzma_match, ptr %matches, i64 %idxprom696.i
  %dist.i232 = getelementptr inbounds nuw i8, ptr %arrayidx697.i, i64 4
  %410 = load i32, ptr %dist.i232, align 4, !tbaa !57
  %411 = call i32 @llvm.umin.i32(i32 %indvars.iv1691.in.i, i32 5)
  %cond.i.i233 = add nsw i32 %411, -2
  %cmp1.i.i234 = icmp ult i32 %410, 128
  br i1 %cmp1.i.i234, label %if.then.i1489.i, label %if.else.i1479.i

if.then.i1489.i:                                  ; preds = %for.cond694.i
  %idxprom.i1490.i = zext i32 %cond.i.i233 to i64
  %arrayidx.i1491.i = getelementptr inbounds nuw [128 x i32], ptr %distances_prices.i.i231, i64 %idxprom.i1490.i
  %idxprom2.i.i251 = zext nneg i32 %410 to i64
  %arrayidx3.i.i252 = getelementptr inbounds nuw i32, ptr %arrayidx.i1491.i, i64 %idxprom2.i.i251
  %412 = load i32, ptr %arrayidx3.i.i252, align 4, !tbaa !13
  br label %get_pos_len_price.exit.i250

if.else.i1479.i:                                  ; preds = %for.cond694.i
  %cmp.i.i.i235 = icmp ult i32 %410, 524288
  %cmp1.i.i.i236 = icmp sgt i32 %410, -1
  %..i.i.i237 = select i1 %cmp1.i.i.i236, i32 18, i32 30
  %.21.i.i.i238 = select i1 %cmp1.i.i.i236, i64 36, i64 60
  %.sink20.i.i.i239 = select i1 %cmp.i.i.i235, i32 6, i32 %..i.i.i237
  %.sink.i.i.i240 = select i1 %cmp.i.i.i235, i64 12, i64 %.21.i.i.i238
  %shr10.i.i.i241 = lshr i32 %410, %.sink20.i.i.i239
  %idxprom11.i.i.i242 = zext nneg i32 %shr10.i.i.i241 to i64
  %arrayidx12.i.i.i243 = getelementptr inbounds nuw i8, ptr @lzma_fastpos, i64 %idxprom11.i.i.i242
  %413 = load i8, ptr %arrayidx12.i.i.i243, align 1, !tbaa !37
  %conv13.i.i.i244 = zext i8 %413 to i64
  %idxprom4.i.i245 = zext i32 %cond.i.i233 to i64
  %arrayidx5.i.i246 = getelementptr inbounds nuw [64 x i32], ptr %pos_slot_prices.i.i229, i64 %idxprom4.i.i245
  %414 = getelementptr inbounds nuw i32, ptr %arrayidx5.i.i246, i64 %.sink.i.i.i240
  %arrayidx7.i.i247 = getelementptr inbounds nuw i32, ptr %414, i64 %conv13.i.i.i244
  %415 = load i32, ptr %arrayidx7.i.i247, align 4, !tbaa !13
  %and.i1480.i = and i32 %410, 15
  %idxprom8.i.i248 = zext nneg i32 %and.i1480.i to i64
  %arrayidx9.i.i249 = getelementptr inbounds nuw i32, ptr %align_prices.i.i230, i64 %idxprom8.i.i248
  %416 = load i32, ptr %arrayidx9.i.i249, align 4, !tbaa !13
  %add.i1481.i = add i32 %416, %415
  br label %get_pos_len_price.exit.i250

get_pos_len_price.exit.i250:                      ; preds = %if.else.i1479.i, %if.then.i1489.i
  %price.0.i1482.i = phi i32 [ %412, %if.then.i1489.i ], [ %add.i1481.i, %if.else.i1479.i ]
  %sub.i.i1486.i = add i32 %indvars.iv1691.in.i, -2
  %idxprom1.i.i1487.i = zext i32 %sub.i.i1486.i to i64
  %arrayidx2.i.i1488.i = getelementptr inbounds nuw i32, ptr %arrayidx.i.i1485.i, i64 %idxprom1.i.i1487.i
  %417 = load i32, ptr %arrayidx2.i.i1488.i, align 4, !tbaa !13
  %add670.i = add i32 %add11.i.i228, %price.0.i1482.i
  %add700.i = add i32 %add670.i, %417
  %418 = trunc nuw i64 %indvars.iv391 to i32
  %add702.i = add i32 %indvars.iv1691.in.i, %418
  %idxprom703.i = zext i32 %add702.i to i64
  %arrayidx704.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %idxprom703.i
  %price705.i = getelementptr inbounds nuw i8, ptr %arrayidx704.i, i64 16
  %419 = load i32, ptr %price705.i, align 4, !tbaa !65
  %cmp706.i = icmp ult i32 %add700.i, %419
  br i1 %cmp706.i, label %if.then708.i, label %if.end730.i

if.then708.i:                                     ; preds = %get_pos_len_price.exit.i250
  store i32 %add700.i, ptr %price705.i, align 4, !tbaa !65
  %pos_prev718.i = getelementptr inbounds nuw i8, ptr %arrayidx704.i, i64 20
  %420 = trunc nuw i64 %indvars.iv391 to i32
  store i32 %420, ptr %pos_prev718.i, align 4, !tbaa !11
  %add719.i = add i32 %410, 4
  %back_prev724.i = getelementptr inbounds nuw i8, ptr %arrayidx704.i, i64 24
  store i32 %add719.i, ptr %back_prev724.i, align 4, !tbaa !14
  %prev_1_is_literal729.i = getelementptr inbounds nuw i8, ptr %arrayidx704.i, i64 4
  store i8 0, ptr %prev_1_is_literal729.i, align 4, !tbaa !66
  br label %if.end730.i

if.end730.i:                                      ; preds = %if.then708.i, %get_pos_len_price.exit.i250
  %421 = load i32, ptr %arrayidx697.i, align 4, !tbaa !69
  %cmp735.i = icmp eq i32 %indvars.iv1691.in.i, %421
  br i1 %cmp735.i, label %if.then737.i, label %for.inc906.i

if.then737.i:                                     ; preds = %if.end730.i
  %idx.ext739.i = zext i32 %410 to i64
  %idx.neg740.i = sub nsw i64 0, %idx.ext739.i
  %add.ptr741.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg740.i
  %add.ptr742.i = getelementptr inbounds i8, ptr %add.ptr741.i, i64 -1
  %add744.i = add i32 %indvars.iv1691.in.i, 1
  %add746.i = add i32 %add744.i, %239
  %cond753.i = call i32 @llvm.umin.i32(i32 %spec.select, i32 %add746.i)
  %cmp7551627.i = icmp ult i32 %add744.i, %cond753.i
  br i1 %cmp7551627.i, label %land.rhs757.preheader.i, label %for.end770.i

land.rhs757.preheader.i:                          ; preds = %if.then737.i
  %422 = zext i32 %cond753.i to i64
  br label %land.rhs757.i

land.rhs757.i:                                    ; preds = %for.inc768.i, %land.rhs757.preheader.i
  %indvars.iv1693.i = phi i64 [ %409, %land.rhs757.preheader.i ], [ %indvars.iv.next1694.i, %for.inc768.i ]
  %arrayidx759.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %indvars.iv1693.i
  %423 = load i8, ptr %arrayidx759.i, align 1, !tbaa !37
  %arrayidx762.i = getelementptr inbounds nuw i8, ptr %add.ptr742.i, i64 %indvars.iv1693.i
  %424 = load i8, ptr %arrayidx762.i, align 1, !tbaa !37
  %cmp764.i = icmp eq i8 %423, %424
  br i1 %cmp764.i, label %for.inc768.i, label %for.end770.loopexit.i

for.inc768.i:                                     ; preds = %land.rhs757.i
  %indvars.iv.next1694.i = add nuw nsw i64 %indvars.iv1693.i, 1
  %cmp755.i = icmp samesign ult i64 %indvars.iv.next1694.i, %422
  br i1 %cmp755.i, label %land.rhs757.i, label %for.end770.loopexit.i, !llvm.loop !88

for.end770.loopexit.i:                            ; preds = %for.inc768.i, %land.rhs757.i
  %len_test_2743.0.lcssa.ph.in.i = phi i64 [ %indvars.iv1693.i, %land.rhs757.i ], [ %umin390, %for.inc768.i ]
  %len_test_2743.0.lcssa.ph.i = trunc i64 %len_test_2743.0.lcssa.ph.in.i to i32
  br label %for.end770.i

for.end770.i:                                     ; preds = %for.end770.loopexit.i, %if.then737.i
  %len_test_2743.0.lcssa.i = phi i32 [ %add744.i, %if.then737.i ], [ %len_test_2743.0.lcssa.ph.i, %for.end770.loopexit.i ]
  %sub772.i = sub i32 %len_test_2743.0.lcssa.i, %add744.i
  %cmp773.i = icmp ugt i32 %sub772.i, 1
  br i1 %cmp773.i, label %if.then775.i, label %if.end890.i

if.then775.i:                                     ; preds = %for.end770.i
  %add781.i = add i32 %indvars.iv1691.in.i, %add
  %and783.i = and i32 %add781.i, %282
  %idxprom788.i = zext i32 %and783.i to i64
  %arrayidx789.i = getelementptr inbounds nuw i16, ptr %arrayidx787.i, i64 %idxprom788.i
  %425 = load i16, ptr %arrayidx789.i, align 2, !tbaa !36
  %426 = lshr i16 %425, 4
  %idxprom.i1492.i = zext nneg i16 %426 to i64
  %arrayidx.i1493.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i1492.i
  %427 = load i8, ptr %arrayidx.i1493.i, align 1, !tbaa !37
  %sub793.i = add i32 %indvars.iv1691.in.i, -1
  %idxprom794.i = zext i32 %sub793.i to i64
  %arrayidx795.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %idxprom794.i
  %428 = load i8, ptr %arrayidx795.i, align 1, !tbaa !37
  %conv796.i = zext i8 %428 to i32
  %idxprom797.i = zext i32 %indvars.iv1691.in.i to i64
  %arrayidx798.i = getelementptr inbounds nuw i8, ptr %add.ptr742.i, i64 %idxprom797.i
  %429 = load i8, ptr %arrayidx798.i, align 1, !tbaa !37
  %conv799.i = zext i8 %429 to i32
  %arrayidx801.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %idxprom797.i
  %430 = load i8, ptr %arrayidx801.i, align 1, !tbaa !37
  %conv802.i = zext i8 %430 to i32
  %and.i1497.i = and i32 %add781.i, %287
  %shl.i1499.i = shl i32 %and.i1497.i, %288
  %shr.i1501.i = lshr i32 %conv796.i, %sub.i.i200
  %add.i1502.i = add i32 %shr.i1501.i, %shl.i1499.i
  %idxprom.i1503.i = zext i32 %add.i1502.i to i64
  %arrayidx.i1504.i = getelementptr inbounds nuw [768 x i16], ptr %literal.i.i195, i64 %idxprom.i1503.i
  %add2.i1505.i = or disjoint i32 %conv802.i, 256
  br label %do.body.i1506.i

do.body.i1506.i:                                  ; preds = %do.body.i1506.i, %if.then775.i
  %offset.0.i1507.i = phi i32 [ %and15.i1529.i, %do.body.i1506.i ], [ 256, %if.then775.i ]
  %price.0.i1508.i = phi i32 [ %add13.i1526.i, %do.body.i1506.i ], [ 0, %if.then775.i ]
  %symbol.addr.0.i1509.i = phi i32 [ %shl14.i1527.i, %do.body.i1506.i ], [ %add2.i1505.i, %if.then775.i ]
  %match_byte.addr.0.i1510.i = phi i32 [ %shl3.i1511.i, %do.body.i1506.i ], [ %conv799.i, %if.then775.i ]
  %shl3.i1511.i = shl i32 %match_byte.addr.0.i1510.i, 1
  %and4.i1512.i = and i32 %shl3.i1511.i, %offset.0.i1507.i
  %shr6.i1513.i = lshr i32 %symbol.addr.0.i1509.i, 8
  %add5.i1514.i = add nuw nsw i32 %shr6.i1513.i, %offset.0.i1507.i
  %add7.i1515.i = add nuw nsw i32 %add5.i1514.i, %and4.i1512.i
  %idxprom10.i1516.i = zext nneg i32 %add7.i1515.i to i64
  %arrayidx11.i1517.i = getelementptr inbounds nuw i16, ptr %arrayidx.i1504.i, i64 %idxprom10.i1516.i
  %431 = load i16, ptr %arrayidx11.i1517.i, align 2, !tbaa !36
  %conv.i.i1518.i = zext i16 %431 to i64
  %.mask.i1519.i = and i32 %symbol.addr.0.i1509.i, 128
  %isneg.not.i1520.i = icmp eq i32 %.mask.i1519.i, 0
  %and.i31.i1521.i = select i1 %isneg.not.i1520.i, i64 0, i64 2032
  %xor.i.i1522.i = xor i64 %and.i31.i1521.i, %conv.i.i1518.i
  %shr.i32.i1523.i = lshr i64 %xor.i.i1522.i, 4
  %arrayidx.i34.i1524.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %shr.i32.i1523.i
  %432 = load i8, ptr %arrayidx.i34.i1524.i, align 1, !tbaa !37
  %conv1.i.i1525.i = zext i8 %432 to i32
  %add13.i1526.i = add i32 %price.0.i1508.i, %conv1.i.i1525.i
  %shl14.i1527.i = shl nuw nsw i32 %symbol.addr.0.i1509.i, 1
  %433 = xor i32 %shl14.i1527.i, %shl3.i1511.i
  %not.i1528.i = xor i32 %433, -1
  %and15.i1529.i = and i32 %offset.0.i1507.i, %not.i1528.i
  %cmp.i1530.i = icmp samesign ult i32 %symbol.addr.0.i1509.i, 32768
  br i1 %cmp.i1530.i, label %do.body.i1506.i, label %get_literal_price.exit1532.i, !llvm.loop !64

get_literal_price.exit1532.i:                     ; preds = %do.body.i1506.i
  %add13.i1526.i.lcssa = phi i32 [ %add13.i1526.i, %do.body.i1506.i ]
  %conv1.i1494.i = zext i8 %427 to i32
  %add819.i = add i32 %and783.i, 1
  %and821.i = and i32 %add819.i, %282
  %idxprom826.i = zext i32 %and821.i to i64
  %arrayidx827.i = getelementptr inbounds nuw i16, ptr %arrayidx825.i, i64 %idxprom826.i
  %434 = load i16, ptr %arrayidx827.i, align 2, !tbaa !36
  %435 = lshr i16 %434, 4
  %436 = xor i16 %435, 127
  %idxprom.i1533.i = zext nneg i16 %436 to i64
  %arrayidx.i1534.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i1533.i
  %437 = load i8, ptr %arrayidx.i1534.i, align 1, !tbaa !37
  %conv1.i1535.i = zext i8 %437 to i32
  %438 = load i16, ptr %arrayidx832.i, align 2, !tbaa !36
  %439 = lshr i16 %438, 4
  %440 = xor i16 %439, 127
  %idxprom.i1536.i = zext nneg i16 %440 to i64
  %arrayidx.i1537.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i1536.i
  %441 = load i8, ptr %arrayidx.i1537.i, align 1, !tbaa !37
  %conv1.i1538.i = zext i8 %441 to i32
  %add837.i = add i32 %add702.i, 1
  %add838.i = add i32 %sub772.i, %add837.i
  %cmp8401631.i = icmp ult i32 %len_end.addr.9.i, %add838.i
  br i1 %cmp8401631.i, label %while.body842.preheader.i, label %while.end848.i

while.body842.preheader.i:                        ; preds = %get_literal_price.exit1532.i
  %442 = zext i32 %len_end.addr.9.i to i64
  %wide.trip.count1700.i = zext i32 %add838.i to i64
  br label %while.body842.i

while.body842.i:                                  ; preds = %while.body842.i, %while.body842.preheader.i
  %indvars.iv1696.i = phi i64 [ %442, %while.body842.preheader.i ], [ %indvars.iv.next1697.i, %while.body842.i ]
  %indvars.iv.next1697.i = add nuw nsw i64 %indvars.iv1696.i, 1
  %arrayidx846.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %indvars.iv.next1697.i
  %price847.i = getelementptr inbounds nuw i8, ptr %arrayidx846.i, i64 16
  store i32 1073741824, ptr %price847.i, align 4, !tbaa !65
  %exitcond1701.not.i = icmp eq i64 %indvars.iv.next1697.i, %wide.trip.count1700.i
  br i1 %exitcond1701.not.i, label %while.end848.loopexit.i, label %while.body842.i, !llvm.loop !89

while.end848.loopexit.i:                          ; preds = %while.body842.i
  %indvars.iv.next1697.i.lcssa = phi i64 [ %indvars.iv.next1697.i, %while.body842.i ]
  %443 = trunc nuw i64 %indvars.iv.next1697.i.lcssa to i32
  br label %while.end848.i

while.end848.i:                                   ; preds = %while.end848.loopexit.i, %get_literal_price.exit1532.i
  %len_end.addr.10.lcssa.i = phi i32 [ %len_end.addr.9.i, %get_literal_price.exit1532.i ], [ %443, %while.end848.loopexit.i ]
  %arrayidx.i.i1541.i = getelementptr inbounds nuw [272 x i32], ptr %prices.i.i226, i64 %idxprom826.i
  %sub.i.i1542.i = add i32 %sub772.i, -2
  %idxprom1.i.i1543.i = zext i32 %sub.i.i1542.i to i64
  %arrayidx2.i.i1544.i = getelementptr inbounds nuw i32, ptr %arrayidx.i.i1541.i, i64 %idxprom1.i.i1543.i
  %444 = load i32, ptr %arrayidx2.i.i1544.i, align 4, !tbaa !13
  %445 = load i16, ptr %arrayidx.i5.i1546.i, align 2, !tbaa !36
  %446 = lshr i16 %445, 4
  %idxprom.i.i.i1547.i = zext nneg i16 %446 to i64
  %arrayidx.i.i.i1548.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i.i.i1547.i
  %447 = load i8, ptr %arrayidx.i.i.i1548.i, align 1, !tbaa !37
  %conv1.i.i.i1549.i = zext i8 %447 to i32
  %arrayidx4.i.i1552.i = getelementptr inbounds nuw i16, ptr %arrayidx2.i6.i1551.i, i64 %idxprom826.i
  %448 = load i16, ptr %arrayidx4.i.i1552.i, align 2, !tbaa !36
  %449 = lshr i16 %448, 4
  %450 = xor i16 %449, 127
  %idxprom.i43.i.i1553.i = zext nneg i16 %450 to i64
  %arrayidx.i44.i.i1554.i = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %idxprom.i43.i.i1553.i
  %451 = load i8, ptr %arrayidx.i44.i.i1554.i, align 1, !tbaa !37
  %conv1.i45.i.i1555.i = zext i8 %451 to i32
  %add.i.i1556.i = add i32 %add700.i, %conv1.i1494.i
  %add.i1557.i = add i32 %add.i.i1556.i, %add13.i1526.i.lcssa
  %add791.i = add i32 %add.i1557.i, %conv1.i1535.i
  %add804.i = add i32 %add791.i, %conv1.i1538.i
  %add829.i = add i32 %add804.i, %444
  %add834.i = add i32 %add829.i, %conv1.i.i.i1549.i
  %add850.i = add i32 %add834.i, %conv1.i45.i.i1555.i
  %idxprom852.i = zext i32 %add838.i to i64
  %arrayidx853.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i178, i64 %idxprom852.i
  %price854.i = getelementptr inbounds nuw i8, ptr %arrayidx853.i, i64 16
  %452 = load i32, ptr %price854.i, align 4, !tbaa !65
  %cmp855.i = icmp ult i32 %add850.i, %452
  br i1 %cmp855.i, label %if.then857.i, label %if.end890.i

if.then857.i:                                     ; preds = %while.end848.i
  store i32 %add850.i, ptr %price854.i, align 4, !tbaa !65
  %pos_prev867.i = getelementptr inbounds nuw i8, ptr %arrayidx853.i, i64 20
  store i32 %add837.i, ptr %pos_prev867.i, align 4, !tbaa !11
  %back_prev871.i = getelementptr inbounds nuw i8, ptr %arrayidx853.i, i64 24
  store i32 0, ptr %back_prev871.i, align 4, !tbaa !14
  %prev_1_is_literal875.i = getelementptr inbounds nuw i8, ptr %arrayidx853.i, i64 4
  store i8 1, ptr %prev_1_is_literal875.i, align 4, !tbaa !66
  %prev_2879.i = getelementptr inbounds nuw i8, ptr %arrayidx853.i, i64 5
  store i8 1, ptr %prev_2879.i, align 1, !tbaa !73
  %pos_prev_2883.i = getelementptr inbounds nuw i8, ptr %arrayidx853.i, i64 8
  %453 = trunc nuw i64 %indvars.iv391 to i32
  store i32 %453, ptr %pos_prev_2883.i, align 4, !tbaa !74
  %add884.i = add i32 %410, 4
  %back_prev_2888.i = getelementptr inbounds nuw i8, ptr %arrayidx853.i, i64 12
  store i32 %add884.i, ptr %back_prev_2888.i, align 4, !tbaa !75
  br label %if.end890.i

if.end890.i:                                      ; preds = %if.then857.i, %while.end848.i, %for.end770.i
  %len_end.addr.11.i = phi i32 [ %len_end.addr.9.i, %for.end770.i ], [ %len_end.addr.10.lcssa.i, %if.then857.i ], [ %len_end.addr.10.lcssa.i, %while.end848.i ]
  %inc891.i = add i32 %i682.1.i, 1
  %cmp892.not.i = icmp eq i32 %inc891.i, %matches_count.1.i
  br i1 %cmp892.not.i, label %helper2.exit.loopexit, label %for.inc906.i

for.inc906.i:                                     ; preds = %if.end890.i, %if.end730.i
  %len_end.addr.131589.i = phi i32 [ %len_end.addr.11.i, %if.end890.i ], [ %len_end.addr.9.i, %if.end730.i ]
  %i682.31588.i = phi i32 [ %inc891.i, %if.end890.i ], [ %i682.1.i, %if.end730.i ]
  %indvars.iv.next389 = add i32 %indvars.iv388, 1
  br label %for.cond694.i

helper2.exit.loopexit:                            ; preds = %if.end890.i
  %len_end.addr.11.i.lcssa = phi i32 [ %len_end.addr.11.i, %if.end890.i ]
  br label %helper2.exit

helper2.exit:                                     ; preds = %helper2.exit.loopexit, %if.end662.i, %if.end274.i
  %retval.0.i = phi i32 [ %len_end.0350, %if.end274.i ], [ %len_end.addr.7.i.lcssa, %if.end662.i ], [ %len_end.addr.11.i.lcssa, %helper2.exit.loopexit ]
  %454 = zext i32 %retval.0.i to i64
  %cmp27 = icmp samesign ult i64 %indvars.iv.next392, %454
  %indvars.iv.next386 = add i32 %indvars.iv385, -1
  br i1 %cmp27, label %for.body, label %for.end.loopexit, !llvm.loop !90

for.end.loopexit:                                 ; preds = %helper2.exit, %for.body
  %cur.0.lcssa.ph = phi i32 [ %indvars394, %helper2.exit ], [ %240, %for.body ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end24
  %cur.0.lcssa = phi i32 [ poison, %if.end24 ], [ %cur.0.lcssa.ph, %for.end.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  store i32 %cur.0.lcssa, ptr %opts_end_index, align 4, !tbaa !0, !noalias !96
  %opts.i312 = getelementptr inbounds nuw i8, ptr %pcoder, i64 69348
  %idxprom.i313 = zext i32 %cur.0.lcssa to i64
  %arrayidx.i314 = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i312, i64 %idxprom.i313
  %pos_prev.i315 = getelementptr inbounds nuw i8, ptr %arrayidx.i314, i64 20
  %455 = load i32, ptr %pos_prev.i315, align 4, !tbaa !11, !noalias !96
  %back_prev.i316 = getelementptr inbounds nuw i8, ptr %arrayidx.i314, i64 24
  %456 = load i32, ptr %back_prev.i316, align 4, !tbaa !14, !noalias !96
  br label %do.body.i317

do.body.i317:                                     ; preds = %if.end40.i, %for.end
  %back_mem.0.i = phi i32 [ %456, %for.end ], [ %461, %if.end40.i ]
  %pos_mem.0.i = phi i32 [ %455, %for.end ], [ %462, %if.end40.i ]
  %cur.addr.0.i = phi i32 [ %cur.0.lcssa, %for.end ], [ %pos_mem.0.i, %if.end40.i ]
  %idxprom5.i = zext i32 %cur.addr.0.i to i64
  %arrayidx6.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i312, i64 %idxprom5.i
  %prev_1_is_literal.i318 = getelementptr inbounds nuw i8, ptr %arrayidx6.i, i64 4
  %457 = load i8, ptr %prev_1_is_literal.i318, align 4, !tbaa !66, !range !71, !noalias !96, !noundef !72
  %loadedv.i319 = trunc nuw i8 %457 to i1
  br i1 %loadedv.i319, label %if.then.i321, label %if.end40.i

if.then.i321:                                     ; preds = %do.body.i317
  %idxprom8.i = zext i32 %pos_mem.0.i to i64
  %arrayidx9.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i312, i64 %idxprom8.i
  %back_prev.i.i322 = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i64 24
  store i32 -1, ptr %back_prev.i.i322, align 4, !tbaa !14, !noalias !96
  %prev_1_is_literal.i.i323 = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i64 4
  store i8 0, ptr %prev_1_is_literal.i.i323, align 4, !tbaa !66, !noalias !96
  %sub.i324 = add i32 %pos_mem.0.i, -1
  %pos_prev13.i = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i64 20
  store i32 %sub.i324, ptr %pos_prev13.i, align 4, !tbaa !11, !noalias !96
  %prev_2.i325 = getelementptr inbounds nuw i8, ptr %arrayidx6.i, i64 5
  %458 = load i8, ptr %prev_2.i325, align 1, !tbaa !73, !range !71, !noalias !96, !noundef !72
  %loadedv17.i = trunc nuw i8 %458 to i1
  br i1 %loadedv17.i, label %if.then18.i, label %if.end40.i

if.then18.i:                                      ; preds = %if.then.i321
  %idxprom21.i = zext i32 %sub.i324 to i64
  %arrayidx22.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i312, i64 %idxprom21.i
  %prev_1_is_literal23.i = getelementptr inbounds nuw i8, ptr %arrayidx22.i, i64 4
  store i8 0, ptr %prev_1_is_literal23.i, align 4, !tbaa !66, !noalias !96
  %pos_prev_2.i326 = getelementptr inbounds nuw i8, ptr %arrayidx6.i, i64 8
  %459 = load i32, ptr %pos_prev_2.i326, align 4, !tbaa !74, !noalias !96
  %pos_prev31.i = getelementptr inbounds nuw i8, ptr %arrayidx22.i, i64 20
  store i32 %459, ptr %pos_prev31.i, align 4, !tbaa !11, !noalias !96
  %back_prev_2.i327 = getelementptr inbounds nuw i8, ptr %arrayidx6.i, i64 12
  %460 = load i32, ptr %back_prev_2.i327, align 4, !tbaa !75, !noalias !96
  %back_prev39.i = getelementptr inbounds nuw i8, ptr %arrayidx22.i, i64 24
  store i32 %460, ptr %back_prev39.i, align 4, !tbaa !14, !noalias !96
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then18.i, %if.then.i321, %do.body.i317
  %idxprom43.i = zext i32 %pos_mem.0.i to i64
  %arrayidx44.i = getelementptr inbounds nuw %struct.lzma_optimal, ptr %opts.i312, i64 %idxprom43.i
  %back_prev45.i = getelementptr inbounds nuw i8, ptr %arrayidx44.i, i64 24
  %461 = load i32, ptr %back_prev45.i, align 4, !tbaa !14, !noalias !96
  %pos_prev49.i = getelementptr inbounds nuw i8, ptr %arrayidx44.i, i64 20
  %462 = load i32, ptr %pos_prev49.i, align 4, !tbaa !11, !noalias !96
  store i32 %back_mem.0.i, ptr %back_prev45.i, align 4, !tbaa !14, !noalias !96
  store i32 %cur.addr.0.i, ptr %pos_prev49.i, align 4, !tbaa !11, !noalias !96
  %cmp.not.i = icmp eq i32 %pos_mem.0.i, 0
  br i1 %cmp.not.i, label %backward.exit, label %do.body.i317, !llvm.loop !97

backward.exit:                                    ; preds = %if.end40.i
  %pos_prev60.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 69368
  %463 = load i32, ptr %pos_prev60.i, align 4, !tbaa !11, !noalias !96
  store i32 %463, ptr %opts_current_index, align 8, !tbaa !10, !noalias !96
  store i32 %463, ptr %len_res, align 4, !tbaa !13, !alias.scope !91, !noalias !94
  %back_prev66.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 69372
  %464 = load i32, ptr %back_prev66.i, align 4, !tbaa !14, !noalias !96
  store i32 %464, ptr %back_res, align 4, !tbaa !13, !alias.scope !94, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %reps) #6
  br label %cleanup45

cleanup45:                                        ; preds = %backward.exit, %helper1.exit, %helper1.exit.thread333, %helper1.exit.thread, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @lzma_mf_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nounwind }

!0 = !{!1, !6, i64 69340}
!1 = !{!"lzma_coder_s", !2, i64 0, !6, i64 736, !4, i64 740, !4, i64 756, !6, i64 2948, !6, i64 2952, !7, i64 2956, !7, i64 2957, !7, i64 2958, !6, i64 2960, !6, i64 2964, !6, i64 2968, !4, i64 2972, !4, i64 27548, !4, i64 27932, !4, i64 27956, !4, i64 27980, !4, i64 28004, !4, i64 28028, !4, i64 28412, !4, i64 28924, !4, i64 29152, !8, i64 29184, !8, i64 47688, !4, i64 66192, !4, i64 67216, !6, i64 69264, !6, i64 69268, !4, i64 69272, !6, i64 69336, !6, i64 69340, !6, i64 69344, !4, i64 69348}
!2 = !{!"", !3, i64 0, !3, i64 8, !6, i64 16, !4, i64 20, !3, i64 24, !3, i64 32, !4, i64 40, !4, i64 272}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"int", !4, i64 0}
!7 = !{!"_Bool", !4, i64 0}
!8 = !{!"", !9, i64 0, !9, i64 2, !4, i64 4, !4, i64 260, !4, i64 516, !4, i64 1028, !6, i64 18436, !4, i64 18440}
!9 = !{!"short", !4, i64 0}
!10 = !{!1, !6, i64 69344}
!11 = !{!12, !6, i64 20}
!12 = !{!"", !6, i64 0, !7, i64 4, !7, i64 5, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !4, i64 28}
!13 = !{!6, !6, i64 0}
!14 = !{!12, !6, i64 24}
!15 = !{!16, !6, i64 28}
!16 = !{!"lzma_mf_s", !17, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !18, i64 48, !18, i64 56, !19, i64 64, !19, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112}
!17 = !{!"p1 omnipotent char", !18, i64 0}
!18 = !{!"any pointer", !4, i64 0}
!19 = !{!"p1 int", !18, i64 0}
!20 = !{!21}
!21 = distinct !{!21, !22, !"helper1: %mf:thread"}
!22 = distinct !{!22, !"helper1"}
!23 = !{!16, !6, i64 96}
!24 = !{!25, !26}
!25 = distinct !{!25, !22, !"helper1: %back_res:thread"}
!26 = distinct !{!26, !22, !"helper1: %len_res:thread"}
!27 = !{!21, !25, !26}
!28 = !{!1, !6, i64 2952}
!29 = !{!30, !31, !32}
!30 = distinct !{!30, !22, !"helper1: %mf"}
!31 = distinct !{!31, !22, !"helper1: %back_res"}
!32 = distinct !{!32, !22, !"helper1: %len_res"}
!33 = !{!1, !6, i64 2948}
!34 = !{!1, !6, i64 69268}
!35 = !{!1, !6, i64 69264}
!36 = !{!9, !9, i64 0}
!37 = !{!4, !4, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !39}
!43 = distinct !{!43, !39}
!44 = !{!1, !6, i64 69336}
!45 = distinct !{!45, !39}
!46 = !{!30}
!47 = !{!31}
!48 = !{!32}
!49 = !{!31, !32}
!50 = !{!16, !6, i64 24}
!51 = !{!16, !6, i64 36}
!52 = !{!30, !32}
!53 = !{!30, !31}
!54 = !{!16, !17, i64 0}
!55 = distinct !{!55, !39}
!56 = !{!16, !18, i64 56}
!57 = !{!58, !6, i64 4}
!58 = !{!"", !6, i64 0, !6, i64 4}
!59 = !{!1, !6, i64 736}
!60 = !{!12, !6, i64 0}
!61 = !{!1, !6, i64 2960}
!62 = !{!1, !6, i64 2968}
!63 = !{!1, !6, i64 2964}
!64 = distinct !{!64, !39}
!65 = !{!12, !6, i64 16}
!66 = !{!12, !7, i64 4}
!67 = distinct !{!67, !39}
!68 = distinct !{!68, !39}
!69 = !{!58, !6, i64 0}
!70 = distinct !{!70, !39}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!12, !7, i64 5}
!74 = !{!12, !6, i64 8}
!75 = !{!12, !6, i64 12}
!76 = distinct !{!76, !39}
!77 = distinct !{!77, !39}
!78 = distinct !{!78, !39}
!79 = distinct !{!79, !39}
!80 = distinct !{!80, !39}
!81 = distinct !{!81, !39}
!82 = distinct !{!82, !39}
!83 = distinct !{!83, !39}
!84 = distinct !{!84, !39}
!85 = distinct !{!85, !39}
!86 = distinct !{!86, !39}
!87 = distinct !{!87, !39}
!88 = distinct !{!88, !39}
!89 = distinct !{!89, !39}
!90 = distinct !{!90, !39}
!91 = !{!92}
!92 = distinct !{!92, !93, !"backward: %len_res"}
!93 = distinct !{!93, !"backward"}
!94 = !{!95}
!95 = distinct !{!95, !93, !"backward: %back_res"}
!96 = !{!92, !95}
!97 = distinct !{!97, !39}
