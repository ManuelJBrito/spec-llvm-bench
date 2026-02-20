; ModuleID = '/tmp/tmp.PEIIxvlIi0/extracted.ll'
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

declare noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z3genP7state_tPi(ptr noundef %s, ptr noundef %moves) local_unnamed_addr #2 {
entry:
  %tsq = alloca i64, align 8
  %temp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %tsq) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %temp) #3
  %sboard2 = getelementptr inbounds nuw i8, ptr %s, i64 4
  %white_to_move = getelementptr inbounds nuw i8, ptr %s, i64 460
  %0 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool.not = icmp eq i32 %0, 0
  %WhitePieces = getelementptr inbounds nuw i8, ptr %s, i64 280
  %BlackPieces = getelementptr inbounds nuw i8, ptr %s, i64 272
  %friendlymask.0.in.in = select i1 %tobool.not, ptr %BlackPieces, ptr %WhitePieces
  %friendlymask.0.in = load i64, ptr %friendlymask.0.in.in, align 8, !tbaa !6
  %friendlymask.0 = xor i64 %friendlymask.0.in, -1
  br i1 %tobool.not, label %if.else46, label %if.then7

if.then7:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %s, i64 296
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !6
  %shr = lshr i64 %1, 8
  %All = getelementptr inbounds nuw i8, ptr %s, i64 264
  %2 = load i64, ptr %All, align 8, !tbaa !7
  %not8 = xor i64 %2, -1
  %and = and i64 %shr, %not8
  store i64 %and, ptr %tsq, align 8, !tbaa !6
  %3 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 48), align 16, !tbaa !6
  %and10 = and i64 %3, %1
  %shr11 = lshr i64 %and10, 16
  %shr16 = lshr i64 %2, 8
  %4 = or i64 %shr16, %2
  %5 = xor i64 %4, -1
  %and18 = and i64 %shr11, %5
  store i64 %and18, ptr %temp, align 8, !tbaa !6
  %or = or i64 %and18, %and
  store i64 %or, ptr %tsq, align 8, !tbaa !6
  %tobool19.not1001 = icmp eq i64 %or, 0
  br i1 %tobool19.not1001, label %if.end95, label %while.body.preheader

while.body.preheader:                             ; preds = %if.then7
  br label %while.body

while.body:                                       ; preds = %if.end45, %while.body.preheader
  %moves.addr.01002 = phi ptr [ %moves.addr.1, %if.end45 ], [ %moves, %while.body.preheader ]
  %call = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %6 = load i64, ptr %arrayidx, align 8, !tbaa !6
  %add = add nsw i32 %call, 8
  %idxprom = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom
  %7 = load i64, ptr %arrayidx21, align 8, !tbaa !6
  %and22 = and i64 %7, %6
  %tobool23.not = icmp eq i64 %and22, 0
  %add27 = add nsw i32 %call, 16
  %from.0 = select i1 %tobool23.not, i32 %add27, i32 %add
  %cmp = icmp ult i32 %call, 8
  br i1 %cmp, label %if.then30, label %if.else43

if.then30:                                        ; preds = %while.body
  %idxprom31 = zext nneg i32 %call to i64
  %arrayidx32 = getelementptr inbounds nuw i32, ptr %sboard2, i64 %idxprom31
  %8 = load i32, ptr %arrayidx32, align 4, !tbaa !8
  %shl1.i = shl i32 %8, 19
  %shl5.i = shl nuw nsw i32 %from.0, 6
  %or.i = or disjoint i32 %shl5.i, %call
  %or4.i = or disjoint i32 %shl1.i, %or.i
  %or6.i = or i32 %or4.i, 36864
  store i32 %or6.i, ptr %moves.addr.01002, align 4, !tbaa !8
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %moves.addr.01002, i64 4
  %9 = load i32, ptr %arrayidx32, align 4, !tbaa !8
  %shl1.i728 = shl i32 %9, 19
  %or4.i731 = or disjoint i32 %shl1.i728, %or.i
  %or6.i732 = or i32 %or4.i731, 28672
  store i32 %or6.i732, ptr %incdec.ptr.i, align 4, !tbaa !8
  %incdec.ptr.i733 = getelementptr inbounds nuw i8, ptr %moves.addr.01002, i64 8
  %10 = load i32, ptr %arrayidx32, align 4, !tbaa !8
  %shl1.i734 = shl i32 %10, 19
  %or4.i737 = or disjoint i32 %shl1.i734, %or.i
  %or6.i738 = or i32 %or4.i737, 45056
  store i32 %or6.i738, ptr %incdec.ptr.i733, align 4, !tbaa !8
  %incdec.ptr.i739 = getelementptr inbounds nuw i8, ptr %moves.addr.01002, i64 12
  %11 = load i32, ptr %arrayidx32, align 4, !tbaa !8
  %shl1.i740 = shl i32 %11, 19
  %or4.i743 = or disjoint i32 %shl1.i740, %or.i
  %or6.i744 = or i32 %or4.i743, 12288
  store i32 %or6.i744, ptr %incdec.ptr.i739, align 4, !tbaa !8
  %incdec.ptr.i745 = getelementptr inbounds nuw i8, ptr %moves.addr.01002, i64 16
  br label %if.end45

if.else43:                                        ; preds = %while.body
  %shl1.i746 = shl i32 %from.0, 6
  %or.i747 = or i32 %call, %shl1.i746
  %or3.i = or i32 %or.i747, 6815744
  store i32 %or3.i, ptr %moves.addr.01002, align 4, !tbaa !8
  %incdec.ptr.i748 = getelementptr inbounds nuw i8, ptr %moves.addr.01002, i64 4
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then30
  %moves.addr.1 = phi ptr [ %incdec.ptr.i745, %if.then30 ], [ %incdec.ptr.i748, %if.else43 ]
  %.pr = load i64, ptr %tsq, align 8, !tbaa !6
  %tobool19.not = icmp eq i64 %.pr, 0
  br i1 %tobool19.not, label %if.end95.loopexit1034, label %while.body, !llvm.loop !9

if.else46:                                        ; preds = %entry
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %s, i64 304
  %12 = load i64, ptr %arrayidx47, align 8, !tbaa !6
  %shl = shl i64 %12, 8
  %All48 = getelementptr inbounds nuw i8, ptr %s, i64 264
  %13 = load i64, ptr %All48, align 8, !tbaa !7
  %not49 = xor i64 %13, -1
  %and50 = and i64 %shl, %not49
  store i64 %and50, ptr %tsq, align 8, !tbaa !6
  %14 = load i64, ptr getelementptr inbounds nuw (i8, ptr @RankMask, i64 8), align 8, !tbaa !6
  %and52 = and i64 %14, %12
  %shl53 = shl i64 %and52, 16
  %shl58 = shl i64 %13, 8
  %15 = or i64 %shl58, %13
  %16 = xor i64 %15, -1
  %and60 = and i64 %shl53, %16
  store i64 %and60, ptr %temp, align 8, !tbaa !6
  %or61 = or i64 %and60, %and50
  store i64 %or61, ptr %tsq, align 8, !tbaa !6
  %tobool63.not1003 = icmp eq i64 %or61, 0
  br i1 %tobool63.not1003, label %if.end95, label %while.body64.preheader

while.body64.preheader:                           ; preds = %if.else46
  br label %while.body64

