; ModuleID = '/tmp/tmp.Md5fJdjSVE/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/557.xz_r/src/liblzma/lzma/lzma_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_decode.next_state = external hidden unnamed_addr constant [12 x i32], align 16

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 10) i32 @lzma_decode(ptr noundef %pcoder, ptr noalias noundef captures(none) %dictptr, ptr noalias noundef readonly %in, ptr noalias noundef captures(none) %in_pos, i64 noundef %in_size) #0 {
entry:
  %rc = getelementptr inbounds nuw i8, ptr %pcoder, i64 28268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  %init_bytes_left.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28276
  %init_bytes_left.promoted.i = load i32, ptr %init_bytes_left.i, align 4, !tbaa !5, !noalias !10
  %cmp.not9.i = icmp eq i32 %init_bytes_left.promoted.i, 0
  br i1 %cmp.not9.i, label %if.end, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %entry
  %code.i = getelementptr inbounds nuw i8, ptr %pcoder, i64 28272
  %in_pos.promoted.i = load i64, ptr %in_pos, align 8, !tbaa !11, !alias.scope !3, !noalias !0
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i, %while.body.lr.ph.i
  %0 = phi i64 [ %in_pos.promoted.i, %while.body.lr.ph.i ], [ %inc.i, %if.end.i ]
  %1 = phi i32 [ %init_bytes_left.promoted.i, %while.body.lr.ph.i ], [ %dec.i, %if.end.i ]
  %cmp1.not.i = icmp eq i64 %0, %in_size
  br i1 %cmp1.not.i, label %cleanup.loopexit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %2 = load i32, ptr %code.i, align 4, !tbaa !13, !noalias !10
  %shl.i = shl i32 %2, 8
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %in, i64 %0
  %3 = load i8, ptr %arrayidx.i, align 1, !tbaa !14, !alias.scope !0, !noalias !3
  %conv.i = zext i8 %3 to i32
  %or.i = or disjoint i32 %shl.i, %conv.i
  store i32 %or.i, ptr %code.i, align 4, !tbaa !13, !noalias !10
  %inc.i = add i64 %0, 1
  store i64 %inc.i, ptr %in_pos, align 8, !tbaa !11, !alias.scope !3, !noalias !0
  %dec.i = add i32 %1, -1
  store i32 %dec.i, ptr %init_bytes_left.i, align 4, !tbaa !5, !noalias !10
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.loopexit, label %while.body.i, !llvm.loop !15

if.end.loopexit:                                  ; preds = %if.end.i
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %entry
  %dict.sroa.0.0.copyload = load ptr, ptr %dictptr, align 8, !tbaa !17
  %dict.sroa.12.0.dictptr.sroa_idx = getelementptr inbounds nuw i8, ptr %dictptr, i64 8
  %dict.sroa.12.0.copyload = load i64, ptr %dict.sroa.12.0.dictptr.sroa_idx, align 8, !tbaa !11
  %dict.sroa.37.0.dictptr.sroa_idx = getelementptr inbounds nuw i8, ptr %dictptr, i64 16
  %dict.sroa.37.0.copyload = load i64, ptr %dict.sroa.37.0.dictptr.sroa_idx, align 8, !tbaa !11
  %dict.sroa.46.0.dictptr.sroa_idx = getelementptr inbounds nuw i8, ptr %dictptr, i64 24
  %dict.sroa.46.0.copyload = load i64, ptr %dict.sroa.46.0.dictptr.sroa_idx, align 8, !tbaa !11
  %dict.sroa.52.0.dictptr.sroa_idx = getelementptr inbounds nuw i8, ptr %dictptr, i64 32
  %dict.sroa.52.0.copyload = load i64, ptr %dict.sroa.52.0.dictptr.sroa_idx, align 8, !tbaa !11
  %rc1.sroa.0.0.copyload = load i32, ptr %rc, align 4, !tbaa !20
  %rc1.sroa.500.0.rc2.sroa_idx = getelementptr inbounds nuw i8, ptr %pcoder, i64 28272
  %rc1.sroa.500.0.copyload = load i32, ptr %rc1.sroa.500.0.rc2.sroa_idx, align 4, !tbaa !20
  %rc1.sroa.856.0.rc2.sroa_idx = getelementptr inbounds nuw i8, ptr %pcoder, i64 28276
  %rc1.sroa.856.0.copyload = load i32, ptr %rc1.sroa.856.0.rc2.sroa_idx, align 4, !tbaa !20
  %4 = load i64, ptr %in_pos, align 8, !tbaa !11
  %state3 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28280
  %5 = load i32, ptr %state3, align 8, !tbaa !21
  %rep04 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28284
  %6 = load i32, ptr %rep04, align 4, !tbaa !26
  %rep15 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28288
  %7 = load i32, ptr %rep15, align 8, !tbaa !27
  %rep26 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28292
  %8 = load i32, ptr %rep26, align 4, !tbaa !28
  %rep37 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28296
  %9 = load i32, ptr %rep37, align 8, !tbaa !29
  %pos_mask8 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28300
  %10 = load i32, ptr %pos_mask8, align 4, !tbaa !30
  %probs9 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28328
  %11 = load ptr, ptr %probs9, align 8, !tbaa !31
  %symbol10 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28336
  %12 = load i32, ptr %symbol10, align 8, !tbaa !32
  %limit11 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28340
  %13 = load i32, ptr %limit11, align 4, !tbaa !33
  %offset12 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28344
  %14 = load i32, ptr %offset12, align 8, !tbaa !34
  %len13 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28348
  %15 = load i32, ptr %len13, align 4, !tbaa !35
  %literal_pos_mask14 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28308
  %16 = load i32, ptr %literal_pos_mask14, align 4, !tbaa !36
  %literal_context_bits15 = getelementptr inbounds nuw i8, ptr %pcoder, i64 28304
  %17 = load i32, ptr %literal_context_bits15, align 8, !tbaa !37
  %18 = trunc i64 %dict.sroa.12.0.copyload to i32
  %conv17 = and i32 %10, %18
  %uncompressed_size = getelementptr inbounds nuw i8, ptr %pcoder, i64 28312
  %19 = load i64, ptr %uncompressed_size, align 8, !tbaa !38
  %cmp.not = icmp ne i64 %19, -1
  %sub = sub i64 %dict.sroa.46.0.copyload, %dict.sroa.12.0.copyload
  %cmp23 = icmp ult i64 %19, %sub
  %or.cond7944 = select i1 %cmp.not, i1 %cmp23, i1 false
  %add = add i64 %19, %dict.sroa.12.0.copyload
  %dict.sroa.46.0 = select i1 %or.cond7944, i64 %add, i64 %dict.sroa.46.0.copyload
  %sequence = getelementptr inbounds nuw i8, ptr %pcoder, i64 28320
  %20 = load i32, ptr %sequence, align 8, !tbaa !39
  switch i32 %20, label %do.body5579 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %do.body101
    i32 3, label %do.body171
    i32 4, label %do.body242
    i32 5, label %do.body313
    i32 6, label %do.body384
    i32 7, label %do.body455
    i32 8, label %do.body526
    i32 9, label %do.body597
    i32 10, label %sw.bb670
    i32 11, label %sw.bb747
    i32 12, label %sw.bb825
    i32 13, label %sw.bb903
    i32 14, label %sw.bb981
    i32 15, label %sw.bb1059
    i32 16, label %sw.bb1137
    i32 17, label %sw.bb1215
    i32 18, label %sw.bb1295
    i32 19, label %do.body1325
    i32 20, label %do.body1377
    i32 21, label %do.body1423
    i32 22, label %do.body1513
    i32 23, label %do.body1604
    i32 24, label %do.body1713
    i32 25, label %do.body1760
    i32 26, label %do.body1850
    i32 27, label %do.body1941
    i32 28, label %do.body2052
    i32 29, label %do.body2132
    i32 30, label %do.body2213
    i32 31, label %do.body2294
    i32 32, label %do.body2375
    i32 33, label %do.body2456
    i32 34, label %do.body2537
    i32 35, label %do.body2618
    i32 36, label %do.body2714
    i32 37, label %do.body2785
    i32 38, label %do.body2856
    i32 39, label %do.body2927
    i32 40, label %do.body2998
    i32 41, label %do.body3069
    i32 42, label %sw.bb3155
    i32 43, label %sw.bb3526
    i32 44, label %do.body3576
    i32 45, label %do.body3652
    i32 46, label %do.body3729
    i32 47, label %do.body3806
    i32 48, label %do.body3887
    i32 49, label %do.body3939
    i32 51, label %do.body3988
    i32 50, label %sw.bb4045
    i32 52, label %do.body4094
    i32 53, label %do.body4162
    i32 54, label %do.body4239
    i32 55, label %do.body4286
    i32 56, label %do.body4377
    i32 57, label %do.body4468
    i32 58, label %do.body4577
    i32 59, label %do.body4625
    i32 60, label %do.body4716
    i32 61, label %do.body4807
    i32 62, label %do.body4918
    i32 63, label %do.body4999
    i32 64, label %do.body5080
    i32 65, label %do.body5161
    i32 66, label %do.body5242
    i32 67, label %do.body5323
    i32 68, label %do.body5404
    i32 69, label %do.body5485
    i32 70, label %sw.bb5573
  ]

while.body:                                       ; preds = %if.end71.i, %if.end.i7863, %if.end.i7847
  %dict.sroa.37.0 = phi i64 [ %spec.select7953, %if.end71.i ], [ %spec.select7949, %if.end.i7847 ], [ %spec.select7951, %if.end.i7863 ]
  %dict.sroa.12.0 = phi i64 [ %dict.sroa.12.80, %if.end71.i ], [ %inc.i7848, %if.end.i7847 ], [ %inc.i7864, %if.end.i7863 ]
  %len.0 = phi i32 [ 0, %if.end71.i ], [ %len.19, %if.end.i7847 ], [ %len.54, %if.end.i7863 ]
  %rep0.0 = phi i32 [ %rep0.84, %if.end71.i ], [ %rep0.19, %if.end.i7847 ], [ %rep0.64, %if.end.i7863 ]
  %rep1.0 = phi i32 [ %rep1.74, %if.end71.i ], [ %rep1.19, %if.end.i7847 ], [ %rep1.54, %if.end.i7863 ]
  %rep2.0 = phi i32 [ %rep2.74, %if.end71.i ], [ %rep2.19, %if.end.i7847 ], [ %rep2.54, %if.end.i7863 ]
  %rep3.0 = phi i32 [ %rep3.74, %if.end71.i ], [ %rep3.19, %if.end.i7847 ], [ %rep3.54, %if.end.i7863 ]
  %state.0 = phi i32 [ %state.74, %if.end71.i ], [ %state.19, %if.end.i7847 ], [ %state.54, %if.end.i7863 ]
  %probs.0 = phi ptr [ %probs.73, %if.end71.i ], [ %probs.19, %if.end.i7847 ], [ %probs.53, %if.end.i7863 ]
  %symbol.0 = phi i32 [ %symbol.94, %if.end71.i ], [ %symbol.26, %if.end.i7847 ], [ %symbol.72, %if.end.i7863 ]
  %limit.0 = phi i32 [ %limit.79, %if.end71.i ], [ %limit.19, %if.end.i7847 ], [ %limit.59, %if.end.i7863 ]
  %offset.0 = phi i32 [ %offset.85, %if.end71.i ], [ %offset.26, %if.end.i7847 ], [ %offset.65, %if.end.i7863 ]
  %rc_in_pos.0 = phi i64 [ %rc_in_pos.150, %if.end71.i ], [ %rc_in_pos.36, %if.end.i7847 ], [ %rc_in_pos.112, %if.end.i7863 ]
  %rc1.sroa.0.0 = phi i32 [ %rc1.sroa.0.169, %if.end71.i ], [ %rc1.sroa.0.43, %if.end.i7847 ], [ %rc1.sroa.0.128, %if.end.i7863 ]
  %rc1.sroa.500.0 = phi i32 [ %rc1.sroa.500.169, %if.end71.i ], [ %rc1.sroa.500.43, %if.end.i7847 ], [ %rc1.sroa.500.128, %if.end.i7863 ]
  %21 = trunc i64 %dict.sroa.12.0 to i32
  %conv33 = and i32 %10, %21
  br label %sw.bb

sw.bb:                                            ; preds = %while.body, %if.end, %if.end
  %dict.sroa.37.1 = phi i64 [ %dict.sroa.37.0.copyload, %if.end ], [ %dict.sroa.37.0.copyload, %if.end ], [ %dict.sroa.37.0, %while.body ]
  %dict.sroa.12.1 = phi i64 [ %dict.sroa.12.0.copyload, %if.end ], [ %dict.sroa.12.0.copyload, %if.end ], [ %dict.sroa.12.0, %while.body ]
  %len.1 = phi i32 [ %15, %if.end ], [ %15, %if.end ], [ %len.0, %while.body ]
  %rep0.1 = phi i32 [ %6, %if.end ], [ %6, %if.end ], [ %rep0.0, %while.body ]
  %rep1.1 = phi i32 [ %7, %if.end ], [ %7, %if.end ], [ %rep1.0, %while.body ]
  %rep2.1 = phi i32 [ %8, %if.end ], [ %8, %if.end ], [ %rep2.0, %while.body ]
  %rep3.1 = phi i32 [ %9, %if.end ], [ %9, %if.end ], [ %rep3.0, %while.body ]
  %state.1 = phi i32 [ %5, %if.end ], [ %5, %if.end ], [ %state.0, %while.body ]
  %probs.1 = phi ptr [ %11, %if.end ], [ %11, %if.end ], [ %probs.0, %while.body ]
  %symbol.1 = phi i32 [ %12, %if.end ], [ %12, %if.end ], [ %symbol.0, %while.body ]
  %limit.1 = phi i32 [ %13, %if.end ], [ %13, %if.end ], [ %limit.0, %while.body ]
  %offset.1 = phi i32 [ %14, %if.end ], [ %14, %if.end ], [ %offset.0, %while.body ]
  %rc_in_pos.1 = phi i64 [ %4, %if.end ], [ %4, %if.end ], [ %rc_in_pos.0, %while.body ]
  %pos_state.0 = phi i32 [ %conv17, %if.end ], [ %conv17, %if.end ], [ %conv33, %while.body ]
  %rc1.sroa.0.1 = phi i32 [ %rc1.sroa.0.0.copyload, %if.end ], [ %rc1.sroa.0.0.copyload, %if.end ], [ %rc1.sroa.0.0, %while.body ]
  %rc1.sroa.500.1 = phi i32 [ %rc1.sroa.500.0.copyload, %if.end ], [ %rc1.sroa.500.0.copyload, %if.end ], [ %rc1.sroa.500.0, %while.body ]
  %cmp39 = icmp eq i64 %dict.sroa.12.1, %dict.sroa.46.0
  %or.cond7946 = select i1 %cmp.not, i1 %cmp39, i1 false
  br i1 %or.cond7946, label %do.body5579, label %do.body

do.body:                                          ; preds = %sw.bb
  %cmp43 = icmp ult i32 %rc1.sroa.0.1, 16777216
  br i1 %cmp43, label %if.then45, label %do.end

if.then45:                                        ; preds = %do.body
  %cmp46 = icmp eq i64 %rc_in_pos.1, %in_size
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.then45
  store i32 1, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end50:                                         ; preds = %if.then45
  %shl = shl nuw i32 %rc1.sroa.0.1, 8
  %shl52 = shl i32 %rc1.sroa.500.1, 8
  %inc = add i64 %rc_in_pos.1, 1
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.1
  %22 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %conv53 = zext i8 %22 to i32
  %or = or disjoint i32 %shl52, %conv53
  br label %do.end

do.end:                                           ; preds = %if.end50, %do.body
  %rc_in_pos.2 = phi i64 [ %inc, %if.end50 ], [ %rc_in_pos.1, %do.body ]
  %rc1.sroa.0.2 = phi i32 [ %shl, %if.end50 ], [ %rc1.sroa.0.1, %do.body ]
  %rc1.sroa.500.2 = phi i32 [ %or, %if.end50 ], [ %rc1.sroa.500.1, %do.body ]
  %shr = lshr i32 %rc1.sroa.0.2, 11
  %is_match = getelementptr inbounds nuw i8, ptr %pcoder, i64 24576
  %idxprom = zext i32 %state.1 to i64
  %arrayidx57 = getelementptr inbounds nuw [16 x i16], ptr %is_match, i64 %idxprom
  %idxprom58 = zext i32 %pos_state.0 to i64
  %arrayidx59 = getelementptr inbounds nuw i16, ptr %arrayidx57, i64 %idxprom58
  %23 = load i16, ptr %arrayidx59, align 2, !tbaa !40
  %conv60 = zext i16 %23 to i32
  %mul = mul i32 %shr, %conv60
  %cmp62 = icmp ult i32 %rc1.sroa.500.2, %mul
  br i1 %cmp62, label %do.body65, label %do.body1302

do.body65:                                        ; preds = %do.end
  %sub73 = sub nsw i32 2048, %conv60
  %shr74 = lshr i32 %sub73, 5
  %24 = trunc i32 %shr74 to i16
  %conv82 = add i16 %23, %24
  store i16 %conv82, ptr %arrayidx59, align 2, !tbaa !40
  %conv86 = zext i32 %16 to i64
  %and87 = and i64 %dict.sroa.12.1, %conv86
  %sh_prom = zext nneg i32 %17 to i64
  %shl88 = shl i64 %and87, %sh_prom
  %cmp.i.not = icmp eq i64 %dict.sroa.12.1, 0
  %spec.select7947 = select i1 %cmp.i.not, i64 %dict.sroa.52.0.copyload, i64 0
  %25 = getelementptr i8, ptr %dict.sroa.0.0.copyload, i64 %dict.sroa.12.1
  %26 = getelementptr i8, ptr %25, i64 -1
  %arrayidx.i7836 = getelementptr i8, ptr %26, i64 %spec.select7947
  %27 = load i8, ptr %arrayidx.i7836, align 1, !tbaa !14
  %conv90 = zext i8 %27 to i32
  %sub91 = sub i32 8, %17
  %shr92 = lshr i32 %conv90, %sub91
  %conv93 = zext nneg i32 %shr92 to i64
  %28 = getelementptr [768 x i16], ptr %pcoder, i64 %shl88
  %arrayidx95 = getelementptr [768 x i16], ptr %28, i64 %conv93
  %cmp96 = icmp ult i32 %state.1, 7
  br i1 %cmp96, label %do.body101, label %if.else666

do.body101:                                       ; preds = %do.body65, %if.end
  %dict.sroa.37.2 = phi i64 [ %dict.sroa.37.1, %do.body65 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.2 = phi i64 [ %dict.sroa.12.1, %do.body65 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.2 = phi i32 [ %len.1, %do.body65 ], [ %15, %if.end ]
  %rep0.2 = phi i32 [ %rep0.1, %do.body65 ], [ %6, %if.end ]
  %rep1.2 = phi i32 [ %rep1.1, %do.body65 ], [ %7, %if.end ]
  %rep2.2 = phi i32 [ %rep2.1, %do.body65 ], [ %8, %if.end ]
  %rep3.2 = phi i32 [ %rep3.1, %do.body65 ], [ %9, %if.end ]
  %state.2 = phi i32 [ %state.1, %do.body65 ], [ %5, %if.end ]
  %probs.2 = phi ptr [ %arrayidx95, %do.body65 ], [ %11, %if.end ]
  %symbol.2 = phi i32 [ 1, %do.body65 ], [ %12, %if.end ]
  %limit.2 = phi i32 [ %limit.1, %do.body65 ], [ %13, %if.end ]
  %offset.2 = phi i32 [ %offset.1, %do.body65 ], [ %14, %if.end ]
  %rc_in_pos.3 = phi i64 [ %rc_in_pos.2, %do.body65 ], [ %4, %if.end ]
  %rc1.sroa.0.3 = phi i32 [ %mul, %do.body65 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.3 = phi i32 [ %rc1.sroa.500.2, %do.body65 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp103 = icmp ult i32 %rc1.sroa.0.3, 16777216
  br i1 %cmp103, label %if.then105, label %do.end122

if.then105:                                       ; preds = %do.body101
  %cmp106 = icmp eq i64 %rc_in_pos.3, %in_size
  br i1 %cmp106, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.then105
  store i32 2, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end110:                                        ; preds = %if.then105
  %shl112 = shl nuw i32 %rc1.sroa.0.3, 8
  %shl114 = shl i32 %rc1.sroa.500.3, 8
  %inc115 = add i64 %rc_in_pos.3, 1
  %arrayidx116 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.3
  %29 = load i8, ptr %arrayidx116, align 1, !tbaa !14
  %conv117 = zext i8 %29 to i32
  %or118 = or disjoint i32 %shl114, %conv117
  br label %do.end122

do.end122:                                        ; preds = %if.end110, %do.body101
  %rc_in_pos.4 = phi i64 [ %inc115, %if.end110 ], [ %rc_in_pos.3, %do.body101 ]
  %rc1.sroa.0.4 = phi i32 [ %shl112, %if.end110 ], [ %rc1.sroa.0.3, %do.body101 ]
  %rc1.sroa.500.4 = phi i32 [ %or118, %if.end110 ], [ %rc1.sroa.500.3, %do.body101 ]
  %shr124 = lshr i32 %rc1.sroa.0.4, 11
  %idxprom125 = zext i32 %symbol.2 to i64
  %arrayidx126 = getelementptr inbounds nuw i16, ptr %probs.2, i64 %idxprom125
  %30 = load i16, ptr %arrayidx126, align 2, !tbaa !40
  %conv127 = zext i16 %30 to i32
  %mul128 = mul i32 %shr124, %conv127
  %cmp130 = icmp ult i32 %rc1.sroa.500.4, %mul128
  br i1 %cmp130, label %do.body133, label %do.body148

do.body133:                                       ; preds = %do.end122
  %sub138 = sub nsw i32 2048, %conv127
  %shr139 = lshr i32 %sub138, 5
  %31 = trunc i32 %shr139 to i16
  %conv144 = add i16 %30, %31
  store i16 %conv144, ptr %arrayidx126, align 2, !tbaa !40
  %shl147 = shl i32 %symbol.2, 1
  br label %do.body171

do.body148:                                       ; preds = %do.end122
  %sub150 = sub i32 %rc1.sroa.0.4, %mul128
  %sub152 = sub nuw i32 %rc1.sroa.500.4, %mul128
  %shr156 = lshr i16 %30, 5
  %sub160 = sub i16 %30, %shr156
  store i16 %sub160, ptr %arrayidx126, align 2, !tbaa !40
  %shl164 = shl i32 %symbol.2, 1
  %add165 = or disjoint i32 %shl164, 1
  br label %do.body171

do.body171:                                       ; preds = %do.body148, %do.body133, %if.end
  %dict.sroa.37.3 = phi i64 [ %dict.sroa.37.2, %do.body133 ], [ %dict.sroa.37.2, %do.body148 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.3 = phi i64 [ %dict.sroa.12.2, %do.body133 ], [ %dict.sroa.12.2, %do.body148 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.3 = phi i32 [ %len.2, %do.body133 ], [ %len.2, %do.body148 ], [ %15, %if.end ]
  %rep0.3 = phi i32 [ %rep0.2, %do.body133 ], [ %rep0.2, %do.body148 ], [ %6, %if.end ]
  %rep1.3 = phi i32 [ %rep1.2, %do.body133 ], [ %rep1.2, %do.body148 ], [ %7, %if.end ]
  %rep2.3 = phi i32 [ %rep2.2, %do.body133 ], [ %rep2.2, %do.body148 ], [ %8, %if.end ]
  %rep3.3 = phi i32 [ %rep3.2, %do.body133 ], [ %rep3.2, %do.body148 ], [ %9, %if.end ]
  %state.3 = phi i32 [ %state.2, %do.body133 ], [ %state.2, %do.body148 ], [ %5, %if.end ]
  %probs.3 = phi ptr [ %probs.2, %do.body133 ], [ %probs.2, %do.body148 ], [ %11, %if.end ]
  %symbol.3 = phi i32 [ %shl147, %do.body133 ], [ %add165, %do.body148 ], [ %12, %if.end ]
  %limit.3 = phi i32 [ %limit.2, %do.body133 ], [ %limit.2, %do.body148 ], [ %13, %if.end ]
  %offset.3 = phi i32 [ %offset.2, %do.body133 ], [ %offset.2, %do.body148 ], [ %14, %if.end ]
  %rc_in_pos.5 = phi i64 [ %rc_in_pos.4, %do.body133 ], [ %rc_in_pos.4, %do.body148 ], [ %4, %if.end ]
  %rc1.sroa.0.5 = phi i32 [ %mul128, %do.body133 ], [ %sub150, %do.body148 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.5 = phi i32 [ %rc1.sroa.500.4, %do.body133 ], [ %sub152, %do.body148 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp173 = icmp ult i32 %rc1.sroa.0.5, 16777216
  br i1 %cmp173, label %if.then175, label %do.end192

if.then175:                                       ; preds = %do.body171
  %cmp176 = icmp eq i64 %rc_in_pos.5, %in_size
  br i1 %cmp176, label %if.then178, label %if.end180

if.then178:                                       ; preds = %if.then175
  store i32 3, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end180:                                        ; preds = %if.then175
  %shl182 = shl nuw i32 %rc1.sroa.0.5, 8
  %shl184 = shl i32 %rc1.sroa.500.5, 8
  %inc185 = add i64 %rc_in_pos.5, 1
  %arrayidx186 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.5
  %32 = load i8, ptr %arrayidx186, align 1, !tbaa !14
  %conv187 = zext i8 %32 to i32
  %or188 = or disjoint i32 %shl184, %conv187
  br label %do.end192

do.end192:                                        ; preds = %if.end180, %do.body171
  %rc_in_pos.6 = phi i64 [ %inc185, %if.end180 ], [ %rc_in_pos.5, %do.body171 ]
  %rc1.sroa.0.6 = phi i32 [ %shl182, %if.end180 ], [ %rc1.sroa.0.5, %do.body171 ]
  %rc1.sroa.500.6 = phi i32 [ %or188, %if.end180 ], [ %rc1.sroa.500.5, %do.body171 ]
  %shr194 = lshr i32 %rc1.sroa.0.6, 11
  %idxprom195 = zext i32 %symbol.3 to i64
  %arrayidx196 = getelementptr inbounds nuw i16, ptr %probs.3, i64 %idxprom195
  %33 = load i16, ptr %arrayidx196, align 2, !tbaa !40
  %conv197 = zext i16 %33 to i32
  %mul198 = mul i32 %shr194, %conv197
  %cmp200 = icmp ult i32 %rc1.sroa.500.6, %mul198
  br i1 %cmp200, label %do.body203, label %do.body219

do.body203:                                       ; preds = %do.end192
  %sub208 = sub nsw i32 2048, %conv197
  %shr209 = lshr i32 %sub208, 5
  %34 = trunc i32 %shr209 to i16
  %conv214 = add i16 %33, %34
  store i16 %conv214, ptr %arrayidx196, align 2, !tbaa !40
  %shl217 = shl i32 %symbol.3, 1
  br label %do.body242

do.body219:                                       ; preds = %do.end192
  %sub221 = sub i32 %rc1.sroa.0.6, %mul198
  %sub223 = sub nuw i32 %rc1.sroa.500.6, %mul198
  %shr227 = lshr i16 %33, 5
  %sub231 = sub i16 %33, %shr227
  store i16 %sub231, ptr %arrayidx196, align 2, !tbaa !40
  %shl235 = shl i32 %symbol.3, 1
  %add236 = or disjoint i32 %shl235, 1
  br label %do.body242

do.body242:                                       ; preds = %do.body219, %do.body203, %if.end
  %dict.sroa.37.4 = phi i64 [ %dict.sroa.37.3, %do.body203 ], [ %dict.sroa.37.3, %do.body219 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.4 = phi i64 [ %dict.sroa.12.3, %do.body203 ], [ %dict.sroa.12.3, %do.body219 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.4 = phi i32 [ %len.3, %do.body203 ], [ %len.3, %do.body219 ], [ %15, %if.end ]
  %rep0.4 = phi i32 [ %rep0.3, %do.body203 ], [ %rep0.3, %do.body219 ], [ %6, %if.end ]
  %rep1.4 = phi i32 [ %rep1.3, %do.body203 ], [ %rep1.3, %do.body219 ], [ %7, %if.end ]
  %rep2.4 = phi i32 [ %rep2.3, %do.body203 ], [ %rep2.3, %do.body219 ], [ %8, %if.end ]
  %rep3.4 = phi i32 [ %rep3.3, %do.body203 ], [ %rep3.3, %do.body219 ], [ %9, %if.end ]
  %state.4 = phi i32 [ %state.3, %do.body203 ], [ %state.3, %do.body219 ], [ %5, %if.end ]
  %probs.4 = phi ptr [ %probs.3, %do.body203 ], [ %probs.3, %do.body219 ], [ %11, %if.end ]
  %symbol.4 = phi i32 [ %shl217, %do.body203 ], [ %add236, %do.body219 ], [ %12, %if.end ]
  %limit.4 = phi i32 [ %limit.3, %do.body203 ], [ %limit.3, %do.body219 ], [ %13, %if.end ]
  %offset.4 = phi i32 [ %offset.3, %do.body203 ], [ %offset.3, %do.body219 ], [ %14, %if.end ]
  %rc_in_pos.7 = phi i64 [ %rc_in_pos.6, %do.body203 ], [ %rc_in_pos.6, %do.body219 ], [ %4, %if.end ]
  %rc1.sroa.0.7 = phi i32 [ %mul198, %do.body203 ], [ %sub221, %do.body219 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.7 = phi i32 [ %rc1.sroa.500.6, %do.body203 ], [ %sub223, %do.body219 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp244 = icmp ult i32 %rc1.sroa.0.7, 16777216
  br i1 %cmp244, label %if.then246, label %do.end263

if.then246:                                       ; preds = %do.body242
  %cmp247 = icmp eq i64 %rc_in_pos.7, %in_size
  br i1 %cmp247, label %if.then249, label %if.end251

if.then249:                                       ; preds = %if.then246
  store i32 4, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end251:                                        ; preds = %if.then246
  %shl253 = shl nuw i32 %rc1.sroa.0.7, 8
  %shl255 = shl i32 %rc1.sroa.500.7, 8
  %inc256 = add i64 %rc_in_pos.7, 1
  %arrayidx257 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.7
  %35 = load i8, ptr %arrayidx257, align 1, !tbaa !14
  %conv258 = zext i8 %35 to i32
  %or259 = or disjoint i32 %shl255, %conv258
  br label %do.end263

do.end263:                                        ; preds = %if.end251, %do.body242
  %rc_in_pos.8 = phi i64 [ %inc256, %if.end251 ], [ %rc_in_pos.7, %do.body242 ]
  %rc1.sroa.0.8 = phi i32 [ %shl253, %if.end251 ], [ %rc1.sroa.0.7, %do.body242 ]
  %rc1.sroa.500.8 = phi i32 [ %or259, %if.end251 ], [ %rc1.sroa.500.7, %do.body242 ]
  %shr265 = lshr i32 %rc1.sroa.0.8, 11
  %idxprom266 = zext i32 %symbol.4 to i64
  %arrayidx267 = getelementptr inbounds nuw i16, ptr %probs.4, i64 %idxprom266
  %36 = load i16, ptr %arrayidx267, align 2, !tbaa !40
  %conv268 = zext i16 %36 to i32
  %mul269 = mul i32 %shr265, %conv268
  %cmp271 = icmp ult i32 %rc1.sroa.500.8, %mul269
  br i1 %cmp271, label %do.body274, label %do.body290

do.body274:                                       ; preds = %do.end263
  %sub279 = sub nsw i32 2048, %conv268
  %shr280 = lshr i32 %sub279, 5
  %37 = trunc i32 %shr280 to i16
  %conv285 = add i16 %36, %37
  store i16 %conv285, ptr %arrayidx267, align 2, !tbaa !40
  %shl288 = shl i32 %symbol.4, 1
  br label %do.body313

do.body290:                                       ; preds = %do.end263
  %sub292 = sub i32 %rc1.sroa.0.8, %mul269
  %sub294 = sub nuw i32 %rc1.sroa.500.8, %mul269
  %shr298 = lshr i16 %36, 5
  %sub302 = sub i16 %36, %shr298
  store i16 %sub302, ptr %arrayidx267, align 2, !tbaa !40
  %shl306 = shl i32 %symbol.4, 1
  %add307 = or disjoint i32 %shl306, 1
  br label %do.body313

do.body313:                                       ; preds = %do.body290, %do.body274, %if.end
  %dict.sroa.37.5 = phi i64 [ %dict.sroa.37.4, %do.body274 ], [ %dict.sroa.37.4, %do.body290 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.5 = phi i64 [ %dict.sroa.12.4, %do.body274 ], [ %dict.sroa.12.4, %do.body290 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.5 = phi i32 [ %len.4, %do.body274 ], [ %len.4, %do.body290 ], [ %15, %if.end ]
  %rep0.5 = phi i32 [ %rep0.4, %do.body274 ], [ %rep0.4, %do.body290 ], [ %6, %if.end ]
  %rep1.5 = phi i32 [ %rep1.4, %do.body274 ], [ %rep1.4, %do.body290 ], [ %7, %if.end ]
  %rep2.5 = phi i32 [ %rep2.4, %do.body274 ], [ %rep2.4, %do.body290 ], [ %8, %if.end ]
  %rep3.5 = phi i32 [ %rep3.4, %do.body274 ], [ %rep3.4, %do.body290 ], [ %9, %if.end ]
  %state.5 = phi i32 [ %state.4, %do.body274 ], [ %state.4, %do.body290 ], [ %5, %if.end ]
  %probs.5 = phi ptr [ %probs.4, %do.body274 ], [ %probs.4, %do.body290 ], [ %11, %if.end ]
  %symbol.5 = phi i32 [ %shl288, %do.body274 ], [ %add307, %do.body290 ], [ %12, %if.end ]
  %limit.5 = phi i32 [ %limit.4, %do.body274 ], [ %limit.4, %do.body290 ], [ %13, %if.end ]
  %offset.5 = phi i32 [ %offset.4, %do.body274 ], [ %offset.4, %do.body290 ], [ %14, %if.end ]
  %rc_in_pos.9 = phi i64 [ %rc_in_pos.8, %do.body274 ], [ %rc_in_pos.8, %do.body290 ], [ %4, %if.end ]
  %rc1.sroa.0.9 = phi i32 [ %mul269, %do.body274 ], [ %sub292, %do.body290 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.9 = phi i32 [ %rc1.sroa.500.8, %do.body274 ], [ %sub294, %do.body290 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp315 = icmp ult i32 %rc1.sroa.0.9, 16777216
  br i1 %cmp315, label %if.then317, label %do.end334

if.then317:                                       ; preds = %do.body313
  %cmp318 = icmp eq i64 %rc_in_pos.9, %in_size
  br i1 %cmp318, label %if.then320, label %if.end322

if.then320:                                       ; preds = %if.then317
  store i32 5, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end322:                                        ; preds = %if.then317
  %shl324 = shl nuw i32 %rc1.sroa.0.9, 8
  %shl326 = shl i32 %rc1.sroa.500.9, 8
  %inc327 = add i64 %rc_in_pos.9, 1
  %arrayidx328 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.9
  %38 = load i8, ptr %arrayidx328, align 1, !tbaa !14
  %conv329 = zext i8 %38 to i32
  %or330 = or disjoint i32 %shl326, %conv329
  br label %do.end334

do.end334:                                        ; preds = %if.end322, %do.body313
  %rc_in_pos.10 = phi i64 [ %inc327, %if.end322 ], [ %rc_in_pos.9, %do.body313 ]
  %rc1.sroa.0.10 = phi i32 [ %shl324, %if.end322 ], [ %rc1.sroa.0.9, %do.body313 ]
  %rc1.sroa.500.10 = phi i32 [ %or330, %if.end322 ], [ %rc1.sroa.500.9, %do.body313 ]
  %shr336 = lshr i32 %rc1.sroa.0.10, 11
  %idxprom337 = zext i32 %symbol.5 to i64
  %arrayidx338 = getelementptr inbounds nuw i16, ptr %probs.5, i64 %idxprom337
  %39 = load i16, ptr %arrayidx338, align 2, !tbaa !40
  %conv339 = zext i16 %39 to i32
  %mul340 = mul i32 %shr336, %conv339
  %cmp342 = icmp ult i32 %rc1.sroa.500.10, %mul340
  br i1 %cmp342, label %do.body345, label %do.body361

do.body345:                                       ; preds = %do.end334
  %sub350 = sub nsw i32 2048, %conv339
  %shr351 = lshr i32 %sub350, 5
  %40 = trunc i32 %shr351 to i16
  %conv356 = add i16 %39, %40
  store i16 %conv356, ptr %arrayidx338, align 2, !tbaa !40
  %shl359 = shl i32 %symbol.5, 1
  br label %do.body384

do.body361:                                       ; preds = %do.end334
  %sub363 = sub i32 %rc1.sroa.0.10, %mul340
  %sub365 = sub nuw i32 %rc1.sroa.500.10, %mul340
  %shr369 = lshr i16 %39, 5
  %sub373 = sub i16 %39, %shr369
  store i16 %sub373, ptr %arrayidx338, align 2, !tbaa !40
  %shl377 = shl i32 %symbol.5, 1
  %add378 = or disjoint i32 %shl377, 1
  br label %do.body384

do.body384:                                       ; preds = %do.body361, %do.body345, %if.end
  %dict.sroa.37.6 = phi i64 [ %dict.sroa.37.5, %do.body345 ], [ %dict.sroa.37.5, %do.body361 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.6 = phi i64 [ %dict.sroa.12.5, %do.body345 ], [ %dict.sroa.12.5, %do.body361 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.6 = phi i32 [ %len.5, %do.body345 ], [ %len.5, %do.body361 ], [ %15, %if.end ]
  %rep0.6 = phi i32 [ %rep0.5, %do.body345 ], [ %rep0.5, %do.body361 ], [ %6, %if.end ]
  %rep1.6 = phi i32 [ %rep1.5, %do.body345 ], [ %rep1.5, %do.body361 ], [ %7, %if.end ]
  %rep2.6 = phi i32 [ %rep2.5, %do.body345 ], [ %rep2.5, %do.body361 ], [ %8, %if.end ]
  %rep3.6 = phi i32 [ %rep3.5, %do.body345 ], [ %rep3.5, %do.body361 ], [ %9, %if.end ]
  %state.6 = phi i32 [ %state.5, %do.body345 ], [ %state.5, %do.body361 ], [ %5, %if.end ]
  %probs.6 = phi ptr [ %probs.5, %do.body345 ], [ %probs.5, %do.body361 ], [ %11, %if.end ]
  %symbol.6 = phi i32 [ %shl359, %do.body345 ], [ %add378, %do.body361 ], [ %12, %if.end ]
  %limit.6 = phi i32 [ %limit.5, %do.body345 ], [ %limit.5, %do.body361 ], [ %13, %if.end ]
  %offset.6 = phi i32 [ %offset.5, %do.body345 ], [ %offset.5, %do.body361 ], [ %14, %if.end ]
  %rc_in_pos.11 = phi i64 [ %rc_in_pos.10, %do.body345 ], [ %rc_in_pos.10, %do.body361 ], [ %4, %if.end ]
  %rc1.sroa.0.11 = phi i32 [ %mul340, %do.body345 ], [ %sub363, %do.body361 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.11 = phi i32 [ %rc1.sroa.500.10, %do.body345 ], [ %sub365, %do.body361 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp386 = icmp ult i32 %rc1.sroa.0.11, 16777216
  br i1 %cmp386, label %if.then388, label %do.end405

if.then388:                                       ; preds = %do.body384
  %cmp389 = icmp eq i64 %rc_in_pos.11, %in_size
  br i1 %cmp389, label %if.then391, label %if.end393

if.then391:                                       ; preds = %if.then388
  store i32 6, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end393:                                        ; preds = %if.then388
  %shl395 = shl nuw i32 %rc1.sroa.0.11, 8
  %shl397 = shl i32 %rc1.sroa.500.11, 8
  %inc398 = add i64 %rc_in_pos.11, 1
  %arrayidx399 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.11
  %41 = load i8, ptr %arrayidx399, align 1, !tbaa !14
  %conv400 = zext i8 %41 to i32
  %or401 = or disjoint i32 %shl397, %conv400
  br label %do.end405

do.end405:                                        ; preds = %if.end393, %do.body384
  %rc_in_pos.12 = phi i64 [ %inc398, %if.end393 ], [ %rc_in_pos.11, %do.body384 ]
  %rc1.sroa.0.12 = phi i32 [ %shl395, %if.end393 ], [ %rc1.sroa.0.11, %do.body384 ]
  %rc1.sroa.500.12 = phi i32 [ %or401, %if.end393 ], [ %rc1.sroa.500.11, %do.body384 ]
  %shr407 = lshr i32 %rc1.sroa.0.12, 11
  %idxprom408 = zext i32 %symbol.6 to i64
  %arrayidx409 = getelementptr inbounds nuw i16, ptr %probs.6, i64 %idxprom408
  %42 = load i16, ptr %arrayidx409, align 2, !tbaa !40
  %conv410 = zext i16 %42 to i32
  %mul411 = mul i32 %shr407, %conv410
  %cmp413 = icmp ult i32 %rc1.sroa.500.12, %mul411
  br i1 %cmp413, label %do.body416, label %do.body432

do.body416:                                       ; preds = %do.end405
  %sub421 = sub nsw i32 2048, %conv410
  %shr422 = lshr i32 %sub421, 5
  %43 = trunc i32 %shr422 to i16
  %conv427 = add i16 %42, %43
  store i16 %conv427, ptr %arrayidx409, align 2, !tbaa !40
  %shl430 = shl i32 %symbol.6, 1
  br label %do.body455

do.body432:                                       ; preds = %do.end405
  %sub434 = sub i32 %rc1.sroa.0.12, %mul411
  %sub436 = sub nuw i32 %rc1.sroa.500.12, %mul411
  %shr440 = lshr i16 %42, 5
  %sub444 = sub i16 %42, %shr440
  store i16 %sub444, ptr %arrayidx409, align 2, !tbaa !40
  %shl448 = shl i32 %symbol.6, 1
  %add449 = or disjoint i32 %shl448, 1
  br label %do.body455

do.body455:                                       ; preds = %do.body432, %do.body416, %if.end
  %dict.sroa.37.7 = phi i64 [ %dict.sroa.37.6, %do.body416 ], [ %dict.sroa.37.6, %do.body432 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.7 = phi i64 [ %dict.sroa.12.6, %do.body416 ], [ %dict.sroa.12.6, %do.body432 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.7 = phi i32 [ %len.6, %do.body416 ], [ %len.6, %do.body432 ], [ %15, %if.end ]
  %rep0.7 = phi i32 [ %rep0.6, %do.body416 ], [ %rep0.6, %do.body432 ], [ %6, %if.end ]
  %rep1.7 = phi i32 [ %rep1.6, %do.body416 ], [ %rep1.6, %do.body432 ], [ %7, %if.end ]
  %rep2.7 = phi i32 [ %rep2.6, %do.body416 ], [ %rep2.6, %do.body432 ], [ %8, %if.end ]
  %rep3.7 = phi i32 [ %rep3.6, %do.body416 ], [ %rep3.6, %do.body432 ], [ %9, %if.end ]
  %state.7 = phi i32 [ %state.6, %do.body416 ], [ %state.6, %do.body432 ], [ %5, %if.end ]
  %probs.7 = phi ptr [ %probs.6, %do.body416 ], [ %probs.6, %do.body432 ], [ %11, %if.end ]
  %symbol.7 = phi i32 [ %shl430, %do.body416 ], [ %add449, %do.body432 ], [ %12, %if.end ]
  %limit.7 = phi i32 [ %limit.6, %do.body416 ], [ %limit.6, %do.body432 ], [ %13, %if.end ]
  %offset.7 = phi i32 [ %offset.6, %do.body416 ], [ %offset.6, %do.body432 ], [ %14, %if.end ]
  %rc_in_pos.13 = phi i64 [ %rc_in_pos.12, %do.body416 ], [ %rc_in_pos.12, %do.body432 ], [ %4, %if.end ]
  %rc1.sroa.0.13 = phi i32 [ %mul411, %do.body416 ], [ %sub434, %do.body432 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.13 = phi i32 [ %rc1.sroa.500.12, %do.body416 ], [ %sub436, %do.body432 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp457 = icmp ult i32 %rc1.sroa.0.13, 16777216
  br i1 %cmp457, label %if.then459, label %do.end476

if.then459:                                       ; preds = %do.body455
  %cmp460 = icmp eq i64 %rc_in_pos.13, %in_size
  br i1 %cmp460, label %if.then462, label %if.end464

if.then462:                                       ; preds = %if.then459
  store i32 7, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end464:                                        ; preds = %if.then459
  %shl466 = shl nuw i32 %rc1.sroa.0.13, 8
  %shl468 = shl i32 %rc1.sroa.500.13, 8
  %inc469 = add i64 %rc_in_pos.13, 1
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.13
  %44 = load i8, ptr %arrayidx470, align 1, !tbaa !14
  %conv471 = zext i8 %44 to i32
  %or472 = or disjoint i32 %shl468, %conv471
  br label %do.end476

do.end476:                                        ; preds = %if.end464, %do.body455
  %rc_in_pos.14 = phi i64 [ %inc469, %if.end464 ], [ %rc_in_pos.13, %do.body455 ]
  %rc1.sroa.0.14 = phi i32 [ %shl466, %if.end464 ], [ %rc1.sroa.0.13, %do.body455 ]
  %rc1.sroa.500.14 = phi i32 [ %or472, %if.end464 ], [ %rc1.sroa.500.13, %do.body455 ]
  %shr478 = lshr i32 %rc1.sroa.0.14, 11
  %idxprom479 = zext i32 %symbol.7 to i64
  %arrayidx480 = getelementptr inbounds nuw i16, ptr %probs.7, i64 %idxprom479
  %45 = load i16, ptr %arrayidx480, align 2, !tbaa !40
  %conv481 = zext i16 %45 to i32
  %mul482 = mul i32 %shr478, %conv481
  %cmp484 = icmp ult i32 %rc1.sroa.500.14, %mul482
  br i1 %cmp484, label %do.body487, label %do.body503

do.body487:                                       ; preds = %do.end476
  %sub492 = sub nsw i32 2048, %conv481
  %shr493 = lshr i32 %sub492, 5
  %46 = trunc i32 %shr493 to i16
  %conv498 = add i16 %45, %46
  store i16 %conv498, ptr %arrayidx480, align 2, !tbaa !40
  %shl501 = shl i32 %symbol.7, 1
  br label %do.body526

do.body503:                                       ; preds = %do.end476
  %sub505 = sub i32 %rc1.sroa.0.14, %mul482
  %sub507 = sub nuw i32 %rc1.sroa.500.14, %mul482
  %shr511 = lshr i16 %45, 5
  %sub515 = sub i16 %45, %shr511
  store i16 %sub515, ptr %arrayidx480, align 2, !tbaa !40
  %shl519 = shl i32 %symbol.7, 1
  %add520 = or disjoint i32 %shl519, 1
  br label %do.body526

do.body526:                                       ; preds = %do.body503, %do.body487, %if.end
  %dict.sroa.37.8 = phi i64 [ %dict.sroa.37.7, %do.body487 ], [ %dict.sroa.37.7, %do.body503 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.8 = phi i64 [ %dict.sroa.12.7, %do.body487 ], [ %dict.sroa.12.7, %do.body503 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.8 = phi i32 [ %len.7, %do.body487 ], [ %len.7, %do.body503 ], [ %15, %if.end ]
  %rep0.8 = phi i32 [ %rep0.7, %do.body487 ], [ %rep0.7, %do.body503 ], [ %6, %if.end ]
  %rep1.8 = phi i32 [ %rep1.7, %do.body487 ], [ %rep1.7, %do.body503 ], [ %7, %if.end ]
  %rep2.8 = phi i32 [ %rep2.7, %do.body487 ], [ %rep2.7, %do.body503 ], [ %8, %if.end ]
  %rep3.8 = phi i32 [ %rep3.7, %do.body487 ], [ %rep3.7, %do.body503 ], [ %9, %if.end ]
  %state.8 = phi i32 [ %state.7, %do.body487 ], [ %state.7, %do.body503 ], [ %5, %if.end ]
  %probs.8 = phi ptr [ %probs.7, %do.body487 ], [ %probs.7, %do.body503 ], [ %11, %if.end ]
  %symbol.8 = phi i32 [ %shl501, %do.body487 ], [ %add520, %do.body503 ], [ %12, %if.end ]
  %limit.8 = phi i32 [ %limit.7, %do.body487 ], [ %limit.7, %do.body503 ], [ %13, %if.end ]
  %offset.8 = phi i32 [ %offset.7, %do.body487 ], [ %offset.7, %do.body503 ], [ %14, %if.end ]
  %rc_in_pos.15 = phi i64 [ %rc_in_pos.14, %do.body487 ], [ %rc_in_pos.14, %do.body503 ], [ %4, %if.end ]
  %rc1.sroa.0.15 = phi i32 [ %mul482, %do.body487 ], [ %sub505, %do.body503 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.15 = phi i32 [ %rc1.sroa.500.14, %do.body487 ], [ %sub507, %do.body503 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp528 = icmp ult i32 %rc1.sroa.0.15, 16777216
  br i1 %cmp528, label %if.then530, label %do.end547

if.then530:                                       ; preds = %do.body526
  %cmp531 = icmp eq i64 %rc_in_pos.15, %in_size
  br i1 %cmp531, label %if.then533, label %if.end535

if.then533:                                       ; preds = %if.then530
  store i32 8, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end535:                                        ; preds = %if.then530
  %shl537 = shl nuw i32 %rc1.sroa.0.15, 8
  %shl539 = shl i32 %rc1.sroa.500.15, 8
  %inc540 = add i64 %rc_in_pos.15, 1
  %arrayidx541 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.15
  %47 = load i8, ptr %arrayidx541, align 1, !tbaa !14
  %conv542 = zext i8 %47 to i32
  %or543 = or disjoint i32 %shl539, %conv542
  br label %do.end547

do.end547:                                        ; preds = %if.end535, %do.body526
  %rc_in_pos.16 = phi i64 [ %inc540, %if.end535 ], [ %rc_in_pos.15, %do.body526 ]
  %rc1.sroa.0.16 = phi i32 [ %shl537, %if.end535 ], [ %rc1.sroa.0.15, %do.body526 ]
  %rc1.sroa.500.16 = phi i32 [ %or543, %if.end535 ], [ %rc1.sroa.500.15, %do.body526 ]
  %shr549 = lshr i32 %rc1.sroa.0.16, 11
  %idxprom550 = zext i32 %symbol.8 to i64
  %arrayidx551 = getelementptr inbounds nuw i16, ptr %probs.8, i64 %idxprom550
  %48 = load i16, ptr %arrayidx551, align 2, !tbaa !40
  %conv552 = zext i16 %48 to i32
  %mul553 = mul i32 %shr549, %conv552
  %cmp555 = icmp ult i32 %rc1.sroa.500.16, %mul553
  br i1 %cmp555, label %do.body558, label %do.body574

do.body558:                                       ; preds = %do.end547
  %sub563 = sub nsw i32 2048, %conv552
  %shr564 = lshr i32 %sub563, 5
  %49 = trunc i32 %shr564 to i16
  %conv569 = add i16 %48, %49
  store i16 %conv569, ptr %arrayidx551, align 2, !tbaa !40
  %shl572 = shl i32 %symbol.8, 1
  br label %do.body597

do.body574:                                       ; preds = %do.end547
  %sub576 = sub i32 %rc1.sroa.0.16, %mul553
  %sub578 = sub nuw i32 %rc1.sroa.500.16, %mul553
  %shr582 = lshr i16 %48, 5
  %sub586 = sub i16 %48, %shr582
  store i16 %sub586, ptr %arrayidx551, align 2, !tbaa !40
  %shl590 = shl i32 %symbol.8, 1
  %add591 = or disjoint i32 %shl590, 1
  br label %do.body597

do.body597:                                       ; preds = %do.body574, %do.body558, %if.end
  %dict.sroa.37.9 = phi i64 [ %dict.sroa.37.8, %do.body558 ], [ %dict.sroa.37.8, %do.body574 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.9 = phi i64 [ %dict.sroa.12.8, %do.body558 ], [ %dict.sroa.12.8, %do.body574 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.9 = phi i32 [ %len.8, %do.body558 ], [ %len.8, %do.body574 ], [ %15, %if.end ]
  %rep0.9 = phi i32 [ %rep0.8, %do.body558 ], [ %rep0.8, %do.body574 ], [ %6, %if.end ]
  %rep1.9 = phi i32 [ %rep1.8, %do.body558 ], [ %rep1.8, %do.body574 ], [ %7, %if.end ]
  %rep2.9 = phi i32 [ %rep2.8, %do.body558 ], [ %rep2.8, %do.body574 ], [ %8, %if.end ]
  %rep3.9 = phi i32 [ %rep3.8, %do.body558 ], [ %rep3.8, %do.body574 ], [ %9, %if.end ]
  %state.9 = phi i32 [ %state.8, %do.body558 ], [ %state.8, %do.body574 ], [ %5, %if.end ]
  %probs.9 = phi ptr [ %probs.8, %do.body558 ], [ %probs.8, %do.body574 ], [ %11, %if.end ]
  %symbol.9 = phi i32 [ %shl572, %do.body558 ], [ %add591, %do.body574 ], [ %12, %if.end ]
  %limit.9 = phi i32 [ %limit.8, %do.body558 ], [ %limit.8, %do.body574 ], [ %13, %if.end ]
  %offset.9 = phi i32 [ %offset.8, %do.body558 ], [ %offset.8, %do.body574 ], [ %14, %if.end ]
  %rc_in_pos.17 = phi i64 [ %rc_in_pos.16, %do.body558 ], [ %rc_in_pos.16, %do.body574 ], [ %4, %if.end ]
  %rc1.sroa.0.17 = phi i32 [ %mul553, %do.body558 ], [ %sub576, %do.body574 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.17 = phi i32 [ %rc1.sroa.500.16, %do.body558 ], [ %sub578, %do.body574 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp599 = icmp ult i32 %rc1.sroa.0.17, 16777216
  br i1 %cmp599, label %if.then601, label %do.end618

if.then601:                                       ; preds = %do.body597
  %cmp602 = icmp eq i64 %rc_in_pos.17, %in_size
  br i1 %cmp602, label %if.then604, label %if.end606

if.then604:                                       ; preds = %if.then601
  store i32 9, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end606:                                        ; preds = %if.then601
  %shl608 = shl nuw i32 %rc1.sroa.0.17, 8
  %shl610 = shl i32 %rc1.sroa.500.17, 8
  %inc611 = add i64 %rc_in_pos.17, 1
  %arrayidx612 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.17
  %50 = load i8, ptr %arrayidx612, align 1, !tbaa !14
  %conv613 = zext i8 %50 to i32
  %or614 = or disjoint i32 %shl610, %conv613
  br label %do.end618

do.end618:                                        ; preds = %if.end606, %do.body597
  %rc_in_pos.18 = phi i64 [ %inc611, %if.end606 ], [ %rc_in_pos.17, %do.body597 ]
  %rc1.sroa.0.18 = phi i32 [ %shl608, %if.end606 ], [ %rc1.sroa.0.17, %do.body597 ]
  %rc1.sroa.500.18 = phi i32 [ %or614, %if.end606 ], [ %rc1.sroa.500.17, %do.body597 ]
  %shr620 = lshr i32 %rc1.sroa.0.18, 11
  %idxprom621 = zext i32 %symbol.9 to i64
  %arrayidx622 = getelementptr inbounds nuw i16, ptr %probs.9, i64 %idxprom621
  %51 = load i16, ptr %arrayidx622, align 2, !tbaa !40
  %conv623 = zext i16 %51 to i32
  %mul624 = mul i32 %shr620, %conv623
  %cmp626 = icmp ult i32 %rc1.sroa.500.18, %mul624
  br i1 %cmp626, label %do.body629, label %do.body645

do.body629:                                       ; preds = %do.end618
  %sub634 = sub nsw i32 2048, %conv623
  %shr635 = lshr i32 %sub634, 5
  %52 = trunc i32 %shr635 to i16
  %conv640 = add i16 %51, %52
  store i16 %conv640, ptr %arrayidx622, align 2, !tbaa !40
  %shl643 = shl i32 %symbol.9, 1
  br label %if.end1292

do.body645:                                       ; preds = %do.end618
  %sub647 = sub i32 %rc1.sroa.0.18, %mul624
  %sub649 = sub nuw i32 %rc1.sroa.500.18, %mul624
  %shr653 = lshr i16 %51, 5
  %sub657 = sub i16 %51, %shr653
  store i16 %sub657, ptr %arrayidx622, align 2, !tbaa !40
  %shl661 = shl i32 %symbol.9, 1
  %add662 = or disjoint i32 %shl661, 1
  br label %if.end1292

if.else666:                                       ; preds = %do.body65
  %conv.i7838 = zext i32 %rep0.1 to i64
  %cmp.i7839 = icmp ugt i64 %dict.sroa.12.1, %conv.i7838
  %spec.select7948 = select i1 %cmp.i7839, i64 0, i64 %dict.sroa.52.0.copyload
  %53 = xor i64 %conv.i7838, -1
  %54 = getelementptr i8, ptr %25, i64 %53
  %arrayidx.i7843 = getelementptr i8, ptr %54, i64 %spec.select7948
  %55 = load i8, ptr %arrayidx.i7843, align 1, !tbaa !14
  %conv668 = zext i8 %55 to i32
  %shl669 = shl nuw nsw i32 %conv668, 1
  br label %sw.bb670

sw.bb670:                                         ; preds = %if.else666, %if.end
  %dict.sroa.37.10 = phi i64 [ %dict.sroa.37.1, %if.else666 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.10 = phi i64 [ %dict.sroa.12.1, %if.else666 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.10 = phi i32 [ %shl669, %if.else666 ], [ %15, %if.end ]
  %rep0.10 = phi i32 [ %rep0.1, %if.else666 ], [ %6, %if.end ]
  %rep1.10 = phi i32 [ %rep1.1, %if.else666 ], [ %7, %if.end ]
  %rep2.10 = phi i32 [ %rep2.1, %if.else666 ], [ %8, %if.end ]
  %rep3.10 = phi i32 [ %rep3.1, %if.else666 ], [ %9, %if.end ]
  %state.10 = phi i32 [ %state.1, %if.else666 ], [ %5, %if.end ]
  %probs.10 = phi ptr [ %arrayidx95, %if.else666 ], [ %11, %if.end ]
  %symbol.10 = phi i32 [ 1, %if.else666 ], [ %12, %if.end ]
  %limit.10 = phi i32 [ %limit.1, %if.else666 ], [ %13, %if.end ]
  %offset.10 = phi i32 [ 256, %if.else666 ], [ %14, %if.end ]
  %rc_in_pos.19 = phi i64 [ %rc_in_pos.2, %if.else666 ], [ %4, %if.end ]
  %rc1.sroa.0.19 = phi i32 [ %mul, %if.else666 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.19 = phi i32 [ %rc1.sroa.500.2, %if.else666 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %and671 = and i32 %offset.10, %len.10
  %add672 = add i32 %offset.10, %symbol.10
  %add673 = add i32 %add672, %and671
  %cmp677 = icmp ult i32 %rc1.sroa.0.19, 16777216
  br i1 %cmp677, label %if.then679, label %do.end696

if.then679:                                       ; preds = %sw.bb670
  %cmp680 = icmp eq i64 %rc_in_pos.19, %in_size
  br i1 %cmp680, label %if.then682, label %if.end684

if.then682:                                       ; preds = %if.then679
  store i32 10, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end684:                                        ; preds = %if.then679
  %shl686 = shl nuw i32 %rc1.sroa.0.19, 8
  %shl688 = shl i32 %rc1.sroa.500.19, 8
  %inc689 = add i64 %rc_in_pos.19, 1
  %arrayidx690 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.19
  %56 = load i8, ptr %arrayidx690, align 1, !tbaa !14
  %conv691 = zext i8 %56 to i32
  %or692 = or disjoint i32 %shl688, %conv691
  br label %do.end696

do.end696:                                        ; preds = %if.end684, %sw.bb670
  %rc_in_pos.20 = phi i64 [ %inc689, %if.end684 ], [ %rc_in_pos.19, %sw.bb670 ]
  %rc1.sroa.0.20 = phi i32 [ %shl686, %if.end684 ], [ %rc1.sroa.0.19, %sw.bb670 ]
  %rc1.sroa.500.20 = phi i32 [ %or692, %if.end684 ], [ %rc1.sroa.500.19, %sw.bb670 ]
  %shr698 = lshr i32 %rc1.sroa.0.20, 11
  %idxprom699 = zext i32 %add673 to i64
  %arrayidx700 = getelementptr inbounds nuw i16, ptr %probs.10, i64 %idxprom699
  %57 = load i16, ptr %arrayidx700, align 2, !tbaa !40
  %conv701 = zext i16 %57 to i32
  %mul702 = mul i32 %shr698, %conv701
  %cmp704 = icmp ult i32 %rc1.sroa.500.20, %mul702
  br i1 %cmp704, label %do.body707, label %do.body724

do.body707:                                       ; preds = %do.end696
  %sub712 = sub nsw i32 2048, %conv701
  %shr713 = lshr i32 %sub712, 5
  %58 = trunc i32 %shr713 to i16
  %conv718 = add i16 %57, %58
  %shl721 = shl i32 %symbol.10, 1
  %and722 = xor i32 %and671, %offset.10
  br label %do.end745

do.body724:                                       ; preds = %do.end696
  %sub726 = sub i32 %rc1.sroa.0.20, %mul702
  %sub728 = sub nuw i32 %rc1.sroa.500.20, %mul702
  %shr732 = lshr i16 %57, 5
  %sub736 = sub i16 %57, %shr732
  %shl740 = shl i32 %symbol.10, 1
  %add741 = or disjoint i32 %shl740, 1
  br label %do.end745

do.end745:                                        ; preds = %do.body724, %do.body707
  %sub736.sink = phi i16 [ %conv718, %do.body707 ], [ %sub736, %do.body724 ]
  %symbol.11 = phi i32 [ %shl721, %do.body707 ], [ %add741, %do.body724 ]
  %offset.11 = phi i32 [ %and722, %do.body707 ], [ %and671, %do.body724 ]
  %rc1.sroa.0.21 = phi i32 [ %mul702, %do.body707 ], [ %sub726, %do.body724 ]
  %rc1.sroa.500.21 = phi i32 [ %rc1.sroa.500.20, %do.body707 ], [ %sub728, %do.body724 ]
  store i16 %sub736.sink, ptr %arrayidx700, align 2, !tbaa !40
  %shl746 = shl i32 %len.10, 1
  br label %sw.bb747

sw.bb747:                                         ; preds = %do.end745, %if.end
  %dict.sroa.37.11 = phi i64 [ %dict.sroa.37.10, %do.end745 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.11 = phi i64 [ %dict.sroa.12.10, %do.end745 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.11 = phi i32 [ %shl746, %do.end745 ], [ %15, %if.end ]
  %rep0.11 = phi i32 [ %rep0.10, %do.end745 ], [ %6, %if.end ]
  %rep1.11 = phi i32 [ %rep1.10, %do.end745 ], [ %7, %if.end ]
  %rep2.11 = phi i32 [ %rep2.10, %do.end745 ], [ %8, %if.end ]
  %rep3.11 = phi i32 [ %rep3.10, %do.end745 ], [ %9, %if.end ]
  %state.11 = phi i32 [ %state.10, %do.end745 ], [ %5, %if.end ]
  %probs.11 = phi ptr [ %probs.10, %do.end745 ], [ %11, %if.end ]
  %symbol.12 = phi i32 [ %symbol.11, %do.end745 ], [ %12, %if.end ]
  %limit.11 = phi i32 [ %limit.10, %do.end745 ], [ %13, %if.end ]
  %offset.12 = phi i32 [ %offset.11, %do.end745 ], [ %14, %if.end ]
  %rc_in_pos.21 = phi i64 [ %rc_in_pos.20, %do.end745 ], [ %4, %if.end ]
  %rc1.sroa.0.22 = phi i32 [ %rc1.sroa.0.21, %do.end745 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.22 = phi i32 [ %rc1.sroa.500.21, %do.end745 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %and748 = and i32 %offset.12, %len.11
  %add749 = add i32 %offset.12, %symbol.12
  %add750 = add i32 %add749, %and748
  %cmp754 = icmp ult i32 %rc1.sroa.0.22, 16777216
  br i1 %cmp754, label %if.then756, label %do.end773

if.then756:                                       ; preds = %sw.bb747
  %cmp757 = icmp eq i64 %rc_in_pos.21, %in_size
  br i1 %cmp757, label %if.then759, label %if.end761

if.then759:                                       ; preds = %if.then756
  store i32 11, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end761:                                        ; preds = %if.then756
  %shl763 = shl nuw i32 %rc1.sroa.0.22, 8
  %shl765 = shl i32 %rc1.sroa.500.22, 8
  %inc766 = add i64 %rc_in_pos.21, 1
  %arrayidx767 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.21
  %59 = load i8, ptr %arrayidx767, align 1, !tbaa !14
  %conv768 = zext i8 %59 to i32
  %or769 = or disjoint i32 %shl765, %conv768
  br label %do.end773

do.end773:                                        ; preds = %if.end761, %sw.bb747
  %rc_in_pos.22 = phi i64 [ %inc766, %if.end761 ], [ %rc_in_pos.21, %sw.bb747 ]
  %rc1.sroa.0.23 = phi i32 [ %shl763, %if.end761 ], [ %rc1.sroa.0.22, %sw.bb747 ]
  %rc1.sroa.500.23 = phi i32 [ %or769, %if.end761 ], [ %rc1.sroa.500.22, %sw.bb747 ]
  %shr775 = lshr i32 %rc1.sroa.0.23, 11
  %idxprom776 = zext i32 %add750 to i64
  %arrayidx777 = getelementptr inbounds nuw i16, ptr %probs.11, i64 %idxprom776
  %60 = load i16, ptr %arrayidx777, align 2, !tbaa !40
  %conv778 = zext i16 %60 to i32
  %mul779 = mul i32 %shr775, %conv778
  %cmp781 = icmp ult i32 %rc1.sroa.500.23, %mul779
  br i1 %cmp781, label %do.body784, label %do.body802

do.body784:                                       ; preds = %do.end773
  %sub789 = sub nsw i32 2048, %conv778
  %shr790 = lshr i32 %sub789, 5
  %61 = trunc i32 %shr790 to i16
  %conv795 = add i16 %60, %61
  %shl798 = shl i32 %symbol.12, 1
  %and800 = xor i32 %and748, %offset.12
  br label %do.end823

do.body802:                                       ; preds = %do.end773
  %sub804 = sub i32 %rc1.sroa.0.23, %mul779
  %sub806 = sub nuw i32 %rc1.sroa.500.23, %mul779
  %shr810 = lshr i16 %60, 5
  %sub814 = sub i16 %60, %shr810
  %shl818 = shl i32 %symbol.12, 1
  %add819 = or disjoint i32 %shl818, 1
  br label %do.end823

do.end823:                                        ; preds = %do.body802, %do.body784
  %sub814.sink = phi i16 [ %conv795, %do.body784 ], [ %sub814, %do.body802 ]
  %symbol.13 = phi i32 [ %shl798, %do.body784 ], [ %add819, %do.body802 ]
  %offset.13 = phi i32 [ %and800, %do.body784 ], [ %and748, %do.body802 ]
  %rc1.sroa.0.24 = phi i32 [ %mul779, %do.body784 ], [ %sub804, %do.body802 ]
  %rc1.sroa.500.24 = phi i32 [ %rc1.sroa.500.23, %do.body784 ], [ %sub806, %do.body802 ]
  store i16 %sub814.sink, ptr %arrayidx777, align 2, !tbaa !40
  %shl824 = shl i32 %len.11, 1
  br label %sw.bb825

sw.bb825:                                         ; preds = %do.end823, %if.end
  %dict.sroa.37.12 = phi i64 [ %dict.sroa.37.11, %do.end823 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.12 = phi i64 [ %dict.sroa.12.11, %do.end823 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.12 = phi i32 [ %shl824, %do.end823 ], [ %15, %if.end ]
  %rep0.12 = phi i32 [ %rep0.11, %do.end823 ], [ %6, %if.end ]
  %rep1.12 = phi i32 [ %rep1.11, %do.end823 ], [ %7, %if.end ]
  %rep2.12 = phi i32 [ %rep2.11, %do.end823 ], [ %8, %if.end ]
  %rep3.12 = phi i32 [ %rep3.11, %do.end823 ], [ %9, %if.end ]
  %state.12 = phi i32 [ %state.11, %do.end823 ], [ %5, %if.end ]
  %probs.12 = phi ptr [ %probs.11, %do.end823 ], [ %11, %if.end ]
  %symbol.14 = phi i32 [ %symbol.13, %do.end823 ], [ %12, %if.end ]
  %limit.12 = phi i32 [ %limit.11, %do.end823 ], [ %13, %if.end ]
  %offset.14 = phi i32 [ %offset.13, %do.end823 ], [ %14, %if.end ]
  %rc_in_pos.23 = phi i64 [ %rc_in_pos.22, %do.end823 ], [ %4, %if.end ]
  %rc1.sroa.0.25 = phi i32 [ %rc1.sroa.0.24, %do.end823 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.25 = phi i32 [ %rc1.sroa.500.24, %do.end823 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %and826 = and i32 %offset.14, %len.12
  %add827 = add i32 %offset.14, %symbol.14
  %add828 = add i32 %add827, %and826
  %cmp832 = icmp ult i32 %rc1.sroa.0.25, 16777216
  br i1 %cmp832, label %if.then834, label %do.end851

if.then834:                                       ; preds = %sw.bb825
  %cmp835 = icmp eq i64 %rc_in_pos.23, %in_size
  br i1 %cmp835, label %if.then837, label %if.end839

if.then837:                                       ; preds = %if.then834
  store i32 12, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end839:                                        ; preds = %if.then834
  %shl841 = shl nuw i32 %rc1.sroa.0.25, 8
  %shl843 = shl i32 %rc1.sroa.500.25, 8
  %inc844 = add i64 %rc_in_pos.23, 1
  %arrayidx845 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.23
  %62 = load i8, ptr %arrayidx845, align 1, !tbaa !14
  %conv846 = zext i8 %62 to i32
  %or847 = or disjoint i32 %shl843, %conv846
  br label %do.end851

do.end851:                                        ; preds = %if.end839, %sw.bb825
  %rc_in_pos.24 = phi i64 [ %inc844, %if.end839 ], [ %rc_in_pos.23, %sw.bb825 ]
  %rc1.sroa.0.26 = phi i32 [ %shl841, %if.end839 ], [ %rc1.sroa.0.25, %sw.bb825 ]
  %rc1.sroa.500.26 = phi i32 [ %or847, %if.end839 ], [ %rc1.sroa.500.25, %sw.bb825 ]
  %shr853 = lshr i32 %rc1.sroa.0.26, 11
  %idxprom854 = zext i32 %add828 to i64
  %arrayidx855 = getelementptr inbounds nuw i16, ptr %probs.12, i64 %idxprom854
  %63 = load i16, ptr %arrayidx855, align 2, !tbaa !40
  %conv856 = zext i16 %63 to i32
  %mul857 = mul i32 %shr853, %conv856
  %cmp859 = icmp ult i32 %rc1.sroa.500.26, %mul857
  br i1 %cmp859, label %do.body862, label %do.body880

do.body862:                                       ; preds = %do.end851
  %sub867 = sub nsw i32 2048, %conv856
  %shr868 = lshr i32 %sub867, 5
  %64 = trunc i32 %shr868 to i16
  %conv873 = add i16 %63, %64
  %shl876 = shl i32 %symbol.14, 1
  %and878 = xor i32 %and826, %offset.14
  br label %do.end901

do.body880:                                       ; preds = %do.end851
  %sub882 = sub i32 %rc1.sroa.0.26, %mul857
  %sub884 = sub nuw i32 %rc1.sroa.500.26, %mul857
  %shr888 = lshr i16 %63, 5
  %sub892 = sub i16 %63, %shr888
  %shl896 = shl i32 %symbol.14, 1
  %add897 = or disjoint i32 %shl896, 1
  br label %do.end901

do.end901:                                        ; preds = %do.body880, %do.body862
  %sub892.sink = phi i16 [ %conv873, %do.body862 ], [ %sub892, %do.body880 ]
  %symbol.15 = phi i32 [ %shl876, %do.body862 ], [ %add897, %do.body880 ]
  %offset.15 = phi i32 [ %and878, %do.body862 ], [ %and826, %do.body880 ]
  %rc1.sroa.0.27 = phi i32 [ %mul857, %do.body862 ], [ %sub882, %do.body880 ]
  %rc1.sroa.500.27 = phi i32 [ %rc1.sroa.500.26, %do.body862 ], [ %sub884, %do.body880 ]
  store i16 %sub892.sink, ptr %arrayidx855, align 2, !tbaa !40
  %shl902 = shl i32 %len.12, 1
  br label %sw.bb903

sw.bb903:                                         ; preds = %do.end901, %if.end
  %dict.sroa.37.13 = phi i64 [ %dict.sroa.37.12, %do.end901 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.13 = phi i64 [ %dict.sroa.12.12, %do.end901 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.13 = phi i32 [ %shl902, %do.end901 ], [ %15, %if.end ]
  %rep0.13 = phi i32 [ %rep0.12, %do.end901 ], [ %6, %if.end ]
  %rep1.13 = phi i32 [ %rep1.12, %do.end901 ], [ %7, %if.end ]
  %rep2.13 = phi i32 [ %rep2.12, %do.end901 ], [ %8, %if.end ]
  %rep3.13 = phi i32 [ %rep3.12, %do.end901 ], [ %9, %if.end ]
  %state.13 = phi i32 [ %state.12, %do.end901 ], [ %5, %if.end ]
  %probs.13 = phi ptr [ %probs.12, %do.end901 ], [ %11, %if.end ]
  %symbol.16 = phi i32 [ %symbol.15, %do.end901 ], [ %12, %if.end ]
  %limit.13 = phi i32 [ %limit.12, %do.end901 ], [ %13, %if.end ]
  %offset.16 = phi i32 [ %offset.15, %do.end901 ], [ %14, %if.end ]
  %rc_in_pos.25 = phi i64 [ %rc_in_pos.24, %do.end901 ], [ %4, %if.end ]
  %rc1.sroa.0.28 = phi i32 [ %rc1.sroa.0.27, %do.end901 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.28 = phi i32 [ %rc1.sroa.500.27, %do.end901 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %and904 = and i32 %offset.16, %len.13
  %add905 = add i32 %offset.16, %symbol.16
  %add906 = add i32 %add905, %and904
  %cmp910 = icmp ult i32 %rc1.sroa.0.28, 16777216
  br i1 %cmp910, label %if.then912, label %do.end929

if.then912:                                       ; preds = %sw.bb903
  %cmp913 = icmp eq i64 %rc_in_pos.25, %in_size
  br i1 %cmp913, label %if.then915, label %if.end917

if.then915:                                       ; preds = %if.then912
  store i32 13, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end917:                                        ; preds = %if.then912
  %shl919 = shl nuw i32 %rc1.sroa.0.28, 8
  %shl921 = shl i32 %rc1.sroa.500.28, 8
  %inc922 = add i64 %rc_in_pos.25, 1
  %arrayidx923 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.25
  %65 = load i8, ptr %arrayidx923, align 1, !tbaa !14
  %conv924 = zext i8 %65 to i32
  %or925 = or disjoint i32 %shl921, %conv924
  br label %do.end929

do.end929:                                        ; preds = %if.end917, %sw.bb903
  %rc_in_pos.26 = phi i64 [ %inc922, %if.end917 ], [ %rc_in_pos.25, %sw.bb903 ]
  %rc1.sroa.0.29 = phi i32 [ %shl919, %if.end917 ], [ %rc1.sroa.0.28, %sw.bb903 ]
  %rc1.sroa.500.29 = phi i32 [ %or925, %if.end917 ], [ %rc1.sroa.500.28, %sw.bb903 ]
  %shr931 = lshr i32 %rc1.sroa.0.29, 11
  %idxprom932 = zext i32 %add906 to i64
  %arrayidx933 = getelementptr inbounds nuw i16, ptr %probs.13, i64 %idxprom932
  %66 = load i16, ptr %arrayidx933, align 2, !tbaa !40
  %conv934 = zext i16 %66 to i32
  %mul935 = mul i32 %shr931, %conv934
  %cmp937 = icmp ult i32 %rc1.sroa.500.29, %mul935
  br i1 %cmp937, label %do.body940, label %do.body958

do.body940:                                       ; preds = %do.end929
  %sub945 = sub nsw i32 2048, %conv934
  %shr946 = lshr i32 %sub945, 5
  %67 = trunc i32 %shr946 to i16
  %conv951 = add i16 %66, %67
  %shl954 = shl i32 %symbol.16, 1
  %and956 = xor i32 %and904, %offset.16
  br label %do.end979

do.body958:                                       ; preds = %do.end929
  %sub960 = sub i32 %rc1.sroa.0.29, %mul935
  %sub962 = sub nuw i32 %rc1.sroa.500.29, %mul935
  %shr966 = lshr i16 %66, 5
  %sub970 = sub i16 %66, %shr966
  %shl974 = shl i32 %symbol.16, 1
  %add975 = or disjoint i32 %shl974, 1
  br label %do.end979

do.end979:                                        ; preds = %do.body958, %do.body940
  %sub970.sink = phi i16 [ %conv951, %do.body940 ], [ %sub970, %do.body958 ]
  %symbol.17 = phi i32 [ %shl954, %do.body940 ], [ %add975, %do.body958 ]
  %offset.17 = phi i32 [ %and956, %do.body940 ], [ %and904, %do.body958 ]
  %rc1.sroa.0.30 = phi i32 [ %mul935, %do.body940 ], [ %sub960, %do.body958 ]
  %rc1.sroa.500.30 = phi i32 [ %rc1.sroa.500.29, %do.body940 ], [ %sub962, %do.body958 ]
  store i16 %sub970.sink, ptr %arrayidx933, align 2, !tbaa !40
  %shl980 = shl i32 %len.13, 1
  br label %sw.bb981

sw.bb981:                                         ; preds = %do.end979, %if.end
  %dict.sroa.37.14 = phi i64 [ %dict.sroa.37.13, %do.end979 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.14 = phi i64 [ %dict.sroa.12.13, %do.end979 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.14 = phi i32 [ %shl980, %do.end979 ], [ %15, %if.end ]
  %rep0.14 = phi i32 [ %rep0.13, %do.end979 ], [ %6, %if.end ]
  %rep1.14 = phi i32 [ %rep1.13, %do.end979 ], [ %7, %if.end ]
  %rep2.14 = phi i32 [ %rep2.13, %do.end979 ], [ %8, %if.end ]
  %rep3.14 = phi i32 [ %rep3.13, %do.end979 ], [ %9, %if.end ]
  %state.14 = phi i32 [ %state.13, %do.end979 ], [ %5, %if.end ]
  %probs.14 = phi ptr [ %probs.13, %do.end979 ], [ %11, %if.end ]
  %symbol.18 = phi i32 [ %symbol.17, %do.end979 ], [ %12, %if.end ]
  %limit.14 = phi i32 [ %limit.13, %do.end979 ], [ %13, %if.end ]
  %offset.18 = phi i32 [ %offset.17, %do.end979 ], [ %14, %if.end ]
  %rc_in_pos.27 = phi i64 [ %rc_in_pos.26, %do.end979 ], [ %4, %if.end ]
  %rc1.sroa.0.31 = phi i32 [ %rc1.sroa.0.30, %do.end979 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.31 = phi i32 [ %rc1.sroa.500.30, %do.end979 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %and982 = and i32 %offset.18, %len.14
  %add983 = add i32 %offset.18, %symbol.18
  %add984 = add i32 %add983, %and982
  %cmp988 = icmp ult i32 %rc1.sroa.0.31, 16777216
  br i1 %cmp988, label %if.then990, label %do.end1007

if.then990:                                       ; preds = %sw.bb981
  %cmp991 = icmp eq i64 %rc_in_pos.27, %in_size
  br i1 %cmp991, label %if.then993, label %if.end995

if.then993:                                       ; preds = %if.then990
  store i32 14, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end995:                                        ; preds = %if.then990
  %shl997 = shl nuw i32 %rc1.sroa.0.31, 8
  %shl999 = shl i32 %rc1.sroa.500.31, 8
  %inc1000 = add i64 %rc_in_pos.27, 1
  %arrayidx1001 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.27
  %68 = load i8, ptr %arrayidx1001, align 1, !tbaa !14
  %conv1002 = zext i8 %68 to i32
  %or1003 = or disjoint i32 %shl999, %conv1002
  br label %do.end1007

do.end1007:                                       ; preds = %if.end995, %sw.bb981
  %rc_in_pos.28 = phi i64 [ %inc1000, %if.end995 ], [ %rc_in_pos.27, %sw.bb981 ]
  %rc1.sroa.0.32 = phi i32 [ %shl997, %if.end995 ], [ %rc1.sroa.0.31, %sw.bb981 ]
  %rc1.sroa.500.32 = phi i32 [ %or1003, %if.end995 ], [ %rc1.sroa.500.31, %sw.bb981 ]
  %shr1009 = lshr i32 %rc1.sroa.0.32, 11
  %idxprom1010 = zext i32 %add984 to i64
  %arrayidx1011 = getelementptr inbounds nuw i16, ptr %probs.14, i64 %idxprom1010
  %69 = load i16, ptr %arrayidx1011, align 2, !tbaa !40
  %conv1012 = zext i16 %69 to i32
  %mul1013 = mul i32 %shr1009, %conv1012
  %cmp1015 = icmp ult i32 %rc1.sroa.500.32, %mul1013
  br i1 %cmp1015, label %do.body1018, label %do.body1036

do.body1018:                                      ; preds = %do.end1007
  %sub1023 = sub nsw i32 2048, %conv1012
  %shr1024 = lshr i32 %sub1023, 5
  %70 = trunc i32 %shr1024 to i16
  %conv1029 = add i16 %69, %70
  %shl1032 = shl i32 %symbol.18, 1
  %and1034 = xor i32 %and982, %offset.18
  br label %do.end1057

do.body1036:                                      ; preds = %do.end1007
  %sub1038 = sub i32 %rc1.sroa.0.32, %mul1013
  %sub1040 = sub nuw i32 %rc1.sroa.500.32, %mul1013
  %shr1044 = lshr i16 %69, 5
  %sub1048 = sub i16 %69, %shr1044
  %shl1052 = shl i32 %symbol.18, 1
  %add1053 = or disjoint i32 %shl1052, 1
  br label %do.end1057

do.end1057:                                       ; preds = %do.body1036, %do.body1018
  %sub1048.sink = phi i16 [ %conv1029, %do.body1018 ], [ %sub1048, %do.body1036 ]
  %symbol.19 = phi i32 [ %shl1032, %do.body1018 ], [ %add1053, %do.body1036 ]
  %offset.19 = phi i32 [ %and1034, %do.body1018 ], [ %and982, %do.body1036 ]
  %rc1.sroa.0.33 = phi i32 [ %mul1013, %do.body1018 ], [ %sub1038, %do.body1036 ]
  %rc1.sroa.500.33 = phi i32 [ %rc1.sroa.500.32, %do.body1018 ], [ %sub1040, %do.body1036 ]
  store i16 %sub1048.sink, ptr %arrayidx1011, align 2, !tbaa !40
  %shl1058 = shl i32 %len.14, 1
  br label %sw.bb1059

sw.bb1059:                                        ; preds = %do.end1057, %if.end
  %dict.sroa.37.15 = phi i64 [ %dict.sroa.37.14, %do.end1057 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.15 = phi i64 [ %dict.sroa.12.14, %do.end1057 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.15 = phi i32 [ %shl1058, %do.end1057 ], [ %15, %if.end ]
  %rep0.15 = phi i32 [ %rep0.14, %do.end1057 ], [ %6, %if.end ]
  %rep1.15 = phi i32 [ %rep1.14, %do.end1057 ], [ %7, %if.end ]
  %rep2.15 = phi i32 [ %rep2.14, %do.end1057 ], [ %8, %if.end ]
  %rep3.15 = phi i32 [ %rep3.14, %do.end1057 ], [ %9, %if.end ]
  %state.15 = phi i32 [ %state.14, %do.end1057 ], [ %5, %if.end ]
  %probs.15 = phi ptr [ %probs.14, %do.end1057 ], [ %11, %if.end ]
  %symbol.20 = phi i32 [ %symbol.19, %do.end1057 ], [ %12, %if.end ]
  %limit.15 = phi i32 [ %limit.14, %do.end1057 ], [ %13, %if.end ]
  %offset.20 = phi i32 [ %offset.19, %do.end1057 ], [ %14, %if.end ]
  %rc_in_pos.29 = phi i64 [ %rc_in_pos.28, %do.end1057 ], [ %4, %if.end ]
  %rc1.sroa.0.34 = phi i32 [ %rc1.sroa.0.33, %do.end1057 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.34 = phi i32 [ %rc1.sroa.500.33, %do.end1057 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %and1060 = and i32 %offset.20, %len.15
  %add1061 = add i32 %offset.20, %symbol.20
  %add1062 = add i32 %add1061, %and1060
  %cmp1066 = icmp ult i32 %rc1.sroa.0.34, 16777216
  br i1 %cmp1066, label %if.then1068, label %do.end1085

if.then1068:                                      ; preds = %sw.bb1059
  %cmp1069 = icmp eq i64 %rc_in_pos.29, %in_size
  br i1 %cmp1069, label %if.then1071, label %if.end1073

if.then1071:                                      ; preds = %if.then1068
  store i32 15, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end1073:                                       ; preds = %if.then1068
  %shl1075 = shl nuw i32 %rc1.sroa.0.34, 8
  %shl1077 = shl i32 %rc1.sroa.500.34, 8
  %inc1078 = add i64 %rc_in_pos.29, 1
  %arrayidx1079 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.29
  %71 = load i8, ptr %arrayidx1079, align 1, !tbaa !14
  %conv1080 = zext i8 %71 to i32
  %or1081 = or disjoint i32 %shl1077, %conv1080
  br label %do.end1085

do.end1085:                                       ; preds = %if.end1073, %sw.bb1059
  %rc_in_pos.30 = phi i64 [ %inc1078, %if.end1073 ], [ %rc_in_pos.29, %sw.bb1059 ]
  %rc1.sroa.0.35 = phi i32 [ %shl1075, %if.end1073 ], [ %rc1.sroa.0.34, %sw.bb1059 ]
  %rc1.sroa.500.35 = phi i32 [ %or1081, %if.end1073 ], [ %rc1.sroa.500.34, %sw.bb1059 ]
  %shr1087 = lshr i32 %rc1.sroa.0.35, 11
  %idxprom1088 = zext i32 %add1062 to i64
  %arrayidx1089 = getelementptr inbounds nuw i16, ptr %probs.15, i64 %idxprom1088
  %72 = load i16, ptr %arrayidx1089, align 2, !tbaa !40
  %conv1090 = zext i16 %72 to i32
  %mul1091 = mul i32 %shr1087, %conv1090
  %cmp1093 = icmp ult i32 %rc1.sroa.500.35, %mul1091
  br i1 %cmp1093, label %do.body1096, label %do.body1114

do.body1096:                                      ; preds = %do.end1085
  %sub1101 = sub nsw i32 2048, %conv1090
  %shr1102 = lshr i32 %sub1101, 5
  %73 = trunc i32 %shr1102 to i16
  %conv1107 = add i16 %72, %73
  %shl1110 = shl i32 %symbol.20, 1
  %and1112 = xor i32 %and1060, %offset.20
  br label %do.end1135

do.body1114:                                      ; preds = %do.end1085
  %sub1116 = sub i32 %rc1.sroa.0.35, %mul1091
  %sub1118 = sub nuw i32 %rc1.sroa.500.35, %mul1091
  %shr1122 = lshr i16 %72, 5
  %sub1126 = sub i16 %72, %shr1122
  %shl1130 = shl i32 %symbol.20, 1
  %add1131 = or disjoint i32 %shl1130, 1
  br label %do.end1135

do.end1135:                                       ; preds = %do.body1114, %do.body1096
  %sub1126.sink = phi i16 [ %conv1107, %do.body1096 ], [ %sub1126, %do.body1114 ]
  %symbol.21 = phi i32 [ %shl1110, %do.body1096 ], [ %add1131, %do.body1114 ]
  %offset.21 = phi i32 [ %and1112, %do.body1096 ], [ %and1060, %do.body1114 ]
  %rc1.sroa.0.36 = phi i32 [ %mul1091, %do.body1096 ], [ %sub1116, %do.body1114 ]
  %rc1.sroa.500.36 = phi i32 [ %rc1.sroa.500.35, %do.body1096 ], [ %sub1118, %do.body1114 ]
  store i16 %sub1126.sink, ptr %arrayidx1089, align 2, !tbaa !40
  %shl1136 = shl i32 %len.15, 1
  br label %sw.bb1137

sw.bb1137:                                        ; preds = %do.end1135, %if.end
  %dict.sroa.37.16 = phi i64 [ %dict.sroa.37.15, %do.end1135 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.16 = phi i64 [ %dict.sroa.12.15, %do.end1135 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.16 = phi i32 [ %shl1136, %do.end1135 ], [ %15, %if.end ]
  %rep0.16 = phi i32 [ %rep0.15, %do.end1135 ], [ %6, %if.end ]
  %rep1.16 = phi i32 [ %rep1.15, %do.end1135 ], [ %7, %if.end ]
  %rep2.16 = phi i32 [ %rep2.15, %do.end1135 ], [ %8, %if.end ]
  %rep3.16 = phi i32 [ %rep3.15, %do.end1135 ], [ %9, %if.end ]
  %state.16 = phi i32 [ %state.15, %do.end1135 ], [ %5, %if.end ]
  %probs.16 = phi ptr [ %probs.15, %do.end1135 ], [ %11, %if.end ]
  %symbol.22 = phi i32 [ %symbol.21, %do.end1135 ], [ %12, %if.end ]
  %limit.16 = phi i32 [ %limit.15, %do.end1135 ], [ %13, %if.end ]
  %offset.22 = phi i32 [ %offset.21, %do.end1135 ], [ %14, %if.end ]
  %rc_in_pos.31 = phi i64 [ %rc_in_pos.30, %do.end1135 ], [ %4, %if.end ]
  %rc1.sroa.0.37 = phi i32 [ %rc1.sroa.0.36, %do.end1135 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.37 = phi i32 [ %rc1.sroa.500.36, %do.end1135 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %and1138 = and i32 %offset.22, %len.16
  %add1139 = add i32 %offset.22, %symbol.22
  %add1140 = add i32 %add1139, %and1138
  %cmp1144 = icmp ult i32 %rc1.sroa.0.37, 16777216
  br i1 %cmp1144, label %if.then1146, label %do.end1163

if.then1146:                                      ; preds = %sw.bb1137
  %cmp1147 = icmp eq i64 %rc_in_pos.31, %in_size
  br i1 %cmp1147, label %if.then1149, label %if.end1151

if.then1149:                                      ; preds = %if.then1146
  store i32 16, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end1151:                                       ; preds = %if.then1146
  %shl1153 = shl nuw i32 %rc1.sroa.0.37, 8
  %shl1155 = shl i32 %rc1.sroa.500.37, 8
  %inc1156 = add i64 %rc_in_pos.31, 1
  %arrayidx1157 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.31
  %74 = load i8, ptr %arrayidx1157, align 1, !tbaa !14
  %conv1158 = zext i8 %74 to i32
  %or1159 = or disjoint i32 %shl1155, %conv1158
  br label %do.end1163

do.end1163:                                       ; preds = %if.end1151, %sw.bb1137
  %rc_in_pos.32 = phi i64 [ %inc1156, %if.end1151 ], [ %rc_in_pos.31, %sw.bb1137 ]
  %rc1.sroa.0.38 = phi i32 [ %shl1153, %if.end1151 ], [ %rc1.sroa.0.37, %sw.bb1137 ]
  %rc1.sroa.500.38 = phi i32 [ %or1159, %if.end1151 ], [ %rc1.sroa.500.37, %sw.bb1137 ]
  %shr1165 = lshr i32 %rc1.sroa.0.38, 11
  %idxprom1166 = zext i32 %add1140 to i64
  %arrayidx1167 = getelementptr inbounds nuw i16, ptr %probs.16, i64 %idxprom1166
  %75 = load i16, ptr %arrayidx1167, align 2, !tbaa !40
  %conv1168 = zext i16 %75 to i32
  %mul1169 = mul i32 %shr1165, %conv1168
  %cmp1171 = icmp ult i32 %rc1.sroa.500.38, %mul1169
  br i1 %cmp1171, label %do.body1174, label %do.body1192

do.body1174:                                      ; preds = %do.end1163
  %sub1179 = sub nsw i32 2048, %conv1168
  %shr1180 = lshr i32 %sub1179, 5
  %76 = trunc i32 %shr1180 to i16
  %conv1185 = add i16 %75, %76
  %shl1188 = shl i32 %symbol.22, 1
  %and1190 = xor i32 %and1138, %offset.22
  br label %do.end1213

do.body1192:                                      ; preds = %do.end1163
  %sub1194 = sub i32 %rc1.sroa.0.38, %mul1169
  %sub1196 = sub nuw i32 %rc1.sroa.500.38, %mul1169
  %shr1200 = lshr i16 %75, 5
  %sub1204 = sub i16 %75, %shr1200
  %shl1208 = shl i32 %symbol.22, 1
  %add1209 = or disjoint i32 %shl1208, 1
  br label %do.end1213

do.end1213:                                       ; preds = %do.body1192, %do.body1174
  %sub1204.sink = phi i16 [ %conv1185, %do.body1174 ], [ %sub1204, %do.body1192 ]
  %symbol.23 = phi i32 [ %shl1188, %do.body1174 ], [ %add1209, %do.body1192 ]
  %offset.23 = phi i32 [ %and1190, %do.body1174 ], [ %and1138, %do.body1192 ]
  %rc1.sroa.0.39 = phi i32 [ %mul1169, %do.body1174 ], [ %sub1194, %do.body1192 ]
  %rc1.sroa.500.39 = phi i32 [ %rc1.sroa.500.38, %do.body1174 ], [ %sub1196, %do.body1192 ]
  store i16 %sub1204.sink, ptr %arrayidx1167, align 2, !tbaa !40
  %shl1214 = shl i32 %len.16, 1
  br label %sw.bb1215

sw.bb1215:                                        ; preds = %do.end1213, %if.end
  %dict.sroa.37.17 = phi i64 [ %dict.sroa.37.16, %do.end1213 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.17 = phi i64 [ %dict.sroa.12.16, %do.end1213 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.17 = phi i32 [ %shl1214, %do.end1213 ], [ %15, %if.end ]
  %rep0.17 = phi i32 [ %rep0.16, %do.end1213 ], [ %6, %if.end ]
  %rep1.17 = phi i32 [ %rep1.16, %do.end1213 ], [ %7, %if.end ]
  %rep2.17 = phi i32 [ %rep2.16, %do.end1213 ], [ %8, %if.end ]
  %rep3.17 = phi i32 [ %rep3.16, %do.end1213 ], [ %9, %if.end ]
  %state.17 = phi i32 [ %state.16, %do.end1213 ], [ %5, %if.end ]
  %probs.17 = phi ptr [ %probs.16, %do.end1213 ], [ %11, %if.end ]
  %symbol.24 = phi i32 [ %symbol.23, %do.end1213 ], [ %12, %if.end ]
  %limit.17 = phi i32 [ %limit.16, %do.end1213 ], [ %13, %if.end ]
  %offset.24 = phi i32 [ %offset.23, %do.end1213 ], [ %14, %if.end ]
  %rc_in_pos.33 = phi i64 [ %rc_in_pos.32, %do.end1213 ], [ %4, %if.end ]
  %rc1.sroa.0.40 = phi i32 [ %rc1.sroa.0.39, %do.end1213 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.40 = phi i32 [ %rc1.sroa.500.39, %do.end1213 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %and1216 = and i32 %offset.24, %len.17
  %add1217 = add i32 %offset.24, %symbol.24
  %add1218 = add i32 %add1217, %and1216
  %cmp1222 = icmp ult i32 %rc1.sroa.0.40, 16777216
  br i1 %cmp1222, label %if.then1224, label %do.end1241

if.then1224:                                      ; preds = %sw.bb1215
  %cmp1225 = icmp eq i64 %rc_in_pos.33, %in_size
  br i1 %cmp1225, label %if.then1227, label %if.end1229

if.then1227:                                      ; preds = %if.then1224
  store i32 17, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end1229:                                       ; preds = %if.then1224
  %shl1231 = shl nuw i32 %rc1.sroa.0.40, 8
  %shl1233 = shl i32 %rc1.sroa.500.40, 8
  %inc1234 = add i64 %rc_in_pos.33, 1
  %arrayidx1235 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.33
  %77 = load i8, ptr %arrayidx1235, align 1, !tbaa !14
  %conv1236 = zext i8 %77 to i32
  %or1237 = or disjoint i32 %shl1233, %conv1236
  br label %do.end1241

do.end1241:                                       ; preds = %if.end1229, %sw.bb1215
  %rc_in_pos.34 = phi i64 [ %inc1234, %if.end1229 ], [ %rc_in_pos.33, %sw.bb1215 ]
  %rc1.sroa.0.41 = phi i32 [ %shl1231, %if.end1229 ], [ %rc1.sroa.0.40, %sw.bb1215 ]
  %rc1.sroa.500.41 = phi i32 [ %or1237, %if.end1229 ], [ %rc1.sroa.500.40, %sw.bb1215 ]
  %shr1243 = lshr i32 %rc1.sroa.0.41, 11
  %idxprom1244 = zext i32 %add1218 to i64
  %arrayidx1245 = getelementptr inbounds nuw i16, ptr %probs.17, i64 %idxprom1244
  %78 = load i16, ptr %arrayidx1245, align 2, !tbaa !40
  %conv1246 = zext i16 %78 to i32
  %mul1247 = mul i32 %shr1243, %conv1246
  %cmp1249 = icmp ult i32 %rc1.sroa.500.41, %mul1247
  br i1 %cmp1249, label %do.body1252, label %do.body1270

do.body1252:                                      ; preds = %do.end1241
  %sub1257 = sub nsw i32 2048, %conv1246
  %shr1258 = lshr i32 %sub1257, 5
  %79 = trunc i32 %shr1258 to i16
  %conv1263 = add i16 %78, %79
  store i16 %conv1263, ptr %arrayidx1245, align 2, !tbaa !40
  %shl1266 = shl i32 %symbol.24, 1
  %and1268 = xor i32 %and1216, %offset.24
  br label %if.end1292

do.body1270:                                      ; preds = %do.end1241
  %sub1272 = sub i32 %rc1.sroa.0.41, %mul1247
  %sub1274 = sub nuw i32 %rc1.sroa.500.41, %mul1247
  %shr1278 = lshr i16 %78, 5
  %sub1282 = sub i16 %78, %shr1278
  store i16 %sub1282, ptr %arrayidx1245, align 2, !tbaa !40
  %shl1286 = shl i32 %symbol.24, 1
  %add1287 = or disjoint i32 %shl1286, 1
  br label %if.end1292

if.end1292:                                       ; preds = %do.body1270, %do.body1252, %do.body645, %do.body629
  %dict.sroa.37.18 = phi i64 [ %dict.sroa.37.9, %do.body629 ], [ %dict.sroa.37.9, %do.body645 ], [ %dict.sroa.37.17, %do.body1252 ], [ %dict.sroa.37.17, %do.body1270 ]
  %dict.sroa.12.18 = phi i64 [ %dict.sroa.12.9, %do.body629 ], [ %dict.sroa.12.9, %do.body645 ], [ %dict.sroa.12.17, %do.body1252 ], [ %dict.sroa.12.17, %do.body1270 ]
  %len.18 = phi i32 [ %len.9, %do.body629 ], [ %len.9, %do.body645 ], [ %len.17, %do.body1252 ], [ %len.17, %do.body1270 ]
  %rep0.18 = phi i32 [ %rep0.9, %do.body629 ], [ %rep0.9, %do.body645 ], [ %rep0.17, %do.body1252 ], [ %rep0.17, %do.body1270 ]
  %rep1.18 = phi i32 [ %rep1.9, %do.body629 ], [ %rep1.9, %do.body645 ], [ %rep1.17, %do.body1252 ], [ %rep1.17, %do.body1270 ]
  %rep2.18 = phi i32 [ %rep2.9, %do.body629 ], [ %rep2.9, %do.body645 ], [ %rep2.17, %do.body1252 ], [ %rep2.17, %do.body1270 ]
  %rep3.18 = phi i32 [ %rep3.9, %do.body629 ], [ %rep3.9, %do.body645 ], [ %rep3.17, %do.body1252 ], [ %rep3.17, %do.body1270 ]
  %state.18 = phi i32 [ %state.9, %do.body629 ], [ %state.9, %do.body645 ], [ %state.17, %do.body1252 ], [ %state.17, %do.body1270 ]
  %probs.18 = phi ptr [ %probs.9, %do.body629 ], [ %probs.9, %do.body645 ], [ %probs.17, %do.body1252 ], [ %probs.17, %do.body1270 ]
  %symbol.25 = phi i32 [ %shl643, %do.body629 ], [ %add662, %do.body645 ], [ %shl1266, %do.body1252 ], [ %add1287, %do.body1270 ]
  %limit.18 = phi i32 [ %limit.9, %do.body629 ], [ %limit.9, %do.body645 ], [ %limit.17, %do.body1252 ], [ %limit.17, %do.body1270 ]
  %offset.25 = phi i32 [ %offset.9, %do.body629 ], [ %offset.9, %do.body645 ], [ %and1268, %do.body1252 ], [ %and1216, %do.body1270 ]
  %rc_in_pos.35 = phi i64 [ %rc_in_pos.18, %do.body629 ], [ %rc_in_pos.18, %do.body645 ], [ %rc_in_pos.34, %do.body1252 ], [ %rc_in_pos.34, %do.body1270 ]
  %rc1.sroa.0.42 = phi i32 [ %mul624, %do.body629 ], [ %sub647, %do.body645 ], [ %mul1247, %do.body1252 ], [ %sub1272, %do.body1270 ]
  %rc1.sroa.500.42 = phi i32 [ %rc1.sroa.500.18, %do.body629 ], [ %sub649, %do.body645 ], [ %rc1.sroa.500.41, %do.body1252 ], [ %sub1274, %do.body1270 ]
  %idxprom1293 = zext i32 %state.18 to i64
  %arrayidx1294 = getelementptr inbounds nuw i32, ptr @lzma_decode.next_state, i64 %idxprom1293
  %80 = load i32, ptr %arrayidx1294, align 4, !tbaa !20
  br label %sw.bb1295

sw.bb1295:                                        ; preds = %if.end1292, %if.end
  %dict.sroa.37.19 = phi i64 [ %dict.sroa.37.18, %if.end1292 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.19 = phi i64 [ %dict.sroa.12.18, %if.end1292 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.19 = phi i32 [ %len.18, %if.end1292 ], [ %15, %if.end ]
  %rep0.19 = phi i32 [ %rep0.18, %if.end1292 ], [ %6, %if.end ]
  %rep1.19 = phi i32 [ %rep1.18, %if.end1292 ], [ %7, %if.end ]
  %rep2.19 = phi i32 [ %rep2.18, %if.end1292 ], [ %8, %if.end ]
  %rep3.19 = phi i32 [ %rep3.18, %if.end1292 ], [ %9, %if.end ]
  %state.19 = phi i32 [ %80, %if.end1292 ], [ %5, %if.end ]
  %probs.19 = phi ptr [ %probs.18, %if.end1292 ], [ %11, %if.end ]
  %symbol.26 = phi i32 [ %symbol.25, %if.end1292 ], [ %12, %if.end ]
  %limit.19 = phi i32 [ %limit.18, %if.end1292 ], [ %13, %if.end ]
  %offset.26 = phi i32 [ %offset.25, %if.end1292 ], [ %14, %if.end ]
  %rc_in_pos.36 = phi i64 [ %rc_in_pos.35, %if.end1292 ], [ %4, %if.end ]
  %rc1.sroa.0.43 = phi i32 [ %rc1.sroa.0.42, %if.end1292 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.43 = phi i32 [ %rc1.sroa.500.42, %if.end1292 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp.i7846 = icmp eq i64 %dict.sroa.12.19, %dict.sroa.46.0
  br i1 %cmp.i7846, label %if.then1298, label %if.end.i7847

if.end.i7847:                                     ; preds = %sw.bb1295
  %conv1296 = trunc i32 %symbol.26 to i8
  %inc.i7848 = add i64 %dict.sroa.12.19, 1
  %arrayidx.i7849 = getelementptr inbounds nuw i8, ptr %dict.sroa.0.0.copyload, i64 %dict.sroa.12.19
  store i8 %conv1296, ptr %arrayidx.i7849, align 1, !tbaa !14
  %spec.select7949 = tail call i64 @llvm.umax.i64(i64 %inc.i7848, i64 %dict.sroa.37.19)
  br label %while.body

if.then1298:                                      ; preds = %sw.bb1295
  store i32 18, ptr %sequence, align 8, !tbaa !39
  br label %out

do.body1302:                                      ; preds = %do.end
  %sub1304 = sub i32 %rc1.sroa.0.2, %mul
  %sub1306 = sub nuw i32 %rc1.sroa.500.2, %mul
  %shr1313 = lshr i16 %23, 5
  %sub1320 = sub i16 %23, %shr1313
  store i16 %sub1320, ptr %arrayidx59, align 2, !tbaa !40
  br label %do.body1325

do.body1325:                                      ; preds = %do.body1302, %if.end
  %dict.sroa.37.20 = phi i64 [ %dict.sroa.37.1, %do.body1302 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.20 = phi i64 [ %dict.sroa.12.1, %do.body1302 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.20 = phi i32 [ %len.1, %do.body1302 ], [ %15, %if.end ]
  %rep0.20 = phi i32 [ %rep0.1, %do.body1302 ], [ %6, %if.end ]
  %rep1.20 = phi i32 [ %rep1.1, %do.body1302 ], [ %7, %if.end ]
  %rep2.20 = phi i32 [ %rep2.1, %do.body1302 ], [ %8, %if.end ]
  %rep3.20 = phi i32 [ %rep3.1, %do.body1302 ], [ %9, %if.end ]
  %state.20 = phi i32 [ %state.1, %do.body1302 ], [ %5, %if.end ]
  %probs.20 = phi ptr [ %probs.1, %do.body1302 ], [ %11, %if.end ]
  %symbol.27 = phi i32 [ %symbol.1, %do.body1302 ], [ %12, %if.end ]
  %limit.20 = phi i32 [ %limit.1, %do.body1302 ], [ %13, %if.end ]
  %offset.27 = phi i32 [ %offset.1, %do.body1302 ], [ %14, %if.end ]
  %rc_in_pos.37 = phi i64 [ %rc_in_pos.2, %do.body1302 ], [ %4, %if.end ]
  %pos_state.1 = phi i32 [ %pos_state.0, %do.body1302 ], [ %conv17, %if.end ]
  %rc1.sroa.0.44 = phi i32 [ %sub1304, %do.body1302 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.44 = phi i32 [ %sub1306, %do.body1302 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp1327 = icmp ult i32 %rc1.sroa.0.44, 16777216
  br i1 %cmp1327, label %if.then1329, label %do.end1346

if.then1329:                                      ; preds = %do.body1325
  %cmp1330 = icmp eq i64 %rc_in_pos.37, %in_size
  br i1 %cmp1330, label %if.then1332, label %if.end1334

if.then1332:                                      ; preds = %if.then1329
  store i32 19, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end1334:                                       ; preds = %if.then1329
  %shl1336 = shl nuw i32 %rc1.sroa.0.44, 8
  %shl1338 = shl i32 %rc1.sroa.500.44, 8
  %inc1339 = add i64 %rc_in_pos.37, 1
  %arrayidx1340 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.37
  %81 = load i8, ptr %arrayidx1340, align 1, !tbaa !14
  %conv1341 = zext i8 %81 to i32
  %or1342 = or disjoint i32 %shl1338, %conv1341
  br label %do.end1346

do.end1346:                                       ; preds = %if.end1334, %do.body1325
  %rc_in_pos.38 = phi i64 [ %inc1339, %if.end1334 ], [ %rc_in_pos.37, %do.body1325 ]
  %rc1.sroa.0.45 = phi i32 [ %shl1336, %if.end1334 ], [ %rc1.sroa.0.44, %do.body1325 ]
  %rc1.sroa.500.45 = phi i32 [ %or1342, %if.end1334 ], [ %rc1.sroa.500.44, %do.body1325 ]
  %shr1348 = lshr i32 %rc1.sroa.0.45, 11
  %is_rep = getelementptr inbounds nuw i8, ptr %pcoder, i64 24960
  %idxprom1349 = zext i32 %state.20 to i64
  %arrayidx1350 = getelementptr inbounds nuw i16, ptr %is_rep, i64 %idxprom1349
  %82 = load i16, ptr %arrayidx1350, align 2, !tbaa !40
  %conv1351 = zext i16 %82 to i32
  %mul1352 = mul i32 %shr1348, %conv1351
  %cmp1354 = icmp ult i32 %rc1.sroa.500.45, %mul1352
  br i1 %cmp1354, label %do.body1357, label %do.body3917

do.body1357:                                      ; preds = %do.end1346
  %sub1363 = sub nsw i32 2048, %conv1351
  %shr1364 = lshr i32 %sub1363, 5
  %83 = trunc i32 %shr1364 to i16
  %conv1370 = add i16 %82, %83
  store i16 %conv1370, ptr %arrayidx1350, align 2, !tbaa !40
  %cmp1373 = icmp ult i32 %state.20, 7
  %cond = select i1 %cmp1373, i32 7, i32 10
  br label %do.body1377

do.body1377:                                      ; preds = %do.body1357, %if.end
  %dict.sroa.37.21 = phi i64 [ %dict.sroa.37.20, %do.body1357 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.21 = phi i64 [ %dict.sroa.12.20, %do.body1357 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.21 = phi i32 [ %len.20, %do.body1357 ], [ %15, %if.end ]
  %rep0.21 = phi i32 [ %rep0.20, %do.body1357 ], [ %6, %if.end ]
  %rep1.21 = phi i32 [ %rep0.20, %do.body1357 ], [ %7, %if.end ]
  %rep2.21 = phi i32 [ %rep1.20, %do.body1357 ], [ %8, %if.end ]
  %rep3.21 = phi i32 [ %rep2.20, %do.body1357 ], [ %9, %if.end ]
  %state.21 = phi i32 [ %cond, %do.body1357 ], [ %5, %if.end ]
  %probs.21 = phi ptr [ %probs.20, %do.body1357 ], [ %11, %if.end ]
  %symbol.28 = phi i32 [ 1, %do.body1357 ], [ %12, %if.end ]
  %limit.21 = phi i32 [ %limit.20, %do.body1357 ], [ %13, %if.end ]
  %offset.28 = phi i32 [ %offset.27, %do.body1357 ], [ %14, %if.end ]
  %rc_in_pos.39 = phi i64 [ %rc_in_pos.38, %do.body1357 ], [ %4, %if.end ]
  %pos_state.2 = phi i32 [ %pos_state.1, %do.body1357 ], [ %conv17, %if.end ]
  %rc1.sroa.0.46 = phi i32 [ %mul1352, %do.body1357 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.46 = phi i32 [ %rc1.sroa.500.45, %do.body1357 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp1379 = icmp ult i32 %rc1.sroa.0.46, 16777216
  br i1 %cmp1379, label %if.then1381, label %do.end1398

if.then1381:                                      ; preds = %do.body1377
  %cmp1382 = icmp eq i64 %rc_in_pos.39, %in_size
  br i1 %cmp1382, label %if.then1384, label %if.end1386

if.then1384:                                      ; preds = %if.then1381
  store i32 20, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end1386:                                       ; preds = %if.then1381
  %shl1388 = shl nuw i32 %rc1.sroa.0.46, 8
  %shl1390 = shl i32 %rc1.sroa.500.46, 8
  %inc1391 = add i64 %rc_in_pos.39, 1
  %arrayidx1392 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.39
  %84 = load i8, ptr %arrayidx1392, align 1, !tbaa !14
  %conv1393 = zext i8 %84 to i32
  %or1394 = or disjoint i32 %shl1390, %conv1393
  br label %do.end1398

do.end1398:                                       ; preds = %if.end1386, %do.body1377
  %rc_in_pos.40 = phi i64 [ %inc1391, %if.end1386 ], [ %rc_in_pos.39, %do.body1377 ]
  %rc1.sroa.0.47 = phi i32 [ %shl1388, %if.end1386 ], [ %rc1.sroa.0.46, %do.body1377 ]
  %rc1.sroa.500.47 = phi i32 [ %or1394, %if.end1386 ], [ %rc1.sroa.500.46, %do.body1377 ]
  %shr1400 = lshr i32 %rc1.sroa.0.47, 11
  %match_len_decoder = getelementptr inbounds nuw i8, ptr %pcoder, i64 26212
  %85 = load i16, ptr %match_len_decoder, align 4, !tbaa !41
  %conv1401 = zext i16 %85 to i32
  %mul1402 = mul i32 %shr1400, %conv1401
  %cmp1404 = icmp ult i32 %rc1.sroa.500.47, %mul1402
  br i1 %cmp1404, label %do.body1407, label %do.body1696

do.body1407:                                      ; preds = %do.end1398
  %sub1412 = sub nsw i32 2048, %conv1401
  %shr1413 = lshr i32 %sub1412, 5
  %86 = trunc i32 %shr1413 to i16
  %conv1418 = add i16 %85, %86
  store i16 %conv1418, ptr %match_len_decoder, align 4, !tbaa !41
  br label %do.body1423

do.body1423:                                      ; preds = %do.body1407, %if.end
  %dict.sroa.37.22 = phi i64 [ %dict.sroa.37.21, %do.body1407 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.22 = phi i64 [ %dict.sroa.12.21, %do.body1407 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.22 = phi i32 [ %len.21, %do.body1407 ], [ %15, %if.end ]
  %rep0.22 = phi i32 [ %rep0.21, %do.body1407 ], [ %6, %if.end ]
  %rep1.22 = phi i32 [ %rep1.21, %do.body1407 ], [ %7, %if.end ]
  %rep2.22 = phi i32 [ %rep2.21, %do.body1407 ], [ %8, %if.end ]
  %rep3.22 = phi i32 [ %rep3.21, %do.body1407 ], [ %9, %if.end ]
  %state.22 = phi i32 [ %state.21, %do.body1407 ], [ %5, %if.end ]
  %probs.22 = phi ptr [ %probs.21, %do.body1407 ], [ %11, %if.end ]
  %symbol.29 = phi i32 [ %symbol.28, %do.body1407 ], [ %12, %if.end ]
  %limit.22 = phi i32 [ %limit.21, %do.body1407 ], [ %13, %if.end ]
  %offset.29 = phi i32 [ %offset.28, %do.body1407 ], [ %14, %if.end ]
  %rc_in_pos.41 = phi i64 [ %rc_in_pos.40, %do.body1407 ], [ %4, %if.end ]
  %pos_state.3 = phi i32 [ %pos_state.2, %do.body1407 ], [ %conv17, %if.end ]
  %rc1.sroa.0.48 = phi i32 [ %mul1402, %do.body1407 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.48 = phi i32 [ %rc1.sroa.500.47, %do.body1407 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp1425 = icmp ult i32 %rc1.sroa.0.48, 16777216
  br i1 %cmp1425, label %if.then1427, label %do.end1444

if.then1427:                                      ; preds = %do.body1423
  %cmp1428 = icmp eq i64 %rc_in_pos.41, %in_size
  br i1 %cmp1428, label %if.then1430, label %if.end1432

if.then1430:                                      ; preds = %if.then1427
  store i32 21, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end1432:                                       ; preds = %if.then1427
  %shl1434 = shl nuw i32 %rc1.sroa.0.48, 8
  %shl1436 = shl i32 %rc1.sroa.500.48, 8
  %inc1437 = add i64 %rc_in_pos.41, 1
  %arrayidx1438 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.41
  %87 = load i8, ptr %arrayidx1438, align 1, !tbaa !14
  %conv1439 = zext i8 %87 to i32
  %or1440 = or disjoint i32 %shl1436, %conv1439
  br label %do.end1444

do.end1444:                                       ; preds = %if.end1432, %do.body1423
  %rc_in_pos.42 = phi i64 [ %inc1437, %if.end1432 ], [ %rc_in_pos.41, %do.body1423 ]
  %rc1.sroa.0.49 = phi i32 [ %shl1434, %if.end1432 ], [ %rc1.sroa.0.48, %do.body1423 ]
  %rc1.sroa.500.49 = phi i32 [ %or1440, %if.end1432 ], [ %rc1.sroa.500.48, %do.body1423 ]
  %shr1446 = lshr i32 %rc1.sroa.0.49, 11
  %low = getelementptr inbounds nuw i8, ptr %pcoder, i64 26216
  %idxprom1448 = zext i32 %pos_state.3 to i64
  %arrayidx1449 = getelementptr inbounds nuw [8 x i16], ptr %low, i64 %idxprom1448
  %idxprom1450 = zext i32 %symbol.29 to i64
  %arrayidx1451 = getelementptr inbounds nuw i16, ptr %arrayidx1449, i64 %idxprom1450
  %88 = load i16, ptr %arrayidx1451, align 2, !tbaa !40
  %conv1452 = zext i16 %88 to i32
  %mul1453 = mul i32 %shr1446, %conv1452
  %cmp1455 = icmp ult i32 %rc1.sroa.500.49, %mul1453
  br i1 %cmp1455, label %do.body1458, label %do.body1482

do.body1458:                                      ; preds = %do.end1444
  %sub1467 = sub nsw i32 2048, %conv1452
  %shr1468 = lshr i32 %sub1467, 5
  %89 = trunc i32 %shr1468 to i16
  %conv1477 = add i16 %88, %89
  store i16 %conv1477, ptr %arrayidx1451, align 2, !tbaa !40
  %shl1480 = shl i32 %symbol.29, 1
  br label %do.body1513

do.body1482:                                      ; preds = %do.end1444
  %sub1484 = sub i32 %rc1.sroa.0.49, %mul1453
  %sub1486 = sub nuw i32 %rc1.sroa.500.49, %mul1453
  %shr1494 = lshr i16 %88, 5
  %sub1502 = sub i16 %88, %shr1494
  store i16 %sub1502, ptr %arrayidx1451, align 2, !tbaa !40
  %shl1506 = shl i32 %symbol.29, 1
  %add1507 = or disjoint i32 %shl1506, 1
  br label %do.body1513

do.body1513:                                      ; preds = %do.body1482, %do.body1458, %if.end
  %dict.sroa.37.23 = phi i64 [ %dict.sroa.37.22, %do.body1458 ], [ %dict.sroa.37.22, %do.body1482 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.23 = phi i64 [ %dict.sroa.12.22, %do.body1458 ], [ %dict.sroa.12.22, %do.body1482 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.23 = phi i32 [ %len.22, %do.body1458 ], [ %len.22, %do.body1482 ], [ %15, %if.end ]
  %rep0.23 = phi i32 [ %rep0.22, %do.body1458 ], [ %rep0.22, %do.body1482 ], [ %6, %if.end ]
  %rep1.23 = phi i32 [ %rep1.22, %do.body1458 ], [ %rep1.22, %do.body1482 ], [ %7, %if.end ]
  %rep2.23 = phi i32 [ %rep2.22, %do.body1458 ], [ %rep2.22, %do.body1482 ], [ %8, %if.end ]
  %rep3.23 = phi i32 [ %rep3.22, %do.body1458 ], [ %rep3.22, %do.body1482 ], [ %9, %if.end ]
  %state.23 = phi i32 [ %state.22, %do.body1458 ], [ %state.22, %do.body1482 ], [ %5, %if.end ]
  %probs.23 = phi ptr [ %probs.22, %do.body1458 ], [ %probs.22, %do.body1482 ], [ %11, %if.end ]
  %symbol.30 = phi i32 [ %shl1480, %do.body1458 ], [ %add1507, %do.body1482 ], [ %12, %if.end ]
  %limit.23 = phi i32 [ %limit.22, %do.body1458 ], [ %limit.22, %do.body1482 ], [ %13, %if.end ]
  %offset.30 = phi i32 [ %offset.29, %do.body1458 ], [ %offset.29, %do.body1482 ], [ %14, %if.end ]
  %rc_in_pos.43 = phi i64 [ %rc_in_pos.42, %do.body1458 ], [ %rc_in_pos.42, %do.body1482 ], [ %4, %if.end ]
  %pos_state.4 = phi i32 [ %pos_state.3, %do.body1458 ], [ %pos_state.3, %do.body1482 ], [ %conv17, %if.end ]
  %rc1.sroa.0.50 = phi i32 [ %mul1453, %do.body1458 ], [ %sub1484, %do.body1482 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.50 = phi i32 [ %rc1.sroa.500.49, %do.body1458 ], [ %sub1486, %do.body1482 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp1515 = icmp ult i32 %rc1.sroa.0.50, 16777216
  br i1 %cmp1515, label %if.then1517, label %do.end1534

if.then1517:                                      ; preds = %do.body1513
  %cmp1518 = icmp eq i64 %rc_in_pos.43, %in_size
  br i1 %cmp1518, label %if.then1520, label %if.end1522

if.then1520:                                      ; preds = %if.then1517
  store i32 22, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end1522:                                       ; preds = %if.then1517
  %shl1524 = shl nuw i32 %rc1.sroa.0.50, 8
  %shl1526 = shl i32 %rc1.sroa.500.50, 8
  %inc1527 = add i64 %rc_in_pos.43, 1
  %arrayidx1528 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.43
  %90 = load i8, ptr %arrayidx1528, align 1, !tbaa !14
  %conv1529 = zext i8 %90 to i32
  %or1530 = or disjoint i32 %shl1526, %conv1529
  br label %do.end1534

do.end1534:                                       ; preds = %if.end1522, %do.body1513
  %rc_in_pos.44 = phi i64 [ %inc1527, %if.end1522 ], [ %rc_in_pos.43, %do.body1513 ]
  %rc1.sroa.0.51 = phi i32 [ %shl1524, %if.end1522 ], [ %rc1.sroa.0.50, %do.body1513 ]
  %rc1.sroa.500.51 = phi i32 [ %or1530, %if.end1522 ], [ %rc1.sroa.500.50, %do.body1513 ]
  %shr1536 = lshr i32 %rc1.sroa.0.51, 11
  %low1538 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26216
  %idxprom1539 = zext i32 %pos_state.4 to i64
  %arrayidx1540 = getelementptr inbounds nuw [8 x i16], ptr %low1538, i64 %idxprom1539
  %idxprom1541 = zext i32 %symbol.30 to i64
  %arrayidx1542 = getelementptr inbounds nuw i16, ptr %arrayidx1540, i64 %idxprom1541
  %91 = load i16, ptr %arrayidx1542, align 2, !tbaa !40
  %conv1543 = zext i16 %91 to i32
  %mul1544 = mul i32 %shr1536, %conv1543
  %cmp1546 = icmp ult i32 %rc1.sroa.500.51, %mul1544
  br i1 %cmp1546, label %do.body1549, label %do.body1573

do.body1549:                                      ; preds = %do.end1534
  %sub1558 = sub nsw i32 2048, %conv1543
  %shr1559 = lshr i32 %sub1558, 5
  %92 = trunc i32 %shr1559 to i16
  %conv1568 = add i16 %91, %92
  store i16 %conv1568, ptr %arrayidx1542, align 2, !tbaa !40
  %shl1571 = shl i32 %symbol.30, 1
  br label %do.body1604

do.body1573:                                      ; preds = %do.end1534
  %sub1575 = sub i32 %rc1.sroa.0.51, %mul1544
  %sub1577 = sub nuw i32 %rc1.sroa.500.51, %mul1544
  %shr1585 = lshr i16 %91, 5
  %sub1593 = sub i16 %91, %shr1585
  store i16 %sub1593, ptr %arrayidx1542, align 2, !tbaa !40
  %shl1597 = shl i32 %symbol.30, 1
  %add1598 = or disjoint i32 %shl1597, 1
  br label %do.body1604

do.body1604:                                      ; preds = %do.body1573, %do.body1549, %if.end
  %dict.sroa.37.24 = phi i64 [ %dict.sroa.37.23, %do.body1549 ], [ %dict.sroa.37.23, %do.body1573 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.24 = phi i64 [ %dict.sroa.12.23, %do.body1549 ], [ %dict.sroa.12.23, %do.body1573 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.24 = phi i32 [ %len.23, %do.body1549 ], [ %len.23, %do.body1573 ], [ %15, %if.end ]
  %rep0.24 = phi i32 [ %rep0.23, %do.body1549 ], [ %rep0.23, %do.body1573 ], [ %6, %if.end ]
  %rep1.24 = phi i32 [ %rep1.23, %do.body1549 ], [ %rep1.23, %do.body1573 ], [ %7, %if.end ]
  %rep2.24 = phi i32 [ %rep2.23, %do.body1549 ], [ %rep2.23, %do.body1573 ], [ %8, %if.end ]
  %rep3.24 = phi i32 [ %rep3.23, %do.body1549 ], [ %rep3.23, %do.body1573 ], [ %9, %if.end ]
  %state.24 = phi i32 [ %state.23, %do.body1549 ], [ %state.23, %do.body1573 ], [ %5, %if.end ]
  %probs.24 = phi ptr [ %probs.23, %do.body1549 ], [ %probs.23, %do.body1573 ], [ %11, %if.end ]
  %symbol.31 = phi i32 [ %shl1571, %do.body1549 ], [ %add1598, %do.body1573 ], [ %12, %if.end ]
  %limit.24 = phi i32 [ %limit.23, %do.body1549 ], [ %limit.23, %do.body1573 ], [ %13, %if.end ]
  %offset.31 = phi i32 [ %offset.30, %do.body1549 ], [ %offset.30, %do.body1573 ], [ %14, %if.end ]
  %rc_in_pos.45 = phi i64 [ %rc_in_pos.44, %do.body1549 ], [ %rc_in_pos.44, %do.body1573 ], [ %4, %if.end ]
  %pos_state.5 = phi i32 [ %pos_state.4, %do.body1549 ], [ %pos_state.4, %do.body1573 ], [ %conv17, %if.end ]
  %rc1.sroa.0.52 = phi i32 [ %mul1544, %do.body1549 ], [ %sub1575, %do.body1573 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.52 = phi i32 [ %rc1.sroa.500.51, %do.body1549 ], [ %sub1577, %do.body1573 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp1606 = icmp ult i32 %rc1.sroa.0.52, 16777216
  br i1 %cmp1606, label %if.then1608, label %do.end1625

if.then1608:                                      ; preds = %do.body1604
  %cmp1609 = icmp eq i64 %rc_in_pos.45, %in_size
  br i1 %cmp1609, label %if.then1611, label %if.end1613

if.then1611:                                      ; preds = %if.then1608
  store i32 23, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end1613:                                       ; preds = %if.then1608
  %shl1615 = shl nuw i32 %rc1.sroa.0.52, 8
  %shl1617 = shl i32 %rc1.sroa.500.52, 8
  %inc1618 = add i64 %rc_in_pos.45, 1
  %arrayidx1619 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.45
  %93 = load i8, ptr %arrayidx1619, align 1, !tbaa !14
  %conv1620 = zext i8 %93 to i32
  %or1621 = or disjoint i32 %shl1617, %conv1620
  br label %do.end1625

do.end1625:                                       ; preds = %if.end1613, %do.body1604
  %rc_in_pos.46 = phi i64 [ %inc1618, %if.end1613 ], [ %rc_in_pos.45, %do.body1604 ]
  %rc1.sroa.0.53 = phi i32 [ %shl1615, %if.end1613 ], [ %rc1.sroa.0.52, %do.body1604 ]
  %rc1.sroa.500.53 = phi i32 [ %or1621, %if.end1613 ], [ %rc1.sroa.500.52, %do.body1604 ]
  %shr1627 = lshr i32 %rc1.sroa.0.53, 11
  %low1629 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26216
  %idxprom1630 = zext i32 %pos_state.5 to i64
  %arrayidx1631 = getelementptr inbounds nuw [8 x i16], ptr %low1629, i64 %idxprom1630
  %idxprom1632 = zext i32 %symbol.31 to i64
  %arrayidx1633 = getelementptr inbounds nuw i16, ptr %arrayidx1631, i64 %idxprom1632
  %94 = load i16, ptr %arrayidx1633, align 2, !tbaa !40
  %conv1634 = zext i16 %94 to i32
  %mul1635 = mul i32 %shr1627, %conv1634
  %cmp1637 = icmp ult i32 %rc1.sroa.500.53, %mul1635
  br i1 %cmp1637, label %do.body1640, label %do.body1664

do.body1640:                                      ; preds = %do.end1625
  %sub1649 = sub nsw i32 2048, %conv1634
  %shr1650 = lshr i32 %sub1649, 5
  %95 = trunc i32 %shr1650 to i16
  %conv1659 = add i16 %94, %95
  %shl1662 = shl i32 %symbol.31, 1
  br label %do.end1692

do.body1664:                                      ; preds = %do.end1625
  %sub1666 = sub i32 %rc1.sroa.0.53, %mul1635
  %sub1668 = sub nuw i32 %rc1.sroa.500.53, %mul1635
  %shr1676 = lshr i16 %94, 5
  %sub1684 = sub i16 %94, %shr1676
  %shl1688 = shl i32 %symbol.31, 1
  %add1689 = or disjoint i32 %shl1688, 1
  br label %do.end1692

do.end1692:                                       ; preds = %do.body1664, %do.body1640
  %sub1684.sink = phi i16 [ %conv1659, %do.body1640 ], [ %sub1684, %do.body1664 ]
  %symbol.32 = phi i32 [ %shl1662, %do.body1640 ], [ %add1689, %do.body1664 ]
  %rc1.sroa.0.54 = phi i32 [ %mul1635, %do.body1640 ], [ %sub1666, %do.body1664 ]
  %rc1.sroa.500.54 = phi i32 [ %rc1.sroa.500.53, %do.body1640 ], [ %sub1668, %do.body1664 ]
  store i16 %sub1684.sink, ptr %arrayidx1633, align 2, !tbaa !40
  %add1694 = add i32 %symbol.32, -6
  br label %do.end2704

do.body1696:                                      ; preds = %do.end1398
  %sub1698 = sub i32 %rc1.sroa.0.47, %mul1402
  %sub1700 = sub nuw i32 %rc1.sroa.500.47, %mul1402
  %shr1704 = lshr i16 %85, 5
  %sub1708 = sub i16 %85, %shr1704
  store i16 %sub1708, ptr %match_len_decoder, align 4, !tbaa !41
  br label %do.body1713

do.body1713:                                      ; preds = %do.body1696, %if.end
  %dict.sroa.37.25 = phi i64 [ %dict.sroa.37.21, %do.body1696 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.25 = phi i64 [ %dict.sroa.12.21, %do.body1696 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.25 = phi i32 [ %len.21, %do.body1696 ], [ %15, %if.end ]
  %rep0.25 = phi i32 [ %rep0.21, %do.body1696 ], [ %6, %if.end ]
  %rep1.25 = phi i32 [ %rep1.21, %do.body1696 ], [ %7, %if.end ]
  %rep2.25 = phi i32 [ %rep2.21, %do.body1696 ], [ %8, %if.end ]
  %rep3.25 = phi i32 [ %rep3.21, %do.body1696 ], [ %9, %if.end ]
  %state.25 = phi i32 [ %state.21, %do.body1696 ], [ %5, %if.end ]
  %probs.25 = phi ptr [ %probs.21, %do.body1696 ], [ %11, %if.end ]
  %symbol.33 = phi i32 [ %symbol.28, %do.body1696 ], [ %12, %if.end ]
  %limit.25 = phi i32 [ %limit.21, %do.body1696 ], [ %13, %if.end ]
  %offset.32 = phi i32 [ %offset.28, %do.body1696 ], [ %14, %if.end ]
  %rc_in_pos.47 = phi i64 [ %rc_in_pos.40, %do.body1696 ], [ %4, %if.end ]
  %pos_state.6 = phi i32 [ %pos_state.2, %do.body1696 ], [ %conv17, %if.end ]
  %rc1.sroa.0.55 = phi i32 [ %sub1698, %do.body1696 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.55 = phi i32 [ %sub1700, %do.body1696 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp1715 = icmp ult i32 %rc1.sroa.0.55, 16777216
  br i1 %cmp1715, label %if.then1717, label %do.end1734

if.then1717:                                      ; preds = %do.body1713
  %cmp1718 = icmp eq i64 %rc_in_pos.47, %in_size
  br i1 %cmp1718, label %if.then1720, label %if.end1722

if.then1720:                                      ; preds = %if.then1717
  store i32 24, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end1722:                                       ; preds = %if.then1717
  %shl1724 = shl nuw i32 %rc1.sroa.0.55, 8
  %shl1726 = shl i32 %rc1.sroa.500.55, 8
  %inc1727 = add i64 %rc_in_pos.47, 1
  %arrayidx1728 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.47
  %96 = load i8, ptr %arrayidx1728, align 1, !tbaa !14
  %conv1729 = zext i8 %96 to i32
  %or1730 = or disjoint i32 %shl1726, %conv1729
  br label %do.end1734

do.end1734:                                       ; preds = %if.end1722, %do.body1713
  %rc_in_pos.48 = phi i64 [ %inc1727, %if.end1722 ], [ %rc_in_pos.47, %do.body1713 ]
  %rc1.sroa.0.56 = phi i32 [ %shl1724, %if.end1722 ], [ %rc1.sroa.0.55, %do.body1713 ]
  %rc1.sroa.500.56 = phi i32 [ %or1730, %if.end1722 ], [ %rc1.sroa.500.55, %do.body1713 ]
  %shr1736 = lshr i32 %rc1.sroa.0.56, 11
  %choice2 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26214
  %97 = load i16, ptr %choice2, align 2, !tbaa !42
  %conv1738 = zext i16 %97 to i32
  %mul1739 = mul i32 %shr1736, %conv1738
  %cmp1741 = icmp ult i32 %rc1.sroa.500.56, %mul1739
  br i1 %cmp1741, label %do.body1744, label %do.body2034

do.body1744:                                      ; preds = %do.end1734
  %sub1749 = sub nsw i32 2048, %conv1738
  %shr1750 = lshr i32 %sub1749, 5
  %98 = trunc i32 %shr1750 to i16
  %conv1755 = add i16 %97, %98
  store i16 %conv1755, ptr %choice2, align 2, !tbaa !42
  br label %do.body1760

do.body1760:                                      ; preds = %do.body1744, %if.end
  %dict.sroa.37.26 = phi i64 [ %dict.sroa.37.25, %do.body1744 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.26 = phi i64 [ %dict.sroa.12.25, %do.body1744 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.26 = phi i32 [ %len.25, %do.body1744 ], [ %15, %if.end ]
  %rep0.26 = phi i32 [ %rep0.25, %do.body1744 ], [ %6, %if.end ]
  %rep1.26 = phi i32 [ %rep1.25, %do.body1744 ], [ %7, %if.end ]
  %rep2.26 = phi i32 [ %rep2.25, %do.body1744 ], [ %8, %if.end ]
  %rep3.26 = phi i32 [ %rep3.25, %do.body1744 ], [ %9, %if.end ]
  %state.26 = phi i32 [ %state.25, %do.body1744 ], [ %5, %if.end ]
  %probs.26 = phi ptr [ %probs.25, %do.body1744 ], [ %11, %if.end ]
  %symbol.34 = phi i32 [ %symbol.33, %do.body1744 ], [ %12, %if.end ]
  %limit.26 = phi i32 [ %limit.25, %do.body1744 ], [ %13, %if.end ]
  %offset.33 = phi i32 [ %offset.32, %do.body1744 ], [ %14, %if.end ]
  %rc_in_pos.49 = phi i64 [ %rc_in_pos.48, %do.body1744 ], [ %4, %if.end ]
  %pos_state.7 = phi i32 [ %pos_state.6, %do.body1744 ], [ %conv17, %if.end ]
  %rc1.sroa.0.57 = phi i32 [ %mul1739, %do.body1744 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.57 = phi i32 [ %rc1.sroa.500.56, %do.body1744 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp1762 = icmp ult i32 %rc1.sroa.0.57, 16777216
  br i1 %cmp1762, label %if.then1764, label %do.end1781

if.then1764:                                      ; preds = %do.body1760
  %cmp1765 = icmp eq i64 %rc_in_pos.49, %in_size
  br i1 %cmp1765, label %if.then1767, label %if.end1769

if.then1767:                                      ; preds = %if.then1764
  store i32 25, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end1769:                                       ; preds = %if.then1764
  %shl1771 = shl nuw i32 %rc1.sroa.0.57, 8
  %shl1773 = shl i32 %rc1.sroa.500.57, 8
  %inc1774 = add i64 %rc_in_pos.49, 1
  %arrayidx1775 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.49
  %99 = load i8, ptr %arrayidx1775, align 1, !tbaa !14
  %conv1776 = zext i8 %99 to i32
  %or1777 = or disjoint i32 %shl1773, %conv1776
  br label %do.end1781

do.end1781:                                       ; preds = %if.end1769, %do.body1760
  %rc_in_pos.50 = phi i64 [ %inc1774, %if.end1769 ], [ %rc_in_pos.49, %do.body1760 ]
  %rc1.sroa.0.58 = phi i32 [ %shl1771, %if.end1769 ], [ %rc1.sroa.0.57, %do.body1760 ]
  %rc1.sroa.500.58 = phi i32 [ %or1777, %if.end1769 ], [ %rc1.sroa.500.57, %do.body1760 ]
  %shr1783 = lshr i32 %rc1.sroa.0.58, 11
  %mid = getelementptr inbounds nuw i8, ptr %pcoder, i64 26472
  %idxprom1785 = zext i32 %pos_state.7 to i64
  %arrayidx1786 = getelementptr inbounds nuw [8 x i16], ptr %mid, i64 %idxprom1785
  %idxprom1787 = zext i32 %symbol.34 to i64
  %arrayidx1788 = getelementptr inbounds nuw i16, ptr %arrayidx1786, i64 %idxprom1787
  %100 = load i16, ptr %arrayidx1788, align 2, !tbaa !40
  %conv1789 = zext i16 %100 to i32
  %mul1790 = mul i32 %shr1783, %conv1789
  %cmp1792 = icmp ult i32 %rc1.sroa.500.58, %mul1790
  br i1 %cmp1792, label %do.body1795, label %do.body1819

do.body1795:                                      ; preds = %do.end1781
  %sub1804 = sub nsw i32 2048, %conv1789
  %shr1805 = lshr i32 %sub1804, 5
  %101 = trunc i32 %shr1805 to i16
  %conv1814 = add i16 %100, %101
  store i16 %conv1814, ptr %arrayidx1788, align 2, !tbaa !40
  %shl1817 = shl i32 %symbol.34, 1
  br label %do.body1850

do.body1819:                                      ; preds = %do.end1781
  %sub1821 = sub i32 %rc1.sroa.0.58, %mul1790
  %sub1823 = sub nuw i32 %rc1.sroa.500.58, %mul1790
  %shr1831 = lshr i16 %100, 5
  %sub1839 = sub i16 %100, %shr1831
  store i16 %sub1839, ptr %arrayidx1788, align 2, !tbaa !40
  %shl1843 = shl i32 %symbol.34, 1
  %add1844 = or disjoint i32 %shl1843, 1
  br label %do.body1850

do.body1850:                                      ; preds = %do.body1819, %do.body1795, %if.end
  %dict.sroa.37.27 = phi i64 [ %dict.sroa.37.26, %do.body1795 ], [ %dict.sroa.37.26, %do.body1819 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.27 = phi i64 [ %dict.sroa.12.26, %do.body1795 ], [ %dict.sroa.12.26, %do.body1819 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.27 = phi i32 [ %len.26, %do.body1795 ], [ %len.26, %do.body1819 ], [ %15, %if.end ]
  %rep0.27 = phi i32 [ %rep0.26, %do.body1795 ], [ %rep0.26, %do.body1819 ], [ %6, %if.end ]
  %rep1.27 = phi i32 [ %rep1.26, %do.body1795 ], [ %rep1.26, %do.body1819 ], [ %7, %if.end ]
  %rep2.27 = phi i32 [ %rep2.26, %do.body1795 ], [ %rep2.26, %do.body1819 ], [ %8, %if.end ]
  %rep3.27 = phi i32 [ %rep3.26, %do.body1795 ], [ %rep3.26, %do.body1819 ], [ %9, %if.end ]
  %state.27 = phi i32 [ %state.26, %do.body1795 ], [ %state.26, %do.body1819 ], [ %5, %if.end ]
  %probs.27 = phi ptr [ %probs.26, %do.body1795 ], [ %probs.26, %do.body1819 ], [ %11, %if.end ]
  %symbol.35 = phi i32 [ %shl1817, %do.body1795 ], [ %add1844, %do.body1819 ], [ %12, %if.end ]
  %limit.27 = phi i32 [ %limit.26, %do.body1795 ], [ %limit.26, %do.body1819 ], [ %13, %if.end ]
  %offset.34 = phi i32 [ %offset.33, %do.body1795 ], [ %offset.33, %do.body1819 ], [ %14, %if.end ]
  %rc_in_pos.51 = phi i64 [ %rc_in_pos.50, %do.body1795 ], [ %rc_in_pos.50, %do.body1819 ], [ %4, %if.end ]
  %pos_state.8 = phi i32 [ %pos_state.7, %do.body1795 ], [ %pos_state.7, %do.body1819 ], [ %conv17, %if.end ]
  %rc1.sroa.0.59 = phi i32 [ %mul1790, %do.body1795 ], [ %sub1821, %do.body1819 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.59 = phi i32 [ %rc1.sroa.500.58, %do.body1795 ], [ %sub1823, %do.body1819 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp1852 = icmp ult i32 %rc1.sroa.0.59, 16777216
  br i1 %cmp1852, label %if.then1854, label %do.end1871

if.then1854:                                      ; preds = %do.body1850
  %cmp1855 = icmp eq i64 %rc_in_pos.51, %in_size
  br i1 %cmp1855, label %if.then1857, label %if.end1859

if.then1857:                                      ; preds = %if.then1854
  store i32 26, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end1859:                                       ; preds = %if.then1854
  %shl1861 = shl nuw i32 %rc1.sroa.0.59, 8
  %shl1863 = shl i32 %rc1.sroa.500.59, 8
  %inc1864 = add i64 %rc_in_pos.51, 1
  %arrayidx1865 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.51
  %102 = load i8, ptr %arrayidx1865, align 1, !tbaa !14
  %conv1866 = zext i8 %102 to i32
  %or1867 = or disjoint i32 %shl1863, %conv1866
  br label %do.end1871

do.end1871:                                       ; preds = %if.end1859, %do.body1850
  %rc_in_pos.52 = phi i64 [ %inc1864, %if.end1859 ], [ %rc_in_pos.51, %do.body1850 ]
  %rc1.sroa.0.60 = phi i32 [ %shl1861, %if.end1859 ], [ %rc1.sroa.0.59, %do.body1850 ]
  %rc1.sroa.500.60 = phi i32 [ %or1867, %if.end1859 ], [ %rc1.sroa.500.59, %do.body1850 ]
  %shr1873 = lshr i32 %rc1.sroa.0.60, 11
  %mid1875 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26472
  %idxprom1876 = zext i32 %pos_state.8 to i64
  %arrayidx1877 = getelementptr inbounds nuw [8 x i16], ptr %mid1875, i64 %idxprom1876
  %idxprom1878 = zext i32 %symbol.35 to i64
  %arrayidx1879 = getelementptr inbounds nuw i16, ptr %arrayidx1877, i64 %idxprom1878
  %103 = load i16, ptr %arrayidx1879, align 2, !tbaa !40
  %conv1880 = zext i16 %103 to i32
  %mul1881 = mul i32 %shr1873, %conv1880
  %cmp1883 = icmp ult i32 %rc1.sroa.500.60, %mul1881
  br i1 %cmp1883, label %do.body1886, label %do.body1910

do.body1886:                                      ; preds = %do.end1871
  %sub1895 = sub nsw i32 2048, %conv1880
  %shr1896 = lshr i32 %sub1895, 5
  %104 = trunc i32 %shr1896 to i16
  %conv1905 = add i16 %103, %104
  store i16 %conv1905, ptr %arrayidx1879, align 2, !tbaa !40
  %shl1908 = shl i32 %symbol.35, 1
  br label %do.body1941

do.body1910:                                      ; preds = %do.end1871
  %sub1912 = sub i32 %rc1.sroa.0.60, %mul1881
  %sub1914 = sub nuw i32 %rc1.sroa.500.60, %mul1881
  %shr1922 = lshr i16 %103, 5
  %sub1930 = sub i16 %103, %shr1922
  store i16 %sub1930, ptr %arrayidx1879, align 2, !tbaa !40
  %shl1934 = shl i32 %symbol.35, 1
  %add1935 = or disjoint i32 %shl1934, 1
  br label %do.body1941

do.body1941:                                      ; preds = %do.body1910, %do.body1886, %if.end
  %dict.sroa.37.28 = phi i64 [ %dict.sroa.37.27, %do.body1886 ], [ %dict.sroa.37.27, %do.body1910 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.28 = phi i64 [ %dict.sroa.12.27, %do.body1886 ], [ %dict.sroa.12.27, %do.body1910 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.28 = phi i32 [ %len.27, %do.body1886 ], [ %len.27, %do.body1910 ], [ %15, %if.end ]
  %rep0.28 = phi i32 [ %rep0.27, %do.body1886 ], [ %rep0.27, %do.body1910 ], [ %6, %if.end ]
  %rep1.28 = phi i32 [ %rep1.27, %do.body1886 ], [ %rep1.27, %do.body1910 ], [ %7, %if.end ]
  %rep2.28 = phi i32 [ %rep2.27, %do.body1886 ], [ %rep2.27, %do.body1910 ], [ %8, %if.end ]
  %rep3.28 = phi i32 [ %rep3.27, %do.body1886 ], [ %rep3.27, %do.body1910 ], [ %9, %if.end ]
  %state.28 = phi i32 [ %state.27, %do.body1886 ], [ %state.27, %do.body1910 ], [ %5, %if.end ]
  %probs.28 = phi ptr [ %probs.27, %do.body1886 ], [ %probs.27, %do.body1910 ], [ %11, %if.end ]
  %symbol.36 = phi i32 [ %shl1908, %do.body1886 ], [ %add1935, %do.body1910 ], [ %12, %if.end ]
  %limit.28 = phi i32 [ %limit.27, %do.body1886 ], [ %limit.27, %do.body1910 ], [ %13, %if.end ]
  %offset.35 = phi i32 [ %offset.34, %do.body1886 ], [ %offset.34, %do.body1910 ], [ %14, %if.end ]
  %rc_in_pos.53 = phi i64 [ %rc_in_pos.52, %do.body1886 ], [ %rc_in_pos.52, %do.body1910 ], [ %4, %if.end ]
  %pos_state.9 = phi i32 [ %pos_state.8, %do.body1886 ], [ %pos_state.8, %do.body1910 ], [ %conv17, %if.end ]
  %rc1.sroa.0.61 = phi i32 [ %mul1881, %do.body1886 ], [ %sub1912, %do.body1910 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.61 = phi i32 [ %rc1.sroa.500.60, %do.body1886 ], [ %sub1914, %do.body1910 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp1943 = icmp ult i32 %rc1.sroa.0.61, 16777216
  br i1 %cmp1943, label %if.then1945, label %do.end1962

if.then1945:                                      ; preds = %do.body1941
  %cmp1946 = icmp eq i64 %rc_in_pos.53, %in_size
  br i1 %cmp1946, label %if.then1948, label %if.end1950

if.then1948:                                      ; preds = %if.then1945
  store i32 27, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end1950:                                       ; preds = %if.then1945
  %shl1952 = shl nuw i32 %rc1.sroa.0.61, 8
  %shl1954 = shl i32 %rc1.sroa.500.61, 8
  %inc1955 = add i64 %rc_in_pos.53, 1
  %arrayidx1956 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.53
  %105 = load i8, ptr %arrayidx1956, align 1, !tbaa !14
  %conv1957 = zext i8 %105 to i32
  %or1958 = or disjoint i32 %shl1954, %conv1957
  br label %do.end1962

do.end1962:                                       ; preds = %if.end1950, %do.body1941
  %rc_in_pos.54 = phi i64 [ %inc1955, %if.end1950 ], [ %rc_in_pos.53, %do.body1941 ]
  %rc1.sroa.0.62 = phi i32 [ %shl1952, %if.end1950 ], [ %rc1.sroa.0.61, %do.body1941 ]
  %rc1.sroa.500.62 = phi i32 [ %or1958, %if.end1950 ], [ %rc1.sroa.500.61, %do.body1941 ]
  %shr1964 = lshr i32 %rc1.sroa.0.62, 11
  %mid1966 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26472
  %idxprom1967 = zext i32 %pos_state.9 to i64
  %arrayidx1968 = getelementptr inbounds nuw [8 x i16], ptr %mid1966, i64 %idxprom1967
  %idxprom1969 = zext i32 %symbol.36 to i64
  %arrayidx1970 = getelementptr inbounds nuw i16, ptr %arrayidx1968, i64 %idxprom1969
  %106 = load i16, ptr %arrayidx1970, align 2, !tbaa !40
  %conv1971 = zext i16 %106 to i32
  %mul1972 = mul i32 %shr1964, %conv1971
  %cmp1974 = icmp ult i32 %rc1.sroa.500.62, %mul1972
  br i1 %cmp1974, label %do.body1977, label %do.body2001

do.body1977:                                      ; preds = %do.end1962
  %sub1986 = sub nsw i32 2048, %conv1971
  %shr1987 = lshr i32 %sub1986, 5
  %107 = trunc i32 %shr1987 to i16
  %conv1996 = add i16 %106, %107
  %shl1999 = shl i32 %symbol.36, 1
  br label %do.end2029

do.body2001:                                      ; preds = %do.end1962
  %sub2003 = sub i32 %rc1.sroa.0.62, %mul1972
  %sub2005 = sub nuw i32 %rc1.sroa.500.62, %mul1972
  %shr2013 = lshr i16 %106, 5
  %sub2021 = sub i16 %106, %shr2013
  %shl2025 = shl i32 %symbol.36, 1
  %add2026 = or disjoint i32 %shl2025, 1
  br label %do.end2029

do.end2029:                                       ; preds = %do.body2001, %do.body1977
  %sub2021.sink = phi i16 [ %conv1996, %do.body1977 ], [ %sub2021, %do.body2001 ]
  %symbol.37 = phi i32 [ %shl1999, %do.body1977 ], [ %add2026, %do.body2001 ]
  %rc1.sroa.0.63 = phi i32 [ %mul1972, %do.body1977 ], [ %sub2003, %do.body2001 ]
  %rc1.sroa.500.63 = phi i32 [ %rc1.sroa.500.62, %do.body1977 ], [ %sub2005, %do.body2001 ]
  store i16 %sub2021.sink, ptr %arrayidx1970, align 2, !tbaa !40
  %add2032 = add i32 %symbol.37, 2
  br label %do.end2704

do.body2034:                                      ; preds = %do.end1734
  %sub2036 = sub i32 %rc1.sroa.0.56, %mul1739
  %sub2038 = sub nuw i32 %rc1.sroa.500.56, %mul1739
  %shr2042 = lshr i16 %97, 5
  %sub2046 = sub i16 %97, %shr2042
  store i16 %sub2046, ptr %choice2, align 2, !tbaa !42
  br label %do.body2052

do.body2052:                                      ; preds = %do.body2034, %if.end
  %dict.sroa.37.29 = phi i64 [ %dict.sroa.37.25, %do.body2034 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.29 = phi i64 [ %dict.sroa.12.25, %do.body2034 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.29 = phi i32 [ %len.25, %do.body2034 ], [ %15, %if.end ]
  %rep0.29 = phi i32 [ %rep0.25, %do.body2034 ], [ %6, %if.end ]
  %rep1.29 = phi i32 [ %rep1.25, %do.body2034 ], [ %7, %if.end ]
  %rep2.29 = phi i32 [ %rep2.25, %do.body2034 ], [ %8, %if.end ]
  %rep3.29 = phi i32 [ %rep3.25, %do.body2034 ], [ %9, %if.end ]
  %state.29 = phi i32 [ %state.25, %do.body2034 ], [ %5, %if.end ]
  %probs.29 = phi ptr [ %probs.25, %do.body2034 ], [ %11, %if.end ]
  %symbol.38 = phi i32 [ %symbol.33, %do.body2034 ], [ %12, %if.end ]
  %limit.29 = phi i32 [ %limit.25, %do.body2034 ], [ %13, %if.end ]
  %offset.36 = phi i32 [ %offset.32, %do.body2034 ], [ %14, %if.end ]
  %rc_in_pos.55 = phi i64 [ %rc_in_pos.48, %do.body2034 ], [ %4, %if.end ]
  %rc1.sroa.0.64 = phi i32 [ %sub2036, %do.body2034 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.64 = phi i32 [ %sub2038, %do.body2034 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp2054 = icmp ult i32 %rc1.sroa.0.64, 16777216
  br i1 %cmp2054, label %if.then2056, label %do.end2073

if.then2056:                                      ; preds = %do.body2052
  %cmp2057 = icmp eq i64 %rc_in_pos.55, %in_size
  br i1 %cmp2057, label %if.then2059, label %if.end2061

if.then2059:                                      ; preds = %if.then2056
  store i32 28, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end2061:                                       ; preds = %if.then2056
  %shl2063 = shl nuw i32 %rc1.sroa.0.64, 8
  %shl2065 = shl i32 %rc1.sroa.500.64, 8
  %inc2066 = add i64 %rc_in_pos.55, 1
  %arrayidx2067 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.55
  %108 = load i8, ptr %arrayidx2067, align 1, !tbaa !14
  %conv2068 = zext i8 %108 to i32
  %or2069 = or disjoint i32 %shl2065, %conv2068
  br label %do.end2073

do.end2073:                                       ; preds = %if.end2061, %do.body2052
  %rc_in_pos.56 = phi i64 [ %inc2066, %if.end2061 ], [ %rc_in_pos.55, %do.body2052 ]
  %rc1.sroa.0.65 = phi i32 [ %shl2063, %if.end2061 ], [ %rc1.sroa.0.64, %do.body2052 ]
  %rc1.sroa.500.65 = phi i32 [ %or2069, %if.end2061 ], [ %rc1.sroa.500.64, %do.body2052 ]
  %shr2075 = lshr i32 %rc1.sroa.0.65, 11
  %high = getelementptr inbounds nuw i8, ptr %pcoder, i64 26728
  %idxprom2077 = zext i32 %symbol.38 to i64
  %arrayidx2078 = getelementptr inbounds nuw i16, ptr %high, i64 %idxprom2077
  %109 = load i16, ptr %arrayidx2078, align 2, !tbaa !40
  %conv2079 = zext i16 %109 to i32
  %mul2080 = mul i32 %shr2075, %conv2079
  %cmp2082 = icmp ult i32 %rc1.sroa.500.65, %mul2080
  br i1 %cmp2082, label %do.body2085, label %do.body2105

do.body2085:                                      ; preds = %do.end2073
  %sub2092 = sub nsw i32 2048, %conv2079
  %shr2093 = lshr i32 %sub2092, 5
  %110 = trunc i32 %shr2093 to i16
  %conv2100 = add i16 %109, %110
  store i16 %conv2100, ptr %arrayidx2078, align 2, !tbaa !40
  %shl2103 = shl i32 %symbol.38, 1
  br label %do.body2132

do.body2105:                                      ; preds = %do.end2073
  %sub2107 = sub i32 %rc1.sroa.0.65, %mul2080
  %sub2109 = sub nuw i32 %rc1.sroa.500.65, %mul2080
  %shr2115 = lshr i16 %109, 5
  %sub2121 = sub i16 %109, %shr2115
  store i16 %sub2121, ptr %arrayidx2078, align 2, !tbaa !40
  %shl2125 = shl i32 %symbol.38, 1
  %add2126 = or disjoint i32 %shl2125, 1
  br label %do.body2132

do.body2132:                                      ; preds = %do.body2105, %do.body2085, %if.end
  %dict.sroa.37.30 = phi i64 [ %dict.sroa.37.29, %do.body2085 ], [ %dict.sroa.37.29, %do.body2105 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.30 = phi i64 [ %dict.sroa.12.29, %do.body2085 ], [ %dict.sroa.12.29, %do.body2105 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.30 = phi i32 [ %len.29, %do.body2085 ], [ %len.29, %do.body2105 ], [ %15, %if.end ]
  %rep0.30 = phi i32 [ %rep0.29, %do.body2085 ], [ %rep0.29, %do.body2105 ], [ %6, %if.end ]
  %rep1.30 = phi i32 [ %rep1.29, %do.body2085 ], [ %rep1.29, %do.body2105 ], [ %7, %if.end ]
  %rep2.30 = phi i32 [ %rep2.29, %do.body2085 ], [ %rep2.29, %do.body2105 ], [ %8, %if.end ]
  %rep3.30 = phi i32 [ %rep3.29, %do.body2085 ], [ %rep3.29, %do.body2105 ], [ %9, %if.end ]
  %state.30 = phi i32 [ %state.29, %do.body2085 ], [ %state.29, %do.body2105 ], [ %5, %if.end ]
  %probs.30 = phi ptr [ %probs.29, %do.body2085 ], [ %probs.29, %do.body2105 ], [ %11, %if.end ]
  %symbol.39 = phi i32 [ %shl2103, %do.body2085 ], [ %add2126, %do.body2105 ], [ %12, %if.end ]
  %limit.30 = phi i32 [ %limit.29, %do.body2085 ], [ %limit.29, %do.body2105 ], [ %13, %if.end ]
  %offset.37 = phi i32 [ %offset.36, %do.body2085 ], [ %offset.36, %do.body2105 ], [ %14, %if.end ]
  %rc_in_pos.57 = phi i64 [ %rc_in_pos.56, %do.body2085 ], [ %rc_in_pos.56, %do.body2105 ], [ %4, %if.end ]
  %rc1.sroa.0.66 = phi i32 [ %mul2080, %do.body2085 ], [ %sub2107, %do.body2105 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.66 = phi i32 [ %rc1.sroa.500.65, %do.body2085 ], [ %sub2109, %do.body2105 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp2134 = icmp ult i32 %rc1.sroa.0.66, 16777216
  br i1 %cmp2134, label %if.then2136, label %do.end2153

if.then2136:                                      ; preds = %do.body2132
  %cmp2137 = icmp eq i64 %rc_in_pos.57, %in_size
  br i1 %cmp2137, label %if.then2139, label %if.end2141

if.then2139:                                      ; preds = %if.then2136
  store i32 29, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end2141:                                       ; preds = %if.then2136
  %shl2143 = shl nuw i32 %rc1.sroa.0.66, 8
  %shl2145 = shl i32 %rc1.sroa.500.66, 8
  %inc2146 = add i64 %rc_in_pos.57, 1
  %arrayidx2147 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.57
  %111 = load i8, ptr %arrayidx2147, align 1, !tbaa !14
  %conv2148 = zext i8 %111 to i32
  %or2149 = or disjoint i32 %shl2145, %conv2148
  br label %do.end2153

do.end2153:                                       ; preds = %if.end2141, %do.body2132
  %rc_in_pos.58 = phi i64 [ %inc2146, %if.end2141 ], [ %rc_in_pos.57, %do.body2132 ]
  %rc1.sroa.0.67 = phi i32 [ %shl2143, %if.end2141 ], [ %rc1.sroa.0.66, %do.body2132 ]
  %rc1.sroa.500.67 = phi i32 [ %or2149, %if.end2141 ], [ %rc1.sroa.500.66, %do.body2132 ]
  %shr2155 = lshr i32 %rc1.sroa.0.67, 11
  %high2157 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26728
  %idxprom2158 = zext i32 %symbol.39 to i64
  %arrayidx2159 = getelementptr inbounds nuw i16, ptr %high2157, i64 %idxprom2158
  %112 = load i16, ptr %arrayidx2159, align 2, !tbaa !40
  %conv2160 = zext i16 %112 to i32
  %mul2161 = mul i32 %shr2155, %conv2160
  %cmp2163 = icmp ult i32 %rc1.sroa.500.67, %mul2161
  br i1 %cmp2163, label %do.body2166, label %do.body2186

do.body2166:                                      ; preds = %do.end2153
  %sub2173 = sub nsw i32 2048, %conv2160
  %shr2174 = lshr i32 %sub2173, 5
  %113 = trunc i32 %shr2174 to i16
  %conv2181 = add i16 %112, %113
  store i16 %conv2181, ptr %arrayidx2159, align 2, !tbaa !40
  %shl2184 = shl i32 %symbol.39, 1
  br label %do.body2213

do.body2186:                                      ; preds = %do.end2153
  %sub2188 = sub i32 %rc1.sroa.0.67, %mul2161
  %sub2190 = sub nuw i32 %rc1.sroa.500.67, %mul2161
  %shr2196 = lshr i16 %112, 5
  %sub2202 = sub i16 %112, %shr2196
  store i16 %sub2202, ptr %arrayidx2159, align 2, !tbaa !40
  %shl2206 = shl i32 %symbol.39, 1
  %add2207 = or disjoint i32 %shl2206, 1
  br label %do.body2213

do.body2213:                                      ; preds = %do.body2186, %do.body2166, %if.end
  %dict.sroa.37.31 = phi i64 [ %dict.sroa.37.30, %do.body2166 ], [ %dict.sroa.37.30, %do.body2186 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.31 = phi i64 [ %dict.sroa.12.30, %do.body2166 ], [ %dict.sroa.12.30, %do.body2186 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.31 = phi i32 [ %len.30, %do.body2166 ], [ %len.30, %do.body2186 ], [ %15, %if.end ]
  %rep0.31 = phi i32 [ %rep0.30, %do.body2166 ], [ %rep0.30, %do.body2186 ], [ %6, %if.end ]
  %rep1.31 = phi i32 [ %rep1.30, %do.body2166 ], [ %rep1.30, %do.body2186 ], [ %7, %if.end ]
  %rep2.31 = phi i32 [ %rep2.30, %do.body2166 ], [ %rep2.30, %do.body2186 ], [ %8, %if.end ]
  %rep3.31 = phi i32 [ %rep3.30, %do.body2166 ], [ %rep3.30, %do.body2186 ], [ %9, %if.end ]
  %state.31 = phi i32 [ %state.30, %do.body2166 ], [ %state.30, %do.body2186 ], [ %5, %if.end ]
  %probs.31 = phi ptr [ %probs.30, %do.body2166 ], [ %probs.30, %do.body2186 ], [ %11, %if.end ]
  %symbol.40 = phi i32 [ %shl2184, %do.body2166 ], [ %add2207, %do.body2186 ], [ %12, %if.end ]
  %limit.31 = phi i32 [ %limit.30, %do.body2166 ], [ %limit.30, %do.body2186 ], [ %13, %if.end ]
  %offset.38 = phi i32 [ %offset.37, %do.body2166 ], [ %offset.37, %do.body2186 ], [ %14, %if.end ]
  %rc_in_pos.59 = phi i64 [ %rc_in_pos.58, %do.body2166 ], [ %rc_in_pos.58, %do.body2186 ], [ %4, %if.end ]
  %rc1.sroa.0.68 = phi i32 [ %mul2161, %do.body2166 ], [ %sub2188, %do.body2186 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.68 = phi i32 [ %rc1.sroa.500.67, %do.body2166 ], [ %sub2190, %do.body2186 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp2215 = icmp ult i32 %rc1.sroa.0.68, 16777216
  br i1 %cmp2215, label %if.then2217, label %do.end2234

if.then2217:                                      ; preds = %do.body2213
  %cmp2218 = icmp eq i64 %rc_in_pos.59, %in_size
  br i1 %cmp2218, label %if.then2220, label %if.end2222

if.then2220:                                      ; preds = %if.then2217
  store i32 30, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end2222:                                       ; preds = %if.then2217
  %shl2224 = shl nuw i32 %rc1.sroa.0.68, 8
  %shl2226 = shl i32 %rc1.sroa.500.68, 8
  %inc2227 = add i64 %rc_in_pos.59, 1
  %arrayidx2228 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.59
  %114 = load i8, ptr %arrayidx2228, align 1, !tbaa !14
  %conv2229 = zext i8 %114 to i32
  %or2230 = or disjoint i32 %shl2226, %conv2229
  br label %do.end2234

do.end2234:                                       ; preds = %if.end2222, %do.body2213
  %rc_in_pos.60 = phi i64 [ %inc2227, %if.end2222 ], [ %rc_in_pos.59, %do.body2213 ]
  %rc1.sroa.0.69 = phi i32 [ %shl2224, %if.end2222 ], [ %rc1.sroa.0.68, %do.body2213 ]
  %rc1.sroa.500.69 = phi i32 [ %or2230, %if.end2222 ], [ %rc1.sroa.500.68, %do.body2213 ]
  %shr2236 = lshr i32 %rc1.sroa.0.69, 11
  %high2238 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26728
  %idxprom2239 = zext i32 %symbol.40 to i64
  %arrayidx2240 = getelementptr inbounds nuw i16, ptr %high2238, i64 %idxprom2239
  %115 = load i16, ptr %arrayidx2240, align 2, !tbaa !40
  %conv2241 = zext i16 %115 to i32
  %mul2242 = mul i32 %shr2236, %conv2241
  %cmp2244 = icmp ult i32 %rc1.sroa.500.69, %mul2242
  br i1 %cmp2244, label %do.body2247, label %do.body2267

do.body2247:                                      ; preds = %do.end2234
  %sub2254 = sub nsw i32 2048, %conv2241
  %shr2255 = lshr i32 %sub2254, 5
  %116 = trunc i32 %shr2255 to i16
  %conv2262 = add i16 %115, %116
  store i16 %conv2262, ptr %arrayidx2240, align 2, !tbaa !40
  %shl2265 = shl i32 %symbol.40, 1
  br label %do.body2294

do.body2267:                                      ; preds = %do.end2234
  %sub2269 = sub i32 %rc1.sroa.0.69, %mul2242
  %sub2271 = sub nuw i32 %rc1.sroa.500.69, %mul2242
  %shr2277 = lshr i16 %115, 5
  %sub2283 = sub i16 %115, %shr2277
  store i16 %sub2283, ptr %arrayidx2240, align 2, !tbaa !40
  %shl2287 = shl i32 %symbol.40, 1
  %add2288 = or disjoint i32 %shl2287, 1
  br label %do.body2294

do.body2294:                                      ; preds = %do.body2267, %do.body2247, %if.end
  %dict.sroa.37.32 = phi i64 [ %dict.sroa.37.31, %do.body2247 ], [ %dict.sroa.37.31, %do.body2267 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.32 = phi i64 [ %dict.sroa.12.31, %do.body2247 ], [ %dict.sroa.12.31, %do.body2267 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.32 = phi i32 [ %len.31, %do.body2247 ], [ %len.31, %do.body2267 ], [ %15, %if.end ]
  %rep0.32 = phi i32 [ %rep0.31, %do.body2247 ], [ %rep0.31, %do.body2267 ], [ %6, %if.end ]
  %rep1.32 = phi i32 [ %rep1.31, %do.body2247 ], [ %rep1.31, %do.body2267 ], [ %7, %if.end ]
  %rep2.32 = phi i32 [ %rep2.31, %do.body2247 ], [ %rep2.31, %do.body2267 ], [ %8, %if.end ]
  %rep3.32 = phi i32 [ %rep3.31, %do.body2247 ], [ %rep3.31, %do.body2267 ], [ %9, %if.end ]
  %state.32 = phi i32 [ %state.31, %do.body2247 ], [ %state.31, %do.body2267 ], [ %5, %if.end ]
  %probs.32 = phi ptr [ %probs.31, %do.body2247 ], [ %probs.31, %do.body2267 ], [ %11, %if.end ]
  %symbol.41 = phi i32 [ %shl2265, %do.body2247 ], [ %add2288, %do.body2267 ], [ %12, %if.end ]
  %limit.32 = phi i32 [ %limit.31, %do.body2247 ], [ %limit.31, %do.body2267 ], [ %13, %if.end ]
  %offset.39 = phi i32 [ %offset.38, %do.body2247 ], [ %offset.38, %do.body2267 ], [ %14, %if.end ]
  %rc_in_pos.61 = phi i64 [ %rc_in_pos.60, %do.body2247 ], [ %rc_in_pos.60, %do.body2267 ], [ %4, %if.end ]
  %rc1.sroa.0.70 = phi i32 [ %mul2242, %do.body2247 ], [ %sub2269, %do.body2267 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.70 = phi i32 [ %rc1.sroa.500.69, %do.body2247 ], [ %sub2271, %do.body2267 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp2296 = icmp ult i32 %rc1.sroa.0.70, 16777216
  br i1 %cmp2296, label %if.then2298, label %do.end2315

if.then2298:                                      ; preds = %do.body2294
  %cmp2299 = icmp eq i64 %rc_in_pos.61, %in_size
  br i1 %cmp2299, label %if.then2301, label %if.end2303

if.then2301:                                      ; preds = %if.then2298
  store i32 31, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end2303:                                       ; preds = %if.then2298
  %shl2305 = shl nuw i32 %rc1.sroa.0.70, 8
  %shl2307 = shl i32 %rc1.sroa.500.70, 8
  %inc2308 = add i64 %rc_in_pos.61, 1
  %arrayidx2309 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.61
  %117 = load i8, ptr %arrayidx2309, align 1, !tbaa !14
  %conv2310 = zext i8 %117 to i32
  %or2311 = or disjoint i32 %shl2307, %conv2310
  br label %do.end2315

do.end2315:                                       ; preds = %if.end2303, %do.body2294
  %rc_in_pos.62 = phi i64 [ %inc2308, %if.end2303 ], [ %rc_in_pos.61, %do.body2294 ]
  %rc1.sroa.0.71 = phi i32 [ %shl2305, %if.end2303 ], [ %rc1.sroa.0.70, %do.body2294 ]
  %rc1.sroa.500.71 = phi i32 [ %or2311, %if.end2303 ], [ %rc1.sroa.500.70, %do.body2294 ]
  %shr2317 = lshr i32 %rc1.sroa.0.71, 11
  %high2319 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26728
  %idxprom2320 = zext i32 %symbol.41 to i64
  %arrayidx2321 = getelementptr inbounds nuw i16, ptr %high2319, i64 %idxprom2320
  %118 = load i16, ptr %arrayidx2321, align 2, !tbaa !40
  %conv2322 = zext i16 %118 to i32
  %mul2323 = mul i32 %shr2317, %conv2322
  %cmp2325 = icmp ult i32 %rc1.sroa.500.71, %mul2323
  br i1 %cmp2325, label %do.body2328, label %do.body2348

do.body2328:                                      ; preds = %do.end2315
  %sub2335 = sub nsw i32 2048, %conv2322
  %shr2336 = lshr i32 %sub2335, 5
  %119 = trunc i32 %shr2336 to i16
  %conv2343 = add i16 %118, %119
  store i16 %conv2343, ptr %arrayidx2321, align 2, !tbaa !40
  %shl2346 = shl i32 %symbol.41, 1
  br label %do.body2375

do.body2348:                                      ; preds = %do.end2315
  %sub2350 = sub i32 %rc1.sroa.0.71, %mul2323
  %sub2352 = sub nuw i32 %rc1.sroa.500.71, %mul2323
  %shr2358 = lshr i16 %118, 5
  %sub2364 = sub i16 %118, %shr2358
  store i16 %sub2364, ptr %arrayidx2321, align 2, !tbaa !40
  %shl2368 = shl i32 %symbol.41, 1
  %add2369 = or disjoint i32 %shl2368, 1
  br label %do.body2375

do.body2375:                                      ; preds = %do.body2348, %do.body2328, %if.end
  %dict.sroa.37.33 = phi i64 [ %dict.sroa.37.32, %do.body2328 ], [ %dict.sroa.37.32, %do.body2348 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.33 = phi i64 [ %dict.sroa.12.32, %do.body2328 ], [ %dict.sroa.12.32, %do.body2348 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.33 = phi i32 [ %len.32, %do.body2328 ], [ %len.32, %do.body2348 ], [ %15, %if.end ]
  %rep0.33 = phi i32 [ %rep0.32, %do.body2328 ], [ %rep0.32, %do.body2348 ], [ %6, %if.end ]
  %rep1.33 = phi i32 [ %rep1.32, %do.body2328 ], [ %rep1.32, %do.body2348 ], [ %7, %if.end ]
  %rep2.33 = phi i32 [ %rep2.32, %do.body2328 ], [ %rep2.32, %do.body2348 ], [ %8, %if.end ]
  %rep3.33 = phi i32 [ %rep3.32, %do.body2328 ], [ %rep3.32, %do.body2348 ], [ %9, %if.end ]
  %state.33 = phi i32 [ %state.32, %do.body2328 ], [ %state.32, %do.body2348 ], [ %5, %if.end ]
  %probs.33 = phi ptr [ %probs.32, %do.body2328 ], [ %probs.32, %do.body2348 ], [ %11, %if.end ]
  %symbol.42 = phi i32 [ %shl2346, %do.body2328 ], [ %add2369, %do.body2348 ], [ %12, %if.end ]
  %limit.33 = phi i32 [ %limit.32, %do.body2328 ], [ %limit.32, %do.body2348 ], [ %13, %if.end ]
  %offset.40 = phi i32 [ %offset.39, %do.body2328 ], [ %offset.39, %do.body2348 ], [ %14, %if.end ]
  %rc_in_pos.63 = phi i64 [ %rc_in_pos.62, %do.body2328 ], [ %rc_in_pos.62, %do.body2348 ], [ %4, %if.end ]
  %rc1.sroa.0.72 = phi i32 [ %mul2323, %do.body2328 ], [ %sub2350, %do.body2348 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.72 = phi i32 [ %rc1.sroa.500.71, %do.body2328 ], [ %sub2352, %do.body2348 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp2377 = icmp ult i32 %rc1.sroa.0.72, 16777216
  br i1 %cmp2377, label %if.then2379, label %do.end2396

if.then2379:                                      ; preds = %do.body2375
  %cmp2380 = icmp eq i64 %rc_in_pos.63, %in_size
  br i1 %cmp2380, label %if.then2382, label %if.end2384

if.then2382:                                      ; preds = %if.then2379
  store i32 32, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end2384:                                       ; preds = %if.then2379
  %shl2386 = shl nuw i32 %rc1.sroa.0.72, 8
  %shl2388 = shl i32 %rc1.sroa.500.72, 8
  %inc2389 = add i64 %rc_in_pos.63, 1
  %arrayidx2390 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.63
  %120 = load i8, ptr %arrayidx2390, align 1, !tbaa !14
  %conv2391 = zext i8 %120 to i32
  %or2392 = or disjoint i32 %shl2388, %conv2391
  br label %do.end2396

do.end2396:                                       ; preds = %if.end2384, %do.body2375
  %rc_in_pos.64 = phi i64 [ %inc2389, %if.end2384 ], [ %rc_in_pos.63, %do.body2375 ]
  %rc1.sroa.0.73 = phi i32 [ %shl2386, %if.end2384 ], [ %rc1.sroa.0.72, %do.body2375 ]
  %rc1.sroa.500.73 = phi i32 [ %or2392, %if.end2384 ], [ %rc1.sroa.500.72, %do.body2375 ]
  %shr2398 = lshr i32 %rc1.sroa.0.73, 11
  %high2400 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26728
  %idxprom2401 = zext i32 %symbol.42 to i64
  %arrayidx2402 = getelementptr inbounds nuw i16, ptr %high2400, i64 %idxprom2401
  %121 = load i16, ptr %arrayidx2402, align 2, !tbaa !40
  %conv2403 = zext i16 %121 to i32
  %mul2404 = mul i32 %shr2398, %conv2403
  %cmp2406 = icmp ult i32 %rc1.sroa.500.73, %mul2404
  br i1 %cmp2406, label %do.body2409, label %do.body2429

do.body2409:                                      ; preds = %do.end2396
  %sub2416 = sub nsw i32 2048, %conv2403
  %shr2417 = lshr i32 %sub2416, 5
  %122 = trunc i32 %shr2417 to i16
  %conv2424 = add i16 %121, %122
  store i16 %conv2424, ptr %arrayidx2402, align 2, !tbaa !40
  %shl2427 = shl i32 %symbol.42, 1
  br label %do.body2456

do.body2429:                                      ; preds = %do.end2396
  %sub2431 = sub i32 %rc1.sroa.0.73, %mul2404
  %sub2433 = sub nuw i32 %rc1.sroa.500.73, %mul2404
  %shr2439 = lshr i16 %121, 5
  %sub2445 = sub i16 %121, %shr2439
  store i16 %sub2445, ptr %arrayidx2402, align 2, !tbaa !40
  %shl2449 = shl i32 %symbol.42, 1
  %add2450 = or disjoint i32 %shl2449, 1
  br label %do.body2456

do.body2456:                                      ; preds = %do.body2429, %do.body2409, %if.end
  %dict.sroa.37.34 = phi i64 [ %dict.sroa.37.33, %do.body2409 ], [ %dict.sroa.37.33, %do.body2429 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.34 = phi i64 [ %dict.sroa.12.33, %do.body2409 ], [ %dict.sroa.12.33, %do.body2429 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.34 = phi i32 [ %len.33, %do.body2409 ], [ %len.33, %do.body2429 ], [ %15, %if.end ]
  %rep0.34 = phi i32 [ %rep0.33, %do.body2409 ], [ %rep0.33, %do.body2429 ], [ %6, %if.end ]
  %rep1.34 = phi i32 [ %rep1.33, %do.body2409 ], [ %rep1.33, %do.body2429 ], [ %7, %if.end ]
  %rep2.34 = phi i32 [ %rep2.33, %do.body2409 ], [ %rep2.33, %do.body2429 ], [ %8, %if.end ]
  %rep3.34 = phi i32 [ %rep3.33, %do.body2409 ], [ %rep3.33, %do.body2429 ], [ %9, %if.end ]
  %state.34 = phi i32 [ %state.33, %do.body2409 ], [ %state.33, %do.body2429 ], [ %5, %if.end ]
  %probs.34 = phi ptr [ %probs.33, %do.body2409 ], [ %probs.33, %do.body2429 ], [ %11, %if.end ]
  %symbol.43 = phi i32 [ %shl2427, %do.body2409 ], [ %add2450, %do.body2429 ], [ %12, %if.end ]
  %limit.34 = phi i32 [ %limit.33, %do.body2409 ], [ %limit.33, %do.body2429 ], [ %13, %if.end ]
  %offset.41 = phi i32 [ %offset.40, %do.body2409 ], [ %offset.40, %do.body2429 ], [ %14, %if.end ]
  %rc_in_pos.65 = phi i64 [ %rc_in_pos.64, %do.body2409 ], [ %rc_in_pos.64, %do.body2429 ], [ %4, %if.end ]
  %rc1.sroa.0.74 = phi i32 [ %mul2404, %do.body2409 ], [ %sub2431, %do.body2429 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.74 = phi i32 [ %rc1.sroa.500.73, %do.body2409 ], [ %sub2433, %do.body2429 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp2458 = icmp ult i32 %rc1.sroa.0.74, 16777216
  br i1 %cmp2458, label %if.then2460, label %do.end2477

if.then2460:                                      ; preds = %do.body2456
  %cmp2461 = icmp eq i64 %rc_in_pos.65, %in_size
  br i1 %cmp2461, label %if.then2463, label %if.end2465

if.then2463:                                      ; preds = %if.then2460
  store i32 33, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end2465:                                       ; preds = %if.then2460
  %shl2467 = shl nuw i32 %rc1.sroa.0.74, 8
  %shl2469 = shl i32 %rc1.sroa.500.74, 8
  %inc2470 = add i64 %rc_in_pos.65, 1
  %arrayidx2471 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.65
  %123 = load i8, ptr %arrayidx2471, align 1, !tbaa !14
  %conv2472 = zext i8 %123 to i32
  %or2473 = or disjoint i32 %shl2469, %conv2472
  br label %do.end2477

do.end2477:                                       ; preds = %if.end2465, %do.body2456
  %rc_in_pos.66 = phi i64 [ %inc2470, %if.end2465 ], [ %rc_in_pos.65, %do.body2456 ]
  %rc1.sroa.0.75 = phi i32 [ %shl2467, %if.end2465 ], [ %rc1.sroa.0.74, %do.body2456 ]
  %rc1.sroa.500.75 = phi i32 [ %or2473, %if.end2465 ], [ %rc1.sroa.500.74, %do.body2456 ]
  %shr2479 = lshr i32 %rc1.sroa.0.75, 11
  %high2481 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26728
  %idxprom2482 = zext i32 %symbol.43 to i64
  %arrayidx2483 = getelementptr inbounds nuw i16, ptr %high2481, i64 %idxprom2482
  %124 = load i16, ptr %arrayidx2483, align 2, !tbaa !40
  %conv2484 = zext i16 %124 to i32
  %mul2485 = mul i32 %shr2479, %conv2484
  %cmp2487 = icmp ult i32 %rc1.sroa.500.75, %mul2485
  br i1 %cmp2487, label %do.body2490, label %do.body2510

do.body2490:                                      ; preds = %do.end2477
  %sub2497 = sub nsw i32 2048, %conv2484
  %shr2498 = lshr i32 %sub2497, 5
  %125 = trunc i32 %shr2498 to i16
  %conv2505 = add i16 %124, %125
  store i16 %conv2505, ptr %arrayidx2483, align 2, !tbaa !40
  %shl2508 = shl i32 %symbol.43, 1
  br label %do.body2537

do.body2510:                                      ; preds = %do.end2477
  %sub2512 = sub i32 %rc1.sroa.0.75, %mul2485
  %sub2514 = sub nuw i32 %rc1.sroa.500.75, %mul2485
  %shr2520 = lshr i16 %124, 5
  %sub2526 = sub i16 %124, %shr2520
  store i16 %sub2526, ptr %arrayidx2483, align 2, !tbaa !40
  %shl2530 = shl i32 %symbol.43, 1
  %add2531 = or disjoint i32 %shl2530, 1
  br label %do.body2537

do.body2537:                                      ; preds = %do.body2510, %do.body2490, %if.end
  %dict.sroa.37.35 = phi i64 [ %dict.sroa.37.34, %do.body2490 ], [ %dict.sroa.37.34, %do.body2510 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.35 = phi i64 [ %dict.sroa.12.34, %do.body2490 ], [ %dict.sroa.12.34, %do.body2510 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.35 = phi i32 [ %len.34, %do.body2490 ], [ %len.34, %do.body2510 ], [ %15, %if.end ]
  %rep0.35 = phi i32 [ %rep0.34, %do.body2490 ], [ %rep0.34, %do.body2510 ], [ %6, %if.end ]
  %rep1.35 = phi i32 [ %rep1.34, %do.body2490 ], [ %rep1.34, %do.body2510 ], [ %7, %if.end ]
  %rep2.35 = phi i32 [ %rep2.34, %do.body2490 ], [ %rep2.34, %do.body2510 ], [ %8, %if.end ]
  %rep3.35 = phi i32 [ %rep3.34, %do.body2490 ], [ %rep3.34, %do.body2510 ], [ %9, %if.end ]
  %state.35 = phi i32 [ %state.34, %do.body2490 ], [ %state.34, %do.body2510 ], [ %5, %if.end ]
  %probs.35 = phi ptr [ %probs.34, %do.body2490 ], [ %probs.34, %do.body2510 ], [ %11, %if.end ]
  %symbol.44 = phi i32 [ %shl2508, %do.body2490 ], [ %add2531, %do.body2510 ], [ %12, %if.end ]
  %limit.35 = phi i32 [ %limit.34, %do.body2490 ], [ %limit.34, %do.body2510 ], [ %13, %if.end ]
  %offset.42 = phi i32 [ %offset.41, %do.body2490 ], [ %offset.41, %do.body2510 ], [ %14, %if.end ]
  %rc_in_pos.67 = phi i64 [ %rc_in_pos.66, %do.body2490 ], [ %rc_in_pos.66, %do.body2510 ], [ %4, %if.end ]
  %rc1.sroa.0.76 = phi i32 [ %mul2485, %do.body2490 ], [ %sub2512, %do.body2510 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.76 = phi i32 [ %rc1.sroa.500.75, %do.body2490 ], [ %sub2514, %do.body2510 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp2539 = icmp ult i32 %rc1.sroa.0.76, 16777216
  br i1 %cmp2539, label %if.then2541, label %do.end2558

if.then2541:                                      ; preds = %do.body2537
  %cmp2542 = icmp eq i64 %rc_in_pos.67, %in_size
  br i1 %cmp2542, label %if.then2544, label %if.end2546

if.then2544:                                      ; preds = %if.then2541
  store i32 34, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end2546:                                       ; preds = %if.then2541
  %shl2548 = shl nuw i32 %rc1.sroa.0.76, 8
  %shl2550 = shl i32 %rc1.sroa.500.76, 8
  %inc2551 = add i64 %rc_in_pos.67, 1
  %arrayidx2552 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.67
  %126 = load i8, ptr %arrayidx2552, align 1, !tbaa !14
  %conv2553 = zext i8 %126 to i32
  %or2554 = or disjoint i32 %shl2550, %conv2553
  br label %do.end2558

do.end2558:                                       ; preds = %if.end2546, %do.body2537
  %rc_in_pos.68 = phi i64 [ %inc2551, %if.end2546 ], [ %rc_in_pos.67, %do.body2537 ]
  %rc1.sroa.0.77 = phi i32 [ %shl2548, %if.end2546 ], [ %rc1.sroa.0.76, %do.body2537 ]
  %rc1.sroa.500.77 = phi i32 [ %or2554, %if.end2546 ], [ %rc1.sroa.500.76, %do.body2537 ]
  %shr2560 = lshr i32 %rc1.sroa.0.77, 11
  %high2562 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26728
  %idxprom2563 = zext i32 %symbol.44 to i64
  %arrayidx2564 = getelementptr inbounds nuw i16, ptr %high2562, i64 %idxprom2563
  %127 = load i16, ptr %arrayidx2564, align 2, !tbaa !40
  %conv2565 = zext i16 %127 to i32
  %mul2566 = mul i32 %shr2560, %conv2565
  %cmp2568 = icmp ult i32 %rc1.sroa.500.77, %mul2566
  br i1 %cmp2568, label %do.body2571, label %do.body2591

do.body2571:                                      ; preds = %do.end2558
  %sub2578 = sub nsw i32 2048, %conv2565
  %shr2579 = lshr i32 %sub2578, 5
  %128 = trunc i32 %shr2579 to i16
  %conv2586 = add i16 %127, %128
  store i16 %conv2586, ptr %arrayidx2564, align 2, !tbaa !40
  %shl2589 = shl i32 %symbol.44, 1
  br label %do.body2618

do.body2591:                                      ; preds = %do.end2558
  %sub2593 = sub i32 %rc1.sroa.0.77, %mul2566
  %sub2595 = sub nuw i32 %rc1.sroa.500.77, %mul2566
  %shr2601 = lshr i16 %127, 5
  %sub2607 = sub i16 %127, %shr2601
  store i16 %sub2607, ptr %arrayidx2564, align 2, !tbaa !40
  %shl2611 = shl i32 %symbol.44, 1
  %add2612 = or disjoint i32 %shl2611, 1
  br label %do.body2618

do.body2618:                                      ; preds = %do.body2591, %do.body2571, %if.end
  %dict.sroa.37.36 = phi i64 [ %dict.sroa.37.35, %do.body2571 ], [ %dict.sroa.37.35, %do.body2591 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.36 = phi i64 [ %dict.sroa.12.35, %do.body2571 ], [ %dict.sroa.12.35, %do.body2591 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.36 = phi i32 [ %len.35, %do.body2571 ], [ %len.35, %do.body2591 ], [ %15, %if.end ]
  %rep0.36 = phi i32 [ %rep0.35, %do.body2571 ], [ %rep0.35, %do.body2591 ], [ %6, %if.end ]
  %rep1.36 = phi i32 [ %rep1.35, %do.body2571 ], [ %rep1.35, %do.body2591 ], [ %7, %if.end ]
  %rep2.36 = phi i32 [ %rep2.35, %do.body2571 ], [ %rep2.35, %do.body2591 ], [ %8, %if.end ]
  %rep3.36 = phi i32 [ %rep3.35, %do.body2571 ], [ %rep3.35, %do.body2591 ], [ %9, %if.end ]
  %state.36 = phi i32 [ %state.35, %do.body2571 ], [ %state.35, %do.body2591 ], [ %5, %if.end ]
  %probs.36 = phi ptr [ %probs.35, %do.body2571 ], [ %probs.35, %do.body2591 ], [ %11, %if.end ]
  %symbol.45 = phi i32 [ %shl2589, %do.body2571 ], [ %add2612, %do.body2591 ], [ %12, %if.end ]
  %limit.36 = phi i32 [ %limit.35, %do.body2571 ], [ %limit.35, %do.body2591 ], [ %13, %if.end ]
  %offset.43 = phi i32 [ %offset.42, %do.body2571 ], [ %offset.42, %do.body2591 ], [ %14, %if.end ]
  %rc_in_pos.69 = phi i64 [ %rc_in_pos.68, %do.body2571 ], [ %rc_in_pos.68, %do.body2591 ], [ %4, %if.end ]
  %rc1.sroa.0.78 = phi i32 [ %mul2566, %do.body2571 ], [ %sub2593, %do.body2591 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.78 = phi i32 [ %rc1.sroa.500.77, %do.body2571 ], [ %sub2595, %do.body2591 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp2620 = icmp ult i32 %rc1.sroa.0.78, 16777216
  br i1 %cmp2620, label %if.then2622, label %do.end2639

if.then2622:                                      ; preds = %do.body2618
  %cmp2623 = icmp eq i64 %rc_in_pos.69, %in_size
  br i1 %cmp2623, label %if.then2625, label %if.end2627

if.then2625:                                      ; preds = %if.then2622
  store i32 35, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end2627:                                       ; preds = %if.then2622
  %shl2629 = shl nuw i32 %rc1.sroa.0.78, 8
  %shl2631 = shl i32 %rc1.sroa.500.78, 8
  %inc2632 = add i64 %rc_in_pos.69, 1
  %arrayidx2633 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.69
  %129 = load i8, ptr %arrayidx2633, align 1, !tbaa !14
  %conv2634 = zext i8 %129 to i32
  %or2635 = or disjoint i32 %shl2631, %conv2634
  br label %do.end2639

do.end2639:                                       ; preds = %if.end2627, %do.body2618
  %rc_in_pos.70 = phi i64 [ %inc2632, %if.end2627 ], [ %rc_in_pos.69, %do.body2618 ]
  %rc1.sroa.0.79 = phi i32 [ %shl2629, %if.end2627 ], [ %rc1.sroa.0.78, %do.body2618 ]
  %rc1.sroa.500.79 = phi i32 [ %or2635, %if.end2627 ], [ %rc1.sroa.500.78, %do.body2618 ]
  %shr2641 = lshr i32 %rc1.sroa.0.79, 11
  %high2643 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26728
  %idxprom2644 = zext i32 %symbol.45 to i64
  %arrayidx2645 = getelementptr inbounds nuw i16, ptr %high2643, i64 %idxprom2644
  %130 = load i16, ptr %arrayidx2645, align 2, !tbaa !40
  %conv2646 = zext i16 %130 to i32
  %mul2647 = mul i32 %shr2641, %conv2646
  %cmp2649 = icmp ult i32 %rc1.sroa.500.79, %mul2647
  br i1 %cmp2649, label %do.body2652, label %do.body2672

do.body2652:                                      ; preds = %do.end2639
  %sub2659 = sub nsw i32 2048, %conv2646
  %shr2660 = lshr i32 %sub2659, 5
  %131 = trunc i32 %shr2660 to i16
  %conv2667 = add i16 %130, %131
  %shl2670 = shl i32 %symbol.45, 1
  br label %do.end2696

do.body2672:                                      ; preds = %do.end2639
  %sub2674 = sub i32 %rc1.sroa.0.79, %mul2647
  %sub2676 = sub nuw i32 %rc1.sroa.500.79, %mul2647
  %shr2682 = lshr i16 %130, 5
  %sub2688 = sub i16 %130, %shr2682
  %shl2692 = shl i32 %symbol.45, 1
  %add2693 = or disjoint i32 %shl2692, 1
  br label %do.end2696

do.end2696:                                       ; preds = %do.body2672, %do.body2652
  %sub2688.sink = phi i16 [ %conv2667, %do.body2652 ], [ %sub2688, %do.body2672 ]
  %symbol.46 = phi i32 [ %shl2670, %do.body2652 ], [ %add2693, %do.body2672 ]
  %rc1.sroa.0.80 = phi i32 [ %mul2647, %do.body2652 ], [ %sub2674, %do.body2672 ]
  %rc1.sroa.500.80 = phi i32 [ %rc1.sroa.500.79, %do.body2652 ], [ %sub2676, %do.body2672 ]
  store i16 %sub2688.sink, ptr %arrayidx2645, align 2, !tbaa !40
  %add2700 = add i32 %symbol.46, -238
  br label %do.end2704

do.end2704:                                       ; preds = %do.end2696, %do.end2029, %do.end1692
  %dict.sroa.37.37 = phi i64 [ %dict.sroa.37.24, %do.end1692 ], [ %dict.sroa.37.28, %do.end2029 ], [ %dict.sroa.37.36, %do.end2696 ]
  %dict.sroa.12.37 = phi i64 [ %dict.sroa.12.24, %do.end1692 ], [ %dict.sroa.12.28, %do.end2029 ], [ %dict.sroa.12.36, %do.end2696 ]
  %len.37 = phi i32 [ %add1694, %do.end1692 ], [ %add2032, %do.end2029 ], [ %add2700, %do.end2696 ]
  %rep0.37 = phi i32 [ %rep0.24, %do.end1692 ], [ %rep0.28, %do.end2029 ], [ %rep0.36, %do.end2696 ]
  %rep1.37 = phi i32 [ %rep1.24, %do.end1692 ], [ %rep1.28, %do.end2029 ], [ %rep1.36, %do.end2696 ]
  %rep2.37 = phi i32 [ %rep2.24, %do.end1692 ], [ %rep2.28, %do.end2029 ], [ %rep2.36, %do.end2696 ]
  %rep3.37 = phi i32 [ %rep3.24, %do.end1692 ], [ %rep3.28, %do.end2029 ], [ %rep3.36, %do.end2696 ]
  %state.37 = phi i32 [ %state.24, %do.end1692 ], [ %state.28, %do.end2029 ], [ %state.36, %do.end2696 ]
  %limit.37 = phi i32 [ %limit.24, %do.end1692 ], [ %limit.28, %do.end2029 ], [ %limit.36, %do.end2696 ]
  %offset.44 = phi i32 [ %offset.31, %do.end1692 ], [ %offset.35, %do.end2029 ], [ %offset.43, %do.end2696 ]
  %rc_in_pos.71 = phi i64 [ %rc_in_pos.46, %do.end1692 ], [ %rc_in_pos.54, %do.end2029 ], [ %rc_in_pos.70, %do.end2696 ]
  %rc1.sroa.0.81 = phi i32 [ %rc1.sroa.0.54, %do.end1692 ], [ %rc1.sroa.0.63, %do.end2029 ], [ %rc1.sroa.0.80, %do.end2696 ]
  %rc1.sroa.500.81 = phi i32 [ %rc1.sroa.500.54, %do.end1692 ], [ %rc1.sroa.500.63, %do.end2029 ], [ %rc1.sroa.500.80, %do.end2696 ]
  %pos_slot = getelementptr inbounds nuw i8, ptr %pcoder, i64 25440
  %132 = tail call i32 @llvm.umin.i32(i32 %len.37, i32 5)
  %cond2708 = add nsw i32 %132, -2
  %idxprom2709 = zext i32 %cond2708 to i64
  %arrayidx2710 = getelementptr inbounds nuw [64 x i16], ptr %pos_slot, i64 %idxprom2709
  br label %do.body2714

do.body2714:                                      ; preds = %do.end2704, %if.end
  %dict.sroa.37.38 = phi i64 [ %dict.sroa.37.37, %do.end2704 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.38 = phi i64 [ %dict.sroa.12.37, %do.end2704 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.38 = phi i32 [ %len.37, %do.end2704 ], [ %15, %if.end ]
  %rep0.38 = phi i32 [ %rep0.37, %do.end2704 ], [ %6, %if.end ]
  %rep1.38 = phi i32 [ %rep1.37, %do.end2704 ], [ %7, %if.end ]
  %rep2.38 = phi i32 [ %rep2.37, %do.end2704 ], [ %8, %if.end ]
  %rep3.38 = phi i32 [ %rep3.37, %do.end2704 ], [ %9, %if.end ]
  %state.38 = phi i32 [ %state.37, %do.end2704 ], [ %5, %if.end ]
  %probs.37 = phi ptr [ %arrayidx2710, %do.end2704 ], [ %11, %if.end ]
  %symbol.47 = phi i32 [ 1, %do.end2704 ], [ %12, %if.end ]
  %limit.38 = phi i32 [ %limit.37, %do.end2704 ], [ %13, %if.end ]
  %offset.45 = phi i32 [ %offset.44, %do.end2704 ], [ %14, %if.end ]
  %rc_in_pos.72 = phi i64 [ %rc_in_pos.71, %do.end2704 ], [ %4, %if.end ]
  %rc1.sroa.0.82 = phi i32 [ %rc1.sroa.0.81, %do.end2704 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.82 = phi i32 [ %rc1.sroa.500.81, %do.end2704 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp2716 = icmp ult i32 %rc1.sroa.0.82, 16777216
  br i1 %cmp2716, label %if.then2718, label %do.end2735

if.then2718:                                      ; preds = %do.body2714
  %cmp2719 = icmp eq i64 %rc_in_pos.72, %in_size
  br i1 %cmp2719, label %if.then2721, label %if.end2723

if.then2721:                                      ; preds = %if.then2718
  store i32 36, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end2723:                                       ; preds = %if.then2718
  %shl2725 = shl nuw i32 %rc1.sroa.0.82, 8
  %shl2727 = shl i32 %rc1.sroa.500.82, 8
  %inc2728 = add i64 %rc_in_pos.72, 1
  %arrayidx2729 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.72
  %133 = load i8, ptr %arrayidx2729, align 1, !tbaa !14
  %conv2730 = zext i8 %133 to i32
  %or2731 = or disjoint i32 %shl2727, %conv2730
  br label %do.end2735

do.end2735:                                       ; preds = %if.end2723, %do.body2714
  %rc_in_pos.73 = phi i64 [ %inc2728, %if.end2723 ], [ %rc_in_pos.72, %do.body2714 ]
  %rc1.sroa.0.83 = phi i32 [ %shl2725, %if.end2723 ], [ %rc1.sroa.0.82, %do.body2714 ]
  %rc1.sroa.500.83 = phi i32 [ %or2731, %if.end2723 ], [ %rc1.sroa.500.82, %do.body2714 ]
  %shr2737 = lshr i32 %rc1.sroa.0.83, 11
  %idxprom2738 = zext i32 %symbol.47 to i64
  %arrayidx2739 = getelementptr inbounds nuw i16, ptr %probs.37, i64 %idxprom2738
  %134 = load i16, ptr %arrayidx2739, align 2, !tbaa !40
  %conv2740 = zext i16 %134 to i32
  %mul2741 = mul i32 %shr2737, %conv2740
  %cmp2743 = icmp ult i32 %rc1.sroa.500.83, %mul2741
  br i1 %cmp2743, label %do.body2746, label %do.body2762

do.body2746:                                      ; preds = %do.end2735
  %sub2751 = sub nsw i32 2048, %conv2740
  %shr2752 = lshr i32 %sub2751, 5
  %135 = trunc i32 %shr2752 to i16
  %conv2757 = add i16 %134, %135
  store i16 %conv2757, ptr %arrayidx2739, align 2, !tbaa !40
  %shl2760 = shl i32 %symbol.47, 1
  br label %do.body2785

do.body2762:                                      ; preds = %do.end2735
  %sub2764 = sub i32 %rc1.sroa.0.83, %mul2741
  %sub2766 = sub nuw i32 %rc1.sroa.500.83, %mul2741
  %shr2770 = lshr i16 %134, 5
  %sub2774 = sub i16 %134, %shr2770
  store i16 %sub2774, ptr %arrayidx2739, align 2, !tbaa !40
  %shl2778 = shl i32 %symbol.47, 1
  %add2779 = or disjoint i32 %shl2778, 1
  br label %do.body2785

do.body2785:                                      ; preds = %do.body2762, %do.body2746, %if.end
  %dict.sroa.37.39 = phi i64 [ %dict.sroa.37.38, %do.body2746 ], [ %dict.sroa.37.38, %do.body2762 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.39 = phi i64 [ %dict.sroa.12.38, %do.body2746 ], [ %dict.sroa.12.38, %do.body2762 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.39 = phi i32 [ %len.38, %do.body2746 ], [ %len.38, %do.body2762 ], [ %15, %if.end ]
  %rep0.39 = phi i32 [ %rep0.38, %do.body2746 ], [ %rep0.38, %do.body2762 ], [ %6, %if.end ]
  %rep1.39 = phi i32 [ %rep1.38, %do.body2746 ], [ %rep1.38, %do.body2762 ], [ %7, %if.end ]
  %rep2.39 = phi i32 [ %rep2.38, %do.body2746 ], [ %rep2.38, %do.body2762 ], [ %8, %if.end ]
  %rep3.39 = phi i32 [ %rep3.38, %do.body2746 ], [ %rep3.38, %do.body2762 ], [ %9, %if.end ]
  %state.39 = phi i32 [ %state.38, %do.body2746 ], [ %state.38, %do.body2762 ], [ %5, %if.end ]
  %probs.38 = phi ptr [ %probs.37, %do.body2746 ], [ %probs.37, %do.body2762 ], [ %11, %if.end ]
  %symbol.48 = phi i32 [ %shl2760, %do.body2746 ], [ %add2779, %do.body2762 ], [ %12, %if.end ]
  %limit.39 = phi i32 [ %limit.38, %do.body2746 ], [ %limit.38, %do.body2762 ], [ %13, %if.end ]
  %offset.46 = phi i32 [ %offset.45, %do.body2746 ], [ %offset.45, %do.body2762 ], [ %14, %if.end ]
  %rc_in_pos.74 = phi i64 [ %rc_in_pos.73, %do.body2746 ], [ %rc_in_pos.73, %do.body2762 ], [ %4, %if.end ]
  %rc1.sroa.0.84 = phi i32 [ %mul2741, %do.body2746 ], [ %sub2764, %do.body2762 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.84 = phi i32 [ %rc1.sroa.500.83, %do.body2746 ], [ %sub2766, %do.body2762 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp2787 = icmp ult i32 %rc1.sroa.0.84, 16777216
  br i1 %cmp2787, label %if.then2789, label %do.end2806

if.then2789:                                      ; preds = %do.body2785
  %cmp2790 = icmp eq i64 %rc_in_pos.74, %in_size
  br i1 %cmp2790, label %if.then2792, label %if.end2794

if.then2792:                                      ; preds = %if.then2789
  store i32 37, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end2794:                                       ; preds = %if.then2789
  %shl2796 = shl nuw i32 %rc1.sroa.0.84, 8
  %shl2798 = shl i32 %rc1.sroa.500.84, 8
  %inc2799 = add i64 %rc_in_pos.74, 1
  %arrayidx2800 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.74
  %136 = load i8, ptr %arrayidx2800, align 1, !tbaa !14
  %conv2801 = zext i8 %136 to i32
  %or2802 = or disjoint i32 %shl2798, %conv2801
  br label %do.end2806

do.end2806:                                       ; preds = %if.end2794, %do.body2785
  %rc_in_pos.75 = phi i64 [ %inc2799, %if.end2794 ], [ %rc_in_pos.74, %do.body2785 ]
  %rc1.sroa.0.85 = phi i32 [ %shl2796, %if.end2794 ], [ %rc1.sroa.0.84, %do.body2785 ]
  %rc1.sroa.500.85 = phi i32 [ %or2802, %if.end2794 ], [ %rc1.sroa.500.84, %do.body2785 ]
  %shr2808 = lshr i32 %rc1.sroa.0.85, 11
  %idxprom2809 = zext i32 %symbol.48 to i64
  %arrayidx2810 = getelementptr inbounds nuw i16, ptr %probs.38, i64 %idxprom2809
  %137 = load i16, ptr %arrayidx2810, align 2, !tbaa !40
  %conv2811 = zext i16 %137 to i32
  %mul2812 = mul i32 %shr2808, %conv2811
  %cmp2814 = icmp ult i32 %rc1.sroa.500.85, %mul2812
  br i1 %cmp2814, label %do.body2817, label %do.body2833

do.body2817:                                      ; preds = %do.end2806
  %sub2822 = sub nsw i32 2048, %conv2811
  %shr2823 = lshr i32 %sub2822, 5
  %138 = trunc i32 %shr2823 to i16
  %conv2828 = add i16 %137, %138
  store i16 %conv2828, ptr %arrayidx2810, align 2, !tbaa !40
  %shl2831 = shl i32 %symbol.48, 1
  br label %do.body2856

do.body2833:                                      ; preds = %do.end2806
  %sub2835 = sub i32 %rc1.sroa.0.85, %mul2812
  %sub2837 = sub nuw i32 %rc1.sroa.500.85, %mul2812
  %shr2841 = lshr i16 %137, 5
  %sub2845 = sub i16 %137, %shr2841
  store i16 %sub2845, ptr %arrayidx2810, align 2, !tbaa !40
  %shl2849 = shl i32 %symbol.48, 1
  %add2850 = or disjoint i32 %shl2849, 1
  br label %do.body2856

do.body2856:                                      ; preds = %do.body2833, %do.body2817, %if.end
  %dict.sroa.37.40 = phi i64 [ %dict.sroa.37.39, %do.body2817 ], [ %dict.sroa.37.39, %do.body2833 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.40 = phi i64 [ %dict.sroa.12.39, %do.body2817 ], [ %dict.sroa.12.39, %do.body2833 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.40 = phi i32 [ %len.39, %do.body2817 ], [ %len.39, %do.body2833 ], [ %15, %if.end ]
  %rep0.40 = phi i32 [ %rep0.39, %do.body2817 ], [ %rep0.39, %do.body2833 ], [ %6, %if.end ]
  %rep1.40 = phi i32 [ %rep1.39, %do.body2817 ], [ %rep1.39, %do.body2833 ], [ %7, %if.end ]
  %rep2.40 = phi i32 [ %rep2.39, %do.body2817 ], [ %rep2.39, %do.body2833 ], [ %8, %if.end ]
  %rep3.40 = phi i32 [ %rep3.39, %do.body2817 ], [ %rep3.39, %do.body2833 ], [ %9, %if.end ]
  %state.40 = phi i32 [ %state.39, %do.body2817 ], [ %state.39, %do.body2833 ], [ %5, %if.end ]
  %probs.39 = phi ptr [ %probs.38, %do.body2817 ], [ %probs.38, %do.body2833 ], [ %11, %if.end ]
  %symbol.49 = phi i32 [ %shl2831, %do.body2817 ], [ %add2850, %do.body2833 ], [ %12, %if.end ]
  %limit.40 = phi i32 [ %limit.39, %do.body2817 ], [ %limit.39, %do.body2833 ], [ %13, %if.end ]
  %offset.47 = phi i32 [ %offset.46, %do.body2817 ], [ %offset.46, %do.body2833 ], [ %14, %if.end ]
  %rc_in_pos.76 = phi i64 [ %rc_in_pos.75, %do.body2817 ], [ %rc_in_pos.75, %do.body2833 ], [ %4, %if.end ]
  %rc1.sroa.0.86 = phi i32 [ %mul2812, %do.body2817 ], [ %sub2835, %do.body2833 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.86 = phi i32 [ %rc1.sroa.500.85, %do.body2817 ], [ %sub2837, %do.body2833 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp2858 = icmp ult i32 %rc1.sroa.0.86, 16777216
  br i1 %cmp2858, label %if.then2860, label %do.end2877

if.then2860:                                      ; preds = %do.body2856
  %cmp2861 = icmp eq i64 %rc_in_pos.76, %in_size
  br i1 %cmp2861, label %if.then2863, label %if.end2865

if.then2863:                                      ; preds = %if.then2860
  store i32 38, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end2865:                                       ; preds = %if.then2860
  %shl2867 = shl nuw i32 %rc1.sroa.0.86, 8
  %shl2869 = shl i32 %rc1.sroa.500.86, 8
  %inc2870 = add i64 %rc_in_pos.76, 1
  %arrayidx2871 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.76
  %139 = load i8, ptr %arrayidx2871, align 1, !tbaa !14
  %conv2872 = zext i8 %139 to i32
  %or2873 = or disjoint i32 %shl2869, %conv2872
  br label %do.end2877

do.end2877:                                       ; preds = %if.end2865, %do.body2856
  %rc_in_pos.77 = phi i64 [ %inc2870, %if.end2865 ], [ %rc_in_pos.76, %do.body2856 ]
  %rc1.sroa.0.87 = phi i32 [ %shl2867, %if.end2865 ], [ %rc1.sroa.0.86, %do.body2856 ]
  %rc1.sroa.500.87 = phi i32 [ %or2873, %if.end2865 ], [ %rc1.sroa.500.86, %do.body2856 ]
  %shr2879 = lshr i32 %rc1.sroa.0.87, 11
  %idxprom2880 = zext i32 %symbol.49 to i64
  %arrayidx2881 = getelementptr inbounds nuw i16, ptr %probs.39, i64 %idxprom2880
  %140 = load i16, ptr %arrayidx2881, align 2, !tbaa !40
  %conv2882 = zext i16 %140 to i32
  %mul2883 = mul i32 %shr2879, %conv2882
  %cmp2885 = icmp ult i32 %rc1.sroa.500.87, %mul2883
  br i1 %cmp2885, label %do.body2888, label %do.body2904

do.body2888:                                      ; preds = %do.end2877
  %sub2893 = sub nsw i32 2048, %conv2882
  %shr2894 = lshr i32 %sub2893, 5
  %141 = trunc i32 %shr2894 to i16
  %conv2899 = add i16 %140, %141
  store i16 %conv2899, ptr %arrayidx2881, align 2, !tbaa !40
  %shl2902 = shl i32 %symbol.49, 1
  br label %do.body2927

do.body2904:                                      ; preds = %do.end2877
  %sub2906 = sub i32 %rc1.sroa.0.87, %mul2883
  %sub2908 = sub nuw i32 %rc1.sroa.500.87, %mul2883
  %shr2912 = lshr i16 %140, 5
  %sub2916 = sub i16 %140, %shr2912
  store i16 %sub2916, ptr %arrayidx2881, align 2, !tbaa !40
  %shl2920 = shl i32 %symbol.49, 1
  %add2921 = or disjoint i32 %shl2920, 1
  br label %do.body2927

do.body2927:                                      ; preds = %do.body2904, %do.body2888, %if.end
  %dict.sroa.37.41 = phi i64 [ %dict.sroa.37.40, %do.body2888 ], [ %dict.sroa.37.40, %do.body2904 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.41 = phi i64 [ %dict.sroa.12.40, %do.body2888 ], [ %dict.sroa.12.40, %do.body2904 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.41 = phi i32 [ %len.40, %do.body2888 ], [ %len.40, %do.body2904 ], [ %15, %if.end ]
  %rep0.41 = phi i32 [ %rep0.40, %do.body2888 ], [ %rep0.40, %do.body2904 ], [ %6, %if.end ]
  %rep1.41 = phi i32 [ %rep1.40, %do.body2888 ], [ %rep1.40, %do.body2904 ], [ %7, %if.end ]
  %rep2.41 = phi i32 [ %rep2.40, %do.body2888 ], [ %rep2.40, %do.body2904 ], [ %8, %if.end ]
  %rep3.41 = phi i32 [ %rep3.40, %do.body2888 ], [ %rep3.40, %do.body2904 ], [ %9, %if.end ]
  %state.41 = phi i32 [ %state.40, %do.body2888 ], [ %state.40, %do.body2904 ], [ %5, %if.end ]
  %probs.40 = phi ptr [ %probs.39, %do.body2888 ], [ %probs.39, %do.body2904 ], [ %11, %if.end ]
  %symbol.50 = phi i32 [ %shl2902, %do.body2888 ], [ %add2921, %do.body2904 ], [ %12, %if.end ]
  %limit.41 = phi i32 [ %limit.40, %do.body2888 ], [ %limit.40, %do.body2904 ], [ %13, %if.end ]
  %offset.48 = phi i32 [ %offset.47, %do.body2888 ], [ %offset.47, %do.body2904 ], [ %14, %if.end ]
  %rc_in_pos.78 = phi i64 [ %rc_in_pos.77, %do.body2888 ], [ %rc_in_pos.77, %do.body2904 ], [ %4, %if.end ]
  %rc1.sroa.0.88 = phi i32 [ %mul2883, %do.body2888 ], [ %sub2906, %do.body2904 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.88 = phi i32 [ %rc1.sroa.500.87, %do.body2888 ], [ %sub2908, %do.body2904 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp2929 = icmp ult i32 %rc1.sroa.0.88, 16777216
  br i1 %cmp2929, label %if.then2931, label %do.end2948

if.then2931:                                      ; preds = %do.body2927
  %cmp2932 = icmp eq i64 %rc_in_pos.78, %in_size
  br i1 %cmp2932, label %if.then2934, label %if.end2936

if.then2934:                                      ; preds = %if.then2931
  store i32 39, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end2936:                                       ; preds = %if.then2931
  %shl2938 = shl nuw i32 %rc1.sroa.0.88, 8
  %shl2940 = shl i32 %rc1.sroa.500.88, 8
  %inc2941 = add i64 %rc_in_pos.78, 1
  %arrayidx2942 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.78
  %142 = load i8, ptr %arrayidx2942, align 1, !tbaa !14
  %conv2943 = zext i8 %142 to i32
  %or2944 = or disjoint i32 %shl2940, %conv2943
  br label %do.end2948

do.end2948:                                       ; preds = %if.end2936, %do.body2927
  %rc_in_pos.79 = phi i64 [ %inc2941, %if.end2936 ], [ %rc_in_pos.78, %do.body2927 ]
  %rc1.sroa.0.89 = phi i32 [ %shl2938, %if.end2936 ], [ %rc1.sroa.0.88, %do.body2927 ]
  %rc1.sroa.500.89 = phi i32 [ %or2944, %if.end2936 ], [ %rc1.sroa.500.88, %do.body2927 ]
  %shr2950 = lshr i32 %rc1.sroa.0.89, 11
  %idxprom2951 = zext i32 %symbol.50 to i64
  %arrayidx2952 = getelementptr inbounds nuw i16, ptr %probs.40, i64 %idxprom2951
  %143 = load i16, ptr %arrayidx2952, align 2, !tbaa !40
  %conv2953 = zext i16 %143 to i32
  %mul2954 = mul i32 %shr2950, %conv2953
  %cmp2956 = icmp ult i32 %rc1.sroa.500.89, %mul2954
  br i1 %cmp2956, label %do.body2959, label %do.body2975

do.body2959:                                      ; preds = %do.end2948
  %sub2964 = sub nsw i32 2048, %conv2953
  %shr2965 = lshr i32 %sub2964, 5
  %144 = trunc i32 %shr2965 to i16
  %conv2970 = add i16 %143, %144
  store i16 %conv2970, ptr %arrayidx2952, align 2, !tbaa !40
  %shl2973 = shl i32 %symbol.50, 1
  br label %do.body2998

do.body2975:                                      ; preds = %do.end2948
  %sub2977 = sub i32 %rc1.sroa.0.89, %mul2954
  %sub2979 = sub nuw i32 %rc1.sroa.500.89, %mul2954
  %shr2983 = lshr i16 %143, 5
  %sub2987 = sub i16 %143, %shr2983
  store i16 %sub2987, ptr %arrayidx2952, align 2, !tbaa !40
  %shl2991 = shl i32 %symbol.50, 1
  %add2992 = or disjoint i32 %shl2991, 1
  br label %do.body2998

do.body2998:                                      ; preds = %do.body2975, %do.body2959, %if.end
  %dict.sroa.37.42 = phi i64 [ %dict.sroa.37.41, %do.body2959 ], [ %dict.sroa.37.41, %do.body2975 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.42 = phi i64 [ %dict.sroa.12.41, %do.body2959 ], [ %dict.sroa.12.41, %do.body2975 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.42 = phi i32 [ %len.41, %do.body2959 ], [ %len.41, %do.body2975 ], [ %15, %if.end ]
  %rep0.42 = phi i32 [ %rep0.41, %do.body2959 ], [ %rep0.41, %do.body2975 ], [ %6, %if.end ]
  %rep1.42 = phi i32 [ %rep1.41, %do.body2959 ], [ %rep1.41, %do.body2975 ], [ %7, %if.end ]
  %rep2.42 = phi i32 [ %rep2.41, %do.body2959 ], [ %rep2.41, %do.body2975 ], [ %8, %if.end ]
  %rep3.42 = phi i32 [ %rep3.41, %do.body2959 ], [ %rep3.41, %do.body2975 ], [ %9, %if.end ]
  %state.42 = phi i32 [ %state.41, %do.body2959 ], [ %state.41, %do.body2975 ], [ %5, %if.end ]
  %probs.41 = phi ptr [ %probs.40, %do.body2959 ], [ %probs.40, %do.body2975 ], [ %11, %if.end ]
  %symbol.51 = phi i32 [ %shl2973, %do.body2959 ], [ %add2992, %do.body2975 ], [ %12, %if.end ]
  %limit.42 = phi i32 [ %limit.41, %do.body2959 ], [ %limit.41, %do.body2975 ], [ %13, %if.end ]
  %offset.49 = phi i32 [ %offset.48, %do.body2959 ], [ %offset.48, %do.body2975 ], [ %14, %if.end ]
  %rc_in_pos.80 = phi i64 [ %rc_in_pos.79, %do.body2959 ], [ %rc_in_pos.79, %do.body2975 ], [ %4, %if.end ]
  %rc1.sroa.0.90 = phi i32 [ %mul2954, %do.body2959 ], [ %sub2977, %do.body2975 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.90 = phi i32 [ %rc1.sroa.500.89, %do.body2959 ], [ %sub2979, %do.body2975 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp3000 = icmp ult i32 %rc1.sroa.0.90, 16777216
  br i1 %cmp3000, label %if.then3002, label %do.end3019

if.then3002:                                      ; preds = %do.body2998
  %cmp3003 = icmp eq i64 %rc_in_pos.80, %in_size
  br i1 %cmp3003, label %if.then3005, label %if.end3007

if.then3005:                                      ; preds = %if.then3002
  store i32 40, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3007:                                       ; preds = %if.then3002
  %shl3009 = shl nuw i32 %rc1.sroa.0.90, 8
  %shl3011 = shl i32 %rc1.sroa.500.90, 8
  %inc3012 = add i64 %rc_in_pos.80, 1
  %arrayidx3013 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.80
  %145 = load i8, ptr %arrayidx3013, align 1, !tbaa !14
  %conv3014 = zext i8 %145 to i32
  %or3015 = or disjoint i32 %shl3011, %conv3014
  br label %do.end3019

do.end3019:                                       ; preds = %if.end3007, %do.body2998
  %rc_in_pos.81 = phi i64 [ %inc3012, %if.end3007 ], [ %rc_in_pos.80, %do.body2998 ]
  %rc1.sroa.0.91 = phi i32 [ %shl3009, %if.end3007 ], [ %rc1.sroa.0.90, %do.body2998 ]
  %rc1.sroa.500.91 = phi i32 [ %or3015, %if.end3007 ], [ %rc1.sroa.500.90, %do.body2998 ]
  %shr3021 = lshr i32 %rc1.sroa.0.91, 11
  %idxprom3022 = zext i32 %symbol.51 to i64
  %arrayidx3023 = getelementptr inbounds nuw i16, ptr %probs.41, i64 %idxprom3022
  %146 = load i16, ptr %arrayidx3023, align 2, !tbaa !40
  %conv3024 = zext i16 %146 to i32
  %mul3025 = mul i32 %shr3021, %conv3024
  %cmp3027 = icmp ult i32 %rc1.sroa.500.91, %mul3025
  br i1 %cmp3027, label %do.body3030, label %do.body3046

do.body3030:                                      ; preds = %do.end3019
  %sub3035 = sub nsw i32 2048, %conv3024
  %shr3036 = lshr i32 %sub3035, 5
  %147 = trunc i32 %shr3036 to i16
  %conv3041 = add i16 %146, %147
  store i16 %conv3041, ptr %arrayidx3023, align 2, !tbaa !40
  %shl3044 = shl i32 %symbol.51, 1
  br label %do.body3069

do.body3046:                                      ; preds = %do.end3019
  %sub3048 = sub i32 %rc1.sroa.0.91, %mul3025
  %sub3050 = sub nuw i32 %rc1.sroa.500.91, %mul3025
  %shr3054 = lshr i16 %146, 5
  %sub3058 = sub i16 %146, %shr3054
  store i16 %sub3058, ptr %arrayidx3023, align 2, !tbaa !40
  %shl3062 = shl i32 %symbol.51, 1
  %add3063 = or disjoint i32 %shl3062, 1
  br label %do.body3069

do.body3069:                                      ; preds = %do.body3046, %do.body3030, %if.end
  %dict.sroa.37.43 = phi i64 [ %dict.sroa.37.42, %do.body3030 ], [ %dict.sroa.37.42, %do.body3046 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.43 = phi i64 [ %dict.sroa.12.42, %do.body3030 ], [ %dict.sroa.12.42, %do.body3046 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.43 = phi i32 [ %len.42, %do.body3030 ], [ %len.42, %do.body3046 ], [ %15, %if.end ]
  %rep0.43 = phi i32 [ %rep0.42, %do.body3030 ], [ %rep0.42, %do.body3046 ], [ %6, %if.end ]
  %rep1.43 = phi i32 [ %rep1.42, %do.body3030 ], [ %rep1.42, %do.body3046 ], [ %7, %if.end ]
  %rep2.43 = phi i32 [ %rep2.42, %do.body3030 ], [ %rep2.42, %do.body3046 ], [ %8, %if.end ]
  %rep3.43 = phi i32 [ %rep3.42, %do.body3030 ], [ %rep3.42, %do.body3046 ], [ %9, %if.end ]
  %state.43 = phi i32 [ %state.42, %do.body3030 ], [ %state.42, %do.body3046 ], [ %5, %if.end ]
  %probs.42 = phi ptr [ %probs.41, %do.body3030 ], [ %probs.41, %do.body3046 ], [ %11, %if.end ]
  %symbol.52 = phi i32 [ %shl3044, %do.body3030 ], [ %add3063, %do.body3046 ], [ %12, %if.end ]
  %limit.43 = phi i32 [ %limit.42, %do.body3030 ], [ %limit.42, %do.body3046 ], [ %13, %if.end ]
  %offset.50 = phi i32 [ %offset.49, %do.body3030 ], [ %offset.49, %do.body3046 ], [ %14, %if.end ]
  %rc_in_pos.82 = phi i64 [ %rc_in_pos.81, %do.body3030 ], [ %rc_in_pos.81, %do.body3046 ], [ %4, %if.end ]
  %rc1.sroa.0.92 = phi i32 [ %mul3025, %do.body3030 ], [ %sub3048, %do.body3046 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.92 = phi i32 [ %rc1.sroa.500.91, %do.body3030 ], [ %sub3050, %do.body3046 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp3071 = icmp ult i32 %rc1.sroa.0.92, 16777216
  br i1 %cmp3071, label %if.then3073, label %do.end3090

if.then3073:                                      ; preds = %do.body3069
  %cmp3074 = icmp eq i64 %rc_in_pos.82, %in_size
  br i1 %cmp3074, label %if.then3076, label %if.end3078

if.then3076:                                      ; preds = %if.then3073
  store i32 41, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3078:                                       ; preds = %if.then3073
  %shl3080 = shl nuw i32 %rc1.sroa.0.92, 8
  %shl3082 = shl i32 %rc1.sroa.500.92, 8
  %inc3083 = add i64 %rc_in_pos.82, 1
  %arrayidx3084 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.82
  %148 = load i8, ptr %arrayidx3084, align 1, !tbaa !14
  %conv3085 = zext i8 %148 to i32
  %or3086 = or disjoint i32 %shl3082, %conv3085
  br label %do.end3090

do.end3090:                                       ; preds = %if.end3078, %do.body3069
  %rc_in_pos.83 = phi i64 [ %inc3083, %if.end3078 ], [ %rc_in_pos.82, %do.body3069 ]
  %rc1.sroa.0.93 = phi i32 [ %shl3080, %if.end3078 ], [ %rc1.sroa.0.92, %do.body3069 ]
  %rc1.sroa.500.93 = phi i32 [ %or3086, %if.end3078 ], [ %rc1.sroa.500.92, %do.body3069 ]
  %shr3092 = lshr i32 %rc1.sroa.0.93, 11
  %idxprom3093 = zext i32 %symbol.52 to i64
  %arrayidx3094 = getelementptr inbounds nuw i16, ptr %probs.42, i64 %idxprom3093
  %149 = load i16, ptr %arrayidx3094, align 2, !tbaa !40
  %conv3095 = zext i16 %149 to i32
  %mul3096 = mul i32 %shr3092, %conv3095
  %cmp3098 = icmp ult i32 %rc1.sroa.500.93, %mul3096
  br i1 %cmp3098, label %do.body3101, label %do.body3117

do.body3101:                                      ; preds = %do.end3090
  %sub3106 = sub nsw i32 2048, %conv3095
  %shr3107 = lshr i32 %sub3106, 5
  %150 = trunc i32 %shr3107 to i16
  %conv3112 = add i16 %149, %150
  %shl3115 = shl i32 %symbol.52, 1
  br label %do.end3137

do.body3117:                                      ; preds = %do.end3090
  %sub3119 = sub i32 %rc1.sroa.0.93, %mul3096
  %sub3121 = sub nuw i32 %rc1.sroa.500.93, %mul3096
  %shr3125 = lshr i16 %149, 5
  %sub3129 = sub i16 %149, %shr3125
  %shl3133 = shl i32 %symbol.52, 1
  %add3134 = or disjoint i32 %shl3133, 1
  br label %do.end3137

do.end3137:                                       ; preds = %do.body3117, %do.body3101
  %sub3129.sink = phi i16 [ %conv3112, %do.body3101 ], [ %sub3129, %do.body3117 ]
  %symbol.53 = phi i32 [ %shl3115, %do.body3101 ], [ %add3134, %do.body3117 ]
  %rc1.sroa.0.94 = phi i32 [ %mul3096, %do.body3101 ], [ %sub3119, %do.body3117 ]
  %rc1.sroa.500.94 = phi i32 [ %rc1.sroa.500.93, %do.body3101 ], [ %sub3121, %do.body3117 ]
  store i16 %sub3129.sink, ptr %arrayidx3094, align 2, !tbaa !40
  %sub3138 = add i32 %symbol.53, -64
  %cmp3139 = icmp ult i32 %sub3138, 4
  br i1 %cmp3139, label %if.end3911, label %if.else3142

if.else3142:                                      ; preds = %do.end3137
  %shr3143 = lshr i32 %sub3138, 1
  %and3145 = and i32 %symbol.53, 1
  %add3146 = or disjoint i32 %and3145, 2
  %cmp3147 = icmp ult i32 %sub3138, 14
  br i1 %cmp3147, label %if.then3149, label %if.else3524

if.then3149:                                      ; preds = %if.else3142
  %sub3144 = add nsw i32 %shr3143, -1
  %shl3150 = shl i32 %add3146, %sub3144
  %idx.ext = zext i32 %shl3150 to i64
  %add.ptr = getelementptr i16, ptr %pcoder, i64 %idx.ext
  %idx.ext3152 = zext nneg i32 %sub3138 to i64
  %idx.neg = sub nsw i64 0, %idx.ext3152
  %add.ptr3153 = getelementptr i16, ptr %add.ptr, i64 %idx.neg
  %add.ptr3154 = getelementptr i8, ptr %add.ptr3153, i64 25950
  br label %sw.bb3155

sw.bb3155:                                        ; preds = %if.then3149, %if.end
  %dict.sroa.37.44 = phi i64 [ %dict.sroa.37.43, %if.then3149 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.44 = phi i64 [ %dict.sroa.12.43, %if.then3149 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.44 = phi i32 [ %len.43, %if.then3149 ], [ %15, %if.end ]
  %rep0.44 = phi i32 [ %shl3150, %if.then3149 ], [ %6, %if.end ]
  %rep1.44 = phi i32 [ %rep1.43, %if.then3149 ], [ %7, %if.end ]
  %rep2.44 = phi i32 [ %rep2.43, %if.then3149 ], [ %8, %if.end ]
  %rep3.44 = phi i32 [ %rep3.43, %if.then3149 ], [ %9, %if.end ]
  %state.44 = phi i32 [ %state.43, %if.then3149 ], [ %5, %if.end ]
  %probs.43 = phi ptr [ %add.ptr3154, %if.then3149 ], [ %11, %if.end ]
  %symbol.54 = phi i32 [ 1, %if.then3149 ], [ %12, %if.end ]
  %limit.44 = phi i32 [ %sub3144, %if.then3149 ], [ %13, %if.end ]
  %offset.51 = phi i32 [ 0, %if.then3149 ], [ %14, %if.end ]
  %rc_in_pos.84 = phi i64 [ %rc_in_pos.83, %if.then3149 ], [ %4, %if.end ]
  %rc1.sroa.0.95 = phi i32 [ %rc1.sroa.0.94, %if.then3149 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.95 = phi i32 [ %rc1.sroa.500.94, %if.then3149 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  switch i32 %limit.44, label %if.end3911 [
    i32 5, label %do.body3158
    i32 4, label %do.body3231
    i32 3, label %do.body3306
    i32 2, label %do.body3381
    i32 1, label %do.body3456
  ]

do.body3158:                                      ; preds = %sw.bb3155
  %cmp3160 = icmp ult i32 %rc1.sroa.0.95, 16777216
  br i1 %cmp3160, label %if.then3162, label %do.end3179

if.then3162:                                      ; preds = %do.body3158
  %cmp3163 = icmp eq i64 %rc_in_pos.84, %in_size
  br i1 %cmp3163, label %if.then3165, label %if.end3167

if.then3165:                                      ; preds = %if.then3162
  store i32 42, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3167:                                       ; preds = %if.then3162
  %shl3169 = shl nuw i32 %rc1.sroa.0.95, 8
  %shl3171 = shl i32 %rc1.sroa.500.95, 8
  %inc3172 = add i64 %rc_in_pos.84, 1
  %arrayidx3173 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.84
  %151 = load i8, ptr %arrayidx3173, align 1, !tbaa !14
  %conv3174 = zext i8 %151 to i32
  %or3175 = or disjoint i32 %shl3171, %conv3174
  br label %do.end3179

do.end3179:                                       ; preds = %if.end3167, %do.body3158
  %rc_in_pos.85 = phi i64 [ %inc3172, %if.end3167 ], [ %rc_in_pos.84, %do.body3158 ]
  %rc1.sroa.0.96 = phi i32 [ %shl3169, %if.end3167 ], [ %rc1.sroa.0.95, %do.body3158 ]
  %rc1.sroa.500.96 = phi i32 [ %or3175, %if.end3167 ], [ %rc1.sroa.500.95, %do.body3158 ]
  %shr3181 = lshr i32 %rc1.sroa.0.96, 11
  %idxprom3182 = zext i32 %symbol.54 to i64
  %arrayidx3183 = getelementptr inbounds nuw i16, ptr %probs.43, i64 %idxprom3182
  %152 = load i16, ptr %arrayidx3183, align 2, !tbaa !40
  %conv3184 = zext i16 %152 to i32
  %mul3185 = mul i32 %shr3181, %conv3184
  %cmp3187 = icmp ult i32 %rc1.sroa.500.96, %mul3185
  br i1 %cmp3187, label %do.body3190, label %do.body3206

do.body3190:                                      ; preds = %do.end3179
  %sub3195 = sub nsw i32 2048, %conv3184
  %shr3196 = lshr i32 %sub3195, 5
  %153 = trunc i32 %shr3196 to i16
  %conv3201 = add i16 %152, %153
  %shl3204 = shl i32 %symbol.54, 1
  br label %do.end3227

do.body3206:                                      ; preds = %do.end3179
  %sub3208 = sub i32 %rc1.sroa.0.96, %mul3185
  %sub3210 = sub nuw i32 %rc1.sroa.500.96, %mul3185
  %shr3214 = lshr i16 %152, 5
  %sub3218 = sub i16 %152, %shr3214
  %shl3222 = shl i32 %symbol.54, 1
  %add3223 = or disjoint i32 %shl3222, 1
  %add3224 = add i32 %rep0.44, 1
  br label %do.end3227

do.end3227:                                       ; preds = %do.body3206, %do.body3190
  %sub3218.sink = phi i16 [ %conv3201, %do.body3190 ], [ %sub3218, %do.body3206 ]
  %rep0.45 = phi i32 [ %rep0.44, %do.body3190 ], [ %add3224, %do.body3206 ]
  %symbol.55 = phi i32 [ %shl3204, %do.body3190 ], [ %add3223, %do.body3206 ]
  %rc1.sroa.0.97 = phi i32 [ %mul3185, %do.body3190 ], [ %sub3208, %do.body3206 ]
  %rc1.sroa.500.97 = phi i32 [ %rc1.sroa.500.96, %do.body3190 ], [ %sub3210, %do.body3206 ]
  store i16 %sub3218.sink, ptr %arrayidx3183, align 2, !tbaa !40
  %inc3228 = add i32 %offset.51, 1
  br label %do.body3231

do.body3231:                                      ; preds = %do.end3227, %sw.bb3155
  %rep0.46 = phi i32 [ %rep0.45, %do.end3227 ], [ %rep0.44, %sw.bb3155 ]
  %symbol.56 = phi i32 [ %symbol.55, %do.end3227 ], [ %symbol.54, %sw.bb3155 ]
  %offset.52 = phi i32 [ %inc3228, %do.end3227 ], [ %offset.51, %sw.bb3155 ]
  %rc_in_pos.86 = phi i64 [ %rc_in_pos.85, %do.end3227 ], [ %rc_in_pos.84, %sw.bb3155 ]
  %rc1.sroa.0.98 = phi i32 [ %rc1.sroa.0.97, %do.end3227 ], [ %rc1.sroa.0.95, %sw.bb3155 ]
  %rc1.sroa.500.98 = phi i32 [ %rc1.sroa.500.97, %do.end3227 ], [ %rc1.sroa.500.95, %sw.bb3155 ]
  %cmp3233 = icmp ult i32 %rc1.sroa.0.98, 16777216
  br i1 %cmp3233, label %if.then3235, label %do.end3252

if.then3235:                                      ; preds = %do.body3231
  %cmp3236 = icmp eq i64 %rc_in_pos.86, %in_size
  br i1 %cmp3236, label %if.then3238, label %if.end3240

if.then3238:                                      ; preds = %if.then3235
  store i32 42, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3240:                                       ; preds = %if.then3235
  %shl3242 = shl nuw i32 %rc1.sroa.0.98, 8
  %shl3244 = shl i32 %rc1.sroa.500.98, 8
  %inc3245 = add i64 %rc_in_pos.86, 1
  %arrayidx3246 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.86
  %154 = load i8, ptr %arrayidx3246, align 1, !tbaa !14
  %conv3247 = zext i8 %154 to i32
  %or3248 = or disjoint i32 %shl3244, %conv3247
  br label %do.end3252

do.end3252:                                       ; preds = %if.end3240, %do.body3231
  %rc_in_pos.87 = phi i64 [ %inc3245, %if.end3240 ], [ %rc_in_pos.86, %do.body3231 ]
  %rc1.sroa.0.99 = phi i32 [ %shl3242, %if.end3240 ], [ %rc1.sroa.0.98, %do.body3231 ]
  %rc1.sroa.500.99 = phi i32 [ %or3248, %if.end3240 ], [ %rc1.sroa.500.98, %do.body3231 ]
  %shr3254 = lshr i32 %rc1.sroa.0.99, 11
  %idxprom3255 = zext i32 %symbol.56 to i64
  %arrayidx3256 = getelementptr inbounds nuw i16, ptr %probs.43, i64 %idxprom3255
  %155 = load i16, ptr %arrayidx3256, align 2, !tbaa !40
  %conv3257 = zext i16 %155 to i32
  %mul3258 = mul i32 %shr3254, %conv3257
  %cmp3260 = icmp ult i32 %rc1.sroa.500.99, %mul3258
  br i1 %cmp3260, label %do.body3263, label %do.body3279

do.body3263:                                      ; preds = %do.end3252
  %sub3268 = sub nsw i32 2048, %conv3257
  %shr3269 = lshr i32 %sub3268, 5
  %156 = trunc i32 %shr3269 to i16
  %conv3274 = add i16 %155, %156
  %shl3277 = shl i32 %symbol.56, 1
  br label %do.end3301

do.body3279:                                      ; preds = %do.end3252
  %sub3281 = sub i32 %rc1.sroa.0.99, %mul3258
  %sub3283 = sub nuw i32 %rc1.sroa.500.99, %mul3258
  %shr3287 = lshr i16 %155, 5
  %sub3291 = sub i16 %155, %shr3287
  %shl3295 = shl i32 %symbol.56, 1
  %add3296 = or disjoint i32 %shl3295, 1
  %shl3297 = shl nuw i32 1, %offset.52
  %add3298 = add i32 %shl3297, %rep0.46
  br label %do.end3301

do.end3301:                                       ; preds = %do.body3279, %do.body3263
  %sub3291.sink = phi i16 [ %conv3274, %do.body3263 ], [ %sub3291, %do.body3279 ]
  %rep0.47 = phi i32 [ %rep0.46, %do.body3263 ], [ %add3298, %do.body3279 ]
  %symbol.57 = phi i32 [ %shl3277, %do.body3263 ], [ %add3296, %do.body3279 ]
  %rc1.sroa.0.100 = phi i32 [ %mul3258, %do.body3263 ], [ %sub3281, %do.body3279 ]
  %rc1.sroa.500.100 = phi i32 [ %rc1.sroa.500.99, %do.body3263 ], [ %sub3283, %do.body3279 ]
  store i16 %sub3291.sink, ptr %arrayidx3256, align 2, !tbaa !40
  %inc3302 = add i32 %offset.52, 1
  br label %do.body3306

do.body3306:                                      ; preds = %do.end3301, %sw.bb3155
  %rep0.48 = phi i32 [ %rep0.47, %do.end3301 ], [ %rep0.44, %sw.bb3155 ]
  %symbol.58 = phi i32 [ %symbol.57, %do.end3301 ], [ %symbol.54, %sw.bb3155 ]
  %offset.53 = phi i32 [ %inc3302, %do.end3301 ], [ %offset.51, %sw.bb3155 ]
  %rc_in_pos.88 = phi i64 [ %rc_in_pos.87, %do.end3301 ], [ %rc_in_pos.84, %sw.bb3155 ]
  %rc1.sroa.0.101 = phi i32 [ %rc1.sroa.0.100, %do.end3301 ], [ %rc1.sroa.0.95, %sw.bb3155 ]
  %rc1.sroa.500.101 = phi i32 [ %rc1.sroa.500.100, %do.end3301 ], [ %rc1.sroa.500.95, %sw.bb3155 ]
  %cmp3308 = icmp ult i32 %rc1.sroa.0.101, 16777216
  br i1 %cmp3308, label %if.then3310, label %do.end3327

if.then3310:                                      ; preds = %do.body3306
  %cmp3311 = icmp eq i64 %rc_in_pos.88, %in_size
  br i1 %cmp3311, label %if.then3313, label %if.end3315

if.then3313:                                      ; preds = %if.then3310
  store i32 42, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3315:                                       ; preds = %if.then3310
  %shl3317 = shl nuw i32 %rc1.sroa.0.101, 8
  %shl3319 = shl i32 %rc1.sroa.500.101, 8
  %inc3320 = add i64 %rc_in_pos.88, 1
  %arrayidx3321 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.88
  %157 = load i8, ptr %arrayidx3321, align 1, !tbaa !14
  %conv3322 = zext i8 %157 to i32
  %or3323 = or disjoint i32 %shl3319, %conv3322
  br label %do.end3327

do.end3327:                                       ; preds = %if.end3315, %do.body3306
  %rc_in_pos.89 = phi i64 [ %inc3320, %if.end3315 ], [ %rc_in_pos.88, %do.body3306 ]
  %rc1.sroa.0.102 = phi i32 [ %shl3317, %if.end3315 ], [ %rc1.sroa.0.101, %do.body3306 ]
  %rc1.sroa.500.102 = phi i32 [ %or3323, %if.end3315 ], [ %rc1.sroa.500.101, %do.body3306 ]
  %shr3329 = lshr i32 %rc1.sroa.0.102, 11
  %idxprom3330 = zext i32 %symbol.58 to i64
  %arrayidx3331 = getelementptr inbounds nuw i16, ptr %probs.43, i64 %idxprom3330
  %158 = load i16, ptr %arrayidx3331, align 2, !tbaa !40
  %conv3332 = zext i16 %158 to i32
  %mul3333 = mul i32 %shr3329, %conv3332
  %cmp3335 = icmp ult i32 %rc1.sroa.500.102, %mul3333
  br i1 %cmp3335, label %do.body3338, label %do.body3354

do.body3338:                                      ; preds = %do.end3327
  %sub3343 = sub nsw i32 2048, %conv3332
  %shr3344 = lshr i32 %sub3343, 5
  %159 = trunc i32 %shr3344 to i16
  %conv3349 = add i16 %158, %159
  %shl3352 = shl i32 %symbol.58, 1
  br label %do.end3376

do.body3354:                                      ; preds = %do.end3327
  %sub3356 = sub i32 %rc1.sroa.0.102, %mul3333
  %sub3358 = sub nuw i32 %rc1.sroa.500.102, %mul3333
  %shr3362 = lshr i16 %158, 5
  %sub3366 = sub i16 %158, %shr3362
  %shl3370 = shl i32 %symbol.58, 1
  %add3371 = or disjoint i32 %shl3370, 1
  %shl3372 = shl nuw i32 1, %offset.53
  %add3373 = add i32 %shl3372, %rep0.48
  br label %do.end3376

do.end3376:                                       ; preds = %do.body3354, %do.body3338
  %sub3366.sink = phi i16 [ %conv3349, %do.body3338 ], [ %sub3366, %do.body3354 ]
  %rep0.49 = phi i32 [ %rep0.48, %do.body3338 ], [ %add3373, %do.body3354 ]
  %symbol.59 = phi i32 [ %shl3352, %do.body3338 ], [ %add3371, %do.body3354 ]
  %rc1.sroa.0.103 = phi i32 [ %mul3333, %do.body3338 ], [ %sub3356, %do.body3354 ]
  %rc1.sroa.500.103 = phi i32 [ %rc1.sroa.500.102, %do.body3338 ], [ %sub3358, %do.body3354 ]
  store i16 %sub3366.sink, ptr %arrayidx3331, align 2, !tbaa !40
  %inc3377 = add i32 %offset.53, 1
  br label %do.body3381

do.body3381:                                      ; preds = %do.end3376, %sw.bb3155
  %rep0.50 = phi i32 [ %rep0.49, %do.end3376 ], [ %rep0.44, %sw.bb3155 ]
  %symbol.60 = phi i32 [ %symbol.59, %do.end3376 ], [ %symbol.54, %sw.bb3155 ]
  %offset.54 = phi i32 [ %inc3377, %do.end3376 ], [ %offset.51, %sw.bb3155 ]
  %rc_in_pos.90 = phi i64 [ %rc_in_pos.89, %do.end3376 ], [ %rc_in_pos.84, %sw.bb3155 ]
  %rc1.sroa.0.104 = phi i32 [ %rc1.sroa.0.103, %do.end3376 ], [ %rc1.sroa.0.95, %sw.bb3155 ]
  %rc1.sroa.500.104 = phi i32 [ %rc1.sroa.500.103, %do.end3376 ], [ %rc1.sroa.500.95, %sw.bb3155 ]
  %cmp3383 = icmp ult i32 %rc1.sroa.0.104, 16777216
  br i1 %cmp3383, label %if.then3385, label %do.end3402

if.then3385:                                      ; preds = %do.body3381
  %cmp3386 = icmp eq i64 %rc_in_pos.90, %in_size
  br i1 %cmp3386, label %if.then3388, label %if.end3390

if.then3388:                                      ; preds = %if.then3385
  store i32 42, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3390:                                       ; preds = %if.then3385
  %shl3392 = shl nuw i32 %rc1.sroa.0.104, 8
  %shl3394 = shl i32 %rc1.sroa.500.104, 8
  %inc3395 = add i64 %rc_in_pos.90, 1
  %arrayidx3396 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.90
  %160 = load i8, ptr %arrayidx3396, align 1, !tbaa !14
  %conv3397 = zext i8 %160 to i32
  %or3398 = or disjoint i32 %shl3394, %conv3397
  br label %do.end3402

do.end3402:                                       ; preds = %if.end3390, %do.body3381
  %rc_in_pos.91 = phi i64 [ %inc3395, %if.end3390 ], [ %rc_in_pos.90, %do.body3381 ]
  %rc1.sroa.0.105 = phi i32 [ %shl3392, %if.end3390 ], [ %rc1.sroa.0.104, %do.body3381 ]
  %rc1.sroa.500.105 = phi i32 [ %or3398, %if.end3390 ], [ %rc1.sroa.500.104, %do.body3381 ]
  %shr3404 = lshr i32 %rc1.sroa.0.105, 11
  %idxprom3405 = zext i32 %symbol.60 to i64
  %arrayidx3406 = getelementptr inbounds nuw i16, ptr %probs.43, i64 %idxprom3405
  %161 = load i16, ptr %arrayidx3406, align 2, !tbaa !40
  %conv3407 = zext i16 %161 to i32
  %mul3408 = mul i32 %shr3404, %conv3407
  %cmp3410 = icmp ult i32 %rc1.sroa.500.105, %mul3408
  br i1 %cmp3410, label %do.body3413, label %do.body3429

do.body3413:                                      ; preds = %do.end3402
  %sub3418 = sub nsw i32 2048, %conv3407
  %shr3419 = lshr i32 %sub3418, 5
  %162 = trunc i32 %shr3419 to i16
  %conv3424 = add i16 %161, %162
  %shl3427 = shl i32 %symbol.60, 1
  br label %do.end3451

do.body3429:                                      ; preds = %do.end3402
  %sub3431 = sub i32 %rc1.sroa.0.105, %mul3408
  %sub3433 = sub nuw i32 %rc1.sroa.500.105, %mul3408
  %shr3437 = lshr i16 %161, 5
  %sub3441 = sub i16 %161, %shr3437
  %shl3445 = shl i32 %symbol.60, 1
  %add3446 = or disjoint i32 %shl3445, 1
  %shl3447 = shl nuw i32 1, %offset.54
  %add3448 = add i32 %shl3447, %rep0.50
  br label %do.end3451

do.end3451:                                       ; preds = %do.body3429, %do.body3413
  %sub3441.sink = phi i16 [ %conv3424, %do.body3413 ], [ %sub3441, %do.body3429 ]
  %rep0.51 = phi i32 [ %rep0.50, %do.body3413 ], [ %add3448, %do.body3429 ]
  %symbol.61 = phi i32 [ %shl3427, %do.body3413 ], [ %add3446, %do.body3429 ]
  %rc1.sroa.0.106 = phi i32 [ %mul3408, %do.body3413 ], [ %sub3431, %do.body3429 ]
  %rc1.sroa.500.106 = phi i32 [ %rc1.sroa.500.105, %do.body3413 ], [ %sub3433, %do.body3429 ]
  store i16 %sub3441.sink, ptr %arrayidx3406, align 2, !tbaa !40
  %inc3452 = add i32 %offset.54, 1
  br label %do.body3456

do.body3456:                                      ; preds = %do.end3451, %sw.bb3155
  %rep0.52 = phi i32 [ %rep0.51, %do.end3451 ], [ %rep0.44, %sw.bb3155 ]
  %symbol.62 = phi i32 [ %symbol.61, %do.end3451 ], [ %symbol.54, %sw.bb3155 ]
  %offset.55 = phi i32 [ %inc3452, %do.end3451 ], [ %offset.51, %sw.bb3155 ]
  %rc_in_pos.92 = phi i64 [ %rc_in_pos.91, %do.end3451 ], [ %rc_in_pos.84, %sw.bb3155 ]
  %rc1.sroa.0.107 = phi i32 [ %rc1.sroa.0.106, %do.end3451 ], [ %rc1.sroa.0.95, %sw.bb3155 ]
  %rc1.sroa.500.107 = phi i32 [ %rc1.sroa.500.106, %do.end3451 ], [ %rc1.sroa.500.95, %sw.bb3155 ]
  %cmp3458 = icmp ult i32 %rc1.sroa.0.107, 16777216
  br i1 %cmp3458, label %if.then3460, label %do.end3477

if.then3460:                                      ; preds = %do.body3456
  %cmp3461 = icmp eq i64 %rc_in_pos.92, %in_size
  br i1 %cmp3461, label %if.then3463, label %if.end3465

if.then3463:                                      ; preds = %if.then3460
  store i32 42, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3465:                                       ; preds = %if.then3460
  %shl3467 = shl nuw i32 %rc1.sroa.0.107, 8
  %shl3469 = shl i32 %rc1.sroa.500.107, 8
  %inc3470 = add i64 %rc_in_pos.92, 1
  %arrayidx3471 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.92
  %163 = load i8, ptr %arrayidx3471, align 1, !tbaa !14
  %conv3472 = zext i8 %163 to i32
  %or3473 = or disjoint i32 %shl3469, %conv3472
  br label %do.end3477

do.end3477:                                       ; preds = %if.end3465, %do.body3456
  %rc_in_pos.93 = phi i64 [ %inc3470, %if.end3465 ], [ %rc_in_pos.92, %do.body3456 ]
  %rc1.sroa.0.108 = phi i32 [ %shl3467, %if.end3465 ], [ %rc1.sroa.0.107, %do.body3456 ]
  %rc1.sroa.500.108 = phi i32 [ %or3473, %if.end3465 ], [ %rc1.sroa.500.107, %do.body3456 ]
  %shr3479 = lshr i32 %rc1.sroa.0.108, 11
  %idxprom3480 = zext i32 %symbol.62 to i64
  %arrayidx3481 = getelementptr inbounds nuw i16, ptr %probs.43, i64 %idxprom3480
  %164 = load i16, ptr %arrayidx3481, align 2, !tbaa !40
  %conv3482 = zext i16 %164 to i32
  %mul3483 = mul i32 %shr3479, %conv3482
  %cmp3485 = icmp ult i32 %rc1.sroa.500.108, %mul3483
  br i1 %cmp3485, label %do.body3488, label %do.body3503

do.body3488:                                      ; preds = %do.end3477
  %sub3493 = sub nsw i32 2048, %conv3482
  %shr3494 = lshr i32 %sub3493, 5
  %165 = trunc i32 %shr3494 to i16
  %conv3499 = add i16 %164, %165
  store i16 %conv3499, ptr %arrayidx3481, align 2, !tbaa !40
  br label %if.end3911

do.body3503:                                      ; preds = %do.end3477
  %sub3505 = sub i32 %rc1.sroa.0.108, %mul3483
  %sub3507 = sub nuw i32 %rc1.sroa.500.108, %mul3483
  %shr3511 = lshr i16 %164, 5
  %sub3515 = sub i16 %164, %shr3511
  store i16 %sub3515, ptr %arrayidx3481, align 2, !tbaa !40
  %shl3519 = shl nuw i32 1, %offset.55
  %add3520 = add i32 %shl3519, %rep0.52
  br label %if.end3911

if.else3524:                                      ; preds = %if.else3142
  %sub3525 = add nsw i32 %shr3143, -5
  br label %sw.bb3526

sw.bb3526:                                        ; preds = %if.else3524, %if.end
  %dict.sroa.37.45 = phi i64 [ %dict.sroa.37.43, %if.else3524 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.45 = phi i64 [ %dict.sroa.12.43, %if.else3524 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.45 = phi i32 [ %len.43, %if.else3524 ], [ %15, %if.end ]
  %rep0.53 = phi i32 [ %add3146, %if.else3524 ], [ %6, %if.end ]
  %rep1.45 = phi i32 [ %rep1.43, %if.else3524 ], [ %7, %if.end ]
  %rep2.45 = phi i32 [ %rep2.43, %if.else3524 ], [ %8, %if.end ]
  %rep3.45 = phi i32 [ %rep3.43, %if.else3524 ], [ %9, %if.end ]
  %state.45 = phi i32 [ %state.43, %if.else3524 ], [ %5, %if.end ]
  %probs.44 = phi ptr [ %probs.42, %if.else3524 ], [ %11, %if.end ]
  %symbol.63 = phi i32 [ %sub3138, %if.else3524 ], [ %12, %if.end ]
  %limit.49 = phi i32 [ %sub3525, %if.else3524 ], [ %13, %if.end ]
  %offset.56 = phi i32 [ %offset.50, %if.else3524 ], [ %14, %if.end ]
  %rc_in_pos.94 = phi i64 [ %rc_in_pos.83, %if.else3524 ], [ %4, %if.end ]
  %rc1.sroa.0.109 = phi i32 [ %rc1.sroa.0.94, %if.else3524 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.109 = phi i32 [ %rc1.sroa.500.94, %if.else3524 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  br label %do.body3527

do.body3527:                                      ; preds = %do.end3550, %sw.bb3526
  %rep0.54 = phi i32 [ %rep0.53, %sw.bb3526 ], [ %add3565, %do.end3550 ]
  %limit.50 = phi i32 [ %limit.49, %sw.bb3526 ], [ %dec3569, %do.end3550 ]
  %rc_in_pos.95 = phi i64 [ %rc_in_pos.94, %sw.bb3526 ], [ %rc_in_pos.96, %do.end3550 ]
  %rc1.sroa.0.110 = phi i32 [ %rc1.sroa.0.109, %sw.bb3526 ], [ %shr3552, %do.end3550 ]
  %rc1.sroa.500.110 = phi i32 [ %rc1.sroa.500.109, %sw.bb3526 ], [ %add3562, %do.end3550 ]
  %cmp3531 = icmp ult i32 %rc1.sroa.0.110, 16777216
  br i1 %cmp3531, label %if.then3533, label %do.end3550

if.then3533:                                      ; preds = %do.body3527
  %cmp3534 = icmp eq i64 %rc_in_pos.95, %in_size
  br i1 %cmp3534, label %if.then3536, label %if.end3538

if.then3536:                                      ; preds = %if.then3533
  %rep0.54.lcssa = phi i32 [ %rep0.54, %if.then3533 ]
  %limit.50.lcssa = phi i32 [ %limit.50, %if.then3533 ]
  %rc_in_pos.95.lcssa = phi i64 [ %rc_in_pos.95, %if.then3533 ]
  %rc1.sroa.0.110.lcssa = phi i32 [ %rc1.sroa.0.110, %if.then3533 ]
  %rc1.sroa.500.110.lcssa = phi i32 [ %rc1.sroa.500.110, %if.then3533 ]
  store i32 43, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3538:                                       ; preds = %if.then3533
  %shl3540 = shl nuw i32 %rc1.sroa.0.110, 8
  %shl3542 = shl i32 %rc1.sroa.500.110, 8
  %inc3543 = add i64 %rc_in_pos.95, 1
  %arrayidx3544 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.95
  %166 = load i8, ptr %arrayidx3544, align 1, !tbaa !14
  %conv3545 = zext i8 %166 to i32
  %or3546 = or disjoint i32 %shl3542, %conv3545
  br label %do.end3550

do.end3550:                                       ; preds = %if.end3538, %do.body3527
  %rc_in_pos.96 = phi i64 [ %inc3543, %if.end3538 ], [ %rc_in_pos.95, %do.body3527 ]
  %rc1.sroa.0.111 = phi i32 [ %shl3540, %if.end3538 ], [ %rc1.sroa.0.110, %do.body3527 ]
  %rc1.sroa.500.111 = phi i32 [ %or3546, %if.end3538 ], [ %rc1.sroa.500.110, %do.body3527 ]
  %shr3552 = lshr i32 %rc1.sroa.0.111, 1
  %sub3555 = sub i32 %rc1.sroa.500.111, %shr3552
  %shr3557.neg = ashr i32 %sub3555, 31
  %and3560 = and i32 %shr3557.neg, %shr3552
  %add3562 = add i32 %and3560, %sub3555
  %shl3563 = shl i32 %rep0.54, 1
  %add3564 = or disjoint i32 %shl3563, 1
  %add3565 = add nsw i32 %add3564, %shr3557.neg
  %dec3569 = add i32 %limit.50, -1
  %cmp3570.not = icmp eq i32 %dec3569, 0
  br i1 %cmp3570.not, label %do.end3572, label %do.body3527, !llvm.loop !43

do.end3572:                                       ; preds = %do.end3550
  %rc_in_pos.96.lcssa = phi i64 [ %rc_in_pos.96, %do.end3550 ]
  %shr3552.lcssa = phi i32 [ %shr3552, %do.end3550 ]
  %add3562.lcssa = phi i32 [ %add3562, %do.end3550 ]
  %add3565.lcssa = phi i32 [ %add3565, %do.end3550 ]
  %shl3573 = shl i32 %add3565.lcssa, 4
  br label %do.body3576

do.body3576:                                      ; preds = %do.end3572, %if.end
  %dict.sroa.37.46 = phi i64 [ %dict.sroa.37.45, %do.end3572 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.46 = phi i64 [ %dict.sroa.12.45, %do.end3572 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.46 = phi i32 [ %len.45, %do.end3572 ], [ %15, %if.end ]
  %rep0.55 = phi i32 [ %shl3573, %do.end3572 ], [ %6, %if.end ]
  %rep1.46 = phi i32 [ %rep1.45, %do.end3572 ], [ %7, %if.end ]
  %rep2.46 = phi i32 [ %rep2.45, %do.end3572 ], [ %8, %if.end ]
  %rep3.46 = phi i32 [ %rep3.45, %do.end3572 ], [ %9, %if.end ]
  %state.46 = phi i32 [ %state.45, %do.end3572 ], [ %5, %if.end ]
  %probs.45 = phi ptr [ %probs.44, %do.end3572 ], [ %11, %if.end ]
  %symbol.64 = phi i32 [ 1, %do.end3572 ], [ %12, %if.end ]
  %limit.51 = phi i32 [ 0, %do.end3572 ], [ %13, %if.end ]
  %offset.57 = phi i32 [ %offset.56, %do.end3572 ], [ %14, %if.end ]
  %rc_in_pos.97 = phi i64 [ %rc_in_pos.96.lcssa, %do.end3572 ], [ %4, %if.end ]
  %rc1.sroa.0.112 = phi i32 [ %shr3552.lcssa, %do.end3572 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.112 = phi i32 [ %add3562.lcssa, %do.end3572 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp3578 = icmp ult i32 %rc1.sroa.0.112, 16777216
  br i1 %cmp3578, label %if.then3580, label %do.end3597

if.then3580:                                      ; preds = %do.body3576
  %cmp3581 = icmp eq i64 %rc_in_pos.97, %in_size
  br i1 %cmp3581, label %if.then3583, label %if.end3585

if.then3583:                                      ; preds = %if.then3580
  store i32 44, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3585:                                       ; preds = %if.then3580
  %shl3587 = shl nuw i32 %rc1.sroa.0.112, 8
  %shl3589 = shl i32 %rc1.sroa.500.112, 8
  %inc3590 = add i64 %rc_in_pos.97, 1
  %arrayidx3591 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.97
  %167 = load i8, ptr %arrayidx3591, align 1, !tbaa !14
  %conv3592 = zext i8 %167 to i32
  %or3593 = or disjoint i32 %shl3589, %conv3592
  br label %do.end3597

do.end3597:                                       ; preds = %if.end3585, %do.body3576
  %rc_in_pos.98 = phi i64 [ %inc3590, %if.end3585 ], [ %rc_in_pos.97, %do.body3576 ]
  %rc1.sroa.0.113 = phi i32 [ %shl3587, %if.end3585 ], [ %rc1.sroa.0.112, %do.body3576 ]
  %rc1.sroa.500.113 = phi i32 [ %or3593, %if.end3585 ], [ %rc1.sroa.500.112, %do.body3576 ]
  %shr3599 = lshr i32 %rc1.sroa.0.113, 11
  %pos_align = getelementptr inbounds nuw i8, ptr %pcoder, i64 26180
  %idxprom3600 = zext i32 %symbol.64 to i64
  %arrayidx3601 = getelementptr inbounds nuw i16, ptr %pos_align, i64 %idxprom3600
  %168 = load i16, ptr %arrayidx3601, align 2, !tbaa !40
  %conv3602 = zext i16 %168 to i32
  %mul3603 = mul i32 %shr3599, %conv3602
  %cmp3605 = icmp ult i32 %rc1.sroa.500.113, %mul3603
  br i1 %cmp3605, label %do.body3608, label %do.body3626

do.body3608:                                      ; preds = %do.end3597
  %sub3614 = sub nsw i32 2048, %conv3602
  %shr3615 = lshr i32 %sub3614, 5
  %169 = trunc i32 %shr3615 to i16
  %conv3621 = add i16 %168, %169
  store i16 %conv3621, ptr %arrayidx3601, align 2, !tbaa !40
  %shl3624 = shl i32 %symbol.64, 1
  br label %do.body3652

do.body3626:                                      ; preds = %do.end3597
  %sub3628 = sub i32 %rc1.sroa.0.113, %mul3603
  %sub3630 = sub nuw i32 %rc1.sroa.500.113, %mul3603
  %shr3635 = lshr i16 %168, 5
  %sub3640 = sub i16 %168, %shr3635
  store i16 %sub3640, ptr %arrayidx3601, align 2, !tbaa !40
  %shl3644 = shl i32 %symbol.64, 1
  %add3645 = or disjoint i32 %shl3644, 1
  %add3646 = add i32 %rep0.55, 1
  br label %do.body3652

do.body3652:                                      ; preds = %do.body3626, %do.body3608, %if.end
  %dict.sroa.37.47 = phi i64 [ %dict.sroa.37.46, %do.body3608 ], [ %dict.sroa.37.46, %do.body3626 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.47 = phi i64 [ %dict.sroa.12.46, %do.body3608 ], [ %dict.sroa.12.46, %do.body3626 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.47 = phi i32 [ %len.46, %do.body3608 ], [ %len.46, %do.body3626 ], [ %15, %if.end ]
  %rep0.56 = phi i32 [ %rep0.55, %do.body3608 ], [ %add3646, %do.body3626 ], [ %6, %if.end ]
  %rep1.47 = phi i32 [ %rep1.46, %do.body3608 ], [ %rep1.46, %do.body3626 ], [ %7, %if.end ]
  %rep2.47 = phi i32 [ %rep2.46, %do.body3608 ], [ %rep2.46, %do.body3626 ], [ %8, %if.end ]
  %rep3.47 = phi i32 [ %rep3.46, %do.body3608 ], [ %rep3.46, %do.body3626 ], [ %9, %if.end ]
  %state.47 = phi i32 [ %state.46, %do.body3608 ], [ %state.46, %do.body3626 ], [ %5, %if.end ]
  %probs.46 = phi ptr [ %probs.45, %do.body3608 ], [ %probs.45, %do.body3626 ], [ %11, %if.end ]
  %symbol.65 = phi i32 [ %shl3624, %do.body3608 ], [ %add3645, %do.body3626 ], [ %12, %if.end ]
  %limit.52 = phi i32 [ %limit.51, %do.body3608 ], [ %limit.51, %do.body3626 ], [ %13, %if.end ]
  %offset.58 = phi i32 [ %offset.57, %do.body3608 ], [ %offset.57, %do.body3626 ], [ %14, %if.end ]
  %rc_in_pos.99 = phi i64 [ %rc_in_pos.98, %do.body3608 ], [ %rc_in_pos.98, %do.body3626 ], [ %4, %if.end ]
  %rc1.sroa.0.114 = phi i32 [ %mul3603, %do.body3608 ], [ %sub3628, %do.body3626 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.114 = phi i32 [ %rc1.sroa.500.113, %do.body3608 ], [ %sub3630, %do.body3626 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp3654 = icmp ult i32 %rc1.sroa.0.114, 16777216
  br i1 %cmp3654, label %if.then3656, label %do.end3673

if.then3656:                                      ; preds = %do.body3652
  %cmp3657 = icmp eq i64 %rc_in_pos.99, %in_size
  br i1 %cmp3657, label %if.then3659, label %if.end3661

if.then3659:                                      ; preds = %if.then3656
  store i32 45, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3661:                                       ; preds = %if.then3656
  %shl3663 = shl nuw i32 %rc1.sroa.0.114, 8
  %shl3665 = shl i32 %rc1.sroa.500.114, 8
  %inc3666 = add i64 %rc_in_pos.99, 1
  %arrayidx3667 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.99
  %170 = load i8, ptr %arrayidx3667, align 1, !tbaa !14
  %conv3668 = zext i8 %170 to i32
  %or3669 = or disjoint i32 %shl3665, %conv3668
  br label %do.end3673

do.end3673:                                       ; preds = %if.end3661, %do.body3652
  %rc_in_pos.100 = phi i64 [ %inc3666, %if.end3661 ], [ %rc_in_pos.99, %do.body3652 ]
  %rc1.sroa.0.115 = phi i32 [ %shl3663, %if.end3661 ], [ %rc1.sroa.0.114, %do.body3652 ]
  %rc1.sroa.500.115 = phi i32 [ %or3669, %if.end3661 ], [ %rc1.sroa.500.114, %do.body3652 ]
  %shr3675 = lshr i32 %rc1.sroa.0.115, 11
  %pos_align3676 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26180
  %idxprom3677 = zext i32 %symbol.65 to i64
  %arrayidx3678 = getelementptr inbounds nuw i16, ptr %pos_align3676, i64 %idxprom3677
  %171 = load i16, ptr %arrayidx3678, align 2, !tbaa !40
  %conv3679 = zext i16 %171 to i32
  %mul3680 = mul i32 %shr3675, %conv3679
  %cmp3682 = icmp ult i32 %rc1.sroa.500.115, %mul3680
  br i1 %cmp3682, label %do.body3685, label %do.body3703

do.body3685:                                      ; preds = %do.end3673
  %sub3691 = sub nsw i32 2048, %conv3679
  %shr3692 = lshr i32 %sub3691, 5
  %172 = trunc i32 %shr3692 to i16
  %conv3698 = add i16 %171, %172
  store i16 %conv3698, ptr %arrayidx3678, align 2, !tbaa !40
  %shl3701 = shl i32 %symbol.65, 1
  br label %do.body3729

do.body3703:                                      ; preds = %do.end3673
  %sub3705 = sub i32 %rc1.sroa.0.115, %mul3680
  %sub3707 = sub nuw i32 %rc1.sroa.500.115, %mul3680
  %shr3712 = lshr i16 %171, 5
  %sub3717 = sub i16 %171, %shr3712
  store i16 %sub3717, ptr %arrayidx3678, align 2, !tbaa !40
  %shl3721 = shl i32 %symbol.65, 1
  %add3722 = or disjoint i32 %shl3721, 1
  %add3723 = add i32 %rep0.56, 2
  br label %do.body3729

do.body3729:                                      ; preds = %do.body3703, %do.body3685, %if.end
  %dict.sroa.37.48 = phi i64 [ %dict.sroa.37.47, %do.body3685 ], [ %dict.sroa.37.47, %do.body3703 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.48 = phi i64 [ %dict.sroa.12.47, %do.body3685 ], [ %dict.sroa.12.47, %do.body3703 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.48 = phi i32 [ %len.47, %do.body3685 ], [ %len.47, %do.body3703 ], [ %15, %if.end ]
  %rep0.57 = phi i32 [ %rep0.56, %do.body3685 ], [ %add3723, %do.body3703 ], [ %6, %if.end ]
  %rep1.48 = phi i32 [ %rep1.47, %do.body3685 ], [ %rep1.47, %do.body3703 ], [ %7, %if.end ]
  %rep2.48 = phi i32 [ %rep2.47, %do.body3685 ], [ %rep2.47, %do.body3703 ], [ %8, %if.end ]
  %rep3.48 = phi i32 [ %rep3.47, %do.body3685 ], [ %rep3.47, %do.body3703 ], [ %9, %if.end ]
  %state.48 = phi i32 [ %state.47, %do.body3685 ], [ %state.47, %do.body3703 ], [ %5, %if.end ]
  %probs.47 = phi ptr [ %probs.46, %do.body3685 ], [ %probs.46, %do.body3703 ], [ %11, %if.end ]
  %symbol.66 = phi i32 [ %shl3701, %do.body3685 ], [ %add3722, %do.body3703 ], [ %12, %if.end ]
  %limit.53 = phi i32 [ %limit.52, %do.body3685 ], [ %limit.52, %do.body3703 ], [ %13, %if.end ]
  %offset.59 = phi i32 [ %offset.58, %do.body3685 ], [ %offset.58, %do.body3703 ], [ %14, %if.end ]
  %rc_in_pos.101 = phi i64 [ %rc_in_pos.100, %do.body3685 ], [ %rc_in_pos.100, %do.body3703 ], [ %4, %if.end ]
  %rc1.sroa.0.116 = phi i32 [ %mul3680, %do.body3685 ], [ %sub3705, %do.body3703 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.116 = phi i32 [ %rc1.sroa.500.115, %do.body3685 ], [ %sub3707, %do.body3703 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp3731 = icmp ult i32 %rc1.sroa.0.116, 16777216
  br i1 %cmp3731, label %if.then3733, label %do.end3750

if.then3733:                                      ; preds = %do.body3729
  %cmp3734 = icmp eq i64 %rc_in_pos.101, %in_size
  br i1 %cmp3734, label %if.then3736, label %if.end3738

if.then3736:                                      ; preds = %if.then3733
  store i32 46, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3738:                                       ; preds = %if.then3733
  %shl3740 = shl nuw i32 %rc1.sroa.0.116, 8
  %shl3742 = shl i32 %rc1.sroa.500.116, 8
  %inc3743 = add i64 %rc_in_pos.101, 1
  %arrayidx3744 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.101
  %173 = load i8, ptr %arrayidx3744, align 1, !tbaa !14
  %conv3745 = zext i8 %173 to i32
  %or3746 = or disjoint i32 %shl3742, %conv3745
  br label %do.end3750

do.end3750:                                       ; preds = %if.end3738, %do.body3729
  %rc_in_pos.102 = phi i64 [ %inc3743, %if.end3738 ], [ %rc_in_pos.101, %do.body3729 ]
  %rc1.sroa.0.117 = phi i32 [ %shl3740, %if.end3738 ], [ %rc1.sroa.0.116, %do.body3729 ]
  %rc1.sroa.500.117 = phi i32 [ %or3746, %if.end3738 ], [ %rc1.sroa.500.116, %do.body3729 ]
  %shr3752 = lshr i32 %rc1.sroa.0.117, 11
  %pos_align3753 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26180
  %idxprom3754 = zext i32 %symbol.66 to i64
  %arrayidx3755 = getelementptr inbounds nuw i16, ptr %pos_align3753, i64 %idxprom3754
  %174 = load i16, ptr %arrayidx3755, align 2, !tbaa !40
  %conv3756 = zext i16 %174 to i32
  %mul3757 = mul i32 %shr3752, %conv3756
  %cmp3759 = icmp ult i32 %rc1.sroa.500.117, %mul3757
  br i1 %cmp3759, label %do.body3762, label %do.body3780

do.body3762:                                      ; preds = %do.end3750
  %sub3768 = sub nsw i32 2048, %conv3756
  %shr3769 = lshr i32 %sub3768, 5
  %175 = trunc i32 %shr3769 to i16
  %conv3775 = add i16 %174, %175
  store i16 %conv3775, ptr %arrayidx3755, align 2, !tbaa !40
  %shl3778 = shl i32 %symbol.66, 1
  br label %do.body3806

do.body3780:                                      ; preds = %do.end3750
  %sub3782 = sub i32 %rc1.sroa.0.117, %mul3757
  %sub3784 = sub nuw i32 %rc1.sroa.500.117, %mul3757
  %shr3789 = lshr i16 %174, 5
  %sub3794 = sub i16 %174, %shr3789
  store i16 %sub3794, ptr %arrayidx3755, align 2, !tbaa !40
  %shl3798 = shl i32 %symbol.66, 1
  %add3799 = or disjoint i32 %shl3798, 1
  %add3800 = add i32 %rep0.57, 4
  br label %do.body3806

do.body3806:                                      ; preds = %do.body3780, %do.body3762, %if.end
  %dict.sroa.37.49 = phi i64 [ %dict.sroa.37.48, %do.body3762 ], [ %dict.sroa.37.48, %do.body3780 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.49 = phi i64 [ %dict.sroa.12.48, %do.body3762 ], [ %dict.sroa.12.48, %do.body3780 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.49 = phi i32 [ %len.48, %do.body3762 ], [ %len.48, %do.body3780 ], [ %15, %if.end ]
  %rep0.58 = phi i32 [ %rep0.57, %do.body3762 ], [ %add3800, %do.body3780 ], [ %6, %if.end ]
  %rep1.49 = phi i32 [ %rep1.48, %do.body3762 ], [ %rep1.48, %do.body3780 ], [ %7, %if.end ]
  %rep2.49 = phi i32 [ %rep2.48, %do.body3762 ], [ %rep2.48, %do.body3780 ], [ %8, %if.end ]
  %rep3.49 = phi i32 [ %rep3.48, %do.body3762 ], [ %rep3.48, %do.body3780 ], [ %9, %if.end ]
  %state.49 = phi i32 [ %state.48, %do.body3762 ], [ %state.48, %do.body3780 ], [ %5, %if.end ]
  %probs.48 = phi ptr [ %probs.47, %do.body3762 ], [ %probs.47, %do.body3780 ], [ %11, %if.end ]
  %symbol.67 = phi i32 [ %shl3778, %do.body3762 ], [ %add3799, %do.body3780 ], [ %12, %if.end ]
  %limit.54 = phi i32 [ %limit.53, %do.body3762 ], [ %limit.53, %do.body3780 ], [ %13, %if.end ]
  %offset.60 = phi i32 [ %offset.59, %do.body3762 ], [ %offset.59, %do.body3780 ], [ %14, %if.end ]
  %rc_in_pos.103 = phi i64 [ %rc_in_pos.102, %do.body3762 ], [ %rc_in_pos.102, %do.body3780 ], [ %4, %if.end ]
  %rc1.sroa.0.118 = phi i32 [ %mul3757, %do.body3762 ], [ %sub3782, %do.body3780 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.118 = phi i32 [ %rc1.sroa.500.117, %do.body3762 ], [ %sub3784, %do.body3780 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp3808 = icmp ult i32 %rc1.sroa.0.118, 16777216
  br i1 %cmp3808, label %if.then3810, label %do.end3827

if.then3810:                                      ; preds = %do.body3806
  %cmp3811 = icmp eq i64 %rc_in_pos.103, %in_size
  br i1 %cmp3811, label %if.then3813, label %if.end3815

if.then3813:                                      ; preds = %if.then3810
  store i32 47, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3815:                                       ; preds = %if.then3810
  %shl3817 = shl nuw i32 %rc1.sroa.0.118, 8
  %shl3819 = shl i32 %rc1.sroa.500.118, 8
  %inc3820 = add i64 %rc_in_pos.103, 1
  %arrayidx3821 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.103
  %176 = load i8, ptr %arrayidx3821, align 1, !tbaa !14
  %conv3822 = zext i8 %176 to i32
  %or3823 = or disjoint i32 %shl3819, %conv3822
  br label %do.end3827

do.end3827:                                       ; preds = %if.end3815, %do.body3806
  %rc_in_pos.104 = phi i64 [ %inc3820, %if.end3815 ], [ %rc_in_pos.103, %do.body3806 ]
  %rc1.sroa.0.119 = phi i32 [ %shl3817, %if.end3815 ], [ %rc1.sroa.0.118, %do.body3806 ]
  %rc1.sroa.500.119 = phi i32 [ %or3823, %if.end3815 ], [ %rc1.sroa.500.118, %do.body3806 ]
  %shr3829 = lshr i32 %rc1.sroa.0.119, 11
  %pos_align3830 = getelementptr inbounds nuw i8, ptr %pcoder, i64 26180
  %idxprom3831 = zext i32 %symbol.67 to i64
  %arrayidx3832 = getelementptr inbounds nuw i16, ptr %pos_align3830, i64 %idxprom3831
  %177 = load i16, ptr %arrayidx3832, align 2, !tbaa !40
  %conv3833 = zext i16 %177 to i32
  %mul3834 = mul i32 %shr3829, %conv3833
  %cmp3836 = icmp ult i32 %rc1.sroa.500.119, %mul3834
  br i1 %cmp3836, label %do.body3839, label %do.body3856

do.body3839:                                      ; preds = %do.end3827
  %sub3845 = sub nsw i32 2048, %conv3833
  %shr3846 = lshr i32 %sub3845, 5
  %178 = trunc i32 %shr3846 to i16
  %conv3852 = add i16 %177, %178
  br label %do.end3877

do.body3856:                                      ; preds = %do.end3827
  %sub3858 = sub i32 %rc1.sroa.0.119, %mul3834
  %sub3860 = sub nuw i32 %rc1.sroa.500.119, %mul3834
  %shr3865 = lshr i16 %177, 5
  %sub3870 = sub i16 %177, %shr3865
  %add3874 = add i32 %rep0.58, 8
  br label %do.end3877

do.end3877:                                       ; preds = %do.body3856, %do.body3839
  %sub3870.sink = phi i16 [ %conv3852, %do.body3839 ], [ %sub3870, %do.body3856 ]
  %rep0.59 = phi i32 [ %rep0.58, %do.body3839 ], [ %add3874, %do.body3856 ]
  %rc1.sroa.0.120 = phi i32 [ %mul3834, %do.body3839 ], [ %sub3858, %do.body3856 ]
  %rc1.sroa.500.120 = phi i32 [ %rc1.sroa.500.119, %do.body3839 ], [ %sub3860, %do.body3856 ]
  store i16 %sub3870.sink, ptr %arrayidx3832, align 2, !tbaa !40
  %cmp3878 = icmp eq i32 %rep0.59, -1
  br i1 %cmp3878, label %if.then3880, label %if.end3911

if.then3880:                                      ; preds = %do.end3877
  %179 = load i64, ptr %uncompressed_size, align 8, !tbaa !38
  %cmp3882.not = icmp eq i64 %179, -1
  br i1 %cmp3882.not, label %do.body3887, label %out

do.body3887:                                      ; preds = %if.then3880, %if.end
  %dict.sroa.37.50 = phi i64 [ %dict.sroa.37.49, %if.then3880 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.50 = phi i64 [ %dict.sroa.12.49, %if.then3880 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.50 = phi i32 [ %len.49, %if.then3880 ], [ %15, %if.end ]
  %rep0.60 = phi i32 [ -1, %if.then3880 ], [ %6, %if.end ]
  %rep1.50 = phi i32 [ %rep1.49, %if.then3880 ], [ %7, %if.end ]
  %rep2.50 = phi i32 [ %rep2.49, %if.then3880 ], [ %8, %if.end ]
  %rep3.50 = phi i32 [ %rep3.49, %if.then3880 ], [ %9, %if.end ]
  %state.50 = phi i32 [ %state.49, %if.then3880 ], [ %5, %if.end ]
  %probs.49 = phi ptr [ %probs.48, %if.then3880 ], [ %11, %if.end ]
  %symbol.68 = phi i32 [ %symbol.67, %if.then3880 ], [ %12, %if.end ]
  %limit.55 = phi i32 [ %limit.54, %if.then3880 ], [ %13, %if.end ]
  %offset.61 = phi i32 [ %offset.60, %if.then3880 ], [ %14, %if.end ]
  %rc_in_pos.105 = phi i64 [ %rc_in_pos.104, %if.then3880 ], [ %4, %if.end ]
  %rc1.sroa.0.121 = phi i32 [ %rc1.sroa.0.120, %if.then3880 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.121 = phi i32 [ %rc1.sroa.500.120, %if.then3880 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp3889 = icmp ult i32 %rc1.sroa.0.121, 16777216
  br i1 %cmp3889, label %if.then3891, label %out

if.then3891:                                      ; preds = %do.body3887
  %cmp3892 = icmp eq i64 %rc_in_pos.105, %in_size
  br i1 %cmp3892, label %if.then3894, label %if.end3896

if.then3894:                                      ; preds = %if.then3891
  store i32 48, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3896:                                       ; preds = %if.then3891
  %shl3898 = shl nuw i32 %rc1.sroa.0.121, 8
  %shl3900 = shl i32 %rc1.sroa.500.121, 8
  %inc3901 = add i64 %rc_in_pos.105, 1
  %arrayidx3902 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.105
  %180 = load i8, ptr %arrayidx3902, align 1, !tbaa !14
  %conv3903 = zext i8 %180 to i32
  %or3904 = or disjoint i32 %shl3900, %conv3903
  br label %out

if.end3911:                                       ; preds = %do.end3877, %do.body3503, %do.body3488, %sw.bb3155, %do.end3137
  %dict.sroa.37.51 = phi i64 [ %dict.sroa.37.43, %do.end3137 ], [ %dict.sroa.37.44, %sw.bb3155 ], [ %dict.sroa.37.44, %do.body3488 ], [ %dict.sroa.37.44, %do.body3503 ], [ %dict.sroa.37.49, %do.end3877 ]
  %dict.sroa.12.51 = phi i64 [ %dict.sroa.12.43, %do.end3137 ], [ %dict.sroa.12.44, %sw.bb3155 ], [ %dict.sroa.12.44, %do.body3488 ], [ %dict.sroa.12.44, %do.body3503 ], [ %dict.sroa.12.49, %do.end3877 ]
  %len.51 = phi i32 [ %len.43, %do.end3137 ], [ %len.44, %sw.bb3155 ], [ %len.44, %do.body3488 ], [ %len.44, %do.body3503 ], [ %len.49, %do.end3877 ]
  %rep0.61 = phi i32 [ %sub3138, %do.end3137 ], [ %rep0.44, %sw.bb3155 ], [ %rep0.52, %do.body3488 ], [ %add3520, %do.body3503 ], [ %rep0.59, %do.end3877 ]
  %rep1.51 = phi i32 [ %rep1.43, %do.end3137 ], [ %rep1.44, %sw.bb3155 ], [ %rep1.44, %do.body3488 ], [ %rep1.44, %do.body3503 ], [ %rep1.49, %do.end3877 ]
  %rep2.51 = phi i32 [ %rep2.43, %do.end3137 ], [ %rep2.44, %sw.bb3155 ], [ %rep2.44, %do.body3488 ], [ %rep2.44, %do.body3503 ], [ %rep2.49, %do.end3877 ]
  %rep3.51 = phi i32 [ %rep3.43, %do.end3137 ], [ %rep3.44, %sw.bb3155 ], [ %rep3.44, %do.body3488 ], [ %rep3.44, %do.body3503 ], [ %rep3.49, %do.end3877 ]
  %state.51 = phi i32 [ %state.43, %do.end3137 ], [ %state.44, %sw.bb3155 ], [ %state.44, %do.body3488 ], [ %state.44, %do.body3503 ], [ %state.49, %do.end3877 ]
  %probs.50 = phi ptr [ %probs.42, %do.end3137 ], [ %probs.43, %sw.bb3155 ], [ %probs.43, %do.body3488 ], [ %probs.43, %do.body3503 ], [ %probs.48, %do.end3877 ]
  %symbol.69 = phi i32 [ %sub3138, %do.end3137 ], [ %symbol.54, %sw.bb3155 ], [ %symbol.62, %do.body3488 ], [ %symbol.62, %do.body3503 ], [ %symbol.67, %do.end3877 ]
  %limit.56 = phi i32 [ %limit.43, %do.end3137 ], [ %limit.44, %sw.bb3155 ], [ 1, %do.body3488 ], [ 1, %do.body3503 ], [ %limit.54, %do.end3877 ]
  %offset.62 = phi i32 [ %offset.50, %do.end3137 ], [ %offset.51, %sw.bb3155 ], [ %offset.55, %do.body3488 ], [ %offset.55, %do.body3503 ], [ %offset.60, %do.end3877 ]
  %rc_in_pos.107 = phi i64 [ %rc_in_pos.83, %do.end3137 ], [ %rc_in_pos.84, %sw.bb3155 ], [ %rc_in_pos.93, %do.body3488 ], [ %rc_in_pos.93, %do.body3503 ], [ %rc_in_pos.104, %do.end3877 ]
  %rc1.sroa.0.123 = phi i32 [ %rc1.sroa.0.94, %do.end3137 ], [ %rc1.sroa.0.95, %sw.bb3155 ], [ %mul3483, %do.body3488 ], [ %sub3505, %do.body3503 ], [ %rc1.sroa.0.120, %do.end3877 ]
  %rc1.sroa.500.123 = phi i32 [ %rc1.sroa.500.94, %do.end3137 ], [ %rc1.sroa.500.95, %sw.bb3155 ], [ %rc1.sroa.500.108, %do.body3488 ], [ %sub3507, %do.body3503 ], [ %rc1.sroa.500.120, %do.end3877 ]
  %conv3912 = zext i32 %rep0.61 to i64
  %cmp.i7850 = icmp ugt i64 %dict.sroa.37.51, %conv3912
  br i1 %cmp.i7850, label %sw.bb5573, label %out

do.body3917:                                      ; preds = %do.end1346
  %sub3919 = sub i32 %rc1.sroa.0.45, %mul1352
  %sub3921 = sub nuw i32 %rc1.sroa.500.45, %mul1352
  %shr3926 = lshr i16 %82, 5
  %sub3931 = sub i16 %82, %shr3926
  store i16 %sub3931, ptr %arrayidx1350, align 2, !tbaa !40
  %cmp.i7851.not = icmp eq i64 %dict.sroa.37.20, 0
  br i1 %cmp.i7851.not, label %out, label %do.body3939

do.body3939:                                      ; preds = %do.body3917, %if.end
  %dict.sroa.37.52 = phi i64 [ %dict.sroa.37.20, %do.body3917 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.52 = phi i64 [ %dict.sroa.12.20, %do.body3917 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.52 = phi i32 [ %len.20, %do.body3917 ], [ %15, %if.end ]
  %rep0.62 = phi i32 [ %rep0.20, %do.body3917 ], [ %6, %if.end ]
  %rep1.52 = phi i32 [ %rep1.20, %do.body3917 ], [ %7, %if.end ]
  %rep2.52 = phi i32 [ %rep2.20, %do.body3917 ], [ %8, %if.end ]
  %rep3.52 = phi i32 [ %rep3.20, %do.body3917 ], [ %9, %if.end ]
  %state.52 = phi i32 [ %state.20, %do.body3917 ], [ %5, %if.end ]
  %probs.51 = phi ptr [ %probs.20, %do.body3917 ], [ %11, %if.end ]
  %symbol.70 = phi i32 [ %symbol.27, %do.body3917 ], [ %12, %if.end ]
  %limit.57 = phi i32 [ %limit.20, %do.body3917 ], [ %13, %if.end ]
  %offset.63 = phi i32 [ %offset.27, %do.body3917 ], [ %14, %if.end ]
  %rc_in_pos.108 = phi i64 [ %rc_in_pos.38, %do.body3917 ], [ %4, %if.end ]
  %pos_state.10 = phi i32 [ %pos_state.1, %do.body3917 ], [ %conv17, %if.end ]
  %rc1.sroa.0.124 = phi i32 [ %sub3919, %do.body3917 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.124 = phi i32 [ %sub3921, %do.body3917 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp3941 = icmp ult i32 %rc1.sroa.0.124, 16777216
  br i1 %cmp3941, label %if.then3943, label %do.end3960

if.then3943:                                      ; preds = %do.body3939
  %cmp3944 = icmp eq i64 %rc_in_pos.108, %in_size
  br i1 %cmp3944, label %if.then3946, label %if.end3948

if.then3946:                                      ; preds = %if.then3943
  store i32 49, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3948:                                       ; preds = %if.then3943
  %shl3950 = shl nuw i32 %rc1.sroa.0.124, 8
  %shl3952 = shl i32 %rc1.sroa.500.124, 8
  %inc3953 = add i64 %rc_in_pos.108, 1
  %arrayidx3954 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.108
  %181 = load i8, ptr %arrayidx3954, align 1, !tbaa !14
  %conv3955 = zext i8 %181 to i32
  %or3956 = or disjoint i32 %shl3952, %conv3955
  br label %do.end3960

do.end3960:                                       ; preds = %if.end3948, %do.body3939
  %rc_in_pos.109 = phi i64 [ %inc3953, %if.end3948 ], [ %rc_in_pos.108, %do.body3939 ]
  %rc1.sroa.0.125 = phi i32 [ %shl3950, %if.end3948 ], [ %rc1.sroa.0.124, %do.body3939 ]
  %rc1.sroa.500.125 = phi i32 [ %or3956, %if.end3948 ], [ %rc1.sroa.500.124, %do.body3939 ]
  %shr3962 = lshr i32 %rc1.sroa.0.125, 11
  %is_rep0 = getelementptr inbounds nuw i8, ptr %pcoder, i64 24984
  %idxprom3963 = zext i32 %state.52 to i64
  %arrayidx3964 = getelementptr inbounds nuw i16, ptr %is_rep0, i64 %idxprom3963
  %182 = load i16, ptr %arrayidx3964, align 2, !tbaa !40
  %conv3965 = zext i16 %182 to i32
  %mul3966 = mul i32 %shr3962, %conv3965
  %cmp3968 = icmp ult i32 %rc1.sroa.500.125, %mul3966
  br i1 %cmp3968, label %do.body3971, label %do.body4075

do.body3971:                                      ; preds = %do.end3960
  %sub3977 = sub nsw i32 2048, %conv3965
  %shr3978 = lshr i32 %sub3977, 5
  %183 = trunc i32 %shr3978 to i16
  %conv3984 = add i16 %182, %183
  store i16 %conv3984, ptr %arrayidx3964, align 2, !tbaa !40
  br label %do.body3988

do.body3988:                                      ; preds = %do.body3971, %if.end
  %dict.sroa.37.53 = phi i64 [ %dict.sroa.37.52, %do.body3971 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.53 = phi i64 [ %dict.sroa.12.52, %do.body3971 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.53 = phi i32 [ %len.52, %do.body3971 ], [ %15, %if.end ]
  %rep0.63 = phi i32 [ %rep0.62, %do.body3971 ], [ %6, %if.end ]
  %rep1.53 = phi i32 [ %rep1.52, %do.body3971 ], [ %7, %if.end ]
  %rep2.53 = phi i32 [ %rep2.52, %do.body3971 ], [ %8, %if.end ]
  %rep3.53 = phi i32 [ %rep3.52, %do.body3971 ], [ %9, %if.end ]
  %state.53 = phi i32 [ %state.52, %do.body3971 ], [ %5, %if.end ]
  %probs.52 = phi ptr [ %probs.51, %do.body3971 ], [ %11, %if.end ]
  %symbol.71 = phi i32 [ %symbol.70, %do.body3971 ], [ %12, %if.end ]
  %limit.58 = phi i32 [ %limit.57, %do.body3971 ], [ %13, %if.end ]
  %offset.64 = phi i32 [ %offset.63, %do.body3971 ], [ %14, %if.end ]
  %rc_in_pos.110 = phi i64 [ %rc_in_pos.109, %do.body3971 ], [ %4, %if.end ]
  %pos_state.11 = phi i32 [ %pos_state.10, %do.body3971 ], [ %conv17, %if.end ]
  %rc1.sroa.0.126 = phi i32 [ %mul3966, %do.body3971 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.126 = phi i32 [ %rc1.sroa.500.125, %do.body3971 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp3990 = icmp ult i32 %rc1.sroa.0.126, 16777216
  br i1 %cmp3990, label %if.then3992, label %do.end4009

if.then3992:                                      ; preds = %do.body3988
  %cmp3993 = icmp eq i64 %rc_in_pos.110, %in_size
  br i1 %cmp3993, label %if.then3995, label %if.end3997

if.then3995:                                      ; preds = %if.then3992
  store i32 51, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end3997:                                       ; preds = %if.then3992
  %shl3999 = shl nuw i32 %rc1.sroa.0.126, 8
  %shl4001 = shl i32 %rc1.sroa.500.126, 8
  %inc4002 = add i64 %rc_in_pos.110, 1
  %arrayidx4003 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.110
  %184 = load i8, ptr %arrayidx4003, align 1, !tbaa !14
  %conv4004 = zext i8 %184 to i32
  %or4005 = or disjoint i32 %shl4001, %conv4004
  br label %do.end4009

do.end4009:                                       ; preds = %if.end3997, %do.body3988
  %rc_in_pos.111 = phi i64 [ %inc4002, %if.end3997 ], [ %rc_in_pos.110, %do.body3988 ]
  %rc1.sroa.0.127 = phi i32 [ %shl3999, %if.end3997 ], [ %rc1.sroa.0.126, %do.body3988 ]
  %rc1.sroa.500.127 = phi i32 [ %or4005, %if.end3997 ], [ %rc1.sroa.500.126, %do.body3988 ]
  %shr4011 = lshr i32 %rc1.sroa.0.127, 11
  %is_rep0_long = getelementptr inbounds nuw i8, ptr %pcoder, i64 25056
  %idxprom4012 = zext i32 %state.53 to i64
  %arrayidx4013 = getelementptr inbounds nuw [16 x i16], ptr %is_rep0_long, i64 %idxprom4012
  %idxprom4014 = zext i32 %pos_state.11 to i64
  %arrayidx4015 = getelementptr inbounds nuw i16, ptr %arrayidx4013, i64 %idxprom4014
  %185 = load i16, ptr %arrayidx4015, align 2, !tbaa !40
  %conv4016 = zext i16 %185 to i32
  %mul4017 = mul i32 %shr4011, %conv4016
  %cmp4019 = icmp ult i32 %rc1.sroa.500.127, %mul4017
  br i1 %cmp4019, label %do.body4022, label %do.body4052

do.body4022:                                      ; preds = %do.end4009
  %sub4030 = sub nsw i32 2048, %conv4016
  %shr4031 = lshr i32 %sub4030, 5
  %186 = trunc i32 %shr4031 to i16
  %conv4039 = add i16 %185, %186
  store i16 %conv4039, ptr %arrayidx4015, align 2, !tbaa !40
  %cmp4042 = icmp ult i32 %state.53, 7
  %cond4044 = select i1 %cmp4042, i32 9, i32 11
  br label %sw.bb4045

sw.bb4045:                                        ; preds = %do.body4022, %if.end
  %dict.sroa.37.54 = phi i64 [ %dict.sroa.37.53, %do.body4022 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.54 = phi i64 [ %dict.sroa.12.53, %do.body4022 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.54 = phi i32 [ %len.53, %do.body4022 ], [ %15, %if.end ]
  %rep0.64 = phi i32 [ %rep0.63, %do.body4022 ], [ %6, %if.end ]
  %rep1.54 = phi i32 [ %rep1.53, %do.body4022 ], [ %7, %if.end ]
  %rep2.54 = phi i32 [ %rep2.53, %do.body4022 ], [ %8, %if.end ]
  %rep3.54 = phi i32 [ %rep3.53, %do.body4022 ], [ %9, %if.end ]
  %state.54 = phi i32 [ %cond4044, %do.body4022 ], [ %5, %if.end ]
  %probs.53 = phi ptr [ %probs.52, %do.body4022 ], [ %11, %if.end ]
  %symbol.72 = phi i32 [ %symbol.71, %do.body4022 ], [ %12, %if.end ]
  %limit.59 = phi i32 [ %limit.58, %do.body4022 ], [ %13, %if.end ]
  %offset.65 = phi i32 [ %offset.64, %do.body4022 ], [ %14, %if.end ]
  %rc_in_pos.112 = phi i64 [ %rc_in_pos.111, %do.body4022 ], [ %4, %if.end ]
  %rc1.sroa.0.128 = phi i32 [ %mul4017, %do.body4022 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.128 = phi i32 [ %rc1.sroa.500.127, %do.body4022 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp.i7862 = icmp eq i64 %dict.sroa.12.54, %dict.sroa.46.0
  br i1 %cmp.i7862, label %if.then4048, label %if.end.i7863

if.end.i7863:                                     ; preds = %sw.bb4045
  %187 = getelementptr i8, ptr %dict.sroa.0.0.copyload, i64 %dict.sroa.12.54
  %conv.i7853 = zext i32 %rep0.64 to i64
  %188 = xor i64 %conv.i7853, -1
  %189 = getelementptr i8, ptr %187, i64 %188
  %cmp.i7854 = icmp ugt i64 %dict.sroa.12.54, %conv.i7853
  %spec.select7950 = select i1 %cmp.i7854, i64 0, i64 %dict.sroa.52.0.copyload
  %arrayidx.i7858 = getelementptr i8, ptr %189, i64 %spec.select7950
  %190 = load i8, ptr %arrayidx.i7858, align 1, !tbaa !14
  %inc.i7864 = add i64 %dict.sroa.12.54, 1
  store i8 %190, ptr %187, align 1, !tbaa !14
  %spec.select7951 = tail call i64 @llvm.umax.i64(i64 %inc.i7864, i64 %dict.sroa.37.54)
  br label %while.body

if.then4048:                                      ; preds = %sw.bb4045
  store i32 50, ptr %sequence, align 8, !tbaa !39
  br label %out

do.body4052:                                      ; preds = %do.end4009
  %sub4054 = sub i32 %rc1.sroa.0.127, %mul4017
  %sub4056 = sub nuw i32 %rc1.sroa.500.127, %mul4017
  %shr4063 = lshr i16 %185, 5
  %sub4070 = sub i16 %185, %shr4063
  store i16 %sub4070, ptr %arrayidx4015, align 2, !tbaa !40
  br label %if.end4233

do.body4075:                                      ; preds = %do.end3960
  %sub4077 = sub i32 %rc1.sroa.0.125, %mul3966
  %sub4079 = sub nuw i32 %rc1.sroa.500.125, %mul3966
  %shr4084 = lshr i16 %182, 5
  %sub4089 = sub i16 %182, %shr4084
  store i16 %sub4089, ptr %arrayidx3964, align 2, !tbaa !40
  br label %do.body4094

do.body4094:                                      ; preds = %do.body4075, %if.end
  %dict.sroa.37.55 = phi i64 [ %dict.sroa.37.52, %do.body4075 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.55 = phi i64 [ %dict.sroa.12.52, %do.body4075 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.55 = phi i32 [ %len.52, %do.body4075 ], [ %15, %if.end ]
  %rep0.65 = phi i32 [ %rep0.62, %do.body4075 ], [ %6, %if.end ]
  %rep1.55 = phi i32 [ %rep1.52, %do.body4075 ], [ %7, %if.end ]
  %rep2.55 = phi i32 [ %rep2.52, %do.body4075 ], [ %8, %if.end ]
  %rep3.55 = phi i32 [ %rep3.52, %do.body4075 ], [ %9, %if.end ]
  %state.55 = phi i32 [ %state.52, %do.body4075 ], [ %5, %if.end ]
  %probs.54 = phi ptr [ %probs.51, %do.body4075 ], [ %11, %if.end ]
  %symbol.73 = phi i32 [ %symbol.70, %do.body4075 ], [ %12, %if.end ]
  %limit.60 = phi i32 [ %limit.57, %do.body4075 ], [ %13, %if.end ]
  %offset.66 = phi i32 [ %offset.63, %do.body4075 ], [ %14, %if.end ]
  %rc_in_pos.113 = phi i64 [ %rc_in_pos.109, %do.body4075 ], [ %4, %if.end ]
  %pos_state.12 = phi i32 [ %pos_state.10, %do.body4075 ], [ %conv17, %if.end ]
  %rc1.sroa.0.129 = phi i32 [ %sub4077, %do.body4075 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.129 = phi i32 [ %sub4079, %do.body4075 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp4096 = icmp ult i32 %rc1.sroa.0.129, 16777216
  br i1 %cmp4096, label %if.then4098, label %do.end4115

if.then4098:                                      ; preds = %do.body4094
  %cmp4099 = icmp eq i64 %rc_in_pos.113, %in_size
  br i1 %cmp4099, label %if.then4101, label %if.end4103

if.then4101:                                      ; preds = %if.then4098
  store i32 52, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end4103:                                       ; preds = %if.then4098
  %shl4105 = shl nuw i32 %rc1.sroa.0.129, 8
  %shl4107 = shl i32 %rc1.sroa.500.129, 8
  %inc4108 = add i64 %rc_in_pos.113, 1
  %arrayidx4109 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.113
  %191 = load i8, ptr %arrayidx4109, align 1, !tbaa !14
  %conv4110 = zext i8 %191 to i32
  %or4111 = or disjoint i32 %shl4107, %conv4110
  br label %do.end4115

do.end4115:                                       ; preds = %if.end4103, %do.body4094
  %rc_in_pos.114 = phi i64 [ %inc4108, %if.end4103 ], [ %rc_in_pos.113, %do.body4094 ]
  %rc1.sroa.0.130 = phi i32 [ %shl4105, %if.end4103 ], [ %rc1.sroa.0.129, %do.body4094 ]
  %rc1.sroa.500.130 = phi i32 [ %or4111, %if.end4103 ], [ %rc1.sroa.500.129, %do.body4094 ]
  %shr4117 = lshr i32 %rc1.sroa.0.130, 11
  %is_rep1 = getelementptr inbounds nuw i8, ptr %pcoder, i64 25008
  %idxprom4118 = zext i32 %state.55 to i64
  %arrayidx4119 = getelementptr inbounds nuw i16, ptr %is_rep1, i64 %idxprom4118
  %192 = load i16, ptr %arrayidx4119, align 2, !tbaa !40
  %conv4120 = zext i16 %192 to i32
  %mul4121 = mul i32 %shr4117, %conv4120
  %cmp4123 = icmp ult i32 %rc1.sroa.500.130, %mul4121
  br i1 %cmp4123, label %do.body4126, label %do.body4143

do.body4126:                                      ; preds = %do.end4115
  %sub4132 = sub nsw i32 2048, %conv4120
  %shr4133 = lshr i32 %sub4132, 5
  %193 = trunc i32 %shr4133 to i16
  %conv4139 = add i16 %192, %193
  store i16 %conv4139, ptr %arrayidx4119, align 2, !tbaa !40
  br label %if.end4233

do.body4143:                                      ; preds = %do.end4115
  %sub4145 = sub i32 %rc1.sroa.0.130, %mul4121
  %sub4147 = sub nuw i32 %rc1.sroa.500.130, %mul4121
  %shr4152 = lshr i16 %192, 5
  %sub4157 = sub i16 %192, %shr4152
  store i16 %sub4157, ptr %arrayidx4119, align 2, !tbaa !40
  br label %do.body4162

do.body4162:                                      ; preds = %do.body4143, %if.end
  %dict.sroa.37.56 = phi i64 [ %dict.sroa.37.55, %do.body4143 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.56 = phi i64 [ %dict.sroa.12.55, %do.body4143 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.56 = phi i32 [ %len.55, %do.body4143 ], [ %15, %if.end ]
  %rep0.66 = phi i32 [ %rep0.65, %do.body4143 ], [ %6, %if.end ]
  %rep1.56 = phi i32 [ %rep1.55, %do.body4143 ], [ %7, %if.end ]
  %rep2.56 = phi i32 [ %rep2.55, %do.body4143 ], [ %8, %if.end ]
  %rep3.56 = phi i32 [ %rep3.55, %do.body4143 ], [ %9, %if.end ]
  %state.56 = phi i32 [ %state.55, %do.body4143 ], [ %5, %if.end ]
  %probs.55 = phi ptr [ %probs.54, %do.body4143 ], [ %11, %if.end ]
  %symbol.74 = phi i32 [ %symbol.73, %do.body4143 ], [ %12, %if.end ]
  %limit.61 = phi i32 [ %limit.60, %do.body4143 ], [ %13, %if.end ]
  %offset.67 = phi i32 [ %offset.66, %do.body4143 ], [ %14, %if.end ]
  %rc_in_pos.115 = phi i64 [ %rc_in_pos.114, %do.body4143 ], [ %4, %if.end ]
  %pos_state.13 = phi i32 [ %pos_state.12, %do.body4143 ], [ %conv17, %if.end ]
  %rc1.sroa.0.131 = phi i32 [ %sub4145, %do.body4143 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.131 = phi i32 [ %sub4147, %do.body4143 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp4164 = icmp ult i32 %rc1.sroa.0.131, 16777216
  br i1 %cmp4164, label %if.then4166, label %do.end4183

if.then4166:                                      ; preds = %do.body4162
  %cmp4167 = icmp eq i64 %rc_in_pos.115, %in_size
  br i1 %cmp4167, label %if.then4169, label %if.end4171

if.then4169:                                      ; preds = %if.then4166
  store i32 53, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end4171:                                       ; preds = %if.then4166
  %shl4173 = shl nuw i32 %rc1.sroa.0.131, 8
  %shl4175 = shl i32 %rc1.sroa.500.131, 8
  %inc4176 = add i64 %rc_in_pos.115, 1
  %arrayidx4177 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.115
  %194 = load i8, ptr %arrayidx4177, align 1, !tbaa !14
  %conv4178 = zext i8 %194 to i32
  %or4179 = or disjoint i32 %shl4175, %conv4178
  br label %do.end4183

do.end4183:                                       ; preds = %if.end4171, %do.body4162
  %rc_in_pos.116 = phi i64 [ %inc4176, %if.end4171 ], [ %rc_in_pos.115, %do.body4162 ]
  %rc1.sroa.0.132 = phi i32 [ %shl4173, %if.end4171 ], [ %rc1.sroa.0.131, %do.body4162 ]
  %rc1.sroa.500.132 = phi i32 [ %or4179, %if.end4171 ], [ %rc1.sroa.500.131, %do.body4162 ]
  %shr4185 = lshr i32 %rc1.sroa.0.132, 11
  %is_rep2 = getelementptr inbounds nuw i8, ptr %pcoder, i64 25032
  %idxprom4186 = zext i32 %state.56 to i64
  %arrayidx4187 = getelementptr inbounds nuw i16, ptr %is_rep2, i64 %idxprom4186
  %195 = load i16, ptr %arrayidx4187, align 2, !tbaa !40
  %conv4188 = zext i16 %195 to i32
  %mul4189 = mul i32 %shr4185, %conv4188
  %cmp4191 = icmp ult i32 %rc1.sroa.500.132, %mul4189
  br i1 %cmp4191, label %do.body4194, label %do.body4212

do.body4194:                                      ; preds = %do.end4183
  %sub4200 = sub nsw i32 2048, %conv4188
  %shr4201 = lshr i32 %sub4200, 5
  %196 = trunc i32 %shr4201 to i16
  %conv4207 = add i16 %195, %196
  store i16 %conv4207, ptr %arrayidx4187, align 2, !tbaa !40
  br label %if.end4233

do.body4212:                                      ; preds = %do.end4183
  %sub4214 = sub i32 %rc1.sroa.0.132, %mul4189
  %sub4216 = sub nuw i32 %rc1.sroa.500.132, %mul4189
  %shr4221 = lshr i16 %195, 5
  %sub4226 = sub i16 %195, %shr4221
  store i16 %sub4226, ptr %arrayidx4187, align 2, !tbaa !40
  br label %if.end4233

if.end4233:                                       ; preds = %do.body4212, %do.body4194, %do.body4126, %do.body4052
  %dict.sroa.37.57 = phi i64 [ %dict.sroa.37.53, %do.body4052 ], [ %dict.sroa.37.55, %do.body4126 ], [ %dict.sroa.37.56, %do.body4194 ], [ %dict.sroa.37.56, %do.body4212 ]
  %dict.sroa.12.57 = phi i64 [ %dict.sroa.12.53, %do.body4052 ], [ %dict.sroa.12.55, %do.body4126 ], [ %dict.sroa.12.56, %do.body4194 ], [ %dict.sroa.12.56, %do.body4212 ]
  %len.57 = phi i32 [ %len.53, %do.body4052 ], [ %len.55, %do.body4126 ], [ %len.56, %do.body4194 ], [ %len.56, %do.body4212 ]
  %rep0.67 = phi i32 [ %rep0.63, %do.body4052 ], [ %rep1.55, %do.body4126 ], [ %rep2.56, %do.body4194 ], [ %rep3.56, %do.body4212 ]
  %rep1.57 = phi i32 [ %rep1.53, %do.body4052 ], [ %rep0.65, %do.body4126 ], [ %rep0.66, %do.body4194 ], [ %rep0.66, %do.body4212 ]
  %rep2.57 = phi i32 [ %rep2.53, %do.body4052 ], [ %rep2.55, %do.body4126 ], [ %rep1.56, %do.body4194 ], [ %rep1.56, %do.body4212 ]
  %rep3.57 = phi i32 [ %rep3.53, %do.body4052 ], [ %rep3.55, %do.body4126 ], [ %rep3.56, %do.body4194 ], [ %rep2.56, %do.body4212 ]
  %state.57 = phi i32 [ %state.53, %do.body4052 ], [ %state.55, %do.body4126 ], [ %state.56, %do.body4194 ], [ %state.56, %do.body4212 ]
  %probs.56 = phi ptr [ %probs.52, %do.body4052 ], [ %probs.54, %do.body4126 ], [ %probs.55, %do.body4194 ], [ %probs.55, %do.body4212 ]
  %limit.62 = phi i32 [ %limit.58, %do.body4052 ], [ %limit.60, %do.body4126 ], [ %limit.61, %do.body4194 ], [ %limit.61, %do.body4212 ]
  %offset.68 = phi i32 [ %offset.64, %do.body4052 ], [ %offset.66, %do.body4126 ], [ %offset.67, %do.body4194 ], [ %offset.67, %do.body4212 ]
  %rc_in_pos.117 = phi i64 [ %rc_in_pos.111, %do.body4052 ], [ %rc_in_pos.114, %do.body4126 ], [ %rc_in_pos.116, %do.body4194 ], [ %rc_in_pos.116, %do.body4212 ]
  %pos_state.14 = phi i32 [ %pos_state.11, %do.body4052 ], [ %pos_state.12, %do.body4126 ], [ %pos_state.13, %do.body4194 ], [ %pos_state.13, %do.body4212 ]
  %rc1.sroa.0.133 = phi i32 [ %sub4054, %do.body4052 ], [ %mul4121, %do.body4126 ], [ %mul4189, %do.body4194 ], [ %sub4214, %do.body4212 ]
  %rc1.sroa.500.133 = phi i32 [ %sub4056, %do.body4052 ], [ %rc1.sroa.500.130, %do.body4126 ], [ %rc1.sroa.500.132, %do.body4194 ], [ %sub4216, %do.body4212 ]
  %cmp4234 = icmp ult i32 %state.57, 7
  %cond4236 = select i1 %cmp4234, i32 8, i32 11
  br label %do.body4239

do.body4239:                                      ; preds = %if.end4233, %if.end
  %dict.sroa.37.58 = phi i64 [ %dict.sroa.37.57, %if.end4233 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.58 = phi i64 [ %dict.sroa.12.57, %if.end4233 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.58 = phi i32 [ %len.57, %if.end4233 ], [ %15, %if.end ]
  %rep0.68 = phi i32 [ %rep0.67, %if.end4233 ], [ %6, %if.end ]
  %rep1.58 = phi i32 [ %rep1.57, %if.end4233 ], [ %7, %if.end ]
  %rep2.58 = phi i32 [ %rep2.57, %if.end4233 ], [ %8, %if.end ]
  %rep3.58 = phi i32 [ %rep3.57, %if.end4233 ], [ %9, %if.end ]
  %state.58 = phi i32 [ %cond4236, %if.end4233 ], [ %5, %if.end ]
  %probs.57 = phi ptr [ %probs.56, %if.end4233 ], [ %11, %if.end ]
  %symbol.75 = phi i32 [ 1, %if.end4233 ], [ %12, %if.end ]
  %limit.63 = phi i32 [ %limit.62, %if.end4233 ], [ %13, %if.end ]
  %offset.69 = phi i32 [ %offset.68, %if.end4233 ], [ %14, %if.end ]
  %rc_in_pos.118 = phi i64 [ %rc_in_pos.117, %if.end4233 ], [ %4, %if.end ]
  %pos_state.15 = phi i32 [ %pos_state.14, %if.end4233 ], [ %conv17, %if.end ]
  %rc1.sroa.0.134 = phi i32 [ %rc1.sroa.0.133, %if.end4233 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.134 = phi i32 [ %rc1.sroa.500.133, %if.end4233 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp4241 = icmp ult i32 %rc1.sroa.0.134, 16777216
  br i1 %cmp4241, label %if.then4243, label %do.end4260

if.then4243:                                      ; preds = %do.body4239
  %cmp4244 = icmp eq i64 %rc_in_pos.118, %in_size
  br i1 %cmp4244, label %if.then4246, label %if.end4248

if.then4246:                                      ; preds = %if.then4243
  store i32 54, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end4248:                                       ; preds = %if.then4243
  %shl4250 = shl nuw i32 %rc1.sroa.0.134, 8
  %shl4252 = shl i32 %rc1.sroa.500.134, 8
  %inc4253 = add i64 %rc_in_pos.118, 1
  %arrayidx4254 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.118
  %197 = load i8, ptr %arrayidx4254, align 1, !tbaa !14
  %conv4255 = zext i8 %197 to i32
  %or4256 = or disjoint i32 %shl4252, %conv4255
  br label %do.end4260

do.end4260:                                       ; preds = %if.end4248, %do.body4239
  %rc_in_pos.119 = phi i64 [ %inc4253, %if.end4248 ], [ %rc_in_pos.118, %do.body4239 ]
  %rc1.sroa.0.135 = phi i32 [ %shl4250, %if.end4248 ], [ %rc1.sroa.0.134, %do.body4239 ]
  %rc1.sroa.500.135 = phi i32 [ %or4256, %if.end4248 ], [ %rc1.sroa.500.134, %do.body4239 ]
  %shr4262 = lshr i32 %rc1.sroa.0.135, 11
  %rep_len_decoder = getelementptr inbounds nuw i8, ptr %pcoder, i64 27240
  %198 = load i16, ptr %rep_len_decoder, align 8, !tbaa !44
  %conv4264 = zext i16 %198 to i32
  %mul4265 = mul i32 %shr4262, %conv4264
  %cmp4267 = icmp ult i32 %rc1.sroa.500.135, %mul4265
  br i1 %cmp4267, label %do.body4270, label %do.body4560

do.body4270:                                      ; preds = %do.end4260
  %sub4275 = sub nsw i32 2048, %conv4264
  %shr4276 = lshr i32 %sub4275, 5
  %199 = trunc i32 %shr4276 to i16
  %conv4281 = add i16 %198, %199
  store i16 %conv4281, ptr %rep_len_decoder, align 8, !tbaa !44
  br label %do.body4286

do.body4286:                                      ; preds = %do.body4270, %if.end
  %dict.sroa.37.59 = phi i64 [ %dict.sroa.37.58, %do.body4270 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.59 = phi i64 [ %dict.sroa.12.58, %do.body4270 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.59 = phi i32 [ %len.58, %do.body4270 ], [ %15, %if.end ]
  %rep0.69 = phi i32 [ %rep0.68, %do.body4270 ], [ %6, %if.end ]
  %rep1.59 = phi i32 [ %rep1.58, %do.body4270 ], [ %7, %if.end ]
  %rep2.59 = phi i32 [ %rep2.58, %do.body4270 ], [ %8, %if.end ]
  %rep3.59 = phi i32 [ %rep3.58, %do.body4270 ], [ %9, %if.end ]
  %state.59 = phi i32 [ %state.58, %do.body4270 ], [ %5, %if.end ]
  %probs.58 = phi ptr [ %probs.57, %do.body4270 ], [ %11, %if.end ]
  %symbol.76 = phi i32 [ %symbol.75, %do.body4270 ], [ %12, %if.end ]
  %limit.64 = phi i32 [ %limit.63, %do.body4270 ], [ %13, %if.end ]
  %offset.70 = phi i32 [ %offset.69, %do.body4270 ], [ %14, %if.end ]
  %rc_in_pos.120 = phi i64 [ %rc_in_pos.119, %do.body4270 ], [ %4, %if.end ]
  %pos_state.16 = phi i32 [ %pos_state.15, %do.body4270 ], [ %conv17, %if.end ]
  %rc1.sroa.0.136 = phi i32 [ %mul4265, %do.body4270 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.136 = phi i32 [ %rc1.sroa.500.135, %do.body4270 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp4288 = icmp ult i32 %rc1.sroa.0.136, 16777216
  br i1 %cmp4288, label %if.then4290, label %do.end4307

if.then4290:                                      ; preds = %do.body4286
  %cmp4291 = icmp eq i64 %rc_in_pos.120, %in_size
  br i1 %cmp4291, label %if.then4293, label %if.end4295

if.then4293:                                      ; preds = %if.then4290
  store i32 55, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end4295:                                       ; preds = %if.then4290
  %shl4297 = shl nuw i32 %rc1.sroa.0.136, 8
  %shl4299 = shl i32 %rc1.sroa.500.136, 8
  %inc4300 = add i64 %rc_in_pos.120, 1
  %arrayidx4301 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.120
  %200 = load i8, ptr %arrayidx4301, align 1, !tbaa !14
  %conv4302 = zext i8 %200 to i32
  %or4303 = or disjoint i32 %shl4299, %conv4302
  br label %do.end4307

do.end4307:                                       ; preds = %if.end4295, %do.body4286
  %rc_in_pos.121 = phi i64 [ %inc4300, %if.end4295 ], [ %rc_in_pos.120, %do.body4286 ]
  %rc1.sroa.0.137 = phi i32 [ %shl4297, %if.end4295 ], [ %rc1.sroa.0.136, %do.body4286 ]
  %rc1.sroa.500.137 = phi i32 [ %or4303, %if.end4295 ], [ %rc1.sroa.500.136, %do.body4286 ]
  %shr4309 = lshr i32 %rc1.sroa.0.137, 11
  %low4311 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27244
  %idxprom4312 = zext i32 %pos_state.16 to i64
  %arrayidx4313 = getelementptr inbounds nuw [8 x i16], ptr %low4311, i64 %idxprom4312
  %idxprom4314 = zext i32 %symbol.76 to i64
  %arrayidx4315 = getelementptr inbounds nuw i16, ptr %arrayidx4313, i64 %idxprom4314
  %201 = load i16, ptr %arrayidx4315, align 2, !tbaa !40
  %conv4316 = zext i16 %201 to i32
  %mul4317 = mul i32 %shr4309, %conv4316
  %cmp4319 = icmp ult i32 %rc1.sroa.500.137, %mul4317
  br i1 %cmp4319, label %do.body4322, label %do.body4346

do.body4322:                                      ; preds = %do.end4307
  %sub4331 = sub nsw i32 2048, %conv4316
  %shr4332 = lshr i32 %sub4331, 5
  %202 = trunc i32 %shr4332 to i16
  %conv4341 = add i16 %201, %202
  store i16 %conv4341, ptr %arrayidx4315, align 2, !tbaa !40
  %shl4344 = shl i32 %symbol.76, 1
  br label %do.body4377

do.body4346:                                      ; preds = %do.end4307
  %sub4348 = sub i32 %rc1.sroa.0.137, %mul4317
  %sub4350 = sub nuw i32 %rc1.sroa.500.137, %mul4317
  %shr4358 = lshr i16 %201, 5
  %sub4366 = sub i16 %201, %shr4358
  store i16 %sub4366, ptr %arrayidx4315, align 2, !tbaa !40
  %shl4370 = shl i32 %symbol.76, 1
  %add4371 = or disjoint i32 %shl4370, 1
  br label %do.body4377

do.body4377:                                      ; preds = %do.body4346, %do.body4322, %if.end
  %dict.sroa.37.60 = phi i64 [ %dict.sroa.37.59, %do.body4322 ], [ %dict.sroa.37.59, %do.body4346 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.60 = phi i64 [ %dict.sroa.12.59, %do.body4322 ], [ %dict.sroa.12.59, %do.body4346 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.60 = phi i32 [ %len.59, %do.body4322 ], [ %len.59, %do.body4346 ], [ %15, %if.end ]
  %rep0.70 = phi i32 [ %rep0.69, %do.body4322 ], [ %rep0.69, %do.body4346 ], [ %6, %if.end ]
  %rep1.60 = phi i32 [ %rep1.59, %do.body4322 ], [ %rep1.59, %do.body4346 ], [ %7, %if.end ]
  %rep2.60 = phi i32 [ %rep2.59, %do.body4322 ], [ %rep2.59, %do.body4346 ], [ %8, %if.end ]
  %rep3.60 = phi i32 [ %rep3.59, %do.body4322 ], [ %rep3.59, %do.body4346 ], [ %9, %if.end ]
  %state.60 = phi i32 [ %state.59, %do.body4322 ], [ %state.59, %do.body4346 ], [ %5, %if.end ]
  %probs.59 = phi ptr [ %probs.58, %do.body4322 ], [ %probs.58, %do.body4346 ], [ %11, %if.end ]
  %symbol.77 = phi i32 [ %shl4344, %do.body4322 ], [ %add4371, %do.body4346 ], [ %12, %if.end ]
  %limit.65 = phi i32 [ %limit.64, %do.body4322 ], [ %limit.64, %do.body4346 ], [ %13, %if.end ]
  %offset.71 = phi i32 [ %offset.70, %do.body4322 ], [ %offset.70, %do.body4346 ], [ %14, %if.end ]
  %rc_in_pos.122 = phi i64 [ %rc_in_pos.121, %do.body4322 ], [ %rc_in_pos.121, %do.body4346 ], [ %4, %if.end ]
  %pos_state.17 = phi i32 [ %pos_state.16, %do.body4322 ], [ %pos_state.16, %do.body4346 ], [ %conv17, %if.end ]
  %rc1.sroa.0.138 = phi i32 [ %mul4317, %do.body4322 ], [ %sub4348, %do.body4346 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.138 = phi i32 [ %rc1.sroa.500.137, %do.body4322 ], [ %sub4350, %do.body4346 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp4379 = icmp ult i32 %rc1.sroa.0.138, 16777216
  br i1 %cmp4379, label %if.then4381, label %do.end4398

if.then4381:                                      ; preds = %do.body4377
  %cmp4382 = icmp eq i64 %rc_in_pos.122, %in_size
  br i1 %cmp4382, label %if.then4384, label %if.end4386

if.then4384:                                      ; preds = %if.then4381
  store i32 56, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end4386:                                       ; preds = %if.then4381
  %shl4388 = shl nuw i32 %rc1.sroa.0.138, 8
  %shl4390 = shl i32 %rc1.sroa.500.138, 8
  %inc4391 = add i64 %rc_in_pos.122, 1
  %arrayidx4392 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.122
  %203 = load i8, ptr %arrayidx4392, align 1, !tbaa !14
  %conv4393 = zext i8 %203 to i32
  %or4394 = or disjoint i32 %shl4390, %conv4393
  br label %do.end4398

do.end4398:                                       ; preds = %if.end4386, %do.body4377
  %rc_in_pos.123 = phi i64 [ %inc4391, %if.end4386 ], [ %rc_in_pos.122, %do.body4377 ]
  %rc1.sroa.0.139 = phi i32 [ %shl4388, %if.end4386 ], [ %rc1.sroa.0.138, %do.body4377 ]
  %rc1.sroa.500.139 = phi i32 [ %or4394, %if.end4386 ], [ %rc1.sroa.500.138, %do.body4377 ]
  %shr4400 = lshr i32 %rc1.sroa.0.139, 11
  %low4402 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27244
  %idxprom4403 = zext i32 %pos_state.17 to i64
  %arrayidx4404 = getelementptr inbounds nuw [8 x i16], ptr %low4402, i64 %idxprom4403
  %idxprom4405 = zext i32 %symbol.77 to i64
  %arrayidx4406 = getelementptr inbounds nuw i16, ptr %arrayidx4404, i64 %idxprom4405
  %204 = load i16, ptr %arrayidx4406, align 2, !tbaa !40
  %conv4407 = zext i16 %204 to i32
  %mul4408 = mul i32 %shr4400, %conv4407
  %cmp4410 = icmp ult i32 %rc1.sroa.500.139, %mul4408
  br i1 %cmp4410, label %do.body4413, label %do.body4437

do.body4413:                                      ; preds = %do.end4398
  %sub4422 = sub nsw i32 2048, %conv4407
  %shr4423 = lshr i32 %sub4422, 5
  %205 = trunc i32 %shr4423 to i16
  %conv4432 = add i16 %204, %205
  store i16 %conv4432, ptr %arrayidx4406, align 2, !tbaa !40
  %shl4435 = shl i32 %symbol.77, 1
  br label %do.body4468

do.body4437:                                      ; preds = %do.end4398
  %sub4439 = sub i32 %rc1.sroa.0.139, %mul4408
  %sub4441 = sub nuw i32 %rc1.sroa.500.139, %mul4408
  %shr4449 = lshr i16 %204, 5
  %sub4457 = sub i16 %204, %shr4449
  store i16 %sub4457, ptr %arrayidx4406, align 2, !tbaa !40
  %shl4461 = shl i32 %symbol.77, 1
  %add4462 = or disjoint i32 %shl4461, 1
  br label %do.body4468

do.body4468:                                      ; preds = %do.body4437, %do.body4413, %if.end
  %dict.sroa.37.61 = phi i64 [ %dict.sroa.37.60, %do.body4413 ], [ %dict.sroa.37.60, %do.body4437 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.61 = phi i64 [ %dict.sroa.12.60, %do.body4413 ], [ %dict.sroa.12.60, %do.body4437 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.61 = phi i32 [ %len.60, %do.body4413 ], [ %len.60, %do.body4437 ], [ %15, %if.end ]
  %rep0.71 = phi i32 [ %rep0.70, %do.body4413 ], [ %rep0.70, %do.body4437 ], [ %6, %if.end ]
  %rep1.61 = phi i32 [ %rep1.60, %do.body4413 ], [ %rep1.60, %do.body4437 ], [ %7, %if.end ]
  %rep2.61 = phi i32 [ %rep2.60, %do.body4413 ], [ %rep2.60, %do.body4437 ], [ %8, %if.end ]
  %rep3.61 = phi i32 [ %rep3.60, %do.body4413 ], [ %rep3.60, %do.body4437 ], [ %9, %if.end ]
  %state.61 = phi i32 [ %state.60, %do.body4413 ], [ %state.60, %do.body4437 ], [ %5, %if.end ]
  %probs.60 = phi ptr [ %probs.59, %do.body4413 ], [ %probs.59, %do.body4437 ], [ %11, %if.end ]
  %symbol.78 = phi i32 [ %shl4435, %do.body4413 ], [ %add4462, %do.body4437 ], [ %12, %if.end ]
  %limit.66 = phi i32 [ %limit.65, %do.body4413 ], [ %limit.65, %do.body4437 ], [ %13, %if.end ]
  %offset.72 = phi i32 [ %offset.71, %do.body4413 ], [ %offset.71, %do.body4437 ], [ %14, %if.end ]
  %rc_in_pos.124 = phi i64 [ %rc_in_pos.123, %do.body4413 ], [ %rc_in_pos.123, %do.body4437 ], [ %4, %if.end ]
  %pos_state.18 = phi i32 [ %pos_state.17, %do.body4413 ], [ %pos_state.17, %do.body4437 ], [ %conv17, %if.end ]
  %rc1.sroa.0.140 = phi i32 [ %mul4408, %do.body4413 ], [ %sub4439, %do.body4437 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.140 = phi i32 [ %rc1.sroa.500.139, %do.body4413 ], [ %sub4441, %do.body4437 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp4470 = icmp ult i32 %rc1.sroa.0.140, 16777216
  br i1 %cmp4470, label %if.then4472, label %do.end4489

if.then4472:                                      ; preds = %do.body4468
  %cmp4473 = icmp eq i64 %rc_in_pos.124, %in_size
  br i1 %cmp4473, label %if.then4475, label %if.end4477

if.then4475:                                      ; preds = %if.then4472
  store i32 57, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end4477:                                       ; preds = %if.then4472
  %shl4479 = shl nuw i32 %rc1.sroa.0.140, 8
  %shl4481 = shl i32 %rc1.sroa.500.140, 8
  %inc4482 = add i64 %rc_in_pos.124, 1
  %arrayidx4483 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.124
  %206 = load i8, ptr %arrayidx4483, align 1, !tbaa !14
  %conv4484 = zext i8 %206 to i32
  %or4485 = or disjoint i32 %shl4481, %conv4484
  br label %do.end4489

do.end4489:                                       ; preds = %if.end4477, %do.body4468
  %rc_in_pos.125 = phi i64 [ %inc4482, %if.end4477 ], [ %rc_in_pos.124, %do.body4468 ]
  %rc1.sroa.0.141 = phi i32 [ %shl4479, %if.end4477 ], [ %rc1.sroa.0.140, %do.body4468 ]
  %rc1.sroa.500.141 = phi i32 [ %or4485, %if.end4477 ], [ %rc1.sroa.500.140, %do.body4468 ]
  %shr4491 = lshr i32 %rc1.sroa.0.141, 11
  %low4493 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27244
  %idxprom4494 = zext i32 %pos_state.18 to i64
  %arrayidx4495 = getelementptr inbounds nuw [8 x i16], ptr %low4493, i64 %idxprom4494
  %idxprom4496 = zext i32 %symbol.78 to i64
  %arrayidx4497 = getelementptr inbounds nuw i16, ptr %arrayidx4495, i64 %idxprom4496
  %207 = load i16, ptr %arrayidx4497, align 2, !tbaa !40
  %conv4498 = zext i16 %207 to i32
  %mul4499 = mul i32 %shr4491, %conv4498
  %cmp4501 = icmp ult i32 %rc1.sroa.500.141, %mul4499
  br i1 %cmp4501, label %do.body4504, label %do.body4528

do.body4504:                                      ; preds = %do.end4489
  %sub4513 = sub nsw i32 2048, %conv4498
  %shr4514 = lshr i32 %sub4513, 5
  %208 = trunc i32 %shr4514 to i16
  %conv4523 = add i16 %207, %208
  %shl4526 = shl i32 %symbol.78, 1
  br label %do.end4556

do.body4528:                                      ; preds = %do.end4489
  %sub4530 = sub i32 %rc1.sroa.0.141, %mul4499
  %sub4532 = sub nuw i32 %rc1.sroa.500.141, %mul4499
  %shr4540 = lshr i16 %207, 5
  %sub4548 = sub i16 %207, %shr4540
  %shl4552 = shl i32 %symbol.78, 1
  %add4553 = or disjoint i32 %shl4552, 1
  br label %do.end4556

do.end4556:                                       ; preds = %do.body4528, %do.body4504
  %sub4548.sink = phi i16 [ %conv4523, %do.body4504 ], [ %sub4548, %do.body4528 ]
  %symbol.79 = phi i32 [ %shl4526, %do.body4504 ], [ %add4553, %do.body4528 ]
  %rc1.sroa.0.142 = phi i32 [ %mul4499, %do.body4504 ], [ %sub4530, %do.body4528 ]
  %rc1.sroa.500.142 = phi i32 [ %rc1.sroa.500.141, %do.body4504 ], [ %sub4532, %do.body4528 ]
  store i16 %sub4548.sink, ptr %arrayidx4497, align 2, !tbaa !40
  %add4558 = add i32 %symbol.79, -6
  br label %sw.bb5573

do.body4560:                                      ; preds = %do.end4260
  %sub4562 = sub i32 %rc1.sroa.0.135, %mul4265
  %sub4564 = sub nuw i32 %rc1.sroa.500.135, %mul4265
  %shr4568 = lshr i16 %198, 5
  %sub4572 = sub i16 %198, %shr4568
  store i16 %sub4572, ptr %rep_len_decoder, align 8, !tbaa !44
  br label %do.body4577

do.body4577:                                      ; preds = %do.body4560, %if.end
  %dict.sroa.37.62 = phi i64 [ %dict.sroa.37.58, %do.body4560 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.62 = phi i64 [ %dict.sroa.12.58, %do.body4560 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.62 = phi i32 [ %len.58, %do.body4560 ], [ %15, %if.end ]
  %rep0.72 = phi i32 [ %rep0.68, %do.body4560 ], [ %6, %if.end ]
  %rep1.62 = phi i32 [ %rep1.58, %do.body4560 ], [ %7, %if.end ]
  %rep2.62 = phi i32 [ %rep2.58, %do.body4560 ], [ %8, %if.end ]
  %rep3.62 = phi i32 [ %rep3.58, %do.body4560 ], [ %9, %if.end ]
  %state.62 = phi i32 [ %state.58, %do.body4560 ], [ %5, %if.end ]
  %probs.61 = phi ptr [ %probs.57, %do.body4560 ], [ %11, %if.end ]
  %symbol.80 = phi i32 [ %symbol.75, %do.body4560 ], [ %12, %if.end ]
  %limit.67 = phi i32 [ %limit.63, %do.body4560 ], [ %13, %if.end ]
  %offset.73 = phi i32 [ %offset.69, %do.body4560 ], [ %14, %if.end ]
  %rc_in_pos.126 = phi i64 [ %rc_in_pos.119, %do.body4560 ], [ %4, %if.end ]
  %pos_state.19 = phi i32 [ %pos_state.15, %do.body4560 ], [ %conv17, %if.end ]
  %rc1.sroa.0.143 = phi i32 [ %sub4562, %do.body4560 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.143 = phi i32 [ %sub4564, %do.body4560 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp4579 = icmp ult i32 %rc1.sroa.0.143, 16777216
  br i1 %cmp4579, label %if.then4581, label %do.end4598

if.then4581:                                      ; preds = %do.body4577
  %cmp4582 = icmp eq i64 %rc_in_pos.126, %in_size
  br i1 %cmp4582, label %if.then4584, label %if.end4586

if.then4584:                                      ; preds = %if.then4581
  store i32 58, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end4586:                                       ; preds = %if.then4581
  %shl4588 = shl nuw i32 %rc1.sroa.0.143, 8
  %shl4590 = shl i32 %rc1.sroa.500.143, 8
  %inc4591 = add i64 %rc_in_pos.126, 1
  %arrayidx4592 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.126
  %209 = load i8, ptr %arrayidx4592, align 1, !tbaa !14
  %conv4593 = zext i8 %209 to i32
  %or4594 = or disjoint i32 %shl4590, %conv4593
  br label %do.end4598

do.end4598:                                       ; preds = %if.end4586, %do.body4577
  %rc_in_pos.127 = phi i64 [ %inc4591, %if.end4586 ], [ %rc_in_pos.126, %do.body4577 ]
  %rc1.sroa.0.144 = phi i32 [ %shl4588, %if.end4586 ], [ %rc1.sroa.0.143, %do.body4577 ]
  %rc1.sroa.500.144 = phi i32 [ %or4594, %if.end4586 ], [ %rc1.sroa.500.143, %do.body4577 ]
  %shr4600 = lshr i32 %rc1.sroa.0.144, 11
  %choice24602 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27242
  %210 = load i16, ptr %choice24602, align 2, !tbaa !45
  %conv4603 = zext i16 %210 to i32
  %mul4604 = mul i32 %shr4600, %conv4603
  %cmp4606 = icmp ult i32 %rc1.sroa.500.144, %mul4604
  br i1 %cmp4606, label %do.body4609, label %do.body4900

do.body4609:                                      ; preds = %do.end4598
  %sub4614 = sub nsw i32 2048, %conv4603
  %shr4615 = lshr i32 %sub4614, 5
  %211 = trunc i32 %shr4615 to i16
  %conv4620 = add i16 %210, %211
  store i16 %conv4620, ptr %choice24602, align 2, !tbaa !45
  br label %do.body4625

do.body4625:                                      ; preds = %do.body4609, %if.end
  %dict.sroa.37.63 = phi i64 [ %dict.sroa.37.62, %do.body4609 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.63 = phi i64 [ %dict.sroa.12.62, %do.body4609 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.63 = phi i32 [ %len.62, %do.body4609 ], [ %15, %if.end ]
  %rep0.73 = phi i32 [ %rep0.72, %do.body4609 ], [ %6, %if.end ]
  %rep1.63 = phi i32 [ %rep1.62, %do.body4609 ], [ %7, %if.end ]
  %rep2.63 = phi i32 [ %rep2.62, %do.body4609 ], [ %8, %if.end ]
  %rep3.63 = phi i32 [ %rep3.62, %do.body4609 ], [ %9, %if.end ]
  %state.63 = phi i32 [ %state.62, %do.body4609 ], [ %5, %if.end ]
  %probs.62 = phi ptr [ %probs.61, %do.body4609 ], [ %11, %if.end ]
  %symbol.81 = phi i32 [ %symbol.80, %do.body4609 ], [ %12, %if.end ]
  %limit.68 = phi i32 [ %limit.67, %do.body4609 ], [ %13, %if.end ]
  %offset.74 = phi i32 [ %offset.73, %do.body4609 ], [ %14, %if.end ]
  %rc_in_pos.128 = phi i64 [ %rc_in_pos.127, %do.body4609 ], [ %4, %if.end ]
  %pos_state.20 = phi i32 [ %pos_state.19, %do.body4609 ], [ %conv17, %if.end ]
  %rc1.sroa.0.145 = phi i32 [ %mul4604, %do.body4609 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.145 = phi i32 [ %rc1.sroa.500.144, %do.body4609 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp4627 = icmp ult i32 %rc1.sroa.0.145, 16777216
  br i1 %cmp4627, label %if.then4629, label %do.end4646

if.then4629:                                      ; preds = %do.body4625
  %cmp4630 = icmp eq i64 %rc_in_pos.128, %in_size
  br i1 %cmp4630, label %if.then4632, label %if.end4634

if.then4632:                                      ; preds = %if.then4629
  store i32 59, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end4634:                                       ; preds = %if.then4629
  %shl4636 = shl nuw i32 %rc1.sroa.0.145, 8
  %shl4638 = shl i32 %rc1.sroa.500.145, 8
  %inc4639 = add i64 %rc_in_pos.128, 1
  %arrayidx4640 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.128
  %212 = load i8, ptr %arrayidx4640, align 1, !tbaa !14
  %conv4641 = zext i8 %212 to i32
  %or4642 = or disjoint i32 %shl4638, %conv4641
  br label %do.end4646

do.end4646:                                       ; preds = %if.end4634, %do.body4625
  %rc_in_pos.129 = phi i64 [ %inc4639, %if.end4634 ], [ %rc_in_pos.128, %do.body4625 ]
  %rc1.sroa.0.146 = phi i32 [ %shl4636, %if.end4634 ], [ %rc1.sroa.0.145, %do.body4625 ]
  %rc1.sroa.500.146 = phi i32 [ %or4642, %if.end4634 ], [ %rc1.sroa.500.145, %do.body4625 ]
  %shr4648 = lshr i32 %rc1.sroa.0.146, 11
  %mid4650 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27500
  %idxprom4651 = zext i32 %pos_state.20 to i64
  %arrayidx4652 = getelementptr inbounds nuw [8 x i16], ptr %mid4650, i64 %idxprom4651
  %idxprom4653 = zext i32 %symbol.81 to i64
  %arrayidx4654 = getelementptr inbounds nuw i16, ptr %arrayidx4652, i64 %idxprom4653
  %213 = load i16, ptr %arrayidx4654, align 2, !tbaa !40
  %conv4655 = zext i16 %213 to i32
  %mul4656 = mul i32 %shr4648, %conv4655
  %cmp4658 = icmp ult i32 %rc1.sroa.500.146, %mul4656
  br i1 %cmp4658, label %do.body4661, label %do.body4685

do.body4661:                                      ; preds = %do.end4646
  %sub4670 = sub nsw i32 2048, %conv4655
  %shr4671 = lshr i32 %sub4670, 5
  %214 = trunc i32 %shr4671 to i16
  %conv4680 = add i16 %213, %214
  store i16 %conv4680, ptr %arrayidx4654, align 2, !tbaa !40
  %shl4683 = shl i32 %symbol.81, 1
  br label %do.body4716

do.body4685:                                      ; preds = %do.end4646
  %sub4687 = sub i32 %rc1.sroa.0.146, %mul4656
  %sub4689 = sub nuw i32 %rc1.sroa.500.146, %mul4656
  %shr4697 = lshr i16 %213, 5
  %sub4705 = sub i16 %213, %shr4697
  store i16 %sub4705, ptr %arrayidx4654, align 2, !tbaa !40
  %shl4709 = shl i32 %symbol.81, 1
  %add4710 = or disjoint i32 %shl4709, 1
  br label %do.body4716

do.body4716:                                      ; preds = %do.body4685, %do.body4661, %if.end
  %dict.sroa.37.64 = phi i64 [ %dict.sroa.37.63, %do.body4661 ], [ %dict.sroa.37.63, %do.body4685 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.64 = phi i64 [ %dict.sroa.12.63, %do.body4661 ], [ %dict.sroa.12.63, %do.body4685 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.64 = phi i32 [ %len.63, %do.body4661 ], [ %len.63, %do.body4685 ], [ %15, %if.end ]
  %rep0.74 = phi i32 [ %rep0.73, %do.body4661 ], [ %rep0.73, %do.body4685 ], [ %6, %if.end ]
  %rep1.64 = phi i32 [ %rep1.63, %do.body4661 ], [ %rep1.63, %do.body4685 ], [ %7, %if.end ]
  %rep2.64 = phi i32 [ %rep2.63, %do.body4661 ], [ %rep2.63, %do.body4685 ], [ %8, %if.end ]
  %rep3.64 = phi i32 [ %rep3.63, %do.body4661 ], [ %rep3.63, %do.body4685 ], [ %9, %if.end ]
  %state.64 = phi i32 [ %state.63, %do.body4661 ], [ %state.63, %do.body4685 ], [ %5, %if.end ]
  %probs.63 = phi ptr [ %probs.62, %do.body4661 ], [ %probs.62, %do.body4685 ], [ %11, %if.end ]
  %symbol.82 = phi i32 [ %shl4683, %do.body4661 ], [ %add4710, %do.body4685 ], [ %12, %if.end ]
  %limit.69 = phi i32 [ %limit.68, %do.body4661 ], [ %limit.68, %do.body4685 ], [ %13, %if.end ]
  %offset.75 = phi i32 [ %offset.74, %do.body4661 ], [ %offset.74, %do.body4685 ], [ %14, %if.end ]
  %rc_in_pos.130 = phi i64 [ %rc_in_pos.129, %do.body4661 ], [ %rc_in_pos.129, %do.body4685 ], [ %4, %if.end ]
  %pos_state.21 = phi i32 [ %pos_state.20, %do.body4661 ], [ %pos_state.20, %do.body4685 ], [ %conv17, %if.end ]
  %rc1.sroa.0.147 = phi i32 [ %mul4656, %do.body4661 ], [ %sub4687, %do.body4685 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.147 = phi i32 [ %rc1.sroa.500.146, %do.body4661 ], [ %sub4689, %do.body4685 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp4718 = icmp ult i32 %rc1.sroa.0.147, 16777216
  br i1 %cmp4718, label %if.then4720, label %do.end4737

if.then4720:                                      ; preds = %do.body4716
  %cmp4721 = icmp eq i64 %rc_in_pos.130, %in_size
  br i1 %cmp4721, label %if.then4723, label %if.end4725

if.then4723:                                      ; preds = %if.then4720
  store i32 60, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end4725:                                       ; preds = %if.then4720
  %shl4727 = shl nuw i32 %rc1.sroa.0.147, 8
  %shl4729 = shl i32 %rc1.sroa.500.147, 8
  %inc4730 = add i64 %rc_in_pos.130, 1
  %arrayidx4731 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.130
  %215 = load i8, ptr %arrayidx4731, align 1, !tbaa !14
  %conv4732 = zext i8 %215 to i32
  %or4733 = or disjoint i32 %shl4729, %conv4732
  br label %do.end4737

do.end4737:                                       ; preds = %if.end4725, %do.body4716
  %rc_in_pos.131 = phi i64 [ %inc4730, %if.end4725 ], [ %rc_in_pos.130, %do.body4716 ]
  %rc1.sroa.0.148 = phi i32 [ %shl4727, %if.end4725 ], [ %rc1.sroa.0.147, %do.body4716 ]
  %rc1.sroa.500.148 = phi i32 [ %or4733, %if.end4725 ], [ %rc1.sroa.500.147, %do.body4716 ]
  %shr4739 = lshr i32 %rc1.sroa.0.148, 11
  %mid4741 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27500
  %idxprom4742 = zext i32 %pos_state.21 to i64
  %arrayidx4743 = getelementptr inbounds nuw [8 x i16], ptr %mid4741, i64 %idxprom4742
  %idxprom4744 = zext i32 %symbol.82 to i64
  %arrayidx4745 = getelementptr inbounds nuw i16, ptr %arrayidx4743, i64 %idxprom4744
  %216 = load i16, ptr %arrayidx4745, align 2, !tbaa !40
  %conv4746 = zext i16 %216 to i32
  %mul4747 = mul i32 %shr4739, %conv4746
  %cmp4749 = icmp ult i32 %rc1.sroa.500.148, %mul4747
  br i1 %cmp4749, label %do.body4752, label %do.body4776

do.body4752:                                      ; preds = %do.end4737
  %sub4761 = sub nsw i32 2048, %conv4746
  %shr4762 = lshr i32 %sub4761, 5
  %217 = trunc i32 %shr4762 to i16
  %conv4771 = add i16 %216, %217
  store i16 %conv4771, ptr %arrayidx4745, align 2, !tbaa !40
  %shl4774 = shl i32 %symbol.82, 1
  br label %do.body4807

do.body4776:                                      ; preds = %do.end4737
  %sub4778 = sub i32 %rc1.sroa.0.148, %mul4747
  %sub4780 = sub nuw i32 %rc1.sroa.500.148, %mul4747
  %shr4788 = lshr i16 %216, 5
  %sub4796 = sub i16 %216, %shr4788
  store i16 %sub4796, ptr %arrayidx4745, align 2, !tbaa !40
  %shl4800 = shl i32 %symbol.82, 1
  %add4801 = or disjoint i32 %shl4800, 1
  br label %do.body4807

do.body4807:                                      ; preds = %do.body4776, %do.body4752, %if.end
  %dict.sroa.37.65 = phi i64 [ %dict.sroa.37.64, %do.body4752 ], [ %dict.sroa.37.64, %do.body4776 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.65 = phi i64 [ %dict.sroa.12.64, %do.body4752 ], [ %dict.sroa.12.64, %do.body4776 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.65 = phi i32 [ %len.64, %do.body4752 ], [ %len.64, %do.body4776 ], [ %15, %if.end ]
  %rep0.75 = phi i32 [ %rep0.74, %do.body4752 ], [ %rep0.74, %do.body4776 ], [ %6, %if.end ]
  %rep1.65 = phi i32 [ %rep1.64, %do.body4752 ], [ %rep1.64, %do.body4776 ], [ %7, %if.end ]
  %rep2.65 = phi i32 [ %rep2.64, %do.body4752 ], [ %rep2.64, %do.body4776 ], [ %8, %if.end ]
  %rep3.65 = phi i32 [ %rep3.64, %do.body4752 ], [ %rep3.64, %do.body4776 ], [ %9, %if.end ]
  %state.65 = phi i32 [ %state.64, %do.body4752 ], [ %state.64, %do.body4776 ], [ %5, %if.end ]
  %probs.64 = phi ptr [ %probs.63, %do.body4752 ], [ %probs.63, %do.body4776 ], [ %11, %if.end ]
  %symbol.83 = phi i32 [ %shl4774, %do.body4752 ], [ %add4801, %do.body4776 ], [ %12, %if.end ]
  %limit.70 = phi i32 [ %limit.69, %do.body4752 ], [ %limit.69, %do.body4776 ], [ %13, %if.end ]
  %offset.76 = phi i32 [ %offset.75, %do.body4752 ], [ %offset.75, %do.body4776 ], [ %14, %if.end ]
  %rc_in_pos.132 = phi i64 [ %rc_in_pos.131, %do.body4752 ], [ %rc_in_pos.131, %do.body4776 ], [ %4, %if.end ]
  %pos_state.22 = phi i32 [ %pos_state.21, %do.body4752 ], [ %pos_state.21, %do.body4776 ], [ %conv17, %if.end ]
  %rc1.sroa.0.149 = phi i32 [ %mul4747, %do.body4752 ], [ %sub4778, %do.body4776 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.149 = phi i32 [ %rc1.sroa.500.148, %do.body4752 ], [ %sub4780, %do.body4776 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp4809 = icmp ult i32 %rc1.sroa.0.149, 16777216
  br i1 %cmp4809, label %if.then4811, label %do.end4828

if.then4811:                                      ; preds = %do.body4807
  %cmp4812 = icmp eq i64 %rc_in_pos.132, %in_size
  br i1 %cmp4812, label %if.then4814, label %if.end4816

if.then4814:                                      ; preds = %if.then4811
  store i32 61, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end4816:                                       ; preds = %if.then4811
  %shl4818 = shl nuw i32 %rc1.sroa.0.149, 8
  %shl4820 = shl i32 %rc1.sroa.500.149, 8
  %inc4821 = add i64 %rc_in_pos.132, 1
  %arrayidx4822 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.132
  %218 = load i8, ptr %arrayidx4822, align 1, !tbaa !14
  %conv4823 = zext i8 %218 to i32
  %or4824 = or disjoint i32 %shl4820, %conv4823
  br label %do.end4828

do.end4828:                                       ; preds = %if.end4816, %do.body4807
  %rc_in_pos.133 = phi i64 [ %inc4821, %if.end4816 ], [ %rc_in_pos.132, %do.body4807 ]
  %rc1.sroa.0.150 = phi i32 [ %shl4818, %if.end4816 ], [ %rc1.sroa.0.149, %do.body4807 ]
  %rc1.sroa.500.150 = phi i32 [ %or4824, %if.end4816 ], [ %rc1.sroa.500.149, %do.body4807 ]
  %shr4830 = lshr i32 %rc1.sroa.0.150, 11
  %mid4832 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27500
  %idxprom4833 = zext i32 %pos_state.22 to i64
  %arrayidx4834 = getelementptr inbounds nuw [8 x i16], ptr %mid4832, i64 %idxprom4833
  %idxprom4835 = zext i32 %symbol.83 to i64
  %arrayidx4836 = getelementptr inbounds nuw i16, ptr %arrayidx4834, i64 %idxprom4835
  %219 = load i16, ptr %arrayidx4836, align 2, !tbaa !40
  %conv4837 = zext i16 %219 to i32
  %mul4838 = mul i32 %shr4830, %conv4837
  %cmp4840 = icmp ult i32 %rc1.sroa.500.150, %mul4838
  br i1 %cmp4840, label %do.body4843, label %do.body4867

do.body4843:                                      ; preds = %do.end4828
  %sub4852 = sub nsw i32 2048, %conv4837
  %shr4853 = lshr i32 %sub4852, 5
  %220 = trunc i32 %shr4853 to i16
  %conv4862 = add i16 %219, %220
  %shl4865 = shl i32 %symbol.83, 1
  br label %do.end4895

do.body4867:                                      ; preds = %do.end4828
  %sub4869 = sub i32 %rc1.sroa.0.150, %mul4838
  %sub4871 = sub nuw i32 %rc1.sroa.500.150, %mul4838
  %shr4879 = lshr i16 %219, 5
  %sub4887 = sub i16 %219, %shr4879
  %shl4891 = shl i32 %symbol.83, 1
  %add4892 = or disjoint i32 %shl4891, 1
  br label %do.end4895

do.end4895:                                       ; preds = %do.body4867, %do.body4843
  %sub4887.sink = phi i16 [ %conv4862, %do.body4843 ], [ %sub4887, %do.body4867 ]
  %symbol.84 = phi i32 [ %shl4865, %do.body4843 ], [ %add4892, %do.body4867 ]
  %rc1.sroa.0.151 = phi i32 [ %mul4838, %do.body4843 ], [ %sub4869, %do.body4867 ]
  %rc1.sroa.500.151 = phi i32 [ %rc1.sroa.500.150, %do.body4843 ], [ %sub4871, %do.body4867 ]
  store i16 %sub4887.sink, ptr %arrayidx4836, align 2, !tbaa !40
  %add4898 = add i32 %symbol.84, 2
  br label %sw.bb5573

do.body4900:                                      ; preds = %do.end4598
  %sub4902 = sub i32 %rc1.sroa.0.144, %mul4604
  %sub4904 = sub nuw i32 %rc1.sroa.500.144, %mul4604
  %shr4908 = lshr i16 %210, 5
  %sub4912 = sub i16 %210, %shr4908
  store i16 %sub4912, ptr %choice24602, align 2, !tbaa !45
  br label %do.body4918

do.body4918:                                      ; preds = %do.body4900, %if.end
  %dict.sroa.37.66 = phi i64 [ %dict.sroa.37.62, %do.body4900 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.66 = phi i64 [ %dict.sroa.12.62, %do.body4900 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.66 = phi i32 [ %len.62, %do.body4900 ], [ %15, %if.end ]
  %rep0.76 = phi i32 [ %rep0.72, %do.body4900 ], [ %6, %if.end ]
  %rep1.66 = phi i32 [ %rep1.62, %do.body4900 ], [ %7, %if.end ]
  %rep2.66 = phi i32 [ %rep2.62, %do.body4900 ], [ %8, %if.end ]
  %rep3.66 = phi i32 [ %rep3.62, %do.body4900 ], [ %9, %if.end ]
  %state.66 = phi i32 [ %state.62, %do.body4900 ], [ %5, %if.end ]
  %probs.65 = phi ptr [ %probs.61, %do.body4900 ], [ %11, %if.end ]
  %symbol.85 = phi i32 [ %symbol.80, %do.body4900 ], [ %12, %if.end ]
  %limit.71 = phi i32 [ %limit.67, %do.body4900 ], [ %13, %if.end ]
  %offset.77 = phi i32 [ %offset.73, %do.body4900 ], [ %14, %if.end ]
  %rc_in_pos.134 = phi i64 [ %rc_in_pos.127, %do.body4900 ], [ %4, %if.end ]
  %rc1.sroa.0.152 = phi i32 [ %sub4902, %do.body4900 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.152 = phi i32 [ %sub4904, %do.body4900 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp4920 = icmp ult i32 %rc1.sroa.0.152, 16777216
  br i1 %cmp4920, label %if.then4922, label %do.end4939

if.then4922:                                      ; preds = %do.body4918
  %cmp4923 = icmp eq i64 %rc_in_pos.134, %in_size
  br i1 %cmp4923, label %if.then4925, label %if.end4927

if.then4925:                                      ; preds = %if.then4922
  store i32 62, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end4927:                                       ; preds = %if.then4922
  %shl4929 = shl nuw i32 %rc1.sroa.0.152, 8
  %shl4931 = shl i32 %rc1.sroa.500.152, 8
  %inc4932 = add i64 %rc_in_pos.134, 1
  %arrayidx4933 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.134
  %221 = load i8, ptr %arrayidx4933, align 1, !tbaa !14
  %conv4934 = zext i8 %221 to i32
  %or4935 = or disjoint i32 %shl4931, %conv4934
  br label %do.end4939

do.end4939:                                       ; preds = %if.end4927, %do.body4918
  %rc_in_pos.135 = phi i64 [ %inc4932, %if.end4927 ], [ %rc_in_pos.134, %do.body4918 ]
  %rc1.sroa.0.153 = phi i32 [ %shl4929, %if.end4927 ], [ %rc1.sroa.0.152, %do.body4918 ]
  %rc1.sroa.500.153 = phi i32 [ %or4935, %if.end4927 ], [ %rc1.sroa.500.152, %do.body4918 ]
  %shr4941 = lshr i32 %rc1.sroa.0.153, 11
  %high4943 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27756
  %idxprom4944 = zext i32 %symbol.85 to i64
  %arrayidx4945 = getelementptr inbounds nuw i16, ptr %high4943, i64 %idxprom4944
  %222 = load i16, ptr %arrayidx4945, align 2, !tbaa !40
  %conv4946 = zext i16 %222 to i32
  %mul4947 = mul i32 %shr4941, %conv4946
  %cmp4949 = icmp ult i32 %rc1.sroa.500.153, %mul4947
  br i1 %cmp4949, label %do.body4952, label %do.body4972

do.body4952:                                      ; preds = %do.end4939
  %sub4959 = sub nsw i32 2048, %conv4946
  %shr4960 = lshr i32 %sub4959, 5
  %223 = trunc i32 %shr4960 to i16
  %conv4967 = add i16 %222, %223
  store i16 %conv4967, ptr %arrayidx4945, align 2, !tbaa !40
  %shl4970 = shl i32 %symbol.85, 1
  br label %do.body4999

do.body4972:                                      ; preds = %do.end4939
  %sub4974 = sub i32 %rc1.sroa.0.153, %mul4947
  %sub4976 = sub nuw i32 %rc1.sroa.500.153, %mul4947
  %shr4982 = lshr i16 %222, 5
  %sub4988 = sub i16 %222, %shr4982
  store i16 %sub4988, ptr %arrayidx4945, align 2, !tbaa !40
  %shl4992 = shl i32 %symbol.85, 1
  %add4993 = or disjoint i32 %shl4992, 1
  br label %do.body4999

do.body4999:                                      ; preds = %do.body4972, %do.body4952, %if.end
  %dict.sroa.37.67 = phi i64 [ %dict.sroa.37.66, %do.body4952 ], [ %dict.sroa.37.66, %do.body4972 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.67 = phi i64 [ %dict.sroa.12.66, %do.body4952 ], [ %dict.sroa.12.66, %do.body4972 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.67 = phi i32 [ %len.66, %do.body4952 ], [ %len.66, %do.body4972 ], [ %15, %if.end ]
  %rep0.77 = phi i32 [ %rep0.76, %do.body4952 ], [ %rep0.76, %do.body4972 ], [ %6, %if.end ]
  %rep1.67 = phi i32 [ %rep1.66, %do.body4952 ], [ %rep1.66, %do.body4972 ], [ %7, %if.end ]
  %rep2.67 = phi i32 [ %rep2.66, %do.body4952 ], [ %rep2.66, %do.body4972 ], [ %8, %if.end ]
  %rep3.67 = phi i32 [ %rep3.66, %do.body4952 ], [ %rep3.66, %do.body4972 ], [ %9, %if.end ]
  %state.67 = phi i32 [ %state.66, %do.body4952 ], [ %state.66, %do.body4972 ], [ %5, %if.end ]
  %probs.66 = phi ptr [ %probs.65, %do.body4952 ], [ %probs.65, %do.body4972 ], [ %11, %if.end ]
  %symbol.86 = phi i32 [ %shl4970, %do.body4952 ], [ %add4993, %do.body4972 ], [ %12, %if.end ]
  %limit.72 = phi i32 [ %limit.71, %do.body4952 ], [ %limit.71, %do.body4972 ], [ %13, %if.end ]
  %offset.78 = phi i32 [ %offset.77, %do.body4952 ], [ %offset.77, %do.body4972 ], [ %14, %if.end ]
  %rc_in_pos.136 = phi i64 [ %rc_in_pos.135, %do.body4952 ], [ %rc_in_pos.135, %do.body4972 ], [ %4, %if.end ]
  %rc1.sroa.0.154 = phi i32 [ %mul4947, %do.body4952 ], [ %sub4974, %do.body4972 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.154 = phi i32 [ %rc1.sroa.500.153, %do.body4952 ], [ %sub4976, %do.body4972 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp5001 = icmp ult i32 %rc1.sroa.0.154, 16777216
  br i1 %cmp5001, label %if.then5003, label %do.end5020

if.then5003:                                      ; preds = %do.body4999
  %cmp5004 = icmp eq i64 %rc_in_pos.136, %in_size
  br i1 %cmp5004, label %if.then5006, label %if.end5008

if.then5006:                                      ; preds = %if.then5003
  store i32 63, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end5008:                                       ; preds = %if.then5003
  %shl5010 = shl nuw i32 %rc1.sroa.0.154, 8
  %shl5012 = shl i32 %rc1.sroa.500.154, 8
  %inc5013 = add i64 %rc_in_pos.136, 1
  %arrayidx5014 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.136
  %224 = load i8, ptr %arrayidx5014, align 1, !tbaa !14
  %conv5015 = zext i8 %224 to i32
  %or5016 = or disjoint i32 %shl5012, %conv5015
  br label %do.end5020

do.end5020:                                       ; preds = %if.end5008, %do.body4999
  %rc_in_pos.137 = phi i64 [ %inc5013, %if.end5008 ], [ %rc_in_pos.136, %do.body4999 ]
  %rc1.sroa.0.155 = phi i32 [ %shl5010, %if.end5008 ], [ %rc1.sroa.0.154, %do.body4999 ]
  %rc1.sroa.500.155 = phi i32 [ %or5016, %if.end5008 ], [ %rc1.sroa.500.154, %do.body4999 ]
  %shr5022 = lshr i32 %rc1.sroa.0.155, 11
  %high5024 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27756
  %idxprom5025 = zext i32 %symbol.86 to i64
  %arrayidx5026 = getelementptr inbounds nuw i16, ptr %high5024, i64 %idxprom5025
  %225 = load i16, ptr %arrayidx5026, align 2, !tbaa !40
  %conv5027 = zext i16 %225 to i32
  %mul5028 = mul i32 %shr5022, %conv5027
  %cmp5030 = icmp ult i32 %rc1.sroa.500.155, %mul5028
  br i1 %cmp5030, label %do.body5033, label %do.body5053

do.body5033:                                      ; preds = %do.end5020
  %sub5040 = sub nsw i32 2048, %conv5027
  %shr5041 = lshr i32 %sub5040, 5
  %226 = trunc i32 %shr5041 to i16
  %conv5048 = add i16 %225, %226
  store i16 %conv5048, ptr %arrayidx5026, align 2, !tbaa !40
  %shl5051 = shl i32 %symbol.86, 1
  br label %do.body5080

do.body5053:                                      ; preds = %do.end5020
  %sub5055 = sub i32 %rc1.sroa.0.155, %mul5028
  %sub5057 = sub nuw i32 %rc1.sroa.500.155, %mul5028
  %shr5063 = lshr i16 %225, 5
  %sub5069 = sub i16 %225, %shr5063
  store i16 %sub5069, ptr %arrayidx5026, align 2, !tbaa !40
  %shl5073 = shl i32 %symbol.86, 1
  %add5074 = or disjoint i32 %shl5073, 1
  br label %do.body5080

do.body5080:                                      ; preds = %do.body5053, %do.body5033, %if.end
  %dict.sroa.37.68 = phi i64 [ %dict.sroa.37.67, %do.body5033 ], [ %dict.sroa.37.67, %do.body5053 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.68 = phi i64 [ %dict.sroa.12.67, %do.body5033 ], [ %dict.sroa.12.67, %do.body5053 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.68 = phi i32 [ %len.67, %do.body5033 ], [ %len.67, %do.body5053 ], [ %15, %if.end ]
  %rep0.78 = phi i32 [ %rep0.77, %do.body5033 ], [ %rep0.77, %do.body5053 ], [ %6, %if.end ]
  %rep1.68 = phi i32 [ %rep1.67, %do.body5033 ], [ %rep1.67, %do.body5053 ], [ %7, %if.end ]
  %rep2.68 = phi i32 [ %rep2.67, %do.body5033 ], [ %rep2.67, %do.body5053 ], [ %8, %if.end ]
  %rep3.68 = phi i32 [ %rep3.67, %do.body5033 ], [ %rep3.67, %do.body5053 ], [ %9, %if.end ]
  %state.68 = phi i32 [ %state.67, %do.body5033 ], [ %state.67, %do.body5053 ], [ %5, %if.end ]
  %probs.67 = phi ptr [ %probs.66, %do.body5033 ], [ %probs.66, %do.body5053 ], [ %11, %if.end ]
  %symbol.87 = phi i32 [ %shl5051, %do.body5033 ], [ %add5074, %do.body5053 ], [ %12, %if.end ]
  %limit.73 = phi i32 [ %limit.72, %do.body5033 ], [ %limit.72, %do.body5053 ], [ %13, %if.end ]
  %offset.79 = phi i32 [ %offset.78, %do.body5033 ], [ %offset.78, %do.body5053 ], [ %14, %if.end ]
  %rc_in_pos.138 = phi i64 [ %rc_in_pos.137, %do.body5033 ], [ %rc_in_pos.137, %do.body5053 ], [ %4, %if.end ]
  %rc1.sroa.0.156 = phi i32 [ %mul5028, %do.body5033 ], [ %sub5055, %do.body5053 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.156 = phi i32 [ %rc1.sroa.500.155, %do.body5033 ], [ %sub5057, %do.body5053 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp5082 = icmp ult i32 %rc1.sroa.0.156, 16777216
  br i1 %cmp5082, label %if.then5084, label %do.end5101

if.then5084:                                      ; preds = %do.body5080
  %cmp5085 = icmp eq i64 %rc_in_pos.138, %in_size
  br i1 %cmp5085, label %if.then5087, label %if.end5089

if.then5087:                                      ; preds = %if.then5084
  store i32 64, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end5089:                                       ; preds = %if.then5084
  %shl5091 = shl nuw i32 %rc1.sroa.0.156, 8
  %shl5093 = shl i32 %rc1.sroa.500.156, 8
  %inc5094 = add i64 %rc_in_pos.138, 1
  %arrayidx5095 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.138
  %227 = load i8, ptr %arrayidx5095, align 1, !tbaa !14
  %conv5096 = zext i8 %227 to i32
  %or5097 = or disjoint i32 %shl5093, %conv5096
  br label %do.end5101

do.end5101:                                       ; preds = %if.end5089, %do.body5080
  %rc_in_pos.139 = phi i64 [ %inc5094, %if.end5089 ], [ %rc_in_pos.138, %do.body5080 ]
  %rc1.sroa.0.157 = phi i32 [ %shl5091, %if.end5089 ], [ %rc1.sroa.0.156, %do.body5080 ]
  %rc1.sroa.500.157 = phi i32 [ %or5097, %if.end5089 ], [ %rc1.sroa.500.156, %do.body5080 ]
  %shr5103 = lshr i32 %rc1.sroa.0.157, 11
  %high5105 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27756
  %idxprom5106 = zext i32 %symbol.87 to i64
  %arrayidx5107 = getelementptr inbounds nuw i16, ptr %high5105, i64 %idxprom5106
  %228 = load i16, ptr %arrayidx5107, align 2, !tbaa !40
  %conv5108 = zext i16 %228 to i32
  %mul5109 = mul i32 %shr5103, %conv5108
  %cmp5111 = icmp ult i32 %rc1.sroa.500.157, %mul5109
  br i1 %cmp5111, label %do.body5114, label %do.body5134

do.body5114:                                      ; preds = %do.end5101
  %sub5121 = sub nsw i32 2048, %conv5108
  %shr5122 = lshr i32 %sub5121, 5
  %229 = trunc i32 %shr5122 to i16
  %conv5129 = add i16 %228, %229
  store i16 %conv5129, ptr %arrayidx5107, align 2, !tbaa !40
  %shl5132 = shl i32 %symbol.87, 1
  br label %do.body5161

do.body5134:                                      ; preds = %do.end5101
  %sub5136 = sub i32 %rc1.sroa.0.157, %mul5109
  %sub5138 = sub nuw i32 %rc1.sroa.500.157, %mul5109
  %shr5144 = lshr i16 %228, 5
  %sub5150 = sub i16 %228, %shr5144
  store i16 %sub5150, ptr %arrayidx5107, align 2, !tbaa !40
  %shl5154 = shl i32 %symbol.87, 1
  %add5155 = or disjoint i32 %shl5154, 1
  br label %do.body5161

do.body5161:                                      ; preds = %do.body5134, %do.body5114, %if.end
  %dict.sroa.37.69 = phi i64 [ %dict.sroa.37.68, %do.body5114 ], [ %dict.sroa.37.68, %do.body5134 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.69 = phi i64 [ %dict.sroa.12.68, %do.body5114 ], [ %dict.sroa.12.68, %do.body5134 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.69 = phi i32 [ %len.68, %do.body5114 ], [ %len.68, %do.body5134 ], [ %15, %if.end ]
  %rep0.79 = phi i32 [ %rep0.78, %do.body5114 ], [ %rep0.78, %do.body5134 ], [ %6, %if.end ]
  %rep1.69 = phi i32 [ %rep1.68, %do.body5114 ], [ %rep1.68, %do.body5134 ], [ %7, %if.end ]
  %rep2.69 = phi i32 [ %rep2.68, %do.body5114 ], [ %rep2.68, %do.body5134 ], [ %8, %if.end ]
  %rep3.69 = phi i32 [ %rep3.68, %do.body5114 ], [ %rep3.68, %do.body5134 ], [ %9, %if.end ]
  %state.69 = phi i32 [ %state.68, %do.body5114 ], [ %state.68, %do.body5134 ], [ %5, %if.end ]
  %probs.68 = phi ptr [ %probs.67, %do.body5114 ], [ %probs.67, %do.body5134 ], [ %11, %if.end ]
  %symbol.88 = phi i32 [ %shl5132, %do.body5114 ], [ %add5155, %do.body5134 ], [ %12, %if.end ]
  %limit.74 = phi i32 [ %limit.73, %do.body5114 ], [ %limit.73, %do.body5134 ], [ %13, %if.end ]
  %offset.80 = phi i32 [ %offset.79, %do.body5114 ], [ %offset.79, %do.body5134 ], [ %14, %if.end ]
  %rc_in_pos.140 = phi i64 [ %rc_in_pos.139, %do.body5114 ], [ %rc_in_pos.139, %do.body5134 ], [ %4, %if.end ]
  %rc1.sroa.0.158 = phi i32 [ %mul5109, %do.body5114 ], [ %sub5136, %do.body5134 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.158 = phi i32 [ %rc1.sroa.500.157, %do.body5114 ], [ %sub5138, %do.body5134 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp5163 = icmp ult i32 %rc1.sroa.0.158, 16777216
  br i1 %cmp5163, label %if.then5165, label %do.end5182

if.then5165:                                      ; preds = %do.body5161
  %cmp5166 = icmp eq i64 %rc_in_pos.140, %in_size
  br i1 %cmp5166, label %if.then5168, label %if.end5170

if.then5168:                                      ; preds = %if.then5165
  store i32 65, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end5170:                                       ; preds = %if.then5165
  %shl5172 = shl nuw i32 %rc1.sroa.0.158, 8
  %shl5174 = shl i32 %rc1.sroa.500.158, 8
  %inc5175 = add i64 %rc_in_pos.140, 1
  %arrayidx5176 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.140
  %230 = load i8, ptr %arrayidx5176, align 1, !tbaa !14
  %conv5177 = zext i8 %230 to i32
  %or5178 = or disjoint i32 %shl5174, %conv5177
  br label %do.end5182

do.end5182:                                       ; preds = %if.end5170, %do.body5161
  %rc_in_pos.141 = phi i64 [ %inc5175, %if.end5170 ], [ %rc_in_pos.140, %do.body5161 ]
  %rc1.sroa.0.159 = phi i32 [ %shl5172, %if.end5170 ], [ %rc1.sroa.0.158, %do.body5161 ]
  %rc1.sroa.500.159 = phi i32 [ %or5178, %if.end5170 ], [ %rc1.sroa.500.158, %do.body5161 ]
  %shr5184 = lshr i32 %rc1.sroa.0.159, 11
  %high5186 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27756
  %idxprom5187 = zext i32 %symbol.88 to i64
  %arrayidx5188 = getelementptr inbounds nuw i16, ptr %high5186, i64 %idxprom5187
  %231 = load i16, ptr %arrayidx5188, align 2, !tbaa !40
  %conv5189 = zext i16 %231 to i32
  %mul5190 = mul i32 %shr5184, %conv5189
  %cmp5192 = icmp ult i32 %rc1.sroa.500.159, %mul5190
  br i1 %cmp5192, label %do.body5195, label %do.body5215

do.body5195:                                      ; preds = %do.end5182
  %sub5202 = sub nsw i32 2048, %conv5189
  %shr5203 = lshr i32 %sub5202, 5
  %232 = trunc i32 %shr5203 to i16
  %conv5210 = add i16 %231, %232
  store i16 %conv5210, ptr %arrayidx5188, align 2, !tbaa !40
  %shl5213 = shl i32 %symbol.88, 1
  br label %do.body5242

do.body5215:                                      ; preds = %do.end5182
  %sub5217 = sub i32 %rc1.sroa.0.159, %mul5190
  %sub5219 = sub nuw i32 %rc1.sroa.500.159, %mul5190
  %shr5225 = lshr i16 %231, 5
  %sub5231 = sub i16 %231, %shr5225
  store i16 %sub5231, ptr %arrayidx5188, align 2, !tbaa !40
  %shl5235 = shl i32 %symbol.88, 1
  %add5236 = or disjoint i32 %shl5235, 1
  br label %do.body5242

do.body5242:                                      ; preds = %do.body5215, %do.body5195, %if.end
  %dict.sroa.37.70 = phi i64 [ %dict.sroa.37.69, %do.body5195 ], [ %dict.sroa.37.69, %do.body5215 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.70 = phi i64 [ %dict.sroa.12.69, %do.body5195 ], [ %dict.sroa.12.69, %do.body5215 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.70 = phi i32 [ %len.69, %do.body5195 ], [ %len.69, %do.body5215 ], [ %15, %if.end ]
  %rep0.80 = phi i32 [ %rep0.79, %do.body5195 ], [ %rep0.79, %do.body5215 ], [ %6, %if.end ]
  %rep1.70 = phi i32 [ %rep1.69, %do.body5195 ], [ %rep1.69, %do.body5215 ], [ %7, %if.end ]
  %rep2.70 = phi i32 [ %rep2.69, %do.body5195 ], [ %rep2.69, %do.body5215 ], [ %8, %if.end ]
  %rep3.70 = phi i32 [ %rep3.69, %do.body5195 ], [ %rep3.69, %do.body5215 ], [ %9, %if.end ]
  %state.70 = phi i32 [ %state.69, %do.body5195 ], [ %state.69, %do.body5215 ], [ %5, %if.end ]
  %probs.69 = phi ptr [ %probs.68, %do.body5195 ], [ %probs.68, %do.body5215 ], [ %11, %if.end ]
  %symbol.89 = phi i32 [ %shl5213, %do.body5195 ], [ %add5236, %do.body5215 ], [ %12, %if.end ]
  %limit.75 = phi i32 [ %limit.74, %do.body5195 ], [ %limit.74, %do.body5215 ], [ %13, %if.end ]
  %offset.81 = phi i32 [ %offset.80, %do.body5195 ], [ %offset.80, %do.body5215 ], [ %14, %if.end ]
  %rc_in_pos.142 = phi i64 [ %rc_in_pos.141, %do.body5195 ], [ %rc_in_pos.141, %do.body5215 ], [ %4, %if.end ]
  %rc1.sroa.0.160 = phi i32 [ %mul5190, %do.body5195 ], [ %sub5217, %do.body5215 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.160 = phi i32 [ %rc1.sroa.500.159, %do.body5195 ], [ %sub5219, %do.body5215 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp5244 = icmp ult i32 %rc1.sroa.0.160, 16777216
  br i1 %cmp5244, label %if.then5246, label %do.end5263

if.then5246:                                      ; preds = %do.body5242
  %cmp5247 = icmp eq i64 %rc_in_pos.142, %in_size
  br i1 %cmp5247, label %if.then5249, label %if.end5251

if.then5249:                                      ; preds = %if.then5246
  store i32 66, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end5251:                                       ; preds = %if.then5246
  %shl5253 = shl nuw i32 %rc1.sroa.0.160, 8
  %shl5255 = shl i32 %rc1.sroa.500.160, 8
  %inc5256 = add i64 %rc_in_pos.142, 1
  %arrayidx5257 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.142
  %233 = load i8, ptr %arrayidx5257, align 1, !tbaa !14
  %conv5258 = zext i8 %233 to i32
  %or5259 = or disjoint i32 %shl5255, %conv5258
  br label %do.end5263

do.end5263:                                       ; preds = %if.end5251, %do.body5242
  %rc_in_pos.143 = phi i64 [ %inc5256, %if.end5251 ], [ %rc_in_pos.142, %do.body5242 ]
  %rc1.sroa.0.161 = phi i32 [ %shl5253, %if.end5251 ], [ %rc1.sroa.0.160, %do.body5242 ]
  %rc1.sroa.500.161 = phi i32 [ %or5259, %if.end5251 ], [ %rc1.sroa.500.160, %do.body5242 ]
  %shr5265 = lshr i32 %rc1.sroa.0.161, 11
  %high5267 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27756
  %idxprom5268 = zext i32 %symbol.89 to i64
  %arrayidx5269 = getelementptr inbounds nuw i16, ptr %high5267, i64 %idxprom5268
  %234 = load i16, ptr %arrayidx5269, align 2, !tbaa !40
  %conv5270 = zext i16 %234 to i32
  %mul5271 = mul i32 %shr5265, %conv5270
  %cmp5273 = icmp ult i32 %rc1.sroa.500.161, %mul5271
  br i1 %cmp5273, label %do.body5276, label %do.body5296

do.body5276:                                      ; preds = %do.end5263
  %sub5283 = sub nsw i32 2048, %conv5270
  %shr5284 = lshr i32 %sub5283, 5
  %235 = trunc i32 %shr5284 to i16
  %conv5291 = add i16 %234, %235
  store i16 %conv5291, ptr %arrayidx5269, align 2, !tbaa !40
  %shl5294 = shl i32 %symbol.89, 1
  br label %do.body5323

do.body5296:                                      ; preds = %do.end5263
  %sub5298 = sub i32 %rc1.sroa.0.161, %mul5271
  %sub5300 = sub nuw i32 %rc1.sroa.500.161, %mul5271
  %shr5306 = lshr i16 %234, 5
  %sub5312 = sub i16 %234, %shr5306
  store i16 %sub5312, ptr %arrayidx5269, align 2, !tbaa !40
  %shl5316 = shl i32 %symbol.89, 1
  %add5317 = or disjoint i32 %shl5316, 1
  br label %do.body5323

do.body5323:                                      ; preds = %do.body5296, %do.body5276, %if.end
  %dict.sroa.37.71 = phi i64 [ %dict.sroa.37.70, %do.body5276 ], [ %dict.sroa.37.70, %do.body5296 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.71 = phi i64 [ %dict.sroa.12.70, %do.body5276 ], [ %dict.sroa.12.70, %do.body5296 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.71 = phi i32 [ %len.70, %do.body5276 ], [ %len.70, %do.body5296 ], [ %15, %if.end ]
  %rep0.81 = phi i32 [ %rep0.80, %do.body5276 ], [ %rep0.80, %do.body5296 ], [ %6, %if.end ]
  %rep1.71 = phi i32 [ %rep1.70, %do.body5276 ], [ %rep1.70, %do.body5296 ], [ %7, %if.end ]
  %rep2.71 = phi i32 [ %rep2.70, %do.body5276 ], [ %rep2.70, %do.body5296 ], [ %8, %if.end ]
  %rep3.71 = phi i32 [ %rep3.70, %do.body5276 ], [ %rep3.70, %do.body5296 ], [ %9, %if.end ]
  %state.71 = phi i32 [ %state.70, %do.body5276 ], [ %state.70, %do.body5296 ], [ %5, %if.end ]
  %probs.70 = phi ptr [ %probs.69, %do.body5276 ], [ %probs.69, %do.body5296 ], [ %11, %if.end ]
  %symbol.90 = phi i32 [ %shl5294, %do.body5276 ], [ %add5317, %do.body5296 ], [ %12, %if.end ]
  %limit.76 = phi i32 [ %limit.75, %do.body5276 ], [ %limit.75, %do.body5296 ], [ %13, %if.end ]
  %offset.82 = phi i32 [ %offset.81, %do.body5276 ], [ %offset.81, %do.body5296 ], [ %14, %if.end ]
  %rc_in_pos.144 = phi i64 [ %rc_in_pos.143, %do.body5276 ], [ %rc_in_pos.143, %do.body5296 ], [ %4, %if.end ]
  %rc1.sroa.0.162 = phi i32 [ %mul5271, %do.body5276 ], [ %sub5298, %do.body5296 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.162 = phi i32 [ %rc1.sroa.500.161, %do.body5276 ], [ %sub5300, %do.body5296 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp5325 = icmp ult i32 %rc1.sroa.0.162, 16777216
  br i1 %cmp5325, label %if.then5327, label %do.end5344

if.then5327:                                      ; preds = %do.body5323
  %cmp5328 = icmp eq i64 %rc_in_pos.144, %in_size
  br i1 %cmp5328, label %if.then5330, label %if.end5332

if.then5330:                                      ; preds = %if.then5327
  store i32 67, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end5332:                                       ; preds = %if.then5327
  %shl5334 = shl nuw i32 %rc1.sroa.0.162, 8
  %shl5336 = shl i32 %rc1.sroa.500.162, 8
  %inc5337 = add i64 %rc_in_pos.144, 1
  %arrayidx5338 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.144
  %236 = load i8, ptr %arrayidx5338, align 1, !tbaa !14
  %conv5339 = zext i8 %236 to i32
  %or5340 = or disjoint i32 %shl5336, %conv5339
  br label %do.end5344

do.end5344:                                       ; preds = %if.end5332, %do.body5323
  %rc_in_pos.145 = phi i64 [ %inc5337, %if.end5332 ], [ %rc_in_pos.144, %do.body5323 ]
  %rc1.sroa.0.163 = phi i32 [ %shl5334, %if.end5332 ], [ %rc1.sroa.0.162, %do.body5323 ]
  %rc1.sroa.500.163 = phi i32 [ %or5340, %if.end5332 ], [ %rc1.sroa.500.162, %do.body5323 ]
  %shr5346 = lshr i32 %rc1.sroa.0.163, 11
  %high5348 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27756
  %idxprom5349 = zext i32 %symbol.90 to i64
  %arrayidx5350 = getelementptr inbounds nuw i16, ptr %high5348, i64 %idxprom5349
  %237 = load i16, ptr %arrayidx5350, align 2, !tbaa !40
  %conv5351 = zext i16 %237 to i32
  %mul5352 = mul i32 %shr5346, %conv5351
  %cmp5354 = icmp ult i32 %rc1.sroa.500.163, %mul5352
  br i1 %cmp5354, label %do.body5357, label %do.body5377

do.body5357:                                      ; preds = %do.end5344
  %sub5364 = sub nsw i32 2048, %conv5351
  %shr5365 = lshr i32 %sub5364, 5
  %238 = trunc i32 %shr5365 to i16
  %conv5372 = add i16 %237, %238
  store i16 %conv5372, ptr %arrayidx5350, align 2, !tbaa !40
  %shl5375 = shl i32 %symbol.90, 1
  br label %do.body5404

do.body5377:                                      ; preds = %do.end5344
  %sub5379 = sub i32 %rc1.sroa.0.163, %mul5352
  %sub5381 = sub nuw i32 %rc1.sroa.500.163, %mul5352
  %shr5387 = lshr i16 %237, 5
  %sub5393 = sub i16 %237, %shr5387
  store i16 %sub5393, ptr %arrayidx5350, align 2, !tbaa !40
  %shl5397 = shl i32 %symbol.90, 1
  %add5398 = or disjoint i32 %shl5397, 1
  br label %do.body5404

do.body5404:                                      ; preds = %do.body5377, %do.body5357, %if.end
  %dict.sroa.37.72 = phi i64 [ %dict.sroa.37.71, %do.body5357 ], [ %dict.sroa.37.71, %do.body5377 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.72 = phi i64 [ %dict.sroa.12.71, %do.body5357 ], [ %dict.sroa.12.71, %do.body5377 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.72 = phi i32 [ %len.71, %do.body5357 ], [ %len.71, %do.body5377 ], [ %15, %if.end ]
  %rep0.82 = phi i32 [ %rep0.81, %do.body5357 ], [ %rep0.81, %do.body5377 ], [ %6, %if.end ]
  %rep1.72 = phi i32 [ %rep1.71, %do.body5357 ], [ %rep1.71, %do.body5377 ], [ %7, %if.end ]
  %rep2.72 = phi i32 [ %rep2.71, %do.body5357 ], [ %rep2.71, %do.body5377 ], [ %8, %if.end ]
  %rep3.72 = phi i32 [ %rep3.71, %do.body5357 ], [ %rep3.71, %do.body5377 ], [ %9, %if.end ]
  %state.72 = phi i32 [ %state.71, %do.body5357 ], [ %state.71, %do.body5377 ], [ %5, %if.end ]
  %probs.71 = phi ptr [ %probs.70, %do.body5357 ], [ %probs.70, %do.body5377 ], [ %11, %if.end ]
  %symbol.91 = phi i32 [ %shl5375, %do.body5357 ], [ %add5398, %do.body5377 ], [ %12, %if.end ]
  %limit.77 = phi i32 [ %limit.76, %do.body5357 ], [ %limit.76, %do.body5377 ], [ %13, %if.end ]
  %offset.83 = phi i32 [ %offset.82, %do.body5357 ], [ %offset.82, %do.body5377 ], [ %14, %if.end ]
  %rc_in_pos.146 = phi i64 [ %rc_in_pos.145, %do.body5357 ], [ %rc_in_pos.145, %do.body5377 ], [ %4, %if.end ]
  %rc1.sroa.0.164 = phi i32 [ %mul5352, %do.body5357 ], [ %sub5379, %do.body5377 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.164 = phi i32 [ %rc1.sroa.500.163, %do.body5357 ], [ %sub5381, %do.body5377 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp5406 = icmp ult i32 %rc1.sroa.0.164, 16777216
  br i1 %cmp5406, label %if.then5408, label %do.end5425

if.then5408:                                      ; preds = %do.body5404
  %cmp5409 = icmp eq i64 %rc_in_pos.146, %in_size
  br i1 %cmp5409, label %if.then5411, label %if.end5413

if.then5411:                                      ; preds = %if.then5408
  store i32 68, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end5413:                                       ; preds = %if.then5408
  %shl5415 = shl nuw i32 %rc1.sroa.0.164, 8
  %shl5417 = shl i32 %rc1.sroa.500.164, 8
  %inc5418 = add i64 %rc_in_pos.146, 1
  %arrayidx5419 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.146
  %239 = load i8, ptr %arrayidx5419, align 1, !tbaa !14
  %conv5420 = zext i8 %239 to i32
  %or5421 = or disjoint i32 %shl5417, %conv5420
  br label %do.end5425

do.end5425:                                       ; preds = %if.end5413, %do.body5404
  %rc_in_pos.147 = phi i64 [ %inc5418, %if.end5413 ], [ %rc_in_pos.146, %do.body5404 ]
  %rc1.sroa.0.165 = phi i32 [ %shl5415, %if.end5413 ], [ %rc1.sroa.0.164, %do.body5404 ]
  %rc1.sroa.500.165 = phi i32 [ %or5421, %if.end5413 ], [ %rc1.sroa.500.164, %do.body5404 ]
  %shr5427 = lshr i32 %rc1.sroa.0.165, 11
  %high5429 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27756
  %idxprom5430 = zext i32 %symbol.91 to i64
  %arrayidx5431 = getelementptr inbounds nuw i16, ptr %high5429, i64 %idxprom5430
  %240 = load i16, ptr %arrayidx5431, align 2, !tbaa !40
  %conv5432 = zext i16 %240 to i32
  %mul5433 = mul i32 %shr5427, %conv5432
  %cmp5435 = icmp ult i32 %rc1.sroa.500.165, %mul5433
  br i1 %cmp5435, label %do.body5438, label %do.body5458

do.body5438:                                      ; preds = %do.end5425
  %sub5445 = sub nsw i32 2048, %conv5432
  %shr5446 = lshr i32 %sub5445, 5
  %241 = trunc i32 %shr5446 to i16
  %conv5453 = add i16 %240, %241
  store i16 %conv5453, ptr %arrayidx5431, align 2, !tbaa !40
  %shl5456 = shl i32 %symbol.91, 1
  br label %do.body5485

do.body5458:                                      ; preds = %do.end5425
  %sub5460 = sub i32 %rc1.sroa.0.165, %mul5433
  %sub5462 = sub nuw i32 %rc1.sroa.500.165, %mul5433
  %shr5468 = lshr i16 %240, 5
  %sub5474 = sub i16 %240, %shr5468
  store i16 %sub5474, ptr %arrayidx5431, align 2, !tbaa !40
  %shl5478 = shl i32 %symbol.91, 1
  %add5479 = or disjoint i32 %shl5478, 1
  br label %do.body5485

do.body5485:                                      ; preds = %do.body5458, %do.body5438, %if.end
  %dict.sroa.37.73 = phi i64 [ %dict.sroa.37.72, %do.body5438 ], [ %dict.sroa.37.72, %do.body5458 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.73 = phi i64 [ %dict.sroa.12.72, %do.body5438 ], [ %dict.sroa.12.72, %do.body5458 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.73 = phi i32 [ %len.72, %do.body5438 ], [ %len.72, %do.body5458 ], [ %15, %if.end ]
  %rep0.83 = phi i32 [ %rep0.82, %do.body5438 ], [ %rep0.82, %do.body5458 ], [ %6, %if.end ]
  %rep1.73 = phi i32 [ %rep1.72, %do.body5438 ], [ %rep1.72, %do.body5458 ], [ %7, %if.end ]
  %rep2.73 = phi i32 [ %rep2.72, %do.body5438 ], [ %rep2.72, %do.body5458 ], [ %8, %if.end ]
  %rep3.73 = phi i32 [ %rep3.72, %do.body5438 ], [ %rep3.72, %do.body5458 ], [ %9, %if.end ]
  %state.73 = phi i32 [ %state.72, %do.body5438 ], [ %state.72, %do.body5458 ], [ %5, %if.end ]
  %probs.72 = phi ptr [ %probs.71, %do.body5438 ], [ %probs.71, %do.body5458 ], [ %11, %if.end ]
  %symbol.92 = phi i32 [ %shl5456, %do.body5438 ], [ %add5479, %do.body5458 ], [ %12, %if.end ]
  %limit.78 = phi i32 [ %limit.77, %do.body5438 ], [ %limit.77, %do.body5458 ], [ %13, %if.end ]
  %offset.84 = phi i32 [ %offset.83, %do.body5438 ], [ %offset.83, %do.body5458 ], [ %14, %if.end ]
  %rc_in_pos.148 = phi i64 [ %rc_in_pos.147, %do.body5438 ], [ %rc_in_pos.147, %do.body5458 ], [ %4, %if.end ]
  %rc1.sroa.0.166 = phi i32 [ %mul5433, %do.body5438 ], [ %sub5460, %do.body5458 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.166 = phi i32 [ %rc1.sroa.500.165, %do.body5438 ], [ %sub5462, %do.body5458 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %cmp5487 = icmp ult i32 %rc1.sroa.0.166, 16777216
  br i1 %cmp5487, label %if.then5489, label %do.end5506

if.then5489:                                      ; preds = %do.body5485
  %cmp5490 = icmp eq i64 %rc_in_pos.148, %in_size
  br i1 %cmp5490, label %if.then5492, label %if.end5494

if.then5492:                                      ; preds = %if.then5489
  store i32 69, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end5494:                                       ; preds = %if.then5489
  %shl5496 = shl nuw i32 %rc1.sroa.0.166, 8
  %shl5498 = shl i32 %rc1.sroa.500.166, 8
  %inc5499 = add i64 %rc_in_pos.148, 1
  %arrayidx5500 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.148
  %242 = load i8, ptr %arrayidx5500, align 1, !tbaa !14
  %conv5501 = zext i8 %242 to i32
  %or5502 = or disjoint i32 %shl5498, %conv5501
  br label %do.end5506

do.end5506:                                       ; preds = %if.end5494, %do.body5485
  %rc_in_pos.149 = phi i64 [ %inc5499, %if.end5494 ], [ %rc_in_pos.148, %do.body5485 ]
  %rc1.sroa.0.167 = phi i32 [ %shl5496, %if.end5494 ], [ %rc1.sroa.0.166, %do.body5485 ]
  %rc1.sroa.500.167 = phi i32 [ %or5502, %if.end5494 ], [ %rc1.sroa.500.166, %do.body5485 ]
  %shr5508 = lshr i32 %rc1.sroa.0.167, 11
  %high5510 = getelementptr inbounds nuw i8, ptr %pcoder, i64 27756
  %idxprom5511 = zext i32 %symbol.92 to i64
  %arrayidx5512 = getelementptr inbounds nuw i16, ptr %high5510, i64 %idxprom5511
  %243 = load i16, ptr %arrayidx5512, align 2, !tbaa !40
  %conv5513 = zext i16 %243 to i32
  %mul5514 = mul i32 %shr5508, %conv5513
  %cmp5516 = icmp ult i32 %rc1.sroa.500.167, %mul5514
  br i1 %cmp5516, label %do.body5519, label %do.body5539

do.body5519:                                      ; preds = %do.end5506
  %sub5526 = sub nsw i32 2048, %conv5513
  %shr5527 = lshr i32 %sub5526, 5
  %244 = trunc i32 %shr5527 to i16
  %conv5534 = add i16 %243, %244
  %shl5537 = shl i32 %symbol.92, 1
  br label %do.end5563

do.body5539:                                      ; preds = %do.end5506
  %sub5541 = sub i32 %rc1.sroa.0.167, %mul5514
  %sub5543 = sub nuw i32 %rc1.sroa.500.167, %mul5514
  %shr5549 = lshr i16 %243, 5
  %sub5555 = sub i16 %243, %shr5549
  %shl5559 = shl i32 %symbol.92, 1
  %add5560 = or disjoint i32 %shl5559, 1
  br label %do.end5563

do.end5563:                                       ; preds = %do.body5539, %do.body5519
  %sub5555.sink = phi i16 [ %conv5534, %do.body5519 ], [ %sub5555, %do.body5539 ]
  %symbol.93 = phi i32 [ %shl5537, %do.body5519 ], [ %add5560, %do.body5539 ]
  %rc1.sroa.0.168 = phi i32 [ %mul5514, %do.body5519 ], [ %sub5541, %do.body5539 ]
  %rc1.sroa.500.168 = phi i32 [ %rc1.sroa.500.167, %do.body5519 ], [ %sub5543, %do.body5539 ]
  store i16 %sub5555.sink, ptr %arrayidx5512, align 2, !tbaa !40
  %add5567 = add i32 %symbol.93, -238
  br label %sw.bb5573

sw.bb5573:                                        ; preds = %do.end5563, %do.end4895, %do.end4556, %if.end3911, %if.end
  %dict.sroa.37.74 = phi i64 [ %dict.sroa.37.51, %if.end3911 ], [ %dict.sroa.37.61, %do.end4556 ], [ %dict.sroa.37.65, %do.end4895 ], [ %dict.sroa.37.73, %do.end5563 ], [ %dict.sroa.37.0.copyload, %if.end ]
  %dict.sroa.12.74 = phi i64 [ %dict.sroa.12.51, %if.end3911 ], [ %dict.sroa.12.61, %do.end4556 ], [ %dict.sroa.12.65, %do.end4895 ], [ %dict.sroa.12.73, %do.end5563 ], [ %dict.sroa.12.0.copyload, %if.end ]
  %len.74 = phi i32 [ %len.51, %if.end3911 ], [ %add4558, %do.end4556 ], [ %add4898, %do.end4895 ], [ %add5567, %do.end5563 ], [ %15, %if.end ]
  %rep0.84 = phi i32 [ %rep0.61, %if.end3911 ], [ %rep0.71, %do.end4556 ], [ %rep0.75, %do.end4895 ], [ %rep0.83, %do.end5563 ], [ %6, %if.end ]
  %rep1.74 = phi i32 [ %rep1.51, %if.end3911 ], [ %rep1.61, %do.end4556 ], [ %rep1.65, %do.end4895 ], [ %rep1.73, %do.end5563 ], [ %7, %if.end ]
  %rep2.74 = phi i32 [ %rep2.51, %if.end3911 ], [ %rep2.61, %do.end4556 ], [ %rep2.65, %do.end4895 ], [ %rep2.73, %do.end5563 ], [ %8, %if.end ]
  %rep3.74 = phi i32 [ %rep3.51, %if.end3911 ], [ %rep3.61, %do.end4556 ], [ %rep3.65, %do.end4895 ], [ %rep3.73, %do.end5563 ], [ %9, %if.end ]
  %state.74 = phi i32 [ %state.51, %if.end3911 ], [ %state.61, %do.end4556 ], [ %state.65, %do.end4895 ], [ %state.73, %do.end5563 ], [ %5, %if.end ]
  %probs.73 = phi ptr [ %probs.50, %if.end3911 ], [ %probs.60, %do.end4556 ], [ %probs.64, %do.end4895 ], [ %probs.72, %do.end5563 ], [ %11, %if.end ]
  %symbol.94 = phi i32 [ %symbol.69, %if.end3911 ], [ %symbol.79, %do.end4556 ], [ %symbol.84, %do.end4895 ], [ %symbol.93, %do.end5563 ], [ %12, %if.end ]
  %limit.79 = phi i32 [ %limit.56, %if.end3911 ], [ %limit.66, %do.end4556 ], [ %limit.70, %do.end4895 ], [ %limit.78, %do.end5563 ], [ %13, %if.end ]
  %offset.85 = phi i32 [ %offset.62, %if.end3911 ], [ %offset.72, %do.end4556 ], [ %offset.76, %do.end4895 ], [ %offset.84, %do.end5563 ], [ %14, %if.end ]
  %rc_in_pos.150 = phi i64 [ %rc_in_pos.107, %if.end3911 ], [ %rc_in_pos.125, %do.end4556 ], [ %rc_in_pos.133, %do.end4895 ], [ %rc_in_pos.149, %do.end5563 ], [ %4, %if.end ]
  %rc1.sroa.0.169 = phi i32 [ %rc1.sroa.0.123, %if.end3911 ], [ %rc1.sroa.0.142, %do.end4556 ], [ %rc1.sroa.0.151, %do.end4895 ], [ %rc1.sroa.0.168, %do.end5563 ], [ %rc1.sroa.0.0.copyload, %if.end ]
  %rc1.sroa.500.169 = phi i32 [ %rc1.sroa.500.123, %if.end3911 ], [ %rc1.sroa.500.142, %do.end4556 ], [ %rc1.sroa.500.151, %do.end4895 ], [ %rc1.sroa.500.168, %do.end5563 ], [ %rc1.sroa.500.0.copyload, %if.end ]
  %sub.i = sub i64 %dict.sroa.46.0, %dict.sroa.12.74
  %conv.i7872 = zext i32 %len.74 to i64
  %cond135.i = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 %conv.i7872)
  %cond.i7873 = trunc nuw i64 %cond135.i to i32
  %sub4.i = sub i32 %len.74, %cond.i7873
  %cmp5.i = icmp ult i32 %rep0.84, %cond.i7873
  %conv.i.i = zext i32 %rep0.84 to i64
  br i1 %cmp5.i, label %do.body.preheader.i, label %if.else.i

do.body.preheader.i:                              ; preds = %sw.bb5573
  %245 = xor i64 %conv.i.i, -1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %do.body.preheader.i
  %dict.sroa.12.81 = phi i64 [ %dict.sroa.12.74, %do.body.preheader.i ], [ %inc.i7876, %do.body.i ]
  %left.0.i = phi i32 [ %cond.i7873, %do.body.preheader.i ], [ %dec.i7877, %do.body.i ]
  %cmp.i.i = icmp ugt i64 %dict.sroa.12.81, %conv.i.i
  %spec.select7952 = select i1 %cmp.i.i, i64 0, i64 %dict.sroa.52.0.copyload
  %246 = getelementptr i8, ptr %dict.sroa.0.0.copyload, i64 %dict.sroa.12.81
  %247 = getelementptr i8, ptr %246, i64 %245
  %arrayidx.i.i = getelementptr i8, ptr %247, i64 %spec.select7952
  %248 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !14
  store i8 %248, ptr %246, align 1, !tbaa !14
  %inc.i7876 = add i64 %dict.sroa.12.81, 1
  %dec.i7877 = add i32 %left.0.i, -1
  %cmp9.not.i = icmp eq i32 %dec.i7877, 0
  br i1 %cmp9.not.i, label %if.end71.i.loopexit, label %do.body.i, !llvm.loop !46

if.else.i:                                        ; preds = %sw.bb5573
  %cmp13.i = icmp ugt i64 %dict.sroa.12.74, %conv.i.i
  br i1 %cmp13.i, label %if.then15.i, label %if.else26.i

if.then15.i:                                      ; preds = %if.else.i
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %dict.sroa.0.0.copyload, i64 %dict.sroa.12.74
  %idx.neg.i = sub nsw i64 0, %conv.i.i
  %add.ptr21.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i
  %add.ptr22.i = getelementptr inbounds i8, ptr %add.ptr21.i, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr nonnull align 1 %add.ptr22.i, i64 %cond135.i, i1 false)
  br label %if.end71.sink.split.i

if.else26.i:                                      ; preds = %if.else.i
  %249 = xor i64 %conv.i.i, -1
  %sub30.i = add nsw i64 %dict.sroa.12.74, %249
  %add31.i = add i64 %sub30.i, %dict.sroa.52.0.copyload
  %conv34.i = and i64 %add31.i, 4294967295
  %250 = trunc i64 %sub30.i to i32
  %conv36.i = sub i32 0, %250
  %cmp37.i = icmp ugt i32 %cond.i7873, %conv36.i
  %add.ptr42.i = getelementptr inbounds nuw i8, ptr %dict.sroa.0.0.copyload, i64 %dict.sroa.12.74
  %add.ptr45.i = getelementptr inbounds nuw i8, ptr %dict.sroa.0.0.copyload, i64 %conv34.i
  br i1 %cmp37.i, label %if.then39.i, label %if.else59.i

if.then39.i:                                      ; preds = %if.else26.i
  %conv46.i = zext i32 %conv36.i to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr42.i, ptr align 1 %add.ptr45.i, i64 %conv46.i, i1 false)
  %add49.i = add nuw nsw i64 %dict.sroa.12.74, %conv46.i
  %sub50.i = add nsw i64 %sub30.i, %cond135.i
  %add.ptr53.i = getelementptr inbounds nuw i8, ptr %dict.sroa.0.0.copyload, i64 %add49.i
  %conv55.i = and i64 %sub50.i, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr53.i, ptr align 1 %dict.sroa.0.0.copyload, i64 %conv55.i, i1 false)
  br label %if.end71.sink.split.i

if.else59.i:                                      ; preds = %if.else26.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr42.i, ptr align 1 %add.ptr45.i, i64 %cond135.i, i1 false)
  br label %if.end71.sink.split.i

if.end71.sink.split.i:                            ; preds = %if.else59.i, %if.then39.i, %if.then15.i
  %dict.sroa.12.79 = phi i64 [ %dict.sroa.12.74, %if.then15.i ], [ %add49.i, %if.then39.i ], [ %dict.sroa.12.74, %if.else59.i ]
  %cond135.sink138.i = phi i64 [ %cond135.i, %if.then15.i ], [ %conv55.i, %if.then39.i ], [ %cond135.i, %if.else59.i ]
  %add.i = add i64 %cond135.sink138.i, %dict.sroa.12.79
  br label %if.end71.i

if.end71.i.loopexit:                              ; preds = %do.body.i
  %inc.i7876.lcssa = phi i64 [ %inc.i7876, %do.body.i ]
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end71.i.loopexit, %if.end71.sink.split.i
  %dict.sroa.12.80 = phi i64 [ %add.i, %if.end71.sink.split.i ], [ %inc.i7876.lcssa, %if.end71.i.loopexit ]
  %spec.select7953 = tail call i64 @llvm.umax.i64(i64 %dict.sroa.37.74, i64 %dict.sroa.12.80)
  %cmp79.i.not = icmp eq i32 %sub4.i, 0
  br i1 %cmp79.i.not, label %while.body, label %if.then5575

if.then5575:                                      ; preds = %if.end71.i
  store i32 70, ptr %sequence, align 8, !tbaa !39
  br label %out

do.body5579:                                      ; preds = %sw.bb, %if.end
  %dict.sroa.37.75 = phi i64 [ %dict.sroa.37.0.copyload, %if.end ], [ %dict.sroa.37.1, %sw.bb ]
  %dict.sroa.12.75 = phi i64 [ %dict.sroa.12.0.copyload, %if.end ], [ %dict.sroa.12.1, %sw.bb ]
  %len.75 = phi i32 [ %15, %if.end ], [ %len.1, %sw.bb ]
  %rep0.85 = phi i32 [ %6, %if.end ], [ %rep0.1, %sw.bb ]
  %rep1.75 = phi i32 [ %7, %if.end ], [ %rep1.1, %sw.bb ]
  %rep2.75 = phi i32 [ %8, %if.end ], [ %rep2.1, %sw.bb ]
  %rep3.75 = phi i32 [ %9, %if.end ], [ %rep3.1, %sw.bb ]
  %state.75 = phi i32 [ %5, %if.end ], [ %state.1, %sw.bb ]
  %probs.74 = phi ptr [ %11, %if.end ], [ %probs.1, %sw.bb ]
  %symbol.95 = phi i32 [ %12, %if.end ], [ %symbol.1, %sw.bb ]
  %limit.80 = phi i32 [ %13, %if.end ], [ %limit.1, %sw.bb ]
  %offset.86 = phi i32 [ %14, %if.end ], [ %offset.1, %sw.bb ]
  %rc_in_pos.151 = phi i64 [ %4, %if.end ], [ %rc_in_pos.1, %sw.bb ]
  %rc1.sroa.0.170 = phi i32 [ %rc1.sroa.0.0.copyload, %if.end ], [ %rc1.sroa.0.1, %sw.bb ]
  %rc1.sroa.500.170 = phi i32 [ %rc1.sroa.500.0.copyload, %if.end ], [ %rc1.sroa.500.1, %sw.bb ]
  %cmp5581 = icmp ult i32 %rc1.sroa.0.170, 16777216
  br i1 %cmp5581, label %if.then5583, label %do.end5600

if.then5583:                                      ; preds = %do.body5579
  %cmp5584 = icmp eq i64 %rc_in_pos.151, %in_size
  br i1 %cmp5584, label %if.then5586, label %if.end5588

if.then5586:                                      ; preds = %if.then5583
  store i32 0, ptr %sequence, align 8, !tbaa !39
  br label %out

if.end5588:                                       ; preds = %if.then5583
  %shl5590 = shl nuw i32 %rc1.sroa.0.170, 8
  %shl5592 = shl i32 %rc1.sroa.500.170, 8
  %inc5593 = add i64 %rc_in_pos.151, 1
  %arrayidx5594 = getelementptr inbounds nuw i8, ptr %in, i64 %rc_in_pos.151
  %251 = load i8, ptr %arrayidx5594, align 1, !tbaa !14
  %conv5595 = zext i8 %251 to i32
  %or5596 = or disjoint i32 %shl5592, %conv5595
  br label %do.end5600

do.end5600:                                       ; preds = %if.end5588, %do.body5579
  %rc_in_pos.152 = phi i64 [ %inc5593, %if.end5588 ], [ %rc_in_pos.151, %do.body5579 ]
  %rc1.sroa.0.171 = phi i32 [ %shl5590, %if.end5588 ], [ %rc1.sroa.0.170, %do.body5579 ]
  %rc1.sroa.500.171 = phi i32 [ %or5596, %if.end5588 ], [ %rc1.sroa.500.170, %do.body5579 ]
  store i32 1, ptr %sequence, align 8, !tbaa !39
  br label %out

out:                                              ; preds = %do.end5600, %if.then5586, %if.then5575, %if.then5492, %if.then5411, %if.then5330, %if.then5249, %if.then5168, %if.then5087, %if.then5006, %if.then4925, %if.then4814, %if.then4723, %if.then4632, %if.then4584, %if.then4475, %if.then4384, %if.then4293, %if.then4246, %if.then4169, %if.then4101, %if.then4048, %if.then3995, %if.then3946, %do.body3917, %if.end3911, %if.end3896, %if.then3894, %do.body3887, %if.then3880, %if.then3813, %if.then3736, %if.then3659, %if.then3583, %if.then3536, %if.then3463, %if.then3388, %if.then3313, %if.then3238, %if.then3165, %if.then3076, %if.then3005, %if.then2934, %if.then2863, %if.then2792, %if.then2721, %if.then2625, %if.then2544, %if.then2463, %if.then2382, %if.then2301, %if.then2220, %if.then2139, %if.then2059, %if.then1948, %if.then1857, %if.then1767, %if.then1720, %if.then1611, %if.then1520, %if.then1430, %if.then1384, %if.then1332, %if.then1298, %if.then1227, %if.then1149, %if.then1071, %if.then993, %if.then915, %if.then837, %if.then759, %if.then682, %if.then604, %if.then533, %if.then462, %if.then391, %if.then320, %if.then249, %if.then178, %if.then108, %if.then48
  %dict.sroa.37.76 = phi i64 [ %dict.sroa.37.75, %if.then5586 ], [ %dict.sroa.37.75, %do.end5600 ], [ %dict.sroa.37.1, %if.then48 ], [ %dict.sroa.37.2, %if.then108 ], [ %dict.sroa.37.3, %if.then178 ], [ %dict.sroa.37.4, %if.then249 ], [ %dict.sroa.37.5, %if.then320 ], [ %dict.sroa.37.6, %if.then391 ], [ %dict.sroa.37.7, %if.then462 ], [ %dict.sroa.37.8, %if.then533 ], [ %dict.sroa.37.9, %if.then604 ], [ %dict.sroa.37.19, %if.then1298 ], [ %dict.sroa.37.10, %if.then682 ], [ %dict.sroa.37.11, %if.then759 ], [ %dict.sroa.37.12, %if.then837 ], [ %dict.sroa.37.13, %if.then915 ], [ %dict.sroa.37.14, %if.then993 ], [ %dict.sroa.37.15, %if.then1071 ], [ %dict.sroa.37.16, %if.then1149 ], [ %dict.sroa.37.17, %if.then1227 ], [ %dict.sroa.37.20, %if.then1332 ], [ %dict.sroa.37.21, %if.then1384 ], [ %dict.sroa.37.22, %if.then1430 ], [ %dict.sroa.37.23, %if.then1520 ], [ %dict.sroa.37.24, %if.then1611 ], [ %dict.sroa.37.38, %if.then2721 ], [ %dict.sroa.37.39, %if.then2792 ], [ %dict.sroa.37.40, %if.then2863 ], [ %dict.sroa.37.41, %if.then2934 ], [ %dict.sroa.37.42, %if.then3005 ], [ %dict.sroa.37.43, %if.then3076 ], [ %spec.select7953, %if.then5575 ], [ %dict.sroa.37.51, %if.end3911 ], [ %dict.sroa.37.44, %if.then3165 ], [ %dict.sroa.37.44, %if.then3238 ], [ %dict.sroa.37.44, %if.then3313 ], [ %dict.sroa.37.44, %if.then3388 ], [ %dict.sroa.37.44, %if.then3463 ], [ %dict.sroa.37.45, %if.then3536 ], [ %dict.sroa.37.46, %if.then3583 ], [ %dict.sroa.37.47, %if.then3659 ], [ %dict.sroa.37.48, %if.then3736 ], [ %dict.sroa.37.49, %if.then3813 ], [ %dict.sroa.37.50, %if.then3894 ], [ %dict.sroa.37.50, %if.end3896 ], [ %dict.sroa.37.50, %do.body3887 ], [ %dict.sroa.37.49, %if.then3880 ], [ %dict.sroa.37.25, %if.then1720 ], [ %dict.sroa.37.26, %if.then1767 ], [ %dict.sroa.37.27, %if.then1857 ], [ %dict.sroa.37.28, %if.then1948 ], [ %dict.sroa.37.29, %if.then2059 ], [ %dict.sroa.37.30, %if.then2139 ], [ %dict.sroa.37.31, %if.then2220 ], [ %dict.sroa.37.32, %if.then2301 ], [ %dict.sroa.37.33, %if.then2382 ], [ %dict.sroa.37.34, %if.then2463 ], [ %dict.sroa.37.35, %if.then2544 ], [ %dict.sroa.37.36, %if.then2625 ], [ %dict.sroa.37.52, %if.then3946 ], [ %dict.sroa.37.53, %if.then3995 ], [ %dict.sroa.37.54, %if.then4048 ], [ %dict.sroa.37.58, %if.then4246 ], [ %dict.sroa.37.59, %if.then4293 ], [ %dict.sroa.37.60, %if.then4384 ], [ %dict.sroa.37.61, %if.then4475 ], [ %dict.sroa.37.62, %if.then4584 ], [ %dict.sroa.37.63, %if.then4632 ], [ %dict.sroa.37.64, %if.then4723 ], [ %dict.sroa.37.65, %if.then4814 ], [ %dict.sroa.37.66, %if.then4925 ], [ %dict.sroa.37.67, %if.then5006 ], [ %dict.sroa.37.68, %if.then5087 ], [ %dict.sroa.37.69, %if.then5168 ], [ %dict.sroa.37.70, %if.then5249 ], [ %dict.sroa.37.71, %if.then5330 ], [ %dict.sroa.37.72, %if.then5411 ], [ %dict.sroa.37.73, %if.then5492 ], [ %dict.sroa.37.55, %if.then4101 ], [ %dict.sroa.37.56, %if.then4169 ], [ 0, %do.body3917 ]
  %dict.sroa.12.76 = phi i64 [ %dict.sroa.12.75, %if.then5586 ], [ %dict.sroa.12.75, %do.end5600 ], [ %dict.sroa.12.1, %if.then48 ], [ %dict.sroa.12.2, %if.then108 ], [ %dict.sroa.12.3, %if.then178 ], [ %dict.sroa.12.4, %if.then249 ], [ %dict.sroa.12.5, %if.then320 ], [ %dict.sroa.12.6, %if.then391 ], [ %dict.sroa.12.7, %if.then462 ], [ %dict.sroa.12.8, %if.then533 ], [ %dict.sroa.12.9, %if.then604 ], [ %dict.sroa.12.19, %if.then1298 ], [ %dict.sroa.12.10, %if.then682 ], [ %dict.sroa.12.11, %if.then759 ], [ %dict.sroa.12.12, %if.then837 ], [ %dict.sroa.12.13, %if.then915 ], [ %dict.sroa.12.14, %if.then993 ], [ %dict.sroa.12.15, %if.then1071 ], [ %dict.sroa.12.16, %if.then1149 ], [ %dict.sroa.12.17, %if.then1227 ], [ %dict.sroa.12.20, %if.then1332 ], [ %dict.sroa.12.21, %if.then1384 ], [ %dict.sroa.12.22, %if.then1430 ], [ %dict.sroa.12.23, %if.then1520 ], [ %dict.sroa.12.24, %if.then1611 ], [ %dict.sroa.12.38, %if.then2721 ], [ %dict.sroa.12.39, %if.then2792 ], [ %dict.sroa.12.40, %if.then2863 ], [ %dict.sroa.12.41, %if.then2934 ], [ %dict.sroa.12.42, %if.then3005 ], [ %dict.sroa.12.43, %if.then3076 ], [ %dict.sroa.12.80, %if.then5575 ], [ %dict.sroa.12.51, %if.end3911 ], [ %dict.sroa.12.44, %if.then3165 ], [ %dict.sroa.12.44, %if.then3238 ], [ %dict.sroa.12.44, %if.then3313 ], [ %dict.sroa.12.44, %if.then3388 ], [ %dict.sroa.12.44, %if.then3463 ], [ %dict.sroa.12.45, %if.then3536 ], [ %dict.sroa.12.46, %if.then3583 ], [ %dict.sroa.12.47, %if.then3659 ], [ %dict.sroa.12.48, %if.then3736 ], [ %dict.sroa.12.49, %if.then3813 ], [ %dict.sroa.12.50, %if.then3894 ], [ %dict.sroa.12.50, %if.end3896 ], [ %dict.sroa.12.50, %do.body3887 ], [ %dict.sroa.12.49, %if.then3880 ], [ %dict.sroa.12.25, %if.then1720 ], [ %dict.sroa.12.26, %if.then1767 ], [ %dict.sroa.12.27, %if.then1857 ], [ %dict.sroa.12.28, %if.then1948 ], [ %dict.sroa.12.29, %if.then2059 ], [ %dict.sroa.12.30, %if.then2139 ], [ %dict.sroa.12.31, %if.then2220 ], [ %dict.sroa.12.32, %if.then2301 ], [ %dict.sroa.12.33, %if.then2382 ], [ %dict.sroa.12.34, %if.then2463 ], [ %dict.sroa.12.35, %if.then2544 ], [ %dict.sroa.12.36, %if.then2625 ], [ %dict.sroa.12.52, %if.then3946 ], [ %dict.sroa.12.53, %if.then3995 ], [ %dict.sroa.12.54, %if.then4048 ], [ %dict.sroa.12.58, %if.then4246 ], [ %dict.sroa.12.59, %if.then4293 ], [ %dict.sroa.12.60, %if.then4384 ], [ %dict.sroa.12.61, %if.then4475 ], [ %dict.sroa.12.62, %if.then4584 ], [ %dict.sroa.12.63, %if.then4632 ], [ %dict.sroa.12.64, %if.then4723 ], [ %dict.sroa.12.65, %if.then4814 ], [ %dict.sroa.12.66, %if.then4925 ], [ %dict.sroa.12.67, %if.then5006 ], [ %dict.sroa.12.68, %if.then5087 ], [ %dict.sroa.12.69, %if.then5168 ], [ %dict.sroa.12.70, %if.then5249 ], [ %dict.sroa.12.71, %if.then5330 ], [ %dict.sroa.12.72, %if.then5411 ], [ %dict.sroa.12.73, %if.then5492 ], [ %dict.sroa.12.55, %if.then4101 ], [ %dict.sroa.12.56, %if.then4169 ], [ %dict.sroa.12.20, %do.body3917 ]
  %len.76 = phi i32 [ %len.75, %if.then5586 ], [ %len.75, %do.end5600 ], [ %len.1, %if.then48 ], [ %len.2, %if.then108 ], [ %len.3, %if.then178 ], [ %len.4, %if.then249 ], [ %len.5, %if.then320 ], [ %len.6, %if.then391 ], [ %len.7, %if.then462 ], [ %len.8, %if.then533 ], [ %len.9, %if.then604 ], [ %len.19, %if.then1298 ], [ %len.10, %if.then682 ], [ %len.11, %if.then759 ], [ %len.12, %if.then837 ], [ %len.13, %if.then915 ], [ %len.14, %if.then993 ], [ %len.15, %if.then1071 ], [ %len.16, %if.then1149 ], [ %len.17, %if.then1227 ], [ %len.20, %if.then1332 ], [ %len.21, %if.then1384 ], [ %len.22, %if.then1430 ], [ %len.23, %if.then1520 ], [ %len.24, %if.then1611 ], [ %len.38, %if.then2721 ], [ %len.39, %if.then2792 ], [ %len.40, %if.then2863 ], [ %len.41, %if.then2934 ], [ %len.42, %if.then3005 ], [ %len.43, %if.then3076 ], [ %sub4.i, %if.then5575 ], [ %len.51, %if.end3911 ], [ %len.44, %if.then3165 ], [ %len.44, %if.then3238 ], [ %len.44, %if.then3313 ], [ %len.44, %if.then3388 ], [ %len.44, %if.then3463 ], [ %len.45, %if.then3536 ], [ %len.46, %if.then3583 ], [ %len.47, %if.then3659 ], [ %len.48, %if.then3736 ], [ %len.49, %if.then3813 ], [ %len.50, %if.then3894 ], [ %len.50, %if.end3896 ], [ %len.50, %do.body3887 ], [ %len.49, %if.then3880 ], [ %len.25, %if.then1720 ], [ %len.26, %if.then1767 ], [ %len.27, %if.then1857 ], [ %len.28, %if.then1948 ], [ %len.29, %if.then2059 ], [ %len.30, %if.then2139 ], [ %len.31, %if.then2220 ], [ %len.32, %if.then2301 ], [ %len.33, %if.then2382 ], [ %len.34, %if.then2463 ], [ %len.35, %if.then2544 ], [ %len.36, %if.then2625 ], [ %len.52, %if.then3946 ], [ %len.53, %if.then3995 ], [ %len.54, %if.then4048 ], [ %len.58, %if.then4246 ], [ %len.59, %if.then4293 ], [ %len.60, %if.then4384 ], [ %len.61, %if.then4475 ], [ %len.62, %if.then4584 ], [ %len.63, %if.then4632 ], [ %len.64, %if.then4723 ], [ %len.65, %if.then4814 ], [ %len.66, %if.then4925 ], [ %len.67, %if.then5006 ], [ %len.68, %if.then5087 ], [ %len.69, %if.then5168 ], [ %len.70, %if.then5249 ], [ %len.71, %if.then5330 ], [ %len.72, %if.then5411 ], [ %len.73, %if.then5492 ], [ %len.55, %if.then4101 ], [ %len.56, %if.then4169 ], [ %len.20, %do.body3917 ]
  %rep0.86 = phi i32 [ %rep0.85, %if.then5586 ], [ %rep0.85, %do.end5600 ], [ %rep0.1, %if.then48 ], [ %rep0.2, %if.then108 ], [ %rep0.3, %if.then178 ], [ %rep0.4, %if.then249 ], [ %rep0.5, %if.then320 ], [ %rep0.6, %if.then391 ], [ %rep0.7, %if.then462 ], [ %rep0.8, %if.then533 ], [ %rep0.9, %if.then604 ], [ %rep0.19, %if.then1298 ], [ %rep0.10, %if.then682 ], [ %rep0.11, %if.then759 ], [ %rep0.12, %if.then837 ], [ %rep0.13, %if.then915 ], [ %rep0.14, %if.then993 ], [ %rep0.15, %if.then1071 ], [ %rep0.16, %if.then1149 ], [ %rep0.17, %if.then1227 ], [ %rep0.20, %if.then1332 ], [ %rep0.21, %if.then1384 ], [ %rep0.22, %if.then1430 ], [ %rep0.23, %if.then1520 ], [ %rep0.24, %if.then1611 ], [ %rep0.38, %if.then2721 ], [ %rep0.39, %if.then2792 ], [ %rep0.40, %if.then2863 ], [ %rep0.41, %if.then2934 ], [ %rep0.42, %if.then3005 ], [ %rep0.43, %if.then3076 ], [ %rep0.84, %if.then5575 ], [ %rep0.61, %if.end3911 ], [ %rep0.44, %if.then3165 ], [ %rep0.46, %if.then3238 ], [ %rep0.48, %if.then3313 ], [ %rep0.50, %if.then3388 ], [ %rep0.52, %if.then3463 ], [ %rep0.54.lcssa, %if.then3536 ], [ %rep0.55, %if.then3583 ], [ %rep0.56, %if.then3659 ], [ %rep0.57, %if.then3736 ], [ %rep0.58, %if.then3813 ], [ %rep0.60, %if.then3894 ], [ %rep0.60, %if.end3896 ], [ %rep0.60, %do.body3887 ], [ -1, %if.then3880 ], [ %rep0.25, %if.then1720 ], [ %rep0.26, %if.then1767 ], [ %rep0.27, %if.then1857 ], [ %rep0.28, %if.then1948 ], [ %rep0.29, %if.then2059 ], [ %rep0.30, %if.then2139 ], [ %rep0.31, %if.then2220 ], [ %rep0.32, %if.then2301 ], [ %rep0.33, %if.then2382 ], [ %rep0.34, %if.then2463 ], [ %rep0.35, %if.then2544 ], [ %rep0.36, %if.then2625 ], [ %rep0.62, %if.then3946 ], [ %rep0.63, %if.then3995 ], [ %rep0.64, %if.then4048 ], [ %rep0.68, %if.then4246 ], [ %rep0.69, %if.then4293 ], [ %rep0.70, %if.then4384 ], [ %rep0.71, %if.then4475 ], [ %rep0.72, %if.then4584 ], [ %rep0.73, %if.then4632 ], [ %rep0.74, %if.then4723 ], [ %rep0.75, %if.then4814 ], [ %rep0.76, %if.then4925 ], [ %rep0.77, %if.then5006 ], [ %rep0.78, %if.then5087 ], [ %rep0.79, %if.then5168 ], [ %rep0.80, %if.then5249 ], [ %rep0.81, %if.then5330 ], [ %rep0.82, %if.then5411 ], [ %rep0.83, %if.then5492 ], [ %rep0.65, %if.then4101 ], [ %rep0.66, %if.then4169 ], [ %rep0.20, %do.body3917 ]
  %rep1.76 = phi i32 [ %rep1.75, %if.then5586 ], [ %rep1.75, %do.end5600 ], [ %rep1.1, %if.then48 ], [ %rep1.2, %if.then108 ], [ %rep1.3, %if.then178 ], [ %rep1.4, %if.then249 ], [ %rep1.5, %if.then320 ], [ %rep1.6, %if.then391 ], [ %rep1.7, %if.then462 ], [ %rep1.8, %if.then533 ], [ %rep1.9, %if.then604 ], [ %rep1.19, %if.then1298 ], [ %rep1.10, %if.then682 ], [ %rep1.11, %if.then759 ], [ %rep1.12, %if.then837 ], [ %rep1.13, %if.then915 ], [ %rep1.14, %if.then993 ], [ %rep1.15, %if.then1071 ], [ %rep1.16, %if.then1149 ], [ %rep1.17, %if.then1227 ], [ %rep1.20, %if.then1332 ], [ %rep1.21, %if.then1384 ], [ %rep1.22, %if.then1430 ], [ %rep1.23, %if.then1520 ], [ %rep1.24, %if.then1611 ], [ %rep1.38, %if.then2721 ], [ %rep1.39, %if.then2792 ], [ %rep1.40, %if.then2863 ], [ %rep1.41, %if.then2934 ], [ %rep1.42, %if.then3005 ], [ %rep1.43, %if.then3076 ], [ %rep1.74, %if.then5575 ], [ %rep1.51, %if.end3911 ], [ %rep1.44, %if.then3165 ], [ %rep1.44, %if.then3238 ], [ %rep1.44, %if.then3313 ], [ %rep1.44, %if.then3388 ], [ %rep1.44, %if.then3463 ], [ %rep1.45, %if.then3536 ], [ %rep1.46, %if.then3583 ], [ %rep1.47, %if.then3659 ], [ %rep1.48, %if.then3736 ], [ %rep1.49, %if.then3813 ], [ %rep1.50, %if.then3894 ], [ %rep1.50, %if.end3896 ], [ %rep1.50, %do.body3887 ], [ %rep1.49, %if.then3880 ], [ %rep1.25, %if.then1720 ], [ %rep1.26, %if.then1767 ], [ %rep1.27, %if.then1857 ], [ %rep1.28, %if.then1948 ], [ %rep1.29, %if.then2059 ], [ %rep1.30, %if.then2139 ], [ %rep1.31, %if.then2220 ], [ %rep1.32, %if.then2301 ], [ %rep1.33, %if.then2382 ], [ %rep1.34, %if.then2463 ], [ %rep1.35, %if.then2544 ], [ %rep1.36, %if.then2625 ], [ %rep1.52, %if.then3946 ], [ %rep1.53, %if.then3995 ], [ %rep1.54, %if.then4048 ], [ %rep1.58, %if.then4246 ], [ %rep1.59, %if.then4293 ], [ %rep1.60, %if.then4384 ], [ %rep1.61, %if.then4475 ], [ %rep1.62, %if.then4584 ], [ %rep1.63, %if.then4632 ], [ %rep1.64, %if.then4723 ], [ %rep1.65, %if.then4814 ], [ %rep1.66, %if.then4925 ], [ %rep1.67, %if.then5006 ], [ %rep1.68, %if.then5087 ], [ %rep1.69, %if.then5168 ], [ %rep1.70, %if.then5249 ], [ %rep1.71, %if.then5330 ], [ %rep1.72, %if.then5411 ], [ %rep1.73, %if.then5492 ], [ %rep1.55, %if.then4101 ], [ %rep1.56, %if.then4169 ], [ %rep1.20, %do.body3917 ]
  %rep2.76 = phi i32 [ %rep2.75, %if.then5586 ], [ %rep2.75, %do.end5600 ], [ %rep2.1, %if.then48 ], [ %rep2.2, %if.then108 ], [ %rep2.3, %if.then178 ], [ %rep2.4, %if.then249 ], [ %rep2.5, %if.then320 ], [ %rep2.6, %if.then391 ], [ %rep2.7, %if.then462 ], [ %rep2.8, %if.then533 ], [ %rep2.9, %if.then604 ], [ %rep2.19, %if.then1298 ], [ %rep2.10, %if.then682 ], [ %rep2.11, %if.then759 ], [ %rep2.12, %if.then837 ], [ %rep2.13, %if.then915 ], [ %rep2.14, %if.then993 ], [ %rep2.15, %if.then1071 ], [ %rep2.16, %if.then1149 ], [ %rep2.17, %if.then1227 ], [ %rep2.20, %if.then1332 ], [ %rep2.21, %if.then1384 ], [ %rep2.22, %if.then1430 ], [ %rep2.23, %if.then1520 ], [ %rep2.24, %if.then1611 ], [ %rep2.38, %if.then2721 ], [ %rep2.39, %if.then2792 ], [ %rep2.40, %if.then2863 ], [ %rep2.41, %if.then2934 ], [ %rep2.42, %if.then3005 ], [ %rep2.43, %if.then3076 ], [ %rep2.74, %if.then5575 ], [ %rep2.51, %if.end3911 ], [ %rep2.44, %if.then3165 ], [ %rep2.44, %if.then3238 ], [ %rep2.44, %if.then3313 ], [ %rep2.44, %if.then3388 ], [ %rep2.44, %if.then3463 ], [ %rep2.45, %if.then3536 ], [ %rep2.46, %if.then3583 ], [ %rep2.47, %if.then3659 ], [ %rep2.48, %if.then3736 ], [ %rep2.49, %if.then3813 ], [ %rep2.50, %if.then3894 ], [ %rep2.50, %if.end3896 ], [ %rep2.50, %do.body3887 ], [ %rep2.49, %if.then3880 ], [ %rep2.25, %if.then1720 ], [ %rep2.26, %if.then1767 ], [ %rep2.27, %if.then1857 ], [ %rep2.28, %if.then1948 ], [ %rep2.29, %if.then2059 ], [ %rep2.30, %if.then2139 ], [ %rep2.31, %if.then2220 ], [ %rep2.32, %if.then2301 ], [ %rep2.33, %if.then2382 ], [ %rep2.34, %if.then2463 ], [ %rep2.35, %if.then2544 ], [ %rep2.36, %if.then2625 ], [ %rep2.52, %if.then3946 ], [ %rep2.53, %if.then3995 ], [ %rep2.54, %if.then4048 ], [ %rep2.58, %if.then4246 ], [ %rep2.59, %if.then4293 ], [ %rep2.60, %if.then4384 ], [ %rep2.61, %if.then4475 ], [ %rep2.62, %if.then4584 ], [ %rep2.63, %if.then4632 ], [ %rep2.64, %if.then4723 ], [ %rep2.65, %if.then4814 ], [ %rep2.66, %if.then4925 ], [ %rep2.67, %if.then5006 ], [ %rep2.68, %if.then5087 ], [ %rep2.69, %if.then5168 ], [ %rep2.70, %if.then5249 ], [ %rep2.71, %if.then5330 ], [ %rep2.72, %if.then5411 ], [ %rep2.73, %if.then5492 ], [ %rep2.55, %if.then4101 ], [ %rep2.56, %if.then4169 ], [ %rep2.20, %do.body3917 ]
  %rep3.76 = phi i32 [ %rep3.75, %if.then5586 ], [ %rep3.75, %do.end5600 ], [ %rep3.1, %if.then48 ], [ %rep3.2, %if.then108 ], [ %rep3.3, %if.then178 ], [ %rep3.4, %if.then249 ], [ %rep3.5, %if.then320 ], [ %rep3.6, %if.then391 ], [ %rep3.7, %if.then462 ], [ %rep3.8, %if.then533 ], [ %rep3.9, %if.then604 ], [ %rep3.19, %if.then1298 ], [ %rep3.10, %if.then682 ], [ %rep3.11, %if.then759 ], [ %rep3.12, %if.then837 ], [ %rep3.13, %if.then915 ], [ %rep3.14, %if.then993 ], [ %rep3.15, %if.then1071 ], [ %rep3.16, %if.then1149 ], [ %rep3.17, %if.then1227 ], [ %rep3.20, %if.then1332 ], [ %rep3.21, %if.then1384 ], [ %rep3.22, %if.then1430 ], [ %rep3.23, %if.then1520 ], [ %rep3.24, %if.then1611 ], [ %rep3.38, %if.then2721 ], [ %rep3.39, %if.then2792 ], [ %rep3.40, %if.then2863 ], [ %rep3.41, %if.then2934 ], [ %rep3.42, %if.then3005 ], [ %rep3.43, %if.then3076 ], [ %rep3.74, %if.then5575 ], [ %rep3.51, %if.end3911 ], [ %rep3.44, %if.then3165 ], [ %rep3.44, %if.then3238 ], [ %rep3.44, %if.then3313 ], [ %rep3.44, %if.then3388 ], [ %rep3.44, %if.then3463 ], [ %rep3.45, %if.then3536 ], [ %rep3.46, %if.then3583 ], [ %rep3.47, %if.then3659 ], [ %rep3.48, %if.then3736 ], [ %rep3.49, %if.then3813 ], [ %rep3.50, %if.then3894 ], [ %rep3.50, %if.end3896 ], [ %rep3.50, %do.body3887 ], [ %rep3.49, %if.then3880 ], [ %rep3.25, %if.then1720 ], [ %rep3.26, %if.then1767 ], [ %rep3.27, %if.then1857 ], [ %rep3.28, %if.then1948 ], [ %rep3.29, %if.then2059 ], [ %rep3.30, %if.then2139 ], [ %rep3.31, %if.then2220 ], [ %rep3.32, %if.then2301 ], [ %rep3.33, %if.then2382 ], [ %rep3.34, %if.then2463 ], [ %rep3.35, %if.then2544 ], [ %rep3.36, %if.then2625 ], [ %rep3.52, %if.then3946 ], [ %rep3.53, %if.then3995 ], [ %rep3.54, %if.then4048 ], [ %rep3.58, %if.then4246 ], [ %rep3.59, %if.then4293 ], [ %rep3.60, %if.then4384 ], [ %rep3.61, %if.then4475 ], [ %rep3.62, %if.then4584 ], [ %rep3.63, %if.then4632 ], [ %rep3.64, %if.then4723 ], [ %rep3.65, %if.then4814 ], [ %rep3.66, %if.then4925 ], [ %rep3.67, %if.then5006 ], [ %rep3.68, %if.then5087 ], [ %rep3.69, %if.then5168 ], [ %rep3.70, %if.then5249 ], [ %rep3.71, %if.then5330 ], [ %rep3.72, %if.then5411 ], [ %rep3.73, %if.then5492 ], [ %rep3.55, %if.then4101 ], [ %rep3.56, %if.then4169 ], [ %rep3.20, %do.body3917 ]
  %state.76 = phi i32 [ %state.75, %if.then5586 ], [ %state.75, %do.end5600 ], [ %state.1, %if.then48 ], [ %state.2, %if.then108 ], [ %state.3, %if.then178 ], [ %state.4, %if.then249 ], [ %state.5, %if.then320 ], [ %state.6, %if.then391 ], [ %state.7, %if.then462 ], [ %state.8, %if.then533 ], [ %state.9, %if.then604 ], [ %state.19, %if.then1298 ], [ %state.10, %if.then682 ], [ %state.11, %if.then759 ], [ %state.12, %if.then837 ], [ %state.13, %if.then915 ], [ %state.14, %if.then993 ], [ %state.15, %if.then1071 ], [ %state.16, %if.then1149 ], [ %state.17, %if.then1227 ], [ %state.20, %if.then1332 ], [ %state.21, %if.then1384 ], [ %state.22, %if.then1430 ], [ %state.23, %if.then1520 ], [ %state.24, %if.then1611 ], [ %state.38, %if.then2721 ], [ %state.39, %if.then2792 ], [ %state.40, %if.then2863 ], [ %state.41, %if.then2934 ], [ %state.42, %if.then3005 ], [ %state.43, %if.then3076 ], [ %state.74, %if.then5575 ], [ %state.51, %if.end3911 ], [ %state.44, %if.then3165 ], [ %state.44, %if.then3238 ], [ %state.44, %if.then3313 ], [ %state.44, %if.then3388 ], [ %state.44, %if.then3463 ], [ %state.45, %if.then3536 ], [ %state.46, %if.then3583 ], [ %state.47, %if.then3659 ], [ %state.48, %if.then3736 ], [ %state.49, %if.then3813 ], [ %state.50, %if.then3894 ], [ %state.50, %if.end3896 ], [ %state.50, %do.body3887 ], [ %state.49, %if.then3880 ], [ %state.25, %if.then1720 ], [ %state.26, %if.then1767 ], [ %state.27, %if.then1857 ], [ %state.28, %if.then1948 ], [ %state.29, %if.then2059 ], [ %state.30, %if.then2139 ], [ %state.31, %if.then2220 ], [ %state.32, %if.then2301 ], [ %state.33, %if.then2382 ], [ %state.34, %if.then2463 ], [ %state.35, %if.then2544 ], [ %state.36, %if.then2625 ], [ %state.52, %if.then3946 ], [ %state.53, %if.then3995 ], [ %state.54, %if.then4048 ], [ %state.58, %if.then4246 ], [ %state.59, %if.then4293 ], [ %state.60, %if.then4384 ], [ %state.61, %if.then4475 ], [ %state.62, %if.then4584 ], [ %state.63, %if.then4632 ], [ %state.64, %if.then4723 ], [ %state.65, %if.then4814 ], [ %state.66, %if.then4925 ], [ %state.67, %if.then5006 ], [ %state.68, %if.then5087 ], [ %state.69, %if.then5168 ], [ %state.70, %if.then5249 ], [ %state.71, %if.then5330 ], [ %state.72, %if.then5411 ], [ %state.73, %if.then5492 ], [ %state.55, %if.then4101 ], [ %state.56, %if.then4169 ], [ %state.20, %do.body3917 ]
  %probs.75 = phi ptr [ %probs.74, %if.then5586 ], [ %probs.74, %do.end5600 ], [ %probs.1, %if.then48 ], [ %probs.2, %if.then108 ], [ %probs.3, %if.then178 ], [ %probs.4, %if.then249 ], [ %probs.5, %if.then320 ], [ %probs.6, %if.then391 ], [ %probs.7, %if.then462 ], [ %probs.8, %if.then533 ], [ %probs.9, %if.then604 ], [ %probs.19, %if.then1298 ], [ %probs.10, %if.then682 ], [ %probs.11, %if.then759 ], [ %probs.12, %if.then837 ], [ %probs.13, %if.then915 ], [ %probs.14, %if.then993 ], [ %probs.15, %if.then1071 ], [ %probs.16, %if.then1149 ], [ %probs.17, %if.then1227 ], [ %probs.20, %if.then1332 ], [ %probs.21, %if.then1384 ], [ %probs.22, %if.then1430 ], [ %probs.23, %if.then1520 ], [ %probs.24, %if.then1611 ], [ %probs.37, %if.then2721 ], [ %probs.38, %if.then2792 ], [ %probs.39, %if.then2863 ], [ %probs.40, %if.then2934 ], [ %probs.41, %if.then3005 ], [ %probs.42, %if.then3076 ], [ %probs.73, %if.then5575 ], [ %probs.50, %if.end3911 ], [ %probs.43, %if.then3165 ], [ %probs.43, %if.then3238 ], [ %probs.43, %if.then3313 ], [ %probs.43, %if.then3388 ], [ %probs.43, %if.then3463 ], [ %probs.44, %if.then3536 ], [ %probs.45, %if.then3583 ], [ %probs.46, %if.then3659 ], [ %probs.47, %if.then3736 ], [ %probs.48, %if.then3813 ], [ %probs.49, %if.then3894 ], [ %probs.49, %if.end3896 ], [ %probs.49, %do.body3887 ], [ %probs.48, %if.then3880 ], [ %probs.25, %if.then1720 ], [ %probs.26, %if.then1767 ], [ %probs.27, %if.then1857 ], [ %probs.28, %if.then1948 ], [ %probs.29, %if.then2059 ], [ %probs.30, %if.then2139 ], [ %probs.31, %if.then2220 ], [ %probs.32, %if.then2301 ], [ %probs.33, %if.then2382 ], [ %probs.34, %if.then2463 ], [ %probs.35, %if.then2544 ], [ %probs.36, %if.then2625 ], [ %probs.51, %if.then3946 ], [ %probs.52, %if.then3995 ], [ %probs.53, %if.then4048 ], [ %probs.57, %if.then4246 ], [ %probs.58, %if.then4293 ], [ %probs.59, %if.then4384 ], [ %probs.60, %if.then4475 ], [ %probs.61, %if.then4584 ], [ %probs.62, %if.then4632 ], [ %probs.63, %if.then4723 ], [ %probs.64, %if.then4814 ], [ %probs.65, %if.then4925 ], [ %probs.66, %if.then5006 ], [ %probs.67, %if.then5087 ], [ %probs.68, %if.then5168 ], [ %probs.69, %if.then5249 ], [ %probs.70, %if.then5330 ], [ %probs.71, %if.then5411 ], [ %probs.72, %if.then5492 ], [ %probs.54, %if.then4101 ], [ %probs.55, %if.then4169 ], [ %probs.20, %do.body3917 ]
  %symbol.96 = phi i32 [ %symbol.95, %if.then5586 ], [ %symbol.95, %do.end5600 ], [ %symbol.1, %if.then48 ], [ %symbol.2, %if.then108 ], [ %symbol.3, %if.then178 ], [ %symbol.4, %if.then249 ], [ %symbol.5, %if.then320 ], [ %symbol.6, %if.then391 ], [ %symbol.7, %if.then462 ], [ %symbol.8, %if.then533 ], [ %symbol.9, %if.then604 ], [ %symbol.26, %if.then1298 ], [ %symbol.10, %if.then682 ], [ %symbol.12, %if.then759 ], [ %symbol.14, %if.then837 ], [ %symbol.16, %if.then915 ], [ %symbol.18, %if.then993 ], [ %symbol.20, %if.then1071 ], [ %symbol.22, %if.then1149 ], [ %symbol.24, %if.then1227 ], [ %symbol.27, %if.then1332 ], [ %symbol.28, %if.then1384 ], [ %symbol.29, %if.then1430 ], [ %symbol.30, %if.then1520 ], [ %symbol.31, %if.then1611 ], [ %symbol.47, %if.then2721 ], [ %symbol.48, %if.then2792 ], [ %symbol.49, %if.then2863 ], [ %symbol.50, %if.then2934 ], [ %symbol.51, %if.then3005 ], [ %symbol.52, %if.then3076 ], [ %symbol.94, %if.then5575 ], [ %symbol.69, %if.end3911 ], [ %symbol.54, %if.then3165 ], [ %symbol.56, %if.then3238 ], [ %symbol.58, %if.then3313 ], [ %symbol.60, %if.then3388 ], [ %symbol.62, %if.then3463 ], [ %symbol.63, %if.then3536 ], [ %symbol.64, %if.then3583 ], [ %symbol.65, %if.then3659 ], [ %symbol.66, %if.then3736 ], [ %symbol.67, %if.then3813 ], [ %symbol.68, %if.then3894 ], [ %symbol.68, %if.end3896 ], [ %symbol.68, %do.body3887 ], [ %symbol.67, %if.then3880 ], [ %symbol.33, %if.then1720 ], [ %symbol.34, %if.then1767 ], [ %symbol.35, %if.then1857 ], [ %symbol.36, %if.then1948 ], [ %symbol.38, %if.then2059 ], [ %symbol.39, %if.then2139 ], [ %symbol.40, %if.then2220 ], [ %symbol.41, %if.then2301 ], [ %symbol.42, %if.then2382 ], [ %symbol.43, %if.then2463 ], [ %symbol.44, %if.then2544 ], [ %symbol.45, %if.then2625 ], [ %symbol.70, %if.then3946 ], [ %symbol.71, %if.then3995 ], [ %symbol.72, %if.then4048 ], [ %symbol.75, %if.then4246 ], [ %symbol.76, %if.then4293 ], [ %symbol.77, %if.then4384 ], [ %symbol.78, %if.then4475 ], [ %symbol.80, %if.then4584 ], [ %symbol.81, %if.then4632 ], [ %symbol.82, %if.then4723 ], [ %symbol.83, %if.then4814 ], [ %symbol.85, %if.then4925 ], [ %symbol.86, %if.then5006 ], [ %symbol.87, %if.then5087 ], [ %symbol.88, %if.then5168 ], [ %symbol.89, %if.then5249 ], [ %symbol.90, %if.then5330 ], [ %symbol.91, %if.then5411 ], [ %symbol.92, %if.then5492 ], [ %symbol.73, %if.then4101 ], [ %symbol.74, %if.then4169 ], [ %symbol.27, %do.body3917 ]
  %limit.81 = phi i32 [ %limit.80, %if.then5586 ], [ %limit.80, %do.end5600 ], [ %limit.1, %if.then48 ], [ %limit.2, %if.then108 ], [ %limit.3, %if.then178 ], [ %limit.4, %if.then249 ], [ %limit.5, %if.then320 ], [ %limit.6, %if.then391 ], [ %limit.7, %if.then462 ], [ %limit.8, %if.then533 ], [ %limit.9, %if.then604 ], [ %limit.19, %if.then1298 ], [ %limit.10, %if.then682 ], [ %limit.11, %if.then759 ], [ %limit.12, %if.then837 ], [ %limit.13, %if.then915 ], [ %limit.14, %if.then993 ], [ %limit.15, %if.then1071 ], [ %limit.16, %if.then1149 ], [ %limit.17, %if.then1227 ], [ %limit.20, %if.then1332 ], [ %limit.21, %if.then1384 ], [ %limit.22, %if.then1430 ], [ %limit.23, %if.then1520 ], [ %limit.24, %if.then1611 ], [ %limit.38, %if.then2721 ], [ %limit.39, %if.then2792 ], [ %limit.40, %if.then2863 ], [ %limit.41, %if.then2934 ], [ %limit.42, %if.then3005 ], [ %limit.43, %if.then3076 ], [ %limit.79, %if.then5575 ], [ %limit.56, %if.end3911 ], [ 5, %if.then3165 ], [ 4, %if.then3238 ], [ 3, %if.then3313 ], [ 2, %if.then3388 ], [ 1, %if.then3463 ], [ %limit.50.lcssa, %if.then3536 ], [ %limit.51, %if.then3583 ], [ %limit.52, %if.then3659 ], [ %limit.53, %if.then3736 ], [ %limit.54, %if.then3813 ], [ %limit.55, %if.then3894 ], [ %limit.55, %if.end3896 ], [ %limit.55, %do.body3887 ], [ %limit.54, %if.then3880 ], [ %limit.25, %if.then1720 ], [ %limit.26, %if.then1767 ], [ %limit.27, %if.then1857 ], [ %limit.28, %if.then1948 ], [ %limit.29, %if.then2059 ], [ %limit.30, %if.then2139 ], [ %limit.31, %if.then2220 ], [ %limit.32, %if.then2301 ], [ %limit.33, %if.then2382 ], [ %limit.34, %if.then2463 ], [ %limit.35, %if.then2544 ], [ %limit.36, %if.then2625 ], [ %limit.57, %if.then3946 ], [ %limit.58, %if.then3995 ], [ %limit.59, %if.then4048 ], [ %limit.63, %if.then4246 ], [ %limit.64, %if.then4293 ], [ %limit.65, %if.then4384 ], [ %limit.66, %if.then4475 ], [ %limit.67, %if.then4584 ], [ %limit.68, %if.then4632 ], [ %limit.69, %if.then4723 ], [ %limit.70, %if.then4814 ], [ %limit.71, %if.then4925 ], [ %limit.72, %if.then5006 ], [ %limit.73, %if.then5087 ], [ %limit.74, %if.then5168 ], [ %limit.75, %if.then5249 ], [ %limit.76, %if.then5330 ], [ %limit.77, %if.then5411 ], [ %limit.78, %if.then5492 ], [ %limit.60, %if.then4101 ], [ %limit.61, %if.then4169 ], [ %limit.20, %do.body3917 ]
  %offset.87 = phi i32 [ %offset.86, %if.then5586 ], [ %offset.86, %do.end5600 ], [ %offset.1, %if.then48 ], [ %offset.2, %if.then108 ], [ %offset.3, %if.then178 ], [ %offset.4, %if.then249 ], [ %offset.5, %if.then320 ], [ %offset.6, %if.then391 ], [ %offset.7, %if.then462 ], [ %offset.8, %if.then533 ], [ %offset.9, %if.then604 ], [ %offset.26, %if.then1298 ], [ %offset.10, %if.then682 ], [ %offset.12, %if.then759 ], [ %offset.14, %if.then837 ], [ %offset.16, %if.then915 ], [ %offset.18, %if.then993 ], [ %offset.20, %if.then1071 ], [ %offset.22, %if.then1149 ], [ %offset.24, %if.then1227 ], [ %offset.27, %if.then1332 ], [ %offset.28, %if.then1384 ], [ %offset.29, %if.then1430 ], [ %offset.30, %if.then1520 ], [ %offset.31, %if.then1611 ], [ %offset.45, %if.then2721 ], [ %offset.46, %if.then2792 ], [ %offset.47, %if.then2863 ], [ %offset.48, %if.then2934 ], [ %offset.49, %if.then3005 ], [ %offset.50, %if.then3076 ], [ %offset.85, %if.then5575 ], [ %offset.62, %if.end3911 ], [ %offset.51, %if.then3165 ], [ %offset.52, %if.then3238 ], [ %offset.53, %if.then3313 ], [ %offset.54, %if.then3388 ], [ %offset.55, %if.then3463 ], [ %offset.56, %if.then3536 ], [ %offset.57, %if.then3583 ], [ %offset.58, %if.then3659 ], [ %offset.59, %if.then3736 ], [ %offset.60, %if.then3813 ], [ %offset.61, %if.then3894 ], [ %offset.61, %if.end3896 ], [ %offset.61, %do.body3887 ], [ %offset.60, %if.then3880 ], [ %offset.32, %if.then1720 ], [ %offset.33, %if.then1767 ], [ %offset.34, %if.then1857 ], [ %offset.35, %if.then1948 ], [ %offset.36, %if.then2059 ], [ %offset.37, %if.then2139 ], [ %offset.38, %if.then2220 ], [ %offset.39, %if.then2301 ], [ %offset.40, %if.then2382 ], [ %offset.41, %if.then2463 ], [ %offset.42, %if.then2544 ], [ %offset.43, %if.then2625 ], [ %offset.63, %if.then3946 ], [ %offset.64, %if.then3995 ], [ %offset.65, %if.then4048 ], [ %offset.69, %if.then4246 ], [ %offset.70, %if.then4293 ], [ %offset.71, %if.then4384 ], [ %offset.72, %if.then4475 ], [ %offset.73, %if.then4584 ], [ %offset.74, %if.then4632 ], [ %offset.75, %if.then4723 ], [ %offset.76, %if.then4814 ], [ %offset.77, %if.then4925 ], [ %offset.78, %if.then5006 ], [ %offset.79, %if.then5087 ], [ %offset.80, %if.then5168 ], [ %offset.81, %if.then5249 ], [ %offset.82, %if.then5330 ], [ %offset.83, %if.then5411 ], [ %offset.84, %if.then5492 ], [ %offset.66, %if.then4101 ], [ %offset.67, %if.then4169 ], [ %offset.27, %do.body3917 ]
  %rc_in_pos.153 = phi i64 [ %rc_in_pos.151, %if.then5586 ], [ %rc_in_pos.152, %do.end5600 ], [ %rc_in_pos.1, %if.then48 ], [ %rc_in_pos.3, %if.then108 ], [ %rc_in_pos.5, %if.then178 ], [ %rc_in_pos.7, %if.then249 ], [ %rc_in_pos.9, %if.then320 ], [ %rc_in_pos.11, %if.then391 ], [ %rc_in_pos.13, %if.then462 ], [ %rc_in_pos.15, %if.then533 ], [ %rc_in_pos.17, %if.then604 ], [ %rc_in_pos.36, %if.then1298 ], [ %rc_in_pos.19, %if.then682 ], [ %rc_in_pos.21, %if.then759 ], [ %rc_in_pos.23, %if.then837 ], [ %rc_in_pos.25, %if.then915 ], [ %rc_in_pos.27, %if.then993 ], [ %rc_in_pos.29, %if.then1071 ], [ %rc_in_pos.31, %if.then1149 ], [ %rc_in_pos.33, %if.then1227 ], [ %rc_in_pos.37, %if.then1332 ], [ %rc_in_pos.39, %if.then1384 ], [ %rc_in_pos.41, %if.then1430 ], [ %rc_in_pos.43, %if.then1520 ], [ %rc_in_pos.45, %if.then1611 ], [ %rc_in_pos.72, %if.then2721 ], [ %rc_in_pos.74, %if.then2792 ], [ %rc_in_pos.76, %if.then2863 ], [ %rc_in_pos.78, %if.then2934 ], [ %rc_in_pos.80, %if.then3005 ], [ %rc_in_pos.82, %if.then3076 ], [ %rc_in_pos.150, %if.then5575 ], [ %rc_in_pos.107, %if.end3911 ], [ %rc_in_pos.84, %if.then3165 ], [ %rc_in_pos.86, %if.then3238 ], [ %rc_in_pos.88, %if.then3313 ], [ %rc_in_pos.90, %if.then3388 ], [ %rc_in_pos.92, %if.then3463 ], [ %rc_in_pos.95.lcssa, %if.then3536 ], [ %rc_in_pos.97, %if.then3583 ], [ %rc_in_pos.99, %if.then3659 ], [ %rc_in_pos.101, %if.then3736 ], [ %rc_in_pos.103, %if.then3813 ], [ %rc_in_pos.105, %if.then3894 ], [ %inc3901, %if.end3896 ], [ %rc_in_pos.105, %do.body3887 ], [ %rc_in_pos.104, %if.then3880 ], [ %rc_in_pos.47, %if.then1720 ], [ %rc_in_pos.49, %if.then1767 ], [ %rc_in_pos.51, %if.then1857 ], [ %rc_in_pos.53, %if.then1948 ], [ %rc_in_pos.55, %if.then2059 ], [ %rc_in_pos.57, %if.then2139 ], [ %rc_in_pos.59, %if.then2220 ], [ %rc_in_pos.61, %if.then2301 ], [ %rc_in_pos.63, %if.then2382 ], [ %rc_in_pos.65, %if.then2463 ], [ %rc_in_pos.67, %if.then2544 ], [ %rc_in_pos.69, %if.then2625 ], [ %rc_in_pos.108, %if.then3946 ], [ %rc_in_pos.110, %if.then3995 ], [ %rc_in_pos.112, %if.then4048 ], [ %rc_in_pos.118, %if.then4246 ], [ %rc_in_pos.120, %if.then4293 ], [ %rc_in_pos.122, %if.then4384 ], [ %rc_in_pos.124, %if.then4475 ], [ %rc_in_pos.126, %if.then4584 ], [ %rc_in_pos.128, %if.then4632 ], [ %rc_in_pos.130, %if.then4723 ], [ %rc_in_pos.132, %if.then4814 ], [ %rc_in_pos.134, %if.then4925 ], [ %rc_in_pos.136, %if.then5006 ], [ %rc_in_pos.138, %if.then5087 ], [ %rc_in_pos.140, %if.then5168 ], [ %rc_in_pos.142, %if.then5249 ], [ %rc_in_pos.144, %if.then5330 ], [ %rc_in_pos.146, %if.then5411 ], [ %rc_in_pos.148, %if.then5492 ], [ %rc_in_pos.113, %if.then4101 ], [ %rc_in_pos.115, %if.then4169 ], [ %rc_in_pos.38, %do.body3917 ]
  %cmp5631 = phi i1 [ true, %if.then5586 ], [ true, %do.end5600 ], [ true, %if.then48 ], [ true, %if.then108 ], [ true, %if.then178 ], [ true, %if.then249 ], [ true, %if.then320 ], [ true, %if.then391 ], [ true, %if.then462 ], [ true, %if.then533 ], [ true, %if.then604 ], [ true, %if.then1298 ], [ true, %if.then682 ], [ true, %if.then759 ], [ true, %if.then837 ], [ true, %if.then915 ], [ true, %if.then993 ], [ true, %if.then1071 ], [ true, %if.then1149 ], [ true, %if.then1227 ], [ true, %if.then1332 ], [ true, %if.then1384 ], [ true, %if.then1430 ], [ true, %if.then1520 ], [ true, %if.then1611 ], [ true, %if.then2721 ], [ true, %if.then2792 ], [ true, %if.then2863 ], [ true, %if.then2934 ], [ true, %if.then3005 ], [ true, %if.then3076 ], [ true, %if.then5575 ], [ false, %if.end3911 ], [ true, %if.then3165 ], [ true, %if.then3238 ], [ true, %if.then3313 ], [ true, %if.then3388 ], [ true, %if.then3463 ], [ true, %if.then3536 ], [ true, %if.then3583 ], [ true, %if.then3659 ], [ true, %if.then3736 ], [ true, %if.then3813 ], [ true, %if.then3894 ], [ false, %if.end3896 ], [ false, %do.body3887 ], [ false, %if.then3880 ], [ true, %if.then1720 ], [ true, %if.then1767 ], [ true, %if.then1857 ], [ true, %if.then1948 ], [ true, %if.then2059 ], [ true, %if.then2139 ], [ true, %if.then2220 ], [ true, %if.then2301 ], [ true, %if.then2382 ], [ true, %if.then2463 ], [ true, %if.then2544 ], [ true, %if.then2625 ], [ true, %if.then3946 ], [ true, %if.then3995 ], [ true, %if.then4048 ], [ true, %if.then4246 ], [ true, %if.then4293 ], [ true, %if.then4384 ], [ true, %if.then4475 ], [ true, %if.then4584 ], [ true, %if.then4632 ], [ true, %if.then4723 ], [ true, %if.then4814 ], [ true, %if.then4925 ], [ true, %if.then5006 ], [ true, %if.then5087 ], [ true, %if.then5168 ], [ true, %if.then5249 ], [ true, %if.then5330 ], [ true, %if.then5411 ], [ true, %if.then5492 ], [ true, %if.then4101 ], [ true, %if.then4169 ], [ false, %do.body3917 ]
  %cmp5644 = phi i1 [ false, %if.then5586 ], [ false, %do.end5600 ], [ false, %if.then48 ], [ false, %if.then108 ], [ false, %if.then178 ], [ false, %if.then249 ], [ false, %if.then320 ], [ false, %if.then391 ], [ false, %if.then462 ], [ false, %if.then533 ], [ false, %if.then604 ], [ false, %if.then1298 ], [ false, %if.then682 ], [ false, %if.then759 ], [ false, %if.then837 ], [ false, %if.then915 ], [ false, %if.then993 ], [ false, %if.then1071 ], [ false, %if.then1149 ], [ false, %if.then1227 ], [ false, %if.then1332 ], [ false, %if.then1384 ], [ false, %if.then1430 ], [ false, %if.then1520 ], [ false, %if.then1611 ], [ false, %if.then2721 ], [ false, %if.then2792 ], [ false, %if.then2863 ], [ false, %if.then2934 ], [ false, %if.then3005 ], [ false, %if.then3076 ], [ false, %if.then5575 ], [ false, %if.end3911 ], [ false, %if.then3165 ], [ false, %if.then3238 ], [ false, %if.then3313 ], [ false, %if.then3388 ], [ false, %if.then3463 ], [ false, %if.then3536 ], [ false, %if.then3583 ], [ false, %if.then3659 ], [ false, %if.then3736 ], [ false, %if.then3813 ], [ false, %if.then3894 ], [ true, %if.end3896 ], [ true, %do.body3887 ], [ false, %if.then3880 ], [ false, %if.then1720 ], [ false, %if.then1767 ], [ false, %if.then1857 ], [ false, %if.then1948 ], [ false, %if.then2059 ], [ false, %if.then2139 ], [ false, %if.then2220 ], [ false, %if.then2301 ], [ false, %if.then2382 ], [ false, %if.then2463 ], [ false, %if.then2544 ], [ false, %if.then2625 ], [ false, %if.then3946 ], [ false, %if.then3995 ], [ false, %if.then4048 ], [ false, %if.then4246 ], [ false, %if.then4293 ], [ false, %if.then4384 ], [ false, %if.then4475 ], [ false, %if.then4584 ], [ false, %if.then4632 ], [ false, %if.then4723 ], [ false, %if.then4814 ], [ false, %if.then4925 ], [ false, %if.then5006 ], [ false, %if.then5087 ], [ false, %if.then5168 ], [ false, %if.then5249 ], [ false, %if.then5330 ], [ false, %if.then5411 ], [ false, %if.then5492 ], [ false, %if.then4101 ], [ false, %if.then4169 ], [ false, %do.body3917 ]
  %ret.0 = phi i32 [ 0, %if.then5586 ], [ 0, %do.end5600 ], [ 0, %if.then48 ], [ 0, %if.then108 ], [ 0, %if.then178 ], [ 0, %if.then249 ], [ 0, %if.then320 ], [ 0, %if.then391 ], [ 0, %if.then462 ], [ 0, %if.then533 ], [ 0, %if.then604 ], [ 0, %if.then1298 ], [ 0, %if.then682 ], [ 0, %if.then759 ], [ 0, %if.then837 ], [ 0, %if.then915 ], [ 0, %if.then993 ], [ 0, %if.then1071 ], [ 0, %if.then1149 ], [ 0, %if.then1227 ], [ 0, %if.then1332 ], [ 0, %if.then1384 ], [ 0, %if.then1430 ], [ 0, %if.then1520 ], [ 0, %if.then1611 ], [ 0, %if.then2721 ], [ 0, %if.then2792 ], [ 0, %if.then2863 ], [ 0, %if.then2934 ], [ 0, %if.then3005 ], [ 0, %if.then3076 ], [ 0, %if.then5575 ], [ 9, %if.end3911 ], [ 0, %if.then3165 ], [ 0, %if.then3238 ], [ 0, %if.then3313 ], [ 0, %if.then3388 ], [ 0, %if.then3463 ], [ 0, %if.then3536 ], [ 0, %if.then3583 ], [ 0, %if.then3659 ], [ 0, %if.then3736 ], [ 0, %if.then3813 ], [ 0, %if.then3894 ], [ 1, %if.end3896 ], [ 1, %do.body3887 ], [ 9, %if.then3880 ], [ 0, %if.then1720 ], [ 0, %if.then1767 ], [ 0, %if.then1857 ], [ 0, %if.then1948 ], [ 0, %if.then2059 ], [ 0, %if.then2139 ], [ 0, %if.then2220 ], [ 0, %if.then2301 ], [ 0, %if.then2382 ], [ 0, %if.then2463 ], [ 0, %if.then2544 ], [ 0, %if.then2625 ], [ 0, %if.then3946 ], [ 0, %if.then3995 ], [ 0, %if.then4048 ], [ 0, %if.then4246 ], [ 0, %if.then4293 ], [ 0, %if.then4384 ], [ 0, %if.then4475 ], [ 0, %if.then4584 ], [ 0, %if.then4632 ], [ 0, %if.then4723 ], [ 0, %if.then4814 ], [ 0, %if.then4925 ], [ 0, %if.then5006 ], [ 0, %if.then5087 ], [ 0, %if.then5168 ], [ 0, %if.then5249 ], [ 0, %if.then5330 ], [ 0, %if.then5411 ], [ 0, %if.then5492 ], [ 0, %if.then4101 ], [ 0, %if.then4169 ], [ 9, %do.body3917 ]
  %rc1.sroa.0.172 = phi i32 [ %rc1.sroa.0.170, %if.then5586 ], [ %rc1.sroa.0.171, %do.end5600 ], [ %rc1.sroa.0.1, %if.then48 ], [ %rc1.sroa.0.3, %if.then108 ], [ %rc1.sroa.0.5, %if.then178 ], [ %rc1.sroa.0.7, %if.then249 ], [ %rc1.sroa.0.9, %if.then320 ], [ %rc1.sroa.0.11, %if.then391 ], [ %rc1.sroa.0.13, %if.then462 ], [ %rc1.sroa.0.15, %if.then533 ], [ %rc1.sroa.0.17, %if.then604 ], [ %rc1.sroa.0.43, %if.then1298 ], [ %rc1.sroa.0.19, %if.then682 ], [ %rc1.sroa.0.22, %if.then759 ], [ %rc1.sroa.0.25, %if.then837 ], [ %rc1.sroa.0.28, %if.then915 ], [ %rc1.sroa.0.31, %if.then993 ], [ %rc1.sroa.0.34, %if.then1071 ], [ %rc1.sroa.0.37, %if.then1149 ], [ %rc1.sroa.0.40, %if.then1227 ], [ %rc1.sroa.0.44, %if.then1332 ], [ %rc1.sroa.0.46, %if.then1384 ], [ %rc1.sroa.0.48, %if.then1430 ], [ %rc1.sroa.0.50, %if.then1520 ], [ %rc1.sroa.0.52, %if.then1611 ], [ %rc1.sroa.0.82, %if.then2721 ], [ %rc1.sroa.0.84, %if.then2792 ], [ %rc1.sroa.0.86, %if.then2863 ], [ %rc1.sroa.0.88, %if.then2934 ], [ %rc1.sroa.0.90, %if.then3005 ], [ %rc1.sroa.0.92, %if.then3076 ], [ %rc1.sroa.0.169, %if.then5575 ], [ %rc1.sroa.0.123, %if.end3911 ], [ %rc1.sroa.0.95, %if.then3165 ], [ %rc1.sroa.0.98, %if.then3238 ], [ %rc1.sroa.0.101, %if.then3313 ], [ %rc1.sroa.0.104, %if.then3388 ], [ %rc1.sroa.0.107, %if.then3463 ], [ %rc1.sroa.0.110.lcssa, %if.then3536 ], [ %rc1.sroa.0.112, %if.then3583 ], [ %rc1.sroa.0.114, %if.then3659 ], [ %rc1.sroa.0.116, %if.then3736 ], [ %rc1.sroa.0.118, %if.then3813 ], [ %rc1.sroa.0.121, %if.then3894 ], [ %shl3898, %if.end3896 ], [ %rc1.sroa.0.121, %do.body3887 ], [ %rc1.sroa.0.120, %if.then3880 ], [ %rc1.sroa.0.55, %if.then1720 ], [ %rc1.sroa.0.57, %if.then1767 ], [ %rc1.sroa.0.59, %if.then1857 ], [ %rc1.sroa.0.61, %if.then1948 ], [ %rc1.sroa.0.64, %if.then2059 ], [ %rc1.sroa.0.66, %if.then2139 ], [ %rc1.sroa.0.68, %if.then2220 ], [ %rc1.sroa.0.70, %if.then2301 ], [ %rc1.sroa.0.72, %if.then2382 ], [ %rc1.sroa.0.74, %if.then2463 ], [ %rc1.sroa.0.76, %if.then2544 ], [ %rc1.sroa.0.78, %if.then2625 ], [ %rc1.sroa.0.124, %if.then3946 ], [ %rc1.sroa.0.126, %if.then3995 ], [ %rc1.sroa.0.128, %if.then4048 ], [ %rc1.sroa.0.134, %if.then4246 ], [ %rc1.sroa.0.136, %if.then4293 ], [ %rc1.sroa.0.138, %if.then4384 ], [ %rc1.sroa.0.140, %if.then4475 ], [ %rc1.sroa.0.143, %if.then4584 ], [ %rc1.sroa.0.145, %if.then4632 ], [ %rc1.sroa.0.147, %if.then4723 ], [ %rc1.sroa.0.149, %if.then4814 ], [ %rc1.sroa.0.152, %if.then4925 ], [ %rc1.sroa.0.154, %if.then5006 ], [ %rc1.sroa.0.156, %if.then5087 ], [ %rc1.sroa.0.158, %if.then5168 ], [ %rc1.sroa.0.160, %if.then5249 ], [ %rc1.sroa.0.162, %if.then5330 ], [ %rc1.sroa.0.164, %if.then5411 ], [ %rc1.sroa.0.166, %if.then5492 ], [ %rc1.sroa.0.129, %if.then4101 ], [ %rc1.sroa.0.131, %if.then4169 ], [ %sub3919, %do.body3917 ]
  %rc1.sroa.500.172 = phi i32 [ %rc1.sroa.500.170, %if.then5586 ], [ %rc1.sroa.500.171, %do.end5600 ], [ %rc1.sroa.500.1, %if.then48 ], [ %rc1.sroa.500.3, %if.then108 ], [ %rc1.sroa.500.5, %if.then178 ], [ %rc1.sroa.500.7, %if.then249 ], [ %rc1.sroa.500.9, %if.then320 ], [ %rc1.sroa.500.11, %if.then391 ], [ %rc1.sroa.500.13, %if.then462 ], [ %rc1.sroa.500.15, %if.then533 ], [ %rc1.sroa.500.17, %if.then604 ], [ %rc1.sroa.500.43, %if.then1298 ], [ %rc1.sroa.500.19, %if.then682 ], [ %rc1.sroa.500.22, %if.then759 ], [ %rc1.sroa.500.25, %if.then837 ], [ %rc1.sroa.500.28, %if.then915 ], [ %rc1.sroa.500.31, %if.then993 ], [ %rc1.sroa.500.34, %if.then1071 ], [ %rc1.sroa.500.37, %if.then1149 ], [ %rc1.sroa.500.40, %if.then1227 ], [ %rc1.sroa.500.44, %if.then1332 ], [ %rc1.sroa.500.46, %if.then1384 ], [ %rc1.sroa.500.48, %if.then1430 ], [ %rc1.sroa.500.50, %if.then1520 ], [ %rc1.sroa.500.52, %if.then1611 ], [ %rc1.sroa.500.82, %if.then2721 ], [ %rc1.sroa.500.84, %if.then2792 ], [ %rc1.sroa.500.86, %if.then2863 ], [ %rc1.sroa.500.88, %if.then2934 ], [ %rc1.sroa.500.90, %if.then3005 ], [ %rc1.sroa.500.92, %if.then3076 ], [ %rc1.sroa.500.169, %if.then5575 ], [ %rc1.sroa.500.123, %if.end3911 ], [ %rc1.sroa.500.95, %if.then3165 ], [ %rc1.sroa.500.98, %if.then3238 ], [ %rc1.sroa.500.101, %if.then3313 ], [ %rc1.sroa.500.104, %if.then3388 ], [ %rc1.sroa.500.107, %if.then3463 ], [ %rc1.sroa.500.110.lcssa, %if.then3536 ], [ %rc1.sroa.500.112, %if.then3583 ], [ %rc1.sroa.500.114, %if.then3659 ], [ %rc1.sroa.500.116, %if.then3736 ], [ %rc1.sroa.500.118, %if.then3813 ], [ %rc1.sroa.500.121, %if.then3894 ], [ %or3904, %if.end3896 ], [ %rc1.sroa.500.121, %do.body3887 ], [ %rc1.sroa.500.120, %if.then3880 ], [ %rc1.sroa.500.55, %if.then1720 ], [ %rc1.sroa.500.57, %if.then1767 ], [ %rc1.sroa.500.59, %if.then1857 ], [ %rc1.sroa.500.61, %if.then1948 ], [ %rc1.sroa.500.64, %if.then2059 ], [ %rc1.sroa.500.66, %if.then2139 ], [ %rc1.sroa.500.68, %if.then2220 ], [ %rc1.sroa.500.70, %if.then2301 ], [ %rc1.sroa.500.72, %if.then2382 ], [ %rc1.sroa.500.74, %if.then2463 ], [ %rc1.sroa.500.76, %if.then2544 ], [ %rc1.sroa.500.78, %if.then2625 ], [ %rc1.sroa.500.124, %if.then3946 ], [ %rc1.sroa.500.126, %if.then3995 ], [ %rc1.sroa.500.128, %if.then4048 ], [ %rc1.sroa.500.134, %if.then4246 ], [ %rc1.sroa.500.136, %if.then4293 ], [ %rc1.sroa.500.138, %if.then4384 ], [ %rc1.sroa.500.140, %if.then4475 ], [ %rc1.sroa.500.143, %if.then4584 ], [ %rc1.sroa.500.145, %if.then4632 ], [ %rc1.sroa.500.147, %if.then4723 ], [ %rc1.sroa.500.149, %if.then4814 ], [ %rc1.sroa.500.152, %if.then4925 ], [ %rc1.sroa.500.154, %if.then5006 ], [ %rc1.sroa.500.156, %if.then5087 ], [ %rc1.sroa.500.158, %if.then5168 ], [ %rc1.sroa.500.160, %if.then5249 ], [ %rc1.sroa.500.162, %if.then5330 ], [ %rc1.sroa.500.164, %if.then5411 ], [ %rc1.sroa.500.166, %if.then5492 ], [ %rc1.sroa.500.129, %if.then4101 ], [ %rc1.sroa.500.131, %if.then4169 ], [ %sub3921, %do.body3917 ]
  store i64 %dict.sroa.12.76, ptr %dict.sroa.12.0.dictptr.sroa_idx, align 8, !tbaa !47
  store i64 %dict.sroa.37.76, ptr %dict.sroa.37.0.dictptr.sroa_idx, align 8, !tbaa !50
  store i32 %rc1.sroa.0.172, ptr %rc, align 4, !tbaa !20
  store i32 %rc1.sroa.500.172, ptr %rc1.sroa.500.0.rc2.sroa_idx, align 4, !tbaa !20
  store i32 %rc1.sroa.856.0.copyload, ptr %rc1.sroa.856.0.rc2.sroa_idx, align 4, !tbaa !20
  store i64 %rc_in_pos.153, ptr %in_pos, align 8, !tbaa !11
  store i32 %state.76, ptr %state3, align 8, !tbaa !21
  store i32 %rep0.86, ptr %rep04, align 4, !tbaa !26
  store i32 %rep1.76, ptr %rep15, align 8, !tbaa !27
  store i32 %rep2.76, ptr %rep26, align 4, !tbaa !28
  store i32 %rep3.76, ptr %rep37, align 8, !tbaa !29
  store ptr %probs.75, ptr %probs9, align 8, !tbaa !31
  store i32 %symbol.96, ptr %symbol10, align 8, !tbaa !32
  store i32 %limit.81, ptr %limit11, align 4, !tbaa !33
  store i32 %offset.87, ptr %offset12, align 8, !tbaa !34
  store i32 %len.76, ptr %len13, align 4, !tbaa !35
  %252 = load i64, ptr %uncompressed_size, align 8, !tbaa !38
  %cmp5620.not = icmp eq i64 %252, -1
  br i1 %cmp5620.not, label %if.end5643, label %if.then5622

if.then5622:                                      ; preds = %out
  %sub5624.neg = sub i64 %dict.sroa.12.0.copyload, %dict.sroa.12.76
  %sub5626 = add i64 %252, %sub5624.neg
  store i64 %sub5626, ptr %uncompressed_size, align 8, !tbaa !38
  %cmp5628 = icmp eq i64 %sub5626, 0
  %or.cond = and i1 %cmp5631, %cmp5628
  br i1 %or.cond, label %land.lhs.true5633, label %if.end5643

land.lhs.true5633:                                ; preds = %if.then5622
  %253 = load i32, ptr %sequence, align 8, !tbaa !39
  switch i32 %253, label %cleanup.fold.split [
    i32 0, label %cleanup
    i32 1, label %if.then5646
  ]

if.end5643:                                       ; preds = %if.then5622, %out
  br i1 %cmp5644, label %if.then5646, label %cleanup

if.then5646:                                      ; preds = %if.end5643, %land.lhs.true5633
  %cmp5649 = icmp eq i32 %rc1.sroa.500.172, 0
  %spec.select = select i1 %cmp5649, i32 1, i32 9
  store i32 -1, ptr %rc, align 4, !tbaa !51
  store i32 0, ptr %rc1.sroa.500.0.rc2.sroa_idx, align 4, !tbaa !52
  store i32 5, ptr %rc1.sroa.856.0.rc2.sroa_idx, align 4, !tbaa !53
  br label %cleanup

cleanup.fold.split:                               ; preds = %land.lhs.true5633
  br label %cleanup

cleanup.loopexit:                                 ; preds = %while.body.i
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %cleanup.fold.split, %if.then5646, %if.end5643, %land.lhs.true5633
  %retval.0 = phi i32 [ %spec.select, %if.then5646 ], [ %ret.0, %if.end5643 ], [ 0, %land.lhs.true5633 ], [ 9, %cleanup.fold.split ], [ 0, %cleanup.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!0 = !{!1}
!1 = distinct !{!1, !2, !"rc_read_init: %in"}
!2 = distinct !{!2, !"rc_read_init"}
!3 = !{!4}
!4 = distinct !{!4, !2, !"rc_read_init: %in_pos"}
!5 = !{!6, !7, i64 8}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!1, !4}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!6, !7, i64 4}
!14 = !{!8, !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 omnipotent char", !19, i64 0}
!19 = !{!"any pointer", !8, i64 0}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !7, i64 28280}
!22 = !{!"lzma_coder_s", !8, i64 0, !8, i64 24576, !8, i64 24960, !8, i64 24984, !8, i64 25008, !8, i64 25032, !8, i64 25056, !8, i64 25440, !8, i64 25952, !8, i64 26180, !23, i64 26212, !23, i64 27240, !6, i64 28268, !7, i64 28280, !7, i64 28284, !7, i64 28288, !7, i64 28292, !7, i64 28296, !7, i64 28300, !7, i64 28304, !7, i64 28308, !12, i64 28312, !7, i64 28320, !25, i64 28328, !7, i64 28336, !7, i64 28340, !7, i64 28344, !7, i64 28348}
!23 = !{!"", !24, i64 0, !24, i64 2, !8, i64 4, !8, i64 260, !8, i64 516}
!24 = !{!"short", !8, i64 0}
!25 = !{!"p1 short", !19, i64 0}
!26 = !{!22, !7, i64 28284}
!27 = !{!22, !7, i64 28288}
!28 = !{!22, !7, i64 28292}
!29 = !{!22, !7, i64 28296}
!30 = !{!22, !7, i64 28300}
!31 = !{!22, !25, i64 28328}
!32 = !{!22, !7, i64 28336}
!33 = !{!22, !7, i64 28340}
!34 = !{!22, !7, i64 28344}
!35 = !{!22, !7, i64 28348}
!36 = !{!22, !7, i64 28308}
!37 = !{!22, !7, i64 28304}
!38 = !{!22, !12, i64 28312}
!39 = !{!22, !7, i64 28320}
!40 = !{!24, !24, i64 0}
!41 = !{!22, !24, i64 26212}
!42 = !{!22, !24, i64 26214}
!43 = distinct !{!43, !16}
!44 = !{!22, !24, i64 27240}
!45 = !{!22, !24, i64 27242}
!46 = distinct !{!46, !16}
!47 = !{!48, !12, i64 8}
!48 = !{!"", !18, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !49, i64 40}
!49 = !{!"_Bool", !8, i64 0}
!50 = !{!48, !12, i64 16}
!51 = !{!22, !7, i64 28268}
!52 = !{!22, !7, i64 28272}
!53 = !{!22, !7, i64 28276}
