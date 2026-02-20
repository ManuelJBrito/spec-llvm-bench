; ModuleID = '/tmp/tmp.v0h9Nwju2V/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/generate.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RankMask = external local_unnamed_addr global [8 x i64], align 16
@Mask = external local_unnamed_addr global [64 x i64], align 16
@KnightMoves = external local_unnamed_addr global [64 x i64], align 16
@BishopMask = external local_unnamed_addr global [64 x i64], align 16
@RookMask = external local_unnamed_addr global [64 x i64], align 16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #1

declare noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z16gen_check_blocksP7state_tPii(ptr noundef %s, ptr noundef %moves, i32 noundef %checker) local_unnamed_addr #2 {
entry:
  %tsq = alloca i64, align 8
  %temp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %tsq) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %temp) #3
  %white_to_move = getelementptr inbounds nuw i8, ptr %s, i64 460
  %0 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool.not = icmp eq i32 %0, 0
  %target.0.in.v = select i1 %tobool.not, i64 468, i64 464
  %target.0.in = getelementptr inbounds nuw i8, ptr %s, i64 %target.0.in.v
  %target.0 = load i32, ptr %target.0.in, align 4, !tbaa !6
  %call = tail call noundef i32 @_Z4ranki(i32 noundef %target.0)
  %1 = add i32 %checker, -11
  %or.cond = icmp ult i32 %1, 2
  br i1 %or.cond, label %if.then3, label %if.else4

if.then3:                                         ; preds = %entry
  %idxprom = sext i32 %target.0 to i64
  %arrayidx = getelementptr inbounds i64, ptr @BishopMask, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8, !tbaa !7
  br label %if.end13

if.else4:                                         ; preds = %entry
  %3 = add i32 %checker, -7
  %or.cond160 = icmp ult i32 %3, 2
  br i1 %or.cond160, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.else4
  %idxprom9 = sext i32 %target.0 to i64
  %arrayidx10 = getelementptr inbounds i64, ptr @RookMask, i64 %idxprom9
  %4 = load i64, ptr %arrayidx10, align 8, !tbaa !7
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.else4, %if.then3
  %TargetMask.0 = phi i64 [ %2, %if.then3 ], [ %4, %if.then8 ], [ -1, %if.else4 ]
  %All = getelementptr inbounds nuw i8, ptr %s, i64 264
  %5 = load i64, ptr %All, align 8, !tbaa !8
  %not = xor i64 %5, -1
  %and = and i64 %TargetMask.0, %not
  %6 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool15.not = icmp eq i32 %6, 0
  br i1 %tobool15.not, label %if.else47, label %if.then16

if.then16:                                        ; preds = %if.end13
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s, i64 296
  %7 = load i64, ptr %arrayidx17, align 8, !tbaa !7
  %shr = lshr i64 %7, 8
  %and20 = and i64 %shr, %not
  store i64 %and20, ptr %tsq, align 8, !tbaa !7
  %8 = load i64, ptr @RankMask, align 16, !tbaa !7
  %not21 = xor i64 %8, -1
  %and22 = and i64 %and20, %not21
  store i64 %and22, ptr %tsq, align 8, !tbaa !7
  %9 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 48), align 16, !tbaa !7
  %and24 = and i64 %9, %7
  %shr25 = lshr i64 %and24, 16
  %shr30 = lshr i64 %5, 8
  %10 = or i64 %shr30, %5
  %11 = xor i64 %10, -1
  %and32 = and i64 %shr25, %11
  store i64 %and32, ptr %temp, align 8, !tbaa !7
  %or = or i64 %and32, %and22
  %and33 = and i64 %or, %TargetMask.0
  store i64 %and33, ptr %tsq, align 8, !tbaa !7
  %tobool34.not254 = icmp eq i64 %and33, 0
  br i1 %tobool34.not254, label %if.end82, label %while.body.preheader