while.body64:                                     ; preds = %if.end93, %while.body64.preheader
  %moves.addr.21004 = phi ptr [ %moves.addr.3, %if.end93 ], [ %moves, %while.body64.preheader ]
  %call65 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %17 = load i64, ptr %arrayidx47, align 8, !tbaa !6
  %sub = add nsw i32 %call65, -8
  %idxprom67 = sext i32 %sub to i64
  %arrayidx68 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom67
  %18 = load i64, ptr %arrayidx68, align 8, !tbaa !6
  %and69 = and i64 %18, %17
  %tobool70.not = icmp eq i64 %and69, 0
  %sub74 = add nsw i32 %call65, -16
  %from.1 = select i1 %tobool70.not, i32 %sub74, i32 %sub
  %shr76.mask = and i32 %call65, -8
  %cmp77 = icmp eq i32 %shr76.mask, 56
  br i1 %cmp77, label %if.then78, label %if.else91

if.then78:                                        ; preds = %while.body64
  %idxprom79 = zext nneg i32 %call65 to i64
  %arrayidx80 = getelementptr inbounds nuw i32, ptr %sboard2, i64 %idxprom79
  %19 = load i32, ptr %arrayidx80, align 4, !tbaa !8
  %shl1.i749 = shl i32 %19, 19
  %shl5.i750 = shl nuw nsw i32 %from.1, 6
  %or.i751 = or disjoint i32 %shl5.i750, %call65
  %or4.i752 = or disjoint i32 %shl1.i749, %or.i751
  %or6.i753 = or i32 %or4.i752, 40960
  store i32 %or6.i753, ptr %moves.addr.21004, align 4, !tbaa !8
  %incdec.ptr.i754 = getelementptr inbounds nuw i8, ptr %moves.addr.21004, i64 4
  %20 = load i32, ptr %arrayidx80, align 4, !tbaa !8
  %shl1.i755 = shl i32 %20, 19
  %or4.i758 = or disjoint i32 %shl1.i755, %or.i751
  %or6.i759 = or i32 %or4.i758, 32768
  store i32 %or6.i759, ptr %incdec.ptr.i754, align 4, !tbaa !8
  %incdec.ptr.i760 = getelementptr inbounds nuw i8, ptr %moves.addr.21004, i64 8
  %21 = load i32, ptr %arrayidx80, align 4, !tbaa !8
  %shl1.i761 = shl i32 %21, 19
  %or4.i764 = or disjoint i32 %shl1.i761, %or.i751
  %or6.i765 = or i32 %or4.i764, 49152
  store i32 %or6.i765, ptr %incdec.ptr.i760, align 4, !tbaa !8
  %incdec.ptr.i766 = getelementptr inbounds nuw i8, ptr %moves.addr.21004, i64 12
  %22 = load i32, ptr %arrayidx80, align 4, !tbaa !8
  %shl1.i767 = shl i32 %22, 19
  %or4.i770 = or disjoint i32 %shl1.i767, %or.i751
  %or6.i771 = or i32 %or4.i770, 16384
  store i32 %or6.i771, ptr %incdec.ptr.i766, align 4, !tbaa !8
  %incdec.ptr.i772 = getelementptr inbounds nuw i8, ptr %moves.addr.21004, i64 16
  br label %if.end93

if.else91:                                        ; preds = %while.body64
  %shl1.i773 = shl i32 %from.1, 6
  %or.i774 = or i32 %call65, %shl1.i773
  %or3.i775 = or i32 %or.i774, 6815744
  store i32 %or3.i775, ptr %moves.addr.21004, align 4, !tbaa !8
  %incdec.ptr.i776 = getelementptr inbounds nuw i8, ptr %moves.addr.21004, i64 4
  br label %if.end93

if.end93:                                         ; preds = %if.else91, %if.then78
  %moves.addr.3 = phi ptr [ %incdec.ptr.i772, %if.then78 ], [ %incdec.ptr.i776, %if.else91 ]
  %.pr983 = load i64, ptr %tsq, align 8, !tbaa !6
  %tobool63.not = icmp eq i64 %.pr983, 0
  br i1 %tobool63.not, label %if.end95.loopexit, label %while.body64, !llvm.loop !11

if.end95.loopexit:                                ; preds = %if.end93
  %moves.addr.3.lcssa = phi ptr [ %moves.addr.3, %if.end93 ]
  br label %if.end95

if.end95.loopexit1034:                            ; preds = %if.end45
  %moves.addr.1.lcssa = phi ptr [ %moves.addr.1, %if.end45 ]
  br label %if.end95

if.end95:                                         ; preds = %if.end95.loopexit1034, %if.end95.loopexit, %if.else46, %if.then7
  %moves.addr.4 = phi ptr [ %moves, %if.else46 ], [ %moves, %if.then7 ], [ %moves.addr.3.lcssa, %if.end95.loopexit ], [ %moves.addr.1.lcssa, %if.end95.loopexit1034 ]
  %23 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool97.not = icmp eq i32 %23, 0
  br i1 %tobool97.not, label %if.else201, label %if.then98

if.then98:                                        ; preds = %if.end95
  %arrayidx99 = getelementptr inbounds nuw i8, ptr %s, i64 296
  %24 = load i64, ptr %arrayidx99, align 8, !tbaa !6
  %25 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 56), align 8, !tbaa !6
  %not100 = xor i64 %25, -1
  %and101 = and i64 %24, %not100
  %shr102 = lshr i64 %and101, 7
  %26 = load i64, ptr @FileMask, align 16, !tbaa !6
  %not104 = xor i64 %26, -1
  %and105 = and i64 %24, %not104
  %shr106 = lshr i64 %and105, 9
  %or107 = or i64 %shr106, %shr102
  store i64 %or107, ptr %tsq, align 8, !tbaa !6
  %ep_square = getelementptr inbounds nuw i8, ptr %s, i64 456
  %27 = load i32, ptr %ep_square, align 8, !tbaa !12
  %cmp108 = icmp sgt i32 %27, 0
  br i1 %cmp108, label %if.then109, label %if.else116

if.then109:                                       ; preds = %if.then98
  %28 = load i64, ptr %BlackPieces, align 8, !tbaa !13
  %idxprom112 = zext nneg i32 %27 to i64
  %arrayidx113 = getelementptr inbounds nuw i64, ptr @Mask, i64 %idxprom112
  %29 = load i64, ptr %arrayidx113, align 8, !tbaa !6
  %or114 = or i64 %29, %28
  br label %if.end119

if.else116:                                       ; preds = %if.then98
  %30 = load i64, ptr %BlackPieces, align 8, !tbaa !13
  br label %if.end119

if.end119:                                        ; preds = %if.else116, %if.then109
  %.pn724 = phi i64 [ %30, %if.else116 ], [ %or114, %if.then109 ]
  %storemerge723 = and i64 %.pn724, %or107
  store i64 %storemerge723, ptr %tsq, align 8, !tbaa !6
  %tobool121.not1006 = icmp eq i64 %storemerge723, 0
  br i1 %tobool121.not1006, label %if.end305, label %while.body122.preheader

while.body122.preheader:                          ; preds = %if.end119
  br label %while.body122

while.body122:                                    ; preds = %if.end199, %while.body122.preheader
  %moves.addr.51007 = phi ptr [ %moves.addr.7, %if.end199 ], [ %moves.addr.4, %while.body122.preheader ]
  %call123 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %and124 = and i32 %call123, 7
  %cmp125.not = icmp eq i32 %and124, 0
  br i1 %cmp125.not, label %if.then164, label %if.then126

if.then126:                                       ; preds = %while.body122
  %add127 = add nsw i32 %call123, 7
  %31 = load i64, ptr %arrayidx99, align 8, !tbaa !6
  %idxprom129 = sext i32 %add127 to i64
  %arrayidx130 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom129
  %32 = load i64, ptr %arrayidx130, align 8, !tbaa !6
  %and131 = and i64 %32, %31
  %tobool132.not = icmp eq i64 %and131, 0
  br i1 %tobool132.not, label %if.end161, label %if.then133

