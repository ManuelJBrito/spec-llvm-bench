; ModuleID = '/tmp/tmp.xKidM1Fv2C/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/557.xz_r/src/liblzma/lzma/lzma_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: inlinehint nounwind uwtable
define hidden fastcc zeroext i1 @rc_encode(ptr noundef captures(none) %rc, ptr noundef writeonly captures(none) %out, ptr noundef captures(none) %out_pos, i64 noundef %out_size) unnamed_addr #0 {
entry:
  %pos = getelementptr inbounds nuw i8, ptr %rc, i64 32
  %count = getelementptr inbounds nuw i8, ptr %rc, i64 24
  %0 = load i64, ptr %pos, align 8, !tbaa !0
  %1 = load i64, ptr %count, align 8, !tbaa !6
  %cmp137 = icmp ult i64 %0, %1
  br i1 %cmp137, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %range = getelementptr inbounds nuw i8, ptr %rc, i64 16
  %cache.i = getelementptr inbounds nuw i8, ptr %rc, i64 20
  %cache_size.i = getelementptr inbounds nuw i8, ptr %rc, i64 8
  %cache_size23.i = getelementptr inbounds nuw i8, ptr %rc, i64 8
  %symbols = getelementptr inbounds nuw i8, ptr %rc, i64 40
  %probs19 = getelementptr inbounds nuw i8, ptr %rc, i64 272
  %probs = getelementptr inbounds nuw i8, ptr %rc, i64 272
  br label %while.body

while.body:                                       ; preds = %sw.epilog, %while.body.lr.ph
  %2 = load i32, ptr %range, align 8, !tbaa !7
  %cmp1 = icmp ult i32 %2, 16777216
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %while.body
  %3 = load i64, ptr %rc, align 8, !tbaa !8
  %4 = and i64 %3, -16777216
  %or.cond.i = icmp eq i64 %4, 4278190080
  br i1 %or.cond.i, label %if.end, label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i, %do.body.i.preheader
  %5 = load i64, ptr %out_pos, align 8, !tbaa !9
  %cmp6.i = icmp eq i64 %5, %out_size
  br i1 %cmp6.i, label %return.loopexit138, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  %6 = load i8, ptr %cache.i, align 4, !tbaa !10
  %7 = load i64, ptr %rc, align 8, !tbaa !8
  %shr11.i = lshr i64 %7, 32
  %conv12.i = trunc i64 %shr11.i to i8
  %add.i = add i8 %6, %conv12.i
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %out, i64 %5
  store i8 %add.i, ptr %arrayidx.i, align 1, !tbaa !11
  %8 = load i64, ptr %out_pos, align 8, !tbaa !9
  %inc.i = add i64 %8, 1
  store i64 %inc.i, ptr %out_pos, align 8, !tbaa !9
  store i8 -1, ptr %cache.i, align 4, !tbaa !10
  %9 = load i64, ptr %cache_size.i, align 8, !tbaa !12
  %dec.i = add i64 %9, -1
  store i64 %dec.i, ptr %cache_size.i, align 8, !tbaa !12
  %cmp16.not.i = icmp eq i64 %dec.i, 0
  br i1 %cmp16.not.i, label %do.end.i, label %do.body.i, !llvm.loop !13

do.end.i:                                         ; preds = %if.end.i
  %10 = load i64, ptr %rc, align 8, !tbaa !8
  %shr19.i = lshr i64 %10, 24
  %conv20.i = trunc i64 %shr19.i to i8
  store i8 %conv20.i, ptr %cache.i, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then
  %11 = load i64, ptr %cache_size23.i, align 8, !tbaa !12
  %inc24.i = add i64 %11, 1
  store i64 %inc24.i, ptr %cache_size23.i, align 8, !tbaa !12
  %12 = load i64, ptr %rc, align 8, !tbaa !8
  %and26.i = shl i64 %12, 8
  %shl.i = and i64 %and26.i, 4294967040
  store i64 %shl.i, ptr %rc, align 8, !tbaa !8
  %13 = load i32, ptr %range, align 8, !tbaa !7
  %shl = shl i32 %13, 8
  store i32 %shl, ptr %range, align 8, !tbaa !7
  br label %if.end4

