; ModuleID = '/tmp/tmp.H66V86B7ka/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/generate.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RankMask = external local_unnamed_addr global [8 x i64], align 16
@Mask = external local_unnamed_addr global [64 x i64], align 16
@KnightMoves = external local_unnamed_addr global [64 x i64], align 16
@KingMoves = external local_unnamed_addr global [64 x i64], align 16

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z9gen_quietP7state_tPi(ptr noundef %s, ptr noundef %moves) local_unnamed_addr #0 {
entry:
  %tsq = alloca i64, align 8
  %temp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %tsq) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %temp) #3
  %sboard2 = getelementptr inbounds nuw i8, ptr %s, i64 4
  %white_to_move = getelementptr inbounds nuw i8, ptr %s, i64 460
  %friendlymask.0.in.in = getelementptr inbounds nuw i8, ptr %s, i64 264
  %friendlymask.0.in = load i64, ptr %friendlymask.0.in.in, align 8, !tbaa !0
  %friendlymask.0 = xor i64 %friendlymask.0.in, -1
  %0 = load i32, ptr %white_to_move, align 4, !tbaa !6
  %tobool7.not = icmp eq i32 %0, 0
  br i1 %tobool7.not, label %if.else48, label %if.then8

if.then8:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %s, i64 296
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %shr = lshr i64 %1, 8
  %and = and i64 %shr, %friendlymask.0
  store i64 %and, ptr %tsq, align 8, !tbaa !7
  %2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 48), align 16, !tbaa !7
  %and12 = and i64 %2, %1
  %shr13 = lshr i64 %and12, 16
  %shr18 = lshr i64 %friendlymask.0.in, 8
  %3 = or i64 %shr18, %friendlymask.0.in
  %4 = xor i64 %3, -1
  %and20 = and i64 %shr13, %4
  store i64 %and20, ptr %temp, align 8, !tbaa !7
  %or = or i64 %and20, %and
  store i64 %or, ptr %tsq, align 8, !tbaa !7
  %tobool21.not464 = icmp eq i64 %or, 0
  br i1 %tobool21.not464, label %if.end97, label %while.body.preheader

while.body.preheader:                             ; preds = %if.then8
  br label %while.body

while.body:                                       ; preds = %if.end47, %while.body.preheader
  %moves.addr.0465 = phi ptr [ %moves.addr.1, %if.end47 ], [ %moves, %while.body.preheader ]
  %call = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %5 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %add = add nsw i32 %call, 8
  %idxprom = sext i32 %add to i64
  %arrayidx23 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom
  %6 = load i64, ptr %arrayidx23, align 8, !tbaa !7
  %and24 = and i64 %6, %5
  %tobool25.not = icmp eq i64 %and24, 0
  %add29 = add nsw i32 %call, 16
  %from.0 = select i1 %tobool25.not, i32 %add29, i32 %add
  %cmp = icmp ult i32 %call, 8
  br i1 %cmp, label %if.then32, label %if.else45

if.then32:                                        ; preds = %while.body
  %idxprom33 = zext nneg i32 %call to i64
  %arrayidx34 = getelementptr inbounds nuw i32, ptr %sboard2, i64 %idxprom33
  %7 = load i32, ptr %arrayidx34, align 4, !tbaa !8
  %shl1.i = shl i32 %7, 19
  %shl5.i = shl nuw nsw i32 %from.0, 6
  %or.i = or disjoint i32 %shl5.i, %call
  %or4.i = or disjoint i32 %shl1.i, %or.i
  %or6.i = or i32 %or4.i, 36864
  store i32 %or6.i, ptr %moves.addr.0465, align 4, !tbaa !8
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %moves.addr.0465, i64 4
  %8 = load i32, ptr %arrayidx34, align 4, !tbaa !8
  %shl1.i363 = shl i32 %8, 19
  %or4.i366 = or disjoint i32 %shl1.i363, %or.i
  %or6.i367 = or i32 %or4.i366, 28672
  store i32 %or6.i367, ptr %incdec.ptr.i, align 4, !tbaa !8
  %incdec.ptr.i368 = getelementptr inbounds nuw i8, ptr %moves.addr.0465, i64 8
  %9 = load i32, ptr %arrayidx34, align 4, !tbaa !8
  %shl1.i369 = shl i32 %9, 19
  %or4.i372 = or disjoint i32 %shl1.i369, %or.i
  %or6.i373 = or i32 %or4.i372, 45056
  store i32 %or6.i373, ptr %incdec.ptr.i368, align 4, !tbaa !8
  %incdec.ptr.i374 = getelementptr inbounds nuw i8, ptr %moves.addr.0465, i64 12
  %10 = load i32, ptr %arrayidx34, align 4, !tbaa !8
  %shl1.i375 = shl i32 %10, 19
  %or4.i378 = or disjoint i32 %shl1.i375, %or.i
  %or6.i379 = or i32 %or4.i378, 12288
  store i32 %or6.i379, ptr %incdec.ptr.i374, align 4, !tbaa !8
  %incdec.ptr.i380 = getelementptr inbounds nuw i8, ptr %moves.addr.0465, i64 16
  br label %if.end47

