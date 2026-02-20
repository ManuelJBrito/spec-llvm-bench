; ModuleID = '/tmp/tmp.nOLhoeBhZC/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/FastBoard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.boost::array.17" = type { [3 x i32] }

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %color, i32 noundef %vertex) local_unnamed_addr #1 align 2 {
entry:
  %nbr_libs = alloca %"class.boost::array.17", align 4
  %nbr_libs_cnt = alloca i32, align 4
  %m_neighbours.i.i = getelementptr inbounds nuw i8, ptr %this, i64 7076
  %conv.i.i = sext i32 %vertex to i64
  %arrayidx.i.i.i = getelementptr inbounds nuw i16, ptr %m_neighbours.i.i, i64 %conv.i.i
  %0 = load i16, ptr %arrayidx.i.i.i, align 2, !tbaa !0
  %1 = and i16 %0, 1536
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq i32 %color, 0
  %conv9.i = zext i1 %tobool.not.i to i32
  %m_square.i.i = getelementptr inbounds nuw i8, ptr %this, i64 1776
  %m_libs.i = getelementptr inbounds nuw i8, ptr %this, i64 5308
  %m_parent.i = getelementptr inbounds nuw i8, ptr %this, i64 4424
  %m_dirs.i = getelementptr inbounds nuw i8, ptr %this, i64 7960
  %2 = load i32, ptr %m_dirs.i, align 4, !tbaa !4
  %add.i = add nsw i32 %2, %vertex
  %conv.i.i87 = sext i32 %add.i to i64
  %arrayidx.i.i.i88 = getelementptr inbounds nuw i32, ptr %m_square.i.i, i64 %conv.i.i87
  %3 = load i32, ptr %arrayidx.i.i.i88, align 4, !tbaa !6
  %arrayidx.i25.i = getelementptr inbounds nuw i16, ptr %m_parent.i, i64 %conv.i.i87
  %4 = load i16, ptr %arrayidx.i25.i, align 2, !tbaa !0
  %conv5.i = zext i16 %4 to i64
  %arrayidx.i26.i = getelementptr inbounds nuw i16, ptr %m_libs.i, i64 %conv5.i
  %5 = load i16, ptr %arrayidx.i26.i, align 2, !tbaa !0
  %cmp8.i = icmp ult i16 %5, 2
  br i1 %cmp8.i, label %land.lhs.true.i, label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end
  %cmp10.i = icmp eq i32 %3, %conv9.i
  br i1 %cmp10.i, label %return, label %if.end.i

lor.lhs.false.i:                                  ; preds = %if.end
  %cmp11.i = icmp ne i16 %5, 2
  %cmp13.i = icmp eq i32 %3, %color
  %or.cond.i = and i1 %cmp13.i, %cmp11.i
  br i1 %or.cond.i, label %return, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i, %land.lhs.true.i
  %arrayidx.i.1.i = getelementptr inbounds nuw i8, ptr %this, i64 7964
  %6 = load i32, ptr %arrayidx.i.1.i, align 4, !tbaa !4
  %add.1.i = add nsw i32 %6, %vertex
  %conv.i.1.i = sext i32 %add.1.i to i64
  %arrayidx.i.i.1.i = getelementptr inbounds nuw i32, ptr %m_square.i.i, i64 %conv.i.1.i
  %7 = load i32, ptr %arrayidx.i.i.1.i, align 4, !tbaa !6
  %arrayidx.i25.1.i = getelementptr inbounds nuw i16, ptr %m_parent.i, i64 %conv.i.1.i
  %8 = load i16, ptr %arrayidx.i25.1.i, align 2, !tbaa !0
  %conv5.1.i = zext i16 %8 to i64
  %arrayidx.i26.1.i = getelementptr inbounds nuw i16, ptr %m_libs.i, i64 %conv5.1.i
  %9 = load i16, ptr %arrayidx.i26.1.i, align 2, !tbaa !0
  %cmp8.1.i = icmp ult i16 %9, 2
  br i1 %cmp8.1.i, label %land.lhs.true.1.i, label %lor.lhs.false.1.i

lor.lhs.false.1.i:                                ; preds = %if.end.i
  %cmp11.1.i = icmp ne i16 %9, 2
  %cmp13.1.i = icmp eq i32 %7, %color
  %or.cond.1.i = and i1 %cmp13.1.i, %cmp11.1.i
  br i1 %or.cond.1.i, label %return, label %if.end.1.i

