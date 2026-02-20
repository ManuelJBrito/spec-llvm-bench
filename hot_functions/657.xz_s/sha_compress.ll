; ModuleID = '/tmp/tmp.LjP1PdR0Y7/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/557.xz_r/src/sha-2/sha512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@K = external hidden unnamed_addr constant [80 x i64], align 16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nounwind uwtable
define hidden fastcc void @sha_compress(ptr noundef captures(none) %md, ptr noundef readonly captures(none) %buf) unnamed_addr #1 {
entry:
  %W = alloca [80 x i64], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %W) #3
  %state = getelementptr inbounds nuw i8, ptr %md, i64 8
  %S.sroa.0.0.copyload = load i64, ptr %state, align 8, !tbaa !0
  %S.sroa.6.0.state.sroa_idx = getelementptr inbounds i8, ptr %state, i64 8
  %S.sroa.6.0.copyload = load i64, ptr %S.sroa.6.0.state.sroa_idx, align 8, !tbaa !0
  %S.sroa.9.0.state.sroa_idx = getelementptr inbounds i8, ptr %state, i64 16
  %S.sroa.9.0.copyload = load i64, ptr %S.sroa.9.0.state.sroa_idx, align 8, !tbaa !0
  %S.sroa.12.0.state.sroa_idx = getelementptr inbounds i8, ptr %state, i64 24
  %S.sroa.12.0.copyload = load i64, ptr %S.sroa.12.0.state.sroa_idx, align 8, !tbaa !0
  %S.sroa.15.0.state.sroa_idx = getelementptr inbounds i8, ptr %state, i64 32
  %S.sroa.15.0.copyload = load i64, ptr %S.sroa.15.0.state.sroa_idx, align 8, !tbaa !0
  %S.sroa.18.0.state.sroa_idx = getelementptr inbounds i8, ptr %state, i64 40
  %S.sroa.18.0.copyload = load i64, ptr %S.sroa.18.0.state.sroa_idx, align 8, !tbaa !0
  %S.sroa.21.0.state.sroa_idx = getelementptr inbounds i8, ptr %state, i64 48
  %S.sroa.21.0.copyload = load i64, ptr %S.sroa.21.0.state.sroa_idx, align 8, !tbaa !0
  %S.sroa.24.0.state.sroa_idx = getelementptr inbounds i8, ptr %state, i64 56
  %S.sroa.24.0.copyload = load i64, ptr %S.sroa.24.0.state.sroa_idx, align 8, !tbaa !0
  br label %for.body7.preheader

for.body7.preheader:                              ; preds = %entry
  br label %for.body7

for.body7:                                        ; preds = %for.body7, %for.body7.preheader
  %indvars.iv = phi i64 [ 0, %for.body7.preheader ], [ %indvars.iv.next, %for.body7 ]
  %0 = shl nuw nsw i64 %indvars.iv, 3
  %add.ptr = getelementptr inbounds nuw i8, ptr %buf, i64 %0
  %1 = load i8, ptr %add.ptr, align 1, !tbaa !4
  %conv.i = zext i8 %1 to i64
  %shl.i = shl nuw i64 %conv.i, 56
  %arrayidx.1.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 1
  %2 = load i8, ptr %arrayidx.1.i, align 1, !tbaa !4
  %conv.1.i = zext i8 %2 to i64
  %shl.1.i = shl nuw nsw i64 %conv.1.i, 48
  %or.1.i = or disjoint i64 %shl.1.i, %shl.i
  %arrayidx.2.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 2
  %3 = load i8, ptr %arrayidx.2.i, align 1, !tbaa !4
  %conv.2.i = zext i8 %3 to i64
  %shl.2.i = shl nuw nsw i64 %conv.2.i, 40
  %or.2.i = or disjoint i64 %or.1.i, %shl.2.i
  %arrayidx.3.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 3
  %4 = load i8, ptr %arrayidx.3.i, align 1, !tbaa !4
  %conv.3.i = zext i8 %4 to i64
  %shl.3.i = shl nuw nsw i64 %conv.3.i, 32
  %or.3.i = or disjoint i64 %or.2.i, %shl.3.i
  %arrayidx.4.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 4
  %5 = load i8, ptr %arrayidx.4.i, align 1, !tbaa !4
  %conv.4.i = zext i8 %5 to i64
  %shl.4.i = shl nuw nsw i64 %conv.4.i, 24
  %or.4.i = or disjoint i64 %or.3.i, %shl.4.i
  %arrayidx.5.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 5
  %6 = load i8, ptr %arrayidx.5.i, align 1, !tbaa !4
  %conv.5.i = zext i8 %6 to i64
  %shl.5.i = shl nuw nsw i64 %conv.5.i, 16
  %or.5.i = or disjoint i64 %or.4.i, %shl.5.i
  %arrayidx.6.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 6
  %7 = load i8, ptr %arrayidx.6.i, align 1, !tbaa !4
  %conv.6.i = zext i8 %7 to i64
  %shl.6.i = shl nuw nsw i64 %conv.6.i, 8
  %or.6.i = or i64 %or.5.i, %shl.6.i
  %arrayidx.7.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 7
  %8 = load i8, ptr %arrayidx.7.i, align 1, !tbaa !4
  %conv.7.i = zext i8 %8 to i64
  %or.7.i = or i64 %or.6.i, %conv.7.i
  %arrayidx9 = getelementptr inbounds nuw i64, ptr %W, i64 %indvars.iv
  store i64 %or.7.i, ptr %arrayidx9, align 8, !tbaa !0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 16
  br i1 %exitcond, label %for.body7, label %for.body17.preheader, !llvm.loop !5