while.body.preheader:                             ; preds = %if.then16
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader
  %moves.addr.0255 = phi ptr [ %incdec.ptr.i, %while.body ], [ %moves, %while.body.preheader ]
  %call35 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %12 = load i64, ptr %arrayidx17, align 8, !tbaa !7
  %add = add nsw i32 %call35, 8
  %idxprom37 = sext i32 %add to i64
  %arrayidx38 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom37
  %13 = load i64, ptr %arrayidx38, align 8, !tbaa !7
  %and39 = and i64 %13, %12
  %tobool40.not = icmp eq i64 %and39, 0
  %add44 = add nsw i32 %call35, 16
  %from.0 = select i1 %tobool40.not, i32 %add44, i32 %add
  %shl1.i = shl i32 %from.0, 6
  %or.i = or i32 %call35, %shl1.i
  %or3.i = or i32 %or.i, 6815744
  store i32 %or3.i, ptr %moves.addr.0255, align 4, !tbaa !6
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %moves.addr.0255, i64 4
  %.pr = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool34.not = icmp eq i64 %.pr, 0
  br i1 %tobool34.not, label %if.end82.loopexit277, label %while.body, !llvm.loop !9

if.else47:                                        ; preds = %if.end13
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %s, i64 304
  %14 = load i64, ptr %arrayidx48, align 8, !tbaa !7
  %shl = shl i64 %14, 8
  %and51 = and i64 %shl, %not
  store i64 %and51, ptr %tsq, align 8, !tbaa !7
  %15 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 56), align 8, !tbaa !7
  %not52 = xor i64 %15, -1
  %and53 = and i64 %and51, %not52
  store i64 %and53, ptr %tsq, align 8, !tbaa !7
  %16 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 8), align 8, !tbaa !7
  %and55 = and i64 %16, %14
  %shl56 = shl i64 %and55, 16
  %shl61 = shl i64 %5, 8
  %17 = or i64 %shl61, %5
  %18 = xor i64 %17, -1
  %and63 = and i64 %shl56, %18
  store i64 %and63, ptr %temp, align 8, !tbaa !7
  %or64 = or i64 %and63, %and53
  %and65 = and i64 %or64, %TargetMask.0
  store i64 %and65, ptr %tsq, align 8, !tbaa !7
  %tobool67.not256 = icmp eq i64 %and65, 0
  br i1 %tobool67.not256, label %if.end82, label %while.body68.preheader

while.body68.preheader:                           ; preds = %if.else47
  br label %while.body68

while.body68:                                     ; preds = %while.body68, %while.body68.preheader
  %moves.addr.1257 = phi ptr [ %incdec.ptr.i233, %while.body68 ], [ %moves, %while.body68.preheader ]
  %call69 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %19 = load i64, ptr %arrayidx48, align 8, !tbaa !7
  %sub = add nsw i32 %call69, -8
  %idxprom71 = sext i32 %sub to i64
  %arrayidx72 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom71
  %20 = load i64, ptr %arrayidx72, align 8, !tbaa !7
  %and73 = and i64 %20, %19
  %tobool74.not = icmp eq i64 %and73, 0
  %sub78 = add i32 %call69, 67108848
  %from.1 = select i1 %tobool74.not, i32 %sub78, i32 %sub
  %shl1.i230 = shl i32 %from.1, 6
  %or.i231 = or i32 %call69, %shl1.i230
  %or3.i232 = or i32 %or.i231, 6815744
  store i32 %or3.i232, ptr %moves.addr.1257, align 4, !tbaa !6
  %incdec.ptr.i233 = getelementptr inbounds nuw i8, ptr %moves.addr.1257, i64 4
  %.pr246 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool67.not = icmp eq i64 %.pr246, 0
  br i1 %tobool67.not, label %if.end82.loopexit, label %while.body68, !llvm.loop !11

if.end82.loopexit:                                ; preds = %while.body68
  %incdec.ptr.i233.lcssa = phi ptr [ %incdec.ptr.i233, %while.body68 ]
  br label %if.end82

if.end82.loopexit277:                             ; preds = %while.body
  %incdec.ptr.i.lcssa = phi ptr [ %incdec.ptr.i, %while.body ]
  br label %if.end82

if.end82:                                         ; preds = %if.end82.loopexit277, %if.end82.loopexit, %if.else47, %if.then16
  %moves.addr.2 = phi ptr [ %moves, %if.else47 ], [ %moves, %if.then16 ], [ %incdec.ptr.i233.lcssa, %if.end82.loopexit ], [ %incdec.ptr.i.lcssa, %if.end82.loopexit277 ]
  %21 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool84.not = icmp eq i32 %21, 0
  %storemerge.in.v = select i1 %tobool84.not, i64 320, i64 312
  %storemerge.in = getelementptr inbounds nuw i8, ptr %s, i64 %storemerge.in.v
  %storemerge = load i64, ptr %storemerge.in, align 8, !tbaa !7
  store i64 %storemerge, ptr %tsq, align 8, !tbaa !7
  %tobool91.not262 = icmp eq i64 %storemerge, 0
  br i1 %tobool91.not262, label %while.end111, label %while.body92.preheader

