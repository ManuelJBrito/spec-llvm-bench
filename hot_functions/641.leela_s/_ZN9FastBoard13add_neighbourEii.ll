; ModuleID = '/tmp/tmp.tgdVYqSIzc/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/FastBoard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.boost::array.4" = type { [4 x i32] }

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9FastBoard13add_neighbourEii(ptr noundef nonnull align 8 captures(none) dereferenceable(8052) %this, i32 noundef %i, i32 noundef %color) local_unnamed_addr #1 align 2 {
entry:
  %nbr_pars = alloca %"class.boost::array.4", align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %nbr_pars) #2
  %m_dirs = getelementptr inbounds nuw i8, ptr %this, i64 7960
  %mul = shl nsw i32 %color, 2
  %shl = shl nuw i32 1, %mul
  %m_neighbours = getelementptr inbounds nuw i8, ptr %this, i64 7076
  %0 = trunc i32 %shl to i16
  %1 = add nsw i16 %0, -256
  %m_parent = getelementptr inbounds nuw i8, ptr %this, i64 4424
  %m_libs = getelementptr inbounds nuw i8, ptr %this, i64 5308
  %m_parent19 = getelementptr inbounds nuw i8, ptr %this, i64 4424
  br label %for.body

for.body:                                         ; preds = %entry
  %2 = load i32, ptr %m_dirs, align 4, !tbaa !0
  %add = add nsw i32 %2, %i
  %conv2 = sext i32 %add to i64
  %arrayidx.i44 = getelementptr inbounds nuw i16, ptr %m_neighbours, i64 %conv2
  %3 = load i16, ptr %arrayidx.i44, align 2, !tbaa !4
  %conv6 = add i16 %1, %3
  store i16 %conv6, ptr %arrayidx.i44, align 2, !tbaa !4
  br i1 false, label %for.body11.lr.ph, label %if.then18

for.body11.lr.ph:                                 ; preds = %for.body
  %arrayidx.i46 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv2
  %4 = load i16, ptr %arrayidx.i46, align 2, !tbaa !4
  %conv16 = zext i16 %4 to i32
  br label %for.body11

for.cond8:                                        ; preds = %for.body11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 true, label %for.body11, label %if.then18.loopexit, !llvm.loop !6

for.body11:                                       ; preds = %for.cond8, %for.body11.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next, %for.cond8 ]
  %arrayidx.i45 = getelementptr inbounds nuw i32, ptr %nbr_pars, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx.i45, align 4, !tbaa !0
  %cmp17 = icmp eq i32 %5, %conv16
  br i1 %cmp17, label %if.end31.loopexit, label %for.cond8

if.then18.loopexit:                               ; preds = %for.cond8
  br label %if.then18

if.then18:                                        ; preds = %if.then18.loopexit, %for.body
  %arrayidx.i47 = getelementptr inbounds nuw i16, ptr %m_parent19, i64 %conv2
  %6 = load i16, ptr %arrayidx.i47, align 2, !tbaa !4
  %conv22 = zext i16 %6 to i64
  %arrayidx.i48 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv22
  %7 = load i16, ptr %arrayidx.i48, align 2, !tbaa !4
  %dec = add i16 %7, -1
  store i16 %dec, ptr %arrayidx.i48, align 2, !tbaa !4
  %8 = load i16, ptr %arrayidx.i47, align 2, !tbaa !4
  %conv27 = zext i16 %8 to i32
  store i32 %conv27, ptr %nbr_pars, align 4, !tbaa !0
  br label %if.end31

if.end31.loopexit:                                ; preds = %for.body11
  br label %if.end31

if.end31:                                         ; preds = %if.end31.loopexit, %if.then18
  %nbr_par_cnt.1 = phi i32 [ 1, %if.then18 ], [ 0, %if.end31.loopexit ]
  %arrayidx.i.1 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 1
  %9 = load i32, ptr %arrayidx.i.1, align 4, !tbaa !0
  %add.1 = add nsw i32 %9, %i
  %conv2.1 = sext i32 %add.1 to i64
  %arrayidx.i44.1 = getelementptr inbounds nuw i16, ptr %m_neighbours, i64 %conv2.1
  %10 = load i16, ptr %arrayidx.i44.1, align 2, !tbaa !4
  %conv6.1 = add i16 %1, %10
  store i16 %conv6.1, ptr %arrayidx.i44.1, align 2, !tbaa !4
  %cmp951.1 = icmp sgt i32 %nbr_par_cnt.1, 0
  br i1 %cmp951.1, label %for.body11.lr.ph.1, label %if.then18.1

for.body11.lr.ph.1:                               ; preds = %if.end31
  %arrayidx.i46.1 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv2.1
  %11 = load i16, ptr %arrayidx.i46.1, align 2, !tbaa !4
  %conv16.1 = zext i16 %11 to i32
  br label %for.body11.1

