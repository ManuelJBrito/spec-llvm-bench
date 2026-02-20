; ModuleID = '/tmp/tmp.ssTzy5sHz6/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/FastBoard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.boost::array.4" = type { [4 x i32] }

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9FastBoard15kill_neighboursEiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8052) %this, i32 noundef %vertex, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(96) %moves, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %movecnt) local_unnamed_addr #1 align 2 {
entry:
  %nbr_list = alloca %"class.boost::array.4", align 4
  %m_square = getelementptr inbounds nuw i8, ptr %this, i64 1776
  %conv = sext i32 %vertex to i64
  %arrayidx.i = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv
  %0 = load i32, ptr %arrayidx.i, align 4, !tbaa !0
  %tobool.not = icmp eq i32 %0, 0
  %conv2 = zext i1 %tobool.not to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %nbr_list) #2
  %m_next = getelementptr inbounds nuw i8, ptr %this, i64 3540
  %m_dirs = getelementptr inbounds nuw i8, ptr %this, i64 7960
  %m_parent = getelementptr inbounds nuw i8, ptr %this, i64 4424
  %m_libs = getelementptr inbounds nuw i8, ptr %this, i64 5308
  %m_neighbours.i.i.i = getelementptr inbounds nuw i8, ptr %this, i64 7076
  %m_next.i = getelementptr inbounds nuw i8, ptr %this, i64 3540
  %arrayidx.i34.1.i = getelementptr inbounds nuw i8, ptr %this, i64 7964
  %arrayidx.i34.2.i = getelementptr inbounds nuw i8, ptr %this, i64 7968
  %arrayidx.i34.3.i = getelementptr inbounds nuw i8, ptr %this, i64 7972
  br label %do.body

do.body:                                          ; preds = %if.end36.3, %entry
  %nbr_cnt.0 = phi i32 [ 0, %entry ], [ %nbr_cnt.4.3, %if.end36.3 ]
  %pos.0 = phi i32 [ %vertex, %entry ], [ %conv42, %if.end36.3 ]
  br label %for.body

for.body:                                         ; preds = %do.body
  %1 = load i32, ptr %m_dirs, align 4, !tbaa !4
  %add = add nsw i32 %1, %pos.0
  %conv6 = sext i32 %add to i64
  %arrayidx.i60 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv6
  %2 = load i32, ptr %arrayidx.i60, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %2, %conv2
  br i1 %cmp8, label %if.then, label %if.end36

if.then:                                          ; preds = %for.body
  %arrayidx.i61 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv6
  %3 = load i16, ptr %arrayidx.i61, align 2, !tbaa !6
  %conv11 = zext i16 %3 to i32
  %conv12 = zext i16 %3 to i64
  %arrayidx.i62 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv12
  %4 = load i16, ptr %arrayidx.i62, align 2, !tbaa !6
  %cmp15 = icmp ult i16 %4, 2
  %cmp16 = icmp slt i32 %nbr_cnt.0, 4
  %or.cond = select i1 %cmp15, i1 %cmp16, i1 false
  br i1 %or.cond, label %for.cond18.preheader, label %if.end36

for.cond18.preheader:                             ; preds = %if.then
  %cmp1966 = icmp sgt i32 %nbr_cnt.0, 0
  br i1 %cmp1966, label %for.body21.preheader, label %if.then26

for.body21.preheader:                             ; preds = %for.cond18.preheader
  %wide.trip.count = zext i32 %nbr_cnt.0 to i64
  br label %for.body21

for.cond.cleanup20:                               ; preds = %for.body21
  %spec.select.lcssa = phi i1 [ %spec.select, %for.body21 ]
  br i1 %spec.select.lcssa, label %if.end36, label %if.then26

for.body21:                                       ; preds = %for.body21, %for.body21.preheader
  %indvars.iv = phi i64 [ 0, %for.body21.preheader ], [ %indvars.iv.next, %for.body21 ]
  %found.067 = phi i1 [ %spec.select, %for.body21 ], [ false, %for.body21.preheader ]
  %arrayidx.i63 = getelementptr inbounds nuw i32, ptr %nbr_list, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx.i63, align 4, !tbaa !4
  %cmp24 = icmp eq i32 %5, %conv11
  %spec.select = select i1 %cmp24, i1 true, i1 %found.067
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.body21, label %for.cond.cleanup20, !llvm.loop !8

