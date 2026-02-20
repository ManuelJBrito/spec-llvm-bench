; ModuleID = '/tmp/tmp.BF3Qreq5mT/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/505.mcf_r/src/implicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind memory(readwrite, target_mem0: none, target_mem1: none) uwtable
declare dso_local void @marc_arcs(ptr noundef captures(none), ptr noundef captures(none) initializes((0, 8)), ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare hidden range(i32 -1, 2) i32 @arc_compare(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
declare dso_local range(i64 -1, 1) i64 @resize_prob(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare dso_local i64 @switch_arcs(ptr noundef readnone captures(none), ptr noundef readonly captures(none), ptr noundef readonly captures(none), ptr noundef captures(none), i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @price_out_impl(ptr noundef %net) local_unnamed_addr #6 {
entry:
  %new_arcs = alloca i64, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %new_arcs) #11
  store i64 0, ptr %new_arcs, align 8
  %bigM1 = getelementptr inbounds nuw i8, ptr %net, i64 528
  %0 = load i64, ptr %bigM1, align 8
  %call = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #12
  %call3 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #12
  %call5 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #12
  %call7 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #12
  %n_trips = getelementptr inbounds nuw i8, ptr %net, i64 408
  %1 = load i64, ptr %n_trips, align 8
  %cmp = icmp slt i64 %1, 15001
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %m = getelementptr inbounds nuw i8, ptr %net, i64 424
  %2 = load i64, ptr %m, align 8
  %max_new_m = getelementptr inbounds nuw i8, ptr %net, i64 456
  %3 = load i64, ptr %max_new_m, align 8
  %add = add nsw i64 %3, %2
  %max_m = getelementptr inbounds nuw i8, ptr %net, i64 416
  %4 = load i64, ptr %max_m, align 8
  %cmp8 = icmp sgt i64 %add, %4
  br i1 %cmp8, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.then
  %mul11 = mul nsw i64 %1, %1
  %div567 = lshr i64 %mul11, 1
  %add13 = add nsw i64 %2, %div567
  %cmp15 = icmp sgt i64 %add13, %4
  br i1 %cmp15, label %if.then16, label %if.end40

if.then16:                                        ; preds = %land.lhs.true
  %call17 = tail call i64 @resize_prob(ptr noundef nonnull %net)
  %tobool.not = icmp eq i64 %call17, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then16
  tail call void @refresh_neighbour_lists(ptr noundef nonnull %net, ptr noundef nonnull @getOriginalArcPosition) #11
  br label %if.end40

if.else:                                          ; preds = %entry
  %m20 = getelementptr inbounds nuw i8, ptr %net, i64 424
  %5 = load i64, ptr %m20, align 8
  %max_new_m21 = getelementptr inbounds nuw i8, ptr %net, i64 456
  %6 = load i64, ptr %max_new_m21, align 8
  %add22 = add nsw i64 %6, %5
  %max_m23 = getelementptr inbounds nuw i8, ptr %net, i64 416
  %7 = load i64, ptr %max_m23, align 8
  %cmp24 = icmp sgt i64 %add22, %7
  br i1 %cmp24, label %land.lhs.true25, label %if.end40

land.lhs.true25:                                  ; preds = %if.else
  %mul28 = mul nuw nsw i64 %1, %1
  %div29566 = lshr i64 %mul28, 1
  %add31 = add nsw i64 %5, %div29566
  %cmp33 = icmp sgt i64 %add31, %7
  br i1 %cmp33, label %if.then34, label %if.end40

if.then34:                                        ; preds = %land.lhs.true25
  %call35 = tail call i64 @resize_prob(ptr noundef nonnull %net)
  %tobool36.not = icmp eq i64 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %cleanup

if.end38:                                         ; preds = %if.then34
  tail call void @refresh_neighbour_lists(ptr noundef nonnull %net, ptr noundef nonnull @getOriginalArcPosition) #11
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %land.lhs.true25, %if.else, %if.end, %land.lhs.true, %if.then
  %tobool245.not = phi i1 [ false, %if.end ], [ true, %land.lhs.true ], [ true, %if.then ], [ false, %if.end38 ], [ true, %land.lhs.true25 ], [ true, %if.else ]
  %8 = load i64, ptr %n_trips, align 8
  %cmp42 = icmp slt i64 %8, 15001
  %. = select i1 %cmp42, i64 1000, i64 2000
  %sorted_arcs = getelementptr inbounds nuw i8, ptr %net, i64 584
  %9 = load ptr, ptr %sorted_arcs, align 8
  %tobool46.not = icmp eq ptr %9, null
  br i1 %tobool46.not, label %cleanup, label %if.end48

if.end48:                                         ; preds = %if.end40
  %max_residual_new_m = getelementptr inbounds nuw i8, ptr %net, i64 448
  %10 = load i64, ptr %max_residual_new_m, align 8
  %max_m50 = getelementptr inbounds nuw i8, ptr %net, i64 416
  %11 = load i64, ptr %max_m50, align 8
  store ptr %9, ptr %call7, align 8
  store i64 0, ptr %call3, align 8
  store i64 0, ptr %call, align 8
  %stop_arcs = getelementptr inbounds nuw i8, ptr %net, i64 576
  %12 = load ptr, ptr %stop_arcs, align 8
  %call61 = tail call noalias ptr @calloc(i64 noundef %10, i64 noundef 8) #13
  store ptr %call61, ptr %call5, align 8
  %cmp64607 = icmp sgt i64 %10, 0
  br i1 %cmp64607, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end48
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %i.0608 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx66 = getelementptr inbounds nuw %struct.arc, ptr %12, i64 %i.0608
  %arrayidx69 = getelementptr inbounds nuw ptr, ptr %call61, i64 %i.0608
  store ptr %arrayidx66, ptr %arrayidx69, align 8
  %inc = add nuw nsw i64 %i.0608, 1
  %exitcond = icmp ne i64 %inc, %10
  br i1 %exitcond, label %for.body, label %for.end.loopexit, !llvm.loop !0

for.end.loopexit:                                 ; preds = %for.body
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end48
  %arcs = getelementptr inbounds nuw i8, ptr %net, i64 568
  %13 = load ptr, ptr %arcs, align 8
  %cmp71609 = icmp sgt i64 %8, 0
  br i1 %cmp71609, label %land.rhs.preheader, label %for.end81

land.rhs.preheader:                               ; preds = %for.end
  %14 = mul i64 %8, 216
  %scevgep = getelementptr i8, ptr %13, i64 %14
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc78, %land.rhs.preheader
  %i.1611 = phi i64 [ %inc79, %for.inc78 ], [ 0, %land.rhs.preheader ]
  %arcout.0610 = phi ptr [ %add.ptr80, %for.inc78 ], [ %13, %land.rhs.preheader ]
  %ident = getelementptr inbounds nuw i8, ptr %arcout.0610, i64 104
  %15 = load i16, ptr %ident, align 8
  %cmp75 = icmp eq i16 %15, -1
  br i1 %cmp75, label %for.inc78, label %for.end81.loopexit

for.inc78:                                        ; preds = %land.rhs
  %inc79 = add nuw nsw i64 %i.1611, 1
  %add.ptr80 = getelementptr inbounds nuw i8, ptr %arcout.0610, i64 216
  %exitcond670 = icmp ne i64 %inc79, %8
  br i1 %exitcond670, label %land.rhs, label %for.end81.loopexit, !llvm.loop !2

for.end81.loopexit:                               ; preds = %for.inc78, %land.rhs
  %arcout.0.lcssa.ph = phi ptr [ %arcout.0610, %land.rhs ], [ %scevgep, %for.inc78 ]
  %i.1.lcssa.ph = phi i64 [ %i.1611, %land.rhs ], [ %8, %for.inc78 ]
  br label %for.end81

for.end81:                                        ; preds = %for.end81.loopexit, %for.end
  %arcout.0.lcssa = phi ptr [ %13, %for.end ], [ %arcout.0.lcssa.ph, %for.end81.loopexit ]
  %i.1.lcssa = phi i64 [ 0, %for.end ], [ %i.1.lcssa.ph, %for.end81.loopexit ]
  %cmp83638 = icmp slt i64 %i.1.lcssa, %8
  br i1 %cmp83638, label %for.body85.lr.ph, label %for.end211

for.body85.lr.ph:                                 ; preds = %for.end81
  %sub125 = add i64 %0, -15
  %flow = getelementptr inbounds nuw i8, ptr %12, i64 56
  %tail1.i581 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %head3.i582 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %org_cost.i583 = getelementptr inbounds nuw i8, ptr %12, i64 64
  %cost6.i584 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %flow10.i = getelementptr inbounds nuw i8, ptr %12, i64 128
  %flow12.i = getelementptr inbounds nuw i8, ptr %12, i64 200
  br label %for.body85

for.body85:                                       ; preds = %for.inc208, %for.body85.lr.ph
  %i.2647 = phi i64 [ %i.1.lcssa, %for.body85.lr.ph ], [ %inc209, %for.inc208 ]
  %id.0646 = phi i64 [ 0, %for.body85.lr.ph ], [ %id.2, %for.inc208 ]
  %list_size.0645 = phi i64 [ -1, %for.body85.lr.ph ], [ %list_size.1, %for.inc208 ]
  %first_replace.0644 = phi i16 [ 1, %for.body85.lr.ph ], [ %first_replace.5, %for.inc208 ]
  %local_first_replace.0643 = phi i16 [ 1, %for.body85.lr.ph ], [ %local_first_replace.5, %for.inc208 ]
  %arcout.1642 = phi ptr [ %arcout.0.lcssa, %for.body85.lr.ph ], [ %add.ptr210, %for.inc208 ]
  %count.0641 = phi i64 [ 0, %for.body85.lr.ph ], [ %count.5, %for.inc208 ]
  %first_list_elem.0640 = phi ptr [ null, %for.body85.lr.ph ], [ %first_list_elem.1, %for.inc208 ]
  %max_redcost.0639 = phi i64 [ 0, %for.body85.lr.ph ], [ %max_redcost.2, %for.inc208 ]
  %tobool86.not = icmp eq i16 %first_replace.0644, 0
  br i1 %tobool86.not, label %for.body.i, label %if.end88

for.body.i:                                       ; preds = %for.body85
  %16 = load ptr, ptr %call5, align 8
  %17 = load ptr, ptr %16, align 8
  %flow.i = getelementptr inbounds nuw i8, ptr %17, i64 56
  %18 = load i64, ptr %flow.i, align 8
  %spec.select598 = call i64 @llvm.smax.i64(i64 %18, i64 0)
  br label %if.end88

if.end88:                                         ; preds = %for.body.i, %for.body85
  %max_redcost.1 = phi i64 [ %max_redcost.0639, %for.body85 ], [ %spec.select598, %for.body.i ]
  %rem = urem i64 %i.2647, %.
  %cmp89 = icmp eq i64 %rem, 0
  br i1 %cmp89, label %for.body.i569, label %if.end100

for.body.i569:                                    ; preds = %if.end88
  %19 = load ptr, ptr %call5, align 8
  %20 = load ptr, ptr %19, align 8
  %flow.i572 = getelementptr inbounds nuw i8, ptr %20, i64 56
  %21 = load i64, ptr %flow.i572, align 8
  %spec.select600 = call i64 @llvm.smax.i64(i64 %21, i64 0)
  br i1 %tobool86.not, label %if.then93, label %if.end100

if.then93:                                        ; preds = %for.body.i569
  store i64 %count.0641, ptr %call3, align 8
  %call96 = tail call i64 @switch_arcs(ptr noundef %net, ptr noundef %call3, ptr noundef %call7, ptr noundef %12, i32 noundef 0, i64 noundef %10, i64 noundef %11, i64 noundef 1)
  store i64 0, ptr %call3, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.then93, %for.body.i569, %if.end88
  %max_redcost.2 = phi i64 [ %spec.select600, %if.then93 ], [ %spec.select600, %for.body.i569 ], [ %max_redcost.1, %if.end88 ]
  %count.1 = phi i64 [ 0, %if.then93 ], [ %count.0641, %for.body.i569 ], [ %count.0641, %if.end88 ]
  %ident102 = getelementptr inbounds nuw i8, ptr %arcout.1642, i64 104
  %22 = load i16, ptr %ident102, align 8
  %cmp104.not = icmp eq i16 %22, -1
  br i1 %cmp104.not, label %if.end111, label %if.then106

if.then106:                                       ; preds = %if.end100
  %arrayidx101 = getelementptr inbounds nuw i8, ptr %arcout.1642, i64 72
  %call107 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #13
  %next = getelementptr inbounds nuw i8, ptr %call107, i64 8
  store ptr %first_list_elem.0640, ptr %next, align 8
  store ptr %arrayidx101, ptr %call107, align 8
  %inc110 = add nsw i64 %list_size.0645, 1
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %if.end100
  %first_list_elem.1 = phi ptr [ %call107, %if.then106 ], [ %first_list_elem.0640, %if.end100 ]
  %list_size.1 = phi i64 [ %inc110, %if.then106 ], [ %list_size.0645, %if.end100 ]
  %ident112 = getelementptr inbounds nuw i8, ptr %arcout.1642, i64 32
  %23 = load i16, ptr %ident112, align 8
  %cmp114 = icmp eq i16 %23, -1
  br i1 %cmp114, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.end111
  %add121 = add nsw i64 %list_size.1, %id.0646
  br label %for.inc208

if.end122:                                        ; preds = %if.end111
  %head123 = getelementptr inbounds nuw i8, ptr %arcout.1642, i64 24
  %24 = load ptr, ptr %head123, align 8
  %time = getelementptr inbounds nuw i8, ptr %24, i64 100
  %25 = load i32, ptr %time, align 4
  %conv124 = sext i32 %25 to i64
  %org_cost = getelementptr inbounds nuw i8, ptr %arcout.1642, i64 64
  %26 = load i64, ptr %org_cost, align 8
  %sub = sub i64 %sub125, %26
  %add126 = add i64 %sub, %conv124
  %next127 = getelementptr inbounds nuw i8, ptr %first_list_elem.1, i64 8
  %iterator.0615627 = load ptr, ptr %next127, align 8
  %tobool128.not616628 = icmp eq ptr %iterator.0615627, null
  br i1 %tobool128.not616628, label %for.inc208, label %while.body.lr.ph.preheader

while.body.lr.ph.preheader:                       ; preds = %if.end122
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end205, %while.body.lr.ph.preheader
  %iterator.0615633 = phi ptr [ %iterator.0615, %if.end205 ], [ %iterator.0615627, %while.body.lr.ph.preheader ]
  %id.1.ph632 = phi i64 [ %inc207, %if.end205 ], [ %id.0646, %while.body.lr.ph.preheader ]
  %first_replace.1.ph631 = phi i16 [ %first_replace.4, %if.end205 ], [ %first_replace.0644, %while.body.lr.ph.preheader ]
  %local_first_replace.1.ph630 = phi i16 [ %local_first_replace.4, %if.end205 ], [ %local_first_replace.0643, %while.body.lr.ph.preheader ]
  %count.2.ph629 = phi i64 [ %count.4, %if.end205 ], [ %count.1, %while.body.lr.ph.preheader ]
  br label %while.body

while.body:                                       ; preds = %if.then137, %while.body.lr.ph
  %iterator.0618 = phi ptr [ %iterator.0615633, %while.body.lr.ph ], [ %iterator.0, %if.then137 ]
  %id.1617 = phi i64 [ %id.1.ph632, %while.body.lr.ph ], [ %inc139, %if.then137 ]
  %27 = load ptr, ptr %iterator.0618, align 8
  %tail130 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %28 = load ptr, ptr %tail130, align 8
  %time131 = getelementptr inbounds nuw i8, ptr %28, i64 100
  %29 = load i32, ptr %time131, align 4
  %conv132 = sext i32 %29 to i64
  %org_cost133 = getelementptr inbounds nuw i8, ptr %27, i64 64
  %30 = load i64, ptr %org_cost133, align 8
  %add134 = add nsw i64 %30, %conv132
  %cmp135 = icmp sgt i64 %add134, %add126
  br i1 %cmp135, label %if.then137, label %if.end140

if.then137:                                       ; preds = %while.body
  %next138 = getelementptr inbounds nuw i8, ptr %iterator.0618, i64 8
  %inc139 = add nsw i64 %id.1617, 1
  %iterator.0 = load ptr, ptr %next138, align 8
  %tobool128.not = icmp eq ptr %iterator.0, null
  br i1 %tobool128.not, label %for.inc208.loopexit, label %while.body, !llvm.loop !3

if.end140:                                        ; preds = %while.body
  %iterator.0618.lcssa = phi ptr [ %iterator.0618, %while.body ]
  %id.1617.lcssa = phi i64 [ %id.1617, %while.body ]
  %.lcssa662 = phi ptr [ %28, %while.body ]
  %31 = load i64, ptr %.lcssa662, align 8
  %32 = load i64, ptr %24, align 8
  %reass.sub = sub i64 %32, %31
  %add144 = add i64 %reass.sub, 30
  %cmp145 = icmp slt i64 %add144, 0
  br i1 %cmp145, label %if.then147, label %if.end205

if.then147:                                       ; preds = %if.end140
  %33 = load i64, ptr %call, align 8
  %cmp150 = icmp slt i64 %33, %10
  br i1 %cmp150, label %if.then152, label %if.else159

if.then152:                                       ; preds = %if.then147
  %arrayidx.i579 = getelementptr inbounds %struct.arc, ptr %12, i64 %33
  %tail1.i = getelementptr inbounds nuw i8, ptr %arrayidx.i579, i64 16
  store ptr %.lcssa662, ptr %tail1.i, align 8
  %head3.i = getelementptr inbounds nuw i8, ptr %arrayidx.i579, i64 24
  store ptr %24, ptr %head3.i, align 8
  %org_cost.i = getelementptr inbounds nuw i8, ptr %arrayidx.i579, i64 64
  store i64 30, ptr %org_cost.i, align 8
  %cost6.i = getelementptr inbounds nuw i8, ptr %arrayidx.i579, i64 8
  store i64 30, ptr %cost6.i, align 8
  %flow.i580 = getelementptr inbounds nuw i8, ptr %arrayidx.i579, i64 56
  store i64 %add144, ptr %flow.i580, align 8
  %conv.i = trunc i64 %id.1617.lcssa to i32
  store i32 %conv.i, ptr %arrayidx.i579, align 8
  %tobool.not133.i = icmp eq i64 %33, 0
  br i1 %tobool.not133.i, label %insert_new_arc.exit, label %land.rhs.preheader.i

land.rhs.preheader.i:                             ; preds = %if.then152
  %add.i = add nsw i64 %33, 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i, %land.rhs.preheader.i
  %sub135.i = phi i64 [ %sub.i, %while.body.i ], [ %33, %land.rhs.preheader.i ]
  %pos.0134.i = phi i64 [ %div.i, %while.body.i ], [ %add.i, %land.rhs.preheader.i ]
  %div.i = sdiv i64 %pos.0134.i, 2
  %34 = getelementptr %struct.arc, ptr %12, i64 %div.i
  %flow11.i = getelementptr i8, ptr %34, i64 -16
  %35 = load i64, ptr %flow11.i, align 8
  %cmp.i = icmp sgt i64 %add144, %35
  br i1 %cmp.i, label %while.body.i, label %insert_new_arc.exit.loopexit

while.body.i:                                     ; preds = %land.rhs.i
  %arrayidx10.i = getelementptr i8, ptr %34, i64 -72
  %tail16.i = getelementptr i8, ptr %34, i64 -56
  %36 = load ptr, ptr %tail16.i, align 8
  %arrayidx18.i = getelementptr inbounds %struct.arc, ptr %12, i64 %sub135.i
  %tail19.i = getelementptr inbounds nuw i8, ptr %arrayidx18.i, i64 16
  store ptr %36, ptr %tail19.i, align 8
  %head23.i = getelementptr i8, ptr %34, i64 -48
  %37 = load ptr, ptr %head23.i, align 8
  %head26.i = getelementptr inbounds nuw i8, ptr %arrayidx18.i, i64 24
  store ptr %37, ptr %head26.i, align 8
  %cost30.i = getelementptr i8, ptr %34, i64 -64
  %38 = load i64, ptr %cost30.i, align 8
  %cost33.i = getelementptr inbounds nuw i8, ptr %arrayidx18.i, i64 8
  store i64 %38, ptr %cost33.i, align 8
  %39 = load i64, ptr %cost30.i, align 8
  %org_cost40.i = getelementptr inbounds nuw i8, ptr %arrayidx18.i, i64 64
  store i64 %39, ptr %org_cost40.i, align 8
  %40 = load i64, ptr %flow11.i, align 8
  %flow47.i = getelementptr inbounds nuw i8, ptr %arrayidx18.i, i64 56
  store i64 %40, ptr %flow47.i, align 8
  %41 = load i32, ptr %arrayidx10.i, align 8
  store i32 %41, ptr %arrayidx18.i, align 8
  store ptr %.lcssa662, ptr %tail16.i, align 8
  store ptr %24, ptr %head23.i, align 8
  store i64 30, ptr %cost30.i, align 8
  %org_cost67.i = getelementptr i8, ptr %34, i64 -8
  store i64 30, ptr %org_cost67.i, align 8
  store i64 %add144, ptr %flow11.i, align 8
  store i32 %conv.i, ptr %arrayidx10.i, align 8
  %sub.i = add nsw i64 %div.i, -1
  %tobool.not.i = icmp eq i64 %sub.i, 0
  br i1 %tobool.not.i, label %insert_new_arc.exit.loopexit, label %land.rhs.i, !llvm.loop !4

insert_new_arc.exit.loopexit:                     ; preds = %while.body.i, %land.rhs.i
  br label %insert_new_arc.exit

insert_new_arc.exit:                              ; preds = %insert_new_arc.exit.loopexit, %if.then152
  %inc158 = add nsw i64 %33, 1
  store i64 %inc158, ptr %call, align 8
  br label %if.end196

if.else159:                                       ; preds = %if.then147
  %42 = load i64, ptr %flow, align 8
  %cmp161 = icmp sgt i64 %42, %add144
  br i1 %cmp161, label %if.then163, label %if.else177

if.then163:                                       ; preds = %if.else159
  %tobool164.not = icmp eq i16 %local_first_replace.1.ph630, 0
  %spec.select = select i1 %tobool164.not, i16 %first_replace.1.ph631, i16 0
  %43 = load i64, ptr %call3, align 8
  %arrayidx171 = getelementptr inbounds %struct.arc, ptr %9, i64 %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %arrayidx171, ptr noundef nonnull align 8 dereferenceable(72) %12, i64 72, i1 false)
  %inc175 = add nsw i64 %43, 1
  store i64 %inc175, ptr %call3, align 8
  %inc176 = add nsw i64 %count.2.ph629, 1
  store ptr %.lcssa662, ptr %tail1.i581, align 8
  store ptr %24, ptr %head3.i582, align 8
  store i64 30, ptr %org_cost.i583, align 8
  store i64 30, ptr %cost6.i584, align 8
  store i64 %add144, ptr %flow, align 8
  %conv.i586 = trunc i64 %id.1617.lcssa to i32
  store i32 %conv.i586, ptr %12, align 8
  %44 = load i64, ptr %flow10.i, align 8
  %45 = load i64, ptr %flow12.i, align 8
  %cmp13.i = icmp sgt i64 %44, %45
  %conv15.i = select i1 %cmp13.i, i64 2, i64 3
  %cmp16.not149.i = icmp sgt i64 %conv15.i, %10
  br i1 %cmp16.not149.i, label %if.end196, label %land.rhs.i587.preheader

land.rhs.i587.preheader:                          ; preds = %if.then163
  br label %land.rhs.i587

land.rhs.i587:                                    ; preds = %if.end87.i, %land.rhs.i587.preheader
  %cmp.0151.i = phi i64 [ %cmp.1.i, %if.end87.i ], [ %conv15.i, %land.rhs.i587.preheader ]
  %pos.0150.i = phi i64 [ %cmp.0151.i, %if.end87.i ], [ 1, %land.rhs.i587.preheader ]
  %46 = getelementptr %struct.arc, ptr %12, i64 %cmp.0151.i
  %flow19.i = getelementptr i8, ptr %46, i64 -16
  %47 = load i64, ptr %flow19.i, align 8
  %cmp20.i = icmp slt i64 %add144, %47
  br i1 %cmp20.i, label %while.body.i588, label %if.end196.loopexit

while.body.i588:                                  ; preds = %land.rhs.i587
  %arrayidx18.i589 = getelementptr i8, ptr %46, i64 -72
  %tail24.i = getelementptr i8, ptr %46, i64 -56
  %48 = load ptr, ptr %tail24.i, align 8
  %49 = getelementptr %struct.arc, ptr %12, i64 %pos.0150.i
  %arrayidx26.i = getelementptr i8, ptr %49, i64 -72
  %tail27.i = getelementptr i8, ptr %49, i64 -56
  store ptr %48, ptr %tail27.i, align 8
  %head30.i = getelementptr i8, ptr %46, i64 -48
  %50 = load ptr, ptr %head30.i, align 8
  %head33.i = getelementptr i8, ptr %49, i64 -48
  store ptr %50, ptr %head33.i, align 8
  %cost36.i = getelementptr i8, ptr %46, i64 -64
  %51 = load i64, ptr %cost36.i, align 8
  %cost39.i = getelementptr i8, ptr %49, i64 -64
  store i64 %51, ptr %cost39.i, align 8
  %52 = load i64, ptr %cost36.i, align 8
  %org_cost45.i = getelementptr i8, ptr %49, i64 -8
  store i64 %52, ptr %org_cost45.i, align 8
  %53 = load i64, ptr %flow19.i, align 8
  %flow51.i = getelementptr i8, ptr %49, i64 -16
  store i64 %53, ptr %flow51.i, align 8
  %54 = load i32, ptr %arrayidx18.i589, align 8
  store i32 %54, ptr %arrayidx26.i, align 8
  store ptr %.lcssa662, ptr %tail24.i, align 8
  store ptr %24, ptr %head30.i, align 8
  store i64 30, ptr %cost36.i, align 8
  %org_cost69.i = getelementptr i8, ptr %46, i64 -8
  store i64 30, ptr %org_cost69.i, align 8
  store i64 %add144, ptr %flow19.i, align 8
  store i32 %conv.i586, ptr %arrayidx18.i589, align 8
  %mul.i = shl nsw i64 %cmp.0151.i, 1
  %cmp77.not.not.i = icmp slt i64 %mul.i, %10
  br i1 %cmp77.not.not.i, label %if.then.i590, label %if.end87.i

if.then.i590:                                     ; preds = %while.body.i588
  %55 = getelementptr %struct.arc, ptr %12, i64 %mul.i
  %flow81.i = getelementptr i8, ptr %55, i64 -16
  %56 = load i64, ptr %flow81.i, align 8
  %flow83.i = getelementptr inbounds nuw i8, ptr %55, i64 56
  %57 = load i64, ptr %flow83.i, align 8
  %cmp84.i = icmp slt i64 %56, %57
  %add.i591 = zext i1 %cmp84.i to i64
  %spec.select.i = or disjoint i64 %mul.i, %add.i591
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then.i590, %while.body.i588
  %cmp.1.i = phi i64 [ %mul.i, %while.body.i588 ], [ %spec.select.i, %if.then.i590 ]
  %cmp16.not.i = icmp sgt i64 %cmp.1.i, %10
  br i1 %cmp16.not.i, label %if.end196.loopexit, label %land.rhs.i587, !llvm.loop !5

if.else177:                                       ; preds = %if.else159
  %cmp178 = icmp slt i64 %add144, %max_redcost.2
  br i1 %cmp178, label %if.then180, label %if.end196

if.then180:                                       ; preds = %if.else177
  %58 = load i64, ptr %call3, align 8
  %inc185 = add nsw i64 %58, 1
  store i64 %inc185, ptr %call3, align 8
  %arrayidx186 = getelementptr inbounds %struct.arc, ptr %9, i64 %58
  %tail187 = getelementptr inbounds nuw i8, ptr %arrayidx186, i64 16
  store ptr %.lcssa662, ptr %tail187, align 8
  %head188 = getelementptr inbounds nuw i8, ptr %arrayidx186, i64 24
  store ptr %24, ptr %head188, align 8
  %org_cost189 = getelementptr inbounds nuw i8, ptr %arrayidx186, i64 64
  store i64 30, ptr %org_cost189, align 8
  %cost = getelementptr inbounds nuw i8, ptr %arrayidx186, i64 8
  store i64 30, ptr %cost, align 8
  %flow190 = getelementptr inbounds nuw i8, ptr %arrayidx186, i64 56
  store i64 %add144, ptr %flow190, align 8
  %conv191 = trunc i64 %id.1617.lcssa to i32
  store i32 %conv191, ptr %arrayidx186, align 8
  %inc193 = add nsw i64 %count.2.ph629, 1
  br label %if.end196

if.end196.loopexit:                               ; preds = %if.end87.i, %land.rhs.i587
  br label %if.end196

if.end196:                                        ; preds = %if.end196.loopexit, %if.then180, %if.else177, %if.then163, %insert_new_arc.exit
  %count.3 = phi i64 [ %count.2.ph629, %insert_new_arc.exit ], [ %inc193, %if.then180 ], [ %count.2.ph629, %if.else177 ], [ %inc176, %if.then163 ], [ %inc176, %if.end196.loopexit ]
  %local_first_replace.3 = phi i16 [ %local_first_replace.1.ph630, %insert_new_arc.exit ], [ %local_first_replace.1.ph630, %if.then180 ], [ %local_first_replace.1.ph630, %if.else177 ], [ 0, %if.then163 ], [ 0, %if.end196.loopexit ]
  %first_replace.3 = phi i16 [ %first_replace.1.ph631, %insert_new_arc.exit ], [ %first_replace.1.ph631, %if.then180 ], [ %first_replace.1.ph631, %if.else177 ], [ %spec.select, %if.then163 ], [ %spec.select, %if.end196.loopexit ]
  %59 = load i64, ptr %call3, align 8
  %cmp199 = icmp eq i64 %59, %11
  %spec.store.select = select i1 %cmp199, i64 0, i64 %59
  store i64 %spec.store.select, ptr %call3, align 8
  br label %if.end205

if.end205:                                        ; preds = %if.end196, %if.end140
  %id.1617665 = phi i64 [ %id.1617.lcssa, %if.end140 ], [ %id.1617.lcssa, %if.end196 ]
  %count.4 = phi i64 [ %count.2.ph629, %if.end140 ], [ %count.3, %if.end196 ]
  %local_first_replace.4 = phi i16 [ %local_first_replace.1.ph630, %if.end140 ], [ %local_first_replace.3, %if.end196 ]
  %first_replace.4 = phi i16 [ %first_replace.1.ph631, %if.end140 ], [ %first_replace.3, %if.end196 ]
  %next206 = getelementptr inbounds nuw i8, ptr %iterator.0618.lcssa, i64 8
  %inc207 = add nsw i64 %id.1617665, 1
  %iterator.0615 = load ptr, ptr %next206, align 8
  %tobool128.not616 = icmp eq ptr %iterator.0615, null
  br i1 %tobool128.not616, label %for.inc208.loopexit661, label %while.body.lr.ph, !llvm.loop !3

for.inc208.loopexit:                              ; preds = %if.then137
  %first_replace.1.ph631.lcssa669 = phi i16 [ %first_replace.1.ph631, %if.then137 ]
  %local_first_replace.1.ph630.lcssa668 = phi i16 [ %local_first_replace.1.ph630, %if.then137 ]
  %count.2.ph629.lcssa667 = phi i64 [ %count.2.ph629, %if.then137 ]
  %inc139.lcssa = phi i64 [ %inc139, %if.then137 ]
  br label %for.inc208

for.inc208.loopexit661:                           ; preds = %if.end205
  %count.4.lcssa = phi i64 [ %count.4, %if.end205 ]
  %local_first_replace.4.lcssa = phi i16 [ %local_first_replace.4, %if.end205 ]
  %first_replace.4.lcssa = phi i16 [ %first_replace.4, %if.end205 ]
  %inc207.lcssa = phi i64 [ %inc207, %if.end205 ]
  br label %for.inc208

for.inc208:                                       ; preds = %for.inc208.loopexit661, %for.inc208.loopexit, %if.end122, %if.then120
  %count.5 = phi i64 [ %count.1, %if.then120 ], [ %count.1, %if.end122 ], [ %count.2.ph629.lcssa667, %for.inc208.loopexit ], [ %count.4.lcssa, %for.inc208.loopexit661 ]
  %local_first_replace.5 = phi i16 [ %local_first_replace.0643, %if.then120 ], [ %local_first_replace.0643, %if.end122 ], [ %local_first_replace.1.ph630.lcssa668, %for.inc208.loopexit ], [ %local_first_replace.4.lcssa, %for.inc208.loopexit661 ]
  %first_replace.5 = phi i16 [ %first_replace.0644, %if.then120 ], [ %first_replace.0644, %if.end122 ], [ %first_replace.1.ph631.lcssa669, %for.inc208.loopexit ], [ %first_replace.4.lcssa, %for.inc208.loopexit661 ]
  %id.2 = phi i64 [ %add121, %if.then120 ], [ %id.0646, %if.end122 ], [ %inc139.lcssa, %for.inc208.loopexit ], [ %inc207.lcssa, %for.inc208.loopexit661 ]
  %inc209 = add i64 %i.2647, 1
  %add.ptr210 = getelementptr inbounds nuw i8, ptr %arcout.1642, i64 216
  %exitcond671 = icmp ne i64 %inc209, %8
  br i1 %exitcond671, label %for.body85, label %for.end211.loopexit, !llvm.loop !6

for.end211.loopexit:                              ; preds = %for.inc208
  %count.5.lcssa = phi i64 [ %count.5, %for.inc208 ]
  %first_replace.5.lcssa = phi i16 [ %first_replace.5, %for.inc208 ]
  %first_list_elem.1.lcssa = phi ptr [ %first_list_elem.1, %for.inc208 ]
  br label %for.end211

for.end211:                                       ; preds = %for.end211.loopexit, %for.end81
  %first_list_elem.0.lcssa = phi ptr [ null, %for.end81 ], [ %first_list_elem.1.lcssa, %for.end211.loopexit ]
  %count.0.lcssa = phi i64 [ 0, %for.end81 ], [ %count.5.lcssa, %for.end211.loopexit ]
  %first_replace.0.lcssa = phi i16 [ 1, %for.end81 ], [ %first_replace.5.lcssa, %for.end211.loopexit ]
  store i64 %count.0.lcssa, ptr %call3, align 8
  %tobool215.not651 = icmp eq i16 %first_replace.0.lcssa, 0
  br i1 %tobool215.not651, label %while.body216.preheader, label %while.cond222.preheader

while.body216.preheader:                          ; preds = %for.end211
  br label %while.body216

while.cond222.preheader.loopexit:                 ; preds = %while.body216
  br label %while.cond222.preheader

while.cond222.preheader:                          ; preds = %while.cond222.preheader.loopexit, %for.end211
  %next223652 = getelementptr inbounds nuw i8, ptr %first_list_elem.0.lcssa, i64 8
  %60 = load ptr, ptr %next223652, align 8
  %tobool224.not653 = icmp eq ptr %60, null
  br i1 %tobool224.not653, label %while.end227, label %while.body225.preheader

while.body225.preheader:                          ; preds = %while.cond222.preheader
  br label %while.body225

while.body216:                                    ; preds = %while.body216, %while.body216.preheader
  %call217 = tail call i64 @switch_arcs(ptr noundef %net, ptr noundef %call3, ptr noundef %call7, ptr noundef %12, i32 noundef 0, i64 noundef %10, i64 noundef %11, i64 noundef 1)
  %tobool218.not.not = icmp eq i64 %call217, 0
  br i1 %tobool218.not.not, label %while.cond222.preheader.loopexit, label %while.body216

while.body225:                                    ; preds = %while.body225, %while.body225.preheader
  %61 = phi ptr [ %62, %while.body225 ], [ %60, %while.body225.preheader ]
  %first_list_elem.2654 = phi ptr [ %61, %while.body225 ], [ %first_list_elem.0.lcssa, %while.body225.preheader ]
  tail call void @free(ptr noundef nonnull %first_list_elem.2654) #11
  %next223 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %62 = load ptr, ptr %next223, align 8
  %tobool224.not = icmp eq ptr %62, null
  br i1 %tobool224.not, label %while.end227.loopexit, label %while.body225, !llvm.loop !7

while.end227.loopexit:                            ; preds = %while.body225
  %.lcssa = phi ptr [ %61, %while.body225 ]
  br label %while.end227

while.end227:                                     ; preds = %while.end227.loopexit, %while.cond222.preheader
  %first_list_elem.2.lcssa = phi ptr [ %first_list_elem.0.lcssa, %while.cond222.preheader ], [ %.lcssa, %while.end227.loopexit ]
  tail call void @free(ptr noundef nonnull %first_list_elem.2.lcssa) #11
  %63 = load ptr, ptr %call5, align 8
  %64 = load i64, ptr %call, align 8
  tail call void @spec_qsort(ptr noundef %63, i64 noundef %64, i64 noundef 8, ptr noundef nonnull @arc_compare) #11
  call void @marc_arcs(ptr noundef %net, ptr noundef nonnull %new_arcs, ptr noundef %call, ptr noundef %call5)
  tail call void @free(ptr noundef %63) #11
  %tobool236.not = icmp eq i64 %64, 0
  br i1 %tobool236.not, label %if.end290, label %if.then237

if.then237:                                       ; preds = %while.end227
  %65 = load ptr, ptr %stop_arcs, align 8
  %add.ptr244.idx = mul nsw i64 %64, 72
  %add.ptr244 = getelementptr inbounds i8, ptr %65, i64 %add.ptr244.idx
  br i1 %tobool245.not, label %for.cond265.preheader, label %for.cond247.preheader

for.cond247.preheader:                            ; preds = %if.then237
  br i1 false, label %if.end290, label %for.body250.preheader

for.body250.preheader:                            ; preds = %for.cond247.preheader
  br label %for.body250

for.cond265.preheader:                            ; preds = %if.then237
  br i1 false, label %if.end290, label %for.body268.preheader

for.body268.preheader:                            ; preds = %for.cond265.preheader
  br label %for.body268

for.body250:                                      ; preds = %for.inc262, %for.body250.preheader
  %arcnew.0657 = phi ptr [ %incdec.ptr, %for.inc262 ], [ %65, %for.body250.preheader ]
  %flow251 = getelementptr inbounds nuw i8, ptr %arcnew.0657, i64 56
  %66 = load i64, ptr %flow251, align 8
  %cmp252 = icmp eq i64 %66, 1
  br i1 %cmp252, label %if.then254, label %for.inc262

if.then254:                                       ; preds = %for.body250
  store i64 0, ptr %flow251, align 8
  %ident256 = getelementptr inbounds nuw i8, ptr %arcnew.0657, i64 32
  store i16 1, ptr %ident256, align 8
  %67 = load i32, ptr %arcnew.0657, align 8
  %conv258 = sext i32 %67 to i64
  %call259 = tail call i64 @getArcPosition(ptr noundef %net, i64 noundef %conv258) #11
  %arrayidx260 = getelementptr inbounds %struct.arc, ptr %9, i64 %call259
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %arrayidx260, ptr noundef nonnull align 8 dereferenceable(72) %arcnew.0657, i64 72, i1 false)
  br label %for.inc262

for.inc262:                                       ; preds = %if.then254, %for.body250
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %arcnew.0657, i64 72
  %cmp248.not = icmp eq ptr %incdec.ptr, %add.ptr244
  br i1 %cmp248.not, label %if.end290.loopexit660, label %for.body250, !llvm.loop !8

for.body268:                                      ; preds = %for.inc286, %for.body268.preheader
  %arcnew.1659 = phi ptr [ %incdec.ptr287, %for.inc286 ], [ %65, %for.body268.preheader ]
  %flow269 = getelementptr inbounds nuw i8, ptr %arcnew.1659, i64 56
  %68 = load i64, ptr %flow269, align 8
  %cmp270 = icmp eq i64 %68, 1
  br i1 %cmp270, label %if.then272, label %for.inc286

if.then272:                                       ; preds = %for.body268
  store i64 0, ptr %flow269, align 8
  %ident274 = getelementptr inbounds nuw i8, ptr %arcnew.1659, i64 32
  store i16 1, ptr %ident274, align 8
  %tail275 = getelementptr inbounds nuw i8, ptr %arcnew.1659, i64 16
  %69 = load ptr, ptr %tail275, align 8
  %firstout = getelementptr inbounds nuw i8, ptr %69, i64 56
  %70 = load ptr, ptr %firstout, align 8
  %nextout = getelementptr inbounds nuw i8, ptr %arcnew.1659, i64 40
  store ptr %70, ptr %nextout, align 8
  store ptr %arcnew.1659, ptr %firstout, align 8
  %head278 = getelementptr inbounds nuw i8, ptr %arcnew.1659, i64 24
  %71 = load ptr, ptr %head278, align 8
  %firstin = getelementptr inbounds nuw i8, ptr %71, i64 64
  %72 = load ptr, ptr %firstin, align 8
  %nextin = getelementptr inbounds nuw i8, ptr %arcnew.1659, i64 48
  store ptr %72, ptr %nextin, align 8
  store ptr %arcnew.1659, ptr %firstin, align 8
  %73 = load i32, ptr %arcnew.1659, align 8
  %conv282 = sext i32 %73 to i64
  %call283 = tail call i64 @getArcPosition(ptr noundef %net, i64 noundef %conv282) #11
  %arrayidx284 = getelementptr inbounds %struct.arc, ptr %9, i64 %call283
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %arrayidx284, ptr noundef nonnull align 8 dereferenceable(72) %arcnew.1659, i64 72, i1 false)
  br label %for.inc286

