; ModuleID = '/tmp/tmp.hbcXakLJvi/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/557.xz_r/src/liblzma/lzma/lzma_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @lzma_lzma_encode(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias noundef writeonly captures(none) %out, ptr noalias noundef captures(none) %out_pos, i64 noundef %out_size, i32 noundef %limit) local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  %back = alloca i32, align 4
  %is_initialized = getelementptr inbounds nuw i8, ptr %pcoder, i64 2957
  %0 = load i8, ptr %is_initialized, align 1, !tbaa !0, !range !10, !noundef !11
  %loadedv = trunc nuw i8 %0 to i1
  br i1 %loadedv, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %read_pos.i = getelementptr inbounds nuw i8, ptr %mf, i64 24
  %1 = load i32, ptr %read_pos.i, align 8, !tbaa !12
  %read_limit.i = getelementptr inbounds nuw i8, ptr %mf, i64 32
  %2 = load i32, ptr %read_limit.i, align 8, !tbaa !17
  %cmp.i = icmp eq i32 %1, %2
  br i1 %cmp.i, label %if.then.i, label %do.body.i.i

if.then.i:                                        ; preds = %land.lhs.true
  %action.i = getelementptr inbounds nuw i8, ptr %mf, i64 104
  %3 = load i32, ptr %action.i, align 8, !tbaa !18
  %cmp1.i = icmp eq i32 %3, 0
  br i1 %cmp1.i, label %cleanup40, label %encode_init.exit.thread

do.body.i.i:                                      ; preds = %land.lhs.true
  %skip.i.i = getelementptr inbounds nuw i8, ptr %mf, i64 56
  %4 = load ptr, ptr %skip.i.i, align 8, !tbaa !19
  tail call void %4(ptr noundef nonnull %mf, i32 noundef 1) #5
  %read_ahead.i.i = getelementptr inbounds nuw i8, ptr %mf, i64 28
  store i32 0, ptr %read_ahead.i.i, align 4, !tbaa !20
  %is_match.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27548
  %symbols.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 40
  %count.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 24
  %5 = load i64, ptr %count.i.i, align 8, !tbaa !21
  %arrayidx.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %5
  store i32 0, ptr %arrayidx.i.i, align 4, !tbaa !22
  %probs.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 272
  %arrayidx2.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %5
  store ptr %is_match.i, ptr %arrayidx2.i.i, align 8, !tbaa !23
  %inc.i.i = add i64 %5, 1
  store i64 %inc.i.i, ptr %count.i.i, align 8, !tbaa !21
  %6 = load ptr, ptr %mf, align 8, !tbaa !25
  %7 = load i8, ptr %6, align 1, !tbaa !26
  %conv.i = zext i8 %7 to i32
  %literal.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 2972
  %shr.i.i = lshr i32 %conv.i, 7
  %arrayidx.i17.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 2974
  %arrayidx.i.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i
  store i32 %shr.i.i, ptr %arrayidx.i.i.i, align 4, !tbaa !22
  %arrayidx2.i.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i
  store ptr %arrayidx.i17.i, ptr %arrayidx2.i.i.i, align 8, !tbaa !23
  %inc.i.i.i = add i64 %5, 2
  %add.i18.i = or disjoint i32 %shr.i.i, 2
  %shr.i.1.i = lshr i32 %conv.i, 6
  %and.i.1.i = and i32 %shr.i.1.i, 1
  %idxprom.i.1.i = zext nneg i32 %add.i18.i to i64
  %arrayidx.i17.1.i = getelementptr inbounds nuw i16, ptr %literal.i, i64 %idxprom.i.1.i
  %arrayidx.i.i.1.i = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i.i
  store i32 %and.i.1.i, ptr %arrayidx.i.i.1.i, align 4, !tbaa !22
  %arrayidx2.i.i.1.i = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i.i
  store ptr %arrayidx.i17.1.i, ptr %arrayidx2.i.i.1.i, align 8, !tbaa !23
  %inc.i.i.1.i = add i64 %5, 3
  %shl.i.1.i = shl nuw nsw i32 %add.i18.i, 1
  %add.i18.1.i = or disjoint i32 %shl.i.1.i, %and.i.1.i
  %shr.i.2.i = lshr i32 %conv.i, 5
  %and.i.2.i = and i32 %shr.i.2.i, 1
  %idxprom.i.2.i = zext nneg i32 %add.i18.1.i to i64
  %arrayidx.i17.2.i = getelementptr inbounds nuw i16, ptr %literal.i, i64 %idxprom.i.2.i
  %arrayidx.i.i.2.i = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i.1.i
  store i32 %and.i.2.i, ptr %arrayidx.i.i.2.i, align 4, !tbaa !22
  %arrayidx2.i.i.2.i = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i.1.i
  store ptr %arrayidx.i17.2.i, ptr %arrayidx2.i.i.2.i, align 8, !tbaa !23
  %inc.i.i.2.i = add i64 %5, 4
  %shl.i.2.i = shl nuw nsw i32 %add.i18.1.i, 1
  %add.i18.2.i = or disjoint i32 %shl.i.2.i, %and.i.2.i
  %shr.i.3.i = lshr i32 %conv.i, 4
  %and.i.3.i = and i32 %shr.i.3.i, 1
  %idxprom.i.3.i = zext nneg i32 %add.i18.2.i to i64
  %arrayidx.i17.3.i = getelementptr inbounds nuw i16, ptr %literal.i, i64 %idxprom.i.3.i
  %arrayidx.i.i.3.i = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i.2.i
  store i32 %and.i.3.i, ptr %arrayidx.i.i.3.i, align 4, !tbaa !22
  %arrayidx2.i.i.3.i = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i.2.i
  store ptr %arrayidx.i17.3.i, ptr %arrayidx2.i.i.3.i, align 8, !tbaa !23
  %inc.i.i.3.i = add i64 %5, 5
  %shl.i.3.i = shl nuw nsw i32 %add.i18.2.i, 1
  %add.i18.3.i = or disjoint i32 %shl.i.3.i, %and.i.3.i
  %shr.i.4.i = lshr i32 %conv.i, 3
  %and.i.4.i = and i32 %shr.i.4.i, 1
  %idxprom.i.4.i = zext nneg i32 %add.i18.3.i to i64
  %arrayidx.i17.4.i = getelementptr inbounds nuw i16, ptr %literal.i, i64 %idxprom.i.4.i
  %arrayidx.i.i.4.i = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i.3.i
  store i32 %and.i.4.i, ptr %arrayidx.i.i.4.i, align 4, !tbaa !22
  %arrayidx2.i.i.4.i = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i.3.i
  store ptr %arrayidx.i17.4.i, ptr %arrayidx2.i.i.4.i, align 8, !tbaa !23
  %inc.i.i.4.i = add i64 %5, 6
  %shl.i.4.i = shl nuw nsw i32 %add.i18.3.i, 1
  %add.i18.4.i = or disjoint i32 %shl.i.4.i, %and.i.4.i
  %shr.i.5.i = lshr i32 %conv.i, 2
  %and.i.5.i = and i32 %shr.i.5.i, 1
  %idxprom.i.5.i = zext nneg i32 %add.i18.4.i to i64
  %arrayidx.i17.5.i = getelementptr inbounds nuw i16, ptr %literal.i, i64 %idxprom.i.5.i
  %arrayidx.i.i.5.i = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i.4.i
  store i32 %and.i.5.i, ptr %arrayidx.i.i.5.i, align 4, !tbaa !22
  %arrayidx2.i.i.5.i = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i.4.i
  store ptr %arrayidx.i17.5.i, ptr %arrayidx2.i.i.5.i, align 8, !tbaa !23
  %inc.i.i.5.i = add i64 %5, 7
  %shl.i.5.i = shl nuw nsw i32 %add.i18.4.i, 1
  %add.i18.5.i = or disjoint i32 %shl.i.5.i, %and.i.5.i
  %shr.i.6.i = lshr i32 %conv.i, 1
  %and.i.6.i = and i32 %shr.i.6.i, 1
  %idxprom.i.6.i = zext nneg i32 %add.i18.5.i to i64
  %arrayidx.i17.6.i = getelementptr inbounds nuw i16, ptr %literal.i, i64 %idxprom.i.6.i
  %arrayidx.i.i.6.i = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i.5.i
  store i32 %and.i.6.i, ptr %arrayidx.i.i.6.i, align 4, !tbaa !22
  %arrayidx2.i.i.6.i = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i.5.i
  store ptr %arrayidx.i17.6.i, ptr %arrayidx2.i.i.6.i, align 8, !tbaa !23
  %inc.i.i.6.i = add i64 %5, 8
  %shl.i.6.i = shl nuw nsw i32 %add.i18.5.i, 1
  %add.i18.6.i = or disjoint i32 %shl.i.6.i, %and.i.6.i
  %and.i.7.i = and i32 %conv.i, 1
  %idxprom.i.7.i = zext nneg i32 %add.i18.6.i to i64
  %arrayidx.i17.7.i = getelementptr inbounds nuw i16, ptr %literal.i, i64 %idxprom.i.7.i
  %arrayidx.i.i.7.i = getelementptr inbounds nuw i32, ptr %symbols.i.i, i64 %inc.i.i.6.i
  store i32 %and.i.7.i, ptr %arrayidx.i.i.7.i, align 4, !tbaa !22
  %arrayidx2.i.i.7.i = getelementptr inbounds nuw ptr, ptr %probs.i.i, i64 %inc.i.i.6.i
  store ptr %arrayidx.i17.7.i, ptr %arrayidx2.i.i.7.i, align 8, !tbaa !23
  %inc.i.i.7.i = add i64 %5, 9
  store i64 %inc.i.i.7.i, ptr %count.i.i, align 8, !tbaa !21
  br label %encode_init.exit.thread

