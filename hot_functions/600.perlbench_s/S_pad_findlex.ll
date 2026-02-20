; ModuleID = '/tmp/tmp.AtqijQOvcb/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PL_comppad = external local_unnamed_addr global ptr, align 8
@PL_comppad_name = external global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.27 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.28 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.29 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.30 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.31 = external hidden unnamed_addr constant [32 x i8], align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #1

declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden fastcc range(i64 -2147483648, 2147483648) i64 @S_pad_alloc_name(ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden fastcc range(i64 -2147483648, 2147483648) i64 @S_pad_findlex(ptr noundef %namepv, i64 noundef %namelen, i32 noundef %flags, ptr noundef readonly captures(none) %cv, i32 noundef %seq, i32 noundef range(i32 0, 2) %Perl_warn, ptr noundef %out_capture, ptr noundef nonnull %out_name, ptr noundef nonnull initializes((0, 4)) %out_flags) unnamed_addr #2 {
entry:
  %new_capture = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %new_capture) #5
  %0 = load ptr, ptr %cv, align 8
  %xcv_padlist_u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %1 = load ptr, ptr %xcv_padlist_u, align 8
  %and = and i32 %flags, 8
  %tobool = icmp ne i32 %and, 0
  %and2 = and i32 %flags, -9
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i32 %and2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27, i64 noundef %conv) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %out_flags, align 4
  %tobool4 = icmp ne ptr %1, null
  br i1 %tobool4, label %if.then5, label %if.end209