for.inc286:                                       ; preds = %if.then272, %for.body268
  %incdec.ptr287 = getelementptr inbounds nuw i8, ptr %arcnew.1659, i64 72
  %cmp266.not = icmp eq ptr %incdec.ptr287, %add.ptr244
  br i1 %cmp266.not, label %if.end290.loopexit, label %for.body268, !llvm.loop !9

if.end290.loopexit:                               ; preds = %for.inc286
  br label %if.end290

if.end290.loopexit660:                            ; preds = %for.inc262
  br label %if.end290

if.end290:                                        ; preds = %if.end290.loopexit660, %if.end290.loopexit, %for.cond265.preheader, %for.cond247.preheader, %while.end227
  %74 = load i64, ptr %new_arcs, align 8
  %m_impl = getelementptr inbounds nuw i8, ptr %net, i64 440
  %75 = load i64, ptr %m_impl, align 8
  %add291 = add nsw i64 %75, %74
  store i64 %add291, ptr %m_impl, align 8
  %76 = load i64, ptr %max_residual_new_m, align 8
  %sub293 = sub nsw i64 %76, %74
  store i64 %sub293, ptr %max_residual_new_m, align 8
  %m294 = getelementptr inbounds nuw i8, ptr %net, i64 424
  %77 = load i64, ptr %m294, align 8
  %78 = load ptr, ptr %sorted_arcs, align 8
  %n.i.i = getelementptr inbounds nuw i8, ptr %net, i64 400
  %79 = load i64, ptr %n.i.i, align 8
  %cmp.not60.i.i = icmp slt i64 %79, 0
  br i1 %cmp.not60.i.i, label %refreshArcPointers.exit.i, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end290
  %nodes.i.i = getelementptr inbounds nuw i8, ptr %net, i64 552
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %i.061.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i ]
  %80 = load ptr, ptr %nodes.i.i, align 8
  %add.ptr.i.i = getelementptr inbounds nuw %struct.node, ptr %80, i64 %i.061.i.i
  %basic_arc.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i.i, i64 48
  %81 = load ptr, ptr %basic_arc.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %82 = load i32, ptr %81, align 8
  %cmp2.i.i = icmp sgt i32 %82, -1
  br i1 %cmp2.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %conv.i.i = zext nneg i32 %82 to i64
  %call.i.i = tail call i64 @getArcPosition(ptr noundef nonnull %net, i64 noundef %conv.i.i) #11
  %arrayidx.i.i = getelementptr inbounds %struct.arc, ptr %78, i64 %call.i.i
  store ptr %arrayidx.i.i, ptr %basic_arc.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i, %for.body.i.i
  %firstin.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i.i, i64 64
  %83 = load ptr, ptr %firstin.i.i, align 8
  %tobool6.not.i.i = icmp eq ptr %83, null
  br i1 %tobool6.not.i.i, label %if.end19.i.i, label %land.lhs.true7.i.i

