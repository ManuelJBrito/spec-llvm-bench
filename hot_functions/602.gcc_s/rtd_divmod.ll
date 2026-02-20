; ModuleID = '/tmp/tmp.LEto3TCjB3/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden fastcc i64 @rtd_divmod(ptr noundef nonnull captures(none) %num, ptr noundef nonnull readonly captures(none) %den) unnamed_addr #0 {
entry:
  %bf.load = load i32, ptr %num, align 8
  %sub = ashr i32 %bf.load, 6
  %bf.load1 = load i32, ptr %den, align 8
  %sub4 = ashr i32 %bf.load1, 6
  %cmp = icmp slt i32 %sub, %sub4
  br i1 %cmp, label %cleanup, label %start.preheader

start.preheader:                                  ; preds = %entry
  %sig.i30 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %sig1.i = getelementptr inbounds nuw i8, ptr %den, i64 8
  %arrayidx.i31 = getelementptr inbounds nuw i8, ptr %num, i64 24
  %arrayidx3.i32 = getelementptr inbounds nuw i8, ptr %den, i64 24
  %arrayidx.1.i33 = getelementptr inbounds nuw i8, ptr %num, i64 16
  %arrayidx3.1.i34 = getelementptr inbounds nuw i8, ptr %den, i64 16
  %sig9.i = getelementptr inbounds nuw i8, ptr %num, i64 8
  %sig1.i35 = getelementptr inbounds nuw i8, ptr %den, i64 8
  %arrayidx.1.i37 = getelementptr inbounds nuw i8, ptr %num, i64 16
  %arrayidx3.1.i38 = getelementptr inbounds nuw i8, ptr %den, i64 16
  %arrayidx.2.i = getelementptr inbounds nuw i8, ptr %num, i64 24
  %arrayidx3.2.i = getelementptr inbounds nuw i8, ptr %den, i64 24
  %arrayidx.234.i = getelementptr inbounds nuw i8, ptr %num, i64 24
  %arrayidx3.235.i = getelementptr inbounds nuw i8, ptr %den, i64 24
  %arrayidx11.2.i = getelementptr inbounds nuw i8, ptr %num, i64 24
  %arrayidx = getelementptr inbounds nuw i8, ptr %num, i64 24
  %sig4.i = getelementptr inbounds nuw i8, ptr %num, i64 8
  %arrayidx3.i = getelementptr i8, ptr %num, i64 16
  br label %start

do.body:                                          ; preds = %do.cond
  %dec = add nsw i32 %expn.0, -1
  %0 = load i64, ptr %arrayidx, align 8
  %and = and i64 %0, -9223372036854775808
  %shl = shl i64 %q.1, 1
  %1 = load i64, ptr %arrayidx3.i, align 8
  %or.i = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 1)
  store i64 %or.i, ptr %arrayidx, align 8
  %2 = load i64, ptr %sig4.i, align 8
  %or.1.i = tail call i64 @llvm.fshl.i64(i64 %1, i64 %2, i64 1)
  store i64 %or.1.i, ptr %arrayidx3.i, align 8
  %shl9.i = shl i64 %2, 1
  store i64 %shl9.i, ptr %sig4.i, align 8
  br label %start

start:                                            ; preds = %do.body, %start.preheader
  %q.0 = phi i64 [ %shl, %do.body ], [ 0, %start.preheader ]
  %msb.0 = phi i64 [ %and, %do.body ], [ 0, %start.preheader ]
  %expn.0 = phi i32 [ %dec, %do.body ], [ %sub, %start.preheader ]
  %tobool.not = icmp eq i64 %msb.0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then6

lor.lhs.false:                                    ; preds = %start
  %3 = load i64, ptr %arrayidx.i31, align 8
  %4 = load i64, ptr %arrayidx3.i32, align 8
  %cmp4.not.i = icmp ugt i64 %3, %4
  %retval.1.i = select i1 %cmp4.not.i, i32 1, i32 -1
  %cond.i = icmp eq i64 %3, %4
  br i1 %cond.i, label %for.cond.i, label %cmp_significands.exit