while.body92.preheader:                           ; preds = %if.end82
  br label %while.body92

while.cond105.while.cond90thread-pre-split_crit_edge: ; preds = %while.body107
  %incdec.ptr.i237.lcssa = phi ptr [ %incdec.ptr.i237, %while.body107 ]
  br label %while.cond90thread-pre-split, !llvm.loop !12

while.cond90thread-pre-split:                     ; preds = %while.body92, %while.cond105.while.cond90thread-pre-split_crit_edge
  %moves.addr.4.lcssa = phi ptr [ %incdec.ptr.i237.lcssa, %while.cond105.while.cond90thread-pre-split_crit_edge ], [ %moves.addr.3263, %while.body92 ]
  %.pr247 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool91.not = icmp eq i64 %.pr247, 0
  br i1 %tobool91.not, label %while.end111.loopexit, label %while.body92

while.body92:                                     ; preds = %while.cond90thread-pre-split, %while.body92.preheader
  %moves.addr.3263 = phi ptr [ %moves.addr.4.lcssa, %while.cond90thread-pre-split ], [ %moves.addr.2, %while.body92.preheader ]
  %call93 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %idxprom101.pn = sext i32 %call93 to i64
  %.pn.in = getelementptr inbounds i64, ptr @KnightMoves, i64 %idxprom101.pn
  %.pn = load i64, ptr %.pn.in, align 8, !tbaa !7
  %storemerge229 = and i64 %.pn, %and
  store i64 %storemerge229, ptr %temp, align 8, !tbaa !7
  %tobool106.not259 = icmp eq i64 %storemerge229, 0
  br i1 %tobool106.not259, label %while.cond90thread-pre-split, label %while.body107.lr.ph, !llvm.loop !12

while.body107.lr.ph:                              ; preds = %while.body92
  %shl1.i234 = shl i32 %call93, 6
  br label %while.body107, !llvm.loop !12

while.body107:                                    ; preds = %while.body107, %while.body107.lr.ph
  %moves.addr.4260 = phi ptr [ %moves.addr.3263, %while.body107.lr.ph ], [ %incdec.ptr.i237, %while.body107 ]
  %call108 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %or.i235 = or i32 %shl1.i234, %call108
  %or3.i236 = or i32 %or.i235, 6815744
  store i32 %or3.i236, ptr %moves.addr.4260, align 4, !tbaa !6
  %incdec.ptr.i237 = getelementptr inbounds nuw i8, ptr %moves.addr.4260, i64 4
  %.pr248 = load i64, ptr %temp, align 8, !tbaa !7
  %tobool106.not = icmp eq i64 %.pr248, 0
  br i1 %tobool106.not, label %while.cond105.while.cond90thread-pre-split_crit_edge, label %while.body107, !llvm.loop !13

while.end111.loopexit:                            ; preds = %while.cond90thread-pre-split
  %moves.addr.4.lcssa.lcssa = phi ptr [ %moves.addr.4.lcssa, %while.cond90thread-pre-split ]
  br label %while.end111

while.end111:                                     ; preds = %while.end111.loopexit, %if.end82
  %moves.addr.3.lcssa = phi ptr [ %moves.addr.2, %if.end82 ], [ %moves.addr.4.lcssa.lcssa, %while.end111.loopexit ]
  %22 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool113.not = icmp eq i32 %22, 0
  br i1 %tobool113.not, label %if.else118, label %if.then114

if.then114:                                       ; preds = %while.end111
  %arrayidx115 = getelementptr inbounds nuw i8, ptr %s, i64 344
  %23 = load i64, ptr %arrayidx115, align 8, !tbaa !7
  %arrayidx116 = getelementptr inbounds nuw i8, ptr %s, i64 360
  %24 = load i64, ptr %arrayidx116, align 8, !tbaa !7
  %or117 = or i64 %24, %23
  br label %if.end122