land.lhs.true7.i.i:                               ; preds = %if.end.i.i
  %84 = load i32, ptr %83, align 8
  %cmp10.i.i = icmp sgt i32 %84, -1
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.end19.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true7.i.i
  %conv15.i.i = zext nneg i32 %84 to i64
  %call16.i.i = tail call i64 @getArcPosition(ptr noundef nonnull %net, i64 noundef %conv15.i.i) #11
  %arrayidx17.i.i = getelementptr inbounds %struct.arc, ptr %78, i64 %call16.i.i
  store ptr %arrayidx17.i.i, ptr %firstin.i.i, align 8
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then12.i.i, %land.lhs.true7.i.i, %if.end.i.i
  %firstout.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i.i, i64 56
  %85 = load ptr, ptr %firstout.i.i, align 8
  %tobool20.not.i.i = icmp eq ptr %85, null
  br i1 %tobool20.not.i.i, label %for.inc.i.i, label %land.lhs.true21.i.i

land.lhs.true21.i.i:                              ; preds = %if.end19.i.i
  %86 = load i32, ptr %85, align 8
  %cmp24.i.i = icmp sgt i32 %86, -1
  br i1 %cmp24.i.i, label %if.then26.i.i, label %for.inc.i.i

if.then26.i.i:                                    ; preds = %land.lhs.true21.i.i
  %conv29.i.i = zext nneg i32 %86 to i64
  %call30.i.i = tail call i64 @getArcPosition(ptr noundef nonnull %net, i64 noundef %conv29.i.i) #11
  %arrayidx31.i.i = getelementptr inbounds %struct.arc, ptr %78, i64 %call30.i.i
  store ptr %arrayidx31.i.i, ptr %firstout.i.i, align 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then26.i.i, %land.lhs.true21.i.i, %if.end19.i.i
  %inc.i.i = add nuw nsw i64 %i.061.i.i, 1
  %87 = load i64, ptr %n.i.i, align 8
  %cmp.not.not.i.i = icmp slt i64 %i.061.i.i, %87
  br i1 %cmp.not.not.i.i, label %for.body.i.i, label %refreshArcPointers.exit.i.loopexit, !llvm.loop !10