if.then5:                                         ; preds = %if.end
  %xpadl_alloc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2 = load ptr, ptr %xpadl_alloc, align 8
  %3 = load ptr, ptr %2, align 8
  %xpadnl_alloc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = load ptr, ptr %xpadnl_alloc, align 8
  %xpadnl_max_named = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load i64, ptr %xpadnl_max_named, align 8
  %conv6 = trunc i64 %5 to i32
  %cmp517 = icmp sgt i32 %conv6, 0
  br i1 %cmp517, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.then5
  %6 = zext i32 %conv6 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ %6, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %fake_offset.0518 = phi i32 [ %fake_offset.1.ph, %for.inc ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds nuw ptr, ptr %4, i64 %indvars.iv
  %7 = load ptr, ptr %arrayidx, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %xpadn_len = getelementptr inbounds nuw i8, ptr %7, i64 40
  %8 = load i8, ptr %xpadn_len, align 8
  %conv9 = zext i8 %8 to i64
  %cmp10 = icmp eq i64 %namelen, %conv9
  br i1 %cmp10, label %land.lhs.true12, label %for.inc

land.lhs.true12:                                  ; preds = %land.lhs.true
  %9 = load ptr, ptr %7, align 8
  %cmp13 = icmp eq ptr %9, %namepv
  br i1 %cmp13, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true12
  %bcmp = tail call i32 @bcmp(ptr %9, ptr %namepv, i64 %namelen)
  %tobool16.not = icmp eq i32 %bcmp, 0
  br i1 %tobool16.not, label %if.then17, label %for.inc

if.then17:                                        ; preds = %lor.lhs.false, %land.lhs.true12
  %xpadn_flags = getelementptr inbounds nuw i8, ptr %7, i64 41
  %10 = load i8, ptr %xpadn_flags, align 1
  %11 = and i8 %10, 1
  %tobool20.not = icmp eq i8 %11, 0
  %12 = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %tobool20.not, label %if.end22, label %for.inc

if.end22:                                         ; preds = %if.then17
  %xpadn_low.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %13 = load i32, ptr %xpadn_low.i, align 8
  %cmp.i = icmp eq i32 %13, -1
  br i1 %cmp.i, label %for.inc, label %if.end.i

if.end.i:                                         ; preds = %if.end22
  %xpadn_high.i = getelementptr inbounds nuw i8, ptr %7, i64 28
  %14 = load i32, ptr %xpadn_high.i, align 4
  %cmp1.i = icmp eq i32 %14, -1
  %15 = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  %cmp4.i = icmp ugt i32 %seq, %13
  br i1 %cmp4.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then2.i
  %sub.i = sub nuw i32 %seq, %13
  %cmp6.i = icmp ult i32 %sub.i, 2147483647
  br i1 %cmp6.i, label %if.then35, label %for.inc

cond.false.i:                                     ; preds = %if.then2.i
  %sub8.i = sub nuw i32 %13, %seq
  %cmp9.i = icmp slt i32 %sub8.i, 0
  br i1 %cmp9.i, label %if.then35, label %for.inc

if.else.i:                                        ; preds = %if.end.i
  %cmp14.i = icmp ugt i32 %13, %14
  %cmp17.i = icmp ule i32 %seq, %13
  %cmp19.not.i = icmp ugt i32 %seq, %14
  br i1 %cmp14.i, label %cond.true15.i, label %cond.false20.i

cond.true15.i:                                    ; preds = %if.else.i
  %or.cond.i = and i1 %cmp17.i, %cmp19.not.i
  br i1 %or.cond.i, label %for.inc, label %if.then35

cond.false20.i:                                   ; preds = %if.else.i
  %or.cond45.i = or i1 %cmp17.i, %cmp19.not.i
  br i1 %or.cond45.i, label %for.inc, label %if.then35

for.inc:                                          ; preds = %cond.false20.i, %cond.true15.i, %cond.false.i, %cond.true.i, %if.end22, %if.then17, %lor.lhs.false, %land.lhs.true, %for.body
  %fake_offset.1.ph = phi i32 [ %fake_offset.0518, %for.body ], [ %fake_offset.0518, %land.lhs.true ], [ %fake_offset.0518, %lor.lhs.false ], [ %fake_offset.0518, %if.end22 ], [ %12, %if.then17 ], [ %fake_offset.0518, %cond.false20.i ], [ %fake_offset.0518, %cond.true15.i ], [ %fake_offset.0518, %cond.false.i ], [ %fake_offset.0518, %cond.true.i ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp = icmp sgt i64 %indvars.iv, 1
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !0

for.end.loopexit:                                 ; preds = %for.inc
  %fake_offset.1.ph.lcssa = phi i32 [ %fake_offset.1.ph, %for.inc ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then5
  %fake_offset.0.lcssa = phi i32 [ 0, %if.then5 ], [ %fake_offset.1.ph.lcssa, %for.end.loopexit ]
  %cmp30 = icmp slt i32 %fake_offset.0.lcssa, 1
  br i1 %cmp30, label %if.end209, label %if.else

if.then35:                                        ; preds = %cond.false20.i, %cond.true15.i, %cond.false.i, %cond.true.i
  %offset.0519.lcssa = phi i32 [ %15, %cond.false.i ], [ %15, %cond.true.i ], [ %15, %cond.false20.i ], [ %15, %cond.true15.i ]
  %idxprom36 = zext nneg i32 %offset.0519.lcssa to i64
  %arrayidx37 = getelementptr inbounds nuw ptr, ptr %4, i64 %idxprom36
  %16 = load ptr, ptr %arrayidx37, align 8
  store ptr %16, ptr %out_name, align 8
  %17 = load ptr, ptr %cv, align 8
  %xcv_flags = getelementptr inbounds nuw i8, ptr %17, i64 92
  %18 = load i32, ptr %xcv_flags, align 4
  %and39 = and i32 %18, 128
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %cond.false, label %if.end51

cond.false:                                       ; preds = %if.then35
  %and43 = and i32 %18, 256
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %land.rhs, label %if.end51

land.rhs:                                         ; preds = %cond.false
  %xcv_root_u = getelementptr inbounds nuw i8, ptr %17, i64 48
  %19 = load ptr, ptr %xcv_root_u, align 8
  %tobool46.not = icmp eq ptr %19, null
  %20 = select i1 %tobool46.not, i32 2, i32 0
  br label %if.end51

if.else:                                          ; preds = %for.end
  %idxprom49 = zext nneg i32 %fake_offset.0.lcssa to i64
  %arrayidx50 = getelementptr inbounds nuw ptr, ptr %4, i64 %idxprom49
  %21 = load ptr, ptr %arrayidx50, align 8
  store ptr %21, ptr %out_name, align 8
  %xpadn_high = getelementptr inbounds nuw i8, ptr %21, i64 28
  %22 = load i32, ptr %xpadn_high, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else, %land.rhs, %cond.false, %if.then35
  %cmp514 = phi i1 [ false, %if.else ], [ true, %if.then35 ], [ true, %cond.false ], [ true, %land.rhs ]
  %storemerge = phi i32 [ %22, %if.else ], [ 1, %if.then35 ], [ 0, %cond.false ], [ %20, %land.rhs ]
  %offset.1 = phi i32 [ %fake_offset.0.lcssa, %if.else ], [ %offset.0519.lcssa, %if.then35 ], [ %offset.0519.lcssa, %cond.false ], [ %offset.0519.lcssa, %land.rhs ]
  store i32 %storemerge, ptr %out_flags, align 4
  %tobool52.not = icmp eq ptr %out_capture, null
  br i1 %tobool52.not, label %if.end201, label %if.then53

if.then53:                                        ; preds = %if.end51
  %23 = load ptr, ptr %out_name, align 8
  %xpadn_ourstash = getelementptr inbounds nuw i8, ptr %23, i64 8
  %24 = load ptr, ptr %xpadn_ourstash, align 8
  %tobool54.not = icmp eq ptr %24, null
  br i1 %tobool54.not, label %if.end57, label %if.then55

if.then55:                                        ; preds = %if.then53
  store ptr null, ptr %out_capture, align 8
  %conv56 = zext nneg i32 %offset.1 to i64
  br label %cleanup319

if.end57:                                         ; preds = %if.then53
  %25 = load ptr, ptr %cv, align 8
  %xcv_root_u59 = getelementptr inbounds nuw i8, ptr %25, i64 48
  %26 = load ptr, ptr %xcv_root_u59, align 8
  %tobool60.not = icmp eq ptr %26, null
  br i1 %tobool60.not, label %cond.false76, label %cond.true61

cond.true61:                                      ; preds = %if.end57
  %xcv_flags63 = getelementptr inbounds nuw i8, ptr %25, i64 92
  %27 = load i32, ptr %xcv_flags63, align 4
  %28 = and i32 %27, 224
  %or.cond467 = icmp eq i32 %28, 160
  br i1 %or.cond467, label %if.then79, label %if.end107

cond.false76:                                     ; preds = %if.end57
  %and77 = and i32 %storemerge, 1
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %land.lhs.true87, label %if.then79

if.then79:                                        ; preds = %cond.false76, %cond.true61
  %tobool80.not = icmp eq i32 %Perl_warn, 0
  br i1 %tobool80.not, label %if.end163.thread, label %if.then81

if.then81:                                        ; preds = %if.then79
  %.val473 = load ptr, ptr %23, align 8
  %29 = getelementptr i8, ptr %23, i64 40
  %.val474 = load i8, ptr %29, align 8
  %30 = load i8, ptr %.val473, align 1
  %cmp.i477 = icmp eq i8 %30, 38
  %cond.i = select i1 %cmp.i477, ptr @.str.29, ptr @.str.30
  %conv2.i = zext i8 %.val474 to i64
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond.i, i32 noundef 1, i64 noundef %conv2.i, ptr noundef %.val473) #5
  br label %if.end163.thread

if.end163.thread:                                 ; preds = %if.then81, %if.then79
  store ptr null, ptr %out_capture, align 8
  br label %if.then165

land.lhs.true87:                                  ; preds = %cond.false76
  %and88 = and i32 %storemerge, 2
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end107, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %land.lhs.true87
  %idxprom91 = zext nneg i32 %offset.1 to i64
  %arrayidx92 = getelementptr inbounds nuw ptr, ptr %4, i64 %idxprom91
  %31 = load ptr, ptr %arrayidx92, align 8
  %xpadn_flags93 = getelementptr inbounds nuw i8, ptr %31, i64 41
  %32 = load i8, ptr %xpadn_flags93, align 1
  %33 = and i8 %32, 2
  %tobool96 = icmp eq i8 %33, 0
  %tobool98 = icmp ne i32 %Perl_warn, 0
  %or.cond327 = and i1 %tobool98, %tobool96
  br i1 %or.cond327, label %land.lhs.true99, label %if.end107

land.lhs.true99:                                  ; preds = %land.lhs.true90
  %call100 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 1) #5
  br i1 %call100, label %if.then102, label %if.end107

if.then102:                                       ; preds = %land.lhs.true99
  %34 = load i8, ptr %namepv, align 1
  %cmp104 = icmp eq i8 %34, 38
  %cond106 = select i1 %cmp104, ptr @.str.29, ptr @.str.30
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond106, i32 noundef 1, i64 noundef %namelen, ptr noundef %namepv) #5
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %land.lhs.true99, %land.lhs.true90, %land.lhs.true87, %cond.true61
  %newwarn.0 = phi i32 [ 0, %if.then102 ], [ 1, %land.lhs.true99 ], [ %Perl_warn, %land.lhs.true90 ], [ %Perl_warn, %land.lhs.true87 ], [ %Perl_warn, %cond.true61 ]
  br i1 %cmp514, label %if.end130, label %land.lhs.true109