if.then133:                                       ; preds = %if.then126
  %cmp135 = icmp ult i32 %call123, 8
  br i1 %cmp135, label %if.then136, label %if.else149

if.then136:                                       ; preds = %if.then133
  %idxprom137 = zext nneg i32 %call123 to i64
  %arrayidx138 = getelementptr inbounds nuw i32, ptr %sboard2, i64 %idxprom137
  %33 = load i32, ptr %arrayidx138, align 4, !tbaa !8
  %shl1.i777 = shl i32 %33, 19
  %shl5.i778 = shl nuw nsw i32 %add127, 6
  %or.i779 = or disjoint i32 %shl5.i778, %call123
  %or4.i780 = or disjoint i32 %shl1.i777, %or.i779
  %or6.i781 = or disjoint i32 %or4.i780, 36864
  store i32 %or6.i781, ptr %moves.addr.51007, align 4, !tbaa !8
  %incdec.ptr.i782 = getelementptr inbounds nuw i8, ptr %moves.addr.51007, i64 4
  %34 = load i32, ptr %arrayidx138, align 4, !tbaa !8
  %shl1.i783 = shl i32 %34, 19
  %or4.i786 = or disjoint i32 %shl1.i783, %or.i779
  %or6.i787 = or disjoint i32 %or4.i786, 28672
  store i32 %or6.i787, ptr %incdec.ptr.i782, align 4, !tbaa !8
  %incdec.ptr.i788 = getelementptr inbounds nuw i8, ptr %moves.addr.51007, i64 8
  %35 = load i32, ptr %arrayidx138, align 4, !tbaa !8
  %shl1.i789 = shl i32 %35, 19
  %or4.i792 = or disjoint i32 %shl1.i789, %or.i779
  %or6.i793 = or disjoint i32 %or4.i792, 45056
  store i32 %or6.i793, ptr %incdec.ptr.i788, align 4, !tbaa !8
  %incdec.ptr.i794 = getelementptr inbounds nuw i8, ptr %moves.addr.51007, i64 12
  %36 = load i32, ptr %arrayidx138, align 4, !tbaa !8
  %shl1.i795 = shl i32 %36, 19
  %or4.i798 = or disjoint i32 %shl1.i795, %or.i779
  %or6.i799 = or disjoint i32 %or4.i798, 12288
  store i32 %or6.i799, ptr %incdec.ptr.i794, align 4, !tbaa !8
  %incdec.ptr.i800 = getelementptr inbounds nuw i8, ptr %moves.addr.51007, i64 16
  br label %if.end161

if.else149:                                       ; preds = %if.then133
  %37 = load i32, ptr %ep_square, align 8, !tbaa !12
  %cmp151 = icmp eq i32 %call123, %37
  br i1 %cmp151, label %if.then152, label %if.else154

if.then152:                                       ; preds = %if.else149
  %shl5.i801 = shl i32 %add127, 6
  %or.i802 = or i32 %call123, %shl5.i801
  %or7.i = or i32 %or.i802, 9437184
  store i32 %or7.i, ptr %moves.addr.51007, align 4, !tbaa !8
  %incdec.ptr.i805 = getelementptr inbounds nuw i8, ptr %moves.addr.51007, i64 4
  br label %if.end161

if.else154:                                       ; preds = %if.else149
  %idxprom155 = sext i32 %call123 to i64
  %arrayidx156 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom155
  %38 = load i32, ptr %arrayidx156, align 4, !tbaa !8
  %shl1.i806 = shl i32 %38, 19
  %shl5.i807 = shl i32 %add127, 6
  %39 = or i32 %shl5.i807, %shl1.i806
  %or4.i809 = or i32 %39, %call123
  store i32 %or4.i809, ptr %moves.addr.51007, align 4, !tbaa !8
  %incdec.ptr.i812 = getelementptr inbounds nuw i8, ptr %moves.addr.51007, i64 4
  br label %if.end161

if.end161:                                        ; preds = %if.else154, %if.then152, %if.then136, %if.then126
  %moves.addr.6 = phi ptr [ %incdec.ptr.i800, %if.then136 ], [ %incdec.ptr.i805, %if.then152 ], [ %incdec.ptr.i812, %if.else154 ], [ %moves.addr.51007, %if.then126 ]
  %cmp163.not = icmp eq i32 %and124, 7
  br i1 %cmp163.not, label %if.end199, label %if.then164

if.then164:                                       ; preds = %if.end161, %while.body122
  %moves.addr.6987 = phi ptr [ %moves.addr.6, %if.end161 ], [ %moves.addr.51007, %while.body122 ]
  %add165 = add nsw i32 %call123, 9
  %40 = load i64, ptr %arrayidx99, align 8, !tbaa !6
  %idxprom167 = sext i32 %add165 to i64
  %arrayidx168 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom167
  %41 = load i64, ptr %arrayidx168, align 8, !tbaa !6
  %and169 = and i64 %41, %40
  %tobool170.not = icmp eq i64 %and169, 0
  br i1 %tobool170.not, label %if.end199, label %if.then171

if.then171:                                       ; preds = %if.then164
  %cmp173 = icmp ult i32 %call123, 8
  br i1 %cmp173, label %if.then174, label %if.else187

if.then174:                                       ; preds = %if.then171
  %idxprom175 = zext nneg i32 %call123 to i64
  %arrayidx176 = getelementptr inbounds nuw i32, ptr %sboard2, i64 %idxprom175
  %42 = load i32, ptr %arrayidx176, align 4, !tbaa !8
  %shl1.i813 = shl i32 %42, 19
  %shl5.i814 = shl nuw nsw i32 %add165, 6
  %or.i815 = or disjoint i32 %shl5.i814, %call123
  %or4.i816 = or disjoint i32 %shl1.i813, %or.i815
  %or6.i817 = or disjoint i32 %or4.i816, 36864
  store i32 %or6.i817, ptr %moves.addr.6987, align 4, !tbaa !8
  %incdec.ptr.i819 = getelementptr inbounds nuw i8, ptr %moves.addr.6987, i64 4
  %43 = load i32, ptr %arrayidx176, align 4, !tbaa !8
  %shl1.i820 = shl i32 %43, 19
  %or4.i823 = or disjoint i32 %shl1.i820, %or.i815
  %or6.i824 = or disjoint i32 %or4.i823, 28672
  store i32 %or6.i824, ptr %incdec.ptr.i819, align 4, !tbaa !8
  %incdec.ptr.i826 = getelementptr inbounds nuw i8, ptr %moves.addr.6987, i64 8
  %44 = load i32, ptr %arrayidx176, align 4, !tbaa !8
  %shl1.i827 = shl i32 %44, 19
  %or4.i830 = or disjoint i32 %shl1.i827, %or.i815
  %or6.i831 = or disjoint i32 %or4.i830, 45056
  store i32 %or6.i831, ptr %incdec.ptr.i826, align 4, !tbaa !8
  %incdec.ptr.i833 = getelementptr inbounds nuw i8, ptr %moves.addr.6987, i64 12
  %45 = load i32, ptr %arrayidx176, align 4, !tbaa !8
  %shl1.i834 = shl i32 %45, 19
  %or4.i837 = or disjoint i32 %shl1.i834, %or.i815
  %or6.i838 = or disjoint i32 %or4.i837, 12288
  store i32 %or6.i838, ptr %incdec.ptr.i833, align 4, !tbaa !8
  %incdec.ptr.i840 = getelementptr inbounds nuw i8, ptr %moves.addr.6987, i64 16
  br label %if.end199

