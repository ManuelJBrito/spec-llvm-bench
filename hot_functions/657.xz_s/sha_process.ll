; ModuleID = '/tmp/tmp.TJyB7RR2wl/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/557.xz_r/src/sha-2/sha512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = external hidden unnamed_addr constant [39 x i8], align 1
@.str.1 = external hidden unnamed_addr constant [119 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local void @sha_process(ptr noundef captures(none) %md, ptr noundef readonly captures(none) %src, i32 noundef %inlen) local_unnamed_addr #0 {
entry:
  %conv.i = sext i32 %inlen to i64
  %call.i = tail call noalias ptr @malloc(i64 noundef %conv.i) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.i, label %sortof_strdup.exit

if.then.i:                                        ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !0
  %call4.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef %conv.i, ptr noundef nonnull @.str.1, i32 noundef 129) #9
  tail call void @exit(i32 noundef 1) #10
  unreachable

sortof_strdup.exit:                               ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i, ptr readonly align 1 %src, i64 %conv.i, i1 false)
  %cmp.not46 = icmp eq i32 %inlen, 0
  br i1 %cmp.not46, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %sortof_strdup.exit
  %curlen = getelementptr inbounds nuw i8, ptr %md, i64 72
  %buf = getelementptr inbounds nuw i8, ptr %md, i64 76
  br label %while.body

while.body:                                       ; preds = %if.end22, %while.body.lr.ph
  %inlen.addr.048 = phi i32 [ %inlen, %while.body.lr.ph ], [ %inlen.addr.1, %if.end22 ]
  %in.047 = phi ptr [ %call.i, %while.body.lr.ph ], [ %in.1, %if.end22 ]
  %1 = load i32, ptr %curlen, align 8, !tbaa !5
  %cmp1 = icmp eq i32 %1, 0
  %cmp2 = icmp ugt i32 %inlen.addr.048, 127
  %or.cond = and i1 %cmp2, %cmp1
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  tail call fastcc void @sha_compress(ptr noundef nonnull %md, ptr noundef %in.047)
  %2 = load i64, ptr %md, align 8, !tbaa !9
  %add = add i64 %2, 1024
  store i64 %add, ptr %md, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.047, i64 128
  %sub = add i32 %inlen.addr.048, -128
  br label %if.end22

if.else:                                          ; preds = %while.body
  %sub4 = sub i32 128, %1
  %cond.i = tail call noundef i32 @llvm.umin.i32(i32 range(i32 1, 0) %inlen.addr.048, i32 %sub4)
  %idx.ext = zext i32 %1 to i64
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %buf, i64 %idx.ext
  %conv = zext i32 %cond.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr7, ptr align 1 %in.047, i64 %conv, i1 false)
  %add9 = add i32 %cond.i, %1
  store i32 %add9, ptr %curlen, align 8, !tbaa !5
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %in.047, i64 %conv
  %sub12 = sub i32 %inlen.addr.048, %cond.i
  %cmp14 = icmp eq i32 %add9, 128
  br i1 %cmp14, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.else
  tail call fastcc void @sha_compress(ptr noundef nonnull %md, ptr noundef nonnull %buf)
  %3 = load i64, ptr %md, align 8, !tbaa !9
  %add20 = add i64 %3, 1024
  store i64 %add20, ptr %md, align 8, !tbaa !9
  store i32 0, ptr %curlen, align 8, !tbaa !5
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.else, %if.then
  %in.1 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr11, %if.then16 ], [ %add.ptr11, %if.else ]
  %inlen.addr.1 = phi i32 [ %sub, %if.then ], [ %sub12, %if.then16 ], [ %sub12, %if.else ]
  %cmp.not = icmp eq i32 %inlen.addr.1, 0
  br i1 %cmp.not, label %while.end.loopexit, label %while.body, !llvm.loop !10

while.end.loopexit:                               ; preds = %if.end22
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %sortof_strdup.exit
  tail call void @free(ptr noundef %call.i) #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare hidden fastcc void @sha_compress(ptr noundef captures(none), ptr noundef readonly captures(none)) unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { nounwind }

!0 = !{!1, !1, i64 0}
!1 = !{!"p1 _ZTS8_IO_FILE", !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 72}
!6 = !{!"", !7, i64 0, !3, i64 8, !8, i64 72, !3, i64 76}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!6, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
