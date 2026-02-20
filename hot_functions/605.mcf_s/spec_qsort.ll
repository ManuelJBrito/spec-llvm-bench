; ModuleID = '/tmp/tmp.RKJasZgDZ9/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/505.mcf_r/src/spec_qsort/spec_qsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @spec_qsort(ptr noundef %a, i64 noundef %n, i64 noundef %es, ptr noundef readonly captures(none) %cmp) local_unnamed_addr #0 {
entry:
  %idx.neg = sub i64 0, %es
  %cmp3 = icmp ne i64 %es, 8
  %cond = zext i1 %cmp3 to i32
  %cmp14 = icmp ne i64 %es, 4
  %cond15 = zext i1 %cmp14 to i32
  %sub.ptr.lhs.cast901 = ptrtoint ptr %a to i64
  %0 = or i64 %es, %sub.ptr.lhs.cast901
  %1 = and i64 %0, 7
  %or.cond902 = icmp eq i64 %1, 0
  %cond4903 = select i1 %or.cond902, i32 %cond, i32 2
  %2 = or i64 %es, %sub.ptr.lhs.cast901
  %3 = and i64 %2, 3
  %or.cond550904 = icmp eq i64 %3, 0
  %cond17905 = select i1 %or.cond550904, i32 %cond15, i32 2
  %cmp18906 = icmp ult i64 %n, 7
  br i1 %cmp18906, label %for.cond.preheader, label %if.end48.lr.ph

if.end48.lr.ph:                                   ; preds = %entry
  %sext = shl i64 %es, 32
  %conv8.i603 = ashr exact i64 %sext, 32
  %div949.i613 = lshr i64 %conv8.i603, 2
  %sext826 = shl i64 %es, 32
  %conv.i623 = ashr exact i64 %sext826, 32
  %div50.i624 = lshr i64 %conv.i623, 3
  %sext827 = shl i64 %es, 32
  %conv8.i635 = ashr exact i64 %sext827, 32
  %div949.i645 = lshr i64 %conv8.i635, 2
  %sext828 = shl i64 %es, 32
  %conv.i655 = ashr exact i64 %sext828, 32
  %div50.i656 = lshr i64 %conv.i655, 3
  %sext831 = shl i64 %es, 32
  %conv8.i667 = ashr exact i64 %sext831, 32
  %div949.i677 = lshr i64 %conv8.i667, 2
  %sext832 = shl i64 %es, 32
  %conv.i687 = ashr exact i64 %sext832, 32
  %div50.i688 = lshr i64 %conv.i687, 3
  %idx.neg147 = sub i64 0, %es
  %idx.neg150 = sub i64 0, %es
  %sext829 = shl i64 %es, 32
  %conv8.i699 = ashr exact i64 %sext829, 32
  %div949.i709 = lshr i64 %conv8.i699, 2
  %sext830 = shl i64 %es, 32
  %conv.i719 = ashr exact i64 %sext830, 32
  %div50.i720 = lshr i64 %conv.i719, 3
  %idx.neg171 = sub i64 0, %es
  br label %if.end48

for.cond.preheader.loopexit:                      ; preds = %if.then292
  %add.ptr294.lcssa = phi ptr [ %add.ptr294, %if.then292 ]
  %div295.lcssa = phi i64 [ %div295, %if.then292 ]
  %or.cond.lcssa1082 = phi i1 [ %or.cond, %if.then292 ]
  %cond4.lcssa1081 = phi i32 [ %cond4, %if.then292 ]
  %or.cond550.lcssa1080 = phi i1 [ %or.cond550, %if.then292 ]
  %cond17.lcssa1079 = phi i32 [ %cond17, %if.then292 ]
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.loopexit, %entry
  %n.addr.0.lcssa = phi i64 [ %n, %entry ], [ %div295.lcssa, %for.cond.preheader.loopexit ]
  %a.addr.0.lcssa = phi ptr [ %a, %entry ], [ %add.ptr294.lcssa, %for.cond.preheader.loopexit ]
  %or.cond.lcssa = phi i1 [ %or.cond902, %entry ], [ %or.cond.lcssa1082, %for.cond.preheader.loopexit ]
  %cond4.lcssa = phi i32 [ %cond4903, %entry ], [ %cond4.lcssa1081, %for.cond.preheader.loopexit ]
  %or.cond550.lcssa = phi i1 [ %or.cond550904, %entry ], [ %or.cond550.lcssa1080, %for.cond.preheader.loopexit ]
  %cond17.lcssa = phi i32 [ %cond17905, %entry ], [ %cond17.lcssa1079, %for.cond.preheader.loopexit ]
  %mul = mul i64 %n.addr.0.lcssa, %es
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %a.addr.0.lcssa, i64 %mul
  %pm.01002 = getelementptr inbounds nuw i8, ptr %a.addr.0.lcssa, i64 %es
  %cmp201003 = icmp samesign ult i64 %es, %mul
  br i1 %cmp201003, label %for.cond21.preheader.lr.ph, label %cleanup

for.cond21.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cond4.lcssa.fr = freeze i32 %cond4.lcssa
  %cmp26 = icmp eq i32 %cond4.lcssa.fr, 0
  %sext839 = shl i64 %es, 32
  %conv8.i = ashr exact i64 %sext839, 32
  %div949.i = lshr i64 %conv8.i, 2
  %sext840 = shl i64 %es, 32
  %conv.i = ashr exact i64 %sext840, 32
  %div50.i = lshr i64 %conv.i, 3
  %or.cond.lcssa.fr = freeze i1 %or.cond.lcssa
  %or.cond550.lcssa.fr = freeze i1 %or.cond550.lcssa
  br i1 %cmp26, label %for.cond21.preheader.us.preheader, label %for.cond21.preheader.lr.ph.split

for.cond21.preheader.us.preheader:                ; preds = %for.cond21.preheader.lr.ph
  br label %for.cond21.preheader.us

for.cond21.preheader.us:                          ; preds = %for.inc45.us, %for.cond21.preheader.us.preheader
  %pm.01004.us = phi ptr [ %pm.0.us, %for.inc45.us ], [ %pm.01002, %for.cond21.preheader.us.preheader ]
  %cmp22976.us = icmp ugt ptr %pm.01004.us, %a.addr.0.lcssa
  br i1 %cmp22976.us, label %land.rhs.us.us.preheader, label %for.inc45.us

land.rhs.us.us.preheader:                         ; preds = %for.cond21.preheader.us
  br label %land.rhs.us.us

for.inc45.us.loopexit:                            ; preds = %for.body25.us.us, %land.rhs.us.us
  br label %for.inc45.us

for.inc45.us:                                     ; preds = %for.inc45.us.loopexit, %for.cond21.preheader.us
  %pm.0.us = getelementptr inbounds nuw i8, ptr %pm.01004.us, i64 %es
  %cmp20.us = icmp ult ptr %pm.0.us, %add.ptr19
  br i1 %cmp20.us, label %for.cond21.preheader.us, label %cleanup.loopexit, !llvm.loop !0

land.rhs.us.us:                                   ; preds = %for.body25.us.us, %land.rhs.us.us.preheader
  %pl.0977.us.us = phi ptr [ %add.ptr23.us.us, %for.body25.us.us ], [ %pm.01004.us, %land.rhs.us.us.preheader ]
  %add.ptr23.us.us = getelementptr inbounds i8, ptr %pl.0977.us.us, i64 %idx.neg
  %call.us.us = tail call i32 %cmp(ptr noundef nonnull %add.ptr23.us.us, ptr noundef nonnull %pl.0977.us.us) #2
  %cmp24.us.us = icmp sgt i32 %call.us.us, 0
  br i1 %cmp24.us.us, label %for.body25.us.us, label %for.inc45.us.loopexit

for.body25.us.us:                                 ; preds = %land.rhs.us.us
  %4 = load i64, ptr %pl.0977.us.us, align 8
  %5 = load i64, ptr %add.ptr23.us.us, align 8
  store i64 %5, ptr %pl.0977.us.us, align 8
  store i64 %4, ptr %add.ptr23.us.us, align 8
  %cmp22.us.us = icmp ugt ptr %add.ptr23.us.us, %a.addr.0.lcssa
  br i1 %cmp22.us.us, label %land.rhs.us.us, label %for.inc45.us.loopexit, !llvm.loop !2

for.cond21.preheader.lr.ph.split:                 ; preds = %for.cond21.preheader.lr.ph
  %cond17.lcssa.fr = freeze i32 %cond17.lcssa
  %cmp32 = icmp eq i32 %cond17.lcssa.fr, 0
  br i1 %cmp32, label %for.cond21.preheader.us1012.preheader, label %for.cond21.preheader.lr.ph.split.split

for.cond21.preheader.us1012.preheader:            ; preds = %for.cond21.preheader.lr.ph.split
  br label %for.cond21.preheader.us1012

for.cond21.preheader.us1012:                      ; preds = %for.inc45.us1015, %for.cond21.preheader.us1012.preheader
  %pm.01004.us1013 = phi ptr [ %pm.0.us1016, %for.inc45.us1015 ], [ %pm.01002, %for.cond21.preheader.us1012.preheader ]
  %cmp22976.us1014 = icmp ugt ptr %pm.01004.us1013, %a.addr.0.lcssa
  br i1 %cmp22976.us1014, label %land.rhs.us978.us.preheader, label %for.inc45.us1015

land.rhs.us978.us.preheader:                      ; preds = %for.cond21.preheader.us1012
  br label %land.rhs.us978.us

for.inc45.us1015.loopexit:                        ; preds = %for.body25.us983.us, %land.rhs.us978.us
  br label %for.inc45.us1015

for.inc45.us1015:                                 ; preds = %for.inc45.us1015.loopexit, %for.cond21.preheader.us1012
  %pm.0.us1016 = getelementptr inbounds nuw i8, ptr %pm.01004.us1013, i64 %es
  %cmp20.us1017 = icmp ult ptr %pm.0.us1016, %add.ptr19
  br i1 %cmp20.us1017, label %for.cond21.preheader.us1012, label %cleanup.loopexit1033, !llvm.loop !0

land.rhs.us978.us:                                ; preds = %for.body25.us983.us, %land.rhs.us978.us.preheader
  %pl.0977.us979.us = phi ptr [ %add.ptr23.us980.us, %for.body25.us983.us ], [ %pm.01004.us1013, %land.rhs.us978.us.preheader ]
  %add.ptr23.us980.us = getelementptr inbounds i8, ptr %pl.0977.us979.us, i64 %idx.neg
  %call.us981.us = tail call i32 %cmp(ptr noundef nonnull %add.ptr23.us980.us, ptr noundef nonnull %pl.0977.us979.us) #2
  %cmp24.us982.us = icmp sgt i32 %call.us981.us, 0
  br i1 %cmp24.us982.us, label %for.body25.us983.us, label %for.inc45.us1015.loopexit

for.body25.us983.us:                              ; preds = %land.rhs.us978.us
  %6 = load i32, ptr %pl.0977.us979.us, align 4
  %7 = load i32, ptr %add.ptr23.us980.us, align 4
  store i32 %7, ptr %pl.0977.us979.us, align 4
  store i32 %6, ptr %add.ptr23.us980.us, align 4
  %cmp22.us985.us = icmp ugt ptr %add.ptr23.us980.us, %a.addr.0.lcssa
  br i1 %cmp22.us985.us, label %land.rhs.us978.us, label %for.inc45.us1015.loopexit, !llvm.loop !2

for.cond21.preheader.lr.ph.split.split:           ; preds = %for.cond21.preheader.lr.ph.split
  br i1 %or.cond.lcssa.fr, label %for.cond21.preheader.us1019.preheader, label %for.cond21.preheader.lr.ph.split.split.split

for.cond21.preheader.us1019.preheader:            ; preds = %for.cond21.preheader.lr.ph.split.split
  br label %for.cond21.preheader.us1019

for.cond21.preheader.us1019:                      ; preds = %for.inc45.us1022, %for.cond21.preheader.us1019.preheader
  %pm.01004.us1020 = phi ptr [ %pm.0.us1023, %for.inc45.us1022 ], [ %pm.01002, %for.cond21.preheader.us1019.preheader ]
  %cmp22976.us1021 = icmp ugt ptr %pm.01004.us1020, %a.addr.0.lcssa
  br i1 %cmp22976.us1021, label %land.rhs.us986.us.preheader, label %for.inc45.us1022

land.rhs.us986.us.preheader:                      ; preds = %for.cond21.preheader.us1019
  br label %land.rhs.us986.us

for.inc45.us1022.loopexit:                        ; preds = %for.inc.loopexit.us.us, %land.rhs.us986.us
  br label %for.inc45.us1022

