; ModuleID = '/tmp/tmp.FQ4Y32omZe/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/557.xz_r/src/liblzma/lz/lz_encoder_mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_match = type { i32, i32 }

@lzma_crc32_table = external local_unnamed_addr constant [8 x [256 x i32]], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_mf_bt4_find(ptr noundef captures(none) %mf, ptr noundef %matches) local_unnamed_addr #0 {
entry:
  %0 = getelementptr i8, ptr %mf, i64 24
  %mf.val = load i32, ptr %0, align 8, !tbaa !0
  %1 = getelementptr i8, ptr %mf, i64 36
  %mf.val211 = load i32, ptr %1, align 4, !tbaa !8
  %sub.i = sub i32 %mf.val211, %mf.val
  %nice_len = getelementptr inbounds nuw i8, ptr %mf, i64 96
  %2 = load i32, ptr %nice_len, align 8, !tbaa !9
  %cmp.not = icmp ugt i32 %2, %sub.i
  br i1 %cmp.not, label %if.else, label %if.end5

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 4
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %action = getelementptr inbounds nuw i8, ptr %mf, i64 104
  %3 = load i32, ptr %action, align 8, !tbaa !10
  %cmp3 = icmp eq i32 %3, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  %inc.i = add i32 %mf.val, 1
  store i32 %inc.i, ptr %0, align 8, !tbaa !0
  %pending.i = getelementptr inbounds nuw i8, ptr %mf, i64 40
  %4 = load i32, ptr %pending.i, align 8, !tbaa !11
  %inc1.i = add i32 %4, 1
  store i32 %inc1.i, ptr %pending.i, align 8, !tbaa !11
  br label %cleanup130

if.end5:                                          ; preds = %lor.lhs.false, %entry
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %entry ]
  %mf.val212 = load ptr, ptr %mf, align 8, !tbaa !12
  %idx.ext.i = zext i32 %mf.val to i64
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %mf.val212, i64 %idx.ext.i
  %offset = getelementptr inbounds nuw i8, ptr %mf, i64 20
  %5 = load i32, ptr %offset, align 4, !tbaa !13
  %add = add i32 %5, %mf.val
  %6 = load i8, ptr %add.ptr.i, align 1, !tbaa !14
  %idxprom = zext i8 %6 to i64
  %arrayidx7 = getelementptr inbounds nuw i32, ptr @lzma_crc32_table, i64 %idxprom
  %7 = load i32, ptr %arrayidx7, align 4, !tbaa !15
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 1
  %8 = load i8, ptr %arrayidx8, align 1, !tbaa !14
  %conv = zext i8 %8 to i32
  %xor = xor i32 %7, %conv
  %and = and i32 %xor, 1023
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 2
  %9 = load i8, ptr %arrayidx9, align 1, !tbaa !14
  %conv10 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %xor11 = xor i32 %shl, %xor
  %and12 = and i32 %xor11, 65535
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 3
  %10 = load i8, ptr %arrayidx17, align 1, !tbaa !14
  %idxprom18 = zext i8 %10 to i64
  %arrayidx19 = getelementptr inbounds nuw i32, ptr @lzma_crc32_table, i64 %idxprom18
  %11 = load i32, ptr %arrayidx19, align 4, !tbaa !15
  %shl20 = shl i32 %11, 5
  %xor21 = xor i32 %xor11, %shl20
  %hash_mask = getelementptr inbounds nuw i8, ptr %mf, i64 88
  %12 = load i32, ptr %hash_mask, align 8, !tbaa !16
  %and22 = and i32 %xor21, %12
  %hash = getelementptr inbounds nuw i8, ptr %mf, i64 64
  %13 = load ptr, ptr %hash, align 8, !tbaa !17
  %idxprom23 = zext nneg i32 %and to i64
  %arrayidx24 = getelementptr inbounds nuw i32, ptr %13, i64 %idxprom23
  %14 = load i32, ptr %arrayidx24, align 4, !tbaa !15
  %sub = sub i32 %add, %14
  %15 = zext nneg i32 %and12 to i64
  %16 = getelementptr inbounds nuw i32, ptr %13, i64 %15
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %16, i64 4096
  %17 = load i32, ptr %arrayidx28, align 4, !tbaa !15
  %sub29 = sub i32 %add, %17
  %add31 = add i32 %and22, 66560
  %idxprom32 = zext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds nuw i32, ptr %13, i64 %idxprom32
  %18 = load i32, ptr %arrayidx33, align 4, !tbaa !15
  store i32 %add, ptr %arrayidx24, align 4, !tbaa !15
  store i32 %add, ptr %arrayidx28, align 4, !tbaa !15
  store i32 %add, ptr %arrayidx33, align 4, !tbaa !15
  %cyclic_size = getelementptr inbounds nuw i8, ptr %mf, i64 84
  %19 = load i32, ptr %cyclic_size, align 4, !tbaa !18
  %cmp45 = icmp ult i32 %sub, %19
  br i1 %cmp45, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %if.end5
  %idx.ext = zext i32 %sub to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg
  %20 = load i8, ptr %add.ptr, align 1, !tbaa !14
  %21 = load i8, ptr %add.ptr.i, align 1, !tbaa !14
  %cmp49 = icmp eq i8 %20, %21
  br i1 %cmp49, label %if.then51, label %if.end55

