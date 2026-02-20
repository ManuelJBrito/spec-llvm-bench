; ModuleID = '/tmp/tmp.sHOLVJ8vYO/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/ggc-page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.globals = type { [84 x ptr], [84 x ptr], ptr, i64, i64, i64, i64, i64, i64, i64, i16, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr }

@G = external hidden unnamed_addr global %struct.globals, align 8
@size_lookup = external hidden unnamed_addr global [512 x i8], align 16
@object_size_table = external hidden unnamed_addr global [84 x i64], align 16
@timevar_ggc_mem_total = external local_unnamed_addr global i64, align 8
@.str.3 = external hidden unnamed_addr constant [116 x i8], align 1
@.str.4 = external hidden unnamed_addr constant [2 x i8], align 1
@objects_per_page_table = external hidden unnamed_addr global [84 x i32], align 16

; Function Attrs: nounwind uwtable
define dso_local ptr @ggc_alloc_stat(i64 noundef %size) local_unnamed_addr #0 {
entry:
  %cmp = icmp ult i64 %size, 512
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  br label %while.cond

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr @size_lookup, i64 %size
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i64
  %arrayidx2 = getelementptr inbounds nuw i64, ptr @object_size_table, i64 %conv
  %1 = load i64, ptr %arrayidx2, align 8
  br label %if.end

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %order.0 = phi i64 [ %inc, %while.cond ], [ 10, %while.cond.preheader ]
  %arrayidx3 = getelementptr inbounds nuw i64, ptr @object_size_table, i64 %order.0
  %2 = load i64, ptr %arrayidx3, align 8
  %cmp4 = icmp ugt i64 %size, %2
  %inc = add i64 %order.0, 1
  br i1 %cmp4, label %while.cond, label %if.end.loopexit, !llvm.loop !0

if.end.loopexit:                                  ; preds = %while.cond
  %order.0.lcssa = phi i64 [ %order.0, %while.cond ]
  %.lcssa171 = phi i64 [ %2, %while.cond ]
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %if.then
  %object_size.0 = phi i64 [ %1, %if.then ], [ %.lcssa171, %if.end.loopexit ]
  %order.1 = phi i64 [ %conv, %if.then ], [ %order.0.lcssa, %if.end.loopexit ]
  %arrayidx6 = getelementptr inbounds nuw ptr, ptr @G, i64 %order.1
  %3 = load ptr, ptr %arrayidx6, align 8
  %cmp7 = icmp eq ptr %3, null
  br i1 %cmp7, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %num_free_objects = getelementptr inbounds nuw i8, ptr %3, i64 50
  %4 = load i16, ptr %num_free_objects, align 2
  %cmp10 = icmp eq i16 %4, 0
  br i1 %cmp10, label %if.then12, label %if.else29

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  %conv13 = trunc i64 %order.1 to i32
  %idxprom.i = and i64 %order.1, 4294967295
  %arrayidx.i = getelementptr inbounds nuw i32, ptr @objects_per_page_table, i64 %idxprom.i
  %5 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i32 %5 to i64
  %sub.i = add nuw nsw i64 %conv.i, 64
  %6 = lshr i64 %sub.i, 3
  %mul.i = and i64 %6, 1073741816
  %add3.i = add nuw nsw i64 %mul.i, 56
  %arrayidx5.i = getelementptr inbounds nuw i64, ptr @object_size_table, i64 %idxprom.i
  %7 = load i64, ptr %arrayidx5.i, align 8
  %mul6.i = mul i64 %7, %conv.i
  %8 = load i64, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1352), align 8
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %mul6.i, i64 %8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.then12
  %pp.0.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @G, i64 1416), %if.then12 ], [ %p.0.i, %for.body.i ]
  %p.0.i = load ptr, ptr %pp.0.i, align 8
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %if.else24.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %bytes.i = getelementptr inbounds nuw i8, ptr %p.0.i, i64 16
  %9 = load i64, ptr %bytes.i, align 8
  %cmp8.i = icmp eq i64 %9, %spec.select.i
  br i1 %cmp8.i, label %if.then14.i, label %for.cond.i, !llvm.loop !2

