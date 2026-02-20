; ModuleID = '/tmp/tmp.S0lJLRcakC/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/FastBoard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.boost::array" = type { [2 x i32] }

@_ZN9FastBoard9s_eyemaskE = external dso_local constant %"class.boost::array", align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare dso_local void @_ZN9FastBoard13add_neighbourEii(ptr noundef nonnull align 8 captures(none) dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare dso_local void @_ZN9FastBoard16remove_neighbourEii(ptr noundef nonnull align 8 captures(none) dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare dso_local void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 captures(none) dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare dso_local noundef i32 @_ZN9FastBoard16update_board_eyeEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %color, i32 noundef %i) local_unnamed_addr #1 align 2 {
entry:
  %m_neighbours = getelementptr inbounds nuw i8, ptr %this, i64 7076
  %conv = sext i32 %i to i64
  %arrayidx.i = getelementptr inbounds nuw i16, ptr %m_neighbours, i64 %conv
  %0 = load i16, ptr %arrayidx.i, align 2, !tbaa !0
  %conv2 = zext i16 %0 to i32
  %tobool.not = icmp eq i32 %color, 0
  %conv3 = zext i1 %tobool.not to i64
  %arrayidx.i150 = getelementptr inbounds nuw i32, ptr @_ZN9FastBoard9s_eyemaskE, i64 %conv3
  %1 = load i32, ptr %arrayidx.i150, align 4, !tbaa !4
  %and = and i32 %1, %conv2
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call6 = tail call noundef i32 @_ZN9FastBoard16update_board_eyeEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %color, i32 noundef %i)
  br label %cleanup112

if.end:                                           ; preds = %entry
  %m_square = getelementptr inbounds nuw i8, ptr %this, i64 1776
  %arrayidx.i151 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv
  store i32 %color, ptr %arrayidx.i151, align 4, !tbaa !6
  %conv9 = trunc i32 %i to i16
  %m_next = getelementptr inbounds nuw i8, ptr %this, i64 3540
  %arrayidx.i152 = getelementptr inbounds nuw i16, ptr %m_next, i64 %conv
  store i16 %conv9, ptr %arrayidx.i152, align 2, !tbaa !0
  %m_parent = getelementptr inbounds nuw i8, ptr %this, i64 4424
  %arrayidx.i153 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv
  store i16 %conv9, ptr %arrayidx.i153, align 2, !tbaa !0
  %2 = lshr i16 %0, 8
  %3 = and i16 %2, 7
  %m_libs = getelementptr inbounds nuw i8, ptr %this, i64 5308
  %arrayidx.i154 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv
  store i16 %3, ptr %arrayidx.i154, align 2, !tbaa !0
  %m_stones = getelementptr inbounds nuw i8, ptr %this, i64 6192
  %arrayidx.i155 = getelementptr inbounds nuw i16, ptr %m_stones, i64 %conv
  store i16 1, ptr %arrayidx.i155, align 2, !tbaa !0
  %m_totalstones = getelementptr inbounds nuw i8, ptr %this, i64 8016
  %conv21 = sext i32 %color to i64
  %arrayidx.i156 = getelementptr inbounds nuw i32, ptr %m_totalstones, i64 %conv21
  %4 = load i32, ptr %arrayidx.i156, align 4, !tbaa !4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %arrayidx.i156, align 4, !tbaa !4
  tail call void @_ZN9FastBoard13add_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %i, i32 noundef %color)
  %m_dirs = getelementptr inbounds nuw i8, ptr %this, i64 7960
  %conv36 = zext i1 %tobool.not to i32
  %m_empty_cnt.i = getelementptr inbounds nuw i8, ptr %this, i64 1764
  %m_empty_idx.i = getelementptr inbounds nuw i8, ptr %this, i64 882
  %m_prisoners = getelementptr inbounds nuw i8, ptr %this, i64 8008
  %arrayidx.i169 = getelementptr inbounds nuw i32, ptr %m_prisoners, i64 %conv21
  br label %for.body

for.body:                                         ; preds = %if.end
  %5 = load i32, ptr %m_dirs, align 4, !tbaa !4
  %add = add nsw i32 %5, %i
  %conv26 = sext i32 %add to i64
  %arrayidx.i165 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv26
  %6 = load i32, ptr %arrayidx.i165, align 4, !tbaa !6
  %cmp28 = icmp sgt i32 %6, 1
  br i1 %cmp28, label %cleanup, label %if.end30