if.then51:                                        ; preds = %land.lhs.true
  store i32 2, ptr %matches, align 4, !tbaa !19
  %sub53 = add i32 %sub, -1
  %dist = getelementptr inbounds nuw i8, ptr %matches, i64 4
  store i32 %sub53, ptr %dist, align 4, !tbaa !21
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %land.lhs.true, %if.end5
  %matches_count.0 = phi i32 [ 1, %if.then51 ], [ 0, %land.lhs.true ], [ 0, %if.end5 ]
  %len_best.0 = phi i32 [ 2, %if.then51 ], [ 1, %land.lhs.true ], [ 1, %if.end5 ]
  %cmp56.not = icmp ne i32 %17, %14
  %cmp60 = icmp ult i32 %sub29, %19
  %or.cond = select i1 %cmp56.not, i1 %cmp60, i1 false
  br i1 %or.cond, label %land.lhs.true62, label %if.end75

land.lhs.true62:                                  ; preds = %if.end55
  %idx.ext63 = zext i32 %sub29 to i64
  %idx.neg64 = sub nsw i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg64
  %22 = load i8, ptr %add.ptr65, align 1, !tbaa !14
  %23 = load i8, ptr %add.ptr.i, align 1, !tbaa !14
  %cmp68 = icmp eq i8 %22, %23
  br i1 %cmp68, label %if.then70, label %if.end75

if.then70:                                        ; preds = %land.lhs.true62
  %sub71 = add i32 %sub29, -1
  %inc = add nuw nsw i32 %matches_count.0, 1
  %idxprom72 = zext nneg i32 %matches_count.0 to i64
  %arrayidx73 = getelementptr inbounds nuw %struct.lzma_match, ptr %matches, i64 %idxprom72
  %dist74 = getelementptr inbounds nuw i8, ptr %arrayidx73, i64 4
  store i32 %sub71, ptr %dist74, align 4, !tbaa !21
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %land.lhs.true62, %if.end55
  %matches_count.1 = phi i32 [ %inc, %if.then70 ], [ %matches_count.0, %land.lhs.true62 ], [ %matches_count.0, %if.end55 ]
  %delta2.0 = phi i32 [ %sub29, %if.then70 ], [ %sub, %land.lhs.true62 ], [ %sub, %if.end55 ]
  %len_best.1 = phi i32 [ 3, %if.then70 ], [ %len_best.0, %land.lhs.true62 ], [ %len_best.0, %if.end55 ]
  %cmp76.not = icmp eq i32 %matches_count.1, 0
  br i1 %cmp76.not, label %if.end104, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end75
  %cmp79.not308 = icmp eq i32 %len_best.1, %len_limit.0
  br i1 %cmp79.not308, label %do.body, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idx.ext83 = zext i32 %delta2.0 to i64
  %idx.neg84 = sub nsw i64 0, %idx.ext83
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %len_best.2309 = phi i32 [ %len_best.1, %for.body.lr.ph ], [ %inc94, %for.inc ]
  %idx.ext81 = zext i32 %len_best.2309 to i64
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 %idx.ext81
  %add.ptr85 = getelementptr inbounds i8, ptr %add.ptr82, i64 %idx.neg84
  %24 = load i8, ptr %add.ptr85, align 1, !tbaa !14
  %25 = load i8, ptr %add.ptr82, align 1, !tbaa !14
  %cmp90.not = icmp eq i8 %24, %25
  br i1 %cmp90.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %inc94 = add i32 %len_best.2309, 1
  %cmp79.not = icmp eq i32 %inc94, %len_limit.0
  br i1 %cmp79.not, label %do.body.loopexit, label %for.body, !llvm.loop !22

for.end:                                          ; preds = %for.body
  %len_best.2309.lcssa = phi i32 [ %len_best.2309, %for.body ]
  %sub95 = add nsw i32 %matches_count.1, -1
  %idxprom96 = zext i32 %sub95 to i64
  %arrayidx97 = getelementptr inbounds nuw %struct.lzma_match, ptr %matches, i64 %idxprom96
  store i32 %len_best.2309.lcssa, ptr %arrayidx97, align 4, !tbaa !19
  %26 = tail call i32 @llvm.umax.i32(i32 %len_best.2309.lcssa, i32 3)
  br label %if.end104

do.body.loopexit:                                 ; preds = %for.inc
  br label %do.body