encode_init.exit.thread:                          ; preds = %do.body.i.i, %if.then.i
  store i8 1, ptr %is_initialized, align 1, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %encode_init.exit.thread, %entry
  %8 = getelementptr i8, ptr %mf, i64 24
  %mf.val = load i32, ptr %8, align 8, !tbaa !12
  %9 = getelementptr i8, ptr %mf, i64 28
  %mf.val73 = load i32, ptr %9, align 4, !tbaa !20
  %call2109 = call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %pcoder, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size)
  br i1 %call2109, label %cleanup40, label %if.end4.lr.ph

if.end4.lr.ph:                                    ; preds = %if.end
  %sub.i = sub i32 %mf.val, %mf.val73
  %cmp.not = icmp eq i32 %limit, -1
  %10 = getelementptr i8, ptr %pcoder, i64 8
  %read_limit = getelementptr inbounds nuw i8, ptr %mf, i64 32
  %action = getelementptr inbounds nuw i8, ptr %mf, i64 104
  %fast_mode = getelementptr inbounds nuw i8, ptr %pcoder, i64 2956
  %pos_mask.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 2960
  %is_match.i76 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27548
  %state.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 736
  %symbols.i.i77 = getelementptr inbounds nuw i8, ptr %pcoder, i64 40
  %count.i.i78 = getelementptr inbounds nuw i8, ptr %pcoder, i64 24
  %probs.i.i80 = getelementptr inbounds nuw i8, ptr %pcoder, i64 272
  %is_rep.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27932
  %reps.i64.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 740
  %is_rep011.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27956
  %is_rep1.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27980
  %is_rep2.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28004
  %arrayidx36.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 748
  %arrayidx38.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 752
  %arrayidx40.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 744
  %arrayidx42.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 748
  %arrayidx47.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 744
  %is_rep0.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 27956
  %is_rep0_long.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28028
  %rep_len_encoder.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 47688
  %literal.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 2972
  %literal_pos_mask.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 2968
  %literal_context_bits.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 2964
  %reps.i.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 740
  br label %if.end4

