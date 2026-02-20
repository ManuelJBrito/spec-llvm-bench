; ModuleID = '/tmp/tmp.gTfLyO01Yl/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/neval.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FileMask = external local_unnamed_addr global [8 x i64], align 16
@KnightMoves = external local_unnamed_addr global [64 x i64], align 16
@KingFilesMask = external local_unnamed_addr global [8 x i64], align 16
@RankMask = external local_unnamed_addr global [8 x i64], align 16
@KingPressureMask = external local_unnamed_addr global [64 x i64], align 16
@KingPressureMask1 = external local_unnamed_addr global [64 x i64], align 16
@_ZL8w_passer = external hidden unnamed_addr constant [6 x i32], align 16
@_ZL23w_passer_pawn_supported = external hidden unnamed_addr constant [6 x i32], align 16
@_ZL23w_passer_king_supported = external hidden unnamed_addr constant [6 x i32], align 16
@Mask = external local_unnamed_addr global [64 x i64], align 16
@_ZL13w_passer_free = external hidden unnamed_addr constant [6 x i32], align 16
@_ZL18w_passer_very_free = external hidden unnamed_addr constant [6 x i32], align 16
@_ZL16w_passer_blocked = external hidden unnamed_addr constant [6 x i32], align 16
@FileDownMask = external local_unnamed_addr global [64 x i64], align 16
@FileUpMask = external local_unnamed_addr global [64 x i64], align 16
@WhiteSqMask = external local_unnamed_addr global i64, align 8
@BlackSqMask = external local_unnamed_addr global i64, align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5fevalP7state_tiP12t_eval_comps(ptr noundef %s, i32 noundef %phase_scale, ptr noundef %ec) local_unnamed_addr #0 {
entry:
  %temp.i70 = alloca i64, align 8
  %temp.i = alloca i64, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %temp.i) #4
  %WhitePieces.i = getelementptr inbounds nuw i8, ptr %s, i64 280
  %0 = load i64, ptr %WhitePieces.i, align 8, !tbaa !0
  %BlackPieces.i = getelementptr inbounds nuw i8, ptr %s, i64 272
  %1 = load i64, ptr %BlackPieces.i, align 8, !tbaa !6
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %s, i64 296
  %2 = load i64, ptr %arrayidx.i, align 8, !tbaa !7
  %3 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 56), align 8, !tbaa !7
  %not3.i = xor i64 %3, -1
  %and.i = and i64 %2, %not3.i
  %shr.i = lshr i64 %and.i, 7
  %4 = load i64, ptr @FileMask, align 16, !tbaa !7
  %not5.i = xor i64 %4, -1
  %and6.i = and i64 %2, %not5.i
  %shr7.i = lshr i64 %and6.i, 9
  %or.i = or i64 %shr7.i, %shr.i
  %arrayidx9.i = getelementptr inbounds nuw i8, ptr %s, i64 304
  %5 = load i64, ptr %arrayidx9.i, align 8, !tbaa !7
  %and11.i = and i64 %5, %not3.i
  %shl.i = shl i64 %and11.i, 9
  %and14.i = and i64 %5, %not5.i
  %shl15.i = shl i64 %and14.i, 7
  %or16.i = or i64 %shl15.i, %shl.i
  %arrayidx18.i = getelementptr inbounds nuw i8, ptr %s, i64 376
  %6 = load i64, ptr %arrayidx18.i, align 8, !tbaa !7
  store i64 %6, ptr %temp.i, align 8, !tbaa !7
  %tobool.not8.i = icmp eq i64 %6, 0
  br i1 %tobool.not8.i, label %while.end.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %entry
  %arrayidx19.i = getelementptr inbounds nuw i8, ptr %s, i64 360
  %arrayidx20.i = getelementptr inbounds nuw i8, ptr %s, i64 312
  %All.i = getelementptr inbounds nuw i8, ptr %s, i64 264
  %7 = or i64 %or16.i, %0
  %8 = xor i64 %7, -1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %w_counter.09.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %while.body.i ]
  %call.i = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp.i)
  %9 = load i64, ptr %arrayidx19.i, align 8, !tbaa !7
  %10 = load i64, ptr %arrayidx20.i, align 8, !tbaa !7
  %or21.i = or i64 %10, %9
  %11 = load i64, ptr %All.i, align 8, !tbaa !8
  %xor.i = xor i64 %11, %or21.i
  store i64 %xor.i, ptr %All.i, align 8, !tbaa !8
  %call22.i = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef nonnull %s, i32 noundef %call.i)
  %12 = load i64, ptr %arrayidx.i, align 8, !tbaa !7
  %and24.i = and i64 %12, %call22.i
  %and26.i = and i64 %call22.i, %8
  %13 = load i64, ptr %arrayidx19.i, align 8, !tbaa !7
  %14 = load i64, ptr %arrayidx20.i, align 8, !tbaa !7
  %or29.i = or i64 %14, %13
  %15 = load i64, ptr %All.i, align 8, !tbaa !8
  %xor31.i = xor i64 %15, %or29.i
  store i64 %xor31.i, ptr %All.i, align 8, !tbaa !8
  %call32.i = call noundef i32 @_Z13ThickPopCounty(i64 noundef %and26.i)
  %call33.i = call noundef i32 @_Z8PopCounty(i64 noundef %and24.i)
  %sub.i = add i32 %call32.i, %w_counter.09.i
  %add.i = sub i32 %sub.i, %call33.i
  %.pr.i = load i64, ptr %temp.i, align 8, !tbaa !7
  %tobool.not.i = icmp eq i64 %.pr.i, 0
  br i1 %tobool.not.i, label %while.end.i.loopexit, label %while.body.i, !llvm.loop !9

while.end.i.loopexit:                             ; preds = %while.body.i
  %call22.i.lcssa = phi i64 [ %call22.i, %while.body.i ]
  %add.i.lcssa = phi i32 [ %add.i, %while.body.i ]
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %entry
  %attack_info.sroa.11.0 = phi i64 [ 0, %entry ], [ %call22.i.lcssa, %while.end.i.loopexit ]
  %w_counter.0.lcssa.i = phi i32 [ 0, %entry ], [ %add.i.lcssa, %while.end.i.loopexit ]
  %arrayidx34.i = getelementptr inbounds nuw i8, ptr %s, i64 384
  %16 = load i64, ptr %arrayidx34.i, align 8, !tbaa !7
  store i64 %16, ptr %temp.i, align 8, !tbaa !7
  %tobool36.not10.i = icmp eq i64 %16, 0
  br i1 %tobool36.not10.i, label %while.end59.i, label %while.body37.lr.ph.i

while.body37.lr.ph.i:                             ; preds = %while.end.i
  %arrayidx39.i = getelementptr inbounds nuw i8, ptr %s, i64 368
  %arrayidx40.i = getelementptr inbounds nuw i8, ptr %s, i64 320
  %All42.i = getelementptr inbounds nuw i8, ptr %s, i64 264
  %17 = or i64 %or.i, %1
  %18 = xor i64 %17, -1
  br label %while.body37.i

while.body37.i:                                   ; preds = %while.body37.i, %while.body37.lr.ph.i
  %b_counter.011.i = phi i32 [ 0, %while.body37.lr.ph.i ], [ %sub58.i, %while.body37.i ]
  %call38.i = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp.i)
  %19 = load i64, ptr %arrayidx39.i, align 8, !tbaa !7
  %20 = load i64, ptr %arrayidx40.i, align 8, !tbaa !7
  %or41.i = or i64 %20, %19
  %21 = load i64, ptr %All42.i, align 8, !tbaa !8
  %xor43.i = xor i64 %21, %or41.i
  store i64 %xor43.i, ptr %All42.i, align 8, !tbaa !8
  %call44.i = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef nonnull %s, i32 noundef %call38.i)
  %22 = load i64, ptr %arrayidx9.i, align 8, !tbaa !7
  %and46.i = and i64 %22, %call44.i
  %and48.i = and i64 %call44.i, %18
  %23 = load i64, ptr %arrayidx39.i, align 8, !tbaa !7
  %24 = load i64, ptr %arrayidx40.i, align 8, !tbaa !7
  %or51.i = or i64 %24, %23
  %25 = load i64, ptr %All42.i, align 8, !tbaa !8
  %xor53.i = xor i64 %25, %or51.i
  store i64 %xor53.i, ptr %All42.i, align 8, !tbaa !8
  %call55.i = call noundef i32 @_Z13ThickPopCounty(i64 noundef %and48.i)
  %call56.i = call noundef i32 @_Z8PopCounty(i64 noundef %and46.i)
  %sub57.neg.i = sub i32 %b_counter.011.i, %call55.i
  %sub58.i = add i32 %sub57.neg.i, %call56.i
  %.pr1.i = load i64, ptr %temp.i, align 8, !tbaa !7
  %tobool36.not.i = icmp eq i64 %.pr1.i, 0
  br i1 %tobool36.not.i, label %while.end59.i.loopexit, label %while.body37.i, !llvm.loop !11

while.end59.i.loopexit:                           ; preds = %while.body37.i
  %call44.i.lcssa = phi i64 [ %call44.i, %while.body37.i ]
  %sub58.i.lcssa = phi i32 [ %sub58.i, %while.body37.i ]
  br label %while.end59.i

while.end59.i:                                    ; preds = %while.end59.i.loopexit, %while.end.i
  %attack_info.sroa.15.0 = phi i64 [ 0, %while.end.i ], [ %call44.i.lcssa, %while.end59.i.loopexit ]
  %b_counter.0.lcssa.i = phi i32 [ 0, %while.end.i ], [ %sub58.i.lcssa, %while.end59.i.loopexit ]
  %arrayidx60.i = getelementptr inbounds nuw i8, ptr %s, i64 344
  %26 = load i64, ptr %arrayidx60.i, align 8, !tbaa !7
  store i64 %26, ptr %temp.i, align 8, !tbaa !7
  %tobool62.not13.i = icmp eq i64 %26, 0
  br i1 %tobool62.not13.i, label %while.end127.i, label %while.body63.lr.ph.i

while.body63.lr.ph.i:                             ; preds = %while.end59.i
  %arrayidx65.i = getelementptr inbounds nuw i8, ptr %s, i64 360
  %arrayidx66.i = getelementptr inbounds nuw i8, ptr %s, i64 312
  %All68.i = getelementptr inbounds nuw i8, ptr %s, i64 264
  %27 = or i64 %or16.i, %0
  %28 = xor i64 %27, -1
  %arrayidx120.i = getelementptr inbounds nuw i8, ptr %s, i64 404
  br label %while.body63.i

while.body63.i:                                   ; preds = %if.end126.i, %while.body63.lr.ph.i
  %score.015.i = phi i32 [ 0, %while.body63.lr.ph.i ], [ %score.2.i, %if.end126.i ]
  %w_counter.114.i = phi i32 [ %w_counter.0.lcssa.i, %while.body63.lr.ph.i ], [ %add83.i, %if.end126.i ]
  %call64.i = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp.i)
  %29 = load i64, ptr %arrayidx65.i, align 8, !tbaa !7
  %30 = load i64, ptr %arrayidx66.i, align 8, !tbaa !7
  %or67.i = or i64 %30, %29
  %31 = load i64, ptr %All68.i, align 8, !tbaa !8
  %xor69.i = xor i64 %31, %or67.i
  store i64 %xor69.i, ptr %All68.i, align 8, !tbaa !8
  %call70.i = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef nonnull %s, i32 noundef %call64.i)
  %32 = load i64, ptr %arrayidx.i, align 8, !tbaa !7
  %and72.i = and i64 %32, %call70.i
  %and74.i = and i64 %call70.i, %28
  %33 = load i64, ptr %arrayidx65.i, align 8, !tbaa !7
  %34 = load i64, ptr %arrayidx66.i, align 8, !tbaa !7
  %or77.i = or i64 %34, %33
  %35 = load i64, ptr %All68.i, align 8, !tbaa !8
  %xor79.i = xor i64 %35, %or77.i
  store i64 %xor79.i, ptr %All68.i, align 8, !tbaa !8
  %call80.i = call noundef i32 @_Z13ThickPopCounty(i64 noundef %and74.i)
  %call81.i = call noundef i32 @_Z8PopCounty(i64 noundef %and72.i)
  %sub82.i = add i32 %call80.i, %w_counter.114.i
  %add83.i = sub i32 %sub82.i, %call81.i
  %and84.i = and i32 %call64.i, 7
  %idxprom.i = zext nneg i32 %and84.i to i64
  %arrayidx85.i = getelementptr inbounds nuw i64, ptr @FileMask, i64 %idxprom.i
  %36 = load i64, ptr %arrayidx85.i, align 8, !tbaa !7
  %37 = load i64, ptr %arrayidx.i, align 8, !tbaa !7
  %and87.i = and i64 %37, %36
  %tobool88.not.i = icmp eq i64 %and87.i, 0
  br i1 %tobool88.not.i, label %if.then.i, label %if.end126.i

if.then.i:                                        ; preds = %while.body63.i
  %38 = load i64, ptr %arrayidx60.i, align 8, !tbaa !7
  %and93.i = and i64 %38, %36
  %call94.i = call noundef i32 @_Z8PopCounty(i64 noundef %and93.i)
  %39 = load i64, ptr %arrayidx85.i, align 8, !tbaa !7
  %40 = load i64, ptr %arrayidx9.i, align 8, !tbaa !7
  %and99.i = and i64 %40, %39
  %tobool100.not.i = icmp eq i64 %and99.i, 0
  %cmp.i = icmp sgt i32 %call94.i, 1
  %41 = load i32, ptr %arrayidx120.i, align 4, !tbaa !12
  br i1 %tobool100.not.i, label %if.then101.i, label %if.else110.i

if.then101.i:                                     ; preds = %if.then.i
  br i1 %cmp.i, label %if.then102.i, label %if.else.i

if.then102.i:                                     ; preds = %if.then101.i
  %add104.i = add nsw i32 %41, 12
  br label %if.end125.i

if.else.i:                                        ; preds = %if.then101.i
  %add108.i = add nsw i32 %41, 8
  br label %if.end125.i

if.else110.i:                                     ; preds = %if.then.i
  %shr115.i = ashr i32 %41, 1
  br i1 %cmp.i, label %if.then112.i, label %if.else118.i

if.then112.i:                                     ; preds = %if.else110.i
  %add116.i = add nsw i32 %shr115.i, 8
  br label %if.end125.i

if.else118.i:                                     ; preds = %if.else110.i
  %add122.i = add nsw i32 %shr115.i, 4
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.else118.i, %if.then112.i, %if.else.i, %if.then102.i
  %add116.pn.i = phi i32 [ %add116.i, %if.then112.i ], [ %add122.i, %if.else118.i ], [ %add104.i, %if.then102.i ], [ %add108.i, %if.else.i ]
  %score.1.i = add nsw i32 %add116.pn.i, %score.015.i
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.end125.i, %while.body63.i
  %score.2.i = phi i32 [ %score.015.i, %while.body63.i ], [ %score.1.i, %if.end125.i ]
  %.pr2.i = load i64, ptr %temp.i, align 8, !tbaa !7
  %tobool62.not.i = icmp eq i64 %.pr2.i, 0
  br i1 %tobool62.not.i, label %while.end127.i.loopexit, label %while.body63.i, !llvm.loop !13

while.end127.i.loopexit:                          ; preds = %if.end126.i
  %score.2.i.lcssa = phi i32 [ %score.2.i, %if.end126.i ]
  %call70.i.lcssa = phi i64 [ %call70.i, %if.end126.i ]
  %add83.i.lcssa = phi i32 [ %add83.i, %if.end126.i ]
  br label %while.end127.i

