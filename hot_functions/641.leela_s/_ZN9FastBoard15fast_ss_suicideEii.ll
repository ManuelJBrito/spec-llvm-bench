; ModuleID = '/tmp/tmp.6ziJiVgTVP/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/FastBoard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.boost::array" = type { [2 x i32] }

@_ZN9FastBoard9s_eyemaskE = external dso_local constant %"class.boost::array", align 4

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8052) %this, i32 noundef %color, i32 noundef %i) local_unnamed_addr #0 align 2 {
entry:
  %m_neighbours = getelementptr inbounds nuw i8, ptr %this, i64 7076
  %conv = sext i32 %i to i64
  %arrayidx.i = getelementptr inbounds nuw i16, ptr %m_neighbours, i64 %conv
  %0 = load i16, ptr %arrayidx.i, align 2, !tbaa !0
  %conv2 = zext i16 %0 to i32
  %tobool.not = icmp eq i32 %color, 0
  %conv3 = zext i1 %tobool.not to i64
  %arrayidx.i52 = getelementptr inbounds nuw i32, ptr @_ZN9FastBoard9s_eyemaskE, i64 %conv3
  %1 = load i32, ptr %arrayidx.i52, align 4, !tbaa !4
  %and = and i32 %1, %conv2
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %m_libs = getelementptr inbounds nuw i8, ptr %this, i64 5308
  %m_parent = getelementptr inbounds nuw i8, ptr %this, i64 4424
  %2 = sext i32 %i to i64
  %3 = getelementptr i16, ptr %m_parent, i64 %2
  %arrayidx.i53 = getelementptr i8, ptr %3, i64 -2
  %4 = load i16, ptr %arrayidx.i53, align 2, !tbaa !0
  %conv8 = zext i16 %4 to i64
  %arrayidx.i54 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv8
  %5 = load i16, ptr %arrayidx.i54, align 2, !tbaa !0
  %cmp = icmp ult i16 %5, 2
  br i1 %cmp, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  %6 = sext i32 %i to i64
  %7 = getelementptr i16, ptr %m_parent, i64 %6
  %arrayidx.i55 = getelementptr i8, ptr %7, i64 2
  %8 = load i16, ptr %arrayidx.i55, align 2, !tbaa !0
  %conv17 = zext i16 %8 to i64
  %arrayidx.i56 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv17
  %9 = load i16, ptr %arrayidx.i56, align 2, !tbaa !0
  %cmp20 = icmp ult i16 %9, 2
  br i1 %cmp20, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end12
  %m_boardsize = getelementptr inbounds nuw i8, ptr %this, i64 8048
  %10 = load i32, ptr %m_boardsize, align 8, !tbaa !6
  %add25 = add nsw i32 %10, %i
  %11 = sext i32 %add25 to i64
  %12 = getelementptr i16, ptr %m_parent, i64 %11
  %arrayidx.i57 = getelementptr i8, ptr %12, i64 4
  %13 = load i16, ptr %arrayidx.i57, align 2, !tbaa !0
  %conv29 = zext i16 %13 to i64
  %arrayidx.i58 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv29
  %14 = load i16, ptr %arrayidx.i58, align 2, !tbaa !0
  %cmp32 = icmp ult i16 %14, 2
  br i1 %cmp32, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.end22
  %sub38 = sub nsw i32 %i, %10
  %15 = sext i32 %sub38 to i64
  %16 = getelementptr i16, ptr %m_parent, i64 %15
  %arrayidx.i59 = getelementptr i8, ptr %16, i64 -4
  %17 = load i16, ptr %arrayidx.i59, align 2, !tbaa !0
  %conv42 = zext i16 %17 to i64
  %arrayidx.i60 = getelementptr inbounds nuw i16, ptr %m_libs, i64 %conv42
  %18 = load i16, ptr %arrayidx.i60, align 2, !tbaa !0
  %cmp45 = icmp ugt i16 %18, 1
  %. = zext i1 %cmp45 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end22, %if.end12, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end12 ], [ 0, %if.end22 ], [ %., %if.end34 ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = !{!1, !1, i64 0}
!1 = !{!"short", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !2, i64 0}
!6 = !{!7, !5, i64 8048}
!7 = !{!"_ZTS9FastBoard", !8, i64 0, !8, i64 882, !5, i64 1764, !5, i64 1768, !5, i64 1772, !9, i64 1776, !10, i64 3540, !10, i64 4424, !10, i64 5308, !10, i64 6192, !8, i64 7076, !11, i64 7960, !12, i64 7976, !13, i64 8008, !13, i64 8016, !14, i64 8024, !5, i64 8048}
!8 = !{!"_ZTSN5boost5arrayItLm441EEE", !2, i64 0}
!9 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !2, i64 0}
!10 = !{!"_ZTSN5boost5arrayItLm442EEE", !2, i64 0}
!11 = !{!"_ZTSN5boost5arrayIiLm4EEE", !2, i64 0}
!12 = !{!"_ZTSN5boost5arrayIiLm8EEE", !2, i64 0}
!13 = !{!"_ZTSN5boost5arrayIiLm2EEE", !2, i64 0}
!14 = !{!"_ZTSSt6vectorIiSaIiEE", !15, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p1 int", !19, i64 0}
!19 = !{!"any pointer", !2, i64 0}