if.else45:                                        ; preds = %while.body
  %shl1.i381 = shl i32 %from.0, 6
  %or.i382 = or i32 %call, %shl1.i381
  %or3.i = or i32 %or.i382, 6815744
  store i32 %or3.i, ptr %moves.addr.0465, align 4, !tbaa !8
  %incdec.ptr.i383 = getelementptr inbounds nuw i8, ptr %moves.addr.0465, i64 4
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then32
  %moves.addr.1 = phi ptr [ %incdec.ptr.i380, %if.then32 ], [ %incdec.ptr.i383, %if.else45 ]
  %.pr = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool21.not = icmp eq i64 %.pr, 0
  br i1 %tobool21.not, label %if.end97.loopexit490, label %while.body, !llvm.loop !9

if.else48:                                        ; preds = %entry
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %s, i64 304
  %11 = load i64, ptr %arrayidx49, align 8, !tbaa !7
  %shl = shl i64 %11, 8
  %and52 = and i64 %shl, %friendlymask.0
  store i64 %and52, ptr %tsq, align 8, !tbaa !7
  %12 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 8), align 8, !tbaa !7
  %and54 = and i64 %12, %11
  %shl55 = shl i64 %and54, 16
  %shl60 = shl i64 %friendlymask.0.in, 8
  %13 = or i64 %shl60, %friendlymask.0.in
  %14 = xor i64 %13, -1
  %and62 = and i64 %shl55, %14
  store i64 %and62, ptr %temp, align 8, !tbaa !7
  %or63 = or i64 %and62, %and52
  store i64 %or63, ptr %tsq, align 8, !tbaa !7
  %tobool65.not466 = icmp eq i64 %or63, 0
  br i1 %tobool65.not466, label %if.end97, label %while.body66.preheader

while.body66.preheader:                           ; preds = %if.else48
  br label %while.body66

while.body66:                                     ; preds = %if.end95, %while.body66.preheader
  %moves.addr.2467 = phi ptr [ %moves.addr.3, %if.end95 ], [ %moves, %while.body66.preheader ]
  %call67 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %15 = load i64, ptr %arrayidx49, align 8, !tbaa !7
  %sub = add nsw i32 %call67, -8
  %idxprom69 = sext i32 %sub to i64
  %arrayidx70 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom69
  %16 = load i64, ptr %arrayidx70, align 8, !tbaa !7
  %and71 = and i64 %16, %15
  %tobool72.not = icmp eq i64 %and71, 0
  %sub76 = add nsw i32 %call67, -16
  %from.1 = select i1 %tobool72.not, i32 %sub76, i32 %sub
  %shr78.mask = and i32 %call67, -8
  %cmp79 = icmp eq i32 %shr78.mask, 56
  br i1 %cmp79, label %if.then80, label %if.else93

