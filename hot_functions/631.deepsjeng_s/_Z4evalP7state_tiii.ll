; ModuleID = '/tmp/tmp.KFdrtr2v31/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/neval.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_eval_comps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@WhiteSqMask = external local_unnamed_addr global i64, align 8

; Function Attrs: mustprogress uwtable
declare dso_local void @_Z5fevalP7state_tiP12t_eval_comps(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z4evalP7state_tiii(ptr noundef %s, i32 noundef %alpha, i32 noundef %beta, i32 noundef %forcefull) local_unnamed_addr #0 {
entry:
  %ec = alloca %struct.t_eval_comps, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %ec) #6
  %Material = getelementptr inbounds nuw i8, ptr %s, i64 392
  %0 = load i32, ptr %Material, align 8, !tbaa !0
  %psq_score = getelementptr inbounds nuw i8, ptr %s, i64 396
  %1 = load i32, ptr %psq_score, align 4, !tbaa !6
  %add = add nsw i32 %1, %0
  %tobool.not = icmp eq i32 %forcefull, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %s, i64 404
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !7
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.end37, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %s, i64 408
  %3 = load i32, ptr %arrayidx4, align 8, !tbaa !7
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end37, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %white_to_move = getelementptr inbounds nuw i8, ptr %s, i64 460
  %4 = load i32, ptr %white_to_move, align 4, !tbaa !8
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  %ply = getelementptr inbounds nuw i8, ptr %s, i64 472
  %5 = load i32, ptr %ply, align 8, !tbaa !9
  %6 = sext i32 %5 to i64
  %7 = getelementptr i32, ptr %s, i64 %6
  %arrayidx8 = getelementptr i8, ptr %7, i64 2796
  %8 = load i32, ptr %arrayidx8, align 4, !tbaa !7
  %add9 = add nsw i32 %8, %add
  br label %if.end

if.else:                                          ; preds = %if.then
  %ply11 = getelementptr inbounds nuw i8, ptr %s, i64 472
  %9 = load i32, ptr %ply11, align 8, !tbaa !9
  %10 = sext i32 %9 to i64
  %11 = getelementptr i32, ptr %s, i64 %10
  %arrayidx14 = getelementptr i8, ptr %11, i64 2796
  %12 = load i32, ptr %arrayidx14, align 4, !tbaa !7
  %13 = add i32 %add, %12
  %add17 = sub i32 0, %13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %lazy_score.0 = phi i32 [ %add9, %if.then7 ], [ %add17, %if.else ]
  %plyeval18 = getelementptr inbounds nuw i8, ptr %s, i64 2800
  %ply19 = getelementptr inbounds nuw i8, ptr %s, i64 472
  %14 = load i32, ptr %ply19, align 8, !tbaa !9
  %15 = sext i32 %14 to i64
  %16 = getelementptr i32, ptr %plyeval18, i64 %15
  %arrayidx22 = getelementptr i8, ptr %16, i64 -4
  %17 = load i32, ptr %arrayidx22, align 4, !tbaa !7
  store i32 %17, ptr %16, align 4, !tbaa !7
  %add27 = add nsw i32 %lazy_score.0, 50
  %cmp.not = icmp sgt i32 %add27, %alpha
  br i1 %cmp.not, label %if.else30, label %cleanup127

if.else30:                                        ; preds = %if.end
  %sub31 = add nsw i32 %lazy_score.0, -50
  %cmp32.not = icmp slt i32 %sub31, %beta
  br i1 %cmp32.not, label %if.end37, label %cleanup127

