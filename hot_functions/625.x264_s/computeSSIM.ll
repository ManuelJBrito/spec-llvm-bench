; ModuleID = '/tmp/tmp.Sgf5Eey2K1/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/525.x264_r/src/image_validator/ImageValidator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, double, i32, double, i32, ptr, i32, i32 }
%struct.Pixel = type { i8, i8, i8, i8 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str.38 = external hidden unnamed_addr constant [39 x i8], align 1
@.str.39 = external hidden unnamed_addr constant [139 x i8], align 1
@.str.44 = external hidden unnamed_addr constant [49 x i8], align 1
@.str.45 = external hidden unnamed_addr constant [54 x i8], align 1
@.str.46 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.47 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.48 = external hidden unnamed_addr constant [24 x i8], align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.49 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.50 = external hidden unnamed_addr constant [40 x i8], align 1
@.str.51 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.52 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.53 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.55 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.56 = external hidden unnamed_addr constant [62 x i8], align 1
@.str.57 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.58 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.59 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.60 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.61 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.62 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.63 = external hidden unnamed_addr constant [31 x i8], align 1
@str.105 = external hidden unnamed_addr constant [66 x i8], align 1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @computeSSIM(ptr noundef byval(%struct.params) align 8 captures(none) %param) local_unnamed_addr #4 {
entry:
  %img11 = getelementptr inbounds nuw i8, ptr %param, i64 8
  %0 = load ptr, ptr %img11, align 8, !tbaa !0
  %img1luma2 = getelementptr inbounds nuw i8, ptr %param, i64 64
  %1 = load ptr, ptr %img1luma2, align 8, !tbaa !9
  %img23 = getelementptr inbounds nuw i8, ptr %param, i64 24
  %2 = load ptr, ptr %img23, align 8, !tbaa !10
  %img2luma4 = getelementptr inbounds nuw i8, ptr %param, i64 72
  %3 = load ptr, ptr %img2luma4, align 8, !tbaa !11
  %imgdiff = getelementptr inbounds nuw i8, ptr %param, i64 56
  %4 = load ptr, ptr %imgdiff, align 8, !tbaa !12
  %height5 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %5 = load i16, ptr %height5, align 4, !tbaa !13
  %conv = zext i16 %5 to i32
  %width6 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %6 = load i16, ptr %width6, align 2, !tbaa !17
  %conv7 = zext i16 %6 to i32
  %width8 = getelementptr inbounds nuw i8, ptr %2, i64 18
  %7 = load i16, ptr %width8, align 2, !tbaa !17
  %cmp.not = icmp eq i16 %6, %7
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %height11 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %8 = load i16, ptr %height11, align 4, !tbaa !13
  %cmp13.not = icmp eq i16 %5, %8
  br i1 %cmp13.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load ptr, ptr @stderr, align 8, !tbaa !18
  %conv16 = zext i16 %7 to i32
  %height17 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %10 = load i16, ptr %height17, align 4, !tbaa !13
  %conv18 = zext i16 %10 to i32
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.44, i32 noundef %conv7, i32 noundef %conv, i32 noundef %conv16, i32 noundef %conv18) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bitsperpixel = getelementptr inbounds nuw i8, ptr %0, i64 22
  %11 = load i8, ptr %bitsperpixel, align 2, !tbaa !20
  %cond = icmp eq i8 %11, 8
  %call32 = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #9
  %cmp33 = icmp eq ptr %call32, null
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end
  %12 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.38, i64 noundef 512, ptr noundef nonnull @.str.39, i32 noundef 392) #8
  tail call void @exit(i32 noundef 1) #10
  unreachable

if.end37:                                         ; preds = %if.end
  %call38 = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #9
  %cmp39 = icmp eq ptr %call38, null
  br i1 %cmp39, label %if.then41, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end37
  %cmp441442.not = icmp eq i16 %5, 0
  br i1 %cmp441442.not, label %for.cond.cleanup, label %for.cond46.preheader.lr.ph

for.cond46.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cmp471431.not = icmp eq i16 %6, 0
  %conversion = getelementptr inbounds nuw i8, ptr %param, i64 84
  %13 = load i32, ptr %conversion, align 4
  %imagedata239 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %imagedata307 = getelementptr inbounds nuw i8, ptr %2, i64 288
  %imagedata168 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %imagedata201 = getelementptr inbounds nuw i8, ptr %2, i64 288
  %imagedata99 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %imagedata130 = getelementptr inbounds nuw i8, ptr %2, i64 288
  %imagedata = getelementptr inbounds nuw i8, ptr %0, i64 288
  %imagedata85 = getelementptr inbounds nuw i8, ptr %2, i64 288
  %cmp383.not = icmp eq ptr %1, null
  %imagedata389 = getelementptr inbounds nuw i8, ptr %1, i64 288
  %cmp398.not = icmp eq ptr %3, null
  %imagedata404 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %debug = getelementptr inbounds nuw i8, ptr %param, i64 80
  %bf.load = load i16, ptr %debug, align 8
  %14 = and i16 %bf.load, 256
  %cmp413.not = icmp eq i16 %14, 0
  %imagedata418 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %imagedata448 = getelementptr inbounds nuw i8, ptr %1, i64 288
  %imagedata461 = getelementptr inbounds nuw i8, ptr %2, i64 288
  %imagedata492 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %avg_only = getelementptr inbounds nuw i8, ptr %param, i64 80
  %bf.load527 = load i16, ptr %avg_only, align 8
  %15 = and i16 %bf.load527, 16
  %tobool531.not = icmp eq i16 %15, 0
  %16 = and i16 %bf.load527, 448
  %tobool539.not = icmp eq i16 %16, 0
  %numbuckets = getelementptr inbounds nuw i8, ptr %param, i64 112
  %17 = load i32, ptr %numbuckets, align 8
  %cmp548.not = icmp eq i32 %17, 0
  %conv552 = uitofp i32 %17 to float
  %div553 = fmul float %conv552, 5.000000e-01
  %conv554 = fpext float %div553 to double
  %div5571295 = lshr i32 %17, 1
  %conv558 = uitofp nneg i32 %div5571295 to double
  %buckets = getelementptr inbounds nuw i8, ptr %param, i64 120
  %18 = load ptr, ptr %buckets, align 8
  %threshold = getelementptr inbounds nuw i8, ptr %param, i64 88
  %19 = load double, ptr %threshold, align 8
  %cmp564 = fcmp ogt double %19, 0.000000e+00
  %cmp572.not = icmp eq ptr %4, null
  %imagedata587 = getelementptr inbounds nuw i8, ptr %1, i64 288
  %imagedata595 = getelementptr inbounds nuw i8, ptr %4, i64 288
  %20 = and i16 %bf.load527, 384
  %cmp664.not = icmp eq i16 %20, 0
  %imagedata672 = getelementptr inbounds nuw i8, ptr %4, i64 288
  br i1 %cmp471431.not, label %for.cond46.preheader.preheader, label %for.cond46.preheader.us.preheader

for.cond46.preheader.us.preheader:                ; preds = %for.cond46.preheader.lr.ph
  %21 = zext i32 %conv7 to i64
  %22 = zext i32 %conv7 to i64
  %23 = zext i32 %conv7 to i64
  %24 = add nsw i32 %conv7, -1
  %25 = lshr i32 %24, 3
  %26 = add i32 %25, 1
  %27 = zext i32 %conv to i64
  %28 = zext i32 %conv to i64
  %29 = zext i32 %conv to i64
  br label %for.cond46.preheader.us

for.cond46.preheader.preheader:                   ; preds = %for.cond46.preheader.lr.ph
  br label %for.cond.cleanup.loopexit

for.cond46.preheader.us:                          ; preds = %for.cond46.for.cond.cleanup49_crit_edge.us, %for.cond46.preheader.us.preheader
  %indvars.iv1498 = phi i64 [ 0, %for.cond46.preheader.us.preheader ], [ %indvars.iv.next1499, %for.cond46.for.cond.cleanup49_crit_edge.us ]
  %sum.01447.us = phi double [ %add526.us.lcssa, %for.cond46.for.cond.cleanup49_crit_edge.us ], [ 0.000000e+00, %for.cond46.preheader.us.preheader ]
  %minssim.01446.us = phi double [ %minssim.2.us.lcssa, %for.cond46.for.cond.cleanup49_crit_edge.us ], [ 1.000000e+00, %for.cond46.preheader.us.preheader ]
  %cnt.01445.us = phi i32 [ %34, %for.cond46.for.cond.cleanup49_crit_edge.us ], [ 0, %for.cond46.preheader.us.preheader ]
  %numbelow.01444.us = phi i32 [ %numbelow.2.us.lcssa, %for.cond46.for.cond.cleanup49_crit_edge.us ], [ 0, %for.cond46.preheader.us.preheader ]
  %indvars.iv.next1499 = add nuw nsw i64 %indvars.iv1498, 8
  %cmp51.us = icmp samesign ugt i64 %indvars.iv.next1499, %28
  %30 = sub nsw i64 %29, %indvars.iv1498
  %31 = trunc nsw i64 %30 to i32
  %cond56.us = select i1 %cmp51.us, i32 %31, i32 8
  %cmp661410.us.not = icmp eq i32 %cond56.us, 0
  %cmp5771417.us.not1473 = icmp eq i32 %cond56.us, 0
  %32 = zext i32 %cond56.us to i64
  %33 = zext i32 %cond56.us to i64
  %34 = add i32 %26, %cnt.01445.us
  br label %for.body50.us

for.body50.us:                                    ; preds = %if.end683.us, %for.cond46.preheader.us
  %indvars.iv1494 = phi i64 [ 0, %for.cond46.preheader.us ], [ %indvars.iv.next1495, %if.end683.us ]
  %sum.11438.us = phi double [ %sum.01447.us, %for.cond46.preheader.us ], [ %add526.us, %if.end683.us ]
  %minssim.11437.us = phi double [ %minssim.01446.us, %for.cond46.preheader.us ], [ %minssim.2.us, %if.end683.us ]
  %numbelow.11435.us = phi i32 [ %numbelow.01444.us, %for.cond46.preheader.us ], [ %numbelow.2.us, %if.end683.us ]
  %indvars.iv.next1495 = add nuw nsw i64 %indvars.iv1494, 8
  %cmp58.us = icmp samesign ugt i64 %indvars.iv.next1495, %21
  %35 = sub nuw nsw i64 %23, %indvars.iv1494
  %36 = trunc nuw i64 %35 to i32
  %cond64.us = select i1 %cmp58.us, i32 %36, i32 8
  br i1 %cmp661410.us.not, label %for.cond.cleanup68.us, label %for.cond70.preheader.lr.ph.us

