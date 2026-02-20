; ModuleID = '/tmp/tmp.m1hBPuGtIe/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/generate.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RankMask = external local_unnamed_addr global [8 x i64], align 16
@Mask = external local_unnamed_addr global [64 x i64], align 16
@KnightMoves = external local_unnamed_addr global [64 x i64], align 16
@KingMoves = external local_unnamed_addr global [64 x i64], align 16
@FileMask = external local_unnamed_addr global [8 x i64], align 16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #1

declare noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef %s, ptr noundef %moves) local_unnamed_addr #2 {
entry:
  %tsq = alloca i64, align 8
  %temp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %tsq) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %temp) #3
  %sboard2 = getelementptr inbounds nuw i8, ptr %s, i64 4
  %white_to_move = getelementptr inbounds nuw i8, ptr %s, i64 460
  %0 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else84, label %if.then

if.then:                                          ; preds = %entry
  %BlackPieces = getelementptr inbounds nuw i8, ptr %s, i64 272
  %1 = load i64, ptr %BlackPieces, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds nuw i8, ptr %s, i64 296
  %2 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %3 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 8), align 8, !tbaa !7
  %and = and i64 %3, %2
  %shr = lshr i64 %and, 8
  %All = getelementptr inbounds nuw i8, ptr %s, i64 264
  %4 = load i64, ptr %All, align 8, !tbaa !8
  %not = xor i64 %4, -1
  %and4 = and i64 %shr, %not
  store i64 %and4, ptr %tsq, align 8, !tbaa !7
  %tobool5.not553 = icmp eq i64 %and4, 0
  br i1 %tobool5.not553, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.then
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader
  %moves.addr.0554 = phi ptr [ %incdec.ptr.i, %while.body ], [ %moves, %while.body.preheader ]
  %call = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %add = shl i32 %call, 6
  %shl5.i = add i32 %add, 512
  %or.i = or i32 %call, %shl5.i
  %or6.i = or i32 %or.i, 6852608
  store i32 %or6.i, ptr %moves.addr.0554, align 4, !tbaa !9
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %moves.addr.0554, i64 4
  %.pr = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool5.not = icmp eq i64 %.pr, 0
  br i1 %tobool5.not, label %while.end.loopexit, label %while.body, !llvm.loop !10

while.end.loopexit:                               ; preds = %while.body
  %incdec.ptr.i.lcssa = phi ptr [ %incdec.ptr.i, %while.body ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %moves.addr.0.lcssa = phi ptr [ %moves, %if.then ], [ %incdec.ptr.i.lcssa, %while.end.loopexit ]
  %5 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %6 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 56), align 8, !tbaa !7
  %not8 = xor i64 %6, -1
  %and9 = and i64 %5, %not8
  %shr10 = lshr i64 %and9, 7
  %7 = load i64, ptr @FileMask, align 16, !tbaa !7
  %not12 = xor i64 %7, -1
  %and13 = and i64 %5, %not12
  %shr14 = lshr i64 %and13, 9
  %or = or i64 %shr14, %shr10
  store i64 %or, ptr %tsq, align 8, !tbaa !7
  %ep_square = getelementptr inbounds nuw i8, ptr %s, i64 456
  %8 = load i32, ptr %ep_square, align 8, !tbaa !12
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then15, label %if.end

if.then15:                                        ; preds = %while.end
  %idxprom = zext nneg i32 %8 to i64
  %arrayidx17 = getelementptr inbounds nuw i64, ptr @Mask, i64 %idxprom
  %9 = load i64, ptr %arrayidx17, align 8, !tbaa !7
  %or18 = or i64 %9, %1
  br label %if.end

if.end:                                           ; preds = %if.then15, %while.end
  %.pn421 = phi i64 [ %or18, %if.then15 ], [ %1, %while.end ]
  %storemerge420 = and i64 %.pn421, %or
  store i64 %storemerge420, ptr %tsq, align 8, !tbaa !7
  %tobool22.not555 = icmp eq i64 %storemerge420, 0
  br i1 %tobool22.not555, label %if.end179, label %while.body23.preheader

while.body23.preheader:                           ; preds = %if.end
  br label %while.body23

while.body23:                                     ; preds = %if.end82, %while.body23.preheader
  %moves.addr.1556 = phi ptr [ %moves.addr.3, %if.end82 ], [ %moves.addr.0.lcssa, %while.body23.preheader ]
  %call24 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %and25 = and i32 %call24, 7
  %cmp26.not = icmp eq i32 %and25, 0
  br i1 %cmp26.not, label %if.then56, label %if.then27

if.then27:                                        ; preds = %while.body23
  %add28 = add nsw i32 %call24, 7
  %10 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %idxprom30 = sext i32 %add28 to i64
  %arrayidx31 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom30
  %11 = load i64, ptr %arrayidx31, align 8, !tbaa !7
  %and32 = and i64 %11, %10
  %tobool33.not = icmp eq i64 %and32, 0
  br i1 %tobool33.not, label %if.end53, label %if.then34

if.then34:                                        ; preds = %if.then27
  %cmp36 = icmp ult i32 %call24, 8
  br i1 %cmp36, label %if.then37, label %if.else41

