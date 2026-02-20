; ModuleID = '/tmp/tmp.YyegF2tprr/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/FastBoard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.boost::array.4" = type { [4 x i32] }

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare dso_local void @_ZN9FastBoard13add_neighbourEii(ptr noundef nonnull align 8 captures(none) dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9FastBoard16update_board_eyeEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %color, i32 noundef %i) local_unnamed_addr #2 align 2 {
entry:
  %nbr_pars.i = alloca %"class.boost::array.4", align 4
  %m_square = getelementptr inbounds nuw i8, ptr %this, i64 1776
  %conv = sext i32 %i to i64
  %arrayidx.i = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv
  store i32 %color, ptr %arrayidx.i, align 4, !tbaa !0
  %conv2 = trunc i32 %i to i16
  %m_next = getelementptr inbounds nuw i8, ptr %this, i64 3540
  %arrayidx.i70 = getelementptr inbounds nuw i16, ptr %m_next, i64 %conv
  store i16 %conv2, ptr %arrayidx.i70, align 2, !tbaa !4
  %m_parent = getelementptr inbounds nuw i8, ptr %this, i64 4424
  %arrayidx.i71 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv
  store i16 %conv2, ptr %arrayidx.i71, align 2, !tbaa !4
  %m_libs = getelementptr inbounds nuw i8, ptr %this, i64 5308
  %arrayidx.i72 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv
  store i16 0, ptr %arrayidx.i72, align 2, !tbaa !4
  %m_stones = getelementptr inbounds nuw i8, ptr %this, i64 6192
  %arrayidx.i73 = getelementptr inbounds nuw i16, ptr %m_stones, i64 %conv
  store i16 1, ptr %arrayidx.i73, align 2, !tbaa !4
  %m_totalstones = getelementptr inbounds nuw i8, ptr %this, i64 8016
  %conv12 = sext i32 %color to i64
  %arrayidx.i74 = getelementptr inbounds nuw i32, ptr %m_totalstones, i64 %conv12
  %0 = load i32, ptr %arrayidx.i74, align 4, !tbaa !6
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %arrayidx.i74, align 4, !tbaa !6
  tail call void @_ZN9FastBoard13add_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %i, i32 noundef %color)
  %m_dirs = getelementptr inbounds nuw i8, ptr %this, i64 7960
  %m_empty_cnt.i = getelementptr inbounds nuw i8, ptr %this, i64 1764
  %m_empty_idx.i = getelementptr inbounds nuw i8, ptr %this, i64 882
  %m_neighbours.i = getelementptr inbounds nuw i8, ptr %this, i64 7076
  %1 = load i32, ptr %m_dirs, align 4
  %arrayidx.i.1.i = getelementptr inbounds nuw i8, ptr %this, i64 7964
  %2 = load i32, ptr %arrayidx.i.1.i, align 4
  %arrayidx.i.2.i = getelementptr inbounds nuw i8, ptr %this, i64 7968
  %3 = load i32, ptr %arrayidx.i.2.i, align 4
  %arrayidx.i.3.i = getelementptr inbounds nuw i8, ptr %this, i64 7972
  %4 = load i32, ptr %arrayidx.i.3.i, align 4
  %arrayidx.i51.1.i = getelementptr inbounds nuw i8, ptr %nbr_pars.i, i64 4
  %m_empty_cnt.i.promoted90 = load i32, ptr %m_empty_cnt.i, align 4
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end
  %captured_stones.1.lcssa = phi i32 [ %captured_stones.1, %if.end ]
  %captured_sq.1.lcssa = phi i32 [ %captured_sq.1, %if.end ]
  %m_empty_cnt = getelementptr inbounds nuw i8, ptr %this, i64 1764
  %5 = load i32, ptr %m_empty_cnt, align 4, !tbaa !8
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %m_empty_cnt, align 4, !tbaa !8
  %conv27 = sext i32 %dec to i64
  %arrayidx.i75 = getelementptr inbounds nuw i16, ptr %this, i64 %conv27
  %6 = load i16, ptr %arrayidx.i75, align 2, !tbaa !4
  %m_empty_idx = getelementptr inbounds nuw i8, ptr %this, i64 882
  %arrayidx.i76 = getelementptr inbounds nuw i16, ptr %m_empty_idx, i64 %conv
  %7 = load i16, ptr %arrayidx.i76, align 2, !tbaa !4
  %conv33 = zext i16 %6 to i64
  %arrayidx.i77 = getelementptr inbounds nuw i16, ptr %m_empty_idx, i64 %conv33
  store i16 %7, ptr %arrayidx.i77, align 2, !tbaa !4
  %8 = load i16, ptr %arrayidx.i76, align 2, !tbaa !4
  %conv40 = zext i16 %8 to i64
  %arrayidx.i79 = getelementptr inbounds nuw i16, ptr %this, i64 %conv40
  store i16 %6, ptr %arrayidx.i79, align 2, !tbaa !4
  %m_prisoners = getelementptr inbounds nuw i8, ptr %this, i64 8008
  %arrayidx.i80 = getelementptr inbounds nuw i32, ptr %m_prisoners, i64 %conv12
  %9 = load i32, ptr %arrayidx.i80, align 4, !tbaa !6
  %add44 = add nsw i32 %9, %captured_stones.1.lcssa
  store i32 %add44, ptr %arrayidx.i80, align 4, !tbaa !6
  %cmp45 = icmp eq i32 %captured_stones.1.lcssa, 1
  %captured_sq.0. = select i1 %cmp45, i32 %captured_sq.1.lcssa, i32 -1
  ret i32 %captured_sq.0.