refreshArcPointers.exit.i.loopexit:               ; preds = %for.inc.i.i
  br label %refreshArcPointers.exit.i

refreshArcPointers.exit.i:                        ; preds = %refreshArcPointers.exit.i.loopexit, %if.end290
  %cmp25.i = icmp sgt i64 %77, 0
  br i1 %cmp25.i, label %for.body.i592.preheader, label %refreshPositions.exit

for.body.i592.preheader:                          ; preds = %refreshArcPointers.exit.i
  br label %for.body.i592

for.body.i592:                                    ; preds = %for.inc.i595, %for.body.i592.preheader
  %position.026.i = phi i64 [ %inc.i596, %for.inc.i595 ], [ 0, %for.body.i592.preheader ]
  %88 = load ptr, ptr %arcs, align 8
  %add.ptr.i = getelementptr inbounds nuw %struct.arc, ptr %88, i64 %position.026.i
  %89 = load i32, ptr %add.ptr.i, align 8
  %cmp1.i = icmp slt i32 %89, 0
  br i1 %cmp1.i, label %for.inc.i595, label %if.end.i

if.end.i:                                         ; preds = %for.body.i592
  %conv.i593 = zext nneg i32 %89 to i64
  %call3.i = tail call i64 @getArcPosition(ptr noundef nonnull %net, i64 noundef %conv.i593) #11
  %arrayidx.i594 = getelementptr inbounds %struct.arc, ptr %78, i64 %call3.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %arrayidx.i594, ptr noundef nonnull align 8 dereferenceable(72) %add.ptr.i, i64 72, i1 false)
  br label %for.inc.i595