land.lhs.true.1.i:                                ; preds = %if.end.i
  %cmp10.1.i = icmp eq i32 %7, %conv9.i
  br i1 %cmp10.1.i, label %return, label %if.end.1.i

if.end.1.i:                                       ; preds = %land.lhs.true.1.i, %lor.lhs.false.1.i
  %arrayidx.i.2.i = getelementptr inbounds nuw i8, ptr %this, i64 7968
  %10 = load i32, ptr %arrayidx.i.2.i, align 4, !tbaa !4
  %add.2.i = add nsw i32 %10, %vertex
  %conv.i.2.i = sext i32 %add.2.i to i64
  %arrayidx.i.i.2.i = getelementptr inbounds nuw i32, ptr %m_square.i.i, i64 %conv.i.2.i
  %11 = load i32, ptr %arrayidx.i.i.2.i, align 4, !tbaa !6
  %arrayidx.i25.2.i = getelementptr inbounds nuw i16, ptr %m_parent.i, i64 %conv.i.2.i
  %12 = load i16, ptr %arrayidx.i25.2.i, align 2, !tbaa !0
  %conv5.2.i = zext i16 %12 to i64
  %arrayidx.i26.2.i = getelementptr inbounds nuw i16, ptr %m_libs.i, i64 %conv5.2.i
  %13 = load i16, ptr %arrayidx.i26.2.i, align 2, !tbaa !0
  %cmp8.2.i = icmp ult i16 %13, 2
  br i1 %cmp8.2.i, label %land.lhs.true.2.i, label %lor.lhs.false.2.i

lor.lhs.false.2.i:                                ; preds = %if.end.1.i
  %cmp11.2.i = icmp ne i16 %13, 2
  %cmp13.2.i = icmp eq i32 %11, %color
  %or.cond.2.i = and i1 %cmp13.2.i, %cmp11.2.i
  br i1 %or.cond.2.i, label %return, label %if.end.2.i

land.lhs.true.2.i:                                ; preds = %if.end.1.i
  %cmp10.2.i = icmp eq i32 %11, %conv9.i
  br i1 %cmp10.2.i, label %return, label %if.end.2.i

if.end.2.i:                                       ; preds = %land.lhs.true.2.i, %lor.lhs.false.2.i
  %arrayidx.i.3.i = getelementptr inbounds nuw i8, ptr %this, i64 7972
  %14 = load i32, ptr %arrayidx.i.3.i, align 4, !tbaa !4
  %add.3.i = add nsw i32 %14, %vertex
  %conv.i.3.i = sext i32 %add.3.i to i64
  %arrayidx.i.i.3.i = getelementptr inbounds nuw i32, ptr %m_square.i.i, i64 %conv.i.3.i
  %15 = load i32, ptr %arrayidx.i.i.3.i, align 4, !tbaa !6
  %arrayidx.i25.3.i = getelementptr inbounds nuw i16, ptr %m_parent.i, i64 %conv.i.3.i
  %16 = load i16, ptr %arrayidx.i25.3.i, align 2, !tbaa !0
  %conv5.3.i = zext i16 %16 to i64
  %arrayidx.i26.3.i = getelementptr inbounds nuw i16, ptr %m_libs.i, i64 %conv5.3.i
  %17 = load i16, ptr %arrayidx.i26.3.i, align 2, !tbaa !0
  %cmp8.3.i = icmp ult i16 %17, 2
  br i1 %cmp8.3.i, label %land.lhs.true.3.i, label %lor.lhs.false.3.i

lor.lhs.false.3.i:                                ; preds = %if.end.2.i
  %cmp11.3.i = icmp ne i16 %17, 2
  %cmp13.3.i = icmp eq i32 %15, %color
  %or.cond.3.i = and i1 %cmp13.3.i, %cmp11.3.i
  br i1 %or.cond.3.i, label %return, label %if.end4

land.lhs.true.3.i:                                ; preds = %if.end.2.i
  %cmp10.3.i = icmp eq i32 %15, %conv9.i
  br i1 %cmp10.3.i, label %return, label %if.end4