while.end127.i:                                   ; preds = %while.end127.i.loopexit, %while.end59.i
  %attack_info.sroa.27.0 = phi i64 [ 0, %while.end59.i ], [ %call70.i.lcssa, %while.end127.i.loopexit ]
  %w_counter.1.lcssa.i = phi i32 [ %w_counter.0.lcssa.i, %while.end59.i ], [ %add83.i.lcssa, %while.end127.i.loopexit ]
  %score.0.lcssa.i = phi i32 [ 0, %while.end59.i ], [ %score.2.i.lcssa, %while.end127.i.loopexit ]
  %arrayidx128.i = getelementptr inbounds nuw i8, ptr %s, i64 352
  %42 = load i64, ptr %arrayidx128.i, align 8, !tbaa !7
  store i64 %42, ptr %temp.i, align 8, !tbaa !7
  %tobool130.not18.i = icmp eq i64 %42, 0
  br i1 %tobool130.not18.i, label %while.end202.i, label %while.body131.lr.ph.i

while.body131.lr.ph.i:                            ; preds = %while.end127.i
  %arrayidx133.i = getelementptr inbounds nuw i8, ptr %s, i64 368
  %arrayidx134.i = getelementptr inbounds nuw i8, ptr %s, i64 320
  %All136.i = getelementptr inbounds nuw i8, ptr %s, i64 264
  %43 = or i64 %or.i, %1
  %44 = xor i64 %43, -1
  %arrayidx195.i = getelementptr inbounds nuw i8, ptr %s, i64 408
  br label %while.body131.i

while.body131.i:                                  ; preds = %if.end201.i, %while.body131.lr.ph.i
  %score.320.i = phi i32 [ %score.0.lcssa.i, %while.body131.lr.ph.i ], [ %score.5.i, %if.end201.i ]
  %b_counter.119.i = phi i32 [ %b_counter.0.lcssa.i, %while.body131.lr.ph.i ], [ %sub151.i, %if.end201.i ]
  %call132.i = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp.i)
  %45 = load i64, ptr %arrayidx133.i, align 8, !tbaa !7
  %46 = load i64, ptr %arrayidx134.i, align 8, !tbaa !7
  %or135.i = or i64 %46, %45
  %47 = load i64, ptr %All136.i, align 8, !tbaa !8
  %xor137.i = xor i64 %47, %or135.i
  store i64 %xor137.i, ptr %All136.i, align 8, !tbaa !8
  %call138.i = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef nonnull %s, i32 noundef %call132.i)
  %48 = load i64, ptr %arrayidx9.i, align 8, !tbaa !7
  %and140.i = and i64 %48, %call138.i
  %and142.i = and i64 %call138.i, %44
  %49 = load i64, ptr %arrayidx133.i, align 8, !tbaa !7
  %50 = load i64, ptr %arrayidx134.i, align 8, !tbaa !7
  %or145.i = or i64 %50, %49
  %51 = load i64, ptr %All136.i, align 8, !tbaa !8
  %xor147.i = xor i64 %51, %or145.i
  store i64 %xor147.i, ptr %All136.i, align 8, !tbaa !8
  %call148.i = call noundef i32 @_Z13ThickPopCounty(i64 noundef %and142.i)
  %call149.i = call noundef i32 @_Z8PopCounty(i64 noundef %and140.i)
  %sub150.neg.i = sub i32 %b_counter.119.i, %call148.i
  %sub151.i = add i32 %sub150.neg.i, %call149.i
  %and152.i = and i32 %call132.i, 7
  %idxprom153.i = zext nneg i32 %and152.i to i64
  %arrayidx154.i = getelementptr inbounds nuw i64, ptr @FileMask, i64 %idxprom153.i
  %52 = load i64, ptr %arrayidx154.i, align 8, !tbaa !7
  %53 = load i64, ptr %arrayidx9.i, align 8, !tbaa !7
  %and156.i = and i64 %53, %52
  %tobool157.not.i = icmp eq i64 %and156.i, 0
  br i1 %tobool157.not.i, label %if.then158.i, label %if.end201.i

if.then158.i:                                     ; preds = %while.body131.i
  %54 = load i64, ptr %arrayidx128.i, align 8, !tbaa !7
  %and164.i = and i64 %54, %52
  %call165.i = call noundef i32 @_Z8PopCounty(i64 noundef %and164.i)
  %55 = load i64, ptr %arrayidx154.i, align 8, !tbaa !7
  %56 = load i64, ptr %arrayidx.i, align 8, !tbaa !7
  %and170.i = and i64 %56, %55
  %tobool171.not.i = icmp eq i64 %and170.i, 0
  %cmp173.i = icmp sgt i32 %call165.i, 1
  %57 = load i32, ptr %arrayidx195.i, align 8, !tbaa !12
  br i1 %tobool171.not.i, label %if.then172.i, label %if.else185.i

if.then172.i:                                     ; preds = %if.then158.i
  br i1 %cmp173.i, label %if.then174.i, label %if.else179.i

if.then174.i:                                     ; preds = %if.then172.i
  %add177.i = add nsw i32 %57, 12
  br label %if.end200.i

if.else179.i:                                     ; preds = %if.then172.i
  %add182.i = add nsw i32 %57, 8
  br label %if.end200.i

if.else185.i:                                     ; preds = %if.then158.i
  %shr190.i = ashr i32 %57, 1
  br i1 %cmp173.i, label %if.then187.i, label %if.else193.i

if.then187.i:                                     ; preds = %if.else185.i
  %add191.i = add nsw i32 %shr190.i, 8
  br label %if.end200.i

if.else193.i:                                     ; preds = %if.else185.i
  %add197.i = add nsw i32 %shr190.i, 4
  br label %if.end200.i

if.end200.i:                                      ; preds = %if.else193.i, %if.then187.i, %if.else179.i, %if.then174.i
  %add191.pn.i = phi i32 [ %add191.i, %if.then187.i ], [ %add197.i, %if.else193.i ], [ %add177.i, %if.then174.i ], [ %add182.i, %if.else179.i ]
  %score.4.i = sub nsw i32 %score.320.i, %add191.pn.i
  br label %if.end201.i

if.end201.i:                                      ; preds = %if.end200.i, %while.body131.i
  %score.5.i = phi i32 [ %score.320.i, %while.body131.i ], [ %score.4.i, %if.end200.i ]
  %.pr3.i = load i64, ptr %temp.i, align 8, !tbaa !7
  %tobool130.not.i = icmp eq i64 %.pr3.i, 0
  br i1 %tobool130.not.i, label %while.end202.i.loopexit, label %while.body131.i, !llvm.loop !14

while.end202.i.loopexit:                          ; preds = %if.end201.i
  %score.5.i.lcssa = phi i32 [ %score.5.i, %if.end201.i ]
  %call138.i.lcssa = phi i64 [ %call138.i, %if.end201.i ]
  %sub151.i.lcssa = phi i32 [ %sub151.i, %if.end201.i ]
  br label %while.end202.i

while.end202.i:                                   ; preds = %while.end202.i.loopexit, %while.end127.i
  %attack_info.sroa.31.0 = phi i64 [ 0, %while.end127.i ], [ %call138.i.lcssa, %while.end202.i.loopexit ]
  %b_counter.1.lcssa.i = phi i32 [ %b_counter.0.lcssa.i, %while.end127.i ], [ %sub151.i.lcssa, %while.end202.i.loopexit ]
  %score.3.lcssa.i = phi i32 [ %score.0.lcssa.i, %while.end127.i ], [ %score.5.i.lcssa, %while.end202.i.loopexit ]
  %arrayidx203.i = getelementptr inbounds nuw i8, ptr %s, i64 360
  %58 = load i64, ptr %arrayidx203.i, align 8, !tbaa !7
  store i64 %58, ptr %temp.i, align 8, !tbaa !7
  %tobool205.not23.i = icmp eq i64 %58, 0
  br i1 %tobool205.not23.i, label %while.end214.i, label %while.body206.lr.ph.i

while.body206.lr.ph.i:                            ; preds = %while.end202.i
  %bking_loc.i = getelementptr inbounds nuw i8, ptr %s, i64 468
  br label %while.body206.i

while.body206.i:                                  ; preds = %while.body206.i, %while.body206.lr.ph.i
  %score.624.i = phi i32 [ %score.3.lcssa.i, %while.body206.lr.ph.i ], [ %add213.i, %while.body206.i ]
  %call207.i = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp.i)
  %call208.i = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef nonnull %s, i32 noundef %call207.i)
  %call209.i = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef nonnull %s, i32 noundef %call207.i)
  %59 = load i32, ptr %bking_loc.i, align 4, !tbaa !15
  %call211.i = call noundef i32 @_Z8sum_distii(i32 noundef %call207.i, i32 noundef %59)
  %reass.sub.i = add i32 %score.624.i, 14
  %add213.i = sub i32 %reass.sub.i, %call211.i
  %.pr4.i = load i64, ptr %temp.i, align 8, !tbaa !7
  %tobool205.not.i = icmp eq i64 %.pr4.i, 0
  br i1 %tobool205.not.i, label %while.end214.i.loopexit, label %while.body206.i, !llvm.loop !16

while.end214.i.loopexit:                          ; preds = %while.body206.i
  %call208.i.lcssa = phi i64 [ %call208.i, %while.body206.i ]
  %call209.i.lcssa = phi i64 [ %call209.i, %while.body206.i ]
  %add213.i.lcssa = phi i32 [ %add213.i, %while.body206.i ]
  %or210.i.le = or i64 %call209.i.lcssa, %call208.i.lcssa
  br label %while.end214.i

while.end214.i:                                   ; preds = %while.end214.i.loopexit, %while.end202.i
  %attack_info.sroa.35.0 = phi i64 [ 0, %while.end202.i ], [ %or210.i.le, %while.end214.i.loopexit ]
  %score.6.lcssa.i = phi i32 [ %score.3.lcssa.i, %while.end202.i ], [ %add213.i.lcssa, %while.end214.i.loopexit ]
  %arrayidx215.i = getelementptr inbounds nuw i8, ptr %s, i64 368
  %60 = load i64, ptr %arrayidx215.i, align 8, !tbaa !7
  store i64 %60, ptr %temp.i, align 8, !tbaa !7
  %tobool217.not26.i = icmp eq i64 %60, 0
  br i1 %tobool217.not26.i, label %while.end226.i, label %while.body218.lr.ph.i

while.body218.lr.ph.i:                            ; preds = %while.end214.i
  %wking_loc.i = getelementptr inbounds nuw i8, ptr %s, i64 464
  br label %while.body218.i

while.body218.i:                                  ; preds = %while.body218.i, %while.body218.lr.ph.i
  %score.727.i = phi i32 [ %score.6.lcssa.i, %while.body218.lr.ph.i ], [ %sub225.i, %while.body218.i ]
  %call219.i = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp.i)
  %call220.i = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef nonnull %s, i32 noundef %call219.i)
  %call221.i = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef nonnull %s, i32 noundef %call219.i)
  %61 = load i32, ptr %wking_loc.i, align 8, !tbaa !17
  %call223.i = call noundef i32 @_Z8sum_distii(i32 noundef %call219.i, i32 noundef %61)
  %sub224.neg.i = add i32 %score.727.i, -14
  %sub225.i = add i32 %sub224.neg.i, %call223.i
  %.pr5.i = load i64, ptr %temp.i, align 8, !tbaa !7
  %tobool217.not.i = icmp eq i64 %.pr5.i, 0
  br i1 %tobool217.not.i, label %while.end226.i.loopexit, label %while.body218.i, !llvm.loop !18

while.end226.i.loopexit:                          ; preds = %while.body218.i
  %call220.i.lcssa = phi i64 [ %call220.i, %while.body218.i ]
  %call221.i.lcssa = phi i64 [ %call221.i, %while.body218.i ]
  %sub225.i.lcssa = phi i32 [ %sub225.i, %while.body218.i ]
  %or222.i.le = or i64 %call221.i.lcssa, %call220.i.lcssa
  br label %while.end226.i

while.end226.i:                                   ; preds = %while.end226.i.loopexit, %while.end214.i
  %attack_info.sroa.39.0 = phi i64 [ 0, %while.end214.i ], [ %or222.i.le, %while.end226.i.loopexit ]
  %score.7.lcssa.i = phi i32 [ %score.6.lcssa.i, %while.end214.i ], [ %sub225.i.lcssa, %while.end226.i.loopexit ]
  %arrayidx227.i = getelementptr inbounds nuw i8, ptr %s, i64 312
  %62 = load i64, ptr %arrayidx227.i, align 8, !tbaa !7
  store i64 %62, ptr %temp.i, align 8, !tbaa !7
  %tobool229.not29.i = icmp eq i64 %62, 0
  br i1 %tobool229.not29.i, label %while.end239.i, label %while.body230.lr.ph.i

while.body230.lr.ph.i:                            ; preds = %while.end226.i
  %63 = or i64 %or16.i, %0
  %64 = xor i64 %63, -1
  br label %while.body230.i

while.body230.i:                                  ; preds = %while.body230.i, %while.body230.lr.ph.i
  %w_counter.230.i = phi i32 [ %w_counter.1.lcssa.i, %while.body230.lr.ph.i ], [ %add238.i, %while.body230.i ]
  %call231.i = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp.i)
  %idxprom232.i = sext i32 %call231.i to i64
  %arrayidx233.i = getelementptr inbounds i64, ptr @KnightMoves, i64 %idxprom232.i
  %65 = load i64, ptr %arrayidx233.i, align 8, !tbaa !7
  %and235.i = and i64 %65, %64
  %call237.i = call noundef i32 @_Z8PopCounty(i64 noundef %and235.i)
  %mul.i = shl nsw i32 %call237.i, 1
  %add238.i = add nsw i32 %mul.i, %w_counter.230.i
  %.pr6.i = load i64, ptr %temp.i, align 8, !tbaa !7
  %tobool229.not.i = icmp eq i64 %.pr6.i, 0
  br i1 %tobool229.not.i, label %while.end239.i.loopexit, label %while.body230.i, !llvm.loop !19

while.end239.i.loopexit:                          ; preds = %while.body230.i
  %.lcssa244 = phi i64 [ %65, %while.body230.i ]
  %add238.i.lcssa = phi i32 [ %add238.i, %while.body230.i ]
  br label %while.end239.i

while.end239.i:                                   ; preds = %while.end239.i.loopexit, %while.end226.i
  %attack_info.sroa.19.0 = phi i64 [ 0, %while.end226.i ], [ %.lcssa244, %while.end239.i.loopexit ]
  %w_counter.2.lcssa.i = phi i32 [ %w_counter.1.lcssa.i, %while.end226.i ], [ %add238.i.lcssa, %while.end239.i.loopexit ]
  %arrayidx240.i = getelementptr inbounds nuw i8, ptr %s, i64 320
  %66 = load i64, ptr %arrayidx240.i, align 8, !tbaa !7
  store i64 %66, ptr %temp.i, align 8, !tbaa !7
  %tobool242.not32.i = icmp eq i64 %66, 0
  br i1 %tobool242.not32.i, label %_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t.exit, label %while.body243.lr.ph.i

while.body243.lr.ph.i:                            ; preds = %while.end239.i
  %67 = or i64 %or.i, %1
  %68 = xor i64 %67, -1
  br label %while.body243.i