do.body:                                          ; preds = %do.body.loopexit, %for.cond.preheader
  %len_best.2.lcssa = phi i32 [ %len_best.1, %for.cond.preheader ], [ %len_limit.0, %do.body.loopexit ]
  %sub95294 = add nsw i32 %matches_count.1, -1
  %idxprom96295 = zext i32 %sub95294 to i64
  %arrayidx97296 = getelementptr inbounds nuw %struct.lzma_match, ptr %matches, i64 %idxprom96295
  store i32 %len_best.2.lcssa, ptr %arrayidx97296, align 4, !tbaa !19
  %depth = getelementptr inbounds nuw i8, ptr %mf, i64 92
  %27 = load i32, ptr %depth, align 4, !tbaa !24
  %son = getelementptr inbounds nuw i8, ptr %mf, i64 72
  %28 = load ptr, ptr %son, align 8, !tbaa !25
  %cyclic_pos = getelementptr inbounds nuw i8, ptr %mf, i64 80
  %29 = load i32, ptr %cyclic_pos, align 8, !tbaa !26
  %shl.i = shl i32 %29, 1
  %idx.ext.i214 = zext i32 %shl.i to i64
  %add.ptr.i215 = getelementptr inbounds nuw i32, ptr %28, i64 %idx.ext.i214
  %add.ptr1.i = getelementptr inbounds nuw i8, ptr %add.ptr.i215, i64 4
  %sub104.i = sub i32 %add, %18
  %cmp106.i = icmp ne i32 %27, 0
  %cmp5.not107.i = icmp ult i32 %sub104.i, %19
  %or.cond108.i = and i1 %cmp5.not107.i, %cmp106.i
  br i1 %or.cond108.i, label %if.end.i.preheader, label %if.then.i

if.end.i.preheader:                               ; preds = %do.body
  br label %if.end.i

if.then.i.loopexit:                               ; preds = %if.end55.i
  %ptr1.1.i.lcssa = phi ptr [ %ptr1.1.i, %if.end55.i ]
  %ptr0.1.i.lcssa = phi ptr [ %ptr0.1.i, %if.end55.i ]
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.loopexit, %do.body
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i215, %do.body ], [ %ptr1.1.i.lcssa, %if.then.i.loopexit ]
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %do.body ], [ %ptr0.1.i.lcssa, %if.then.i.loopexit ]
  store i32 0, ptr %ptr0.0.lcssa.i, align 4, !tbaa !15
  store i32 0, ptr %ptr1.0.lcssa.i, align 4, !tbaa !15
  br label %bt_skip_func.exit

if.end.i:                                         ; preds = %if.end55.i, %if.end.i.preheader
  %dec115.in.i = phi i32 [ %dec115.i, %if.end55.i ], [ %27, %if.end.i.preheader ]
  %sub114.i = phi i32 [ %sub.i216, %if.end55.i ], [ %sub104.i, %if.end.i.preheader ]
  %cur_match.addr.0113.i = phi i32 [ %cur_match.addr.1.i, %if.end55.i ], [ %18, %if.end.i.preheader ]
  %ptr0.0112.i = phi ptr [ %ptr0.1.i, %if.end55.i ], [ %add.ptr1.i, %if.end.i.preheader ]
  %len1.0111.i = phi i32 [ %len1.1.i, %if.end55.i ], [ 0, %if.end.i.preheader ]
  %len0.0110.i = phi i32 [ %len0.1.i, %if.end55.i ], [ 0, %if.end.i.preheader ]
  %ptr1.0109.i = phi ptr [ %ptr1.1.i, %if.end55.i ], [ %add.ptr.i215, %if.end.i.preheader ]
  %dec115.i = add i32 %dec115.in.i, -1
  %sub6.i = sub i32 %29, %sub114.i
  %cmp7.i = icmp ugt i32 %sub114.i, %29
  %cond.i = select i1 %cmp7.i, i32 %19, i32 0
  %add.i = add i32 %sub6.i, %cond.i
  %shl8.i = shl i32 %add.i, 1
  %idx.ext9.i = zext i32 %shl8.i to i64
  %add.ptr10.i = getelementptr inbounds nuw i32, ptr %28, i64 %idx.ext9.i
  %idx.ext11.i = zext i32 %sub114.i to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i
  %cond17.i = tail call i32 @llvm.umin.i32(i32 %len0.0110.i, i32 %len1.0111.i)
  %idxprom.i = zext i32 %cond17.i to i64
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %add.ptr12.i, i64 %idxprom.i
  %30 = load i8, ptr %arrayidx.i, align 1, !tbaa !14
  %arrayidx19.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 %idxprom.i
  %31 = load i8, ptr %arrayidx19.i, align 1, !tbaa !14
  %cmp21.i = icmp eq i8 %30, %31
  br i1 %cmp21.i, label %while.cond24.i.preheader, label %if.end44.i

