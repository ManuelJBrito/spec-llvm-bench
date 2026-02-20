; ModuleID = '/tmp/tmp.LRyu0CEprb/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/sv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@PL_sv_arenaroot = external local_unnamed_addr global ptr, align 8
@PL_sv_root = external local_unnamed_addr global ptr, align 8
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_sv_count = external local_unnamed_addr global i64, align 8
@PL_compiling = external global %struct.cop, align 8
@.str.38 = external hidden unnamed_addr constant [2 x i8], align 1
@PL_rs = external local_unnamed_addr global ptr, align 8
@.str.39 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.40 = external hidden unnamed_addr constant [21 x i8], align 1
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
declare dso_local ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef writeonly captures(address_is_null), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_sv_setpvn(ptr noundef, ptr noundef readonly captures(address_is_null), i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local noundef zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local ptr @Perl_sv_2pvutf8(ptr noundef, ptr noundef writeonly captures(address_is_null)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef readonly captures(address), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc i64 @S_sv_pos_u2b_cached(ptr noundef, ptr noundef nonnull captures(none), ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_gets(ptr noundef %sv, ptr noundef %fp, i32 noundef %append) local_unnamed_addr #2 {
entry:
  %slen.i = alloca i64, align 8
  %len.i13.i = alloca i64, align 8
  %mg.i14.i = alloca ptr, align 8
  %rslen = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  %buf = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %rslen) #7
  %sv_flags = getelementptr inbounds nuw i8, ptr %sv, i64 12
  %0 = load i32, ptr %sv_flags, align 4
  %and = and i32 %0, 427886592
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq i32 %append, 0
  %cond = select i1 %tobool1.not, i32 4, i32 0
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %sv, i32 noundef %cond)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %sv_flags, align 4
  %and3 = and i32 %1, 255
  %cmp = icmp samesign ugt i32 %and3, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %sv, i32 noundef 3)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %tobool4.not = icmp eq i32 %append, 0
  br i1 %tobool4.not, label %if.end21.thread698, label %if.then5

if.end21.thread698:                               ; preds = %lor.end
  %2 = load i32, ptr %sv_flags, align 4
  %and23700 = and i32 %2, 1610547455
  %or701 = or disjoint i32 %and23700, 17408
  store i32 %or701, ptr %sv_flags, align 4
  br label %do.body

if.then5:                                         ; preds = %lor.end
  %call = tail call i32 @PerlIO_isutf8(ptr noundef %fp) #7
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then5
  %3 = load i32, ptr %sv_flags, align 4
  %and9 = and i32 %3, 536870912
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end21.thread

if.then11:                                        ; preds = %if.then7
  %call12 = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef nonnull %sv, i32 noundef 0, i64 noundef 0)
  %conv4.i = sext i32 %append to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %len.i13.i) #7
  %4 = load i32, ptr %sv_flags, align 4
  %and.i16.i = and i32 %4, 2098176
  %cmp.i17.i = icmp eq i32 %and.i16.i, 1024
  br i1 %cmp.i17.i, label %cond.true.i30.i, label %cond.false.i18.i

cond.true.i30.i:                                  ; preds = %if.then11
  %5 = load ptr, ptr %sv, align 8
  %xpv_cur.i31.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %6 = load i64, ptr %xpv_cur.i31.i, align 8
  store i64 %6, ptr %len.i13.i, align 8
  %sv_u.i32.i = getelementptr inbounds nuw i8, ptr %sv, i64 16
  %7 = load ptr, ptr %sv_u.i32.i, align 8
  br label %cond.end.i21.i

cond.false.i18.i:                                 ; preds = %if.then11
  %call.i19.i = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %len.i13.i, i32 noundef 34)
  %.pr.i20.i = load i64, ptr %len.i13.i, align 8
  br label %cond.end.i21.i

cond.end.i21.i:                                   ; preds = %cond.false.i18.i, %cond.true.i30.i
  %8 = phi i64 [ %.pr.i20.i, %cond.false.i18.i ], [ %6, %cond.true.i30.i ]
  %cond.i22.i = phi ptr [ %call.i19.i, %cond.false.i18.i ], [ %7, %cond.true.i30.i ]
  %tobool.not.i23.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i23.i, label %if.end21.thread704, label %if.end21

if.end21.thread704:                               ; preds = %cond.end.i21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %len.i13.i) #7
  %9 = load i32, ptr %sv_flags, align 4
  %and23706 = and i32 %9, 1610547455
  %or707 = or disjoint i32 %and23706, 17408
  store i32 %or707, ptr %sv_flags, align 4
  br label %do.body

if.else:                                          ; preds = %if.then5
  %10 = load i32, ptr %sv_flags, align 4
  %and15 = and i32 %10, 536870912
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end21.thread, label %if.then17

if.then17:                                        ; preds = %if.else
  %11 = load ptr, ptr @PL_sv_root, align 8
  %tobool.not.i674 = icmp eq ptr %11, null
  br i1 %tobool.not.i674, label %if.else.i677, label %if.then.i

if.else.i677:                                     ; preds = %if.then17
  %call.i.i = tail call ptr @Perl_safesysmalloc(i64 noundef 4080) #7
  %12 = load ptr, ptr @PL_sv_arenaroot, align 8
  store ptr %12, ptr %call.i.i, align 8
  %sv_refcnt.i.i.i = getelementptr inbounds nuw i8, ptr %call.i.i, i64 8
  store i32 170, ptr %sv_refcnt.i.i.i, align 8
  %sv_flags.i.i.i = getelementptr inbounds nuw i8, ptr %call.i.i, i64 12
  store i32 0, ptr %sv_flags.i.i.i, align 4
  store ptr %call.i.i, ptr @PL_sv_arenaroot, align 8
  %add.ptr.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %call.i.i, i64 24
  store ptr %add.ptr.ptr.i.i.i, ptr @PL_sv_root, align 8
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i, %if.else.i677
  %sv.0.ptr25.i.i.i = phi ptr [ %add.ptr.ptr.i.i.i, %if.else.i677 ], [ %add.ptr5.ptr.i.i.i, %while.body.i.i.i ]
  %sv.0.idx24.i.i.i = phi i64 [ 24, %if.else.i677 ], [ %sv.0.add.i.i.i, %while.body.i.i.i ]
  %sv.0.add.i.i.i = add nuw nsw i64 %sv.0.idx24.i.i.i, 24
  %add.ptr5.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %call.i.i, i64 %sv.0.add.i.i.i
  store ptr %add.ptr5.ptr.i.i.i, ptr %sv.0.ptr25.i.i.i, align 8
  %sv_flags7.i.i.i = getelementptr inbounds nuw i8, ptr %sv.0.ptr25.i.i.i, i64 12
  store i32 255, ptr %sv_flags7.i.i.i, align 4
  %cmp.i.i.i = icmp samesign ult i64 %sv.0.idx24.i.i.i, 4032
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %S_more_sv.exit.i, !llvm.loop !0

S_more_sv.exit.i:                                 ; preds = %while.body.i.i.i
  %add.ptr5.ptr.i.i.i.lcssa = phi ptr [ %add.ptr5.ptr.i.i.i, %while.body.i.i.i ]
  store ptr null, ptr %add.ptr5.ptr.i.i.i.lcssa, align 8
  %sv_flags9.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr5.ptr.i.i.i.lcssa, i64 12
  store i32 255, ptr %sv_flags9.i.i.i, align 4
  %13 = load ptr, ptr @PL_sv_root, align 8
  br label %if.then.i

if.then.i:                                        ; preds = %S_more_sv.exit.i, %if.then17
  %sv.0.i = phi ptr [ %13, %S_more_sv.exit.i ], [ %11, %if.then17 ]
  %storemerge15.i = load ptr, ptr %sv.0.i, align 8
  store ptr %storemerge15.i, ptr @PL_sv_root, align 8
  %storemerge.in.i = load i64, ptr @PL_sv_count, align 8
  %storemerge.i = add nsw i64 %storemerge.in.i, 1
  store i64 %storemerge.i, ptr @PL_sv_count, align 8
  store ptr null, ptr %sv.0.i, align 8
  %sv_refcnt.i = getelementptr inbounds nuw i8, ptr %sv.0.i, i64 8
  store i32 1, ptr %sv_refcnt.i, align 8
  %sv_flags.i676 = getelementptr inbounds nuw i8, ptr %sv.0.i, i64 12
  store i32 0, ptr %sv_flags.i676, align 4
  tail call void @Perl_push_scope() #7
  tail call void @Perl_save_pushptr(ptr noundef %sv.0.i, i32 noundef 11) #7
  %call1.i = tail call ptr @Perl_sv_gets(ptr noundef %sv.0.i, ptr noundef %fp, i32 noundef 0)
  %call2.i = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %sv.0.i, i32 noundef 0, i64 noundef 0)
  %conv.i = sext i32 %append to i64
  %14 = load ptr, ptr %sv, align 8
  %xpv_cur.i = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %conv.i, ptr %xpv_cur.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %slen.i) #7
  %15 = load i32, ptr %sv_flags.i676, align 4
  %and.i664 = and i32 %15, 2098176
  %cmp.i665 = icmp eq i32 %and.i664, 1024
  br i1 %cmp.i665, label %cond.true.i671, label %cond.false.i666