for.cond.cleanup68.us.loopexit:                   ; preds = %for.cond70.preheader.us1456.preheader
  br label %for.cond.cleanup68.us

for.cond.cleanup68.us.loopexit1477:               ; preds = %for.cond70.for.cond.cleanup73_crit_edge.us.us
  %inc.us.us.lcssa.lcssa = phi i32 [ %inc.us.us.lcssa, %for.cond70.for.cond.cleanup73_crit_edge.us.us ]
  br label %for.cond.cleanup68.us

for.cond.cleanup68.us:                            ; preds = %for.cond.cleanup68.us.loopexit1477, %for.cond.cleanup68.us.loopexit, %for.body50.us
  %n.0.lcssa.us = phi i32 [ 0, %for.body50.us ], [ 0, %for.cond.cleanup68.us.loopexit ], [ %inc.us.us.lcssa.lcssa, %for.cond.cleanup68.us.loopexit1477 ]
  %cmp5.i.us = icmp sgt i32 %n.0.lcssa.us, 0
  br i1 %cmp5.i.us, label %for.body.preheader.i.us, label %variance.exit1334.us

variance.exit1334.us:                             ; preds = %for.cond.cleanup68.us
  %conv.i.us = sitofp i32 %n.0.lcssa.us to double
  %div.i.us = fdiv double 0.000000e+00, %conv.i.us
  %div.i1299.us = fdiv double 0.000000e+00, %conv.i.us
  %sub4.i.us = add nsw i32 %n.0.lcssa.us, -1
  %conv.i1311.us = sitofp i32 %sub4.i.us to double
  %div.i1312.us = fdiv double 0.000000e+00, %conv.i1311.us
  %div.i1324.us = fdiv double 0.000000e+00, %conv.i1311.us
  br label %covariance.exit.us

for.body.preheader.i.us:                          ; preds = %for.cond.cleanup68.us
  %wide.trip.count.i.us = zext nneg i32 %n.0.lcssa.us to i64
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %for.body.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %for.body.preheader.i.us ], [ %indvars.iv.next.i.us, %for.body.i.us ]
  %sum.06.i.us = phi double [ 0.000000e+00, %for.body.preheader.i.us ], [ %add.i.us, %for.body.i.us ]
  %arrayidx.i.us = getelementptr inbounds nuw double, ptr %call32, i64 %indvars.iv.i.us
  %37 = load double, ptr %arrayidx.i.us, align 8, !tbaa !21
  %add.i.us = fadd double %sum.06.i.us, %37
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %for.body.preheader.i1300.us, label %for.body.i.us, !llvm.loop !22

for.body.preheader.i1300.us:                      ; preds = %for.body.i.us
  %add.i.us.lcssa = phi double [ %add.i.us, %for.body.i.us ]
  %wide.trip.count.i1301.us = zext nneg i32 %n.0.lcssa.us to i64
  br label %for.body.i1302.us

for.body.i1302.us:                                ; preds = %for.body.i1302.us, %for.body.preheader.i1300.us
  %indvars.iv.i1303.us = phi i64 [ 0, %for.body.preheader.i1300.us ], [ %indvars.iv.next.i1307.us, %for.body.i1302.us ]
  %sum.06.i1304.us = phi double [ 0.000000e+00, %for.body.preheader.i1300.us ], [ %add.i1306.us, %for.body.i1302.us ]
  %arrayidx.i1305.us = getelementptr inbounds nuw double, ptr %call38, i64 %indvars.iv.i1303.us
  %38 = load double, ptr %arrayidx.i1305.us, align 8, !tbaa !21
  %add.i1306.us = fadd double %sum.06.i1304.us, %38
  %indvars.iv.next.i1307.us = add nuw nsw i64 %indvars.iv.i1303.us, 1
  %exitcond.not.i1308.us = icmp eq i64 %indvars.iv.next.i1307.us, %wide.trip.count.i1301.us
  br i1 %exitcond.not.i1308.us, label %for.body.preheader.i1313.us, label %for.body.i1302.us, !llvm.loop !22

for.body.preheader.i1313.us:                      ; preds = %for.body.i1302.us
  %add.i1306.us.lcssa = phi double [ %add.i1306.us, %for.body.i1302.us ]
  %conv.i1348.us = uitofp nneg i32 %n.0.lcssa.us to double
  %div.i1349.us = fdiv double %add.i.us.lcssa, %conv.i1348.us
  %wide.trip.count.i1314.us = zext nneg i32 %n.0.lcssa.us to i64
  br label %for.body.i1315.us

for.body.i1315.us:                                ; preds = %for.body.i1315.us, %for.body.preheader.i1313.us
  %indvars.iv.i1316.us = phi i64 [ 0, %for.body.preheader.i1313.us ], [ %indvars.iv.next.i1318.us, %for.body.i1315.us ]
  %sum.013.i.us = phi double [ 0.000000e+00, %for.body.preheader.i1313.us ], [ %40, %for.body.i1315.us ]
  %arrayidx.i1317.us = getelementptr inbounds nuw double, ptr %call32, i64 %indvars.iv.i1316.us
  %39 = load double, ptr %arrayidx.i1317.us, align 8, !tbaa !21
  %sub.i.us = fsub double %39, %div.i1349.us
  %40 = tail call double @llvm.fmuladd.f64(double %sub.i.us, double %sub.i.us, double %sum.013.i.us)
  %indvars.iv.next.i1318.us = add nuw nsw i64 %indvars.iv.i1316.us, 1
  %exitcond.not.i1319.us = icmp eq i64 %indvars.iv.next.i1318.us, %wide.trip.count.i1314.us
  br i1 %exitcond.not.i1319.us, label %for.body.preheader.i1325.us, label %for.body.i1315.us, !llvm.loop !24

for.body.preheader.i1325.us:                      ; preds = %for.body.i1315.us
  %.lcssa = phi double [ %40, %for.body.i1315.us ]
  %div.i12991357.us = fdiv double %add.i1306.us.lcssa, %conv.i1348.us
  %wide.trip.count.i1326.us = zext nneg i32 %n.0.lcssa.us to i64
  br label %for.body.i1327.us

for.body.i1327.us:                                ; preds = %for.body.i1327.us, %for.body.preheader.i1325.us
  %indvars.iv.i1328.us = phi i64 [ 0, %for.body.preheader.i1325.us ], [ %indvars.iv.next.i1332.us, %for.body.i1327.us ]
  %sum.013.i1329.us = phi double [ 0.000000e+00, %for.body.preheader.i1325.us ], [ %42, %for.body.i1327.us ]
  %arrayidx.i1330.us = getelementptr inbounds nuw double, ptr %call38, i64 %indvars.iv.i1328.us
  %41 = load double, ptr %arrayidx.i1330.us, align 8, !tbaa !21
  %sub.i1331.us = fsub double %41, %div.i12991357.us
  %42 = tail call double @llvm.fmuladd.f64(double %sub.i1331.us, double %sub.i1331.us, double %sum.013.i1329.us)
  %indvars.iv.next.i1332.us = add nuw nsw i64 %indvars.iv.i1328.us, 1
  %exitcond.not.i1333.us = icmp eq i64 %indvars.iv.next.i1332.us, %wide.trip.count.i1326.us
  br i1 %exitcond.not.i1333.us, label %for.body.preheader.i1339.us, label %for.body.i1327.us, !llvm.loop !24

for.body.preheader.i1339.us:                      ; preds = %for.body.i1327.us
  %.lcssa1479 = phi double [ %42, %for.body.i1327.us ]
  %wide.trip.count.i1340.us = zext nneg i32 %n.0.lcssa.us to i64
  br label %for.body.i1341.us

for.body.i1341.us:                                ; preds = %for.body.i1341.us, %for.body.preheader.i1339.us
  %indvars.iv.i1342.us = phi i64 [ 0, %for.body.preheader.i1339.us ], [ %indvars.iv.next.i1345.us, %for.body.i1341.us ]
  %sum.011.i.us = phi double [ 0.000000e+00, %for.body.preheader.i1339.us ], [ %45, %for.body.i1341.us ]
  %arrayidx.i1343.us = getelementptr inbounds nuw double, ptr %call32, i64 %indvars.iv.i1342.us
  %43 = load double, ptr %arrayidx.i1343.us, align 8, !tbaa !21
  %sub.i1344.us = fsub double %43, %div.i1349.us
  %arrayidx2.i.us = getelementptr inbounds nuw double, ptr %call38, i64 %indvars.iv.i1342.us
  %44 = load double, ptr %arrayidx2.i.us, align 8, !tbaa !21
  %sub3.i.us = fsub double %44, %div.i12991357.us
  %45 = tail call double @llvm.fmuladd.f64(double %sub.i1344.us, double %sub3.i.us, double %sum.011.i.us)
  %indvars.iv.next.i1345.us = add nuw nsw i64 %indvars.iv.i1342.us, 1
  %exitcond.not.i1346.us = icmp eq i64 %indvars.iv.next.i1345.us, %wide.trip.count.i1340.us
  br i1 %exitcond.not.i1346.us, label %covariance.exit.us.loopexit, label %for.body.i1341.us, !llvm.loop !25

covariance.exit.us.loopexit:                      ; preds = %for.body.i1341.us
  %.lcssa1480 = phi double [ %45, %for.body.i1341.us ]
  %sub4.i1365.us = add nsw i32 %n.0.lcssa.us, -1
  %conv.i13111366.us = uitofp nneg i32 %sub4.i1365.us to double
  %div.i13121367.us = fdiv double %.lcssa, %conv.i13111366.us
  %div.i13241381.us = fdiv double %.lcssa1479, %conv.i13111366.us
  br label %covariance.exit.us