for.inc45.us1022:                                 ; preds = %for.inc45.us1022.loopexit, %for.cond21.preheader.us1019
  %pm.0.us1023 = getelementptr inbounds nuw i8, ptr %pm.01004.us1020, i64 %es
  %cmp20.us1024 = icmp ult ptr %pm.0.us1023, %add.ptr19
  br i1 %cmp20.us1024, label %for.cond21.preheader.us1019, label %cleanup.loopexit1034, !llvm.loop !0

land.rhs.us986.us:                                ; preds = %for.inc.loopexit.us.us, %land.rhs.us986.us.preheader
  %pl.0977.us987.us = phi ptr [ %add.ptr23.us988.us, %for.inc.loopexit.us.us ], [ %pm.01004.us1020, %land.rhs.us986.us.preheader ]
  %add.ptr23.us988.us = getelementptr inbounds i8, ptr %pl.0977.us987.us, i64 %idx.neg
  %call.us989.us = tail call i32 %cmp(ptr noundef nonnull %add.ptr23.us988.us, ptr noundef nonnull %pl.0977.us987.us) #2
  %cmp24.us990.us = icmp sgt i32 %call.us989.us, 0
  br i1 %cmp24.us990.us, label %do.body.i.us.us.preheader, label %for.inc45.us1022.loopexit

do.body.i.us.us.preheader:                        ; preds = %land.rhs.us986.us
  br label %do.body.i.us.us

do.body.i.us.us:                                  ; preds = %do.body.i.us.us, %do.body.i.us.us.preheader
  %pj.0.i.us.us = phi ptr [ %incdec.ptr1.i.us.us, %do.body.i.us.us ], [ %add.ptr23.us988.us, %do.body.i.us.us.preheader ]
  %pi.0.i.us.us = phi ptr [ %incdec.ptr.i.us.us, %do.body.i.us.us ], [ %pl.0977.us987.us, %do.body.i.us.us.preheader ]
  %i.0.i.us.us = phi i64 [ %dec.i.us.us, %do.body.i.us.us ], [ %div50.i, %do.body.i.us.us.preheader ]
  %8 = load i64, ptr %pi.0.i.us.us, align 8
  %9 = load i64, ptr %pj.0.i.us.us, align 8
  %incdec.ptr.i.us.us = getelementptr inbounds nuw i8, ptr %pi.0.i.us.us, i64 8
  store i64 %9, ptr %pi.0.i.us.us, align 8
  %incdec.ptr1.i.us.us = getelementptr inbounds nuw i8, ptr %pj.0.i.us.us, i64 8
  store i64 %8, ptr %pj.0.i.us.us, align 8
  %dec.i.us.us = add nsw i64 %i.0.i.us.us, -1
  %cmp2.i.us.us = icmp samesign ugt i64 %i.0.i.us.us, 1
  br i1 %cmp2.i.us.us, label %do.body.i.us.us, label %for.inc.loopexit.us.us, !llvm.loop !3

for.inc.loopexit.us.us:                           ; preds = %do.body.i.us.us
  %cmp22.us993.us = icmp ugt ptr %add.ptr23.us988.us, %a.addr.0.lcssa
  br i1 %cmp22.us993.us, label %land.rhs.us986.us, label %for.inc45.us1022.loopexit, !llvm.loop !2

for.cond21.preheader.lr.ph.split.split.split:     ; preds = %for.cond21.preheader.lr.ph.split.split
  br i1 %or.cond550.lcssa.fr, label %for.cond21.preheader.us1026.preheader, label %for.cond21.preheader.preheader

for.cond21.preheader.preheader:                   ; preds = %for.cond21.preheader.lr.ph.split.split.split
  br label %for.cond21.preheader

for.cond21.preheader.us1026.preheader:            ; preds = %for.cond21.preheader.lr.ph.split.split.split
  br label %for.cond21.preheader.us1026

for.cond21.preheader.us1026:                      ; preds = %for.inc45.us1029, %for.cond21.preheader.us1026.preheader
  %pm.01004.us1027 = phi ptr [ %pm.0.us1030, %for.inc45.us1029 ], [ %pm.01002, %for.cond21.preheader.us1026.preheader ]
  %cmp22976.us1028 = icmp ugt ptr %pm.01004.us1027, %a.addr.0.lcssa
  br i1 %cmp22976.us1028, label %land.rhs.us994.us.preheader, label %for.inc45.us1029

land.rhs.us994.us.preheader:                      ; preds = %for.cond21.preheader.us1026
  br label %land.rhs.us994.us

for.inc45.us1029.loopexit:                        ; preds = %for.inc.loopexit841.us.us, %land.rhs.us994.us
  br label %for.inc45.us1029

for.inc45.us1029:                                 ; preds = %for.inc45.us1029.loopexit, %for.cond21.preheader.us1026
  %pm.0.us1030 = getelementptr inbounds nuw i8, ptr %pm.01004.us1027, i64 %es
  %cmp20.us1031 = icmp ult ptr %pm.0.us1030, %add.ptr19
  br i1 %cmp20.us1031, label %for.cond21.preheader.us1026, label %cleanup.loopexit1035, !llvm.loop !0

land.rhs.us994.us:                                ; preds = %for.inc.loopexit841.us.us, %land.rhs.us994.us.preheader
  %pl.0977.us995.us = phi ptr [ %add.ptr23.us996.us, %for.inc.loopexit841.us.us ], [ %pm.01004.us1027, %land.rhs.us994.us.preheader ]
  %add.ptr23.us996.us = getelementptr inbounds i8, ptr %pl.0977.us995.us, i64 %idx.neg
  %call.us997.us = tail call i32 %cmp(ptr noundef nonnull %add.ptr23.us996.us, ptr noundef nonnull %pl.0977.us995.us) #2
  %cmp24.us998.us = icmp sgt i32 %call.us997.us, 0
  br i1 %cmp24.us998.us, label %do.body12.i.us.us.preheader, label %for.inc45.us1029.loopexit

do.body12.i.us.us.preheader:                      ; preds = %land.rhs.us994.us
  br label %do.body12.i.us.us

do.body12.i.us.us:                                ; preds = %do.body12.i.us.us, %do.body12.i.us.us.preheader
  %i7.0.i.us.us = phi i64 [ %dec17.i.us.us, %do.body12.i.us.us ], [ %div949.i, %do.body12.i.us.us.preheader ]
  %pi10.0.i.us.us = phi ptr [ %incdec.ptr14.i.us.us, %do.body12.i.us.us ], [ %pl.0977.us995.us, %do.body12.i.us.us.preheader ]
  %pj11.0.i.us.us = phi ptr [ %incdec.ptr15.i.us.us, %do.body12.i.us.us ], [ %add.ptr23.us996.us, %do.body12.i.us.us.preheader ]
  %10 = load i32, ptr %pi10.0.i.us.us, align 4
  %11 = load i32, ptr %pj11.0.i.us.us, align 4
  %incdec.ptr14.i.us.us = getelementptr inbounds nuw i8, ptr %pi10.0.i.us.us, i64 4
  store i32 %11, ptr %pi10.0.i.us.us, align 4
  %incdec.ptr15.i.us.us = getelementptr inbounds nuw i8, ptr %pj11.0.i.us.us, i64 4
  store i32 %10, ptr %pj11.0.i.us.us, align 4
  %dec17.i.us.us = add nsw i64 %i7.0.i.us.us, -1
  %cmp18.i.us.us = icmp samesign ugt i64 %i7.0.i.us.us, 1
  br i1 %cmp18.i.us.us, label %do.body12.i.us.us, label %for.inc.loopexit841.us.us, !llvm.loop !4

for.inc.loopexit841.us.us:                        ; preds = %do.body12.i.us.us
  %cmp22.us1001.us = icmp ugt ptr %add.ptr23.us996.us, %a.addr.0.lcssa
  br i1 %cmp22.us1001.us, label %land.rhs.us994.us, label %for.inc45.us1029.loopexit, !llvm.loop !2

for.cond21.preheader:                             ; preds = %for.inc45, %for.cond21.preheader.preheader
  %pm.01004 = phi ptr [ %pm.0, %for.inc45 ], [ %pm.01002, %for.cond21.preheader.preheader ]
  %cmp22976 = icmp ugt ptr %pm.01004, %a.addr.0.lcssa
  br i1 %cmp22976, label %land.rhs.preheader, label %for.inc45

land.rhs.preheader:                               ; preds = %for.cond21.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.loopexit842, %land.rhs.preheader
  %pl.0977 = phi ptr [ %add.ptr23, %for.inc.loopexit842 ], [ %pm.01004, %land.rhs.preheader ]
  %add.ptr23 = getelementptr inbounds i8, ptr %pl.0977, i64 %idx.neg
  %call = tail call i32 %cmp(ptr noundef nonnull %add.ptr23, ptr noundef nonnull %pl.0977) #2
  %cmp24 = icmp sgt i32 %call, 0
  br i1 %cmp24, label %do.body27.i.preheader, label %for.inc45.loopexit

do.body27.i.preheader:                            ; preds = %land.rhs
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.body27.i, %do.body27.i.preheader
  %i22.0.i = phi i64 [ %dec32.i, %do.body27.i ], [ %conv8.i, %do.body27.i.preheader ]
  %pi25.0.i = phi ptr [ %incdec.ptr29.i, %do.body27.i ], [ %pl.0977, %do.body27.i.preheader ]
  %pj26.0.i = phi ptr [ %incdec.ptr30.i, %do.body27.i ], [ %add.ptr23, %do.body27.i.preheader ]
  %12 = load i8, ptr %pi25.0.i, align 1
  %13 = load i8, ptr %pj26.0.i, align 1
  %incdec.ptr29.i = getelementptr inbounds nuw i8, ptr %pi25.0.i, i64 1
  store i8 %13, ptr %pi25.0.i, align 1
  %incdec.ptr30.i = getelementptr inbounds nuw i8, ptr %pj26.0.i, i64 1
  store i8 %12, ptr %pj26.0.i, align 1
  %dec32.i = add nsw i64 %i22.0.i, -1
  %cmp33.i = icmp sgt i64 %i22.0.i, 1
  br i1 %cmp33.i, label %do.body27.i, label %for.inc.loopexit842, !llvm.loop !5

for.inc.loopexit842:                              ; preds = %do.body27.i
  %cmp22 = icmp ugt ptr %add.ptr23, %a.addr.0.lcssa
  br i1 %cmp22, label %land.rhs, label %for.inc45.loopexit, !llvm.loop !2

for.inc45.loopexit:                               ; preds = %for.inc.loopexit842, %land.rhs
  br label %for.inc45

for.inc45:                                        ; preds = %for.inc45.loopexit, %for.cond21.preheader
  %pm.0 = getelementptr inbounds nuw i8, ptr %pm.01004, i64 %es
  %cmp20 = icmp ult ptr %pm.0, %add.ptr19
  br i1 %cmp20, label %for.cond21.preheader, label %cleanup.loopexit1036, !llvm.loop !0

if.end48:                                         ; preds = %if.then292, %if.end48.lr.ph
  %cond17913 = phi i32 [ %cond17905, %if.end48.lr.ph ], [ %cond17, %if.then292 ]
  %or.cond550912 = phi i1 [ %or.cond550904, %if.end48.lr.ph ], [ %or.cond550, %if.then292 ]
  %cond4911 = phi i32 [ %cond4903, %if.end48.lr.ph ], [ %cond4, %if.then292 ]
  %or.cond910 = phi i1 [ %or.cond902, %if.end48.lr.ph ], [ %or.cond, %if.then292 ]
  %sub.ptr.lhs.cast909 = phi i64 [ %sub.ptr.lhs.cast901, %if.end48.lr.ph ], [ %sub.ptr.lhs.cast, %if.then292 ]
  %a.addr.0908 = phi ptr [ %a, %if.end48.lr.ph ], [ %add.ptr294, %if.then292 ]
  %n.addr.0907 = phi i64 [ %n, %if.end48.lr.ph ], [ %div295, %if.then292 ]
  %or.cond550.lcssa864.fr = freeze i1 %or.cond550912
  %or.cond.lcssa868.fr = freeze i1 %or.cond910
  %cond17913.fr = freeze i32 %cond17913
  %div548 = lshr i64 %n.addr.0907, 1
  %mul49 = mul i64 %div548, %es
  %add.ptr50 = getelementptr inbounds nuw i8, ptr %a.addr.0908, i64 %mul49
  %cmp51.not = icmp eq i64 %n.addr.0907, 7
  br i1 %cmp51.not, label %if.end77, label %if.then53

if.then53:                                        ; preds = %if.end48
  %sub = add i64 %n.addr.0907, -1
  %mul54 = mul i64 %sub, %es
  %add.ptr55 = getelementptr inbounds nuw i8, ptr %a.addr.0908, i64 %mul54
  %cmp56 = icmp ugt i64 %n.addr.0907, 40
  br i1 %cmp56, label %if.then58, label %if.end75