if.then14.i:                                      ; preds = %for.body.i
  %pp.0.i.lcssa170 = phi ptr [ %pp.0.i, %for.body.i ]
  %p.0.i.lcssa169 = phi ptr [ %p.0.i, %for.body.i ]
  %10 = load ptr, ptr %p.0.i.lcssa169, align 8
  store ptr %10, ptr %pp.0.i.lcssa170, align 8
  %page16.i = getelementptr inbounds nuw i8, ptr %p.0.i.lcssa169, i64 24
  %11 = load ptr, ptr %page16.i, align 8
  %group17.i = getelementptr inbounds nuw i8, ptr %p.0.i.lcssa169, i64 32
  %12 = load ptr, ptr %group17.i, align 8
  %order18.i = getelementptr inbounds nuw i8, ptr %p.0.i.lcssa169, i64 54
  %13 = load i8, ptr %order18.i, align 2
  %conv19.i = zext i8 %13 to i32
  %cmp20.i = icmp eq i32 %conv13, %conv19.i
  br i1 %cmp20.i, label %if.end88.i, label %if.else.i

if.else.i:                                        ; preds = %if.then14.i
  tail call void @free(ptr noundef nonnull %p.0.i.lcssa169)
  br label %if.then91.i

if.else24.i:                                      ; preds = %for.cond.i
  %cmp25.not.i = icmp ult i64 %8, %mul6.i
  %mul29.i = shl i64 %8, 4
  %add31.i = add i64 %8, -1
  %sub32.i = add i64 %add31.i, %spec.select.i
  %alloc_size.0.i = select i1 %cmp25.not.i, i64 %sub32.i, i64 %mul29.i
  %call.i = tail call ptr @xmalloc(i64 noundef %alloc_size.0.i) #5
  %14 = ptrtoint ptr %call.i to i64
  %15 = load i64, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1352), align 8
  %add35.i = add i64 %15, -1
  %sub36.i = add i64 %add35.i, %14
  %sub37.i = sub i64 0, %15
  %and.i = and i64 %sub36.i, %sub37.i
  %16 = inttoptr i64 %and.i to ptr
  %sub.ptr.sub.i = sub i64 %and.i, %14
  %add40.i = add i64 %mul29.i, %14
  %and42.i = and i64 %add40.i, %add35.i
  %sub45.i = sub i64 %add31.i, %sub.ptr.sub.i
  %tail_slop.0.i = select i1 %cmp25.not.i, i64 %sub45.i, i64 %and42.i
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %call.i, i64 %alloc_size.0.i
  %idx.neg.i = sub i64 0, %tail_slop.0.i
  %add.ptr47.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i
  %cmp48.i = icmp ugt i64 %sub.ptr.sub.i, 31
  br i1 %cmp48.i, label %if.then50.i, label %if.else52.i

if.then50.i:                                      ; preds = %if.else24.i
  %add.ptr51.i = getelementptr inbounds i8, ptr %16, i64 -32
  br label %if.end63.i

if.else52.i:                                      ; preds = %if.else24.i
  %cmp53.i = icmp eq i64 %tail_slop.0.i, 0
  %enda.0.idx.i = select i1 %cmp53.i, i64 %sub37.i, i64 0
  %enda.0.i = getelementptr inbounds i8, ptr %add.ptr47.i, i64 %enda.0.idx.i
  %tail_slop.1.i = select i1 %cmp53.i, i64 %15, i64 %tail_slop.0.i
  %cmp60.i = icmp ugt i64 %tail_slop.1.i, 31
  br i1 %cmp60.i, label %if.end63.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.else52.i
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 847, ptr noundef nonnull @.str.4) #5
  br label %if.end63.i

