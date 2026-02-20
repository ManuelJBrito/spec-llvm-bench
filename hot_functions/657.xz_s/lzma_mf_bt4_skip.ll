; ModuleID = '/tmp/tmp.LwkcVTHjp0/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/557.xz_r/src/liblzma/lz/lz_encoder_mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_crc32_table = external local_unnamed_addr constant [8 x [256 x i32]], align 16

; Function Attrs: nounwind uwtable
define dso_local void @lzma_mf_bt4_skip(ptr noundef captures(none) %mf, i32 noundef %amount) local_unnamed_addr #0 {
entry:
  %0 = getelementptr i8, ptr %mf, i64 24
  %1 = getelementptr i8, ptr %mf, i64 36
  %nice_len = getelementptr inbounds nuw i8, ptr %mf, i64 96
  %action = getelementptr inbounds nuw i8, ptr %mf, i64 104
  %offset = getelementptr inbounds nuw i8, ptr %mf, i64 20
  %hash_mask = getelementptr inbounds nuw i8, ptr %mf, i64 88
  %hash = getelementptr inbounds nuw i8, ptr %mf, i64 64
  %depth = getelementptr inbounds nuw i8, ptr %mf, i64 92
  %son = getelementptr inbounds nuw i8, ptr %mf, i64 72
  %cyclic_pos = getelementptr inbounds nuw i8, ptr %mf, i64 80
  %cyclic_size = getelementptr inbounds nuw i8, ptr %mf, i64 84
  %hash_size_sum.i.i = getelementptr inbounds nuw i8, ptr %mf, i64 108
  %sons_count.i.i = getelementptr inbounds nuw i8, ptr %mf, i64 112
  %pending.i = getelementptr inbounds nuw i8, ptr %mf, i64 40
  br label %do.body

do.body:                                          ; preds = %cleanup, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %cleanup ]
  %mf.val = load i32, ptr %0, align 8, !tbaa !0
  %mf.val72 = load i32, ptr %1, align 4, !tbaa !8
  %sub.i = sub i32 %mf.val72, %mf.val
  %2 = load i32, ptr %nice_len, align 8, !tbaa !9
  %cmp.not = icmp ugt i32 %2, %sub.i
  br i1 %cmp.not, label %if.else, label %if.end5