if.end30:                                         ; preds = %for.body
  %cmp37 = icmp eq i32 %6, %conv36
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end30
  %arrayidx.i167 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv26
  %7 = load i16, ptr %arrayidx.i167, align 2, !tbaa !0
  %conv43 = zext i16 %7 to i64
  %arrayidx.i168 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv43
  %8 = load i16, ptr %arrayidx.i168, align 2, !tbaa !0
  %cmp46 = icmp eq i16 %8, 0
  br i1 %cmp46, label %if.then47, label %cleanup

if.then47:                                        ; preds = %if.then38
  %conv7.i = zext nneg i32 %6 to i64
  %arrayidx.i33.i = getelementptr inbounds nuw i32, ptr %m_totalstones, i64 %conv7.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %if.then47
  %removed.0.i = phi i32 [ 0, %if.then47 ], [ %inc17.i, %do.body.i ]
  %pos.0.i = phi i32 [ %add, %if.then47 ], [ %conv20.i, %do.body.i ]
  %conv3.i = sext i32 %pos.0.i to i64
  %arrayidx.i31.i = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv3.i
  store i32 2, ptr %arrayidx.i31.i, align 4, !tbaa !6
  %arrayidx.i32.i = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv3.i
  store i16 441, ptr %arrayidx.i32.i, align 2, !tbaa !0
  %9 = load i32, ptr %arrayidx.i33.i, align 4, !tbaa !4
  %dec.i = add nsw i32 %9, -1
  store i32 %dec.i, ptr %arrayidx.i33.i, align 4, !tbaa !4
  tail call void @_ZN9FastBoard16remove_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %pos.0.i, i32 noundef %6)
  %10 = load i32, ptr %m_empty_cnt.i, align 4, !tbaa !8
  %conv9.i = trunc i32 %10 to i16
  %arrayidx.i34.i = getelementptr inbounds nuw i16, ptr %m_empty_idx.i, i64 %conv3.i
  store i16 %conv9.i, ptr %arrayidx.i34.i, align 2, !tbaa !0
  %conv12.i = trunc i32 %pos.0.i to i16
  %conv14.i = sext i32 %10 to i64
  %arrayidx.i35.i = getelementptr inbounds nuw i16, ptr %this, i64 %conv14.i
  store i16 %conv12.i, ptr %arrayidx.i35.i, align 2, !tbaa !0
  %inc.i = add nsw i32 %10, 1
  store i32 %inc.i, ptr %m_empty_cnt.i, align 4, !tbaa !8
  %inc17.i = add nuw nsw i32 %removed.0.i, 1
  %arrayidx.i36.i = getelementptr inbounds nuw i16, ptr %m_next, i64 %conv3.i
  %11 = load i16, ptr %arrayidx.i36.i, align 2, !tbaa !0
  %conv20.i = zext i16 %11 to i32
  %cmp.not.i = icmp eq i32 %add, %conv20.i
  br i1 %cmp.not.i, label %_ZN9FastBoard18remove_string_fastEi.exit, label %do.body.i, !llvm.loop !22

_ZN9FastBoard18remove_string_fastEi.exit:         ; preds = %do.body.i
  %inc17.i.lcssa = phi i32 [ %inc17.i, %do.body.i ]
  %12 = load i32, ptr %arrayidx.i169, align 4, !tbaa !4
  %add51 = add nsw i32 %12, %inc17.i.lcssa
  store i32 %add51, ptr %arrayidx.i169, align 4, !tbaa !4
  br label %cleanup

if.else:                                          ; preds = %if.end30
  %cmp56 = icmp eq i32 %6, %color
  br i1 %cmp56, label %if.then57, label %cleanup

if.then57:                                        ; preds = %if.else
  %13 = load i16, ptr %arrayidx.i153, align 2, !tbaa !0
  %conv61 = zext i16 %13 to i32
  %arrayidx.i172 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv26
  %14 = load i16, ptr %arrayidx.i172, align 2, !tbaa !0
  %conv65 = zext i16 %14 to i32
  %cmp66.not = icmp eq i16 %13, %14
  br i1 %cmp66.not, label %cleanup, label %if.then67