if.end37:                                         ; preds = %if.else30, %land.lhs.true2, %land.lhs.true, %entry
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %s, i64 444
  %18 = load i32, ptr %arrayidx39, align 4, !tbaa !7
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %s, i64 412
  %19 = load i32, ptr %arrayidx41, align 4, !tbaa !7
  %mul192 = add i32 %19, %18
  %add43 = shl i32 %mul192, 2
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %s, i64 428
  %20 = load i32, ptr %arrayidx45, align 4, !tbaa !7
  %mul46 = mul nsw i32 %20, 6
  %add47 = add nsw i32 %add43, %mul46
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %s, i64 436
  %21 = load i32, ptr %arrayidx49, align 4, !tbaa !7
  %mul50 = mul nsw i32 %21, 12
  %add51 = add nsw i32 %add47, %mul50
  %arrayidx53 = getelementptr inbounds nuw i8, ptr %s, i64 448
  %22 = load i32, ptr %arrayidx53, align 8, !tbaa !7
  %arrayidx56 = getelementptr inbounds nuw i8, ptr %s, i64 416
  %23 = load i32, ptr %arrayidx56, align 8, !tbaa !7
  %mul54193 = add i32 %23, %22
  %add58 = shl i32 %mul54193, 2
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %s, i64 432
  %24 = load i32, ptr %arrayidx60, align 8, !tbaa !7
  %mul61 = mul nsw i32 %24, 6
  %add62 = add nsw i32 %add58, %mul61
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %s, i64 440
  %25 = load i32, ptr %arrayidx64, align 8, !tbaa !7
  %mul65 = mul nsw i32 %25, 12
  %add66 = add nsw i32 %add62, %mul65
  %.sroa.speculated202 = tail call i32 @llvm.smin.i32(i32 %add51, i32 40)
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %add66, i32 40)
  %add69 = add nsw i32 %.sroa.speculated, %.sroa.speculated202
  %mul70 = shl nsw i32 %add69, 10
  %div = sdiv i32 %mul70, 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %ec, i8 0, i64 44, i1 false)
  call void @_Z5fevalP7state_tiP12t_eval_comps(ptr noundef nonnull %s, i32 noundef %div, ptr noundef nonnull %ec)
  %white_to_move71 = getelementptr inbounds nuw i8, ptr %s, i64 460
  %26 = load i32, ptr %white_to_move71, align 4, !tbaa !8
  %tobool72.not = icmp eq i32 %26, 0
  %sub81 = select i1 %tobool72.not, i32 -10, i32 10
  %27 = load i32, ptr %ec, align 4, !tbaa !10
  %b_positional = getelementptr inbounds nuw i8, ptr %ec, i64 4
  %28 = load i32, ptr %b_positional, align 4, !tbaa !12
  %accum_score = getelementptr inbounds nuw i8, ptr %ec, i64 40
  %29 = load i32, ptr %accum_score, align 4, !tbaa !13
  %w_pawnstruct = getelementptr inbounds nuw i8, ptr %ec, i64 8
  %30 = load i32, ptr %w_pawnstruct, align 4, !tbaa !14
  %b_pawnstruct = getelementptr inbounds nuw i8, ptr %ec, i64 12
  %31 = load i32, ptr %b_pawnstruct, align 4, !tbaa !15
  %w_psq_king = getelementptr inbounds nuw i8, ptr %ec, i64 24
  %32 = load i32, ptr %w_psq_king, align 4, !tbaa !16
  %b_psq_king = getelementptr inbounds nuw i8, ptr %ec, i64 28
  %33 = load i32, ptr %b_psq_king, align 4, !tbaa !17
  %add88 = add nsw i32 %33, %32
  %sub89 = sub nsw i32 1024, %div
  %mul90 = mul nsw i32 %add88, %sub89
  %div91 = sdiv i32 %mul90, 1280
  %w_passers = getelementptr inbounds nuw i8, ptr %ec, i64 16
  %34 = load i32, ptr %w_passers, align 4, !tbaa !18
  %b_passers = getelementptr inbounds nuw i8, ptr %ec, i64 20
  %35 = load i32, ptr %b_passers, align 4, !tbaa !19
  %add93 = add nsw i32 %35, %34
  %sub94 = sub nsw i32 2048, %div
  %mul95 = mul nsw i32 %add93, %sub94
  %div96 = sdiv i32 %mul95, 1536
  %w_ks_score = getelementptr inbounds nuw i8, ptr %ec, i64 32
  %36 = load i32, ptr %w_ks_score, align 4, !tbaa !20
  %mul99 = mul nsw i32 %36, %36
  %div101195 = lshr i32 %mul99, 8
  %b_ks_score = getelementptr inbounds nuw i8, ptr %ec, i64 36
  %37 = load i32, ptr %b_ks_score, align 4, !tbaa !21
  %mul105 = mul nsw i32 %37, %37
  %div106196 = lshr i32 %mul105, 8
  %add108 = add i32 %37, %36
  %add103 = sub i32 %add108, %div101195
  %add109 = add i32 %add103, %div106196
  %add110 = add nsw i32 %div, 1024
  %mul111 = mul nsw i32 %add109, %add110
  %div112 = sdiv i32 %mul111, 2048
  %add86 = add i32 %27, %add
  %add83 = add i32 %add86, %sub81
  %add82 = add i32 %add83, %28
  %add84 = add i32 %add82, %29
  %add85 = add i32 %add84, %30
  %add87 = add i32 %add85, %31
  %add92 = add nsw i32 %add87, %div91
  %add97 = add nsw i32 %add92, %div96
  %add113 = add nsw i32 %add97, %div112
  %cmp.i199 = icmp slt i32 %add51, 11
  %cmp1.i = icmp slt i32 %add66, 11
  %or.cond.i = and i1 %cmp.i199, %cmp1.i
  br i1 %or.cond.i, label %if.then.i, label %_ZL16opposite_bishopsP7state_tiii.exit