if.else:                                          ; preds = %do.body
  %cmp2 = icmp ult i32 %sub.i, 4
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i32, ptr %action, align 8, !tbaa !10
  %cmp3 = icmp eq i32 %3, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  %inc.i = add i32 %mf.val, 1
  store i32 %inc.i, ptr %0, align 8, !tbaa !0
  %4 = load i32, ptr %pending.i, align 8, !tbaa !11
  %inc1.i = add i32 %4, 1
  store i32 %inc1.i, ptr %pending.i, align 8, !tbaa !11
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false, %do.body
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %do.body ]
  %mf.val73 = load ptr, ptr %mf, align 8, !tbaa !12
  %idx.ext.i = zext i32 %mf.val to i64
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %mf.val73, i64 %idx.ext.i
  %5 = load i32, ptr %offset, align 4, !tbaa !13
  %add = add i32 %5, %mf.val
  %6 = load i8, ptr %add.ptr.i, align 1, !tbaa !14
  %idxprom = zext i8 %6 to i64
  %arrayidx7 = getelementptr inbounds nuw i32, ptr @lzma_crc32_table, i64 %idxprom
  %7 = load i32, ptr %arrayidx7, align 4, !tbaa !15
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 1
  %8 = load i8, ptr %arrayidx8, align 1, !tbaa !14
  %conv = zext i8 %8 to i32
  %xor = xor i32 %7, %conv
  %and = and i32 %xor, 1023
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 2
  %9 = load i8, ptr %arrayidx9, align 1, !tbaa !14
  %conv10 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %xor11 = xor i32 %shl, %xor
  %and12 = and i32 %xor11, 65535
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 3
  %10 = load i8, ptr %arrayidx17, align 1, !tbaa !14
  %idxprom18 = zext i8 %10 to i64
  %arrayidx19 = getelementptr inbounds nuw i32, ptr @lzma_crc32_table, i64 %idxprom18
  %11 = load i32, ptr %arrayidx19, align 4, !tbaa !15
  %shl20 = shl i32 %11, 5
  %xor21 = xor i32 %xor11, %shl20
  %12 = load i32, ptr %hash_mask, align 8, !tbaa !16
  %and22 = and i32 %xor21, %12
  %13 = load ptr, ptr %hash, align 8, !tbaa !17
  %add23 = add i32 %and22, 66560
  %idxprom24 = zext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds nuw i32, ptr %13, i64 %idxprom24
  %14 = load i32, ptr %arrayidx25, align 4, !tbaa !15
  %idxprom27 = zext nneg i32 %and to i64
  %arrayidx28 = getelementptr inbounds nuw i32, ptr %13, i64 %idxprom27
  store i32 %add, ptr %arrayidx28, align 4, !tbaa !15
  %15 = zext nneg i32 %and12 to i64
  %16 = getelementptr inbounds nuw i32, ptr %13, i64 %15
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %16, i64 4096
  store i32 %add, ptr %arrayidx32, align 4, !tbaa !15
  store i32 %add, ptr %arrayidx25, align 4, !tbaa !15
  %17 = load i32, ptr %depth, align 4, !tbaa !18
  %18 = load ptr, ptr %son, align 8, !tbaa !19
  %19 = load i32, ptr %cyclic_pos, align 8, !tbaa !20
  %20 = load i32, ptr %cyclic_size, align 4, !tbaa !21
  %shl.i = shl i32 %19, 1
  %idx.ext.i75 = zext i32 %shl.i to i64
  %add.ptr.i76 = getelementptr inbounds nuw i32, ptr %18, i64 %idx.ext.i75
  %add.ptr1.i = getelementptr inbounds nuw i8, ptr %add.ptr.i76, i64 4
  %sub104.i = sub i32 %add, %14
  %cmp106.i = icmp ne i32 %17, 0
  %cmp5.not107.i = icmp ult i32 %sub104.i, %20
  %or.cond108.i = and i1 %cmp106.i, %cmp5.not107.i
  br i1 %or.cond108.i, label %if.end.i.preheader, label %if.then.i

if.end.i.preheader:                               ; preds = %if.end5
  br label %if.end.i

if.then.i.loopexit:                               ; preds = %if.end55.i
  %ptr1.1.i.lcssa = phi ptr [ %ptr1.1.i, %if.end55.i ]
  %ptr0.1.i.lcssa = phi ptr [ %ptr0.1.i, %if.end55.i ]
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.loopexit, %if.end5
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i76, %if.end5 ], [ %ptr1.1.i.lcssa, %if.then.i.loopexit ]
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.end5 ], [ %ptr0.1.i.lcssa, %if.then.i.loopexit ]
  store i32 0, ptr %ptr0.0.lcssa.i, align 4, !tbaa !15
  store i32 0, ptr %ptr1.0.lcssa.i, align 4, !tbaa !15
  br label %bt_skip_func.exit