if.then26:                                        ; preds = %for.cond.cleanup20, %for.cond18.preheader
  %6 = load i32, ptr %m_dirs, align 4
  %7 = load i32, ptr %arrayidx.i34.1.i, align 4
  %8 = load i32, ptr %arrayidx.i34.2.i, align 4
  %9 = load i32, ptr %arrayidx.i34.3.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end17.i, %if.then26
  %pos.0.i = phi i32 [ %conv20.i, %if.end17.i ], [ %add, %if.then26 ]
  %conv.i.i.i = sext i32 %pos.0.i to i64
  %arrayidx.i.i.i.i = getelementptr inbounds nuw i16, ptr %m_neighbours.i.i.i, i64 %conv.i.i.i
  %10 = load i16, ptr %arrayidx.i.i.i.i, align 2, !tbaa !6
  %11 = and i16 %10, 1792
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %if.end17.i, label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %add.1.i = add nsw i32 %pos.0.i, %7
  %conv10.1.i = sext i32 %add.1.i to i64
  %arrayidx.i35.1.i = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.1.i
  %12 = load i32, ptr %arrayidx.i35.1.i, align 4, !tbaa !0
  %cmp12.not.1.i = icmp eq i32 %12, 2
  br i1 %cmp12.not.1.i, label %_ZN9FastBoard8in_atariEi.exit.loopexit, label %for.cond.1.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %add.2.i = add nsw i32 %pos.0.i, %8
  %conv10.2.i = sext i32 %add.2.i to i64
  %arrayidx.i35.2.i = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.2.i
  %13 = load i32, ptr %arrayidx.i35.2.i, align 4, !tbaa !0
  %cmp12.not.2.i = icmp eq i32 %13, 2
  br i1 %cmp12.not.2.i, label %_ZN9FastBoard8in_atariEi.exit.loopexit, label %for.cond.2.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %add.3.i = add nsw i32 %pos.0.i, %9
  %conv10.3.i = sext i32 %add.3.i to i64
  %arrayidx.i35.3.i = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.3.i
  %14 = load i32, ptr %arrayidx.i35.3.i, align 4, !tbaa !0
  %cmp12.not.3.i = icmp eq i32 %14, 2
  br i1 %cmp12.not.3.i, label %_ZN9FastBoard8in_atariEi.exit.loopexit, label %if.end17.i

for.body.i:                                       ; preds = %do.body.i
  %add.i = add nsw i32 %pos.0.i, %6
  %conv10.i = sext i32 %add.i to i64
  %arrayidx.i35.i = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.i
  %15 = load i32, ptr %arrayidx.i35.i, align 4, !tbaa !0
  %cmp12.not.i = icmp eq i32 %15, 2
  br i1 %cmp12.not.i, label %_ZN9FastBoard8in_atariEi.exit.loopexit, label %for.cond.i

if.end17.i:                                       ; preds = %for.cond.2.i, %do.body.i
  %arrayidx.i36.i = getelementptr inbounds nuw i16, ptr %m_next.i, i64 %conv.i.i.i
  %16 = load i16, ptr %arrayidx.i36.i, align 2, !tbaa !6
  %conv20.i = zext i16 %16 to i32
  %cmp21.not.i = icmp eq i32 %add, %conv20.i
  br i1 %cmp21.not.i, label %_ZN9FastBoard8in_atariEi.exit.loopexit, label %do.body.i, !llvm.loop !10

_ZN9FastBoard8in_atariEi.exit.loopexit:           ; preds = %if.end17.i, %for.body.i, %for.cond.2.i, %for.cond.1.i, %for.cond.i
  %retval.6.i.ph = phi i32 [ %add.i, %for.body.i ], [ %add.1.i, %for.cond.i ], [ %add.2.i, %for.cond.1.i ], [ %add.3.i, %for.cond.2.i ], [ 0, %if.end17.i ]
  %17 = load i32, ptr %movecnt, align 4, !tbaa !4
  %inc28 = add nsw i32 %17, 1
  store i32 %inc28, ptr %movecnt, align 4, !tbaa !4
  %conv29 = sext i32 %17 to i64
  %arrayidx.i64 = getelementptr inbounds nuw i32, ptr %moves, i64 %conv29
  store i32 %retval.6.i.ph, ptr %arrayidx.i64, align 4, !tbaa !4
  %inc31 = add nsw i32 %nbr_cnt.0, 1
  %conv32 = sext i32 %nbr_cnt.0 to i64
  %arrayidx.i65 = getelementptr inbounds nuw i32, ptr %nbr_list, i64 %conv32
  store i32 %conv11, ptr %arrayidx.i65, align 4, !tbaa !4
  br label %if.end36