while.body243.i:                                  ; preds = %while.body243.i, %while.body243.lr.ph.i
  %b_counter.233.i = phi i32 [ %b_counter.1.lcssa.i, %while.body243.lr.ph.i ], [ %sub252.i, %while.body243.i ]
  %call244.i = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp.i)
  %idxprom245.i = sext i32 %call244.i to i64
  %arrayidx246.i = getelementptr inbounds i64, ptr @KnightMoves, i64 %idxprom245.i
  %69 = load i64, ptr %arrayidx246.i, align 8, !tbaa !7
  %and248.i = and i64 %69, %68
  %call250.i = call noundef i32 @_Z8PopCounty(i64 noundef %and248.i)
  %mul251.i = shl nsw i32 %call250.i, 1
  %sub252.i = sub nsw i32 %b_counter.233.i, %mul251.i
  %.pr7.i = load i64, ptr %temp.i, align 8, !tbaa !7
  %tobool242.not.i = icmp eq i64 %.pr7.i, 0
  br i1 %tobool242.not.i, label %_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t.exit.loopexit, label %while.body243.i, !llvm.loop !20

_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t.exit.loopexit: ; preds = %while.body243.i
  %.lcssa = phi i64 [ %69, %while.body243.i ]
  %sub252.i.lcssa = phi i32 [ %sub252.i, %while.body243.i ]
  br label %_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t.exit

_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t.exit: ; preds = %_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t.exit.loopexit, %while.end239.i
  %attack_info.sroa.23.0 = phi i64 [ 0, %while.end239.i ], [ %.lcssa, %_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t.exit.loopexit ]
  %b_counter.2.lcssa.i = phi i32 [ %b_counter.1.lcssa.i, %while.end239.i ], [ %sub252.i.lcssa, %_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %temp.i) #4
  %call1 = call noundef ptr @_Z16static_pawn_evalP7state_t(ptr noundef nonnull %s)
  %w_score = getelementptr inbounds nuw i8, ptr %call1, i64 80
  %70 = load i32, ptr %w_score, align 8, !tbaa !21
  %w_pawnstruct = getelementptr inbounds nuw i8, ptr %ec, i64 8
  store i32 %70, ptr %w_pawnstruct, align 4, !tbaa !23
  %b_score = getelementptr inbounds nuw i8, ptr %call1, i64 84
  %71 = load i32, ptr %b_score, align 4, !tbaa !25
  %b_pawnstruct = getelementptr inbounds nuw i8, ptr %ec, i64 12
  store i32 %71, ptr %b_pawnstruct, align 4, !tbaa !26
  %wking_loc.i26 = getelementptr inbounds nuw i8, ptr %s, i64 464
  %bking_loc.i27 = getelementptr inbounds nuw i8, ptr %s, i64 468
  %72 = load i32, ptr %bking_loc.i27, align 4, !tbaa !15
  %arrayidx.i28 = getelementptr inbounds nuw i8, ptr %s, i64 440
  %73 = load i32, ptr %arrayidx.i28, align 8, !tbaa !12
  %tobool.not.i29 = icmp eq i32 %73, 0
  br i1 %tobool.not.i29, label %if.end123.i, label %if.then.i30

if.then.i30:                                      ; preds = %_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t.exit
  %74 = load i32, ptr %wking_loc.i26, align 8, !tbaa !17
  %shr.i31 = ashr i32 %74, 3
  %and.i32 = and i32 %74, 7
  %idxprom.i33 = zext nneg i32 %and.i32 to i64
  %arrayidx1.i = getelementptr inbounds nuw i64, ptr @KingFilesMask, i64 %idxprom.i33
  %75 = load i64, ptr %arrayidx1.i, align 8, !tbaa !7
  %76 = add nsw i32 %and.i32, -3
  %or.cond.i = icmp ult i32 %76, 3
  br i1 %or.cond.i, label %if.then3.i, label %if.end13.i

if.then3.i:                                       ; preds = %if.then.i30
  %castleflag.i = getelementptr inbounds nuw i8, ptr %s, i64 452
  %77 = load i32, ptr %castleflag.i, align 4, !tbaa !27
  %and4.i = and i32 %77, 4
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 -16, i32 0
  %and8.i = and i32 %77, 2
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %add11.i = add nsw i32 %spec.select.i, -12
  %spec.select384.i = select i1 %tobool9.not.i, i32 %add11.i, i32 %spec.select.i
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then3.i, %if.then.i30
  %w_score.1.i = phi i32 [ 0, %if.then.i30 ], [ %spec.select384.i, %if.then3.i ]
  %cmp14.i = icmp sgt i32 %shr.i31, 2
  br i1 %cmp14.i, label %if.then15.i, label %if.end92.i

if.then15.i:                                      ; preds = %if.end13.i
  %78 = load i64, ptr %arrayidx.i, align 8, !tbaa !7
  %79 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 48), align 16, !tbaa !7
  %80 = and i64 %78, %79
  %and18.i = and i64 %80, %75
  %call.i35 = call noundef i32 @_Z8PopCounty(i64 noundef %and18.i)
  %cmp19.i = icmp eq i32 %call.i35, 3
  %add21.i = add nsw i32 %w_score.1.i, 6
  %spec.select381.i = select i1 %cmp19.i, i32 %add21.i, i32 %w_score.1.i
  %w_half_open_files.i = getelementptr inbounds nuw i8, ptr %call1, i64 16
  %81 = load i64, ptr %w_half_open_files.i, align 8, !tbaa !28
  %and23.i = and i64 %81, %75
  %call24.i = call noundef i32 @_Z13ThickPopCounty(i64 noundef %and23.i)
  %82 = shl i32 %call24.i, 1
  %sub.i36 = sub i32 %spec.select381.i, %82
  %83 = load i32, ptr %wking_loc.i26, align 8, !tbaa !17
  %and27.i = and i32 %83, 7
  switch i32 %and27.i, label %if.then94.i [
    i32 0, label %if.then29.i
    i32 7, label %if.then33.i
  ]

if.then29.i:                                      ; preds = %if.then15.i
  %inc.i = or disjoint i32 %83, 1
  br label %if.then94.i

if.then33.i:                                      ; preds = %if.then15.i
  %dec.i = add nsw i32 %83, -1
  br label %if.then94.i

if.end92.i:                                       ; preds = %if.end13.i
  %add91.i = add nsw i32 %w_score.1.i, -30
  br label %if.end112.i

if.then94.i:                                      ; preds = %if.then33.i, %if.then29.i, %if.then15.i
  %nbsq.0.i = phi i32 [ %inc.i, %if.then29.i ], [ %dec.i, %if.then33.i ], [ %83, %if.then15.i ]
  %sboard.i = getelementptr inbounds nuw i8, ptr %s, i64 4
  %84 = sext i32 %nbsq.0.i to i64
  %85 = getelementptr i32, ptr %sboard.i, i64 %84
  %arrayidx38.i = getelementptr i8, ptr %85, i64 -36
  %86 = load i32, ptr %arrayidx38.i, align 4, !tbaa !12
  %cmp39.i = icmp eq i32 %86, 1
  %mul40.i = select i1 %cmp39.i, i32 12, i32 0
  %add41.i = add nsw i32 %sub.i36, %mul40.i
  %arrayidx45.i = getelementptr i8, ptr %85, i64 -32
  %87 = load i32, ptr %arrayidx45.i, align 4, !tbaa !12
  %cmp46.i = icmp eq i32 %87, 1
  %mul48.i = select i1 %cmp46.i, i32 24, i32 0
  %add49.i = add nsw i32 %add41.i, %mul48.i
  %arrayidx53.i = getelementptr i8, ptr %85, i64 -28
  %88 = load i32, ptr %arrayidx53.i, align 4, !tbaa !12
  %cmp54.i = icmp eq i32 %88, 1
  %mul56.i = select i1 %cmp54.i, i32 12, i32 0
  %add57.i = add nsw i32 %add49.i, %mul56.i
  %arrayidx61.i = getelementptr i8, ptr %85, i64 -68
  %89 = load i32, ptr %arrayidx61.i, align 4, !tbaa !12
  %cmp62.i = icmp eq i32 %89, 1
  %mul64.i = select i1 %cmp62.i, i32 4, i32 0
  %add65.i = add nsw i32 %add57.i, %mul64.i
  %arrayidx69.i = getelementptr i8, ptr %85, i64 -64
  %90 = load i32, ptr %arrayidx69.i, align 4, !tbaa !12
  %cmp70.i = icmp eq i32 %90, 1
  %mul72.i = select i1 %cmp70.i, i32 10, i32 0
  %add73.i = add nsw i32 %add65.i, %mul72.i
  %arrayidx77.i = getelementptr i8, ptr %85, i64 -60
  %91 = load i32, ptr %arrayidx77.i, align 4, !tbaa !12
  %cmp78.i = icmp eq i32 %91, 1
  %mul80.i = select i1 %cmp78.i, i32 4, i32 0
  %add81.i = add nsw i32 %add73.i, %mul80.i
  %arrayidx85.i37 = getelementptr i8, ptr %85, i64 -96
  %92 = load i32, ptr %arrayidx85.i37, align 4, !tbaa !12
  %cmp86.i = icmp eq i32 %92, 1
  %mul88.i = select i1 %cmp86.i, i32 4, i32 0
  %add89.i = add nsw i32 %add81.i, %mul88.i
  %93 = load i64, ptr %arrayidx9.i, align 8, !tbaa !7
  %94 = zext nneg i32 %shr.i31 to i64
  %95 = getelementptr i64, ptr @RankMask, i64 %94
  %arrayidx100.i = getelementptr i8, ptr %95, i64 -8
  %96 = load i64, ptr %arrayidx100.i, align 8, !tbaa !7
  %arrayidx103.i = getelementptr i8, ptr %95, i64 -16
  %97 = load i64, ptr %arrayidx103.i, align 8, !tbaa !7
  %or.i38 = or i64 %97, %96
  %arrayidx106.i = getelementptr i8, ptr %95, i64 -24
  %98 = load i64, ptr %arrayidx106.i, align 8, !tbaa !7
  %or107.i = or i64 %or.i38, %98
  %99 = and i64 %93, %or107.i
  %and108.i = and i64 %99, %75
  %call109.i = call noundef i32 @_Z8PopCounty(i64 noundef %and108.i)
  %100 = shl i32 %call109.i, 2
  %add111.i = sub i32 %add89.i, %100
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then94.i, %if.end92.i
  %w_score.4.i = phi i32 [ %add111.i, %if.then94.i ], [ %add91.i, %if.end92.i ]
  %101 = load i64, ptr %arrayidx128.i, align 8, !tbaa !7
  %102 = load i64, ptr %arrayidx215.i, align 8, !tbaa !7
  %or117.i = or i64 %102, %101
  %b_half_open_files.i = getelementptr inbounds nuw i8, ptr %call1, i64 24
  %103 = load i64, ptr %b_half_open_files.i, align 8, !tbaa !29
  %104 = and i64 %or117.i, %103
  %and119.i = and i64 %104, %75
  %call120.i = call noundef i32 @_Z8PopCounty(i64 noundef %and119.i)
  %mul121.i = mul nsw i32 %call120.i, -13
  %add122.i34 = add nsw i32 %mul121.i, %w_score.4.i
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.end112.i, %_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t.exit
  %w_score.5.i = phi i32 [ %add122.i34, %if.end112.i ], [ 0, %_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t.exit ]
  %arrayidx125.i = getelementptr inbounds nuw i8, ptr %s, i64 436
  %105 = load i32, ptr %arrayidx125.i, align 4, !tbaa !12
  %tobool126.not.i = icmp eq i32 %105, 0
  br i1 %tobool126.not.i, label %_ZL15kingsafety_evalP7state_tP8pawntt_tP12t_eval_comps.exit, label %if.then127.i

if.then127.i:                                     ; preds = %if.end123.i
  %shr128.i = ashr i32 %72, 3
  %and129.i = and i32 %72, 7
  %idxprom130.i = zext nneg i32 %and129.i to i64
  %arrayidx131.i = getelementptr inbounds nuw i64, ptr @KingFilesMask, i64 %idxprom130.i
  %106 = load i64, ptr %arrayidx131.i, align 8, !tbaa !7
  %107 = add nsw i32 %and129.i, -3
  %or.cond273.i = icmp ult i32 %107, 3
  br i1 %or.cond273.i, label %if.then135.i, label %if.end148.i

if.then135.i:                                     ; preds = %if.then127.i
  %castleflag136.i = getelementptr inbounds nuw i8, ptr %s, i64 452
  %108 = load i32, ptr %castleflag136.i, align 4, !tbaa !27
  %and137.i = and i32 %108, 16
  %spec.select382.i = xor i32 %and137.i, 16
  %and143.i = and i32 %108, 8
  %tobool144.not.i = icmp eq i32 %and143.i, 0
  %sub146.i = or disjoint i32 %spec.select382.i, 12
  %spec.select385.i = select i1 %tobool144.not.i, i32 %sub146.i, i32 %spec.select382.i
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then135.i, %if.then127.i
  %b_score.1.i = phi i32 [ 0, %if.then127.i ], [ %spec.select385.i, %if.then135.i ]
  %cmp149.i = icmp slt i32 %shr128.i, 5
  br i1 %cmp149.i, label %if.then150.i, label %if.end237.i

if.then150.i:                                     ; preds = %if.end148.i
  %109 = load i64, ptr %arrayidx9.i, align 8, !tbaa !7
  %110 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 8), align 8, !tbaa !7
  %111 = and i64 %109, %110
  %and154.i = and i64 %111, %106
  %call155.i = call noundef i32 @_Z8PopCounty(i64 noundef %and154.i)
  %cmp156.i = icmp eq i32 %call155.i, 3
  %sub158.i = add nsw i32 %b_score.1.i, -6
  %spec.select383.i = select i1 %cmp156.i, i32 %sub158.i, i32 %b_score.1.i
  %b_half_open_files160.i = getelementptr inbounds nuw i8, ptr %call1, i64 24
  %112 = load i64, ptr %b_half_open_files160.i, align 8, !tbaa !29
  %and161.i = and i64 %112, %106
  %call162.i = call noundef i32 @_Z13ThickPopCounty(i64 noundef %and161.i)
  %mul163.i = shl nsw i32 %call162.i, 1
  %add164.i = add nsw i32 %mul163.i, %spec.select383.i
  %113 = load i32, ptr %bking_loc.i27, align 4, !tbaa !15
  %and167.i = and i32 %113, 7
  switch i32 %and167.i, label %if.then239.i [
    i32 0, label %if.then169.i
    i32 7, label %if.then175.i
  ]

if.then169.i:                                     ; preds = %if.then150.i
  %inc170.i = or disjoint i32 %113, 1
  br label %if.then239.i

if.then175.i:                                     ; preds = %if.then150.i
  %dec176.i = add nsw i32 %113, -1
  br label %if.then239.i

if.end237.i:                                      ; preds = %if.end148.i
  %sub236.i = add nuw nsw i32 %b_score.1.i, 30
  br label %if.end258.i

