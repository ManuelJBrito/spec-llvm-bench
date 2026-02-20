; ModuleID = '/tmp/tmp.e3RsL9QGU3/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PL_compcv = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_Slab_Alloc(i64 noundef %sz) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @PL_compcv, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %0, align 8
  %xcv_root_u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %2 = load ptr, ptr %xcv_root_u, align 8
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %xcv_start_u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %3 = load ptr, ptr %xcv_start_u, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.then10, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %xcv_flags = getelementptr inbounds nuw i8, ptr %1, i64 92
  %4 = load i32, ptr %xcv_flags, align 4
  %and = and i32 %4, 2048
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  %call = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %sz) #4
  br label %cleanup113

if.then10:                                        ; preds = %lor.lhs.false2
  %call.i = tail call noalias noundef dereferenceable_or_null(512) ptr @calloc(i64 noundef 64, i64 noundef 8) #4
  %add.ptr1.i = getelementptr inbounds nuw i8, ptr %call.i, i64 504
  store ptr %add.ptr1.i, ptr %call.i, align 8
  %5 = load ptr, ptr %0, align 8
  %xcv_start_u13 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %call.i, ptr %xcv_start_u13, align 8
  %6 = load ptr, ptr %0, align 8
  %xcv_flags15 = getelementptr inbounds nuw i8, ptr %6, i64 92
  %7 = load i32, ptr %xcv_flags15, align 4
  %or = or i32 %7, 2048
  store i32 %or, ptr %xcv_flags15, align 4
  %opslab_refcnt = getelementptr inbounds nuw i8, ptr %call.i, i64 24
  store i64 2, ptr %opslab_refcnt, align 8
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true
  %opslab_refcnt18 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i64, ptr %opslab_refcnt18, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %opslab_refcnt18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then10
  %slab.0 = phi ptr [ %3, %if.else ], [ %call.i, %if.then10 ]
  %sub = add i64 %sz, 7
  %div180 = lshr i64 %sub, 3
  %add21 = add nuw nsw i64 %div180, 2
  %opslab_freed = getelementptr inbounds nuw i8, ptr %slab.0, i64 16
  %9 = load ptr, ptr %opslab_freed, align 8
  %tobool22.not = icmp eq ptr %9, null
  br i1 %tobool22.not, label %if.end34, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.end19
  br label %land.rhs

land.rhs:                                         ; preds = %while.body, %land.rhs.preheader
  %too.0190 = phi ptr [ %o.0189, %while.body ], [ %opslab_freed, %land.rhs.preheader ]
  %o.0189 = phi ptr [ %11, %while.body ], [ %9, %land.rhs.preheader ]
  %add.ptr = getelementptr inbounds i8, ptr %o.0189, i64 -16
  %10 = load ptr, ptr %add.ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %cmp = icmp ult i64 %sub.ptr.div, %add21
  br i1 %cmp, label %while.body, label %cleanup

while.body:                                       ; preds = %land.rhs
  %11 = load ptr, ptr %o.0189, align 8
  %tobool25.not = icmp eq ptr %11, null
  br i1 %tobool25.not, label %if.end34.loopexit, label %land.rhs, !llvm.loop !0

cleanup:                                          ; preds = %land.rhs
  %too.0190.lcssa = phi ptr [ %too.0190, %land.rhs ]
  %o.0189.lcssa = phi ptr [ %o.0189, %land.rhs ]
  %12 = load ptr, ptr %o.0189.lcssa, align 8
  store ptr %12, ptr %too.0190.lcssa, align 8
  %mul = and i64 %sub, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %o.0189.lcssa, i8 0, i64 %mul, i1 false)
  %op_slabbed = getelementptr inbounds nuw i8, ptr %o.0189.lcssa, i64 32
  %bf.load = load i16, ptr %op_slabbed, align 8
  %bf.set = or i16 %bf.load, 1024
  store i16 %bf.set, ptr %op_slabbed, align 8
  br label %cleanup113

if.end34.loopexit:                                ; preds = %while.body
  br label %if.end34

if.end34:                                         ; preds = %if.end34.loopexit, %if.end19
  %opslab_next = getelementptr inbounds nuw i8, ptr %slab.0, i64 8
  %13 = load ptr, ptr %opslab_next, align 8
  %tobool35.not = icmp eq ptr %13, null
  %slab.0. = select i1 %tobool35.not, ptr %slab.0, ptr %13
  %14 = load ptr, ptr %slab.0., align 8
  %opslab_slots = getelementptr inbounds nuw i8, ptr %slab.0., i64 32
  %sub.ptr.lhs.cast37 = ptrtoint ptr %14 to i64
  %sub.ptr.rhs.cast38 = ptrtoint ptr %opslab_slots to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  %sub.ptr.div40 = ashr exact i64 %sub.ptr.sub39, 3
  %cmp41 = icmp ult i64 %sub.ptr.div40, %add21
  br i1 %cmp41, label %if.then42, label %if.end90