for.body:                                         ; preds = %if.end, %entry
  %indvars.iv94 = phi i64 [ 0, %entry ], [ %indvars.iv.next95, %if.end ]
  %inc.i.lcssa92 = phi i32 [ %m_empty_cnt.i.promoted90, %entry ], [ %inc.i.lcssa91, %if.end ]
  %captured_sq.089 = phi i32 [ undef, %entry ], [ %captured_sq.1, %if.end ]
  %captured_stones.088 = phi i32 [ 0, %entry ], [ %captured_stones.1, %if.end ]
  %arrayidx.i81 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 %indvars.iv94
  %10 = load i32, ptr %arrayidx.i81, align 4, !tbaa !6
  %add = add nsw i32 %10, %i
  %conv18 = sext i32 %add to i64
  %arrayidx.i82 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv18
  %11 = load i16, ptr %arrayidx.i82, align 2, !tbaa !4
  %conv20 = zext i16 %11 to i64
  %arrayidx.i83 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv20
  %12 = load i16, ptr %arrayidx.i83, align 2, !tbaa !4
  %cmp23 = icmp eq i16 %12, 0
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %arrayidx.i.i = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv18
  %13 = load i32, ptr %arrayidx.i.i, align 4, !tbaa !0
  %conv7.i = sext i32 %13 to i64
  %arrayidx.i33.i = getelementptr inbounds nuw i32, ptr %m_totalstones, i64 %conv7.i
  %mul.i = shl nsw i32 %13, 2
  %shl.neg.i = shl nsw i32 -1, %mul.i
  %14 = trunc i32 %shl.neg.i to i16
  %15 = add i16 %14, 256
  %arrayidx.i33.i.promoted = load i32, ptr %arrayidx.i33.i, align 4, !tbaa !6
  %16 = sext i32 %inc.i.lcssa92 to i64
  br label %do.body.i