if.then67:                                        ; preds = %if.then57
  %conv69 = zext i16 %13 to i64
  %arrayidx.i173 = getelementptr inbounds nuw i16, ptr %m_stones, i64 %conv69
  %15 = load i16, ptr %arrayidx.i173, align 2, !tbaa !0
  %conv73 = zext i16 %14 to i64
  %arrayidx.i174 = getelementptr inbounds nuw i16, ptr %m_stones, i64 %conv73
  %16 = load i16, ptr %arrayidx.i174, align 2, !tbaa !0
  %cmp76.not = icmp ult i16 %15, %16
  br i1 %cmp76.not, label %if.else78, label %if.then77

if.then77:                                        ; preds = %if.then67
  tail call void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %conv61, i32 noundef %conv65)
  br label %cleanup

if.else78:                                        ; preds = %if.then67
  tail call void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %conv65, i32 noundef %conv61)
  br label %cleanup

cleanup:                                          ; preds = %if.else78, %if.then77, %if.then57, %if.else, %_ZN9FastBoard18remove_string_fastEi.exit, %if.then38, %for.body
  %arrayidx.i164.1 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 1
  %17 = load i32, ptr %arrayidx.i164.1, align 4, !tbaa !4
  %add.1 = add nsw i32 %17, %i
  %conv26.1 = sext i32 %add.1 to i64
  %arrayidx.i165.1 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv26.1
  %18 = load i32, ptr %arrayidx.i165.1, align 4, !tbaa !6
  %cmp28.1 = icmp sgt i32 %18, 1
  br i1 %cmp28.1, label %cleanup.1, label %if.end30.1

if.end30.1:                                       ; preds = %cleanup
  %cmp37.1 = icmp eq i32 %18, %conv36
  br i1 %cmp37.1, label %if.then38.1, label %if.else.1

if.else.1:                                        ; preds = %if.end30.1
  %cmp56.1 = icmp eq i32 %18, %color
  br i1 %cmp56.1, label %if.then57.1, label %cleanup.1

if.then57.1:                                      ; preds = %if.else.1
  %19 = load i16, ptr %arrayidx.i153, align 2, !tbaa !0
  %conv61.1 = zext i16 %19 to i32
  %arrayidx.i172.1 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv26.1
  %20 = load i16, ptr %arrayidx.i172.1, align 2, !tbaa !0
  %conv65.1 = zext i16 %20 to i32
  %cmp66.not.1 = icmp eq i16 %19, %20
  br i1 %cmp66.not.1, label %cleanup.1, label %if.then67.1

if.then67.1:                                      ; preds = %if.then57.1
  %conv69.1 = zext i16 %19 to i64
  %arrayidx.i173.1 = getelementptr inbounds nuw i16, ptr %m_stones, i64 %conv69.1
  %21 = load i16, ptr %arrayidx.i173.1, align 2, !tbaa !0
  %conv73.1 = zext i16 %20 to i64
  %arrayidx.i174.1 = getelementptr inbounds nuw i16, ptr %m_stones, i64 %conv73.1
  %22 = load i16, ptr %arrayidx.i174.1, align 2, !tbaa !0
  %cmp76.not.1 = icmp ult i16 %21, %22
  br i1 %cmp76.not.1, label %if.else78.1, label %if.then77.1

if.then77.1:                                      ; preds = %if.then67.1
  tail call void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %conv61.1, i32 noundef %conv65.1)
  br label %cleanup.1

if.else78.1:                                      ; preds = %if.then67.1
  tail call void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %conv65.1, i32 noundef %conv61.1)
  br label %cleanup.1

if.then38.1:                                      ; preds = %if.end30.1
  %arrayidx.i167.1 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv26.1
  %23 = load i16, ptr %arrayidx.i167.1, align 2, !tbaa !0
  %conv43.1 = zext i16 %23 to i64
  %arrayidx.i168.1 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv43.1
  %24 = load i16, ptr %arrayidx.i168.1, align 2, !tbaa !0
  %cmp46.1 = icmp eq i16 %24, 0
  br i1 %cmp46.1, label %if.then47.1, label %cleanup.1

if.then47.1:                                      ; preds = %if.then38.1
  %conv7.i.1 = zext nneg i32 %18 to i64
  %arrayidx.i33.i.1 = getelementptr inbounds nuw i32, ptr %m_totalstones, i64 %conv7.i.1
  br label %do.body.i.1