if.end63.i:                                       ; preds = %cond.true.i, %if.else52.i, %if.then50.i
  %group.0.i = phi ptr [ %add.ptr51.i, %if.then50.i ], [ %enda.0.i, %if.else52.i ], [ %enda.0.i, %cond.true.i ]
  %enda.1.i = phi ptr [ %add.ptr47.i, %if.then50.i ], [ %enda.0.i, %if.else52.i ], [ %enda.0.i, %cond.true.i ]
  %17 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1424), align 8
  store ptr %17, ptr %group.0.i, align 8
  %allocation65.i = getelementptr inbounds nuw i8, ptr %group.0.i, i64 8
  store ptr %call.i, ptr %allocation65.i, align 8
  %alloc_size66.i = getelementptr inbounds nuw i8, ptr %group.0.i, i64 16
  store i64 %alloc_size.0.i, ptr %alloc_size66.i, align 8
  %in_use.i = getelementptr inbounds nuw i8, ptr %group.0.i, i64 24
  store i32 0, ptr %in_use.i, align 8
  store ptr %group.0.i, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1424), align 8
  %18 = load i64, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1384), align 8
  %add67.i = add i64 %18, %alloc_size.0.i
  store i64 %add67.i, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1384), align 8
  br i1 %cmp25.not.i, label %if.then91.i, label %if.then69.i

if.then69.i:                                      ; preds = %if.end63.i
  %19 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1416), align 8
  %20 = load i64, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1352), align 8
  %idx.neg70.i = sub i64 0, %20
  %add.ptr71.i = getelementptr inbounds i8, ptr %enda.1.i, i64 %idx.neg70.i
  %cmp73.not194.i = icmp eq ptr %add.ptr71.i, %16
  br i1 %cmp73.not194.i, label %for.end86.i, label %for.body75.lr.ph.i

for.body75.lr.ph.i:                               ; preds = %if.then69.i
  %conv77.i = trunc i64 %order.1 to i8
  br label %for.body75.i

for.body75.i:                                     ; preds = %for.body75.i, %for.body75.lr.ph.i
  %f.0196.i = phi ptr [ %19, %for.body75.lr.ph.i ], [ %call76.i, %for.body75.i ]
  %a.0195.i = phi ptr [ %add.ptr71.i, %for.body75.lr.ph.i ], [ %add.ptr85.i, %for.body75.i ]
  %call76.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %add3.i) #5
  %order78.i = getelementptr inbounds nuw i8, ptr %call76.i, i64 54
  store i8 %conv77.i, ptr %order78.i, align 2
  %21 = load i64, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1352), align 8
  %bytes79.i = getelementptr inbounds nuw i8, ptr %call76.i, i64 16
  store i64 %21, ptr %bytes79.i, align 8
  %page80.i = getelementptr inbounds nuw i8, ptr %call76.i, i64 24
  store ptr %a.0195.i, ptr %page80.i, align 8
  %group81.i = getelementptr inbounds nuw i8, ptr %call76.i, i64 32
  store ptr %group.0.i, ptr %group81.i, align 8
  store ptr %f.0196.i, ptr %call76.i, align 8
  %22 = load i64, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1352), align 8
  %idx.neg84.i = sub i64 0, %22
  %add.ptr85.i = getelementptr inbounds i8, ptr %a.0195.i, i64 %idx.neg84.i
  %cmp73.not.i = icmp eq ptr %add.ptr85.i, %16
  br i1 %cmp73.not.i, label %for.end86.i.loopexit, label %for.body75.i, !llvm.loop !3

for.end86.i.loopexit:                             ; preds = %for.body75.i
  %call76.i.lcssa = phi ptr [ %call76.i, %for.body75.i ]
  br label %for.end86.i

for.end86.i:                                      ; preds = %for.end86.i.loopexit, %if.then69.i
  %f.0.lcssa.i = phi ptr [ %19, %if.then69.i ], [ %call76.i.lcssa, %for.end86.i.loopexit ]
  store ptr %f.0.lcssa.i, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1416), align 8
  br label %if.then91.i