do.body.i:                                        ; preds = %_ZN9FastBoard16remove_neighbourEii.exit, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN9FastBoard16remove_neighbourEii.exit ], [ %16, %if.then ]
  %dec.i85 = phi i32 [ %arrayidx.i33.i.promoted, %if.then ], [ %dec.i, %_ZN9FastBoard16remove_neighbourEii.exit ]
  %removed.0.i = phi i32 [ 0, %if.then ], [ %inc17.i, %_ZN9FastBoard16remove_neighbourEii.exit ]
  %pos.0.i = phi i32 [ %add, %if.then ], [ %conv20.i, %_ZN9FastBoard16remove_neighbourEii.exit ]
  %conv3.i = sext i32 %pos.0.i to i64
  %arrayidx.i31.i = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv3.i
  store i32 2, ptr %arrayidx.i31.i, align 4, !tbaa !0
  %arrayidx.i32.i = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv3.i
  store i16 441, ptr %arrayidx.i32.i, align 2, !tbaa !4
  %dec.i = add nsw i32 %dec.i85, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %nbr_pars.i) #3
  %add.i = add nsw i32 %1, %pos.0.i
  %conv2.i = sext i32 %add.i to i64
  %arrayidx.i45.i = getelementptr inbounds nuw i16, ptr %m_neighbours.i, i64 %conv2.i
  %17 = load i16, ptr %arrayidx.i45.i, align 2, !tbaa !4
  %conv6.i = add i16 %17, %15
  store i16 %conv6.i, ptr %arrayidx.i45.i, align 2, !tbaa !4
  %arrayidx.i48.i = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv2.i
  %18 = load i16, ptr %arrayidx.i48.i, align 2, !tbaa !4
  %conv22.i = zext i16 %18 to i64
  %arrayidx.i49.i = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv22.i
  %19 = load i16, ptr %arrayidx.i49.i, align 2, !tbaa !4
  %inc24.i = add i16 %19, 1
  store i16 %inc24.i, ptr %arrayidx.i49.i, align 2, !tbaa !4
  %20 = load i16, ptr %arrayidx.i48.i, align 2, !tbaa !4
  %conv28.i = zext i16 %20 to i32
  store i32 %conv28.i, ptr %nbr_pars.i, align 4, !tbaa !6
  %add.1.i = add nsw i32 %2, %pos.0.i
  %conv2.1.i = sext i32 %add.1.i to i64
  %arrayidx.i45.1.i = getelementptr inbounds nuw i16, ptr %m_neighbours.i, i64 %conv2.1.i
  %21 = load i16, ptr %arrayidx.i45.1.i, align 2, !tbaa !4
  %conv6.1.i = add i16 %21, %15
  store i16 %conv6.1.i, ptr %arrayidx.i45.1.i, align 2, !tbaa !4
  %arrayidx.i47.1.i = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv2.1.i
  %22 = load i16, ptr %arrayidx.i47.1.i, align 2, !tbaa !4
  %cmp17.1.i = icmp eq i16 %20, %22
  br i1 %cmp17.1.i, label %for.body11.lr.ph.2.i, label %if.then18.1.i

if.then18.1.i:                                    ; preds = %do.body.i
  %conv22.1.i = zext i16 %22 to i64
  %arrayidx.i49.1.i = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv22.1.i
  %23 = load i16, ptr %arrayidx.i49.1.i, align 2, !tbaa !4
  %inc24.1.i = add i16 %23, 1
  store i16 %inc24.1.i, ptr %arrayidx.i49.1.i, align 2, !tbaa !4
  %24 = load i16, ptr %arrayidx.i47.1.i, align 2, !tbaa !4
  %conv28.1.i = zext i16 %24 to i32
  store i32 %conv28.1.i, ptr %arrayidx.i51.1.i, align 4, !tbaa !6
  br label %for.body11.lr.ph.2.i

for.body11.lr.ph.2.i:                             ; preds = %if.then18.1.i, %do.body.i
  %phiofops.i = phi i32 [ 3, %if.then18.1.i ], [ 2, %do.body.i ]
  %nbr_par_cnt.1.1.i = phi i32 [ 2, %if.then18.1.i ], [ 1, %do.body.i ]
  %add.2.i = add nsw i32 %3, %pos.0.i
  %conv2.2.i = sext i32 %add.2.i to i64
  %arrayidx.i45.2.i = getelementptr inbounds nuw i16, ptr %m_neighbours.i, i64 %conv2.2.i
  %25 = load i16, ptr %arrayidx.i45.2.i, align 2, !tbaa !4
  %conv6.2.i = add i16 %25, %15
  store i16 %conv6.2.i, ptr %arrayidx.i45.2.i, align 2, !tbaa !4
  %arrayidx.i47.2.i = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv2.2.i
  %26 = load i16, ptr %arrayidx.i47.2.i, align 2, !tbaa !4
  %conv16.2.i = zext i16 %26 to i32
  %wide.trip.count.2.i = zext nneg i32 %nbr_par_cnt.1.1.i to i64
  br label %for.body11.2.i

for.body11.2.i:                                   ; preds = %for.cond8.2.i, %for.body11.lr.ph.2.i
  %indvars.iv.2.i = phi i64 [ 0, %for.body11.lr.ph.2.i ], [ %indvars.iv.next.2.i, %for.cond8.2.i ]
  %arrayidx.i46.2.i = getelementptr inbounds nuw i32, ptr %nbr_pars.i, i64 %indvars.iv.2.i
  %27 = load i32, ptr %arrayidx.i46.2.i, align 4, !tbaa !6
  %cmp17.2.i = icmp eq i32 %27, %conv16.2.i
  br i1 %cmp17.2.i, label %for.body11.lr.ph.3.i.loopexit, label %for.cond8.2.i