if.then37:                                        ; preds = %if.then34
  %idxprom38 = zext nneg i32 %call24 to i64
  %arrayidx39 = getelementptr inbounds nuw i32, ptr %sboard2, i64 %idxprom38
  %12 = load i32, ptr %arrayidx39, align 4, !tbaa !9
  %shl1.i = shl i32 %12, 19
  %shl5.i425 = shl nuw nsw i32 %add28, 6
  %13 = or disjoint i32 %shl1.i, %shl5.i425
  %or4.i427 = or disjoint i32 %13, %call24
  %or6.i428 = or disjoint i32 %or4.i427, 36864
  store i32 %or6.i428, ptr %moves.addr.1556, align 4, !tbaa !9
  %incdec.ptr.i429 = getelementptr inbounds nuw i8, ptr %moves.addr.1556, i64 4
  br label %if.end53

if.else41:                                        ; preds = %if.then34
  %14 = load i32, ptr %ep_square, align 8, !tbaa !12
  %cmp43 = icmp eq i32 %call24, %14
  br i1 %cmp43, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.else41
  %shl5.i430 = shl i32 %add28, 6
  %or.i431 = or i32 %call24, %shl5.i430
  %or7.i = or i32 %or.i431, 9437184
  store i32 %or7.i, ptr %moves.addr.1556, align 4, !tbaa !9
  %incdec.ptr.i434 = getelementptr inbounds nuw i8, ptr %moves.addr.1556, i64 4
  br label %if.end53

if.else46:                                        ; preds = %if.else41
  %idxprom47 = sext i32 %call24 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom47
  %15 = load i32, ptr %arrayidx48, align 4, !tbaa !9
  %shl1.i435 = shl i32 %15, 19
  %shl5.i436 = shl i32 %add28, 6
  %16 = or i32 %shl5.i436, %shl1.i435
  %or4.i438 = or i32 %16, %call24
  store i32 %or4.i438, ptr %moves.addr.1556, align 4, !tbaa !9
  %incdec.ptr.i441 = getelementptr inbounds nuw i8, ptr %moves.addr.1556, i64 4
  br label %if.end53

if.end53:                                         ; preds = %if.else46, %if.then44, %if.then37, %if.then27
  %moves.addr.2 = phi ptr [ %incdec.ptr.i429, %if.then37 ], [ %incdec.ptr.i434, %if.then44 ], [ %incdec.ptr.i441, %if.else46 ], [ %moves.addr.1556, %if.then27 ]
  %cmp55.not = icmp eq i32 %and25, 7
  br i1 %cmp55.not, label %if.end82, label %if.then56

if.then56:                                        ; preds = %if.end53, %while.body23
  %moves.addr.2539 = phi ptr [ %moves.addr.2, %if.end53 ], [ %moves.addr.1556, %while.body23 ]
  %add57 = add nsw i32 %call24, 9
  %17 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %idxprom59 = sext i32 %add57 to i64
  %arrayidx60 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom59
  %18 = load i64, ptr %arrayidx60, align 8, !tbaa !7
  %and61 = and i64 %18, %17
  %tobool62.not = icmp eq i64 %and61, 0
  br i1 %tobool62.not, label %if.end82, label %if.then63

if.then63:                                        ; preds = %if.then56
  %cmp65 = icmp ult i32 %call24, 8
  br i1 %cmp65, label %if.then66, label %if.else70

if.then66:                                        ; preds = %if.then63
  %idxprom67 = zext nneg i32 %call24 to i64
  %arrayidx68 = getelementptr inbounds nuw i32, ptr %sboard2, i64 %idxprom67
  %19 = load i32, ptr %arrayidx68, align 4, !tbaa !9
  %shl1.i442 = shl i32 %19, 19
  %shl5.i443 = shl nuw nsw i32 %add57, 6
  %20 = or disjoint i32 %shl1.i442, %shl5.i443
  %or4.i445 = or disjoint i32 %20, %call24
  %or6.i446 = or disjoint i32 %or4.i445, 36864
  store i32 %or6.i446, ptr %moves.addr.2539, align 4, !tbaa !9
  %incdec.ptr.i448 = getelementptr inbounds nuw i8, ptr %moves.addr.2539, i64 4
  br label %if.end82

if.else70:                                        ; preds = %if.then63
  %21 = load i32, ptr %ep_square, align 8, !tbaa !12
  %cmp72 = icmp eq i32 %call24, %21
  br i1 %cmp72, label %if.then73, label %if.else75

if.then73:                                        ; preds = %if.else70
  %shl5.i449 = shl i32 %add57, 6
  %or.i450 = or i32 %call24, %shl5.i449
  %or7.i453 = or i32 %or.i450, 9437184
  store i32 %or7.i453, ptr %moves.addr.2539, align 4, !tbaa !9
  %incdec.ptr.i454 = getelementptr inbounds nuw i8, ptr %moves.addr.2539, i64 4
  br label %if.end82

