; ModuleID = '/tmp/tmp.Tp5Bj5clGR/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/search.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }

@history_hit = external dso_local local_unnamed_addr global [8 x [12 x [64 x i32]]], align 16
@history_tot = external dso_local local_unnamed_addr global [8 x [12 x [64 x i32]]], align 16
@gamestate = external global %struct.gamestate_t, align 8
@contempt = external local_unnamed_addr global i32, align 4
@material = external local_unnamed_addr constant [14 x i32], align 16
@_ZL8rc_index = external hidden unnamed_addr constant [14 x i32], align 16

; Function Attrs: mustprogress uwtable
declare dso_local noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare hidden fastcc noundef range(i32 0, 2) i32 @_ZL17search_time_checkP7state_t(i64) unnamed_addr #0

declare noundef i32 @_Z7is_drawP11gamestate_tP7state_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z4evalP7state_tiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z13retrieve_evalP7state_t(ptr noundef) local_unnamed_addr #2

declare void @_Z7StoreTTP7state_tiiijiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare hidden fastcc noundef range(i32 0, 2) i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef nonnull captures(none), ptr noundef nonnull captures(none), ptr noundef nonnull captures(none), i32 noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

declare noundef i32 @_Z3seeP7state_tiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z4makeP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z11check_legalP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z8in_checkP7state_t(ptr noundef) local_unnamed_addr #2

declare void @_Z6unmakeP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i16 @_Z12compact_movei(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %s, i32 noundef %alpha, i32 noundef %beta, i32 noundef %depth, i32 noundef %is_null, i32 noundef %cutnode) local_unnamed_addr #0 {
entry:
  %moves = alloca [240 x i32], align 16
  %move_ordering = alloca [240 x i32], align 16
  %i = alloca i32, align 4
  %bound = alloca i32, align 4
  %threat = alloca i32, align 4
  %donull = alloca i32, align 4
  %best = alloca i32, align 4
  %singular = alloca i32, align 4
  %nosingular = alloca i32, align 4
  %searched_moves = alloca [240 x i32], align 16
  %tmp = alloca i32, align 4
  %mv = alloca i32, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %moves) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %move_ordering) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %bound) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %threat) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %donull) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %best) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %singular) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %nosingular) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %searched_moves) #7
  %cmp = icmp slt i32 %depth, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %ply = getelementptr inbounds nuw i8, ptr %s, i64 472
  %0 = load i32, ptr %ply, align 8, !tbaa !0
  %cmp1 = icmp sgt i32 %0, 59
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %s, i32 noundef %alpha, i32 noundef %beta, i32 noundef 0, i32 noundef 0)
  br label %cleanup1024

if.end:                                           ; preds = %lor.lhs.false
  %nodes = getelementptr inbounds nuw i8, ptr %s, i64 4080
  %1 = load i64, ptr %nodes, align 8, !tbaa !6
  %inc = add i64 %1, 1
  store i64 %inc, ptr %nodes, align 8, !tbaa !6
  %call2 = tail call fastcc noundef i32 @_ZL17search_time_checkP7state_t(i64 %inc)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %cleanup1024

if.end4:                                          ; preds = %if.end
  %call5 = tail call noundef i32 @_Z7is_drawP11gamestate_tP7state_t(ptr noundef nonnull @gamestate, ptr noundef nonnull %s)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %if.then9

lor.lhs.false7:                                   ; preds = %if.end4
  %fifty = getelementptr inbounds nuw i8, ptr %s, i64 476
  %2 = load i32, ptr %fifty, align 4, !tbaa !7
  %cmp8 = icmp sgt i32 %2, 99
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %lor.lhs.false7, %if.end4
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 12), align 4, !tbaa !8
  %white_to_move = getelementptr inbounds nuw i8, ptr %s, i64 460
  %4 = load i32, ptr %white_to_move, align 4, !tbaa !10
  %cmp10 = icmp eq i32 %3, %4
  %5 = load i32, ptr @contempt, align 4
  %sub = sub nsw i32 0, %5
  %cond = select i1 %cmp10, i32 %5, i32 %sub
  br label %cleanup1024

if.end11:                                         ; preds = %lor.lhs.false7
  %6 = load i32, ptr %ply, align 8, !tbaa !0
  %add = add nsw i32 %6, -32000
  %cmp13 = icmp sgt i32 %add, %alpha
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end11
  %cmp15.not = icmp slt i32 %add, %beta
  br i1 %cmp15.not, label %if.end18, label %cleanup1024

if.end18:                                         ; preds = %if.then14, %if.end11
  %alpha.addr.0 = phi i32 [ %add, %if.then14 ], [ %alpha, %if.end11 ]
  %sub21 = sub i32 31999, %6
  %cmp22 = icmp slt i32 %sub21, %beta
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end18
  %cmp24.not = icmp sgt i32 %sub21, %alpha.addr.0
  br i1 %cmp24.not, label %if.end27, label %cleanup1024

if.end27:                                         ; preds = %if.then23, %if.end18
  %beta.addr.0 = phi i32 [ %sub21, %if.then23 ], [ %beta, %if.end18 ]
  %call28 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef nonnull %s, ptr noundef nonnull %bound, i32 noundef %alpha.addr.0, i32 noundef %beta.addr.0, ptr noundef nonnull %best, ptr noundef nonnull %threat, ptr noundef nonnull %donull, ptr noundef nonnull %singular, ptr noundef nonnull %nosingular, i32 noundef %depth)
  switch i32 %call28, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb29
    i32 2, label %sw.bb33
    i32 0, label %sw.bb37
    i32 4, label %sw.bb41
  ]

sw.bb:                                            ; preds = %if.end27
  %7 = load i32, ptr %bound, align 4, !tbaa !11
  br label %cleanup1024

sw.bb29:                                          ; preds = %if.end27
  %8 = load i32, ptr %bound, align 4, !tbaa !11
  %cmp30.not = icmp sgt i32 %8, %alpha.addr.0
  br i1 %cmp30.not, label %sw.epilog, label %cleanup1024

sw.bb33:                                          ; preds = %if.end27
  %9 = load i32, ptr %bound, align 4, !tbaa !11
  %cmp34.not = icmp slt i32 %9, %beta.addr.0
  br i1 %cmp34.not, label %sw.epilog, label %cleanup1024

sw.bb37:                                          ; preds = %if.end27
  %10 = load i32, ptr %bound, align 4, !tbaa !11
  %cmp38.not = icmp slt i32 %10, %beta.addr.0
  %spec.select = select i1 %cmp38.not, i32 %cutnode, i32 1
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end27
  store i32 65535, ptr %best, align 4, !tbaa !11
  store i32 0, ptr %threat, align 4, !tbaa !11
  store i32 0, ptr %singular, align 4, !tbaa !11
  store i32 0, ptr %nosingular, align 4, !tbaa !11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb37, %sw.bb33, %sw.bb29, %if.end27
  %cutnode.addr.0 = phi i32 [ %cutnode, %if.end27 ], [ %cutnode, %sw.bb41 ], [ 0, %sw.bb29 ], [ 1, %sw.bb33 ], [ %spec.select, %sw.bb37 ]
  %checks = getelementptr inbounds nuw i8, ptr %s, i64 4100
  %11 = load i32, ptr %ply, align 8, !tbaa !0
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, ptr %checks, i64 %idxprom
  %12 = load i32, ptr %arrayidx, align 4, !tbaa !11
  %call43 = call noundef i32 @_Z13retrieve_evalP7state_t(ptr noundef nonnull %s)
  %tobool44 = icmp ne i32 %12, 0
  %tobool44.not = xor i1 %tobool44, true
  %add45 = add nsw i32 %alpha.addr.0, 1
  %cmp46 = icmp eq i32 %beta.addr.0, %add45
  %or.cond1532 = select i1 %tobool44.not, i1 %cmp46, i1 false
  br i1 %or.cond1532, label %if.then47, label %if.end68

if.then47:                                        ; preds = %sw.epilog
  %cmp48 = icmp samesign ult i32 %depth, 5
  br i1 %cmp48, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.then47
  %sub50 = add nsw i32 %call43, -75
  %cmp51.not = icmp slt i32 %sub50, %beta.addr.0
  br i1 %cmp51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.then49
  %13 = load i32, ptr %best, align 4, !tbaa !11
  %14 = load i32, ptr %threat, align 4, !tbaa !11
  %15 = load i32, ptr %singular, align 4, !tbaa !11
  %16 = load i32, ptr %nosingular, align 4, !tbaa !11
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %s, i32 noundef %sub50, i32 noundef %alpha.addr.0, i32 noundef %beta.addr.0, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %depth)
  br label %cleanup1024

if.end54:                                         ; preds = %if.then49
  %cmp55 = icmp slt i32 %call43, %beta.addr.0
  br i1 %cmp55, label %if.then56, label %if.end68

if.then56:                                        ; preds = %if.end54
  %call57 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %s, i32 noundef %alpha.addr.0, i32 noundef %beta.addr.0, i32 noundef 0, i32 noundef 0)
  br label %cleanup1024

if.else:                                          ; preds = %if.then47
  %cmp59 = icmp samesign ult i32 %depth, 9
  br i1 %cmp59, label %if.then60, label %if.end68

if.then60:                                        ; preds = %if.else
  %sub61 = add nsw i32 %call43, -125
  %cmp62.not = icmp slt i32 %sub61, %beta.addr.0
  br i1 %cmp62.not, label %if.end68, label %if.then63

if.then63:                                        ; preds = %if.then60
  %17 = load i32, ptr %best, align 4, !tbaa !11
  %18 = load i32, ptr %threat, align 4, !tbaa !11
  %19 = load i32, ptr %singular, align 4, !tbaa !11
  %20 = load i32, ptr %nosingular, align 4, !tbaa !11
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %s, i32 noundef %sub61, i32 noundef %alpha.addr.0, i32 noundef %beta.addr.0, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %depth)
  br label %cleanup1024

if.end68:                                         ; preds = %if.then60, %if.else, %if.end54, %sw.epilog
  %arrayidx69 = getelementptr inbounds nuw i8, ptr %s, i64 436
  %21 = load i32, ptr %arrayidx69, align 4, !tbaa !11
  %arrayidx71 = getelementptr inbounds nuw i8, ptr %s, i64 428
  %22 = load i32, ptr %arrayidx71, align 4, !tbaa !11
  %add72 = add nsw i32 %22, %21
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %s, i64 444
  %23 = load i32, ptr %arrayidx74, align 4, !tbaa !11
  %add75 = add nsw i32 %add72, %23
  %arrayidx77 = getelementptr inbounds nuw i8, ptr %s, i64 412
  %24 = load i32, ptr %arrayidx77, align 4, !tbaa !11
  %add78 = add nsw i32 %add75, %24
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %s, i64 440
  %25 = load i32, ptr %arrayidx80, align 8, !tbaa !11
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %s, i64 432
  %26 = load i32, ptr %arrayidx82, align 8, !tbaa !11
  %add83 = add nsw i32 %26, %25
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %s, i64 448
  %27 = load i32, ptr %arrayidx85, align 8, !tbaa !11
  %add86 = add nsw i32 %add83, %27
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %s, i64 416
  %28 = load i32, ptr %arrayidx88, align 8, !tbaa !11
  %add89 = add nsw i32 %add86, %28
  store i32 0, ptr %threat, align 4, !tbaa !11
  %cmp90 = icmp eq i32 %is_null, 0
  br i1 %cmp90, label %land.lhs.true91, label %if.else189

land.lhs.true91:                                  ; preds = %if.end68
  %white_to_move92 = getelementptr inbounds nuw i8, ptr %s, i64 460
  %29 = load i32, ptr %white_to_move92, align 4, !tbaa !10
  %tobool93.not = icmp eq i32 %29, 0
  %cond97 = select i1 %tobool93.not, i32 %add89, i32 %add78
  %tobool98 = icmp eq i32 %cond97, 0
  %or.cond = or i1 %tobool44, %tobool98
  %30 = load i32, ptr %donull, align 4
  %tobool102 = icmp ne i32 %30, 0
  %not.or.cond = xor i1 %or.cond, true
  %or.cond1059.not = select i1 %not.or.cond, i1 %tobool102, i1 false
  %cmp109 = icmp samesign ugt i32 %depth, 4
  %or.cond1061 = and i1 %cmp109, %cmp46
  %or.cond1629 = select i1 %or.cond1059.not, i1 %or.cond1061, i1 false
  br i1 %or.cond1629, label %if.then110, label %if.else189

if.then110:                                       ; preds = %land.lhs.true91
  %31 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 4), align 4, !tbaa !12
  %cmp111 = icmp eq i32 %31, 2
  br i1 %cmp111, label %if.then112, label %if.end125

if.then112:                                       ; preds = %if.then110
  %cmp114 = icmp samesign ult i32 %depth, 25
  br i1 %cmp114, label %if.then115, label %if.else118

if.then115:                                       ; preds = %if.then112
  %sub116 = add nsw i32 %beta.addr.0, -1
  %call117 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %s, i32 noundef %sub116, i32 noundef %beta.addr.0, i32 noundef 0, i32 noundef 0)
  br label %if.end121

if.else118:                                       ; preds = %if.then112
  %sub113 = add nsw i32 %depth, -24
  %sub119 = add nsw i32 %beta.addr.0, -1
  %call120 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %s, i32 noundef %sub119, i32 noundef %beta.addr.0, i32 noundef %sub113, i32 noundef 1, i32 noundef %cutnode.addr.0)
  br label %if.end121

if.end121:                                        ; preds = %if.else118, %if.then115
  %score.0 = phi i32 [ %call117, %if.then115 ], [ %call120, %if.else118 ]
  %32 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 36096), align 8, !tbaa !13
  %tobool122.not = icmp eq i32 %32, 0
  br i1 %tobool122.not, label %if.end125, label %cleanup1024

if.end125:                                        ; preds = %if.end121, %if.then110
  %score.1 = phi i32 [ %score.0, %if.end121 ], [ -32000, %if.then110 ]
  %33 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 4), align 4, !tbaa !12
  %cmp126.not = icmp eq i32 %33, 2
  %cmp128.not = icmp slt i32 %score.1, %beta.addr.0
  %or.cond1533 = and i1 %cmp128.not, %cmp126.not
  br i1 %or.cond1533, label %if.end216, label %if.then129

if.then129:                                       ; preds = %if.end125
  %ep_square = getelementptr inbounds nuw i8, ptr %s, i64 456
  %34 = load i32, ptr %ep_square, align 8, !tbaa !14
  store i32 0, ptr %ep_square, align 8, !tbaa !14
  %35 = load i32, ptr %white_to_move92, align 4, !tbaa !10
  %xor = xor i32 %35, 1
  store i32 %xor, ptr %white_to_move92, align 4, !tbaa !10
  %36 = load i32, ptr %ply, align 8, !tbaa !0
  %inc133 = add nsw i32 %36, 1
  store i32 %inc133, ptr %ply, align 8, !tbaa !0
  %37 = load i32, ptr %fifty, align 4, !tbaa !7
  %inc135 = add nsw i32 %37, 1
  store i32 %inc135, ptr %fifty, align 4, !tbaa !7
  %path = getelementptr inbounds nuw i8, ptr %s, i64 2544
  %idxprom138 = sext i32 %36 to i64
  %arrayidx139 = getelementptr inbounds i32, ptr %path, i64 %idxprom138
  store i32 0, ptr %arrayidx139, align 4, !tbaa !11
  %38 = load i32, ptr %ply, align 8, !tbaa !0
  %idxprom142 = sext i32 %38 to i64
  %arrayidx143 = getelementptr inbounds i32, ptr %checks, i64 %idxprom142
  store i32 0, ptr %arrayidx143, align 4, !tbaa !11
  %plyeval = getelementptr inbounds nuw i8, ptr %s, i64 2800
  %39 = load i32, ptr %ply, align 8, !tbaa !0
  %40 = sext i32 %39 to i64
  %41 = getelementptr i32, ptr %plyeval, i64 %40
  %arrayidx147 = getelementptr i8, ptr %41, i64 -4
  %42 = load i32, ptr %arrayidx147, align 4, !tbaa !11
  store i32 %42, ptr %41, align 4, !tbaa !11
  %cmp154 = icmp samesign ult i32 %depth, 17
  br i1 %cmp154, label %if.then155, label %if.else161

if.then155:                                       ; preds = %if.then129
  %sub156 = sub nsw i32 0, %beta.addr.0
  %add158 = sub i32 1, %beta.addr.0
  %call159 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %s, i32 noundef %sub156, i32 noundef %add158, i32 noundef 0, i32 noundef 0)
  br label %if.end168

if.else161:                                       ; preds = %if.then129
  %sub153 = add nsw i32 %depth, -16
  %sub162 = sub nsw i32 0, %beta.addr.0
  %add164 = sub i32 1, %beta.addr.0
  %tobool165.not = icmp eq i32 %cutnode.addr.0, 0
  %conv = zext i1 %tobool165.not to i32
  %call166 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %s, i32 noundef %sub162, i32 noundef %add164, i32 noundef %sub153, i32 noundef 1, i32 noundef %conv)
  br label %if.end168

if.end168:                                        ; preds = %if.else161, %if.then155
  %call159.pn = phi i32 [ %call159, %if.then155 ], [ %call166, %if.else161 ]
  %score.2 = sub nsw i32 0, %call159.pn
  %43 = load i32, ptr %fifty, align 4, !tbaa !7
  %dec = add nsw i32 %43, -1
  store i32 %dec, ptr %fifty, align 4, !tbaa !7
  %44 = load i32, ptr %ply, align 8, !tbaa !0
  %dec171 = add nsw i32 %44, -1
  store i32 %dec171, ptr %ply, align 8, !tbaa !0
  %45 = load i32, ptr %white_to_move92, align 4, !tbaa !10
  %xor173 = xor i32 %45, 1
  store i32 %xor173, ptr %white_to_move92, align 4, !tbaa !10
  store i32 %34, ptr %ep_square, align 8, !tbaa !14
  %46 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 36096), align 8, !tbaa !13
  %tobool175.not = icmp eq i32 %46, 0
  br i1 %tobool175.not, label %if.end177, label %cleanup1024