if.end4:                                          ; preds = %land.lhs.true.3.i, %lor.lhs.false.3.i
  %conv2.i = zext i16 %0 to i32
  %mul.i = shl nsw i32 %color, 2
  %18 = shl i32 7, %mul.i
  %19 = and i32 %18, %conv2.i
  %cmp6 = icmp eq i32 %19, 0
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(ptr nonnull %nbr_libs) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %nbr_libs_cnt) #2
  store i32 1, ptr %nbr_libs_cnt, align 4, !tbaa !4
  store i32 %vertex, ptr %nbr_libs, align 4, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %if.end8
  %20 = load i32, ptr %m_dirs.i, align 4, !tbaa !4
  %add = add nsw i32 %20, %vertex
  %conv.i89 = sext i32 %add to i64
  %arrayidx.i.i90 = getelementptr inbounds nuw i32, ptr %m_square.i.i, i64 %conv.i89
  %21 = load i32, ptr %arrayidx.i.i90, align 4, !tbaa !6
  %cmp14 = icmp eq i32 %21, 2
  br i1 %cmp14, label %for.cond16.preheader, label %if.else

for.cond16.preheader:                             ; preds = %for.body
  %22 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp17100 = icmp sgt i32 %22, 0
  br i1 %cmp17100, label %for.body19.preheader, label %if.then26

for.body19.preheader:                             ; preds = %for.cond16.preheader
  %wide.trip.count = zext i32 %22 to i64
  br label %for.body19

for.cond16:                                       ; preds = %for.body19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.body19, label %if.then26.loopexit, !llvm.loop !8

for.body19:                                       ; preds = %for.cond16, %for.body19.preheader
  %indvars.iv = phi i64 [ 0, %for.body19.preheader ], [ %indvars.iv.next, %for.cond16 ]
  %arrayidx.i91 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %indvars.iv
  %23 = load i32, ptr %arrayidx.i91, align 4, !tbaa !4
  %cmp22 = icmp eq i32 %23, %add
  br i1 %cmp22, label %for.inc59.loopexit, label %for.cond16

if.then26.loopexit:                               ; preds = %for.cond16
  br label %if.then26

if.then26:                                        ; preds = %if.then26.loopexit, %for.cond16.preheader
  %cmp27 = icmp sgt i32 %22, 1
  br i1 %cmp27, label %cleanup64, label %if.end29

if.end29:                                         ; preds = %if.then26
  %inc30 = add nsw i32 %22, 1
  store i32 %inc30, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %conv31 = sext i32 %22 to i64
  %arrayidx.i92 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %conv31
  store i32 %add, ptr %arrayidx.i92, align 4, !tbaa !4
  br label %for.inc59

if.else:                                          ; preds = %for.body
  %cmp36 = icmp eq i32 %21, %color
  br i1 %cmp36, label %if.then37, label %for.inc59

if.then37:                                        ; preds = %if.else
  %arrayidx.i96 = getelementptr inbounds nuw i16, ptr %m_parent.i, i64 %conv.i89
  %24 = load i16, ptr %arrayidx.i96, align 2, !tbaa !0
  %conv41 = zext i16 %24 to i64
  %arrayidx.i97 = getelementptr inbounds nuw i16, ptr %m_libs.i, i64 %conv41
  %25 = load i16, ptr %arrayidx.i97, align 2, !tbaa !0
  %cmp44 = icmp ugt i16 %25, 1
  br i1 %cmp44, label %if.then45, label %for.inc59

if.then45:                                        ; preds = %if.then37
  call void @_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %add, ptr noundef nonnull align 4 dereferenceable(12) %nbr_libs, ptr noundef nonnull align 4 dereferenceable(4) %nbr_libs_cnt)
  %26 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp46 = icmp sgt i32 %26, 2
  br i1 %cmp46, label %cleanup64, label %for.inc59

for.inc59.loopexit:                               ; preds = %for.body19
  br label %for.inc59

for.inc59:                                        ; preds = %for.inc59.loopexit, %if.then45, %if.then37, %if.else, %if.end29
  %arrayidx.i.1 = getelementptr inbounds nuw i32, ptr %m_dirs.i, i64 1
  %27 = load i32, ptr %arrayidx.i.1, align 4, !tbaa !4
  %add.1 = add nsw i32 %27, %vertex
  %conv.i89.1 = sext i32 %add.1 to i64
  %arrayidx.i.i90.1 = getelementptr inbounds nuw i32, ptr %m_square.i.i, i64 %conv.i89.1
  %28 = load i32, ptr %arrayidx.i.i90.1, align 4, !tbaa !6
  %cmp14.1 = icmp eq i32 %28, 2
  br i1 %cmp14.1, label %for.cond16.preheader.1, label %if.else.1