if.end36:                                         ; preds = %_ZN9FastBoard8in_atariEi.exit.loopexit, %for.cond.cleanup20, %if.then, %for.body
  %nbr_cnt.4 = phi i32 [ %nbr_cnt.0, %for.body ], [ %nbr_cnt.0, %if.then ], [ %nbr_cnt.0, %for.cond.cleanup20 ], [ %inc31, %_ZN9FastBoard8in_atariEi.exit.loopexit ]
  %arrayidx.i59.1 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 1
  %18 = load i32, ptr %arrayidx.i59.1, align 4, !tbaa !4
  %add.1 = add nsw i32 %18, %pos.0
  %conv6.1 = sext i32 %add.1 to i64
  %arrayidx.i60.1 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv6.1
  %19 = load i32, ptr %arrayidx.i60.1, align 4, !tbaa !0
  %cmp8.1 = icmp eq i32 %19, %conv2
  br i1 %cmp8.1, label %if.then.1, label %if.end36.1

if.then.1:                                        ; preds = %if.end36
  %arrayidx.i61.1 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv6.1
  %20 = load i16, ptr %arrayidx.i61.1, align 2, !tbaa !6
  %conv11.1 = zext i16 %20 to i32
  %conv12.1 = zext i16 %20 to i64
  %arrayidx.i62.1 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv12.1
  %21 = load i16, ptr %arrayidx.i62.1, align 2, !tbaa !6
  %cmp15.1 = icmp ult i16 %21, 2
  %cmp16.1 = icmp slt i32 %nbr_cnt.4, 4
  %or.cond.1 = select i1 %cmp15.1, i1 %cmp16.1, i1 false
  br i1 %or.cond.1, label %for.cond18.preheader.1, label %if.end36.1

for.cond18.preheader.1:                           ; preds = %if.then.1
  %cmp1966.1 = icmp sgt i32 %nbr_cnt.4, 0
  br i1 %cmp1966.1, label %for.body21.preheader.1, label %if.then26.1

for.body21.preheader.1:                           ; preds = %for.cond18.preheader.1
  %wide.trip.count.1 = zext i32 %nbr_cnt.4 to i64
  br label %for.body21.1

for.body21.1:                                     ; preds = %for.body21.1, %for.body21.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %for.body21.preheader.1 ], [ %indvars.iv.next.1, %for.body21.1 ]
  %found.067.1 = phi i1 [ %spec.select.1, %for.body21.1 ], [ false, %for.body21.preheader.1 ]
  %arrayidx.i63.1 = getelementptr inbounds nuw i32, ptr %nbr_list, i64 %indvars.iv.1
  %22 = load i32, ptr %arrayidx.i63.1, align 4, !tbaa !4
  %cmp24.1 = icmp eq i32 %22, %conv11.1
  %spec.select.1 = select i1 %cmp24.1, i1 true, i1 %found.067.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1, label %for.body21.1, label %for.cond.cleanup20.1, !llvm.loop !8

for.cond.cleanup20.1:                             ; preds = %for.body21.1
  %spec.select.lcssa.1 = phi i1 [ %spec.select.1, %for.body21.1 ]
  br i1 %spec.select.lcssa.1, label %if.end36.1, label %if.then26.1

if.then26.1:                                      ; preds = %for.cond.cleanup20.1, %for.cond18.preheader.1
  %23 = load i32, ptr %m_dirs, align 4
  %24 = load i32, ptr %arrayidx.i34.1.i, align 4
  %25 = load i32, ptr %arrayidx.i34.2.i, align 4
  %26 = load i32, ptr %arrayidx.i34.3.i, align 4
  br label %do.body.i.1

do.body.i.1:                                      ; preds = %if.end17.i.1, %if.then26.1
  %pos.0.i.1 = phi i32 [ %conv20.i.1, %if.end17.i.1 ], [ %add.1, %if.then26.1 ]
  %conv.i.i.i.1 = sext i32 %pos.0.i.1 to i64
  %arrayidx.i.i.i.i.1 = getelementptr inbounds nuw i16, ptr %m_neighbours.i.i.i, i64 %conv.i.i.i.1
  %27 = load i16, ptr %arrayidx.i.i.i.i.1, align 2, !tbaa !6
  %28 = and i16 %27, 1792
  %tobool.not.i.1 = icmp eq i16 %28, 0
  br i1 %tobool.not.i.1, label %if.end17.i.1, label %for.body.i.1

for.body.i.1:                                     ; preds = %do.body.i.1
  %add.i.1 = add nsw i32 %pos.0.i.1, %23
  %conv10.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i35.i.1 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.i.1
  %29 = load i32, ptr %arrayidx.i35.i.1, align 4, !tbaa !0
  %cmp12.not.i.1 = icmp eq i32 %29, 2
  br i1 %cmp12.not.i.1, label %_ZN9FastBoard8in_atariEi.exit.loopexit.1, label %for.cond.i.1