for.cond8.2.i:                                    ; preds = %for.body11.2.i
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next.2.i, %wide.trip.count.2.i
  br i1 %exitcond.2.not.i, label %if.then18.2.i, label %for.body11.2.i, !llvm.loop !22

if.then18.2.i:                                    ; preds = %for.cond8.2.i
  %conv22.2.i = zext i16 %26 to i64
  %arrayidx.i49.2.i = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv22.2.i
  %28 = load i16, ptr %arrayidx.i49.2.i, align 2, !tbaa !4
  %inc24.2.i = add i16 %28, 1
  store i16 %inc24.2.i, ptr %arrayidx.i49.2.i, align 2, !tbaa !4
  %29 = load i16, ptr %arrayidx.i47.2.i, align 2, !tbaa !4
  %conv28.2.i = zext i16 %29 to i32
  %arrayidx.i51.2.i = getelementptr inbounds nuw i32, ptr %nbr_pars.i, i64 %wide.trip.count.2.i
  store i32 %conv28.2.i, ptr %arrayidx.i51.2.i, align 4, !tbaa !6
  br label %for.body11.lr.ph.3.i

for.body11.lr.ph.3.i.loopexit:                    ; preds = %for.body11.2.i
  br label %for.body11.lr.ph.3.i

for.body11.lr.ph.3.i:                             ; preds = %for.body11.lr.ph.3.i.loopexit, %if.then18.2.i
  %nbr_par_cnt.1.2.i = phi i32 [ %phiofops.i, %if.then18.2.i ], [ %nbr_par_cnt.1.1.i, %for.body11.lr.ph.3.i.loopexit ]
  %add.3.i = add nsw i32 %4, %pos.0.i
  %conv2.3.i = sext i32 %add.3.i to i64
  %arrayidx.i45.3.i = getelementptr inbounds nuw i16, ptr %m_neighbours.i, i64 %conv2.3.i
  %30 = load i16, ptr %arrayidx.i45.3.i, align 2, !tbaa !4
  %conv6.3.i = add i16 %30, %15
  store i16 %conv6.3.i, ptr %arrayidx.i45.3.i, align 2, !tbaa !4
  %arrayidx.i47.3.i = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv2.3.i
  %31 = load i16, ptr %arrayidx.i47.3.i, align 2, !tbaa !4
  %conv16.3.i = zext i16 %31 to i32
  %wide.trip.count.3.i = zext nneg i32 %nbr_par_cnt.1.2.i to i64
  br label %for.body11.3.i

for.body11.3.i:                                   ; preds = %for.cond8.3.i, %for.body11.lr.ph.3.i
  %indvars.iv.3.i = phi i64 [ 0, %for.body11.lr.ph.3.i ], [ %indvars.iv.next.3.i, %for.cond8.3.i ]
  %arrayidx.i46.3.i = getelementptr inbounds nuw i32, ptr %nbr_pars.i, i64 %indvars.iv.3.i
  %32 = load i32, ptr %arrayidx.i46.3.i, align 4, !tbaa !6
  %cmp17.3.i = icmp eq i32 %32, %conv16.3.i
  br i1 %cmp17.3.i, label %_ZN9FastBoard16remove_neighbourEii.exit.loopexit, label %for.cond8.3.i

for.cond8.3.i:                                    ; preds = %for.body11.3.i
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.next.3.i, %wide.trip.count.3.i
  br i1 %exitcond.3.not.i, label %if.then18.3.i, label %for.body11.3.i, !llvm.loop !22

if.then18.3.i:                                    ; preds = %for.cond8.3.i
  %conv22.3.i = zext i16 %31 to i64
  %arrayidx.i49.3.i = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv22.3.i
  %33 = load i16, ptr %arrayidx.i49.3.i, align 2, !tbaa !4
  %inc24.3.i = add i16 %33, 1
  store i16 %inc24.3.i, ptr %arrayidx.i49.3.i, align 2, !tbaa !4
  br label %_ZN9FastBoard16remove_neighbourEii.exit

_ZN9FastBoard16remove_neighbourEii.exit.loopexit: ; preds = %for.body11.3.i
  br label %_ZN9FastBoard16remove_neighbourEii.exit