do.body.i.1:                                      ; preds = %do.body.i.1, %if.then47.1
  %removed.0.i.1 = phi i32 [ 0, %if.then47.1 ], [ %inc17.i.1, %do.body.i.1 ]
  %pos.0.i.1 = phi i32 [ %add.1, %if.then47.1 ], [ %conv20.i.1, %do.body.i.1 ]
  %conv3.i.1 = sext i32 %pos.0.i.1 to i64
  %arrayidx.i31.i.1 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv3.i.1
  store i32 2, ptr %arrayidx.i31.i.1, align 4, !tbaa !6
  %arrayidx.i32.i.1 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv3.i.1
  store i16 441, ptr %arrayidx.i32.i.1, align 2, !tbaa !0
  %25 = load i32, ptr %arrayidx.i33.i.1, align 4, !tbaa !4
  %dec.i.1 = add nsw i32 %25, -1
  store i32 %dec.i.1, ptr %arrayidx.i33.i.1, align 4, !tbaa !4
  tail call void @_ZN9FastBoard16remove_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %pos.0.i.1, i32 noundef %18)
  %26 = load i32, ptr %m_empty_cnt.i, align 4, !tbaa !8
  %conv9.i.1 = trunc i32 %26 to i16
  %arrayidx.i34.i.1 = getelementptr inbounds nuw i16, ptr %m_empty_idx.i, i64 %conv3.i.1
  store i16 %conv9.i.1, ptr %arrayidx.i34.i.1, align 2, !tbaa !0
  %conv12.i.1 = trunc i32 %pos.0.i.1 to i16
  %conv14.i.1 = sext i32 %26 to i64
  %arrayidx.i35.i.1 = getelementptr inbounds nuw i16, ptr %this, i64 %conv14.i.1
  store i16 %conv12.i.1, ptr %arrayidx.i35.i.1, align 2, !tbaa !0
  %inc.i.1 = add nsw i32 %26, 1
  store i32 %inc.i.1, ptr %m_empty_cnt.i, align 4, !tbaa !8
  %inc17.i.1 = add nuw nsw i32 %removed.0.i.1, 1
  %arrayidx.i36.i.1 = getelementptr inbounds nuw i16, ptr %m_next, i64 %conv3.i.1
  %27 = load i16, ptr %arrayidx.i36.i.1, align 2, !tbaa !0
  %conv20.i.1 = zext i16 %27 to i32
  %cmp.not.i.1 = icmp eq i32 %add.1, %conv20.i.1
  br i1 %cmp.not.i.1, label %_ZN9FastBoard18remove_string_fastEi.exit.1, label %do.body.i.1, !llvm.loop !22

_ZN9FastBoard18remove_string_fastEi.exit.1:       ; preds = %do.body.i.1
  %inc17.i.lcssa.1 = phi i32 [ %inc17.i.1, %do.body.i.1 ]
  %28 = load i32, ptr %arrayidx.i169, align 4, !tbaa !4
  %add51.1 = add nsw i32 %28, %inc17.i.lcssa.1
  store i32 %add51.1, ptr %arrayidx.i169, align 4, !tbaa !4
  br label %cleanup.1

cleanup.1:                                        ; preds = %_ZN9FastBoard18remove_string_fastEi.exit.1, %if.then38.1, %if.else78.1, %if.then77.1, %if.then57.1, %if.else.1, %cleanup
  %arrayidx.i164.2 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 2
  %29 = load i32, ptr %arrayidx.i164.2, align 4, !tbaa !4
  %add.2 = add nsw i32 %29, %i
  %conv26.2 = sext i32 %add.2 to i64
  %arrayidx.i165.2 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv26.2
  %30 = load i32, ptr %arrayidx.i165.2, align 4, !tbaa !6
  %cmp28.2 = icmp sgt i32 %30, 1
  br i1 %cmp28.2, label %cleanup.2, label %if.end30.2

if.end30.2:                                       ; preds = %cleanup.1
  %cmp37.2 = icmp eq i32 %30, %conv36
  br i1 %cmp37.2, label %if.then38.2, label %if.else.2

if.else.2:                                        ; preds = %if.end30.2
  %cmp56.2 = icmp eq i32 %30, %color
  br i1 %cmp56.2, label %if.then57.2, label %cleanup.2

if.then57.2:                                      ; preds = %if.else.2
  %31 = load i16, ptr %arrayidx.i153, align 2, !tbaa !0
  %conv61.2 = zext i16 %31 to i32
  %arrayidx.i172.2 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv26.2
  %32 = load i16, ptr %arrayidx.i172.2, align 2, !tbaa !0
  %conv65.2 = zext i16 %32 to i32
  %cmp66.not.2 = icmp eq i16 %31, %32
  br i1 %cmp66.not.2, label %cleanup.2, label %if.then67.2