if.else187:                                       ; preds = %if.then171
  %46 = load i32, ptr %ep_square, align 8, !tbaa !12
  %cmp189 = icmp eq i32 %call123, %46
  br i1 %cmp189, label %if.then190, label %if.else192

if.then190:                                       ; preds = %if.else187
  %shl5.i841 = shl i32 %add165, 6
  %or.i842 = or i32 %call123, %shl5.i841
  %or7.i845 = or i32 %or.i842, 9437184
  store i32 %or7.i845, ptr %moves.addr.6987, align 4, !tbaa !8
  %incdec.ptr.i846 = getelementptr inbounds nuw i8, ptr %moves.addr.6987, i64 4
  br label %if.end199

if.else192:                                       ; preds = %if.else187
  %idxprom193 = sext i32 %call123 to i64
  %arrayidx194 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom193
  %47 = load i32, ptr %arrayidx194, align 4, !tbaa !8
  %shl1.i847 = shl i32 %47, 19
  %shl5.i848 = shl i32 %add165, 6
  %48 = or i32 %shl5.i848, %shl1.i847
  %or4.i850 = or i32 %48, %call123
  store i32 %or4.i850, ptr %moves.addr.6987, align 4, !tbaa !8
  %incdec.ptr.i853 = getelementptr inbounds nuw i8, ptr %moves.addr.6987, i64 4
  br label %if.end199

if.end199:                                        ; preds = %if.else192, %if.then190, %if.then174, %if.then164, %if.end161
  %moves.addr.7 = phi ptr [ %incdec.ptr.i840, %if.then174 ], [ %incdec.ptr.i846, %if.then190 ], [ %incdec.ptr.i853, %if.else192 ], [ %moves.addr.6987, %if.then164 ], [ %moves.addr.6, %if.end161 ]
  %.pr984 = load i64, ptr %tsq, align 8, !tbaa !6
  %tobool121.not = icmp eq i64 %.pr984, 0
  br i1 %tobool121.not, label %if.end305.loopexit1033, label %while.body122, !llvm.loop !14

if.else201:                                       ; preds = %if.end95
  %arrayidx202 = getelementptr inbounds nuw i8, ptr %s, i64 304
  %49 = load i64, ptr %arrayidx202, align 8, !tbaa !6
  %50 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 56), align 8, !tbaa !6
  %not203 = xor i64 %50, -1
  %and204 = and i64 %49, %not203
  %shl205 = shl i64 %and204, 9
  %51 = load i64, ptr @FileMask, align 16, !tbaa !6
  %not207 = xor i64 %51, -1
  %and208 = and i64 %49, %not207
  %shl209 = shl i64 %and208, 7
  %or210 = or i64 %shl209, %shl205
  store i64 %or210, ptr %tsq, align 8, !tbaa !6
  %ep_square211 = getelementptr inbounds nuw i8, ptr %s, i64 456
  %52 = load i32, ptr %ep_square211, align 8, !tbaa !12
  %cmp212 = icmp sgt i32 %52, 0
  br i1 %cmp212, label %if.then213, label %if.else220

if.then213:                                       ; preds = %if.else201
  %53 = load i64, ptr %WhitePieces, align 8, !tbaa !15
  %idxprom216 = zext nneg i32 %52 to i64
  %arrayidx217 = getelementptr inbounds nuw i64, ptr @Mask, i64 %idxprom216
  %54 = load i64, ptr %arrayidx217, align 8, !tbaa !6
  %or218 = or i64 %54, %53
  br label %if.end223

if.else220:                                       ; preds = %if.else201
  %55 = load i64, ptr %WhitePieces, align 8, !tbaa !15
  br label %if.end223

if.end223:                                        ; preds = %if.else220, %if.then213
  %.pn = phi i64 [ %55, %if.else220 ], [ %or218, %if.then213 ]
  %storemerge = and i64 %.pn, %or210
  store i64 %storemerge, ptr %tsq, align 8, !tbaa !6
  %tobool225.not1009 = icmp eq i64 %storemerge, 0
  br i1 %tobool225.not1009, label %if.end305, label %while.body226.preheader

while.body226.preheader:                          ; preds = %if.end223
  br label %while.body226

while.body226:                                    ; preds = %if.end303, %while.body226.preheader
  %moves.addr.81010 = phi ptr [ %moves.addr.10, %if.end303 ], [ %moves.addr.4, %while.body226.preheader ]
  %call227 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %and228 = and i32 %call227, 7
  %cmp229.not = icmp eq i32 %and228, 0
  br i1 %cmp229.not, label %if.then268, label %if.then230

if.then230:                                       ; preds = %while.body226
  %sub231 = add nsw i32 %call227, -9
  %56 = load i64, ptr %arrayidx202, align 8, !tbaa !6
  %idxprom233 = sext i32 %sub231 to i64
  %arrayidx234 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom233
  %57 = load i64, ptr %arrayidx234, align 8, !tbaa !6
  %and235 = and i64 %57, %56
  %tobool236.not = icmp eq i64 %and235, 0
  br i1 %tobool236.not, label %if.end265, label %if.then237

if.then237:                                       ; preds = %if.then230
  %shr238.mask = and i32 %call227, -8
  %cmp239 = icmp eq i32 %shr238.mask, 56
  br i1 %cmp239, label %if.then240, label %if.else253

if.then240:                                       ; preds = %if.then237
  %idxprom241 = zext nneg i32 %call227 to i64
  %arrayidx242 = getelementptr inbounds nuw i32, ptr %sboard2, i64 %idxprom241
  %58 = load i32, ptr %arrayidx242, align 4, !tbaa !8
  %shl1.i854 = shl i32 %58, 19
  %shl5.i855 = shl nuw nsw i32 %sub231, 6
  %or.i856 = or disjoint i32 %shl5.i855, %call227
  %or4.i857 = or disjoint i32 %shl1.i854, %or.i856
  %or6.i858 = or disjoint i32 %or4.i857, 40960
  store i32 %or6.i858, ptr %moves.addr.81010, align 4, !tbaa !8
  %incdec.ptr.i860 = getelementptr inbounds nuw i8, ptr %moves.addr.81010, i64 4
  %59 = load i32, ptr %arrayidx242, align 4, !tbaa !8
  %shl1.i861 = shl i32 %59, 19
  %or4.i864 = or disjoint i32 %shl1.i861, %or.i856
  %or6.i865 = or disjoint i32 %or4.i864, 32768
  store i32 %or6.i865, ptr %incdec.ptr.i860, align 4, !tbaa !8
  %incdec.ptr.i867 = getelementptr inbounds nuw i8, ptr %moves.addr.81010, i64 8
  %60 = load i32, ptr %arrayidx242, align 4, !tbaa !8
  %shl1.i868 = shl i32 %60, 19
  %or4.i871 = or disjoint i32 %shl1.i868, %or.i856
  %or6.i872 = or disjoint i32 %or4.i871, 49152
  store i32 %or6.i872, ptr %incdec.ptr.i867, align 4, !tbaa !8
  %incdec.ptr.i874 = getelementptr inbounds nuw i8, ptr %moves.addr.81010, i64 12
  %61 = load i32, ptr %arrayidx242, align 4, !tbaa !8
  %shl1.i875 = shl i32 %61, 19
  %or4.i878 = or disjoint i32 %shl1.i875, %or.i856
  %or6.i879 = or disjoint i32 %or4.i878, 16384
  store i32 %or6.i879, ptr %incdec.ptr.i874, align 4, !tbaa !8
  %incdec.ptr.i881 = getelementptr inbounds nuw i8, ptr %moves.addr.81010, i64 16
  br label %if.end265