if.then80:                                        ; preds = %while.body66
  %idxprom81 = zext nneg i32 %call67 to i64
  %arrayidx82 = getelementptr inbounds nuw i32, ptr %sboard2, i64 %idxprom81
  %17 = load i32, ptr %arrayidx82, align 4, !tbaa !8
  %shl1.i384 = shl i32 %17, 19
  %shl5.i385 = shl nuw nsw i32 %from.1, 6
  %or.i386 = or disjoint i32 %shl5.i385, %call67
  %or4.i387 = or disjoint i32 %shl1.i384, %or.i386
  %or6.i388 = or i32 %or4.i387, 40960
  store i32 %or6.i388, ptr %moves.addr.2467, align 4, !tbaa !8
  %incdec.ptr.i389 = getelementptr inbounds nuw i8, ptr %moves.addr.2467, i64 4
  %18 = load i32, ptr %arrayidx82, align 4, !tbaa !8
  %shl1.i390 = shl i32 %18, 19
  %or4.i393 = or disjoint i32 %shl1.i390, %or.i386
  %or6.i394 = or i32 %or4.i393, 32768
  store i32 %or6.i394, ptr %incdec.ptr.i389, align 4, !tbaa !8
  %incdec.ptr.i395 = getelementptr inbounds nuw i8, ptr %moves.addr.2467, i64 8
  %19 = load i32, ptr %arrayidx82, align 4, !tbaa !8
  %shl1.i396 = shl i32 %19, 19
  %or4.i399 = or disjoint i32 %shl1.i396, %or.i386
  %or6.i400 = or i32 %or4.i399, 49152
  store i32 %or6.i400, ptr %incdec.ptr.i395, align 4, !tbaa !8
  %incdec.ptr.i401 = getelementptr inbounds nuw i8, ptr %moves.addr.2467, i64 12
  %20 = load i32, ptr %arrayidx82, align 4, !tbaa !8
  %shl1.i402 = shl i32 %20, 19
  %or4.i405 = or disjoint i32 %shl1.i402, %or.i386
  %or6.i406 = or i32 %or4.i405, 16384
  store i32 %or6.i406, ptr %incdec.ptr.i401, align 4, !tbaa !8
  %incdec.ptr.i407 = getelementptr inbounds nuw i8, ptr %moves.addr.2467, i64 16
  br label %if.end95

if.else93:                                        ; preds = %while.body66
  %shl1.i408 = shl i32 %from.1, 6
  %or.i409 = or i32 %call67, %shl1.i408
  %or3.i410 = or i32 %or.i409, 6815744
  store i32 %or3.i410, ptr %moves.addr.2467, align 4, !tbaa !8
  %incdec.ptr.i411 = getelementptr inbounds nuw i8, ptr %moves.addr.2467, i64 4
  br label %if.end95

if.end95:                                         ; preds = %if.else93, %if.then80
  %moves.addr.3 = phi ptr [ %incdec.ptr.i407, %if.then80 ], [ %incdec.ptr.i411, %if.else93 ]
  %.pr455 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool65.not = icmp eq i64 %.pr455, 0
  br i1 %tobool65.not, label %if.end97.loopexit, label %while.body66, !llvm.loop !11

if.end97.loopexit:                                ; preds = %if.end95
  %moves.addr.3.lcssa = phi ptr [ %moves.addr.3, %if.end95 ]
  br label %if.end97

if.end97.loopexit490:                             ; preds = %if.end47
  %moves.addr.1.lcssa = phi ptr [ %moves.addr.1, %if.end47 ]
  br label %if.end97

if.end97:                                         ; preds = %if.end97.loopexit490, %if.end97.loopexit, %if.else48, %if.then8
  %moves.addr.4 = phi ptr [ %moves, %if.else48 ], [ %moves, %if.then8 ], [ %moves.addr.3.lcssa, %if.end97.loopexit ], [ %moves.addr.1.lcssa, %if.end97.loopexit490 ]
  %21 = load i32, ptr %white_to_move, align 4, !tbaa !6
  %tobool99.not = icmp eq i32 %21, 0
  %storemerge.in.v = select i1 %tobool99.not, i64 320, i64 312
  %storemerge.in = getelementptr inbounds nuw i8, ptr %s, i64 %storemerge.in.v
  %storemerge = load i64, ptr %storemerge.in, align 8, !tbaa !7
  store i64 %storemerge, ptr %tsq, align 8, !tbaa !7
  %tobool106.not472 = icmp eq i64 %storemerge, 0
  br i1 %tobool106.not472, label %while.end120, label %while.body107.preheader

while.body107.preheader:                          ; preds = %if.end97
  br label %while.body107

while.cond112.while.cond105thread-pre-split_crit_edge: ; preds = %while.body114
  %incdec.ptr.i417.lcssa = phi ptr [ %incdec.ptr.i417, %while.body114 ]
  br label %while.cond105thread-pre-split, !llvm.loop !12