cond.true.i671:                                   ; preds = %if.then.i
  %16 = load ptr, ptr %sv.0.i, align 8
  %xpv_cur.i672 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %17 = load i64, ptr %xpv_cur.i672, align 8
  store i64 %17, ptr %slen.i, align 8
  %sv_u.i673 = getelementptr inbounds nuw i8, ptr %sv.0.i, i64 16
  %18 = load ptr, ptr %sv_u.i673, align 8
  br label %cond.end.i668

cond.false.i666:                                  ; preds = %if.then.i
  %call.i667 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv.0.i, ptr noundef nonnull %slen.i, i32 noundef 34) #8
  br label %cond.end.i668

cond.end.i668:                                    ; preds = %cond.false.i666, %cond.true.i671
  %cond.i669 = phi ptr [ %18, %cond.true.i671 ], [ %call.i667, %cond.false.i666 ]
  %19 = load i32, ptr %sv_flags, align 4
  %and5.i = and i32 %19, 2097152
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i670, label %land.rhs.i

land.rhs.i:                                       ; preds = %cond.end.i668
  %call9.i = call i32 @Perl_mg_get(ptr noundef nonnull %sv) #7
  br label %if.end.i670

if.end.i670:                                      ; preds = %land.rhs.i, %cond.end.i668
  %20 = load i64, ptr %slen.i, align 8
  %21 = load i32, ptr %sv_flags.i676, align 4
  %and12.i = and i32 %21, 536870912
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %Perl_sv_catsv_flags.exit, label %land.rhs14.i

land.rhs14.i:                                     ; preds = %if.end.i670
  %22 = load ptr, ptr @PL_curcop, align 8
  %cop_hints.i = getelementptr inbounds nuw i8, ptr %22, i64 56
  %23 = load i32, ptr %cop_hints.i, align 8
  %and15.i = and i32 %23, 8
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %24 = select i1 %tobool16.not.i, i32 32768, i32 16384
  br label %Perl_sv_catsv_flags.exit

Perl_sv_catsv_flags.exit:                         ; preds = %land.rhs14.i, %if.end.i670
  %cond19.i = phi i32 [ 16384, %if.end.i670 ], [ %24, %land.rhs14.i ]
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %sv, ptr noundef %cond.i669, i64 noundef %20, i32 noundef %cond19.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %slen.i) #7
  call void @Perl_pop_scope() #7
  %25 = load ptr, ptr %sv, align 8
  %xpv_cur4.i = getelementptr inbounds nuw i8, ptr %25, i64 16
  %26 = load i64, ptr %xpv_cur4.i, align 8
  %tobool.not.i = icmp eq i64 %26, %conv.i
  br i1 %tobool.not.i, label %cleanup, label %cond.true.i

cond.true.i:                                      ; preds = %Perl_sv_catsv_flags.exit
  %sv_u.i = getelementptr inbounds nuw i8, ptr %sv, i64 16
  %27 = load ptr, ptr %sv_u.i, align 8
  br label %cleanup

if.end21.thread:                                  ; preds = %if.else, %if.then7
  %28 = load i32, ptr %sv_flags, align 4
  %and23694 = and i32 %28, 1610547455
  %or695 = or disjoint i32 %and23694, 17408
  store i32 %or695, ptr %sv_flags, align 4
  br label %if.end27

if.end21:                                         ; preds = %cond.end.i21.i
  %add.ptr.i25.i = getelementptr inbounds nuw i8, ptr %cond.i22.i, i64 %8
  call void @llvm.lifetime.start.p0(ptr nonnull %mg.i14.i) #7
  store ptr null, ptr %mg.i14.i, align 8
  %call1.i26.i = call fastcc i64 @S_sv_pos_u2b_cached(ptr noundef nonnull %sv, ptr noundef %mg.i14.i, ptr noundef %cond.i22.i, ptr noundef %add.ptr.i25.i, i64 noundef %conv4.i, i64 noundef 0, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %mg.i14.i) #7
  %29 = trunc i64 %call1.i26.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %len.i13.i) #7
  %30 = load i32, ptr %sv_flags, align 4
  %and23 = and i32 %30, 1610547455
  %or = or disjoint i32 %and23, 17408
  store i32 %or, ptr %sv_flags, align 4
  %tobool25.not = icmp eq i32 %29, 0
  br i1 %tobool25.not, label %do.body, label %if.end27

do.body:                                          ; preds = %if.end21, %if.end21.thread704, %if.end21.thread698
  %31 = load ptr, ptr %sv, align 8
  %xpv_cur = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i64 0, ptr %xpv_cur, align 8
  br label %if.end27

if.end27:                                         ; preds = %do.body, %if.end21, %if.end21.thread
  %append.addr.0697 = phi i32 [ %append, %if.end21.thread ], [ 0, %do.body ], [ %29, %if.end21 ]
  %call28 = call i32 @PerlIO_isutf8(ptr noundef %fp) #7
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.end27
  %32 = load i32, ptr %sv_flags, align 4
  %or32 = or i32 %32, 536870912
  store i32 %or32, ptr %sv_flags, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end27
  %33 = load ptr, ptr @PL_curcop, align 8
  %cmp34 = icmp eq ptr %33, @PL_compiling
  br i1 %cmp34, label %cond.end158.thread737, label %if.else36

cond.end158.thread737:                            ; preds = %if.end33
  store i64 1, ptr %rslen, align 8
  br label %if.end182

if.else36:                                        ; preds = %if.end33
  %34 = load ptr, ptr @PL_rs, align 8
  %sv_flags37 = getelementptr inbounds nuw i8, ptr %34, i64 12
  %35 = load i32, ptr %sv_flags37, align 4
  %and38 = and i32 %35, 65280
  %tobool39.not = icmp ne i32 %and38, 0
  %and41 = and i32 %35, 255
  %cmp42 = icmp eq i32 %and41, 8
  %or.cond651 = or i1 %tobool39.not, %cmp42
  %and45 = and i32 %35, 16777471
  %cmp46 = icmp eq i32 %and45, 16777226
  %or.cond652 = or i1 %cmp46, %or.cond651
  br i1 %or.cond652, label %if.else80, label %if.then47

if.then47:                                        ; preds = %if.else36
  call void @llvm.lifetime.start.p0(ptr nonnull %st) #7
  %call48 = call i32 @Perl_PerlIO_fileno(ptr noundef %fp) #7
  %call49 = call i32 @fstat64(i32 noundef %call48, ptr noundef nonnull %st) #7
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true, label %if.end152.thread719

land.lhs.true:                                    ; preds = %if.then47
  %st_mode = getelementptr inbounds nuw i8, ptr %st, i64 24
  %36 = load i32, ptr %st_mode, align 8
  %and51 = and i32 %36, 61440
  %cmp52 = icmp eq i32 %and51, 32768
  br i1 %cmp52, label %if.then53, label %if.end152.thread719

if.then53:                                        ; preds = %land.lhs.true
  %call54 = call i64 @Perl_PerlIO_tell(ptr noundef %fp) #7
  %cmp55.not = icmp eq i64 %call54, -1
  br i1 %cmp55.not, label %if.end152.thread719, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.then53
  %st_size = getelementptr inbounds nuw i8, ptr %st, i64 48
  %37 = load i64, ptr %st_size, align 8
  %conv = sext i32 %append.addr.0697 to i64
  %add = add nsw i64 %37, %conv
  %cmp57 = icmp sgt i64 %add, %call54
  br i1 %cmp57, label %if.then59, label %if.end152.thread719

if.then59:                                        ; preds = %land.lhs.true56
  %38 = load i32, ptr %sv_flags, align 4
  %and61 = and i32 %38, 268435456
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %lor.lhs.false63, label %cond.true

lor.lhs.false63:                                  ; preds = %if.then59
  %39 = load ptr, ptr %sv, align 8
  %xpv_len_u = getelementptr inbounds nuw i8, ptr %39, i64 24
  %40 = load i64, ptr %xpv_len_u, align 8
  %sub = add nsw i64 %conv, 2
  %add67 = sub i64 %sub, %call54
  %add68 = add i64 %add67, %37
  %cmp69 = icmp ult i64 %40, %add68
  br i1 %cmp69, label %cond.true, label %if.end152.thread719

cond.true:                                        ; preds = %lor.lhs.false63, %if.then59
  %sub72 = add nsw i64 %conv, 2
  %add74 = sub i64 %sub72, %call54
  %add75 = add i64 %add74, %37
  %call76 = call ptr @Perl_sv_grow(ptr noundef nonnull %sv, i64 noundef %add75)
  br label %if.end152.thread719

if.end152.thread719:                              ; preds = %cond.true, %lor.lhs.false63, %land.lhs.true56, %if.then53, %land.lhs.true, %if.then47
  store i64 0, ptr %rslen, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %st) #7
  br label %if.end182