if.else75:                                        ; preds = %if.else70
  %idxprom76 = sext i32 %call24 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom76
  %22 = load i32, ptr %arrayidx77, align 4, !tbaa !9
  %shl1.i455 = shl i32 %22, 19
  %shl5.i456 = shl i32 %add57, 6
  %23 = or i32 %shl5.i456, %shl1.i455
  %or4.i458 = or i32 %23, %call24
  store i32 %or4.i458, ptr %moves.addr.2539, align 4, !tbaa !9
  %incdec.ptr.i461 = getelementptr inbounds nuw i8, ptr %moves.addr.2539, i64 4
  br label %if.end82

if.end82:                                         ; preds = %if.else75, %if.then73, %if.then66, %if.then56, %if.end53
  %moves.addr.3 = phi ptr [ %incdec.ptr.i448, %if.then66 ], [ %incdec.ptr.i454, %if.then73 ], [ %incdec.ptr.i461, %if.else75 ], [ %moves.addr.2539, %if.then56 ], [ %moves.addr.2, %if.end53 ]
  %.pr536 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool22.not = icmp eq i64 %.pr536, 0
  br i1 %tobool22.not, label %if.end179.loopexit585, label %while.body23, !llvm.loop !13

if.else84:                                        ; preds = %entry
  %WhitePieces = getelementptr inbounds nuw i8, ptr %s, i64 280
  %24 = load i64, ptr %WhitePieces, align 8, !tbaa !14
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %s, i64 304
  %25 = load i64, ptr %arrayidx85, align 8, !tbaa !7
  %26 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 48), align 16, !tbaa !7
  %and86 = and i64 %26, %25
  %shl = shl i64 %and86, 8
  %All87 = getelementptr inbounds nuw i8, ptr %s, i64 264
  %27 = load i64, ptr %All87, align 8, !tbaa !8
  %not88 = xor i64 %27, -1
  %and89 = and i64 %shl, %not88
  store i64 %and89, ptr %tsq, align 8, !tbaa !7
  %tobool91.not558 = icmp eq i64 %and89, 0
  br i1 %tobool91.not558, label %while.end95, label %while.body92.preheader

while.body92.preheader:                           ; preds = %if.else84
  br label %while.body92

while.body92:                                     ; preds = %while.body92, %while.body92.preheader
  %moves.addr.4559 = phi ptr [ %incdec.ptr.i467, %while.body92 ], [ %moves, %while.body92.preheader ]
  %call93 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %sub = shl i32 %call93, 6
  %shl5.i462 = add i32 %sub, -512
  %or.i463 = or i32 %call93, %shl5.i462
  %or6.i465 = or i32 %or.i463, 6856704
  store i32 %or6.i465, ptr %moves.addr.4559, align 4, !tbaa !9
  %incdec.ptr.i467 = getelementptr inbounds nuw i8, ptr %moves.addr.4559, i64 4
  %.pr540 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool91.not = icmp eq i64 %.pr540, 0
  br i1 %tobool91.not, label %while.end95.loopexit, label %while.body92, !llvm.loop !15

while.end95.loopexit:                             ; preds = %while.body92
  %incdec.ptr.i467.lcssa = phi ptr [ %incdec.ptr.i467, %while.body92 ]
  br label %while.end95

while.end95:                                      ; preds = %while.end95.loopexit, %if.else84
  %moves.addr.4.lcssa = phi ptr [ %moves, %if.else84 ], [ %incdec.ptr.i467.lcssa, %while.end95.loopexit ]
  %28 = load i64, ptr %arrayidx85, align 8, !tbaa !7
  %29 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 56), align 8, !tbaa !7
  %not97 = xor i64 %29, -1
  %and98 = and i64 %28, %not97
  %shl99 = shl i64 %and98, 9
  %30 = load i64, ptr @FileMask, align 16, !tbaa !7
  %not101 = xor i64 %30, -1
  %and102 = and i64 %28, %not101
  %shl103 = shl i64 %and102, 7
  %or104 = or i64 %shl103, %shl99
  store i64 %or104, ptr %tsq, align 8, !tbaa !7
  %ep_square105 = getelementptr inbounds nuw i8, ptr %s, i64 456
  %31 = load i32, ptr %ep_square105, align 8, !tbaa !12
  %cmp106 = icmp sgt i32 %31, 0
  br i1 %cmp106, label %if.then107, label %if.end115

if.then107:                                       ; preds = %while.end95
  %idxprom109 = zext nneg i32 %31 to i64
  %arrayidx110 = getelementptr inbounds nuw i64, ptr @Mask, i64 %idxprom109
  %32 = load i64, ptr %arrayidx110, align 8, !tbaa !7
  %or111 = or i64 %32, %24
  br label %if.end115

if.end115:                                        ; preds = %if.then107, %while.end95
  %.pn = phi i64 [ %or111, %if.then107 ], [ %24, %while.end95 ]
  %storemerge = and i64 %.pn, %or104
  store i64 %storemerge, ptr %tsq, align 8, !tbaa !7
  %tobool117.not561 = icmp eq i64 %storemerge, 0
  br i1 %tobool117.not561, label %if.end179, label %while.body118.preheader

while.body118.preheader:                          ; preds = %if.end115
  br label %while.body118