for.body17.preheader:                             ; preds = %for.body7
  br label %for.body17

for.cond39.preheader:                             ; preds = %for.body17
  br label %for.body42

for.body17:                                       ; preds = %for.body17, %for.body17.preheader
  %indvars.iv495 = phi i64 [ 16, %for.body17.preheader ], [ %indvars.iv.next496, %for.body17 ]
  %9 = getelementptr i64, ptr %W, i64 %indvars.iv495
  %arrayidx19 = getelementptr i8, ptr %9, i64 -16
  %10 = load i64, ptr %arrayidx19, align 8, !tbaa !0
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 45)
  %or.i6.i = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 3)
  %xor.i = xor i64 %or.i.i, %or.i6.i
  %shr.i.i = lshr i64 %10, 6
  %xor3.i = xor i64 %xor.i, %shr.i.i
  %arrayidx23 = getelementptr i8, ptr %9, i64 -56
  %11 = load i64, ptr %arrayidx23, align 8, !tbaa !0
  %add = add i64 %xor3.i, %11
  %arrayidx26 = getelementptr i8, ptr %9, i64 -120
  %12 = load i64, ptr %arrayidx26, align 8, !tbaa !0
  %or.i.i344 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 63)
  %or.i6.i345 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 56)
  %xor.i346 = xor i64 %or.i.i344, %or.i6.i345
  %shr.i.i347 = lshr i64 %12, 7
  %xor3.i348 = xor i64 %xor.i346, %shr.i.i347
  %arrayidx31 = getelementptr i8, ptr %9, i64 -128
  %13 = load i64, ptr %arrayidx31, align 8, !tbaa !0
  %add28 = add i64 %add, %13
  %add32 = add i64 %add28, %xor3.i348
  store i64 %add32, ptr %9, align 8, !tbaa !0
  %indvars.iv.next496 = add nuw nsw i64 %indvars.iv495, 1
  %exitcond498 = icmp ne i64 %indvars.iv.next496, 80
  br i1 %exitcond498, label %for.body17, label %for.cond39.preheader, !llvm.loop !7

for.cond271.preheader:                            ; preds = %for.body42
  %add180.lcssa = phi i64 [ %add180, %for.body42 ]
  %add181.lcssa = phi i64 [ %add181, %for.body42 ]
  %add208.lcssa = phi i64 [ %add208, %for.body42 ]
  %add209.lcssa = phi i64 [ %add209, %for.body42 ]
  %add236.lcssa = phi i64 [ %add236, %for.body42 ]
  %add237.lcssa = phi i64 [ %add237, %for.body42 ]
  %add264.lcssa = phi i64 [ %add264, %for.body42 ]
  %add265.lcssa = phi i64 [ %add265, %for.body42 ]
  %state275 = getelementptr inbounds nuw i8, ptr %md, i64 8
  br label %for.body274

