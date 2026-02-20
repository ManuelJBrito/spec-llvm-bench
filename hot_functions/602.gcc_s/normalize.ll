; ModuleID = '/tmp/tmp.lIRewHr3Re/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden fastcc void @normalize(ptr noundef captures(none) %r) unnamed_addr #0 {
entry:
  %bf.load = load i32, ptr %r, align 8
  %0 = and i32 %bf.load, 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %sig = getelementptr inbounds nuw i8, ptr %r, i64 8
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader
  %arrayidx = getelementptr inbounds nuw i64, ptr %sig, i64 2
  %1 = load i64, ptr %arrayidx, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then2, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %if.then2.1, %if.then2, %for.body
  %i.084.lcssa = phi i32 [ 2, %for.body ], [ 1, %if.then2 ], [ 0, %if.then2.1 ]
  %shift.083.lcssa = phi i32 [ 0, %for.body ], [ 64, %if.then2 ], [ 128, %if.then2.1 ]
  %sig13 = getelementptr inbounds nuw i8, ptr %r, i64 8
  %idxprom14 = zext nneg i32 %i.084.lcssa to i64
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %sig13, i64 %idxprom14
  %2 = load i64, ptr %arrayidx15, align 8
  br label %for.cond12

if.then2:                                         ; preds = %for.body
  %arrayidx.1 = getelementptr inbounds nuw i64, ptr %sig, i64 1
  %3 = load i64, ptr %arrayidx.1, align 8
  %cmp1.1 = icmp eq i64 %3, 0
  br i1 %cmp1.1, label %if.then2.1, label %for.cond12.preheader

if.then2.1:                                       ; preds = %if.then2
  %4 = load i64, ptr %sig, align 8
  %cmp1.2 = icmp eq i64 %4, 0
  br i1 %cmp1.2, label %if.then2.2, label %for.cond12.preheader

if.then2.2:                                       ; preds = %if.then2.1
  %bf.clear9 = and i32 %bf.load, 56
  store i32 %bf.clear9, ptr %r, align 8
  br label %cleanup

for.cond12:                                       ; preds = %for.cond12, %for.cond12.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond12 ], [ 0, %for.cond12.preheader ]
  %5 = sub nsw i64 63, %indvars.iv
  %shl = shl nuw i64 1, %5
  %and = and i64 %shl, %2
  %tobool16.not = icmp eq i64 %and, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool16.not, label %for.cond12, label %for.end20

for.end20:                                        ; preds = %for.cond12
  %j.0.lcssa.wide = phi i64 [ %indvars.iv, %for.cond12 ]
  %6 = trunc nuw nsw i64 %j.0.lcssa.wide to i32
  %add21 = add nuw nsw i32 %6, %shift.083.lcssa
  %cmp22.not = icmp eq i32 %add21, 0
  br i1 %cmp22.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %for.end20
  %sub26 = ashr i32 %bf.load, 6
  %sub27 = sub nsw i32 %sub26, %add21
  %cmp34 = icmp slt i32 %sub27, -33554431
  br i1 %cmp34, label %if.then35, label %if.else39

if.then35:                                        ; preds = %if.then23
  %bf.clear38 = and i32 %bf.load, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %r, i8 0, i64 32, i1 false)
  store i32 %bf.clear38, ptr %r, align 8
  br label %cleanup

if.else39:                                        ; preds = %if.then23
  %and40 = shl i32 %sub27, 6
  %bf.clear42 = and i32 %bf.load, 59
  %bf.set43 = or disjoint i32 %and40, %bf.clear42
  store i32 %bf.set43, ptr %r, align 8
  %div75.i = lshr i32 %add21, 6
  %and.i = and i32 %6, 63
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.body19.i

for.cond.preheader.i:                             ; preds = %if.else39
  %cmp182.i = icmp samesign ult i32 %add21, 192
  br i1 %cmp182.i, label %for.body.lr.ph.i, label %for.body9.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %7 = sub nuw nsw i32 3, %div75.i
  %wide.trip.count.i = zext nneg i32 %7 to i64
  br label %for.body.i

for.cond7.preheader.i:                            ; preds = %for.body.i
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %for.body.i ]
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i, %for.body.i ]
  %cmp884.i = icmp samesign ult i64 %indvars.iv.i.lcssa, 2
  br i1 %cmp884.i, label %for.body9.lr.ph.i, label %cleanup

for.body9.lr.ph.i:                                ; preds = %for.cond7.preheader.i, %for.cond.preheader.i
  %i.0.lcssa106.i = phi i64 [ %indvars.iv.next.i.lcssa, %for.cond7.preheader.i ], [ 0, %for.cond.preheader.i ]
  %8 = shl i64 %i.0.lcssa106.i, 3
  %9 = sub i64 24, %8
  call void @llvm.memset.p0.i64(ptr align 8 %sig, i8 0, i64 %9, i1 false)
  br label %cleanup.loopexit

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %10 = sub nuw nsw i64 2, %indvars.iv.i
  %11 = trunc nuw nsw i64 %10 to i32
  %sub2.i = sub nsw i32 %11, %div75.i
  %idxprom.i = zext i32 %sub2.i to i64
  %arrayidx.i = getelementptr inbounds nuw i64, ptr %sig13, i64 %idxprom.i
  %12 = load i64, ptr %arrayidx.i, align 8
  %arrayidx6.i = getelementptr inbounds nuw i64, ptr %sig13, i64 %10
  store i64 %12, ptr %arrayidx6.i, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.cond7.preheader.i, label %for.body.i, !llvm.loop !0

