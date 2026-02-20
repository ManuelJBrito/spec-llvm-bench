; ModuleID = '/tmp/tmp.AsMVuRSlI9/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/generate.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Mask = external local_unnamed_addr global [64 x i64], align 16
@KnightMoves = external local_unnamed_addr global [64 x i64], align 16
@BishopMask = external local_unnamed_addr global [64 x i64], align 16
@RookMask = external local_unnamed_addr global [64 x i64], align 16
@PawnAttacksBlack = external local_unnamed_addr global [64 x i64], align 16
@PawnAttacksWhite = external local_unnamed_addr global [64 x i64], align 16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #1

declare noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z15gen_good_checksP7state_tPi(ptr noundef %s, ptr noundef %moves) local_unnamed_addr #2 {
entry:
  %tsq = alloca i64, align 8
  %temp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %tsq) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %temp) #3
  %sboard2 = getelementptr inbounds nuw i8, ptr %s, i64 4
  %white_to_move = getelementptr inbounds nuw i8, ptr %s, i64 460
  %0 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool.not = icmp eq i32 %0, 0
  %freesqmask.0.in.in.v = select i1 %tobool.not, i64 272, i64 280
  %freesqmask.0.in.in = getelementptr inbounds nuw i8, ptr %s, i64 %freesqmask.0.in.in.v
  %tking_loc.0.in.v = select i1 %tobool.not, i64 464, i64 468
  %tking_loc.0.in = getelementptr inbounds nuw i8, ptr %s, i64 %tking_loc.0.in.v
  %tking_loc.0 = load i32, ptr %tking_loc.0.in, align 4, !tbaa !6
  %freesqmask.0.in = load i64, ptr %freesqmask.0.in.in, align 8, !tbaa !7
  %freesqmask.0 = xor i64 %freesqmask.0.in, -1
  %idxprom = sext i32 %tking_loc.0 to i64
  %arrayidx = getelementptr inbounds i64, ptr @BishopMask, i64 %idxprom
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %arrayidx6 = getelementptr inbounds i64, ptr @RookMask, i64 %idxprom
  %2 = load i64, ptr %arrayidx6, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds i64, ptr @Mask, i64 %idxprom
  %3 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %storemerge.in.v = select i1 %tobool.not, i64 320, i64 312
  %storemerge.in = getelementptr inbounds nuw i8, ptr %s, i64 %storemerge.in.v
  %storemerge = load i64, ptr %storemerge.in, align 8, !tbaa !7
  store i64 %storemerge, ptr %tsq, align 8, !tbaa !7
  %tobool17.not208 = icmp eq i64 %storemerge, 0
  br i1 %tobool17.not208, label %while.end31, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx21 = getelementptr inbounds i64, ptr @KnightMoves, i64 %idxprom
  br label %while.body

while.cond24.while.condthread-pre-split_crit_edge: ; preds = %while.body26
  %incdec.ptr.i.lcssa = phi ptr [ %incdec.ptr.i, %while.body26 ]
  br label %while.condthread-pre-split, !llvm.loop !8

while.condthread-pre-split:                       ; preds = %while.body, %while.cond24.while.condthread-pre-split_crit_edge
  %moves.addr.1.lcssa = phi ptr [ %incdec.ptr.i.lcssa, %while.cond24.while.condthread-pre-split_crit_edge ], [ %moves.addr.0209, %while.body ]
  %.pr = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool17.not = icmp eq i64 %.pr, 0
  br i1 %tobool17.not, label %while.end31.loopexit, label %while.body