covariance.exit.us:                               ; preds = %covariance.exit.us.loopexit, %variance.exit1334.us
  %div.i13241390.us = phi double [ %div.i1324.us, %variance.exit1334.us ], [ %div.i13241381.us, %covariance.exit.us.loopexit ]
  %div.i1299136013681388.us = phi double [ %div.i1299.us, %variance.exit1334.us ], [ %div.i12991357.us, %covariance.exit.us.loopexit ]
  %div.i1352135813701386.us = phi double [ %div.i.us, %variance.exit1334.us ], [ %div.i1349.us, %covariance.exit.us.loopexit ]
  %conv.i131113721384.us = phi double [ %conv.i1311.us, %variance.exit1334.us ], [ %conv.i13111366.us, %covariance.exit.us.loopexit ]
  %div.i131213741382.us = phi double [ %div.i1312.us, %variance.exit1334.us ], [ %div.i13121367.us, %covariance.exit.us.loopexit ]
  %sum.0.lcssa.i1335.us = phi double [ 0.000000e+00, %variance.exit1334.us ], [ %.lcssa1480, %covariance.exit.us.loopexit ]
  %div.i1338.us = fdiv double %sum.0.lcssa.i1335.us, %conv.i131113721384.us
  %mul515.us = fmul double %div.i1352135813701386.us, 2.000000e+00
  %46 = tail call double @llvm.fmuladd.f64(double %mul515.us, double %div.i1299136013681388.us, double 6.502500e+00)
  %47 = tail call double @llvm.fmuladd.f64(double %div.i1338.us, double 2.000000e+00, double 5.852550e+01)
  %mul518.us = fmul double %46, %47
  %mul520.us = fmul double %div.i1299136013681388.us, %div.i1299136013681388.us
  %48 = tail call double @llvm.fmuladd.f64(double %div.i1352135813701386.us, double %div.i1352135813701386.us, double %mul520.us)
  %add521.us = fadd double %48, 6.502500e+00
  %add522.us = fadd double %div.i13241390.us, %div.i131213741382.us
  %add523.us = fadd double %add522.us, 5.852550e+01
  %mul524.us = fmul double %add521.us, %add523.us
  %div.us = fdiv double %mul518.us, %mul524.us
  %add526.us = fadd double %sum.11438.us, %div.us
  br i1 %tobool531.not, label %if.then532.us, label %if.end543.us

if.then532.us:                                    ; preds = %covariance.exit.us
  %49 = trunc nuw nsw i64 %indvars.iv1494 to i32
  %50 = trunc nuw nsw i64 %indvars.iv1498 to i32
  %call533.us = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %49, i32 noundef %50, double noundef %div.us)
  br i1 %tobool539.not, label %if.end543.us, label %if.then540.us

if.then540.us:                                    ; preds = %if.then532.us
  %51 = load ptr, ptr @stdout, align 8, !tbaa !18
  %call541.us = tail call i32 @fflush(ptr noundef %51)
  br label %if.end543.us

if.end543.us:                                     ; preds = %if.then540.us, %if.then532.us, %covariance.exit.us
  %cmp544.us = fcmp olt double %div.us, %minssim.11437.us
  %minssim.2.us = select i1 %cmp544.us, double %div.us, double %minssim.11437.us
  br i1 %cmp548.not, label %if.end563.us, label %if.then550.us

if.then550.us:                                    ; preds = %if.end543.us
  %52 = tail call double @llvm.fmuladd.f64(double %div.us, double %conv554, double %conv558)
  %conv559.us = fptosi double %52 to i32
  %idxprom560.us = sext i32 %conv559.us to i64
  %arrayidx561.us = getelementptr inbounds i32, ptr %18, i64 %idxprom560.us
  %53 = load i32, ptr %arrayidx561.us, align 4, !tbaa !26
  %inc562.us = add i32 %53, 1
  store i32 %inc562.us, ptr %arrayidx561.us, align 4, !tbaa !26
  br label %if.end563.us

if.end563.us:                                     ; preds = %if.then550.us, %if.end543.us
  %cmp567.us = fcmp olt double %div.us, %19
  %or.cond.us = select i1 %cmp564, i1 %cmp567.us, i1 false
  %inc570.us = zext i1 %or.cond.us to i32
  %numbelow.2.us = add i32 %numbelow.11435.us, %inc570.us
  %brmerge = or i1 %cmp572.not, %cmp5771417.us.not1473
  br i1 %brmerge, label %if.end658.us, label %for.cond582.preheader.lr.ph.us

if.end658.us.loopexit:                            ; preds = %for.cond582.preheader.us1452.preheader
  br label %if.end658.us

if.end658.us.loopexit1476:                        ; preds = %for.cond582.for.cond.cleanup585_crit_edge.us.us
  br label %if.end658.us

if.end658.us:                                     ; preds = %if.end658.us.loopexit1476, %if.end658.us.loopexit, %if.end563.us
  br i1 %cmp664.not, label %if.end683.us, label %if.then666.us

if.then666.us:                                    ; preds = %if.end658.us
  %54 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call667.us = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.49, double noundef %div.i1352135813701386.us, double noundef %div.i1299136013681388.us) #8
  %55 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call668.us = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.50, double noundef %div.i131213741382.us, double noundef %div.i13241390.us) #8
  %56 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call669.us = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.51, double noundef %div.i1338.us) #8
  %57 = load ptr, ptr @stderr, align 8, !tbaa !18
  br i1 %cmp572.not, label %cond.end680.us, label %cond.true671.us

cond.true671.us:                                  ; preds = %if.then666.us
  %58 = load ptr, ptr %imagedata672, align 8, !tbaa !27
  %arrayidx674.us = getelementptr inbounds nuw ptr, ptr %58, i64 %indvars.iv1498
  %59 = load ptr, ptr %arrayidx674.us, align 8, !tbaa !28
  %arrayidx676.us = getelementptr inbounds nuw %struct.Pixel, ptr %59, i64 %indvars.iv1494
  %red677.us = getelementptr inbounds nuw i8, ptr %arrayidx676.us, i64 2
  %60 = load i8, ptr %red677.us, align 1, !tbaa !29
  %conv678.us = zext i8 %60 to i32
  br label %cond.end680.us

cond.end680.us:                                   ; preds = %cond.true671.us, %if.then666.us
  %cond681.us = phi i32 [ %conv678.us, %cond.true671.us ], [ 0, %if.then666.us ]
  %61 = trunc nuw nsw i64 %indvars.iv1494 to i32
  %62 = trunc nuw nsw i64 %indvars.iv1498 to i32
  %call682.us = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.52, i32 noundef %61, i32 noundef %62, double noundef %div.us, i32 noundef %cond681.us) #8
  br label %if.end683.us

if.end683.us:                                     ; preds = %cond.end680.us, %if.end658.us
  %cmp47.us = icmp samesign ult i64 %indvars.iv.next1495, %22
  br i1 %cmp47.us, label %for.body50.us, label %for.cond46.for.cond.cleanup49_crit_edge.us, !llvm.loop !31

for.cond70.preheader.lr.ph.us:                    ; preds = %for.body50.us
  %cmp711407.us.not = icmp eq i32 %cond64.us, 0
  br i1 %cmp711407.us.not, label %for.cond70.preheader.us1456.preheader, label %for.cond70.preheader.us.us.preheader

for.cond70.preheader.us.us.preheader:             ; preds = %for.cond70.preheader.lr.ph.us
  %63 = zext i32 %cond64.us to i64
  br label %for.cond70.preheader.us.us

for.cond70.preheader.us1456.preheader:            ; preds = %for.cond70.preheader.lr.ph.us
  br label %for.cond.cleanup68.us.loopexit

for.cond70.preheader.us.us:                       ; preds = %for.cond70.for.cond.cleanup73_crit_edge.us.us, %for.cond70.preheader.us.us.preheader
  %indvars.iv1482 = phi i64 [ 0, %for.cond70.preheader.us.us.preheader ], [ %indvars.iv.next1483, %for.cond70.for.cond.cleanup73_crit_edge.us.us ]
  %n.01412.us.us = phi i32 [ %inc.us.us.lcssa, %for.cond70.for.cond.cleanup73_crit_edge.us.us ], [ 0, %for.cond70.preheader.us.us.preheader ]
  %64 = trunc nuw i64 %indvars.iv1482 to i32
  %65 = trunc nuw nsw i64 %indvars.iv1498 to i32
  %add240.us.us = add i32 %64, %65
  %idxprom241.us.us = zext i32 %add240.us.us to i64
  %66 = trunc nuw i64 %indvars.iv1482 to i32
  %67 = trunc nuw nsw i64 %indvars.iv1498 to i32
  %add169.us.us = add i32 %66, %67
  %idxprom170.us.us = zext i32 %add169.us.us to i64
  %68 = trunc nuw i64 %indvars.iv1482 to i32
  %69 = trunc nuw nsw i64 %indvars.iv1498 to i32
  %add100.us.us = add i32 %68, %69
  %idxprom101.us.us = zext i32 %add100.us.us to i64
  %70 = trunc nuw i64 %indvars.iv1482 to i32
  %71 = trunc nuw nsw i64 %indvars.iv1498 to i32
  %add78.us.us = add i32 %70, %71
  %idxprom.us.us = zext i32 %add78.us.us to i64
  %72 = trunc nuw i64 %indvars.iv1482 to i32
  %73 = trunc nuw nsw i64 %indvars.iv1498 to i32
  %add390.us.us = add i32 %72, %73
  %idxprom391.us.us = zext i32 %add390.us.us to i64
  %74 = trunc nuw i64 %indvars.iv1482 to i32
  %75 = trunc nuw nsw i64 %indvars.iv1498 to i32
  %add405.us.us = add i32 %74, %75
  %idxprom406.us.us = zext i32 %add405.us.us to i64
  %76 = trunc nuw i64 %indvars.iv1482 to i32
  %77 = trunc nuw nsw i64 %indvars.iv1498 to i32
  %add416.us.us = add i32 %76, %77
  %idxprom420.us.us = zext i32 %add416.us.us to i64
  br label %for.body74.us.us

for.body74.us.us:                                 ; preds = %if.end505.us.us, %for.cond70.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end505.us.us ], [ 0, %for.cond70.preheader.us.us ]
  %n.11409.us.us = phi i32 [ %n.01412.us.us, %for.cond70.preheader.us.us ], [ %inc.us.us, %if.end505.us.us ]
  br i1 %cond, label %if.then77.us.us, label %if.else.us.us

if.else.us.us:                                    ; preds = %for.body74.us.us
  switch i32 %13, label %if.else376 [
    i32 0, label %if.then98.us.us
    i32 1, label %if.then167.us.us
    i32 2, label %if.then238.us.us
  ]