land.lhs.true109:                                 ; preds = %if.end107
  %35 = load ptr, ptr %cv, align 8
  %xcv_flags111 = getelementptr inbounds nuw i8, ptr %35, i64 92
  %36 = load i32, ptr %xcv_flags111, align 4
  %37 = and i32 %36, 224
  %or.cond469 = icmp eq i32 %37, 160
  br i1 %or.cond469, label %cleanup204, label %if.end130

if.end130:                                        ; preds = %land.lhs.true109, %if.end107
  %38 = load ptr, ptr %xpadl_alloc, align 8
  %cv.val476 = load ptr, ptr %cv, align 8
  %xcv_depth.i = getelementptr inbounds nuw i8, ptr %cv.val476, i64 96
  %39 = load i32, ptr %xcv_depth.i, align 4
  %narrow = tail call i32 @llvm.umax.i32(i32 %39, i32 1)
  %spec.select511 = sext i32 %narrow to i64
  %arrayidx140 = getelementptr inbounds ptr, ptr %38, i64 %spec.select511
  %40 = load ptr, ptr %arrayidx140, align 8
  %sv_u = getelementptr inbounds nuw i8, ptr %40, i64 16
  %41 = load ptr, ptr %sv_u, align 8
  %idxprom141 = zext nneg i32 %offset.1 to i64
  %arrayidx142 = getelementptr inbounds nuw ptr, ptr %41, i64 %idxprom141
  %42 = load ptr, ptr %arrayidx142, align 8
  store ptr %42, ptr %out_capture, align 8
  %sv_flags = getelementptr inbounds nuw i8, ptr %42, i64 12
  %43 = load i32, ptr %sv_flags, align 4
  %and143 = and i32 %43, 262144
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end201, label %land.lhs.true145