if.else80:                                        ; preds = %if.else36
  %and82 = and i32 %35, 2048
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.else102, label %land.lhs.true84

land.lhs.true84:                                  ; preds = %if.else80
  %sv_u85 = getelementptr inbounds nuw i8, ptr %34, i64 16
  %41 = load ptr, ptr %sv_u85, align 8
  %sv_flags86 = getelementptr inbounds nuw i8, ptr %41, i64 12
  %42 = load i32, ptr %sv_flags86, align 4
  %and87 = and i32 %42, 2097408
  %cmp88 = icmp eq i32 %and87, 256
  br i1 %cmp88, label %cond.true90, label %cond.false93

cond.true90:                                      ; preds = %land.lhs.true84
  %43 = load ptr, ptr %41, align 8
  %xiv_u = getelementptr inbounds nuw i8, ptr %43, i64 32
  %44 = load i64, ptr %xiv_u, align 8
  br label %cond.end96

cond.false93:                                     ; preds = %land.lhs.true84
  %call95 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %41, i32 noundef 2)
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false93, %cond.true90
  %cond97 = phi i64 [ %44, %cond.true90 ], [ %call95, %cond.false93 ]
  %cmp98 = icmp sgt i64 %cond97, 0
  br i1 %cmp98, label %if.then100, label %if.else102

if.then100:                                       ; preds = %cond.end96
  %45 = load ptr, ptr @PL_rs, align 8
  %sv_u.i655 = getelementptr inbounds nuw i8, ptr %45, i64 16
  %46 = load ptr, ptr %sv_u.i655, align 8
  %sv_flags.i = getelementptr inbounds nuw i8, ptr %46, i64 12
  %47 = load i32, ptr %sv_flags.i, align 4
  %and.i = and i32 %47, -2145386240
  %cmp.i = icmp eq i32 %and.i, -2147483392
  br i1 %cmp.i, label %cond.true.i661, label %cond.false.i

cond.true.i661:                                   ; preds = %if.then100
  %48 = load ptr, ptr %46, align 8
  %xuv_u.i = getelementptr inbounds nuw i8, ptr %48, i64 32
  %49 = load i64, ptr %xuv_u.i, align 8
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then100
  %call.i656 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %46, i32 noundef 2)
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i661
  %cond.i657 = phi i64 [ %49, %cond.true.i661 ], [ %call.i656, %cond.false.i ]
  %50 = load i32, ptr %sv_flags, align 4
  %and4.i = and i32 %50, 268435456
  %tobool.not.i658 = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i658, label %lor.lhs.false.i, label %cond.true9.i

lor.lhs.false.i:                                  ; preds = %cond.end.i
  %51 = load ptr, ptr %sv, align 8
  %xpv_len_u.i = getelementptr inbounds nuw i8, ptr %51, i64 24
  %52 = load i64, ptr %xpv_len_u.i, align 8
  %conv.i660 = sext i32 %append.addr.0697 to i64
  %add.i = add nsw i64 %conv.i660, 1
  %add6.i = add i64 %add.i, %cond.i657
  %cmp7.i = icmp ult i64 %52, %add6.i
  br i1 %cmp7.i, label %cond.true9.i, label %cond.false14.i

cond.true9.i:                                     ; preds = %lor.lhs.false.i, %cond.end.i
  %conv10.i = sext i32 %append.addr.0697 to i64
  %add11.i = add nsw i64 %conv10.i, 1
  %add12.i = add i64 %add11.i, %cond.i657
  %call13.i = call ptr @Perl_sv_grow(ptr noundef nonnull %sv, i64 noundef %add12.i)
  br label %cond.end16.i

cond.false14.i:                                   ; preds = %lor.lhs.false.i
  %sv_u15.i = getelementptr inbounds nuw i8, ptr %sv, i64 16
  %53 = load ptr, ptr %sv_u15.i, align 8
  br label %cond.end16.i

cond.end16.i:                                     ; preds = %cond.false14.i, %cond.true9.i
  %cond17.i = phi ptr [ %call13.i, %cond.true9.i ], [ %53, %cond.false14.i ]
  %idx.ext.i = sext i32 %append.addr.0697 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %cond17.i, i64 %idx.ext.i
  %call18.i = call i64 @Perl_PerlIO_read(ptr noundef %fp, ptr noundef %add.ptr.i, i64 noundef %cond.i657) #7
  %call19.i = call i32 @PerlIO_isutf8(ptr noundef %fp) #7
  %tobool20.i = icmp eq i32 %call19.i, 0
  %cmp21.i = icmp slt i64 %call18.i, 1
  %or.cond.not204.i = select i1 %tobool20.i, i1 true, i1 %cmp21.i
  %cmp24186.not.i = icmp eq i64 %cond.i657, 0
  %or.cond203.i = select i1 %or.cond.not204.i, i1 true, i1 %cmp24186.not.i
  br i1 %or.cond203.i, label %if.end89.i, label %while.cond26.preheader.lr.ph.i

while.cond26.preheader.lr.ph.i:                   ; preds = %cond.end16.i
  %add.ptr23.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 %call18.i
  %add59.i = add nsw i64 %idx.ext.i, 1
  %sv_u71.i = getelementptr inbounds nuw i8, ptr %sv, i64 16
  br label %while.cond26.preheader.i

while.cond26.preheader.i:                         ; preds = %if.end87.i, %while.cond26.preheader.lr.ph.i
  %bytesread.0193.i = phi i64 [ %call18.i, %while.cond26.preheader.lr.ph.i ], [ %add82.i, %if.end87.i ]
  %buffer.0192.i = phi ptr [ %add.ptr.i, %while.cond26.preheader.lr.ph.i ], [ %add.ptr75.i, %if.end87.i ]
  %skip.0191.i = phi i64 [ 0, %while.cond26.preheader.lr.ph.i ], [ %skip.3.i, %if.end87.i ]
  %charstart.0190.i = phi i8 [ 1, %while.cond26.preheader.lr.ph.i ], [ %charstart.2.i, %if.end87.i ]
  %charcount.0189.i = phi i64 [ 0, %while.cond26.preheader.lr.ph.i ], [ %charcount.1.lcssa.i, %if.end87.i ]
  %bufp.0188.i = phi ptr [ %add.ptr.i, %while.cond26.preheader.lr.ph.i ], [ %add.ptr84.i, %if.end87.i ]
  %bend.0187.i = phi ptr [ %add.ptr23.i, %while.cond26.preheader.lr.ph.i ], [ %add.ptr83.i, %if.end87.i ]
  %cmp27174.i = icmp ult ptr %bufp.0188.i, %bend.0187.i
  br i1 %cmp27174.i, label %while.body29.peel.i, label %while.end.i

while.body29.peel.i:                              ; preds = %while.cond26.preheader.i
  %loadedv.peel.i = trunc nuw i8 %charstart.0190.i to i1
  br i1 %loadedv.peel.i, label %if.then30.peel.i, label %if.end.peel.i

if.then30.peel.i:                                 ; preds = %while.body29.peel.i
  %54 = load i8, ptr %bufp.0188.i, align 1
  %idxprom.peel.i = zext i8 %54 to i64
  %arrayidx.peel.i = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom.peel.i
  %55 = load i8, ptr %arrayidx.peel.i, align 1
  %conv31.peel.i = zext i8 %55 to i64
  br label %if.end.peel.i

if.end.peel.i:                                    ; preds = %if.then30.peel.i, %while.body29.peel.i
  %skip.2.peel.i = phi i64 [ %conv31.peel.i, %if.then30.peel.i ], [ %skip.0191.i, %while.body29.peel.i ]
  %add.ptr32.peel.i = getelementptr inbounds nuw i8, ptr %bufp.0188.i, i64 %skip.2.peel.i
  %cmp33.peel.i = icmp ugt ptr %add.ptr32.peel.i, %bend.0187.i
  br i1 %cmp33.peel.i, label %while.end.i, label %if.else.peel.i

if.else.peel.i:                                   ; preds = %if.end.peel.i
  %inc.peel.i = add nuw i64 %charcount.0189.i, 1
  %cmp27.peel.i = icmp ult ptr %add.ptr32.peel.i, %bend.0187.i
  br i1 %cmp27.peel.i, label %if.end.i.preheader, label %while.end.i

if.end.i.preheader:                               ; preds = %if.else.peel.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.end.i.preheader
  %charcount.1176.i = phi i64 [ %inc.i, %if.else.i ], [ %inc.peel.i, %if.end.i.preheader ]
  %bufp.1175.i = phi ptr [ %add.ptr32.i, %if.else.i ], [ %add.ptr32.peel.i, %if.end.i.preheader ]
  %56 = load i8, ptr %bufp.1175.i, align 1
  %idxprom.i = zext i8 %56 to i64
  %arrayidx.i = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom.i
  %57 = load i8, ptr %arrayidx.i, align 1
  %conv31.i = zext i8 %57 to i64
  %add.ptr32.i = getelementptr inbounds nuw i8, ptr %bufp.1175.i, i64 %conv31.i
  %cmp33.i = icmp ugt ptr %add.ptr32.i, %bend.0187.i
  br i1 %cmp33.i, label %while.end.i.loopexit, label %if.else.i