if.then239.i:                                     ; preds = %if.then175.i, %if.then169.i, %if.then150.i
  %nbsq.1.i = phi i32 [ %inc170.i, %if.then169.i ], [ %dec176.i, %if.then175.i ], [ %113, %if.then150.i ]
  %sboard179.i = getelementptr inbounds nuw i8, ptr %s, i64 4
  %114 = sext i32 %nbsq.1.i to i64
  %115 = getelementptr i32, ptr %sboard179.i, i64 %114
  %arrayidx182.i = getelementptr i8, ptr %115, i64 36
  %116 = load i32, ptr %arrayidx182.i, align 4, !tbaa !12
  %cmp183.i = icmp eq i32 %116, 2
  %mul185.neg.i = select i1 %cmp183.i, i32 -12, i32 0
  %sub186.i = add i32 %add164.i, %mul185.neg.i
  %arrayidx190.i = getelementptr i8, ptr %115, i64 32
  %117 = load i32, ptr %arrayidx190.i, align 4, !tbaa !12
  %cmp191.i = icmp eq i32 %117, 2
  %mul193.neg.i = select i1 %cmp191.i, i32 -24, i32 0
  %sub194.i = add i32 %sub186.i, %mul193.neg.i
  %arrayidx198.i = getelementptr i8, ptr %115, i64 28
  %118 = load i32, ptr %arrayidx198.i, align 4, !tbaa !12
  %cmp199.i = icmp eq i32 %118, 2
  %mul201.neg.i = select i1 %cmp199.i, i32 -12, i32 0
  %sub202.i = add i32 %sub194.i, %mul201.neg.i
  %arrayidx206.i = getelementptr i8, ptr %115, i64 60
  %119 = load i32, ptr %arrayidx206.i, align 4, !tbaa !12
  %cmp207.i = icmp eq i32 %119, 2
  %mul209.neg.i = select i1 %cmp207.i, i32 -4, i32 0
  %sub210.i = add i32 %sub202.i, %mul209.neg.i
  %arrayidx214.i = getelementptr i8, ptr %115, i64 64
  %120 = load i32, ptr %arrayidx214.i, align 4, !tbaa !12
  %cmp215.i = icmp eq i32 %120, 2
  %mul217.neg.i = select i1 %cmp215.i, i32 -10, i32 0
  %sub218.i = add i32 %sub210.i, %mul217.neg.i
  %arrayidx222.i = getelementptr i8, ptr %115, i64 68
  %121 = load i32, ptr %arrayidx222.i, align 4, !tbaa !12
  %cmp223.i = icmp eq i32 %121, 2
  %mul225.neg.i = select i1 %cmp223.i, i32 -4, i32 0
  %sub226.i = add i32 %sub218.i, %mul225.neg.i
  %arrayidx230.i = getelementptr i8, ptr %115, i64 96
  %122 = load i32, ptr %arrayidx230.i, align 4, !tbaa !12
  %cmp231.i = icmp eq i32 %122, 2
  %mul233.neg.i = select i1 %cmp231.i, i32 -4, i32 0
  %sub234.i = add i32 %sub226.i, %mul233.neg.i
  %123 = load i64, ptr %arrayidx.i, align 8, !tbaa !7
  %124 = sext i32 %shr128.i to i64
  %125 = getelementptr i64, ptr @RankMask, i64 %124
  %arrayidx245.i = getelementptr i8, ptr %125, i64 8
  %126 = load i64, ptr %arrayidx245.i, align 8, !tbaa !7
  %arrayidx248.i = getelementptr i8, ptr %125, i64 16
  %127 = load i64, ptr %arrayidx248.i, align 8, !tbaa !7
  %or249.i = or i64 %127, %126
  %arrayidx252.i = getelementptr i8, ptr %125, i64 24
  %128 = load i64, ptr %arrayidx252.i, align 8, !tbaa !7
  %or253.i = or i64 %or249.i, %128
  %129 = and i64 %123, %or253.i
  %and254.i = and i64 %129, %106
  %call255.i = call noundef i32 @_Z8PopCounty(i64 noundef %and254.i)
  %mul256.neg.i = shl i32 %call255.i, 2
  %sub257.i = add i32 %sub234.i, %mul256.neg.i
  br label %if.end258.i

if.end258.i:                                      ; preds = %if.then239.i, %if.end237.i
  %b_score.4.i = phi i32 [ %sub257.i, %if.then239.i ], [ %sub236.i, %if.end237.i ]
  %130 = load i64, ptr %arrayidx60.i, align 8, !tbaa !7
  %131 = load i64, ptr %arrayidx203.i, align 8, !tbaa !7
  %or263.i = or i64 %131, %130
  %w_half_open_files265.i = getelementptr inbounds nuw i8, ptr %call1, i64 16
  %132 = load i64, ptr %w_half_open_files265.i, align 8, !tbaa !28
  %133 = and i64 %or263.i, %132
  %and266.i = and i64 %133, %106
  %call267.i = call noundef i32 @_Z8PopCounty(i64 noundef %and266.i)
  %mul268.neg.i = mul i32 %call267.i, 13
  %sub269.i = add i32 %mul268.neg.i, %b_score.4.i
  br label %_ZL15kingsafety_evalP7state_tP8pawntt_tP12t_eval_comps.exit

_ZL15kingsafety_evalP7state_tP8pawntt_tP12t_eval_comps.exit: ; preds = %if.end258.i, %if.end123.i
  %b_score.5.i = phi i32 [ %sub269.i, %if.end258.i ], [ 0, %if.end123.i ]
  %w_ks_score.i = getelementptr inbounds nuw i8, ptr %ec, i64 32
  %134 = load i32, ptr %w_ks_score.i, align 4, !tbaa !30
  %add271.i = add nsw i32 %134, %w_score.5.i
  store i32 %add271.i, ptr %w_ks_score.i, align 4, !tbaa !30
  %b_ks_score.i = getelementptr inbounds nuw i8, ptr %ec, i64 36
  %135 = load i32, ptr %b_ks_score.i, align 4, !tbaa !31
  %add272.i = add nsw i32 %135, %b_score.5.i
  store i32 %add272.i, ptr %b_ks_score.i, align 4, !tbaa !31
  %136 = load i32, ptr %wking_loc.i26, align 8, !tbaa !17
  %137 = load i32, ptr %bking_loc.i27, align 4, !tbaa !15
  %138 = load i32, ptr %arrayidx125.i, align 4, !tbaa !12
  %tobool.not.i42 = icmp eq i32 %138, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %_ZL15kingsafety_evalP7state_tP8pawntt_tP12t_eval_comps.exit
  %139 = load i32, ptr %arrayidx.i28, align 8, !tbaa !12
  %tobool3.not.i = icmp eq i32 %139, 0
  br i1 %tobool3.not.i, label %_ZL17kingpressure_evalP7state_tP12attackinfo_tP12t_eval_comps.exit, label %if.end.i.thread

if.end.i.thread:                                  ; preds = %land.lhs.true.i
  %or.i44233 = or i64 %attack_info.sroa.11.0, %or.i
  %or4.i234 = or i64 %or.i44233, %attack_info.sroa.27.0
  %or5.i235 = or i64 %or4.i234, %attack_info.sroa.35.0
  %or6.i236 = or i64 %or5.i235, %attack_info.sroa.19.0
  br label %if.then14.i

if.end.i:                                         ; preds = %_ZL15kingsafety_evalP7state_tP8pawntt_tP12t_eval_comps.exit
  %.pr = load i32, ptr %arrayidx.i28, align 8, !tbaa !12
  %or.i44 = or i64 %attack_info.sroa.11.0, %or.i
  %or4.i = or i64 %or.i44, %attack_info.sroa.27.0
  %or5.i = or i64 %or4.i, %attack_info.sroa.35.0
  %or6.i = or i64 %or5.i, %attack_info.sroa.19.0
  %tobool13.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool13.not.i, label %if.end95.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i, %if.end.i.thread
  %or6.i238 = phi i64 [ %or6.i236, %if.end.i.thread ], [ %or6.i, %if.end.i ]
  %or7.i = or i64 %attack_info.sroa.15.0, %or16.i
  %or8.i = or i64 %or7.i, %attack_info.sroa.31.0
  %or9.i = or i64 %or8.i, %attack_info.sroa.39.0
  %or10.i = or i64 %or9.i, %attack_info.sroa.23.0
  %idxprom.i53 = sext i32 %136 to i64
  %arrayidx15.i = getelementptr inbounds i64, ptr @KingPressureMask, i64 %idxprom.i53
  %140 = load i64, ptr %arrayidx15.i, align 8, !tbaa !7
  %141 = load i64, ptr %arrayidx215.i, align 8, !tbaa !7
  %142 = load i64, ptr %arrayidx128.i, align 8, !tbaa !7
  %or19.i = or i64 %142, %141
  %143 = load i64, ptr %arrayidx34.i, align 8, !tbaa !7
  %or22.i = or i64 %or19.i, %143
  %144 = load i64, ptr %arrayidx240.i, align 8, !tbaa !7
  %or25.i = or i64 %or22.i, %144
  %and.i56 = and i64 %or25.i, %140
  %call.i57 = call noundef i32 @_Z8PopCounty(i64 noundef %and.i56)
  %mul.i58 = mul nsw i32 %call.i57, -22
  %and27.i59 = and i64 %140, %or16.i
  %tobool28.not.i = icmp ne i64 %and27.i59, 0
  %spec.select.i60 = zext i1 %tobool28.not.i to i32
  %and32.i = and i64 %140, %attack_info.sroa.15.0
  %tobool33.not.i = icmp eq i64 %and32.i, 0
  %inc35.i = select i1 %tobool28.not.i, i32 2, i32 1
  %counter.1.i = select i1 %tobool33.not.i, i32 %spec.select.i60, i32 %inc35.i
  %and38.i = and i64 %140, %attack_info.sroa.23.0
  %tobool39.not.i = icmp ne i64 %and38.i, 0
  %inc41.i = zext i1 %tobool39.not.i to i32
  %and44.i = and i64 %140, %attack_info.sroa.31.0
  %tobool45.not.i = icmp ne i64 %and44.i, 0
  %inc47.i = zext i1 %tobool45.not.i to i32
  %and50.i = and i64 %140, %attack_info.sroa.39.0
  %tobool51.not.i = icmp ne i64 %and50.i, 0
  %inc53.i = zext i1 %tobool51.not.i to i32
  %and57.i = and i64 %140, %or10.i
  %call58.i = call noundef i32 @_Z13ThickPopCounty(i64 noundef %and57.i)
  %arrayidx62.i = getelementptr inbounds i64, ptr @KingPressureMask1, i64 %idxprom.i53
  %145 = load i64, ptr %arrayidx62.i, align 8, !tbaa !7
  %and64.i = and i64 %145, %or16.i
  %tobool65.not.not.i = icmp eq i64 %and64.i, 0
  %and70.i = and i64 %145, %attack_info.sroa.15.0
  %tobool71.not.i = icmp eq i64 %and70.i, 0
  %and76.i = and i64 %145, %attack_info.sroa.23.0
  %tobool77.not.i = icmp eq i64 %and76.i, 0
  %and82.i = and i64 %145, %attack_info.sroa.31.0
  %tobool83.not.i = icmp eq i64 %and82.i, 0
  %and88.i = and i64 %145, %attack_info.sroa.39.0
  %tobool89.not.i = icmp eq i64 %and88.i, 0
  %146 = select i1 %tobool65.not.not.i, i32 0, i32 2
  %147 = or disjoint i32 %146, 4
  %148 = select i1 %tobool71.not.i, i32 %146, i32 %147
  %149 = add nuw nsw i32 %148, 4
  %150 = select i1 %tobool77.not.i, i32 %148, i32 %149
  %151 = add nuw nsw i32 %150, 8
  %152 = select i1 %tobool83.not.i, i32 %150, i32 %151
  %153 = add nuw nsw i32 %152, 16
  %154 = select i1 %tobool89.not.i, i32 %152, i32 %153
  %counter.2.i = add nuw nsw i32 %inc47.i, %inc41.i
  %counter.3.i = add nuw nsw i32 %counter.2.i, %inc53.i
  %counter.4.i = add nuw nsw i32 %counter.3.i, %counter.1.i
  %reass.add.i = add i32 %counter.4.i, %call58.i
  %reass.mul.i = mul i32 %reass.add.i, -3
  %add60.i = add i32 %reass.mul.i, %mul.i58
  %add94.i = sub i32 %add60.i, %154
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then14.i, %if.end.i
  %or6.i239 = phi i64 [ %or6.i238, %if.then14.i ], [ %or6.i, %if.end.i ]
  %w_score.0.i = phi i32 [ %add94.i, %if.then14.i ], [ 0, %if.end.i ]
  %155 = load i32, ptr %arrayidx125.i, align 4, !tbaa !12
  %tobool98.not.i = icmp eq i32 %155, 0
  br i1 %tobool98.not.i, label %if.end186.i, label %if.then99.i

if.then99.i:                                      ; preds = %if.end95.i
  %idxprom100.i = sext i32 %137 to i64
  %arrayidx101.i = getelementptr inbounds i64, ptr @KingPressureMask, i64 %idxprom100.i
  %156 = load i64, ptr %arrayidx101.i, align 8, !tbaa !7
  %157 = load i64, ptr %arrayidx203.i, align 8, !tbaa !7
  %158 = load i64, ptr %arrayidx60.i, align 8, !tbaa !7
  %or106.i = or i64 %158, %157
  %159 = load i64, ptr %arrayidx18.i, align 8, !tbaa !7
  %or109.i = or i64 %or106.i, %159
  %160 = load i64, ptr %arrayidx227.i, align 8, !tbaa !7
  %or112.i = or i64 %or109.i, %160
  %and113.i = and i64 %or112.i, %156
  %call114.i = call noundef i32 @_Z8PopCounty(i64 noundef %and113.i)
  %mul115.neg.i = mul nsw i32 %call114.i, 22
  %and117.i = and i64 %156, %or.i
  %tobool118.not.i = icmp ne i64 %and117.i, 0
  %spec.select298.i = zext i1 %tobool118.not.i to i32
  %and123.i = and i64 %156, %attack_info.sroa.11.0
  %tobool124.not.i = icmp eq i64 %and123.i, 0
  %inc126.i = select i1 %tobool118.not.i, i32 2, i32 1
  %counter.6.i = select i1 %tobool124.not.i, i32 %spec.select298.i, i32 %inc126.i
  %and129.i62 = and i64 %156, %attack_info.sroa.19.0
  %tobool130.not.i63 = icmp ne i64 %and129.i62, 0
  %inc132.i = zext i1 %tobool130.not.i63 to i32
  %and135.i = and i64 %156, %attack_info.sroa.27.0
  %tobool136.not.i = icmp ne i64 %and135.i, 0
  %inc138.i = zext i1 %tobool136.not.i to i32
  %and141.i = and i64 %156, %attack_info.sroa.35.0
  %tobool142.not.i = icmp ne i64 %and141.i, 0
  %inc144.i = zext i1 %tobool142.not.i to i32
  %and148.i = and i64 %156, %or6.i239
  %call149.i64 = call noundef i32 @_Z13ThickPopCounty(i64 noundef %and148.i)
  %arrayidx153.i = getelementptr inbounds i64, ptr @KingPressureMask1, i64 %idxprom100.i
  %161 = load i64, ptr %arrayidx153.i, align 8, !tbaa !7
  %and155.i = and i64 %161, %or.i
  %tobool156.not.not.i = icmp eq i64 %and155.i, 0
  %and161.i65 = and i64 %161, %attack_info.sroa.11.0
  %tobool162.not.i = icmp eq i64 %and161.i65, 0
  %and167.i66 = and i64 %161, %attack_info.sroa.19.0
  %tobool168.not.i = icmp eq i64 %and167.i66, 0
  %and173.i = and i64 %161, %attack_info.sroa.27.0
  %tobool174.not.i = icmp eq i64 %and173.i, 0
  %and179.i = and i64 %161, %attack_info.sroa.35.0
  %tobool180.not.i = icmp eq i64 %and179.i, 0
  %162 = select i1 %tobool156.not.not.i, i32 0, i32 2
  %163 = or disjoint i32 %162, 4
  %164 = select i1 %tobool162.not.i, i32 %162, i32 %163
  %165 = add nuw nsw i32 %164, 4
  %166 = select i1 %tobool168.not.i, i32 %164, i32 %165
  %167 = add nuw nsw i32 %166, 8
  %168 = select i1 %tobool174.not.i, i32 %166, i32 %167
  %169 = add nuw nsw i32 %168, 16
  %mul184.neg.i = select i1 %tobool180.not.i, i32 %168, i32 %169
  %counter.7.i = add nuw nsw i32 %inc138.i, %inc132.i
  %counter.8.i = add nuw nsw i32 %counter.7.i, %inc144.i
  %counter.9.i = add nuw nsw i32 %counter.8.i, %counter.6.i
  %reass.add299.i = add i32 %counter.9.i, %call149.i64
  %reass.mul300.i = mul i32 %reass.add299.i, 3
  %sub151.i67 = add i32 %reass.mul300.i, %mul115.neg.i
  %sub185.i = add i32 %sub151.i67, %mul184.neg.i
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.then99.i, %if.end95.i
  %b_score.0.i = phi i32 [ %sub185.i, %if.then99.i ], [ 0, %if.end95.i ]
  %170 = load i32, ptr %w_ks_score.i, align 4, !tbaa !30
  %add187.i = add nsw i32 %170, %w_score.0.i
  store i32 %add187.i, ptr %w_ks_score.i, align 4, !tbaa !30
  %171 = load i32, ptr %b_ks_score.i, align 4, !tbaa !31
  %add188.i = add nsw i32 %171, %b_score.0.i
  store i32 %add188.i, ptr %b_ks_score.i, align 4, !tbaa !31
  br label %_ZL17kingpressure_evalP7state_tP12attackinfo_tP12t_eval_comps.exit

