; ModuleID = '/tmp/tmp.BaH6jg2XQq/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/c-decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.7 = external hidden unnamed_addr constant [114 x i8], align 1
@.str.8 = external hidden unnamed_addr constant [2 x i8], align 1
@external_scope = external hidden global ptr, align 8
@visible_builtins = external hidden global ptr, align 8
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@binding_freelist = external hidden global ptr, align 8

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #0

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local ptr @c_builtin_function(ptr noundef %decl) local_unnamed_addr #1 {
entry:
  %type1 = getelementptr inbounds nuw i8, ptr %decl, i64 16
  %0 = load ptr, ptr %type1, align 8
  %name = getelementptr inbounds nuw i8, ptr %decl, i64 32
  %1 = load ptr, ptr %name, align 8
  %id3 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2 = load ptr, ptr %id3, align 8
  %values = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load ptr, ptr %values, align 8
  %cmp.not = icmp eq ptr %3, null
  %lang_flag_6 = getelementptr inbounds nuw i8, ptr %decl, i64 56
  %bf.load = load i64, ptr %lang_flag_6, align 8
  %bf.shl = select i1 %cmp.not, i64 0, i64 2097152
  %bf.clear = and i64 %bf.load, -2097153
  %bf.set = or disjoint i64 %bf.clear, %bf.shl
  store i64 %bf.set, ptr %lang_flag_6, align 8
  %symbol_binding = getelementptr inbounds nuw i8, ptr %1, i64 56
  %4 = load ptr, ptr %symbol_binding, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3532, ptr noundef nonnull @.str.8) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry
  %5 = load ptr, ptr @external_scope, align 8
  %6 = load ptr, ptr @binding_freelist, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end
  %prev.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %7 = load ptr, ptr %prev.i, align 8
  store ptr %7, ptr @binding_freelist, align 8
  br label %if.end28.i

if.else.i:                                        ; preds = %cond.end
  %call.i = tail call ptr @ggc_alloc_stat(i64 noundef 48) #2
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i, %if.then.i
  %b.0.i = phi ptr [ %6, %if.then.i ], [ %call.i, %if.else.i ]
  %shadowed.i = getelementptr inbounds nuw i8, ptr %b.0.i, i64 32
  store ptr null, ptr %shadowed.i, align 8
  %decl1.i = getelementptr inbounds nuw i8, ptr %b.0.i, i64 8
  store ptr %decl, ptr %decl1.i, align 8
  %id.i = getelementptr inbounds nuw i8, ptr %b.0.i, i64 16
  store ptr %1, ptr %id.i, align 8
  %depth.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  %bf.load.i = load i64, ptr %depth.i, align 8
  %8 = trunc i64 %bf.load.i to i32
  %bf.cast.i = and i32 %8, 268435455
  %depth2.i = getelementptr inbounds nuw i8, ptr %b.0.i, i64 40
  %bf.set9.i = or disjoint i32 %bf.cast.i, 268435456
  store i32 %bf.set9.i, ptr %depth2.i, align 8
  %locus23.i = getelementptr inbounds nuw i8, ptr %b.0.i, i64 44
  store i32 0, ptr %locus23.i, align 4
  store ptr null, ptr %b.0.i, align 8
  %bindings.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %9 = load ptr, ptr %bindings.i, align 8
  %prev24.i = getelementptr inbounds nuw i8, ptr %b.0.i, i64 24
  store ptr %9, ptr %prev24.i, align 8
  store ptr %b.0.i, ptr %bindings.i, align 8
  %bf.load29.i = load i64, ptr %decl, align 8
  %10 = trunc i64 %bf.load29.i to i16
  switch i16 %10, label %sw.default.i [
    i16 30, label %sw.epilog.i
    i16 6, label %sw.bb32.i
    i16 17, label %sw.bb32.i
    i16 16, label %sw.bb32.i
    i16 32, label %sw.bb33.i
    i16 29, label %sw.bb33.i
    i16 35, label %sw.bb33.i
    i16 33, label %sw.bb33.i
    i16 34, label %sw.bb33.i
    i16 0, label %sw.bb33.i
  ]

sw.bb32.i:                                        ; preds = %if.end28.i, %if.end28.i, %if.end28.i
  br label %sw.epilog.i