while.cond24.i.preheader:                         ; preds = %if.end.i
  br label %while.cond24.i

while.cond24.i:                                   ; preds = %while.body27.i, %while.cond24.i.preheader
  %len.0.i = phi i32 [ %inc.i217, %while.body27.i ], [ %cond17.i, %while.cond24.i.preheader ]
  %inc.i217 = add i32 %len.0.i, 1
  %cmp25.not.i = icmp eq i32 %inc.i217, %len_limit.0
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i217 to i64
  %arrayidx29.i = getelementptr inbounds nuw i8, ptr %add.ptr12.i, i64 %idxprom28.i
  %32 = load i8, ptr %arrayidx29.i, align 1, !tbaa !14
  %arrayidx32.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 %idxprom28.i
  %33 = load i8, ptr %arrayidx32.i, align 1, !tbaa !14
  %cmp34.not.i = icmp eq i8 %32, %33
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i.loopexit, !llvm.loop !27

if.then40.i:                                      ; preds = %while.cond24.i
  %ptr0.0112.i.lcssa = phi ptr [ %ptr0.0112.i, %while.cond24.i ]
  %ptr1.0109.i.lcssa = phi ptr [ %ptr1.0109.i, %while.cond24.i ]
  %add.ptr10.i.lcssa = phi ptr [ %add.ptr10.i, %while.cond24.i ]
  %34 = load i32, ptr %add.ptr10.i.lcssa, align 4, !tbaa !15
  store i32 %34, ptr %ptr1.0109.i.lcssa, align 4, !tbaa !15
  %arrayidx42.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i.lcssa, i64 4
  %35 = load i32, ptr %arrayidx42.i, align 4, !tbaa !15
  store i32 %35, ptr %ptr0.0112.i.lcssa, align 4, !tbaa !15
  br label %bt_skip_func.exit

if.end44.i.loopexit:                              ; preds = %while.body27.i
  %inc.i217.lcssa316 = phi i32 [ %inc.i217, %while.body27.i ]
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end44.i.loopexit, %if.end.i
  %len.1.i = phi i32 [ %cond17.i, %if.end.i ], [ %inc.i217.lcssa316, %if.end44.i.loopexit ]
  %idxprom45.i = zext i32 %len.1.i to i64
  %arrayidx46.i = getelementptr inbounds nuw i8, ptr %add.ptr12.i, i64 %idxprom45.i
  %36 = load i8, ptr %arrayidx46.i, align 1, !tbaa !14
  %arrayidx49.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 %idxprom45.i
  %37 = load i8, ptr %arrayidx49.i, align 1, !tbaa !14
  %cmp51.i = icmp ult i8 %36, %37
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0113.i, ptr %ptr1.0109.i, align 4, !tbaa !15
  %add.ptr54.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 4
  br label %if.end55.i

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0113.i, ptr %ptr0.0112.i, align 4, !tbaa !15
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0109.i, %if.else.i ]
  %len0.1.i = phi i32 [ %len0.0110.i, %if.then53.i ], [ %len.1.i, %if.else.i ]
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0111.i, %if.else.i ]
  %ptr0.1.i = phi ptr [ %ptr0.0112.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4, !tbaa !15
  %sub.i216 = sub i32 %add, %cur_match.addr.1.i
  %cmp.i = icmp ne i32 %dec115.i, 0
  %cmp5.not.i = icmp ult i32 %sub.i216, %19
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %if.then.i.loopexit

bt_skip_func.exit:                                ; preds = %if.then40.i, %if.then.i
  %38 = load i32, ptr %cyclic_pos, align 8, !tbaa !26
  %inc.i218 = add i32 %38, 1
  %39 = load i32, ptr %cyclic_size, align 4, !tbaa !18
  %cmp.i219 = icmp eq i32 %inc.i218, %39
  %spec.store.select.i = select i1 %cmp.i219, i32 0, i32 %inc.i218
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8
  %40 = load i32, ptr %0, align 8, !tbaa !0
  %inc2.i = add i32 %40, 1
  store i32 %inc2.i, ptr %0, align 8, !tbaa !0
  %41 = load i32, ptr %offset, align 4, !tbaa !13
  %add.i221 = add i32 %41, %inc2.i
  %cmp4.i = icmp eq i32 %add.i221, -1
  br i1 %cmp4.i, label %if.then5.i, label %cleanup130

if.then5.i:                                       ; preds = %bt_skip_func.exit
  %sub.i.i = xor i32 %39, -1
  %hash_size_sum.i.i = getelementptr inbounds nuw i8, ptr %mf, i64 108
  %42 = load i32, ptr %hash_size_sum.i.i, align 4, !tbaa !28
  %sons_count.i.i = getelementptr inbounds nuw i8, ptr %mf, i64 112
  %43 = load i32, ptr %sons_count.i.i, align 8, !tbaa !29
  %add.i.i = add i32 %43, %42
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  %arrayidx.i.i = getelementptr inbounds nuw i32, ptr %13, i64 %indvars.iv.i.i
  %44 = load i32, ptr %arrayidx.i.i, align 4, !tbaa !15
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %44, i32 %sub.i.i)
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4, !tbaa !15
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %normalize.exit.i.loopexit, label %for.body.i.i, !llvm.loop !30