while.body118:                                    ; preds = %if.end177, %while.body118.preheader
  %moves.addr.5562 = phi ptr [ %moves.addr.7, %if.end177 ], [ %moves.addr.4.lcssa, %while.body118.preheader ]
  %call119 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %and120 = and i32 %call119, 7
  %cmp121.not = icmp eq i32 %and120, 0
  br i1 %cmp121.not, label %if.then151, label %if.then122

if.then122:                                       ; preds = %while.body118
  %sub123 = add nsw i32 %call119, -9
  %33 = load i64, ptr %arrayidx85, align 8, !tbaa !7
  %idxprom125 = sext i32 %sub123 to i64
  %arrayidx126 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom125
  %34 = load i64, ptr %arrayidx126, align 8, !tbaa !7
  %and127 = and i64 %34, %33
  %tobool128.not = icmp eq i64 %and127, 0
  br i1 %tobool128.not, label %if.end148, label %if.then129

if.then129:                                       ; preds = %if.then122
  %shr130.mask = and i32 %call119, -8
  %cmp131 = icmp eq i32 %shr130.mask, 56
  br i1 %cmp131, label %if.then132, label %if.else136

if.then132:                                       ; preds = %if.then129
  %idxprom133 = zext nneg i32 %call119 to i64
  %arrayidx134 = getelementptr inbounds nuw i32, ptr %sboard2, i64 %idxprom133
  %35 = load i32, ptr %arrayidx134, align 4, !tbaa !9
  %shl1.i468 = shl i32 %35, 19
  %shl5.i469 = shl nuw nsw i32 %sub123, 6
  %36 = or disjoint i32 %shl1.i468, %shl5.i469
  %or4.i471 = or disjoint i32 %36, %call119
  %or6.i472 = or disjoint i32 %or4.i471, 40960
  store i32 %or6.i472, ptr %moves.addr.5562, align 4, !tbaa !9
  %incdec.ptr.i474 = getelementptr inbounds nuw i8, ptr %moves.addr.5562, i64 4
  br label %if.end148

if.else136:                                       ; preds = %if.then129
  %37 = load i32, ptr %ep_square105, align 8, !tbaa !12
  %cmp138 = icmp eq i32 %call119, %37
  br i1 %cmp138, label %if.then139, label %if.else141

if.then139:                                       ; preds = %if.else136
  %shl5.i475 = shl i32 %sub123, 6
  %or.i476 = or i32 %call119, %shl5.i475
  %or7.i479 = or i32 %or.i476, 8912896
  store i32 %or7.i479, ptr %moves.addr.5562, align 4, !tbaa !9
  %incdec.ptr.i480 = getelementptr inbounds nuw i8, ptr %moves.addr.5562, i64 4
  br label %if.end148

if.else141:                                       ; preds = %if.else136
  %idxprom142 = sext i32 %call119 to i64
  %arrayidx143 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom142
  %38 = load i32, ptr %arrayidx143, align 4, !tbaa !9
  %shl1.i481 = shl i32 %38, 19
  %shl5.i482 = shl i32 %sub123, 6
  %39 = or i32 %shl5.i482, %shl1.i481
  %or4.i484 = or i32 %39, %call119
  store i32 %or4.i484, ptr %moves.addr.5562, align 4, !tbaa !9
  %incdec.ptr.i487 = getelementptr inbounds nuw i8, ptr %moves.addr.5562, i64 4
  br label %if.end148

if.end148:                                        ; preds = %if.else141, %if.then139, %if.then132, %if.then122
  %moves.addr.6 = phi ptr [ %incdec.ptr.i474, %if.then132 ], [ %incdec.ptr.i480, %if.then139 ], [ %incdec.ptr.i487, %if.else141 ], [ %moves.addr.5562, %if.then122 ]
  %cmp150.not = icmp eq i32 %and120, 7
  br i1 %cmp150.not, label %if.end177, label %if.then151

if.then151:                                       ; preds = %if.end148, %while.body118
  %moves.addr.6544 = phi ptr [ %moves.addr.6, %if.end148 ], [ %moves.addr.5562, %while.body118 ]
  %sub152 = add nsw i32 %call119, -7
  %40 = load i64, ptr %arrayidx85, align 8, !tbaa !7
  %idxprom154 = sext i32 %sub152 to i64
  %arrayidx155 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom154
  %41 = load i64, ptr %arrayidx155, align 8, !tbaa !7
  %and156 = and i64 %41, %40
  %tobool157.not = icmp eq i64 %and156, 0
  br i1 %tobool157.not, label %if.end177, label %if.then158

if.then158:                                       ; preds = %if.then151
  %shr159.mask = and i32 %call119, -8
  %cmp160 = icmp eq i32 %shr159.mask, 56
  br i1 %cmp160, label %if.then161, label %if.else165

if.then161:                                       ; preds = %if.then158
  %idxprom162 = zext nneg i32 %call119 to i64
  %arrayidx163 = getelementptr inbounds nuw i32, ptr %sboard2, i64 %idxprom162
  %42 = load i32, ptr %arrayidx163, align 4, !tbaa !9
  %shl1.i488 = shl i32 %42, 19
  %shl5.i489 = shl nuw nsw i32 %sub152, 6
  %43 = or disjoint i32 %shl1.i488, %shl5.i489
  %or4.i491 = or disjoint i32 %43, %call119
  %or6.i492 = or disjoint i32 %or4.i491, 40960
  store i32 %or6.i492, ptr %moves.addr.6544, align 4, !tbaa !9
  %incdec.ptr.i494 = getelementptr inbounds nuw i8, ptr %moves.addr.6544, i64 4
  br label %if.end177