if.end4:                                          ; preds = %encode_symbol.exit, %if.end4.lr.ph
  %position.0110 = phi i32 [ %sub.i, %if.end4.lr.ph ], [ %add26, %encode_symbol.exit ]
  br i1 %cmp.not, label %if.end11, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end4
  %11 = load i32, ptr %8, align 8, !tbaa !12
  %12 = load i32, ptr %9, align 4, !tbaa !20
  %sub = sub i32 %11, %12
  %cmp6.not = icmp ult i32 %sub, %limit
  br i1 %cmp6.not, label %lor.lhs.false, label %while.end

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %13 = load i64, ptr %out_pos, align 8, !tbaa !27
  %pcoder.val = load i64, ptr %10, align 8, !tbaa !28
  %sub.i74 = add i64 %13, 4
  %add = add i64 %sub.i74, %pcoder.val
  %cmp9 = icmp ugt i64 %add, 61438
  br i1 %cmp9, label %while.end, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false, %if.end4
  %14 = load i32, ptr %8, align 8, !tbaa !12
  %15 = load i32, ptr %read_limit, align 8, !tbaa !17
  %cmp13.not = icmp ult i32 %14, %15
  br i1 %cmp13.not, label %if.end22, label %if.then14

if.then14:                                        ; preds = %if.end11
  %16 = load i32, ptr %action, align 8, !tbaa !18
  %cmp15 = icmp eq i32 %16, 0
  br i1 %cmp15, label %cleanup40.loopexit, label %if.end17

if.end17:                                         ; preds = %if.then14
  %17 = load i32, ptr %9, align 4, !tbaa !20
  %cmp19 = icmp eq i32 %17, 0
  br i1 %cmp19, label %while.end, label %if.end22

if.end22:                                         ; preds = %if.end17, %if.end11
  call void @llvm.lifetime.start.p0(ptr nonnull %len) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %back) #5
  %18 = load i8, ptr %fast_mode, align 4, !tbaa !29, !range !10, !noundef !11
  %loadedv23 = trunc nuw i8 %18 to i1
  br i1 %loadedv23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end22
  call void @lzma_lzma_optimum_fast(ptr noundef nonnull %pcoder, ptr noundef nonnull %mf, ptr noundef nonnull %back, ptr noundef nonnull %len) #5
  br label %if.end25

if.else:                                          ; preds = %if.end22
  call void @lzma_lzma_optimum_normal(ptr noundef nonnull %pcoder, ptr noundef nonnull %mf, ptr noundef nonnull %back, ptr noundef nonnull %len, i32 noundef %position.0110) #5
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then24
  %19 = load i32, ptr %back, align 4, !tbaa !22
  %20 = load i32, ptr %len, align 4, !tbaa !22
  %21 = load i32, ptr %pos_mask.i, align 8, !tbaa !30
  %and.i = and i32 %21, %position.0110
  %cmp.i75 = icmp eq i32 %19, -1
  %22 = load i32, ptr %state.i, align 8, !tbaa !31
  %idxprom.i = zext i32 %22 to i64
  %arrayidx.i = getelementptr inbounds nuw [16 x i16], ptr %is_match.i76, i64 %idxprom.i
  %idxprom1.i = zext i32 %and.i to i64
  %arrayidx2.i = getelementptr inbounds nuw i16, ptr %arrayidx.i, i64 %idxprom1.i
  %23 = load i64, ptr %count.i.i78, align 8, !tbaa !21
  %arrayidx.i.i79 = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %23
  %arrayidx2.i.i81 = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %23
  %inc.i.i82 = add i64 %23, 1
  br i1 %cmp.i75, label %if.then.i86, label %if.else.i

if.then.i86:                                      ; preds = %if.end25
  store i32 0, ptr %arrayidx.i.i79, align 4, !tbaa !22
  store ptr %arrayidx2.i, ptr %arrayidx2.i.i81, align 8, !tbaa !23
  store i64 %inc.i.i82, ptr %count.i.i78, align 8, !tbaa !21
  %24 = load ptr, ptr %mf, align 8, !tbaa !25
  %25 = load i32, ptr %8, align 8, !tbaa !12
  %26 = load i32, ptr %9, align 4, !tbaa !20
  %sub.i.i = sub i32 %25, %26
  %idxprom.i.i = zext i32 %sub.i.i to i64
  %arrayidx.i49.i = getelementptr inbounds nuw i8, ptr %24, i64 %idxprom.i.i
  %27 = load i8, ptr %arrayidx.i49.i, align 1, !tbaa !26
  %28 = load i32, ptr %literal_pos_mask.i.i, align 8, !tbaa !32
  %and.i.i = and i32 %28, %position.0110
  %29 = load i32, ptr %literal_context_bits.i.i, align 4, !tbaa !33
  %shl.i.i = shl i32 %and.i.i, %29
  %sub5.i.i = add i32 %sub.i.i, -1
  %idxprom6.i.i = zext i32 %sub5.i.i to i64
  %arrayidx7.i.i = getelementptr inbounds nuw i8, ptr %24, i64 %idxprom6.i.i
  %30 = load i8, ptr %arrayidx7.i.i, align 1, !tbaa !26
  %conv.i.i = zext i8 %30 to i32
  %sub9.i.i = sub i32 8, %29
  %shr.i.i88 = lshr i32 %conv.i.i, %sub9.i.i
  %add.i.i = add i32 %shr.i.i88, %shl.i.i
  %idxprom10.i.i = zext i32 %add.i.i to i64
  %arrayidx11.i.i = getelementptr inbounds nuw [768 x i16], ptr %literal.i.i, i64 %idxprom10.i.i
  %31 = load i32, ptr %state.i, align 8, !tbaa !31
  %cmp.i.i = icmp ult i32 %31, 7
  br i1 %cmp.i.i, label %do.body.i.i.i, label %if.else.i.i