for.cond.i.1:                                     ; preds = %for.body.i.1
  %add.1.i.1 = add nsw i32 %pos.0.i.1, %24
  %conv10.1.i.1 = sext i32 %add.1.i.1 to i64
  %arrayidx.i35.1.i.1 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.1.i.1
  %30 = load i32, ptr %arrayidx.i35.1.i.1, align 4, !tbaa !0
  %cmp12.not.1.i.1 = icmp eq i32 %30, 2
  br i1 %cmp12.not.1.i.1, label %_ZN9FastBoard8in_atariEi.exit.loopexit.1, label %for.cond.1.i.1

for.cond.1.i.1:                                   ; preds = %for.cond.i.1
  %add.2.i.1 = add nsw i32 %pos.0.i.1, %25
  %conv10.2.i.1 = sext i32 %add.2.i.1 to i64
  %arrayidx.i35.2.i.1 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.2.i.1
  %31 = load i32, ptr %arrayidx.i35.2.i.1, align 4, !tbaa !0
  %cmp12.not.2.i.1 = icmp eq i32 %31, 2
  br i1 %cmp12.not.2.i.1, label %_ZN9FastBoard8in_atariEi.exit.loopexit.1, label %for.cond.2.i.1

for.cond.2.i.1:                                   ; preds = %for.cond.1.i.1
  %add.3.i.1 = add nsw i32 %pos.0.i.1, %26
  %conv10.3.i.1 = sext i32 %add.3.i.1 to i64
  %arrayidx.i35.3.i.1 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.3.i.1
  %32 = load i32, ptr %arrayidx.i35.3.i.1, align 4, !tbaa !0
  %cmp12.not.3.i.1 = icmp eq i32 %32, 2
  br i1 %cmp12.not.3.i.1, label %_ZN9FastBoard8in_atariEi.exit.loopexit.1, label %if.end17.i.1

if.end17.i.1:                                     ; preds = %for.cond.2.i.1, %do.body.i.1
  %arrayidx.i36.i.1 = getelementptr inbounds nuw i16, ptr %m_next.i, i64 %conv.i.i.i.1
  %33 = load i16, ptr %arrayidx.i36.i.1, align 2, !tbaa !6
  %conv20.i.1 = zext i16 %33 to i32
  %cmp21.not.i.1 = icmp eq i32 %add.1, %conv20.i.1
  br i1 %cmp21.not.i.1, label %_ZN9FastBoard8in_atariEi.exit.loopexit.1, label %do.body.i.1, !llvm.loop !10

_ZN9FastBoard8in_atariEi.exit.loopexit.1:         ; preds = %if.end17.i.1, %for.cond.2.i.1, %for.cond.1.i.1, %for.cond.i.1, %for.body.i.1
  %retval.6.i.ph.1 = phi i32 [ %add.i.1, %for.body.i.1 ], [ %add.1.i.1, %for.cond.i.1 ], [ %add.2.i.1, %for.cond.1.i.1 ], [ %add.3.i.1, %for.cond.2.i.1 ], [ 0, %if.end17.i.1 ]
  %34 = load i32, ptr %movecnt, align 4, !tbaa !4
  %inc28.1 = add nsw i32 %34, 1
  store i32 %inc28.1, ptr %movecnt, align 4, !tbaa !4
  %conv29.1 = sext i32 %34 to i64
  %arrayidx.i64.1 = getelementptr inbounds nuw i32, ptr %moves, i64 %conv29.1
  store i32 %retval.6.i.ph.1, ptr %arrayidx.i64.1, align 4, !tbaa !4
  %inc31.1 = add nsw i32 %nbr_cnt.4, 1
  %conv32.1 = sext i32 %nbr_cnt.4 to i64
  %arrayidx.i65.1 = getelementptr inbounds nuw i32, ptr %nbr_list, i64 %conv32.1
  store i32 %conv11.1, ptr %arrayidx.i65.1, align 4, !tbaa !4
  br label %if.end36.1

if.end36.1:                                       ; preds = %_ZN9FastBoard8in_atariEi.exit.loopexit.1, %for.cond.cleanup20.1, %if.then.1, %if.end36
  %nbr_cnt.4.1 = phi i32 [ %nbr_cnt.4, %if.end36 ], [ %nbr_cnt.4, %if.then.1 ], [ %nbr_cnt.4, %for.cond.cleanup20.1 ], [ %inc31.1, %_ZN9FastBoard8in_atariEi.exit.loopexit.1 ]
  %arrayidx.i59.2 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 2
  %35 = load i32, ptr %arrayidx.i59.2, align 4, !tbaa !4
  %add.2 = add nsw i32 %35, %pos.0
  %conv6.2 = sext i32 %add.2 to i64
  %arrayidx.i60.2 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv6.2
  %36 = load i32, ptr %arrayidx.i60.2, align 4, !tbaa !0
  %cmp8.2 = icmp eq i32 %36, %conv2
  br i1 %cmp8.2, label %if.then.2, label %if.end36.2