if.end88.i:                                       ; preds = %if.then14.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %p.0.i.lcssa169, i8 0, i64 %add3.i, i1 false)
  br label %if.end93.i

if.then91.i:                                      ; preds = %for.end86.i, %if.end63.i, %if.else.i
  %group.1.ph.i = phi ptr [ %group.0.i, %if.end63.i ], [ %group.0.i, %for.end86.i ], [ %12, %if.else.i ]
  %page.0.ph.i = phi ptr [ %16, %if.end63.i ], [ %16, %for.end86.i ], [ %11, %if.else.i ]
  %call92.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %add3.i) #5
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then91.i, %if.end88.i
  %page.0189.i = phi ptr [ %page.0.ph.i, %if.then91.i ], [ %11, %if.end88.i ]
  %group.1187.i = phi ptr [ %group.1.ph.i, %if.then91.i ], [ %12, %if.end88.i ]
  %entry1.1.i = phi ptr [ %call92.i, %if.then91.i ], [ %p.0.i.lcssa169, %if.end88.i ]
  %bytes94.i = getelementptr inbounds nuw i8, ptr %entry1.1.i, i64 16
  store i64 %spec.select.i, ptr %bytes94.i, align 8
  %page95.i = getelementptr inbounds nuw i8, ptr %entry1.1.i, i64 24
  store ptr %page.0189.i, ptr %page95.i, align 8
  %23 = load i16, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1408), align 8
  %context_depth.i = getelementptr inbounds nuw i8, ptr %entry1.1.i, i64 48
  store i16 %23, ptr %context_depth.i, align 8
  %conv96.i = trunc i64 %order.1 to i8
  %order97.i = getelementptr inbounds nuw i8, ptr %entry1.1.i, i64 54
  store i8 %conv96.i, ptr %order97.i, align 2
  %conv98.i = trunc i32 %5 to i16
  %num_free_objects.i = getelementptr inbounds nuw i8, ptr %entry1.1.i, i64 50
  store i16 %conv98.i, ptr %num_free_objects.i, align 2
  %next_bit_hint.i = getelementptr inbounds nuw i8, ptr %entry1.1.i, i64 52
  store i16 1, ptr %next_bit_hint.i, align 4
  %24 = load i16, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1408), align 8
  %sh_prom.i = zext nneg i16 %24 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %25 = load i64, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1392), align 8
  %or.i = or i64 %shl.i, %25
  store i64 %or.i, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1392), align 8
  %group100.i = getelementptr inbounds nuw i8, ptr %entry1.1.i, i64 32
  store ptr %group.1187.i, ptr %group100.i, align 8
  %allocation.i.i = getelementptr inbounds nuw i8, ptr %group.1187.i, i64 8
  %26 = load ptr, ptr %allocation.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %page.0189.i to i64
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %26 to i64
  %sub.ptr.sub.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %27 = load i64, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1360), align 8
  %shr.i.i.i = lshr i64 %sub.ptr.sub.i.i.i, %27
  %sh_prom.i.i = trunc i64 %shr.i.i.i to i32
  %shl.i.i = shl nuw i32 1, %sh_prom.i.i
  %in_use.i.i = getelementptr inbounds nuw i8, ptr %group.1187.i, i64 24
  %28 = load i32, ptr %in_use.i.i, align 8
  %or.i.i = or i32 %shl.i.i, %28
  store i32 %or.i.i, ptr %in_use.i.i, align 8
  %rem.i = and i64 %conv.i, 63
  %shl101.i = shl nuw i64 1, %rem.i
  %in_use_p.i = getelementptr inbounds nuw i8, ptr %entry1.1.i, i64 56
  %div102181.i = lshr i64 %conv.i, 6
  %arrayidx103.i = getelementptr inbounds nuw i64, ptr %in_use_p.i, i64 %div102181.i
  store i64 %shl101.i, ptr %arrayidx103.i, align 8
  %and.i.i = and i64 %sub.ptr.lhs.cast.i.i.i, -4294967296
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %if.end93.i
  %table.0.in.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @G, i64 1344), %if.end93.i ], [ %table.0.i.i, %for.body.i.i ]
  %table.0.i.i = load ptr, ptr %table.0.in.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %table.0.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %high_bits2.i.i = getelementptr inbounds nuw i8, ptr %table.0.i.i, i64 8
  %29 = load i64, ptr %high_bits2.i.i, align 8
  %cmp.i.i = icmp eq i64 %29, %and.i.i
  br i1 %cmp.i.i, label %found.i.i.loopexit, label %for.cond.i.i, !llvm.loop !4