normalize.exit.i.loopexit:                        ; preds = %for.body.i.i
  br label %normalize.exit.i

normalize.exit.i:                                 ; preds = %normalize.exit.i.loopexit, %if.then5.i
  %45 = load i32, ptr %offset, align 4, !tbaa !13
  %sub8.i.i = sub i32 %45, %sub.i.i
  store i32 %sub8.i.i, ptr %offset, align 4, !tbaa !13
  br label %cleanup130

if.end104:                                        ; preds = %for.end, %if.end75
  %len_best.3 = phi i32 [ %26, %for.end ], [ 3, %if.end75 ]
  %depth110 = getelementptr inbounds nuw i8, ptr %mf, i64 92
  %46 = load i32, ptr %depth110, align 4, !tbaa !24
  %son111 = getelementptr inbounds nuw i8, ptr %mf, i64 72
  %47 = load ptr, ptr %son111, align 8, !tbaa !25
  %cyclic_pos112 = getelementptr inbounds nuw i8, ptr %mf, i64 80
  %48 = load i32, ptr %cyclic_pos112, align 8, !tbaa !26
  %idx.ext114 = zext nneg i32 %matches_count.1 to i64
  %add.ptr115 = getelementptr inbounds nuw %struct.lzma_match, ptr %matches, i64 %idx.ext114
  %shl.i222 = shl i32 %48, 1
  %idx.ext.i223 = zext i32 %shl.i222 to i64
  %add.ptr.i224 = getelementptr inbounds nuw i32, ptr %47, i64 %idx.ext.i223
  %add.ptr1.i225 = getelementptr inbounds nuw i8, ptr %add.ptr.i224, i64 4
  %sub134.i = sub i32 %add, %18
  %cmp136.i = icmp ne i32 %46, 0
  %cmp5.not137.i = icmp ult i32 %sub134.i, %19
  %or.cond138.i = and i1 %cmp5.not137.i, %cmp136.i
  br i1 %or.cond138.i, label %if.end.i229.preheader, label %if.then.i226

if.end.i229.preheader:                            ; preds = %if.end104
  br label %if.end.i229

if.then.i226.loopexit:                            ; preds = %cleanup64.i
  %ptr0.1.i247.lcssa = phi ptr [ %ptr0.1.i247, %cleanup64.i ]
  %ptr1.1.i248.lcssa = phi ptr [ %ptr1.1.i248, %cleanup64.i ]
  %matches.addr.1.i.lcssa = phi ptr [ %matches.addr.1.i, %cleanup64.i ]
  br label %if.then.i226

if.then.i226:                                     ; preds = %if.then.i226.loopexit, %if.end104
  %matches.addr.0.lcssa.i = phi ptr [ %add.ptr115, %if.end104 ], [ %matches.addr.1.i.lcssa, %if.then.i226.loopexit ]
  %ptr0.0.lcssa.i227 = phi ptr [ %add.ptr1.i225, %if.end104 ], [ %ptr0.1.i247.lcssa, %if.then.i226.loopexit ]
  %ptr1.0.lcssa.i228 = phi ptr [ %add.ptr.i224, %if.end104 ], [ %ptr1.1.i248.lcssa, %if.then.i226.loopexit ]
  store i32 0, ptr %ptr0.0.lcssa.i227, align 4, !tbaa !15
  store i32 0, ptr %ptr1.0.lcssa.i228, align 4, !tbaa !15
  br label %bt_find_func.exit

