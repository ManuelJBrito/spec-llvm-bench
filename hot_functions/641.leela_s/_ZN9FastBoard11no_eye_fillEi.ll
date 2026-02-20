; ModuleID = '/tmp/tmp.hWikhlX7Wo/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/FastBoard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.boost::array" = type { [2 x i32] }

@_ZN9FastBoard9s_eyemaskE = external dso_local constant %"class.boost::array", align 4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8052) %this, i32 noundef %i) local_unnamed_addr #1 align 2 {
entry:
  %colorcount.i = alloca [4 x i32], align 16
  %m_tomove = getelementptr inbounds nuw i8, ptr %this, i64 1768
  %0 = load i32, ptr %m_tomove, align 8, !tbaa !0
  %m_neighbours.i = getelementptr inbounds nuw i8, ptr %this, i64 7076
  %conv.i = sext i32 %i to i64
  %arrayidx.i.i = getelementptr inbounds nuw i16, ptr %m_neighbours.i, i64 %conv.i
  %1 = load i16, ptr %arrayidx.i.i, align 2, !tbaa !17
  %conv2.i = zext i16 %1 to i32
  %conv3.i = sext i32 %0 to i64
  %arrayidx.i69.i = getelementptr inbounds nuw i32, ptr @_ZN9FastBoard9s_eyemaskE, i64 %conv3.i
  %2 = load i32, ptr %arrayidx.i69.i, align 4, !tbaa !19
  %and.i = and i32 %2, %conv2.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %_ZN9FastBoard6is_eyeEii.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr nonnull %colorcount.i) #2
  store i32 0, ptr %colorcount.i, align 16, !tbaa !19
  %arrayidx5.i = getelementptr inbounds nuw i8, ptr %colorcount.i, i64 4
  store i32 0, ptr %arrayidx5.i, align 4, !tbaa !19
  %arrayidx6.i = getelementptr inbounds nuw i8, ptr %colorcount.i, i64 12
  store i32 0, ptr %arrayidx6.i, align 4, !tbaa !19
  %m_square.i = getelementptr inbounds nuw i8, ptr %this, i64 1776
  %sub.i = add nsw i32 %i, -1
  %m_boardsize.i = getelementptr inbounds nuw i8, ptr %this, i64 8048
  %3 = load i32, ptr %m_boardsize.i, align 8, !tbaa !20
  %sub7.i = sub nsw i32 %sub.i, %3
  %4 = sext i32 %sub7.i to i64
  %5 = getelementptr i32, ptr %m_square.i, i64 %4
  %arrayidx.i70.i = getelementptr i8, ptr %5, i64 -8
  %6 = load i32, ptr %arrayidx.i70.i, align 4, !tbaa !21
  %idxprom.i = zext i32 %6 to i64
  %arrayidx11.i = getelementptr inbounds nuw i32, ptr %colorcount.i, i64 %idxprom.i
  %7 = load i32, ptr %arrayidx11.i, align 4, !tbaa !19
  %inc.i = add nsw i32 %7, 1
  store i32 %inc.i, ptr %arrayidx11.i, align 4, !tbaa !19
  %add.i = add nsw i32 %i, 1
  %sub14.i = sub nsw i32 %add.i, %3
  %8 = sext i32 %sub14.i to i64
  %9 = getelementptr i32, ptr %m_square.i, i64 %8
  %arrayidx.i71.i = getelementptr i8, ptr %9, i64 -8
  %10 = load i32, ptr %arrayidx.i71.i, align 4, !tbaa !21
  %idxprom18.i = zext i32 %10 to i64
  %arrayidx19.i = getelementptr inbounds nuw i32, ptr %colorcount.i, i64 %idxprom18.i
  %11 = load i32, ptr %arrayidx19.i, align 4, !tbaa !19
  %inc20.i = add nsw i32 %11, 1
  store i32 %inc20.i, ptr %arrayidx19.i, align 4, !tbaa !19
  %add24.i = add nsw i32 %3, %sub.i
  %12 = sext i32 %add24.i to i64
  %13 = getelementptr i32, ptr %m_square.i, i64 %12
  %arrayidx.i72.i = getelementptr i8, ptr %13, i64 8
  %14 = load i32, ptr %arrayidx.i72.i, align 4, !tbaa !21
  %idxprom28.i = zext i32 %14 to i64
  %arrayidx29.i = getelementptr inbounds nuw i32, ptr %colorcount.i, i64 %idxprom28.i
  %15 = load i32, ptr %arrayidx29.i, align 4, !tbaa !19
  %inc30.i = add nsw i32 %15, 1
  store i32 %inc30.i, ptr %arrayidx29.i, align 4, !tbaa !19
  %add34.i = add nsw i32 %3, %add.i
  %16 = sext i32 %add34.i to i64
  %17 = getelementptr i32, ptr %m_square.i, i64 %16
  %arrayidx.i73.i = getelementptr i8, ptr %17, i64 8
  %18 = load i32, ptr %arrayidx.i73.i, align 4, !tbaa !21
  %idxprom38.i = zext i32 %18 to i64
  %arrayidx39.i = getelementptr inbounds nuw i32, ptr %colorcount.i, i64 %idxprom38.i
  %19 = load i32, ptr %arrayidx39.i, align 4, !tbaa !19
  %inc40.i = add nsw i32 %19, 1
  store i32 %inc40.i, ptr %arrayidx39.i, align 4, !tbaa !19
  %20 = load i32, ptr %arrayidx6.i, align 4, !tbaa !19
  %cmp.i = icmp eq i32 %20, 0
  %tobool43.not.i = icmp eq i32 %0, 0
  %arrayidx5.val67.i = load i32, ptr %arrayidx5.i, align 4
  %colorcount.val68.i = load i32, ptr %colorcount.i, align 4
  %21 = select i1 %tobool43.not.i, i32 %arrayidx5.val67.i, i32 %colorcount.val68.i
  br i1 %cmp.i, label %if.then42.i, label %if.else.i