while.cond105thread-pre-split:                    ; preds = %while.body107, %while.cond112.while.cond105thread-pre-split_crit_edge
  %moves.addr.6.lcssa = phi ptr [ %incdec.ptr.i417.lcssa, %while.cond112.while.cond105thread-pre-split_crit_edge ], [ %moves.addr.5473, %while.body107 ]
  %.pr456 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool106.not = icmp eq i64 %.pr456, 0
  br i1 %tobool106.not, label %while.end120.loopexit, label %while.body107

while.body107:                                    ; preds = %while.cond105thread-pre-split, %while.body107.preheader
  %moves.addr.5473 = phi ptr [ %moves.addr.6.lcssa, %while.cond105thread-pre-split ], [ %moves.addr.4, %while.body107.preheader ]
  %call108 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %idxprom109 = sext i32 %call108 to i64
  %arrayidx110 = getelementptr inbounds i64, ptr @KnightMoves, i64 %idxprom109
  %22 = load i64, ptr %arrayidx110, align 8, !tbaa !7
  %and111 = and i64 %22, %friendlymask.0
  store i64 %and111, ptr %temp, align 8, !tbaa !7
  %tobool113.not469 = icmp eq i64 %and111, 0
  br i1 %tobool113.not469, label %while.cond105thread-pre-split, label %while.body114.lr.ph, !llvm.loop !12

while.body114.lr.ph:                              ; preds = %while.body107
  %shl5.i413 = shl i32 %call108, 6
  br label %while.body114, !llvm.loop !12

while.body114:                                    ; preds = %while.body114, %while.body114.lr.ph
  %moves.addr.6470 = phi ptr [ %moves.addr.5473, %while.body114.lr.ph ], [ %incdec.ptr.i417, %while.body114 ]
  %call115 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %idxprom116 = sext i32 %call115 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom116
  %23 = load i32, ptr %arrayidx117, align 4, !tbaa !8
  %shl1.i412 = shl i32 %23, 19
  %24 = or i32 %shl5.i413, %shl1.i412
  %or4.i415 = or i32 %24, %call115
  store i32 %or4.i415, ptr %moves.addr.6470, align 4, !tbaa !8
  %incdec.ptr.i417 = getelementptr inbounds nuw i8, ptr %moves.addr.6470, i64 4
  %.pr457 = load i64, ptr %temp, align 8, !tbaa !7
  %tobool113.not = icmp eq i64 %.pr457, 0
  br i1 %tobool113.not, label %while.cond112.while.cond105thread-pre-split_crit_edge, label %while.body114, !llvm.loop !13

while.end120.loopexit:                            ; preds = %while.cond105thread-pre-split
  %moves.addr.6.lcssa.lcssa = phi ptr [ %moves.addr.6.lcssa, %while.cond105thread-pre-split ]
  br label %while.end120

while.end120:                                     ; preds = %while.end120.loopexit, %if.end97
  %moves.addr.5.lcssa = phi ptr [ %moves.addr.4, %if.end97 ], [ %moves.addr.6.lcssa.lcssa, %while.end120.loopexit ]
  %25 = load i32, ptr %white_to_move, align 4, !tbaa !6
  %tobool122.not = icmp eq i32 %25, 0
  br i1 %tobool122.not, label %if.else127, label %if.then123

if.then123:                                       ; preds = %while.end120
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %s, i64 376
  %26 = load i64, ptr %arrayidx124, align 8, !tbaa !7
  %arrayidx125 = getelementptr inbounds nuw i8, ptr %s, i64 360
  %27 = load i64, ptr %arrayidx125, align 8, !tbaa !7
  %or126 = or i64 %27, %26
  br label %if.end131

if.else127:                                       ; preds = %while.end120
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %s, i64 384
  %28 = load i64, ptr %arrayidx128, align 8, !tbaa !7
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %s, i64 368
  %29 = load i64, ptr %arrayidx129, align 8, !tbaa !7
  %or130 = or i64 %29, %28
  br label %if.end131

if.end131:                                        ; preds = %if.else127, %if.then123
  %storemerge361 = phi i64 [ %or130, %if.else127 ], [ %or126, %if.then123 ]
  store i64 %storemerge361, ptr %tsq, align 8, !tbaa !7
  %tobool133.not478 = icmp eq i64 %storemerge361, 0
  br i1 %tobool133.not478, label %while.end146, label %while.body134.preheader