if.end.i229:                                      ; preds = %cleanup64.i, %if.end.i229.preheader
  %dec147.in.i = phi i32 [ %dec147.i, %cleanup64.i ], [ %46, %if.end.i229.preheader ]
  %sub146.i = phi i32 [ %sub.i253, %cleanup64.i ], [ %sub134.i, %if.end.i229.preheader ]
  %cur_match.addr.0145.i = phi i32 [ %cur_match.addr.1.i252, %cleanup64.i ], [ %18, %if.end.i229.preheader ]
  %len1.0144.i = phi i32 [ %len1.1.i250, %cleanup64.i ], [ 0, %if.end.i229.preheader ]
  %len0.0143.i = phi i32 [ %len0.1.i249, %cleanup64.i ], [ 0, %if.end.i229.preheader ]
  %ptr1.0142.i = phi ptr [ %ptr1.1.i248, %cleanup64.i ], [ %add.ptr.i224, %if.end.i229.preheader ]
  %ptr0.0141.i = phi ptr [ %ptr0.1.i247, %cleanup64.i ], [ %add.ptr1.i225, %if.end.i229.preheader ]
  %len_best.addr.0140.i = phi i32 [ %len_best.addr.1.i, %cleanup64.i ], [ %len_best.3, %if.end.i229.preheader ]
  %matches.addr.0139.i = phi ptr [ %matches.addr.1.i, %cleanup64.i ], [ %add.ptr115, %if.end.i229.preheader ]
  %dec147.i = add i32 %dec147.in.i, -1
  %sub6.i230 = sub i32 %48, %sub146.i
  %cmp7.i231 = icmp ugt i32 %sub146.i, %48
  %cond.i232 = select i1 %cmp7.i231, i32 %19, i32 0
  %add.i233 = add i32 %sub6.i230, %cond.i232
  %shl8.i234 = shl i32 %add.i233, 1
  %idx.ext9.i235 = zext i32 %shl8.i234 to i64
  %add.ptr10.i236 = getelementptr inbounds nuw i32, ptr %47, i64 %idx.ext9.i235
  %idx.ext11.i237 = zext i32 %sub146.i to i64
  %idx.neg.i238 = sub nsw i64 0, %idx.ext11.i237
  %add.ptr12.i239 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i238
  %cond17.i240 = tail call i32 @llvm.umin.i32(i32 %len0.0143.i, i32 %len1.0144.i)
  %idxprom.i241 = zext i32 %cond17.i240 to i64
  %arrayidx.i242 = getelementptr inbounds nuw i8, ptr %add.ptr12.i239, i64 %idxprom.i241
  %49 = load i8, ptr %arrayidx.i242, align 1, !tbaa !14
  %arrayidx19.i243 = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 %idxprom.i241
  %50 = load i8, ptr %arrayidx19.i243, align 1, !tbaa !14
  %cmp21.i244 = icmp eq i8 %49, %50
  br i1 %cmp21.i244, label %while.cond24.i257.preheader, label %if.end50.i

while.cond24.i257.preheader:                      ; preds = %if.end.i229
  br label %while.cond24.i257

while.cond24.i257:                                ; preds = %while.body27.i261, %while.cond24.i257.preheader
  %len.0.i258 = phi i32 [ %inc.i259, %while.body27.i261 ], [ %cond17.i240, %while.cond24.i257.preheader ]
  %inc.i259 = add i32 %len.0.i258, 1
  %cmp25.not.i260 = icmp eq i32 %inc.i259, %len_limit.0
  br i1 %cmp25.not.i260, label %while.end.i, label %while.body27.i261

while.body27.i261:                                ; preds = %while.cond24.i257
  %idxprom28.i262 = zext i32 %inc.i259 to i64
  %arrayidx29.i263 = getelementptr inbounds nuw i8, ptr %add.ptr12.i239, i64 %idxprom28.i262
  %51 = load i8, ptr %arrayidx29.i263, align 1, !tbaa !14
  %arrayidx32.i264 = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 %idxprom28.i262
  %52 = load i8, ptr %arrayidx32.i264, align 1, !tbaa !14
  %cmp34.not.i265 = icmp eq i8 %51, %52
  br i1 %cmp34.not.i265, label %while.cond24.i257, label %while.end.thread.i, !llvm.loop !31

while.end.i:                                      ; preds = %while.cond24.i257
  %cmp38.i = icmp ult i32 %len_best.addr.0140.i, %len_limit.0
  br i1 %cmp38.i, label %if.then45.i, label %if.end50.i

while.end.thread.i:                               ; preds = %while.body27.i261
  %inc.i259.lcssa310 = phi i32 [ %inc.i259, %while.body27.i261 ]
  %cmp38115.i = icmp ult i32 %len_best.addr.0140.i, %inc.i259.lcssa310
  br i1 %cmp38115.i, label %if.then40.thread.i, label %if.end50.i

if.then40.thread.i:                               ; preds = %while.end.thread.i
  store i32 %inc.i259.lcssa310, ptr %matches.addr.0139.i, align 4, !tbaa !19
  %sub42116.i = add i32 %sub146.i, -1
  %dist117.i = getelementptr inbounds nuw i8, ptr %matches.addr.0139.i, i64 4
  store i32 %sub42116.i, ptr %dist117.i, align 4, !tbaa !21
  %incdec.ptr118.i = getelementptr inbounds nuw i8, ptr %matches.addr.0139.i, i64 8
  br label %if.end50.i