if.end4:                                          ; preds = %if.end, %while.body
  %14 = load i64, ptr %pos, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds nuw i32, ptr %symbols, i64 %14
  %15 = load i32, ptr %arrayidx, align 4, !tbaa !15
  switch i32 %15, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
    i32 2, label %sw.bb38
    i32 3, label %sw.bb41
    i32 4, label %sw.bb48
  ]

sw.bb:                                            ; preds = %if.end4
  %arrayidx7 = getelementptr inbounds nuw ptr, ptr %probs, i64 %14
  %16 = load ptr, ptr %arrayidx7, align 8, !tbaa !16
  %17 = load i16, ptr %16, align 2, !tbaa !19
  %18 = load i32, ptr %range, align 8, !tbaa !7
  %shr = lshr i32 %18, 11
  %conv = zext i16 %17 to i32
  %mul = mul i32 %shr, %conv
  store i32 %mul, ptr %range, align 8, !tbaa !7
  %sub = sub nsw i32 2048, %conv
  %shr11 = lshr i32 %sub, 5
  %19 = trunc i32 %shr11 to i16
  %conv13 = add i16 %17, %19
  store i16 %conv13, ptr %16, align 2, !tbaa !19
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end4
  %arrayidx21 = getelementptr inbounds nuw ptr, ptr %probs19, i64 %14
  %20 = load ptr, ptr %arrayidx21, align 8, !tbaa !16
  %21 = load i16, ptr %20, align 2, !tbaa !19
  %conv22 = zext i16 %21 to i32
  %22 = load i32, ptr %range, align 8, !tbaa !7
  %shr24 = lshr i32 %22, 11
  %mul25 = mul i32 %shr24, %conv22
  %conv26 = zext i32 %mul25 to i64
  %23 = load i64, ptr %rc, align 8, !tbaa !8
  %add27 = add i64 %23, %conv26
  store i64 %add27, ptr %rc, align 8, !tbaa !8
  %sub29 = sub i32 %22, %mul25
  store i32 %sub29, ptr %range, align 8, !tbaa !7
  %shr31 = lshr i16 %21, 5
  %sub33 = sub i16 %21, %shr31
  store i16 %sub33, ptr %20, align 2, !tbaa !19
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end4
  %24 = load i32, ptr %range, align 8, !tbaa !7
  %shr40 = lshr i32 %24, 1
  store i32 %shr40, ptr %range, align 8, !tbaa !7
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end4
  %25 = load i32, ptr %range, align 8, !tbaa !7
  %shr43 = lshr i32 %25, 1
  store i32 %shr43, ptr %range, align 8, !tbaa !7
  %conv45 = zext nneg i32 %shr43 to i64
  %26 = load i64, ptr %rc, align 8, !tbaa !8
  %add47 = add i64 %26, %conv45
  store i64 %add47, ptr %rc, align 8, !tbaa !8
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end4
  %count.le = getelementptr inbounds nuw i8, ptr %rc, i64 24
  store i32 -1, ptr %range, align 8, !tbaa !7
  %cache.i104 = getelementptr inbounds nuw i8, ptr %rc, i64 20
  %cache_size.i105 = getelementptr inbounds nuw i8, ptr %rc, i64 8
  %cache_size23.i120 = getelementptr inbounds nuw i8, ptr %rc, i64 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb48
  %27 = load i64, ptr %rc, align 8, !tbaa !8
  %28 = and i64 %27, -16777216
  %or.cond.i102 = icmp eq i64 %28, 4278190080
  br i1 %or.cond.i102, label %do.cond, label %do.body.i106.preheader

do.body.i106.preheader:                           ; preds = %do.body
  br label %do.body.i106

do.body.i106:                                     ; preds = %if.end.i108, %do.body.i106.preheader
  %29 = load i64, ptr %out_pos, align 8, !tbaa !9
  %cmp6.i107 = icmp eq i64 %29, %out_size
  br i1 %cmp6.i107, label %return.loopexit, label %if.end.i108