if.then42:                                        ; preds = %if.end34
  %cmp45 = icmp ugt i64 %sub.ptr.div40, 6
  br i1 %cmp45, label %if.then46, label %if.end61

if.then46:                                        ; preds = %if.then42
  %opslot_slab = getelementptr inbounds nuw i8, ptr %slab.0., i64 40
  store ptr %slab.0, ptr %opslot_slab, align 8
  store ptr %14, ptr %opslab_slots, align 8
  store ptr %opslab_slots, ptr %slab.0., align 8
  %opslot_op = getelementptr inbounds nuw i8, ptr %slab.0., i64 48
  %op_slabbed51 = getelementptr inbounds nuw i8, ptr %slab.0., i64 80
  %bf.load52 = load i16, ptr %op_slabbed51, align 8
  %bf.set54 = and i16 %bf.load52, -1536
  %bf.set57 = or disjoint i16 %bf.set54, 1420
  store i16 %bf.set57, ptr %op_slabbed51, align 8
  %15 = load ptr, ptr %opslab_freed, align 8
  store ptr %15, ptr %opslot_op, align 8
  store ptr %opslot_op, ptr %opslab_freed, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then46, %if.then42
  %16 = load ptr, ptr %slab.0., align 8
  br label %while.cond63

while.cond63:                                     ; preds = %while.cond63, %if.end61
  %slot.0 = phi ptr [ %16, %if.end61 ], [ %17, %while.cond63 ]
  %17 = load ptr, ptr %slot.0, align 8
  %tobool65.not = icmp eq ptr %17, null
  br i1 %tobool65.not, label %while.end68, label %while.cond63, !llvm.loop !2

while.end68:                                      ; preds = %while.cond63
  %slot.0.lcssa = phi ptr [ %slot.0, %while.cond63 ]
  %sub.ptr.lhs.cast69 = ptrtoint ptr %slot.0.lcssa to i64
  %sub.ptr.rhs.cast70 = ptrtoint ptr %slab.0. to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %add73 = ashr exact i64 %sub.ptr.sub71, 2
  %mul74 = add nsw i64 %add73, 2
  %spec.select = tail call i64 @llvm.umin.i64(i64 %mul74, i64 2048)
  %call.i183 = tail call noalias noundef ptr @calloc(i64 noundef range(i64 0, 2049) %spec.select, i64 noundef 8) #4
  %add.ptr.i184 = getelementptr inbounds nuw ptr, ptr %call.i183, i64 %spec.select
  %add.ptr1.i185 = getelementptr inbounds i8, ptr %add.ptr.i184, i64 -8
  store ptr %add.ptr1.i185, ptr %call.i183, align 8
  %18 = load ptr, ptr %opslab_next, align 8
  %opslab_next88 = getelementptr inbounds nuw i8, ptr %call.i183, i64 8
  store ptr %18, ptr %opslab_next88, align 8
  store ptr %call.i183, ptr %opslab_next, align 8
  br label %if.end90

if.end90:                                         ; preds = %while.end68, %if.end34
  %slab2.0 = phi ptr [ %call.i183, %while.end68 ], [ %slab.0., %if.end34 ]
  %19 = load ptr, ptr %slab2.0, align 8
  %idx.neg = sub nuw nsw i64 -2, %div180
  %add.ptr92 = getelementptr inbounds ptr, ptr %19, i64 %idx.neg
  %opslab_slots93 = getelementptr inbounds nuw i8, ptr %slab2.0, i64 32
  %sub.ptr.lhs.cast94 = ptrtoint ptr %add.ptr92 to i64
  %sub.ptr.rhs.cast95 = ptrtoint ptr %opslab_slots93 to i64
  %sub.ptr.sub96 = sub i64 %sub.ptr.lhs.cast94, %sub.ptr.rhs.cast95
  %cmp100 = icmp ult i64 %sub.ptr.sub96, 56
  %spec.select182 = select i1 %cmp100, ptr %opslab_slots93, ptr %add.ptr92
  %opslot_slab104 = getelementptr inbounds nuw i8, ptr %spec.select182, i64 8
  store ptr %slab.0, ptr %opslot_slab104, align 8
  %20 = load ptr, ptr %slab2.0, align 8
  store ptr %20, ptr %spec.select182, align 8
  store ptr %spec.select182, ptr %slab2.0, align 8
  %opslot_op108 = getelementptr inbounds nuw i8, ptr %spec.select182, i64 16
  %op_slabbed109 = getelementptr inbounds nuw i8, ptr %spec.select182, i64 48
  %bf.load110 = load i16, ptr %op_slabbed109, align 8
  %bf.set112 = or i16 %bf.load110, 1024
  store i16 %bf.set112, ptr %op_slabbed109, align 8
  br label %cleanup113

cleanup113:                                       ; preds = %if.end90, %cleanup, %if.then
  %o.1 = phi ptr [ %call, %if.then ], [ %opslot_op108, %if.end90 ], [ %o.0189.lcssa, %cleanup ]
  ret ptr %o.1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind allocsize(0,1) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