if.else165:                                       ; preds = %if.then158
  %44 = load i32, ptr %ep_square105, align 8, !tbaa !12
  %cmp167 = icmp eq i32 %call119, %44
  br i1 %cmp167, label %if.then168, label %if.else170

if.then168:                                       ; preds = %if.else165
  %shl5.i495 = shl i32 %sub152, 6
  %or.i496 = or i32 %call119, %shl5.i495
  %or7.i499 = or i32 %or.i496, 8912896
  store i32 %or7.i499, ptr %moves.addr.6544, align 4, !tbaa !9
  %incdec.ptr.i500 = getelementptr inbounds nuw i8, ptr %moves.addr.6544, i64 4
  br label %if.end177

if.else170:                                       ; preds = %if.else165
  %idxprom171 = sext i32 %call119 to i64
  %arrayidx172 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom171
  %45 = load i32, ptr %arrayidx172, align 4, !tbaa !9
  %shl1.i501 = shl i32 %45, 19
  %shl5.i502 = shl i32 %sub152, 6
  %46 = or i32 %shl5.i502, %shl1.i501
  %or4.i504 = or i32 %46, %call119
  store i32 %or4.i504, ptr %moves.addr.6544, align 4, !tbaa !9
  %incdec.ptr.i507 = getelementptr inbounds nuw i8, ptr %moves.addr.6544, i64 4
  br label %if.end177

if.end177:                                        ; preds = %if.else170, %if.then168, %if.then161, %if.then151, %if.end148
  %moves.addr.7 = phi ptr [ %incdec.ptr.i494, %if.then161 ], [ %incdec.ptr.i500, %if.then168 ], [ %incdec.ptr.i507, %if.else170 ], [ %moves.addr.6544, %if.then151 ], [ %moves.addr.6, %if.end148 ]
  %.pr541 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool117.not = icmp eq i64 %.pr541, 0
  br i1 %tobool117.not, label %if.end179.loopexit, label %while.body118, !llvm.loop !16

if.end179.loopexit:                               ; preds = %if.end177
  %moves.addr.7.lcssa = phi ptr [ %moves.addr.7, %if.end177 ]
  br label %if.end179

if.end179.loopexit585:                            ; preds = %if.end82
  %moves.addr.3.lcssa = phi ptr [ %moves.addr.3, %if.end82 ]
  br label %if.end179

if.end179:                                        ; preds = %if.end179.loopexit585, %if.end179.loopexit, %if.end115, %if.end
  %targets.0 = phi i64 [ %24, %if.end115 ], [ %1, %if.end ], [ %24, %if.end179.loopexit ], [ %1, %if.end179.loopexit585 ]
  %moves.addr.8 = phi ptr [ %moves.addr.4.lcssa, %if.end115 ], [ %moves.addr.0.lcssa, %if.end ], [ %moves.addr.7.lcssa, %if.end179.loopexit ], [ %moves.addr.3.lcssa, %if.end179.loopexit585 ]
  %47 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool181.not = icmp eq i32 %47, 0
  %from.0.in.v = select i1 %tobool181.not, i64 468, i64 464
  %from.0.in = getelementptr inbounds nuw i8, ptr %s, i64 %from.0.in.v
  %from.0 = load i32, ptr %from.0.in, align 4, !tbaa !9
  %idxprom185 = sext i32 %from.0 to i64
  %arrayidx186 = getelementptr inbounds i64, ptr @KingMoves, i64 %idxprom185
  %48 = load i64, ptr %arrayidx186, align 8, !tbaa !7
  %and187 = and i64 %48, %targets.0
  store i64 %and187, ptr %tsq, align 8, !tbaa !7
  %tobool189.not564 = icmp eq i64 %and187, 0
  br i1 %tobool189.not564, label %while.end195, label %while.body190.lr.ph

while.body190.lr.ph:                              ; preds = %if.end179
  %shl5.i509 = shl i32 %from.0, 6
  br label %while.body190

while.body190:                                    ; preds = %while.body190, %while.body190.lr.ph
  %moves.addr.9565 = phi ptr [ %moves.addr.8, %while.body190.lr.ph ], [ %incdec.ptr.i514, %while.body190 ]
  %call191 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %idxprom192 = sext i32 %call191 to i64
  %arrayidx193 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom192
  %49 = load i32, ptr %arrayidx193, align 4, !tbaa !9
  %shl1.i508 = shl i32 %49, 19
  %50 = or i32 %shl5.i509, %shl1.i508
  %or4.i511 = or i32 %50, %call191
  store i32 %or4.i511, ptr %moves.addr.9565, align 4, !tbaa !9
  %incdec.ptr.i514 = getelementptr inbounds nuw i8, ptr %moves.addr.9565, i64 4
  %.pr545 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool189.not = icmp eq i64 %.pr545, 0
  br i1 %tobool189.not, label %while.end195.loopexit, label %while.body190, !llvm.loop !17