if.then67.2:                                      ; preds = %if.then57.2
  %conv69.2 = zext i16 %31 to i64
  %arrayidx.i173.2 = getelementptr inbounds nuw i16, ptr %m_stones, i64 %conv69.2
  %33 = load i16, ptr %arrayidx.i173.2, align 2, !tbaa !0
  %conv73.2 = zext i16 %32 to i64
  %arrayidx.i174.2 = getelementptr inbounds nuw i16, ptr %m_stones, i64 %conv73.2
  %34 = load i16, ptr %arrayidx.i174.2, align 2, !tbaa !0
  %cmp76.not.2 = icmp ult i16 %33, %34
  br i1 %cmp76.not.2, label %if.else78.2, label %if.then77.2

if.then77.2:                                      ; preds = %if.then67.2
  tail call void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %conv61.2, i32 noundef %conv65.2)
  br label %cleanup.2

if.else78.2:                                      ; preds = %if.then67.2
  tail call void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %conv65.2, i32 noundef %conv61.2)
  br label %cleanup.2

if.then38.2:                                      ; preds = %if.end30.2
  %arrayidx.i167.2 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv26.2
  %35 = load i16, ptr %arrayidx.i167.2, align 2, !tbaa !0
  %conv43.2 = zext i16 %35 to i64
  %arrayidx.i168.2 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv43.2
  %36 = load i16, ptr %arrayidx.i168.2, align 2, !tbaa !0
  %cmp46.2 = icmp eq i16 %36, 0
  br i1 %cmp46.2, label %if.then47.2, label %cleanup.2

if.then47.2:                                      ; preds = %if.then38.2
  %conv7.i.2 = zext nneg i32 %30 to i64
  %arrayidx.i33.i.2 = getelementptr inbounds nuw i32, ptr %m_totalstones, i64 %conv7.i.2
  br label %do.body.i.2

do.body.i.2:                                      ; preds = %do.body.i.2, %if.then47.2
  %removed.0.i.2 = phi i32 [ 0, %if.then47.2 ], [ %inc17.i.2, %do.body.i.2 ]
  %pos.0.i.2 = phi i32 [ %add.2, %if.then47.2 ], [ %conv20.i.2, %do.body.i.2 ]
  %conv3.i.2 = sext i32 %pos.0.i.2 to i64
  %arrayidx.i31.i.2 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv3.i.2
  store i32 2, ptr %arrayidx.i31.i.2, align 4, !tbaa !6
  %arrayidx.i32.i.2 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv3.i.2
  store i16 441, ptr %arrayidx.i32.i.2, align 2, !tbaa !0
  %37 = load i32, ptr %arrayidx.i33.i.2, align 4, !tbaa !4
  %dec.i.2 = add nsw i32 %37, -1
  store i32 %dec.i.2, ptr %arrayidx.i33.i.2, align 4, !tbaa !4
  tail call void @_ZN9FastBoard16remove_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %pos.0.i.2, i32 noundef %30)
  %38 = load i32, ptr %m_empty_cnt.i, align 4, !tbaa !8
  %conv9.i.2 = trunc i32 %38 to i16
  %arrayidx.i34.i.2 = getelementptr inbounds nuw i16, ptr %m_empty_idx.i, i64 %conv3.i.2
  store i16 %conv9.i.2, ptr %arrayidx.i34.i.2, align 2, !tbaa !0
  %conv12.i.2 = trunc i32 %pos.0.i.2 to i16
  %conv14.i.2 = sext i32 %38 to i64
  %arrayidx.i35.i.2 = getelementptr inbounds nuw i16, ptr %this, i64 %conv14.i.2
  store i16 %conv12.i.2, ptr %arrayidx.i35.i.2, align 2, !tbaa !0
  %inc.i.2 = add nsw i32 %38, 1
  store i32 %inc.i.2, ptr %m_empty_cnt.i, align 4, !tbaa !8
  %inc17.i.2 = add nuw nsw i32 %removed.0.i.2, 1
  %arrayidx.i36.i.2 = getelementptr inbounds nuw i16, ptr %m_next, i64 %conv3.i.2
  %39 = load i16, ptr %arrayidx.i36.i.2, align 2, !tbaa !0
  %conv20.i.2 = zext i16 %39 to i32
  %cmp.not.i.2 = icmp eq i32 %add.2, %conv20.i.2
  br i1 %cmp.not.i.2, label %_ZN9FastBoard18remove_string_fastEi.exit.2, label %do.body.i.2, !llvm.loop !22