if.else.1:                                        ; preds = %for.inc59
  %cmp36.1 = icmp eq i32 %28, %color
  br i1 %cmp36.1, label %if.then37.1, label %for.inc59.1

if.then37.1:                                      ; preds = %if.else.1
  %arrayidx.i96.1 = getelementptr inbounds nuw i16, ptr %m_parent.i, i64 %conv.i89.1
  %29 = load i16, ptr %arrayidx.i96.1, align 2, !tbaa !0
  %conv41.1 = zext i16 %29 to i64
  %arrayidx.i97.1 = getelementptr inbounds nuw i16, ptr %m_libs.i, i64 %conv41.1
  %30 = load i16, ptr %arrayidx.i97.1, align 2, !tbaa !0
  %cmp44.1 = icmp ugt i16 %30, 1
  br i1 %cmp44.1, label %if.then45.1, label %for.inc59.1

if.then45.1:                                      ; preds = %if.then37.1
  call void @_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %add.1, ptr noundef nonnull align 4 dereferenceable(12) %nbr_libs, ptr noundef nonnull align 4 dereferenceable(4) %nbr_libs_cnt)
  %31 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp46.1 = icmp sgt i32 %31, 2
  br i1 %cmp46.1, label %cleanup64, label %for.inc59.1

for.cond16.preheader.1:                           ; preds = %for.inc59
  %32 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp17100.1 = icmp sgt i32 %32, 0
  br i1 %cmp17100.1, label %for.body19.preheader.1, label %if.then26.1

for.body19.preheader.1:                           ; preds = %for.cond16.preheader.1
  %wide.trip.count.1 = zext i32 %32 to i64
  br label %for.body19.1

for.body19.1:                                     ; preds = %for.cond16.1, %for.body19.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %for.body19.preheader.1 ], [ %indvars.iv.next.1, %for.cond16.1 ]
  %arrayidx.i91.1 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %indvars.iv.1
  %33 = load i32, ptr %arrayidx.i91.1, align 4, !tbaa !4
  %cmp22.1 = icmp eq i32 %33, %add.1
  br i1 %cmp22.1, label %for.inc59.loopexit.1, label %for.cond16.1

for.cond16.1:                                     ; preds = %for.body19.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1, label %for.body19.1, label %if.then26.loopexit.1, !llvm.loop !8

if.then26.loopexit.1:                             ; preds = %for.cond16.1
  br label %if.then26.1

if.then26.1:                                      ; preds = %if.then26.loopexit.1, %for.cond16.preheader.1
  %cmp27.1 = icmp sgt i32 %32, 1
  br i1 %cmp27.1, label %cleanup64, label %if.end29.1

if.end29.1:                                       ; preds = %if.then26.1
  %inc30.1 = add nsw i32 %32, 1
  store i32 %inc30.1, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %conv31.1 = sext i32 %32 to i64
  %arrayidx.i92.1 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %conv31.1
  store i32 %add.1, ptr %arrayidx.i92.1, align 4, !tbaa !4
  br label %for.inc59.1

for.inc59.loopexit.1:                             ; preds = %for.body19.1
  br label %for.inc59.1

for.inc59.1:                                      ; preds = %for.inc59.loopexit.1, %if.end29.1, %if.then45.1, %if.then37.1, %if.else.1
  %arrayidx.i.2 = getelementptr inbounds nuw i32, ptr %m_dirs.i, i64 2
  %34 = load i32, ptr %arrayidx.i.2, align 4, !tbaa !4
  %add.2 = add nsw i32 %34, %vertex
  %conv.i89.2 = sext i32 %add.2 to i64
  %arrayidx.i.i90.2 = getelementptr inbounds nuw i32, ptr %m_square.i.i, i64 %conv.i89.2
  %35 = load i32, ptr %arrayidx.i.i90.2, align 4, !tbaa !6
  %cmp14.2 = icmp eq i32 %35, 2
  br i1 %cmp14.2, label %for.cond16.preheader.2, label %if.else.2

if.else.2:                                        ; preds = %for.inc59.1
  %cmp36.2 = icmp eq i32 %35, %color
  br i1 %cmp36.2, label %if.then37.2, label %for.inc59.2