_ZL17kingpressure_evalP7state_tP12attackinfo_tP12t_eval_comps.exit: ; preds = %if.end186.i, %land.lhs.true.i
  %172 = load i32, ptr %wking_loc.i26, align 8, !tbaa !17
  %173 = load i32, ptr %bking_loc.i27, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %temp.i70) #4
  %w_passed.i = getelementptr inbounds nuw i8, ptr %call1, i64 32
  %174 = load i64, ptr %w_passed.i, align 8, !tbaa !32
  store i64 %174, ptr %temp.i70, align 8, !tbaa !7
  %tobool.not432.i = icmp eq i64 %174, 0
  br i1 %tobool.not432.i, label %while.end.i98, label %while.body.lr.ph.i73

while.body.lr.ph.i73:                             ; preds = %_ZL17kingpressure_evalP7state_tP12attackinfo_tP12t_eval_comps.exit
  %sboard.i74 = getelementptr inbounds nuw i8, ptr %s, i64 4
  %cmp19.i75 = icmp slt i32 %phase_scale, 384
  %white_to_move.i = getelementptr inbounds nuw i8, ptr %s, i64 460
  %sub29.i = sub nsw i32 1024, %phase_scale
  %mul.i76 = mul nsw i32 %sub29.i, 20
  %div420.i = lshr i32 %mul.i76, 10
  %cmp31.i = icmp eq i32 %phase_scale, 0
  %shr38.i = ashr i32 %172, 3
  %and46.i77 = and i32 %172, 7
  %All.i78 = getelementptr inbounds nuw i8, ptr %s, i64 264
  br label %while.body.i79

while.body.i79:                                   ; preds = %if.end107.i, %while.body.lr.ph.i73
  %w_score.0433.i = phi i32 [ 0, %while.body.lr.ph.i73 ], [ %spec.select422.i, %if.end107.i ]
  %call.i80 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp.i70)
  %shr.i81 = ashr i32 %call.i80, 3
  %and.i82 = and i32 %call.i80, 7
  %sub.i83 = add nsw i32 %shr.i81, -1
  %idxprom.i84 = sext i32 %sub.i83 to i64
  %arrayidx.i85 = getelementptr inbounds i32, ptr @_ZL8w_passer, i64 %idxprom.i84
  %175 = load i32, ptr %arrayidx.i85, align 4, !tbaa !12
  %add.i86 = add nsw i32 %175, %w_score.0433.i
  %176 = sext i32 %call.i80 to i64
  %177 = getelementptr i32, ptr %sboard.i74, i64 %176
  %arrayidx3.i = getelementptr i8, ptr %177, i64 -4
  %178 = load i32, ptr %arrayidx3.i, align 4, !tbaa !12
  %cmp.i87 = icmp eq i32 %178, 1
  br i1 %cmp.i87, label %if.then.i119, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %while.body.i79
  %arrayidx7.i = getelementptr i8, ptr %177, i64 36
  %179 = load i32, ptr %arrayidx7.i, align 4, !tbaa !12
  %cmp8.i = icmp eq i32 %179, 1
  br i1 %cmp8.i, label %if.then.i119, label %lor.lhs.false9.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx13.i = getelementptr i8, ptr %177, i64 28
  %180 = load i32, ptr %arrayidx13.i, align 4, !tbaa !12
  %cmp14.i88 = icmp eq i32 %180, 1
  br i1 %cmp14.i88, label %if.then.i119, label %if.end.i89

if.then.i119:                                     ; preds = %lor.lhs.false9.i, %lor.lhs.false.i, %while.body.i79
  %arrayidx17.i = getelementptr inbounds i32, ptr @_ZL23w_passer_pawn_supported, i64 %idxprom.i84
  %181 = load i32, ptr %arrayidx17.i, align 4, !tbaa !12
  %add18.i = add nsw i32 %181, %add.i86
  br label %if.end.i89

if.end.i89:                                       ; preds = %if.then.i119, %lor.lhs.false9.i
  %w_score.1.i90 = phi i32 [ %add18.i, %if.then.i119 ], [ %add.i86, %lor.lhs.false9.i ]
  br i1 %cmp19.i75, label %if.then20.i, label %if.end54.i

if.then20.i:                                      ; preds = %if.end.i89
  %call22.i112 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %and.i82, i32 noundef %call.i80)
  %call23.i = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %and.i82, i32 noundef %173)
  %182 = load i32, ptr %white_to_move.i, align 4, !tbaa !33
  %tobool24.not.i = icmp eq i32 %182, 0
  %dec.i113 = sext i1 %tobool24.not.i to i32
  %spec.select.i114 = add nsw i32 %call23.i, %dec.i113
  %cmp27.i = icmp slt i32 %call22.i112, %spec.select.i114
  %add30.i = add nsw i32 %w_score.1.i90, %div420.i
  %add33.i = add nsw i32 %add30.i, 500
  %spec.select421.i = select i1 %cmp31.i, i32 %add33.i, i32 %add30.i
  %w_score.2.i = select i1 %cmp27.i, i32 %spec.select421.i, i32 %w_score.1.i90
  br i1 %cmp31.i, label %if.then37.i, label %if.end54.i

if.then37.i:                                      ; preds = %if.then20.i
  %cmp39.i115 = icmp sle i32 %shr38.i, %shr.i81
  %cmp40.i = icmp slt i32 %shr.i81, 2
  %or.cond.i116 = and i1 %cmp39.i115, %cmp40.i
  br i1 %or.cond.i116, label %if.then41.i, label %if.else.i117

if.then41.i:                                      ; preds = %if.then37.i
  %183 = add nsw i32 %and.i82, -7
  %switch.i = icmp ult i32 %183, -6
  %cmp47.not.i = icmp eq i32 %and46.i77, %and.i82
  %or.cond426.i = select i1 %switch.i, i1 %cmp47.not.i, i1 false
  %add49.i118 = add nsw i32 %w_score.2.i, 25
  %spec.select429.i = select i1 %or.cond426.i, i32 %w_score.2.i, i32 %add49.i118
  br label %if.end54.i

if.else.i117:                                     ; preds = %if.then37.i
  %sub51.i = add nsw i32 %w_score.2.i, -25
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else.i117, %if.then41.i, %if.then20.i, %if.end.i89
  %w_score.3.i = phi i32 [ %sub51.i, %if.else.i117 ], [ %w_score.2.i, %if.then20.i ], [ %w_score.1.i90, %if.end.i89 ], [ %spec.select429.i, %if.then41.i ]
  %cmp56.not.i = icmp sgt i32 %shr38.i, %shr.i81
  br i1 %cmp56.not.i, label %if.end67.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end54.i
  %sub59.i = sub nsw i32 %and46.i77, %and.i82
  %184 = call i32 @llvm.abs.i32(i32 %sub59.i, i1 true)
  %cmp60.i = icmp eq i32 %184, 1
  br i1 %cmp60.i, label %if.then61.i, label %if.end67.i

if.then61.i:                                      ; preds = %if.then57.i
  %arrayidx64.i = getelementptr inbounds i32, ptr @_ZL23w_passer_king_supported, i64 %idxprom.i84
  %185 = load i32, ptr %arrayidx64.i, align 4, !tbaa !12
  %add65.i111 = add nsw i32 %185, %w_score.3.i
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then61.i, %if.then57.i, %if.end54.i
  %w_score.4.i91 = phi i32 [ %add65.i111, %if.then61.i ], [ %w_score.3.i, %if.then57.i ], [ %w_score.3.i, %if.end54.i ]
  %sub68.i = add nsw i32 %call.i80, -8
  %idxprom69.i = sext i32 %sub68.i to i64
  %arrayidx70.i = getelementptr inbounds i64, ptr @Mask, i64 %idxprom69.i
  %186 = load i64, ptr %arrayidx70.i, align 8, !tbaa !7
  %187 = load i64, ptr %All.i78, align 8, !tbaa !8
  %and71.i = and i64 %187, %186
  %tobool72.not.i = icmp eq i64 %and71.i, 0
  br i1 %tobool72.not.i, label %if.then73.i, label %if.end107.sink.split.i

if.then73.i:                                      ; preds = %if.end67.i
  %call75.i = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %s, i32 noundef 0, i32 noundef %call.i80, i32 noundef %sub68.i, i32 noundef 0)
  %cmp76.i = icmp sgt i32 %call75.i, -1
  br i1 %cmp76.i, label %if.then77.i, label %if.end107.i

if.then77.i:                                      ; preds = %if.then73.i
  %arrayidx80.i = getelementptr inbounds i32, ptr @_ZL13w_passer_free, i64 %idxprom.i84
  %188 = load i32, ptr %arrayidx80.i, align 4, !tbaa !12
  %add81.i108 = add nsw i32 %188, %w_score.4.i91
  %cmp82.i = icmp sgt i32 %shr.i81, 1
  br i1 %cmp82.i, label %land.lhs.true83.i, label %if.end107.i

land.lhs.true83.i:                                ; preds = %if.then77.i
  %sub84.i = add nsw i32 %call.i80, -16
  %idxprom85.i = zext nneg i32 %sub84.i to i64
  %arrayidx86.i = getelementptr inbounds nuw i64, ptr @Mask, i64 %idxprom85.i
  %189 = load i64, ptr %arrayidx86.i, align 8, !tbaa !7
  %190 = load i64, ptr %All.i78, align 8, !tbaa !8
  %and88.i109 = and i64 %190, %189
  %tobool89.not.i110 = icmp eq i64 %and88.i109, 0
  br i1 %tobool89.not.i110, label %if.then90.i, label %if.end107.i

if.then90.i:                                      ; preds = %land.lhs.true83.i
  %call92.i = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %s, i32 noundef 0, i32 noundef %call.i80, i32 noundef %sub84.i, i32 noundef 0)
  %cmp93.i = icmp sgt i32 %call92.i, -1
  br i1 %cmp93.i, label %if.end107.sink.split.i, label %if.end107.i

if.end107.sink.split.i:                           ; preds = %if.then90.i, %if.end67.i
  %_ZL18w_passer_very_free.sink.i = phi ptr [ @_ZL18w_passer_very_free, %if.then90.i ], [ @_ZL16w_passer_blocked, %if.end67.i ]
  %add81.sink.i = phi i32 [ %add81.i108, %if.then90.i ], [ %w_score.4.i91, %if.end67.i ]
  %arrayidx97.i = getelementptr inbounds i32, ptr %_ZL18w_passer_very_free.sink.i, i64 %idxprom.i84
  %191 = load i32, ptr %arrayidx97.i, align 4, !tbaa !12
  %add98.i = add nsw i32 %191, %add81.sink.i
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.end107.sink.split.i, %if.then90.i, %land.lhs.true83.i, %if.then77.i, %if.then73.i
  %w_score.5.i92 = phi i32 [ %add81.i108, %land.lhs.true83.i ], [ %add81.i108, %if.then90.i ], [ %add81.i108, %if.then77.i ], [ %w_score.4.i91, %if.then73.i ], [ %add98.i, %if.end107.sink.split.i ]
  %sub108.i = sub nsw i32 7, %shr.i81
  %call110.i = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %173, i32 noundef %sub68.i)
  %call116.i = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %172, i32 noundef %sub68.i)
  %mul117.i = mul i32 %call116.i, -3
  %reass.add.i93 = add i32 %mul117.i, %call110.i
  %reass.mul.i94 = mul i32 %reass.add.i93, %sub108.i
  %add118.i = add i32 %reass.mul.i94, %w_score.5.i92
  %arrayidx120.i95 = getelementptr inbounds i64, ptr @FileDownMask, i64 %176
  %192 = load i64, ptr %arrayidx120.i95, align 8, !tbaa !7
  %193 = load i64, ptr %arrayidx128.i, align 8, !tbaa !7
  %and122.i = and i64 %193, %192
  %tobool123.not.i = icmp eq i64 %and122.i, 0
  %add125.i = add nsw i32 %add118.i, -8
  %spec.select422.i = select i1 %tobool123.not.i, i32 %add118.i, i32 %add125.i
  %.pr.i96 = load i64, ptr %temp.i70, align 8, !tbaa !7
  %tobool.not.i97 = icmp eq i64 %.pr.i96, 0
  br i1 %tobool.not.i97, label %while.end.i98.loopexit, label %while.body.i79, !llvm.loop !34

while.end.i98.loopexit:                           ; preds = %if.end107.i
  %spec.select422.i.lcssa = phi i32 [ %spec.select422.i, %if.end107.i ]
  br label %while.end.i98

while.end.i98:                                    ; preds = %while.end.i98.loopexit, %_ZL17kingpressure_evalP7state_tP12attackinfo_tP12t_eval_comps.exit
  %w_score.0.lcssa.i = phi i32 [ 0, %_ZL17kingpressure_evalP7state_tP12attackinfo_tP12t_eval_comps.exit ], [ %spec.select422.i.lcssa, %while.end.i98.loopexit ]
  %b_passed.i = getelementptr inbounds nuw i8, ptr %call1, i64 40
  %194 = load i64, ptr %b_passed.i, align 8, !tbaa !35
  store i64 %194, ptr %temp.i70, align 8, !tbaa !7
  %tobool128.not434.i = icmp eq i64 %194, 0
  br i1 %tobool128.not434.i, label %_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps.exit, label %while.body129.lr.ph.i