if.then.i:                                        ; preds = %if.end37
  %38 = load i32, ptr %arrayidx39, align 4, !tbaa !7
  %39 = load i32, ptr %arrayidx53, align 8, !tbaa !7
  %cmp8.i = icmp eq i32 %38, 1
  %40 = icmp eq i32 %39, 1
  %or.cond34.i = and i1 %cmp8.i, %40
  br i1 %or.cond34.i, label %land.lhs.true9.i, label %_ZL16opposite_bishopsP7state_tiii.exit

land.lhs.true9.i:                                 ; preds = %if.then.i
  %arrayidx10.i = getelementptr inbounds nuw i8, ptr %s, i64 376
  %41 = load i64, ptr %arrayidx10.i, align 8, !tbaa !22
  %arrayidx12.i = getelementptr inbounds nuw i8, ptr %s, i64 384
  %42 = load i64, ptr %arrayidx12.i, align 8, !tbaa !22
  %or.i = or i64 %42, %41
  %43 = load i64, ptr @WhiteSqMask, align 8, !tbaa !22
  %and.i = and i64 %or.i, %43
  %call.i = call noundef i32 @_Z8PopCounty(i64 noundef %and.i)
  %cmp13.i = icmp eq i32 %call.i, 1
  br i1 %cmp13.i, label %if.then14.i, label %_ZL16opposite_bishopsP7state_tiii.exit

if.then14.i:                                      ; preds = %land.lhs.true9.i
  %44 = load i32, ptr %Material, align 8, !tbaa !0
  %45 = call i32 @llvm.abs.i32(i32 %44, i1 true)
  %cmp15.i = icmp samesign ult i32 %45, 171
  br i1 %cmp15.i, label %if.then16.i, label %_ZL16opposite_bishopsP7state_tiii.exit

if.then16.i:                                      ; preds = %if.then14.i
  %cmp17.i = icmp sgt i32 %add51, 4
  %cmp18.i = icmp sgt i32 %add66, 4
  %or.cond24.i = or i1 %cmp17.i, %cmp18.i
  br i1 %or.cond24.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.then16.i
  %mul.i = mul nsw i32 %add113, 3
  %shr.i = ashr i32 %mul.i, 2
  br label %_ZL16opposite_bishopsP7state_tiii.exit