if.else.i:                                        ; preds = %if.end.i
  %inc.i = add i64 %charcount.1176.i, 1
  %cmp27.i = icmp ult ptr %add.ptr32.i, %bend.0187.i
  br i1 %cmp27.i, label %if.end.i, label %while.end.i.loopexit, !llvm.loop !2

while.end.i.loopexit:                             ; preds = %if.else.i, %if.end.i
  %conv31.i.lcssa = phi i64 [ %conv31.i, %if.end.i ], [ %conv31.i, %if.else.i ]
  %bufp.1.lcssa.i.ph = phi ptr [ %add.ptr32.i, %if.else.i ], [ %bufp.1175.i, %if.end.i ]
  %charcount.1.lcssa.i.ph = phi i64 [ %inc.i, %if.else.i ], [ %charcount.1176.i, %if.end.i ]
  %charstart.2.i.ph = phi i8 [ 1, %if.else.i ], [ 0, %if.end.i ]
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %if.else.peel.i, %if.end.peel.i, %while.cond26.preheader.i
  %bufp.1.lcssa.i = phi ptr [ %bufp.0188.i, %while.cond26.preheader.i ], [ %bufp.0188.i, %if.end.peel.i ], [ %add.ptr32.peel.i, %if.else.peel.i ], [ %bufp.1.lcssa.i.ph, %while.end.i.loopexit ]
  %charcount.1.lcssa.i = phi i64 [ %charcount.0189.i, %while.cond26.preheader.i ], [ %charcount.0189.i, %if.end.peel.i ], [ %inc.peel.i, %if.else.peel.i ], [ %charcount.1.lcssa.i.ph, %while.end.i.loopexit ]
  %charstart.2.i = phi i8 [ %charstart.0190.i, %while.cond26.preheader.i ], [ 0, %if.end.peel.i ], [ 1, %if.else.peel.i ], [ %charstart.2.i.ph, %while.end.i.loopexit ]
  %skip.3.i = phi i64 [ %skip.0191.i, %while.cond26.preheader.i ], [ %skip.2.peel.i, %if.end.peel.i ], [ %skip.2.peel.i, %if.else.peel.i ], [ %conv31.i.lcssa, %while.end.i.loopexit ]
  %cmp38.i = icmp ult i64 %charcount.1.lcssa.i, %cond.i657
  br i1 %cmp38.i, label %if.then40.i, label %if.end89.i.loopexit

if.then40.i:                                      ; preds = %while.end.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %bufp.1.lcssa.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buffer.0192.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %loadedv41.i = trunc nuw i8 %charstart.2.i to i1
  br i1 %loadedv41.i, label %if.then42.i, label %if.else43.i

if.then42.i:                                      ; preds = %if.then40.i
  %sub.i = sub i64 %cond.i657, %charcount.1.lcssa.i
  br label %if.end51.i

if.else43.i:                                      ; preds = %if.then40.i
  %sub.ptr.lhs.cast44.i = ptrtoint ptr %bend.0187.i to i64
  %58 = xor i64 %charcount.1.lcssa.i, -1
  %sub.ptr.sub46.neg.i = sub i64 %cond.i657, %sub.ptr.lhs.cast44.i
  %sub47.i = add i64 %sub.ptr.sub46.neg.i, %sub.ptr.lhs.cast.i
  %add48.i = add i64 %sub47.i, %58
  %sub50.i = add i64 %add48.i, %skip.3.i
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else43.i, %if.then42.i
  %readsize.0.i = phi i64 [ %sub.i, %if.then42.i ], [ %sub50.i, %if.else43.i ]
  %59 = load i32, ptr %sv_flags, align 4
  %and53.i = and i32 %59, 268435456
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %lor.lhs.false55.i, label %cond.true64.i

lor.lhs.false55.i:                                ; preds = %if.end51.i
  %60 = load ptr, ptr %sv, align 8
  %xpv_len_u57.i = getelementptr inbounds nuw i8, ptr %60, i64 24
  %61 = load i64, ptr %xpv_len_u57.i, align 8
  %add60.i = add i64 %bytesread.0193.i, %add59.i
  %add61.i = add i64 %add60.i, %readsize.0.i
  %cmp62.i = icmp ult i64 %61, %add61.i
  br i1 %cmp62.i, label %cond.true64.i, label %cond.false70.i

cond.true64.i:                                    ; preds = %lor.lhs.false55.i, %if.end51.i
  %add67.i = add i64 %bytesread.0193.i, %add59.i
  %add68.i = add i64 %add67.i, %readsize.0.i
  %call69.i = call ptr @Perl_sv_grow(ptr noundef nonnull %sv, i64 noundef %add68.i)
  br label %cond.end72.i

cond.false70.i:                                   ; preds = %lor.lhs.false55.i
  %62 = load ptr, ptr %sv_u71.i, align 8
  br label %cond.end72.i

cond.end72.i:                                     ; preds = %cond.false70.i, %cond.true64.i
  %cond73.i = phi ptr [ %call69.i, %cond.true64.i ], [ %62, %cond.false70.i ]
  %add.ptr75.i = getelementptr inbounds i8, ptr %cond73.i, i64 %idx.ext.i
  %add.ptr76.i = getelementptr inbounds nuw i8, ptr %add.ptr75.i, i64 %bytesread.0193.i
  %call77.i = call i64 @Perl_PerlIO_read(ptr noundef %fp, ptr noundef %add.ptr76.i, i64 noundef %readsize.0.i) #7
  %cmp78.i = icmp slt i64 %call77.i, 1
  br i1 %cmp78.i, label %if.end89.i.loopexit, label %if.end87.i

if.end87.i:                                       ; preds = %cond.end72.i
  %add82.i = add nuw nsw i64 %call77.i, %bytesread.0193.i
  %add.ptr83.i = getelementptr inbounds nuw i8, ptr %add.ptr75.i, i64 %add82.i
  %add.ptr84.i = getelementptr inbounds nuw i8, ptr %add.ptr75.i, i64 %sub.ptr.sub.i
  br label %while.cond26.preheader.i

if.end89.i.loopexit:                              ; preds = %cond.end72.i, %while.end.i
  %bytesread.0193.i.lcssa = phi i64 [ %bytesread.0193.i, %while.end.i ], [ %bytesread.0193.i, %cond.end72.i ]
  %buffer.3.i.ph = phi ptr [ %buffer.0192.i, %while.end.i ], [ %add.ptr75.i, %cond.end72.i ]
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.end89.i.loopexit, %cond.end16.i
  %buffer.3.i = phi ptr [ %add.ptr.i, %cond.end16.i ], [ %buffer.3.i.ph, %if.end89.i.loopexit ]
  %bytesread.4.i = phi i64 [ %call18.i, %cond.end16.i ], [ %bytesread.0193.i.lcssa, %if.end89.i.loopexit ]
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %bytesread.4.i, i64 0)
  %add95.i = add nsw i64 %spec.store.select.i, %idx.ext.i
  %63 = load ptr, ptr %sv, align 8
  %xpv_cur.i659 = getelementptr inbounds nuw i8, ptr %63, i64 16
  store i64 %add95.i, ptr %xpv_cur.i659, align 8
  %arrayidx97.i = getelementptr inbounds nuw i8, ptr %buffer.3.i, i64 %spec.store.select.i
  store i8 0, ptr %arrayidx97.i, align 1
  %64 = load ptr, ptr %sv, align 8
  %xpv_cur99.i = getelementptr inbounds nuw i8, ptr %64, i64 16
  %65 = load i64, ptr %xpv_cur99.i, align 8
  %tobool102.not.i = icmp eq i64 %65, %idx.ext.i
  br i1 %tobool102.not.i, label %cleanup, label %cond.true103.i

cond.true103.i:                                   ; preds = %if.end89.i
  %sv_u104.i = getelementptr inbounds nuw i8, ptr %sv, i64 16
  %66 = load ptr, ptr %sv_u104.i, align 8
  br label %cleanup

if.else102:                                       ; preds = %cond.end96, %if.else80
  %67 = load ptr, ptr @PL_rs, align 8
  %sv_flags103 = getelementptr inbounds nuw i8, ptr %67, i64 12
  %68 = load i32, ptr %sv_flags103, align 4
  %and104 = and i32 %68, 1024
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.else111, label %land.lhs.true106

land.lhs.true106:                                 ; preds = %if.else102
  %69 = load ptr, ptr %67, align 8
  %xpv_cur108 = getelementptr inbounds nuw i8, ptr %69, i64 16
  %70 = load i64, ptr %xpv_cur108, align 8
  %tobool109.not = icmp eq i64 %70, 0
  br i1 %tobool109.not, label %cond.end158, label %if.else111

if.else111:                                       ; preds = %land.lhs.true106, %if.else102
  %call112 = call i32 @PerlIO_isutf8(ptr noundef %fp) #7
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.else127, label %if.then114