for.cond.i:                                       ; preds = %lor.lhs.false
  %5 = load i64, ptr %arrayidx.1.i33, align 8
  %6 = load i64, ptr %arrayidx3.1.i34, align 8
  %cmp4.not.1.i = icmp ugt i64 %5, %6
  %cmp5.not.1.i = icmp ult i64 %5, %6
  %.retval.0.1.i = select i1 %cmp5.not.1.i, i32 -1, i32 %retval.1.i
  %retval.1.1.i = select i1 %cmp4.not.1.i, i32 1, i32 %.retval.0.1.i
  %cond.1.i = icmp eq i64 %5, %6
  br i1 %cond.1.i, label %for.cond.1.i, label %cmp_significands.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %7 = load i64, ptr %sig.i30, align 8
  %8 = load i64, ptr %sig1.i, align 8
  %cmp4.not.2.i = icmp ugt i64 %7, %8
  %cmp5.not.2.i = icmp ult i64 %7, %8
  %.retval.0.2.i = select i1 %cmp5.not.2.i, i32 -1, i32 %retval.1.1.i
  %retval.1.2.i = select i1 %cmp4.not.2.i, i32 1, i32 %.retval.0.2.i
  %cond.2.i = icmp eq i64 %7, %8
  br i1 %cond.2.i, label %if.then6, label %cmp_significands.exit

cmp_significands.exit:                            ; preds = %for.cond.1.i, %for.cond.i, %lor.lhs.false
  %retval.2.i = phi i32 [ %retval.1.i, %lor.lhs.false ], [ %retval.1.1.i, %for.cond.i ], [ %retval.1.2.i, %for.cond.1.i ]
  %cmp5 = icmp sgt i32 %retval.2.i, -1
  br i1 %cmp5, label %if.then6, label %do.cond

if.then6:                                         ; preds = %cmp_significands.exit, %for.cond.1.i, %start
  %9 = load i64, ptr %sig9.i, align 8
  %10 = load i64, ptr %sig1.i35, align 8
  %sub.i = sub i64 %9, %10
  %cmp7.i = icmp ugt i64 %10, %9
  store i64 %sub.i, ptr %sig9.i, align 8
  %11 = load i64, ptr %arrayidx.1.i37, align 8
  %12 = load i64, ptr %arrayidx3.1.i38, align 8
  %sub.1.i = sub i64 %11, %12
  br i1 %cmp7.i, label %if.then.1.i, label %if.end.1.i

if.then.1.i:                                      ; preds = %if.then6
  %dec.1.i = add i64 %sub.1.i, -1
  %or24.1.i.not = icmp ugt i64 %11, %12
  store i64 %dec.1.i, ptr %arrayidx.1.i37, align 8
  %13 = load i64, ptr %arrayidx.234.i, align 8
  %14 = load i64, ptr %arrayidx3.235.i, align 8
  %sub.236.i = sub i64 %13, %14
  br i1 %or24.1.i.not, label %sub_significands.exit, label %if.then.2.i

if.end.1.i:                                       ; preds = %if.then6
  %cmp7.1.i = icmp ugt i64 %12, %11
  store i64 %sub.1.i, ptr %arrayidx.1.i37, align 8
  %15 = load i64, ptr %arrayidx.2.i, align 8
  %16 = load i64, ptr %arrayidx3.2.i, align 8
  %sub.2.i = sub i64 %15, %16
  br i1 %cmp7.1.i, label %if.then.2.i, label %sub_significands.exit

if.then.2.i:                                      ; preds = %if.end.1.i, %if.then.1.i
  %sub.237.i = phi i64 [ %sub.236.i, %if.then.1.i ], [ %sub.2.i, %if.end.1.i ]
  %dec.2.i = add i64 %sub.237.i, -1
  br label %sub_significands.exit

sub_significands.exit:                            ; preds = %if.then.2.i, %if.end.1.i, %if.then.1.i
  %ri.0.2.i = phi i64 [ %dec.2.i, %if.then.2.i ], [ %sub.236.i, %if.then.1.i ], [ %sub.2.i, %if.end.1.i ]
  store i64 %ri.0.2.i, ptr %arrayidx11.2.i, align 8
  %or = or disjoint i64 %q.0, 1
  br label %do.cond

do.cond:                                          ; preds = %sub_significands.exit, %cmp_significands.exit
  %q.1 = phi i64 [ %or, %sub_significands.exit ], [ %q.0, %cmp_significands.exit ]
  %cmp9.not.not = icmp sgt i32 %expn.0, %sub4
  br i1 %cmp9.not.not, label %do.body, label %do.end, !llvm.loop !0

do.end:                                           ; preds = %do.cond
  %q.1.lcssa = phi i64 [ %q.1, %do.cond ]
  %and10 = and i32 %bf.load1, -64
  %bf.clear = and i32 %bf.load, 63
  %bf.set = or disjoint i32 %and10, %bf.clear
  store i32 %bf.set, ptr %num, align 8
  tail call fastcc void @normalize(ptr noundef nonnull %num)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry
  %retval.0 = phi i64 [ %q.1.lcssa, %do.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare hidden fastcc void @normalize(ptr noundef captures(none)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