if.then238.us.us:                                 ; preds = %if.else.us.us
  %78 = load ptr, ptr %imagedata239, align 8, !tbaa !27
  %arrayidx242.us.us = getelementptr inbounds nuw ptr, ptr %78, i64 %idxprom241.us.us
  %79 = load ptr, ptr %arrayidx242.us.us, align 8, !tbaa !28
  %80 = trunc nuw i64 %indvars.iv to i32
  %81 = trunc nuw nsw i64 %indvars.iv1494 to i32
  %add243.us.us = add i32 %80, %81
  %idxprom244.us.us = zext i32 %add243.us.us to i64
  %arrayidx245.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %79, i64 %idxprom244.us.us
  %red246.us.us = getelementptr inbounds nuw i8, ptr %arrayidx245.us.us, i64 2
  %82 = load i8, ptr %red246.us.us, align 1, !tbaa !29
  %conv248.us.us = uitofp i8 %82 to double
  %mul.us.us = fmul double %conv248.us.us, 2.990000e-01
  %green267.us.us = getelementptr inbounds nuw i8, ptr %arrayidx245.us.us, i64 1
  %83 = load i8, ptr %green267.us.us, align 1, !tbaa !32
  %conv269.us.us = uitofp i8 %83 to double
  %mul270.us.us = fmul double %conv269.us.us, 5.870000e-01
  %mul281.us.us = fmul double %mul270.us.us, %conv269.us.us
  %84 = tail call double @llvm.fmuladd.f64(double %mul.us.us, double %conv248.us.us, double %mul281.us.us)
  %85 = load i8, ptr %arrayidx245.us.us, align 1, !tbaa !33
  %conv291.us.us = uitofp i8 %85 to double
  %mul292.us.us = fmul double %conv291.us.us, 1.140000e-01
  %86 = tail call double @llvm.fmuladd.f64(double %mul292.us.us, double %conv291.us.us, double %84)
  %call304.us.us = tail call double @sqrt(double noundef %86) #11, !tbaa !26
  %idxprom305.us.us = zext i32 %n.11409.us.us to i64
  %arrayidx306.us.us = getelementptr inbounds nuw double, ptr %call32, i64 %idxprom305.us.us
  store double %call304.us.us, ptr %arrayidx306.us.us, align 8, !tbaa !21
  %87 = load ptr, ptr %imagedata307, align 8, !tbaa !27
  %arrayidx310.us.us = getelementptr inbounds nuw ptr, ptr %87, i64 %idxprom241.us.us
  %88 = load ptr, ptr %arrayidx310.us.us, align 8, !tbaa !28
  %arrayidx313.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %88, i64 %idxprom244.us.us
  %red314.us.us = getelementptr inbounds nuw i8, ptr %arrayidx313.us.us, i64 2
  %89 = load i8, ptr %red314.us.us, align 1, !tbaa !29
  %conv316.us.us = uitofp i8 %89 to double
  %mul317.us.us = fmul double %conv316.us.us, 2.990000e-01
  %green336.us.us = getelementptr inbounds nuw i8, ptr %arrayidx313.us.us, i64 1
  %90 = load i8, ptr %green336.us.us, align 1, !tbaa !32
  %conv338.us.us = uitofp i8 %90 to double
  %mul339.us.us = fmul double %conv338.us.us, 5.870000e-01
  %mul350.us.us = fmul double %mul339.us.us, %conv338.us.us
  %91 = tail call double @llvm.fmuladd.f64(double %mul317.us.us, double %conv316.us.us, double %mul350.us.us)
  %92 = load i8, ptr %arrayidx313.us.us, align 1, !tbaa !33
  %conv360.us.us = uitofp i8 %92 to double
  %mul361.us.us = fmul double %conv360.us.us, 1.140000e-01
  %93 = tail call double @llvm.fmuladd.f64(double %mul361.us.us, double %conv360.us.us, double %91)
  %call373.us.us = tail call double @sqrt(double noundef %93) #11, !tbaa !26
  %arrayidx375.us.us = getelementptr inbounds nuw double, ptr %call38, i64 %idxprom305.us.us
  store double %call373.us.us, ptr %arrayidx375.us.us, align 8, !tbaa !21
  br label %if.end382.us.us

if.then167.us.us:                                 ; preds = %if.else.us.us
  %94 = load ptr, ptr %imagedata168, align 8, !tbaa !27
  %arrayidx171.us.us = getelementptr inbounds nuw ptr, ptr %94, i64 %idxprom170.us.us
  %95 = load ptr, ptr %arrayidx171.us.us, align 8, !tbaa !28
  %96 = trunc nuw i64 %indvars.iv to i32
  %97 = trunc nuw nsw i64 %indvars.iv1494 to i32
  %add172.us.us = add i32 %96, %97
  %idxprom173.us.us = zext i32 %add172.us.us to i64
  %arrayidx174.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %95, i64 %idxprom173.us.us
  %red175.us.us = getelementptr inbounds nuw i8, ptr %arrayidx174.us.us, i64 2
  %98 = load i8, ptr %red175.us.us, align 1, !tbaa !29
  %conv177.us.us = uitofp i8 %98 to double
  %green185.us.us = getelementptr inbounds nuw i8, ptr %arrayidx174.us.us, i64 1
  %99 = load i8, ptr %green185.us.us, align 1, !tbaa !32
  %conv187.us.us = uitofp i8 %99 to double
  %mul188.us.us = fmul double %conv187.us.us, 5.870000e-01
  %100 = tail call double @llvm.fmuladd.f64(double %conv177.us.us, double 2.990000e-01, double %mul188.us.us)
  %101 = load i8, ptr %arrayidx174.us.us, align 1, !tbaa !33
  %conv198.us.us = uitofp i8 %101 to double
  %102 = tail call double @llvm.fmuladd.f64(double %conv198.us.us, double 1.140000e-01, double %100)
  %idxprom199.us.us = zext i32 %n.11409.us.us to i64
  %arrayidx200.us.us = getelementptr inbounds nuw double, ptr %call32, i64 %idxprom199.us.us
  store double %102, ptr %arrayidx200.us.us, align 8, !tbaa !21
  %103 = load ptr, ptr %imagedata201, align 8, !tbaa !27
  %arrayidx204.us.us = getelementptr inbounds nuw ptr, ptr %103, i64 %idxprom170.us.us
  %104 = load ptr, ptr %arrayidx204.us.us, align 8, !tbaa !28
  %arrayidx207.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %104, i64 %idxprom173.us.us
  %red208.us.us = getelementptr inbounds nuw i8, ptr %arrayidx207.us.us, i64 2
  %105 = load i8, ptr %red208.us.us, align 1, !tbaa !29
  %conv210.us.us = uitofp i8 %105 to double
  %green218.us.us = getelementptr inbounds nuw i8, ptr %arrayidx207.us.us, i64 1
  %106 = load i8, ptr %green218.us.us, align 1, !tbaa !32
  %conv220.us.us = uitofp i8 %106 to double
  %mul221.us.us = fmul double %conv220.us.us, 5.870000e-01
  %107 = tail call double @llvm.fmuladd.f64(double %conv210.us.us, double 2.990000e-01, double %mul221.us.us)
  %108 = load i8, ptr %arrayidx207.us.us, align 1, !tbaa !33
  %conv231.us.us = uitofp i8 %108 to double
  %109 = tail call double @llvm.fmuladd.f64(double %conv231.us.us, double 1.140000e-01, double %107)
  %arrayidx233.us.us = getelementptr inbounds nuw double, ptr %call38, i64 %idxprom199.us.us
  store double %109, ptr %arrayidx233.us.us, align 8, !tbaa !21
  br label %if.end382.us.us

if.then98.us.us:                                  ; preds = %if.else.us.us
  %110 = load ptr, ptr %imagedata99, align 8, !tbaa !27
  %arrayidx102.us.us = getelementptr inbounds nuw ptr, ptr %110, i64 %idxprom101.us.us
  %111 = load ptr, ptr %arrayidx102.us.us, align 8, !tbaa !28
  %112 = trunc nuw i64 %indvars.iv to i32
  %113 = trunc nuw nsw i64 %indvars.iv1494 to i32
  %add103.us.us = add i32 %112, %113
  %idxprom104.us.us = zext i32 %add103.us.us to i64
  %arrayidx105.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %111, i64 %idxprom104.us.us
  %red106.us.us = getelementptr inbounds nuw i8, ptr %arrayidx105.us.us, i64 2
  %114 = load i8, ptr %red106.us.us, align 1, !tbaa !29
  %conv108.us.us = uitofp i8 %114 to double
  %green.us.us = getelementptr inbounds nuw i8, ptr %arrayidx105.us.us, i64 1
  %115 = load i8, ptr %green.us.us, align 1, !tbaa !32
  %conv117.us.us = uitofp i8 %115 to double
  %mul118.us.us = fmul double %conv117.us.us, 7.152000e-01
  %116 = tail call double @llvm.fmuladd.f64(double %conv108.us.us, double 2.126000e-01, double %mul118.us.us)
  %117 = load i8, ptr %arrayidx105.us.us, align 1, !tbaa !33
  %conv127.us.us = uitofp i8 %117 to double
  %118 = tail call double @llvm.fmuladd.f64(double %conv127.us.us, double 7.220000e-02, double %116)
  %idxprom128.us.us = zext i32 %n.11409.us.us to i64
  %arrayidx129.us.us = getelementptr inbounds nuw double, ptr %call32, i64 %idxprom128.us.us
  store double %118, ptr %arrayidx129.us.us, align 8, !tbaa !21
  %119 = load ptr, ptr %imagedata130, align 8, !tbaa !27
  %arrayidx133.us.us = getelementptr inbounds nuw ptr, ptr %119, i64 %idxprom101.us.us
  %120 = load ptr, ptr %arrayidx133.us.us, align 8, !tbaa !28
  %arrayidx136.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %120, i64 %idxprom104.us.us
  %red137.us.us = getelementptr inbounds nuw i8, ptr %arrayidx136.us.us, i64 2
  %121 = load i8, ptr %red137.us.us, align 1, !tbaa !29
  %conv139.us.us = uitofp i8 %121 to double
  %green147.us.us = getelementptr inbounds nuw i8, ptr %arrayidx136.us.us, i64 1
  %122 = load i8, ptr %green147.us.us, align 1, !tbaa !32
  %conv149.us.us = uitofp i8 %122 to double
  %mul150.us.us = fmul double %conv149.us.us, 7.152000e-01
  %123 = tail call double @llvm.fmuladd.f64(double %conv139.us.us, double 2.126000e-01, double %mul150.us.us)
  %124 = load i8, ptr %arrayidx136.us.us, align 1, !tbaa !33
  %conv160.us.us = uitofp i8 %124 to double
  %125 = tail call double @llvm.fmuladd.f64(double %conv160.us.us, double 7.220000e-02, double %123)
  %arrayidx162.us.us = getelementptr inbounds nuw double, ptr %call38, i64 %idxprom128.us.us
  store double %125, ptr %arrayidx162.us.us, align 8, !tbaa !21
  br label %if.end382.us.us

