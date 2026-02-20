; ModuleID = '/tmp/tmp.tzOUUb1PLO/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/505.mcf_r/src/pbeampp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }

@full_group_end_arc = external hidden unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare dso_local range(i32 -1, 2) i32 @cost_compare(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @primal_bea_mpp(i64 noundef %m, ptr noundef %arcs, ptr noundef readnone captures(address) %stop_arcs, ptr noundef captures(none) %basket_sizes, ptr noundef %perm, i32 noundef %thread, ptr noundef captures(none) %end_arc, i64 noundef %step, i64 noundef %num_threads, i64 noundef %max_elems) local_unnamed_addr #1 {
entry:
  %idxprom = sext i32 %thread to i64
  %arrayidx = getelementptr inbounds i64, ptr %basket_sizes, i64 %idxprom
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc, %entry
  %next.0212 = phi i64 [ 0, %entry ], [ %next.1, %for.inc ]
  %i.0211 = phi i64 [ 1, %entry ], [ %inc27, %for.inc ]
  %0 = load i64, ptr %arrayidx, align 8
  %cmp1.not = icmp sgt i64 %i.0211, %0
  br i1 %cmp1.not, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %arrayidx2 = getelementptr inbounds nuw ptr, ptr %perm, i64 %i.0211
  %1 = load ptr, ptr %arrayidx2, align 8
  %2 = load ptr, ptr %1, align 8
  %number = getelementptr inbounds nuw i8, ptr %1, i64 24
  %3 = load i64, ptr %number, align 8
  %cost = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = load i64, ptr %cost, align 8
  %tail = getelementptr inbounds nuw i8, ptr %2, i64 16
  %5 = load ptr, ptr %tail, align 8
  %6 = load i64, ptr %5, align 8
  %sub = sub nsw i64 %4, %6
  %head = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = load ptr, ptr %head, align 8
  %8 = load i64, ptr %7, align 8
  %add = add nsw i64 %8, %sub
  %cmp5 = icmp sgt i64 %3, 0
  br i1 %cmp5, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cmp6 = icmp slt i64 %add, 0
  br i1 %cmp6, label %land.lhs.true7, label %lor.lhs.false

land.lhs.true7:                                   ; preds = %land.lhs.true
  %ident = getelementptr inbounds nuw i8, ptr %2, i64 32
  %9 = load i16, ptr %ident, align 8
  %cmp8 = icmp eq i16 %9, 1
  br i1 %cmp8, label %if.then, label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp10.not = icmp eq i64 %add, 0
  br i1 %cmp10.not, label %for.inc, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %lor.lhs.false
  %ident13 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %10 = load i16, ptr %ident13, align 8
  %cmp15 = icmp eq i16 %10, 2
  br i1 %cmp15, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true12, %land.lhs.true7
  %inc = add nsw i64 %next.0212, 1
  %arrayidx17 = getelementptr inbounds ptr, ptr %perm, i64 %inc
  %11 = load ptr, ptr %arrayidx17, align 8
  store ptr %2, ptr %11, align 8
  %12 = load ptr, ptr %arrayidx17, align 8
  %cost20 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %add, ptr %cost20, align 8
  %cond = tail call i64 @llvm.abs.i64(i64 %add, i1 true)
  %13 = load ptr, ptr %arrayidx17, align 8
  %abs_cost = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %cond, ptr %abs_cost, align 8
  %14 = load ptr, ptr %arrayidx17, align 8
  %number26 = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 0, ptr %number26, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true12, %lor.lhs.false, %land.lhs.true7, %for.body
  %next.1 = phi i64 [ %inc, %if.then ], [ %next.0212, %land.lhs.true12 ], [ %next.0212, %lor.lhs.false ], [ %next.0212, %for.body ], [ %next.0212, %land.lhs.true7 ]
  %inc27 = add nuw nsw i64 %i.0211, 1
  %exitcond = icmp ne i64 %inc27, 61
  br i1 %exitcond, label %land.rhs, label %for.end, !llvm.loop !0

for.end:                                          ; preds = %for.inc, %land.rhs
  %next.0.lcssa = phi i64 [ %next.1, %for.inc ], [ %next.0212, %land.rhs ]
  %idxprom28 = sext i32 %thread to i64
  %arrayidx29 = getelementptr inbounds i64, ptr %basket_sizes, i64 %idxprom28
  store i64 %next.0.lcssa, ptr %arrayidx29, align 8
  %15 = load ptr, ptr %end_arc, align 8
  %16 = load ptr, ptr @full_group_end_arc, align 8
  %cmp93215 = icmp sgt i64 %num_threads, 0
  br label %NEXT

NEXT:                                             ; preds = %for.end100, %for.end
  %17 = load ptr, ptr %end_arc, align 8
  %add.ptr.idx = mul nsw i64 %step, 72
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %add.ptr.idx
  %cmp30.not = icmp ult ptr %17, %16
  %add.ptr35.idx = mul nsw i64 %max_elems, 72
  %storemerge.idx = select i1 %cmp30.not, i64 0, i64 -72
  %18 = add nsw i64 %add.ptr35.idx, %storemerge.idx
  %storemerge = getelementptr inbounds i8, ptr %17, i64 %18
  store ptr %storemerge, ptr %end_arc, align 8
  %cmp38213 = icmp slt i64 %add.ptr.idx, %18
  br i1 %cmp38213, label %for.body40.preheader, label %for.end84

for.body40.preheader:                             ; preds = %NEXT
  br label %for.body40

for.body40:                                       ; preds = %for.inc82, %for.body40.preheader
  %arc.0214 = phi ptr [ %add.ptr83, %for.inc82 ], [ %add.ptr, %for.body40.preheader ]
  %ident41 = getelementptr inbounds nuw i8, ptr %arc.0214, i64 32
  %19 = load i16, ptr %ident41, align 8
  %cmp43 = icmp sgt i16 %19, 0
  br i1 %cmp43, label %if.then45, label %for.inc82

if.then45:                                        ; preds = %for.body40
  %cost46 = getelementptr inbounds nuw i8, ptr %arc.0214, i64 8
  %20 = load i64, ptr %cost46, align 8
  %tail47 = getelementptr inbounds nuw i8, ptr %arc.0214, i64 16
  %21 = load ptr, ptr %tail47, align 8
  %22 = load i64, ptr %21, align 8
  %sub49 = sub nsw i64 %20, %22
  %head50 = getelementptr inbounds nuw i8, ptr %arc.0214, i64 24
  %23 = load ptr, ptr %head50, align 8
  %24 = load i64, ptr %23, align 8
  %add52 = add nsw i64 %24, %sub49
  %cmp.i = icmp slt i64 %add52, 0
  br i1 %cmp.i, label %bea_is_dual_infeasible.exit, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %if.then45
  %cmp3.not.i = icmp eq i64 %add52, 0
  br i1 %cmp3.not.i, label %for.inc82, label %bea_is_dual_infeasible.exit

bea_is_dual_infeasible.exit:                      ; preds = %lor.rhs.i, %if.then45
  %.sink12.i = phi i16 [ 1, %if.then45 ], [ 2, %lor.rhs.i ]
  %cmp1.i.not = icmp eq i16 %19, %.sink12.i
  br i1 %cmp1.i.not, label %if.then53, label %for.inc82

if.then53:                                        ; preds = %bea_is_dual_infeasible.exit
  %25 = load i64, ptr %arrayidx29, align 8
  %inc56 = add nsw i64 %25, 1
  store i64 %inc56, ptr %arrayidx29, align 8
  %arrayidx59 = getelementptr inbounds ptr, ptr %perm, i64 %inc56
  %26 = load ptr, ptr %arrayidx59, align 8
  store ptr %arc.0214, ptr %26, align 8
  %27 = load i64, ptr %arrayidx29, align 8
  %arrayidx63 = getelementptr inbounds ptr, ptr %perm, i64 %27
  %28 = load ptr, ptr %arrayidx63, align 8
  %cost64 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %add52, ptr %cost64, align 8
  %cond71 = tail call i64 @llvm.abs.i64(i64 %add52, i1 true)
  %29 = load i64, ptr %arrayidx29, align 8
  %arrayidx74 = getelementptr inbounds ptr, ptr %perm, i64 %29
  %30 = load ptr, ptr %arrayidx74, align 8
  %abs_cost75 = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 %cond71, ptr %abs_cost75, align 8
  %31 = load i64, ptr %arrayidx29, align 8
  %arrayidx78 = getelementptr inbounds ptr, ptr %perm, i64 %31
  %32 = load ptr, ptr %arrayidx78, align 8
  %number79 = getelementptr inbounds nuw i8, ptr %32, i64 24
  store i64 0, ptr %number79, align 8
  br label %for.inc82

for.inc82:                                        ; preds = %if.then53, %bea_is_dual_infeasible.exit, %lor.rhs.i, %for.body40
  %add.ptr83 = getelementptr inbounds %struct.arc, ptr %arc.0214, i64 %num_threads
  %33 = load ptr, ptr %end_arc, align 8
  %cmp38 = icmp ult ptr %add.ptr83, %33
  br i1 %cmp38, label %for.body40, label %for.end84.loopexit, !llvm.loop !2

for.end84.loopexit:                               ; preds = %for.inc82
  %.lcssa219 = phi ptr [ %33, %for.inc82 ]
  br label %for.end84

for.end84:                                        ; preds = %for.end84.loopexit, %NEXT
  %.lcssa = phi ptr [ %storemerge, %NEXT ], [ %.lcssa219, %for.end84.loopexit ]
  %cmp85.not = icmp ult ptr %.lcssa, %stop_arcs
  br i1 %cmp85.not, label %if.end88, label %if.then87

if.then87:                                        ; preds = %for.end84
  store ptr %arcs, ptr %end_arc, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %for.end84
  %34 = load ptr, ptr %end_arc, align 8
  %cmp89.not = icmp eq ptr %34, %15
  br i1 %cmp89.not, label %READY, label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %if.end88
  br i1 %cmp93215, label %for.body95.preheader, label %for.end100

for.body95.preheader:                             ; preds = %for.cond92.preheader
  br label %for.body95

for.body95:                                       ; preds = %for.body95, %for.body95.preheader
  %global_basket_size.0217 = phi i64 [ %add97, %for.body95 ], [ 0, %for.body95.preheader ]
  %j.0216 = phi i64 [ %inc99, %for.body95 ], [ 0, %for.body95.preheader ]
  %arrayidx96 = getelementptr inbounds nuw i64, ptr %basket_sizes, i64 %j.0216
  %35 = load i64, ptr %arrayidx96, align 8
  %add97 = add nsw i64 %35, %global_basket_size.0217
  %inc99 = add nuw nsw i64 %j.0216, 1
  %exitcond220 = icmp ne i64 %inc99, %num_threads
  br i1 %exitcond220, label %for.body95, label %for.end100.loopexit, !llvm.loop !3

for.end100.loopexit:                              ; preds = %for.body95
  %add97.lcssa = phi i64 [ %add97, %for.body95 ]
  br label %for.end100

for.end100:                                       ; preds = %for.end100.loopexit, %for.cond92.preheader
  %global_basket_size.0.lcssa = phi i64 [ 0, %for.cond92.preheader ], [ %add97.lcssa, %for.end100.loopexit ]
  %cmp101 = icmp sgt i64 %global_basket_size.0.lcssa, 59
  br i1 %cmp101, label %READY, label %NEXT

READY:                                            ; preds = %for.end100, %if.end88
  %36 = load i64, ptr %arrayidx29, align 8
  %37 = getelementptr ptr, ptr %perm, i64 %36
  %arrayidx109 = getelementptr i8, ptr %37, i64 8
  %38 = load ptr, ptr %arrayidx109, align 8
  %number110 = getelementptr inbounds nuw i8, ptr %38, i64 24
  store i64 -1, ptr %number110, align 8
  %39 = load i64, ptr %arrayidx29, align 8
  %cmp113 = icmp eq i64 %39, 0
  br i1 %cmp113, label %cleanup, label %if.end116

if.end116:                                        ; preds = %READY
  %add.ptr117 = getelementptr inbounds nuw i8, ptr %perm, i64 8
  tail call void @spec_qsort(ptr noundef nonnull %add.ptr117, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @cost_compare) #4
  %40 = load ptr, ptr %add.ptr117, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %READY
  %retval.0 = phi ptr [ %40, %if.end116 ], [ null, %READY ]
  ret ptr %retval.0
}

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
!3 = distinct !{!3, !1}