if.then114:                                       ; preds = %if.else111
  %71 = load ptr, ptr @PL_rs, align 8
  %sv_flags115 = getelementptr inbounds nuw i8, ptr %71, i64 12
  %72 = load i32, ptr %sv_flags115, align 4
  %and116 = and i32 %72, 538969088
  %cmp117 = icmp eq i32 %and116, 536871936
  br i1 %cmp117, label %cond.true119, label %cond.false123

cond.true119:                                     ; preds = %if.then114
  %73 = load ptr, ptr %71, align 8
  %xpv_cur121 = getelementptr inbounds nuw i8, ptr %73, i64 16
  %74 = load i64, ptr %xpv_cur121, align 8
  store i64 %74, ptr %rslen, align 8
  %sv_u122 = getelementptr inbounds nuw i8, ptr %71, i64 16
  %75 = load ptr, ptr %sv_u122, align 8
  br label %if.end152

cond.false123:                                    ; preds = %if.then114
  %call124 = call ptr @Perl_sv_2pvutf8(ptr noundef nonnull %71, ptr noundef nonnull %rslen)
  br label %if.end152thread-pre-split

if.else127:                                       ; preds = %if.else111
  %76 = load ptr, ptr @PL_rs, align 8
  %sv_flags128 = getelementptr inbounds nuw i8, ptr %76, i64 12
  %77 = load i32, ptr %sv_flags128, align 4
  %and129 = and i32 %77, 536870912
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end135, label %if.then131

if.then131:                                       ; preds = %if.else127
  %call132 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %76, i1 noundef zeroext true)
  br i1 %call132, label %if.end135, label %if.then133

if.then133:                                       ; preds = %if.then131
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.40) #7
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.then131, %if.else127
  %78 = load ptr, ptr @PL_rs, align 8
  %sv_flags136 = getelementptr inbounds nuw i8, ptr %78, i64 12
  %79 = load i32, ptr %sv_flags136, align 4
  %and137 = and i32 %79, 2098176
  %cmp138 = icmp eq i32 %and137, 1024
  br i1 %cmp138, label %cond.true140, label %cond.false144

cond.true140:                                     ; preds = %if.end135
  %80 = load ptr, ptr %78, align 8
  %xpv_cur142 = getelementptr inbounds nuw i8, ptr %80, i64 16
  %81 = load i64, ptr %xpv_cur142, align 8
  store i64 %81, ptr %rslen, align 8
  %sv_u143 = getelementptr inbounds nuw i8, ptr %78, i64 16
  %82 = load ptr, ptr %sv_u143, align 8
  br label %if.end152

cond.false144:                                    ; preds = %if.end135
  %call145 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %78, ptr noundef nonnull %rslen, i32 noundef 34)
  br label %if.end152thread-pre-split

if.end152thread-pre-split:                        ; preds = %cond.false144, %cond.false123
  %rsptr.0.ph = phi ptr [ %call145, %cond.false144 ], [ %call124, %cond.false123 ]
  %.pr = load i64, ptr %rslen, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.end152thread-pre-split, %cond.true140, %cond.true119
  %83 = phi i64 [ %.pr, %if.end152thread-pre-split ], [ %81, %cond.true140 ], [ %74, %cond.true119 ]
  %rsptr.0 = phi ptr [ %rsptr.0.ph, %if.end152thread-pre-split ], [ %82, %cond.true140 ], [ %75, %cond.true119 ]
  %tobool153.not = icmp eq i64 %83, 0
  br i1 %tobool153.not, label %if.end182, label %cond.end158.thread732

cond.end158.thread732:                            ; preds = %if.end152
  %84 = getelementptr i8, ptr %rsptr.0, i64 %83
  %arrayidx736 = getelementptr i8, ptr %84, i64 -1
  %85 = load i8, ptr %arrayidx736, align 1
  %86 = sext i8 %85 to i32
  br label %if.end182

cond.end158:                                      ; preds = %land.lhs.true106
  store i64 2, ptr %rslen, align 8
  br label %do.body163

do.body163:                                       ; preds = %if.end167, %cond.end158
  %call164 = call i32 @Perl_PerlIO_eof(ptr noundef %fp) #7
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %cleanup.loopexit

if.end167:                                        ; preds = %do.body163
  %call168 = call i32 @PerlIO_getc(ptr noundef %fp) #7
  switch i32 %call168, label %if.end175 [
    i32 10, label %do.body163
    i32 -1, label %cleanup.loopexit
  ]

if.end175:                                        ; preds = %if.end167
  %call168.lcssa = phi i32 [ %call168, %if.end167 ]
  %call176 = call i32 @PerlIO_ungetc(ptr noundef %fp, i32 noundef %call168.lcssa) #7
  br label %if.end182

if.end182:                                        ; preds = %if.end175, %cond.end158.thread732, %if.end152, %if.end152.thread719, %cond.end158.thread737
  %cond159731 = phi i32 [ 10, %if.end175 ], [ %86, %cond.end158.thread732 ], [ 10, %cond.end158.thread737 ], [ 0, %if.end152 ], [ 0, %if.end152.thread719 ]
  %87 = phi i64 [ 2, %if.end175 ], [ %83, %cond.end158.thread732 ], [ 1, %cond.end158.thread737 ], [ 0, %if.end152 ], [ 0, %if.end152.thread719 ]
  %tobool161714730 = phi i1 [ true, %if.end175 ], [ false, %cond.end158.thread732 ], [ false, %cond.end158.thread737 ], [ false, %if.end152 ], [ false, %if.end152.thread719 ]
  %rsptr.0716729 = phi ptr [ @.str.39, %if.end175 ], [ %rsptr.0, %cond.end158.thread732 ], [ @.str.38, %cond.end158.thread737 ], [ %rsptr.0, %if.end152 ], [ null, %if.end152.thread719 ]
  %tobool153.not718728 = phi i1 [ false, %if.end175 ], [ false, %cond.end158.thread732 ], [ false, %cond.end158.thread737 ], [ true, %if.end152 ], [ true, %if.end152.thread719 ]
  %i.0 = phi i32 [ %call168.lcssa, %if.end175 ], [ 0, %cond.end158.thread732 ], [ 0, %cond.end158.thread737 ], [ 0, %if.end152 ], [ 0, %if.end152.thread719 ]
  %call183 = call i32 @PerlIO_fast_gets(ptr noundef %fp) #7
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.else396, label %if.then185

if.then185:                                       ; preds = %if.end182
  %call186 = call i64 @Perl_PerlIO_get_cnt(ptr noundef %fp) #7
  %88 = load ptr, ptr %sv, align 8
  %xpv_len_u188 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %89 = load i64, ptr %xpv_len_u188, align 8
  %90 = trunc i64 %89 to i32
  %conv191 = sub i32 %90, %append.addr.0697
  %conv192 = sext i32 %conv191 to i64
  %add193 = add nsw i64 %call186, 1
  %cmp194.not = icmp slt i64 %add193, %conv192
  br i1 %cmp194.not, label %if.end252, label %if.then196

if.then196:                                       ; preds = %if.then185
  %tobool197 = icmp ne i64 %87, 0
  %cmp199 = icmp sgt i64 %call186, 80
  %or.cond = and i1 %tobool197, %cmp199
  %cmp205 = icmp slt i32 %append.addr.0697, %90
  %or.cond653 = and i1 %or.cond, %cmp205
  br i1 %or.cond653, label %if.then207, label %if.else217

if.then207:                                       ; preds = %if.then196
  %sub210 = sub i64 %call186, %89
  %91 = trunc i64 %sub210 to i32
  %92 = add i32 %append.addr.0697, 1
  %conv214 = add i32 %92, %91
  %conv215 = sext i32 %conv214 to i64
  %sub216 = sub nsw i64 %call186, %conv215
  br label %if.end252

if.else217:                                       ; preds = %if.then196
  %93 = load i32, ptr %sv_flags, align 4
  %and219 = and i32 %93, 268435456
  %tobool220.not = icmp eq i32 %and219, 0
  br i1 %tobool220.not, label %lor.lhs.false221, label %cond.true235

lor.lhs.false221:                                 ; preds = %if.else217
  %conv224 = sext i32 %append.addr.0697 to i64
  %cmp225 = icmp slt i64 %call186, 1
  %cond231 = select i1 %cmp225, i64 2, i64 %add193
  %add232 = add nsw i64 %cond231, %conv224
  %cmp233 = icmp ult i64 %89, %add232
  br i1 %cmp233, label %cond.true235, label %if.end252

cond.true235:                                     ; preds = %lor.lhs.false221, %if.else217
  %conv236 = sext i32 %append.addr.0697 to i64
  %cmp237 = icmp slt i64 %call186, 1
  %cond243 = select i1 %cmp237, i64 2, i64 %add193
  %add244 = add nsw i64 %cond243, %conv236
  %call245 = call ptr @Perl_sv_grow(ptr noundef nonnull %sv, i64 noundef %add244)
  br label %if.end252

