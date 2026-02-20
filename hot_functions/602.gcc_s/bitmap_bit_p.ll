; ModuleID = '/tmp/tmp.6bBg2rAC6s/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @bitmap_bit_p(ptr noundef captures(none) %head, i32 noundef %bit) local_unnamed_addr #0 {
entry:
  %div82.i = lshr i32 %bit, 7
  %current.i = getelementptr inbounds nuw i8, ptr %head, i64 8
  %0 = load ptr, ptr %current.i, align 8
  %cmp.i = icmp eq ptr %0, null
  br i1 %cmp.i, label %cleanup, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %indx1.i = getelementptr inbounds nuw i8, ptr %head, i64 16
  %1 = load i32, ptr %indx1.i, align 8
  %cmp2.i = icmp eq i32 %1, %div82.i
  br i1 %cmp2.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cmp5.i = icmp ult i32 %1, %div82.i
  br i1 %cmp5.i, label %for.cond.i.preheader, label %if.else.i

for.cond.i.preheader:                             ; preds = %if.end.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i, %for.cond.i.preheader
  %element.0.i = phi ptr [ %2, %land.rhs.i ], [ %0, %for.cond.i.preheader ]
  %2 = load ptr, ptr %element.0.i, align 8
  %cmp8.not.i = icmp eq ptr %2, null
  br i1 %cmp8.not.i, label %land.lhs.true.i.loopexit, label %land.rhs.i

land.rhs.i:                                       ; preds = %for.cond.i
  %indx9.i = getelementptr inbounds nuw i8, ptr %element.0.i, i64 16
  %3 = load i32, ptr %indx9.i, align 8
  %cmp10.i = icmp ult i32 %3, %div82.i
  br i1 %cmp10.i, label %for.cond.i, label %land.lhs.true.i.loopexit, !llvm.loop !0

if.else.i:                                        ; preds = %if.end.i
  %div1383.i = lshr i32 %1, 1
  %cmp14.i = icmp samesign ult i32 %div1383.i, %div82.i
  br i1 %cmp14.i, label %for.cond17.i.preheader, label %if.else27.i

for.cond17.i.preheader:                           ; preds = %if.else.i
  br label %for.cond17.i

for.cond17.i:                                     ; preds = %land.rhs19.i, %for.cond17.i.preheader
  %element.1.i = phi ptr [ %4, %land.rhs19.i ], [ %0, %for.cond17.i.preheader ]
  %prev.i = getelementptr inbounds nuw i8, ptr %element.1.i, i64 8
  %4 = load ptr, ptr %prev.i, align 8
  %cmp18.not.i = icmp eq ptr %4, null
  br i1 %cmp18.not.i, label %land.lhs.true.i.loopexit12, label %land.rhs19.i

land.rhs19.i:                                     ; preds = %for.cond17.i
  %indx20.i = getelementptr inbounds nuw i8, ptr %element.1.i, i64 16
  %5 = load i32, ptr %indx20.i, align 8
  %cmp21.i = icmp ugt i32 %5, %div82.i
  br i1 %cmp21.i, label %for.cond17.i, label %land.lhs.true.i.loopexit12, !llvm.loop !2

if.else27.i:                                      ; preds = %if.else.i
  %6 = load ptr, ptr %head, align 8
  br label %for.cond28.i

for.cond28.i:                                     ; preds = %land.rhs31.i, %if.else27.i
  %element.2.i = phi ptr [ %6, %if.else27.i ], [ %7, %land.rhs31.i ]
  %7 = load ptr, ptr %element.2.i, align 8
  %cmp30.not.i = icmp eq ptr %7, null
  br i1 %cmp30.not.i, label %land.lhs.true.i.loopexit13, label %land.rhs31.i

land.rhs31.i:                                     ; preds = %for.cond28.i
  %indx32.i = getelementptr inbounds nuw i8, ptr %element.2.i, i64 16
  %8 = load i32, ptr %indx32.i, align 8
  %cmp33.i = icmp ult i32 %8, %div82.i
  br i1 %cmp33.i, label %for.cond28.i, label %land.lhs.true.i.loopexit13, !llvm.loop !3

land.lhs.true.i.loopexit:                         ; preds = %land.rhs.i, %for.cond.i
  %element.0.i.lcssa = phi ptr [ %element.0.i, %for.cond.i ], [ %element.0.i, %land.rhs.i ]
  br label %land.lhs.true.i

land.lhs.true.i.loopexit12:                       ; preds = %land.rhs19.i, %for.cond17.i
  %element.1.i.lcssa = phi ptr [ %element.1.i, %for.cond17.i ], [ %element.1.i, %land.rhs19.i ]
  br label %land.lhs.true.i

land.lhs.true.i.loopexit13:                       ; preds = %land.rhs31.i, %for.cond28.i
  %element.2.i.lcssa = phi ptr [ %element.2.i, %for.cond28.i ], [ %element.2.i, %land.rhs31.i ]
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %land.lhs.true.i.loopexit13, %land.lhs.true.i.loopexit12, %land.lhs.true.i.loopexit
  %element.3.i = phi ptr [ %element.0.i.lcssa, %land.lhs.true.i.loopexit ], [ %element.1.i.lcssa, %land.lhs.true.i.loopexit12 ], [ %element.2.i.lcssa, %land.lhs.true.i.loopexit13 ]
  store ptr %element.3.i, ptr %current.i, align 8
  %indx42.i = getelementptr inbounds nuw i8, ptr %element.3.i, i64 16
  %9 = load i32, ptr %indx42.i, align 8
  store i32 %9, ptr %indx1.i, align 8
  %10 = load i32, ptr %indx42.i, align 8
  %cmp46.not.i = icmp eq i32 %10, %div82.i
  br i1 %cmp46.not.i, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true.i, %lor.lhs.false.i
  %retval.0.i = phi ptr [ %0, %lor.lhs.false.i ], [ %element.3.i, %land.lhs.true.i ]
  %rem = and i32 %bit, 63
  %div7 = lshr i32 %bit, 6
  %rem1 = and i32 %div7, 1
  %bits = getelementptr inbounds nuw i8, ptr %retval.0.i, i64 24
  %idxprom = zext nneg i32 %rem1 to i64
  %arrayidx = getelementptr inbounds nuw i64, ptr %bits, i64 %idxprom
  %11 = load i64, ptr %arrayidx, align 8
  %sh_prom = zext nneg i32 %rem to i64
  %shr = lshr i64 %11, %sh_prom
  %12 = trunc i64 %shr to i32
  %conv = and i32 %12, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.i, %entry
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %land.lhs.true.i ], [ 0, %entry ]
  ret i32 %retval.0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
!3 = distinct !{!3, !1}