if.else118:                                       ; preds = %while.end111
  %arrayidx119 = getelementptr inbounds nuw i8, ptr %s, i64 352
  %25 = load i64, ptr %arrayidx119, align 8, !tbaa !7
  %arrayidx120 = getelementptr inbounds nuw i8, ptr %s, i64 368
  %26 = load i64, ptr %arrayidx120, align 8, !tbaa !7
  %or121 = or i64 %26, %25
  br label %if.end122

if.end122:                                        ; preds = %if.else118, %if.then114
  %storemerge227 = phi i64 [ %or121, %if.else118 ], [ %or117, %if.then114 ]
  store i64 %storemerge227, ptr %tsq, align 8, !tbaa !7
  %tobool124.not268 = icmp eq i64 %storemerge227, 0
  br i1 %tobool124.not268, label %while.end135, label %while.body125.preheader

while.body125.preheader:                          ; preds = %if.end122
  br label %while.body125

while.cond129.while.cond123thread-pre-split_crit_edge: ; preds = %while.body131
  %incdec.ptr.i241.lcssa = phi ptr [ %incdec.ptr.i241, %while.body131 ]
  br label %while.cond123thread-pre-split, !llvm.loop !14

while.cond123thread-pre-split:                    ; preds = %while.body125, %while.cond129.while.cond123thread-pre-split_crit_edge
  %moves.addr.6.lcssa = phi ptr [ %incdec.ptr.i241.lcssa, %while.cond129.while.cond123thread-pre-split_crit_edge ], [ %moves.addr.5269, %while.body125 ]
  %.pr249 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool124.not = icmp eq i64 %.pr249, 0
  br i1 %tobool124.not, label %while.end135.loopexit, label %while.body125

while.body125:                                    ; preds = %while.cond123thread-pre-split, %while.body125.preheader
  %moves.addr.5269 = phi ptr [ %moves.addr.6.lcssa, %while.cond123thread-pre-split ], [ %moves.addr.3.lcssa, %while.body125.preheader ]
  %call126 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %call127 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %s, i32 noundef %call126)
  %and128 = and i64 %call127, %and
  store i64 %and128, ptr %temp, align 8, !tbaa !7
  %tobool130.not265 = icmp eq i64 %and128, 0
  br i1 %tobool130.not265, label %while.cond123thread-pre-split, label %while.body131.lr.ph, !llvm.loop !14

while.body131.lr.ph:                              ; preds = %while.body125
  %shl1.i238 = shl i32 %call126, 6
  br label %while.body131, !llvm.loop !14

while.body131:                                    ; preds = %while.body131, %while.body131.lr.ph
  %moves.addr.6266 = phi ptr [ %moves.addr.5269, %while.body131.lr.ph ], [ %incdec.ptr.i241, %while.body131 ]
  %call132 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %or.i239 = or i32 %shl1.i238, %call132
  %or3.i240 = or i32 %or.i239, 6815744
  store i32 %or3.i240, ptr %moves.addr.6266, align 4, !tbaa !6
  %incdec.ptr.i241 = getelementptr inbounds nuw i8, ptr %moves.addr.6266, i64 4
  %.pr250 = load i64, ptr %temp, align 8, !tbaa !7
  %tobool130.not = icmp eq i64 %.pr250, 0
  br i1 %tobool130.not, label %while.cond129.while.cond123thread-pre-split_crit_edge, label %while.body131, !llvm.loop !15

while.end135.loopexit:                            ; preds = %while.cond123thread-pre-split
  %moves.addr.6.lcssa.lcssa = phi ptr [ %moves.addr.6.lcssa, %while.cond123thread-pre-split ]
  br label %while.end135

while.end135:                                     ; preds = %while.end135.loopexit, %if.end122
  %moves.addr.5.lcssa = phi ptr [ %moves.addr.3.lcssa, %if.end122 ], [ %moves.addr.6.lcssa.lcssa, %while.end135.loopexit ]
  %27 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool137.not = icmp eq i32 %27, 0
  br i1 %tobool137.not, label %if.else142, label %if.then138

if.then138:                                       ; preds = %while.end135
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %s, i64 376
  %28 = load i64, ptr %arrayidx139, align 8, !tbaa !7
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %s, i64 360
  %29 = load i64, ptr %arrayidx140, align 8, !tbaa !7
  %or141 = or i64 %29, %28
  br label %if.end146