if.else253:                                       ; preds = %if.then237
  %62 = load i32, ptr %ep_square211, align 8, !tbaa !12
  %cmp255 = icmp eq i32 %call227, %62
  br i1 %cmp255, label %if.then256, label %if.else258

if.then256:                                       ; preds = %if.else253
  %shl5.i882 = shl i32 %sub231, 6
  %or.i883 = or i32 %call227, %shl5.i882
  %or7.i886 = or i32 %or.i883, 8912896
  store i32 %or7.i886, ptr %moves.addr.81010, align 4, !tbaa !8
  %incdec.ptr.i887 = getelementptr inbounds nuw i8, ptr %moves.addr.81010, i64 4
  br label %if.end265

if.else258:                                       ; preds = %if.else253
  %idxprom259 = sext i32 %call227 to i64
  %arrayidx260 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom259
  %63 = load i32, ptr %arrayidx260, align 4, !tbaa !8
  %shl1.i888 = shl i32 %63, 19
  %shl5.i889 = shl i32 %sub231, 6
  %64 = or i32 %shl5.i889, %shl1.i888
  %or4.i891 = or i32 %64, %call227
  store i32 %or4.i891, ptr %moves.addr.81010, align 4, !tbaa !8
  %incdec.ptr.i894 = getelementptr inbounds nuw i8, ptr %moves.addr.81010, i64 4
  br label %if.end265

if.end265:                                        ; preds = %if.else258, %if.then256, %if.then240, %if.then230
  %moves.addr.9 = phi ptr [ %incdec.ptr.i881, %if.then240 ], [ %incdec.ptr.i887, %if.then256 ], [ %incdec.ptr.i894, %if.else258 ], [ %moves.addr.81010, %if.then230 ]
  %cmp267.not = icmp eq i32 %and228, 7
  br i1 %cmp267.not, label %if.end303, label %if.then268

if.then268:                                       ; preds = %if.end265, %while.body226
  %moves.addr.9991 = phi ptr [ %moves.addr.9, %if.end265 ], [ %moves.addr.81010, %while.body226 ]
  %sub269 = add nsw i32 %call227, -7
  %65 = load i64, ptr %arrayidx202, align 8, !tbaa !6
  %idxprom271 = sext i32 %sub269 to i64
  %arrayidx272 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom271
  %66 = load i64, ptr %arrayidx272, align 8, !tbaa !6
  %and273 = and i64 %66, %65
  %tobool274.not = icmp eq i64 %and273, 0
  br i1 %tobool274.not, label %if.end303, label %if.then275

if.then275:                                       ; preds = %if.then268
  %shr276.mask = and i32 %call227, -8
  %cmp277 = icmp eq i32 %shr276.mask, 56
  br i1 %cmp277, label %if.then278, label %if.else291

if.then278:                                       ; preds = %if.then275
  %idxprom279 = zext nneg i32 %call227 to i64
  %arrayidx280 = getelementptr inbounds nuw i32, ptr %sboard2, i64 %idxprom279
  %67 = load i32, ptr %arrayidx280, align 4, !tbaa !8
  %shl1.i895 = shl i32 %67, 19
  %shl5.i896 = shl nuw nsw i32 %sub269, 6
  %or.i897 = or disjoint i32 %shl5.i896, %call227
  %or4.i898 = or disjoint i32 %shl1.i895, %or.i897
  %or6.i899 = or disjoint i32 %or4.i898, 40960
  store i32 %or6.i899, ptr %moves.addr.9991, align 4, !tbaa !8
  %incdec.ptr.i901 = getelementptr inbounds nuw i8, ptr %moves.addr.9991, i64 4
  %68 = load i32, ptr %arrayidx280, align 4, !tbaa !8
  %shl1.i902 = shl i32 %68, 19
  %or4.i905 = or disjoint i32 %shl1.i902, %or.i897
  %or6.i906 = or disjoint i32 %or4.i905, 32768
  store i32 %or6.i906, ptr %incdec.ptr.i901, align 4, !tbaa !8
  %incdec.ptr.i908 = getelementptr inbounds nuw i8, ptr %moves.addr.9991, i64 8
  %69 = load i32, ptr %arrayidx280, align 4, !tbaa !8
  %shl1.i909 = shl i32 %69, 19
  %or4.i912 = or disjoint i32 %shl1.i909, %or.i897
  %or6.i913 = or disjoint i32 %or4.i912, 49152
  store i32 %or6.i913, ptr %incdec.ptr.i908, align 4, !tbaa !8
  %incdec.ptr.i915 = getelementptr inbounds nuw i8, ptr %moves.addr.9991, i64 12
  %70 = load i32, ptr %arrayidx280, align 4, !tbaa !8
  %shl1.i916 = shl i32 %70, 19
  %or4.i919 = or disjoint i32 %shl1.i916, %or.i897
  %or6.i920 = or disjoint i32 %or4.i919, 16384
  store i32 %or6.i920, ptr %incdec.ptr.i915, align 4, !tbaa !8
  %incdec.ptr.i922 = getelementptr inbounds nuw i8, ptr %moves.addr.9991, i64 16
  br label %if.end303

if.else291:                                       ; preds = %if.then275
  %71 = load i32, ptr %ep_square211, align 8, !tbaa !12
  %cmp293 = icmp eq i32 %call227, %71
  br i1 %cmp293, label %if.then294, label %if.else296

if.then294:                                       ; preds = %if.else291
  %shl5.i923 = shl i32 %sub269, 6
  %or.i924 = or i32 %call227, %shl5.i923
  %or7.i927 = or i32 %or.i924, 8912896
  store i32 %or7.i927, ptr %moves.addr.9991, align 4, !tbaa !8
  %incdec.ptr.i928 = getelementptr inbounds nuw i8, ptr %moves.addr.9991, i64 4
  br label %if.end303

if.else296:                                       ; preds = %if.else291
  %idxprom297 = sext i32 %call227 to i64
  %arrayidx298 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom297
  %72 = load i32, ptr %arrayidx298, align 4, !tbaa !8
  %shl1.i929 = shl i32 %72, 19
  %shl5.i930 = shl i32 %sub269, 6
  %73 = or i32 %shl5.i930, %shl1.i929
  %or4.i932 = or i32 %73, %call227
  store i32 %or4.i932, ptr %moves.addr.9991, align 4, !tbaa !8
  %incdec.ptr.i935 = getelementptr inbounds nuw i8, ptr %moves.addr.9991, i64 4
  br label %if.end303

if.end303:                                        ; preds = %if.else296, %if.then294, %if.then278, %if.then268, %if.end265
  %moves.addr.10 = phi ptr [ %incdec.ptr.i922, %if.then278 ], [ %incdec.ptr.i928, %if.then294 ], [ %incdec.ptr.i935, %if.else296 ], [ %moves.addr.9991, %if.then268 ], [ %moves.addr.9, %if.end265 ]
  %.pr988 = load i64, ptr %tsq, align 8, !tbaa !6
  %tobool225.not = icmp eq i64 %.pr988, 0
  br i1 %tobool225.not, label %if.end305.loopexit, label %while.body226, !llvm.loop !16

if.end305.loopexit:                               ; preds = %if.end303
  %moves.addr.10.lcssa = phi ptr [ %moves.addr.10, %if.end303 ]
  br label %if.end305

if.end305.loopexit1033:                           ; preds = %if.end199
  %moves.addr.7.lcssa = phi ptr [ %moves.addr.7, %if.end199 ]
  br label %if.end305