if.then45.i:                                      ; preds = %while.end.i
  %sub146.i.lcssa = phi i32 [ %sub146.i, %while.end.i ]
  %ptr1.0142.i.lcssa = phi ptr [ %ptr1.0142.i, %while.end.i ]
  %ptr0.0141.i.lcssa = phi ptr [ %ptr0.0141.i, %while.end.i ]
  %matches.addr.0139.i.lcssa = phi ptr [ %matches.addr.0139.i, %while.end.i ]
  %add.ptr10.i236.lcssa = phi ptr [ %add.ptr10.i236, %while.end.i ]
  store i32 %len_limit.0, ptr %matches.addr.0139.i.lcssa, align 4, !tbaa !19
  %sub42.i = add i32 %sub146.i.lcssa, -1
  %dist.i = getelementptr inbounds nuw i8, ptr %matches.addr.0139.i.lcssa, i64 4
  store i32 %sub42.i, ptr %dist.i, align 4, !tbaa !21
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %matches.addr.0139.i.lcssa, i64 8
  %53 = load i32, ptr %add.ptr10.i236.lcssa, align 4, !tbaa !15
  store i32 %53, ptr %ptr1.0142.i.lcssa, align 4, !tbaa !15
  %arrayidx47.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i236.lcssa, i64 4
  %54 = load i32, ptr %arrayidx47.i, align 4, !tbaa !15
  store i32 %54, ptr %ptr0.0141.i.lcssa, align 4, !tbaa !15
  br label %bt_find_func.exit

if.end50.i:                                       ; preds = %if.then40.thread.i, %while.end.thread.i, %while.end.i, %if.end.i229
  %matches.addr.1.i = phi ptr [ %matches.addr.0139.i, %while.end.i ], [ %matches.addr.0139.i, %if.end.i229 ], [ %matches.addr.0139.i, %while.end.thread.i ], [ %incdec.ptr118.i, %if.then40.thread.i ]
  %len_best.addr.1.i = phi i32 [ %len_best.addr.0140.i, %while.end.i ], [ %len_best.addr.0140.i, %if.end.i229 ], [ %len_best.addr.0140.i, %while.end.thread.i ], [ %inc.i259.lcssa310, %if.then40.thread.i ]
  %len.1.i245 = phi i32 [ %len_limit.0, %while.end.i ], [ %cond17.i240, %if.end.i229 ], [ %inc.i259.lcssa310, %while.end.thread.i ], [ %inc.i259.lcssa310, %if.then40.thread.i ]
  %idxprom51.i = zext i32 %len.1.i245 to i64
  %arrayidx52.i = getelementptr inbounds nuw i8, ptr %add.ptr12.i239, i64 %idxprom51.i
  %55 = load i8, ptr %arrayidx52.i, align 1, !tbaa !14
  %arrayidx55.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 %idxprom51.i
  %56 = load i8, ptr %arrayidx55.i, align 1, !tbaa !14
  %cmp57.i = icmp ult i8 %55, %56
  br i1 %cmp57.i, label %if.then59.i, label %if.else.i246

if.then59.i:                                      ; preds = %if.end50.i
  store i32 %cur_match.addr.0145.i, ptr %ptr1.0142.i, align 4, !tbaa !15
  %add.ptr60.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i236, i64 4
  br label %cleanup64.i

if.else.i246:                                     ; preds = %if.end50.i
  store i32 %cur_match.addr.0145.i, ptr %ptr0.0141.i, align 4, !tbaa !15
  br label %cleanup64.i

cleanup64.i:                                      ; preds = %if.else.i246, %if.then59.i
  %ptr0.1.i247 = phi ptr [ %ptr0.0141.i, %if.then59.i ], [ %add.ptr10.i236, %if.else.i246 ]
  %ptr1.1.i248 = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %ptr1.0142.i, %if.else.i246 ]
  %len0.1.i249 = phi i32 [ %len0.0143.i, %if.then59.i ], [ %len.1.i245, %if.else.i246 ]
  %len1.1.i250 = phi i32 [ %len.1.i245, %if.then59.i ], [ %len1.0144.i, %if.else.i246 ]
  %cur_match.addr.1.in.i251 = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %add.ptr10.i236, %if.else.i246 ]
  %cur_match.addr.1.i252 = load i32, ptr %cur_match.addr.1.in.i251, align 4, !tbaa !15
  %sub.i253 = sub i32 %add, %cur_match.addr.1.i252
  %cmp.i254 = icmp ne i32 %dec147.i, 0
  %cmp5.not.i255 = icmp ult i32 %sub.i253, %19
  %or.cond.i256 = select i1 %cmp.i254, i1 %cmp5.not.i255, i1 false
  br i1 %or.cond.i256, label %if.end.i229, label %if.then.i226.loopexit