if.then.2:                                        ; preds = %if.end36.1
  %arrayidx.i61.2 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv6.2
  %37 = load i16, ptr %arrayidx.i61.2, align 2, !tbaa !6
  %conv11.2 = zext i16 %37 to i32
  %conv12.2 = zext i16 %37 to i64
  %arrayidx.i62.2 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv12.2
  %38 = load i16, ptr %arrayidx.i62.2, align 2, !tbaa !6
  %cmp15.2 = icmp ult i16 %38, 2
  %cmp16.2 = icmp slt i32 %nbr_cnt.4.1, 4
  %or.cond.2 = select i1 %cmp15.2, i1 %cmp16.2, i1 false
  br i1 %or.cond.2, label %for.cond18.preheader.2, label %if.end36.2

for.cond18.preheader.2:                           ; preds = %if.then.2
  %cmp1966.2 = icmp sgt i32 %nbr_cnt.4.1, 0
  br i1 %cmp1966.2, label %for.body21.preheader.2, label %if.then26.2

for.body21.preheader.2:                           ; preds = %for.cond18.preheader.2
  %wide.trip.count.2 = zext i32 %nbr_cnt.4.1 to i64
  br label %for.body21.2

for.body21.2:                                     ; preds = %for.body21.2, %for.body21.preheader.2
  %indvars.iv.2 = phi i64 [ 0, %for.body21.preheader.2 ], [ %indvars.iv.next.2, %for.body21.2 ]
  %found.067.2 = phi i1 [ %spec.select.2, %for.body21.2 ], [ false, %for.body21.preheader.2 ]
  %arrayidx.i63.2 = getelementptr inbounds nuw i32, ptr %nbr_list, i64 %indvars.iv.2
  %39 = load i32, ptr %arrayidx.i63.2, align 4, !tbaa !4
  %cmp24.2 = icmp eq i32 %39, %conv11.2
  %spec.select.2 = select i1 %cmp24.2, i1 true, i1 %found.067.2
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp ne i64 %indvars.iv.next.2, %wide.trip.count.2
  br i1 %exitcond.2, label %for.body21.2, label %for.cond.cleanup20.2, !llvm.loop !8

for.cond.cleanup20.2:                             ; preds = %for.body21.2
  %spec.select.lcssa.2 = phi i1 [ %spec.select.2, %for.body21.2 ]
  br i1 %spec.select.lcssa.2, label %if.end36.2, label %if.then26.2

if.then26.2:                                      ; preds = %for.cond.cleanup20.2, %for.cond18.preheader.2
  %40 = load i32, ptr %m_dirs, align 4
  %41 = load i32, ptr %arrayidx.i34.1.i, align 4
  %42 = load i32, ptr %arrayidx.i34.2.i, align 4
  %43 = load i32, ptr %arrayidx.i34.3.i, align 4
  br label %do.body.i.2

do.body.i.2:                                      ; preds = %if.end17.i.2, %if.then26.2
  %pos.0.i.2 = phi i32 [ %conv20.i.2, %if.end17.i.2 ], [ %add.2, %if.then26.2 ]
  %conv.i.i.i.2 = sext i32 %pos.0.i.2 to i64
  %arrayidx.i.i.i.i.2 = getelementptr inbounds nuw i16, ptr %m_neighbours.i.i.i, i64 %conv.i.i.i.2
  %44 = load i16, ptr %arrayidx.i.i.i.i.2, align 2, !tbaa !6
  %45 = and i16 %44, 1792
  %tobool.not.i.2 = icmp eq i16 %45, 0
  br i1 %tobool.not.i.2, label %if.end17.i.2, label %for.body.i.2

for.body.i.2:                                     ; preds = %do.body.i.2
  %add.i.2 = add nsw i32 %pos.0.i.2, %40
  %conv10.i.2 = sext i32 %add.i.2 to i64
  %arrayidx.i35.i.2 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.i.2
  %46 = load i32, ptr %arrayidx.i35.i.2, align 4, !tbaa !0
  %cmp12.not.i.2 = icmp eq i32 %46, 2
  br i1 %cmp12.not.i.2, label %_ZN9FastBoard8in_atariEi.exit.loopexit.2, label %for.cond.i.2

for.cond.i.2:                                     ; preds = %for.body.i.2
  %add.1.i.2 = add nsw i32 %pos.0.i.2, %41
  %conv10.1.i.2 = sext i32 %add.1.i.2 to i64
  %arrayidx.i35.1.i.2 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.1.i.2
  %47 = load i32, ptr %arrayidx.i35.1.i.2, align 4, !tbaa !0
  %cmp12.not.1.i.2 = icmp eq i32 %47, 2
  br i1 %cmp12.not.1.i.2, label %_ZN9FastBoard8in_atariEi.exit.loopexit.2, label %for.cond.1.i.2