if.end177:                                        ; preds = %if.end168
  %cmp178.not = icmp sgt i32 %beta.addr.0, %score.2
  br i1 %cmp178.not, label %if.else180, label %if.then179

if.then179:                                       ; preds = %if.end177
  %47 = load i32, ptr %best, align 4, !tbaa !11
  %48 = load i32, ptr %threat, align 4, !tbaa !11
  %49 = load i32, ptr %nosingular, align 4, !tbaa !11
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %s, i32 noundef %score.2, i32 noundef %alpha.addr.0, i32 noundef %beta.addr.0, i32 noundef %47, i32 noundef %48, i32 noundef 0, i32 noundef %49, i32 noundef %depth)
  br label %cleanup1024

if.else180:                                       ; preds = %if.end177
  %cmp181 = icmp sgt i32 %call159.pn, 31400
  br i1 %cmp181, label %if.then182, label %if.end216

if.then182:                                       ; preds = %if.else180
  store i32 1, ptr %threat, align 4, !tbaa !11
  br label %if.end216

if.else189:                                       ; preds = %land.lhs.true91, %if.end68
  %cmp193 = icmp samesign ult i32 %depth, 13
  %or.cond1062 = and i1 %cmp193, %cmp46
  %sub195 = add nsw i32 %beta.addr.0, -300
  %cmp196 = icmp slt i32 %call43, %sub195
  %or.cond1534 = select i1 %or.cond1062, i1 %cmp196, i1 false
  br i1 %or.cond1534, label %if.then197, label %if.end209

if.then197:                                       ; preds = %if.else189
  %call198 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %s, i32 noundef %alpha.addr.0, i32 noundef %beta.addr.0, i32 noundef 0, i32 noundef 0)
  %50 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 36096), align 8, !tbaa !13
  %tobool199.not = icmp eq i32 %50, 0
  br i1 %tobool199.not, label %if.end201, label %cleanup1024

if.end201:                                        ; preds = %if.then197
  %cmp202.not = icmp sgt i32 %call198, %alpha.addr.0
  br i1 %cmp202.not, label %if.end209, label %if.then203

if.then203:                                       ; preds = %if.end201
  %51 = load i32, ptr %best, align 4, !tbaa !11
  %52 = load i32, ptr %threat, align 4, !tbaa !11
  %53 = load i32, ptr %singular, align 4, !tbaa !11
  %54 = load i32, ptr %nosingular, align 4, !tbaa !11
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %s, i32 noundef %alpha.addr.0, i32 noundef %alpha.addr.0, i32 noundef %beta.addr.0, i32 noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %depth)
  br label %cleanup1024

if.end209:                                        ; preds = %if.end201, %if.else189
  br i1 %tobool44, label %if.then218, label %if.end216

if.end216:                                        ; preds = %if.end209, %if.then182, %if.else180, %if.end125
  %call215 = call noundef i32 @_Z3genP7state_tPi(ptr noundef nonnull %s, ptr noundef nonnull %moves)
  br label %if.end237

if.then218:                                       ; preds = %if.end209
  %call212 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef nonnull %s, ptr noundef nonnull %moves, i32 noundef %12)
  %tobool219.not = icmp eq i32 %call212, 0
  br i1 %tobool219.not, label %if.end237, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then218
  %cmp2211644 = icmp sgt i32 %call212, 0
  br i1 %cmp2211644, label %for.body.preheader, label %if.end237.loopexit

for.body.preheader:                               ; preds = %for.cond.preheader
  %55 = sext i32 %call212 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %legalmoves.01646 = phi i32 [ %spec.select1535, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx224 = getelementptr inbounds nuw i32, ptr %moves, i64 %indvars.iv
  %56 = load i32, ptr %arrayidx224, align 4, !tbaa !11
  call void @_Z4makeP7state_ti(ptr noundef %s, i32 noundef %56)
  %57 = load i32, ptr %arrayidx224, align 4, !tbaa !11
  %call227 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %s, i32 noundef %57)
  %tobool228.not = icmp ne i32 %call227, 0
  %inc230 = zext i1 %tobool228.not to i32
  %spec.select1535 = add nuw nsw i32 %legalmoves.01646, %inc230
  %58 = load i32, ptr %arrayidx224, align 4, !tbaa !11
  call void @_Z6unmakeP7state_ti(ptr noundef %s, i32 noundef %58)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp221 = icmp slt i64 %indvars.iv.next, %55
  %cmp222 = icmp samesign ult i32 %spec.select1535, 2
  %59 = select i1 %cmp221, i1 %cmp222, i1 false
  br i1 %59, label %for.body, label %if.end237.loopexit.loopexit, !llvm.loop !15

if.end237.loopexit.loopexit:                      ; preds = %for.body
  %spec.select1535.lcssa = phi i32 [ %spec.select1535, %for.body ]
  %inc234.lcssa.wide = phi i64 [ %indvars.iv.next, %for.body ]
  %60 = trunc nuw nsw i64 %inc234.lcssa.wide to i32
  br label %if.end237.loopexit

if.end237.loopexit:                               ; preds = %if.end237.loopexit.loopexit, %for.cond.preheader
  %storemerge.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %60, %if.end237.loopexit.loopexit ]
  %legalmoves.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %spec.select1535.lcssa, %if.end237.loopexit.loopexit ]
  store i32 %storemerge.lcssa, ptr %i, align 4, !tbaa !11
  br label %if.end237

if.end237:                                        ; preds = %if.end237.loopexit, %if.then218, %if.end216
  %num_moves.01615 = phi i32 [ 0, %if.then218 ], [ %call215, %if.end216 ], [ %call212, %if.end237.loopexit ]
  %legalmoves.2 = phi i32 [ 0, %if.then218 ], [ %call215, %if.end216 ], [ %legalmoves.0.lcssa, %if.end237.loopexit ]
  %61 = load i32, ptr %best, align 4, !tbaa !11
  call fastcc void @_ZL11order_movesP7state_tPiS1_ij(ptr noundef %s, ptr noundef %moves, ptr noundef %move_ordering, i32 noundef %num_moves.01615, i32 noundef %61)
  %cmp240 = icmp sgt i32 %depth, 19
  br i1 %cmp240, label %land.lhs.true241, label %if.end286

land.lhs.true241:                                 ; preds = %if.end237
  %cmp243 = icmp ne i32 %beta.addr.0, %add45
  %62 = load i32, ptr %best, align 4
  %cmp245 = icmp eq i32 %62, 65535
  %or.cond1063 = select i1 %cmp243, i1 %cmp245, i1 false
  br i1 %or.cond1063, label %for.cond247.preheader, label %if.end286

for.cond247.preheader:                            ; preds = %land.lhs.true241
  %cmp2481648 = icmp sgt i32 %num_moves.01615, 0
  br i1 %cmp2481648, label %for.body249.lr.ph, label %for.end271

for.body249.lr.ph:                                ; preds = %for.cond247.preheader
  %sboard = getelementptr inbounds nuw i8, ptr %s, i64 4
  %wide.trip.count = zext i32 %num_moves.01615 to i64
  br label %for.body249

for.body249:                                      ; preds = %for.inc269, %for.body249.lr.ph
  %indvars.iv1706 = phi i64 [ 0, %for.body249.lr.ph ], [ %indvars.iv.next1707, %for.inc269 ]
  %goodmove.01650 = phi i32 [ 0, %for.body249.lr.ph ], [ %goodmove.1, %for.inc269 ]
  %arrayidx251 = getelementptr inbounds nuw i32, ptr %moves, i64 %indvars.iv1706
  %63 = load i32, ptr %arrayidx251, align 4, !tbaa !11
  %shr = lshr i32 %63, 19
  %and = and i32 %shr, 15
  %cmp252.not = icmp eq i32 %and, 13
  br i1 %cmp252.not, label %for.inc269, label %land.lhs.true253

land.lhs.true253:                                 ; preds = %for.body249
  %shr260 = lshr i32 %63, 6
  %and261 = and i32 %shr260, 63
  %idxprom262 = zext nneg i32 %and261 to i64
  %arrayidx263 = getelementptr inbounds nuw i32, ptr %sboard, i64 %idxprom262
  %64 = load i32, ptr %arrayidx263, align 4, !tbaa !11
  %idxprom264 = sext i32 %64 to i64
  %arrayidx265 = getelementptr inbounds i32, ptr @material, i64 %idxprom264
  %65 = load i32, ptr %arrayidx265, align 4, !tbaa !11
  %66 = call i32 @llvm.abs.i32(i32 %65, i1 true)
  %cmp266 = icmp samesign ugt i32 %and, %66
  %spec.select1536 = select i1 %cmp266, i32 1, i32 %goodmove.01650
  br label %for.inc269

for.inc269:                                       ; preds = %land.lhs.true253, %for.body249
  %goodmove.1 = phi i32 [ %goodmove.01650, %for.body249 ], [ %spec.select1536, %land.lhs.true253 ]
  %indvars.iv.next1707 = add nuw nsw i64 %indvars.iv1706, 1
  %exitcond = icmp ne i64 %indvars.iv.next1707, %wide.trip.count
  br i1 %exitcond, label %for.body249, label %for.end271.loopexit, !llvm.loop !17

for.end271.loopexit:                              ; preds = %for.inc269
  %goodmove.1.lcssa = phi i32 [ %goodmove.1, %for.inc269 ]
  %67 = add i32 %num_moves.01615, -1
  %68 = zext i32 %67 to i64
  %69 = add nuw nsw i64 %68, 1
  %70 = trunc nuw nsw i64 %69 to i32
  br label %for.end271

for.end271:                                       ; preds = %for.end271.loopexit, %for.cond247.preheader
  %storemerge1526.lcssa = phi i32 [ 0, %for.cond247.preheader ], [ %70, %for.end271.loopexit ]
  %goodmove.0.lcssa = phi i32 [ 0, %for.cond247.preheader ], [ %goodmove.1.lcssa, %for.end271.loopexit ]
  store i32 %storemerge1526.lcssa, ptr %i, align 4, !tbaa !11
  %tobool272.not = icmp eq i32 %goodmove.0.lcssa, 0
  br i1 %tobool272.not, label %if.then273, label %if.end286

if.then273:                                       ; preds = %for.end271
  call void @llvm.lifetime.start.p0(ptr nonnull %tmp) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %mv) #7
  %shr274 = lshr i32 %depth, 1
  %call275 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %s, i32 noundef %alpha.addr.0, i32 noundef %beta.addr.0, i32 noundef %shr274, i32 noundef 0, i32 noundef %cutnode.addr.0)
  %call276 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef %s, ptr noundef nonnull %tmp, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %mv, ptr noundef nonnull %tmp, ptr noundef nonnull %tmp, ptr noundef nonnull %tmp, ptr noundef nonnull %tmp, i32 noundef 0)
  %cmp277.not = icmp eq i32 %call276, 4
  br i1 %cmp277.not, label %if.else281, label %if.then278

if.then278:                                       ; preds = %if.then273
  %71 = load i32, ptr %mv, align 4, !tbaa !11
  call fastcc void @_ZL11order_movesP7state_tPiS1_ij(ptr noundef %s, ptr noundef %moves, ptr noundef %move_ordering, i32 noundef %num_moves.01615, i32 noundef %71)
  br label %if.end284

if.else281:                                       ; preds = %if.then273
  %72 = load i32, ptr %best, align 4, !tbaa !11
  call fastcc void @_ZL11order_movesP7state_tPiS1_ij(ptr noundef %s, ptr noundef %moves, ptr noundef %move_ordering, i32 noundef %num_moves.01615, i32 noundef %72)
  br label %if.end284

if.end284:                                        ; preds = %if.else281, %if.then278
  call void @llvm.lifetime.end.p0(ptr nonnull %mv) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %tmp) #7
  br label %if.end286

if.end286:                                        ; preds = %if.end284, %for.end271, %land.lhs.true241, %if.end237
  %73 = load i32, ptr %threat, align 4
  %tobool289 = icmp eq i32 %73, 0
  %or.cond1064 = select i1 %tobool44.not, i1 %tobool289, i1 false
  %cmp291 = icmp sgt i32 %depth, 15
  %or.cond1065 = and i1 %cmp291, %or.cond1064
  %cmp293 = icmp sgt i32 %legalmoves.2, 8
  %or.cond1066 = select i1 %or.cond1065, i1 %cmp293, i1 false
  br i1 %or.cond1066, label %land.lhs.true294, label %if.end403

land.lhs.true294:                                 ; preds = %if.end286
  %74 = load i32, ptr %ply, align 8, !tbaa !0
  %75 = sext i32 %74 to i64
  %76 = getelementptr i32, ptr %checks, i64 %75
  %arrayidx299 = getelementptr i8, ptr %76, i64 -4
  %77 = load i32, ptr %arrayidx299, align 4, !tbaa !11
  %tobool300.not = icmp eq i32 %77, 0
  br i1 %tobool300.not, label %land.lhs.true301, label %if.end403

land.lhs.true301:                                 ; preds = %land.lhs.true294
  %cmp303 = icmp slt i32 %74, 3
  br i1 %cmp303, label %if.then321, label %lor.lhs.false304

lor.lhs.false304:                                 ; preds = %land.lhs.true301
  %78 = zext nneg i32 %74 to i64
  %79 = getelementptr i32, ptr %checks, i64 %78
  %arrayidx309 = getelementptr i8, ptr %79, i64 -8
  %80 = load i32, ptr %arrayidx309, align 4, !tbaa !11
  %tobool310.not = icmp eq i32 %80, 0
  br i1 %tobool310.not, label %land.lhs.true311, label %if.end403

land.lhs.true311:                                 ; preds = %lor.lhs.false304
  %cmp313 = icmp eq i32 %74, 3
  br i1 %cmp313, label %if.then321, label %lor.lhs.false314

lor.lhs.false314:                                 ; preds = %land.lhs.true311
  %81 = zext nneg i32 %74 to i64
  %82 = getelementptr i32, ptr %checks, i64 %81
  %arrayidx319 = getelementptr i8, ptr %82, i64 -12
  %83 = load i32, ptr %arrayidx319, align 4, !tbaa !11
  %tobool320.not = icmp eq i32 %83, 0
  br i1 %tobool320.not, label %if.then321, label %if.end403

if.then321:                                       ; preds = %lor.lhs.false314, %land.lhs.true311, %land.lhs.true301
  store i32 -1, ptr %i, align 4, !tbaa !11
  %call324 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef %i, ptr noundef %move_ordering, ptr noundef %moves, i32 noundef %num_moves.01615)
  %tobool3251653.not = icmp eq i32 %call324, 0
  br i1 %tobool3251653.not, label %if.end403, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then321
  %hash = getelementptr inbounds nuw i8, ptr %s, i64 480
  %sub356 = sub nsw i32 0, %beta.addr.0
  %add358 = sub i32 50, %alpha.addr.0
  %cmp359 = icmp sgt i32 %depth, 16
  %cmp363 = icmp slt i32 %depth, 17
  %sub355 = add nsw i32 %depth, -16
  %add373 = sub i32 1, %beta.addr.0
  %tobool374.not = icmp eq i32 %cutnode.addr.0, 0
  %conv376 = zext i1 %tobool374.not to i32
  %add367 = sub i32 1, %beta.addr.0
  br label %while.body

while.body:                                       ; preds = %if.end395, %while.body.lr.ph
  %m_c.01656 = phi i32 [ 0, %while.body.lr.ph ], [ %m_c.1, %if.end395 ]
  %m_s.01655 = phi i32 [ 0, %while.body.lr.ph ], [ %inc329, %if.end395 ]
  %score.31654 = phi i32 [ -32000, %while.body.lr.ph ], [ %score.5, %if.end395 ]
  %inc329 = add nuw nsw i32 %m_s.01655, 1
  %84 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom330 = sext i32 %84 to i64
  %arrayidx331 = getelementptr inbounds i32, ptr %moves, i64 %idxprom330
  %85 = load i32, ptr %arrayidx331, align 4, !tbaa !11
  call void @_Z4makeP7state_ti(ptr noundef %s, i32 noundef %85)
  %86 = load i32, ptr %arrayidx331, align 4, !tbaa !11
  %call334 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %s, i32 noundef %86)
  %tobool335.not = icmp ne i32 %call334, 0
  br i1 %tobool335.not, label %if.then336, label %if.end380

if.then336:                                       ; preds = %while.body
  %87 = load i64, ptr %hash, align 8, !tbaa !18
  %88 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 60), align 4, !tbaa !19
  %89 = load i32, ptr %ply, align 8, !tbaa !0
  %add338 = add nsw i32 %89, %88
  %90 = sext i32 %add338 to i64
  %91 = getelementptr i64, ptr %s, i64 %90
  %arrayidx341 = getelementptr i8, ptr %91, i64 4392
  store i64 %87, ptr %arrayidx341, align 8, !tbaa !20
  %92 = load i32, ptr %arrayidx331, align 4, !tbaa !11
  %93 = sext i32 %89 to i64
  %94 = getelementptr i32, ptr %s, i64 %93
  %arrayidx348 = getelementptr i8, ptr %94, i64 2540
  store i32 %92, ptr %arrayidx348, align 4, !tbaa !11
  %call349 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %s)
  %95 = load i32, ptr %ply, align 8, !tbaa !0
  %idxprom352 = sext i32 %95 to i64
  %arrayidx353 = getelementptr inbounds i32, ptr %checks, i64 %idxprom352
  store i32 %call349, ptr %arrayidx353, align 4, !tbaa !11
  %tobool360 = icmp ne i32 %call349, 0
  %96 = or i1 %cmp359, %tobool360
  %conv361 = zext i1 %96 to i32
  %call362 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef %s, i32 noundef %sub356, i32 noundef %add358, i32 noundef %conv361)
  br i1 %cmp363, label %if.then364, label %if.else370