land.lhs.true145:                                 ; preds = %if.end130
  %cv.val = load ptr, ptr %cv, align 8
  %xcv_depth.i479 = getelementptr inbounds nuw i8, ptr %cv.val, i64 96
  %44 = load i32, ptr %xcv_depth.i479, align 4
  %tobool147 = icmp ne i32 %44, 0
  %or.cond328 = and i1 %tobool, %tobool147
  br i1 %or.cond328, label %if.end163, label %land.lhs.true149

land.lhs.true149:                                 ; preds = %land.lhs.true145
  %arrayidx151 = getelementptr inbounds nuw ptr, ptr %4, i64 %idxprom141
  %45 = load ptr, ptr %arrayidx151, align 8
  %xpadn_flags152 = getelementptr inbounds nuw i8, ptr %45, i64 41
  %46 = load i8, ptr %xpadn_flags152, align 1
  %47 = and i8 %46, 2
  %tobool155.not = icmp eq i8 %47, 0
  br i1 %tobool155.not, label %if.end163.thread503, label %if.end163

if.end163.thread503:                              ; preds = %land.lhs.true149
  %.val = load ptr, ptr %45, align 8
  %48 = getelementptr i8, ptr %45, i64 40
  %.val472 = load i8, ptr %48, align 8
  %49 = load i8, ptr %.val, align 1
  %cmp.i480 = icmp eq i8 %49, 38
  %cond.i481 = select i1 %cmp.i480, ptr @.str.29, ptr @.str.30
  %conv2.i482 = zext i8 %.val472 to i64
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond.i481, i32 noundef 1, i64 noundef %conv2.i482, ptr noundef %.val) #5
  store ptr null, ptr %out_capture, align 8
  br label %if.then165

if.end163:                                        ; preds = %land.lhs.true149, %land.lhs.true145
  %.pr.pr = load ptr, ptr %out_capture, align 8
  %tobool164.not = icmp eq ptr %.pr.pr, null
  br i1 %tobool164.not, label %if.then165, label %if.end201