if.else142:                                       ; preds = %while.end135
  %arrayidx143 = getelementptr inbounds nuw i8, ptr %s, i64 384
  %30 = load i64, ptr %arrayidx143, align 8, !tbaa !7
  %arrayidx144 = getelementptr inbounds nuw i8, ptr %s, i64 368
  %31 = load i64, ptr %arrayidx144, align 8, !tbaa !7
  %or145 = or i64 %31, %30
  br label %if.end146

if.end146:                                        ; preds = %if.else142, %if.then138
  %storemerge228 = phi i64 [ %or145, %if.else142 ], [ %or141, %if.then138 ]
  store i64 %storemerge228, ptr %tsq, align 8, !tbaa !7
  %tobool148.not274 = icmp eq i64 %storemerge228, 0
  br i1 %tobool148.not274, label %while.end159, label %while.body149.preheader

while.body149.preheader:                          ; preds = %if.end146
  br label %while.body149

while.cond153.while.cond147thread-pre-split_crit_edge: ; preds = %while.body155
  %incdec.ptr.i245.lcssa = phi ptr [ %incdec.ptr.i245, %while.body155 ]
  br label %while.cond147thread-pre-split, !llvm.loop !16

while.cond147thread-pre-split:                    ; preds = %while.body149, %while.cond153.while.cond147thread-pre-split_crit_edge
  %moves.addr.8.lcssa = phi ptr [ %incdec.ptr.i245.lcssa, %while.cond153.while.cond147thread-pre-split_crit_edge ], [ %moves.addr.7275, %while.body149 ]
  %.pr251 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool148.not = icmp eq i64 %.pr251, 0
  br i1 %tobool148.not, label %while.end159.loopexit, label %while.body149

while.body149:                                    ; preds = %while.cond147thread-pre-split, %while.body149.preheader
  %moves.addr.7275 = phi ptr [ %moves.addr.8.lcssa, %while.cond147thread-pre-split ], [ %moves.addr.5.lcssa, %while.body149.preheader ]
  %call150 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %call151 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %s, i32 noundef %call150)
  %and152 = and i64 %call151, %and
  store i64 %and152, ptr %temp, align 8, !tbaa !7
  %tobool154.not271 = icmp eq i64 %and152, 0
  br i1 %tobool154.not271, label %while.cond147thread-pre-split, label %while.body155.lr.ph, !llvm.loop !16

while.body155.lr.ph:                              ; preds = %while.body149
  %shl1.i242 = shl i32 %call150, 6
  br label %while.body155, !llvm.loop !16

while.body155:                                    ; preds = %while.body155, %while.body155.lr.ph
  %moves.addr.8272 = phi ptr [ %moves.addr.7275, %while.body155.lr.ph ], [ %incdec.ptr.i245, %while.body155 ]
  %call156 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %or.i243 = or i32 %shl1.i242, %call156
  %or3.i244 = or i32 %or.i243, 6815744
  store i32 %or3.i244, ptr %moves.addr.8272, align 4, !tbaa !6
  %incdec.ptr.i245 = getelementptr inbounds nuw i8, ptr %moves.addr.8272, i64 4
  %.pr252 = load i64, ptr %temp, align 8, !tbaa !7
  %tobool154.not = icmp eq i64 %.pr252, 0
  br i1 %tobool154.not, label %while.cond153.while.cond147thread-pre-split_crit_edge, label %while.body155, !llvm.loop !17

while.end159.loopexit:                            ; preds = %while.cond147thread-pre-split
  %moves.addr.8.lcssa.lcssa = phi ptr [ %moves.addr.8.lcssa, %while.cond147thread-pre-split ]
  br label %while.end159

while.end159:                                     ; preds = %while.end159.loopexit, %if.end146
  %moves.addr.7.lcssa = phi ptr [ %moves.addr.5.lcssa, %if.end146 ], [ %moves.addr.8.lcssa.lcssa, %while.end159.loopexit ]
  %sub.ptr.lhs.cast = ptrtoint ptr %moves.addr.7.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %moves to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 2
  %conv = trunc i64 %sub.ptr.div to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %temp) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %tsq) #3
  ret i32 %conv
}

declare noundef i32 @_Z4ranki(i32 noundef) local_unnamed_addr #1

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
!6 = !{!2, !2, i64 0}
!7 = !{!5, !5, i64 0}
!8 = !{!1, !5, i64 264}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