if.then364:                                       ; preds = %if.then336
  %call368 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %s, i32 noundef %sub356, i32 noundef %add367, i32 noundef 0, i32 noundef 0)
  br label %if.end379

if.else370:                                       ; preds = %if.then336
  %call377 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %s, i32 noundef %sub356, i32 noundef %add373, i32 noundef %sub355, i32 noundef 0, i32 noundef %conv376)
  br label %if.end379

if.end379:                                        ; preds = %if.else370, %if.then364
  %call368.pn = phi i32 [ %call368, %if.then364 ], [ %call377, %if.else370 ]
  %score.4 = sub nsw i32 0, %call368.pn
  br label %if.end380

if.end380:                                        ; preds = %if.end379, %while.body
  %score.5 = phi i32 [ %score.4, %if.end379 ], [ %score.31654, %while.body ]
  %97 = load i32, ptr %arrayidx331, align 4, !tbaa !11
  call void @_Z6unmakeP7state_ti(ptr noundef %s, i32 noundef %97)
  %98 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 36096), align 8, !tbaa !13
  %tobool383.not = icmp eq i32 %98, 0
  br i1 %tobool383.not, label %if.then384, label %if.end403.loopexit

if.then384:                                       ; preds = %if.end380
  %cmp385 = icmp sge i32 %score.5, %beta.addr.0
  %or.cond1067 = and i1 %tobool335.not, %cmp385
  br i1 %or.cond1067, label %if.then388, label %if.end395

if.then388:                                       ; preds = %if.then384
  %cmp390.not = icmp eq i32 %m_c.01656, 0
  br i1 %cmp390.not, label %if.end395, label %cleanup399

if.end395:                                        ; preds = %if.then388, %if.then384
  %m_c.1 = phi i32 [ 1, %if.then388 ], [ %m_c.01656, %if.then384 ]
  %call398 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef %i, ptr noundef %move_ordering, ptr noundef %moves, i32 noundef %num_moves.01615)
  %tobool325 = icmp ne i32 %call398, 0
  %cmp327 = icmp samesign ult i32 %m_s.01655, 2
  %99 = select i1 %tobool325, i1 %cmp327, i1 false
  br i1 %99, label %while.body, label %if.end403.loopexit, !llvm.loop !21

cleanup399:                                       ; preds = %if.then388
  %100 = load i32, ptr %best, align 4, !tbaa !11
  %101 = load i32, ptr %threat, align 4, !tbaa !11
  %102 = load i32, ptr %nosingular, align 4, !tbaa !11
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %s, i32 noundef %beta.addr.0, i32 noundef %alpha.addr.0, i32 noundef %beta.addr.0, i32 noundef %100, i32 noundef %101, i32 noundef 0, i32 noundef %102, i32 noundef %depth)
  br label %cleanup1024

if.end403.loopexit:                               ; preds = %if.end395, %if.end380
  %score.5.lcssa = phi i32 [ %score.5, %if.end395 ], [ %score.5, %if.end380 ]
  br label %if.end403

if.end403:                                        ; preds = %if.end403.loopexit, %if.then321, %lor.lhs.false314, %lor.lhs.false304, %land.lhs.true294, %if.end286
  %score.8 = phi i32 [ -32000, %land.lhs.true294 ], [ -32000, %lor.lhs.false314 ], [ -32000, %lor.lhs.false304 ], [ -32000, %if.end286 ], [ -32000, %if.then321 ], [ %score.5.lcssa, %if.end403.loopexit ]
  %103 = load i32, ptr %singular, align 4, !tbaa !11
  %tobool404 = icmp eq i32 %103, 0
  %104 = load i32, ptr %nosingular, align 4
  %tobool406 = icmp eq i32 %104, 0
  %or.cond1068.not1528 = select i1 %tobool404, i1 %tobool406, i1 false
  %105 = load i32, ptr %threat, align 4
  %tobool408 = icmp eq i32 %105, 0
  %or.cond1069.not1527 = select i1 %or.cond1068.not1528, i1 %tobool408, i1 false
  %or.cond1070 = and i1 %cmp240, %or.cond1069.not1527
  %cmp412 = icmp sgt i32 %legalmoves.2, 1
  %or.cond1071 = select i1 %or.cond1070, i1 %cmp412, i1 false
  %106 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 4), align 4
  %cmp414 = icmp ne i32 %106, 2
  %or.cond1072 = select i1 %or.cond1071, i1 %cmp414, i1 false
  br i1 %or.cond1072, label %if.then415, label %if.end505

if.then415:                                       ; preds = %if.end403
  %sub416 = add nsw i32 %depth, -24
  %call417 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %s, i32 noundef %alpha.addr.0, i32 noundef %beta.addr.0, i32 noundef %sub416, i32 noundef 0, i32 noundef %cutnode.addr.0)
  %cmp418 = icmp sgt i32 %call417, %alpha.addr.0
  br i1 %cmp418, label %if.then419, label %if.end505

if.then419:                                       ; preds = %if.then415
  store i32 -1, ptr %i, align 4, !tbaa !11
  %call422 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef %i, ptr noundef %move_ordering, ptr noundef %moves, i32 noundef %num_moves.01615)
  %i.promoted = load i32, ptr %i, align 1
  %tobool4241660 = icmp ne i32 %call422, 0
  %107 = load i32, ptr %singular, align 4
  %cmp4261661 = icmp slt i32 %107, 2
  %or.cond10731662 = select i1 %tobool4241660, i1 %cmp4261661, i1 false
  br i1 %or.cond10731662, label %while.body430.lr.ph, label %if.end505.loopexit

while.body430.lr.ph:                              ; preds = %if.then419
  %hash438 = getelementptr inbounds nuw i8, ptr %s, i64 480
  %sub459 = add nsw i32 %depth, -16
  %sub460 = sub nsw i32 0, %beta.addr.0
  %add462 = sub i32 50, %alpha.addr.0
  %sub461 = sub nsw i32 0, %alpha.addr.0
  %sub472 = xor i32 %alpha.addr.0, -1
  %tobool474.not = icmp eq i32 %cutnode.addr.0, 0
  %conv476 = zext i1 %tobool474.not to i32
  %sub486 = sub nsw i32 49, %alpha.addr.0
  %sub487 = add nsw i32 %alpha.addr.0, -50
  %108 = sext i32 %i.promoted to i64
  %109 = sext i32 %num_moves.01615 to i64
  br label %while.body430

while.body430:                                    ; preds = %_ZL15remove_one_fastPiS_S_i.exit, %while.body430.lr.ph
  %indvars.iv1709 = phi i64 [ %108, %while.body430.lr.ph ], [ %indvars.iv.next1710, %_ZL15remove_one_fastPiS_S_i.exit ]
  %s_c.01666 = phi i32 [ 0, %while.body430.lr.ph ], [ %s_c.2, %_ZL15remove_one_fastPiS_S_i.exit ]
  %score.91665 = phi i32 [ %score.8, %while.body430.lr.ph ], [ %score.11, %_ZL15remove_one_fastPiS_S_i.exit ]
  %first.01664 = phi i32 [ 1, %while.body430.lr.ph ], [ %first.1, %_ZL15remove_one_fastPiS_S_i.exit ]
  %arrayidx432 = getelementptr inbounds i32, ptr %moves, i64 %indvars.iv1709
  %110 = load i32, ptr %arrayidx432, align 4, !tbaa !11
  call void @_Z4makeP7state_ti(ptr noundef %s, i32 noundef %110)
  %111 = load i32, ptr %arrayidx432, align 4, !tbaa !11
  %call435 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %s, i32 noundef %111)
  %tobool436.not = icmp eq i32 %call435, 0
  br i1 %tobool436.not, label %if.end497, label %if.then437

if.then437:                                       ; preds = %while.body430
  %112 = load i64, ptr %hash438, align 8, !tbaa !18
  %113 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 60), align 4, !tbaa !19
  %114 = load i32, ptr %ply, align 8, !tbaa !0
  %add441 = add nsw i32 %114, %113
  %115 = sext i32 %add441 to i64
  %116 = getelementptr i64, ptr %s, i64 %115
  %arrayidx444 = getelementptr i8, ptr %116, i64 4392
  store i64 %112, ptr %arrayidx444, align 8, !tbaa !20
  %117 = load i32, ptr %arrayidx432, align 4, !tbaa !11
  %118 = sext i32 %114 to i64
  %119 = getelementptr i32, ptr %s, i64 %118
  %arrayidx451 = getelementptr i8, ptr %119, i64 2540
  store i32 %117, ptr %arrayidx451, align 4, !tbaa !11
  %inc452 = add nsw i32 %s_c.01666, 1
  %call453 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %s)
  %120 = load i32, ptr %ply, align 8, !tbaa !0
  %idxprom456 = sext i32 %120 to i64
  %arrayidx457 = getelementptr inbounds i32, ptr %checks, i64 %idxprom456
  store i32 %call453, ptr %arrayidx457, align 4, !tbaa !11
  %call468 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef %s, i32 noundef %sub460, i32 noundef %add462, i32 noundef 1)
  %tobool469.not = icmp eq i32 %first.01664, 0
  br i1 %tobool469.not, label %if.else484, label %if.then470

if.then470:                                       ; preds = %if.then437
  %call477 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %s, i32 noundef %sub472, i32 noundef %sub461, i32 noundef %sub459, i32 noundef 0, i32 noundef %conv476)
  %sub478 = sub nsw i32 0, %call477
  %cmp479 = icmp slt i32 %alpha.addr.0, %sub478
  br i1 %cmp479, label %if.then480, label %if.else481

if.then480:                                       ; preds = %if.then470
  store i32 1, ptr %singular, align 4, !tbaa !11
  br label %if.end497

if.else481:                                       ; preds = %if.then470
  store i32 0, ptr %singular, align 4, !tbaa !11
  %add482 = add nsw i32 %s_c.01666, 11
  br label %if.end497

if.else484:                                       ; preds = %if.then437
  %call489 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %s, i32 noundef %sub486, i32 noundef %add462, i32 noundef %sub459, i32 noundef 0, i32 noundef 0)
  %sub490 = sub nsw i32 0, %call489
  %cmp492 = icmp slt i32 %sub487, %sub490
  br i1 %cmp492, label %if.then493, label %if.end497

if.then493:                                       ; preds = %if.else484
  store i32 0, ptr %singular, align 4, !tbaa !11
  %add494 = add nsw i32 %s_c.01666, 11
  br label %if.end497

if.end497:                                        ; preds = %if.then493, %if.else484, %if.else481, %if.then480, %while.body430
  %first.1 = phi i32 [ %first.01664, %while.body430 ], [ 0, %if.else484 ], [ 0, %if.then493 ], [ 0, %if.then480 ], [ 0, %if.else481 ]
  %score.11 = phi i32 [ %score.91665, %while.body430 ], [ %sub490, %if.else484 ], [ %sub490, %if.then493 ], [ %sub478, %if.then480 ], [ %sub478, %if.else481 ]
  %s_c.2 = phi i32 [ %s_c.01666, %while.body430 ], [ %inc452, %if.else484 ], [ %add494, %if.then493 ], [ %inc452, %if.then480 ], [ %add482, %if.else481 ]
  %121 = load i32, ptr %arrayidx432, align 4, !tbaa !11
  call void @_Z6unmakeP7state_ti(ptr noundef %s, i32 noundef %121)
  %indvars.iv.next1710 = add nsw i64 %indvars.iv1709, 1
  %cmp.i = icmp slt i64 %indvars.iv1709, 9
  %cmp165.i = icmp slt i64 %indvars.iv.next1710, %109
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %if.end497
  br i1 %cmp165.i, label %for.body.preheader.i, label %_ZL15remove_one_fastPiS_S_i.exit

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %122 = add nsw i64 %indvars.iv1709, 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ %122, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i ]
  %tmp.068.i = phi i32 [ undef, %for.body.preheader.i ], [ %spec.select60.i, %for.body.i ]
  %best.067.i = phi i32 [ -1000000, %for.body.preheader.i ], [ %spec.select.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds i32, ptr %move_ordering, i64 %indvars.iv.i
  %123 = load i32, ptr %arrayidx.i, align 4, !tbaa !11
  %cmp2.i = icmp sgt i32 %123, %best.067.i
  %spec.select.i = call i32 @llvm.smax.i32(i32 %123, i32 %best.067.i)
  %124 = trunc nsw i64 %indvars.iv.i to i32
  %spec.select60.i = select i1 %cmp2.i, i32 %124, i32 %tmp.068.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %num_moves.01615, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %if.end12.i, label %for.body.i, !llvm.loop !22

if.else.i:                                        ; preds = %if.end497
  br label %_ZL15remove_one_fastPiS_S_i.exit

if.end12.i:                                       ; preds = %for.body.i
  %spec.select.i.lcssa = phi i32 [ %spec.select.i, %for.body.i ]
  %spec.select60.i.lcssa = phi i32 [ %spec.select60.i, %for.body.i ]
  %cmp13.i = icmp sgt i32 %spec.select.i.lcssa, -1000000
  br i1 %cmp13.i, label %if.then14.i, label %_ZL15remove_one_fastPiS_S_i.exit

if.then14.i:                                      ; preds = %if.end12.i
  %125 = sext i32 %spec.select60.i.lcssa to i64
  %arrayidx16.i = getelementptr inbounds i32, ptr %move_ordering, i64 %indvars.iv.next1710
  %126 = load i32, ptr %arrayidx16.i, align 4, !tbaa !11
  %arrayidx18.i = getelementptr inbounds i32, ptr %move_ordering, i64 %125
  store i32 %126, ptr %arrayidx18.i, align 4, !tbaa !11
  store i32 %spec.select.i.lcssa, ptr %arrayidx16.i, align 4, !tbaa !11
  %arrayidx22.i = getelementptr inbounds i32, ptr %moves, i64 %indvars.iv.next1710
  %127 = load i32, ptr %arrayidx22.i, align 4, !tbaa !11
  %arrayidx24.i = getelementptr inbounds i32, ptr %moves, i64 %125
  %128 = load i32, ptr %arrayidx24.i, align 4, !tbaa !11
  store i32 %128, ptr %arrayidx22.i, align 4, !tbaa !11
  store i32 %127, ptr %arrayidx24.i, align 4, !tbaa !11
  br label %_ZL15remove_one_fastPiS_S_i.exit

_ZL15remove_one_fastPiS_S_i.exit:                 ; preds = %if.then14.i, %if.end12.i, %if.else.i, %for.cond.preheader.i
  %retval.0.i = phi i1 [ true, %if.then14.i ], [ false, %if.end12.i ], [ %cmp165.i, %if.else.i ], [ false, %for.cond.preheader.i ]
  %129 = load i32, ptr %singular, align 4
  %cmp426 = icmp slt i32 %129, 2
  %or.cond1073 = select i1 %retval.0.i, i1 %cmp426, i1 false
  %cmp428 = icmp slt i32 %s_c.2, 3
  %or.cond1089 = select i1 %or.cond1073, i1 %cmp428, i1 false
  br i1 %or.cond1089, label %while.body430, label %if.end505.loopexit.loopexit, !llvm.loop !23

if.end505.loopexit.loopexit:                      ; preds = %_ZL15remove_one_fastPiS_S_i.exit
  %score.11.lcssa = phi i32 [ %score.11, %_ZL15remove_one_fastPiS_S_i.exit ]
  %inc.i.lcssa.wide = phi i64 [ %indvars.iv.next1710, %_ZL15remove_one_fastPiS_S_i.exit ]
  %130 = trunc nsw i64 %inc.i.lcssa.wide to i32
  br label %if.end505.loopexit

if.end505.loopexit:                               ; preds = %if.end505.loopexit.loopexit, %if.then419
  %inc.i1659.lcssa = phi i32 [ %i.promoted, %if.then419 ], [ %130, %if.end505.loopexit.loopexit ]
  %score.9.lcssa = phi i32 [ %score.8, %if.then419 ], [ %score.11.lcssa, %if.end505.loopexit.loopexit ]
  store i32 %inc.i1659.lcssa, ptr %i, align 1
  br label %if.end505

if.end505:                                        ; preds = %if.end505.loopexit, %if.then415, %if.end403
  %score.13 = phi i32 [ %score.8, %if.end403 ], [ %score.8, %if.then415 ], [ %score.9.lcssa, %if.end505.loopexit ]
  br i1 %cmp46, label %land.end512, label %land.rhs508

land.rhs508:                                      ; preds = %if.end505
  %131 = load i32, ptr %ply, align 8, !tbaa !0
  %132 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 20), align 4, !tbaa !24
  %mul = shl nsw i32 %132, 1
  %cmp510 = icmp sle i32 %131, %mul
  br label %land.end512

land.end512:                                      ; preds = %land.rhs508, %if.end505
  %133 = phi i1 [ false, %if.end505 ], [ %cmp510, %land.rhs508 ]
  store i32 -1, ptr %i, align 4, !tbaa !11
  %call516 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef %i, ptr noundef %move_ordering, ptr noundef %moves, i32 noundef %num_moves.01615)
  %tobool518.not16701676 = icmp eq i32 %call516, 0
  br i1 %tobool518.not16701676, label %while.end996, label %while.body519.lr.ph.lr.ph

