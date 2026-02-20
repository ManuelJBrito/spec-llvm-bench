; ModuleID = '/tmp/tmp.PpFd0z6pPY/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/simulator/cdefaultlist.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12cDefaultList8doInsertEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(56) %this, ptr noundef %obj) local_unnamed_addr #2 align 2 {
entry:
  %size = getelementptr inbounds nuw i8, ptr %this, i64 52
  %0 = load i32, ptr %size, align 4, !tbaa !0
  %capacity = getelementptr inbounds nuw i8, ptr %this, i64 48
  %1 = load i32, ptr %capacity, align 8, !tbaa !15
  %cmp.not = icmp slt i32 %0, %1
  br i1 %cmp.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %cmp3 = icmp eq i32 %1, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  store i32 2, ptr %capacity, align 8, !tbaa !15
  store i32 0, ptr %size, align 4, !tbaa !0
  %call.i = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #6
  %vect.i = getelementptr inbounds nuw i8, ptr %this, i64 40
  store ptr %call.i, ptr %vect.i, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %call.i, i8 0, i64 16, i1 false), !tbaa !17
  br label %if.end14

if.else:                                          ; preds = %if.then
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 8)
  %spec.select = lshr i32 %2, 2
  %add = add nsw i32 %spec.select, %1
  store i32 %add, ptr %capacity, align 8, !tbaa !15
  %conv = sext i32 %add to i64
  %3 = icmp slt i32 %add, 0
  %4 = shl nsw i64 %conv, 3
  %5 = select i1 %3, i64 -1, i64 %4
  %call = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %5) #6
  %vect = getelementptr inbounds nuw i8, ptr %this, i64 40
  %6 = load ptr, ptr %vect, align 8, !tbaa !16
  %conv11 = sext i32 %0 to i64
  %mul = shl nsw i64 %conv11, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %call, ptr align 8 %6, i64 %mul, i1 false)
  %isnull = icmp eq ptr %6, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.else
  tail call void @_ZdaPv(ptr noundef nonnull %6) #7
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %if.else
  store ptr %call, ptr %vect, align 8, !tbaa !16
  br label %if.end14

if.end14:                                         ; preds = %delete.end, %if.then4, %entry
  %ownerp = getelementptr inbounds nuw i8, ptr %obj, i64 24
  store ptr %this, ptr %ownerp, align 8, !tbaa !19
  %vect15 = getelementptr inbounds nuw i8, ptr %this, i64 40
  %7 = load ptr, ptr %vect15, align 8, !tbaa !16
  %8 = load i32, ptr %size, align 4, !tbaa !0
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %size, align 4, !tbaa !0
  %pos = getelementptr inbounds nuw i8, ptr %obj, i64 32
  store i32 %8, ptr %pos, align 8, !tbaa !20
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %7, i64 %idxprom
  store ptr %obj, ptr %arrayidx, align 8, !tbaa !17
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { builtin allocsize(0) }
attributes #7 = { builtin nounwind }

!0 = !{!1, !12, i64 52}
!1 = !{!"_ZTS12cDefaultList", !2, i64 0, !13, i64 40, !12, i64 48, !12, i64 52}
!2 = !{!"_ZTS23cNoncopyableOwnedObject", !3, i64 0}
!3 = !{!"_ZTS12cOwnedObject", !4, i64 0, !11, i64 24, !12, i64 32}
!4 = !{!"_ZTS12cNamedObject", !5, i64 0, !6, i64 8, !10, i64 16, !10, i64 18}
!5 = !{!"_ZTS7cObject"}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!"p1 _ZTS7cObject", !7, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!"p2 _ZTS12cOwnedObject", !14, i64 0}
!14 = !{!"any p2 pointer", !7, i64 0}
!15 = !{!1, !12, i64 48}
!16 = !{!1, !13, i64 40}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS12cOwnedObject", !7, i64 0}
!19 = !{!3, !11, i64 24}
!20 = !{!3, !12, i64 32}