if.then37.2:                                      ; preds = %if.else.2
  %arrayidx.i96.2 = getelementptr inbounds nuw i16, ptr %m_parent.i, i64 %conv.i89.2
  %36 = load i16, ptr %arrayidx.i96.2, align 2, !tbaa !0
  %conv41.2 = zext i16 %36 to i64
  %arrayidx.i97.2 = getelementptr inbounds nuw i16, ptr %m_libs.i, i64 %conv41.2
  %37 = load i16, ptr %arrayidx.i97.2, align 2, !tbaa !0
  %cmp44.2 = icmp ugt i16 %37, 1
  br i1 %cmp44.2, label %if.then45.2, label %for.inc59.2

if.then45.2:                                      ; preds = %if.then37.2
  call void @_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %add.2, ptr noundef nonnull align 4 dereferenceable(12) %nbr_libs, ptr noundef nonnull align 4 dereferenceable(4) %nbr_libs_cnt)
  %38 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp46.2 = icmp sgt i32 %38, 2
  br i1 %cmp46.2, label %cleanup64, label %for.inc59.2

for.cond16.preheader.2:                           ; preds = %for.inc59.1
  %39 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp17100.2 = icmp sgt i32 %39, 0
  br i1 %cmp17100.2, label %for.body19.preheader.2, label %if.then26.2

for.body19.preheader.2:                           ; preds = %for.cond16.preheader.2
  %wide.trip.count.2 = zext i32 %39 to i64
  br label %for.body19.2

for.body19.2:                                     ; preds = %for.cond16.2, %for.body19.preheader.2
  %indvars.iv.2 = phi i64 [ 0, %for.body19.preheader.2 ], [ %indvars.iv.next.2, %for.cond16.2 ]
  %arrayidx.i91.2 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %indvars.iv.2
  %40 = load i32, ptr %arrayidx.i91.2, align 4, !tbaa !4
  %cmp22.2 = icmp eq i32 %40, %add.2
  br i1 %cmp22.2, label %for.inc59.loopexit.2, label %for.cond16.2

for.cond16.2:                                     ; preds = %for.body19.2
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp ne i64 %indvars.iv.next.2, %wide.trip.count.2
  br i1 %exitcond.2, label %for.body19.2, label %if.then26.loopexit.2, !llvm.loop !8

if.then26.loopexit.2:                             ; preds = %for.cond16.2
  br label %if.then26.2

if.then26.2:                                      ; preds = %if.then26.loopexit.2, %for.cond16.preheader.2
  %cmp27.2 = icmp sgt i32 %39, 1
  br i1 %cmp27.2, label %cleanup64, label %if.end29.2

if.end29.2:                                       ; preds = %if.then26.2
  %inc30.2 = add nsw i32 %39, 1
  store i32 %inc30.2, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %conv31.2 = sext i32 %39 to i64
  %arrayidx.i92.2 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %conv31.2
  store i32 %add.2, ptr %arrayidx.i92.2, align 4, !tbaa !4
  br label %for.inc59.2

for.inc59.loopexit.2:                             ; preds = %for.body19.2
  br label %for.inc59.2

for.inc59.2:                                      ; preds = %for.inc59.loopexit.2, %if.end29.2, %if.then45.2, %if.then37.2, %if.else.2
  %arrayidx.i.3 = getelementptr inbounds nuw i32, ptr %m_dirs.i, i64 3
  %41 = load i32, ptr %arrayidx.i.3, align 4, !tbaa !4
  %add.3 = add nsw i32 %41, %vertex
  %conv.i89.3 = sext i32 %add.3 to i64
  %arrayidx.i.i90.3 = getelementptr inbounds nuw i32, ptr %m_square.i.i, i64 %conv.i89.3
  %42 = load i32, ptr %arrayidx.i.i90.3, align 4, !tbaa !6
  %cmp14.3 = icmp eq i32 %42, 2
  br i1 %cmp14.3, label %for.cond16.preheader.3, label %if.else.3

if.else.3:                                        ; preds = %for.inc59.2
  %cmp36.3 = icmp eq i32 %42, %color
  br i1 %cmp36.3, label %if.then37.3, label %for.inc59.3

if.then37.3:                                      ; preds = %if.else.3
  %arrayidx.i96.3 = getelementptr inbounds nuw i16, ptr %m_parent.i, i64 %conv.i89.3
  %43 = load i16, ptr %arrayidx.i96.3, align 2, !tbaa !0
  %conv41.3 = zext i16 %43 to i64
  %arrayidx.i97.3 = getelementptr inbounds nuw i16, ptr %m_libs.i, i64 %conv41.3
  %44 = load i16, ptr %arrayidx.i97.3, align 2, !tbaa !0
  %cmp44.3 = icmp ugt i16 %44, 1
  br i1 %cmp44.3, label %if.then45.3, label %for.inc59.3