while.body519.lr.ph.lr.ph:                        ; preds = %land.end512
  %cmp525 = icmp eq i32 %legalmoves.2, 1
  %or.cond1074 = select i1 %tobool44, i1 %cmp525, i1 false
  %spec.select1537 = select i1 %or.cond1074, i32 4, i32 0
  %sboard529 = getelementptr inbounds nuw i8, ptr %s, i64 4
  %add560 = or disjoint i32 %spec.select1537, 2
  %spec.select1546 = select i1 %133, i32 %add560, i32 %spec.select1537
  %white_to_move608 = getelementptr inbounds nuw i8, ptr %s, i64 460
  %. = select i1 %133, i32 3, i32 1
  %add675 = add nsw i32 %add89, %add78
  %cmp676 = icmp eq i32 %add675, 1
  %div1529 = lshr i32 %depth, 2
  %add688 = add nuw nsw i32 %div1529, 1
  %sboard.i = getelementptr inbounds nuw i8, ptr %s, i64 4
  %cmp698 = icmp slt i32 %depth, 25
  %cmp715 = icmp slt i32 %depth, 9
  %cmp726 = icmp samesign ult i32 %depth, 13
  %add728 = add nsw i32 %call43, 100
  %add732 = add nsw i32 %call43, 300
  %add717 = add nsw i32 %call43, 75
  %add721 = add nsw i32 %call43, 200
  %white_to_move744 = getelementptr inbounds nuw i8, ptr %s, i64 460
  %sub823 = sub nsw i32 0, %beta.addr.0
  %hash836 = getelementptr inbounds nuw i8, ptr %s, i64 480
  %cmp850 = icmp sgt i32 %depth, 4
  %sboard.i1551 = getelementptr inbounds nuw i8, ptr %s, i64 4
  %sub877 = add nsw i32 %depth, -8
  %tobool890.not = icmp eq i32 %cutnode.addr.0, 0
  %conv892 = zext i1 %tobool890.not to i32
  br label %while.body519.lr.ph

while.body519.lr.ph:                              ; preds = %cleanup991, %while.body519.lr.ph.lr.ph
  %alpha.addr.1.ph1682 = phi i32 [ %alpha.addr.0, %while.body519.lr.ph.lr.ph ], [ %alpha.addr.4, %cleanup991 ]
  %score.14.ph1681 = phi i32 [ %score.13, %while.body519.lr.ph.lr.ph ], [ %score.18, %cleanup991 ]
  %no_moves.0.ph1680 = phi i32 [ 1, %while.body519.lr.ph.lr.ph ], [ %no_moves.2, %cleanup991 ]
  %best_score.0.ph1679 = phi i32 [ -32000, %while.body519.lr.ph.lr.ph ], [ %best_score.3, %cleanup991 ]
  %first.2.ph1678 = phi i32 [ 1, %while.body519.lr.ph.lr.ph ], [ %first.4, %cleanup991 ]
  %mn.0.ph1677 = phi i32 [ 1, %while.body519.lr.ph.lr.ph ], [ %mn.2, %cleanup991 ]
  %tobool637 = icmp ne i32 %first.2.ph1678, 0
  %cmp689 = icmp sgt i32 %mn.0.ph1677, %add688
  %add702 = add nsw i32 %alpha.addr.1.ph1682, 1
  %cmp703 = icmp eq i32 %beta.addr.0, %add702
  br label %while.body519.peel.begin

while.body519.peel.begin:                         ; preds = %while.body519.lr.ph
  br label %while.body519.peel

while.body519.peel:                               ; preds = %while.body519.peel.begin
  %134 = load i32, ptr %ply, align 8, !tbaa !0
  %cmp521.peel = icmp slt i32 %134, 60
  br i1 %cmp521.peel, label %if.then522.peel, label %if.end681.peel

if.then522.peel:                                  ; preds = %while.body519.peel
  %135 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom530.peel = sext i32 %135 to i64
  %arrayidx531.peel = getelementptr inbounds i32, ptr %moves, i64 %idxprom530.peel
  %136 = load i32, ptr %arrayidx531.peel, align 4, !tbaa !11
  %shr532.peel = lshr i32 %136, 6
  %and533.peel = and i32 %shr532.peel, 63
  %idxprom534.peel = zext nneg i32 %and533.peel to i64
  %arrayidx535.peel = getelementptr inbounds nuw i32, ptr %sboard529, i64 %idxprom534.peel
  %137 = load i32, ptr %arrayidx535.peel, align 4, !tbaa !11
  %add536.peel = add nsw i32 %137, 1
  %shr537.mask.peel = and i32 %add536.peel, -2
  %cmp538.peel = icmp eq i32 %shr537.mask.peel, 2
  br i1 %cmp538.peel, label %land.lhs.true539.peel, label %if.end564.peel

land.lhs.true539.peel:                            ; preds = %if.then522.peel
  %and542.peel = lshr i32 %136, 3
  %shr543.peel = and i32 %and542.peel, 7
  switch i32 %shr543.peel, label %lor.lhs.false551.peel [
    i32 1, label %if.then557.peel
    i32 6, label %if.then557.peel
  ]

lor.lhs.false551.peel:                            ; preds = %land.lhs.true539.peel
  %138 = and i32 %136, 61440
  %tobool556.not.peel = icmp eq i32 %138, 0
  br i1 %tobool556.not.peel, label %if.end564.peel, label %if.then557.peel

if.then557.peel:                                  ; preds = %lor.lhs.false551.peel, %land.lhs.true539.peel, %land.lhs.true539.peel
  br label %if.end564.peel

if.end564.peel:                                   ; preds = %if.then557.peel, %lor.lhs.false551.peel, %if.then522.peel
  %extend.1.peel = phi i32 [ %spec.select1537, %lor.lhs.false551.peel ], [ %spec.select1537, %if.then522.peel ], [ %spec.select1546, %if.then557.peel ]
  %shr567.peel = lshr i32 %136, 19
  %and568.peel = and i32 %shr567.peel, 15
  %cmp569.not.peel = icmp eq i32 %and568.peel, 13
  br i1 %cmp569.not.peel, label %if.end632.peel, label %land.lhs.true570.peel

land.lhs.true570.peel:                            ; preds = %if.end564.peel
  %139 = sext i32 %134 to i64
  %140 = getelementptr i32, ptr %s, i64 %139
  %arrayidx575.peel = getelementptr i8, ptr %140, i64 2540
  %141 = load i32, ptr %arrayidx575.peel, align 4, !tbaa !11
  %shr576.peel = lshr i32 %141, 19
  %and577.peel = and i32 %shr576.peel, 15
  %cmp578.not.peel = icmp eq i32 %and577.peel, 13
  br i1 %cmp578.not.peel, label %if.end632.peel, label %land.lhs.true579.peel

land.lhs.true579.peel:                            ; preds = %land.lhs.true570.peel
  %idxprom584.peel = zext nneg i32 %and568.peel to i64
  %arrayidx585.peel = getelementptr inbounds nuw i32, ptr @_ZL8rc_index, i64 %idxprom584.peel
  %142 = load i32, ptr %arrayidx585.peel, align 4, !tbaa !11
  %idxprom593.peel = zext nneg i32 %and577.peel to i64
  %arrayidx594.peel = getelementptr inbounds nuw i32, ptr @_ZL8rc_index, i64 %idxprom593.peel
  %143 = load i32, ptr %arrayidx594.peel, align 4, !tbaa !11
  %cmp595.peel = icmp eq i32 %142, %143
  br i1 %cmp595.peel, label %land.lhs.true596.peel, label %if.end632.peel

land.lhs.true596.peel:                            ; preds = %land.lhs.true579.peel
  %and599.peel = and i32 %136, 63
  %and605.peel = and i32 %141, 63
  %cmp606.peel = icmp eq i32 %and599.peel, %and605.peel
  br i1 %cmp606.peel, label %if.then607.peel, label %if.end632.peel

if.then607.peel:                                  ; preds = %land.lhs.true596.peel
  %144 = load i32, ptr %white_to_move608, align 4, !tbaa !10
  %tobool609.not.peel = icmp eq i32 %144, 0
  %cond610.peel = zext i1 %tobool609.not.peel to i32
  %shr620.peel = lshr i32 %136, 12
  %and621.peel = and i32 %shr620.peel, 15
  %call622.peel = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %s, i32 noundef %cond610.peel, i32 noundef %and533.peel, i32 noundef %and599.peel, i32 noundef %and621.peel)
  %cmp623.peel = icmp sgt i32 %call622.peel, 0
  br i1 %cmp623.peel, label %if.then624.peel, label %if.end632.peel

if.then624.peel:                                  ; preds = %if.then607.peel
  br i1 %133, label %if.then626.peel, label %if.else628.peel

if.else628.peel:                                  ; preds = %if.then624.peel
  %add629.peel = add nuw nsw i32 %extend.1.peel, 1
  br label %if.end632.peel

if.then626.peel:                                  ; preds = %if.then624.peel
  %add627.peel = add nuw nsw i32 %extend.1.peel, 3
  br label %if.end632.peel

if.end632.peel:                                   ; preds = %if.then626.peel, %if.else628.peel, %if.then607.peel, %land.lhs.true596.peel, %land.lhs.true579.peel, %land.lhs.true570.peel, %if.end564.peel
  %extend.3.peel = phi i32 [ %extend.1.peel, %land.lhs.true596.peel ], [ %extend.1.peel, %land.lhs.true579.peel ], [ %extend.1.peel, %land.lhs.true570.peel ], [ %extend.1.peel, %if.end564.peel ], [ %add627.peel, %if.then626.peel ], [ %add629.peel, %if.else628.peel ], [ %extend.1.peel, %if.then607.peel ]
  %145 = load i32, ptr %singular, align 4, !tbaa !11
  %cmp633.peel = icmp eq i32 %145, 1
  %tobool635.peel = icmp ne i32 %extend.3.peel, 0
  %or.cond1075.peel = select i1 %cmp633.peel, i1 %tobool635.peel, i1 false
  %or.cond1076.peel = select i1 %or.cond1075.peel, i1 %tobool637, i1 false
  br i1 %or.cond1076.peel, label %if.then638.peel, label %if.else639.peel

if.else639.peel:                                  ; preds = %if.end632.peel
  %tobool640.peel = icmp eq i32 %extend.3.peel, 0
  %or.cond1077.peel = and i1 %tobool640.peel, %cmp633.peel
  %or.cond1078.peel = select i1 %or.cond1077.peel, i1 %tobool637, i1 false
  br i1 %or.cond1078.peel, label %if.then645.peel, label %if.end653.peel

if.then645.peel:                                  ; preds = %if.else639.peel
  store i32 0, ptr %nosingular, align 4, !tbaa !11
  br label %if.end653.peel

if.then638.peel:                                  ; preds = %if.end632.peel
  store i32 1, ptr %nosingular, align 4, !tbaa !11
  br label %if.end653.peel

if.end653.peel:                                   ; preds = %if.then638.peel, %if.then645.peel, %if.else639.peel
  %extend.4.peel = phi i32 [ %extend.3.peel, %if.then638.peel ], [ %extend.3.peel, %if.else639.peel ], [ %., %if.then645.peel ]
  %146 = call i32 @llvm.umin.i32(i32 %extend.4.peel, i32 4)
  %147 = load i32, ptr %arrayidx531.peel, align 4, !tbaa !11
  %shr659.peel = lshr i32 %147, 19
  %and660.peel = and i32 %shr659.peel, 15
  switch i32 %and660.peel, label %if.then674.peel [
    i32 13, label %if.end681.peel
    i32 1, label %if.end681.peel
    i32 2, label %if.end681.peel
  ]

if.then674.peel:                                  ; preds = %if.end653.peel
  %add678.peel = add nuw nsw i32 %146, 4
  %spec.select1538.peel = select i1 %cmp676, i32 %add678.peel, i32 %146
  br label %if.end681.peel

if.end681.peel:                                   ; preds = %if.then674.peel, %if.end653.peel, %if.end653.peel, %if.end653.peel, %while.body519.peel
  %extend.5.peel = phi i32 [ %146, %if.end653.peel ], [ 0, %while.body519.peel ], [ %146, %if.end653.peel ], [ %146, %if.end653.peel ], [ %spec.select1538.peel, %if.then674.peel ]
  %148 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom682.peel = sext i32 %148 to i64
  %arrayidx683.peel = getelementptr inbounds i32, ptr %moves, i64 %idxprom682.peel
  %149 = load i32, ptr %arrayidx683.peel, align 4, !tbaa !11
  %150 = and i32 %149, 7864320
  %cmp686.peel = icmp eq i32 %150, 6815744
  br i1 %cmp686.peel, label %land.lhs.true687.peel, label %if.end714

land.lhs.true687.peel:                            ; preds = %if.end681.peel
  br i1 %cmp689, label %land.lhs.true690.peel, label %if.end714

land.lhs.true690.peel:                            ; preds = %land.lhs.true687.peel
  %shr.i.peel = lshr i32 %149, 6
  %and.i.peel = and i32 %shr.i.peel, 63
  %idxprom.i.peel = zext nneg i32 %and.i.peel to i64
  %arrayidx.i1549.peel = getelementptr inbounds nuw i32, ptr %sboard.i, i64 %idxprom.i.peel
  %151 = load i32, ptr %arrayidx.i1549.peel, align 4, !tbaa !11
  %sub.i.peel = add nsw i32 %151, -1
  %and1.i.peel = and i32 %149, 63
  %152 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom2.i.peel = sext i32 %152 to i64
  %arrayidx3.i.peel = getelementptr inbounds [12 x [64 x i32]], ptr @history_hit, i64 %idxprom2.i.peel
  %idxprom4.i.peel = sext i32 %sub.i.peel to i64
  %arrayidx5.i.peel = getelementptr inbounds [64 x i32], ptr %arrayidx3.i.peel, i64 %idxprom4.i.peel
  %idxprom6.i.peel = zext nneg i32 %and1.i.peel to i64
  %arrayidx7.i.peel = getelementptr inbounds nuw i32, ptr %arrayidx5.i.peel, i64 %idxprom6.i.peel
  %153 = load i32, ptr %arrayidx7.i.peel, align 4, !tbaa !11
  %arrayidx10.i.peel = getelementptr inbounds [12 x [64 x i32]], ptr @history_tot, i64 %idxprom2.i.peel
  %arrayidx12.i.peel = getelementptr inbounds [64 x i32], ptr %arrayidx10.i.peel, i64 %idxprom4.i.peel
  %arrayidx14.i.peel = getelementptr inbounds nuw i32, ptr %arrayidx12.i.peel, i64 %idxprom6.i.peel
  %154 = load i32, ptr %arrayidx14.i.peel, align 4, !tbaa !11
  %sub15.i.peel = sub nsw i32 %154, %153
  %mul.i.peel = mul nsw i32 %153, %add688
  %cmp.i1550.peel = icmp slt i32 %mul.i.peel, %sub15.i.peel
  %or.cond1079.not1530.not1633.peel = and i1 %cmp698, %cmp.i1550.peel
  %tobool700.peel = icmp eq i32 %extend.5.peel, 0
  %or.cond1080.not1632.peel = select i1 %or.cond1079.not1530.not1633.peel, i1 %tobool700.peel, i1 false
  %or.cond1539.peel = select i1 %or.cond1080.not1632.peel, i1 %cmp703, i1 false
  %155 = and i32 %149, 61440
  %tobool709.not.peel = icmp eq i32 %155, 0
  %or.cond1630.peel = and i1 %tobool709.not.peel, %or.cond1539.peel
  br i1 %or.cond1630.peel, label %if.then710.peel, label %if.end714

if.then710.peel:                                  ; preds = %land.lhs.true690.peel
  %call713.peel = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef %i, ptr noundef %move_ordering, ptr noundef %moves, i32 noundef %num_moves.01615)
  %tobool518.not.peel = icmp eq i32 %call713.peel, 0
  br i1 %tobool518.not.peel, label %while.end996.loopexit.loopexit1713, label %while.body519.peel.next

while.body519.peel.next:                          ; preds = %if.then710.peel
  br label %while.body519.peel.next1712

while.body519.peel.next1712:                      ; preds = %while.body519.peel.next
  br label %while.body519.lr.ph.peel.newph

while.body519.lr.ph.peel.newph:                   ; preds = %while.body519.peel.next1712
  br label %while.body519

while.body519:                                    ; preds = %if.then710, %while.body519.lr.ph.peel.newph
  %156 = load i32, ptr %ply, align 8, !tbaa !0
  %cmp521 = icmp slt i32 %156, 60
  br i1 %cmp521, label %if.then522, label %if.end681

if.then522:                                       ; preds = %while.body519
  %157 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom530 = sext i32 %157 to i64
  %arrayidx531 = getelementptr inbounds i32, ptr %moves, i64 %idxprom530
  %158 = load i32, ptr %arrayidx531, align 4, !tbaa !11
  %shr532 = lshr i32 %158, 6
  %and533 = and i32 %shr532, 63
  %idxprom534 = zext nneg i32 %and533 to i64
  %arrayidx535 = getelementptr inbounds nuw i32, ptr %sboard529, i64 %idxprom534
  %159 = load i32, ptr %arrayidx535, align 4, !tbaa !11
  %add536 = add nsw i32 %159, 1
  %shr537.mask = and i32 %add536, -2
  %cmp538 = icmp eq i32 %shr537.mask, 2
  br i1 %cmp538, label %land.lhs.true539, label %if.end564

land.lhs.true539:                                 ; preds = %if.then522
  %and542 = lshr i32 %158, 3
  %shr543 = and i32 %and542, 7
  switch i32 %shr543, label %lor.lhs.false551 [
    i32 1, label %if.then557
    i32 6, label %if.then557
  ]

lor.lhs.false551:                                 ; preds = %land.lhs.true539
  %160 = and i32 %158, 61440
  %tobool556.not = icmp eq i32 %160, 0
  br i1 %tobool556.not, label %if.end564, label %if.then557

if.then557:                                       ; preds = %lor.lhs.false551, %land.lhs.true539, %land.lhs.true539
  br label %if.end564

if.end564:                                        ; preds = %if.then557, %lor.lhs.false551, %if.then522
  %extend.1 = phi i32 [ %spec.select1537, %lor.lhs.false551 ], [ %spec.select1537, %if.then522 ], [ %spec.select1546, %if.then557 ]
  %shr567 = lshr i32 %158, 19
  %and568 = and i32 %shr567, 15
  %cmp569.not = icmp eq i32 %and568, 13
  br i1 %cmp569.not, label %if.end632, label %land.lhs.true570