if.then165:                                       ; preds = %if.end163, %if.end163.thread503, %if.end163.thread
  %cmp166.not = icmp eq i64 %namelen, 0
  br i1 %cmp166.not, label %if.else195, label %land.lhs.true168

land.lhs.true168:                                 ; preds = %if.then165
  %50 = load i8, ptr %namepv, align 1
  switch i8 %50, label %if.else195 [
    i8 64, label %if.then172
    i8 37, label %if.then182
    i8 38, label %if.then192
  ]

if.then172:                                       ; preds = %land.lhs.true168
  %call173 = tail call ptr @Perl_newSV_type(i32 noundef 11) #5
  %call174 = tail call ptr @Perl_sv_2mortal(ptr noundef %call173) #5
  store ptr %call174, ptr %out_capture, align 8
  br label %if.end201

if.then182:                                       ; preds = %land.lhs.true168
  %call183 = tail call ptr @Perl_newSV_type(i32 noundef 12) #5
  %call184 = tail call ptr @Perl_sv_2mortal(ptr noundef %call183) #5
  store ptr %call184, ptr %out_capture, align 8
  br label %if.end201

if.then192:                                       ; preds = %land.lhs.true168
  %call193 = tail call ptr @Perl_newSV_type(i32 noundef 13) #5
  %call194 = tail call ptr @Perl_sv_2mortal(ptr noundef %call193) #5
  store ptr %call194, ptr %out_capture, align 8
  br label %if.end201

if.else195:                                       ; preds = %land.lhs.true168, %if.then165
  %call196 = tail call ptr @Perl_sv_newmortal() #5
  store ptr %call196, ptr %out_capture, align 8
  br label %if.end201

if.end201:                                        ; preds = %if.else195, %if.then192, %if.then182, %if.then172, %if.end163, %if.end130, %if.end51
  %conv202 = zext nneg i32 %offset.1 to i64
  br label %cleanup319

cleanup204:                                       ; preds = %land.lhs.true109
  %51 = load ptr, ptr %out_name, align 8
  %xcv_outside = getelementptr inbounds nuw i8, ptr %35, i64 80
  %52 = load ptr, ptr %xcv_outside, align 8
  %xcv_outside_seq = getelementptr inbounds nuw i8, ptr %35, i64 88
  %53 = load i32, ptr %xcv_outside_seq, align 8
  %call127 = tail call fastcc i64 @S_pad_findlex(ptr noundef %namepv, i64 noundef %namelen, i32 noundef %and2, ptr noundef %52, i32 noundef %53, i32 noundef %newwarn.0, ptr noundef nonnull %out_capture, ptr noundef %out_name, ptr noundef %out_flags)
  store ptr %51, ptr %out_name, align 8
  %conv128 = zext nneg i32 %offset.1 to i64
  br label %cleanup319

if.end209:                                        ; preds = %for.end, %if.end
  %54 = load ptr, ptr %cv, align 8
  %xcv_outside211 = getelementptr inbounds nuw i8, ptr %54, i64 80
  %55 = load ptr, ptr %xcv_outside211, align 8
  %tobool212.not = icmp eq ptr %55, null
  br i1 %tobool212.not, label %cleanup319, label %if.end214

if.end214:                                        ; preds = %if.end209
  %tobool215.not = icmp eq ptr %out_capture, null
  br i1 %tobool215.not, label %cond.false217, label %cond.end236

cond.false217:                                    ; preds = %if.end214
  %xcv_flags219 = getelementptr inbounds nuw i8, ptr %54, i64 92
  %56 = load i32, ptr %xcv_flags219, align 4
  %57 = and i32 %56, 160
  %or.cond470 = icmp eq i32 %57, 0
  br i1 %or.cond470, label %lor.lhs.false227, label %cond.end236

lor.lhs.false227:                                 ; preds = %cond.false217
  %sv_flags228 = getelementptr inbounds nuw i8, ptr %cv, i64 12
  %58 = load i32, ptr %sv_flags228, align 4
  %and229 = and i32 %58, 255
  %cmp230 = icmp eq i32 %and229, 14
  %spec.select = select i1 %cmp230, ptr null, ptr %new_capture
  br label %cond.end236