if.then45.3:                                      ; preds = %if.then37.3
  call void @_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %add.3, ptr noundef nonnull align 4 dereferenceable(12) %nbr_libs, ptr noundef nonnull align 4 dereferenceable(4) %nbr_libs_cnt)
  %45 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp46.3 = icmp sgt i32 %45, 2
  br i1 %cmp46.3, label %cleanup64, label %for.inc59.3

for.cond16.preheader.3:                           ; preds = %for.inc59.2
  %46 = load i32, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %cmp17100.3 = icmp sgt i32 %46, 0
  br i1 %cmp17100.3, label %for.body19.preheader.3, label %if.then26.3

for.body19.preheader.3:                           ; preds = %for.cond16.preheader.3
  %wide.trip.count.3 = zext i32 %46 to i64
  br label %for.body19.3

for.body19.3:                                     ; preds = %for.cond16.3, %for.body19.preheader.3
  %indvars.iv.3 = phi i64 [ 0, %for.body19.preheader.3 ], [ %indvars.iv.next.3, %for.cond16.3 ]
  %arrayidx.i91.3 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %indvars.iv.3
  %47 = load i32, ptr %arrayidx.i91.3, align 4, !tbaa !4
  %cmp22.3 = icmp eq i32 %47, %add.3
  br i1 %cmp22.3, label %for.inc59.loopexit.3, label %for.cond16.3

for.cond16.3:                                     ; preds = %for.body19.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3 = icmp ne i64 %indvars.iv.next.3, %wide.trip.count.3
  br i1 %exitcond.3, label %for.body19.3, label %if.then26.loopexit.3, !llvm.loop !8

if.then26.loopexit.3:                             ; preds = %for.cond16.3
  br label %if.then26.3

if.then26.3:                                      ; preds = %if.then26.loopexit.3, %for.cond16.preheader.3
  %cmp27.3 = icmp sgt i32 %46, 1
  br i1 %cmp27.3, label %cleanup64, label %if.end29.3

if.end29.3:                                       ; preds = %if.then26.3
  %inc30.3 = add nsw i32 %46, 1
  store i32 %inc30.3, ptr %nbr_libs_cnt, align 4, !tbaa !4
  %conv31.3 = sext i32 %46 to i64
  %arrayidx.i92.3 = getelementptr inbounds nuw i32, ptr %nbr_libs, i64 %conv31.3
  store i32 %add.3, ptr %arrayidx.i92.3, align 4, !tbaa !4
  br label %for.inc59.3

for.inc59.loopexit.3:                             ; preds = %for.body19.3
  br label %for.inc59.3

for.inc59.3:                                      ; preds = %for.inc59.loopexit.3, %if.end29.3, %if.then45.3, %if.then37.3, %if.else.3
  br label %cleanup64

cleanup64:                                        ; preds = %for.inc59.3, %if.then26.3, %if.then45.3, %if.then26.2, %if.then45.2, %if.then26.1, %if.then45.1, %if.then45, %if.then26
  %cmp10.lcssa = phi i1 [ false, %if.then26 ], [ false, %if.then45 ], [ false, %if.then45.1 ], [ false, %if.then26.1 ], [ false, %if.then45.2 ], [ false, %if.then26.2 ], [ false, %if.then45.3 ], [ false, %if.then26.3 ], [ true, %for.inc59.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %nbr_libs_cnt) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %nbr_libs) #2
  br label %return

return:                                           ; preds = %cleanup64, %if.end4, %land.lhs.true.3.i, %lor.lhs.false.3.i, %land.lhs.true.2.i, %lor.lhs.false.2.i, %land.lhs.true.1.i, %lor.lhs.false.1.i, %lor.lhs.false.i, %land.lhs.true.i, %entry
  %retval.7 = phi i1 [ %cmp10.lcssa, %cleanup64 ], [ false, %entry ], [ true, %if.end4 ], [ false, %lor.lhs.false.i ], [ false, %land.lhs.true.i ], [ false, %lor.lhs.false.1.i ], [ false, %land.lhs.true.1.i ], [ false, %lor.lhs.false.2.i ], [ false, %land.lhs.true.2.i ], [ false, %lor.lhs.false.3.i ], [ false, %land.lhs.true.3.i ]
  ret i1 %retval.7
}

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1 align 2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