if.then77.us.us:                                  ; preds = %for.body74.us.us
  %126 = load ptr, ptr %imagedata, align 8, !tbaa !27
  %arrayidx.us.us = getelementptr inbounds nuw ptr, ptr %126, i64 %idxprom.us.us
  %127 = load ptr, ptr %arrayidx.us.us, align 8, !tbaa !28
  %128 = trunc nuw i64 %indvars.iv to i32
  %129 = trunc nuw nsw i64 %indvars.iv1494 to i32
  %add79.us.us = add i32 %128, %129
  %idxprom80.us.us = zext i32 %add79.us.us to i64
  %arrayidx81.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %127, i64 %idxprom80.us.us
  %red.us.us = getelementptr inbounds nuw i8, ptr %arrayidx81.us.us, i64 2
  %130 = load i8, ptr %red.us.us, align 1, !tbaa !29
  %conv82.us.us = uitofp i8 %130 to double
  %idxprom83.us.us = zext i32 %n.11409.us.us to i64
  %arrayidx84.us.us = getelementptr inbounds nuw double, ptr %call32, i64 %idxprom83.us.us
  store double %conv82.us.us, ptr %arrayidx84.us.us, align 8, !tbaa !21
  %131 = load ptr, ptr %imagedata85, align 8, !tbaa !27
  %arrayidx88.us.us = getelementptr inbounds nuw ptr, ptr %131, i64 %idxprom.us.us
  %132 = load ptr, ptr %arrayidx88.us.us, align 8, !tbaa !28
  %arrayidx91.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %132, i64 %idxprom80.us.us
  %red92.us.us = getelementptr inbounds nuw i8, ptr %arrayidx91.us.us, i64 2
  %133 = load i8, ptr %red92.us.us, align 1, !tbaa !29
  %conv93.us.us = uitofp i8 %133 to double
  %arrayidx95.us.us = getelementptr inbounds nuw double, ptr %call38, i64 %idxprom83.us.us
  store double %conv93.us.us, ptr %arrayidx95.us.us, align 8, !tbaa !21
  br label %if.end382.us.us

if.end382.us.us:                                  ; preds = %if.then77.us.us, %if.then98.us.us, %if.then167.us.us, %if.then238.us.us
  br i1 %cmp383.not, label %if.end397.us.us, label %if.then385.us.us

if.then385.us.us:                                 ; preds = %if.end382.us.us
  %idxprom386.us.us = zext i32 %n.11409.us.us to i64
  %arrayidx387.us.us = getelementptr inbounds nuw double, ptr %call32, i64 %idxprom386.us.us
  %134 = load double, ptr %arrayidx387.us.us, align 8, !tbaa !21
  %conv388.us.us = fptoui double %134 to i8
  %135 = load ptr, ptr %imagedata389, align 8, !tbaa !27
  %arrayidx392.us.us = getelementptr inbounds nuw ptr, ptr %135, i64 %idxprom391.us.us
  %136 = load ptr, ptr %arrayidx392.us.us, align 8, !tbaa !28
  %137 = trunc nuw i64 %indvars.iv to i32
  %138 = trunc nuw nsw i64 %indvars.iv1494 to i32
  %add393.us.us = add i32 %137, %138
  %idxprom394.us.us = zext i32 %add393.us.us to i64
  %arrayidx395.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %136, i64 %idxprom394.us.us
  %red396.us.us = getelementptr inbounds nuw i8, ptr %arrayidx395.us.us, i64 2
  store i8 %conv388.us.us, ptr %red396.us.us, align 1, !tbaa !29
  br label %if.end397.us.us

if.end397.us.us:                                  ; preds = %if.then385.us.us, %if.end382.us.us
  br i1 %cmp398.not, label %if.end412.us.us, label %if.then400.us.us

if.then400.us.us:                                 ; preds = %if.end397.us.us
  %idxprom401.us.us = zext i32 %n.11409.us.us to i64
  %arrayidx402.us.us = getelementptr inbounds nuw double, ptr %call38, i64 %idxprom401.us.us
  %139 = load double, ptr %arrayidx402.us.us, align 8, !tbaa !21
  %conv403.us.us = fptoui double %139 to i8
  %140 = load ptr, ptr %imagedata404, align 8, !tbaa !27
  %arrayidx407.us.us = getelementptr inbounds nuw ptr, ptr %140, i64 %idxprom406.us.us
  %141 = load ptr, ptr %arrayidx407.us.us, align 8, !tbaa !28
  %142 = trunc nuw i64 %indvars.iv to i32
  %143 = trunc nuw nsw i64 %indvars.iv1494 to i32
  %add408.us.us = add i32 %142, %143
  %idxprom409.us.us = zext i32 %add408.us.us to i64
  %arrayidx410.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %141, i64 %idxprom409.us.us
  %red411.us.us = getelementptr inbounds nuw i8, ptr %arrayidx410.us.us, i64 2
  store i8 %conv403.us.us, ptr %red411.us.us, align 1, !tbaa !29
  br label %if.end412.us.us

if.end412.us.us:                                  ; preds = %if.then400.us.us, %if.end397.us.us
  br i1 %cmp413.not, label %if.end505.us.us, label %if.then415.us.us

if.then415.us.us:                                 ; preds = %if.end412.us.us
  %144 = load ptr, ptr @stderr, align 8, !tbaa !18
  %145 = trunc nuw i64 %indvars.iv to i32
  %146 = trunc nuw nsw i64 %indvars.iv1494 to i32
  %add417.us.us = add i32 %145, %146
  %147 = load ptr, ptr %imagedata418, align 8, !tbaa !27
  %arrayidx421.us.us = getelementptr inbounds nuw ptr, ptr %147, i64 %idxprom420.us.us
  %148 = load ptr, ptr %arrayidx421.us.us, align 8, !tbaa !28
  %idxprom423.us.us = zext i32 %add417.us.us to i64
  %arrayidx424.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %148, i64 %idxprom423.us.us
  %red425.us.us = getelementptr inbounds nuw i8, ptr %arrayidx424.us.us, i64 2
  %149 = load i8, ptr %red425.us.us, align 1, !tbaa !29
  %conv426.us.us = zext i8 %149 to i32
  %green434.us.us = getelementptr inbounds nuw i8, ptr %arrayidx424.us.us, i64 1
  %150 = load i8, ptr %green434.us.us, align 1, !tbaa !32
  %conv435.us.us = zext i8 %150 to i32
  %151 = load i8, ptr %arrayidx424.us.us, align 1, !tbaa !33
  %conv444.us.us = zext i8 %151 to i32
  %idxprom445.us.us = zext i32 %n.11409.us.us to i64
  %arrayidx446.us.us = getelementptr inbounds nuw double, ptr %call32, i64 %idxprom445.us.us
  %152 = load double, ptr %arrayidx446.us.us, align 8, !tbaa !21
  br i1 %cmp383.not, label %cond.end458.us.us, label %cond.true447.us.us

cond.true447.us.us:                               ; preds = %if.then415.us.us
  %153 = load ptr, ptr %imagedata448, align 8, !tbaa !27
  %arrayidx451.us.us = getelementptr inbounds nuw ptr, ptr %153, i64 %idxprom420.us.us
  %154 = load ptr, ptr %arrayidx451.us.us, align 8, !tbaa !28
  %arrayidx454.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %154, i64 %idxprom423.us.us
  %red455.us.us = getelementptr inbounds nuw i8, ptr %arrayidx454.us.us, i64 2
  %155 = load i8, ptr %red455.us.us, align 1, !tbaa !29
  %conv456.us.us = zext i8 %155 to i32
  br label %cond.end458.us.us

cond.end458.us.us:                                ; preds = %cond.true447.us.us, %if.then415.us.us
  %cond459.us.us = phi i32 [ %conv456.us.us, %cond.true447.us.us ], [ 0, %if.then415.us.us ]
  %call460.us.us = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.46, i32 noundef %add416.us.us, i32 noundef %add417.us.us, i32 noundef %conv426.us.us, i32 noundef %conv435.us.us, i32 noundef %conv444.us.us, double noundef %152, i32 noundef %cond459.us.us) #8
  %156 = load ptr, ptr @stderr, align 8, !tbaa !18
  %157 = load ptr, ptr %imagedata461, align 8, !tbaa !27
  %arrayidx464.us.us = getelementptr inbounds nuw ptr, ptr %157, i64 %idxprom420.us.us
  %158 = load ptr, ptr %arrayidx464.us.us, align 8, !tbaa !28
  %arrayidx467.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %158, i64 %idxprom423.us.us
  %red468.us.us = getelementptr inbounds nuw i8, ptr %arrayidx467.us.us, i64 2
  %159 = load i8, ptr %red468.us.us, align 1, !tbaa !29
  %conv469.us.us = zext i8 %159 to i32
  %green477.us.us = getelementptr inbounds nuw i8, ptr %arrayidx467.us.us, i64 1
  %160 = load i8, ptr %green477.us.us, align 1, !tbaa !32
  %conv478.us.us = zext i8 %160 to i32
  %161 = load i8, ptr %arrayidx467.us.us, align 1, !tbaa !33
  %conv487.us.us = zext i8 %161 to i32
  %arrayidx489.us.us = getelementptr inbounds nuw double, ptr %call38, i64 %idxprom445.us.us
  %162 = load double, ptr %arrayidx489.us.us, align 8, !tbaa !21
  br i1 %cmp398.not, label %cond.end502.us.us, label %cond.true491.us.us

cond.true491.us.us:                               ; preds = %cond.end458.us.us
  %163 = load ptr, ptr %imagedata492, align 8, !tbaa !27
  %arrayidx495.us.us = getelementptr inbounds nuw ptr, ptr %163, i64 %idxprom420.us.us
  %164 = load ptr, ptr %arrayidx495.us.us, align 8, !tbaa !28
  %arrayidx498.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %164, i64 %idxprom423.us.us
  %red499.us.us = getelementptr inbounds nuw i8, ptr %arrayidx498.us.us, i64 2
  %165 = load i8, ptr %red499.us.us, align 1, !tbaa !29
  %conv500.us.us = zext i8 %165 to i32
  br label %cond.end502.us.us