_ZN9FastBoard18remove_string_fastEi.exit.2:       ; preds = %do.body.i.2
  %inc17.i.lcssa.2 = phi i32 [ %inc17.i.2, %do.body.i.2 ]
  %40 = load i32, ptr %arrayidx.i169, align 4, !tbaa !4
  %add51.2 = add nsw i32 %40, %inc17.i.lcssa.2
  store i32 %add51.2, ptr %arrayidx.i169, align 4, !tbaa !4
  br label %cleanup.2

cleanup.2:                                        ; preds = %_ZN9FastBoard18remove_string_fastEi.exit.2, %if.then38.2, %if.else78.2, %if.then77.2, %if.then57.2, %if.else.2, %cleanup.1
  %arrayidx.i164.3 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 3
  %41 = load i32, ptr %arrayidx.i164.3, align 4, !tbaa !4
  %add.3 = add nsw i32 %41, %i
  %conv26.3 = sext i32 %add.3 to i64
  %arrayidx.i165.3 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv26.3
  %42 = load i32, ptr %arrayidx.i165.3, align 4, !tbaa !6
  %cmp28.3 = icmp sgt i32 %42, 1
  br i1 %cmp28.3, label %cleanup.3, label %if.end30.3

if.end30.3:                                       ; preds = %cleanup.2
  %cmp37.3 = icmp eq i32 %42, %conv36
  br i1 %cmp37.3, label %if.then38.3, label %if.else.3

if.else.3:                                        ; preds = %if.end30.3
  %cmp56.3 = icmp eq i32 %42, %color
  br i1 %cmp56.3, label %if.then57.3, label %cleanup.3

if.then57.3:                                      ; preds = %if.else.3
  %43 = load i16, ptr %arrayidx.i153, align 2, !tbaa !0
  %conv61.3 = zext i16 %43 to i32
  %arrayidx.i172.3 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv26.3
  %44 = load i16, ptr %arrayidx.i172.3, align 2, !tbaa !0
  %conv65.3 = zext i16 %44 to i32
  %cmp66.not.3 = icmp eq i16 %43, %44
  br i1 %cmp66.not.3, label %cleanup.3, label %if.then67.3

if.then67.3:                                      ; preds = %if.then57.3
  %conv69.3 = zext i16 %43 to i64
  %arrayidx.i173.3 = getelementptr inbounds nuw i16, ptr %m_stones, i64 %conv69.3
  %45 = load i16, ptr %arrayidx.i173.3, align 2, !tbaa !0
  %conv73.3 = zext i16 %44 to i64
  %arrayidx.i174.3 = getelementptr inbounds nuw i16, ptr %m_stones, i64 %conv73.3
  %46 = load i16, ptr %arrayidx.i174.3, align 2, !tbaa !0
  %cmp76.not.3 = icmp ult i16 %45, %46
  br i1 %cmp76.not.3, label %if.else78.3, label %if.then77.3

if.then77.3:                                      ; preds = %if.then67.3
  tail call void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %conv61.3, i32 noundef %conv65.3)
  br label %cleanup.3

if.else78.3:                                      ; preds = %if.then67.3
  tail call void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %conv65.3, i32 noundef %conv61.3)
  br label %cleanup.3

if.then38.3:                                      ; preds = %if.end30.3
  %arrayidx.i167.3 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv26.3
  %47 = load i16, ptr %arrayidx.i167.3, align 2, !tbaa !0
  %conv43.3 = zext i16 %47 to i64
  %arrayidx.i168.3 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv43.3
  %48 = load i16, ptr %arrayidx.i168.3, align 2, !tbaa !0
  %cmp46.3 = icmp eq i16 %48, 0
  br i1 %cmp46.3, label %if.then47.3, label %cleanup.3

if.then47.3:                                      ; preds = %if.then38.3
  %conv7.i.3 = zext nneg i32 %42 to i64
  %arrayidx.i33.i.3 = getelementptr inbounds nuw i32, ptr %m_totalstones, i64 %conv7.i.3
  br label %do.body.i.3