for.body11.1:                                     ; preds = %for.body11.lr.ph.1
  %12 = load i32, ptr %nbr_pars, align 4, !tbaa !0
  %cmp17.1 = icmp eq i32 %12, %conv16.1
  br i1 %cmp17.1, label %if.end31.loopexit.1, label %for.cond8.1

for.cond8.1:                                      ; preds = %for.body11.1
  br label %if.then18.loopexit.1

if.then18.loopexit.1:                             ; preds = %for.cond8.1
  br label %if.then18.1

if.then18.1:                                      ; preds = %if.then18.loopexit.1, %if.end31
  %arrayidx.i47.1 = getelementptr inbounds nuw i16, ptr %m_parent19, i64 %conv2.1
  %13 = load i16, ptr %arrayidx.i47.1, align 2, !tbaa !4
  %conv22.1 = zext i16 %13 to i64
  %arrayidx.i48.1 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv22.1
  %14 = load i16, ptr %arrayidx.i48.1, align 2, !tbaa !4
  %dec.1 = add i16 %14, -1
  store i16 %dec.1, ptr %arrayidx.i48.1, align 2, !tbaa !4
  %15 = load i16, ptr %arrayidx.i47.1, align 2, !tbaa !4
  %conv27.1 = zext i16 %15 to i32
  %inc28.1 = add nsw i32 %nbr_par_cnt.1, 1
  %conv29.1 = sext i32 %nbr_par_cnt.1 to i64
  %arrayidx.i50.1 = getelementptr inbounds nuw i32, ptr %nbr_pars, i64 %conv29.1
  store i32 %conv27.1, ptr %arrayidx.i50.1, align 4, !tbaa !0
  br label %if.end31.1

if.end31.loopexit.1:                              ; preds = %for.body11.1
  br label %if.end31.1

if.end31.1:                                       ; preds = %if.end31.loopexit.1, %if.then18.1
  %nbr_par_cnt.1.1 = phi i32 [ %inc28.1, %if.then18.1 ], [ %nbr_par_cnt.1, %if.end31.loopexit.1 ]
  %arrayidx.i.2 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 2
  %16 = load i32, ptr %arrayidx.i.2, align 4, !tbaa !0
  %add.2 = add nsw i32 %16, %i
  %conv2.2 = sext i32 %add.2 to i64
  %arrayidx.i44.2 = getelementptr inbounds nuw i16, ptr %m_neighbours, i64 %conv2.2
  %17 = load i16, ptr %arrayidx.i44.2, align 2, !tbaa !4
  %conv6.2 = add i16 %1, %17
  store i16 %conv6.2, ptr %arrayidx.i44.2, align 2, !tbaa !4
  %cmp951.2 = icmp sgt i32 %nbr_par_cnt.1.1, 0
  br i1 %cmp951.2, label %for.body11.lr.ph.2, label %if.then18.2

for.body11.lr.ph.2:                               ; preds = %if.end31.1
  %arrayidx.i46.2 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv2.2
  %18 = load i16, ptr %arrayidx.i46.2, align 2, !tbaa !4
  %conv16.2 = zext i16 %18 to i32
  %wide.trip.count.2 = zext i32 %nbr_par_cnt.1.1 to i64
  br label %for.body11.2

for.body11.2:                                     ; preds = %for.cond8.2, %for.body11.lr.ph.2
  %indvars.iv.2 = phi i64 [ 0, %for.body11.lr.ph.2 ], [ %indvars.iv.next.2, %for.cond8.2 ]
  %arrayidx.i45.2 = getelementptr inbounds nuw i32, ptr %nbr_pars, i64 %indvars.iv.2
  %19 = load i32, ptr %arrayidx.i45.2, align 4, !tbaa !0
  %cmp17.2 = icmp eq i32 %19, %conv16.2
  br i1 %cmp17.2, label %if.end31.loopexit.2, label %for.cond8.2

for.cond8.2:                                      ; preds = %for.body11.2
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp ne i64 %indvars.iv.next.2, %wide.trip.count.2
  br i1 %exitcond.2, label %for.body11.2, label %if.then18.loopexit.2, !llvm.loop !6

if.then18.loopexit.2:                             ; preds = %for.cond8.2
  br label %if.then18.2