cond.end236:                                      ; preds = %lor.lhs.false227, %cond.false217, %if.end214
  %cond237 = phi ptr [ null, %cond.false217 ], [ %spec.select, %lor.lhs.false227 ], [ %out_capture, %if.end214 ]
  %cmp238 = icmp eq ptr %cond237, %new_capture
  %mul = select i1 %cmp238, i32 8, i32 0
  %or = or disjoint i32 %mul, %and2
  %xcv_outside_seq243 = getelementptr inbounds nuw i8, ptr %54, i64 88
  %59 = load i32, ptr %xcv_outside_seq243, align 8
  %call244 = call fastcc i64 @S_pad_findlex(ptr noundef %namepv, i64 noundef %namelen, i32 noundef %or, ptr noundef nonnull %55, i32 noundef %59, i32 noundef 1, ptr noundef %cond237, ptr noundef %out_name, ptr noundef %out_flags)
  %conv245 = trunc i64 %call244 to i32
  %sext.mask = and i64 %call244, 4294967295
  %cmp247 = icmp eq i64 %sext.mask, 4294967295
  br i1 %cmp247, label %cleanup319, label %if.end250

if.end250:                                        ; preds = %cond.end236
  %60 = load ptr, ptr %cv, align 8
  %xcv_root_u252 = getelementptr inbounds nuw i8, ptr %60, i64 48
  %61 = load ptr, ptr %xcv_root_u252, align 8
  %tobool253 = icmp eq ptr %61, null
  %or.cond329 = and i1 %tobool4, %tobool253
  br i1 %or.cond329, label %if.end257, label %cleanup319

if.end257:                                        ; preds = %if.end250
  %62 = load ptr, ptr %out_name, align 8
  %call.i = call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 48) #5
  %xpadn_refcnt.i = getelementptr inbounds nuw i8, ptr %call.i, i64 32
  store i32 1, ptr %xpadn_refcnt.i, align 8
  %63 = load ptr, ptr %62, align 8
  store ptr %63, ptr %call.i, align 8
  %64 = load ptr, ptr %62, align 8
  %xpadn_refcnt3.i = getelementptr inbounds i8, ptr %64, i64 -10
  %65 = load i32, ptr %xpadn_refcnt3.i, align 8
  %inc.i = add i32 %65, 1
  store i32 %inc.i, ptr %xpadn_refcnt3.i, align 8
  %xpadn_flags.i = getelementptr inbounds nuw i8, ptr %call.i, i64 41
  store i8 1, ptr %xpadn_flags.i, align 1
  %xpadn_len.i = getelementptr inbounds nuw i8, ptr %62, i64 40
  %66 = load i8, ptr %xpadn_len.i, align 8
  %xpadn_len4.i = getelementptr inbounds nuw i8, ptr %call.i, i64 40
  store i8 %66, ptr %xpadn_len4.i, align 8
  %67 = load ptr, ptr @PL_comppad_name, align 8
  %68 = load ptr, ptr @PL_comppad, align 8
  %xpadl_alloc259 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %69 = load ptr, ptr %xpadl_alloc259, align 8
  %70 = load ptr, ptr %69, align 8
  store ptr %70, ptr @PL_comppad_name, align 8
  %arrayidx261 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %71 = load ptr, ptr %arrayidx261, align 8
  store ptr %71, ptr @PL_comppad, align 8
  %sv_u262 = getelementptr inbounds nuw i8, ptr %71, i64 16
  %72 = load ptr, ptr %sv_u262, align 8
  store ptr %72, ptr @PL_curpad, align 8
  %73 = load ptr, ptr %out_name, align 8
  %xpadn_flags263 = getelementptr inbounds nuw i8, ptr %73, i64 41
  %74 = load i8, ptr %xpadn_flags263, align 1
  %75 = and i8 %74, 2
  %cond267 = zext nneg i8 %75 to i32
  %xpadn_type_u = getelementptr inbounds nuw i8, ptr %73, i64 16
  %76 = load ptr, ptr %xpadn_type_u, align 8
  %xpadn_ourstash268 = getelementptr inbounds nuw i8, ptr %73, i64 8
  %77 = load ptr, ptr %xpadn_ourstash268, align 8
  %call269 = call fastcc i64 @S_pad_alloc_name(ptr noundef %call.i, i32 noundef %cond267, ptr noundef %76, ptr noundef %77)
  %78 = load i32, ptr %out_flags, align 4
  %xpadn_high271 = getelementptr inbounds nuw i8, ptr %call.i, i64 28
  store i32 %78, ptr %xpadn_high271, align 4
  %xpadn_low = getelementptr inbounds nuw i8, ptr %call.i, i64 24
  store i32 0, ptr %xpadn_low, align 8
  %xpadn_ourstash275 = getelementptr inbounds nuw i8, ptr %call.i, i64 8
  %79 = load ptr, ptr %xpadn_ourstash275, align 8
  %tobool276.not = icmp eq ptr %79, null
  br i1 %tobool276.not, label %if.else278, label %if.end310