for.end.i.i:                                      ; preds = %for.cond.i.i
  %call.i.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 2064) #5
  %30 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1344), align 8
  store ptr %30, ptr %call.i.i, align 8
  %high_bits4.i.i = getelementptr inbounds nuw i8, ptr %call.i.i, i64 8
  store i64 %and.i.i, ptr %high_bits4.i.i, align 8
  store ptr %call.i.i, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1344), align 8
  br label %found.i.i

found.i.i.loopexit:                               ; preds = %for.body.i.i
  %table.0.i.i.lcssa168 = phi ptr [ %table.0.i.i, %for.body.i.i ]
  br label %found.i.i

found.i.i:                                        ; preds = %found.i.i.loopexit, %for.end.i.i
  %table.1.i.i = phi ptr [ %call.i.i, %for.end.i.i ], [ %table.0.i.i.lcssa168, %found.i.i.loopexit ]
  %table5.i.i = getelementptr inbounds nuw i8, ptr %table.1.i.i, i64 16
  %shr.i.i = lshr i64 %sub.ptr.lhs.cast.i.i.i, 24
  %and6.i.i = and i64 %shr.i.i, 255
  %31 = load i64, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1360), align 8
  %sub.i.i = sub i64 24, %31
  %arrayidx10.i.i = getelementptr inbounds nuw ptr, ptr %table5.i.i, i64 %and6.i.i
  %32 = load ptr, ptr %arrayidx10.i.i, align 8
  %cmp11.i.i = icmp eq ptr %32, null
  br i1 %cmp11.i.i, label %if.then13.i.i, label %alloc_page.exit

if.then13.i.i:                                    ; preds = %found.i.i
  %shl15.i.i = shl nuw i64 1, %sub.i.i
  %call16.i.i = tail call ptr @xcalloc(i64 noundef %shl15.i.i, i64 noundef 8) #5
  store ptr %call16.i.i, ptr %arrayidx10.i.i, align 8
  br label %alloc_page.exit

alloc_page.exit:                                  ; preds = %if.then13.i.i, %found.i.i
  %shr7.i.i = lshr i64 %sub.ptr.lhs.cast.i.i.i, %31
  %sh_prom.i182.i = trunc i64 %sub.i.i to i32
  %notmask.i.i = shl nsw i32 -1, %sh_prom.i182.i
  %sub8.i.i = xor i32 %notmask.i.i, -1
  %conv.i.i = zext nneg i32 %sub8.i.i to i64
  %and9.i.i = and i64 %shr7.i.i, %conv.i.i
  %33 = load ptr, ptr %arrayidx10.i.i, align 8
  %arrayidx20.i.i = getelementptr inbounds nuw ptr, ptr %33, i64 %and9.i.i
  store ptr %entry1.1.i, ptr %arrayidx20.i.i, align 8
  %34 = load i32, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1456), align 8
  %conv14 = zext i32 %34 to i64
  %index_by_depth = getelementptr inbounds nuw i8, ptr %entry1.1.i, i64 40
  store i64 %conv14, ptr %index_by_depth, align 8
  %35 = load i32, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1456), align 8
  %36 = load i32, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1460), align 4
  %cmp.not.i = icmp ult i32 %35, %36
  br i1 %cmp.not.i, label %push_by_depth.exit, label %if.then.i