if.else.i:                                        ; preds = %if.then16.i
  %shr20.i = ashr i32 %add113, 1
  br label %_ZL16opposite_bishopsP7state_tiii.exit

_ZL16opposite_bishopsP7state_tiii.exit:           ; preds = %if.else.i, %if.then19.i, %if.then14.i, %land.lhs.true9.i, %if.then.i, %if.end37
  %score.addr.0.i = phi i32 [ %shr.i, %if.then19.i ], [ %shr20.i, %if.else.i ], [ %add113, %if.then14.i ], [ %add113, %land.lhs.true9.i ], [ %add113, %if.then.i ], [ %add113, %if.end37 ]
  %call115 = call noundef i32 @_Z14drawn_endgamesP7state_tiii(ptr noundef nonnull %s, i32 noundef %score.addr.0.i, i32 noundef %.sroa.speculated202, i32 noundef %.sroa.speculated)
  %sub116 = sub nsw i32 %call115, %add
  %plyeval117 = getelementptr inbounds nuw i8, ptr %s, i64 2800
  %ply118 = getelementptr inbounds nuw i8, ptr %s, i64 472
  %46 = load i32, ptr %ply118, align 8, !tbaa !9
  %idxprom119 = sext i32 %46 to i64
  %arrayidx120 = getelementptr inbounds i32, ptr %plyeval117, i64 %idxprom119
  store i32 %sub116, ptr %arrayidx120, align 4, !tbaa !7
  %47 = load i32, ptr %white_to_move71, align 4, !tbaa !8
  %tobool122.not = icmp eq i32 %47, 0
  %sub125 = sub nsw i32 0, %call115
  %retval.0 = select i1 %tobool122.not, i32 %sub125, i32 %call115
  br label %cleanup127

cleanup127:                                       ; preds = %_ZL16opposite_bishopsP7state_tiii.exit, %if.else30, %if.end
  %retval.1 = phi i32 [ %retval.0, %_ZL16opposite_bishopsP7state_tiii.exit ], [ %add27, %if.end ], [ %sub31, %if.else30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %ec) #6
  ret i32 %retval.1
}

declare noundef i32 @_Z14drawn_endgamesP7state_tiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_Z8PopCounty(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!0 = !{!1, !2, i64 392}
!1 = !{!"_ZTS7state_t", !2, i64 0, !3, i64 4, !5, i64 264, !5, i64 272, !5, i64 280, !3, i64 288, !2, i64 392, !2, i64 396, !3, i64 400, !2, i64 452, !2, i64 456, !2, i64 460, !2, i64 464, !2, i64 468, !2, i64 472, !2, i64 476, !5, i64 480, !5, i64 488, !3, i64 496, !3, i64 2544, !3, i64 2800, !3, i64 3056, !5, i64 4080, !5, i64 4088, !2, i64 4096, !3, i64 4100, !2, i64 4356, !2, i64 4360, !2, i64 4364, !2, i64 4368, !2, i64 4372, !2, i64 4376, !2, i64 4380, !2, i64 4384, !2, i64 4388, !2, i64 4392, !3, i64 4400}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"long long", !3, i64 0}
!6 = !{!1, !2, i64 396}
!7 = !{!2, !2, i64 0}
!8 = !{!1, !2, i64 460}
!9 = !{!1, !2, i64 472}
!10 = !{!11, !2, i64 0}
!11 = !{!"_ZTS12t_eval_comps", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40}
!12 = !{!11, !2, i64 4}
!13 = !{!11, !2, i64 40}
!14 = !{!11, !2, i64 8}
!15 = !{!11, !2, i64 12}
!16 = !{!11, !2, i64 24}
!17 = !{!11, !2, i64 28}
!18 = !{!11, !2, i64 16}
!19 = !{!11, !2, i64 20}
!20 = !{!11, !2, i64 32}
!21 = !{!11, !2, i64 36}
!22 = !{!5, !5, i64 0}