if.end305:                                        ; preds = %if.end305.loopexit1033, %if.end305.loopexit, %if.end223, %if.end119
  %moves.addr.11 = phi ptr [ %moves.addr.4, %if.end223 ], [ %moves.addr.4, %if.end119 ], [ %moves.addr.10.lcssa, %if.end305.loopexit ], [ %moves.addr.7.lcssa, %if.end305.loopexit1033 ]
  %74 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool307.not = icmp eq i32 %74, 0
  %storemerge725.in.v = select i1 %tobool307.not, i64 320, i64 312
  %storemerge725.in = getelementptr inbounds nuw i8, ptr %s, i64 %storemerge725.in.v
  %storemerge725 = load i64, ptr %storemerge725.in, align 8, !tbaa !6
  store i64 %storemerge725, ptr %tsq, align 8, !tbaa !6
  %tobool314.not1015 = icmp eq i64 %storemerge725, 0
  br i1 %tobool314.not1015, label %while.end328, label %while.body315.preheader

while.body315.preheader:                          ; preds = %if.end305
  br label %while.body315

while.cond320.while.cond313thread-pre-split_crit_edge: ; preds = %while.body322
  %incdec.ptr.i942.lcssa = phi ptr [ %incdec.ptr.i942, %while.body322 ]
  br label %while.cond313thread-pre-split, !llvm.loop !17

while.cond313thread-pre-split:                    ; preds = %while.body315, %while.cond320.while.cond313thread-pre-split_crit_edge
  %moves.addr.13.lcssa = phi ptr [ %incdec.ptr.i942.lcssa, %while.cond320.while.cond313thread-pre-split_crit_edge ], [ %moves.addr.121016, %while.body315 ]
  %.pr992 = load i64, ptr %tsq, align 8, !tbaa !6
  %tobool314.not = icmp eq i64 %.pr992, 0
  br i1 %tobool314.not, label %while.end328.loopexit, label %while.body315

while.body315:                                    ; preds = %while.cond313thread-pre-split, %while.body315.preheader
  %moves.addr.121016 = phi ptr [ %moves.addr.13.lcssa, %while.cond313thread-pre-split ], [ %moves.addr.11, %while.body315.preheader ]
  %call316 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %idxprom317 = sext i32 %call316 to i64
  %arrayidx318 = getelementptr inbounds i64, ptr @KnightMoves, i64 %idxprom317
  %75 = load i64, ptr %arrayidx318, align 8, !tbaa !6
  %and319 = and i64 %75, %friendlymask.0
  store i64 %and319, ptr %temp, align 8, !tbaa !6
  %tobool321.not1012 = icmp eq i64 %and319, 0
  br i1 %tobool321.not1012, label %while.cond313thread-pre-split, label %while.body322.lr.ph, !llvm.loop !17

while.body322.lr.ph:                              ; preds = %while.body315
  %shl5.i937 = shl i32 %call316, 6
  br label %while.body322, !llvm.loop !17

while.body322:                                    ; preds = %while.body322, %while.body322.lr.ph
  %moves.addr.131013 = phi ptr [ %moves.addr.121016, %while.body322.lr.ph ], [ %incdec.ptr.i942, %while.body322 ]
  %call323 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %idxprom324 = sext i32 %call323 to i64
  %arrayidx325 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom324
  %76 = load i32, ptr %arrayidx325, align 4, !tbaa !8
  %shl1.i936 = shl i32 %76, 19
  %77 = or i32 %shl5.i937, %shl1.i936
  %or4.i939 = or i32 %77, %call323
  store i32 %or4.i939, ptr %moves.addr.131013, align 4, !tbaa !8
  %incdec.ptr.i942 = getelementptr inbounds nuw i8, ptr %moves.addr.131013, i64 4
  %.pr993 = load i64, ptr %temp, align 8, !tbaa !6
  %tobool321.not = icmp eq i64 %.pr993, 0
  br i1 %tobool321.not, label %while.cond320.while.cond313thread-pre-split_crit_edge, label %while.body322, !llvm.loop !18

while.end328.loopexit:                            ; preds = %while.cond313thread-pre-split
  %moves.addr.13.lcssa.lcssa = phi ptr [ %moves.addr.13.lcssa, %while.cond313thread-pre-split ]
  br label %while.end328

while.end328:                                     ; preds = %while.end328.loopexit, %if.end305
  %moves.addr.12.lcssa = phi ptr [ %moves.addr.11, %if.end305 ], [ %moves.addr.13.lcssa.lcssa, %while.end328.loopexit ]
  %78 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool330.not = icmp eq i32 %78, 0
  br i1 %tobool330.not, label %if.else335, label %if.then331

if.then331:                                       ; preds = %while.end328
  %arrayidx332 = getelementptr inbounds nuw i8, ptr %s, i64 376
  %79 = load i64, ptr %arrayidx332, align 8, !tbaa !6
  %arrayidx333 = getelementptr inbounds nuw i8, ptr %s, i64 360
  %80 = load i64, ptr %arrayidx333, align 8, !tbaa !6
  %or334 = or i64 %80, %79
  br label %if.end339

if.else335:                                       ; preds = %while.end328
  %arrayidx336 = getelementptr inbounds nuw i8, ptr %s, i64 384
  %81 = load i64, ptr %arrayidx336, align 8, !tbaa !6
  %arrayidx337 = getelementptr inbounds nuw i8, ptr %s, i64 368
  %82 = load i64, ptr %arrayidx337, align 8, !tbaa !6
  %or338 = or i64 %82, %81
  br label %if.end339

if.end339:                                        ; preds = %if.else335, %if.then331
  %storemerge726 = phi i64 [ %or338, %if.else335 ], [ %or334, %if.then331 ]
  store i64 %storemerge726, ptr %tsq, align 8, !tbaa !6
  %tobool341.not1021 = icmp eq i64 %storemerge726, 0
  br i1 %tobool341.not1021, label %while.end354, label %while.body342.preheader

while.body342.preheader:                          ; preds = %if.end339
  br label %while.body342

while.cond346.while.cond340thread-pre-split_crit_edge: ; preds = %while.body348
  %incdec.ptr.i949.lcssa = phi ptr [ %incdec.ptr.i949, %while.body348 ]
  br label %while.cond340thread-pre-split, !llvm.loop !19

while.cond340thread-pre-split:                    ; preds = %while.body342, %while.cond346.while.cond340thread-pre-split_crit_edge
  %moves.addr.15.lcssa = phi ptr [ %incdec.ptr.i949.lcssa, %while.cond346.while.cond340thread-pre-split_crit_edge ], [ %moves.addr.141022, %while.body342 ]
  %.pr994 = load i64, ptr %tsq, align 8, !tbaa !6
  %tobool341.not = icmp eq i64 %.pr994, 0
  br i1 %tobool341.not, label %while.end354.loopexit, label %while.body342

while.body342:                                    ; preds = %while.cond340thread-pre-split, %while.body342.preheader
  %moves.addr.141022 = phi ptr [ %moves.addr.15.lcssa, %while.cond340thread-pre-split ], [ %moves.addr.12.lcssa, %while.body342.preheader ]
  %call343 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %call344 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %s, i32 noundef %call343)
  %and345 = and i64 %call344, %friendlymask.0
  store i64 %and345, ptr %temp, align 8, !tbaa !6
  %tobool347.not1018 = icmp eq i64 %and345, 0
  br i1 %tobool347.not1018, label %while.cond340thread-pre-split, label %while.body348.lr.ph, !llvm.loop !19

while.body348.lr.ph:                              ; preds = %while.body342
  %shl5.i944 = shl i32 %call343, 6
  br label %while.body348, !llvm.loop !19