if.then42.i:                                      ; preds = %if.end.i
  %cmp46.i = icmp sgt i32 %21, 1
  br i1 %cmp46.i, label %cleanup.i, label %if.end56.i

if.else.i:                                        ; preds = %if.end.i
  %tobool53.not.i = icmp eq i32 %21, 0
  br i1 %tobool53.not.i, label %if.end56.i, label %cleanup.i

if.end56.i:                                       ; preds = %if.else.i, %if.then42.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end56.i, %if.else.i, %if.then42.i
  %22 = phi i1 [ false, %if.end56.i ], [ true, %if.then42.i ], [ true, %if.else.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %colorcount.i) #2
  br label %_ZN9FastBoard6is_eyeEii.exit

_ZN9FastBoard6is_eyeEii.exit:                     ; preds = %cleanup.i, %entry
  %retval.1.i = phi i1 [ %22, %cleanup.i ], [ true, %entry ]
  ret i1 %retval.1.i
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!0 = !{!1, !5, i64 1768}
!1 = !{!"_ZTS9FastBoard", !2, i64 0, !2, i64 882, !5, i64 1764, !5, i64 1768, !5, i64 1772, !6, i64 1776, !7, i64 3540, !7, i64 4424, !7, i64 5308, !7, i64 6192, !2, i64 7076, !8, i64 7960, !9, i64 7976, !10, i64 8008, !10, i64 8016, !11, i64 8024, !5, i64 8048}
!2 = !{!"_ZTSN5boost5arrayItLm441EEE", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"int", !3, i64 0}
!6 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !3, i64 0}
!7 = !{!"_ZTSN5boost5arrayItLm442EEE", !3, i64 0}
!8 = !{!"_ZTSN5boost5arrayIiLm4EEE", !3, i64 0}
!9 = !{!"_ZTSN5boost5arrayIiLm8EEE", !3, i64 0}
!10 = !{!"_ZTSN5boost5arrayIiLm2EEE", !3, i64 0}
!11 = !{!"_ZTSSt6vectorIiSaIiEE", !12, i64 0}
!12 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !13, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p1 int", !16, i64 0}
!16 = !{!"any pointer", !3, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !3, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!1, !5, i64 8048}
!21 = !{!22, !22, i64 0}
!22 = !{!"_ZTSN9FastBoard8square_tE", !3, i64 0}