if.end.i:                                         ; preds = %if.end55.i, %if.end.i.preheader
  %dec115.in.i = phi i32 [ %dec115.i, %if.end55.i ], [ %17, %if.end.i.preheader ]
  %sub114.i = phi i32 [ %sub.i77, %if.end55.i ], [ %sub104.i, %if.end.i.preheader ]
  %cur_match.addr.0113.i = phi i32 [ %cur_match.addr.1.i, %if.end55.i ], [ %14, %if.end.i.preheader ]
  %ptr0.0112.i = phi ptr [ %ptr0.1.i, %if.end55.i ], [ %add.ptr1.i, %if.end.i.preheader ]
  %len1.0111.i = phi i32 [ %len1.1.i, %if.end55.i ], [ 0, %if.end.i.preheader ]
  %len0.0110.i = phi i32 [ %len0.1.i, %if.end55.i ], [ 0, %if.end.i.preheader ]
  %ptr1.0109.i = phi ptr [ %ptr1.1.i, %if.end55.i ], [ %add.ptr.i76, %if.end.i.preheader ]
  %dec115.i = add i32 %dec115.in.i, -1
  %sub6.i = sub i32 %19, %sub114.i
  %cmp7.i = icmp ugt i32 %sub114.i, %19
  %cond.i = select i1 %cmp7.i, i32 %20, i32 0
  %add.i = add i32 %sub6.i, %cond.i
  %shl8.i = shl i32 %add.i, 1
  %idx.ext9.i = zext i32 %shl8.i to i64
  %add.ptr10.i = getelementptr inbounds nuw i32, ptr %18, i64 %idx.ext9.i
  %idx.ext11.i = zext i32 %sub114.i to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i
  %cond17.i = tail call i32 @llvm.umin.i32(i32 %len0.0110.i, i32 %len1.0111.i)
  %idxprom.i = zext i32 %cond17.i to i64
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %add.ptr12.i, i64 %idxprom.i
  %21 = load i8, ptr %arrayidx.i, align 1, !tbaa !14
  %arrayidx19.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 %idxprom.i
  %22 = load i8, ptr %arrayidx19.i, align 1, !tbaa !14
  %cmp21.i = icmp eq i8 %21, %22
  br i1 %cmp21.i, label %while.cond24.i.preheader, label %if.end44.i

while.cond24.i.preheader:                         ; preds = %if.end.i
  br label %while.cond24.i

while.cond24.i:                                   ; preds = %while.body27.i, %while.cond24.i.preheader
  %len.0.i = phi i32 [ %inc.i78, %while.body27.i ], [ %cond17.i, %while.cond24.i.preheader ]
  %inc.i78 = add i32 %len.0.i, 1
  %cmp25.not.i = icmp eq i32 %inc.i78, %len_limit.0
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i78 to i64
  %arrayidx29.i = getelementptr inbounds nuw i8, ptr %add.ptr12.i, i64 %idxprom28.i
  %23 = load i8, ptr %arrayidx29.i, align 1, !tbaa !14
  %arrayidx32.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 %idxprom28.i
  %24 = load i8, ptr %arrayidx32.i, align 1, !tbaa !14
  %cmp34.not.i = icmp eq i8 %23, %24
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i.loopexit, !llvm.loop !22

if.then40.i:                                      ; preds = %while.cond24.i
  %ptr0.0112.i.lcssa = phi ptr [ %ptr0.0112.i, %while.cond24.i ]
  %ptr1.0109.i.lcssa = phi ptr [ %ptr1.0109.i, %while.cond24.i ]
  %add.ptr10.i.lcssa = phi ptr [ %add.ptr10.i, %while.cond24.i ]
  %25 = load i32, ptr %add.ptr10.i.lcssa, align 4, !tbaa !15
  store i32 %25, ptr %ptr1.0109.i.lcssa, align 4, !tbaa !15
  %arrayidx42.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i.lcssa, i64 4
  %26 = load i32, ptr %arrayidx42.i, align 4, !tbaa !15
  store i32 %26, ptr %ptr0.0112.i.lcssa, align 4, !tbaa !15
  br label %bt_skip_func.exit