while.body:                                       ; preds = %while.condthread-pre-split, %while.body.lr.ph
  %moves.addr.0209 = phi ptr [ %moves, %while.body.lr.ph ], [ %moves.addr.1.lcssa, %while.condthread-pre-split ]
  %call = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %idxprom18 = sext i32 %call to i64
  %arrayidx19 = getelementptr inbounds i64, ptr @KnightMoves, i64 %idxprom18
  %4 = load i64, ptr %arrayidx19, align 8, !tbaa !7
  store i64 %4, ptr %temp, align 8, !tbaa !7
  %5 = load i64, ptr %arrayidx21, align 8, !tbaa !7
  %6 = and i64 %5, %freesqmask.0
  %and23 = and i64 %6, %4
  store i64 %and23, ptr %temp, align 8, !tbaa !7
  %tobool25.not206 = icmp eq i64 %and23, 0
  br i1 %tobool25.not206, label %while.condthread-pre-split, label %while.body26.lr.ph, !llvm.loop !8

while.body26.lr.ph:                               ; preds = %while.body
  %shl5.i = shl i32 %call, 6
  br label %while.body26, !llvm.loop !8

while.body26:                                     ; preds = %while.body26, %while.body26.lr.ph
  %moves.addr.1207 = phi ptr [ %moves.addr.0209, %while.body26.lr.ph ], [ %incdec.ptr.i, %while.body26 ]
  %call27 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %idxprom28 = sext i32 %call27 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom28
  %7 = load i32, ptr %arrayidx29, align 4, !tbaa !6
  %shl1.i = shl i32 %7, 19
  %8 = or i32 %shl5.i, %shl1.i
  %or4.i = or i32 %8, %call27
  store i32 %or4.i, ptr %moves.addr.1207, align 4, !tbaa !6
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %moves.addr.1207, i64 4
  %.pr200 = load i64, ptr %temp, align 8, !tbaa !7
  %tobool25.not = icmp eq i64 %.pr200, 0
  br i1 %tobool25.not, label %while.cond24.while.condthread-pre-split_crit_edge, label %while.body26, !llvm.loop !10

while.end31.loopexit:                             ; preds = %while.condthread-pre-split
  %moves.addr.1.lcssa.lcssa = phi ptr [ %moves.addr.1.lcssa, %while.condthread-pre-split ]
  br label %while.end31

while.end31:                                      ; preds = %while.end31.loopexit, %entry
  %moves.addr.0.lcssa = phi ptr [ %moves, %entry ], [ %moves.addr.1.lcssa.lcssa, %while.end31.loopexit ]
  %9 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool33.not = icmp eq i32 %9, 0
  br i1 %tobool33.not, label %if.else41, label %if.then34

if.then34:                                        ; preds = %while.end31
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %s, i64 296
  %10 = load i64, ptr %arrayidx35, align 8, !tbaa !7
  %shr = lshr i64 %10, 8
  %All = getelementptr inbounds nuw i8, ptr %s, i64 264
  %11 = load i64, ptr %All, align 8, !tbaa !11
  %not36 = xor i64 %11, -1
  %and37 = and i64 %shr, %not36
  %arrayidx39 = getelementptr inbounds i64, ptr @PawnAttacksBlack, i64 %idxprom
  %12 = load i64, ptr %arrayidx39, align 8, !tbaa !7
  %and40 = and i64 %12, %and37
  br label %if.end49

if.else41:                                        ; preds = %while.end31
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %s, i64 304
  %13 = load i64, ptr %arrayidx42, align 8, !tbaa !7
  %shl = shl i64 %13, 8
  %All43 = getelementptr inbounds nuw i8, ptr %s, i64 264
  %14 = load i64, ptr %All43, align 8, !tbaa !11
  %not44 = xor i64 %14, -1
  %and45 = and i64 %shl, %not44
  %arrayidx47 = getelementptr inbounds i64, ptr @PawnAttacksWhite, i64 %idxprom
  %15 = load i64, ptr %arrayidx47, align 8, !tbaa !7
  %and48 = and i64 %15, %and45
  br label %if.end49

if.end49:                                         ; preds = %if.else41, %if.then34
  %and37.sink = phi i64 [ %and45, %if.else41 ], [ %and37, %if.then34 ]
  %storemerge184 = phi i64 [ %and48, %if.else41 ], [ %and40, %if.then34 ]
  store i64 %and37.sink, ptr %tsq, align 8, !tbaa !7
  store i64 %storemerge184, ptr %tsq, align 8, !tbaa !7
  %tobool51.not211 = icmp eq i64 %storemerge184, 0
  br i1 %tobool51.not211, label %while.end60, label %while.body52.preheader