do.body.i.i.i:                                    ; preds = %if.then.i86
  %conv13.i.i = zext i8 %27 to i32
  %shr.i.i.i = lshr i32 %conv13.i.i, 7
  %arrayidx.i.i.i89 = getelementptr inbounds nuw i8, ptr %arrayidx11.i.i, i64 2
  %arrayidx.i.i.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i.i82
  store i32 %shr.i.i.i, ptr %arrayidx.i.i.i.i, align 4, !tbaa !22
  %arrayidx2.i.i.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i.i82
  store ptr %arrayidx.i.i.i89, ptr %arrayidx2.i.i.i.i, align 8, !tbaa !23
  %inc.i.i.i.i = add i64 %23, 2
  %add.i.i.i = or disjoint i32 %shr.i.i.i, 2
  %shr.i.1.i.i = lshr i32 %conv13.i.i, 6
  %and.i.1.i.i = and i32 %shr.i.1.i.i, 1
  %idxprom.i.1.i.i = zext nneg i32 %add.i.i.i to i64
  %arrayidx.i.1.i.i = getelementptr inbounds nuw i16, ptr %arrayidx11.i.i, i64 %idxprom.i.1.i.i
  %arrayidx.i.i.1.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i.i.i.i
  store i32 %and.i.1.i.i, ptr %arrayidx.i.i.1.i.i, align 4, !tbaa !22
  %arrayidx2.i.i.1.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i.i.i.i
  store ptr %arrayidx.i.1.i.i, ptr %arrayidx2.i.i.1.i.i, align 8, !tbaa !23
  %inc.i.i.1.i.i = add i64 %23, 3
  %shl.i.1.i.i = shl nuw nsw i32 %add.i.i.i, 1
  %add.i.1.i.i = or disjoint i32 %shl.i.1.i.i, %and.i.1.i.i
  %shr.i.2.i.i = lshr i32 %conv13.i.i, 5
  %and.i.2.i.i = and i32 %shr.i.2.i.i, 1
  %idxprom.i.2.i.i = zext nneg i32 %add.i.1.i.i to i64
  %arrayidx.i.2.i.i = getelementptr inbounds nuw i16, ptr %arrayidx11.i.i, i64 %idxprom.i.2.i.i
  %arrayidx.i.i.2.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i.i.1.i.i
  store i32 %and.i.2.i.i, ptr %arrayidx.i.i.2.i.i, align 4, !tbaa !22
  %arrayidx2.i.i.2.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i.i.1.i.i
  store ptr %arrayidx.i.2.i.i, ptr %arrayidx2.i.i.2.i.i, align 8, !tbaa !23
  %inc.i.i.2.i.i = add i64 %23, 4
  %shl.i.2.i.i = shl nuw nsw i32 %add.i.1.i.i, 1
  %add.i.2.i.i = or disjoint i32 %shl.i.2.i.i, %and.i.2.i.i
  %shr.i.3.i.i = lshr i32 %conv13.i.i, 4
  %and.i.3.i.i = and i32 %shr.i.3.i.i, 1
  %idxprom.i.3.i.i = zext nneg i32 %add.i.2.i.i to i64
  %arrayidx.i.3.i.i = getelementptr inbounds nuw i16, ptr %arrayidx11.i.i, i64 %idxprom.i.3.i.i
  %arrayidx.i.i.3.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i.i.2.i.i
  store i32 %and.i.3.i.i, ptr %arrayidx.i.i.3.i.i, align 4, !tbaa !22
  %arrayidx2.i.i.3.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i.i.2.i.i
  store ptr %arrayidx.i.3.i.i, ptr %arrayidx2.i.i.3.i.i, align 8, !tbaa !23
  %inc.i.i.3.i.i = add i64 %23, 5
  %shl.i.3.i.i = shl nuw nsw i32 %add.i.2.i.i, 1
  %add.i.3.i.i = or disjoint i32 %shl.i.3.i.i, %and.i.3.i.i
  %shr.i.4.i.i = lshr i32 %conv13.i.i, 3
  %and.i.4.i.i = and i32 %shr.i.4.i.i, 1
  %idxprom.i.4.i.i = zext nneg i32 %add.i.3.i.i to i64
  %arrayidx.i.4.i.i = getelementptr inbounds nuw i16, ptr %arrayidx11.i.i, i64 %idxprom.i.4.i.i
  %arrayidx.i.i.4.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i.i.3.i.i
  store i32 %and.i.4.i.i, ptr %arrayidx.i.i.4.i.i, align 4, !tbaa !22
  %arrayidx2.i.i.4.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i.i.3.i.i
  store ptr %arrayidx.i.4.i.i, ptr %arrayidx2.i.i.4.i.i, align 8, !tbaa !23
  %inc.i.i.4.i.i = add i64 %23, 6
  %shl.i.4.i.i = shl nuw nsw i32 %add.i.3.i.i, 1
  %add.i.4.i.i = or disjoint i32 %shl.i.4.i.i, %and.i.4.i.i
  %shr.i.5.i.i = lshr i32 %conv13.i.i, 2
  %and.i.5.i.i = and i32 %shr.i.5.i.i, 1
  %idxprom.i.5.i.i = zext nneg i32 %add.i.4.i.i to i64
  %arrayidx.i.5.i.i = getelementptr inbounds nuw i16, ptr %arrayidx11.i.i, i64 %idxprom.i.5.i.i
  %arrayidx.i.i.5.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i.i.4.i.i
  store i32 %and.i.5.i.i, ptr %arrayidx.i.i.5.i.i, align 4, !tbaa !22
  %arrayidx2.i.i.5.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i.i.4.i.i
  store ptr %arrayidx.i.5.i.i, ptr %arrayidx2.i.i.5.i.i, align 8, !tbaa !23
  %inc.i.i.5.i.i = add i64 %23, 7
  %shl.i.5.i.i = shl nuw nsw i32 %add.i.4.i.i, 1
  %add.i.5.i.i = or disjoint i32 %shl.i.5.i.i, %and.i.5.i.i
  %shr.i.6.i.i = lshr i32 %conv13.i.i, 1
  %and.i.6.i.i = and i32 %shr.i.6.i.i, 1
  %idxprom.i.6.i.i = zext nneg i32 %add.i.5.i.i to i64
  %arrayidx.i.6.i.i = getelementptr inbounds nuw i16, ptr %arrayidx11.i.i, i64 %idxprom.i.6.i.i
  %arrayidx.i.i.6.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i.i.5.i.i
  store i32 %and.i.6.i.i, ptr %arrayidx.i.i.6.i.i, align 4, !tbaa !22
  %arrayidx2.i.i.6.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i.i.5.i.i
  store ptr %arrayidx.i.6.i.i, ptr %arrayidx2.i.i.6.i.i, align 8, !tbaa !23
  %inc.i.i.6.i.i = add i64 %23, 8
  %shl.i.6.i.i = shl nuw nsw i32 %add.i.5.i.i, 1
  %add.i.6.i.i = or disjoint i32 %shl.i.6.i.i, %and.i.6.i.i
  %and.i.7.i.i = and i32 %conv13.i.i, 1
  %idxprom.i.7.i.i = zext nneg i32 %add.i.6.i.i to i64
  %arrayidx.i.7.i.i = getelementptr inbounds nuw i16, ptr %arrayidx11.i.i, i64 %idxprom.i.7.i.i
  %arrayidx.i.i.7.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i.i.6.i.i
  store i32 %and.i.7.i.i, ptr %arrayidx.i.i.7.i.i, align 4, !tbaa !22
  %arrayidx2.i.i.7.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i.i.6.i.i
  store ptr %arrayidx.i.7.i.i, ptr %arrayidx2.i.i.7.i.i, align 8, !tbaa !23
  %inc.i.i.7.i.i = add i64 %23, 9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i86
  %32 = load i32, ptr %reps.i.i, align 4, !tbaa !22
  %33 = xor i32 %32, -1
  %sub20.i.i = add i32 %sub.i.i, %33
  %idxprom21.i.i = zext i32 %sub20.i.i to i64
  %arrayidx22.i.i = getelementptr inbounds nuw i8, ptr %24, i64 %idxprom21.i.i
  %34 = load i8, ptr %arrayidx22.i.i, align 1, !tbaa !26
  %conv24.i.i = zext i8 %34 to i32
  %conv25.i.i = zext i8 %27 to i32
  %add.i63.i.i = or disjoint i32 %conv25.i.i, 256
  br label %do.body.i68.i.i