if.else278:                                       ; preds = %if.end257
  %80 = load ptr, ptr %cv, align 8
  %xcv_flags280 = getelementptr inbounds nuw i8, ptr %80, i64 92
  %81 = load i32, ptr %xcv_flags280, align 4
  %82 = and i32 %81, 160
  %or.cond471 = icmp eq i32 %82, 0
  br i1 %or.cond471, label %lor.lhs.false288, label %do.body294

lor.lhs.false288:                                 ; preds = %if.else278
  %sv_flags289 = getelementptr inbounds nuw i8, ptr %cv, i64 12
  %83 = load i32, ptr %sv_flags289, align 4
  %and290 = and i32 %83, 255
  %cmp291 = icmp eq i32 %and290, 14
  br i1 %cmp291, label %do.body294, label %if.else301

do.body294:                                       ; preds = %lor.lhs.false288, %if.else278
  store i32 %conv245, ptr %xpadn_low, align 8
  %84 = load ptr, ptr %cv, align 8
  %xcv_flags299 = getelementptr inbounds nuw i8, ptr %84, i64 92
  %85 = load i32, ptr %xcv_flags299, align 4
  %or300 = or i32 %85, 32
  store i32 %or300, ptr %xcv_flags299, align 4
  br label %if.end310

if.else301:                                       ; preds = %lor.lhs.false288
  %86 = load ptr, ptr @PL_comppad, align 8
  %87 = load ptr, ptr %cond237, align 8
  %cmp.not.i = icmp eq ptr %87, null
  br i1 %cmp.not.i, label %S_SvREFCNT_inc.exit, label %if.then.i

if.then.i:                                        ; preds = %if.else301
  %sv_refcnt.i = getelementptr inbounds nuw i8, ptr %87, i64 8
  %88 = load i32, ptr %sv_refcnt.i, align 8
  %inc.i483 = add i32 %88, 1
  store i32 %inc.i483, ptr %sv_refcnt.i, align 8
  br label %S_SvREFCNT_inc.exit

S_SvREFCNT_inc.exit:                              ; preds = %if.then.i, %if.else301
  %call304 = call ptr @Perl_av_store(ptr noundef %86, i64 noundef %call269, ptr noundef %87) #5
  store i32 %conv245, ptr %xpadn_low, align 8
  br label %if.end310

if.end310:                                        ; preds = %S_SvREFCNT_inc.exit, %do.body294, %if.end257
  store ptr %call.i, ptr %out_name, align 8
  %89 = load i32, ptr %xpadn_high271, align 4
  store i32 %89, ptr %out_flags, align 4
  store ptr %67, ptr @PL_comppad_name, align 8
  store ptr %68, ptr @PL_comppad, align 8
  %tobool312.not = icmp eq ptr %68, null
  br i1 %tobool312.not, label %cond.end316, label %cond.true313

cond.true313:                                     ; preds = %if.end310
  %sv_u314 = getelementptr inbounds nuw i8, ptr %68, i64 16
  %90 = load ptr, ptr %sv_u314, align 8
  br label %cond.end316

cond.end316:                                      ; preds = %cond.true313, %if.end310
  %cond317 = phi ptr [ %90, %cond.true313 ], [ null, %if.end310 ]
  store ptr %cond317, ptr @PL_curpad, align 8
  br label %cleanup319

cleanup319:                                       ; preds = %cond.end316, %if.end250, %cond.end236, %if.end209, %cleanup204, %if.end201, %if.then55
  %retval.2 = phi i64 [ %call269, %cond.end316 ], [ %conv128, %cleanup204 ], [ -1, %if.end209 ], [ -1, %cond.end236 ], [ 0, %if.end250 ], [ %conv56, %if.then55 ], [ %conv202, %if.end201 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %new_capture) #5
  ret i64 %retval.2
}

declare ptr @Perl_sv_newmortal() local_unnamed_addr #1

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #1

declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #1

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