for.cond.1.i.2:                                   ; preds = %for.cond.i.2
  %add.2.i.2 = add nsw i32 %pos.0.i.2, %42
  %conv10.2.i.2 = sext i32 %add.2.i.2 to i64
  %arrayidx.i35.2.i.2 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.2.i.2
  %48 = load i32, ptr %arrayidx.i35.2.i.2, align 4, !tbaa !0
  %cmp12.not.2.i.2 = icmp eq i32 %48, 2
  br i1 %cmp12.not.2.i.2, label %_ZN9FastBoard8in_atariEi.exit.loopexit.2, label %for.cond.2.i.2

for.cond.2.i.2:                                   ; preds = %for.cond.1.i.2
  %add.3.i.2 = add nsw i32 %pos.0.i.2, %43
  %conv10.3.i.2 = sext i32 %add.3.i.2 to i64
  %arrayidx.i35.3.i.2 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.3.i.2
  %49 = load i32, ptr %arrayidx.i35.3.i.2, align 4, !tbaa !0
  %cmp12.not.3.i.2 = icmp eq i32 %49, 2
  br i1 %cmp12.not.3.i.2, label %_ZN9FastBoard8in_atariEi.exit.loopexit.2, label %if.end17.i.2

if.end17.i.2:                                     ; preds = %for.cond.2.i.2, %do.body.i.2
  %arrayidx.i36.i.2 = getelementptr inbounds nuw i16, ptr %m_next.i, i64 %conv.i.i.i.2
  %50 = load i16, ptr %arrayidx.i36.i.2, align 2, !tbaa !6
  %conv20.i.2 = zext i16 %50 to i32
  %cmp21.not.i.2 = icmp eq i32 %add.2, %conv20.i.2
  br i1 %cmp21.not.i.2, label %_ZN9FastBoard8in_atariEi.exit.loopexit.2, label %do.body.i.2, !llvm.loop !10

_ZN9FastBoard8in_atariEi.exit.loopexit.2:         ; preds = %if.end17.i.2, %for.cond.2.i.2, %for.cond.1.i.2, %for.cond.i.2, %for.body.i.2
  %retval.6.i.ph.2 = phi i32 [ %add.i.2, %for.body.i.2 ], [ %add.1.i.2, %for.cond.i.2 ], [ %add.2.i.2, %for.cond.1.i.2 ], [ %add.3.i.2, %for.cond.2.i.2 ], [ 0, %if.end17.i.2 ]
  %51 = load i32, ptr %movecnt, align 4, !tbaa !4
  %inc28.2 = add nsw i32 %51, 1
  store i32 %inc28.2, ptr %movecnt, align 4, !tbaa !4
  %conv29.2 = sext i32 %51 to i64
  %arrayidx.i64.2 = getelementptr inbounds nuw i32, ptr %moves, i64 %conv29.2
  store i32 %retval.6.i.ph.2, ptr %arrayidx.i64.2, align 4, !tbaa !4
  %inc31.2 = add nsw i32 %nbr_cnt.4.1, 1
  %conv32.2 = sext i32 %nbr_cnt.4.1 to i64
  %arrayidx.i65.2 = getelementptr inbounds nuw i32, ptr %nbr_list, i64 %conv32.2
  store i32 %conv11.2, ptr %arrayidx.i65.2, align 4, !tbaa !4
  br label %if.end36.2

if.end36.2:                                       ; preds = %_ZN9FastBoard8in_atariEi.exit.loopexit.2, %for.cond.cleanup20.2, %if.then.2, %if.end36.1
  %nbr_cnt.4.2 = phi i32 [ %nbr_cnt.4.1, %if.end36.1 ], [ %nbr_cnt.4.1, %if.then.2 ], [ %nbr_cnt.4.1, %for.cond.cleanup20.2 ], [ %inc31.2, %_ZN9FastBoard8in_atariEi.exit.loopexit.2 ]
  %arrayidx.i59.3 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 3
  %52 = load i32, ptr %arrayidx.i59.3, align 4, !tbaa !4
  %add.3 = add nsw i32 %52, %pos.0
  %conv6.3 = sext i32 %add.3 to i64
  %arrayidx.i60.3 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv6.3
  %53 = load i32, ptr %arrayidx.i60.3, align 4, !tbaa !0
  %cmp8.3 = icmp eq i32 %53, %conv2
  br i1 %cmp8.3, label %if.then.3, label %if.end36.3