for.body19.i:                                     ; preds = %if.else39
  %sub40.i = sub nuw nsw i32 64, %and.i
  %sh_prom41.i = zext nneg i32 %sub40.i to i64
  %sh_prom.i = zext nneg i32 %and.i to i64
  %13 = zext nneg i32 %div75.i to i64
  %cmp21.i = icmp samesign ugt i32 %add21, 191
  br i1 %cmp21.i, label %cond.end38.i.thread, label %cond.end.i

cond.end38.i.thread:                              ; preds = %for.body19.i
  %arrayidx45.i79 = getelementptr inbounds nuw i8, ptr %r, i64 24
  store i64 0, ptr %arrayidx45.i79, align 8
  br label %cond.end38.1.i

cond.end.i:                                       ; preds = %for.body19.i
  %14 = sub nuw nsw i64 2, %13
  %arrayidx26.i = getelementptr inbounds nuw i64, ptr %sig13, i64 %14
  %15 = load i64, ptr %arrayidx26.i, align 8
  %shl.i = shl i64 %15, %sh_prom.i
  %16 = icmp eq i32 %div75.i, 2
  br i1 %16, label %cond.end38.i, label %cond.false31.i

cond.false31.i:                                   ; preds = %cond.end.i
  %17 = sub nuw nsw i64 1, %13
  %arrayidx37.i = getelementptr inbounds nuw i64, ptr %sig13, i64 %17
  %18 = load i64, ptr %arrayidx37.i, align 8
  br label %cond.end38.i

cond.end38.i:                                     ; preds = %cond.false31.i, %cond.end.i
  %cond39.i = phi i64 [ %18, %cond.false31.i ], [ 0, %cond.end.i ]
  %shr.i = lshr i64 %cond39.i, %sh_prom41.i
  %or.i = or i64 %shr.i, %shl.i
  %arrayidx45.i = getelementptr inbounds nuw i8, ptr %r, i64 24
  store i64 %or.i, ptr %arrayidx45.i, align 8
  %cmp21.1.i = icmp samesign ugt i32 %add21, 127
  br i1 %cmp21.1.i, label %cond.end38.1.i, label %cond.end.1.i

cond.end.1.i:                                     ; preds = %cond.end38.i
  %19 = sub nuw nsw i64 1, %13
  %arrayidx26.1.i = getelementptr inbounds nuw i64, ptr %sig13, i64 %19
  %20 = load i64, ptr %arrayidx26.1.i, align 8
  %shl.1.i = shl i64 %20, %sh_prom.i
  %21 = icmp eq i32 %div75.i, 1
  br i1 %21, label %cond.end38.1.thread.i, label %cond.false31.1.i

cond.end38.1.thread.i:                            ; preds = %cond.end.1.i
  %arrayidx45.1111.i = getelementptr inbounds nuw i8, ptr %r, i64 16
  store i64 %shl.1.i, ptr %arrayidx45.1111.i, align 8
  br label %cond.end38.2.i

cond.false31.1.i:                                 ; preds = %cond.end.1.i
  %22 = load i64, ptr %sig13, align 8
  br label %cond.end38.1.i

cond.end38.1.i:                                   ; preds = %cond.false31.1.i, %cond.end38.i, %cond.end38.i.thread
  %shl79.1.i = phi i64 [ %shl.1.i, %cond.false31.1.i ], [ 0, %cond.end38.i ], [ 0, %cond.end38.i.thread ]
  %cond39.1.i = phi i64 [ %22, %cond.false31.1.i ], [ 0, %cond.end38.i ], [ 0, %cond.end38.i.thread ]
  %shr.1.i = lshr i64 %cond39.1.i, %sh_prom41.i
  %or.1.i = or i64 %shr.1.i, %shl79.1.i
  %arrayidx45.1.i = getelementptr inbounds nuw i8, ptr %r, i64 16
  store i64 %or.1.i, ptr %arrayidx45.1.i, align 8
  %cmp21.2.not.i = icmp eq i32 %div75.i, 0
  br i1 %cmp21.2.not.i, label %cond.end.2.i, label %cond.end38.2.i

cond.end.2.i:                                     ; preds = %cond.end38.1.i
  %23 = load i64, ptr %sig13, align 8
  %shl.2.i = shl i64 %23, %sh_prom.i
  br label %cond.end38.2.i

cond.end38.2.i:                                   ; preds = %cond.end.2.i, %cond.end38.1.i, %cond.end38.1.thread.i
  %shl79.2.i = phi i64 [ %shl.2.i, %cond.end.2.i ], [ 0, %cond.end38.1.i ], [ 0, %cond.end38.1.thread.i ]
  store i64 %shl79.2.i, ptr %sig13, align 8
  br label %cleanup

cleanup.loopexit:                                 ; preds = %for.body9.lr.ph.i
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end38.2.i, %for.cond7.preheader.i, %if.then35, %for.end20, %if.then2.2, %entry
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