if.then58:                                        ; preds = %if.then53
  %div59549 = lshr i64 %n.addr.0907, 3
  %mul60 = mul i64 %div59549, %es
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %a.addr.0908, i64 %mul60
  %mul62 = shl i64 %mul60, 1
  %add.ptr63 = getelementptr inbounds nuw i8, ptr %a.addr.0908, i64 %mul62
  %call.i = tail call i32 %cmp(ptr noundef %a.addr.0908, ptr noundef %add.ptr61) #2
  %cmp1.i = icmp slt i32 %call.i, 0
  %call2.i = tail call i32 %cmp(ptr noundef %add.ptr61, ptr noundef %add.ptr63) #2
  br i1 %cmp1.i, label %cond.true.i, label %cond.false11.i

cond.true.i:                                      ; preds = %if.then58
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %med3.exit, label %cond.false.i

cond.false.i:                                     ; preds = %cond.true.i
  %call5.i = tail call i32 %cmp(ptr noundef %a.addr.0908, ptr noundef %add.ptr63) #2
  %cmp6.i = icmp slt i32 %call5.i, 0
  %cond.i = select i1 %cmp6.i, ptr %add.ptr63, ptr %a.addr.0908
  br label %med3.exit

cond.false11.i:                                   ; preds = %if.then58
  %cmp13.i = icmp sgt i32 %call2.i, 0
  br i1 %cmp13.i, label %med3.exit, label %cond.false15.i

cond.false15.i:                                   ; preds = %cond.false11.i
  %call16.i = tail call i32 %cmp(ptr noundef %a.addr.0908, ptr noundef %add.ptr63) #2
  %cmp17.i = icmp slt i32 %call16.i, 0
  %cond21.i = select i1 %cmp17.i, ptr %a.addr.0908, ptr %add.ptr63
  br label %med3.exit

med3.exit:                                        ; preds = %cond.false15.i, %cond.false11.i, %cond.false.i, %cond.true.i
  %cond25.i = phi ptr [ %cond.i, %cond.false.i ], [ %cond21.i, %cond.false15.i ], [ %add.ptr61, %cond.true.i ], [ %add.ptr61, %cond.false11.i ]
  %idx.neg65 = sub i64 0, %mul60
  %add.ptr66 = getelementptr inbounds i8, ptr %add.ptr50, i64 %idx.neg65
  %add.ptr67 = getelementptr inbounds nuw i8, ptr %add.ptr50, i64 %mul60
  %call.i551 = tail call i32 %cmp(ptr noundef %add.ptr66, ptr noundef %add.ptr50) #2
  %cmp1.i552 = icmp slt i32 %call.i551, 0
  %call2.i553 = tail call i32 %cmp(ptr noundef %add.ptr50, ptr noundef %add.ptr67) #2
  br i1 %cmp1.i552, label %cond.true.i561, label %cond.false11.i554

cond.true.i561:                                   ; preds = %med3.exit
  %cmp3.i562 = icmp slt i32 %call2.i553, 0
  br i1 %cmp3.i562, label %med3.exit567, label %cond.false.i563

cond.false.i563:                                  ; preds = %cond.true.i561
  %call5.i564 = tail call i32 %cmp(ptr noundef %add.ptr66, ptr noundef %add.ptr67) #2
  %cmp6.i565 = icmp slt i32 %call5.i564, 0
  %cond.i566 = select i1 %cmp6.i565, ptr %add.ptr67, ptr %add.ptr66
  br label %med3.exit567

cond.false11.i554:                                ; preds = %med3.exit
  %cmp13.i555 = icmp sgt i32 %call2.i553, 0
  br i1 %cmp13.i555, label %med3.exit567, label %cond.false15.i556

cond.false15.i556:                                ; preds = %cond.false11.i554
  %call16.i557 = tail call i32 %cmp(ptr noundef %add.ptr66, ptr noundef %add.ptr67) #2
  %cmp17.i558 = icmp slt i32 %call16.i557, 0
  %cond21.i559 = select i1 %cmp17.i558, ptr %add.ptr66, ptr %add.ptr67
  br label %med3.exit567

med3.exit567:                                     ; preds = %cond.false15.i556, %cond.false11.i554, %cond.false.i563, %cond.true.i561
  %cond25.i560 = phi ptr [ %cond.i566, %cond.false.i563 ], [ %cond21.i559, %cond.false15.i556 ], [ %add.ptr50, %cond.true.i561 ], [ %add.ptr50, %cond.false11.i554 ]
  %idx.neg70 = sub i64 0, %mul62
  %add.ptr71 = getelementptr inbounds i8, ptr %add.ptr55, i64 %idx.neg70
  %add.ptr73 = getelementptr inbounds i8, ptr %add.ptr55, i64 %idx.neg65
  %call.i568 = tail call i32 %cmp(ptr noundef %add.ptr71, ptr noundef %add.ptr73) #2
  %cmp1.i569 = icmp slt i32 %call.i568, 0
  %call2.i570 = tail call i32 %cmp(ptr noundef %add.ptr73, ptr noundef %add.ptr55) #2
  br i1 %cmp1.i569, label %cond.true.i578, label %cond.false11.i571

cond.true.i578:                                   ; preds = %med3.exit567
  %cmp3.i579 = icmp slt i32 %call2.i570, 0
  br i1 %cmp3.i579, label %if.end75, label %cond.false.i580

cond.false.i580:                                  ; preds = %cond.true.i578
  %call5.i581 = tail call i32 %cmp(ptr noundef %add.ptr71, ptr noundef %add.ptr55) #2
  %cmp6.i582 = icmp slt i32 %call5.i581, 0
  %cond.i583 = select i1 %cmp6.i582, ptr %add.ptr55, ptr %add.ptr71
  br label %if.end75

cond.false11.i571:                                ; preds = %med3.exit567
  %cmp13.i572 = icmp sgt i32 %call2.i570, 0
  br i1 %cmp13.i572, label %if.end75, label %cond.false15.i573

cond.false15.i573:                                ; preds = %cond.false11.i571
  %call16.i574 = tail call i32 %cmp(ptr noundef %add.ptr71, ptr noundef %add.ptr55) #2
  %cmp17.i575 = icmp slt i32 %call16.i574, 0
  %cond21.i576 = select i1 %cmp17.i575, ptr %add.ptr71, ptr %add.ptr55
  br label %if.end75

if.end75:                                         ; preds = %cond.false15.i573, %cond.false11.i571, %cond.false.i580, %cond.true.i578, %if.then53
  %pn.0 = phi ptr [ %add.ptr55, %if.then53 ], [ %cond.i583, %cond.false.i580 ], [ %cond21.i576, %cond.false15.i573 ], [ %add.ptr73, %cond.true.i578 ], [ %add.ptr73, %cond.false11.i571 ]
  %pm.1 = phi ptr [ %add.ptr50, %if.then53 ], [ %cond25.i560, %cond.false.i580 ], [ %cond25.i560, %cond.false15.i573 ], [ %cond25.i560, %cond.true.i578 ], [ %cond25.i560, %cond.false11.i571 ]
  %pl.1 = phi ptr [ %a.addr.0908, %if.then53 ], [ %cond25.i, %cond.false.i580 ], [ %cond25.i, %cond.false15.i573 ], [ %cond25.i, %cond.true.i578 ], [ %cond25.i, %cond.false11.i571 ]
  %call.i585 = tail call i32 %cmp(ptr noundef %pl.1, ptr noundef %pm.1) #2
  %cmp1.i586 = icmp slt i32 %call.i585, 0
  %call2.i587 = tail call i32 %cmp(ptr noundef %pm.1, ptr noundef %pn.0) #2
  br i1 %cmp1.i586, label %cond.true.i595, label %cond.false11.i588

cond.true.i595:                                   ; preds = %if.end75
  %cmp3.i596 = icmp slt i32 %call2.i587, 0
  br i1 %cmp3.i596, label %if.end77, label %cond.false.i597

cond.false.i597:                                  ; preds = %cond.true.i595
  %call5.i598 = tail call i32 %cmp(ptr noundef %pl.1, ptr noundef %pn.0) #2
  %cmp6.i599 = icmp slt i32 %call5.i598, 0
  %cond.i600 = select i1 %cmp6.i599, ptr %pn.0, ptr %pl.1
  br label %if.end77

cond.false11.i588:                                ; preds = %if.end75
  %cmp13.i589 = icmp sgt i32 %call2.i587, 0
  br i1 %cmp13.i589, label %if.end77, label %cond.false15.i590

cond.false15.i590:                                ; preds = %cond.false11.i588
  %call16.i591 = tail call i32 %cmp(ptr noundef %pl.1, ptr noundef %pn.0) #2
  %cmp17.i592 = icmp slt i32 %call16.i591, 0
  %cond21.i593 = select i1 %cmp17.i592, ptr %pl.1, ptr %pn.0
  br label %if.end77

if.end77:                                         ; preds = %cond.false15.i590, %cond.false11.i588, %cond.false.i597, %cond.true.i595, %if.end48
  %pm.2 = phi ptr [ %add.ptr50, %if.end48 ], [ %cond.i600, %cond.false.i597 ], [ %cond21.i593, %cond.false15.i590 ], [ %pm.1, %cond.true.i595 ], [ %pm.1, %cond.false11.i588 ]
  %cmp78 = icmp eq i32 %cond4911, 0
  br i1 %cmp78, label %if.then80, label %if.else82

if.then80:                                        ; preds = %if.end77
  %14 = load i64, ptr %a.addr.0908, align 8
  %15 = load i64, ptr %pm.2, align 8
  store i64 %15, ptr %a.addr.0908, align 8
  store i64 %14, ptr %pm.2, align 8
  br label %if.end90

if.else82:                                        ; preds = %if.end77
  %cmp83 = icmp eq i32 %cond17913.fr, 0
  br i1 %cmp83, label %if.then85, label %if.else87

if.then85:                                        ; preds = %if.else82
  %16 = load i32, ptr %a.addr.0908, align 4
  %17 = load i32, ptr %pm.2, align 4
  store i32 %17, ptr %a.addr.0908, align 4
  store i32 %16, ptr %pm.2, align 4
  br label %if.end90

if.else87:                                        ; preds = %if.else82
  br i1 %or.cond.lcssa868.fr, label %do.body.i625.preheader, label %if.else.i602

do.body.i625.preheader:                           ; preds = %if.else87
  br label %do.body.i625

do.body.i625:                                     ; preds = %do.body.i625, %do.body.i625.preheader
  %pj.0.i626 = phi ptr [ %incdec.ptr1.i630, %do.body.i625 ], [ %pm.2, %do.body.i625.preheader ]
  %pi.0.i627 = phi ptr [ %incdec.ptr.i629, %do.body.i625 ], [ %a.addr.0908, %do.body.i625.preheader ]
  %i.0.i628 = phi i64 [ %dec.i631, %do.body.i625 ], [ %div50.i624, %do.body.i625.preheader ]
  %18 = load i64, ptr %pi.0.i627, align 8
  %19 = load i64, ptr %pj.0.i626, align 8
  %incdec.ptr.i629 = getelementptr inbounds nuw i8, ptr %pi.0.i627, i64 8
  store i64 %19, ptr %pi.0.i627, align 8
  %incdec.ptr1.i630 = getelementptr inbounds nuw i8, ptr %pj.0.i626, i64 8
  store i64 %18, ptr %pj.0.i626, align 8
  %dec.i631 = add nsw i64 %i.0.i628, -1
  %cmp2.i632 = icmp samesign ugt i64 %i.0.i628, 1
  br i1 %cmp2.i632, label %do.body.i625, label %if.end90.loopexit, !llvm.loop !3

if.else.i602:                                     ; preds = %if.else87
  br i1 %or.cond550.lcssa864.fr, label %do.body12.i614.preheader, label %do.body27.i604.preheader

do.body27.i604.preheader:                         ; preds = %if.else.i602
  br label %do.body27.i604

do.body12.i614.preheader:                         ; preds = %if.else.i602
  br label %do.body12.i614

do.body12.i614:                                   ; preds = %do.body12.i614, %do.body12.i614.preheader
  %i7.0.i615 = phi i64 [ %dec17.i620, %do.body12.i614 ], [ %div949.i613, %do.body12.i614.preheader ]
  %pi10.0.i616 = phi ptr [ %incdec.ptr14.i618, %do.body12.i614 ], [ %a.addr.0908, %do.body12.i614.preheader ]
  %pj11.0.i617 = phi ptr [ %incdec.ptr15.i619, %do.body12.i614 ], [ %pm.2, %do.body12.i614.preheader ]
  %20 = load i32, ptr %pi10.0.i616, align 4
  %21 = load i32, ptr %pj11.0.i617, align 4
  %incdec.ptr14.i618 = getelementptr inbounds nuw i8, ptr %pi10.0.i616, i64 4
  store i32 %21, ptr %pi10.0.i616, align 4
  %incdec.ptr15.i619 = getelementptr inbounds nuw i8, ptr %pj11.0.i617, i64 4
  store i32 %20, ptr %pj11.0.i617, align 4
  %dec17.i620 = add nsw i64 %i7.0.i615, -1
  %cmp18.i621 = icmp samesign ugt i64 %i7.0.i615, 1
  br i1 %cmp18.i621, label %do.body12.i614, label %if.end90.loopexit1053, !llvm.loop !4