if.then.3:                                        ; preds = %if.end36.2
  %arrayidx.i61.3 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv6.3
  %54 = load i16, ptr %arrayidx.i61.3, align 2, !tbaa !6
  %conv11.3 = zext i16 %54 to i32
  %conv12.3 = zext i16 %54 to i64
  %arrayidx.i62.3 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv12.3
  %55 = load i16, ptr %arrayidx.i62.3, align 2, !tbaa !6
  %cmp15.3 = icmp ult i16 %55, 2
  %cmp16.3 = icmp slt i32 %nbr_cnt.4.2, 4
  %or.cond.3 = select i1 %cmp15.3, i1 %cmp16.3, i1 false
  br i1 %or.cond.3, label %for.cond18.preheader.3, label %if.end36.3

for.cond18.preheader.3:                           ; preds = %if.then.3
  %cmp1966.3 = icmp sgt i32 %nbr_cnt.4.2, 0
  br i1 %cmp1966.3, label %for.body21.preheader.3, label %if.then26.3

for.body21.preheader.3:                           ; preds = %for.cond18.preheader.3
  %wide.trip.count.3 = zext i32 %nbr_cnt.4.2 to i64
  br label %for.body21.3

for.body21.3:                                     ; preds = %for.body21.3, %for.body21.preheader.3
  %indvars.iv.3 = phi i64 [ 0, %for.body21.preheader.3 ], [ %indvars.iv.next.3, %for.body21.3 ]
  %found.067.3 = phi i1 [ %spec.select.3, %for.body21.3 ], [ false, %for.body21.preheader.3 ]
  %arrayidx.i63.3 = getelementptr inbounds nuw i32, ptr %nbr_list, i64 %indvars.iv.3
  %56 = load i32, ptr %arrayidx.i63.3, align 4, !tbaa !4
  %cmp24.3 = icmp eq i32 %56, %conv11.3
  %spec.select.3 = select i1 %cmp24.3, i1 true, i1 %found.067.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3 = icmp ne i64 %indvars.iv.next.3, %wide.trip.count.3
  br i1 %exitcond.3, label %for.body21.3, label %for.cond.cleanup20.3, !llvm.loop !8

for.cond.cleanup20.3:                             ; preds = %for.body21.3
  %spec.select.lcssa.3 = phi i1 [ %spec.select.3, %for.body21.3 ]
  br i1 %spec.select.lcssa.3, label %if.end36.3, label %if.then26.3

if.then26.3:                                      ; preds = %for.cond.cleanup20.3, %for.cond18.preheader.3
  %57 = load i32, ptr %m_dirs, align 4
  %58 = load i32, ptr %arrayidx.i34.1.i, align 4
  %59 = load i32, ptr %arrayidx.i34.2.i, align 4
  %60 = load i32, ptr %arrayidx.i34.3.i, align 4
  br label %do.body.i.3

do.body.i.3:                                      ; preds = %if.end17.i.3, %if.then26.3
  %pos.0.i.3 = phi i32 [ %conv20.i.3, %if.end17.i.3 ], [ %add.3, %if.then26.3 ]
  %conv.i.i.i.3 = sext i32 %pos.0.i.3 to i64
  %arrayidx.i.i.i.i.3 = getelementptr inbounds nuw i16, ptr %m_neighbours.i.i.i, i64 %conv.i.i.i.3
  %61 = load i16, ptr %arrayidx.i.i.i.i.3, align 2, !tbaa !6
  %62 = and i16 %61, 1792
  %tobool.not.i.3 = icmp eq i16 %62, 0
  br i1 %tobool.not.i.3, label %if.end17.i.3, label %for.body.i.3

for.body.i.3:                                     ; preds = %do.body.i.3
  %add.i.3 = add nsw i32 %pos.0.i.3, %57
  %conv10.i.3 = sext i32 %add.i.3 to i64
  %arrayidx.i35.i.3 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.i.3
  %63 = load i32, ptr %arrayidx.i35.i.3, align 4, !tbaa !0
  %cmp12.not.i.3 = icmp eq i32 %63, 2
  br i1 %cmp12.not.i.3, label %_ZN9FastBoard8in_atariEi.exit.loopexit.3, label %for.cond.i.3

for.cond.i.3:                                     ; preds = %for.body.i.3
  %add.1.i.3 = add nsw i32 %pos.0.i.3, %58
  %conv10.1.i.3 = sext i32 %add.1.i.3 to i64
  %arrayidx.i35.1.i.3 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.1.i.3
  %64 = load i32, ptr %arrayidx.i35.1.i.3, align 4, !tbaa !0
  %cmp12.not.1.i.3 = icmp eq i32 %64, 2
  br i1 %cmp12.not.1.i.3, label %_ZN9FastBoard8in_atariEi.exit.loopexit.3, label %for.cond.1.i.3