land.lhs.true570:                                 ; preds = %if.end564
  %161 = sext i32 %156 to i64
  %162 = getelementptr i32, ptr %s, i64 %161
  %arrayidx575 = getelementptr i8, ptr %162, i64 2540
  %163 = load i32, ptr %arrayidx575, align 4, !tbaa !11
  %shr576 = lshr i32 %163, 19
  %and577 = and i32 %shr576, 15
  %cmp578.not = icmp eq i32 %and577, 13
  br i1 %cmp578.not, label %if.end632, label %land.lhs.true579

land.lhs.true579:                                 ; preds = %land.lhs.true570
  %idxprom584 = zext nneg i32 %and568 to i64
  %arrayidx585 = getelementptr inbounds nuw i32, ptr @_ZL8rc_index, i64 %idxprom584
  %164 = load i32, ptr %arrayidx585, align 4, !tbaa !11
  %idxprom593 = zext nneg i32 %and577 to i64
  %arrayidx594 = getelementptr inbounds nuw i32, ptr @_ZL8rc_index, i64 %idxprom593
  %165 = load i32, ptr %arrayidx594, align 4, !tbaa !11
  %cmp595 = icmp eq i32 %164, %165
  br i1 %cmp595, label %land.lhs.true596, label %if.end632

land.lhs.true596:                                 ; preds = %land.lhs.true579
  %and599 = and i32 %158, 63
  %and605 = and i32 %163, 63
  %cmp606 = icmp eq i32 %and599, %and605
  br i1 %cmp606, label %if.then607, label %if.end632

if.then607:                                       ; preds = %land.lhs.true596
  %166 = load i32, ptr %white_to_move608, align 4, !tbaa !10
  %tobool609.not = icmp eq i32 %166, 0
  %cond610 = zext i1 %tobool609.not to i32
  %shr620 = lshr i32 %158, 12
  %and621 = and i32 %shr620, 15
  %call622 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %s, i32 noundef %cond610, i32 noundef %and533, i32 noundef %and599, i32 noundef %and621)
  %cmp623 = icmp sgt i32 %call622, 0
  br i1 %cmp623, label %if.then624, label %if.end632

if.then624:                                       ; preds = %if.then607
  br i1 %133, label %if.then626, label %if.else628

if.then626:                                       ; preds = %if.then624
  %add627 = add nuw nsw i32 %extend.1, 3
  br label %if.end632

if.else628:                                       ; preds = %if.then624
  %add629 = add nuw nsw i32 %extend.1, 1
  br label %if.end632

if.end632:                                        ; preds = %if.else628, %if.then626, %if.then607, %land.lhs.true596, %land.lhs.true579, %land.lhs.true570, %if.end564
  %extend.3 = phi i32 [ %extend.1, %land.lhs.true596 ], [ %extend.1, %land.lhs.true579 ], [ %extend.1, %land.lhs.true570 ], [ %extend.1, %if.end564 ], [ %add627, %if.then626 ], [ %add629, %if.else628 ], [ %extend.1, %if.then607 ]
  %167 = load i32, ptr %singular, align 4, !tbaa !11
  %cmp633 = icmp eq i32 %167, 1
  %tobool635 = icmp ne i32 %extend.3, 0
  %or.cond1075 = select i1 %cmp633, i1 %tobool635, i1 false
  %or.cond1076 = select i1 %or.cond1075, i1 %tobool637, i1 false
  br i1 %or.cond1076, label %if.then638, label %if.else639

if.then638:                                       ; preds = %if.end632
  store i32 1, ptr %nosingular, align 4, !tbaa !11
  br label %if.end653

if.else639:                                       ; preds = %if.end632
  %tobool640 = icmp eq i32 %extend.3, 0
  %or.cond1077 = and i1 %tobool640, %cmp633
  %or.cond1078 = select i1 %or.cond1077, i1 %tobool637, i1 false
  br i1 %or.cond1078, label %if.then645, label %if.end653

if.then645:                                       ; preds = %if.else639
  store i32 0, ptr %nosingular, align 4, !tbaa !11
  br label %if.end653

if.end653:                                        ; preds = %if.then645, %if.else639, %if.then638
  %extend.4 = phi i32 [ %extend.3, %if.then638 ], [ %extend.3, %if.else639 ], [ %., %if.then645 ]
  %168 = call i32 @llvm.umin.i32(i32 %extend.4, i32 4)
  %169 = load i32, ptr %arrayidx531, align 4, !tbaa !11
  %shr659 = lshr i32 %169, 19
  %and660 = and i32 %shr659, 15
  switch i32 %and660, label %if.then674 [
    i32 13, label %if.end681
    i32 1, label %if.end681
    i32 2, label %if.end681
  ]

if.then674:                                       ; preds = %if.end653
  %add678 = add nuw nsw i32 %168, 4
  %spec.select1538 = select i1 %cmp676, i32 %add678, i32 %168
  br label %if.end681

if.end681:                                        ; preds = %if.then674, %if.end653, %if.end653, %if.end653, %while.body519
  %extend.5 = phi i32 [ %168, %if.end653 ], [ 0, %while.body519 ], [ %168, %if.end653 ], [ %168, %if.end653 ], [ %spec.select1538, %if.then674 ]
  %170 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom682 = sext i32 %170 to i64
  %arrayidx683 = getelementptr inbounds i32, ptr %moves, i64 %idxprom682
  %171 = load i32, ptr %arrayidx683, align 4, !tbaa !11
  %172 = and i32 %171, 7864320
  %cmp686 = icmp eq i32 %172, 6815744
  br i1 %cmp686, label %land.lhs.true687, label %if.end714.loopexit

land.lhs.true687:                                 ; preds = %if.end681
  br i1 %cmp689, label %land.lhs.true690, label %if.end714.loopexit

land.lhs.true690:                                 ; preds = %land.lhs.true687
  %shr.i = lshr i32 %171, 6
  %and.i = and i32 %shr.i, 63
  %idxprom.i = zext nneg i32 %and.i to i64
  %arrayidx.i1549 = getelementptr inbounds nuw i32, ptr %sboard.i, i64 %idxprom.i
  %173 = load i32, ptr %arrayidx.i1549, align 4, !tbaa !11
  %sub.i = add nsw i32 %173, -1
  %and1.i = and i32 %171, 63
  %174 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom2.i = sext i32 %174 to i64
  %arrayidx3.i = getelementptr inbounds [12 x [64 x i32]], ptr @history_hit, i64 %idxprom2.i
  %idxprom4.i = sext i32 %sub.i to i64
  %arrayidx5.i = getelementptr inbounds [64 x i32], ptr %arrayidx3.i, i64 %idxprom4.i
  %idxprom6.i = zext nneg i32 %and1.i to i64
  %arrayidx7.i = getelementptr inbounds nuw i32, ptr %arrayidx5.i, i64 %idxprom6.i
  %175 = load i32, ptr %arrayidx7.i, align 4, !tbaa !11
  %arrayidx10.i = getelementptr inbounds [12 x [64 x i32]], ptr @history_tot, i64 %idxprom2.i
  %arrayidx12.i = getelementptr inbounds [64 x i32], ptr %arrayidx10.i, i64 %idxprom4.i
  %arrayidx14.i = getelementptr inbounds nuw i32, ptr %arrayidx12.i, i64 %idxprom6.i
  %176 = load i32, ptr %arrayidx14.i, align 4, !tbaa !11
  %sub15.i = sub nsw i32 %176, %175
  %mul.i = mul nsw i32 %175, %add688
  %cmp.i1550 = icmp slt i32 %mul.i, %sub15.i
  %or.cond1079.not1530.not1633 = and i1 %cmp698, %cmp.i1550
  %tobool700 = icmp eq i32 %extend.5, 0
  %or.cond1080.not1632 = select i1 %or.cond1079.not1530.not1633, i1 %tobool700, i1 false
  %or.cond1539 = select i1 %or.cond1080.not1632, i1 %cmp703, i1 false
  %177 = and i32 %171, 61440
  %tobool709.not = icmp eq i32 %177, 0
  %or.cond1630 = and i1 %tobool709.not, %or.cond1539
  br i1 %or.cond1630, label %if.then710, label %if.end714.loopexit

if.then710:                                       ; preds = %land.lhs.true690
  %call713 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef %i, ptr noundef %move_ordering, ptr noundef %moves, i32 noundef %num_moves.01615)
  %tobool518.not = icmp eq i32 %call713, 0
  br i1 %tobool518.not, label %while.end996.loopexit.loopexit, label %while.body519, !llvm.loop !26

if.end714.loopexit:                               ; preds = %land.lhs.true690, %land.lhs.true687, %if.end681
  %extend.5.lcssa.ph = phi i32 [ %extend.5, %if.end681 ], [ %extend.5, %land.lhs.true687 ], [ %extend.5, %land.lhs.true690 ]
  %.lcssa1692.ph = phi i32 [ %170, %if.end681 ], [ %170, %land.lhs.true687 ], [ %170, %land.lhs.true690 ]
  %idxprom682.lcssa.ph = phi i64 [ %idxprom682, %if.end681 ], [ %idxprom682, %land.lhs.true687 ], [ %idxprom682, %land.lhs.true690 ]
  %.lcssa.ph = phi i32 [ %171, %if.end681 ], [ %171, %land.lhs.true687 ], [ %171, %land.lhs.true690 ]
  %cmp686.lcssa.ph = phi i1 [ %cmp686, %if.end681 ], [ %cmp686, %land.lhs.true687 ], [ %cmp686, %land.lhs.true690 ]
  %no_moves.01671.lcssa.ph = phi i32 [ 0, %if.end681 ], [ %no_moves.0.ph1680, %land.lhs.true687 ], [ 0, %land.lhs.true690 ]
  br label %if.end714

if.end714:                                        ; preds = %if.end714.loopexit, %land.lhs.true690.peel, %land.lhs.true687.peel, %if.end681.peel
  %extend.5.lcssa = phi i32 [ %extend.5.peel, %if.end681.peel ], [ %extend.5.peel, %land.lhs.true687.peel ], [ %extend.5.peel, %land.lhs.true690.peel ], [ %extend.5.lcssa.ph, %if.end714.loopexit ]
  %.lcssa1692 = phi i32 [ %148, %if.end681.peel ], [ %148, %land.lhs.true687.peel ], [ %148, %land.lhs.true690.peel ], [ %.lcssa1692.ph, %if.end714.loopexit ]
  %idxprom682.lcssa = phi i64 [ %idxprom682.peel, %if.end681.peel ], [ %idxprom682.peel, %land.lhs.true687.peel ], [ %idxprom682.peel, %land.lhs.true690.peel ], [ %idxprom682.lcssa.ph, %if.end714.loopexit ]
  %.lcssa = phi i32 [ %149, %if.end681.peel ], [ %149, %land.lhs.true687.peel ], [ %149, %land.lhs.true690.peel ], [ %.lcssa.ph, %if.end714.loopexit ]
  %cmp686.lcssa = phi i1 [ %cmp686.peel, %if.end681.peel ], [ %cmp686.peel, %land.lhs.true687.peel ], [ %cmp686.peel, %land.lhs.true690.peel ], [ %cmp686.lcssa.ph, %if.end714.loopexit ]
  %no_moves.01671.lcssa = phi i32 [ %no_moves.0.ph1680, %if.end681.peel ], [ %no_moves.0.ph1680, %land.lhs.true687.peel ], [ %no_moves.0.ph1680, %land.lhs.true690.peel ], [ %no_moves.01671.lcssa.ph, %if.end714.loopexit ]
  %arrayidx683.le = getelementptr inbounds i32, ptr %moves, i64 %idxprom682.lcssa
  br i1 %cmp715, label %if.then716, label %if.else725

if.then716:                                       ; preds = %if.end714
  %cmp718 = icmp slt i32 %add717, %alpha.addr.1.ph1682
  %cmp722 = icmp slt i32 %add721, %alpha.addr.1.ph1682
  br label %if.end737

if.else725:                                       ; preds = %if.end714
  br i1 %cmp726, label %if.then727, label %if.end737

if.then727:                                       ; preds = %if.else725
  %cmp729 = icmp slt i32 %add728, %alpha.addr.1.ph1682
  %cmp733 = icmp slt i32 %add732, %alpha.addr.1.ph1682
  br label %if.end737

if.end737:                                        ; preds = %if.then727, %if.else725, %if.then716
  %afutprun.2.shrunk = phi i1 [ false, %if.else725 ], [ %cmp718, %if.then716 ], [ %cmp729, %if.then727 ]
  %tobool785 = phi i1 [ false, %if.else725 ], [ %cmp722, %if.then716 ], [ %cmp733, %if.then727 ]
  br i1 %cmp686.lcssa, label %if.end760, label %if.then743

if.then743:                                       ; preds = %if.end737
  %178 = load i32, ptr %white_to_move744, align 4, !tbaa !10
  %tobool745.not = icmp eq i32 %178, 0
  %cond746 = zext i1 %tobool745.not to i32
  %shr749 = lshr i32 %.lcssa, 6
  %and750 = and i32 %shr749, 63
  %and753 = and i32 %.lcssa, 63
  %shr756 = lshr i32 %.lcssa, 12
  %and757 = and i32 %shr756, 15
  %call758 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %s, i32 noundef %cond746, i32 noundef %and750, i32 noundef %and753, i32 noundef %and757)
  br label %if.end760

if.end760:                                        ; preds = %if.then743, %if.end737
  %capval.0 = phi i32 [ %call758, %if.then743 ], [ -1000000, %if.end737 ]
  %179 = load i32, ptr %arrayidx683.le, align 4, !tbaa !11
  call void @_Z4makeP7state_ti(ptr noundef nonnull %s, i32 noundef %179)
  %180 = load i32, ptr %arrayidx683.le, align 4, !tbaa !11
  %call765 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef nonnull %s, i32 noundef %180)
  %tobool766.not = icmp eq i32 %call765, 0
  br i1 %tobool766.not, label %if.end948, label %if.then767

if.then767:                                       ; preds = %if.end760
  %call768 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef nonnull %s)
  %tobool769 = icmp ne i32 %call768, 0
  br i1 %tobool769, label %if.then770, label %if.end777

if.then770:                                       ; preds = %if.then767
  br i1 %133, label %if.then772, label %if.else774

if.then772:                                       ; preds = %if.then770
  %add773 = add nuw nsw i32 %extend.5.lcssa, 4
  br label %if.end777

if.else774:                                       ; preds = %if.then770
  %add775 = add nuw nsw i32 %extend.5.lcssa, 2
  br label %if.end777

if.end777:                                        ; preds = %if.else774, %if.then772, %if.then767
  %extend.6 = phi i32 [ %add773, %if.then772 ], [ %add775, %if.else774 ], [ %extend.5.lcssa, %if.then767 ]
  %181 = or i32 %call768, %12
  %or.cond1081.not = icmp eq i32 %181, 0
  %add782 = add nsw i32 %alpha.addr.1.ph1682, 1
  %cmp783 = icmp eq i32 %beta.addr.0, %add782
  %or.cond1542 = select i1 %or.cond1081.not, i1 %cmp783, i1 false
  br i1 %or.cond1542, label %if.then784, label %if.end819

if.then784:                                       ; preds = %if.end777
  %cmp787 = icmp slt i32 %capval.0, 86
  %or.cond1090 = and i1 %tobool785, %cmp787
  br i1 %or.cond1090, label %land.lhs.true788, label %if.end801

land.lhs.true788:                                 ; preds = %if.then784
  %182 = load i32, ptr %arrayidx683.le, align 4, !tbaa !11
  %183 = and i32 %182, 61440
  %tobool793.not = icmp eq i32 %183, 0
  br i1 %tobool793.not, label %if.then794, label %if.end801

if.then794:                                       ; preds = %land.lhs.true788
  call void @_Z6unmakeP7state_ti(ptr noundef nonnull %s, i32 noundef %182)
  %call799 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef %i, ptr noundef %move_ordering, ptr noundef %moves, i32 noundef %num_moves.01615)
  br label %cleanup991, !llvm.loop !28

if.end801:                                        ; preds = %land.lhs.true788, %if.then784
  %cmp804 = icmp slt i32 %capval.0, -50
  %or.cond1091 = and i1 %afutprun.2.shrunk, %cmp804
  br i1 %or.cond1091, label %land.lhs.true805, label %if.end819

land.lhs.true805:                                 ; preds = %if.end801
  %184 = load i32, ptr %arrayidx683.le, align 4, !tbaa !11
  %185 = and i32 %184, 61440
  %tobool810.not = icmp eq i32 %185, 0
  br i1 %tobool810.not, label %if.then811, label %if.end819

if.then811:                                       ; preds = %land.lhs.true805
  call void @_Z6unmakeP7state_ti(ptr noundef nonnull %s, i32 noundef %184)
  %call816 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef %i, ptr noundef %move_ordering, ptr noundef %moves, i32 noundef %num_moves.01615)
  br label %cleanup991, !llvm.loop !28