while.body52.preheader:                           ; preds = %if.end49
  br label %while.body52

while.body52:                                     ; preds = %while.body52, %while.body52.preheader
  %moves.addr.2212 = phi ptr [ %incdec.ptr.i189, %while.body52 ], [ %moves.addr.0.lcssa, %while.body52.preheader ]
  %call53 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %16 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool55.not = icmp eq i32 %16, 0
  %from.0.v = select i1 %tobool55.not, i32 67108856, i32 8
  %from.0 = add i32 %from.0.v, %call53
  %shl1.i187 = shl i32 %from.0, 6
  %or.i188 = or i32 %call53, %shl1.i187
  %or3.i = or i32 %or.i188, 6815744
  store i32 %or3.i, ptr %moves.addr.2212, align 4, !tbaa !6
  %incdec.ptr.i189 = getelementptr inbounds nuw i8, ptr %moves.addr.2212, i64 4
  %.pr201 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool51.not = icmp eq i64 %.pr201, 0
  br i1 %tobool51.not, label %while.end60.loopexit, label %while.body52, !llvm.loop !12

while.end60.loopexit:                             ; preds = %while.body52
  %incdec.ptr.i189.lcssa = phi ptr [ %incdec.ptr.i189, %while.body52 ]
  br label %while.end60

while.end60:                                      ; preds = %while.end60.loopexit, %if.end49
  %moves.addr.2.lcssa = phi ptr [ %moves.addr.0.lcssa, %if.end49 ], [ %incdec.ptr.i189.lcssa, %while.end60.loopexit ]
  %17 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool62.not = icmp eq i32 %17, 0
  br i1 %tobool62.not, label %if.else66, label %if.then63

if.then63:                                        ; preds = %while.end60
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %s, i64 344
  %18 = load i64, ptr %arrayidx64, align 8, !tbaa !7
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %s, i64 360
  %19 = load i64, ptr %arrayidx65, align 8, !tbaa !7
  %or = or i64 %19, %18
  br label %if.end70

if.else66:                                        ; preds = %while.end60
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %s, i64 352
  %20 = load i64, ptr %arrayidx67, align 8, !tbaa !7
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %s, i64 368
  %21 = load i64, ptr %arrayidx68, align 8, !tbaa !7
  %or69 = or i64 %21, %20
  br label %if.end70

if.end70:                                         ; preds = %if.else66, %if.then63
  %storemerge185 = phi i64 [ %or69, %if.else66 ], [ %or, %if.then63 ]
  store i64 %storemerge185, ptr %tsq, align 8, !tbaa !7
  %tobool72.not217 = icmp eq i64 %storemerge185, 0
  br i1 %tobool72.not217, label %while.end90, label %while.body73.lr.ph

while.body73.lr.ph:                               ; preds = %if.end70
  br label %while.body73

while.cond77.while.cond71thread-pre-split_crit_edge: ; preds = %if.end88
  %moves.addr.5.lcssa = phi ptr [ %moves.addr.5, %if.end88 ]
  br label %while.cond71thread-pre-split, !llvm.loop !13

while.cond71thread-pre-split:                     ; preds = %while.body73, %while.cond77.while.cond71thread-pre-split_crit_edge
  %moves.addr.4.lcssa = phi ptr [ %moves.addr.5.lcssa, %while.cond77.while.cond71thread-pre-split_crit_edge ], [ %moves.addr.3218, %while.body73 ]
  %.pr202 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool72.not = icmp eq i64 %.pr202, 0
  br i1 %tobool72.not, label %while.end90.loopexit, label %while.body73