bt_find_func.exit:                                ; preds = %if.then45.i, %if.then.i226
  %retval.2.ph.i = phi ptr [ %incdec.ptr.i, %if.then45.i ], [ %matches.addr.0.lcssa.i, %if.then.i226 ]
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.2.ph.i to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 3
  %conv117 = trunc i64 %sub.ptr.div to i32
  %57 = load i32, ptr %cyclic_pos112, align 8, !tbaa !26
  %inc.i267 = add i32 %57, 1
  %58 = load i32, ptr %cyclic_size, align 4, !tbaa !18
  %cmp.i269 = icmp eq i32 %inc.i267, %58
  %spec.store.select.i270 = select i1 %cmp.i269, i32 0, i32 %inc.i267
  store i32 %spec.store.select.i270, ptr %cyclic_pos112, align 8
  %59 = load i32, ptr %0, align 8, !tbaa !0
  %inc2.i272 = add i32 %59, 1
  store i32 %inc2.i272, ptr %0, align 8, !tbaa !0
  %60 = load i32, ptr %offset, align 4, !tbaa !13
  %add.i274 = add i32 %60, %inc2.i272
  %cmp4.i275 = icmp eq i32 %add.i274, -1
  br i1 %cmp4.i275, label %if.then5.i276, label %cleanup130

if.then5.i276:                                    ; preds = %bt_find_func.exit
  %sub.i.i277 = xor i32 %58, -1
  %hash_size_sum.i.i278 = getelementptr inbounds nuw i8, ptr %mf, i64 108
  %61 = load i32, ptr %hash_size_sum.i.i278, align 4, !tbaa !28
  %sons_count.i.i279 = getelementptr inbounds nuw i8, ptr %mf, i64 112
  %62 = load i32, ptr %sons_count.i.i279, align 8, !tbaa !29
  %add.i.i280 = add i32 %62, %61
  %cmp21.not.i.i282 = icmp eq i32 %add.i.i280, 0
  br i1 %cmp21.not.i.i282, label %normalize.exit.i291, label %for.body.preheader.i.i283

for.body.preheader.i.i283:                        ; preds = %if.then5.i276
  %wide.trip.count.i.i284 = zext i32 %add.i.i280 to i64
  br label %for.body.i.i285

for.body.i.i285:                                  ; preds = %for.body.i.i285, %for.body.preheader.i.i283
  %indvars.iv.i.i286 = phi i64 [ 0, %for.body.preheader.i.i283 ], [ %indvars.iv.next.i.i289, %for.body.i.i285 ]
  %arrayidx.i.i287 = getelementptr inbounds nuw i32, ptr %13, i64 %indvars.iv.i.i286
  %63 = load i32, ptr %arrayidx.i.i287, align 4, !tbaa !15
  %storemerge.i.i288 = tail call i32 @llvm.usub.sat.i32(i32 %63, i32 %sub.i.i277)
  store i32 %storemerge.i.i288, ptr %arrayidx.i.i287, align 4, !tbaa !15
  %indvars.iv.next.i.i289 = add nuw nsw i64 %indvars.iv.i.i286, 1
  %exitcond.not.i.i290 = icmp eq i64 %indvars.iv.next.i.i289, %wide.trip.count.i.i284
  br i1 %exitcond.not.i.i290, label %normalize.exit.i291.loopexit, label %for.body.i.i285, !llvm.loop !30

normalize.exit.i291.loopexit:                     ; preds = %for.body.i.i285
  br label %normalize.exit.i291

normalize.exit.i291:                              ; preds = %normalize.exit.i291.loopexit, %if.then5.i276
  %64 = load i32, ptr %offset, align 4, !tbaa !13
  %sub8.i.i292 = sub i32 %64, %sub.i.i277
  store i32 %sub8.i.i292, ptr %offset, align 4, !tbaa !13
  br label %cleanup130

cleanup130:                                       ; preds = %normalize.exit.i291, %bt_find_func.exit, %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %retval.1 = phi i32 [ 0, %if.then4 ], [ %matches_count.1, %bt_skip_func.exit ], [ %matches_count.1, %normalize.exit.i ], [ %conv117, %bt_find_func.exit ], [ %conv117, %normalize.exit.i291 ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!0 = !{!1, !6, i64 24}
!1 = !{!"lzma_mf_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 48, !3, i64 56, !7, i64 64, !7, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112}
!2 = !{!"p1 omnipotent char", !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"int", !4, i64 0}
!7 = !{!"p1 int", !3, i64 0}
!8 = !{!1, !6, i64 36}
!9 = !{!1, !6, i64 96}
!10 = !{!1, !6, i64 104}
!11 = !{!1, !6, i64 40}
!12 = !{!1, !2, i64 0}
!13 = !{!1, !6, i64 20}
!14 = !{!4, !4, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!1, !6, i64 88}
!17 = !{!1, !7, i64 64}
!18 = !{!1, !6, i64 84}
!19 = !{!20, !6, i64 0}
!20 = !{!"", !6, i64 0, !6, i64 4}
!21 = !{!20, !6, i64 4}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!1, !6, i64 92}
!25 = !{!1, !7, i64 72}
!26 = !{!1, !6, i64 80}
!27 = distinct !{!27, !23}
!28 = !{!1, !6, i64 108}
!29 = !{!1, !6, i64 112}
!30 = distinct !{!30, !23}
!31 = distinct !{!31, !23}