if.end819:                                        ; preds = %land.lhs.true805, %if.end801, %if.end777
  %add821 = add nsw i32 %extend.6, %depth
  %sub822 = add nsw i32 %add821, -4
  %sub824 = sub nsw i32 0, %alpha.addr.1.ph1682
  %add825 = sub i32 130, %alpha.addr.1.ph1682
  %cmp826 = icmp sgt i32 %add821, 4
  %186 = or i1 %tobool769, %cmp826
  %conv830 = zext i1 %186 to i32
  %call831 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef nonnull %s, i32 noundef %sub823, i32 noundef %add825, i32 noundef %conv830)
  %187 = load i32, ptr %ply, align 8, !tbaa !0
  %idxprom834 = sext i32 %187 to i64
  %arrayidx835 = getelementptr inbounds i32, ptr %checks, i64 %idxprom834
  store i32 %call768, ptr %arrayidx835, align 4, !tbaa !11
  %188 = load i64, ptr %hash836, align 8, !tbaa !18
  %189 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 60), align 4, !tbaa !19
  %190 = load i32, ptr %ply, align 8, !tbaa !0
  %add839 = add nsw i32 %190, %189
  %191 = sext i32 %add839 to i64
  %192 = getelementptr i64, ptr %s, i64 %191
  %arrayidx842 = getelementptr i8, ptr %192, i64 4392
  store i64 %188, ptr %arrayidx842, align 8, !tbaa !20
  %193 = load i32, ptr %arrayidx683.le, align 4, !tbaa !11
  %194 = sext i32 %190 to i64
  %195 = getelementptr i32, ptr %s, i64 %194
  %arrayidx849 = getelementptr i8, ptr %195, i64 2540
  store i32 %193, ptr %arrayidx849, align 4, !tbaa !11
  %cmp852 = icmp sgt i32 %mn.0.ph1677, 3
  %or.cond1082 = select i1 %cmp850, i1 %cmp852, i1 false
  br i1 %or.cond1082, label %land.lhs.true853, label %if.end878

land.lhs.true853:                                 ; preds = %if.end819
  %196 = or i32 %extend.6, %call768
  %197 = icmp eq i32 %196, 0
  %or.cond1084.not1531 = select i1 %cmp783, i1 %197, i1 false
  %cmp861 = icmp slt i32 %capval.0, -50
  %or.cond1085 = and i1 %cmp861, %or.cond1084.not1531
  br i1 %or.cond1085, label %land.lhs.true862, label %if.end878

land.lhs.true862:                                 ; preds = %land.lhs.true853
  %and.i1552 = and i32 %193, 63
  %idxprom.i1553 = zext nneg i32 %and.i1552 to i64
  %arrayidx.i1554 = getelementptr inbounds nuw i32, ptr %sboard.i1551, i64 %idxprom.i1553
  %198 = load i32, ptr %arrayidx.i1554, align 4, !tbaa !11
  %sub.i1555 = add nsw i32 %198, -1
  %199 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom2.i1556 = sext i32 %199 to i64
  %arrayidx3.i1557 = getelementptr inbounds [12 x [64 x i32]], ptr @history_hit, i64 %idxprom2.i1556
  %idxprom4.i1558 = sext i32 %sub.i1555 to i64
  %arrayidx5.i1559 = getelementptr inbounds [64 x i32], ptr %arrayidx3.i1557, i64 %idxprom4.i1558
  %arrayidx7.i1560 = getelementptr inbounds nuw i32, ptr %arrayidx5.i1559, i64 %idxprom.i1553
  %200 = load i32, ptr %arrayidx7.i1560, align 4, !tbaa !11
  %add.i = shl i32 %200, 7
  %mul.i1561 = add i32 %add.i, 128
  %arrayidx10.i1562 = getelementptr inbounds [12 x [64 x i32]], ptr @history_tot, i64 %idxprom2.i1556
  %arrayidx12.i1563 = getelementptr inbounds [64 x i32], ptr %arrayidx10.i1562, i64 %idxprom4.i1558
  %arrayidx14.i1564 = getelementptr inbounds nuw i32, ptr %arrayidx12.i1563, i64 %idxprom.i1553
  %201 = load i32, ptr %arrayidx14.i1564, align 4, !tbaa !11
  %add15.i = add nsw i32 %201, 1
  %div.i = sdiv i32 %mul.i1561, %add15.i
  %cmp866 = icmp slt i32 %div.i, 80
  %202 = and i32 %193, 61440
  %tobool872.not = icmp eq i32 %202, 0
  %or.cond1631 = select i1 %cmp866, i1 %tobool872.not, i1 false
  br i1 %or.cond1631, label %if.then873, label %if.end878

if.then873:                                       ; preds = %land.lhs.true862
  br label %if.end878

if.end878:                                        ; preds = %if.then873, %land.lhs.true862, %land.lhs.true853, %if.end819
  %tobool917 = phi i1 [ true, %if.then873 ], [ false, %land.lhs.true862 ], [ false, %land.lhs.true853 ], [ false, %if.end819 ]
  %huber.0 = phi i32 [ 4, %if.then873 ], [ 0, %land.lhs.true862 ], [ 0, %land.lhs.true853 ], [ 0, %if.end819 ]
  %extend.7 = phi i32 [ -4, %if.then873 ], [ %extend.6, %land.lhs.true862 ], [ %extend.6, %land.lhs.true853 ], [ %extend.6, %if.end819 ]
  %newdepth820.0 = phi i32 [ %sub877, %if.then873 ], [ %sub822, %land.lhs.true862 ], [ %sub822, %land.lhs.true853 ], [ %sub822, %if.end819 ]
  %cmp879 = icmp eq i32 %first.2.ph1678, 1
  br i1 %cmp879, label %if.then880, label %if.else896

if.then880:                                       ; preds = %if.end878
  %cmp881 = icmp slt i32 %newdepth820.0, 1
  br i1 %cmp881, label %if.then882, label %if.else887

if.then882:                                       ; preds = %if.then880
  %call885 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %s, i32 noundef %sub823, i32 noundef %sub824, i32 noundef 0, i32 noundef 0)
  %sub886 = sub nsw i32 0, %call885
  br label %if.end944

if.else887:                                       ; preds = %if.then880
  %call893 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %s, i32 noundef %sub823, i32 noundef %sub824, i32 noundef %newdepth820.0, i32 noundef 0, i32 noundef %conv892)
  %sub894 = sub nsw i32 0, %call893
  br label %if.end944

if.else896:                                       ; preds = %if.end878
  %cmp897 = icmp slt i32 %newdepth820.0, 1
  br i1 %cmp897, label %if.then898, label %if.else904

if.then898:                                       ; preds = %if.else896
  %sub900 = xor i32 %alpha.addr.1.ph1682, -1
  %call902 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %s, i32 noundef %sub900, i32 noundef %sub824, i32 noundef 0, i32 noundef 0)
  br label %if.end910

if.else904:                                       ; preds = %if.else896
  %sub906 = xor i32 %alpha.addr.1.ph1682, -1
  %call908 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %s, i32 noundef %sub906, i32 noundef %sub824, i32 noundef %newdepth820.0, i32 noundef 0, i32 noundef 1)
  br label %if.end910

if.end910:                                        ; preds = %if.else904, %if.then898
  %call902.pn = phi i32 [ %call902, %if.then898 ], [ %call908, %if.else904 ]
  %score.15 = sub nsw i32 0, %call902.pn
  %cmp911 = icmp slt i32 %best_score.0.ph1679, %score.15
  %203 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 36096), align 8
  %tobool913 = icmp eq i32 %203, 0
  %or.cond1086.not1634 = select i1 %cmp911, i1 %tobool913, i1 false
  %cmp915 = icmp slt i32 %alpha.addr.1.ph1682, %score.15
  %or.cond1543 = select i1 %or.cond1086.not1634, i1 %cmp915, i1 false
  %cmp921 = icmp sgt i32 %beta.addr.0, %score.15
  %or.cond1087 = or i1 %tobool917, %cmp921
  %or.cond1635 = and i1 %or.cond1087, %or.cond1543
  br i1 %or.cond1635, label %if.then924, label %if.end944

if.then924:                                       ; preds = %if.end910
  %add919 = select i1 %tobool917, i32 %huber.0, i32 0
  %spec.select1544 = add nuw i32 %add919, %depth
  %add925 = add i32 %spec.select1544, %extend.7
  %cmp927 = icmp slt i32 %add925, 5
  br i1 %cmp927, label %if.then928, label %if.else933

if.then928:                                       ; preds = %if.then924
  %call931 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %s, i32 noundef %sub823, i32 noundef %sub824, i32 noundef 0, i32 noundef 0)
  %sub932 = sub nsw i32 0, %call931
  br label %if.end944

if.else933:                                       ; preds = %if.then924
  %sub926 = add nsw i32 %add925, -4
  %cond937 = zext i1 %tobool917 to i32
  %call938 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %s, i32 noundef %sub823, i32 noundef %sub824, i32 noundef %sub926, i32 noundef 0, i32 noundef %cond937)
  %sub939 = sub nsw i32 0, %call938
  br label %if.end944

if.end944:                                        ; preds = %if.else933, %if.then928, %if.end910, %if.else887, %if.then882
  %score.16 = phi i32 [ %sub886, %if.then882 ], [ %sub894, %if.else887 ], [ %score.15, %if.end910 ], [ %sub932, %if.then928 ], [ %sub939, %if.else933 ]
  %spec.select1545 = call i32 @llvm.smax.i32(i32 %score.16, i32 %best_score.0.ph1679)
  br label %if.end948

if.end948:                                        ; preds = %if.end944, %if.end760
  %best_score.2 = phi i32 [ %spec.select1545, %if.end944 ], [ %best_score.0.ph1679, %if.end760 ]
  %no_moves.1 = phi i32 [ 0, %if.end944 ], [ %no_moves.01671.lcssa, %if.end760 ]
  %score.17 = phi i32 [ %score.16, %if.end944 ], [ %score.14.ph1681, %if.end760 ]
  %204 = load i32, ptr %arrayidx683.le, align 4, !tbaa !11
  call void @_Z6unmakeP7state_ti(ptr noundef nonnull %s, i32 noundef %204)
  %205 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 36096), align 8, !tbaa !13
  %tobool951.not = icmp eq i32 %205, 0
  br i1 %tobool951.not, label %if.end953, label %cleanup1024.loopexit

if.end953:                                        ; preds = %if.end948
  br i1 %tobool766.not, label %if.end987, label %if.then955

if.then955:                                       ; preds = %if.end953
  %cmp956 = icmp sgt i32 %score.17, %alpha.addr.1.ph1682
  br i1 %cmp956, label %if.then957, label %if.end980

if.then957:                                       ; preds = %if.then955
  %cmp958.not = icmp slt i32 %score.17, %beta.addr.0
  br i1 %cmp958.not, label %if.end975, label %if.then959

if.then959:                                       ; preds = %if.then957
  %mn.0.ph1677.lcssa1698 = phi i32 [ %mn.0.ph1677, %if.then957 ]
  %arrayidx683.le.lcssa1696 = phi ptr [ %arrayidx683.le, %if.then957 ]
  %score.17.lcssa1695 = phi i32 [ %score.17, %if.then957 ]
  %206 = load i32, ptr %arrayidx683.le.lcssa1696, align 4, !tbaa !11
  call fastcc void @_ZL12history_goodP7state_tii(ptr noundef nonnull %s, i32 noundef %206, i32 noundef %depth)
  %sub963 = add i32 %mn.0.ph1677.lcssa1698, -1
  %cmp9641685 = icmp sgt i32 %mn.0.ph1677.lcssa1698, 1
  br i1 %cmp9641685, label %for.body965.lr.ph, label %for.end970

for.body965.lr.ph:                                ; preds = %if.then959
  %sboard.i1565 = getelementptr inbounds nuw i8, ptr %s, i64 4
  %add.i1569 = add nuw nsw i32 %depth, 3
  %div83.i = lshr i32 %add.i1569, 2
  %wide.trip.count1718 = zext i32 %sub963 to i64
  br label %for.body965

for.body965:                                      ; preds = %_ZL11history_badP7state_tii.exit, %for.body965.lr.ph
  %indvars.iv1715 = phi i64 [ 0, %for.body965.lr.ph ], [ %indvars.iv.next1716, %_ZL11history_badP7state_tii.exit ]
  %arrayidx967 = getelementptr inbounds nuw i32, ptr %searched_moves, i64 %indvars.iv1715
  %207 = load i32, ptr %arrayidx967, align 4, !tbaa !11
  %208 = and i32 %207, 7925760
  %or.cond.i = icmp eq i32 %208, 6815744
  br i1 %or.cond.i, label %if.then.i, label %_ZL11history_badP7state_tii.exit

if.then.i:                                        ; preds = %for.body965
  %shr3.i = lshr i32 %207, 6
  %and4.i = and i32 %shr3.i, 63
  %idxprom.i1566 = zext nneg i32 %and4.i to i64
  %arrayidx.i1567 = getelementptr inbounds nuw i32, ptr %sboard.i1565, i64 %idxprom.i1566
  %209 = load i32, ptr %arrayidx.i1567, align 4, !tbaa !11
  %sub.i1568 = add nsw i32 %209, -1
  %and5.i = and i32 %207, 63
  %210 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom6.i1570 = sext i32 %210 to i64
  %arrayidx7.i1571 = getelementptr inbounds [12 x [64 x i32]], ptr @history_tot, i64 %idxprom6.i1570
  %idxprom8.i = sext i32 %sub.i1568 to i64
  %arrayidx9.i = getelementptr inbounds [64 x i32], ptr %arrayidx7.i1571, i64 %idxprom8.i
  %idxprom10.i = zext nneg i32 %and5.i to i64
  %arrayidx11.i = getelementptr inbounds nuw i32, ptr %arrayidx9.i, i64 %idxprom10.i
  %211 = load i32, ptr %arrayidx11.i, align 4, !tbaa !11
  %add12.i = add nsw i32 %211, %div83.i
  store i32 %add12.i, ptr %arrayidx11.i, align 4, !tbaa !11
  %212 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom14.i = sext i32 %212 to i64
  %arrayidx15.i = getelementptr inbounds [12 x [64 x i32]], ptr @history_tot, i64 %idxprom14.i
  %arrayidx17.i = getelementptr inbounds [64 x i32], ptr %arrayidx15.i, i64 %idxprom8.i
  %arrayidx19.i = getelementptr inbounds nuw i32, ptr %arrayidx17.i, i64 %idxprom10.i
  %213 = load i32, ptr %arrayidx19.i, align 4, !tbaa !11
  %cmp20.i = icmp sgt i32 %213, 16384
  br i1 %cmp20.i, label %for.body25.i.preheader, label %_ZL11history_badP7state_tii.exit

for.body25.i.preheader:                           ; preds = %if.then.i
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i, %for.body25.i.preheader
  %indvars.iv.i1572 = phi i64 [ %indvars.iv.next.i1573, %for.body25.i ], [ 0, %for.body25.i.preheader ]
  %214 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom27.i = sext i32 %214 to i64
  %gep.i = getelementptr [12 x [64 x i32]], ptr @history_hit, i64 %idxprom27.i
  %arrayidx32.i = getelementptr inbounds nuw i32, ptr %gep.i, i64 %indvars.iv.i1572
  %215 = load i32, ptr %arrayidx32.i, align 4, !tbaa !11
  %add33.i = add nsw i32 %215, 1
  %shr34.i = ashr i32 %add33.i, 1
  store i32 %shr34.i, ptr %arrayidx32.i, align 4, !tbaa !11
  %216 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom43.i = sext i32 %216 to i64
  %gep85.i = getelementptr [12 x [64 x i32]], ptr @history_tot, i64 %idxprom43.i
  %arrayidx48.i = getelementptr inbounds nuw i32, ptr %gep85.i, i64 %indvars.iv.i1572
  %217 = load i32, ptr %arrayidx48.i, align 4, !tbaa !11
  %add49.i = add nsw i32 %217, 1
  %shr50.i = ashr i32 %add49.i, 1
  store i32 %shr50.i, ptr %arrayidx48.i, align 4, !tbaa !11
  %indvars.iv.next.i1573 = add nuw nsw i64 %indvars.iv.i1572, 1
  %exitcond.not.i1574 = icmp eq i64 %indvars.iv.next.i1573, 64
  br i1 %exitcond.not.i1574, label %for.body25.1.i.preheader, label %for.body25.i, !llvm.loop !29

for.body25.1.i.preheader:                         ; preds = %for.body25.i
  br label %for.body25.1.i

for.body25.1.i:                                   ; preds = %for.body25.1.i, %for.body25.1.i.preheader
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %for.body25.1.i ], [ 0, %for.body25.1.i.preheader ]
  %218 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom27.1.i = sext i32 %218 to i64
  %gep.1.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_hit, i64 256), i64 %idxprom27.1.i
  %arrayidx32.1.i = getelementptr inbounds nuw i32, ptr %gep.1.i, i64 %indvars.iv.1.i
  %219 = load i32, ptr %arrayidx32.1.i, align 4, !tbaa !11
  %add33.1.i = add nsw i32 %219, 1
  %shr34.1.i = ashr i32 %add33.1.i, 1
  store i32 %shr34.1.i, ptr %arrayidx32.1.i, align 4, !tbaa !11
  %220 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom43.1.i = sext i32 %220 to i64
  %gep85.1.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_tot, i64 256), i64 %idxprom43.1.i
  %arrayidx48.1.i = getelementptr inbounds nuw i32, ptr %gep85.1.i, i64 %indvars.iv.1.i
  %221 = load i32, ptr %arrayidx48.1.i, align 4, !tbaa !11
  %add49.1.i = add nsw i32 %221, 1
  %shr50.1.i = ashr i32 %add49.1.i, 1
  store i32 %shr50.1.i, ptr %arrayidx48.1.i, align 4, !tbaa !11
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, 64
  br i1 %exitcond.1.not.i, label %for.body25.2.i.preheader, label %for.body25.1.i, !llvm.loop !29

for.body25.2.i.preheader:                         ; preds = %for.body25.1.i
  br label %for.body25.2.i