do.body.i68.i.i:                                  ; preds = %do.body.i68.i.i, %if.else.i.i
  %inc.i16.i.i.i = phi i64 [ %inc.i.i82, %if.else.i.i ], [ %inc.i.i76.i.i, %do.body.i68.i.i ]
  %offset.0.i.i.i = phi i32 [ 256, %if.else.i.i ], [ %and6.i.i.i, %do.body.i68.i.i ]
  %symbol.addr.0.i.i.i = phi i32 [ %add.i63.i.i, %if.else.i.i ], [ %shl5.i.i.i, %do.body.i68.i.i ]
  %match_byte.addr.0.i.i.i = phi i32 [ %conv24.i.i, %if.else.i.i ], [ %shl.i69.i.i, %do.body.i68.i.i ]
  %shl.i69.i.i = shl i32 %match_byte.addr.0.i.i.i, 1
  %and.i70.i.i = and i32 %shl.i69.i.i, %offset.0.i.i.i
  %shr.i71.i.i = lshr i32 %symbol.addr.0.i.i.i, 8
  %add1.i.i.i = add nuw nsw i32 %shr.i71.i.i, %offset.0.i.i.i
  %add2.i.i.i = add nuw nsw i32 %add1.i.i.i, %and.i70.i.i
  %shr3.i.i.i = lshr i32 %symbol.addr.0.i.i.i, 7
  %and4.i.i.i = and i32 %shr3.i.i.i, 1
  %idxprom.i72.i.i = zext nneg i32 %add2.i.i.i to i64
  %arrayidx.i73.i.i = getelementptr inbounds nuw i16, ptr %arrayidx11.i.i, i64 %idxprom.i72.i.i
  %arrayidx.i.i74.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i16.i.i.i
  store i32 %and4.i.i.i, ptr %arrayidx.i.i74.i.i, align 4, !tbaa !22
  %arrayidx2.i.i75.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i16.i.i.i
  store ptr %arrayidx.i73.i.i, ptr %arrayidx2.i.i75.i.i, align 8, !tbaa !23
  %inc.i.i76.i.i = add i64 %inc.i16.i.i.i, 1
  %shl5.i.i.i = shl nuw nsw i32 %symbol.addr.0.i.i.i, 1
  %35 = xor i32 %shl5.i.i.i, %shl.i69.i.i
  %not.i.i.i = xor i32 %35, -1
  %and6.i.i.i = and i32 %offset.0.i.i.i, %not.i.i.i
  %cmp.i.i.i = icmp samesign ult i32 %symbol.addr.0.i.i.i, 32768
  br i1 %cmp.i.i.i, label %do.body.i68.i.i, label %if.end.i.i.loopexit, !llvm.loop !34

if.end.i.i.loopexit:                              ; preds = %do.body.i68.i.i
  %inc.i.i76.i.i.lcssa = phi i64 [ %inc.i.i76.i.i, %do.body.i68.i.i ]
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.loopexit, %do.body.i.i.i
  %storemerge.i = phi i64 [ %inc.i.i.7.i.i, %do.body.i.i.i ], [ %inc.i.i76.i.i.lcssa, %if.end.i.i.loopexit ]
  store i64 %storemerge.i, ptr %count.i.i78, align 8, !tbaa !21
  %36 = load i32, ptr %state.i, align 8, !tbaa !31
  %cmp27.i.i = icmp ult i32 %36, 4
  br i1 %cmp27.i.i, label %literal.exit.i, label %cond.false.i.i

cond.false.i.i:                                   ; preds = %if.end.i.i
  %cmp30.i.i = icmp ult i32 %36, 10
  br i1 %cmp30.i.i, label %cond.true32.i.i, label %cond.false35.i.i

cond.true32.i.i:                                  ; preds = %cond.false.i.i
  %sub34.i.i = add nsw i32 %36, -3
  br label %literal.exit.i

cond.false35.i.i:                                 ; preds = %cond.false.i.i
  %sub37.i.i = add i32 %36, -6
  br label %literal.exit.i