while.body134.preheader:                          ; preds = %if.end131
  br label %while.body134

while.cond138.while.cond132thread-pre-split_crit_edge: ; preds = %while.body140
  %incdec.ptr.i423.lcssa = phi ptr [ %incdec.ptr.i423, %while.body140 ]
  br label %while.cond132thread-pre-split, !llvm.loop !14

while.cond132thread-pre-split:                    ; preds = %while.body134, %while.cond138.while.cond132thread-pre-split_crit_edge
  %moves.addr.8.lcssa = phi ptr [ %incdec.ptr.i423.lcssa, %while.cond138.while.cond132thread-pre-split_crit_edge ], [ %moves.addr.7479, %while.body134 ]
  %.pr458 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool133.not = icmp eq i64 %.pr458, 0
  br i1 %tobool133.not, label %while.end146.loopexit, label %while.body134

while.body134:                                    ; preds = %while.cond132thread-pre-split, %while.body134.preheader
  %moves.addr.7479 = phi ptr [ %moves.addr.8.lcssa, %while.cond132thread-pre-split ], [ %moves.addr.5.lcssa, %while.body134.preheader ]
  %call135 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %call136 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %s, i32 noundef %call135)
  %and137 = and i64 %call136, %friendlymask.0
  store i64 %and137, ptr %temp, align 8, !tbaa !7
  %tobool139.not475 = icmp eq i64 %and137, 0
  br i1 %tobool139.not475, label %while.cond132thread-pre-split, label %while.body140.lr.ph, !llvm.loop !14

while.body140.lr.ph:                              ; preds = %while.body134
  %shl5.i419 = shl i32 %call135, 6
  br label %while.body140, !llvm.loop !14

while.body140:                                    ; preds = %while.body140, %while.body140.lr.ph
  %moves.addr.8476 = phi ptr [ %moves.addr.7479, %while.body140.lr.ph ], [ %incdec.ptr.i423, %while.body140 ]
  %call141 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %idxprom142 = sext i32 %call141 to i64
  %arrayidx143 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom142
  %30 = load i32, ptr %arrayidx143, align 4, !tbaa !8
  %shl1.i418 = shl i32 %30, 19
  %31 = or i32 %shl5.i419, %shl1.i418
  %or4.i421 = or i32 %31, %call141
  store i32 %or4.i421, ptr %moves.addr.8476, align 4, !tbaa !8
  %incdec.ptr.i423 = getelementptr inbounds nuw i8, ptr %moves.addr.8476, i64 4
  %.pr459 = load i64, ptr %temp, align 8, !tbaa !7
  %tobool139.not = icmp eq i64 %.pr459, 0
  br i1 %tobool139.not, label %while.cond138.while.cond132thread-pre-split_crit_edge, label %while.body140, !llvm.loop !15

while.end146.loopexit:                            ; preds = %while.cond132thread-pre-split
  %moves.addr.8.lcssa.lcssa = phi ptr [ %moves.addr.8.lcssa, %while.cond132thread-pre-split ]
  br label %while.end146

while.end146:                                     ; preds = %while.end146.loopexit, %if.end131
  %moves.addr.7.lcssa = phi ptr [ %moves.addr.5.lcssa, %if.end131 ], [ %moves.addr.8.lcssa.lcssa, %while.end146.loopexit ]
  %32 = load i32, ptr %white_to_move, align 4, !tbaa !6
  %tobool148.not = icmp eq i32 %32, 0
  br i1 %tobool148.not, label %if.else153, label %if.then149

if.then149:                                       ; preds = %while.end146
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %s, i64 344
  %33 = load i64, ptr %arrayidx150, align 8, !tbaa !7
  %arrayidx151 = getelementptr inbounds nuw i8, ptr %s, i64 360
  %34 = load i64, ptr %arrayidx151, align 8, !tbaa !7
  %or152 = or i64 %34, %33
  br label %if.end157

if.else153:                                       ; preds = %while.end146
  %arrayidx154 = getelementptr inbounds nuw i8, ptr %s, i64 352
  %35 = load i64, ptr %arrayidx154, align 8, !tbaa !7
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %s, i64 368
  %36 = load i64, ptr %arrayidx155, align 8, !tbaa !7
  %or156 = or i64 %36, %35
  br label %if.end157

