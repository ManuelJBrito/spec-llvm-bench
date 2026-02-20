; ModuleID = '/tmp/tmp.ylvzF37JtS/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/generate.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KingMoves = external local_unnamed_addr global [64 x i64], align 16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
declare dso_local noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare dso_local noundef i32 @_Z16gen_check_blocksP7state_tPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef %s, ptr noundef %moves, i32 noundef %checker) local_unnamed_addr #2 {
entry:
  %tsq = alloca i64, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %tsq) #3
  %white_to_move = getelementptr inbounds nuw i8, ptr %s, i64 460
  %0 = load i32, ptr %white_to_move, align 4, !tbaa !0
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %wking_loc = getelementptr inbounds nuw i8, ptr %s, i64 464
  %1 = load i32, ptr %wking_loc, align 8, !tbaa !6
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i64, ptr @KingMoves, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %All = getelementptr inbounds nuw i8, ptr %s, i64 264
  %3 = load i64, ptr %All, align 8, !tbaa !8
  %not = xor i64 %3, -1
  %and = and i64 %2, %not
  br label %if.end

if.else:                                          ; preds = %entry
  %bking_loc = getelementptr inbounds nuw i8, ptr %s, i64 468
  %4 = load i32, ptr %bking_loc, align 4, !tbaa !9
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds i64, ptr @KingMoves, i64 %idxprom2
  %5 = load i64, ptr %arrayidx3, align 8, !tbaa !7
  %All4 = getelementptr inbounds nuw i8, ptr %s, i64 264
  %6 = load i64, ptr %All4, align 8, !tbaa !8
  %not5 = xor i64 %6, -1
  %and6 = and i64 %5, %not5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i64 [ %and, %if.then ], [ %and6, %if.else ]
  %from.0.in = phi ptr [ %wking_loc, %if.then ], [ %bking_loc, %if.else ]
  store i64 %storemerge, ptr %tsq, align 8, !tbaa !7
  %tobool8.not59 = icmp eq i64 %storemerge, 0
  br i1 %tobool8.not59, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %from.0 = load i32, ptr %from.0.in, align 4, !tbaa !10
  %shl1.i = shl i32 %from.0, 6
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %moves.addr.060 = phi ptr [ %moves, %while.body.lr.ph ], [ %incdec.ptr.i, %while.body ]
  %call = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %tsq)
  %or.i = or i32 %shl1.i, %call
  %or3.i = or i32 %or.i, 6815744
  store i32 %or3.i, ptr %moves.addr.060, align 4, !tbaa !10
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %moves.addr.060, i64 4
  %7 = load i64, ptr %tsq, align 8, !tbaa !7
  %tobool8.not = icmp eq i64 %7, 0
  br i1 %tobool8.not, label %while.end.loopexit, label %while.body, !llvm.loop !11

while.end.loopexit:                               ; preds = %while.body
  %incdec.ptr.i.lcssa = phi ptr [ %incdec.ptr.i, %while.body ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end
  %moves.addr.0.lcssa = phi ptr [ %moves, %if.end ], [ %incdec.ptr.i.lcssa, %while.end.loopexit ]
  %call10 = call noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef %s, ptr noundef %moves.addr.0.lcssa)
  %idx.ext = sext i32 %call10 to i64
  %add.ptr = getelementptr inbounds i32, ptr %moves.addr.0.lcssa, i64 %idx.ext
  %8 = add i32 %checker, -1
  %9 = icmp ult i32 %8, 6
  br i1 %9, label %if.then20, label %if.end21

if.then20:                                        ; preds = %while.end
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %moves to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

if.end21:                                         ; preds = %while.end
  %call22 = call noundef i32 @_Z16gen_check_blocksP7state_tPii(ptr noundef %s, ptr noundef %add.ptr, i32 noundef %checker)
  %idx.ext23 = sext i32 %call22 to i64
  %add.ptr24 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext23
  %sub.ptr.lhs.cast25 = ptrtoint ptr %add.ptr24 to i64
  %sub.ptr.rhs.cast26 = ptrtoint ptr %moves to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then20
  %retval.0.in.in = phi i64 [ %sub.ptr.sub, %if.then20 ], [ %sub.ptr.sub27, %if.end21 ]
  %retval.0.in = lshr exact i64 %retval.0.in.in, 2
  %retval.0 = trunc i64 %retval.0.in to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %tsq) #3
  ret i32 %retval.0
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!0 = !{!1, !2, i64 460}
!1 = !{!"_ZTS7state_t", !2, i64 0, !3, i64 4, !5, i64 264, !5, i64 272, !5, i64 280, !3, i64 288, !2, i64 392, !2, i64 396, !3, i64 400, !2, i64 452, !2, i64 456, !2, i64 460, !2, i64 464, !2, i64 468, !2, i64 472, !2, i64 476, !5, i64 480, !5, i64 488, !3, i64 496, !3, i64 2544, !3, i64 2800, !3, i64 3056, !5, i64 4080, !5, i64 4088, !2, i64 4096, !3, i64 4100, !2, i64 4356, !2, i64 4360, !2, i64 4364, !2, i64 4368, !2, i64 4372, !2, i64 4376, !2, i64 4380, !2, i64 4384, !2, i64 4388, !2, i64 4392, !3, i64 4400}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"long long", !3, i64 0}
!6 = !{!1, !2, i64 464}
!7 = !{!5, !5, i64 0}
!8 = !{!1, !5, i64 264}
!9 = !{!1, !2, i64 468}
!10 = !{!2, !2, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