_ZN9FastBoard16remove_neighbourEii.exit:          ; preds = %_ZN9FastBoard16remove_neighbourEii.exit.loopexit, %if.then18.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %nbr_pars.i) #3
  %34 = trunc nsw i64 %indvars.iv to i32
  %conv9.i = trunc i32 %34 to i16
  %arrayidx.i34.i = getelementptr inbounds nuw i16, ptr %m_empty_idx.i, i64 %conv3.i
  store i16 %conv9.i, ptr %arrayidx.i34.i, align 2, !tbaa !4
  %conv12.i = trunc i32 %pos.0.i to i16
  %arrayidx.i35.i = getelementptr inbounds nuw i16, ptr %this, i64 %indvars.iv
  store i16 %conv12.i, ptr %arrayidx.i35.i, align 2, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %inc17.i = add nuw nsw i32 %removed.0.i, 1
  %arrayidx.i36.i = getelementptr inbounds nuw i16, ptr %m_next, i64 %conv3.i
  %35 = load i16, ptr %arrayidx.i36.i, align 2, !tbaa !4
  %conv20.i = zext i16 %35 to i32
  %cmp.not.i = icmp eq i32 %add, %conv20.i
  br i1 %cmp.not.i, label %_ZN9FastBoard18remove_string_fastEi.exit, label %do.body.i, !llvm.loop !24

_ZN9FastBoard18remove_string_fastEi.exit:         ; preds = %_ZN9FastBoard16remove_neighbourEii.exit
  %inc.i.lcssa.wide = phi i64 [ %indvars.iv.next, %_ZN9FastBoard16remove_neighbourEii.exit ]
  %inc17.i.lcssa = phi i32 [ %inc17.i, %_ZN9FastBoard16remove_neighbourEii.exit ]
  %dec.i.lcssa = phi i32 [ %dec.i, %_ZN9FastBoard16remove_neighbourEii.exit ]
  %36 = trunc nsw i64 %inc.i.lcssa.wide to i32
  store i32 %dec.i.lcssa, ptr %arrayidx.i33.i, align 4, !tbaa !6
  store i32 %36, ptr %m_empty_cnt.i, align 4, !tbaa !8
  %add25 = add nsw i32 %inc17.i.lcssa, %captured_stones.088
  br label %if.end

if.end:                                           ; preds = %_ZN9FastBoard18remove_string_fastEi.exit, %for.body
  %inc.i.lcssa91 = phi i32 [ %36, %_ZN9FastBoard18remove_string_fastEi.exit ], [ %inc.i.lcssa92, %for.body ]
  %captured_stones.1 = phi i32 [ %add25, %_ZN9FastBoard18remove_string_fastEi.exit ], [ %captured_stones.088, %for.body ]
  %captured_sq.1 = phi i32 [ %add, %_ZN9FastBoard18remove_string_fastEi.exit ], [ %captured_sq.089, %for.body ]
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond = icmp ne i64 %indvars.iv.next95, 4
  br i1 %exitcond, label %for.body, label %for.cond.cleanup, !llvm.loop !25
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!0 = !{!1, !1, i64 0}
!1 = !{!"_ZTSN9FastBoard8square_tE", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"short", !2, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !2, i64 0}
!8 = !{!9, !7, i64 1764}
!9 = !{!"_ZTS9FastBoard", !10, i64 0, !10, i64 882, !7, i64 1764, !7, i64 1768, !7, i64 1772, !11, i64 1776, !12, i64 3540, !12, i64 4424, !12, i64 5308, !12, i64 6192, !10, i64 7076, !13, i64 7960, !14, i64 7976, !15, i64 8008, !15, i64 8016, !16, i64 8024, !7, i64 8048}
!10 = !{!"_ZTSN5boost5arrayItLm441EEE", !2, i64 0}
!11 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !2, i64 0}
!12 = !{!"_ZTSN5boost5arrayItLm442EEE", !2, i64 0}
!13 = !{!"_ZTSN5boost5arrayIiLm4EEE", !2, i64 0}
!14 = !{!"_ZTSN5boost5arrayIiLm8EEE", !2, i64 0}
!15 = !{!"_ZTSN5boost5arrayIiLm2EEE", !2, i64 0}
!16 = !{!"_ZTSSt6vectorIiSaIiEE", !17, i64 0}
!17 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !18, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !19, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!20 = !{!"p1 int", !21, i64 0}
!21 = !{!"any pointer", !2, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
