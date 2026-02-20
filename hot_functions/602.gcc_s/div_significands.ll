; ModuleID = '/tmp/tmp.tSjploQ54N/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: inlinehint nounwind uwtable
define hidden fastcc zeroext range(i8 0, 2) i8 @div_significands(ptr noundef captures(none) %r, ptr noundef readonly captures(none) %a, ptr noundef readonly captures(none) %b) unnamed_addr #1 {
entry:
  %u.sroa.0.0.copyload = load i64, ptr %a, align 8
  %u.sroa.3.0.a.sroa_idx = getelementptr inbounds i8, ptr %a, i64 8
  %u.sroa.3.0.copyload = load i64, ptr %u.sroa.3.0.a.sroa_idx, align 8
  %u.sroa.6.0.a.sroa_idx = getelementptr inbounds i8, ptr %a, i64 16
  %u.sroa.6.0.copyload = load i64, ptr %u.sroa.6.0.a.sroa_idx, align 8
  %u.sroa.9.0.a.sroa_idx = getelementptr inbounds i8, ptr %a, i64 24
  %u.sroa.9.0.copyload = load i64, ptr %u.sroa.9.0.a.sroa_idx, align 8
  %sig = getelementptr inbounds nuw i8, ptr %r, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %sig, i8 0, i64 24, i1 false)
  %sig1.i = getelementptr inbounds nuw i8, ptr %b, i64 8
  %arrayidx3.i17 = getelementptr inbounds nuw i8, ptr %b, i64 24
  %arrayidx3.1.i19 = getelementptr inbounds nuw i8, ptr %b, i64 16
  %sig1.i20 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %arrayidx3.1.i23 = getelementptr inbounds nuw i8, ptr %b, i64 16
  %arrayidx3.2.i = getelementptr inbounds nuw i8, ptr %b, i64 24
  %arrayidx3.235.i = getelementptr inbounds nuw i8, ptr %b, i64 24
  br label %start

do.body:                                          ; preds = %do.cond
  %dec = add nsw i32 %bit.0, -1
  %and = and i64 %15, -9223372036854775808
  %or.i = tail call i64 @llvm.fshl.i64(i64 %15, i64 %14, i64 1)
  %or.1.i = tail call i64 @llvm.fshl.i64(i64 %14, i64 %13, i64 1)
  %shl9.i = shl i64 %13, 1
  br label %start

start:                                            ; preds = %do.body, %entry
  %0 = phi i64 [ %u.sroa.3.0.copyload, %entry ], [ %shl9.i, %do.body ]
  %1 = phi i64 [ %u.sroa.6.0.copyload, %entry ], [ %or.1.i, %do.body ]
  %2 = phi i64 [ %u.sroa.9.0.copyload, %entry ], [ %or.i, %do.body ]
  %bit.0 = phi i32 [ 191, %entry ], [ %dec, %do.body ]
  %msb.0 = phi i64 [ 0, %entry ], [ %and, %do.body ]
  %tobool.not = icmp eq i64 %msb.0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %start
  %3 = load i64, ptr %arrayidx3.i17, align 8
  %cmp4.not.i = icmp ugt i64 %2, %3
  %retval.1.i = select i1 %cmp4.not.i, i32 1, i32 -1
  %cond.i = icmp eq i64 %2, %3
  br i1 %cond.i, label %for.cond.i, label %cmp_significands.exit

for.cond.i:                                       ; preds = %lor.lhs.false
  %4 = load i64, ptr %arrayidx3.1.i19, align 8
  %cmp4.not.1.i = icmp ugt i64 %1, %4
  %cmp5.not.1.i = icmp ult i64 %1, %4
  %.retval.0.1.i = select i1 %cmp5.not.1.i, i32 -1, i32 %retval.1.i
  %retval.1.1.i = select i1 %cmp4.not.1.i, i32 1, i32 %.retval.0.1.i
  %cond.1.i = icmp eq i64 %1, %4
  br i1 %cond.1.i, label %for.cond.1.i, label %cmp_significands.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %5 = load i64, ptr %sig1.i, align 8
  %cmp4.not.2.i = icmp ugt i64 %0, %5
  %cmp5.not.2.i = icmp ult i64 %0, %5
  %.retval.0.2.i = select i1 %cmp5.not.2.i, i32 -1, i32 %retval.1.1.i
  %retval.1.2.i = select i1 %cmp4.not.2.i, i32 1, i32 %.retval.0.2.i
  %cond.2.i = icmp eq i64 %0, %5
  br i1 %cond.2.i, label %if.then, label %cmp_significands.exit