while.end195.loopexit:                            ; preds = %while.body190
  %incdec.ptr.i514.lcssa = phi ptr [ %incdec.ptr.i514, %while.body190 ]
  br label %while.end195

while.end195:                                     ; preds = %while.end195.loopexit, %if.end179
  %moves.addr.9.lcssa = phi ptr [ %moves.addr.8, %if.end179 ], [ %incdec.ptr.i514.lcssa, %while.end195.loopexit ]
  %51 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool197.not = icmp eq i32 %51, 0
  %storemerge422.in.v = select i1 %tobool197.not, i64 320, i64 312
  %storemerge422.in = getelementptr inbounds nuw i8, ptr %s, i64 %storemerge422.in.v
  %storemerge422 = load i64, ptr %storemerge422.in, align 8, !tbaa !7
  store i64 %storemerge422, ptr %tsq, align 8, !tbaa !7
  %tobool204.not570 = icmp eq i64 %storemerge422, 0
  br i1 %tobool204.not570, label %while.end218, label %while.body205.preheader

while.body205.preheader:                          ; preds = %while.end195
  br label %while.body205

while.cond210.while.cond203thread-pre-split_crit_edge: ; preds = %while.body212
  %incdec.ptr.i521.lcssa = phi ptr [ %incdec.ptr.i521, %while.body212 ]
  br label %while.cond203thread-pre-split, !llvm.loop !18

while.cond203thread-pre-split:                    ; preds = %while.body205, %while.cond210.while.cond203thread-pre-split_crit_edge
  %moves.addr.11.lcssa = phi ptr [ %incdec.ptr.i521.lcssa, %while.cond210.while.cond203thread-pre-split_crit_edge ], [ %moves.addr.10571, %while.body205 ]
  %.pr546 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool204.not = icmp eq i64 %.pr546, 0
  br i1 %tobool204.not, label %while.end218.loopexit, label %while.body205

while.body205:                                    ; preds = %while.cond203thread-pre-split, %while.body205.preheader
  %moves.addr.10571 = phi ptr [ %moves.addr.11.lcssa, %while.cond203thread-pre-split ], [ %moves.addr.9.lcssa, %while.body205.preheader ]
  %call206 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %idxprom207 = sext i32 %call206 to i64
  %arrayidx208 = getelementptr inbounds i64, ptr @KnightMoves, i64 %idxprom207
  %52 = load i64, ptr %arrayidx208, align 8, !tbaa !7
  %and209 = and i64 %52, %targets.0
  store i64 %and209, ptr %temp, align 8, !tbaa !7
  %tobool211.not567 = icmp eq i64 %and209, 0
  br i1 %tobool211.not567, label %while.cond203thread-pre-split, label %while.body212.lr.ph, !llvm.loop !18

while.body212.lr.ph:                              ; preds = %while.body205
  %shl5.i516 = shl i32 %call206, 6
  br label %while.body212, !llvm.loop !18

while.body212:                                    ; preds = %while.body212, %while.body212.lr.ph
  %moves.addr.11568 = phi ptr [ %moves.addr.10571, %while.body212.lr.ph ], [ %incdec.ptr.i521, %while.body212 ]
  %call213 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %idxprom214 = sext i32 %call213 to i64
  %arrayidx215 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom214
  %53 = load i32, ptr %arrayidx215, align 4, !tbaa !9
  %shl1.i515 = shl i32 %53, 19
  %54 = or i32 %shl5.i516, %shl1.i515
  %or4.i518 = or i32 %54, %call213
  store i32 %or4.i518, ptr %moves.addr.11568, align 4, !tbaa !9
  %incdec.ptr.i521 = getelementptr inbounds nuw i8, ptr %moves.addr.11568, i64 4
  %.pr547 = load i64, ptr %temp, align 8, !tbaa !7
  %tobool211.not = icmp eq i64 %.pr547, 0
  br i1 %tobool211.not, label %while.cond210.while.cond203thread-pre-split_crit_edge, label %while.body212, !llvm.loop !19

while.end218.loopexit:                            ; preds = %while.cond203thread-pre-split
  %moves.addr.11.lcssa.lcssa = phi ptr [ %moves.addr.11.lcssa, %while.cond203thread-pre-split ]
  br label %while.end218

while.end218:                                     ; preds = %while.end218.loopexit, %while.end195
  %moves.addr.10.lcssa = phi ptr [ %moves.addr.9.lcssa, %while.end195 ], [ %moves.addr.11.lcssa.lcssa, %while.end218.loopexit ]
  %55 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool220.not = icmp eq i32 %55, 0
  br i1 %tobool220.not, label %if.else225, label %if.then221

if.then221:                                       ; preds = %while.end218
  %arrayidx222 = getelementptr inbounds nuw i8, ptr %s, i64 344
  %56 = load i64, ptr %arrayidx222, align 8, !tbaa !7
  %arrayidx223 = getelementptr inbounds nuw i8, ptr %s, i64 360
  %57 = load i64, ptr %arrayidx223, align 8, !tbaa !7
  %or224 = or i64 %57, %56
  br label %if.end229