if.end44.i.loopexit:                              ; preds = %while.body27.i
  %inc.i78.lcssa87 = phi i32 [ %inc.i78, %while.body27.i ]
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end44.i.loopexit, %if.end.i
  %len.1.i = phi i32 [ %cond17.i, %if.end.i ], [ %inc.i78.lcssa87, %if.end44.i.loopexit ]
  %idxprom45.i = zext i32 %len.1.i to i64
  %arrayidx46.i = getelementptr inbounds nuw i8, ptr %add.ptr12.i, i64 %idxprom45.i
  %27 = load i8, ptr %arrayidx46.i, align 1, !tbaa !14
  %arrayidx49.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 %idxprom45.i
  %28 = load i8, ptr %arrayidx49.i, align 1, !tbaa !14
  %cmp51.i = icmp ult i8 %27, %28
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0113.i, ptr %ptr1.0109.i, align 4, !tbaa !15
  %add.ptr54.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 4
  br label %if.end55.i

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0113.i, ptr %ptr0.0112.i, align 4, !tbaa !15
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0109.i, %if.else.i ]
  %len0.1.i = phi i32 [ %len0.0110.i, %if.then53.i ], [ %len.1.i, %if.else.i ]
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0111.i, %if.else.i ]
  %ptr0.1.i = phi ptr [ %ptr0.0112.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4, !tbaa !15
  %sub.i77 = sub i32 %add, %cur_match.addr.1.i
  %cmp.i = icmp ne i32 %dec115.i, 0
  %cmp5.not.i = icmp ult i32 %sub.i77, %20
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %if.then.i.loopexit

bt_skip_func.exit:                                ; preds = %if.then40.i, %if.then.i
  %29 = load i32, ptr %cyclic_pos, align 8, !tbaa !20
  %inc.i79 = add i32 %29, 1
  %30 = load i32, ptr %cyclic_size, align 4, !tbaa !21
  %cmp.i80 = icmp eq i32 %inc.i79, %30
  %spec.store.select.i = select i1 %cmp.i80, i32 0, i32 %inc.i79
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8
  %31 = load i32, ptr %0, align 8, !tbaa !0
  %inc2.i = add i32 %31, 1
  store i32 %inc2.i, ptr %0, align 8, !tbaa !0
  %32 = load i32, ptr %offset, align 4, !tbaa !13
  %add.i82 = add i32 %32, %inc2.i
  %cmp4.i = icmp eq i32 %add.i82, -1
  br i1 %cmp4.i, label %if.then5.i, label %cleanup

if.then5.i:                                       ; preds = %bt_skip_func.exit
  %sub.i.i = xor i32 %30, -1
  %33 = load i32, ptr %hash_size_sum.i.i, align 4, !tbaa !24
  %34 = load i32, ptr %sons_count.i.i, align 8, !tbaa !25
  %add.i.i = add i32 %34, %33
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  %arrayidx.i.i = getelementptr inbounds nuw i32, ptr %13, i64 %indvars.iv.i.i
  %35 = load i32, ptr %arrayidx.i.i, align 4, !tbaa !15
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %sub.i.i)
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4, !tbaa !15
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %normalize.exit.i.loopexit, label %for.body.i.i, !llvm.loop !26

normalize.exit.i.loopexit:                        ; preds = %for.body.i.i
  br label %normalize.exit.i

normalize.exit.i:                                 ; preds = %normalize.exit.i.loopexit, %if.then5.i
  %36 = load i32, ptr %offset, align 4, !tbaa !13
  %sub8.i.i = sub i32 %36, %sub.i.i
  store i32 %sub8.i.i, ptr %offset, align 4, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %dec = add i32 %amount.addr.0, -1
  %cmp39.not = icmp eq i32 %dec, 0
  br i1 %cmp39.not, label %do.end41, label %do.body, !llvm.loop !27

do.end41:                                         ; preds = %cleanup
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!0 = !{!1, !6, i64 24}
!1 = !{!"lzma_mf_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 48, !3, i64 56, !7, i64 64, !7, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112}
!2 = !{!"p1 omnipotent char", !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"int", !4, i64 0}
!7 = !{!"p1 int", !3, i64 0}
!8 = !{!1, !6, i64 36}
!9 = !{!1, !6, i64 96}
!10 = !{!1, !6, i64 104}
!11 = !{!1, !6, i64 40}
!12 = !{!1, !2, i64 0}
!13 = !{!1, !6, i64 20}
!14 = !{!4, !4, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!1, !6, i64 88}
!17 = !{!1, !7, i64 64}
!18 = !{!1, !6, i64 92}
!19 = !{!1, !7, i64 72}
!20 = !{!1, !6, i64 80}
!21 = !{!1, !6, i64 84}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!1, !6, i64 108}
!25 = !{!1, !6, i64 112}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !23}