if.then.i:                                        ; preds = %alloc_page.exit
  %mul.i148 = shl i32 %36, 1
  store i32 %mul.i148, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1460), align 4
  %37 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1464), align 8
  %conv.i149 = zext i32 %mul.i148 to i64
  %mul1.i = shl nuw nsw i64 %conv.i149, 3
  %call.i150 = tail call ptr @xrealloc(ptr noundef %37, i64 noundef %mul1.i) #5
  store ptr %call.i150, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1464), align 8
  %38 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1472), align 8
  %39 = load i32, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1460), align 4
  %conv2.i = zext i32 %39 to i64
  %mul3.i = shl nuw nsw i64 %conv2.i, 3
  %call4.i = tail call ptr @xrealloc(ptr noundef %38, i64 noundef %mul3.i) #5
  store ptr %call4.i, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1472), align 8
  br label %push_by_depth.exit

push_by_depth.exit:                               ; preds = %if.then.i, %alloc_page.exit
  %40 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1464), align 8
  %41 = load i32, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1456), align 8
  %idxprom.i151 = zext i32 %41 to i64
  %arrayidx.i152 = getelementptr inbounds nuw ptr, ptr %40, i64 %idxprom.i151
  store ptr %entry1.1.i, ptr %arrayidx.i152, align 8
  %42 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1472), align 8
  %43 = load i32, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1456), align 8
  %inc.i = add i32 %43, 1
  store i32 %inc.i, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1456), align 8
  %idxprom5.i = zext i32 %43 to i64
  %arrayidx6.i = getelementptr inbounds nuw ptr, ptr %42, i64 %idxprom5.i
  store ptr null, ptr %arrayidx6.i, align 8
  %44 = load i16, ptr %context_depth.i, align 8
  %conv16166 = zext i16 %44 to i32
  %45 = load i32, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1440), align 8
  %cmp17.not167 = icmp ugt i32 %45, %conv16166
  br i1 %cmp17.not167, label %while.end20, label %while.body19.preheader

while.body19.preheader:                           ; preds = %push_by_depth.exit
  br label %while.body19

while.body19:                                     ; preds = %push_depth.exit, %while.body19.preheader
  %46 = phi i32 [ %53, %push_depth.exit ], [ %45, %while.body19.preheader ]
  %47 = load i32, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1456), align 8
  %sub = add i32 %47, -1
  %48 = load i32, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1444), align 4
  %cmp.not.i153 = icmp ult i32 %46, %48
  br i1 %cmp.not.i153, label %push_depth.exit, label %if.then.i154

if.then.i154:                                     ; preds = %while.body19
  %mul.i155 = shl nuw nsw i32 %48, 1
  store i32 %mul.i155, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1444), align 4
  %49 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1448), align 8
  %conv.i156 = zext nneg i32 %mul.i155 to i64
  %mul1.i157 = shl nuw nsw i64 %conv.i156, 2
  %call.i158 = tail call ptr @xrealloc(ptr noundef %49, i64 noundef %mul1.i157) #5
  store ptr %call.i158, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1448), align 8
  br label %push_depth.exit

push_depth.exit:                                  ; preds = %if.then.i154, %while.body19
  %50 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1448), align 8
  %51 = load i32, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1440), align 8
  %inc.i159 = add i32 %51, 1
  store i32 %inc.i159, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1440), align 8
  %idxprom.i160 = zext i32 %51 to i64
  %arrayidx.i161 = getelementptr inbounds nuw i32, ptr %50, i64 %idxprom.i160
  store i32 %sub, ptr %arrayidx.i161, align 4
  %52 = load i16, ptr %context_depth.i, align 8
  %conv16 = zext i16 %52 to i32
  %53 = load i32, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1440), align 8
  %cmp17.not = icmp ugt i32 %53, %conv16
  br i1 %cmp17.not, label %while.end20.loopexit, label %while.body19, !llvm.loop !5