while.body129.lr.ph.i:                            ; preds = %while.end.i98
  %sboard138.i = getelementptr inbounds nuw i8, ptr %s, i64 4
  %cmp162.i = icmp slt i32 %phase_scale, 384
  %white_to_move167.i = getelementptr inbounds nuw i8, ptr %s, i64 460
  %sub174.i = sub nsw i32 1024, %phase_scale
  %mul175.i = mul nsw i32 %sub174.i, 20
  %div176419.i = lshr i32 %mul175.i, 10
  %cmp178.i = icmp eq i32 %phase_scale, 0
  %shr185.i = ashr i32 %173, 3
  %and194.i = and i32 %173, 7
  %All221.i = getelementptr inbounds nuw i8, ptr %s, i64 264
  br label %while.body129.i

while.body129.i:                                  ; preds = %if.end261.i, %while.body129.lr.ph.i
  %b_score.0435.i = phi i32 [ 0, %while.body129.lr.ph.i ], [ %spec.select425.i, %if.end261.i ]
  %call130.i = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp.i70)
  %shr131.i = ashr i32 %call130.i, 3
  %and132.i = and i32 %call130.i, 7
  %sub134.i = sub nsw i32 6, %shr131.i
  %idxprom135.i = sext i32 %sub134.i to i64
  %arrayidx136.i = getelementptr inbounds i32, ptr @_ZL8w_passer, i64 %idxprom135.i
  %195 = load i32, ptr %arrayidx136.i, align 4, !tbaa !12
  %sub137.i = sub nsw i32 %b_score.0435.i, %195
  %196 = sext i32 %call130.i to i64
  %197 = getelementptr i32, ptr %sboard138.i, i64 %196
  %arrayidx141.i = getelementptr i8, ptr %197, i64 4
  %198 = load i32, ptr %arrayidx141.i, align 4, !tbaa !12
  %cmp142.i = icmp eq i32 %198, 2
  br i1 %cmp142.i, label %if.then155.i, label %lor.lhs.false143.i

lor.lhs.false143.i:                               ; preds = %while.body129.i
  %arrayidx147.i = getelementptr i8, ptr %197, i64 -36
  %199 = load i32, ptr %arrayidx147.i, align 4, !tbaa !12
  %cmp148.i = icmp eq i32 %199, 2
  br i1 %cmp148.i, label %if.then155.i, label %lor.lhs.false149.i

lor.lhs.false149.i:                               ; preds = %lor.lhs.false143.i
  %arrayidx153.i99 = getelementptr i8, ptr %197, i64 -28
  %200 = load i32, ptr %arrayidx153.i99, align 4, !tbaa !12
  %cmp154.i = icmp eq i32 %200, 2
  br i1 %cmp154.i, label %if.then155.i, label %if.end161.i

if.then155.i:                                     ; preds = %lor.lhs.false149.i, %lor.lhs.false143.i, %while.body129.i
  %arrayidx159.i = getelementptr inbounds i32, ptr @_ZL23w_passer_pawn_supported, i64 %idxprom135.i
  %201 = load i32, ptr %arrayidx159.i, align 4, !tbaa !12
  %sub160.i = sub nsw i32 %sub137.i, %201
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then155.i, %lor.lhs.false149.i
  %b_score.1.i100 = phi i32 [ %sub160.i, %if.then155.i ], [ %sub137.i, %lor.lhs.false149.i ]
  br i1 %cmp162.i, label %if.then163.i, label %if.end203.i

if.then163.i:                                     ; preds = %if.end161.i
  %add164.i105 = or disjoint i32 %and132.i, 56
  %call165.i106 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %add164.i105, i32 noundef %call130.i)
  %call166.i = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %add164.i105, i32 noundef %172)
  %202 = load i32, ptr %white_to_move167.i, align 4, !tbaa !33
  %tobool168.not.i107 = icmp ne i32 %202, 0
  %dec170.i = sext i1 %tobool168.not.i107 to i32
  %spec.select423.i = add nsw i32 %call166.i, %dec170.i
  %cmp172.i = icmp slt i32 %call165.i106, %spec.select423.i
  %sub177.i = sub nsw i32 %b_score.1.i100, %div176419.i
  %sub180.i = add nsw i32 %sub177.i, -500
  %spec.select424.i = select i1 %cmp178.i, i32 %sub180.i, i32 %sub177.i
  %b_score.2.i = select i1 %cmp172.i, i32 %spec.select424.i, i32 %b_score.1.i100
  br i1 %cmp178.i, label %if.then184.i, label %if.end203.i

if.then184.i:                                     ; preds = %if.then163.i
  %cmp186.i = icmp sge i32 %shr185.i, %shr131.i
  %cmp188.i = icmp sgt i32 %shr131.i, 5
  %or.cond282.i = and i1 %cmp186.i, %cmp188.i
  br i1 %or.cond282.i, label %if.then189.i, label %if.else199.i

if.then189.i:                                     ; preds = %if.then184.i
  %203 = add nsw i32 %and132.i, -7
  %switch427.i = icmp ult i32 %203, -6
  %cmp195.not.i = icmp eq i32 %and194.i, %and132.i
  %or.cond428.i = select i1 %switch427.i, i1 %cmp195.not.i, i1 false
  %sub197.i = add nsw i32 %b_score.2.i, -25
  %spec.select430.i = select i1 %or.cond428.i, i32 %b_score.2.i, i32 %sub197.i
  br label %if.end203.i

if.else199.i:                                     ; preds = %if.then184.i
  %add200.i = add nsw i32 %b_score.2.i, 25
  br label %if.end203.i

if.end203.i:                                      ; preds = %if.else199.i, %if.then189.i, %if.then163.i, %if.end161.i
  %b_score.3.i = phi i32 [ %add200.i, %if.else199.i ], [ %b_score.2.i, %if.then163.i ], [ %b_score.1.i100, %if.end161.i ], [ %spec.select430.i, %if.then189.i ]
  %cmp205.not.i = icmp slt i32 %shr185.i, %shr131.i
  br i1 %cmp205.not.i, label %if.end217.i, label %if.then206.i

if.then206.i:                                     ; preds = %if.end203.i
  %sub208.i = sub nsw i32 %and194.i, %and132.i
  %204 = call i32 @llvm.abs.i32(i32 %sub208.i, i1 true)
  %cmp209.i = icmp eq i32 %204, 1
  br i1 %cmp209.i, label %if.then210.i, label %if.end217.i

if.then210.i:                                     ; preds = %if.then206.i
  %arrayidx214.i104 = getelementptr inbounds i32, ptr @_ZL23w_passer_king_supported, i64 %idxprom135.i
  %205 = load i32, ptr %arrayidx214.i104, align 4, !tbaa !12
  %sub215.i = sub nsw i32 %b_score.3.i, %205
  br label %if.end217.i

if.end217.i:                                      ; preds = %if.then210.i, %if.then206.i, %if.end203.i
  %b_score.4.i101 = phi i32 [ %sub215.i, %if.then210.i ], [ %b_score.3.i, %if.then206.i ], [ %b_score.3.i, %if.end203.i ]
  %add218.i = add nsw i32 %call130.i, 8
  %idxprom219.i = sext i32 %add218.i to i64
  %arrayidx220.i = getelementptr inbounds i64, ptr @Mask, i64 %idxprom219.i
  %206 = load i64, ptr %arrayidx220.i, align 8, !tbaa !7
  %207 = load i64, ptr %All221.i, align 8, !tbaa !8
  %and222.i = and i64 %207, %206
  %tobool223.not.i = icmp eq i64 %and222.i, 0
  br i1 %tobool223.not.i, label %if.then224.i, label %if.end261.sink.split.i

if.then224.i:                                     ; preds = %if.end217.i
  %call226.i = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %s, i32 noundef 1, i32 noundef %call130.i, i32 noundef %add218.i, i32 noundef 0)
  %cmp227.i = icmp sgt i32 %call226.i, -1
  br i1 %cmp227.i, label %if.then228.i, label %if.end261.i

if.then228.i:                                     ; preds = %if.then224.i
  %arrayidx232.i = getelementptr inbounds i32, ptr @_ZL13w_passer_free, i64 %idxprom135.i
  %208 = load i32, ptr %arrayidx232.i, align 4, !tbaa !12
  %sub233.i = sub nsw i32 %b_score.4.i101, %208
  %cmp234.i = icmp slt i32 %shr131.i, 6
  br i1 %cmp234.i, label %land.lhs.true235.i, label %if.end261.i

land.lhs.true235.i:                               ; preds = %if.then228.i
  %add236.i = add nsw i32 %call130.i, 16
  %idxprom237.i = sext i32 %add236.i to i64
  %arrayidx238.i = getelementptr inbounds i64, ptr @Mask, i64 %idxprom237.i
  %209 = load i64, ptr %arrayidx238.i, align 8, !tbaa !7
  %210 = load i64, ptr %All221.i, align 8, !tbaa !8
  %and240.i = and i64 %210, %209
  %tobool241.not.i = icmp eq i64 %and240.i, 0
  br i1 %tobool241.not.i, label %if.then242.i, label %if.end261.i

if.then242.i:                                     ; preds = %land.lhs.true235.i
  %call244.i103 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %s, i32 noundef 1, i32 noundef %call130.i, i32 noundef %add236.i, i32 noundef 0)
  %cmp245.i = icmp sgt i32 %call244.i103, -1
  br i1 %cmp245.i, label %if.end261.sink.split.i, label %if.end261.i

if.end261.sink.split.i:                           ; preds = %if.then242.i, %if.end217.i
  %_ZL18w_passer_very_free.sink437.i = phi ptr [ @_ZL18w_passer_very_free, %if.then242.i ], [ @_ZL16w_passer_blocked, %if.end217.i ]
  %sub233.sink.i = phi i32 [ %sub233.i, %if.then242.i ], [ %b_score.4.i101, %if.end217.i ]
  %arrayidx250.i = getelementptr inbounds i32, ptr %_ZL18w_passer_very_free.sink437.i, i64 %idxprom135.i
  %211 = load i32, ptr %arrayidx250.i, align 4, !tbaa !12
  %sub251.i = sub nsw i32 %sub233.sink.i, %211
  br label %if.end261.i

if.end261.i:                                      ; preds = %if.end261.sink.split.i, %if.then242.i, %land.lhs.true235.i, %if.then228.i, %if.then224.i
  %b_score.5.i102 = phi i32 [ %sub233.i, %land.lhs.true235.i ], [ %sub233.i, %if.then242.i ], [ %sub233.i, %if.then228.i ], [ %b_score.4.i101, %if.then224.i ], [ %sub251.i, %if.end261.sink.split.i ]
  %call263.i = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %172, i32 noundef %add218.i)
  %mul264.i = mul nsw i32 %call263.i, %shr131.i
  %sub265.i = sub nsw i32 %b_score.5.i102, %mul264.i
  %mul266.neg.i = mul nsw i32 %shr131.i, 3
  %call268.i = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %173, i32 noundef %add218.i)
  %mul269.neg.i = mul i32 %mul266.neg.i, %call268.i
  %sub270.i = add i32 %mul269.neg.i, %sub265.i
  %arrayidx272.i = getelementptr inbounds i64, ptr @FileUpMask, i64 %196
  %212 = load i64, ptr %arrayidx272.i, align 8, !tbaa !7
  %213 = load i64, ptr %arrayidx60.i, align 8, !tbaa !7
  %and275.i = and i64 %213, %212
  %tobool276.not.i = icmp eq i64 %and275.i, 0
  %sub278.i = add nsw i32 %sub270.i, 8
  %spec.select425.i = select i1 %tobool276.not.i, i32 %sub270.i, i32 %sub278.i
  %.pr431.i = load i64, ptr %temp.i70, align 8, !tbaa !7
  %tobool128.not.i = icmp eq i64 %.pr431.i, 0
  br i1 %tobool128.not.i, label %_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps.exit.loopexit, label %while.body129.i, !llvm.loop !36

_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps.exit.loopexit: ; preds = %if.end261.i
  %spec.select425.i.lcssa = phi i32 [ %spec.select425.i, %if.end261.i ]
  br label %_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps.exit

_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps.exit: ; preds = %_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps.exit.loopexit, %while.end.i98
  %b_score.0.lcssa.i = phi i32 [ 0, %while.end.i98 ], [ %spec.select425.i.lcssa, %_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps.exit.loopexit ]
  %w_passers.i = getelementptr inbounds nuw i8, ptr %ec, i64 16
  store i32 %w_score.0.lcssa.i, ptr %w_passers.i, align 4, !tbaa !37
  %b_passers.i = getelementptr inbounds nuw i8, ptr %ec, i64 20
  store i32 %b_score.0.lcssa.i, ptr %b_passers.i, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %temp.i70) #4
  call void @_Z8psq_evalP7state_tP12t_eval_comps(ptr noundef nonnull %s, ptr noundef %ec)
  %w_strong_square.i = getelementptr inbounds nuw i8, ptr %call1, i64 48
  %214 = load i64, ptr %w_strong_square.i, align 8, !tbaa !39
  %215 = load i64, ptr %arrayidx227.i, align 8, !tbaa !7
  %and.i121 = and i64 %215, %214
  %call.i122 = call noundef i32 @_Z8PopCounty(i64 noundef %and.i121)
  %mul.i123 = mul nsw i32 %call.i122, 15
  %w_super_strong_square.i = getelementptr inbounds nuw i8, ptr %call1, i64 64
  %216 = load i64, ptr %w_super_strong_square.i, align 8, !tbaa !40
  %217 = load i64, ptr %arrayidx227.i, align 8, !tbaa !7
  %and3.i = and i64 %217, %216
  %call4.i = call noundef i32 @_Z8PopCounty(i64 noundef %and3.i)
  %mul5.i = mul nsw i32 %call4.i, 25
  %add6.i = add nsw i32 %mul5.i, %mul.i123
  %b_strong_square.i = getelementptr inbounds nuw i8, ptr %call1, i64 56
  %218 = load i64, ptr %b_strong_square.i, align 8, !tbaa !41
  %219 = load i64, ptr %arrayidx240.i, align 8, !tbaa !7
  %and9.i = and i64 %219, %218
  %call10.i = call noundef i32 @_Z8PopCounty(i64 noundef %and9.i)
  %mul11.neg.i = mul nsw i32 %call10.i, -15
  %b_super_strong_square.i = getelementptr inbounds nuw i8, ptr %call1, i64 72
  %220 = load i64, ptr %b_super_strong_square.i, align 8, !tbaa !42
  %221 = load i64, ptr %arrayidx240.i, align 8, !tbaa !7
  %and14.i124 = and i64 %221, %220
  %call15.i = call noundef i32 @_Z8PopCounty(i64 noundef %and14.i124)
  %mul16.neg.i = mul i32 %call15.i, -25
  %sub17.i = add i32 %mul16.neg.i, %mul11.neg.i
  %222 = load i64, ptr @RankMask, align 16, !tbaa !7
  %arrayidx19.i125 = getelementptr inbounds nuw i8, ptr %s, i64 336
  %223 = load i64, ptr %arrayidx19.i125, align 8, !tbaa !7
  %and20.i = and i64 %223, %222
  %tobool.not.i126 = icmp eq i64 %and20.i, 0
  br i1 %tobool.not.i126, label %lor.lhs.false.i153, label %if.then.i127

lor.lhs.false.i153:                               ; preds = %_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps.exit
  %224 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 8), align 8, !tbaa !7
  %225 = load i64, ptr %arrayidx9.i, align 8, !tbaa !7
  %and23.i154 = and i64 %225, %224
  %tobool24.not.i155 = icmp eq i64 %and23.i154, 0
  br i1 %tobool24.not.i155, label %if.end38.i, label %if.then.i127