for.body42:                                       ; preds = %for.body42, %for.cond39.preheader
  %indvars.iv499 = phi i64 [ 0, %for.cond39.preheader ], [ %indvars.iv.next500, %for.body42 ]
  %14 = phi i64 [ %S.sroa.24.0.copyload, %for.cond39.preheader ], [ %add180, %for.body42 ]
  %15 = phi i64 [ %S.sroa.15.0.copyload, %for.cond39.preheader ], [ %add264, %for.body42 ]
  %16 = phi i64 [ %S.sroa.18.0.copyload, %for.cond39.preheader ], [ %add236, %for.body42 ]
  %17 = phi i64 [ %S.sroa.21.0.copyload, %for.cond39.preheader ], [ %add208, %for.body42 ]
  %add265485489 = phi i64 [ %S.sroa.0.0.copyload, %for.cond39.preheader ], [ %add265, %for.body42 ]
  %18 = phi i64 [ %S.sroa.6.0.copyload, %for.cond39.preheader ], [ %add237, %for.body42 ]
  %19 = phi i64 [ %S.sroa.9.0.copyload, %for.cond39.preheader ], [ %add209, %for.body42 ]
  %20 = phi i64 [ %S.sroa.12.0.copyload, %for.cond39.preheader ], [ %add181, %for.body42 ]
  %or.i.i349 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 50)
  %or.i6.i350 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 46)
  %xor.i351 = xor i64 %or.i.i349, %or.i6.i350
  %or.i7.i = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 23)
  %xor3.i352 = xor i64 %xor.i351, %or.i7.i
  %add46 = add i64 %xor3.i352, %14
  %xor.i353 = xor i64 %17, %16
  %and.i = and i64 %xor.i353, %15
  %xor1.i = xor i64 %and.i, %17
  %arrayidx54 = getelementptr inbounds nuw i64, ptr @K, i64 %indvars.iv499
  %21 = load i64, ptr %arrayidx54, align 8, !tbaa !0
  %arrayidx58 = getelementptr inbounds nuw i64, ptr %W, i64 %indvars.iv499
  %22 = load i64, ptr %arrayidx58, align 8, !tbaa !0
  %add51 = add i64 %add46, %21
  %add55 = add i64 %add51, %22
  %add59 = add i64 %add55, %xor1.i
  %or.i.i354 = tail call i64 @llvm.fshl.i64(i64 %add265485489, i64 %add265485489, i64 36)
  %or.i6.i355 = tail call i64 @llvm.fshl.i64(i64 %add265485489, i64 %add265485489, i64 30)
  %xor.i356 = xor i64 %or.i.i354, %or.i6.i355
  %or.i7.i357 = tail call i64 @llvm.fshl.i64(i64 %add265485489, i64 %add265485489, i64 25)
  %xor3.i358 = xor i64 %xor.i356, %or.i7.i357
  %or.i = or i64 %18, %add265485489
  %and.i359 = and i64 %or.i, %19
  %and1.i = and i64 %18, %add265485489
  %or2.i = or i64 %and.i359, %and1.i
  %add68 = add i64 %20, %add59
  %add66 = add i64 %add59, %xor3.i358
  %add69 = add i64 %add66, %or2.i
  %or.i.i360 = tail call i64 @llvm.fshl.i64(i64 %add68, i64 %add68, i64 50)
  %or.i6.i361 = tail call i64 @llvm.fshl.i64(i64 %add68, i64 %add68, i64 46)
  %xor.i362 = xor i64 %or.i.i360, %or.i6.i361
  %or.i7.i363 = tail call i64 @llvm.fshl.i64(i64 %add68, i64 %add68, i64 23)
  %xor3.i364 = xor i64 %xor.i362, %or.i7.i363
  %xor.i365 = xor i64 %16, %15
  %and.i366 = and i64 %add68, %xor.i365
  %xor1.i367 = xor i64 %and.i366, %16
  %23 = or disjoint i64 %indvars.iv499, 1
  %arrayidx82 = getelementptr inbounds nuw i64, ptr @K, i64 %23
  %24 = load i64, ptr %arrayidx82, align 8, !tbaa !0
  %arrayidx86 = getelementptr inbounds nuw i64, ptr %W, i64 %23
  %25 = load i64, ptr %arrayidx86, align 8, !tbaa !0
  %add74 = add i64 %xor1.i367, %17
  %add79 = add i64 %add74, %24
  %add83 = add i64 %add79, %xor3.i364
  %add87 = add i64 %add83, %25
  %or.i.i368 = tail call i64 @llvm.fshl.i64(i64 %add69, i64 %add69, i64 36)
  %or.i6.i369 = tail call i64 @llvm.fshl.i64(i64 %add69, i64 %add69, i64 30)
  %xor.i370 = xor i64 %or.i.i368, %or.i6.i369
  %or.i7.i371 = tail call i64 @llvm.fshl.i64(i64 %add69, i64 %add69, i64 25)
  %xor3.i372 = xor i64 %xor.i370, %or.i7.i371
  %or.i373 = or i64 %add69, %add265485489
  %and.i374 = and i64 %or.i373, %18
  %and1.i375 = and i64 %add69, %add265485489
  %or2.i376 = or i64 %and.i374, %and1.i375
  %add94 = add i64 %xor3.i372, %or2.i376
  %add96 = add i64 %add87, %19
  %add97 = add i64 %add94, %add87
  %or.i.i377 = tail call i64 @llvm.fshl.i64(i64 %add96, i64 %add96, i64 50)
  %or.i6.i378 = tail call i64 @llvm.fshl.i64(i64 %add96, i64 %add96, i64 46)
  %xor.i379 = xor i64 %or.i.i377, %or.i6.i378
  %or.i7.i380 = tail call i64 @llvm.fshl.i64(i64 %add96, i64 %add96, i64 23)
  %xor3.i381 = xor i64 %xor.i379, %or.i7.i380
  %xor.i382 = xor i64 %add68, %15
  %and.i383 = and i64 %add96, %xor.i382
  %xor1.i384 = xor i64 %and.i383, %15
  %26 = or disjoint i64 %indvars.iv499, 2
  %arrayidx110 = getelementptr inbounds nuw i64, ptr @K, i64 %26
  %27 = load i64, ptr %arrayidx110, align 8, !tbaa !0
  %arrayidx114 = getelementptr inbounds nuw i64, ptr %W, i64 %26
  %28 = load i64, ptr %arrayidx114, align 8, !tbaa !0
  %add102 = add i64 %27, %16
  %add107 = add i64 %add102, %28
  %add111 = add i64 %add107, %xor1.i384
  %add115 = add i64 %add111, %xor3.i381
  %or.i.i385 = tail call i64 @llvm.fshl.i64(i64 %add97, i64 %add97, i64 36)
  %or.i6.i386 = tail call i64 @llvm.fshl.i64(i64 %add97, i64 %add97, i64 30)
  %xor.i387 = xor i64 %or.i.i385, %or.i6.i386
  %or.i7.i388 = tail call i64 @llvm.fshl.i64(i64 %add97, i64 %add97, i64 25)
  %xor3.i389 = xor i64 %xor.i387, %or.i7.i388
  %or.i390 = or i64 %add97, %add69
  %and.i391 = and i64 %or.i390, %add265485489
  %and1.i392 = and i64 %add97, %add69
  %or2.i393 = or i64 %and.i391, %and1.i392
  %add122 = add i64 %xor3.i389, %or2.i393
  %add124 = add i64 %add115, %18
  %add125 = add i64 %add122, %add115
  %or.i.i394 = tail call i64 @llvm.fshl.i64(i64 %add124, i64 %add124, i64 50)
  %or.i6.i395 = tail call i64 @llvm.fshl.i64(i64 %add124, i64 %add124, i64 46)
  %xor.i396 = xor i64 %or.i.i394, %or.i6.i395
  %or.i7.i397 = tail call i64 @llvm.fshl.i64(i64 %add124, i64 %add124, i64 23)
  %xor3.i398 = xor i64 %xor.i396, %or.i7.i397
  %xor.i399 = xor i64 %add96, %add68
  %and.i400 = and i64 %add124, %xor.i399
  %xor1.i401 = xor i64 %and.i400, %add68
  %29 = or disjoint i64 %indvars.iv499, 3
  %arrayidx138 = getelementptr inbounds nuw i64, ptr @K, i64 %29
  %30 = load i64, ptr %arrayidx138, align 8, !tbaa !0
  %arrayidx142 = getelementptr inbounds nuw i64, ptr %W, i64 %29
  %31 = load i64, ptr %arrayidx142, align 8, !tbaa !0
  %add130 = add i64 %30, %15
  %add135 = add i64 %add130, %31
  %add139 = add i64 %add135, %xor1.i401
  %add143 = add i64 %add139, %xor3.i398
  %or.i.i402 = tail call i64 @llvm.fshl.i64(i64 %add125, i64 %add125, i64 36)
  %or.i6.i403 = tail call i64 @llvm.fshl.i64(i64 %add125, i64 %add125, i64 30)
  %xor.i404 = xor i64 %or.i.i402, %or.i6.i403
  %or.i7.i405 = tail call i64 @llvm.fshl.i64(i64 %add125, i64 %add125, i64 25)
  %xor3.i406 = xor i64 %xor.i404, %or.i7.i405
  %or.i407 = or i64 %add125, %add97
  %and.i408 = and i64 %or.i407, %add69
  %and1.i409 = and i64 %add125, %add97
  %or2.i410 = or i64 %and.i408, %and1.i409
  %add150 = add i64 %xor3.i406, %or2.i410
  %add152 = add i64 %add143, %add265485489
  %add153 = add i64 %add150, %add143
  %or.i.i411 = tail call i64 @llvm.fshl.i64(i64 %add152, i64 %add152, i64 50)
  %or.i6.i412 = tail call i64 @llvm.fshl.i64(i64 %add152, i64 %add152, i64 46)
  %xor.i413 = xor i64 %or.i.i411, %or.i6.i412
  %or.i7.i414 = tail call i64 @llvm.fshl.i64(i64 %add152, i64 %add152, i64 23)
  %xor3.i415 = xor i64 %xor.i413, %or.i7.i414
  %xor.i416 = xor i64 %add124, %add96
  %and.i417 = and i64 %add152, %xor.i416
  %xor1.i418 = xor i64 %and.i417, %add96
  %32 = or disjoint i64 %indvars.iv499, 4
  %arrayidx166 = getelementptr inbounds nuw i64, ptr @K, i64 %32
  %33 = load i64, ptr %arrayidx166, align 8, !tbaa !0
  %arrayidx170 = getelementptr inbounds nuw i64, ptr %W, i64 %32
  %34 = load i64, ptr %arrayidx170, align 8, !tbaa !0
  %add158 = add i64 %33, %add68
  %add163 = add i64 %add158, %34
  %add167 = add i64 %add163, %xor1.i418
  %add171 = add i64 %add167, %xor3.i415
  %or.i.i419 = tail call i64 @llvm.fshl.i64(i64 %add153, i64 %add153, i64 36)
  %or.i6.i420 = tail call i64 @llvm.fshl.i64(i64 %add153, i64 %add153, i64 30)
  %xor.i421 = xor i64 %or.i.i419, %or.i6.i420
  %or.i7.i422 = tail call i64 @llvm.fshl.i64(i64 %add153, i64 %add153, i64 25)
  %xor3.i423 = xor i64 %xor.i421, %or.i7.i422
  %or.i424 = or i64 %add153, %add125
  %and.i425 = and i64 %or.i424, %add97
  %and1.i426 = and i64 %add153, %add125
  %or2.i427 = or i64 %and.i425, %and1.i426
  %add178 = add i64 %xor3.i423, %or2.i427
  %add180 = add i64 %add171, %add69
  %add181 = add i64 %add178, %add171
  %or.i.i428 = tail call i64 @llvm.fshl.i64(i64 %add180, i64 %add180, i64 50)
  %or.i6.i429 = tail call i64 @llvm.fshl.i64(i64 %add180, i64 %add180, i64 46)
  %xor.i430 = xor i64 %or.i.i428, %or.i6.i429
  %or.i7.i431 = tail call i64 @llvm.fshl.i64(i64 %add180, i64 %add180, i64 23)
  %xor3.i432 = xor i64 %xor.i430, %or.i7.i431
  %xor.i433 = xor i64 %add152, %add124
  %and.i434 = and i64 %add180, %xor.i433
  %xor1.i435 = xor i64 %and.i434, %add124
  %35 = or disjoint i64 %indvars.iv499, 5
  %arrayidx194 = getelementptr inbounds nuw i64, ptr @K, i64 %35
  %36 = load i64, ptr %arrayidx194, align 8, !tbaa !0
  %arrayidx198 = getelementptr inbounds nuw i64, ptr %W, i64 %35
  %37 = load i64, ptr %arrayidx198, align 8, !tbaa !0
  %add186 = add i64 %36, %add96
  %add191 = add i64 %add186, %37
  %add195 = add i64 %add191, %xor1.i435
  %add199 = add i64 %add195, %xor3.i432
  %or.i.i436 = tail call i64 @llvm.fshl.i64(i64 %add181, i64 %add181, i64 36)
  %or.i6.i437 = tail call i64 @llvm.fshl.i64(i64 %add181, i64 %add181, i64 30)
  %xor.i438 = xor i64 %or.i.i436, %or.i6.i437
  %or.i7.i439 = tail call i64 @llvm.fshl.i64(i64 %add181, i64 %add181, i64 25)
  %xor3.i440 = xor i64 %xor.i438, %or.i7.i439
  %or.i441 = or i64 %add181, %add153
  %and.i442 = and i64 %or.i441, %add125
  %and1.i443 = and i64 %add181, %add153
  %or2.i444 = or i64 %and.i442, %and1.i443
  %add206 = add i64 %xor3.i440, %or2.i444
  %add208 = add i64 %add199, %add97
  %add209 = add i64 %add206, %add199
  %or.i.i445 = tail call i64 @llvm.fshl.i64(i64 %add208, i64 %add208, i64 50)
  %or.i6.i446 = tail call i64 @llvm.fshl.i64(i64 %add208, i64 %add208, i64 46)
  %xor.i447 = xor i64 %or.i.i445, %or.i6.i446
  %or.i7.i448 = tail call i64 @llvm.fshl.i64(i64 %add208, i64 %add208, i64 23)
  %xor3.i449 = xor i64 %xor.i447, %or.i7.i448
  %xor.i450 = xor i64 %add180, %add152
  %and.i451 = and i64 %add208, %xor.i450
  %xor1.i452 = xor i64 %and.i451, %add152
  %38 = or disjoint i64 %indvars.iv499, 6
  %arrayidx222 = getelementptr inbounds nuw i64, ptr @K, i64 %38
  %39 = load i64, ptr %arrayidx222, align 8, !tbaa !0
  %arrayidx226 = getelementptr inbounds nuw i64, ptr %W, i64 %38
  %40 = load i64, ptr %arrayidx226, align 8, !tbaa !0
  %add214 = add i64 %39, %add124
  %add219 = add i64 %add214, %40
  %add223 = add i64 %add219, %xor1.i452
  %add227 = add i64 %add223, %xor3.i449
  %or.i.i453 = tail call i64 @llvm.fshl.i64(i64 %add209, i64 %add209, i64 36)
  %or.i6.i454 = tail call i64 @llvm.fshl.i64(i64 %add209, i64 %add209, i64 30)
  %xor.i455 = xor i64 %or.i.i453, %or.i6.i454
  %or.i7.i456 = tail call i64 @llvm.fshl.i64(i64 %add209, i64 %add209, i64 25)
  %xor3.i457 = xor i64 %xor.i455, %or.i7.i456
  %or.i458 = or i64 %add209, %add181
  %and.i459 = and i64 %or.i458, %add153
  %and1.i460 = and i64 %add209, %add181
  %or2.i461 = or i64 %and.i459, %and1.i460
  %add234 = add i64 %xor3.i457, %or2.i461
  %add236 = add i64 %add227, %add125
  %add237 = add i64 %add234, %add227
  %or.i.i462 = tail call i64 @llvm.fshl.i64(i64 %add236, i64 %add236, i64 50)
  %or.i6.i463 = tail call i64 @llvm.fshl.i64(i64 %add236, i64 %add236, i64 46)
  %xor.i464 = xor i64 %or.i.i462, %or.i6.i463
  %or.i7.i465 = tail call i64 @llvm.fshl.i64(i64 %add236, i64 %add236, i64 23)
  %xor3.i466 = xor i64 %xor.i464, %or.i7.i465
  %xor.i467 = xor i64 %add208, %add180
  %and.i468 = and i64 %add236, %xor.i467
  %xor1.i469 = xor i64 %and.i468, %add180
  %41 = or disjoint i64 %indvars.iv499, 7
  %arrayidx250 = getelementptr inbounds nuw i64, ptr @K, i64 %41
  %42 = load i64, ptr %arrayidx250, align 8, !tbaa !0
  %arrayidx254 = getelementptr inbounds nuw i64, ptr %W, i64 %41
  %43 = load i64, ptr %arrayidx254, align 8, !tbaa !0
  %add242 = add i64 %42, %add152
  %add247 = add i64 %add242, %43
  %add251 = add i64 %add247, %xor1.i469
  %add255 = add i64 %add251, %xor3.i466
  %or.i.i470 = tail call i64 @llvm.fshl.i64(i64 %add237, i64 %add237, i64 36)
  %or.i6.i471 = tail call i64 @llvm.fshl.i64(i64 %add237, i64 %add237, i64 30)
  %xor.i472 = xor i64 %or.i.i470, %or.i6.i471
  %or.i7.i473 = tail call i64 @llvm.fshl.i64(i64 %add237, i64 %add237, i64 25)
  %xor3.i474 = xor i64 %xor.i472, %or.i7.i473
  %or.i475 = or i64 %add237, %add209
  %and.i476 = and i64 %or.i475, %add181
  %and1.i477 = and i64 %add237, %add209
  %or2.i478 = or i64 %and.i476, %and1.i477
  %add262 = add i64 %xor3.i474, %or2.i478
  %add264 = add i64 %add255, %add153
  %add265 = add i64 %add262, %add255
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 8
  %cmp40 = icmp samesign ult i64 %indvars.iv499, 72
  br i1 %cmp40, label %for.body42, label %for.cond271.preheader, !llvm.loop !8