if.end157:                                        ; preds = %if.else153, %if.then149
  %storemerge362 = phi i64 [ %or156, %if.else153 ], [ %or152, %if.then149 ]
  store i64 %storemerge362, ptr %tsq, align 8, !tbaa !7
  %tobool159.not484 = icmp eq i64 %storemerge362, 0
  br i1 %tobool159.not484, label %while.end172, label %while.body160.preheader

while.body160.preheader:                          ; preds = %if.end157
  br label %while.body160

while.cond164.while.cond158thread-pre-split_crit_edge: ; preds = %while.body166
  %incdec.ptr.i429.lcssa = phi ptr [ %incdec.ptr.i429, %while.body166 ]
  br label %while.cond158thread-pre-split, !llvm.loop !16

while.cond158thread-pre-split:                    ; preds = %while.body160, %while.cond164.while.cond158thread-pre-split_crit_edge
  %moves.addr.10.lcssa = phi ptr [ %incdec.ptr.i429.lcssa, %while.cond164.while.cond158thread-pre-split_crit_edge ], [ %moves.addr.9485, %while.body160 ]
  %.pr460 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool159.not = icmp eq i64 %.pr460, 0
  br i1 %tobool159.not, label %while.end172.loopexit, label %while.body160

while.body160:                                    ; preds = %while.cond158thread-pre-split, %while.body160.preheader
  %moves.addr.9485 = phi ptr [ %moves.addr.10.lcssa, %while.cond158thread-pre-split ], [ %moves.addr.7.lcssa, %while.body160.preheader ]
  %call161 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %call162 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %s, i32 noundef %call161)
  %and163 = and i64 %call162, %friendlymask.0
  store i64 %and163, ptr %temp, align 8, !tbaa !7
  %tobool165.not481 = icmp eq i64 %and163, 0
  br i1 %tobool165.not481, label %while.cond158thread-pre-split, label %while.body166.lr.ph, !llvm.loop !16

while.body166.lr.ph:                              ; preds = %while.body160
  %shl5.i425 = shl i32 %call161, 6
  br label %while.body166, !llvm.loop !16

while.body166:                                    ; preds = %while.body166, %while.body166.lr.ph
  %moves.addr.10482 = phi ptr [ %moves.addr.9485, %while.body166.lr.ph ], [ %incdec.ptr.i429, %while.body166 ]
  %call167 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %idxprom168 = sext i32 %call167 to i64
  %arrayidx169 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom168
  %37 = load i32, ptr %arrayidx169, align 4, !tbaa !8
  %shl1.i424 = shl i32 %37, 19
  %38 = or i32 %shl5.i425, %shl1.i424
  %or4.i427 = or i32 %38, %call167
  store i32 %or4.i427, ptr %moves.addr.10482, align 4, !tbaa !8
  %incdec.ptr.i429 = getelementptr inbounds nuw i8, ptr %moves.addr.10482, i64 4
  %.pr461 = load i64, ptr %temp, align 8, !tbaa !7
  %tobool165.not = icmp eq i64 %.pr461, 0
  br i1 %tobool165.not, label %while.cond164.while.cond158thread-pre-split_crit_edge, label %while.body166, !llvm.loop !17

while.end172.loopexit:                            ; preds = %while.cond158thread-pre-split
  %moves.addr.10.lcssa.lcssa = phi ptr [ %moves.addr.10.lcssa, %while.cond158thread-pre-split ]
  br label %while.end172

while.end172:                                     ; preds = %while.end172.loopexit, %if.end157
  %moves.addr.9.lcssa = phi ptr [ %moves.addr.7.lcssa, %if.end157 ], [ %moves.addr.10.lcssa.lcssa, %while.end172.loopexit ]
  %39 = load i32, ptr %white_to_move, align 4, !tbaa !6
  %tobool174.not = icmp eq i32 %39, 0
  br i1 %tobool174.not, label %if.else197, label %if.then175

if.then175:                                       ; preds = %while.end172
  %castleflag = getelementptr inbounds nuw i8, ptr %s, i64 452
  %40 = load i32, ptr %castleflag, align 4, !tbaa !18
  %and176 = and i32 %40, 2
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.end184, label %if.then178

if.then178:                                       ; preds = %if.then175
  %call179 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %s, i32 noundef 1)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.then181, label %if.end184