for.body25.2.i:                                   ; preds = %for.body25.2.i, %for.body25.2.i.preheader
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i, %for.body25.2.i ], [ 0, %for.body25.2.i.preheader ]
  %222 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom27.2.i = sext i32 %222 to i64
  %gep.2.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_hit, i64 512), i64 %idxprom27.2.i
  %arrayidx32.2.i = getelementptr inbounds nuw i32, ptr %gep.2.i, i64 %indvars.iv.2.i
  %223 = load i32, ptr %arrayidx32.2.i, align 4, !tbaa !11
  %add33.2.i = add nsw i32 %223, 1
  %shr34.2.i = ashr i32 %add33.2.i, 1
  store i32 %shr34.2.i, ptr %arrayidx32.2.i, align 4, !tbaa !11
  %224 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom43.2.i = sext i32 %224 to i64
  %gep85.2.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_tot, i64 512), i64 %idxprom43.2.i
  %arrayidx48.2.i = getelementptr inbounds nuw i32, ptr %gep85.2.i, i64 %indvars.iv.2.i
  %225 = load i32, ptr %arrayidx48.2.i, align 4, !tbaa !11
  %add49.2.i = add nsw i32 %225, 1
  %shr50.2.i = ashr i32 %add49.2.i, 1
  store i32 %shr50.2.i, ptr %arrayidx48.2.i, align 4, !tbaa !11
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next.2.i, 64
  br i1 %exitcond.2.not.i, label %for.body25.3.i.preheader, label %for.body25.2.i, !llvm.loop !29

for.body25.3.i.preheader:                         ; preds = %for.body25.2.i
  br label %for.body25.3.i

for.body25.3.i:                                   ; preds = %for.body25.3.i, %for.body25.3.i.preheader
  %indvars.iv.3.i = phi i64 [ %indvars.iv.next.3.i, %for.body25.3.i ], [ 0, %for.body25.3.i.preheader ]
  %226 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom27.3.i = sext i32 %226 to i64
  %gep.3.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_hit, i64 768), i64 %idxprom27.3.i
  %arrayidx32.3.i = getelementptr inbounds nuw i32, ptr %gep.3.i, i64 %indvars.iv.3.i
  %227 = load i32, ptr %arrayidx32.3.i, align 4, !tbaa !11
  %add33.3.i = add nsw i32 %227, 1
  %shr34.3.i = ashr i32 %add33.3.i, 1
  store i32 %shr34.3.i, ptr %arrayidx32.3.i, align 4, !tbaa !11
  %228 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom43.3.i = sext i32 %228 to i64
  %gep85.3.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_tot, i64 768), i64 %idxprom43.3.i
  %arrayidx48.3.i = getelementptr inbounds nuw i32, ptr %gep85.3.i, i64 %indvars.iv.3.i
  %229 = load i32, ptr %arrayidx48.3.i, align 4, !tbaa !11
  %add49.3.i = add nsw i32 %229, 1
  %shr50.3.i = ashr i32 %add49.3.i, 1
  store i32 %shr50.3.i, ptr %arrayidx48.3.i, align 4, !tbaa !11
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.next.3.i, 64
  br i1 %exitcond.3.not.i, label %for.body25.4.i.preheader, label %for.body25.3.i, !llvm.loop !29

for.body25.4.i.preheader:                         ; preds = %for.body25.3.i
  br label %for.body25.4.i

for.body25.4.i:                                   ; preds = %for.body25.4.i, %for.body25.4.i.preheader
  %indvars.iv.4.i = phi i64 [ %indvars.iv.next.4.i, %for.body25.4.i ], [ 0, %for.body25.4.i.preheader ]
  %230 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom27.4.i = sext i32 %230 to i64
  %gep.4.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_hit, i64 1024), i64 %idxprom27.4.i
  %arrayidx32.4.i = getelementptr inbounds nuw i32, ptr %gep.4.i, i64 %indvars.iv.4.i
  %231 = load i32, ptr %arrayidx32.4.i, align 4, !tbaa !11
  %add33.4.i = add nsw i32 %231, 1
  %shr34.4.i = ashr i32 %add33.4.i, 1
  store i32 %shr34.4.i, ptr %arrayidx32.4.i, align 4, !tbaa !11
  %232 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom43.4.i = sext i32 %232 to i64
  %gep85.4.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_tot, i64 1024), i64 %idxprom43.4.i
  %arrayidx48.4.i = getelementptr inbounds nuw i32, ptr %gep85.4.i, i64 %indvars.iv.4.i
  %233 = load i32, ptr %arrayidx48.4.i, align 4, !tbaa !11
  %add49.4.i = add nsw i32 %233, 1
  %shr50.4.i = ashr i32 %add49.4.i, 1
  store i32 %shr50.4.i, ptr %arrayidx48.4.i, align 4, !tbaa !11
  %indvars.iv.next.4.i = add nuw nsw i64 %indvars.iv.4.i, 1
  %exitcond.4.not.i = icmp eq i64 %indvars.iv.next.4.i, 64
  br i1 %exitcond.4.not.i, label %for.body25.5.i.preheader, label %for.body25.4.i, !llvm.loop !29

for.body25.5.i.preheader:                         ; preds = %for.body25.4.i
  br label %for.body25.5.i

for.body25.5.i:                                   ; preds = %for.body25.5.i, %for.body25.5.i.preheader
  %indvars.iv.5.i = phi i64 [ %indvars.iv.next.5.i, %for.body25.5.i ], [ 0, %for.body25.5.i.preheader ]
  %234 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom27.5.i = sext i32 %234 to i64
  %gep.5.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_hit, i64 1280), i64 %idxprom27.5.i
  %arrayidx32.5.i = getelementptr inbounds nuw i32, ptr %gep.5.i, i64 %indvars.iv.5.i
  %235 = load i32, ptr %arrayidx32.5.i, align 4, !tbaa !11
  %add33.5.i = add nsw i32 %235, 1
  %shr34.5.i = ashr i32 %add33.5.i, 1
  store i32 %shr34.5.i, ptr %arrayidx32.5.i, align 4, !tbaa !11
  %236 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom43.5.i = sext i32 %236 to i64
  %gep85.5.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_tot, i64 1280), i64 %idxprom43.5.i
  %arrayidx48.5.i = getelementptr inbounds nuw i32, ptr %gep85.5.i, i64 %indvars.iv.5.i
  %237 = load i32, ptr %arrayidx48.5.i, align 4, !tbaa !11
  %add49.5.i = add nsw i32 %237, 1
  %shr50.5.i = ashr i32 %add49.5.i, 1
  store i32 %shr50.5.i, ptr %arrayidx48.5.i, align 4, !tbaa !11
  %indvars.iv.next.5.i = add nuw nsw i64 %indvars.iv.5.i, 1
  %exitcond.5.not.i = icmp eq i64 %indvars.iv.next.5.i, 64
  br i1 %exitcond.5.not.i, label %for.body25.6.i.preheader, label %for.body25.5.i, !llvm.loop !29

for.body25.6.i.preheader:                         ; preds = %for.body25.5.i
  br label %for.body25.6.i

for.body25.6.i:                                   ; preds = %for.body25.6.i, %for.body25.6.i.preheader
  %indvars.iv.6.i = phi i64 [ %indvars.iv.next.6.i, %for.body25.6.i ], [ 0, %for.body25.6.i.preheader ]
  %238 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom27.6.i = sext i32 %238 to i64
  %gep.6.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_hit, i64 1536), i64 %idxprom27.6.i
  %arrayidx32.6.i = getelementptr inbounds nuw i32, ptr %gep.6.i, i64 %indvars.iv.6.i
  %239 = load i32, ptr %arrayidx32.6.i, align 4, !tbaa !11
  %add33.6.i = add nsw i32 %239, 1
  %shr34.6.i = ashr i32 %add33.6.i, 1
  store i32 %shr34.6.i, ptr %arrayidx32.6.i, align 4, !tbaa !11
  %240 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom43.6.i = sext i32 %240 to i64
  %gep85.6.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_tot, i64 1536), i64 %idxprom43.6.i
  %arrayidx48.6.i = getelementptr inbounds nuw i32, ptr %gep85.6.i, i64 %indvars.iv.6.i
  %241 = load i32, ptr %arrayidx48.6.i, align 4, !tbaa !11
  %add49.6.i = add nsw i32 %241, 1
  %shr50.6.i = ashr i32 %add49.6.i, 1
  store i32 %shr50.6.i, ptr %arrayidx48.6.i, align 4, !tbaa !11
  %indvars.iv.next.6.i = add nuw nsw i64 %indvars.iv.6.i, 1
  %exitcond.6.not.i = icmp eq i64 %indvars.iv.next.6.i, 64
  br i1 %exitcond.6.not.i, label %for.body25.7.i.preheader, label %for.body25.6.i, !llvm.loop !29

for.body25.7.i.preheader:                         ; preds = %for.body25.6.i
  br label %for.body25.7.i

for.body25.7.i:                                   ; preds = %for.body25.7.i, %for.body25.7.i.preheader
  %indvars.iv.7.i = phi i64 [ %indvars.iv.next.7.i, %for.body25.7.i ], [ 0, %for.body25.7.i.preheader ]
  %242 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom27.7.i = sext i32 %242 to i64
  %gep.7.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_hit, i64 1792), i64 %idxprom27.7.i
  %arrayidx32.7.i = getelementptr inbounds nuw i32, ptr %gep.7.i, i64 %indvars.iv.7.i
  %243 = load i32, ptr %arrayidx32.7.i, align 4, !tbaa !11
  %add33.7.i = add nsw i32 %243, 1
  %shr34.7.i = ashr i32 %add33.7.i, 1
  store i32 %shr34.7.i, ptr %arrayidx32.7.i, align 4, !tbaa !11
  %244 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom43.7.i = sext i32 %244 to i64
  %gep85.7.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_tot, i64 1792), i64 %idxprom43.7.i
  %arrayidx48.7.i = getelementptr inbounds nuw i32, ptr %gep85.7.i, i64 %indvars.iv.7.i
  %245 = load i32, ptr %arrayidx48.7.i, align 4, !tbaa !11
  %add49.7.i = add nsw i32 %245, 1
  %shr50.7.i = ashr i32 %add49.7.i, 1
  store i32 %shr50.7.i, ptr %arrayidx48.7.i, align 4, !tbaa !11
  %indvars.iv.next.7.i = add nuw nsw i64 %indvars.iv.7.i, 1
  %exitcond.7.not.i = icmp eq i64 %indvars.iv.next.7.i, 64
  br i1 %exitcond.7.not.i, label %for.body25.8.i.preheader, label %for.body25.7.i, !llvm.loop !29

for.body25.8.i.preheader:                         ; preds = %for.body25.7.i
  br label %for.body25.8.i

for.body25.8.i:                                   ; preds = %for.body25.8.i, %for.body25.8.i.preheader
  %indvars.iv.8.i = phi i64 [ %indvars.iv.next.8.i, %for.body25.8.i ], [ 0, %for.body25.8.i.preheader ]
  %246 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom27.8.i = sext i32 %246 to i64
  %gep.8.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_hit, i64 2048), i64 %idxprom27.8.i
  %arrayidx32.8.i = getelementptr inbounds nuw i32, ptr %gep.8.i, i64 %indvars.iv.8.i
  %247 = load i32, ptr %arrayidx32.8.i, align 4, !tbaa !11
  %add33.8.i = add nsw i32 %247, 1
  %shr34.8.i = ashr i32 %add33.8.i, 1
  store i32 %shr34.8.i, ptr %arrayidx32.8.i, align 4, !tbaa !11
  %248 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom43.8.i = sext i32 %248 to i64
  %gep85.8.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_tot, i64 2048), i64 %idxprom43.8.i
  %arrayidx48.8.i = getelementptr inbounds nuw i32, ptr %gep85.8.i, i64 %indvars.iv.8.i
  %249 = load i32, ptr %arrayidx48.8.i, align 4, !tbaa !11
  %add49.8.i = add nsw i32 %249, 1
  %shr50.8.i = ashr i32 %add49.8.i, 1
  store i32 %shr50.8.i, ptr %arrayidx48.8.i, align 4, !tbaa !11
  %indvars.iv.next.8.i = add nuw nsw i64 %indvars.iv.8.i, 1
  %exitcond.8.not.i = icmp eq i64 %indvars.iv.next.8.i, 64
  br i1 %exitcond.8.not.i, label %for.body25.9.i.preheader, label %for.body25.8.i, !llvm.loop !29

for.body25.9.i.preheader:                         ; preds = %for.body25.8.i
  br label %for.body25.9.i

for.body25.9.i:                                   ; preds = %for.body25.9.i, %for.body25.9.i.preheader
  %indvars.iv.9.i = phi i64 [ %indvars.iv.next.9.i, %for.body25.9.i ], [ 0, %for.body25.9.i.preheader ]
  %250 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom27.9.i = sext i32 %250 to i64
  %gep.9.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_hit, i64 2304), i64 %idxprom27.9.i
  %arrayidx32.9.i = getelementptr inbounds nuw i32, ptr %gep.9.i, i64 %indvars.iv.9.i
  %251 = load i32, ptr %arrayidx32.9.i, align 4, !tbaa !11
  %add33.9.i = add nsw i32 %251, 1
  %shr34.9.i = ashr i32 %add33.9.i, 1
  store i32 %shr34.9.i, ptr %arrayidx32.9.i, align 4, !tbaa !11
  %252 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom43.9.i = sext i32 %252 to i64
  %gep85.9.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_tot, i64 2304), i64 %idxprom43.9.i
  %arrayidx48.9.i = getelementptr inbounds nuw i32, ptr %gep85.9.i, i64 %indvars.iv.9.i
  %253 = load i32, ptr %arrayidx48.9.i, align 4, !tbaa !11
  %add49.9.i = add nsw i32 %253, 1
  %shr50.9.i = ashr i32 %add49.9.i, 1
  store i32 %shr50.9.i, ptr %arrayidx48.9.i, align 4, !tbaa !11
  %indvars.iv.next.9.i = add nuw nsw i64 %indvars.iv.9.i, 1
  %exitcond.9.not.i = icmp eq i64 %indvars.iv.next.9.i, 64
  br i1 %exitcond.9.not.i, label %for.body25.10.i.preheader, label %for.body25.9.i, !llvm.loop !29

for.body25.10.i.preheader:                        ; preds = %for.body25.9.i
  br label %for.body25.10.i

for.body25.10.i:                                  ; preds = %for.body25.10.i, %for.body25.10.i.preheader
  %indvars.iv.10.i = phi i64 [ %indvars.iv.next.10.i, %for.body25.10.i ], [ 0, %for.body25.10.i.preheader ]
  %254 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom27.10.i = sext i32 %254 to i64
  %gep.10.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_hit, i64 2560), i64 %idxprom27.10.i
  %arrayidx32.10.i = getelementptr inbounds nuw i32, ptr %gep.10.i, i64 %indvars.iv.10.i
  %255 = load i32, ptr %arrayidx32.10.i, align 4, !tbaa !11
  %add33.10.i = add nsw i32 %255, 1
  %shr34.10.i = ashr i32 %add33.10.i, 1
  store i32 %shr34.10.i, ptr %arrayidx32.10.i, align 4, !tbaa !11
  %256 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom43.10.i = sext i32 %256 to i64
  %gep85.10.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_tot, i64 2560), i64 %idxprom43.10.i
  %arrayidx48.10.i = getelementptr inbounds nuw i32, ptr %gep85.10.i, i64 %indvars.iv.10.i
  %257 = load i32, ptr %arrayidx48.10.i, align 4, !tbaa !11
  %add49.10.i = add nsw i32 %257, 1
  %shr50.10.i = ashr i32 %add49.10.i, 1
  store i32 %shr50.10.i, ptr %arrayidx48.10.i, align 4, !tbaa !11
  %indvars.iv.next.10.i = add nuw nsw i64 %indvars.iv.10.i, 1
  %exitcond.10.not.i = icmp eq i64 %indvars.iv.next.10.i, 64
  br i1 %exitcond.10.not.i, label %for.body25.11.i.preheader, label %for.body25.10.i, !llvm.loop !29

for.body25.11.i.preheader:                        ; preds = %for.body25.10.i
  br label %for.body25.11.i

for.body25.11.i:                                  ; preds = %for.body25.11.i, %for.body25.11.i.preheader
  %indvars.iv.11.i = phi i64 [ %indvars.iv.next.11.i, %for.body25.11.i ], [ 0, %for.body25.11.i.preheader ]
  %258 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom27.11.i = sext i32 %258 to i64
  %gep.11.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_hit, i64 2816), i64 %idxprom27.11.i
  %arrayidx32.11.i = getelementptr inbounds nuw i32, ptr %gep.11.i, i64 %indvars.iv.11.i
  %259 = load i32, ptr %arrayidx32.11.i, align 4, !tbaa !11
  %add33.11.i = add nsw i32 %259, 1
  %shr34.11.i = ashr i32 %add33.11.i, 1
  store i32 %shr34.11.i, ptr %arrayidx32.11.i, align 4, !tbaa !11
  %260 = load i32, ptr %s, align 8, !tbaa !25
  %idxprom43.11.i = sext i32 %260 to i64
  %gep85.11.i = getelementptr [12 x [64 x i32]], ptr getelementptr inbounds nuw (i8, ptr @history_tot, i64 2816), i64 %idxprom43.11.i
  %arrayidx48.11.i = getelementptr inbounds nuw i32, ptr %gep85.11.i, i64 %indvars.iv.11.i
  %261 = load i32, ptr %arrayidx48.11.i, align 4, !tbaa !11
  %add49.11.i = add nsw i32 %261, 1
  %shr50.11.i = ashr i32 %add49.11.i, 1
  store i32 %shr50.11.i, ptr %arrayidx48.11.i, align 4, !tbaa !11
  %indvars.iv.next.11.i = add nuw nsw i64 %indvars.iv.11.i, 1
  %exitcond.11.not.i = icmp eq i64 %indvars.iv.next.11.i, 64
  br i1 %exitcond.11.not.i, label %_ZL11history_badP7state_tii.exit.loopexit, label %for.body25.11.i, !llvm.loop !29

_ZL11history_badP7state_tii.exit.loopexit:        ; preds = %for.body25.11.i
  br label %_ZL11history_badP7state_tii.exit

_ZL11history_badP7state_tii.exit:                 ; preds = %_ZL11history_badP7state_tii.exit.loopexit, %if.then.i, %for.body965
  %indvars.iv.next1716 = add nuw nsw i64 %indvars.iv1715, 1
  %exitcond1719 = icmp ne i64 %indvars.iv.next1716, %wide.trip.count1718
  br i1 %exitcond1719, label %for.body965, label %for.end970.loopexit, !llvm.loop !30