if.then.i127:                                     ; preds = %lor.lhs.false.i153, %_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps.exit
  %226 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 8), align 8, !tbaa !7
  %227 = load i64, ptr %arrayidx60.i, align 8, !tbaa !7
  %and27.i128 = and i64 %227, %226
  %tobool28.not.i129 = icmp eq i64 %and27.i128, 0
  br i1 %tobool28.not.i129, label %if.end38.i, label %if.then29.i130

if.then29.i130:                                   ; preds = %if.then.i127
  %call33.i131 = call noundef i32 @_Z8PopCounty(i64 noundef %and27.i128)
  %cmp.i132 = icmp sgt i32 %call33.i131, 1
  br i1 %cmp.i132, label %if.then34.i, label %if.else.i133

if.then34.i:                                      ; preds = %if.then29.i130
  %add35.i = add nsw i32 %add6.i, 40
  br label %if.end38.i

if.else.i133:                                     ; preds = %if.then29.i130
  %add36.i = add nsw i32 %add6.i, 3
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i133, %if.then34.i, %if.then.i127, %lor.lhs.false.i153
  %w_score.0.i134 = phi i32 [ %add35.i, %if.then34.i ], [ %add36.i, %if.else.i133 ], [ %add6.i, %if.then.i127 ], [ %add6.i, %lor.lhs.false.i153 ]
  %228 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 56), align 8, !tbaa !7
  %arrayidx40.i135 = getelementptr inbounds nuw i8, ptr %s, i64 328
  %229 = load i64, ptr %arrayidx40.i135, align 8, !tbaa !7
  %and41.i = and i64 %229, %228
  %tobool42.not.i = icmp eq i64 %and41.i, 0
  br i1 %tobool42.not.i, label %lor.lhs.false43.i, label %if.then48.i

lor.lhs.false43.i:                                ; preds = %if.end38.i
  %230 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 48), align 16, !tbaa !7
  %231 = load i64, ptr %arrayidx.i, align 8, !tbaa !7
  %and46.i152 = and i64 %231, %230
  %tobool47.not.i = icmp eq i64 %and46.i152, 0
  br i1 %tobool47.not.i, label %if.end65.i, label %if.then48.i

if.then48.i:                                      ; preds = %lor.lhs.false43.i, %if.end38.i
  %232 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 48), align 16, !tbaa !7
  %233 = load i64, ptr %arrayidx128.i, align 8, !tbaa !7
  %and51.i = and i64 %233, %232
  %tobool52.not.i = icmp eq i64 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end65.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.then48.i
  %call57.i = call noundef i32 @_Z8PopCounty(i64 noundef %and51.i)
  %cmp58.i = icmp sgt i32 %call57.i, 1
  br i1 %cmp58.i, label %if.then59.i, label %if.else61.i

if.then59.i:                                      ; preds = %if.then53.i
  %sub60.i = add nsw i32 %sub17.i, -40
  br label %if.end65.i

if.else61.i:                                      ; preds = %if.then53.i
  %sub62.i = add nsw i32 %sub17.i, -3
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else61.i, %if.then59.i, %if.then48.i, %lor.lhs.false43.i
  %b_score.0.i136 = phi i32 [ %sub60.i, %if.then59.i ], [ %sub62.i, %if.else61.i ], [ %sub17.i, %if.then48.i ], [ %sub17.i, %lor.lhs.false43.i ]
  %arrayidx66.i137 = getelementptr inbounds nuw i8, ptr %s, i64 444
  %234 = load i32, ptr %arrayidx66.i137, align 4, !tbaa !12
  %cmp67.i = icmp eq i32 %234, 1
  br i1 %cmp67.i, label %land.lhs.true.i145, label %if.end91.i

land.lhs.true.i145:                               ; preds = %if.end65.i
  %arrayidx69.i146 = getelementptr inbounds nuw i8, ptr %s, i64 412
  %235 = load i32, ptr %arrayidx69.i146, align 4, !tbaa !12
  %cmp70.i147 = icmp eq i32 %235, 0
  br i1 %cmp70.i147, label %if.then71.i, label %if.end91.i

if.then71.i:                                      ; preds = %land.lhs.true.i145
  %236 = load i64, ptr %arrayidx18.i, align 8, !tbaa !7
  %237 = load i64, ptr @WhiteSqMask, align 8, !tbaa !7
  %and74.i148 = and i64 %237, %236
  %tobool75.not.i = icmp eq i64 %and74.i148, 0
  %238 = load i64, ptr %arrayidx.i, align 8, !tbaa !7
  %239 = load i64, ptr @BlackSqMask, align 8
  %and79.sink.v.i = select i1 %tobool75.not.i, i64 %239, i64 %237
  %and79.sink.i = and i64 %and79.sink.v.i, %238
  %call80.i150 = call noundef i32 @_Z8PopCounty(i64 noundef %and79.sink.i)
  %mul81.i = mul nsw i32 %call80.i150, -3
  %add82.i = add nsw i32 %mul81.i, %w_score.0.i134
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then71.i, %land.lhs.true.i145, %if.end65.i
  %w_score.1.i138 = phi i32 [ %w_score.0.i134, %land.lhs.true.i145 ], [ %w_score.0.i134, %if.end65.i ], [ %add82.i, %if.then71.i ]
  %arrayidx93.i = getelementptr inbounds nuw i8, ptr %s, i64 448
  %240 = load i32, ptr %arrayidx93.i, align 8, !tbaa !12
  %cmp94.i = icmp eq i32 %240, 1
  br i1 %cmp94.i, label %land.lhs.true95.i, label %_ZL15positional_evalP7state_tP8pawntt_tP12t_eval_comps.exit

land.lhs.true95.i:                                ; preds = %if.end91.i
  %arrayidx97.i142 = getelementptr inbounds nuw i8, ptr %s, i64 416
  %241 = load i32, ptr %arrayidx97.i142, align 8, !tbaa !12
  %cmp98.i = icmp eq i32 %241, 0
  br i1 %cmp98.i, label %if.then99.i143, label %_ZL15positional_evalP7state_tP8pawntt_tP12t_eval_comps.exit

if.then99.i143:                                   ; preds = %land.lhs.true95.i
  %242 = load i64, ptr %arrayidx34.i, align 8, !tbaa !7
  %243 = load i64, ptr @WhiteSqMask, align 8, !tbaa !7
  %and102.i = and i64 %243, %242
  %tobool103.not.i = icmp eq i64 %and102.i, 0
  %244 = load i64, ptr %arrayidx9.i, align 8, !tbaa !7
  %245 = load i64, ptr @BlackSqMask, align 8
  %and107.sink.v.i = select i1 %tobool103.not.i, i64 %245, i64 %243
  %and107.sink.i = and i64 %and107.sink.v.i, %244
  %call108.i = call noundef i32 @_Z8PopCounty(i64 noundef %and107.sink.i)
  %mul109.neg.i = mul i32 %call108.i, 3
  %sub110.i = add i32 %mul109.neg.i, %b_score.0.i136
  br label %_ZL15positional_evalP7state_tP8pawntt_tP12t_eval_comps.exit

_ZL15positional_evalP7state_tP8pawntt_tP12t_eval_comps.exit: ; preds = %if.then99.i143, %land.lhs.true95.i, %if.end91.i
  %b_score.1.i139 = phi i32 [ %b_score.0.i136, %land.lhs.true95.i ], [ %b_score.0.i136, %if.end91.i ], [ %sub110.i, %if.then99.i143 ]
  %246 = load i32, ptr %arrayidx66.i137, align 4, !tbaa !12
  %cmp122.i = icmp eq i32 %246, 2
  %add124.i = add nsw i32 %w_score.1.i138, 30
  %spec.select.i140 = select i1 %cmp122.i, i32 %add124.i, i32 %w_score.1.i138
  %247 = load i32, ptr %arrayidx93.i, align 8, !tbaa !12
  %cmp128.i = icmp eq i32 %247, 2
  %sub130.i = add nsw i32 %b_score.1.i139, -30
  %b_score.2.i141 = select i1 %cmp128.i, i32 %sub130.i, i32 %b_score.1.i139
  store i32 %spec.select.i140, ptr %ec, align 4, !tbaa !43
  %b_positional.i = getelementptr inbounds nuw i8, ptr %ec, i64 4
  store i32 %b_score.2.i141, ptr %b_positional.i, align 4, !tbaa !44
  %sboard1.i = getelementptr inbounds nuw i8, ptr %s, i64 4
  %arrayidx.i156 = getelementptr inbounds nuw i8, ptr %s, i64 196
  %248 = load i32, ptr %arrayidx.i156, align 4, !tbaa !12
  %cmp.i157 = icmp eq i32 %248, 12
  br i1 %cmp.i157, label %land.lhs.true.i191, label %lor.lhs.false.i158

lor.lhs.false.i158:                               ; preds = %_ZL15positional_evalP7state_tP8pawntt_tP12t_eval_comps.exit
  %arrayidx2.i159 = getelementptr inbounds nuw i8, ptr %s, i64 232
  %249 = load i32, ptr %arrayidx2.i159, align 4, !tbaa !12
  %cmp3.i = icmp eq i32 %249, 12
  br i1 %cmp3.i, label %land.lhs.true.i191, label %if.end.i160

land.lhs.true.i191:                               ; preds = %lor.lhs.false.i158, %_ZL15positional_evalP7state_tP8pawntt_tP12t_eval_comps.exit
  %arrayidx4.i = getelementptr inbounds nuw i8, ptr %s, i64 168
  %250 = load i32, ptr %arrayidx4.i, align 4, !tbaa !12
  %cmp5.i = icmp eq i32 %250, 1
  br i1 %cmp5.i, label %land.lhs.true6.i, label %if.end.i160

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i191
  %arrayidx7.i192 = getelementptr inbounds nuw i8, ptr %s, i64 204
  %251 = load i32, ptr %arrayidx7.i192, align 4, !tbaa !12
  %cmp8.i193 = icmp eq i32 %251, 1
  %spec.select.i194 = select i1 %cmp8.i193, i32 90, i32 0
  br label %if.end.i160

if.end.i160:                                      ; preds = %land.lhs.true6.i, %land.lhs.true.i191, %lor.lhs.false.i158
  %score.0.i = phi i32 [ 0, %land.lhs.true.i191 ], [ 0, %lor.lhs.false.i158 ], [ %spec.select.i194, %land.lhs.true6.i ]
  %arrayidx9.i161 = getelementptr inbounds nuw i8, ptr %s, i64 224
  %252 = load i32, ptr %arrayidx9.i161, align 4, !tbaa !12
  %cmp10.i = icmp eq i32 %252, 12
  br i1 %cmp10.i, label %land.lhs.true14.i, label %lor.lhs.false11.i

lor.lhs.false11.i:                                ; preds = %if.end.i160
  %arrayidx12.i162 = getelementptr inbounds nuw i8, ptr %s, i64 252
  %253 = load i32, ptr %arrayidx12.i162, align 4, !tbaa !12
  %cmp13.i = icmp eq i32 %253, 12
  br i1 %cmp13.i, label %land.lhs.true14.i, label %if.end25.i

land.lhs.true14.i:                                ; preds = %lor.lhs.false11.i, %if.end.i160
  %arrayidx15.i189 = getelementptr inbounds nuw i8, ptr %s, i64 188
  %254 = load i32, ptr %arrayidx15.i189, align 4, !tbaa !12
  %cmp16.i = icmp eq i32 %254, 1
  br i1 %cmp16.i, label %land.lhs.true17.i, label %if.end25.i

land.lhs.true17.i:                                ; preds = %land.lhs.true14.i
  %arrayidx18.i190 = getelementptr inbounds nuw i8, ptr %s, i64 216
  %255 = load i32, ptr %arrayidx18.i190, align 4, !tbaa !12
  switch i32 %255, label %if.end25.i [
    i32 1, label %if.then23.i
    i32 5, label %if.then23.i
  ]

if.then23.i:                                      ; preds = %land.lhs.true17.i, %land.lhs.true17.i
  %sub24.i = add nuw nsw i32 %score.0.i, 90
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %land.lhs.true17.i, %land.lhs.true14.i, %lor.lhs.false11.i
  %score.1.i163 = phi i32 [ %sub24.i, %if.then23.i ], [ %score.0.i, %land.lhs.true14.i ], [ %score.0.i, %lor.lhs.false11.i ], [ %score.0.i, %land.lhs.true17.i ]
  %arrayidx26.i164 = getelementptr inbounds nuw i8, ptr %s, i64 36
  %256 = load i32, ptr %arrayidx26.i164, align 4, !tbaa !12
  %cmp27.i165 = icmp eq i32 %256, 11
  br i1 %cmp27.i165, label %land.lhs.true31.i, label %lor.lhs.false28.i

lor.lhs.false28.i:                                ; preds = %if.end25.i
  %arrayidx29.i = getelementptr inbounds nuw i8, ptr %s, i64 8
  %257 = load i32, ptr %arrayidx29.i, align 4, !tbaa !12
  %cmp30.i = icmp eq i32 %257, 11
  br i1 %cmp30.i, label %land.lhs.true31.i, label %if.end38.i166

land.lhs.true31.i:                                ; preds = %lor.lhs.false28.i, %if.end25.i
  %arrayidx32.i = getelementptr inbounds nuw i8, ptr %s, i64 72
  %258 = load i32, ptr %arrayidx32.i, align 4, !tbaa !12
  %cmp33.i = icmp eq i32 %258, 2
  br i1 %cmp33.i, label %land.lhs.true34.i, label %if.end38.i166

land.lhs.true34.i:                                ; preds = %land.lhs.true31.i
  %arrayidx35.i = getelementptr inbounds nuw i8, ptr %s, i64 44
  %259 = load i32, ptr %arrayidx35.i, align 4, !tbaa !12
  %cmp36.i = icmp eq i32 %259, 2
  %add.i188 = add nsw i32 %score.1.i163, -90
  %spec.select200.i = select i1 %cmp36.i, i32 %add.i188, i32 %score.1.i163
  br label %if.end38.i166

if.end38.i166:                                    ; preds = %land.lhs.true34.i, %land.lhs.true31.i, %lor.lhs.false28.i
  %score.2.i167 = phi i32 [ %score.1.i163, %land.lhs.true31.i ], [ %score.1.i163, %lor.lhs.false28.i ], [ %spec.select200.i, %land.lhs.true34.i ]
  %arrayidx39.i168 = getelementptr inbounds nuw i8, ptr %s, i64 64
  %260 = load i32, ptr %arrayidx39.i168, align 4, !tbaa !12
  %cmp40.i169 = icmp eq i32 %260, 11
  br i1 %cmp40.i169, label %land.lhs.true44.i, label %lor.lhs.false41.i

lor.lhs.false41.i:                                ; preds = %if.end38.i166
  %arrayidx42.i = getelementptr inbounds nuw i8, ptr %s, i64 28
  %261 = load i32, ptr %arrayidx42.i, align 4, !tbaa !12
  %cmp43.i = icmp eq i32 %261, 11
  br i1 %cmp43.i, label %land.lhs.true44.i, label %if.end55.i

land.lhs.true44.i:                                ; preds = %lor.lhs.false41.i, %if.end38.i166
  %arrayidx45.i185 = getelementptr inbounds nuw i8, ptr %s, i64 92
  %262 = load i32, ptr %arrayidx45.i185, align 4, !tbaa !12
  %cmp46.i186 = icmp eq i32 %262, 2
  br i1 %cmp46.i186, label %land.lhs.true47.i, label %if.end55.i

