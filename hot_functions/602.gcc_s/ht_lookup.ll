; ModuleID = '/tmp/tmp.gnt7XG59gn/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/cpp_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local ptr @ht_lookup(ptr noundef %table, ptr noundef readonly captures(none) %str, i64 noundef %len, i32 noundef %insert) local_unnamed_addr #0 {
entry:
  %tobool.not6.i = icmp eq i64 %len, 0
  br i1 %tobool.not6.i, label %calc_hash.exit, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.i.preheader
  %r.09.i = phi i32 [ %add.i, %while.body.i ], [ 0, %while.body.i.preheader ]
  %n.08.i = phi i64 [ %dec.i, %while.body.i ], [ %len, %while.body.i.preheader ]
  %str.addr.07.i = phi ptr [ %incdec.ptr.i, %while.body.i ], [ %str, %while.body.i.preheader ]
  %dec.i = add i64 %n.08.i, -1
  %mul.i = mul i32 %r.09.i, 67
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %str.addr.07.i, i64 1
  %0 = load i8, ptr %str.addr.07.i, align 1
  %conv.i = zext i8 %0 to i32
  %sub.i = add i32 %mul.i, -113
  %add.i = add i32 %sub.i, %conv.i
  %tobool.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool.not.i, label %calc_hash.exit.loopexit, label %while.body.i, !llvm.loop !0

calc_hash.exit.loopexit:                          ; preds = %while.body.i
  %add.i.lcssa = phi i32 [ %add.i, %while.body.i ]
  br label %calc_hash.exit

calc_hash.exit:                                   ; preds = %calc_hash.exit.loopexit, %entry
  %r.0.lcssa.i = phi i32 [ 0, %entry ], [ %add.i.lcssa, %calc_hash.exit.loopexit ]
  %1 = trunc i64 %len to i32
  %conv3.i = add i32 %r.0.lcssa.i, %1
  %call1 = tail call ptr @ht_lookup_with_hash(ptr noundef %table, ptr noundef %str, i64 noundef %len, i32 noundef %conv3.i, i32 noundef %insert)
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
declare dso_local ptr @ht_lookup_with_hash(ptr noundef, ptr noundef readonly captures(none), i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
