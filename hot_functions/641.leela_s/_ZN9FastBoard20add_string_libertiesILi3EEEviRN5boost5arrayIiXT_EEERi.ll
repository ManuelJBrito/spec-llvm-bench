; ModuleID = '/tmp/tmp.sdmJTov16U/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/FastBoard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %vertex, ptr noundef nonnull align 4 dereferenceable(12) %nbr_libs, ptr noundef nonnull align 4 dereferenceable(4) %nbr_libs_cnt) local_unnamed_addr #0 comdat align 2 {
entry:
  %m_square = getelementptr inbounds nuw i8, ptr %this, i64 1776
  %m_neighbours.i.i = getelementptr inbounds nuw i8, ptr %this, i64 7076
  %m_dirs = getelementptr inbounds nuw i8, ptr %this, i64 7960
  %m_next = getelementptr inbounds nuw i8, ptr %this, i64 3540
  br label %do.body

do.body:                                          ; preds = %if.end36, %entry
  %pos.0 = phi i32 [ %vertex, %entry ], [ %conv39, %if.end36 ]
  %conv.i.i = sext i32 %pos.0 to i64
  %arrayidx.i.i.i = getelementptr inbounds nuw i16, ptr %m_neighbours.i.i, i64 %conv.i.i
  %0 = load i16, ptr %arrayidx.i.i.i, align 2, !tbaa !0
  %1 = and i16 %0, 1792
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end36, label %for.body.preheader

for.body.preheader:                               ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %for.body.preheader
  %2 = load i32, ptr %m_dirs, align 4, !tbaa !4
  %add = add nsw i32 %2, %pos.0
  %conv6 = sext i32 %add to i64
  %arrayidx.i64 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv6
  %3 = load i32, ptr %arrayidx.i64, align 4, !tbaa !6
  %cmp8 = icmp eq i32 %3, 2
  br i1 %cmp8, label %for.cond10.preheader, label %for.inc31

for.cond10.preheader:                             ; preds = %for.body
  %4 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp1170 = icmp sgt i32 %4, 0
  br i1 %cmp1170, label %for.body13.preheader, label %if.then18

for.body13.preheader:                             ; preds = %for.cond10.preheader
  %wide.trip.count = zext i32 %4 to i64
  br label %for.body13

for.cond10:                                       ; preds = %for.body13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.body13, label %if.then18.loopexit, !llvm.loop !8

for.body13:                                       ; preds = %for.cond10, %for.body13.preheader
  %indvars.iv = phi i64 [ 0, %for.body13.preheader ], [ %indvars.iv.next, %for.cond10 ]
  %arrayidx.i65 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx.i65, align 4, !tbaa !4
  %cmp16 = icmp eq i32 %5, %add
  br i1 %cmp16, label %for.inc31.loopexit, label %for.cond10

if.then18.loopexit:                               ; preds = %for.cond10
  br label %if.then18

if.then18:                                        ; preds = %if.then18.loopexit, %for.cond10.preheader
  %inc19 = add nsw i32 %4, 1
  store i32 %inc19, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %conv20 = sext i32 %4 to i64
  %arrayidx.i66 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %conv20
  store i32 %add, ptr %arrayidx.i66, align 4, !tbaa !4
  %6 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp22 = icmp sgt i32 %6, 2
  br i1 %cmp22, label %cleanup41.loopexit, label %for.inc31

for.inc31.loopexit:                               ; preds = %for.body13
  br label %for.inc31

for.inc31:                                        ; preds = %for.inc31.loopexit, %if.then18, %for.body
  %arrayidx.i63.1 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 1
  %7 = load i32, ptr %arrayidx.i63.1, align 4, !tbaa !4
  %add.1 = add nsw i32 %7, %pos.0
  %conv6.1 = sext i32 %add.1 to i64
  %arrayidx.i64.1 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv6.1
  %8 = load i32, ptr %arrayidx.i64.1, align 4, !tbaa !6
  %cmp8.1 = icmp eq i32 %8, 2
  br i1 %cmp8.1, label %for.cond10.preheader.1, label %for.inc31.1