while.body348:                                    ; preds = %while.body348, %while.body348.lr.ph
  %moves.addr.151019 = phi ptr [ %moves.addr.141022, %while.body348.lr.ph ], [ %incdec.ptr.i949, %while.body348 ]
  %call349 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %idxprom350 = sext i32 %call349 to i64
  %arrayidx351 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom350
  %83 = load i32, ptr %arrayidx351, align 4, !tbaa !8
  %shl1.i943 = shl i32 %83, 19
  %84 = or i32 %shl5.i944, %shl1.i943
  %or4.i946 = or i32 %84, %call349
  store i32 %or4.i946, ptr %moves.addr.151019, align 4, !tbaa !8
  %incdec.ptr.i949 = getelementptr inbounds nuw i8, ptr %moves.addr.151019, i64 4
  %.pr995 = load i64, ptr %temp, align 8, !tbaa !6
  %tobool347.not = icmp eq i64 %.pr995, 0
  br i1 %tobool347.not, label %while.cond346.while.cond340thread-pre-split_crit_edge, label %while.body348, !llvm.loop !20

while.end354.loopexit:                            ; preds = %while.cond340thread-pre-split
  %moves.addr.15.lcssa.lcssa = phi ptr [ %moves.addr.15.lcssa, %while.cond340thread-pre-split ]
  br label %while.end354

while.end354:                                     ; preds = %while.end354.loopexit, %if.end339
  %moves.addr.14.lcssa = phi ptr [ %moves.addr.12.lcssa, %if.end339 ], [ %moves.addr.15.lcssa.lcssa, %while.end354.loopexit ]
  %85 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool356.not = icmp eq i32 %85, 0
  br i1 %tobool356.not, label %if.else361, label %if.then357

if.then357:                                       ; preds = %while.end354
  %arrayidx358 = getelementptr inbounds nuw i8, ptr %s, i64 344
  %86 = load i64, ptr %arrayidx358, align 8, !tbaa !6
  %arrayidx359 = getelementptr inbounds nuw i8, ptr %s, i64 360
  %87 = load i64, ptr %arrayidx359, align 8, !tbaa !6
  %or360 = or i64 %87, %86
  br label %if.end365

if.else361:                                       ; preds = %while.end354
  %arrayidx362 = getelementptr inbounds nuw i8, ptr %s, i64 352
  %88 = load i64, ptr %arrayidx362, align 8, !tbaa !6
  %arrayidx363 = getelementptr inbounds nuw i8, ptr %s, i64 368
  %89 = load i64, ptr %arrayidx363, align 8, !tbaa !6
  %or364 = or i64 %89, %88
  br label %if.end365

if.end365:                                        ; preds = %if.else361, %if.then357
  %storemerge727 = phi i64 [ %or364, %if.else361 ], [ %or360, %if.then357 ]
  store i64 %storemerge727, ptr %tsq, align 8, !tbaa !6
  %tobool367.not1027 = icmp eq i64 %storemerge727, 0
  br i1 %tobool367.not1027, label %while.end380, label %while.body368.preheader

while.body368.preheader:                          ; preds = %if.end365
  br label %while.body368

while.cond372.while.cond366thread-pre-split_crit_edge: ; preds = %while.body374
  %incdec.ptr.i956.lcssa = phi ptr [ %incdec.ptr.i956, %while.body374 ]
  br label %while.cond366thread-pre-split, !llvm.loop !21

while.cond366thread-pre-split:                    ; preds = %while.body368, %while.cond372.while.cond366thread-pre-split_crit_edge
  %moves.addr.17.lcssa = phi ptr [ %incdec.ptr.i956.lcssa, %while.cond372.while.cond366thread-pre-split_crit_edge ], [ %moves.addr.161028, %while.body368 ]
  %.pr996 = load i64, ptr %tsq, align 8, !tbaa !6
  %tobool367.not = icmp eq i64 %.pr996, 0
  br i1 %tobool367.not, label %while.end380.loopexit, label %while.body368

while.body368:                                    ; preds = %while.cond366thread-pre-split, %while.body368.preheader
  %moves.addr.161028 = phi ptr [ %moves.addr.17.lcssa, %while.cond366thread-pre-split ], [ %moves.addr.14.lcssa, %while.body368.preheader ]
  %call369 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %call370 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %s, i32 noundef %call369)
  %and371 = and i64 %call370, %friendlymask.0
  store i64 %and371, ptr %temp, align 8, !tbaa !6
  %tobool373.not1024 = icmp eq i64 %and371, 0
  br i1 %tobool373.not1024, label %while.cond366thread-pre-split, label %while.body374.lr.ph, !llvm.loop !21

while.body374.lr.ph:                              ; preds = %while.body368
  %shl5.i951 = shl i32 %call369, 6
  br label %while.body374, !llvm.loop !21

while.body374:                                    ; preds = %while.body374, %while.body374.lr.ph
  %moves.addr.171025 = phi ptr [ %moves.addr.161028, %while.body374.lr.ph ], [ %incdec.ptr.i956, %while.body374 ]
  %call375 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %idxprom376 = sext i32 %call375 to i64
  %arrayidx377 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom376
  %90 = load i32, ptr %arrayidx377, align 4, !tbaa !8
  %shl1.i950 = shl i32 %90, 19
  %91 = or i32 %shl5.i951, %shl1.i950
  %or4.i953 = or i32 %91, %call375
  store i32 %or4.i953, ptr %moves.addr.171025, align 4, !tbaa !8
  %incdec.ptr.i956 = getelementptr inbounds nuw i8, ptr %moves.addr.171025, i64 4
  %.pr997 = load i64, ptr %temp, align 8, !tbaa !6
  %tobool373.not = icmp eq i64 %.pr997, 0
  br i1 %tobool373.not, label %while.cond372.while.cond366thread-pre-split_crit_edge, label %while.body374, !llvm.loop !22

while.end380.loopexit:                            ; preds = %while.cond366thread-pre-split
  %moves.addr.17.lcssa.lcssa = phi ptr [ %moves.addr.17.lcssa, %while.cond366thread-pre-split ]
  br label %while.end380

while.end380:                                     ; preds = %while.end380.loopexit, %if.end365
  %moves.addr.16.lcssa = phi ptr [ %moves.addr.14.lcssa, %if.end365 ], [ %moves.addr.17.lcssa.lcssa, %while.end380.loopexit ]
  %92 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool382.not = icmp eq i32 %92, 0
  br i1 %tobool382.not, label %if.else405, label %if.then383

if.then383:                                       ; preds = %while.end380
  %castleflag = getelementptr inbounds nuw i8, ptr %s, i64 452
  %93 = load i32, ptr %castleflag, align 4, !tbaa !23
  %and384 = and i32 %93, 2
  %tobool385.not = icmp eq i32 %and384, 0
  br i1 %tobool385.not, label %if.end392, label %if.then386

if.then386:                                       ; preds = %if.then383
  %call387 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %s, i32 noundef 1)
  %tobool388.not = icmp eq i32 %call387, 0
  br i1 %tobool388.not, label %if.then389, label %if.end392

if.then389:                                       ; preds = %if.then386
  %wking_loc = getelementptr inbounds nuw i8, ptr %s, i64 464
  %94 = load i32, ptr %wking_loc, align 8, !tbaa !24
  %shl1.i957 = shl i32 %94, 6
  %or3.i959 = or i32 %shl1.i957, 6881342
  store i32 %or3.i959, ptr %moves.addr.16.lcssa, align 4, !tbaa !8
  %incdec.ptr.i960 = getelementptr inbounds nuw i8, ptr %moves.addr.16.lcssa, i64 4
  br label %if.end392