do.body.i.3:                                      ; preds = %do.body.i.3, %if.then47.3
  %removed.0.i.3 = phi i32 [ 0, %if.then47.3 ], [ %inc17.i.3, %do.body.i.3 ]
  %pos.0.i.3 = phi i32 [ %add.3, %if.then47.3 ], [ %conv20.i.3, %do.body.i.3 ]
  %conv3.i.3 = sext i32 %pos.0.i.3 to i64
  %arrayidx.i31.i.3 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv3.i.3
  store i32 2, ptr %arrayidx.i31.i.3, align 4, !tbaa !6
  %arrayidx.i32.i.3 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv3.i.3
  store i16 441, ptr %arrayidx.i32.i.3, align 2, !tbaa !0
  %49 = load i32, ptr %arrayidx.i33.i.3, align 4, !tbaa !4
  %dec.i.3 = add nsw i32 %49, -1
  store i32 %dec.i.3, ptr %arrayidx.i33.i.3, align 4, !tbaa !4
  tail call void @_ZN9FastBoard16remove_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %pos.0.i.3, i32 noundef %42)
  %50 = load i32, ptr %m_empty_cnt.i, align 4, !tbaa !8
  %conv9.i.3 = trunc i32 %50 to i16
  %arrayidx.i34.i.3 = getelementptr inbounds nuw i16, ptr %m_empty_idx.i, i64 %conv3.i.3
  store i16 %conv9.i.3, ptr %arrayidx.i34.i.3, align 2, !tbaa !0
  %conv12.i.3 = trunc i32 %pos.0.i.3 to i16
  %conv14.i.3 = sext i32 %50 to i64
  %arrayidx.i35.i.3 = getelementptr inbounds nuw i16, ptr %this, i64 %conv14.i.3
  store i16 %conv12.i.3, ptr %arrayidx.i35.i.3, align 2, !tbaa !0
  %inc.i.3 = add nsw i32 %50, 1
  store i32 %inc.i.3, ptr %m_empty_cnt.i, align 4, !tbaa !8
  %inc17.i.3 = add nuw nsw i32 %removed.0.i.3, 1
  %arrayidx.i36.i.3 = getelementptr inbounds nuw i16, ptr %m_next, i64 %conv3.i.3
  %51 = load i16, ptr %arrayidx.i36.i.3, align 2, !tbaa !0
  %conv20.i.3 = zext i16 %51 to i32
  %cmp.not.i.3 = icmp eq i32 %add.3, %conv20.i.3
  br i1 %cmp.not.i.3, label %_ZN9FastBoard18remove_string_fastEi.exit.3, label %do.body.i.3, !llvm.loop !22

_ZN9FastBoard18remove_string_fastEi.exit.3:       ; preds = %do.body.i.3
  %inc17.i.lcssa.3 = phi i32 [ %inc17.i.3, %do.body.i.3 ]
  %52 = load i32, ptr %arrayidx.i169, align 4, !tbaa !4
  %add51.3 = add nsw i32 %52, %inc17.i.lcssa.3
  store i32 %add51.3, ptr %arrayidx.i169, align 4, !tbaa !4
  br label %cleanup.3

cleanup.3:                                        ; preds = %_ZN9FastBoard18remove_string_fastEi.exit.3, %if.then38.3, %if.else78.3, %if.then77.3, %if.then57.3, %if.else.3, %cleanup.2
  %m_empty_cnt = getelementptr inbounds nuw i8, ptr %this, i64 1764
  %53 = load i32, ptr %m_empty_cnt, align 4, !tbaa !8
  %dec = add nsw i32 %53, -1
  store i32 %dec, ptr %m_empty_cnt, align 4, !tbaa !8
  %conv85 = sext i32 %dec to i64
  %arrayidx.i157 = getelementptr inbounds nuw i16, ptr %this, i64 %conv85
  %54 = load i16, ptr %arrayidx.i157, align 2, !tbaa !0
  %m_empty_idx = getelementptr inbounds nuw i8, ptr %this, i64 882
  %arrayidx.i158 = getelementptr inbounds nuw i16, ptr %m_empty_idx, i64 %conv
  %55 = load i16, ptr %arrayidx.i158, align 2, !tbaa !0
  %conv91 = zext i16 %54 to i64
  %arrayidx.i159 = getelementptr inbounds nuw i16, ptr %m_empty_idx, i64 %conv91
  store i16 %55, ptr %arrayidx.i159, align 2, !tbaa !0
  %56 = load i16, ptr %arrayidx.i158, align 2, !tbaa !0
  %conv98 = zext i16 %56 to i64
  %arrayidx.i161 = getelementptr inbounds nuw i16, ptr %this, i64 %conv98
  store i16 %54, ptr %arrayidx.i161, align 2, !tbaa !0
  %57 = load i16, ptr %arrayidx.i153, align 2, !tbaa !0
  %conv104 = zext i16 %57 to i64
  %arrayidx.i163 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv104
  %58 = load i16, ptr %arrayidx.i163, align 2, !tbaa !0
  %cmp107 = icmp eq i16 %58, 0
  br i1 %cmp107, label %if.then108, label %cleanup112