for.body274:                                      ; preds = %for.cond271.preheader
  %44 = load i64, ptr %state275, align 8, !tbaa !0
  %add280 = add i64 %add265.lcssa, %44
  store i64 %add280, ptr %state275, align 8, !tbaa !0
  %arrayidx277.1 = getelementptr inbounds nuw i64, ptr %state275, i64 1
  %45 = load i64, ptr %arrayidx277.1, align 8, !tbaa !0
  %add280.1 = add i64 %add237.lcssa, %45
  store i64 %add280.1, ptr %arrayidx277.1, align 8, !tbaa !0
  %arrayidx277.2 = getelementptr inbounds nuw i64, ptr %state275, i64 2
  %46 = load i64, ptr %arrayidx277.2, align 8, !tbaa !0
  %add280.2 = add i64 %add209.lcssa, %46
  store i64 %add280.2, ptr %arrayidx277.2, align 8, !tbaa !0
  %arrayidx277.3 = getelementptr inbounds nuw i64, ptr %state275, i64 3
  %47 = load i64, ptr %arrayidx277.3, align 8, !tbaa !0
  %add280.3 = add i64 %add181.lcssa, %47
  store i64 %add280.3, ptr %arrayidx277.3, align 8, !tbaa !0
  %arrayidx277.4 = getelementptr inbounds nuw i64, ptr %state275, i64 4
  %48 = load i64, ptr %arrayidx277.4, align 8, !tbaa !0
  %add280.4 = add i64 %add264.lcssa, %48
  store i64 %add280.4, ptr %arrayidx277.4, align 8, !tbaa !0
  %arrayidx277.5 = getelementptr inbounds nuw i64, ptr %state275, i64 5
  %49 = load i64, ptr %arrayidx277.5, align 8, !tbaa !0
  %add280.5 = add i64 %add236.lcssa, %49
  store i64 %add280.5, ptr %arrayidx277.5, align 8, !tbaa !0
  %arrayidx277.6 = getelementptr inbounds nuw i64, ptr %state275, i64 6
  %50 = load i64, ptr %arrayidx277.6, align 8, !tbaa !0
  %add280.6 = add i64 %add208.lcssa, %50
  store i64 %add280.6, ptr %arrayidx277.6, align 8, !tbaa !0
  %arrayidx277.7 = getelementptr inbounds nuw i64, ptr %state275, i64 7
  %51 = load i64, ptr %arrayidx277.7, align 8, !tbaa !0
  %add280.7 = add i64 %add180.lcssa, %51
  store i64 %add280.7, ptr %arrayidx277.7, align 8, !tbaa !0
  call void @llvm.lifetime.end.p0(ptr nonnull %W) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!0 = !{!1, !1, i64 0}
!1 = !{!"long", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!2, !2, i64 0}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