if.then181:                                       ; preds = %if.then178
  %wking_loc = getelementptr inbounds nuw i8, ptr %s, i64 464
  %41 = load i32, ptr %wking_loc, align 8, !tbaa !19
  %shl1.i430 = shl i32 %41, 6
  %or3.i432 = or i32 %shl1.i430, 6881342
  store i32 %or3.i432, ptr %moves.addr.9.lcssa, align 4, !tbaa !8
  %incdec.ptr.i433 = getelementptr inbounds nuw i8, ptr %moves.addr.9.lcssa, i64 4
  br label %if.end184

if.end184:                                        ; preds = %if.then181, %if.then178, %if.then175
  %moves.addr.11 = phi ptr [ %moves.addr.9.lcssa, %if.then178 ], [ %incdec.ptr.i433, %if.then181 ], [ %moves.addr.9.lcssa, %if.then175 ]
  %42 = load i32, ptr %castleflag, align 4, !tbaa !18
  %and186 = and i32 %42, 4
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %if.end195, label %if.then188

if.then188:                                       ; preds = %if.end184
  %call189 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %s, i32 noundef 2)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.then191, label %if.end195

if.then191:                                       ; preds = %if.then188
  %wking_loc192 = getelementptr inbounds nuw i8, ptr %s, i64 464
  %43 = load i32, ptr %wking_loc192, align 8, !tbaa !19
  %shl1.i434 = shl i32 %43, 6
  %or3.i437 = or i32 %shl1.i434, 6946874
  store i32 %or3.i437, ptr %moves.addr.11, align 4, !tbaa !8
  %incdec.ptr.i438 = getelementptr inbounds nuw i8, ptr %moves.addr.11, i64 4
  br label %if.end195

if.end195:                                        ; preds = %if.then191, %if.then188, %if.end184
  %moves.addr.12 = phi ptr [ %moves.addr.11, %if.then188 ], [ %incdec.ptr.i438, %if.then191 ], [ %moves.addr.11, %if.end184 ]
  %wking_loc196 = getelementptr inbounds nuw i8, ptr %s, i64 464
  br label %if.end220

if.else197:                                       ; preds = %while.end172
  %castleflag198 = getelementptr inbounds nuw i8, ptr %s, i64 452
  %44 = load i32, ptr %castleflag198, align 4, !tbaa !18
  %and199 = and i32 %44, 8
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.end207, label %if.then201

if.then201:                                       ; preds = %if.else197
  %call202 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %s, i32 noundef 3)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.then204, label %if.end207

if.then204:                                       ; preds = %if.then201
  %bking_loc = getelementptr inbounds nuw i8, ptr %s, i64 468
  %45 = load i32, ptr %bking_loc, align 4, !tbaa !20
  %shl1.i439 = shl i32 %45, 6
  %or3.i442 = or i32 %shl1.i439, 7012358
  store i32 %or3.i442, ptr %moves.addr.9.lcssa, align 4, !tbaa !8
  %incdec.ptr.i443 = getelementptr inbounds nuw i8, ptr %moves.addr.9.lcssa, i64 4
  br label %if.end207

if.end207:                                        ; preds = %if.then204, %if.then201, %if.else197
  %moves.addr.13 = phi ptr [ %moves.addr.9.lcssa, %if.then201 ], [ %incdec.ptr.i443, %if.then204 ], [ %moves.addr.9.lcssa, %if.else197 ]
  %46 = load i32, ptr %castleflag198, align 4, !tbaa !18
  %and209 = and i32 %46, 16
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.end218, label %if.then211

if.then211:                                       ; preds = %if.end207
  %call212 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %s, i32 noundef 4)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %if.then214, label %if.end218

if.then214:                                       ; preds = %if.then211
  %bking_loc215 = getelementptr inbounds nuw i8, ptr %s, i64 468
  %47 = load i32, ptr %bking_loc215, align 4, !tbaa !20
  %shl1.i444 = shl i32 %47, 6
  %or3.i447 = or i32 %shl1.i444, 7077890
  store i32 %or3.i447, ptr %moves.addr.13, align 4, !tbaa !8
  %incdec.ptr.i448 = getelementptr inbounds nuw i8, ptr %moves.addr.13, i64 4
  br label %if.end218