while.body73:                                     ; preds = %while.cond71thread-pre-split, %while.body73.lr.ph
  %moves.addr.3218 = phi ptr [ %moves.addr.2.lcssa, %while.body73.lr.ph ], [ %moves.addr.4.lcssa, %while.cond71thread-pre-split ]
  %call74 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %call75 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %s, i32 noundef %call74)
  %22 = and i64 %2, %call75
  %and76 = and i64 %22, %freesqmask.0
  store i64 %and76, ptr %temp, align 8, !tbaa !7
  %tobool78.not214 = icmp eq i64 %and76, 0
  br i1 %tobool78.not214, label %while.cond71thread-pre-split, label %while.body79.lr.ph, !llvm.loop !13

while.body79.lr.ph:                               ; preds = %while.body73
  %shl5.i191 = shl i32 %call74, 6
  br label %while.body79, !llvm.loop !13

while.body79:                                     ; preds = %if.end88, %while.body79.lr.ph
  %moves.addr.4215 = phi ptr [ %moves.addr.3218, %while.body79.lr.ph ], [ %moves.addr.5, %if.end88 ]
  %call80 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %call81 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %s, i32 noundef %call80)
  %and82 = and i64 %call81, %3
  %tobool83.not = icmp eq i64 %and82, 0
  br i1 %tobool83.not, label %if.end88, label %if.then84

if.then84:                                        ; preds = %while.body79
  %idxprom85 = sext i32 %call80 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom85
  %23 = load i32, ptr %arrayidx86, align 4, !tbaa !6
  %shl1.i190 = shl i32 %23, 19
  %24 = or i32 %shl5.i191, %shl1.i190
  %or4.i193 = or i32 %24, %call80
  store i32 %or4.i193, ptr %moves.addr.4215, align 4, !tbaa !6
  %incdec.ptr.i194 = getelementptr inbounds nuw i8, ptr %moves.addr.4215, i64 4
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %while.body79
  %moves.addr.5 = phi ptr [ %incdec.ptr.i194, %if.then84 ], [ %moves.addr.4215, %while.body79 ]
  %.pr203 = load i64, ptr %temp, align 8, !tbaa !7
  %tobool78.not = icmp eq i64 %.pr203, 0
  br i1 %tobool78.not, label %while.cond77.while.cond71thread-pre-split_crit_edge, label %while.body79, !llvm.loop !14

while.end90.loopexit:                             ; preds = %while.cond71thread-pre-split
  %moves.addr.4.lcssa.lcssa = phi ptr [ %moves.addr.4.lcssa, %while.cond71thread-pre-split ]
  br label %while.end90

while.end90:                                      ; preds = %while.end90.loopexit, %if.end70
  %moves.addr.3.lcssa = phi ptr [ %moves.addr.2.lcssa, %if.end70 ], [ %moves.addr.4.lcssa.lcssa, %while.end90.loopexit ]
  %25 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool92.not = icmp eq i32 %25, 0
  br i1 %tobool92.not, label %if.else97, label %if.then93

if.then93:                                        ; preds = %while.end90
  %arrayidx94 = getelementptr inbounds nuw i8, ptr %s, i64 376
  %26 = load i64, ptr %arrayidx94, align 8, !tbaa !7
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %s, i64 360
  %27 = load i64, ptr %arrayidx95, align 8, !tbaa !7
  %or96 = or i64 %27, %26
  br label %if.end101

if.else97:                                        ; preds = %while.end90
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %s, i64 384
  %28 = load i64, ptr %arrayidx98, align 8, !tbaa !7
  %arrayidx99 = getelementptr inbounds nuw i8, ptr %s, i64 368
  %29 = load i64, ptr %arrayidx99, align 8, !tbaa !7
  %or100 = or i64 %29, %28
  br label %if.end101

if.end101:                                        ; preds = %if.else97, %if.then93
  %storemerge186 = phi i64 [ %or100, %if.else97 ], [ %or96, %if.then93 ]
  store i64 %storemerge186, ptr %tsq, align 8, !tbaa !7
  %tobool103.not223 = icmp eq i64 %storemerge186, 0
  br i1 %tobool103.not223, label %while.end121, label %while.body104.lr.ph