while.end20.loopexit:                             ; preds = %push_depth.exit
  br label %while.end20

while.end20:                                      ; preds = %while.end20.loopexit, %push_by_depth.exit
  br i1 %cmp7, label %if.then23, label %if.else25

if.then23:                                        ; preds = %while.end20
  %arrayidx24 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @G, i64 672), i64 %order.1
  store ptr %entry1.1.i, ptr %arrayidx24, align 8
  br label %if.end26

if.else25:                                        ; preds = %while.end20
  %prev = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %entry1.1.i, ptr %prev, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then23
  store ptr %3, ptr %entry1.1.i, align 8
  %prev27 = getelementptr inbounds nuw i8, ptr %entry1.1.i, i64 8
  store ptr null, ptr %prev27, align 8
  store ptr %entry1.1.i, ptr %arrayidx6, align 8
  store i16 1, ptr %next_bit_hint.i, align 4
  br label %if.end60

if.else29:                                        ; preds = %lor.lhs.false
  %next_bit_hint30 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %54 = load i16, ptr %next_bit_hint30, align 4
  %conv31 = zext i16 %54 to i32
  %div147 = lshr i32 %conv31, 6
  %conv32 = zext nneg i32 %div147 to i64
  %rem = and i32 %conv31, 63
  %conv33 = zext nneg i32 %rem to i64
  %in_use_p = getelementptr inbounds nuw i8, ptr %3, i64 56
  %arrayidx34 = getelementptr inbounds nuw i64, ptr %in_use_p, i64 %conv32
  %55 = load i64, ptr %arrayidx34, align 8
  %56 = shl nuw i64 1, %conv33
  %57 = and i64 %56, %55
  %tobool.not = icmp eq i64 %57, 0
  br i1 %tobool.not, label %if.end54, label %while.cond36.preheader

while.cond36.preheader:                           ; preds = %if.else29
  br label %while.cond36

while.cond36:                                     ; preds = %while.cond36, %while.cond36.preheader
  %word.0 = phi i64 [ %inc42, %while.cond36 ], [ 0, %while.cond36.preheader ]
  %arrayidx38 = getelementptr inbounds nuw i64, ptr %in_use_p, i64 %word.0
  %58 = load i64, ptr %arrayidx38, align 8
  %cmp39 = icmp eq i64 %58, -1
  %inc42 = add i64 %word.0, 1
  br i1 %cmp39, label %while.cond36, label %while.cond44.preheader, !llvm.loop !6

while.cond44.preheader:                           ; preds = %while.cond36
  %word.0.lcssa = phi i64 [ %word.0, %while.cond36 ]
  %.lcssa = phi i64 [ %58, %while.cond36 ]
  br label %while.cond44

while.cond44:                                     ; preds = %while.cond44, %while.cond44.preheader
  %bit.0 = phi i64 [ %inc51, %while.cond44 ], [ 0, %while.cond44.preheader ]
  %59 = shl nuw i64 1, %bit.0
  %60 = and i64 %59, %.lcssa
  %tobool49.not = icmp eq i64 %60, 0
  %inc51 = add i64 %bit.0, 1
  br i1 %tobool49.not, label %while.end52, label %while.cond44, !llvm.loop !7

while.end52:                                      ; preds = %while.cond44
  %bit.0.lcssa = phi i64 [ %bit.0, %while.cond44 ]
  %mul = shl i64 %word.0.lcssa, 6
  %add = add i64 %bit.0.lcssa, %mul
  %conv53 = trunc i64 %add to i32
  br label %if.end54

if.end54:                                         ; preds = %while.end52, %if.else29
  %bit.1 = phi i64 [ %bit.0.lcssa, %while.end52 ], [ %conv33, %if.else29 ]
  %word.1 = phi i64 [ %word.0.lcssa, %while.end52 ], [ %conv32, %if.else29 ]
  %hint.0 = phi i32 [ %conv53, %while.end52 ], [ %conv31, %if.else29 ]
  %61 = trunc i32 %hint.0 to i16
  %conv56 = add i16 %61, 1
  store i16 %conv56, ptr %next_bit_hint30, align 4
  %conv58 = zext i32 %hint.0 to i64
  %mul59 = mul i64 %object_size.0, %conv58
  br label %if.end60