cond.end502.us.us:                                ; preds = %cond.true491.us.us, %cond.end458.us.us
  %cond503.us.us = phi i32 [ %conv500.us.us, %cond.true491.us.us ], [ 0, %cond.end458.us.us ]
  %call504.us.us = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.47, i32 noundef %conv469.us.us, i32 noundef %conv478.us.us, i32 noundef %conv487.us.us, double noundef %162, i32 noundef %cond503.us.us) #8
  br label %if.end505.us.us

if.end505.us.us:                                  ; preds = %cond.end502.us.us, %if.end412.us.us
  %inc.us.us = add i32 %n.11409.us.us, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp71.us.us = icmp samesign ult i64 %indvars.iv.next, %63
  br i1 %cmp71.us.us, label %for.body74.us.us, label %for.cond70.for.cond.cleanup73_crit_edge.us.us, !llvm.loop !34

for.cond70.for.cond.cleanup73_crit_edge.us.us:    ; preds = %if.end505.us.us
  %inc.us.us.lcssa = phi i32 [ %inc.us.us, %if.end505.us.us ]
  %indvars.iv.next1483 = add nuw nsw i64 %indvars.iv1482, 1
  %cmp66.us.us = icmp samesign ult i64 %indvars.iv.next1483, %32
  br i1 %cmp66.us.us, label %for.cond70.preheader.us.us, label %for.cond.cleanup68.us.loopexit1477, !llvm.loop !35

for.cond582.preheader.lr.ph.us:                   ; preds = %if.end563.us
  %cmp5831415.us.not = icmp eq i32 %cond64.us, 0
  %cmp603.us = fcmp ult double %div.us, 1.000000e+00
  %add631.us = fadd double %div.us, 1.000000e+00
  %div632.us = fmul double %add631.us, 5.000000e-01
  br i1 %cmp5831415.us.not, label %for.cond582.preheader.us1452.preheader, label %for.cond582.preheader.lr.ph.split.us.us

for.cond582.preheader.us1452.preheader:           ; preds = %for.cond582.preheader.lr.ph.us
  br label %if.end658.us.loopexit

for.cond582.preheader.lr.ph.split.us.us:          ; preds = %for.cond582.preheader.lr.ph.us
  %166 = load ptr, ptr %imagedata587, align 8, !tbaa !27
  %167 = load ptr, ptr %imagedata595, align 8, !tbaa !27
  %168 = zext i32 %cond64.us to i64
  %169 = zext i32 %cond64.us to i64
  br label %for.cond582.preheader.us.us

for.cond582.preheader.us.us:                      ; preds = %for.cond582.for.cond.cleanup585_crit_edge.us.us, %for.cond582.preheader.lr.ph.split.us.us
  %indvars.iv1491 = phi i64 [ %indvars.iv.next1492, %for.cond582.for.cond.cleanup585_crit_edge.us.us ], [ 0, %for.cond582.preheader.lr.ph.split.us.us ]
  %170 = trunc nuw i64 %indvars.iv1491 to i32
  %171 = trunc nuw nsw i64 %indvars.iv1498 to i32
  %add588.us.us = add i32 %170, %171
  %idxprom589.us.us = zext i32 %add588.us.us to i64
  %arrayidx590.us.us = getelementptr inbounds nuw ptr, ptr %166, i64 %idxprom589.us.us
  %172 = load ptr, ptr %arrayidx590.us.us, align 8, !tbaa !28
  %arrayidx598.us.us = getelementptr inbounds nuw ptr, ptr %167, i64 %idxprom589.us.us
  %173 = load ptr, ptr %arrayidx598.us.us, align 8, !tbaa !28
  br i1 %cmp603.us, label %for.body586.us.us.us.preheader, label %for.body586.us1419.us.preheader

for.body586.us1419.us.preheader:                  ; preds = %for.cond582.preheader.us.us
  br label %for.body586.us1419.us

for.body586.us.us.us.preheader:                   ; preds = %for.cond582.preheader.us.us
  br label %for.body586.us.us.us

for.body586.us1419.us:                            ; preds = %for.body586.us1419.us, %for.body586.us1419.us.preheader
  %indvars.iv1485 = phi i64 [ 0, %for.body586.us1419.us.preheader ], [ %indvars.iv.next1486, %for.body586.us1419.us ]
  %174 = trunc nuw i64 %indvars.iv1485 to i32
  %175 = trunc nuw nsw i64 %indvars.iv1494 to i32
  %add591.us1421.us = add i32 %174, %175
  %idxprom592.us1422.us = zext i32 %add591.us1421.us to i64
  %arrayidx593.us1423.us = getelementptr inbounds nuw %struct.Pixel, ptr %172, i64 %idxprom592.us1422.us
  %red594.us1424.us = getelementptr inbounds nuw i8, ptr %arrayidx593.us1423.us, i64 2
  %176 = load i8, ptr %red594.us1424.us, align 1, !tbaa !29
  %arrayidx601.us1425.us = getelementptr inbounds nuw %struct.Pixel, ptr %173, i64 %idxprom592.us1422.us
  %red602.us1426.us = getelementptr inbounds nuw i8, ptr %arrayidx601.us1425.us, i64 2
  store i8 %176, ptr %red602.us1426.us, align 1, !tbaa !29
  %green613.us.us = getelementptr inbounds nuw i8, ptr %arrayidx601.us1425.us, i64 1
  store i8 %176, ptr %green613.us.us, align 1, !tbaa !32
  store i8 %176, ptr %arrayidx601.us1425.us, align 1, !tbaa !33
  %indvars.iv.next1486 = add nuw nsw i64 %indvars.iv1485, 1
  %cmp583.us1428.us = icmp samesign ult i64 %indvars.iv.next1486, %168
  br i1 %cmp583.us1428.us, label %for.body586.us1419.us, label %for.cond582.for.cond.cleanup585_crit_edge.us.us.loopexit1475, !llvm.loop !36

for.cond582.for.cond.cleanup585_crit_edge.us.us.loopexit: ; preds = %for.body586.us.us.us
  br label %for.cond582.for.cond.cleanup585_crit_edge.us.us

for.cond582.for.cond.cleanup585_crit_edge.us.us.loopexit1475: ; preds = %for.body586.us1419.us
  br label %for.cond582.for.cond.cleanup585_crit_edge.us.us

for.cond582.for.cond.cleanup585_crit_edge.us.us:  ; preds = %for.cond582.for.cond.cleanup585_crit_edge.us.us.loopexit1475, %for.cond582.for.cond.cleanup585_crit_edge.us.us.loopexit
  %indvars.iv.next1492 = add nuw nsw i64 %indvars.iv1491, 1
  %cmp577.us.us = icmp samesign ult i64 %indvars.iv.next1492, %33
  br i1 %cmp577.us.us, label %for.cond582.preheader.us.us, label %if.end658.us.loopexit1476, !llvm.loop !37

for.body586.us.us.us:                             ; preds = %for.body586.us.us.us, %for.body586.us.us.us.preheader
  %indvars.iv1488 = phi i64 [ 0, %for.body586.us.us.us.preheader ], [ %indvars.iv.next1489, %for.body586.us.us.us ]
  %177 = trunc nuw i64 %indvars.iv1488 to i32
  %178 = trunc nuw nsw i64 %indvars.iv1494 to i32
  %add591.us.us.us = add i32 %177, %178
  %idxprom592.us.us.us = zext i32 %add591.us.us.us to i64
  %arrayidx593.us.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %172, i64 %idxprom592.us.us.us
  %red594.us.us.us = getelementptr inbounds nuw i8, ptr %arrayidx593.us.us.us, i64 2
  %179 = load i8, ptr %red594.us.us.us, align 1, !tbaa !29
  %arrayidx601.us.us.us = getelementptr inbounds nuw %struct.Pixel, ptr %173, i64 %idxprom592.us.us.us
  %red602.us.us.us = getelementptr inbounds nuw i8, ptr %arrayidx601.us.us.us, i64 2
  store i8 %179, ptr %red602.us.us.us, align 1, !tbaa !29
  %spec.store.select.us.us.us = tail call i8 @llvm.umax.i8(i8 %179, i8 16)
  %conv628.us.us.us = zext i8 %spec.store.select.us.us.us to i32
  %sub629.us.us.us = add nsw i32 %conv628.us.us.us, -16
  %conv630.us.us.us = uitofp nneg i32 %sub629.us.us.us to double
  %mul633.us.us.us = fmul double %div632.us, %conv630.us.us.us
  %conv634.us.us.us = fptoui double %mul633.us.us.us to i8
  %green642.us.us.us = getelementptr inbounds nuw i8, ptr %arrayidx601.us.us.us, i64 1
  store i8 %conv634.us.us.us, ptr %green642.us.us.us, align 1, !tbaa !32
  store i8 %conv634.us.us.us, ptr %arrayidx601.us.us.us, align 1, !tbaa !33
  %indvars.iv.next1489 = add nuw nsw i64 %indvars.iv1488, 1
  %cmp583.us.us.us = icmp samesign ult i64 %indvars.iv.next1489, %169
  br i1 %cmp583.us.us.us, label %for.body586.us.us.us, label %for.cond582.for.cond.cleanup585_crit_edge.us.us.loopexit, !llvm.loop !36

for.cond46.for.cond.cleanup49_crit_edge.us:       ; preds = %if.end683.us
  %numbelow.2.us.lcssa = phi i32 [ %numbelow.2.us, %if.end683.us ]
  %minssim.2.us.lcssa = phi double [ %minssim.2.us, %if.end683.us ]
  %add526.us.lcssa = phi double [ %add526.us, %if.end683.us ]
  %cmp44.us = icmp samesign ult i64 %indvars.iv.next1499, %27
  br i1 %cmp44.us, label %for.cond46.preheader.us, label %for.cond.cleanup.loopexit1478, !llvm.loop !38

if.then41:                                        ; preds = %if.end37
  %180 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef nonnull @.str.38, i64 noundef 512, ptr noundef nonnull @.str.39, i32 noundef 393) #8
  tail call void @exit(i32 noundef 1) #10
  unreachable

for.cond.cleanup.loopexit:                        ; preds = %for.cond46.preheader.preheader
  br label %for.cond.cleanup