if.else225:                                       ; preds = %while.end218
  %arrayidx226 = getelementptr inbounds nuw i8, ptr %s, i64 352
  %58 = load i64, ptr %arrayidx226, align 8, !tbaa !7
  %arrayidx227 = getelementptr inbounds nuw i8, ptr %s, i64 368
  %59 = load i64, ptr %arrayidx227, align 8, !tbaa !7
  %or228 = or i64 %59, %58
  br label %if.end229

if.end229:                                        ; preds = %if.else225, %if.then221
  %storemerge423 = phi i64 [ %or228, %if.else225 ], [ %or224, %if.then221 ]
  store i64 %storemerge423, ptr %tsq, align 8, !tbaa !7
  %tobool231.not576 = icmp eq i64 %storemerge423, 0
  br i1 %tobool231.not576, label %while.end244, label %while.body232.preheader

while.body232.preheader:                          ; preds = %if.end229
  br label %while.body232

while.cond236.while.cond230thread-pre-split_crit_edge: ; preds = %while.body238
  %incdec.ptr.i528.lcssa = phi ptr [ %incdec.ptr.i528, %while.body238 ]
  br label %while.cond230thread-pre-split, !llvm.loop !20

while.cond230thread-pre-split:                    ; preds = %while.body232, %while.cond236.while.cond230thread-pre-split_crit_edge
  %moves.addr.13.lcssa = phi ptr [ %incdec.ptr.i528.lcssa, %while.cond236.while.cond230thread-pre-split_crit_edge ], [ %moves.addr.12577, %while.body232 ]
  %.pr548 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool231.not = icmp eq i64 %.pr548, 0
  br i1 %tobool231.not, label %while.end244.loopexit, label %while.body232

while.body232:                                    ; preds = %while.cond230thread-pre-split, %while.body232.preheader
  %moves.addr.12577 = phi ptr [ %moves.addr.13.lcssa, %while.cond230thread-pre-split ], [ %moves.addr.10.lcssa, %while.body232.preheader ]
  %call233 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %call234 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %s, i32 noundef %call233)
  %and235 = and i64 %call234, %targets.0
  store i64 %and235, ptr %temp, align 8, !tbaa !7
  %tobool237.not573 = icmp eq i64 %and235, 0
  br i1 %tobool237.not573, label %while.cond230thread-pre-split, label %while.body238.lr.ph, !llvm.loop !20

while.body238.lr.ph:                              ; preds = %while.body232
  %shl5.i523 = shl i32 %call233, 6
  br label %while.body238, !llvm.loop !20

while.body238:                                    ; preds = %while.body238, %while.body238.lr.ph
  %moves.addr.13574 = phi ptr [ %moves.addr.12577, %while.body238.lr.ph ], [ %incdec.ptr.i528, %while.body238 ]
  %call239 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %idxprom240 = sext i32 %call239 to i64
  %arrayidx241 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom240
  %60 = load i32, ptr %arrayidx241, align 4, !tbaa !9
  %shl1.i522 = shl i32 %60, 19
  %61 = or i32 %shl5.i523, %shl1.i522
  %or4.i525 = or i32 %61, %call239
  store i32 %or4.i525, ptr %moves.addr.13574, align 4, !tbaa !9
  %incdec.ptr.i528 = getelementptr inbounds nuw i8, ptr %moves.addr.13574, i64 4
  %.pr549 = load i64, ptr %temp, align 8, !tbaa !7
  %tobool237.not = icmp eq i64 %.pr549, 0
  br i1 %tobool237.not, label %while.cond236.while.cond230thread-pre-split_crit_edge, label %while.body238, !llvm.loop !21

while.end244.loopexit:                            ; preds = %while.cond230thread-pre-split
  %moves.addr.13.lcssa.lcssa = phi ptr [ %moves.addr.13.lcssa, %while.cond230thread-pre-split ]
  br label %while.end244

while.end244:                                     ; preds = %while.end244.loopexit, %if.end229
  %moves.addr.12.lcssa = phi ptr [ %moves.addr.10.lcssa, %if.end229 ], [ %moves.addr.13.lcssa.lcssa, %while.end244.loopexit ]
  %62 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool246.not = icmp eq i32 %62, 0
  br i1 %tobool246.not, label %if.else251, label %if.then247

if.then247:                                       ; preds = %while.end244
  %arrayidx248 = getelementptr inbounds nuw i8, ptr %s, i64 376
  %63 = load i64, ptr %arrayidx248, align 8, !tbaa !7
  %arrayidx249 = getelementptr inbounds nuw i8, ptr %s, i64 360
  %64 = load i64, ptr %arrayidx249, align 8, !tbaa !7
  %or250 = or i64 %64, %63
  br label %if.end255

if.else251:                                       ; preds = %while.end244
  %arrayidx252 = getelementptr inbounds nuw i8, ptr %s, i64 384
  %65 = load i64, ptr %arrayidx252, align 8, !tbaa !7
  %arrayidx253 = getelementptr inbounds nuw i8, ptr %s, i64 368
  %66 = load i64, ptr %arrayidx253, align 8, !tbaa !7
  %or254 = or i64 %66, %65
  br label %if.end255