if.end60:                                         ; preds = %if.end54, %if.end26
  %bit.2 = phi i64 [ 0, %if.end26 ], [ %bit.1, %if.end54 ]
  %object_offset.0 = phi i64 [ 0, %if.end26 ], [ %mul59, %if.end54 ]
  %entry1.0 = phi ptr [ %entry1.1.i, %if.end26 ], [ %3, %if.end54 ]
  %word.2 = phi i64 [ 0, %if.end26 ], [ %word.1, %if.end54 ]
  %shl = shl nuw i64 1, %bit.2
  %in_use_p61 = getelementptr inbounds nuw i8, ptr %entry1.0, i64 56
  %arrayidx62 = getelementptr inbounds nuw i64, ptr %in_use_p61, i64 %word.2
  %62 = load i64, ptr %arrayidx62, align 8
  %or = or i64 %62, %shl
  store i64 %or, ptr %arrayidx62, align 8
  %num_free_objects63 = getelementptr inbounds nuw i8, ptr %entry1.0, i64 50
  %63 = load i16, ptr %num_free_objects63, align 2
  %dec = add i16 %63, -1
  store i16 %dec, ptr %num_free_objects63, align 2
  %cmp65 = icmp eq i16 %dec, 0
  br i1 %cmp65, label %land.lhs.true, label %if.end87

land.lhs.true:                                    ; preds = %if.end60
  %64 = load ptr, ptr %entry1.0, align 8
  %cmp68.not = icmp eq ptr %64, null
  br i1 %cmp68.not, label %if.end87, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %land.lhs.true
  %num_free_objects72 = getelementptr inbounds nuw i8, ptr %64, i64 50
  %65 = load i16, ptr %num_free_objects72, align 2
  %cmp74.not = icmp eq i16 %65, 0
  br i1 %cmp74.not, label %if.end87, label %if.then76

if.then76:                                        ; preds = %land.lhs.true70
  store ptr %64, ptr %arrayidx6, align 8
  %66 = load ptr, ptr %entry1.0, align 8
  %prev80 = getelementptr inbounds nuw i8, ptr %66, i64 8
  store ptr null, ptr %prev80, align 8
  store ptr null, ptr %entry1.0, align 8
  %arrayidx82 = getelementptr inbounds nuw ptr, ptr getelementptr inbounds nuw (i8, ptr @G, i64 672), i64 %order.1
  %67 = load ptr, ptr %arrayidx82, align 8
  %prev83 = getelementptr inbounds nuw i8, ptr %entry1.0, i64 8
  store ptr %67, ptr %prev83, align 8
  %68 = load ptr, ptr %arrayidx82, align 8
  store ptr %entry1.0, ptr %68, align 8
  store ptr %entry1.0, ptr %arrayidx82, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then76, %land.lhs.true70, %land.lhs.true, %if.end60
  %page = getelementptr inbounds nuw i8, ptr %entry1.0, i64 24
  %69 = load ptr, ptr %page, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %69, i64 %object_offset.0
  %70 = load i64, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1368), align 8
  %add88 = add i64 %70, %object_size.0
  store i64 %add88, ptr getelementptr inbounds nuw (i8, ptr @G, i64 1368), align 8
  %71 = load i64, ptr @timevar_ggc_mem_total, align 8
  %add89 = add i64 %71, %object_size.0
  store i64 %add89, ptr @timevar_ggc_mem_total, align 8
  ret ptr %add.ptr
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
!3 = distinct !{!3, !1}
!4 = distinct !{!4, !1}
!5 = distinct !{!5, !1}
!6 = distinct !{!6, !1}
!7 = distinct !{!7, !1}