literal.exit.i:                                   ; preds = %cond.false35.i.i, %cond.true32.i.i, %if.end.i.i
  %cond39.i.i = phi i32 [ 0, %if.end.i.i ], [ %sub34.i.i, %cond.true32.i.i ], [ %sub37.i.i, %cond.false35.i.i ]
  store i32 %cond39.i.i, ptr %state.i, align 8, !tbaa !31
  br label %encode_symbol.exit

if.else.i:                                        ; preds = %if.end25
  store i32 1, ptr %arrayidx.i.i79, align 4, !tbaa !22
  store ptr %arrayidx2.i, ptr %arrayidx2.i.i81, align 8, !tbaa !23
  %cmp10.i = icmp ult i32 %19, 4
  %37 = load i32, ptr %state.i, align 8, !tbaa !31
  %idxprom14.i = zext i32 %37 to i64
  %arrayidx15.i = getelementptr inbounds nuw i16, ptr %is_rep.i, i64 %idxprom14.i
  %arrayidx.i58.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i.i82
  %arrayidx2.i60.i = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i.i82
  %inc.i61.i = add i64 %23, 2
  br i1 %cmp10.i, label %if.then11.i, label %if.else16.i

if.then11.i:                                      ; preds = %if.else.i
  store i32 1, ptr %arrayidx.i58.i, align 4, !tbaa !22
  store ptr %arrayidx15.i, ptr %arrayidx2.i60.i, align 8, !tbaa !23
  %cmp.i62.i = icmp eq i32 %19, 0
  %inc.i110.i.i = add i64 %23, 4
  br i1 %cmp.i62.i, label %if.then.i.i, label %if.else.i63.i

if.then.i.i:                                      ; preds = %if.then11.i
  %38 = load i32, ptr %state.i, align 8, !tbaa !31
  %idxprom.i68.i = zext i32 %38 to i64
  %arrayidx.i69.i = getelementptr inbounds nuw i16, ptr %is_rep0.i.i, i64 %idxprom.i68.i
  %arrayidx.i.i70.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i61.i
  store i32 0, ptr %arrayidx.i.i70.i, align 4, !tbaa !22
  %arrayidx2.i.i.i84 = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i61.i
  store ptr %arrayidx.i69.i, ptr %arrayidx2.i.i.i84, align 8, !tbaa !23
  %inc.i.i.i85 = add i64 %23, 3
  %39 = load i32, ptr %state.i, align 8, !tbaa !31
  %idxprom3.i.i = zext i32 %39 to i64
  %arrayidx4.i.i = getelementptr inbounds nuw [16 x i16], ptr %is_rep0_long.i.i, i64 %idxprom3.i.i
  %arrayidx6.i.i = getelementptr inbounds nuw i16, ptr %arrayidx4.i.i, i64 %idxprom1.i
  %cmp7.i.i = icmp ne i32 %20, 1
  %conv.i71.i = zext i1 %cmp7.i.i to i32
  %arrayidx.i107.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i.i.i85
  store i32 %conv.i71.i, ptr %arrayidx.i107.i.i, align 4, !tbaa !22
  %arrayidx2.i109.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i.i.i85
  store ptr %arrayidx6.i.i, ptr %arrayidx2.i109.i.i, align 8, !tbaa !23
  store i64 %inc.i110.i.i, ptr %count.i.i78, align 8, !tbaa !21
  br label %if.end50.i.i

if.else.i63.i:                                    ; preds = %if.then11.i
  %idxprom8.i.i = zext nneg i32 %19 to i64
  %arrayidx9.i.i = getelementptr inbounds nuw i32, ptr %reps.i64.i, i64 %idxprom8.i.i
  %40 = load i32, ptr %arrayidx9.i.i, align 4, !tbaa !22
  %41 = load i32, ptr %state.i, align 8, !tbaa !31
  %idxprom13.i.i = zext i32 %41 to i64
  %arrayidx14.i.i = getelementptr inbounds nuw i16, ptr %is_rep011.i.i, i64 %idxprom13.i.i
  %arrayidx.i113.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i61.i
  store i32 1, ptr %arrayidx.i113.i.i, align 4, !tbaa !22
  %arrayidx2.i115.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i61.i
  store ptr %arrayidx14.i.i, ptr %arrayidx2.i115.i.i, align 8, !tbaa !23
  %inc.i116.i.i = add i64 %23, 3
  %cmp15.i.i = icmp eq i32 %19, 1
  %42 = load i32, ptr %state.i, align 8, !tbaa !31
  %idxprom20.i.i = zext i32 %42 to i64
  %arrayidx21.i.i = getelementptr inbounds nuw i16, ptr %is_rep1.i.i, i64 %idxprom20.i.i
  %arrayidx.i119.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i116.i.i
  %arrayidx2.i121.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i116.i.i
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.else22.i.i

if.then17.i.i:                                    ; preds = %if.else.i63.i
  store i32 0, ptr %arrayidx.i119.i.i, align 4, !tbaa !22
  store ptr %arrayidx21.i.i, ptr %arrayidx2.i121.i.i, align 8, !tbaa !23
  store i64 %inc.i110.i.i, ptr %count.i.i78, align 8, !tbaa !21
  br label %if.end43.i.i

if.else22.i.i:                                    ; preds = %if.else.i63.i
  store i32 1, ptr %arrayidx.i119.i.i, align 4, !tbaa !22
  store ptr %arrayidx21.i.i, ptr %arrayidx2.i121.i.i, align 8, !tbaa !23
  %43 = load i32, ptr %state.i, align 8, !tbaa !31
  %idxprom30.i.i = zext i32 %43 to i64
  %arrayidx31.i.i = getelementptr inbounds nuw i16, ptr %is_rep2.i.i, i64 %idxprom30.i.i
  %sub.i65.i = add nsw i32 %19, -2
  %arrayidx.i131.i.i = getelementptr inbounds nuw i32, ptr %symbols.i.i77, i64 %inc.i110.i.i
  store i32 %sub.i65.i, ptr %arrayidx.i131.i.i, align 4, !tbaa !22
  %arrayidx2.i133.i.i = getelementptr inbounds nuw ptr, ptr %probs.i.i80, i64 %inc.i110.i.i
  store ptr %arrayidx31.i.i, ptr %arrayidx2.i133.i.i, align 8, !tbaa !23
  %inc.i134.i.i = add i64 %23, 5
  store i64 %inc.i134.i.i, ptr %count.i.i78, align 8, !tbaa !21
  %cmp32.i.i = icmp eq i32 %19, 3
  br i1 %cmp32.i.i, label %if.then34.i.i, label %if.end.i66.i