land.lhs.true47.i:                                ; preds = %land.lhs.true44.i
  %arrayidx48.i = getelementptr inbounds nuw i8, ptr %s, i64 56
  %263 = load i32, ptr %arrayidx48.i, align 4, !tbaa !12
  switch i32 %263, label %if.end55.i [
    i32 2, label %if.then53.i187
    i32 6, label %if.then53.i187
  ]

if.then53.i187:                                   ; preds = %land.lhs.true47.i, %land.lhs.true47.i
  %add54.i = add nsw i32 %score.2.i167, -90
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then53.i187, %land.lhs.true47.i, %land.lhs.true44.i, %lor.lhs.false41.i
  %score.3.i = phi i32 [ %add54.i, %if.then53.i187 ], [ %score.2.i167, %land.lhs.true44.i ], [ %score.2.i167, %lor.lhs.false41.i ], [ %score.2.i167, %land.lhs.true47.i ]
  %cmp57.i = icmp eq i32 %260, 3
  br i1 %cmp57.i, label %land.lhs.true58.i, label %if.end66.i

land.lhs.true58.i:                                ; preds = %if.end55.i
  %arrayidx59.i = getelementptr inbounds nuw i8, ptr %s, i64 88
  %264 = load i32, ptr %arrayidx59.i, align 4, !tbaa !12
  %cmp60.i182 = icmp eq i32 %264, 2
  br i1 %cmp60.i182, label %land.lhs.true61.i, label %if.end66.i

land.lhs.true61.i:                                ; preds = %land.lhs.true58.i
  %arrayidx62.i183 = getelementptr inbounds nuw i8, ptr %s, i64 60
  %265 = load i32, ptr %arrayidx62.i183, align 4, !tbaa !12
  %cmp63.i = icmp eq i32 %265, 2
  %add65.i184 = add nsw i32 %score.3.i, -35
  %spec.select201.i = select i1 %cmp63.i, i32 %add65.i184, i32 %score.3.i
  br label %if.end66.i

if.end66.i:                                       ; preds = %land.lhs.true61.i, %land.lhs.true58.i, %if.end55.i
  %score.4.i170 = phi i32 [ %score.3.i, %land.lhs.true58.i ], [ %score.3.i, %if.end55.i ], [ %spec.select201.i, %land.lhs.true61.i ]
  %cmp68.i = icmp eq i32 %252, 4
  br i1 %cmp68.i, label %land.lhs.true69.i, label %if.end77.i

land.lhs.true69.i:                                ; preds = %if.end66.i
  %arrayidx70.i180 = getelementptr inbounds nuw i8, ptr %s, i64 184
  %266 = load i32, ptr %arrayidx70.i180, align 4, !tbaa !12
  %cmp71.i = icmp eq i32 %266, 1
  br i1 %cmp71.i, label %land.lhs.true72.i, label %if.end77.i

land.lhs.true72.i:                                ; preds = %land.lhs.true69.i
  %arrayidx73.i181 = getelementptr inbounds nuw i8, ptr %s, i64 220
  %267 = load i32, ptr %arrayidx73.i181, align 4, !tbaa !12
  %cmp74.i = icmp eq i32 %267, 1
  %sub76.i = add nsw i32 %score.4.i170, 35
  %spec.select202.i = select i1 %cmp74.i, i32 %sub76.i, i32 %score.4.i170
  br label %if.end77.i

if.end77.i:                                       ; preds = %land.lhs.true72.i, %land.lhs.true69.i, %if.end66.i
  %score.5.i171 = phi i32 [ %score.4.i170, %land.lhs.true69.i ], [ %score.4.i170, %if.end66.i ], [ %spec.select202.i, %land.lhs.true72.i ]
  %arrayidx78.i = getelementptr inbounds nuw i8, ptr %s, i64 12
  %268 = load i32, ptr %arrayidx78.i, align 4, !tbaa !12
  %cmp79.i = icmp eq i32 %268, 6
  br i1 %cmp79.i, label %land.lhs.true83.i178, label %lor.lhs.false80.i

lor.lhs.false80.i:                                ; preds = %if.end77.i
  %arrayidx81.i = getelementptr inbounds nuw i8, ptr %s, i64 8
  %269 = load i32, ptr %arrayidx81.i, align 4, !tbaa !12
  %cmp82.i172 = icmp eq i32 %269, 6
  br i1 %cmp82.i172, label %land.lhs.true83.i178, label %if.end94.i

land.lhs.true83.i178:                             ; preds = %lor.lhs.false80.i, %if.end77.i
  %270 = load i32, ptr %sboard1.i, align 4, !tbaa !12
  %cmp85.i = icmp eq i32 %270, 8
  %cmp88.i = icmp eq i32 %256, 8
  %or.cond.i179 = or i1 %cmp88.i, %cmp85.i
  br i1 %or.cond.i179, label %if.then92.i, label %lor.lhs.false89.i

lor.lhs.false89.i:                                ; preds = %land.lhs.true83.i178
  %arrayidx90.i = getelementptr inbounds nuw i8, ptr %s, i64 8
  %271 = load i32, ptr %arrayidx90.i, align 4, !tbaa !12
  %cmp91.i = icmp eq i32 %271, 8
  br i1 %cmp91.i, label %if.then92.i, label %if.end94.i

if.then92.i:                                      ; preds = %lor.lhs.false89.i, %land.lhs.true83.i178
  %sub93.i = add nsw i32 %score.5.i171, 25
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then92.i, %lor.lhs.false89.i, %lor.lhs.false80.i
  %score.6.i = phi i32 [ %sub93.i, %if.then92.i ], [ %score.5.i171, %lor.lhs.false89.i ], [ %score.5.i171, %lor.lhs.false80.i ]
  %arrayidx95.i = getelementptr inbounds nuw i8, ptr %s, i64 24
  %272 = load i32, ptr %arrayidx95.i, align 4, !tbaa !12
  %cmp96.i = icmp eq i32 %272, 6
  br i1 %cmp96.i, label %land.lhs.true100.i, label %lor.lhs.false97.i

lor.lhs.false97.i:                                ; preds = %if.end94.i
  %arrayidx98.i = getelementptr inbounds nuw i8, ptr %s, i64 28
  %273 = load i32, ptr %arrayidx98.i, align 4, !tbaa !12
  %cmp99.i = icmp eq i32 %273, 6
  br i1 %cmp99.i, label %land.lhs.true100.i, label %if.end111.i

land.lhs.true100.i:                               ; preds = %lor.lhs.false97.i, %if.end94.i
  %arrayidx101.i176 = getelementptr inbounds nuw i8, ptr %s, i64 32
  %274 = load i32, ptr %arrayidx101.i176, align 4, !tbaa !12
  %cmp102.i = icmp eq i32 %274, 8
  %cmp105.i = icmp eq i32 %260, 8
  %or.cond1.i = or i1 %cmp105.i, %cmp102.i
  br i1 %or.cond1.i, label %if.then109.i, label %lor.lhs.false106.i

lor.lhs.false106.i:                               ; preds = %land.lhs.true100.i
  %arrayidx107.i = getelementptr inbounds nuw i8, ptr %s, i64 28
  %275 = load i32, ptr %arrayidx107.i, align 4, !tbaa !12
  %cmp108.i = icmp eq i32 %275, 8
  br i1 %cmp108.i, label %if.then109.i, label %if.end111.i

if.then109.i:                                     ; preds = %lor.lhs.false106.i, %land.lhs.true100.i
  %sub110.i177 = add nsw i32 %score.6.i, 25
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then109.i, %lor.lhs.false106.i, %lor.lhs.false97.i
  %score.7.i = phi i32 [ %sub110.i177, %if.then109.i ], [ %score.6.i, %lor.lhs.false106.i ], [ %score.6.i, %lor.lhs.false97.i ]
  %arrayidx112.i = getelementptr inbounds nuw i8, ptr %s, i64 236
  %276 = load i32, ptr %arrayidx112.i, align 4, !tbaa !12
  %cmp113.i = icmp eq i32 %276, 5
  br i1 %cmp113.i, label %land.lhs.true117.i, label %lor.lhs.false114.i

lor.lhs.false114.i:                               ; preds = %if.end111.i
  %arrayidx115.i = getelementptr inbounds nuw i8, ptr %s, i64 232
  %277 = load i32, ptr %arrayidx115.i, align 4, !tbaa !12
  %cmp116.i = icmp eq i32 %277, 5
  br i1 %cmp116.i, label %land.lhs.true117.i, label %if.end128.i

land.lhs.true117.i:                               ; preds = %lor.lhs.false114.i, %if.end111.i
  %arrayidx118.i = getelementptr inbounds nuw i8, ptr %s, i64 228
  %278 = load i32, ptr %arrayidx118.i, align 4, !tbaa !12
  %cmp119.i = icmp eq i32 %278, 7
  %cmp122.i175 = icmp eq i32 %248, 7
  %or.cond2.i = or i1 %cmp122.i175, %cmp119.i
  br i1 %or.cond2.i, label %if.then126.i, label %lor.lhs.false123.i

lor.lhs.false123.i:                               ; preds = %land.lhs.true117.i
  %arrayidx124.i = getelementptr inbounds nuw i8, ptr %s, i64 232
  %279 = load i32, ptr %arrayidx124.i, align 4, !tbaa !12
  %cmp125.i = icmp eq i32 %279, 7
  br i1 %cmp125.i, label %if.then126.i, label %if.end128.i

if.then126.i:                                     ; preds = %lor.lhs.false123.i, %land.lhs.true117.i
  %add127.i = add nsw i32 %score.7.i, -25
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then126.i, %lor.lhs.false123.i, %lor.lhs.false114.i
  %score.8.i = phi i32 [ %add127.i, %if.then126.i ], [ %score.7.i, %lor.lhs.false123.i ], [ %score.7.i, %lor.lhs.false114.i ]
  %arrayidx129.i = getelementptr inbounds nuw i8, ptr %s, i64 248
  %280 = load i32, ptr %arrayidx129.i, align 4, !tbaa !12
  %cmp130.i = icmp eq i32 %280, 5
  br i1 %cmp130.i, label %land.lhs.true134.i, label %lor.lhs.false131.i

lor.lhs.false131.i:                               ; preds = %if.end128.i
  %arrayidx132.i = getelementptr inbounds nuw i8, ptr %s, i64 252
  %281 = load i32, ptr %arrayidx132.i, align 4, !tbaa !12
  %cmp133.i = icmp eq i32 %281, 5
  br i1 %cmp133.i, label %land.lhs.true134.i, label %_ZL12trapped_evalP7state_tP12t_eval_comps.exit

land.lhs.true134.i:                               ; preds = %lor.lhs.false131.i, %if.end128.i
  %arrayidx135.i = getelementptr inbounds nuw i8, ptr %s, i64 256
  %282 = load i32, ptr %arrayidx135.i, align 4, !tbaa !12
  %cmp136.i = icmp eq i32 %282, 7
  %cmp139.i = icmp eq i32 %252, 7
  %or.cond3.i = or i1 %cmp139.i, %cmp136.i
  br i1 %or.cond3.i, label %if.then143.i, label %lor.lhs.false140.i

lor.lhs.false140.i:                               ; preds = %land.lhs.true134.i
  %arrayidx141.i173 = getelementptr inbounds nuw i8, ptr %s, i64 252
  %283 = load i32, ptr %arrayidx141.i173, align 4, !tbaa !12
  %cmp142.i174 = icmp eq i32 %283, 7
  br i1 %cmp142.i174, label %if.then143.i, label %_ZL12trapped_evalP7state_tP12t_eval_comps.exit

if.then143.i:                                     ; preds = %lor.lhs.false140.i, %land.lhs.true134.i
  %add144.i = add nsw i32 %score.8.i, -25
  br label %_ZL12trapped_evalP7state_tP12t_eval_comps.exit

_ZL12trapped_evalP7state_tP12t_eval_comps.exit:   ; preds = %if.then143.i, %lor.lhs.false140.i, %lor.lhs.false131.i
  %score.9.i = phi i32 [ %add144.i, %if.then143.i ], [ %score.8.i, %lor.lhs.false140.i ], [ %score.8.i, %lor.lhs.false131.i ]
  %add254.i = add nsw i32 %b_counter.2.lcssa.i, %w_counter.2.lcssa.i
  %mul255.i = mul nsw i32 %add254.i, 3
  %add256.i = add nsw i32 %mul255.i, %score.7.lcssa.i
  %add3 = add nsw i32 %add256.i, %score.9.i
  %accum_score = getelementptr inbounds nuw i8, ptr %ec, i64 40
  store i32 %add3, ptr %accum_score, align 4, !tbaa !45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_Z16static_pawn_evalP7state_t(ptr noundef) local_unnamed_addr #2

declare void @_Z8psq_evalP7state_tP12t_eval_comps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #2

declare noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z13ThickPopCounty(i64 noundef) local_unnamed_addr #2

declare noundef i32 @_Z8PopCounty(i64 noundef) local_unnamed_addr #2

declare noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z8sum_distii(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z16taxicab_dist_bitii(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

declare noundef i32 @_Z3seeP7state_tiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!0 = !{!1, !5, i64 280}
!1 = !{!"_ZTS7state_t", !2, i64 0, !3, i64 4, !5, i64 264, !5, i64 272, !5, i64 280, !3, i64 288, !2, i64 392, !2, i64 396, !3, i64 400, !2, i64 452, !2, i64 456, !2, i64 460, !2, i64 464, !2, i64 468, !2, i64 472, !2, i64 476, !5, i64 480, !5, i64 488, !3, i64 496, !3, i64 2544, !3, i64 2800, !3, i64 3056, !5, i64 4080, !5, i64 4088, !2, i64 4096, !3, i64 4100, !2, i64 4356, !2, i64 4360, !2, i64 4364, !2, i64 4368, !2, i64 4372, !2, i64 4376, !2, i64 4380, !2, i64 4384, !2, i64 4388, !2, i64 4392, !3, i64 4400}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"long long", !3, i64 0}
!6 = !{!1, !5, i64 272}
!7 = !{!5, !5, i64 0}
!8 = !{!1, !5, i64 264}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!2, !2, i64 0}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = !{!1, !2, i64 468}
!16 = distinct !{!16, !10}
!17 = !{!1, !2, i64 464}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = !{!22, !2, i64 80}
!22 = !{!"_ZTS8pawntt_t", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !2, i64 80, !2, i64 84}
!23 = !{!24, !2, i64 8}
!24 = !{!"_ZTS12t_eval_comps", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40}
!25 = !{!22, !2, i64 84}
!26 = !{!24, !2, i64 12}
!27 = !{!1, !2, i64 452}
!28 = !{!22, !5, i64 16}
!29 = !{!22, !5, i64 24}
!30 = !{!24, !2, i64 32}
!31 = !{!24, !2, i64 36}
!32 = !{!22, !5, i64 32}
!33 = !{!1, !2, i64 460}
!34 = distinct !{!34, !10}
!35 = !{!22, !5, i64 40}
!36 = distinct !{!36, !10}
!37 = !{!24, !2, i64 16}
!38 = !{!24, !2, i64 20}
!39 = !{!22, !5, i64 48}
!40 = !{!22, !5, i64 64}
!41 = !{!22, !5, i64 56}
!42 = !{!22, !5, i64 72}
!43 = !{!24, !2, i64 0}
!44 = !{!24, !2, i64 4}
!45 = !{!24, !2, i64 40}