if.end392:                                        ; preds = %if.then389, %if.then386, %if.then383
  %moves.addr.18 = phi ptr [ %moves.addr.16.lcssa, %if.then386 ], [ %incdec.ptr.i960, %if.then389 ], [ %moves.addr.16.lcssa, %if.then383 ]
  %95 = load i32, ptr %castleflag, align 4, !tbaa !23
  %and394 = and i32 %95, 4
  %tobool395.not = icmp eq i32 %and394, 0
  br i1 %tobool395.not, label %if.end403, label %if.then396

if.then396:                                       ; preds = %if.end392
  %call397 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %s, i32 noundef 2)
  %tobool398.not = icmp eq i32 %call397, 0
  br i1 %tobool398.not, label %if.then399, label %if.end403

if.then399:                                       ; preds = %if.then396
  %wking_loc400 = getelementptr inbounds nuw i8, ptr %s, i64 464
  %96 = load i32, ptr %wking_loc400, align 8, !tbaa !24
  %shl1.i961 = shl i32 %96, 6
  %or3.i964 = or i32 %shl1.i961, 6946874
  store i32 %or3.i964, ptr %moves.addr.18, align 4, !tbaa !8
  %incdec.ptr.i965 = getelementptr inbounds nuw i8, ptr %moves.addr.18, i64 4
  br label %if.end403

if.end403:                                        ; preds = %if.then399, %if.then396, %if.end392
  %moves.addr.19 = phi ptr [ %moves.addr.18, %if.then396 ], [ %incdec.ptr.i965, %if.then399 ], [ %moves.addr.18, %if.end392 ]
  %wking_loc404 = getelementptr inbounds nuw i8, ptr %s, i64 464
  br label %if.end428

if.else405:                                       ; preds = %while.end380
  %castleflag406 = getelementptr inbounds nuw i8, ptr %s, i64 452
  %97 = load i32, ptr %castleflag406, align 4, !tbaa !23
  %and407 = and i32 %97, 8
  %tobool408.not = icmp eq i32 %and407, 0
  br i1 %tobool408.not, label %if.end415, label %if.then409

if.then409:                                       ; preds = %if.else405
  %call410 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %s, i32 noundef 3)
  %tobool411.not = icmp eq i32 %call410, 0
  br i1 %tobool411.not, label %if.then412, label %if.end415

if.then412:                                       ; preds = %if.then409
  %bking_loc = getelementptr inbounds nuw i8, ptr %s, i64 468
  %98 = load i32, ptr %bking_loc, align 4, !tbaa !25
  %shl1.i966 = shl i32 %98, 6
  %or3.i969 = or i32 %shl1.i966, 7012358
  store i32 %or3.i969, ptr %moves.addr.16.lcssa, align 4, !tbaa !8
  %incdec.ptr.i970 = getelementptr inbounds nuw i8, ptr %moves.addr.16.lcssa, i64 4
  br label %if.end415

if.end415:                                        ; preds = %if.then412, %if.then409, %if.else405
  %moves.addr.20 = phi ptr [ %moves.addr.16.lcssa, %if.then409 ], [ %incdec.ptr.i970, %if.then412 ], [ %moves.addr.16.lcssa, %if.else405 ]
  %99 = load i32, ptr %castleflag406, align 4, !tbaa !23
  %and417 = and i32 %99, 16
  %tobool418.not = icmp eq i32 %and417, 0
  br i1 %tobool418.not, label %if.end426, label %if.then419

if.then419:                                       ; preds = %if.end415
  %call420 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %s, i32 noundef 4)
  %tobool421.not = icmp eq i32 %call420, 0
  br i1 %tobool421.not, label %if.then422, label %if.end426

if.then422:                                       ; preds = %if.then419
  %bking_loc423 = getelementptr inbounds nuw i8, ptr %s, i64 468
  %100 = load i32, ptr %bking_loc423, align 4, !tbaa !25
  %shl1.i971 = shl i32 %100, 6
  %or3.i974 = or i32 %shl1.i971, 7077890
  store i32 %or3.i974, ptr %moves.addr.20, align 4, !tbaa !8
  %incdec.ptr.i975 = getelementptr inbounds nuw i8, ptr %moves.addr.20, i64 4
  br label %if.end426

if.end426:                                        ; preds = %if.then422, %if.then419, %if.end415
  %moves.addr.21 = phi ptr [ %moves.addr.20, %if.then419 ], [ %incdec.ptr.i975, %if.then422 ], [ %moves.addr.20, %if.end415 ]
  %bking_loc427 = getelementptr inbounds nuw i8, ptr %s, i64 468
  br label %if.end428

if.end428:                                        ; preds = %if.end426, %if.end403
  %from.2.in = phi ptr [ %wking_loc404, %if.end403 ], [ %bking_loc427, %if.end426 ]
  %moves.addr.22 = phi ptr [ %moves.addr.19, %if.end403 ], [ %moves.addr.21, %if.end426 ]
  %from.2 = load i32, ptr %from.2.in, align 4, !tbaa !8
  %idxprom429 = sext i32 %from.2 to i64
  %arrayidx430 = getelementptr inbounds i64, ptr @KingMoves, i64 %idxprom429
  %101 = load i64, ptr %arrayidx430, align 8, !tbaa !6
  %and431 = and i64 %101, %friendlymask.0
  store i64 %and431, ptr %tsq, align 8, !tbaa !6
  %tobool433.not1030 = icmp eq i64 %and431, 0
  br i1 %tobool433.not1030, label %while.end439, label %while.body434.lr.ph

while.body434.lr.ph:                              ; preds = %if.end428
  %shl5.i977 = shl i32 %from.2, 6
  br label %while.body434

while.body434:                                    ; preds = %while.body434, %while.body434.lr.ph
  %moves.addr.231031 = phi ptr [ %moves.addr.22, %while.body434.lr.ph ], [ %incdec.ptr.i982, %while.body434 ]
  %call435 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %idxprom436 = sext i32 %call435 to i64
  %arrayidx437 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom436
  %102 = load i32, ptr %arrayidx437, align 4, !tbaa !8
  %shl1.i976 = shl i32 %102, 19
  %103 = or i32 %shl5.i977, %shl1.i976
  %or4.i979 = or i32 %103, %call435
  store i32 %or4.i979, ptr %moves.addr.231031, align 4, !tbaa !8
  %incdec.ptr.i982 = getelementptr inbounds nuw i8, ptr %moves.addr.231031, i64 4
  %.pr998 = load i64, ptr %tsq, align 8, !tbaa !6
  %tobool433.not = icmp eq i64 %.pr998, 0
  br i1 %tobool433.not, label %while.end439.loopexit, label %while.body434, !llvm.loop !26

while.end439.loopexit:                            ; preds = %while.body434
  %incdec.ptr.i982.lcssa = phi ptr [ %incdec.ptr.i982, %while.body434 ]
  br label %while.end439

while.end439:                                     ; preds = %while.end439.loopexit, %if.end428
  %moves.addr.23.lcssa = phi ptr [ %moves.addr.22, %if.end428 ], [ %incdec.ptr.i982.lcssa, %while.end439.loopexit ]
  %sub.ptr.lhs.cast = ptrtoint ptr %moves.addr.23.lcssa to i64
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
!6 = !{!5, !5, i64 0}
!7 = !{!1, !5, i64 264}
!8 = !{!2, !2, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!1, !2, i64 456}
!13 = !{!1, !5, i64 272}
!14 = distinct !{!14, !10}
!15 = !{!1, !5, i64 280}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = !{!1, !2, i64 452}
!24 = !{!1, !2, i64 464}
!25 = !{!1, !2, i64 468}
!26 = distinct !{!26, !10}