if.end252:                                        ; preds = %cond.true235, %lor.lhs.false221, %if.then207, %if.then185
  %cnt.0 = phi i64 [ %sub216, %if.then207 ], [ %call186, %cond.true235 ], [ %call186, %lor.lhs.false221 ], [ %call186, %if.then185 ]
  %shortbuffered.0 = phi i32 [ %conv214, %if.then207 ], [ 0, %cond.true235 ], [ 0, %lor.lhs.false221 ], [ 0, %if.then185 ]
  %sv_u253 = getelementptr inbounds nuw i8, ptr %sv, i64 16
  %94 = load ptr, ptr %sv_u253, align 8
  %idx.ext = sext i32 %append.addr.0697 to i64
  %add.ptr255 = getelementptr inbounds i8, ptr %94, i64 %idx.ext
  %call256 = call ptr @Perl_PerlIO_get_ptr(ptr noundef %fp) #7
  %add295 = add nsw i64 %idx.ext, 2
  %add304 = add nsw i64 %idx.ext, 2
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %cond.end310, %if.end252
  %bp.0.ph = phi ptr [ %add.ptr314, %cond.end310 ], [ %add.ptr255, %if.end252 ]
  %cnt.1.ph = phi i64 [ %conv278, %cond.end310 ], [ %cnt.0, %if.end252 ]
  %i.1.ph = phi i32 [ %i.2.lcssa, %cond.end310 ], [ %i.0, %if.end252 ]
  %ptr.0.ph = phi ptr [ %ptr.3.lcssa, %cond.end310 ], [ %call256, %if.end252 ]
  %shortbuffered.1.ph = phi i32 [ 0, %cond.end310 ], [ %shortbuffered.0, %if.end252 ]
  %tobool276.not = icmp eq i32 %shortbuffered.1.ph, 0
  br label %for.cond

for.cond:                                         ; preds = %if.end364, %for.cond.outer
  %bp.0 = phi ptr [ %incdec.ptr355.lcssa, %if.end364 ], [ %bp.0.ph, %for.cond.outer ]
  %cnt.1 = phi i64 [ %call317.lcssa, %if.end364 ], [ %cnt.1.ph, %for.cond.outer ]
  %i.1 = phi i32 [ %call316.lcssa, %if.end364 ], [ %i.1.ph, %for.cond.outer ]
  %ptr.0 = phi ptr [ %call318.lcssa, %if.end364 ], [ %ptr.0.ph, %for.cond.outer ]
  br label %screamer

screamer:                                         ; preds = %if.then379, %for.cond
  %bp.1 = phi ptr [ %bp.0, %for.cond ], [ %bp.5, %if.then379 ]
  %cnt.2 = phi i64 [ %cnt.1, %for.cond ], [ %cnt.6, %if.then379 ]
  %i.2 = phi i32 [ %i.1, %for.cond ], [ %i.3, %if.then379 ]
  %ptr.1 = phi ptr [ %ptr.0, %for.cond ], [ %ptr.5, %if.then379 ]
  %cmp257 = icmp sgt i64 %cnt.2, 0
  br i1 %cmp257, label %if.then259, label %if.end275

if.then259:                                       ; preds = %screamer
  %95 = load i64, ptr %rslen, align 8
  %tobool260.not = icmp eq i64 %95, 0
  br i1 %tobool260.not, label %if.else271, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then259
  br label %while.cond

while.cond:                                       ; preds = %while.body, %while.cond.preheader
  %bp.2 = phi ptr [ %incdec.ptr264, %while.body ], [ %bp.1, %while.cond.preheader ]
  %cnt.3 = phi i64 [ %dec, %while.body ], [ %cnt.2, %while.cond.preheader ]
  %ptr.2 = phi ptr [ %incdec.ptr, %while.body ], [ %ptr.1, %while.cond.preheader ]
  %cmp262 = icmp sgt i64 %cnt.3, 0
  br i1 %cmp262, label %while.body, label %if.end275.loopexit

while.body:                                       ; preds = %while.cond
  %dec = add nsw i64 %cnt.3, -1
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %ptr.2, i64 1
  %96 = load i8, ptr %ptr.2, align 1
  %incdec.ptr264 = getelementptr inbounds nuw i8, ptr %bp.2, i64 1
  store i8 %96, ptr %bp.2, align 1
  %conv265 = sext i8 %96 to i32
  %cmp267 = icmp eq i32 %cond159731, %conv265
  br i1 %cmp267, label %thats_all_folks.loopexit, label %while.cond, !llvm.loop !4

if.else271:                                       ; preds = %if.then259
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %bp.1, ptr align 1 %ptr.1, i64 %cnt.2, i1 false)
  %add.ptr272 = getelementptr inbounds nuw i8, ptr %bp.1, i64 %cnt.2
  %add.ptr273 = getelementptr inbounds nuw i8, ptr %ptr.1, i64 %cnt.2
  br label %cannot_be_shortbuffered

if.end275.loopexit:                               ; preds = %while.cond
  %bp.2.lcssa = phi ptr [ %bp.2, %while.cond ]
  %ptr.2.lcssa = phi ptr [ %ptr.2, %while.cond ]
  br label %if.end275

if.end275:                                        ; preds = %if.end275.loopexit, %screamer
  %bp.3 = phi ptr [ %bp.1, %screamer ], [ %bp.2.lcssa, %if.end275.loopexit ]
  %cnt.4 = phi i64 [ %cnt.2, %screamer ], [ 0, %if.end275.loopexit ]
  %ptr.3 = phi ptr [ %ptr.1, %screamer ], [ %ptr.2.lcssa, %if.end275.loopexit ]
  br i1 %tobool276.not, label %cannot_be_shortbuffered, label %if.then277

if.then277:                                       ; preds = %if.end275
  %i.2.lcssa = phi i32 [ %i.2, %if.end275 ]
  %bp.3.lcssa = phi ptr [ %bp.3, %if.end275 ]
  %ptr.3.lcssa = phi ptr [ %ptr.3, %if.end275 ]
  %conv278 = sext i32 %shortbuffered.1.ph to i64
  %97 = load ptr, ptr %sv_u253, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %bp.3.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %97 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %98 = load ptr, ptr %sv, align 8
  %xpv_cur283 = getelementptr inbounds nuw i8, ptr %98, i64 16
  store i64 %sub.ptr.sub, ptr %xpv_cur283, align 8
  %99 = load i32, ptr %sv_flags, align 4
  %and287 = and i32 %99, 268435456
  %tobool288.not = icmp eq i32 %and287, 0
  br i1 %tobool288.not, label %lor.lhs.false289, label %cond.true300

lor.lhs.false289:                                 ; preds = %if.then277
  %100 = load ptr, ptr %sv, align 8
  %xpv_len_u291 = getelementptr inbounds nuw i8, ptr %100, i64 24
  %101 = load i64, ptr %xpv_len_u291, align 8
  %add296 = add nsw i64 %add295, %conv278
  %add297 = add i64 %add296, %101
  %cmp298 = icmp ult i64 %101, %add297
  br i1 %cmp298, label %cond.true300, label %cond.end310

cond.true300:                                     ; preds = %lor.lhs.false289, %if.then277
  %102 = load ptr, ptr %sv, align 8
  %xpv_len_u302 = getelementptr inbounds nuw i8, ptr %102, i64 24
  %103 = load i64, ptr %xpv_len_u302, align 8
  %add305 = add nsw i64 %add304, %conv278
  %add306 = add i64 %add305, %103
  %call307 = call ptr @Perl_sv_grow(ptr noundef nonnull %sv, i64 noundef %add306)
  br label %cond.end310

cond.end310:                                      ; preds = %cond.true300, %lor.lhs.false289
  %104 = load ptr, ptr %sv_u253, align 8
  %add.ptr314 = getelementptr inbounds nuw i8, ptr %104, i64 %sub.ptr.sub
  br label %for.cond.outer

cannot_be_shortbuffered:                          ; preds = %if.end275, %if.else271
  %bp.4 = phi ptr [ %bp.3, %if.end275 ], [ %add.ptr272, %if.else271 ]
  %cnt.5 = phi i64 [ %cnt.4, %if.end275 ], [ 0, %if.else271 ]
  %ptr.4 = phi ptr [ %ptr.3, %if.end275 ], [ %add.ptr273, %if.else271 ]
  call void @Perl_PerlIO_set_ptrcnt(ptr noundef %fp, ptr noundef %ptr.4, i64 noundef %cnt.5) #7
  %call316 = call i32 @PerlIO_getc(ptr noundef %fp) #7
  %call317 = call i64 @Perl_PerlIO_get_cnt(ptr noundef %fp) #7
  %call318 = call ptr @Perl_PerlIO_get_ptr(ptr noundef %fp) #7
  %cmp319 = icmp eq i32 %call316, -1
  br i1 %cmp319, label %thats_really_all_folks, label %if.end322

if.end322:                                        ; preds = %cannot_be_shortbuffered
  %105 = load ptr, ptr %sv_u253, align 8
  %sub.ptr.lhs.cast325 = ptrtoint ptr %bp.4 to i64
  %sub.ptr.rhs.cast326 = ptrtoint ptr %105 to i64
  %sub.ptr.sub327 = sub i64 %sub.ptr.lhs.cast325, %sub.ptr.rhs.cast326
  %106 = load ptr, ptr %sv, align 8
  %xpv_cur330 = getelementptr inbounds nuw i8, ptr %106, i64 16
  store i64 %sub.ptr.sub327, ptr %xpv_cur330, align 8
  %107 = load i32, ptr %sv_flags, align 4
  %and334 = and i32 %107, 268435456
  %tobool335.not = icmp eq i32 %and334, 0
  br i1 %tobool335.not, label %lor.lhs.false336, label %cond.true343