if.then18.2:                                      ; preds = %if.then18.loopexit.2, %if.end31.1
  %arrayidx.i47.2 = getelementptr inbounds nuw i16, ptr %m_parent19, i64 %conv2.2
  %20 = load i16, ptr %arrayidx.i47.2, align 2, !tbaa !4
  %conv22.2 = zext i16 %20 to i64
  %arrayidx.i48.2 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv22.2
  %21 = load i16, ptr %arrayidx.i48.2, align 2, !tbaa !4
  %dec.2 = add i16 %21, -1
  store i16 %dec.2, ptr %arrayidx.i48.2, align 2, !tbaa !4
  %22 = load i16, ptr %arrayidx.i47.2, align 2, !tbaa !4
  %conv27.2 = zext i16 %22 to i32
  %inc28.2 = add nsw i32 %nbr_par_cnt.1.1, 1
  %conv29.2 = sext i32 %nbr_par_cnt.1.1 to i64
  %arrayidx.i50.2 = getelementptr inbounds nuw i32, ptr %nbr_pars, i64 %conv29.2
  store i32 %conv27.2, ptr %arrayidx.i50.2, align 4, !tbaa !0
  br label %if.end31.2

if.end31.loopexit.2:                              ; preds = %for.body11.2
  br label %if.end31.2

if.end31.2:                                       ; preds = %if.end31.loopexit.2, %if.then18.2
  %nbr_par_cnt.1.2 = phi i32 [ %inc28.2, %if.then18.2 ], [ %nbr_par_cnt.1.1, %if.end31.loopexit.2 ]
  %arrayidx.i.3 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 3
  %23 = load i32, ptr %arrayidx.i.3, align 4, !tbaa !0
  %add.3 = add nsw i32 %23, %i
  %conv2.3 = sext i32 %add.3 to i64
  %arrayidx.i44.3 = getelementptr inbounds nuw i16, ptr %m_neighbours, i64 %conv2.3
  %24 = load i16, ptr %arrayidx.i44.3, align 2, !tbaa !4
  %conv6.3 = add i16 %1, %24
  store i16 %conv6.3, ptr %arrayidx.i44.3, align 2, !tbaa !4
  %cmp951.3 = icmp sgt i32 %nbr_par_cnt.1.2, 0
  br i1 %cmp951.3, label %for.body11.lr.ph.3, label %if.then18.3

for.body11.lr.ph.3:                               ; preds = %if.end31.2
  %arrayidx.i46.3 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv2.3
  %25 = load i16, ptr %arrayidx.i46.3, align 2, !tbaa !4
  %conv16.3 = zext i16 %25 to i32
  %wide.trip.count.3 = zext i32 %nbr_par_cnt.1.2 to i64
  br label %for.body11.3

for.body11.3:                                     ; preds = %for.cond8.3, %for.body11.lr.ph.3
  %indvars.iv.3 = phi i64 [ 0, %for.body11.lr.ph.3 ], [ %indvars.iv.next.3, %for.cond8.3 ]
  %arrayidx.i45.3 = getelementptr inbounds nuw i32, ptr %nbr_pars, i64 %indvars.iv.3
  %26 = load i32, ptr %arrayidx.i45.3, align 4, !tbaa !0
  %cmp17.3 = icmp eq i32 %26, %conv16.3
  br i1 %cmp17.3, label %if.end31.loopexit.3, label %for.cond8.3

for.cond8.3:                                      ; preds = %for.body11.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3 = icmp ne i64 %indvars.iv.next.3, %wide.trip.count.3
  br i1 %exitcond.3, label %for.body11.3, label %if.then18.loopexit.3, !llvm.loop !6

if.then18.loopexit.3:                             ; preds = %for.cond8.3
  br label %if.then18.3

if.then18.3:                                      ; preds = %if.then18.loopexit.3, %if.end31.2
  %arrayidx.i47.3 = getelementptr inbounds nuw i16, ptr %m_parent19, i64 %conv2.3
  %27 = load i16, ptr %arrayidx.i47.3, align 2, !tbaa !4
  %conv22.3 = zext i16 %27 to i64
  %arrayidx.i48.3 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv22.3
  %28 = load i16, ptr %arrayidx.i48.3, align 2, !tbaa !4
  %dec.3 = add i16 %28, -1
  store i16 %dec.3, ptr %arrayidx.i48.3, align 2, !tbaa !4
  %29 = load i16, ptr %arrayidx.i47.3, align 2, !tbaa !4
  %conv27.3 = zext i16 %29 to i32
  %conv29.3 = sext i32 %nbr_par_cnt.1.2 to i64
  %arrayidx.i50.3 = getelementptr inbounds nuw i32, ptr %nbr_pars, i64 %conv29.3
  store i32 %conv27.3, ptr %arrayidx.i50.3, align 4, !tbaa !0
  br label %if.end31.3

if.end31.loopexit.3:                              ; preds = %for.body11.3
  br label %if.end31.3

if.end31.3:                                       ; preds = %if.end31.loopexit.3, %if.then18.3
  call void @llvm.lifetime.end.p0(ptr nonnull %nbr_pars) #2
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!0 = !{!1, !1, i64 0}
!1 = !{!"int", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"short", !2, i64 0}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