for.cond.1.i.3:                                   ; preds = %for.cond.i.3
  %add.2.i.3 = add nsw i32 %pos.0.i.3, %59
  %conv10.2.i.3 = sext i32 %add.2.i.3 to i64
  %arrayidx.i35.2.i.3 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.2.i.3
  %65 = load i32, ptr %arrayidx.i35.2.i.3, align 4, !tbaa !0
  %cmp12.not.2.i.3 = icmp eq i32 %65, 2
  br i1 %cmp12.not.2.i.3, label %_ZN9FastBoard8in_atariEi.exit.loopexit.3, label %for.cond.2.i.3

for.cond.2.i.3:                                   ; preds = %for.cond.1.i.3
  %add.3.i.3 = add nsw i32 %pos.0.i.3, %60
  %conv10.3.i.3 = sext i32 %add.3.i.3 to i64
  %arrayidx.i35.3.i.3 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv10.3.i.3
  %66 = load i32, ptr %arrayidx.i35.3.i.3, align 4, !tbaa !0
  %cmp12.not.3.i.3 = icmp eq i32 %66, 2
  br i1 %cmp12.not.3.i.3, label %_ZN9FastBoard8in_atariEi.exit.loopexit.3, label %if.end17.i.3

if.end17.i.3:                                     ; preds = %for.cond.2.i.3, %do.body.i.3
  %arrayidx.i36.i.3 = getelementptr inbounds nuw i16, ptr %m_next.i, i64 %conv.i.i.i.3
  %67 = load i16, ptr %arrayidx.i36.i.3, align 2, !tbaa !6
  %conv20.i.3 = zext i16 %67 to i32
  %cmp21.not.i.3 = icmp eq i32 %add.3, %conv20.i.3
  br i1 %cmp21.not.i.3, label %_ZN9FastBoard8in_atariEi.exit.loopexit.3, label %do.body.i.3, !llvm.loop !10

_ZN9FastBoard8in_atariEi.exit.loopexit.3:         ; preds = %if.end17.i.3, %for.cond.2.i.3, %for.cond.1.i.3, %for.cond.i.3, %for.body.i.3
  %retval.6.i.ph.3 = phi i32 [ %add.i.3, %for.body.i.3 ], [ %add.1.i.3, %for.cond.i.3 ], [ %add.2.i.3, %for.cond.1.i.3 ], [ %add.3.i.3, %for.cond.2.i.3 ], [ 0, %if.end17.i.3 ]
  %68 = load i32, ptr %movecnt, align 4, !tbaa !4
  %inc28.3 = add nsw i32 %68, 1
  store i32 %inc28.3, ptr %movecnt, align 4, !tbaa !4
  %conv29.3 = sext i32 %68 to i64
  %arrayidx.i64.3 = getelementptr inbounds nuw i32, ptr %moves, i64 %conv29.3
  store i32 %retval.6.i.ph.3, ptr %arrayidx.i64.3, align 4, !tbaa !4
  %inc31.3 = add nsw i32 %nbr_cnt.4.2, 1
  %conv32.3 = sext i32 %nbr_cnt.4.2 to i64
  %arrayidx.i65.3 = getelementptr inbounds nuw i32, ptr %nbr_list, i64 %conv32.3
  store i32 %conv11.3, ptr %arrayidx.i65.3, align 4, !tbaa !4
  br label %if.end36.3

if.end36.3:                                       ; preds = %_ZN9FastBoard8in_atariEi.exit.loopexit.3, %for.cond.cleanup20.3, %if.then.3, %if.end36.2
  %nbr_cnt.4.3 = phi i32 [ %nbr_cnt.4.2, %if.end36.2 ], [ %nbr_cnt.4.2, %if.then.3 ], [ %nbr_cnt.4.2, %for.cond.cleanup20.3 ], [ %inc31.3, %_ZN9FastBoard8in_atariEi.exit.loopexit.3 ]
  %conv40 = sext i32 %pos.0 to i64
  %arrayidx.i58 = getelementptr inbounds nuw i16, ptr %m_next, i64 %conv40
  %69 = load i16, ptr %arrayidx.i58, align 2, !tbaa !6
  %conv42 = zext i16 %69 to i32
  %cmp43.not = icmp eq i32 %vertex, %conv42
  br i1 %cmp43.not, label %do.end, label %do.body, !llvm.loop !11

do.end:                                           ; preds = %if.end36.3
  call void @llvm.lifetime.end.p0(ptr nonnull %nbr_list) #2
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!0 = !{!1, !1, i64 0}
!1 = !{!"_ZTSN9FastBoard8square_tE", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !2, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"short", !2, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