if.end255:                                        ; preds = %if.else251, %if.then247
  %storemerge424 = phi i64 [ %or254, %if.else251 ], [ %or250, %if.then247 ]
  store i64 %storemerge424, ptr %tsq, align 8, !tbaa !7
  %tobool257.not582 = icmp eq i64 %storemerge424, 0
  br i1 %tobool257.not582, label %while.end270, label %while.body258.preheader

while.body258.preheader:                          ; preds = %if.end255
  br label %while.body258

while.cond262.while.cond256thread-pre-split_crit_edge: ; preds = %while.body264
  %incdec.ptr.i535.lcssa = phi ptr [ %incdec.ptr.i535, %while.body264 ]
  br label %while.cond256thread-pre-split, !llvm.loop !22

while.cond256thread-pre-split:                    ; preds = %while.body258, %while.cond262.while.cond256thread-pre-split_crit_edge
  %moves.addr.15.lcssa = phi ptr [ %incdec.ptr.i535.lcssa, %while.cond262.while.cond256thread-pre-split_crit_edge ], [ %moves.addr.14583, %while.body258 ]
  %.pr550 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool257.not = icmp eq i64 %.pr550, 0
  br i1 %tobool257.not, label %while.end270.loopexit, label %while.body258

while.body258:                                    ; preds = %while.cond256thread-pre-split, %while.body258.preheader
  %moves.addr.14583 = phi ptr [ %moves.addr.15.lcssa, %while.cond256thread-pre-split ], [ %moves.addr.12.lcssa, %while.body258.preheader ]
  %call259 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %call260 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %s, i32 noundef %call259)
  %and261 = and i64 %call260, %targets.0
  store i64 %and261, ptr %temp, align 8, !tbaa !7
  %tobool263.not579 = icmp eq i64 %and261, 0
  br i1 %tobool263.not579, label %while.cond256thread-pre-split, label %while.body264.lr.ph, !llvm.loop !22

while.body264.lr.ph:                              ; preds = %while.body258
  %shl5.i530 = shl i32 %call259, 6
  br label %while.body264, !llvm.loop !22

while.body264:                                    ; preds = %while.body264, %while.body264.lr.ph
  %moves.addr.15580 = phi ptr [ %moves.addr.14583, %while.body264.lr.ph ], [ %incdec.ptr.i535, %while.body264 ]
  %call265 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %idxprom266 = sext i32 %call265 to i64
  %arrayidx267 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom266
  %67 = load i32, ptr %arrayidx267, align 4, !tbaa !9
  %shl1.i529 = shl i32 %67, 19
  %68 = or i32 %shl5.i530, %shl1.i529
  %or4.i532 = or i32 %68, %call265
  store i32 %or4.i532, ptr %moves.addr.15580, align 4, !tbaa !9
  %incdec.ptr.i535 = getelementptr inbounds nuw i8, ptr %moves.addr.15580, i64 4
  %.pr551 = load i64, ptr %temp, align 8, !tbaa !7
  %tobool263.not = icmp eq i64 %.pr551, 0
  br i1 %tobool263.not, label %while.cond262.while.cond256thread-pre-split_crit_edge, label %while.body264, !llvm.loop !23

while.end270.loopexit:                            ; preds = %while.cond256thread-pre-split
  %moves.addr.15.lcssa.lcssa = phi ptr [ %moves.addr.15.lcssa, %while.cond256thread-pre-split ]
  br label %while.end270

while.end270:                                     ; preds = %while.end270.loopexit, %if.end255
  %moves.addr.14.lcssa = phi ptr [ %moves.addr.12.lcssa, %if.end255 ], [ %moves.addr.15.lcssa.lcssa, %while.end270.loopexit ]
  %sub.ptr.lhs.cast = ptrtoint ptr %moves.addr.14.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %moves to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 2
  %conv = trunc i64 %sub.ptr.div to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %temp) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %tsq) #3
  ret i32 %conv
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!0 = !{!1, !2, i64 460}
!1 = !{!"_ZTS7state_t", !2, i64 0, !3, i64 4, !5, i64 264, !5, i64 272, !5, i64 280, !3, i64 288, !2, i64 392, !2, i64 396, !3, i64 400, !2, i64 452, !2, i64 456, !2, i64 460, !2, i64 464, !2, i64 468, !2, i64 472, !2, i64 476, !5, i64 480, !5, i64 488, !3, i64 496, !3, i64 2544, !3, i64 2800, !3, i64 3056, !5, i64 4080, !5, i64 4088, !2, i64 4096, !3, i64 4100, !2, i64 4356, !2, i64 4360, !2, i64 4364, !2, i64 4368, !2, i64 4372, !2, i64 4376, !2, i64 4380, !2, i64 4384, !2, i64 4388, !2, i64 4392, !3, i64 4400}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"long long", !3, i64 0}
!6 = !{!1, !5, i64 272}
!7 = !{!5, !5, i64 0}
!8 = !{!1, !5, i64 264}
!9 = !{!2, !2, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!1, !2, i64 456}
!13 = distinct !{!13, !11}
!14 = !{!1, !5, i64 280}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