if.end218:                                        ; preds = %if.then214, %if.then211, %if.end207
  %moves.addr.14 = phi ptr [ %moves.addr.13, %if.then211 ], [ %incdec.ptr.i448, %if.then214 ], [ %moves.addr.13, %if.end207 ]
  %bking_loc219 = getelementptr inbounds nuw i8, ptr %s, i64 468
  br label %if.end220

if.end220:                                        ; preds = %if.end218, %if.end195
  %from.2.in = phi ptr [ %wking_loc196, %if.end195 ], [ %bking_loc219, %if.end218 ]
  %moves.addr.15 = phi ptr [ %moves.addr.12, %if.end195 ], [ %moves.addr.14, %if.end218 ]
  %from.2 = load i32, ptr %from.2.in, align 4, !tbaa !8
  %idxprom221 = sext i32 %from.2 to i64
  %arrayidx222 = getelementptr inbounds i64, ptr @KingMoves, i64 %idxprom221
  %48 = load i64, ptr %arrayidx222, align 8, !tbaa !7
  %and223 = and i64 %48, %friendlymask.0
  store i64 %and223, ptr %tsq, align 8, !tbaa !7
  %tobool225.not487 = icmp eq i64 %and223, 0
  br i1 %tobool225.not487, label %while.end231, label %while.body226.lr.ph

while.body226.lr.ph:                              ; preds = %if.end220
  %shl5.i450 = shl i32 %from.2, 6
  br label %while.body226

while.body226:                                    ; preds = %while.body226, %while.body226.lr.ph
  %moves.addr.16488 = phi ptr [ %moves.addr.15, %while.body226.lr.ph ], [ %incdec.ptr.i454, %while.body226 ]
  %call227 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %idxprom228 = sext i32 %call227 to i64
  %arrayidx229 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom228
  %49 = load i32, ptr %arrayidx229, align 4, !tbaa !8
  %shl1.i449 = shl i32 %49, 19
  %50 = or i32 %shl5.i450, %shl1.i449
  %or4.i452 = or i32 %50, %call227
  store i32 %or4.i452, ptr %moves.addr.16488, align 4, !tbaa !8
  %incdec.ptr.i454 = getelementptr inbounds nuw i8, ptr %moves.addr.16488, i64 4
  %.pr462 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool225.not = icmp eq i64 %.pr462, 0
  br i1 %tobool225.not, label %while.end231.loopexit, label %while.body226, !llvm.loop !21

while.end231.loopexit:                            ; preds = %while.body226
  %incdec.ptr.i454.lcssa = phi ptr [ %incdec.ptr.i454, %while.body226 ]
  br label %while.end231

while.end231:                                     ; preds = %while.end231.loopexit, %if.end220
  %moves.addr.16.lcssa = phi ptr [ %moves.addr.15, %if.end220 ], [ %incdec.ptr.i454.lcssa, %while.end231.loopexit ]
  %sub.ptr.lhs.cast = ptrtoint ptr %moves.addr.16.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %moves to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 2
  %conv = trunc i64 %sub.ptr.div to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %temp) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %tsq) #3
  ret i32 %conv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #2

declare noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!0 = !{!1, !5, i64 264}
!1 = !{!"_ZTS7state_t", !2, i64 0, !3, i64 4, !5, i64 264, !5, i64 272, !5, i64 280, !3, i64 288, !2, i64 392, !2, i64 396, !3, i64 400, !2, i64 452, !2, i64 456, !2, i64 460, !2, i64 464, !2, i64 468, !2, i64 472, !2, i64 476, !5, i64 480, !5, i64 488, !3, i64 496, !3, i64 2544, !3, i64 2800, !3, i64 3056, !5, i64 4080, !5, i64 4088, !2, i64 4096, !3, i64 4100, !2, i64 4356, !2, i64 4360, !2, i64 4364, !2, i64 4368, !2, i64 4372, !2, i64 4376, !2, i64 4380, !2, i64 4384, !2, i64 4388, !2, i64 4392, !3, i64 4400}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"long long", !3, i64 0}
!6 = !{!1, !2, i64 460}
!7 = !{!5, !5, i64 0}
!8 = !{!2, !2, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = !{!1, !2, i64 452}
!19 = !{!1, !2, i64 464}
!20 = !{!1, !2, i64 468}
!21 = distinct !{!21, !10}