lor.lhs.false336:                                 ; preds = %if.end322
  %108 = load ptr, ptr %sv, align 8
  %xpv_len_u338 = getelementptr inbounds nuw i8, ptr %108, i64 24
  %109 = load i64, ptr %xpv_len_u338, align 8
  %add339 = add i64 %call317, 2
  %add340 = add i64 %add339, %sub.ptr.sub327
  %cmp341 = icmp ult i64 %109, %add340
  br i1 %cmp341, label %cond.true343, label %cond.end349

cond.true343:                                     ; preds = %lor.lhs.false336, %if.end322
  %add344 = add i64 %call317, 2
  %add345 = add i64 %add344, %sub.ptr.sub327
  %call346 = call ptr @Perl_sv_grow(ptr noundef nonnull %sv, i64 noundef %add345)
  br label %cond.end349

cond.end349:                                      ; preds = %cond.true343, %lor.lhs.false336
  %110 = load ptr, ptr %sv_u253, align 8
  %add.ptr353 = getelementptr inbounds nuw i8, ptr %110, i64 %sub.ptr.sub327
  %conv354 = trunc i32 %call316 to i8
  %incdec.ptr355 = getelementptr inbounds nuw i8, ptr %add.ptr353, i64 1
  store i8 %conv354, ptr %add.ptr353, align 1
  %111 = load i64, ptr %rslen, align 8
  %tobool356.not = icmp eq i64 %111, 0
  br i1 %tobool356.not, label %if.end364, label %land.lhs.true357

land.lhs.true357:                                 ; preds = %cond.end349
  %sext649 = shl i32 %call316, 24
  %conv359 = ashr exact i32 %sext649, 24
  %cmp361 = icmp eq i32 %conv359, %cond159731
  br i1 %cmp361, label %thats_all_folks, label %if.end364

if.end364:                                        ; preds = %land.lhs.true357, %cond.end349
  %incdec.ptr355.lcssa = phi ptr [ %incdec.ptr355, %land.lhs.true357 ], [ %incdec.ptr355, %cond.end349 ]
  %call316.lcssa = phi i32 [ %call316, %land.lhs.true357 ], [ %call316, %cond.end349 ]
  %call317.lcssa = phi i64 [ %call317, %land.lhs.true357 ], [ %call317, %cond.end349 ]
  %call318.lcssa = phi ptr [ %call318, %land.lhs.true357 ], [ %call318, %cond.end349 ]
  br label %for.cond

thats_all_folks.loopexit:                         ; preds = %while.body
  %dec.lcssa = phi i64 [ %dec, %while.body ]
  %incdec.ptr.lcssa = phi ptr [ %incdec.ptr, %while.body ]
  %incdec.ptr264.lcssa = phi ptr [ %incdec.ptr264, %while.body ]
  br label %thats_all_folks

thats_all_folks:                                  ; preds = %thats_all_folks.loopexit, %land.lhs.true357
  %bp.5 = phi ptr [ %incdec.ptr355, %land.lhs.true357 ], [ %incdec.ptr264.lcssa, %thats_all_folks.loopexit ]
  %cnt.6 = phi i64 [ %call317, %land.lhs.true357 ], [ %dec.lcssa, %thats_all_folks.loopexit ]
  %i.3 = phi i32 [ %call316, %land.lhs.true357 ], [ %i.2, %thats_all_folks.loopexit ]
  %ptr.5 = phi ptr [ %call318, %land.lhs.true357 ], [ %incdec.ptr.lcssa, %thats_all_folks.loopexit ]
  %112 = load i64, ptr %rslen, align 8
  %cmp365 = icmp ugt i64 %112, 1
  br i1 %cmp365, label %land.lhs.true367, label %lor.lhs.false375

land.lhs.true367:                                 ; preds = %thats_all_folks
  %113 = load ptr, ptr %sv_u253, align 8
  %sub.ptr.lhs.cast370 = ptrtoint ptr %bp.5 to i64
  %sub.ptr.rhs.cast371 = ptrtoint ptr %113 to i64
  %sub.ptr.sub372 = sub i64 %sub.ptr.lhs.cast370, %sub.ptr.rhs.cast371
  %cmp373 = icmp ult i64 %sub.ptr.sub372, %112
  br i1 %cmp373, label %if.then379, label %lor.lhs.false375

lor.lhs.false375:                                 ; preds = %land.lhs.true367, %thats_all_folks
  %idx.neg = sub i64 0, %112
  %add.ptr376 = getelementptr inbounds i8, ptr %bp.5, i64 %idx.neg
  %bcmp650 = call i32 @bcmp(ptr nonnull %add.ptr376, ptr %rsptr.0716729, i64 %112)
  %tobool378.not = icmp eq i32 %bcmp650, 0
  br i1 %tobool378.not, label %thats_really_all_folks, label %if.then379

if.then379:                                       ; preds = %lor.lhs.false375, %land.lhs.true367
  br label %screamer

thats_really_all_folks:                           ; preds = %lor.lhs.false375, %cannot_be_shortbuffered
  %shortbuffered.1.ph.lcssa = phi i32 [ %shortbuffered.1.ph, %lor.lhs.false375 ], [ %shortbuffered.1.ph, %cannot_be_shortbuffered ]
  %bp.6 = phi ptr [ %bp.5, %lor.lhs.false375 ], [ %bp.4, %cannot_be_shortbuffered ]
  %cnt.7 = phi i64 [ %cnt.6, %lor.lhs.false375 ], [ %call317, %cannot_be_shortbuffered ]
  %i.4 = phi i32 [ %i.3, %lor.lhs.false375 ], [ -1, %cannot_be_shortbuffered ]
  %ptr.6 = phi ptr [ %ptr.5, %lor.lhs.false375 ], [ %call318, %cannot_be_shortbuffered ]
  %conv383 = sext i32 %shortbuffered.1.ph.lcssa to i64
  %add384 = add nsw i64 %cnt.7, %conv383
  call void @Perl_PerlIO_set_ptrcnt(ptr noundef %fp, ptr noundef %ptr.6, i64 noundef %add384) #7
  store i8 0, ptr %bp.6, align 1
  %114 = load ptr, ptr %sv_u253, align 8
  %sub.ptr.lhs.cast389 = ptrtoint ptr %bp.6 to i64
  %sub.ptr.rhs.cast390 = ptrtoint ptr %114 to i64
  %sub.ptr.sub391 = sub i64 %sub.ptr.lhs.cast389, %sub.ptr.rhs.cast390
  %115 = load ptr, ptr %sv, align 8
  %xpv_cur393 = getelementptr inbounds nuw i8, ptr %115, i64 16
  store i64 %sub.ptr.sub391, ptr %xpv_cur393, align 8
  br label %if.end470

if.else396:                                       ; preds = %if.end182
  call void @llvm.lifetime.start.p0(ptr nonnull %buf) #7
  %sv_u452 = getelementptr inbounds nuw i8, ptr %sv, i64 16
  %sub.ptr.rhs.cast418 = ptrtoint ptr %buf to i64
  %idx.neg457 = sub i64 0, %87
  br label %screamer2

screamer2:                                        ; preds = %if.then467, %if.else396
  %append.addr.1 = phi i32 [ %append.addr.0697, %if.else396 ], [ -1, %if.then467 ]
  br i1 %tobool153.not718728, label %if.else420, label %while.cond401.preheader

while.cond401.preheader:                          ; preds = %screamer2
  br label %while.cond401

while.cond401:                                    ; preds = %land.lhs.true405, %while.cond401.preheader
  %bp.7.idx = phi i64 [ %bp.7.add, %land.lhs.true405 ], [ 0, %while.cond401.preheader ]
  %bp.7.ptr = getelementptr inbounds nuw i8, ptr %buf, i64 %bp.7.idx
  %call402 = call i32 @PerlIO_getc(ptr noundef %fp) #7
  %cmp403.not = icmp eq i32 %call402, -1
  br i1 %cmp403.not, label %while.end415.loopexit, label %land.lhs.true405

land.lhs.true405:                                 ; preds = %while.cond401
  %conv406 = trunc i32 %call402 to i8
  %bp.7.add = add nuw nsw i64 %bp.7.idx, 1
  store i8 %conv406, ptr %bp.7.ptr, align 1
  %sext = shl i32 %call402, 24
  %conv408 = ashr exact i32 %sext, 24
  %cmp410.not = icmp ne i32 %conv408, %cond159731
  %cmp412 = icmp samesign ult i64 %bp.7.idx, 8191
  %or.cond654 = select i1 %cmp410.not, i1 %cmp412, i1 false
  br i1 %or.cond654, label %while.cond401, label %while.end415.split.loop.exit, !llvm.loop !5