for.cond10.preheader.1:                           ; preds = %for.inc31
  %9 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp1170.1 = icmp sgt i32 %9, 0
  br i1 %cmp1170.1, label %for.body13.preheader.1, label %if.then18.1

for.body13.preheader.1:                           ; preds = %for.cond10.preheader.1
  %wide.trip.count.1 = zext i32 %9 to i64
  br label %for.body13.1

for.body13.1:                                     ; preds = %for.cond10.1, %for.body13.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %for.body13.preheader.1 ], [ %indvars.iv.next.1, %for.cond10.1 ]
  %arrayidx.i65.1 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %indvars.iv.1
  %10 = load i32, ptr %arrayidx.i65.1, align 4, !tbaa !4
  %cmp16.1 = icmp eq i32 %10, %add.1
  br i1 %cmp16.1, label %for.inc31.loopexit.1, label %for.cond10.1

for.cond10.1:                                     ; preds = %for.body13.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1, label %for.body13.1, label %if.then18.loopexit.1, !llvm.loop !8

if.then18.loopexit.1:                             ; preds = %for.cond10.1
  br label %if.then18.1

if.then18.1:                                      ; preds = %if.then18.loopexit.1, %for.cond10.preheader.1
  %inc19.1 = add nsw i32 %9, 1
  store i32 %inc19.1, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %conv20.1 = sext i32 %9 to i64
  %arrayidx.i66.1 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %conv20.1
  store i32 %add.1, ptr %arrayidx.i66.1, align 4, !tbaa !4
  %11 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp22.1 = icmp sgt i32 %11, 2
  br i1 %cmp22.1, label %cleanup41.loopexit, label %for.inc31.1

for.inc31.loopexit.1:                             ; preds = %for.body13.1
  br label %for.inc31.1

for.inc31.1:                                      ; preds = %for.inc31.loopexit.1, %if.then18.1, %for.inc31
  %arrayidx.i63.2 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 2
  %12 = load i32, ptr %arrayidx.i63.2, align 4, !tbaa !4
  %add.2 = add nsw i32 %12, %pos.0
  %conv6.2 = sext i32 %add.2 to i64
  %arrayidx.i64.2 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv6.2
  %13 = load i32, ptr %arrayidx.i64.2, align 4, !tbaa !6
  %cmp8.2 = icmp eq i32 %13, 2
  br i1 %cmp8.2, label %for.cond10.preheader.2, label %for.inc31.2

for.cond10.preheader.2:                           ; preds = %for.inc31.1
  %14 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp1170.2 = icmp sgt i32 %14, 0
  br i1 %cmp1170.2, label %for.body13.preheader.2, label %if.then18.2

for.body13.preheader.2:                           ; preds = %for.cond10.preheader.2
  %wide.trip.count.2 = zext i32 %14 to i64
  br label %for.body13.2

for.body13.2:                                     ; preds = %for.cond10.2, %for.body13.preheader.2
  %indvars.iv.2 = phi i64 [ 0, %for.body13.preheader.2 ], [ %indvars.iv.next.2, %for.cond10.2 ]
  %arrayidx.i65.2 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %indvars.iv.2
  %15 = load i32, ptr %arrayidx.i65.2, align 4, !tbaa !4
  %cmp16.2 = icmp eq i32 %15, %add.2
  br i1 %cmp16.2, label %for.inc31.loopexit.2, label %for.cond10.2

for.cond10.2:                                     ; preds = %for.body13.2
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp ne i64 %indvars.iv.next.2, %wide.trip.count.2
  br i1 %exitcond.2, label %for.body13.2, label %if.then18.loopexit.2, !llvm.loop !8

if.then18.loopexit.2:                             ; preds = %for.cond10.2
  br label %if.then18.2

if.then18.2:                                      ; preds = %if.then18.loopexit.2, %for.cond10.preheader.2
  %inc19.2 = add nsw i32 %14, 1
  store i32 %inc19.2, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %conv20.2 = sext i32 %14 to i64
  %arrayidx.i66.2 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %conv20.2
  store i32 %add.2, ptr %arrayidx.i66.2, align 4, !tbaa !4
  %16 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp22.2 = icmp sgt i32 %16, 2
  br i1 %cmp22.2, label %cleanup41.loopexit, label %for.inc31.2