if.end.i108:                                      ; preds = %do.body.i106
  %30 = load i8, ptr %cache.i104, align 4, !tbaa !10
  %31 = load i64, ptr %rc, align 8, !tbaa !8
  %shr11.i109 = lshr i64 %31, 32
  %conv12.i110 = trunc i64 %shr11.i109 to i8
  %add.i111 = add i8 %30, %conv12.i110
  %arrayidx.i112 = getelementptr inbounds nuw i8, ptr %out, i64 %29
  store i8 %add.i111, ptr %arrayidx.i112, align 1, !tbaa !11
  %32 = load i64, ptr %out_pos, align 8, !tbaa !9
  %inc.i113 = add i64 %32, 1
  store i64 %inc.i113, ptr %out_pos, align 8, !tbaa !9
  store i8 -1, ptr %cache.i104, align 4, !tbaa !10
  %33 = load i64, ptr %cache_size.i105, align 8, !tbaa !12
  %dec.i114 = add i64 %33, -1
  store i64 %dec.i114, ptr %cache_size.i105, align 8, !tbaa !12
  %cmp16.not.i115 = icmp eq i64 %dec.i114, 0
  br i1 %cmp16.not.i115, label %do.end.i116, label %do.body.i106, !llvm.loop !13

do.end.i116:                                      ; preds = %if.end.i108
  %34 = load i64, ptr %rc, align 8, !tbaa !8
  %shr19.i117 = lshr i64 %34, 24
  %conv20.i118 = trunc i64 %shr19.i117 to i8
  store i8 %conv20.i118, ptr %cache.i104, align 4, !tbaa !10
  br label %do.cond

do.cond:                                          ; preds = %do.end.i116, %do.body
  %35 = load i64, ptr %cache_size23.i120, align 8, !tbaa !12
  %inc24.i121 = add i64 %35, 1
  store i64 %inc24.i121, ptr %cache_size23.i120, align 8, !tbaa !12
  %36 = load i64, ptr %rc, align 8, !tbaa !8
  %and26.i122 = shl i64 %36, 8
  %shl.i123 = and i64 %and26.i122, 4294967040
  store i64 %shl.i123, ptr %rc, align 8, !tbaa !8
  %37 = load i64, ptr %pos, align 8, !tbaa !0
  %inc = add i64 %37, 1
  store i64 %inc, ptr %pos, align 8, !tbaa !0
  %38 = load i64, ptr %count.le, align 8, !tbaa !6
  %cmp55 = icmp ult i64 %inc, %38
  br i1 %cmp55, label %do.body, label %do.end, !llvm.loop !21

do.end:                                           ; preds = %do.cond
  store i64 0, ptr %rc, align 8, !tbaa !8
  %cache_size.i126 = getelementptr inbounds nuw i8, ptr %rc, i64 8
  store i64 1, ptr %cache_size.i126, align 8, !tbaa !12
  store i32 -1, ptr %range, align 8, !tbaa !7
  %cache.i127 = getelementptr inbounds nuw i8, ptr %rc, i64 20
  store i8 0, ptr %cache.i127, align 4, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %count.le, i8 0, i64 16, i1 false)
  br label %return

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb38, %sw.bb17, %sw.bb, %if.end4
  %inc58 = add i64 %14, 1
  store i64 %inc58, ptr %pos, align 8, !tbaa !0
  %39 = load i64, ptr %count, align 8, !tbaa !6
  %cmp = icmp ult i64 %inc58, %39
  br i1 %cmp, label %while.body, label %while.end.loopexit, !llvm.loop !22

while.end.loopexit:                               ; preds = %sw.epilog
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  %count.le136 = getelementptr inbounds nuw i8, ptr %rc, i64 24
  store i64 0, ptr %count.le136, align 8, !tbaa !6
  store i64 0, ptr %pos, align 8, !tbaa !0
  br label %return

return.loopexit:                                  ; preds = %do.body.i106
  br label %return

return.loopexit138:                               ; preds = %do.body.i
  br label %return

return:                                           ; preds = %return.loopexit138, %return.loopexit, %while.end, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %while.end ], [ true, %return.loopexit ], [ true, %return.loopexit138 ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!0 = !{!1, !2, i64 32}
!1 = !{!"", !2, i64 0, !2, i64 8, !5, i64 16, !3, i64 20, !2, i64 24, !2, i64 32, !3, i64 40, !3, i64 272}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"int", !3, i64 0}
!6 = !{!1, !2, i64 24}
!7 = !{!1, !5, i64 16}
!8 = !{!1, !2, i64 0}
!9 = !{!2, !2, i64 0}
!10 = !{!1, !3, i64 20}
!11 = !{!3, !3, i64 0}
!12 = !{!1, !2, i64 8}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 short", !18, i64 0}
!18 = !{!"any pointer", !3, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !3, i64 0}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