if.then34.i.i:                                    ; preds = %if.else22.i.i
  %44 = load i32, ptr %arrayidx36.i.i, align 4, !tbaa !22
  store i32 %44, ptr %arrayidx38.i.i, align 4, !tbaa !22
  br label %if.end.i66.i

if.end.i66.i:                                     ; preds = %if.then34.i.i, %if.else22.i.i
  %45 = load i32, ptr %arrayidx40.i.i, align 4, !tbaa !22
  store i32 %45, ptr %arrayidx42.i.i, align 4, !tbaa !22
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.end.i66.i, %if.then17.i.i
  %46 = load i32, ptr %reps.i64.i, align 4, !tbaa !22
  store i32 %46, ptr %arrayidx47.i.i, align 4, !tbaa !22
  store i32 %40, ptr %reps.i64.i, align 4, !tbaa !22
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.end43.i.i, %if.then.i.i
  %cmp51.i.i = icmp eq i32 %20, 1
  br i1 %cmp51.i.i, label %rep_match.exit.i, label %if.else58.i.i

if.else58.i.i:                                    ; preds = %if.end50.i.i
  %47 = load i8, ptr %fast_mode, align 4, !tbaa !29, !range !10, !noundef !11
  %loadedv.i.i = trunc nuw i8 %47 to i1
  call fastcc void @length(ptr noundef nonnull %pcoder, ptr noundef nonnull %rep_len_encoder.i.i, i32 noundef %and.i, i32 noundef %20, i1 noundef zeroext %loadedv.i.i)
  br label %rep_match.exit.i

rep_match.exit.i:                                 ; preds = %if.else58.i.i, %if.end50.i.i
  %.sink.i.i = phi i32 [ 8, %if.else58.i.i ], [ 9, %if.end50.i.i ]
  %48 = load i32, ptr %state.i, align 8, !tbaa !31
  %cmp61.i.i = icmp ult i32 %48, 7
  %cond63.i.i = select i1 %cmp61.i.i, i32 %.sink.i.i, i32 11
  store i32 %cond63.i.i, ptr %state.i, align 8, !tbaa !31
  br label %encode_symbol.exit

if.else16.i:                                      ; preds = %if.else.i
  store i32 0, ptr %arrayidx.i58.i, align 4, !tbaa !22
  store ptr %arrayidx15.i, ptr %arrayidx2.i60.i, align 8, !tbaa !23
  store i64 %inc.i61.i, ptr %count.i.i78, align 8, !tbaa !21
  %sub.i83 = add i32 %19, -4
  call fastcc void @match(ptr noundef nonnull %pcoder, i32 noundef %and.i, i32 noundef %sub.i83, i32 noundef %20)
  br label %encode_symbol.exit

encode_symbol.exit:                               ; preds = %if.else16.i, %rep_match.exit.i, %literal.exit.i
  %49 = load i32, ptr %9, align 4, !tbaa !20
  %sub23.i = sub i32 %49, %20
  store i32 %sub23.i, ptr %9, align 4, !tbaa !20
  %add26 = add i32 %20, %position.0110
  call void @llvm.lifetime.end.p0(ptr nonnull %back) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %len) #5
  %call2 = call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %pcoder, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size)
  br i1 %call2, label %cleanup40.loopexit, label %if.end4

while.end:                                        ; preds = %if.end17, %lor.lhs.false, %land.lhs.true5
  %position.0110.lcssa = phi i32 [ %position.0110, %if.end17 ], [ %position.0110, %land.lhs.true5 ], [ %position.0110, %lor.lhs.false ]
  %cmp.not.lcssa = phi i1 [ %cmp.not, %if.end17 ], [ false, %land.lhs.true5 ], [ false, %lor.lhs.false ]
  %is_flushed = getelementptr inbounds nuw i8, ptr %pcoder, i64 2958
  %50 = load i8, ptr %is_flushed, align 2, !tbaa !36, !range !10, !noundef !11
  %loadedv27 = trunc nuw i8 %50 to i1
  br i1 %loadedv27, label %if.end38, label %if.then28