sw.bb33.i:                                        ; preds = %if.end28.i, %if.end28.i, %if.end28.i, %if.end28.i, %if.end28.i, %if.end28.i
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end28.i
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 633, ptr noundef nonnull @.str.8) #2
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb33.i, %sw.bb32.i, %if.end28.i
  %.sink.i = phi i64 [ 56, %sw.bb33.i ], [ 64, %sw.bb32.i ], [ 72, %if.end28.i ]
  %symbol_binding.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.i
  %11 = load ptr, ptr %symbol_binding.i, align 8
  %tobool34.not73.i = icmp eq ptr %11, null
  br i1 %tobool34.not73.i, label %bind.exit, label %land.rhs.lr.ph.i

land.rhs.lr.ph.i:                                 ; preds = %sw.epilog.i
  %bf.load39.i = load i64, ptr %depth.i, align 8
  %12 = trunc i64 %bf.load39.i to i32
  %bf.cast41.i = and i32 %12, 268435455
  %depth35.i27 = getelementptr inbounds nuw i8, ptr %11, i64 40
  %bf.load36.i28 = load i32, ptr %depth35.i27, align 8
  %bf.clear37.i29 = and i32 %bf.load36.i28, 268435455
  %cmp.i30 = icmp samesign ugt i32 %bf.clear37.i29, %bf.cast41.i
  br i1 %cmp.i30, label %while.body.i.preheader, label %bind.exit

while.body.i.preheader:                           ; preds = %land.rhs.lr.ph.i
  br label %while.body.i

land.rhs.i:                                       ; preds = %while.body.i
  %depth35.i = getelementptr inbounds nuw i8, ptr %14, i64 40
  %bf.load36.i = load i32, ptr %depth35.i, align 8
  %bf.clear37.i = and i32 %bf.load36.i, 268435455
  %cmp.i = icmp samesign ugt i32 %bf.clear37.i, %bf.cast41.i
  br i1 %cmp.i, label %while.body.i, label %bind.exit.loopexit, !llvm.loop !0

while.body.i:                                     ; preds = %land.rhs.i, %while.body.i.preheader
  %13 = phi ptr [ %14, %land.rhs.i ], [ %11, %while.body.i.preheader ]
  %shadowed43.i = getelementptr inbounds nuw i8, ptr %13, i64 32
  %14 = load ptr, ptr %shadowed43.i, align 8
  %tobool34.not.i = icmp eq ptr %14, null
  br i1 %tobool34.not.i, label %while.body.i.bind.exit.loopexit_crit_edge, label %land.rhs.i, !llvm.loop !0

while.body.i.bind.exit.loopexit_crit_edge:        ; preds = %while.body.i
  %shadowed43.i.lcssa = phi ptr [ %shadowed43.i, %while.body.i ]
  br label %bind.exit, !llvm.loop !0

bind.exit.loopexit:                               ; preds = %land.rhs.i
  %shadowed43.i.lcssa35 = phi ptr [ %shadowed43.i, %land.rhs.i ]
  %.lcssa34 = phi ptr [ %14, %land.rhs.i ]
  br label %bind.exit

bind.exit:                                        ; preds = %bind.exit.loopexit, %while.body.i.bind.exit.loopexit_crit_edge, %land.rhs.lr.ph.i, %sw.epilog.i
  %here.1.lcssa.i = phi ptr [ %symbol_binding.i, %sw.epilog.i ], [ %shadowed43.i.lcssa, %while.body.i.bind.exit.loopexit_crit_edge ], [ %symbol_binding.i, %land.rhs.lr.ph.i ], [ %shadowed43.i.lcssa35, %bind.exit.loopexit ]
  %.lcssa.i = phi ptr [ null, %sw.epilog.i ], [ null, %while.body.i.bind.exit.loopexit_crit_edge ], [ %11, %land.rhs.lr.ph.i ], [ %.lcssa34, %bind.exit.loopexit ]
  store ptr %.lcssa.i, ptr %shadowed.i, align 8
  store ptr %b.0.i, ptr %here.1.lcssa.i, align 8
  %15 = load i8, ptr %2, align 1
  %cmp5 = icmp eq i8 %15, 95
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %bind.exit
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %16 = load i8, ptr %arrayidx7, align 1
  %cmp9 = icmp eq i8 %16, 95
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %idxprom = zext i8 %16 to i64
  %arrayidx13 = getelementptr inbounds nuw i16, ptr @_sch_istable, i64 %idxprom
  %17 = load i16, ptr %arrayidx13, align 2
  %18 = and i16 %17, 128
  %tobool16.not = icmp eq i16 %18, 0
  br i1 %tobool16.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %19 = load ptr, ptr @visible_builtins, align 8
  %chain = getelementptr inbounds nuw i8, ptr %decl, i64 8
  store ptr %19, ptr %chain, align 8
  store ptr %decl, ptr @visible_builtins, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %bind.exit
  ret ptr %decl
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