for.cond.cleanup.loopexit1478:                    ; preds = %for.cond46.for.cond.cleanup49_crit_edge.us
  %numbelow.2.us.lcssa.lcssa = phi i32 [ %numbelow.2.us.lcssa, %for.cond46.for.cond.cleanup49_crit_edge.us ]
  %minssim.2.us.lcssa.lcssa = phi double [ %minssim.2.us.lcssa, %for.cond46.for.cond.cleanup49_crit_edge.us ]
  %inc525.us.lcssa.lcssa = phi i32 [ %34, %for.cond46.for.cond.cleanup49_crit_edge.us ]
  %add526.us.lcssa.lcssa = phi double [ %add526.us.lcssa, %for.cond46.for.cond.cleanup49_crit_edge.us ]
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit1478, %for.cond.cleanup.loopexit, %for.cond.preheader
  %numbelow.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ 0, %for.cond.cleanup.loopexit ], [ %numbelow.2.us.lcssa.lcssa, %for.cond.cleanup.loopexit1478 ]
  %cnt.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ 0, %for.cond.cleanup.loopexit ], [ %inc525.us.lcssa.lcssa, %for.cond.cleanup.loopexit1478 ]
  %minssim.0.lcssa = phi double [ 1.000000e+00, %for.cond.preheader ], [ 1.000000e+00, %for.cond.cleanup.loopexit ], [ %minssim.2.us.lcssa.lcssa, %for.cond.cleanup.loopexit1478 ]
  %sum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ 0.000000e+00, %for.cond.cleanup.loopexit ], [ %add526.us.lcssa.lcssa, %for.cond.cleanup.loopexit1478 ]
  tail call void @free(ptr noundef %call32) #11
  tail call void @free(ptr noundef %call38) #11
  %181 = load ptr, ptr @stderr, align 8, !tbaa !18
  %maxthresh690 = getelementptr inbounds nuw i8, ptr %param, i64 96
  %182 = load i32, ptr %maxthresh690, align 8, !tbaa !39
  %maxthreshpct = getelementptr inbounds nuw i8, ptr %param, i64 104
  %183 = load double, ptr %maxthreshpct, align 8, !tbaa !40
  %cmp691 = fcmp ogt double %183, 0.000000e+00
  br i1 %cmp691, label %if.then693, label %if.end711

if.else376:                                       ; preds = %if.else.us.us
  %184 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call378 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %184, ptr noundef nonnull @.str.45, i32 noundef %13) #8
  tail call void @exit(i32 noundef 1) #10
  unreachable

if.then693:                                       ; preds = %for.cond.cleanup
  %cmp695 = icmp eq i32 %182, 0
  br i1 %cmp695, label %if.then705, label %lor.lhs.false697

lor.lhs.false697:                                 ; preds = %if.then693
  %conv699 = uitofp i32 %182 to double
  %conv701 = uitofp i32 %cnt.0.lcssa to double
  %mul702 = fmul double %183, %conv701
  %cmp703 = fcmp olt double %mul702, %conv699
  br i1 %cmp703, label %if.then705, label %if.end711

if.then705:                                       ; preds = %lor.lhs.false697, %if.then693
  %conv707 = uitofp i32 %cnt.0.lcssa to double
  %mul708 = fmul double %183, %conv707
  %conv709 = fptoui double %mul708 to i32
  br label %if.end711

if.end711:                                        ; preds = %if.then705, %lor.lhs.false697, %for.cond.cleanup
  %maxthresh.0 = phi i32 [ %conv709, %if.then705 ], [ %182, %lor.lhs.false697 ], [ %182, %for.cond.cleanup ]
  %cmp712 = icmp ugt i32 %numbelow.0.lcssa, %maxthresh.0
  br i1 %cmp712, label %if.then714, label %if.else717

if.then714:                                       ; preds = %if.end711
  %185 = load ptr, ptr %param, align 8, !tbaa !41
  %call715 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %185)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.105)
  %186 = load ptr, ptr @stdout, align 8, !tbaa !18
  br label %if.end735

if.else717:                                       ; preds = %if.end711
  %187 = load ptr, ptr %param, align 8, !tbaa !41
  %call719 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef nonnull @.str.55, ptr noundef %187) #8
  %188 = load ptr, ptr @stderr, align 8, !tbaa !18
  %cmp720.not = icmp eq ptr %181, %188
  br i1 %cmp720.not, label %if.end735, label %if.then722

if.then722:                                       ; preds = %if.else717
  %debug723 = getelementptr inbounds nuw i8, ptr %param, i64 80
  %bf.load724 = load i16, ptr %debug723, align 8
  %189 = and i16 %bf.load724, 448
  %tobool728.not = icmp eq i16 %189, 0
  br i1 %tobool728.not, label %if.end731, label %if.then729

if.then729:                                       ; preds = %if.then722
  %190 = load ptr, ptr @stdout, align 8, !tbaa !18
  %call730 = tail call i32 @fflush(ptr noundef %190)
  br label %if.end731

if.end731:                                        ; preds = %if.then729, %if.then722
  %191 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call733 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %191, ptr noundef nonnull @.str.55, ptr noundef %187) #8
  br label %if.end735

if.end735:                                        ; preds = %if.end731, %if.else717, %if.then714
  %tableout.0 = phi ptr [ %186, %if.then714 ], [ %181, %if.end731 ], [ %181, %if.else717 ]
  %threshold736 = getelementptr inbounds nuw i8, ptr %param, i64 88
  %192 = load double, ptr %threshold736, align 8, !tbaa !42
  %cmp737 = fcmp ogt double %192, 0.000000e+00
  br i1 %cmp737, label %if.then739, label %if.end755

if.then739:                                       ; preds = %if.end735
  %call740 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %tableout.0, ptr noundef nonnull @.str.56, i32 noundef %numbelow.0.lcssa, i32 noundef %maxthresh.0, i32 noundef %cnt.0.lcssa) #11
  %193 = load ptr, ptr @stderr, align 8, !tbaa !18
  %cmp741.not = icmp eq ptr %tableout.0, %193
  br i1 %cmp741.not, label %if.end755, label %if.then743

if.then743:                                       ; preds = %if.then739
  %debug744 = getelementptr inbounds nuw i8, ptr %param, i64 80
  %bf.load745 = load i16, ptr %debug744, align 8
  %194 = and i16 %bf.load745, 448
  %tobool749.not = icmp eq i16 %194, 0
  br i1 %tobool749.not, label %if.end752, label %if.then750

if.then750:                                       ; preds = %if.then743
  %195 = load ptr, ptr @stdout, align 8, !tbaa !18
  %call751 = tail call i32 @fflush(ptr noundef %195)
  br label %if.end752

if.end752:                                        ; preds = %if.then750, %if.then743
  %196 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call753 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %196, ptr noundef nonnull @.str.56, i32 noundef %numbelow.0.lcssa, i32 noundef %maxthresh.0, i32 noundef %cnt.0.lcssa) #8
  br label %if.end755

if.end755:                                        ; preds = %if.end752, %if.then739, %if.end735
  %cmp756.not = icmp eq i32 %cnt.0.lcssa, 0
  br i1 %cmp756.not, label %if.end778, label %if.then758

if.then758:                                       ; preds = %if.end755
  %conv759 = uitofp i32 %cnt.0.lcssa to double
  %div760 = fdiv double %sum.0.lcssa, %conv759
  %call761 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %tableout.0, ptr noundef nonnull @.str.57, double noundef %div760) #11
  %197 = load ptr, ptr @stderr, align 8, !tbaa !18
  %cmp762.not = icmp eq ptr %tableout.0, %197
  br i1 %cmp762.not, label %if.end778, label %if.then764

if.then764:                                       ; preds = %if.then758
  %debug765 = getelementptr inbounds nuw i8, ptr %param, i64 80
  %bf.load766 = load i16, ptr %debug765, align 8
  %198 = and i16 %bf.load766, 448
  %tobool770.not = icmp eq i16 %198, 0
  br i1 %tobool770.not, label %if.end773, label %if.then771

if.then771:                                       ; preds = %if.then764
  %199 = load ptr, ptr @stdout, align 8, !tbaa !18
  %call772 = tail call i32 @fflush(ptr noundef %199)
  br label %if.end773

if.end773:                                        ; preds = %if.then771, %if.then764
  %200 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call776 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %200, ptr noundef nonnull @.str.57, double noundef %div760) #8
  br label %if.end778

if.end778:                                        ; preds = %if.end773, %if.then758, %if.end755
  %call779 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %tableout.0, ptr noundef nonnull @.str.58, double noundef %minssim.0.lcssa) #11
  %201 = load ptr, ptr @stderr, align 8, !tbaa !18
  %cmp780.not = icmp eq ptr %tableout.0, %201
  br i1 %cmp780.not, label %if.end793, label %if.then782

if.then782:                                       ; preds = %if.end778
  %debug783 = getelementptr inbounds nuw i8, ptr %param, i64 80
  %bf.load784 = load i16, ptr %debug783, align 8
  %202 = and i16 %bf.load784, 448
  %tobool788.not = icmp eq i16 %202, 0
  br i1 %tobool788.not, label %if.end791, label %if.then789

if.then789:                                       ; preds = %if.then782
  %203 = load ptr, ptr @stdout, align 8, !tbaa !18
  %call790 = tail call i32 @fflush(ptr noundef %203)
  br label %if.end791

if.end791:                                        ; preds = %if.then789, %if.then782
  %204 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call792 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef nonnull @.str.58, double noundef %minssim.0.lcssa) #8
  br label %if.end793

if.end793:                                        ; preds = %if.end791, %if.end778
  %printbuckets = getelementptr inbounds nuw i8, ptr %param, i64 80
  %bf.load794 = load i16, ptr %printbuckets, align 8
  %bf.set = or i16 %bf.load794, 32
  store i16 %bf.set, ptr %printbuckets, align 8
  %205 = and i16 %bf.load794, 16
  %tobool801.not = icmp eq i16 %205, 0
  br i1 %tobool801.not, label %if.end814, label %if.then802

if.then802:                                       ; preds = %if.end793
  br i1 %cmp756.not, label %if.else810, label %if.then805

if.then805:                                       ; preds = %if.then802
  %206 = load ptr, ptr %param, align 8, !tbaa !41
  %conv807 = uitofp i32 %cnt.0.lcssa to double
  %div808 = fdiv double %sum.0.lcssa, %conv807
  %call809 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, ptr noundef %206, double noundef %div808)
  br label %if.end814

if.else810:                                       ; preds = %if.then802
  %207 = load ptr, ptr %param, align 8, !tbaa !41
  %call812 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef %207)
  br label %if.end814