do.body27.i604:                                   ; preds = %do.body27.i604, %do.body27.i604.preheader
  %i22.0.i605 = phi i64 [ %dec32.i610, %do.body27.i604 ], [ %conv8.i603, %do.body27.i604.preheader ]
  %pi25.0.i606 = phi ptr [ %incdec.ptr29.i608, %do.body27.i604 ], [ %a.addr.0908, %do.body27.i604.preheader ]
  %pj26.0.i607 = phi ptr [ %incdec.ptr30.i609, %do.body27.i604 ], [ %pm.2, %do.body27.i604.preheader ]
  %22 = load i8, ptr %pi25.0.i606, align 1
  %23 = load i8, ptr %pj26.0.i607, align 1
  %incdec.ptr29.i608 = getelementptr inbounds nuw i8, ptr %pi25.0.i606, i64 1
  store i8 %23, ptr %pi25.0.i606, align 1
  %incdec.ptr30.i609 = getelementptr inbounds nuw i8, ptr %pj26.0.i607, i64 1
  store i8 %22, ptr %pj26.0.i607, align 1
  %dec32.i610 = add nsw i64 %i22.0.i605, -1
  %cmp33.i611 = icmp sgt i64 %i22.0.i605, 1
  br i1 %cmp33.i611, label %do.body27.i604, label %if.end90.loopexit1054, !llvm.loop !5

if.end90.loopexit:                                ; preds = %do.body.i625
  br label %if.end90

if.end90.loopexit1053:                            ; preds = %do.body12.i614
  br label %if.end90

if.end90.loopexit1054:                            ; preds = %do.body27.i604
  br label %if.end90

if.end90:                                         ; preds = %if.end90.loopexit1054, %if.end90.loopexit1053, %if.end90.loopexit, %if.then85, %if.then80
  %add.ptr91 = getelementptr inbounds nuw i8, ptr %a.addr.0908, i64 %es
  %sub92 = add i64 %n.addr.0907, -1
  %mul93 = mul i64 %sub92, %es
  %add.ptr94 = getelementptr inbounds nuw i8, ptr %a.addr.0908, i64 %mul93
  %cmp111 = icmp eq i32 %cond17913.fr, 0
  %cmp139 = icmp eq i32 %cond17913.fr, 0
  %cmp162 = icmp eq i32 %cond17913.fr, 0
  br label %for.cond95

for.cond95:                                       ; preds = %if.end169, %if.end90
  %swap_cnt.0 = phi i32 [ 0, %if.end90 ], [ 1, %if.end169 ]
  %pd.0 = phi ptr [ %add.ptr94, %if.end90 ], [ %pd.1888.lcssa, %if.end169 ]
  %pc.0 = phi ptr [ %add.ptr94, %if.end90 ], [ %add.ptr172, %if.end169 ]
  %pb.0 = phi ptr [ %add.ptr91, %if.end90 ], [ %add.ptr170, %if.end169 ]
  %pa.0 = phi ptr [ %add.ptr91, %if.end90 ], [ %pa.1.lcssa, %if.end169 ]
  %cmp96.not876 = icmp ugt ptr %pb.0, %pc.0
  br i1 %cmp96.not876, label %while.end, label %land.rhs98.preheader

land.rhs98.preheader:                             ; preds = %for.cond95
  br label %land.rhs98

land.rhs98:                                       ; preds = %if.end120, %land.rhs98.preheader
  %pa.1880 = phi ptr [ %pa.2, %if.end120 ], [ %pa.0, %land.rhs98.preheader ]
  %pb.1878 = phi ptr [ %add.ptr121, %if.end120 ], [ %pb.0, %land.rhs98.preheader ]
  %swap_cnt.1877 = phi i32 [ %swap_cnt.2, %if.end120 ], [ %swap_cnt.0, %land.rhs98.preheader ]
  %call99 = tail call i32 %cmp(ptr noundef %pb.1878, ptr noundef %a.addr.0908) #2
  %cmp100 = icmp slt i32 %call99, 1
  br i1 %cmp100, label %while.body, label %while.end.loopexit

while.body:                                       ; preds = %land.rhs98
  %cmp103 = icmp eq i32 %call99, 0
  br i1 %cmp103, label %if.then105, label %if.end120

if.then105:                                       ; preds = %while.body
  br i1 %cmp78, label %if.then108, label %if.else110

if.then108:                                       ; preds = %if.then105
  %24 = load i64, ptr %pa.1880, align 8
  %25 = load i64, ptr %pb.1878, align 8
  store i64 %25, ptr %pa.1880, align 8
  store i64 %24, ptr %pb.1878, align 8
  br label %if.end118

if.else110:                                       ; preds = %if.then105
  br i1 %cmp111, label %if.then113, label %if.else115

if.then113:                                       ; preds = %if.else110
  %26 = load i32, ptr %pa.1880, align 4
  %27 = load i32, ptr %pb.1878, align 4
  store i32 %27, ptr %pa.1880, align 4
  store i32 %26, ptr %pb.1878, align 4
  br label %if.end118

if.else115:                                       ; preds = %if.else110
  br i1 %or.cond.lcssa868.fr, label %do.body.i657.preheader, label %if.else.i634

do.body.i657.preheader:                           ; preds = %if.else115
  br label %do.body.i657

do.body.i657:                                     ; preds = %do.body.i657, %do.body.i657.preheader
  %pj.0.i658 = phi ptr [ %incdec.ptr1.i662, %do.body.i657 ], [ %pb.1878, %do.body.i657.preheader ]
  %pi.0.i659 = phi ptr [ %incdec.ptr.i661, %do.body.i657 ], [ %pa.1880, %do.body.i657.preheader ]
  %i.0.i660 = phi i64 [ %dec.i663, %do.body.i657 ], [ %div50.i656, %do.body.i657.preheader ]
  %28 = load i64, ptr %pi.0.i659, align 8
  %29 = load i64, ptr %pj.0.i658, align 8
  %incdec.ptr.i661 = getelementptr inbounds nuw i8, ptr %pi.0.i659, i64 8
  store i64 %29, ptr %pi.0.i659, align 8
  %incdec.ptr1.i662 = getelementptr inbounds nuw i8, ptr %pj.0.i658, i64 8
  store i64 %28, ptr %pj.0.i658, align 8
  %dec.i663 = add nsw i64 %i.0.i660, -1
  %cmp2.i664 = icmp samesign ugt i64 %i.0.i660, 1
  br i1 %cmp2.i664, label %do.body.i657, label %if.end118.loopexit, !llvm.loop !3

if.else.i634:                                     ; preds = %if.else115
  br i1 %or.cond550.lcssa864.fr, label %do.body12.i646.preheader, label %do.body27.i636.preheader

do.body27.i636.preheader:                         ; preds = %if.else.i634
  br label %do.body27.i636

do.body12.i646.preheader:                         ; preds = %if.else.i634
  br label %do.body12.i646

do.body12.i646:                                   ; preds = %do.body12.i646, %do.body12.i646.preheader
  %i7.0.i647 = phi i64 [ %dec17.i652, %do.body12.i646 ], [ %div949.i645, %do.body12.i646.preheader ]
  %pi10.0.i648 = phi ptr [ %incdec.ptr14.i650, %do.body12.i646 ], [ %pa.1880, %do.body12.i646.preheader ]
  %pj11.0.i649 = phi ptr [ %incdec.ptr15.i651, %do.body12.i646 ], [ %pb.1878, %do.body12.i646.preheader ]
  %30 = load i32, ptr %pi10.0.i648, align 4
  %31 = load i32, ptr %pj11.0.i649, align 4
  %incdec.ptr14.i650 = getelementptr inbounds nuw i8, ptr %pi10.0.i648, i64 4
  store i32 %31, ptr %pi10.0.i648, align 4
  %incdec.ptr15.i651 = getelementptr inbounds nuw i8, ptr %pj11.0.i649, i64 4
  store i32 %30, ptr %pj11.0.i649, align 4
  %dec17.i652 = add nsw i64 %i7.0.i647, -1
  %cmp18.i653 = icmp samesign ugt i64 %i7.0.i647, 1
  br i1 %cmp18.i653, label %do.body12.i646, label %if.end118.loopexit1044, !llvm.loop !4

do.body27.i636:                                   ; preds = %do.body27.i636, %do.body27.i636.preheader
  %i22.0.i637 = phi i64 [ %dec32.i642, %do.body27.i636 ], [ %conv8.i635, %do.body27.i636.preheader ]
  %pi25.0.i638 = phi ptr [ %incdec.ptr29.i640, %do.body27.i636 ], [ %pa.1880, %do.body27.i636.preheader ]
  %pj26.0.i639 = phi ptr [ %incdec.ptr30.i641, %do.body27.i636 ], [ %pb.1878, %do.body27.i636.preheader ]
  %32 = load i8, ptr %pi25.0.i638, align 1
  %33 = load i8, ptr %pj26.0.i639, align 1
  %incdec.ptr29.i640 = getelementptr inbounds nuw i8, ptr %pi25.0.i638, i64 1
  store i8 %33, ptr %pi25.0.i638, align 1
  %incdec.ptr30.i641 = getelementptr inbounds nuw i8, ptr %pj26.0.i639, i64 1
  store i8 %32, ptr %pj26.0.i639, align 1
  %dec32.i642 = add nsw i64 %i22.0.i637, -1
  %cmp33.i643 = icmp sgt i64 %i22.0.i637, 1
  br i1 %cmp33.i643, label %do.body27.i636, label %if.end118.loopexit1045, !llvm.loop !5

if.end118.loopexit:                               ; preds = %do.body.i657
  br label %if.end118

if.end118.loopexit1044:                           ; preds = %do.body12.i646
  br label %if.end118

if.end118.loopexit1045:                           ; preds = %do.body27.i636
  br label %if.end118

if.end118:                                        ; preds = %if.end118.loopexit1045, %if.end118.loopexit1044, %if.end118.loopexit, %if.then113, %if.then108
  %add.ptr119 = getelementptr inbounds nuw i8, ptr %pa.1880, i64 %es
  br label %if.end120

if.end120:                                        ; preds = %if.end118, %while.body
  %swap_cnt.2 = phi i32 [ 1, %if.end118 ], [ %swap_cnt.1877, %while.body ]
  %pa.2 = phi ptr [ %add.ptr119, %if.end118 ], [ %pa.1880, %while.body ]
  %add.ptr121 = getelementptr inbounds nuw i8, ptr %pb.1878, i64 %es
  %cmp96.not = icmp ugt ptr %add.ptr121, %pc.0
  br i1 %cmp96.not, label %while.end.loopexit, label %land.rhs98, !llvm.loop !6