cmp_significands.exit:                            ; preds = %for.cond.1.i, %for.cond.i, %lor.lhs.false
  %retval.2.i = phi i32 [ %retval.1.i, %lor.lhs.false ], [ %retval.1.1.i, %for.cond.i ], [ %retval.1.2.i, %for.cond.1.i ]
  %cmp = icmp sgt i32 %retval.2.i, -1
  br i1 %cmp, label %if.then, label %do.cond

if.then:                                          ; preds = %cmp_significands.exit, %for.cond.1.i, %start
  %6 = load i64, ptr %sig1.i20, align 8
  %sub.i = sub i64 %0, %6
  %cmp7.i = icmp ugt i64 %6, %0
  %7 = load i64, ptr %arrayidx3.1.i23, align 8
  %sub.1.i = sub i64 %1, %7
  br i1 %cmp7.i, label %if.then.1.i, label %if.end.1.i

if.then.1.i:                                      ; preds = %if.then
  %dec.1.i = add i64 %sub.1.i, -1
  %or24.1.i.not = icmp ugt i64 %1, %7
  %8 = load i64, ptr %arrayidx3.235.i, align 8
  %sub.236.i = sub i64 %2, %8
  br i1 %or24.1.i.not, label %sub_significands.exit, label %if.then.2.i

if.end.1.i:                                       ; preds = %if.then
  %cmp7.1.i = icmp ugt i64 %7, %1
  %9 = load i64, ptr %arrayidx3.2.i, align 8
  %sub.2.i = sub i64 %2, %9
  br i1 %cmp7.1.i, label %if.then.2.i, label %sub_significands.exit

if.then.2.i:                                      ; preds = %if.end.1.i, %if.then.1.i
  %10 = phi i64 [ %dec.1.i, %if.then.1.i ], [ %sub.1.i, %if.end.1.i ]
  %sub.237.i = phi i64 [ %sub.236.i, %if.then.1.i ], [ %sub.2.i, %if.end.1.i ]
  %dec.2.i = add i64 %sub.237.i, -1
  br label %sub_significands.exit

sub_significands.exit:                            ; preds = %if.then.2.i, %if.end.1.i, %if.then.1.i
  %11 = phi i64 [ %10, %if.then.2.i ], [ %dec.1.i, %if.then.1.i ], [ %sub.1.i, %if.end.1.i ]
  %ri.0.2.i = phi i64 [ %dec.2.i, %if.then.2.i ], [ %sub.236.i, %if.then.1.i ], [ %sub.2.i, %if.end.1.i ]
  %rem.i = and i32 %bit.0, 63
  %sh_prom.i = zext nneg i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div2.i = lshr i32 %bit.0, 6
  %idxprom.i = zext nneg i32 %div2.i to i64
  %arrayidx.i25 = getelementptr inbounds nuw i64, ptr %sig, i64 %idxprom.i
  %12 = load i64, ptr %arrayidx.i25, align 8
  %or.i26 = or i64 %12, %shl.i
  store i64 %or.i26, ptr %arrayidx.i25, align 8
  br label %do.cond

do.cond:                                          ; preds = %sub_significands.exit, %cmp_significands.exit
  %13 = phi i64 [ %0, %cmp_significands.exit ], [ %sub.i, %sub_significands.exit ]
  %14 = phi i64 [ %1, %cmp_significands.exit ], [ %11, %sub_significands.exit ]
  %15 = phi i64 [ %2, %cmp_significands.exit ], [ %ri.0.2.i, %sub_significands.exit ]
  %cmp3 = icmp samesign ugt i32 %bit.0, 0
  br i1 %cmp3, label %do.body, label %for.cond.preheader, !llvm.loop !0

for.cond.preheader:                               ; preds = %do.cond
  %.lcssa34 = phi i64 [ %13, %do.cond ]
  %.lcssa33 = phi i64 [ %14, %do.cond ]
  %.lcssa = phi i64 [ %15, %do.cond ]
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader
  %or.1 = or i64 %.lcssa33, %.lcssa34
  %or.2 = or i64 %.lcssa, %or.1
  %cmp7 = icmp ne i64 %or.2, 0
  %conv8 = zext i1 %cmp7 to i8
  ret i8 %conv8
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