if.end814:                                        ; preds = %if.else810, %if.then805, %if.end793
  %208 = and i16 %bf.load794, 448
  %tobool820.not = icmp eq i16 %208, 0
  br i1 %tobool820.not, label %if.then830, label %if.then830.thread

if.then830:                                       ; preds = %if.end814
  %call831 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %tableout.0, ptr noundef nonnull @.str.61, i32 noundef 10) #11
  %209 = load ptr, ptr @stderr, align 8, !tbaa !18
  %cmp832.not = icmp eq ptr %tableout.0, %209
  br i1 %cmp832.not, label %if.end845, label %if.end843

if.then830.thread:                                ; preds = %if.end814
  %210 = load ptr, ptr @stdout, align 8, !tbaa !18
  %call822 = tail call i32 @fflush(ptr noundef %210)
  %call8311392 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %tableout.0, ptr noundef nonnull @.str.61, i32 noundef 10) #11
  %211 = load ptr, ptr @stderr, align 8, !tbaa !18
  %cmp832.not1393 = icmp eq ptr %tableout.0, %211
  br i1 %cmp832.not1393, label %if.end845, label %if.then841

if.then841:                                       ; preds = %if.then830.thread
  %212 = load ptr, ptr @stdout, align 8, !tbaa !18
  %call842 = tail call i32 @fflush(ptr noundef %212)
  br label %if.end843

if.end843:                                        ; preds = %if.then841, %if.then830
  %213 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call844 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef nonnull @.str.61, i32 noundef 10) #8
  br label %if.end845

if.end845:                                        ; preds = %if.end843, %if.then830.thread, %if.then830
  %buckets846 = getelementptr inbounds nuw i8, ptr %param, i64 120
  %214 = load ptr, ptr %buckets846, align 8, !tbaa !43
  %numbuckets847 = getelementptr inbounds nuw i8, ptr %param, i64 112
  %215 = load i32, ptr %numbuckets847, align 8, !tbaa !44
  %idxprom848 = zext i32 %215 to i64
  %arrayidx849 = getelementptr inbounds nuw i32, ptr %214, i64 %idxprom848
  %216 = load i32, ptr %arrayidx849, align 4, !tbaa !26
  %call850 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %tableout.0, ptr noundef nonnull @.str.62, double noundef 1.000000e+00, i32 noundef %216) #11
  %217 = load ptr, ptr @stderr, align 8, !tbaa !18
  %cmp851.not = icmp eq ptr %tableout.0, %217
  br i1 %cmp851.not, label %if.end868, label %if.then853

if.then853:                                       ; preds = %if.end845
  br i1 %tobool820.not, label %if.end862, label %if.then860

if.then860:                                       ; preds = %if.then853
  %218 = load ptr, ptr @stdout, align 8, !tbaa !18
  %call861 = tail call i32 @fflush(ptr noundef %218)
  br label %if.end862

if.end862:                                        ; preds = %if.then860, %if.then853
  %219 = load ptr, ptr @stderr, align 8, !tbaa !18
  %220 = load i32, ptr %arrayidx849, align 4, !tbaa !26
  %call867 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef nonnull @.str.62, double noundef 1.000000e+00, i32 noundef %220) #8
  br label %if.end868

if.end868:                                        ; preds = %if.end862, %if.end845
  %i869.01470 = add i32 %215, -1
  %cmp8731471 = icmp sgt i32 %i869.01470, -1
  br i1 %cmp8731471, label %for.body876.lr.ph, label %cleanup

for.body876.lr.ph:                                ; preds = %if.end868
  %div8791294 = lshr i32 %215, 1
  %conv880 = uitofp nneg i32 %div8791294 to float
  %conv883 = uitofp i32 %215 to float
  br i1 %tobool820.not, label %for.body876.us.preheader, label %for.body876.preheader

for.body876.preheader:                            ; preds = %for.body876.lr.ph
  %221 = zext i32 %i869.01470 to i64
  br label %for.body876

for.body876.us.preheader:                         ; preds = %for.body876.lr.ph
  %222 = zext i32 %i869.01470 to i64
  br label %for.body876.us

for.body876.us:                                   ; preds = %if.end920.us, %for.body876.us.preheader
  %indvars.iv1505 = phi i64 [ %222, %for.body876.us.preheader ], [ %indvars.iv.next1506, %if.end920.us ]
  %223 = trunc nuw nsw i64 %indvars.iv1505 to i32
  %conv877.us = uitofp nneg i32 %223 to float
  %sub881.us = fsub float %conv877.us, %conv880
  %div884.us = fdiv float %sub881.us, %conv883
  %mul885.us = fmul float %div884.us, 2.000000e+00
  %add891.us = fadd float %sub881.us, 1.000000e+00
  %div894.us = fdiv float %add891.us, %conv883
  %mul895.us = fmul float %div894.us, 2.000000e+00
  %conv896.us = fpext float %mul885.us to double
  %conv897.us = fpext float %mul895.us to double
  %arrayidx900.us = getelementptr inbounds nuw i32, ptr %214, i64 %indvars.iv1505
  %224 = load i32, ptr %arrayidx900.us, align 4, !tbaa !26
  %call901.us = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %tableout.0, ptr noundef nonnull @.str.63, double noundef %conv896.us, double noundef %conv897.us, i32 noundef %224) #11
  %225 = load ptr, ptr @stderr, align 8, !tbaa !18
  %cmp902.not.us = icmp eq ptr %tableout.0, %225
  br i1 %cmp902.not.us, label %if.end920.us, label %if.then904.us

if.then904.us:                                    ; preds = %for.body876.us
  %226 = load ptr, ptr @stderr, align 8, !tbaa !18
  %227 = load i32, ptr %arrayidx900.us, align 4, !tbaa !26
  %call919.us = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %226, ptr noundef nonnull @.str.63, double noundef %conv896.us, double noundef %conv897.us, i32 noundef %227) #8
  br label %if.end920.us

if.end920.us:                                     ; preds = %if.then904.us, %for.body876.us
  %indvars.iv.next1506 = add nsw i64 %indvars.iv1505, -1
  %cmp873.us = icmp sgt i64 %indvars.iv1505, 0
  br i1 %cmp873.us, label %for.body876.us, label %cleanup.loopexit, !llvm.loop !45

for.body876:                                      ; preds = %if.end920, %for.body876.preheader
  %indvars.iv1502 = phi i64 [ %221, %for.body876.preheader ], [ %indvars.iv.next1503, %if.end920 ]
  %228 = trunc nuw nsw i64 %indvars.iv1502 to i32
  %conv877 = uitofp nneg i32 %228 to float
  %sub881 = fsub float %conv877, %conv880
  %div884 = fdiv float %sub881, %conv883
  %mul885 = fmul float %div884, 2.000000e+00
  %add891 = fadd float %sub881, 1.000000e+00
  %div894 = fdiv float %add891, %conv883
  %mul895 = fmul float %div894, 2.000000e+00
  %conv896 = fpext float %mul885 to double
  %conv897 = fpext float %mul895 to double
  %arrayidx900 = getelementptr inbounds nuw i32, ptr %214, i64 %indvars.iv1502
  %229 = load i32, ptr %arrayidx900, align 4, !tbaa !26
  %call901 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %tableout.0, ptr noundef nonnull @.str.63, double noundef %conv896, double noundef %conv897, i32 noundef %229) #11
  %230 = load ptr, ptr @stderr, align 8, !tbaa !18
  %cmp902.not = icmp eq ptr %tableout.0, %230
  br i1 %cmp902.not, label %if.end920, label %if.then904

if.then904:                                       ; preds = %for.body876
  %231 = load ptr, ptr @stdout, align 8, !tbaa !18
  %call912 = tail call i32 @fflush(ptr noundef %231)
  %232 = load ptr, ptr @stderr, align 8, !tbaa !18
  %233 = load i32, ptr %arrayidx900, align 4, !tbaa !26
  %call919 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef nonnull @.str.63, double noundef %conv896, double noundef %conv897, i32 noundef %233) #8
  br label %if.end920

if.end920:                                        ; preds = %if.then904, %for.body876
  %indvars.iv.next1503 = add nsw i64 %indvars.iv1502, -1
  %cmp873 = icmp sgt i64 %indvars.iv1502, 0
  br i1 %cmp873, label %for.body876, label %cleanup.loopexit1474, !llvm.loop !45

cleanup.loopexit:                                 ; preds = %if.end920.us
  br label %cleanup

cleanup.loopexit1474:                             ; preds = %if.end920
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit1474, %cleanup.loopexit, %if.end868, %if.then
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #5

attributes #0 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { nounwind }

!0 = !{!1, !3, i64 8}
!1 = !{!"", !2, i64 0, !3, i64 8, !2, i64 16, !3, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !6, i64 80, !6, i64 80, !6, i64 80, !6, i64 80, !6, i64 80, !6, i64 80, !6, i64 80, !6, i64 84, !7, i64 88, !6, i64 96, !7, i64 104, !6, i64 112, !8, i64 120, !6, i64 128, !6, i64 132}
!2 = !{!"p1 omnipotent char", !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"int", !4, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = !{!"p1 int", !3, i64 0}
!9 = !{!1, !3, i64 64}
!10 = !{!1, !3, i64 24}
!11 = !{!1, !3, i64 72}
!12 = !{!1, !3, i64 56}
!13 = !{!14, !15, i64 20}
!14 = !{!"", !4, i64 0, !4, i64 1, !6, i64 4, !15, i64 8, !15, i64 10, !4, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !15, i64 20, !4, i64 22, !4, i64 23, !4, i64 24, !3, i64 280, !16, i64 288, !4, i64 296}
!15 = !{!"short", !4, i64 0}
!16 = !{!"any p2 pointer", !3, i64 0}
!17 = !{!14, !15, i64 18}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !3, i64 0}
!20 = !{!14, !4, i64 22}
!21 = !{!7, !7, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = !{!6, !6, i64 0}
!27 = !{!14, !16, i64 288}
!28 = !{!3, !3, i64 0}
!29 = !{!30, !4, i64 2}
!30 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!31 = distinct !{!31, !23}
!32 = !{!30, !4, i64 1}
!33 = !{!30, !4, i64 0}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = !{!1, !6, i64 96}
!40 = !{!1, !7, i64 104}
!41 = !{!1, !2, i64 0}
!42 = !{!1, !7, i64 88}
!43 = !{!1, !8, i64 120}
!44 = !{!1, !6, i64 112}
!45 = distinct !{!45, !23}