if.then108:                                       ; preds = %cleanup.3
  %59 = load i32, ptr %arrayidx.i151, align 4, !tbaa !6
  %conv7.i180 = sext i32 %59 to i64
  %arrayidx.i33.i181 = getelementptr inbounds nuw i32, ptr %m_totalstones, i64 %conv7.i180
  br label %do.body.i185

do.body.i185:                                     ; preds = %do.body.i185, %if.then108
  %pos.0.i187 = phi i32 [ %i, %if.then108 ], [ %conv20.i200, %do.body.i185 ]
  %conv3.i188 = sext i32 %pos.0.i187 to i64
  %arrayidx.i31.i189 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv3.i188
  store i32 2, ptr %arrayidx.i31.i189, align 4, !tbaa !6
  %arrayidx.i32.i190 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv3.i188
  store i16 441, ptr %arrayidx.i32.i190, align 2, !tbaa !0
  %60 = load i32, ptr %arrayidx.i33.i181, align 4, !tbaa !4
  %dec.i191 = add nsw i32 %60, -1
  store i32 %dec.i191, ptr %arrayidx.i33.i181, align 4, !tbaa !4
  tail call void @_ZN9FastBoard16remove_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %this, i32 noundef %pos.0.i187, i32 noundef %59)
  %61 = load i32, ptr %m_empty_cnt, align 4, !tbaa !8
  %conv9.i192 = trunc i32 %61 to i16
  %arrayidx.i34.i193 = getelementptr inbounds nuw i16, ptr %m_empty_idx, i64 %conv3.i188
  store i16 %conv9.i192, ptr %arrayidx.i34.i193, align 2, !tbaa !0
  %conv12.i194 = trunc i32 %pos.0.i187 to i16
  %conv14.i195 = sext i32 %61 to i64
  %arrayidx.i35.i196 = getelementptr inbounds nuw i16, ptr %this, i64 %conv14.i195
  store i16 %conv12.i194, ptr %arrayidx.i35.i196, align 2, !tbaa !0
  %inc.i197 = add nsw i32 %61, 1
  store i32 %inc.i197, ptr %m_empty_cnt, align 4, !tbaa !8
  %arrayidx.i36.i199 = getelementptr inbounds nuw i16, ptr %m_next, i64 %conv3.i188
  %62 = load i16, ptr %arrayidx.i36.i199, align 2, !tbaa !0
  %conv20.i200 = zext i16 %62 to i32
  %cmp.not.i201 = icmp eq i32 %i, %conv20.i200
  br i1 %cmp.not.i201, label %cleanup112.loopexit, label %do.body.i185, !llvm.loop !22

cleanup112.loopexit:                              ; preds = %do.body.i185
  br label %cleanup112

cleanup112:                                       ; preds = %cleanup112.loopexit, %cleanup.3, %if.then
  %retval.0 = phi i32 [ %call6, %if.then ], [ -1, %cleanup.3 ], [ -1, %cleanup112.loopexit ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !1, i64 0}
!1 = !{!"short", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !2, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"_ZTSN9FastBoard8square_tE", !2, i64 0}
!8 = !{!9, !5, i64 1764}
!9 = !{!"_ZTS9FastBoard", !10, i64 0, !10, i64 882, !5, i64 1764, !5, i64 1768, !5, i64 1772, !11, i64 1776, !12, i64 3540, !12, i64 4424, !12, i64 5308, !12, i64 6192, !10, i64 7076, !13, i64 7960, !14, i64 7976, !15, i64 8008, !15, i64 8016, !16, i64 8024, !5, i64 8048}
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