for.end970.loopexit:                              ; preds = %_ZL11history_badP7state_tii.exit
  br label %for.end970

for.end970:                                       ; preds = %for.end970.loopexit, %if.then959
  %262 = load i32, ptr %arrayidx683.le.lcssa1696, align 4, !tbaa !11
  %call973 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %262)
  %conv974 = zext i16 %call973 to i32
  %263 = load i32, ptr %threat, align 4, !tbaa !11
  %264 = load i32, ptr %singular, align 4, !tbaa !11
  %265 = load i32, ptr %nosingular, align 4, !tbaa !11
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %s, i32 noundef %score.17.lcssa1695, i32 noundef %alpha.addr.0, i32 noundef %beta.addr.0, i32 noundef %conv974, i32 noundef %263, i32 noundef %264, i32 noundef %265, i32 noundef %depth)
  br label %cleanup1024

if.end975:                                        ; preds = %if.then957
  %266 = load i32, ptr %arrayidx683.le, align 4, !tbaa !11
  %call978 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %266)
  %conv979 = zext i16 %call978 to i32
  store i32 %conv979, ptr %best, align 4, !tbaa !11
  br label %if.end980

if.end980:                                        ; preds = %if.end975, %if.then955
  %alpha.addr.2 = phi i32 [ %score.17, %if.end975 ], [ %alpha.addr.1.ph1682, %if.then955 ]
  %267 = load i32, ptr %arrayidx683.le, align 4, !tbaa !11
  %268 = sext i32 %mn.0.ph1677 to i64
  %269 = getelementptr i32, ptr %searched_moves, i64 %268
  %arrayidx985 = getelementptr i8, ptr %269, i64 -4
  store i32 %267, ptr %arrayidx985, align 4, !tbaa !11
  %inc986 = add nsw i32 %mn.0.ph1677, 1
  br label %if.end987

if.end987:                                        ; preds = %if.end980, %if.end953
  %mn.1 = phi i32 [ %inc986, %if.end980 ], [ %mn.0.ph1677, %if.end953 ]
  %first.3 = phi i32 [ 0, %if.end980 ], [ %first.2.ph1678, %if.end953 ]
  %alpha.addr.3 = phi i32 [ %alpha.addr.2, %if.end980 ], [ %alpha.addr.1.ph1682, %if.end953 ]
  %inc.i1575 = add nsw i32 %.lcssa1692, 1
  store i32 %inc.i1575, ptr %i, align 4, !tbaa !11
  %cmp.i1576 = icmp slt i32 %.lcssa1692, 9
  %cmp165.i1577 = icmp slt i32 %inc.i1575, %num_moves.01615
  br i1 %cmp.i1576, label %for.cond.preheader.i1581, label %if.else.i1578

for.cond.preheader.i1581:                         ; preds = %if.end987
  br i1 %cmp165.i1577, label %for.body.preheader.i1582, label %cleanup991

for.body.preheader.i1582:                         ; preds = %for.cond.preheader.i1581
  %270 = add nsw i64 %idxprom682.lcssa, 1
  br label %for.body.i1583

for.body.i1583:                                   ; preds = %for.body.i1583, %for.body.preheader.i1582
  %indvars.iv.i1584 = phi i64 [ %270, %for.body.preheader.i1582 ], [ %indvars.iv.next.i1591, %for.body.i1583 ]
  %tmp.068.i1585 = phi i32 [ undef, %for.body.preheader.i1582 ], [ %spec.select60.i1590, %for.body.i1583 ]
  %best.067.i1586 = phi i32 [ -1000000, %for.body.preheader.i1582 ], [ %spec.select.i1589, %for.body.i1583 ]
  %arrayidx.i1587 = getelementptr inbounds i32, ptr %move_ordering, i64 %indvars.iv.i1584
  %271 = load i32, ptr %arrayidx.i1587, align 4, !tbaa !11
  %cmp2.i1588 = icmp sgt i32 %271, %best.067.i1586
  %spec.select.i1589 = call i32 @llvm.smax.i32(i32 %271, i32 %best.067.i1586)
  %272 = trunc nsw i64 %indvars.iv.i1584 to i32
  %spec.select60.i1590 = select i1 %cmp2.i1588, i32 %272, i32 %tmp.068.i1585
  %indvars.iv.next.i1591 = add nsw i64 %indvars.iv.i1584, 1
  %lftr.wideiv.i1592 = trunc i64 %indvars.iv.next.i1591 to i32
  %exitcond.not.i1593 = icmp eq i32 %num_moves.01615, %lftr.wideiv.i1592
  br i1 %exitcond.not.i1593, label %if.end12.i1594, label %for.body.i1583, !llvm.loop !22

if.else.i1578:                                    ; preds = %if.end987
  %spec.select64.i1579 = zext i1 %cmp165.i1577 to i32
  br label %cleanup991

if.end12.i1594:                                   ; preds = %for.body.i1583
  %spec.select.i1589.lcssa = phi i32 [ %spec.select.i1589, %for.body.i1583 ]
  %spec.select60.i1590.lcssa = phi i32 [ %spec.select60.i1590, %for.body.i1583 ]
  %cmp13.i1595 = icmp sgt i32 %spec.select.i1589.lcssa, -1000000
  br i1 %cmp13.i1595, label %if.then14.i1596, label %cleanup991

if.then14.i1596:                                  ; preds = %if.end12.i1594
  %273 = sext i32 %spec.select60.i1590.lcssa to i64
  %idxprom15.i1597 = sext i32 %inc.i1575 to i64
  %arrayidx16.i1598 = getelementptr inbounds i32, ptr %move_ordering, i64 %idxprom15.i1597
  %274 = load i32, ptr %arrayidx16.i1598, align 4, !tbaa !11
  %arrayidx18.i1599 = getelementptr inbounds i32, ptr %move_ordering, i64 %273
  store i32 %274, ptr %arrayidx18.i1599, align 4, !tbaa !11
  store i32 %spec.select.i1589.lcssa, ptr %arrayidx16.i1598, align 4, !tbaa !11
  %arrayidx22.i1600 = getelementptr inbounds i32, ptr %moves, i64 %idxprom15.i1597
  %275 = load i32, ptr %arrayidx22.i1600, align 4, !tbaa !11
  %arrayidx24.i1601 = getelementptr inbounds i32, ptr %moves, i64 %273
  %276 = load i32, ptr %arrayidx24.i1601, align 4, !tbaa !11
  store i32 %276, ptr %arrayidx22.i1600, align 4, !tbaa !11
  store i32 %275, ptr %arrayidx24.i1601, align 4, !tbaa !11
  br label %cleanup991

cleanup991:                                       ; preds = %if.then14.i1596, %if.end12.i1594, %if.else.i1578, %for.cond.preheader.i1581, %if.then811, %if.then794
  %remoneflag.3 = phi i32 [ %call816, %if.then811 ], [ %call799, %if.then794 ], [ 1, %if.then14.i1596 ], [ 0, %if.end12.i1594 ], [ %spec.select64.i1579, %if.else.i1578 ], [ 0, %for.cond.preheader.i1581 ]
  %mn.2 = phi i32 [ %mn.0.ph1677, %if.then811 ], [ %mn.0.ph1677, %if.then794 ], [ %mn.1, %if.then14.i1596 ], [ %mn.1, %if.end12.i1594 ], [ %mn.1, %if.else.i1578 ], [ %mn.1, %for.cond.preheader.i1581 ]
  %first.4 = phi i32 [ %first.2.ph1678, %if.then811 ], [ %first.2.ph1678, %if.then794 ], [ %first.3, %if.then14.i1596 ], [ %first.3, %if.end12.i1594 ], [ %first.3, %if.else.i1578 ], [ %first.3, %for.cond.preheader.i1581 ]
  %best_score.3 = phi i32 [ %alpha.addr.1.ph1682, %if.then811 ], [ %alpha.addr.1.ph1682, %if.then794 ], [ %best_score.2, %if.then14.i1596 ], [ %best_score.2, %if.end12.i1594 ], [ %best_score.2, %if.else.i1578 ], [ %best_score.2, %for.cond.preheader.i1581 ]
  %no_moves.2 = phi i32 [ 0, %if.then811 ], [ 0, %if.then794 ], [ %no_moves.1, %if.then14.i1596 ], [ %no_moves.1, %if.end12.i1594 ], [ %no_moves.1, %if.else.i1578 ], [ %no_moves.1, %for.cond.preheader.i1581 ]
  %score.18 = phi i32 [ %score.14.ph1681, %if.then811 ], [ %score.14.ph1681, %if.then794 ], [ %score.17, %if.then14.i1596 ], [ %score.17, %if.end12.i1594 ], [ %score.17, %if.else.i1578 ], [ %score.17, %for.cond.preheader.i1581 ]
  %alpha.addr.4 = phi i32 [ %alpha.addr.1.ph1682, %if.then811 ], [ %alpha.addr.1.ph1682, %if.then794 ], [ %alpha.addr.3, %if.then14.i1596 ], [ %alpha.addr.3, %if.end12.i1594 ], [ %alpha.addr.3, %if.else.i1578 ], [ %alpha.addr.3, %for.cond.preheader.i1581 ]
  %tobool518.not1670 = icmp eq i32 %remoneflag.3, 0
  br i1 %tobool518.not1670, label %while.end996.loopexit1687, label %while.body519.lr.ph

while.end996.loopexit.loopexit:                   ; preds = %if.then710
  %best_score.0.ph1679.lcssa1703.ph = phi i32 [ %best_score.0.ph1679, %if.then710 ]
  br label %while.end996.loopexit

while.end996.loopexit.loopexit1713:               ; preds = %if.then710.peel
  %best_score.0.ph1679.lcssa1703.ph1714 = phi i32 [ %best_score.0.ph1679, %if.then710.peel ]
  br label %while.end996.loopexit

while.end996.loopexit:                            ; preds = %while.end996.loopexit.loopexit1713, %while.end996.loopexit.loopexit
  %best_score.0.ph1679.lcssa1703 = phi i32 [ %best_score.0.ph1679.lcssa1703.ph, %while.end996.loopexit.loopexit ], [ %best_score.0.ph1679.lcssa1703.ph1714, %while.end996.loopexit.loopexit1713 ]
  br label %while.end996

while.end996.loopexit1687:                        ; preds = %cleanup991
  %best_score.3.lcssa = phi i32 [ %best_score.3, %cleanup991 ]
  %no_moves.2.lcssa = phi i32 [ %no_moves.2, %cleanup991 ]
  br label %while.end996

while.end996:                                     ; preds = %while.end996.loopexit1687, %while.end996.loopexit, %land.end512
  %best_score.0.ph.lcssa1641 = phi i32 [ -32000, %land.end512 ], [ %best_score.0.ph1679.lcssa1703, %while.end996.loopexit ], [ %best_score.3.lcssa, %while.end996.loopexit1687 ]
  %no_moves.0.lcssa = phi i32 [ 1, %land.end512 ], [ 0, %while.end996.loopexit ], [ %no_moves.2.lcssa, %while.end996.loopexit1687 ]
  %277 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamestate, i64 36096), align 8, !tbaa !13
  %tobool997.not = icmp eq i32 %277, 0
  %tobool1000 = icmp ne i32 %no_moves.0.lcssa, 0
  %or.cond1088 = select i1 %tobool1000, i1 %tobool997.not, i1 false
  br i1 %or.cond1088, label %if.then1003, label %if.else1012

if.then1003:                                      ; preds = %while.end996
  %call1004 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %s)
  %tobool1005.not = icmp eq i32 %call1004, 0
  br i1 %tobool1005.not, label %if.else1011, label %if.then1006

if.then1006:                                      ; preds = %if.then1003
  %278 = load i32, ptr %ply, align 8, !tbaa !0
  %add1008 = add nsw i32 %278, -32000
  %279 = load i32, ptr %threat, align 4, !tbaa !11
  %280 = load i32, ptr %singular, align 4, !tbaa !11
  %281 = load i32, ptr %nosingular, align 4, !tbaa !11
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %s, i32 noundef %add1008, i32 noundef %alpha.addr.0, i32 noundef %beta.addr.0, i32 noundef 0, i32 noundef %279, i32 noundef %280, i32 noundef %281, i32 noundef %depth)
  %282 = load i32, ptr %ply, align 8, !tbaa !0
  %add1010 = add nsw i32 %282, -32000
  br label %cleanup1024

if.else1011:                                      ; preds = %if.then1003
  %283 = load i32, ptr %threat, align 4, !tbaa !11
  %284 = load i32, ptr %singular, align 4, !tbaa !11
  %285 = load i32, ptr %nosingular, align 4, !tbaa !11
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %s, i32 noundef 0, i32 noundef %alpha.addr.0, i32 noundef %beta.addr.0, i32 noundef 0, i32 noundef %283, i32 noundef %284, i32 noundef %285, i32 noundef %depth)
  br label %cleanup1024

if.else1012:                                      ; preds = %while.end996
  %286 = load i32, ptr %fifty, align 4, !tbaa !7
  %cmp1014 = icmp slt i32 %286, 99
  %brmerge.not = select i1 %cmp1014, i1 %tobool997.not, i1 false
  %.mux = select i1 %cmp1014, i32 %best_score.0.ph.lcssa1641, i32 0
  br i1 %brmerge.not, label %if.then1019, label %cleanup1024

if.then1019:                                      ; preds = %if.else1012
  %287 = load i32, ptr %best, align 4, !tbaa !11
  %288 = load i32, ptr %threat, align 4, !tbaa !11
  %289 = load i32, ptr %singular, align 4, !tbaa !11
  %290 = load i32, ptr %nosingular, align 4, !tbaa !11
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %s, i32 noundef %best_score.0.ph.lcssa1641, i32 noundef %alpha.addr.0, i32 noundef %beta.addr.0, i32 noundef %287, i32 noundef %288, i32 noundef %289, i32 noundef %290, i32 noundef %depth)
  br label %cleanup1024

cleanup1024.loopexit:                             ; preds = %if.end948
  br label %cleanup1024

cleanup1024:                                      ; preds = %cleanup1024.loopexit, %if.then1019, %if.else1012, %if.else1011, %if.then1006, %for.end970, %cleanup399, %if.then203, %if.then197, %if.then179, %if.end168, %if.end121, %if.then63, %if.then56, %if.then52, %sw.bb33, %sw.bb29, %sw.bb, %if.then23, %if.then14, %if.then9, %if.end, %if.then
  %retval.12 = phi i32 [ %call, %if.then ], [ %cond, %if.then9 ], [ %7, %sw.bb ], [ 0, %if.end ], [ %add, %if.then14 ], [ %sub21, %if.then23 ], [ %8, %sw.bb29 ], [ %9, %sw.bb33 ], [ %beta.addr.0, %cleanup399 ], [ 0, %if.end121 ], [ %call43, %if.then52 ], [ %call57, %if.then56 ], [ %call43, %if.then63 ], [ %add1010, %if.then1006 ], [ 0, %if.else1011 ], [ %.mux, %if.else1012 ], [ %best_score.0.ph.lcssa1641, %if.then1019 ], [ %score.2, %if.then179 ], [ 0, %if.end168 ], [ 0, %if.then197 ], [ %alpha.addr.0, %if.then203 ], [ %score.17.lcssa1695, %for.end970 ], [ 0, %cleanup1024.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %searched_moves) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %nosingular) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %singular) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %best) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %donull) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %threat) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %bound) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %move_ordering) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %moves) #7
  ret i32 %retval.12
}

declare noundef i32 @_Z3genP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare hidden fastcc void @_ZL11order_movesP7state_tPiS1_ij(ptr noundef, ptr noundef nonnull readonly captures(none), ptr noundef nonnull writeonly captures(none), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare hidden fastcc void @_ZL12history_goodP7state_tii(ptr noundef captures(none), i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!0 = !{!1, !2, i64 472}
!1 = !{!"_ZTS7state_t", !2, i64 0, !3, i64 4, !5, i64 264, !5, i64 272, !5, i64 280, !3, i64 288, !2, i64 392, !2, i64 396, !3, i64 400, !2, i64 452, !2, i64 456, !2, i64 460, !2, i64 464, !2, i64 468, !2, i64 472, !2, i64 476, !5, i64 480, !5, i64 488, !3, i64 496, !3, i64 2544, !3, i64 2800, !3, i64 3056, !5, i64 4080, !5, i64 4088, !2, i64 4096, !3, i64 4100, !2, i64 4356, !2, i64 4360, !2, i64 4364, !2, i64 4368, !2, i64 4372, !2, i64 4376, !2, i64 4380, !2, i64 4384, !2, i64 4388, !2, i64 4392, !3, i64 4400}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"long long", !3, i64 0}
!6 = !{!1, !5, i64 4080}
!7 = !{!1, !2, i64 476}
!8 = !{!9, !2, i64 12}
!9 = !{!"_ZTS11gamestate_t", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !2, i64 48, !2, i64 52, !2, i64 56, !2, i64 60, !3, i64 64, !3, i64 4064, !5, i64 36064, !2, i64 36072, !2, i64 36076, !2, i64 36080, !2, i64 36084, !2, i64 36088, !2, i64 36092, !2, i64 36096, !2, i64 36100}
!10 = !{!1, !2, i64 460}
!11 = !{!2, !2, i64 0}
!12 = !{!9, !2, i64 4}
!13 = !{!9, !2, i64 36096}
!14 = !{!1, !2, i64 456}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!1, !5, i64 480}
!19 = !{!9, !2, i64 60}
!20 = !{!5, !5, i64 0}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = !{!9, !2, i64 20}
!25 = !{!1, !2, i64 0}
!26 = distinct !{!26, !16, !27}
!27 = !{!"llvm.loop.peeled.count", i32 1}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