for.inc31.loopexit.2:                             ; preds = %for.body13.2
  br label %for.inc31.2

for.inc31.2:                                      ; preds = %for.inc31.loopexit.2, %if.then18.2, %for.inc31.1
  %arrayidx.i63.3 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 3
  %17 = load i32, ptr %arrayidx.i63.3, align 4, !tbaa !4
  %add.3 = add nsw i32 %17, %pos.0
  %conv6.3 = sext i32 %add.3 to i64
  %arrayidx.i64.3 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv6.3
  %18 = load i32, ptr %arrayidx.i64.3, align 4, !tbaa !6
  %cmp8.3 = icmp eq i32 %18, 2
  br i1 %cmp8.3, label %for.cond10.preheader.3, label %for.inc31.3

for.cond10.preheader.3:                           ; preds = %for.inc31.2
  %19 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp1170.3 = icmp sgt i32 %19, 0
  br i1 %cmp1170.3, label %for.body13.preheader.3, label %if.then18.3

for.body13.preheader.3:                           ; preds = %for.cond10.preheader.3
  %wide.trip.count.3 = zext i32 %19 to i64
  br label %for.body13.3

for.body13.3:                                     ; preds = %for.cond10.3, %for.body13.preheader.3
  %indvars.iv.3 = phi i64 [ 0, %for.body13.preheader.3 ], [ %indvars.iv.next.3, %for.cond10.3 ]
  %arrayidx.i65.3 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %indvars.iv.3
  %20 = load i32, ptr %arrayidx.i65.3, align 4, !tbaa !4
  %cmp16.3 = icmp eq i32 %20, %add.3
  br i1 %cmp16.3, label %for.inc31.loopexit.3, label %for.cond10.3

for.cond10.3:                                     ; preds = %for.body13.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3 = icmp ne i64 %indvars.iv.next.3, %wide.trip.count.3
  br i1 %exitcond.3, label %for.body13.3, label %if.then18.loopexit.3, !llvm.loop !8

if.then18.loopexit.3:                             ; preds = %for.cond10.3
  br label %if.then18.3

if.then18.3:                                      ; preds = %if.then18.loopexit.3, %for.cond10.preheader.3
  %inc19.3 = add nsw i32 %19, 1
  store i32 %inc19.3, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %conv20.3 = sext i32 %19 to i64
  %arrayidx.i66.3 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %conv20.3
  store i32 %add.3, ptr %arrayidx.i66.3, align 4, !tbaa !4
  %21 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp22.3 = icmp sgt i32 %21, 2
  br i1 %cmp22.3, label %cleanup41.loopexit, label %for.inc31.3

for.inc31.loopexit.3:                             ; preds = %for.body13.3
  br label %for.inc31.3

for.inc31.3:                                      ; preds = %for.inc31.loopexit.3, %if.then18.3, %for.inc31.2
  br label %if.end36

if.end36:                                         ; preds = %for.inc31.3, %do.body
  %arrayidx.i67 = getelementptr inbounds nuw i16, ptr %m_next, i64 %conv.i.i
  %22 = load i16, ptr %arrayidx.i67, align 2, !tbaa !0
  %conv39 = zext i16 %22 to i32
  %cmp40.not = icmp eq i32 %vertex, %conv39
  br i1 %cmp40.not, label %cleanup41.loopexit73, label %do.body, !llvm.loop !10

cleanup41.loopexit:                               ; preds = %if.then18.3, %if.then18.2, %if.then18.1, %if.then18
  br label %cleanup41

cleanup41.loopexit73:                             ; preds = %if.end36
  br label %cleanup41

cleanup41:                                        ; preds = %cleanup41.loopexit73, %cleanup41.loopexit
  ret void
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !1, i64 0}
!1 = !{!"short", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !2, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"_ZTSN9FastBoard8square_tE", !2, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