while.end415.split.loop.exit:                     ; preds = %land.lhs.true405
  %bp.7.add.lcssa = phi i64 [ %bp.7.add, %land.lhs.true405 ]
  %call402.lcssa749 = phi i32 [ %call402, %land.lhs.true405 ]
  %incdec.ptr407.ptr.le = getelementptr inbounds nuw i8, ptr %buf, i64 %bp.7.add.lcssa
  br label %while.end415

while.end415.loopexit:                            ; preds = %while.cond401
  %bp.7.ptr.lcssa = phi ptr [ %bp.7.ptr, %while.cond401 ]
  %call402.lcssa = phi i32 [ %call402, %while.cond401 ]
  br label %while.end415

while.end415:                                     ; preds = %while.end415.loopexit, %while.end415.split.loop.exit
  %call402750 = phi i32 [ %call402.lcssa749, %while.end415.split.loop.exit ], [ %call402.lcssa, %while.end415.loopexit ]
  %bp.8 = phi ptr [ %incdec.ptr407.ptr.le, %while.end415.split.loop.exit ], [ %bp.7.ptr.lcssa, %while.end415.loopexit ]
  %sub.ptr.lhs.cast417 = ptrtoint ptr %bp.8 to i64
  %sub.ptr.sub419 = sub i64 %sub.ptr.lhs.cast417, %sub.ptr.rhs.cast418
  %116 = call i64 @llvm.smax.i64(i64 %sub.ptr.sub419, i64 0)
  br label %if.end431

if.else420:                                       ; preds = %screamer2
  %call422 = call i64 @Perl_PerlIO_read(ptr noundef %fp, ptr noundef nonnull %buf, i64 noundef 8192) #7
  %cmp423 = icmp sgt i64 %call422, 0
  br i1 %cmp423, label %if.then425, label %if.end431

if.then425:                                       ; preds = %if.else420
  %117 = getelementptr i8, ptr %buf, i64 %call422
  %arrayidx427 = getelementptr i8, ptr %117, i64 -1
  %118 = load i8, ptr %arrayidx427, align 1
  %conv428 = zext i8 %118 to i32
  br label %if.end431

if.end431:                                        ; preds = %if.then425, %if.else420, %while.end415
  %cnt.9 = phi i64 [ %116, %while.end415 ], [ %call422, %if.then425 ], [ 0, %if.else420 ]
  %i.5 = phi i32 [ %call402750, %while.end415 ], [ %conv428, %if.then425 ], [ -1, %if.else420 ]
  %tobool436.not = icmp eq i32 %append.addr.1, 0
  br i1 %tobool436.not, label %if.else439, label %if.then437

if.then437:                                       ; preds = %if.end431
  call void @Perl_sv_catpvn_flags(ptr noundef %sv, ptr noundef nonnull %buf, i64 noundef %cnt.9, i32 noundef 0)
  br label %if.end441

if.else439:                                       ; preds = %if.end431
  call void @Perl_sv_setpvn(ptr noundef %sv, ptr noundef nonnull %buf, i64 noundef %cnt.9)
  br label %if.end441

if.end441:                                        ; preds = %if.else439, %if.then437
  %cmp442.not = icmp eq i32 %i.5, -1
  br i1 %cmp442.not, label %if.end469, label %land.lhs.true444

land.lhs.true444:                                 ; preds = %if.end441
  br i1 %tobool153.not718728, label %if.then461, label %lor.lhs.false446

lor.lhs.false446:                                 ; preds = %land.lhs.true444
  %119 = load ptr, ptr %sv, align 8
  %xpv_cur448 = getelementptr inbounds nuw i8, ptr %119, i64 16
  %120 = load i64, ptr %xpv_cur448, align 8
  %cmp449 = icmp ult i64 %120, %87
  br i1 %cmp449, label %if.then461, label %lor.lhs.false451

lor.lhs.false451:                                 ; preds = %lor.lhs.false446
  %121 = load ptr, ptr %sv_u452, align 8
  %add.ptr456 = getelementptr inbounds nuw i8, ptr %121, i64 %120
  %add.ptr458 = getelementptr inbounds i8, ptr %add.ptr456, i64 %idx.neg457
  %bcmp = call i32 @bcmp(ptr nonnull %add.ptr458, ptr %rsptr.0716729, i64 %87)
  %tobool460.not = icmp eq i32 %bcmp, 0
  br i1 %tobool460.not, label %if.end469, label %if.then461

if.then461:                                       ; preds = %lor.lhs.false451, %lor.lhs.false446, %land.lhs.true444
  %cmp462 = icmp samesign ult i64 %cnt.9, 8192
  br i1 %cmp462, label %land.lhs.true464, label %if.then467

land.lhs.true464:                                 ; preds = %if.then461
  %call465 = call i32 @Perl_PerlIO_eof(ptr noundef %fp) #7
  %tobool466.not = icmp eq i32 %call465, 0
  br i1 %tobool466.not, label %if.then467, label %if.end469

if.then467:                                       ; preds = %land.lhs.true464, %if.then461
  br label %screamer2

if.end469:                                        ; preds = %land.lhs.true464, %lor.lhs.false451, %if.end441
  %i.5.lcssa = phi i32 [ %i.5, %land.lhs.true464 ], [ %i.5, %lor.lhs.false451 ], [ %i.5, %if.end441 ]
  %append.addr.2 = phi i32 [ %append.addr.1, %if.end441 ], [ -1, %land.lhs.true464 ], [ %append.addr.1, %lor.lhs.false451 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %buf) #7
  br label %if.end470

if.end470:                                        ; preds = %if.end469, %thats_really_all_folks
  %append.addr.3 = phi i32 [ %append.addr.2, %if.end469 ], [ %append.addr.0697, %thats_really_all_folks ]
  %i.6 = phi i32 [ %i.5.lcssa, %if.end469 ], [ %i.4, %thats_really_all_folks ]
  %cmp474 = icmp ne i32 %i.6, -1
  %or.cond501 = select i1 %tobool161714730, i1 %cmp474, i1 false
  br i1 %or.cond501, label %while.body476.preheader, label %if.end484

while.body476.preheader:                          ; preds = %if.end470
  br label %while.body476

while.body476:                                    ; preds = %while.body476, %while.body476.preheader
  %call477 = call i32 @PerlIO_getc(ptr noundef %fp) #7
  %cmp478.not = icmp eq i32 %call477, 10
  br i1 %cmp478.not, label %while.body476, label %if.then480, !llvm.loop !6

if.then480:                                       ; preds = %while.body476
  %call477.lcssa = phi i32 [ %call477, %while.body476 ]
  %call481 = call i32 @PerlIO_ungetc(ptr noundef %fp, i32 noundef %call477.lcssa) #7
  br label %if.end484

if.end484:                                        ; preds = %if.then480, %if.end470
  %122 = load ptr, ptr %sv, align 8
  %xpv_cur486 = getelementptr inbounds nuw i8, ptr %122, i64 16
  %123 = load i64, ptr %xpv_cur486, align 8
  %conv487 = sext i32 %append.addr.3 to i64
  %tobool489.not = icmp eq i64 %123, %conv487
  br i1 %tobool489.not, label %cleanup, label %cond.true490

cond.true490:                                     ; preds = %if.end484
  %sv_u491 = getelementptr inbounds nuw i8, ptr %sv, i64 16
  %124 = load ptr, ptr %sv_u491, align 8
  br label %cleanup

cleanup.loopexit:                                 ; preds = %if.end167, %do.body163
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %cond.true490, %if.end484, %cond.true103.i, %if.end89.i, %cond.true.i, %Perl_sv_catsv_flags.exit
  %retval.0 = phi ptr [ %124, %cond.true490 ], [ null, %if.end484 ], [ %27, %cond.true.i ], [ null, %Perl_sv_catsv_flags.exit ], [ %66, %cond.true103.i ], [ null, %if.end89.i ], [ null, %cleanup.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %rslen) #7
  ret ptr %retval.0
}

declare i32 @PerlIO_isutf8(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @Perl_PerlIO_fileno(ptr noundef) local_unnamed_addr #1

declare i64 @Perl_PerlIO_tell(ptr noundef) local_unnamed_addr #1

declare i32 @Perl_PerlIO_eof(ptr noundef) local_unnamed_addr #1

declare i32 @PerlIO_getc(ptr noundef) local_unnamed_addr #1

declare i32 @PerlIO_ungetc(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PerlIO_fast_gets(ptr noundef) local_unnamed_addr #1

declare i64 @Perl_PerlIO_get_cnt(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_PerlIO_get_ptr(ptr noundef) local_unnamed_addr #1

declare void @Perl_PerlIO_set_ptrcnt(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @Perl_PerlIO_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @Perl_push_scope() local_unnamed_addr #1

declare void @Perl_pop_scope() local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { "function-inline-cost-multiplier"="2" }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1, !3}
!3 = !{!"llvm.loop.peeled.count", i32 1}
!4 = distinct !{!4, !1}
!5 = distinct !{!5, !1}
!6 = distinct !{!6, !1}