if.then28:                                        ; preds = %while.end
  store i8 1, ptr %is_flushed, align 2, !tbaa !36
  br i1 %cmp.not.lcssa, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then28
  %pos_mask.i90 = getelementptr inbounds nuw i8, ptr %pcoder, i64 2960
  %51 = load i32, ptr %pos_mask.i90, align 8, !tbaa !30
  %and.i91 = and i32 %51, %position.0110.lcssa
  %is_match.i92 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27548
  %state.i93 = getelementptr inbounds nuw i8, ptr %pcoder, i64 736
  %52 = load i32, ptr %state.i93, align 8, !tbaa !31
  %idxprom.i94 = zext i32 %52 to i64
  %arrayidx.i95 = getelementptr inbounds nuw [16 x i16], ptr %is_match.i92, i64 %idxprom.i94
  %idxprom1.i96 = zext i32 %and.i91 to i64
  %arrayidx2.i97 = getelementptr inbounds nuw i16, ptr %arrayidx.i95, i64 %idxprom1.i96
  %symbols.i.i98 = getelementptr inbounds nuw i8, ptr %pcoder, i64 40
  %count.i.i99 = getelementptr inbounds nuw i8, ptr %pcoder, i64 24
  %53 = load i64, ptr %count.i.i99, align 8, !tbaa !21
  %arrayidx.i.i100 = getelementptr inbounds nuw i32, ptr %symbols.i.i98, i64 %53
  store i32 1, ptr %arrayidx.i.i100, align 4, !tbaa !22
  %probs.i.i101 = getelementptr inbounds nuw i8, ptr %pcoder, i64 272
  %arrayidx2.i.i102 = getelementptr inbounds nuw ptr, ptr %probs.i.i101, i64 %53
  store ptr %arrayidx2.i97, ptr %arrayidx2.i.i102, align 8, !tbaa !23
  %inc.i.i103 = add i64 %53, 1
  %is_rep.i104 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27932
  %54 = load i32, ptr %state.i93, align 8, !tbaa !31
  %idxprom5.i = zext i32 %54 to i64
  %arrayidx6.i = getelementptr inbounds nuw i16, ptr %is_rep.i104, i64 %idxprom5.i
  %arrayidx.i17.i105 = getelementptr inbounds nuw i32, ptr %symbols.i.i98, i64 %inc.i.i103
  store i32 0, ptr %arrayidx.i17.i105, align 4, !tbaa !22
  %arrayidx2.i19.i = getelementptr inbounds nuw ptr, ptr %probs.i.i101, i64 %inc.i.i103
  store ptr %arrayidx6.i, ptr %arrayidx2.i19.i, align 8, !tbaa !23
  %inc.i20.i = add i64 %53, 2
  store i64 %inc.i20.i, ptr %count.i.i99, align 8, !tbaa !21
  call fastcc void @match(ptr noundef nonnull %pcoder, i32 noundef %and.i91, i32 noundef -1, i32 noundef 2)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then28
  %count.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 24
  %count.promoted.i = load i64, ptr %count.i, align 8, !tbaa !21
  %symbols.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 40
  %arrayidx.i106 = getelementptr inbounds nuw i32, ptr %symbols.i, i64 %count.promoted.i
  store i32 4, ptr %arrayidx.i106, align 4, !tbaa !22
  %arrayidx.1.i = getelementptr i8, ptr %arrayidx.i106, i64 4
  store i32 4, ptr %arrayidx.1.i, align 4, !tbaa !22
  %arrayidx.2.i = getelementptr i8, ptr %arrayidx.i106, i64 8
  store i32 4, ptr %arrayidx.2.i, align 4, !tbaa !22
  %arrayidx.3.i = getelementptr i8, ptr %arrayidx.i106, i64 12
  store i32 4, ptr %arrayidx.3.i, align 4, !tbaa !22
  %inc.4.i = add i64 %count.promoted.i, 5
  %arrayidx.4.i = getelementptr i8, ptr %arrayidx.i106, i64 16
  store i32 4, ptr %arrayidx.4.i, align 4, !tbaa !22
  store i64 %inc.4.i, ptr %count.i, align 8, !tbaa !21
  %call35 = call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %pcoder, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size)
  br i1 %call35, label %cleanup40, label %if.end38

if.end38:                                         ; preds = %if.end32, %while.end
  store i8 0, ptr %is_flushed, align 2, !tbaa !36
  br label %cleanup40

cleanup40.loopexit:                               ; preds = %encode_symbol.exit, %if.then14
  br label %cleanup40

cleanup40:                                        ; preds = %cleanup40.loopexit, %if.end38, %if.end32, %if.end, %if.then.i
  %retval.1 = phi i32 [ 1, %if.end38 ], [ 0, %if.end32 ], [ 0, %if.then.i ], [ 0, %if.end ], [ 0, %cleanup40.loopexit ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare hidden fastcc noundef zeroext i1 @rc_encode(ptr noundef captures(none), ptr noundef writeonly captures(none), ptr noundef captures(none), i64 noundef) unnamed_addr #2

declare void @lzma_lzma_optimum_fast(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lzma_lzma_optimum_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare hidden fastcc void @match(ptr noundef, i32 noundef, i32 noundef range(i32 -1, -5), i32 noundef) unnamed_addr #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare hidden fastcc void @length(ptr noundef captures(none), ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!0 = !{!1, !7, i64 2957}
!1 = !{!"lzma_coder_s", !2, i64 0, !6, i64 736, !4, i64 740, !4, i64 756, !6, i64 2948, !6, i64 2952, !7, i64 2956, !7, i64 2957, !7, i64 2958, !6, i64 2960, !6, i64 2964, !6, i64 2968, !4, i64 2972, !4, i64 27548, !4, i64 27932, !4, i64 27956, !4, i64 27980, !4, i64 28004, !4, i64 28028, !4, i64 28412, !4, i64 28924, !4, i64 29152, !8, i64 29184, !8, i64 47688, !4, i64 66192, !4, i64 67216, !6, i64 69264, !6, i64 69268, !4, i64 69272, !6, i64 69336, !6, i64 69340, !6, i64 69344, !4, i64 69348}
!2 = !{!"", !3, i64 0, !3, i64 8, !6, i64 16, !4, i64 20, !3, i64 24, !3, i64 32, !4, i64 40, !4, i64 272}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"int", !4, i64 0}
!7 = !{!"_Bool", !4, i64 0}
!8 = !{!"", !9, i64 0, !9, i64 2, !4, i64 4, !4, i64 260, !4, i64 516, !4, i64 1028, !6, i64 18436, !4, i64 18440}
!9 = !{!"short", !4, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!13, !6, i64 24}
!13 = !{!"lzma_mf_s", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !15, i64 48, !15, i64 56, !16, i64 64, !16, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"p1 int", !15, i64 0}
!17 = !{!13, !6, i64 32}
!18 = !{!13, !6, i64 104}
!19 = !{!13, !15, i64 56}
!20 = !{!13, !6, i64 28}
!21 = !{!2, !3, i64 24}
!22 = !{!6, !6, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 short", !15, i64 0}
!25 = !{!13, !14, i64 0}
!26 = !{!4, !4, i64 0}
!27 = !{!3, !3, i64 0}
!28 = !{!2, !3, i64 8}
!29 = !{!1, !7, i64 2956}
!30 = !{!1, !6, i64 2960}
!31 = !{!1, !6, i64 736}
!32 = !{!1, !6, i64 2968}
!33 = !{!1, !6, i64 2964}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!1, !7, i64 2958}
