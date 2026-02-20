; ModuleID = '/tmp/tmp.1syQoeGu0v/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/FastBoard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.boost::array.4" = type { [4 x i32] }

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZN9FastBoard15nbr_criticalityEii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8052) %this, i32 noundef %color, i32 noundef %vertex) local_unnamed_addr #1 align 2 {
entry:
  %color_libs = alloca %"class.boost::array.4", align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %color_libs) #3
  store i32 8, ptr %color_libs, align 4, !tbaa !0
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %color_libs, i64 4
  store i32 8, ptr %arrayidx.i, align 4, !tbaa !0
  %arrayidx.i32 = getelementptr inbounds nuw i8, ptr %color_libs, i64 8
  store i32 8, ptr %arrayidx.i32, align 4, !tbaa !0
  %arrayidx.i33 = getelementptr inbounds nuw i8, ptr %color_libs, i64 12
  store i32 8, ptr %arrayidx.i33, align 4, !tbaa !0
  %m_dirs = getelementptr inbounds nuw i8, ptr %this, i64 7960
  %m_libs = getelementptr inbounds nuw i8, ptr %this, i64 5308
  %m_parent = getelementptr inbounds nuw i8, ptr %this, i64 4424
  %m_square = getelementptr inbounds nuw i8, ptr %this, i64 1776
  br label %for.body

for.body:                                         ; preds = %entry
  %0 = load i32, ptr %m_dirs, align 4, !tbaa !0
  %add = add nsw i32 %0, %vertex
  %conv6 = sext i32 %add to i64
  %arrayidx.i37 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv6
  %1 = load i16, ptr %arrayidx.i37, align 2, !tbaa !4
  %conv8 = zext i16 %1 to i64
  %arrayidx.i38 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv8
  %2 = load i16, ptr %arrayidx.i38, align 2, !tbaa !4
  %conv10 = zext i16 %2 to i32
  %arrayidx.i39 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv6
  %3 = load i32, ptr %arrayidx.i39, align 4, !tbaa !6
  %conv13 = zext i32 %3 to i64
  %arrayidx.i40 = getelementptr inbounds nuw i32, ptr %color_libs, i64 %conv13
  %4 = load i32, ptr %arrayidx.i40, align 4, !tbaa !0
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %4, i32 %conv10)
  store i32 %spec.store.select, ptr %arrayidx.i40, align 4
  %arrayidx.i36.1 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 1
  %5 = load i32, ptr %arrayidx.i36.1, align 4, !tbaa !0
  %add.1 = add nsw i32 %5, %vertex
  %conv6.1 = sext i32 %add.1 to i64
  %arrayidx.i37.1 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv6.1
  %6 = load i16, ptr %arrayidx.i37.1, align 2, !tbaa !4
  %conv8.1 = zext i16 %6 to i64
  %arrayidx.i38.1 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv8.1
  %7 = load i16, ptr %arrayidx.i38.1, align 2, !tbaa !4
  %conv10.1 = zext i16 %7 to i32
  %arrayidx.i39.1 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv6.1
  %8 = load i32, ptr %arrayidx.i39.1, align 4, !tbaa !6
  %conv13.1 = zext i32 %8 to i64
  %arrayidx.i40.1 = getelementptr inbounds nuw i32, ptr %color_libs, i64 %conv13.1
  %9 = load i32, ptr %arrayidx.i40.1, align 4, !tbaa !0
  %spec.store.select.1 = tail call i32 @llvm.smin.i32(i32 %9, i32 %conv10.1)
  store i32 %spec.store.select.1, ptr %arrayidx.i40.1, align 4
  %arrayidx.i36.2 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 2
  %10 = load i32, ptr %arrayidx.i36.2, align 4, !tbaa !0
  %add.2 = add nsw i32 %10, %vertex
  %conv6.2 = sext i32 %add.2 to i64
  %arrayidx.i37.2 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv6.2
  %11 = load i16, ptr %arrayidx.i37.2, align 2, !tbaa !4
  %conv8.2 = zext i16 %11 to i64
  %arrayidx.i38.2 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv8.2
  %12 = load i16, ptr %arrayidx.i38.2, align 2, !tbaa !4
  %conv10.2 = zext i16 %12 to i32
  %arrayidx.i39.2 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv6.2
  %13 = load i32, ptr %arrayidx.i39.2, align 4, !tbaa !6
  %conv13.2 = zext i32 %13 to i64
  %arrayidx.i40.2 = getelementptr inbounds nuw i32, ptr %color_libs, i64 %conv13.2
  %14 = load i32, ptr %arrayidx.i40.2, align 4, !tbaa !0
  %spec.store.select.2 = tail call i32 @llvm.smin.i32(i32 %14, i32 %conv10.2)
  store i32 %spec.store.select.2, ptr %arrayidx.i40.2, align 4
  %arrayidx.i36.3 = getelementptr inbounds nuw i32, ptr %m_dirs, i64 3
  %15 = load i32, ptr %arrayidx.i36.3, align 4, !tbaa !0
  %add.3 = add nsw i32 %15, %vertex
  %conv6.3 = sext i32 %add.3 to i64
  %arrayidx.i37.3 = getelementptr inbounds nuw i16, ptr %m_parent, i64 %conv6.3
  %16 = load i16, ptr %arrayidx.i37.3, align 2, !tbaa !4
  %conv8.3 = zext i16 %16 to i64
  %arrayidx.i38.3 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv8.3
  %17 = load i16, ptr %arrayidx.i38.3, align 2, !tbaa !4
  %conv10.3 = zext i16 %17 to i32
  %arrayidx.i39.3 = getelementptr inbounds nuw i32, ptr %m_square, i64 %conv6.3
  %18 = load i32, ptr %arrayidx.i39.3, align 4, !tbaa !6
  %conv13.3 = zext i32 %18 to i64
  %arrayidx.i40.3 = getelementptr inbounds nuw i32, ptr %color_libs, i64 %conv13.3
  %19 = load i32, ptr %arrayidx.i40.3, align 4, !tbaa !0
  %spec.store.select.3 = tail call i32 @llvm.smin.i32(i32 %19, i32 %conv10.3)
  store i32 %spec.store.select.3, ptr %arrayidx.i40.3, align 4
  %conv21 = sext i32 %color to i64
  %arrayidx.i34 = getelementptr inbounds nuw i32, ptr %color_libs, i64 %conv21
  %tobool.not = icmp eq i32 %color, 0
  %20 = load i32, ptr %arrayidx.i34, align 4, !tbaa !0
  %arrayidx.i.val = load i32, ptr %arrayidx.i, align 4
  %color_libs.val = load i32, ptr %color_libs, align 4
  %21 = select i1 %tobool.not, i32 %arrayidx.i.val, i32 %color_libs.val
  %retval.sroa.2.0.insert.ext.i = zext i32 %21 to i64
  %retval.sroa.2.0.insert.shift.i = shl nuw i64 %retval.sroa.2.0.insert.ext.i, 32
  %retval.sroa.0.0.insert.ext.i = zext i32 %20 to i64
  %retval.sroa.0.0.insert.insert.i = or disjoint i64 %retval.sroa.2.0.insert.shift.i, %retval.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.end.p0(ptr nonnull %color_libs) #3
  ret i64 %retval.sroa.0.0.insert.insert.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!0 = !{!1, !1, i64 0}
!1 = !{!"int", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"short", !2, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"_ZTSN9FastBoard8square_tE", !2, i64 0}