for.inc.i595:                                     ; preds = %if.end.i, %for.body.i592
  %inc.i596 = add nuw nsw i64 %position.026.i, 1
  %exitcond.not.i597 = icmp eq i64 %inc.i596, %77
  br i1 %exitcond.not.i597, label %refreshPositions.exit.loopexit, label %for.body.i592, !llvm.loop !11

refreshPositions.exit.loopexit:                   ; preds = %for.inc.i595
  br label %refreshPositions.exit

refreshPositions.exit:                            ; preds = %refreshPositions.exit.loopexit, %refreshArcPointers.exit.i
  %90 = load ptr, ptr %arcs, align 8
  store ptr %78, ptr %arcs, align 8
  store ptr %90, ptr %sorted_arcs, align 8
  %add.ptr7.i = getelementptr inbounds %struct.arc, ptr %78, i64 %77
  store ptr %add.ptr7.i, ptr %stop_arcs, align 8
  %91 = load i64, ptr %m294, align 8
  %add297 = add nsw i64 %91, %74
  store i64 %add297, ptr %m294, align 8
  %add.ptr301 = getelementptr inbounds %struct.arc, ptr %78, i64 %add297
  store ptr %add.ptr301, ptr %stop_arcs, align 8
  tail call void @free(ptr noundef %call) #11
  tail call void @free(ptr noundef %call3) #11
  tail call void @free(ptr noundef %call5) #11
  tail call void @free(ptr noundef %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %refreshPositions.exit, %if.end40, %if.then34, %if.then16
  %retval.0 = phi i64 [ %74, %refreshPositions.exit ], [ -1, %if.then16 ], [ -1, %if.then34 ], [ -1, %if.end40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %new_arcs) #11
  ret i64 %retval.0
}

declare void @refresh_neighbour_lists(ptr noundef, ptr noundef) local_unnamed_addr #8

declare i64 @getOriginalArcPosition(ptr noundef, i64 noundef) #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

declare i64 @getArcPosition(ptr noundef, i64 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind memory(readwrite, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(0,1) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
!3 = distinct !{!3, !1}
!4 = distinct !{!4, !1}
!5 = distinct !{!5, !1}
!6 = distinct !{!6, !1}
!7 = distinct !{!7, !1}
!8 = distinct !{!8, !1}
!9 = distinct !{!9, !1}
!10 = distinct !{!10, !1}
!11 = distinct !{!11, !1}