while.end.loopexit:                               ; preds = %if.end120, %land.rhs98
  %swap_cnt.1.lcssa.ph = phi i32 [ %swap_cnt.1877, %land.rhs98 ], [ %swap_cnt.2, %if.end120 ]
  %pb.1.lcssa.ph = phi ptr [ %pb.1878, %land.rhs98 ], [ %add.ptr121, %if.end120 ]
  %pa.1.lcssa.ph = phi ptr [ %pa.1880, %land.rhs98 ], [ %pa.2, %if.end120 ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %for.cond95
  %swap_cnt.1.lcssa = phi i32 [ %swap_cnt.0, %for.cond95 ], [ %swap_cnt.1.lcssa.ph, %while.end.loopexit ]
  %pb.1.lcssa = phi ptr [ %pb.0, %for.cond95 ], [ %pb.1.lcssa.ph, %while.end.loopexit ]
  %pa.1.lcssa = phi ptr [ %pa.0, %for.cond95 ], [ %pa.1.lcssa.ph, %while.end.loopexit ]
  %cmp123.not886 = icmp ugt ptr %pb.1.lcssa, %pc.0
  br i1 %cmp123.not886, label %for.end173.loopexit1052, label %land.rhs125.preheader

land.rhs125.preheader:                            ; preds = %while.end
  br label %land.rhs125

land.rhs125:                                      ; preds = %if.end149, %land.rhs125.preheader
  %pc.1889 = phi ptr [ %add.ptr151, %if.end149 ], [ %pc.0, %land.rhs125.preheader ]
  %pd.1888 = phi ptr [ %pd.2, %if.end149 ], [ %pd.0, %land.rhs125.preheader ]
  %swap_cnt.3887 = phi i32 [ %swap_cnt.4, %if.end149 ], [ %swap_cnt.1.lcssa, %land.rhs125.preheader ]
  %call126 = tail call i32 %cmp(ptr noundef %pc.1889, ptr noundef %a.addr.0908) #2
  %cmp127 = icmp sgt i32 %call126, -1
  br i1 %cmp127, label %while.body130, label %if.end156

while.body130:                                    ; preds = %land.rhs125
  %cmp131 = icmp eq i32 %call126, 0
  br i1 %cmp131, label %if.then133, label %if.end149

if.then133:                                       ; preds = %while.body130
  br i1 %cmp78, label %if.then136, label %if.else138

if.then136:                                       ; preds = %if.then133
  %34 = load i64, ptr %pc.1889, align 8
  %35 = load i64, ptr %pd.1888, align 8
  store i64 %35, ptr %pc.1889, align 8
  store i64 %34, ptr %pd.1888, align 8
  br label %if.end146

if.else138:                                       ; preds = %if.then133
  br i1 %cmp139, label %if.then141, label %if.else143

if.then141:                                       ; preds = %if.else138
  %36 = load i32, ptr %pc.1889, align 4
  %37 = load i32, ptr %pd.1888, align 4
  store i32 %37, ptr %pc.1889, align 4
  store i32 %36, ptr %pd.1888, align 4
  br label %if.end146

if.else143:                                       ; preds = %if.else138
  br i1 %or.cond.lcssa868.fr, label %do.body.i689.preheader, label %if.else.i666

do.body.i689.preheader:                           ; preds = %if.else143
  br label %do.body.i689

do.body.i689:                                     ; preds = %do.body.i689, %do.body.i689.preheader
  %pj.0.i690 = phi ptr [ %incdec.ptr1.i694, %do.body.i689 ], [ %pd.1888, %do.body.i689.preheader ]
  %pi.0.i691 = phi ptr [ %incdec.ptr.i693, %do.body.i689 ], [ %pc.1889, %do.body.i689.preheader ]
  %i.0.i692 = phi i64 [ %dec.i695, %do.body.i689 ], [ %div50.i688, %do.body.i689.preheader ]
  %38 = load i64, ptr %pi.0.i691, align 8
  %39 = load i64, ptr %pj.0.i690, align 8
  %incdec.ptr.i693 = getelementptr inbounds nuw i8, ptr %pi.0.i691, i64 8
  store i64 %39, ptr %pi.0.i691, align 8
  %incdec.ptr1.i694 = getelementptr inbounds nuw i8, ptr %pj.0.i690, i64 8
  store i64 %38, ptr %pj.0.i690, align 8
  %dec.i695 = add nsw i64 %i.0.i692, -1
  %cmp2.i696 = icmp samesign ugt i64 %i.0.i692, 1
  br i1 %cmp2.i696, label %do.body.i689, label %if.end146.loopexit, !llvm.loop !3

if.else.i666:                                     ; preds = %if.else143
  br i1 %or.cond550.lcssa864.fr, label %do.body12.i678.preheader, label %do.body27.i668.preheader

do.body27.i668.preheader:                         ; preds = %if.else.i666
  br label %do.body27.i668

do.body12.i678.preheader:                         ; preds = %if.else.i666
  br label %do.body12.i678

do.body12.i678:                                   ; preds = %do.body12.i678, %do.body12.i678.preheader
  %i7.0.i679 = phi i64 [ %dec17.i684, %do.body12.i678 ], [ %div949.i677, %do.body12.i678.preheader ]
  %pi10.0.i680 = phi ptr [ %incdec.ptr14.i682, %do.body12.i678 ], [ %pc.1889, %do.body12.i678.preheader ]
  %pj11.0.i681 = phi ptr [ %incdec.ptr15.i683, %do.body12.i678 ], [ %pd.1888, %do.body12.i678.preheader ]
  %40 = load i32, ptr %pi10.0.i680, align 4
  %41 = load i32, ptr %pj11.0.i681, align 4
  %incdec.ptr14.i682 = getelementptr inbounds nuw i8, ptr %pi10.0.i680, i64 4
  store i32 %41, ptr %pi10.0.i680, align 4
  %incdec.ptr15.i683 = getelementptr inbounds nuw i8, ptr %pj11.0.i681, i64 4
  store i32 %40, ptr %pj11.0.i681, align 4
  %dec17.i684 = add nsw i64 %i7.0.i679, -1
  %cmp18.i685 = icmp samesign ugt i64 %i7.0.i679, 1
  br i1 %cmp18.i685, label %do.body12.i678, label %if.end146.loopexit1042, !llvm.loop !4

do.body27.i668:                                   ; preds = %do.body27.i668, %do.body27.i668.preheader
  %i22.0.i669 = phi i64 [ %dec32.i674, %do.body27.i668 ], [ %conv8.i667, %do.body27.i668.preheader ]
  %pi25.0.i670 = phi ptr [ %incdec.ptr29.i672, %do.body27.i668 ], [ %pc.1889, %do.body27.i668.preheader ]
  %pj26.0.i671 = phi ptr [ %incdec.ptr30.i673, %do.body27.i668 ], [ %pd.1888, %do.body27.i668.preheader ]
  %42 = load i8, ptr %pi25.0.i670, align 1
  %43 = load i8, ptr %pj26.0.i671, align 1
  %incdec.ptr29.i672 = getelementptr inbounds nuw i8, ptr %pi25.0.i670, i64 1
  store i8 %43, ptr %pi25.0.i670, align 1
  %incdec.ptr30.i673 = getelementptr inbounds nuw i8, ptr %pj26.0.i671, i64 1
  store i8 %42, ptr %pj26.0.i671, align 1
  %dec32.i674 = add nsw i64 %i22.0.i669, -1
  %cmp33.i675 = icmp sgt i64 %i22.0.i669, 1
  br i1 %cmp33.i675, label %do.body27.i668, label %if.end146.loopexit1043, !llvm.loop !5

if.end146.loopexit:                               ; preds = %do.body.i689
  br label %if.end146

if.end146.loopexit1042:                           ; preds = %do.body12.i678
  br label %if.end146

if.end146.loopexit1043:                           ; preds = %do.body27.i668
  br label %if.end146

if.end146:                                        ; preds = %if.end146.loopexit1043, %if.end146.loopexit1042, %if.end146.loopexit, %if.then141, %if.then136
  %add.ptr148 = getelementptr inbounds i8, ptr %pd.1888, i64 %idx.neg147
  br label %if.end149

if.end149:                                        ; preds = %if.end146, %while.body130
  %swap_cnt.4 = phi i32 [ 1, %if.end146 ], [ %swap_cnt.3887, %while.body130 ]
  %pd.2 = phi ptr [ %add.ptr148, %if.end146 ], [ %pd.1888, %while.body130 ]
  %add.ptr151 = getelementptr inbounds i8, ptr %pc.1889, i64 %idx.neg150
  %cmp123.not = icmp ugt ptr %pb.1.lcssa, %add.ptr151
  br i1 %cmp123.not, label %for.end173.loopexit, label %land.rhs125, !llvm.loop !7

if.end156:                                        ; preds = %land.rhs125
  %pc.1889.lcssa = phi ptr [ %pc.1889, %land.rhs125 ]
  %pd.1888.lcssa = phi ptr [ %pd.1888, %land.rhs125 ]
  br i1 %cmp78, label %if.then159, label %if.else161

if.then159:                                       ; preds = %if.end156
  %44 = load i64, ptr %pb.1.lcssa, align 8
  %45 = load i64, ptr %pc.1889.lcssa, align 8
  store i64 %45, ptr %pb.1.lcssa, align 8
  store i64 %44, ptr %pc.1889.lcssa, align 8
  br label %if.end169

if.else161:                                       ; preds = %if.end156
  br i1 %cmp162, label %if.then164, label %if.else166

if.then164:                                       ; preds = %if.else161
  %46 = load i32, ptr %pb.1.lcssa, align 4
  %47 = load i32, ptr %pc.1889.lcssa, align 4
  store i32 %47, ptr %pb.1.lcssa, align 4
  store i32 %46, ptr %pc.1889.lcssa, align 4
  br label %if.end169

if.else166:                                       ; preds = %if.else161
  br i1 %or.cond.lcssa868.fr, label %do.body.i721.preheader, label %if.else.i698

do.body.i721.preheader:                           ; preds = %if.else166
  br label %do.body.i721

do.body.i721:                                     ; preds = %do.body.i721, %do.body.i721.preheader
  %pj.0.i722 = phi ptr [ %incdec.ptr1.i726, %do.body.i721 ], [ %pc.1889.lcssa, %do.body.i721.preheader ]
  %pi.0.i723 = phi ptr [ %incdec.ptr.i725, %do.body.i721 ], [ %pb.1.lcssa, %do.body.i721.preheader ]
  %i.0.i724 = phi i64 [ %dec.i727, %do.body.i721 ], [ %div50.i720, %do.body.i721.preheader ]
  %48 = load i64, ptr %pi.0.i723, align 8
  %49 = load i64, ptr %pj.0.i722, align 8
  %incdec.ptr.i725 = getelementptr inbounds nuw i8, ptr %pi.0.i723, i64 8
  store i64 %49, ptr %pi.0.i723, align 8
  %incdec.ptr1.i726 = getelementptr inbounds nuw i8, ptr %pj.0.i722, i64 8
  store i64 %48, ptr %pj.0.i722, align 8
  %dec.i727 = add nsw i64 %i.0.i724, -1
  %cmp2.i728 = icmp samesign ugt i64 %i.0.i724, 1
  br i1 %cmp2.i728, label %do.body.i721, label %if.end169.loopexit, !llvm.loop !3

if.else.i698:                                     ; preds = %if.else166
  br i1 %or.cond550.lcssa864.fr, label %do.body12.i710.preheader, label %do.body27.i700.preheader

do.body27.i700.preheader:                         ; preds = %if.else.i698
  br label %do.body27.i700

do.body12.i710.preheader:                         ; preds = %if.else.i698
  br label %do.body12.i710

do.body12.i710:                                   ; preds = %do.body12.i710, %do.body12.i710.preheader
  %i7.0.i711 = phi i64 [ %dec17.i716, %do.body12.i710 ], [ %div949.i709, %do.body12.i710.preheader ]
  %pi10.0.i712 = phi ptr [ %incdec.ptr14.i714, %do.body12.i710 ], [ %pb.1.lcssa, %do.body12.i710.preheader ]
  %pj11.0.i713 = phi ptr [ %incdec.ptr15.i715, %do.body12.i710 ], [ %pc.1889.lcssa, %do.body12.i710.preheader ]
  %50 = load i32, ptr %pi10.0.i712, align 4
  %51 = load i32, ptr %pj11.0.i713, align 4
  %incdec.ptr14.i714 = getelementptr inbounds nuw i8, ptr %pi10.0.i712, i64 4
  store i32 %51, ptr %pi10.0.i712, align 4
  %incdec.ptr15.i715 = getelementptr inbounds nuw i8, ptr %pj11.0.i713, i64 4
  store i32 %50, ptr %pj11.0.i713, align 4
  %dec17.i716 = add nsw i64 %i7.0.i711, -1
  %cmp18.i717 = icmp samesign ugt i64 %i7.0.i711, 1
  br i1 %cmp18.i717, label %do.body12.i710, label %if.end169.loopexit1046, !llvm.loop !4

do.body27.i700:                                   ; preds = %do.body27.i700, %do.body27.i700.preheader
  %i22.0.i701 = phi i64 [ %dec32.i706, %do.body27.i700 ], [ %conv8.i699, %do.body27.i700.preheader ]
  %pi25.0.i702 = phi ptr [ %incdec.ptr29.i704, %do.body27.i700 ], [ %pb.1.lcssa, %do.body27.i700.preheader ]
  %pj26.0.i703 = phi ptr [ %incdec.ptr30.i705, %do.body27.i700 ], [ %pc.1889.lcssa, %do.body27.i700.preheader ]
  %52 = load i8, ptr %pi25.0.i702, align 1
  %53 = load i8, ptr %pj26.0.i703, align 1
  %incdec.ptr29.i704 = getelementptr inbounds nuw i8, ptr %pi25.0.i702, i64 1
  store i8 %53, ptr %pi25.0.i702, align 1
  %incdec.ptr30.i705 = getelementptr inbounds nuw i8, ptr %pj26.0.i703, i64 1
  store i8 %52, ptr %pj26.0.i703, align 1
  %dec32.i706 = add nsw i64 %i22.0.i701, -1
  %cmp33.i707 = icmp sgt i64 %i22.0.i701, 1
  br i1 %cmp33.i707, label %do.body27.i700, label %if.end169.loopexit1047, !llvm.loop !5

if.end169.loopexit:                               ; preds = %do.body.i721
  br label %if.end169

if.end169.loopexit1046:                           ; preds = %do.body12.i710
  br label %if.end169

if.end169.loopexit1047:                           ; preds = %do.body27.i700
  br label %if.end169

if.end169:                                        ; preds = %if.end169.loopexit1047, %if.end169.loopexit1046, %if.end169.loopexit, %if.then164, %if.then159
  %add.ptr170 = getelementptr inbounds nuw i8, ptr %pb.1.lcssa, i64 %es
  %add.ptr172 = getelementptr inbounds i8, ptr %pc.1889.lcssa, i64 %idx.neg171
  br label %for.cond95

for.end173.loopexit:                              ; preds = %if.end149
  %pb.1.lcssa.lcssa1062 = phi ptr [ %pb.1.lcssa, %if.end149 ]
  %pa.1.lcssa.lcssa1060 = phi ptr [ %pa.1.lcssa, %if.end149 ]
  %swap_cnt.4.lcssa = phi i32 [ %swap_cnt.4, %if.end149 ]
  %pd.2.lcssa = phi ptr [ %pd.2, %if.end149 ]
  %add.ptr151.lcssa = phi ptr [ %add.ptr151, %if.end149 ]
  br label %for.end173

for.end173.loopexit1052:                          ; preds = %while.end
  %swap_cnt.1.lcssa.lcssa = phi i32 [ %swap_cnt.1.lcssa, %while.end ]
  %pb.1.lcssa.lcssa = phi ptr [ %pb.1.lcssa, %while.end ]
  %pa.1.lcssa.lcssa = phi ptr [ %pa.1.lcssa, %while.end ]
  %pd.0.lcssa = phi ptr [ %pd.0, %while.end ]
  %pc.0.lcssa = phi ptr [ %pc.0, %while.end ]
  br label %for.end173

for.end173:                                       ; preds = %for.end173.loopexit1052, %for.end173.loopexit
  %pb.1.lcssa1063 = phi ptr [ %pb.1.lcssa.lcssa1062, %for.end173.loopexit ], [ %pb.1.lcssa.lcssa, %for.end173.loopexit1052 ]
  %pa.1.lcssa1061 = phi ptr [ %pa.1.lcssa.lcssa1060, %for.end173.loopexit ], [ %pa.1.lcssa.lcssa, %for.end173.loopexit1052 ]
  %swap_cnt.3.lcssa = phi i32 [ %swap_cnt.4.lcssa, %for.end173.loopexit ], [ %swap_cnt.1.lcssa.lcssa, %for.end173.loopexit1052 ]
  %pd.1.lcssa = phi ptr [ %pd.2.lcssa, %for.end173.loopexit ], [ %pd.0.lcssa, %for.end173.loopexit1052 ]
  %pc.1.lcssa = phi ptr [ %add.ptr151.lcssa, %for.end173.loopexit ], [ %pc.0.lcssa, %for.end173.loopexit1052 ]
  %cmp174 = icmp eq i32 %swap_cnt.3.lcssa, 0
  br i1 %cmp174, label %for.cond178.preheader, label %if.end225

for.cond178.preheader:                            ; preds = %for.end173
  %add.ptr91.lcssa = phi ptr [ %add.ptr91, %for.end173 ]
  %cmp78.lcssa = phi i1 [ %cmp78, %for.end173 ]
  %a.addr.0908.lcssa = phi ptr [ %a.addr.0908, %for.end173 ]
  %n.addr.0907.lcssa = phi i64 [ %n.addr.0907, %for.end173 ]
  %or.cond550.lcssa864.fr.lcssa = phi i1 [ %or.cond550.lcssa864.fr, %for.end173 ]
  %or.cond.lcssa868.fr.lcssa = phi i1 [ %or.cond.lcssa868.fr, %for.end173 ]
  %cond17913.fr.lcssa = phi i32 [ %cond17913.fr, %for.end173 ]
  %mul179 = mul i64 %n.addr.0907.lcssa, %es
  %add.ptr180 = getelementptr inbounds nuw i8, ptr %a.addr.0908.lcssa, i64 %mul179
  %cmp181946 = icmp samesign ult i64 %es, %mul179
  br i1 %cmp181946, label %for.cond184.preheader.lr.ph, label %cleanup

for.cond184.preheader.lr.ph:                      ; preds = %for.cond178.preheader
  %idx.neg188 = sub i64 0, %es
  %sext837 = shl i64 %es, 32
  %conv8.i731 = ashr exact i64 %sext837, 32
  %div949.i741 = lshr i64 %conv8.i731, 2
  %sext838 = shl i64 %es, 32
  %conv.i751 = ashr exact i64 %sext838, 32
  %div50.i752 = lshr i64 %conv.i751, 3
  br i1 %cmp78.lcssa, label %for.cond184.preheader.us.preheader, label %for.cond184.preheader.lr.ph.split

for.cond184.preheader.us.preheader:               ; preds = %for.cond184.preheader.lr.ph
  br label %for.cond184.preheader.us

for.cond184.preheader.us:                         ; preds = %for.inc222.us, %for.cond184.preheader.us.preheader
  %pm.3947.us = phi ptr [ %add.ptr223.us, %for.inc222.us ], [ %add.ptr91.lcssa, %for.cond184.preheader.us.preheader ]
  %cmp185920.us = icmp ugt ptr %pm.3947.us, %a.addr.0908.lcssa
  br i1 %cmp185920.us, label %land.rhs187.us.us.preheader, label %for.inc222.us

land.rhs187.us.us.preheader:                      ; preds = %for.cond184.preheader.us
  br label %land.rhs187.us.us

for.inc222.us.loopexit:                           ; preds = %for.body194.us.us, %land.rhs187.us.us
  br label %for.inc222.us

for.inc222.us:                                    ; preds = %for.inc222.us.loopexit, %for.cond184.preheader.us
  %add.ptr223.us = getelementptr inbounds nuw i8, ptr %pm.3947.us, i64 %es
  %cmp181.us = icmp ult ptr %add.ptr223.us, %add.ptr180
  br i1 %cmp181.us, label %for.cond184.preheader.us, label %cleanup.loopexit1037, !llvm.loop !8

land.rhs187.us.us:                                ; preds = %for.body194.us.us, %land.rhs187.us.us.preheader
  %pl.2921.us.us = phi ptr [ %add.ptr189.us.us, %for.body194.us.us ], [ %pm.3947.us, %land.rhs187.us.us.preheader ]
  %add.ptr189.us.us = getelementptr inbounds i8, ptr %pl.2921.us.us, i64 %idx.neg188
  %call190.us.us = tail call i32 %cmp(ptr noundef nonnull %add.ptr189.us.us, ptr noundef nonnull %pl.2921.us.us) #2
  %cmp191.us.us = icmp sgt i32 %call190.us.us, 0
  br i1 %cmp191.us.us, label %for.body194.us.us, label %for.inc222.us.loopexit

for.body194.us.us:                                ; preds = %land.rhs187.us.us
  %54 = load i64, ptr %pl.2921.us.us, align 8
  %55 = load i64, ptr %add.ptr189.us.us, align 8
  store i64 %55, ptr %pl.2921.us.us, align 8
  store i64 %54, ptr %add.ptr189.us.us, align 8
  %cmp185.us.us = icmp ugt ptr %add.ptr189.us.us, %a.addr.0908.lcssa
  br i1 %cmp185.us.us, label %land.rhs187.us.us, label %for.inc222.us.loopexit, !llvm.loop !9

for.cond184.preheader.lr.ph.split:                ; preds = %for.cond184.preheader.lr.ph
  %cmp204 = icmp eq i32 %cond17913.fr.lcssa, 0
  br i1 %cmp204, label %for.cond184.preheader.us955.preheader, label %for.cond184.preheader.lr.ph.split.split

for.cond184.preheader.us955.preheader:            ; preds = %for.cond184.preheader.lr.ph.split
  br label %for.cond184.preheader.us955

for.cond184.preheader.us955:                      ; preds = %for.inc222.us958, %for.cond184.preheader.us955.preheader
  %pm.3947.us956 = phi ptr [ %add.ptr223.us959, %for.inc222.us958 ], [ %add.ptr91.lcssa, %for.cond184.preheader.us955.preheader ]
  %cmp185920.us957 = icmp ugt ptr %pm.3947.us956, %a.addr.0908.lcssa
  br i1 %cmp185920.us957, label %land.rhs187.us922.us.preheader, label %for.inc222.us958

land.rhs187.us922.us.preheader:                   ; preds = %for.cond184.preheader.us955
  br label %land.rhs187.us922.us

for.inc222.us958.loopexit:                        ; preds = %for.body194.us927.us, %land.rhs187.us922.us
  br label %for.inc222.us958

for.inc222.us958:                                 ; preds = %for.inc222.us958.loopexit, %for.cond184.preheader.us955
  %add.ptr223.us959 = getelementptr inbounds nuw i8, ptr %pm.3947.us956, i64 %es
  %cmp181.us960 = icmp ult ptr %add.ptr223.us959, %add.ptr180
  br i1 %cmp181.us960, label %for.cond184.preheader.us955, label %cleanup.loopexit1038, !llvm.loop !8

land.rhs187.us922.us:                             ; preds = %for.body194.us927.us, %land.rhs187.us922.us.preheader
  %pl.2921.us923.us = phi ptr [ %add.ptr189.us924.us, %for.body194.us927.us ], [ %pm.3947.us956, %land.rhs187.us922.us.preheader ]
  %add.ptr189.us924.us = getelementptr inbounds i8, ptr %pl.2921.us923.us, i64 %idx.neg188
  %call190.us925.us = tail call i32 %cmp(ptr noundef nonnull %add.ptr189.us924.us, ptr noundef nonnull %pl.2921.us923.us) #2
  %cmp191.us926.us = icmp sgt i32 %call190.us925.us, 0
  br i1 %cmp191.us926.us, label %for.body194.us927.us, label %for.inc222.us958.loopexit

for.body194.us927.us:                             ; preds = %land.rhs187.us922.us
  %56 = load i32, ptr %pl.2921.us923.us, align 4
  %57 = load i32, ptr %add.ptr189.us924.us, align 4
  store i32 %57, ptr %pl.2921.us923.us, align 4
  store i32 %56, ptr %add.ptr189.us924.us, align 4
  %cmp185.us929.us = icmp ugt ptr %add.ptr189.us924.us, %a.addr.0908.lcssa
  br i1 %cmp185.us929.us, label %land.rhs187.us922.us, label %for.inc222.us958.loopexit, !llvm.loop !9

for.cond184.preheader.lr.ph.split.split:          ; preds = %for.cond184.preheader.lr.ph.split
  br i1 %or.cond.lcssa868.fr.lcssa, label %for.cond184.preheader.us962.preheader, label %for.cond184.preheader.lr.ph.split.split.split

for.cond184.preheader.us962.preheader:            ; preds = %for.cond184.preheader.lr.ph.split.split
  br label %for.cond184.preheader.us962

for.cond184.preheader.us962:                      ; preds = %for.inc222.us965, %for.cond184.preheader.us962.preheader
  %pm.3947.us963 = phi ptr [ %add.ptr223.us966, %for.inc222.us965 ], [ %add.ptr91.lcssa, %for.cond184.preheader.us962.preheader ]
  %cmp185920.us964 = icmp ugt ptr %pm.3947.us963, %a.addr.0908.lcssa
  br i1 %cmp185920.us964, label %land.rhs187.us930.us.preheader, label %for.inc222.us965

land.rhs187.us930.us.preheader:                   ; preds = %for.cond184.preheader.us962
  br label %land.rhs187.us930.us

for.inc222.us965.loopexit:                        ; preds = %for.inc218.loopexit.us.us, %land.rhs187.us930.us
  br label %for.inc222.us965

for.inc222.us965:                                 ; preds = %for.inc222.us965.loopexit, %for.cond184.preheader.us962
  %add.ptr223.us966 = getelementptr inbounds nuw i8, ptr %pm.3947.us963, i64 %es
  %cmp181.us967 = icmp ult ptr %add.ptr223.us966, %add.ptr180
  br i1 %cmp181.us967, label %for.cond184.preheader.us962, label %cleanup.loopexit1039, !llvm.loop !8

land.rhs187.us930.us:                             ; preds = %for.inc218.loopexit.us.us, %land.rhs187.us930.us.preheader
  %pl.2921.us931.us = phi ptr [ %add.ptr189.us932.us, %for.inc218.loopexit.us.us ], [ %pm.3947.us963, %land.rhs187.us930.us.preheader ]
  %add.ptr189.us932.us = getelementptr inbounds i8, ptr %pl.2921.us931.us, i64 %idx.neg188
  %call190.us933.us = tail call i32 %cmp(ptr noundef nonnull %add.ptr189.us932.us, ptr noundef nonnull %pl.2921.us931.us) #2
  %cmp191.us934.us = icmp sgt i32 %call190.us933.us, 0
  br i1 %cmp191.us934.us, label %do.body.i753.us.us.preheader, label %for.inc222.us965.loopexit

do.body.i753.us.us.preheader:                     ; preds = %land.rhs187.us930.us
  br label %do.body.i753.us.us

do.body.i753.us.us:                               ; preds = %do.body.i753.us.us, %do.body.i753.us.us.preheader
  %pj.0.i754.us.us = phi ptr [ %incdec.ptr1.i758.us.us, %do.body.i753.us.us ], [ %add.ptr189.us932.us, %do.body.i753.us.us.preheader ]
  %pi.0.i755.us.us = phi ptr [ %incdec.ptr.i757.us.us, %do.body.i753.us.us ], [ %pl.2921.us931.us, %do.body.i753.us.us.preheader ]
  %i.0.i756.us.us = phi i64 [ %dec.i759.us.us, %do.body.i753.us.us ], [ %div50.i752, %do.body.i753.us.us.preheader ]
  %58 = load i64, ptr %pi.0.i755.us.us, align 8
  %59 = load i64, ptr %pj.0.i754.us.us, align 8
  %incdec.ptr.i757.us.us = getelementptr inbounds nuw i8, ptr %pi.0.i755.us.us, i64 8
  store i64 %59, ptr %pi.0.i755.us.us, align 8
  %incdec.ptr1.i758.us.us = getelementptr inbounds nuw i8, ptr %pj.0.i754.us.us, i64 8
  store i64 %58, ptr %pj.0.i754.us.us, align 8
  %dec.i759.us.us = add nsw i64 %i.0.i756.us.us, -1
  %cmp2.i760.us.us = icmp samesign ugt i64 %i.0.i756.us.us, 1
  br i1 %cmp2.i760.us.us, label %do.body.i753.us.us, label %for.inc218.loopexit.us.us, !llvm.loop !3

for.inc218.loopexit.us.us:                        ; preds = %do.body.i753.us.us
  %cmp185.us937.us = icmp ugt ptr %add.ptr189.us932.us, %a.addr.0908.lcssa
  br i1 %cmp185.us937.us, label %land.rhs187.us930.us, label %for.inc222.us965.loopexit, !llvm.loop !9

for.cond184.preheader.lr.ph.split.split.split:    ; preds = %for.cond184.preheader.lr.ph.split.split
  br i1 %or.cond550.lcssa864.fr.lcssa, label %for.cond184.preheader.us969.preheader, label %for.cond184.preheader.preheader

for.cond184.preheader.preheader:                  ; preds = %for.cond184.preheader.lr.ph.split.split.split
  br label %for.cond184.preheader

for.cond184.preheader.us969.preheader:            ; preds = %for.cond184.preheader.lr.ph.split.split.split
  br label %for.cond184.preheader.us969

for.cond184.preheader.us969:                      ; preds = %for.inc222.us972, %for.cond184.preheader.us969.preheader
  %pm.3947.us970 = phi ptr [ %add.ptr223.us973, %for.inc222.us972 ], [ %add.ptr91.lcssa, %for.cond184.preheader.us969.preheader ]
  %cmp185920.us971 = icmp ugt ptr %pm.3947.us970, %a.addr.0908.lcssa
  br i1 %cmp185920.us971, label %land.rhs187.us938.us.preheader, label %for.inc222.us972

land.rhs187.us938.us.preheader:                   ; preds = %for.cond184.preheader.us969
  br label %land.rhs187.us938.us

for.inc222.us972.loopexit:                        ; preds = %for.inc218.loopexit843.us.us, %land.rhs187.us938.us
  br label %for.inc222.us972

for.inc222.us972:                                 ; preds = %for.inc222.us972.loopexit, %for.cond184.preheader.us969
  %add.ptr223.us973 = getelementptr inbounds nuw i8, ptr %pm.3947.us970, i64 %es
  %cmp181.us974 = icmp ult ptr %add.ptr223.us973, %add.ptr180
  br i1 %cmp181.us974, label %for.cond184.preheader.us969, label %cleanup.loopexit1040, !llvm.loop !8

land.rhs187.us938.us:                             ; preds = %for.inc218.loopexit843.us.us, %land.rhs187.us938.us.preheader
  %pl.2921.us939.us = phi ptr [ %add.ptr189.us940.us, %for.inc218.loopexit843.us.us ], [ %pm.3947.us970, %land.rhs187.us938.us.preheader ]
  %add.ptr189.us940.us = getelementptr inbounds i8, ptr %pl.2921.us939.us, i64 %idx.neg188
  %call190.us941.us = tail call i32 %cmp(ptr noundef nonnull %add.ptr189.us940.us, ptr noundef nonnull %pl.2921.us939.us) #2
  %cmp191.us942.us = icmp sgt i32 %call190.us941.us, 0
  br i1 %cmp191.us942.us, label %do.body12.i742.us.us.preheader, label %for.inc222.us972.loopexit

do.body12.i742.us.us.preheader:                   ; preds = %land.rhs187.us938.us
  br label %do.body12.i742.us.us

do.body12.i742.us.us:                             ; preds = %do.body12.i742.us.us, %do.body12.i742.us.us.preheader
  %i7.0.i743.us.us = phi i64 [ %dec17.i748.us.us, %do.body12.i742.us.us ], [ %div949.i741, %do.body12.i742.us.us.preheader ]
  %pi10.0.i744.us.us = phi ptr [ %incdec.ptr14.i746.us.us, %do.body12.i742.us.us ], [ %pl.2921.us939.us, %do.body12.i742.us.us.preheader ]
  %pj11.0.i745.us.us = phi ptr [ %incdec.ptr15.i747.us.us, %do.body12.i742.us.us ], [ %add.ptr189.us940.us, %do.body12.i742.us.us.preheader ]
  %60 = load i32, ptr %pi10.0.i744.us.us, align 4
  %61 = load i32, ptr %pj11.0.i745.us.us, align 4
  %incdec.ptr14.i746.us.us = getelementptr inbounds nuw i8, ptr %pi10.0.i744.us.us, i64 4
  store i32 %61, ptr %pi10.0.i744.us.us, align 4
  %incdec.ptr15.i747.us.us = getelementptr inbounds nuw i8, ptr %pj11.0.i745.us.us, i64 4
  store i32 %60, ptr %pj11.0.i745.us.us, align 4
  %dec17.i748.us.us = add nsw i64 %i7.0.i743.us.us, -1
  %cmp18.i749.us.us = icmp samesign ugt i64 %i7.0.i743.us.us, 1
  br i1 %cmp18.i749.us.us, label %do.body12.i742.us.us, label %for.inc218.loopexit843.us.us, !llvm.loop !4

for.inc218.loopexit843.us.us:                     ; preds = %do.body12.i742.us.us
  %cmp185.us945.us = icmp ugt ptr %add.ptr189.us940.us, %a.addr.0908.lcssa
  br i1 %cmp185.us945.us, label %land.rhs187.us938.us, label %for.inc222.us972.loopexit, !llvm.loop !9

for.cond184.preheader:                            ; preds = %for.inc222, %for.cond184.preheader.preheader
  %pm.3947 = phi ptr [ %add.ptr223, %for.inc222 ], [ %add.ptr91.lcssa, %for.cond184.preheader.preheader ]
  %cmp185920 = icmp ugt ptr %pm.3947, %a.addr.0908.lcssa
  br i1 %cmp185920, label %land.rhs187.preheader, label %for.inc222

land.rhs187.preheader:                            ; preds = %for.cond184.preheader
  br label %land.rhs187

land.rhs187:                                      ; preds = %for.inc218.loopexit844, %land.rhs187.preheader
  %pl.2921 = phi ptr [ %add.ptr189, %for.inc218.loopexit844 ], [ %pm.3947, %land.rhs187.preheader ]
  %add.ptr189 = getelementptr inbounds i8, ptr %pl.2921, i64 %idx.neg188
  %call190 = tail call i32 %cmp(ptr noundef nonnull %add.ptr189, ptr noundef nonnull %pl.2921) #2
  %cmp191 = icmp sgt i32 %call190, 0
  br i1 %cmp191, label %do.body27.i732.preheader, label %for.inc222.loopexit

do.body27.i732.preheader:                         ; preds = %land.rhs187
  br label %do.body27.i732

do.body27.i732:                                   ; preds = %do.body27.i732, %do.body27.i732.preheader
  %i22.0.i733 = phi i64 [ %dec32.i738, %do.body27.i732 ], [ %conv8.i731, %do.body27.i732.preheader ]
  %pi25.0.i734 = phi ptr [ %incdec.ptr29.i736, %do.body27.i732 ], [ %pl.2921, %do.body27.i732.preheader ]
  %pj26.0.i735 = phi ptr [ %incdec.ptr30.i737, %do.body27.i732 ], [ %add.ptr189, %do.body27.i732.preheader ]
  %62 = load i8, ptr %pi25.0.i734, align 1
  %63 = load i8, ptr %pj26.0.i735, align 1
  %incdec.ptr29.i736 = getelementptr inbounds nuw i8, ptr %pi25.0.i734, i64 1
  store i8 %63, ptr %pi25.0.i734, align 1
  %incdec.ptr30.i737 = getelementptr inbounds nuw i8, ptr %pj26.0.i735, i64 1
  store i8 %62, ptr %pj26.0.i735, align 1
  %dec32.i738 = add nsw i64 %i22.0.i733, -1
  %cmp33.i739 = icmp sgt i64 %i22.0.i733, 1
  br i1 %cmp33.i739, label %do.body27.i732, label %for.inc218.loopexit844, !llvm.loop !5

for.inc218.loopexit844:                           ; preds = %do.body27.i732
  %cmp185 = icmp ugt ptr %add.ptr189, %a.addr.0908.lcssa
  br i1 %cmp185, label %land.rhs187, label %for.inc222.loopexit, !llvm.loop !9

for.inc222.loopexit:                              ; preds = %for.inc218.loopexit844, %land.rhs187
  br label %for.inc222

for.inc222:                                       ; preds = %for.inc222.loopexit, %for.cond184.preheader
  %add.ptr223 = getelementptr inbounds nuw i8, ptr %pm.3947, i64 %es
  %cmp181 = icmp ult ptr %add.ptr223, %add.ptr180
  br i1 %cmp181, label %for.cond184.preheader, label %cleanup.loopexit1041, !llvm.loop !8

if.end225:                                        ; preds = %for.end173
  %mul226 = mul i64 %n.addr.0907, %es
  %add.ptr227 = getelementptr inbounds nuw i8, ptr %a.addr.0908, i64 %mul226
  %sub.ptr.lhs.cast228 = ptrtoint ptr %pa.1.lcssa1061 to i64
  %sub.ptr.sub229 = sub i64 %sub.ptr.lhs.cast228, %sub.ptr.lhs.cast909
  %sub.ptr.lhs.cast230 = ptrtoint ptr %pb.1.lcssa1063 to i64
  %sub.ptr.sub232 = sub i64 %sub.ptr.lhs.cast230, %sub.ptr.lhs.cast228
  %sub.ptr.sub229.sub.ptr.sub232 = tail call i64 @llvm.smin.i64(i64 %sub.ptr.sub229, i64 %sub.ptr.sub232)
  %cmp245.not = icmp eq i64 %sub.ptr.sub229.sub.ptr.sub232, 0
  br i1 %cmp245.not, label %if.end251, label %if.then247

if.then247:                                       ; preds = %if.end225
  %idx.neg248 = sub i64 0, %sub.ptr.sub229.sub.ptr.sub232
  %add.ptr249 = getelementptr inbounds i8, ptr %pb.1.lcssa1063, i64 %idx.neg248
  br i1 %or.cond.lcssa868.fr, label %if.then.i782, label %if.else.i762

if.then.i782:                                     ; preds = %if.then247
  %sext834 = shl i64 %sub.ptr.sub229.sub.ptr.sub232, 32
  %conv.i783 = ashr exact i64 %sext834, 32
  %div50.i784 = lshr i64 %conv.i783, 3
  br label %do.body.i785

do.body.i785:                                     ; preds = %do.body.i785, %if.then.i782
  %pj.0.i786 = phi ptr [ %add.ptr249, %if.then.i782 ], [ %incdec.ptr1.i790, %do.body.i785 ]
  %pi.0.i787 = phi ptr [ %a.addr.0908, %if.then.i782 ], [ %incdec.ptr.i789, %do.body.i785 ]
  %i.0.i788 = phi i64 [ %div50.i784, %if.then.i782 ], [ %dec.i791, %do.body.i785 ]
  %64 = load i64, ptr %pi.0.i787, align 8
  %65 = load i64, ptr %pj.0.i786, align 8
  %incdec.ptr.i789 = getelementptr inbounds nuw i8, ptr %pi.0.i787, i64 8
  store i64 %65, ptr %pi.0.i787, align 8
  %incdec.ptr1.i790 = getelementptr inbounds nuw i8, ptr %pj.0.i786, i64 8
  store i64 %64, ptr %pj.0.i786, align 8
  %dec.i791 = add nsw i64 %i.0.i788, -1
  %cmp2.i792 = icmp samesign ugt i64 %i.0.i788, 1
  br i1 %cmp2.i792, label %do.body.i785, label %if.end251.loopexit, !llvm.loop !3

if.else.i762:                                     ; preds = %if.then247
  %sext833 = shl i64 %sub.ptr.sub229.sub.ptr.sub232, 32
  %conv8.i763 = ashr exact i64 %sext833, 32
  br i1 %or.cond550.lcssa864.fr, label %if.then6.i772, label %do.body27.i764.preheader

do.body27.i764.preheader:                         ; preds = %if.else.i762
  br label %do.body27.i764

if.then6.i772:                                    ; preds = %if.else.i762
  %div949.i773 = lshr i64 %conv8.i763, 2
  br label %do.body12.i774

do.body12.i774:                                   ; preds = %do.body12.i774, %if.then6.i772
  %i7.0.i775 = phi i64 [ %div949.i773, %if.then6.i772 ], [ %dec17.i780, %do.body12.i774 ]
  %pi10.0.i776 = phi ptr [ %a.addr.0908, %if.then6.i772 ], [ %incdec.ptr14.i778, %do.body12.i774 ]
  %pj11.0.i777 = phi ptr [ %add.ptr249, %if.then6.i772 ], [ %incdec.ptr15.i779, %do.body12.i774 ]
  %66 = load i32, ptr %pi10.0.i776, align 4
  %67 = load i32, ptr %pj11.0.i777, align 4
  %incdec.ptr14.i778 = getelementptr inbounds nuw i8, ptr %pi10.0.i776, i64 4
  store i32 %67, ptr %pi10.0.i776, align 4
  %incdec.ptr15.i779 = getelementptr inbounds nuw i8, ptr %pj11.0.i777, i64 4
  store i32 %66, ptr %pj11.0.i777, align 4
  %dec17.i780 = add nsw i64 %i7.0.i775, -1
  %cmp18.i781 = icmp samesign ugt i64 %i7.0.i775, 1
  br i1 %cmp18.i781, label %do.body12.i774, label %if.end251.loopexit1050, !llvm.loop !4

do.body27.i764:                                   ; preds = %do.body27.i764, %do.body27.i764.preheader
  %i22.0.i765 = phi i64 [ %dec32.i770, %do.body27.i764 ], [ %conv8.i763, %do.body27.i764.preheader ]
  %pi25.0.i766 = phi ptr [ %incdec.ptr29.i768, %do.body27.i764 ], [ %a.addr.0908, %do.body27.i764.preheader ]
  %pj26.0.i767 = phi ptr [ %incdec.ptr30.i769, %do.body27.i764 ], [ %add.ptr249, %do.body27.i764.preheader ]
  %68 = load i8, ptr %pi25.0.i766, align 1
  %69 = load i8, ptr %pj26.0.i767, align 1
  %incdec.ptr29.i768 = getelementptr inbounds nuw i8, ptr %pi25.0.i766, i64 1
  store i8 %69, ptr %pi25.0.i766, align 1
  %incdec.ptr30.i769 = getelementptr inbounds nuw i8, ptr %pj26.0.i767, i64 1
  store i8 %68, ptr %pj26.0.i767, align 1
  %dec32.i770 = add nsw i64 %i22.0.i765, -1
  %cmp33.i771 = icmp sgt i64 %i22.0.i765, 1
  br i1 %cmp33.i771, label %do.body27.i764, label %if.end251.loopexit1051, !llvm.loop !5

if.end251.loopexit:                               ; preds = %do.body.i785
  br label %if.end251

if.end251.loopexit1050:                           ; preds = %do.body12.i774
  br label %if.end251

if.end251.loopexit1051:                           ; preds = %do.body27.i764
  br label %if.end251

if.end251:                                        ; preds = %if.end251.loopexit1051, %if.end251.loopexit1050, %if.end251.loopexit, %if.end225
  %sub.ptr.lhs.cast252 = ptrtoint ptr %pd.1.lcssa to i64
  %sub.ptr.rhs.cast253 = ptrtoint ptr %pc.1.lcssa to i64
  %sub.ptr.sub254 = sub i64 %sub.ptr.lhs.cast252, %sub.ptr.rhs.cast253
  %sub.ptr.lhs.cast255 = ptrtoint ptr %add.ptr227 to i64
  %70 = add i64 %es, %sub.ptr.lhs.cast252
  %sub258 = sub i64 %sub.ptr.lhs.cast255, %70
  %sub.ptr.sub254.sub258 = tail call i64 @llvm.smin.i64(i64 %sub.ptr.sub254, i64 %sub258)
  %cmp272.not = icmp eq i64 %sub.ptr.sub254.sub258, 0
  br i1 %cmp272.not, label %if.end278, label %if.then274

if.then274:                                       ; preds = %if.end251
  %idx.neg275 = sub i64 0, %sub.ptr.sub254.sub258
  %add.ptr276 = getelementptr inbounds i8, ptr %add.ptr227, i64 %idx.neg275
  br i1 %or.cond.lcssa868.fr, label %if.then.i814, label %if.else.i794

if.then.i814:                                     ; preds = %if.then274
  %sext836 = shl i64 %sub.ptr.sub254.sub258, 32
  %conv.i815 = ashr exact i64 %sext836, 32
  %div50.i816 = lshr i64 %conv.i815, 3
  br label %do.body.i817

do.body.i817:                                     ; preds = %do.body.i817, %if.then.i814
  %pj.0.i818 = phi ptr [ %add.ptr276, %if.then.i814 ], [ %incdec.ptr1.i822, %do.body.i817 ]
  %pi.0.i819 = phi ptr [ %pb.1.lcssa1063, %if.then.i814 ], [ %incdec.ptr.i821, %do.body.i817 ]
  %i.0.i820 = phi i64 [ %div50.i816, %if.then.i814 ], [ %dec.i823, %do.body.i817 ]
  %71 = load i64, ptr %pi.0.i819, align 8
  %72 = load i64, ptr %pj.0.i818, align 8
  %incdec.ptr.i821 = getelementptr inbounds nuw i8, ptr %pi.0.i819, i64 8
  store i64 %72, ptr %pi.0.i819, align 8
  %incdec.ptr1.i822 = getelementptr inbounds nuw i8, ptr %pj.0.i818, i64 8
  store i64 %71, ptr %pj.0.i818, align 8
  %dec.i823 = add nsw i64 %i.0.i820, -1
  %cmp2.i824 = icmp samesign ugt i64 %i.0.i820, 1
  br i1 %cmp2.i824, label %do.body.i817, label %if.end278.loopexit, !llvm.loop !3

if.else.i794:                                     ; preds = %if.then274
  %sext835 = shl i64 %sub.ptr.sub254.sub258, 32
  %conv8.i795 = ashr exact i64 %sext835, 32
  br i1 %or.cond550.lcssa864.fr, label %if.then6.i804, label %do.body27.i796.preheader

do.body27.i796.preheader:                         ; preds = %if.else.i794
  br label %do.body27.i796

if.then6.i804:                                    ; preds = %if.else.i794
  %div949.i805 = lshr i64 %conv8.i795, 2
  br label %do.body12.i806

do.body12.i806:                                   ; preds = %do.body12.i806, %if.then6.i804
  %i7.0.i807 = phi i64 [ %div949.i805, %if.then6.i804 ], [ %dec17.i812, %do.body12.i806 ]
  %pi10.0.i808 = phi ptr [ %pb.1.lcssa1063, %if.then6.i804 ], [ %incdec.ptr14.i810, %do.body12.i806 ]
  %pj11.0.i809 = phi ptr [ %add.ptr276, %if.then6.i804 ], [ %incdec.ptr15.i811, %do.body12.i806 ]
  %73 = load i32, ptr %pi10.0.i808, align 4
  %74 = load i32, ptr %pj11.0.i809, align 4
  %incdec.ptr14.i810 = getelementptr inbounds nuw i8, ptr %pi10.0.i808, i64 4
  store i32 %74, ptr %pi10.0.i808, align 4
  %incdec.ptr15.i811 = getelementptr inbounds nuw i8, ptr %pj11.0.i809, i64 4
  store i32 %73, ptr %pj11.0.i809, align 4
  %dec17.i812 = add nsw i64 %i7.0.i807, -1
  %cmp18.i813 = icmp samesign ugt i64 %i7.0.i807, 1
  br i1 %cmp18.i813, label %do.body12.i806, label %if.end278.loopexit1048, !llvm.loop !4

do.body27.i796:                                   ; preds = %do.body27.i796, %do.body27.i796.preheader
  %i22.0.i797 = phi i64 [ %dec32.i802, %do.body27.i796 ], [ %conv8.i795, %do.body27.i796.preheader ]
  %pi25.0.i798 = phi ptr [ %incdec.ptr29.i800, %do.body27.i796 ], [ %pb.1.lcssa1063, %do.body27.i796.preheader ]
  %pj26.0.i799 = phi ptr [ %incdec.ptr30.i801, %do.body27.i796 ], [ %add.ptr276, %do.body27.i796.preheader ]
  %75 = load i8, ptr %pi25.0.i798, align 1
  %76 = load i8, ptr %pj26.0.i799, align 1
  %incdec.ptr29.i800 = getelementptr inbounds nuw i8, ptr %pi25.0.i798, i64 1
  store i8 %76, ptr %pi25.0.i798, align 1
  %incdec.ptr30.i801 = getelementptr inbounds nuw i8, ptr %pj26.0.i799, i64 1
  store i8 %75, ptr %pj26.0.i799, align 1
  %dec32.i802 = add nsw i64 %i22.0.i797, -1
  %cmp33.i803 = icmp sgt i64 %i22.0.i797, 1
  br i1 %cmp33.i803, label %do.body27.i796, label %if.end278.loopexit1049, !llvm.loop !5

if.end278.loopexit:                               ; preds = %do.body.i817
  br label %if.end278

if.end278.loopexit1048:                           ; preds = %do.body12.i806
  br label %if.end278

if.end278.loopexit1049:                           ; preds = %do.body27.i796
  br label %if.end278

if.end278:                                        ; preds = %if.end278.loopexit1049, %if.end278.loopexit1048, %if.end278.loopexit, %if.end251
  %cmp282 = icmp ugt i64 %sub.ptr.sub232, %es
  br i1 %cmp282, label %if.then284, label %if.end286

if.then284:                                       ; preds = %if.end278
  %div285 = udiv i64 %sub.ptr.sub232, %es
  tail call void @spec_qsort(ptr noundef %a.addr.0908, i64 noundef %div285, i64 noundef %es, ptr noundef %cmp)
  br label %if.end286

if.end286:                                        ; preds = %if.then284, %if.end278
  %cmp290 = icmp ugt i64 %sub.ptr.sub254, %es
  br i1 %cmp290, label %if.then292, label %cleanup.loopexit1055

if.then292:                                       ; preds = %if.end286
  %idx.neg293 = sub i64 0, %sub.ptr.sub254
  %add.ptr294 = getelementptr inbounds i8, ptr %add.ptr227, i64 %idx.neg293
  %div295 = udiv i64 %sub.ptr.sub254, %es
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr294 to i64
  %77 = or i64 %es, %sub.ptr.lhs.cast
  %78 = and i64 %77, 7
  %or.cond = icmp eq i64 %78, 0
  %cond4 = select i1 %or.cond, i32 %cond, i32 2
  %79 = or i64 %es, %sub.ptr.lhs.cast
  %80 = and i64 %79, 3
  %or.cond550 = icmp eq i64 %80, 0
  %cond17 = select i1 %or.cond550, i32 %cond15, i32 2
  %cmp18 = icmp ult i64 %div295, 7
  br i1 %cmp18, label %for.cond.preheader.loopexit, label %if.end48

cleanup.loopexit:                                 ; preds = %for.inc45.us
  br label %cleanup

cleanup.loopexit1033:                             ; preds = %for.inc45.us1015
  br label %cleanup

cleanup.loopexit1034:                             ; preds = %for.inc45.us1022
  br label %cleanup

cleanup.loopexit1035:                             ; preds = %for.inc45.us1029
  br label %cleanup

cleanup.loopexit1036:                             ; preds = %for.inc45
  br label %cleanup

cleanup.loopexit1037:                             ; preds = %for.inc222.us
  br label %cleanup

cleanup.loopexit1038:                             ; preds = %for.inc222.us958
  br label %cleanup

cleanup.loopexit1039:                             ; preds = %for.inc222.us965
  br label %cleanup

cleanup.loopexit1040:                             ; preds = %for.inc222.us972
  br label %cleanup

cleanup.loopexit1041:                             ; preds = %for.inc222
  br label %cleanup

cleanup.loopexit1055:                             ; preds = %if.end286
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit1055, %cleanup.loopexit1041, %cleanup.loopexit1040, %cleanup.loopexit1039, %cleanup.loopexit1038, %cleanup.loopexit1037, %cleanup.loopexit1036, %cleanup.loopexit1035, %cleanup.loopexit1034, %cleanup.loopexit1033, %cleanup.loopexit, %for.cond178.preheader, %for.cond.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind }

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