while.body104.lr.ph:                              ; preds = %if.end101
  br label %while.body104

while.cond108.while.cond102thread-pre-split_crit_edge: ; preds = %if.end119
  %moves.addr.8.lcssa = phi ptr [ %moves.addr.8, %if.end119 ]
  br label %while.cond102thread-pre-split, !llvm.loop !15

while.cond102thread-pre-split:                    ; preds = %while.body104, %while.cond108.while.cond102thread-pre-split_crit_edge
  %moves.addr.7.lcssa = phi ptr [ %moves.addr.8.lcssa, %while.cond108.while.cond102thread-pre-split_crit_edge ], [ %moves.addr.6224, %while.body104 ]
  %.pr204 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool103.not = icmp eq i64 %.pr204, 0
  br i1 %tobool103.not, label %while.end121.loopexit, label %while.body104

while.body104:                                    ; preds = %while.cond102thread-pre-split, %while.body104.lr.ph
  %moves.addr.6224 = phi ptr [ %moves.addr.3.lcssa, %while.body104.lr.ph ], [ %moves.addr.7.lcssa, %while.cond102thread-pre-split ]
  %call105 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %call106 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %s, i32 noundef %call105)
  %30 = and i64 %1, %call106
  %and107 = and i64 %30, %freesqmask.0
  store i64 %and107, ptr %temp, align 8, !tbaa !7
  %tobool109.not220 = icmp eq i64 %and107, 0
  br i1 %tobool109.not220, label %while.cond102thread-pre-split, label %while.body110.lr.ph, !llvm.loop !15

while.body110.lr.ph:                              ; preds = %while.body104
  %shl5.i196 = shl i32 %call105, 6
  br label %while.body110, !llvm.loop !15

while.body110:                                    ; preds = %if.end119, %while.body110.lr.ph
  %moves.addr.7221 = phi ptr [ %moves.addr.6224, %while.body110.lr.ph ], [ %moves.addr.8, %if.end119 ]
  %call111 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp)
  %call112 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %s, i32 noundef %call111)
  %and113 = and i64 %call112, %3
  %tobool114.not = icmp eq i64 %and113, 0
  br i1 %tobool114.not, label %if.end119, label %if.then115

if.then115:                                       ; preds = %while.body110
  %idxprom116 = sext i32 %call111 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %sboard2, i64 %idxprom116
  %31 = load i32, ptr %arrayidx117, align 4, !tbaa !6
  %shl1.i195 = shl i32 %31, 19
  %32 = or i32 %shl5.i196, %shl1.i195
  %or4.i198 = or i32 %32, %call111
  store i32 %or4.i198, ptr %moves.addr.7221, align 4, !tbaa !6
  %incdec.ptr.i199 = getelementptr inbounds nuw i8, ptr %moves.addr.7221, i64 4
  br label %if.end119

if.end119:                                        ; preds = %if.then115, %while.body110
  %moves.addr.8 = phi ptr [ %incdec.ptr.i199, %if.then115 ], [ %moves.addr.7221, %while.body110 ]
  %.pr205 = load i64, ptr %temp, align 8, !tbaa !7
  %tobool109.not = icmp eq i64 %.pr205, 0
  br i1 %tobool109.not, label %while.cond108.while.cond102thread-pre-split_crit_edge, label %while.body110, !llvm.loop !16

while.end121.loopexit:                            ; preds = %while.cond102thread-pre-split
  %moves.addr.7.lcssa.lcssa = phi ptr [ %moves.addr.7.lcssa, %while.cond102thread-pre-split ]
  br label %while.end121

while.end121:                                     ; preds = %while.end121.loopexit, %if.end101
  %moves.addr.6.lcssa = phi ptr [ %moves.addr.3.lcssa, %if.end101 ], [ %moves.addr.7.lcssa.lcssa, %while.end121.loopexit ]
  %sub.ptr.lhs.cast = ptrtoint ptr %moves.addr.6.lcssa to i64
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
!6 = !{!2, !2, i64 0}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = !{!1, !5, i64 264}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
