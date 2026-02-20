; ModuleID = '/tmp/tmp.gWEo0xyKvY/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/sv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }

@PL_op = external local_unnamed_addr global ptr, align 8
@PL_op_desc = external local_unnamed_addr constant [0 x ptr], align 8
@PL_tainting = external local_unnamed_addr global i8, align 1
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str.9 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.15 = external hidden unnamed_addr constant [54 x i8], align 1
@.str.16 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.17 = external hidden unnamed_addr constant [25 x i8], align 1
@.str.18 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.19 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.20 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.21 = external hidden unnamed_addr constant [37 x i8], align 1
@.str.50 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.51 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.52 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.53 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.54 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.55 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.56 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.57 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.58 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.59 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.60 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.61 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.62 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare dso_local noundef i32 @Perl_sv_backoff(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
declare dso_local ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_custom_op_get_field(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef writeonly captures(address_is_null), i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local noundef ptr @Perl_sv_2mortal(ptr noundef returned) local_unnamed_addr #2

declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_gv_setref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_mro_package_moved(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_setsv_flags(ptr noundef %dstr, ptr noundef %sstr, i32 noundef %flags) local_unnamed_addr #2 {
entry:
  %len = alloca i64, align 8
  %cmp = icmp eq ptr %sstr, %dstr
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds nuw i8, ptr %dstr, i64 12
  %0 = load i32, ptr %sv_flags, align 4
  %cmp1 = icmp eq i32 %0, 255
  br i1 %cmp1, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.15, ptr noundef %sstr, ptr noundef nonnull %dstr) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %1 = load i32, ptr %sv_flags, align 4
  %and = and i32 %1, 427886592
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %dstr, i32 noundef 4)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %tobool9.not = icmp eq ptr %sstr, null
  %spec.store.select = select i1 %tobool9.not, ptr @PL_sv_undef, ptr %sstr
  %sv_flags14 = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 12
  %2 = load i32, ptr %sv_flags14, align 4
  %cmp15 = icmp eq i32 %2, 255
  br i1 %cmp15, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end8
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.16, ptr noundef nonnull %spec.store.select, ptr noundef nonnull %dstr) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end8
  %3 = load i32, ptr %sv_flags14, align 4
  %and21 = and i32 %3, 255
  %4 = load i32, ptr %sv_flags, align 4
  %and23 = and i32 %4, 255
  %trunc = trunc i32 %3 to i8
  switch i8 %trunc, label %sw.default.i [
    i8 0, label %undef_sstr
    i8 1, label %sw.bb36
    i8 2, label %sw.bb78
    i8 3, label %sw.bb108
    i8 5, label %sw.bb112
    i8 6, label %sw.bb116
    i8 8, label %upgregexp
    i8 4, label %sw.bb195
    i8 10, label %sw.bb195
    i8 9, label %sw.bb195
    i8 7, label %sw.bb195
    i8 11, label %Perl_sv_reftype.exit
    i8 15, label %sw.bb51.i
    i8 14, label %sw.bb50.i
    i8 12, label %sw.bb34.i
    i8 13, label %sw.bb35.i
  ]

undef_sstr:                                       ; preds = %sw.bb78, %if.end67, %if.end19
  %5 = add nsw i32 %and23, -11
  %or.cond = icmp ult i32 %5, -2
  br i1 %or.cond, label %if.then28, label %end_of_first_switch

if.then28:                                        ; preds = %undef_sstr
  %and30 = and i32 %4, 1610547455
  store i32 %and30, ptr %sv_flags, align 4
  %and32 = and i32 %4, 33554432
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %if.then28
  %sv_u.i = getelementptr inbounds nuw i8, ptr %dstr, i64 16
  %6 = load ptr, ptr %sv_u.i, align 8
  %arrayidx.i = getelementptr inbounds i8, ptr %6, i64 -1
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i64
  %tobool3.not.i = icmp eq i8 %7, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %Perl_sv_backoff.exit

if.then4.i:                                       ; preds = %land.rhs
  %add.ptr8.i = getelementptr inbounds i8, ptr %6, i64 -9
  %delta.0.copyload.i = load i64, ptr %add.ptr8.i, align 1
  br label %Perl_sv_backoff.exit

Perl_sv_backoff.exit:                             ; preds = %if.then4.i, %land.rhs
  %delta.0.i = phi i64 [ %conv.i, %land.rhs ], [ %delta.0.copyload.i, %if.then4.i ]
  %8 = load ptr, ptr %dstr, align 8
  %xpv_len_u.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %9 = load i64, ptr %xpv_len_u.i, align 8
  %add.i = add i64 %9, %delta.0.i
  store i64 %add.i, ptr %xpv_len_u.i, align 8
  %10 = load ptr, ptr %sv_u.i, align 8
  %idx.neg.i = sub i64 0, %delta.0.i
  %add.ptr17.i = getelementptr inbounds i8, ptr %10, i64 %idx.neg.i
  store ptr %add.ptr17.i, ptr %sv_u.i, align 8
  %11 = load ptr, ptr %dstr, align 8
  %xpv_cur.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %12 = load i64, ptr %xpv_cur.i, align 8
  %add23.i = add i64 %12, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr17.i, ptr align 1 %6, i64 %add23.i, i1 false)
  %13 = load i32, ptr %sv_flags, align 4
  %and25.i = and i32 %13, -33554433
  store i32 %and25.i, ptr %sv_flags, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %if.end19
  %and38 = and i32 %3, 256
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end67, label %if.then40

if.then40:                                        ; preds = %sw.bb36
  %trunc1623 = trunc i32 %4 to i8
  switch i8 %trunc1623, label %sw.epilog [
    i8 0, label %sw.bb41
    i8 2, label %sw.bb43
    i8 3, label %sw.bb43
    i8 9, label %end_of_first_switch
    i8 10, label %end_of_first_switch
  ]

sw.bb41:                                          ; preds = %if.then40
  %add.ptr = getelementptr inbounds i8, ptr %dstr, i64 -16
  store ptr %add.ptr, ptr %dstr, align 8
  %or = or i32 %4, 1
  store i32 %or, ptr %sv_flags, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.then40, %if.then40
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %dstr, i32 noundef 5)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb41, %if.then40
  %14 = load i32, ptr %sv_flags, align 4
  %and46 = and i32 %14, 1610547455
  store i32 %and46, ptr %sv_flags, align 4
  %and48 = and i32 %14, 33554432
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %land.end53, label %land.rhs50

land.rhs50:                                       ; preds = %sw.epilog
  %call51 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %dstr)
  br label %land.end53

land.end53:                                       ; preds = %land.rhs50, %sw.epilog
  %15 = load i32, ptr %sv_flags, align 4
  %or56 = or i32 %15, 4352
  store i32 %or56, ptr %sv_flags, align 4
  %16 = load ptr, ptr %spec.store.select, align 8
  %xiv_u = getelementptr inbounds nuw i8, ptr %16, i64 32
  %17 = load i64, ptr %xiv_u, align 8
  %18 = load ptr, ptr %dstr, align 8
  %xiv_u59 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %17, ptr %xiv_u59, align 8
  %19 = load i32, ptr %sv_flags14, align 4
  %tobool62.not = icmp sgt i32 %19, -1
  br i1 %tobool62.not, label %cleanup, label %if.then63

if.then63:                                        ; preds = %land.end53
  %20 = load i32, ptr %sv_flags, align 4
  %or65 = or i32 %20, -2147483648
  store i32 %or65, ptr %sv_flags, align 4
  br label %cleanup

if.end67:                                         ; preds = %sw.bb36
  %and69 = and i32 %3, 2048
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %undef_sstr, label %if.end72

if.end72:                                         ; preds = %if.end67
  %cmp73 = icmp samesign ult i32 %and23, 3
  %cmp75 = icmp ne i32 %and23, 1
  %or.cond1237 = and i1 %cmp73, %cmp75
  br i1 %or.cond1237, label %if.then76, label %end_of_first_switch

if.then76:                                        ; preds = %if.end72
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %dstr, i32 noundef 1)
  br label %end_of_first_switch

sw.bb78:                                          ; preds = %if.end19
  %and80 = and i32 %3, 512
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %undef_sstr, label %if.then84

if.then84:                                        ; preds = %sw.bb78
  %trunc1622 = trunc i32 %4 to i8
  switch i8 %trunc1622, label %do.body89 [
    i8 0, label %sw.bb85
    i8 1, label %sw.bb85
    i8 3, label %sw.bb86
    i8 5, label %sw.bb86
    i8 9, label %end_of_first_switch
    i8 10, label %end_of_first_switch
  ]

sw.bb85:                                          ; preds = %if.then84, %if.then84
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %dstr, i32 noundef 2)
  br label %do.body89

sw.bb86:                                          ; preds = %if.then84, %if.then84
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %dstr, i32 noundef 6)
  br label %do.body89

do.body89:                                        ; preds = %sw.bb86, %sw.bb85, %if.then84
  %21 = load ptr, ptr %spec.store.select, align 8
  %xnv_u = getelementptr inbounds nuw i8, ptr %21, i64 40
  %22 = load double, ptr %xnv_u, align 8
  %23 = load ptr, ptr %dstr, align 8
  %xnv_u92 = getelementptr inbounds nuw i8, ptr %23, i64 40
  store double %22, ptr %xnv_u92, align 8
  %24 = load i32, ptr %sv_flags, align 4
  %and96 = and i32 %24, 1610547455
  store i32 %and96, ptr %sv_flags, align 4
  %and98 = and i32 %24, 33554432
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %land.end103, label %land.rhs100

land.rhs100:                                      ; preds = %do.body89
  %call101 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %dstr)
  br label %land.end103

land.end103:                                      ; preds = %land.rhs100, %do.body89
  %25 = load i32, ptr %sv_flags, align 4
  %or106 = or i32 %25, 8704
  store i32 %or106, ptr %sv_flags, align 4
  br label %cleanup

sw.bb108:                                         ; preds = %if.end19
  %cmp109 = icmp samesign ult i32 %and23, 3
  br i1 %cmp109, label %if.then110, label %end_of_first_switch

if.then110:                                       ; preds = %sw.bb108
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %dstr, i32 noundef 3)
  br label %end_of_first_switch

sw.bb112:                                         ; preds = %if.end19
  %cmp113 = icmp samesign ult i32 %and23, 5
  br i1 %cmp113, label %if.then114, label %end_of_first_switch

if.then114:                                       ; preds = %sw.bb112
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %dstr, i32 noundef 5)
  br label %end_of_first_switch

sw.bb116:                                         ; preds = %if.end19
  %cmp117 = icmp samesign ult i32 %and23, 6
  br i1 %cmp117, label %if.then118, label %end_of_first_switch

if.then118:                                       ; preds = %sw.bb116
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %dstr, i32 noundef 6)
  br label %end_of_first_switch

sw.bb34.i:                                        ; preds = %if.end19
  br label %Perl_sv_reftype.exit

sw.bb35.i:                                        ; preds = %if.end19
  br label %Perl_sv_reftype.exit

sw.bb50.i:                                        ; preds = %if.end19
  br label %Perl_sv_reftype.exit

sw.bb51.i:                                        ; preds = %if.end19
  br label %Perl_sv_reftype.exit

sw.default.i:                                     ; preds = %if.end19
  br label %Perl_sv_reftype.exit

Perl_sv_reftype.exit:                             ; preds = %sw.default.i, %sw.bb51.i, %sw.bb50.i, %sw.bb35.i, %sw.bb34.i, %if.end19
  %retval.0.i = phi ptr [ @.str.62, %sw.default.i ], [ @.str.55, %sw.bb34.i ], [ @.str.56, %sw.bb35.i ], [ @.str.58, %sw.bb50.i ], [ @.str.59, %sw.bb51.i ], [ @.str.54, %if.end19 ]
  %26 = load ptr, ptr @PL_op, align 8
  %tobool121.not = icmp eq ptr %26, null
  br i1 %tobool121.not, label %if.else, label %if.then122

if.then122:                                       ; preds = %Perl_sv_reftype.exit
  %op_type = getelementptr inbounds nuw i8, ptr %26, i64 32
  %bf.load = load i16, ptr %op_type, align 8
  %bf.clear = and i16 %bf.load, 511
  %cmp123 = icmp eq i16 %bf.clear, 380
  br i1 %cmp123, label %cond.true124, label %cond.false126

cond.true124:                                     ; preds = %if.then122
  %call125 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %26, i32 noundef 2) #5
  br label %cond.end

cond.false126:                                    ; preds = %if.then122
  %idxprom = zext nneg i16 %bf.clear to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr @PL_op_desc, i64 %idxprom
  %27 = load ptr, ptr %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false126, %cond.true124
  %cond = phi ptr [ %call125, %cond.true124 ], [ %27, %cond.false126 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.17, ptr noundef nonnull %retval.0.i, ptr noundef %cond) #5
  br label %upgregexp

if.else:                                          ; preds = %Perl_sv_reftype.exit
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18, ptr noundef nonnull %retval.0.i) #5
  br label %upgregexp

upgregexp:                                        ; preds = %if.then233, %if.else, %cond.end, %if.end19
  %stype.0 = phi i32 [ 8, %if.end19 ], [ 10, %if.then233 ], [ %and21, %if.else ], [ %and21, %cond.end ]
  %cmp133 = icmp samesign ult i32 %and23, 8
  br i1 %cmp133, label %if.then134, label %end_of_first_switch

if.then134:                                       ; preds = %upgregexp
  %cmp135 = icmp samesign ugt i32 %and23, 2
  br i1 %cmp135, label %do.body137, label %if.end193

do.body137:                                       ; preds = %if.then134
  %28 = load ptr, ptr %dstr, align 8
  %xpv_len_u = getelementptr inbounds nuw i8, ptr %28, i64 24
  %29 = load i64, ptr %xpv_len_u, align 8
  %tobool139.not = icmp eq i64 %29, 0
  br i1 %tobool139.not, label %do.body180, label %if.then140

if.then140:                                       ; preds = %do.body137
  %30 = load i32, ptr %sv_flags, align 4
  %and142 = and i32 %30, 33554432
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end175, label %if.then151

if.then151:                                       ; preds = %if.then140
  %sv_u152 = getelementptr inbounds nuw i8, ptr %dstr, i64 16
  %31 = load ptr, ptr %sv_u152, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %31, i64 -1
  %32 = load i8, ptr %arrayidx154, align 1
  %conv = zext i8 %32 to i64
  %tobool155.not = icmp eq i8 %32, 0
  br i1 %tobool155.not, label %if.then156, label %do.body166

if.then156:                                       ; preds = %if.then151
  %add.ptr160 = getelementptr inbounds i8, ptr %31, i64 -9
  %zok.0.copyload = load i64, ptr %add.ptr160, align 1
  br label %do.body166

do.body166:                                       ; preds = %if.then156, %if.then151
  %zok.0 = phi i64 [ %conv, %if.then151 ], [ %zok.0.copyload, %if.then156 ]
  %idx.neg = sub i64 0, %zok.0
  %add.ptr169 = getelementptr inbounds i8, ptr %31, i64 %idx.neg
  store ptr %add.ptr169, ptr %sv_u152, align 8
  %and174 = and i32 %30, -33554433
  store i32 %and174, ptr %sv_flags, align 4
  br label %if.end175

if.end175:                                        ; preds = %do.body166, %if.then140
  %sv_u176 = getelementptr inbounds nuw i8, ptr %dstr, i64 16
  %33 = load ptr, ptr %sv_u176, align 8
  tail call void @Perl_safesysfree(ptr noundef %33) #5
  br label %do.body180

do.body180:                                       ; preds = %if.end175, %do.body137
  %sv_u181 = getelementptr inbounds nuw i8, ptr %dstr, i64 16
  store ptr null, ptr %sv_u181, align 8
  %34 = load ptr, ptr %dstr, align 8
  %xpv_len_u186 = getelementptr inbounds nuw i8, ptr %34, i64 24
  store i64 0, ptr %xpv_len_u186, align 8
  %35 = load ptr, ptr %dstr, align 8
  %xpv_cur = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 0, ptr %xpv_cur, align 8
  br label %if.end193

if.end193:                                        ; preds = %do.body180, %if.then134
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %dstr, i32 noundef 8)
  br label %end_of_first_switch

sw.bb195:                                         ; preds = %if.end19, %if.end19, %if.end19, %if.end19
  %and197 = and i32 %3, 2097152
  %tobool198.not = icmp eq i32 %and197, 0
  %and200 = and i32 %flags, 2
  %tobool201.not = icmp eq i32 %and200, 0
  %or.cond1624 = or i1 %tobool201.not, %tobool198.not
  br i1 %or.cond1624, label %if.end212, label %if.then202

if.then202:                                       ; preds = %sw.bb195
  %call203 = tail call i32 @Perl_mg_get(ptr noundef nonnull %spec.store.select) #5
  %36 = load i32, ptr %sv_flags14, align 4
  %and205 = and i32 %36, 255
  br label %if.end212

if.end212:                                        ; preds = %if.then202, %sw.bb195
  %stype.1 = phi i32 [ %and21, %sw.bb195 ], [ %and205, %if.then202 ]
  %37 = load i32, ptr %sv_flags14, align 4
  %and214 = and i32 %37, 49152
  %cmp215 = icmp eq i32 %and214, 32768
  br i1 %cmp215, label %land.lhs.true217, label %if.end230

land.lhs.true217:                                 ; preds = %if.end212
  %and219 = and i32 %37, 255
  %cmp220 = icmp eq i32 %and219, 9
  br i1 %cmp220, label %land.lhs.true226, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true217
  %cmp224 = icmp eq i32 %and219, 10
  %cmp227 = icmp samesign ult i32 %and23, 11
  %or.cond1238 = select i1 %cmp224, i1 %cmp227, i1 false
  br i1 %or.cond1238, label %if.then229, label %if.end230

land.lhs.true226:                                 ; preds = %land.lhs.true217
  %cmp227.old = icmp samesign ult i32 %and23, 11
  br i1 %cmp227.old, label %if.then229, label %if.end230

if.then229:                                       ; preds = %land.lhs.true226, %lor.lhs.false
  tail call fastcc void @S_glob_assign_glob(ptr noundef nonnull %dstr, ptr noundef nonnull %spec.store.select, i32 noundef %and23)
  br label %cleanup

if.end230:                                        ; preds = %land.lhs.true226, %lor.lhs.false, %if.end212
  %cmp231 = icmp eq i32 %stype.1, 10
  br i1 %cmp231, label %if.then233, label %if.else249

if.then233:                                       ; preds = %if.end230
  %and235 = and i32 %37, 255
  %cmp236 = icmp eq i32 %and235, 8
  %and240 = and i32 %37, 16826623
  %cmp241 = icmp eq i32 %and240, 16777226
  %or.cond1625 = or i1 %cmp236, %cmp241
  br i1 %or.cond1625, label %upgregexp, label %if.end244

if.end244:                                        ; preds = %if.then233
  %38 = load i32, ptr %sv_flags, align 4
  %and246 = and i32 %38, 254
  %cmp247 = icmp samesign ugt i32 %and246, 5
  br i1 %cmp247, label %end_of_first_switch, label %lor.rhs

lor.rhs:                                          ; preds = %if.end244
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %dstr, i32 noundef 6)
  br label %end_of_first_switch

if.else249:                                       ; preds = %if.end230
  %39 = load i32, ptr %sv_flags, align 4
  %and251 = and i32 %39, 255
  %cmp252.not = icmp samesign ult i32 %and251, %stype.1
  br i1 %cmp252.not, label %lor.rhs254, label %end_of_first_switch

lor.rhs254:                                       ; preds = %if.else249
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %dstr, i32 noundef %stype.1)
  br label %end_of_first_switch

end_of_first_switch:                              ; preds = %lor.rhs254, %if.else249, %lor.rhs, %if.end244, %if.end193, %upgregexp, %if.then118, %sw.bb116, %if.then114, %sw.bb112, %if.then110, %sw.bb108, %if.then84, %if.then84, %if.then76, %if.end72, %if.then40, %if.then40, %undef_sstr
  %stype.2 = phi i32 [ %stype.0, %if.end193 ], [ %stype.0, %upgregexp ], [ %and21, %undef_sstr ], [ 1, %if.then40 ], [ 1, %if.then40 ], [ 1, %if.then76 ], [ 1, %if.end72 ], [ 2, %if.then84 ], [ 2, %if.then84 ], [ 3, %if.then110 ], [ 3, %sw.bb108 ], [ 5, %if.then114 ], [ 5, %sw.bb112 ], [ 6, %if.then118 ], [ 6, %sw.bb116 ], [ 10, %lor.rhs ], [ 10, %if.end244 ], [ %stype.1, %lor.rhs254 ], [ %stype.1, %if.else249 ]
  %40 = load i32, ptr %sv_flags, align 4
  %and260 = and i32 %40, 255
  %41 = load i32, ptr %sv_flags14, align 4
  %trunc1711 = trunc i32 %40 to i8
  switch i8 %trunc1711, label %if.else374 [
    i8 13, label %if.then266
    i8 14, label %if.then348
    i8 12, label %if.then348
    i8 11, label %if.then348
  ]

if.then266:                                       ; preds = %end_of_first_switch
  %and268 = and i32 %41, 65280
  %tobool269.not = icmp ne i32 %and268, 0
  %and272 = and i32 %41, 255
  %cmp273 = icmp eq i32 %and272, 8
  %or.cond1626 = or i1 %tobool269.not, %cmp273
  %and277 = and i32 %41, 16777471
  %cmp278 = icmp eq i32 %and277, 16777226
  %or.cond1627 = select i1 %or.cond1626, i1 true, i1 %cmp278
  br i1 %or.cond1627, label %if.then280, label %if.else325

if.then280:                                       ; preds = %if.then266
  call void @llvm.lifetime.start.p0(ptr nonnull %len) #5
  %and282 = and i32 %41, 2098176
  %cmp283 = icmp eq i32 %and282, 1024
  br i1 %cmp283, label %cond.true285, label %cond.false290

cond.true285:                                     ; preds = %if.then280
  %42 = load ptr, ptr %spec.store.select, align 8
  %xpv_cur287 = getelementptr inbounds nuw i8, ptr %42, i64 16
  %43 = load i64, ptr %xpv_cur287, align 8
  store i64 %43, ptr %len, align 8
  %sv_u288 = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 16
  %44 = load ptr, ptr %sv_u288, align 8
  br label %cond.end292

cond.false290:                                    ; preds = %if.then280
  %call291 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %spec.store.select, ptr noundef nonnull %len, i32 noundef 34)
  br label %cond.end292

cond.end292:                                      ; preds = %cond.false290, %cond.true285
  %cond293 = phi ptr [ %44, %cond.true285 ], [ %call291, %cond.false290 ]
  %45 = load i32, ptr %sv_flags, align 4
  %and295 = and i32 %45, 268435456
  %tobool296.not = icmp eq i32 %and295, 0
  br i1 %tobool296.not, label %lor.lhs.false297, label %cond.true302

lor.lhs.false297:                                 ; preds = %cond.end292
  %46 = load ptr, ptr %dstr, align 8
  %xpv_len_u299 = getelementptr inbounds nuw i8, ptr %46, i64 24
  %47 = load i64, ptr %xpv_len_u299, align 8
  %48 = load i64, ptr %len, align 8
  %add = add i64 %48, 1
  %cmp300 = icmp ult i64 %47, %add
  br i1 %cmp300, label %cond.true302, label %cond.end307

cond.true302:                                     ; preds = %lor.lhs.false297, %cond.end292
  %49 = load i64, ptr %len, align 8
  %add303 = add i64 %49, 1
  %call304 = call ptr @Perl_sv_grow(ptr noundef nonnull %dstr, i64 noundef %add303)
  br label %cond.end307

cond.end307:                                      ; preds = %cond.true302, %lor.lhs.false297
  %sv_u309 = getelementptr inbounds nuw i8, ptr %dstr, i64 16
  %50 = load ptr, ptr %sv_u309, align 8
  %51 = load i64, ptr %len, align 8
  %add310 = add i64 %51, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr align 1 %cond293, i64 %add310, i1 false)
  %52 = load ptr, ptr %dstr, align 8
  %xpv_cur313 = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i64 %51, ptr %xpv_cur313, align 8
  %53 = load i32, ptr %sv_flags, align 4
  %and317 = and i32 %53, 1610547455
  %and320 = and i32 %41, 536870912
  %or319 = or disjoint i32 %and320, %and317
  %or322 = or disjoint i32 %or319, 17408
  store i32 %or322, ptr %sv_flags, align 4
  %54 = load ptr, ptr %dstr, align 8
  %xcv_flags = getelementptr inbounds nuw i8, ptr %54, i64 92
  %55 = load i32, ptr %xcv_flags, align 4
  %and324 = and i32 %55, -8193
  store i32 %and324, ptr %xcv_flags, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %len) #5
  br label %if.end1202

if.else325:                                       ; preds = %if.then266
  %and327 = and i32 %40, 1610547213
  store i32 %and327, ptr %sv_flags, align 4
  %and329 = and i32 %40, 33554432
  %tobool330.not = icmp eq i32 %and329, 0
  br i1 %tobool330.not, label %if.end1202, label %land.rhs331

land.rhs331:                                      ; preds = %if.else325
  %sv_u.i1643 = getelementptr inbounds nuw i8, ptr %dstr, i64 16
  %56 = load ptr, ptr %sv_u.i1643, align 8
  %arrayidx.i1648 = getelementptr inbounds i8, ptr %56, i64 -1
  %57 = load i8, ptr %arrayidx.i1648, align 1
  %conv.i1649 = zext i8 %57 to i64
  %tobool3.not.i1650 = icmp eq i8 %57, 0
  br i1 %tobool3.not.i1650, label %if.then4.i1659, label %Perl_sv_backoff.exit1662

if.then4.i1659:                                   ; preds = %land.rhs331
  %add.ptr8.i1660 = getelementptr inbounds i8, ptr %56, i64 -9
  %delta.0.copyload.i1661 = load i64, ptr %add.ptr8.i1660, align 1
  br label %Perl_sv_backoff.exit1662

Perl_sv_backoff.exit1662:                         ; preds = %if.then4.i1659, %land.rhs331
  %delta.0.i1651 = phi i64 [ %conv.i1649, %land.rhs331 ], [ %delta.0.copyload.i1661, %if.then4.i1659 ]
  %58 = load ptr, ptr %dstr, align 8
  %xpv_len_u.i1652 = getelementptr inbounds nuw i8, ptr %58, i64 24
  %59 = load i64, ptr %xpv_len_u.i1652, align 8
  %add.i1653 = add i64 %59, %delta.0.i1651
  store i64 %add.i1653, ptr %xpv_len_u.i1652, align 8
  %60 = load ptr, ptr %sv_u.i1643, align 8
  %idx.neg.i1654 = sub i64 0, %delta.0.i1651
  %add.ptr17.i1655 = getelementptr inbounds i8, ptr %60, i64 %idx.neg.i1654
  store ptr %add.ptr17.i1655, ptr %sv_u.i1643, align 8
  %61 = load ptr, ptr %dstr, align 8
  %xpv_cur.i1656 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %62 = load i64, ptr %xpv_cur.i1656, align 8
  %add23.i1657 = add i64 %62, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr17.i1655, ptr align 1 %56, i64 %add23.i1657, i1 false)
  %63 = load i32, ptr %sv_flags, align 4
  %and25.i1658 = and i32 %63, -33554433
  store i32 %and25.i1658, ptr %sv_flags, align 4
  br label %if.end1202

if.then348:                                       ; preds = %end_of_first_switch, %end_of_first_switch, %end_of_first_switch
  %trunc.i1664 = trunc i32 %40 to i8
  switch i8 %trunc.i1664, label %sw.default.i1693 [
    i8 0, label %sw.bb.i1683
    i8 1, label %sw.bb.i1683
    i8 2, label %sw.bb.i1683
    i8 3, label %sw.bb.i1683
    i8 5, label %sw.bb.i1683
    i8 6, label %sw.bb.i1683
    i8 7, label %sw.bb.i1683
    i8 10, label %sw.bb21.i1676
    i8 11, label %Perl_sv_reftype.exit1694
    i8 12, label %sw.bb34.i1675
    i8 13, label %sw.bb35.i1674
    i8 9, label %sw.bb36.i1670
    i8 14, label %sw.bb50.i1669
    i8 15, label %sw.bb51.i1668
    i8 4, label %sw.bb52.i1667
    i8 8, label %sw.bb53.i1665
  ]

sw.bb.i1683:                                      ; preds = %if.then348, %if.then348, %if.then348, %if.then348, %if.then348, %if.then348, %if.then348
  %and10.i1684 = and i32 %40, 14680064
  %tobool11.not.i1685 = icmp eq i32 %and10.i1684, 0
  br i1 %tobool11.not.i1685, label %if.end.i1689, label %land.lhs.true12.i1686

land.lhs.true12.i1686:                            ; preds = %sw.bb.i1683
  %call13.i1687 = tail call ptr @Perl_mg_find(ptr noundef nonnull %dstr, i32 noundef 86) #5
  %tobool14.not.i1688 = icmp eq ptr %call13.i1687, null
  br i1 %tobool14.not.i1688, label %if.end.i1689, label %Perl_sv_reftype.exit1694

if.end.i1689:                                     ; preds = %land.lhs.true12.i1686, %sw.bb.i1683
  %64 = load i32, ptr %sv_flags, align 4
  %and17.i1690 = and i32 %64, 2048
  %tobool18.not.i1691 = icmp eq i32 %and17.i1690, 0
  %.str.52..str.51.i1692 = select i1 %tobool18.not.i1691, ptr @.str.52, ptr @.str.51
  br label %Perl_sv_reftype.exit1694

sw.bb21.i1676:                                    ; preds = %if.then348
  %and23.i1677 = and i32 %40, 2048
  %tobool24.not.i1678 = icmp eq i32 %and23.i1677, 0
  br i1 %tobool24.not.i1678, label %cond.false26.i1679, label %Perl_sv_reftype.exit1694

cond.false26.i1679:                               ; preds = %sw.bb21.i1676
  %65 = load ptr, ptr %dstr, align 8
  %xlv_type.i1680 = getelementptr inbounds nuw i8, ptr %65, i64 72
  %66 = load i8, ptr %xlv_type.i1680, align 8
  %67 = and i8 %66, -33
  %cmp28.i1681 = icmp eq i8 %67, 84
  %cond30.i1682 = select i1 %cmp28.i1681, ptr @.str.52, ptr @.str.53
  br label %Perl_sv_reftype.exit1694

sw.bb34.i1675:                                    ; preds = %if.then348
  br label %Perl_sv_reftype.exit1694

sw.bb35.i1674:                                    ; preds = %if.then348
  br label %Perl_sv_reftype.exit1694

sw.bb36.i1670:                                    ; preds = %if.then348
  %and38.i1671 = and i32 %40, 49152
  %cmp39.i1672 = icmp eq i32 %and38.i1671, 32768
  %spec.select.i1673 = select i1 %cmp39.i1672, ptr @.str.57, ptr @.str.52
  br label %Perl_sv_reftype.exit1694

sw.bb50.i1669:                                    ; preds = %if.then348
  br label %Perl_sv_reftype.exit1694

sw.bb51.i1668:                                    ; preds = %if.then348
  br label %Perl_sv_reftype.exit1694

sw.bb52.i1667:                                    ; preds = %if.then348
  br label %Perl_sv_reftype.exit1694

sw.bb53.i1665:                                    ; preds = %if.then348
  br label %Perl_sv_reftype.exit1694

sw.default.i1693:                                 ; preds = %if.then348
  br label %Perl_sv_reftype.exit1694

Perl_sv_reftype.exit1694:                         ; preds = %sw.default.i1693, %sw.bb53.i1665, %sw.bb52.i1667, %sw.bb51.i1668, %sw.bb50.i1669, %sw.bb36.i1670, %sw.bb35.i1674, %sw.bb34.i1675, %cond.false26.i1679, %sw.bb21.i1676, %if.end.i1689, %land.lhs.true12.i1686, %if.then348
  %retval.0.i1666 = phi ptr [ @.str.62, %sw.default.i1693 ], [ @.str.55, %sw.bb34.i1675 ], [ @.str.56, %sw.bb35.i1674 ], [ %spec.select.i1673, %sw.bb36.i1670 ], [ @.str.58, %sw.bb50.i1669 ], [ @.str.59, %sw.bb51.i1668 ], [ @.str.60, %sw.bb52.i1667 ], [ @.str.61, %sw.bb53.i1665 ], [ @.str.50, %land.lhs.true12.i1686 ], [ %.str.52..str.51.i1692, %if.end.i1689 ], [ %cond30.i1682, %cond.false26.i1679 ], [ @.str.51, %sw.bb21.i1676 ], [ @.str.54, %if.then348 ]
  %68 = load ptr, ptr @PL_op, align 8
  %tobool351.not = icmp eq ptr %68, null
  br i1 %tobool351.not, label %if.else372, label %if.then352

if.then352:                                       ; preds = %Perl_sv_reftype.exit1694
  %op_type353 = getelementptr inbounds nuw i8, ptr %68, i64 32
  %bf.load354 = load i16, ptr %op_type353, align 8
  %bf.clear355 = and i16 %bf.load354, 511
  %cmp357 = icmp eq i16 %bf.clear355, 380
  br i1 %cmp357, label %cond.true359, label %cond.false363

cond.true359:                                     ; preds = %if.then352
  %call361 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %68, i32 noundef 2) #5
  br label %cond.end370

cond.false363:                                    ; preds = %if.then352
  %idxprom368 = zext nneg i16 %bf.clear355 to i64
  %arrayidx369 = getelementptr inbounds nuw ptr, ptr @PL_op_desc, i64 %idxprom368
  %69 = load ptr, ptr %arrayidx369, align 8
  br label %cond.end370

cond.end370:                                      ; preds = %cond.false363, %cond.true359
  %cond371 = phi ptr [ %call361, %cond.true359 ], [ %69, %cond.false363 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.19, ptr noundef nonnull %retval.0.i1666, ptr noundef %cond371) #5
  br label %if.end1202

if.else372:                                       ; preds = %Perl_sv_reftype.exit1694
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.20, ptr noundef nonnull %retval.0.i1666) #5
  br label %if.end1202

if.else374:                                       ; preds = %end_of_first_switch
  %and375 = and i32 %41, 2048
  %tobool376.not = icmp eq i32 %and375, 0
  br i1 %tobool376.not, label %if.else542, label %if.then377

if.then377:                                       ; preds = %if.else374
  %and379 = and i32 %40, 49152
  %cmp380 = icmp eq i32 %and379, 32768
  %and260.off = add nsw i32 %and260, -9
  %switch = icmp ult i32 %and260.off, 2
  %or.cond1637 = and i1 %cmp380, %switch
  br i1 %or.cond1637, label %land.lhs.true392, label %if.end440

land.lhs.true392:                                 ; preds = %if.then377
  %sv_u393 = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 16
  %70 = load ptr, ptr %sv_u393, align 8
  %sv_flags394 = getelementptr inbounds nuw i8, ptr %70, i64 12
  %71 = load i32, ptr %sv_flags394, align 4
  %72 = and i32 %71, 49407
  %or.cond1628 = icmp eq i32 %72, 32777
  br i1 %or.cond1628, label %if.then416, label %if.then458

if.then416:                                       ; preds = %land.lhs.true392
  %cmp418 = icmp eq ptr %70, %dstr
  br i1 %cmp418, label %if.then420, label %if.end439

if.then420:                                       ; preds = %if.then416
  %73 = load ptr, ptr %dstr, align 8
  %xpv_cur422 = getelementptr inbounds nuw i8, ptr %73, i64 16
  %74 = load i64, ptr %xpv_cur422, align 8
  %and423 = and i64 %74, 240
  %cmp424.not = icmp eq i64 %and423, 240
  br i1 %cmp424.not, label %if.end435, label %land.lhs.true426

land.lhs.true426:                                 ; preds = %if.then420
  %75 = load ptr, ptr @PL_curcop, align 8
  %cop_stash = getelementptr inbounds nuw i8, ptr %75, i64 40
  %76 = load ptr, ptr %cop_stash, align 8
  %xnv_u428 = getelementptr inbounds nuw i8, ptr %73, i64 40
  %77 = load ptr, ptr %xnv_u428, align 8
  %cmp429 = icmp eq ptr %76, %77
  br i1 %cmp429, label %if.end435, label %if.then431

if.then431:                                       ; preds = %land.lhs.true426
  %or434 = or i64 %74, 240
  store i64 %or434, ptr %xpv_cur422, align 8
  br label %if.end435

if.end435:                                        ; preds = %if.then431, %land.lhs.true426, %if.then420
  %78 = load ptr, ptr %dstr, align 8
  %xpv_cur437 = getelementptr inbounds nuw i8, ptr %78, i64 16
  %79 = load i64, ptr %xpv_cur437, align 8
  %or438 = or i64 %79, 2
  store i64 %or438, ptr %xpv_cur437, align 8
  br label %cleanup

if.end439:                                        ; preds = %if.then416
  tail call fastcc void @S_glob_assign_glob(ptr noundef nonnull %dstr, ptr noundef nonnull %70, i32 noundef %and260)
  br label %cleanup

if.end440:                                        ; preds = %if.then377
  %cmp441 = icmp samesign ugt i32 %and260, 2
  br i1 %cmp441, label %if.then443, label %if.end522

if.then443:                                       ; preds = %if.end440
  %brmerge.demorgan = and i1 %cmp380, %switch
  br i1 %brmerge.demorgan, label %if.then458, label %if.end459

if.then458:                                       ; preds = %if.then443, %land.lhs.true392
  tail call void @Perl_gv_setref(ptr noundef nonnull %dstr, ptr noundef nonnull %spec.store.select)
  br label %cleanup

if.end459:                                        ; preds = %if.then443
  %sv_u460 = getelementptr inbounds nuw i8, ptr %dstr, i64 16
  %80 = load ptr, ptr %sv_u460, align 8
  %tobool462.not = icmp eq ptr %80, null
  br i1 %tobool462.not, label %if.end522, label %do.body464

do.body464:                                       ; preds = %if.end459
  %81 = load ptr, ptr %dstr, align 8
  %xpv_len_u466 = getelementptr inbounds nuw i8, ptr %81, i64 24
  %82 = load i64, ptr %xpv_len_u466, align 8
  %tobool467.not = icmp eq i64 %82, 0
  br i1 %tobool467.not, label %do.body511, label %if.then468

if.then468:                                       ; preds = %do.body464
  %and470 = and i32 %40, 33554432
  %tobool471.not = icmp eq i32 %and470, 0
  br i1 %tobool471.not, label %if.end506, label %if.then480

if.then480:                                       ; preds = %if.then468
  %arrayidx483 = getelementptr inbounds i8, ptr %80, i64 -1
  %83 = load i8, ptr %arrayidx483, align 1
  %conv484 = zext i8 %83 to i64
  %tobool485.not = icmp eq i8 %83, 0
  br i1 %tobool485.not, label %if.then486, label %do.body496

if.then486:                                       ; preds = %if.then480
  %add.ptr490 = getelementptr inbounds i8, ptr %80, i64 -9
  %zok475.0.copyload = load i64, ptr %add.ptr490, align 1
  br label %do.body496

do.body496:                                       ; preds = %if.then486, %if.then480
  %zok475.0 = phi i64 [ %conv484, %if.then480 ], [ %zok475.0.copyload, %if.then486 ]
  %idx.neg499 = sub i64 0, %zok475.0
  %add.ptr500 = getelementptr inbounds i8, ptr %80, i64 %idx.neg499
  store ptr %add.ptr500, ptr %sv_u460, align 8
  %and505 = and i32 %40, -33554433
  store i32 %and505, ptr %sv_flags, align 4
  br label %if.end506

if.end506:                                        ; preds = %do.body496, %if.then468
  %84 = load ptr, ptr %sv_u460, align 8
  tail call void @Perl_safesysfree(ptr noundef %84) #5
  br label %do.body511

do.body511:                                       ; preds = %if.end506, %do.body464
  %85 = load ptr, ptr %dstr, align 8
  %xpv_len_u513 = getelementptr inbounds nuw i8, ptr %85, i64 24
  store i64 0, ptr %xpv_len_u513, align 8
  %86 = load ptr, ptr %dstr, align 8
  %xpv_cur518 = getelementptr inbounds nuw i8, ptr %86, i64 16
  store i64 0, ptr %xpv_cur518, align 8
  br label %if.end522

if.end522:                                        ; preds = %do.body511, %if.end459, %if.end440
  %87 = load i32, ptr %sv_flags, align 4
  %and524 = and i32 %87, 1610547455
  store i32 %and524, ptr %sv_flags, align 4
  %and526 = and i32 %87, 33554432
  %tobool527.not = icmp eq i32 %and526, 0
  br i1 %tobool527.not, label %land.end531, label %land.rhs528

land.rhs528:                                      ; preds = %if.end522
  %call529 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %dstr)
  br label %land.end531

land.end531:                                      ; preds = %land.rhs528, %if.end522
  %sv_u534 = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 16
  %88 = load ptr, ptr %sv_u534, align 8
  %cmp.not.i = icmp eq ptr %88, null
  br i1 %cmp.not.i, label %S_SvREFCNT_inc.exit, label %if.then.i1695

if.then.i1695:                                    ; preds = %land.end531
  %sv_refcnt.i = getelementptr inbounds nuw i8, ptr %88, i64 8
  %89 = load i32, ptr %sv_refcnt.i, align 8
  %inc.i = add i32 %89, 1
  store i32 %inc.i, ptr %sv_refcnt.i, align 8
  br label %S_SvREFCNT_inc.exit

S_SvREFCNT_inc.exit:                              ; preds = %if.then.i1695, %land.end531
  %sv_u536 = getelementptr inbounds nuw i8, ptr %dstr, i64 16
  store ptr %88, ptr %sv_u536, align 8
  %90 = load i32, ptr %sv_flags, align 4
  %or541 = or i32 %90, 2048
  store i32 %or541, ptr %sv_flags, align 4
  br label %if.end1202

if.else542:                                       ; preds = %if.else374
  %and544 = and i32 %40, 49152
  %cmp545 = icmp eq i32 %and544, 32768
  %and260.off1639 = add nsw i32 %and260, -9
  %switch1640 = icmp ult i32 %and260.off1639, 2
  %or.cond1641 = and i1 %cmp545, %switch1640
  br i1 %or.cond1641, label %if.then557, label %if.else706

if.then557:                                       ; preds = %if.else542
  %and558 = and i32 %41, 63232
  %tobool559.not = icmp eq i32 %and558, 0
  br i1 %tobool559.not, label %if.then560, label %if.else561

if.then560:                                       ; preds = %if.then557
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 12, ptr noundef nonnull @.str.21) #5
  br label %if.end1202

if.else561:                                       ; preds = %if.then557
  %call562 = tail call ptr @Perl_gv_fetchsv(ptr noundef nonnull %spec.store.select, i32 noundef 2049, i32 noundef 9) #5
  %cmp563.not = icmp eq ptr %dstr, %call562
  br i1 %cmp563.not, label %if.end1202, label %if.then565

if.then565:                                       ; preds = %if.else561
  %91 = load ptr, ptr %dstr, align 8
  %xiv_u567 = getelementptr inbounds nuw i8, ptr %91, i64 32
  %92 = load ptr, ptr %xiv_u567, align 8
  %hek_key = getelementptr inbounds nuw i8, ptr %92, i64 8
  %hek_len = getelementptr inbounds nuw i8, ptr %92, i64 4
  %93 = load i32, ptr %hek_len, align 4
  %cmp572 = icmp ugt i32 %93, 1
  br i1 %cmp572, label %land.lhs.true574, label %lor.lhs.false585

land.lhs.true574:                                 ; preds = %if.then565
  %conv571 = sext i32 %93 to i64
  %94 = getelementptr i8, ptr %hek_key, i64 %conv571
  %arrayidx575 = getelementptr i8, ptr %94, i64 -2
  %95 = load i8, ptr %arrayidx575, align 1
  %cmp577 = icmp eq i8 %95, 58
  br i1 %cmp577, label %land.lhs.true579, label %if.end600

land.lhs.true579:                                 ; preds = %land.lhs.true574
  %arrayidx581 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %arrayidx581, align 1
  %cmp583 = icmp eq i8 %96, 58
  br i1 %cmp583, label %if.then593, label %if.end600

lor.lhs.false585:                                 ; preds = %if.then565
  %cmp586 = icmp eq i32 %93, 1
  br i1 %cmp586, label %land.lhs.true588, label %if.end600

land.lhs.true588:                                 ; preds = %lor.lhs.false585
  %97 = load i8, ptr %hek_key, align 1
  %cmp591 = icmp eq i8 %97, 58
  br i1 %cmp591, label %if.then593, label %if.end600

if.then593:                                       ; preds = %land.lhs.true588, %land.lhs.true579
  %sv_u594 = getelementptr inbounds nuw i8, ptr %dstr, i64 16
  %98 = load ptr, ptr %sv_u594, align 8
  %gp_hv = getelementptr inbounds nuw i8, ptr %98, i64 32
  %99 = load ptr, ptr %gp_hv, align 8
  %tobool596.not = icmp eq ptr %99, null
  br i1 %tobool596.not, label %if.end600, label %if.then597

if.then597:                                       ; preds = %if.then593
  %call598 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %99)
  %sv_refcnt = getelementptr inbounds nuw i8, ptr %99, i64 8
  %100 = load i32, ptr %sv_refcnt, align 8
  %inc = add i32 %100, 1
  store i32 %inc, ptr %sv_refcnt, align 8
  br label %if.end600

if.end600:                                        ; preds = %if.then597, %if.then593, %land.lhs.true588, %lor.lhs.false585, %land.lhs.true579, %land.lhs.true574
  %old_stash.0 = phi ptr [ null, %land.lhs.true588 ], [ null, %lor.lhs.false585 ], [ %99, %if.then597 ], [ null, %if.then593 ], [ null, %land.lhs.true579 ], [ null, %land.lhs.true574 ]
  %reset_isa.0 = phi i1 [ false, %land.lhs.true588 ], [ false, %lor.lhs.false585 ], [ true, %if.then597 ], [ true, %if.then593 ], [ false, %land.lhs.true579 ], [ false, %land.lhs.true574 ]
  %sv_u601 = getelementptr inbounds nuw i8, ptr %dstr, i64 16
  %101 = load ptr, ptr %sv_u601, align 8
  %tobool603.not = icmp eq ptr %101, null
  br i1 %tobool603.not, label %if.end608, label %if.then604

if.then604:                                       ; preds = %if.end600
  %call605 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %dstr)
  %sv_refcnt606 = getelementptr inbounds nuw i8, ptr %dstr, i64 8
  %102 = load i32, ptr %sv_refcnt606, align 8
  %inc607 = add i32 %102, 1
  store i32 %inc607, ptr %sv_refcnt606, align 8
  tail call void @Perl_gp_free(ptr noundef nonnull %dstr) #5
  br label %if.end608

if.end608:                                        ; preds = %if.then604, %if.end600
  %sv_u609 = getelementptr inbounds nuw i8, ptr %call562, i64 16
  %103 = load ptr, ptr %sv_u609, align 8
  %call611 = tail call ptr @Perl_gp_ref(ptr noundef %103) #5
  store ptr %call611, ptr %sv_u601, align 8
  br i1 %reset_isa.0, label %if.then613, label %if.end1202

if.then613:                                       ; preds = %if.end608
  %gp_hv616 = getelementptr inbounds nuw i8, ptr %call611, i64 32
  %104 = load ptr, ptr %gp_hv616, align 8
  %tobool617.not = icmp eq ptr %old_stash.0, null
  br i1 %tobool617.not, label %cond.false699, label %cond.true618

cond.true618:                                     ; preds = %if.then613
  %sv_flags619 = getelementptr inbounds nuw i8, ptr %old_stash.0, i64 12
  %105 = load i32, ptr %sv_flags619, align 4
  %and620 = and i32 %105, 33554432
  %tobool621.not = icmp eq i32 %and620, 0
  br i1 %tobool621.not, label %if.end1202, label %land.lhs.true622

land.lhs.true622:                                 ; preds = %cond.true618
  %sv_u623 = getelementptr inbounds nuw i8, ptr %old_stash.0, i64 16
  %106 = load ptr, ptr %sv_u623, align 8
  %107 = load ptr, ptr %old_stash.0, align 8
  %xhv_max = getelementptr inbounds nuw i8, ptr %107, i64 24
  %108 = load i64, ptr %xhv_max, align 8
  %109 = getelementptr ptr, ptr %106, i64 %108
  %arrayidx626 = getelementptr i8, ptr %109, i64 8
  %110 = load ptr, ptr %arrayidx626, align 8
  %tobool627.not = icmp eq ptr %110, null
  br i1 %tobool627.not, label %if.end1202, label %land.lhs.true628

land.lhs.true628:                                 ; preds = %land.lhs.true622
  %xhv_name_count = getelementptr i8, ptr %109, i64 36
  %111 = load i32, ptr %xhv_name_count, align 4
  %cmp634.not = icmp eq i32 %111, -1
  br i1 %cmp634.not, label %if.end1202, label %if.then701

cond.false699:                                    ; preds = %if.then613
  %tobool700.not = icmp eq ptr %104, null
  br i1 %tobool700.not, label %if.end1202, label %if.then701

if.then701:                                       ; preds = %cond.false699, %land.lhs.true628
  tail call void @Perl_mro_package_moved(ptr noundef %104, ptr noundef %old_stash.0, ptr noundef nonnull %dstr, i32 noundef 0) #5
  br label %if.end1202

if.else706:                                       ; preds = %if.else542
  %112 = and i32 %40, 253
  %or.cond1244 = icmp eq i32 %112, 8
  br i1 %or.cond1244, label %land.lhs.true712, label %if.else727

land.lhs.true712:                                 ; preds = %if.else706
  %cmp713 = icmp eq i32 %stype.2, 8
  br i1 %cmp713, label %if.then725, label %lor.lhs.false715

lor.lhs.false715:                                 ; preds = %land.lhs.true712
  %and717 = and i32 %41, 255
  %cmp718 = icmp eq i32 %and717, 8
  %and722 = and i32 %41, 16826623
  %cmp723 = icmp eq i32 %and722, 16777226
  %or.cond1629 = or i1 %cmp718, %cmp723
  br i1 %or.cond1629, label %if.then725, label %if.else727

if.then725:                                       ; preds = %lor.lhs.false715, %land.lhs.true712
  %call726 = tail call ptr @Perl_reg_temp_copy(ptr noundef nonnull %dstr, ptr noundef nonnull %spec.store.select) #5
  br label %if.end1202

if.else727:                                       ; preds = %lor.lhs.false715, %if.else706
  %and728 = and i32 %41, 16384
  %tobool729.not = icmp eq i32 %and728, 0
  br i1 %tobool729.not, label %if.else1129, label %if.then730

if.then730:                                       ; preds = %if.else727
  %113 = load ptr, ptr %spec.store.select, align 8
  %xpv_cur732 = getelementptr inbounds nuw i8, ptr %113, i64 16
  %114 = load i64, ptr %xpv_cur732, align 8
  %xpv_len_u735 = getelementptr inbounds nuw i8, ptr %113, i64 24
  %115 = load i64, ptr %xpv_len_u735, align 8
  %and737 = and i32 %40, 1610547455
  %or739 = or disjoint i32 %and737, 17408
  store i32 %or739, ptr %sv_flags, align 4
  %and740 = and i32 %41, 268959744
  %cmp741 = icmp eq i32 %and740, 524288
  br i1 %cmp741, label %land.lhs.true758, label %lor.lhs.false743

lor.lhs.false743:                                 ; preds = %if.then730
  %and744 = and i32 %41, 402849792
  %cmp745 = icmp eq i32 %and744, 131072
  %cmp748 = icmp ugt i64 %114, 1249
  %or.cond1246 = select i1 %cmp745, i1 %cmp748, i1 false
  %sub751 = sub i64 %115, %114
  %cmp752 = icmp ult i64 %sub751, 80
  %mul755 = shl i64 %114, 1
  %cmp756 = icmp ult i64 %115, %mul755
  %116 = and i1 %cmp756, %cmp752
  %or.cond1631 = select i1 %or.cond1246, i1 %116, i1 false
  %and759 = and i32 %41, 33554432
  %tobool760.not = icmp eq i32 %and759, 0
  %or.cond1632 = select i1 %or.cond1631, i1 %tobool760.not, i1 false
  br i1 %or.cond1632, label %land.lhs.true761, label %if.else871

land.lhs.true758:                                 ; preds = %if.then730
  %and759.old = and i32 %41, 33554432
  %tobool760.not.old = icmp eq i32 %and759.old, 0
  br i1 %tobool760.not.old, label %land.lhs.true761, label %if.else871

land.lhs.true761:                                 ; preds = %land.lhs.true758, %lor.lhs.false743
  %and762 = and i32 %flags, 16
  %tobool763.not = icmp eq i32 %and762, 0
  br i1 %tobool763.not, label %land.lhs.true764, label %if.else871

land.lhs.true764:                                 ; preds = %land.lhs.true761
  %sv_refcnt765 = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 8
  %117 = load i32, ptr %sv_refcnt765, align 8
  %cmp766 = icmp eq i32 %117, 1
  %tobool769 = icmp ne i64 %115, 0
  %or.cond1248 = select i1 %cmp766, i1 %tobool769, i1 false
  br i1 %or.cond1248, label %if.then770, label %if.else871

if.then770:                                       ; preds = %land.lhs.true764
  %sv_u771 = getelementptr inbounds nuw i8, ptr %dstr, i64 16
  %118 = load ptr, ptr %sv_u771, align 8
  %tobool773.not = icmp eq ptr %118, null
  br i1 %tobool773.not, label %do.body823, label %do.body775

do.body775:                                       ; preds = %if.then770
  %119 = load ptr, ptr %dstr, align 8
  %xpv_len_u777 = getelementptr inbounds nuw i8, ptr %119, i64 24
  %120 = load i64, ptr %xpv_len_u777, align 8
  %tobool778.not = icmp eq i64 %120, 0
  br i1 %tobool778.not, label %do.body823, label %if.then779

if.then779:                                       ; preds = %do.body775
  %and781 = and i32 %40, 33554432
  %tobool782.not = icmp eq i32 %and781, 0
  br i1 %tobool782.not, label %if.end817, label %if.then791

if.then791:                                       ; preds = %if.then779
  %arrayidx794 = getelementptr inbounds i8, ptr %118, i64 -1
  %121 = load i8, ptr %arrayidx794, align 1
  %conv795 = zext i8 %121 to i64
  %tobool796.not = icmp eq i8 %121, 0
  br i1 %tobool796.not, label %if.then797, label %do.body807

if.then797:                                       ; preds = %if.then791
  %add.ptr801 = getelementptr inbounds i8, ptr %118, i64 -9
  %zok786.0.copyload = load i64, ptr %add.ptr801, align 1
  br label %do.body807

do.body807:                                       ; preds = %if.then797, %if.then791
  %zok786.0 = phi i64 [ %conv795, %if.then791 ], [ %zok786.0.copyload, %if.then797 ]
  %idx.neg810 = sub i64 0, %zok786.0
  %add.ptr811 = getelementptr inbounds i8, ptr %118, i64 %idx.neg810
  store ptr %add.ptr811, ptr %sv_u771, align 8
  %and816 = and i32 %or739, 1577010431
  store i32 %and816, ptr %sv_flags, align 4
  br label %if.end817

if.end817:                                        ; preds = %do.body807, %if.then779
  %122 = load ptr, ptr %sv_u771, align 8
  tail call void @Perl_safesysfree(ptr noundef %122) #5
  br label %do.body823

do.body823:                                       ; preds = %if.end817, %do.body775, %if.then770
  %sv_u824 = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 16
  %123 = load ptr, ptr %sv_u824, align 8
  store ptr %123, ptr %sv_u771, align 8
  %124 = load ptr, ptr %spec.store.select, align 8
  %xpv_len_u831 = getelementptr inbounds nuw i8, ptr %124, i64 24
  %125 = load i64, ptr %xpv_len_u831, align 8
  %126 = load ptr, ptr %dstr, align 8
  %xpv_len_u833 = getelementptr inbounds nuw i8, ptr %126, i64 24
  store i64 %125, ptr %xpv_len_u833, align 8
  %127 = load ptr, ptr %spec.store.select, align 8
  %xpv_cur838 = getelementptr inbounds nuw i8, ptr %127, i64 16
  %128 = load i64, ptr %xpv_cur838, align 8
  %129 = load ptr, ptr %dstr, align 8
  %xpv_cur840 = getelementptr inbounds nuw i8, ptr %129, i64 16
  store i64 %128, ptr %xpv_cur840, align 8
  %130 = load i32, ptr %sv_flags, align 4
  %and844 = and i32 %130, -524289
  store i32 %and844, ptr %sv_flags, align 4
  %131 = load i32, ptr %sv_flags14, align 4
  %and846 = and i32 %131, 1610547455
  store i32 %and846, ptr %sv_flags14, align 4
  %and848 = and i32 %131, 33554432
  %tobool849.not = icmp eq i32 %and848, 0
  br i1 %tobool849.not, label %land.end853, label %land.rhs850

land.rhs850:                                      ; preds = %do.body823
  %call851 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %spec.store.select)
  br label %land.end853

land.end853:                                      ; preds = %land.rhs850, %do.body823
  store ptr null, ptr %sv_u824, align 8
  %132 = load ptr, ptr %spec.store.select, align 8
  %xpv_len_u861 = getelementptr inbounds nuw i8, ptr %132, i64 24
  store i64 0, ptr %xpv_len_u861, align 8
  %133 = load ptr, ptr %spec.store.select, align 8
  %xpv_cur866 = getelementptr inbounds nuw i8, ptr %133, i64 16
  store i64 0, ptr %xpv_cur866, align 8
  %134 = load i32, ptr %sv_flags14, align 4
  %and870 = and i32 %134, -524289
  store i32 %and870, ptr %sv_flags14, align 4
  br label %if.end1083

if.else871:                                       ; preds = %land.lhs.true764, %land.lhs.true761, %land.lhs.true758, %lor.lhs.false743
  %and872 = and i32 %flags, 512
  %tobool873.not = icmp eq i32 %and872, 0
  br i1 %tobool873.not, label %if.else1052, label %land.lhs.true874

land.lhs.true874:                                 ; preds = %if.else871
  %and875 = and i32 %41, 268435456
  %tobool876.not = icmp eq i32 %and875, 0
  br i1 %tobool876.not, label %cond.false905, label %cond.true877

cond.true877:                                     ; preds = %land.lhs.true874
  %tobool878.not = icmp eq i64 %115, 0
  br i1 %tobool878.not, label %if.end953, label %lor.lhs.false879

lor.lhs.false879:                                 ; preds = %cond.true877
  %cmp880 = icmp ugt i64 %114, 1249
  %sub883 = sub i64 %115, %114
  %cmp884 = icmp ult i64 %sub883, 80
  %mul887 = shl i64 %114, 1
  %cmp888 = icmp ult i64 %115, %mul887
  %135 = and i1 %cmp888, %cmp884
  %or.cond1634 = select i1 %cmp880, i1 %135, i1 false
  br i1 %or.cond1634, label %land.lhs.true896, label %lor.lhs.false890

lor.lhs.false890:                                 ; preds = %lor.lhs.false879
  %136 = load ptr, ptr %dstr, align 8
  %xpv_len_u892 = getelementptr inbounds nuw i8, ptr %136, i64 24
  %137 = load i64, ptr %xpv_len_u892, align 8
  %add893 = add i64 %114, 1
  %cmp894 = icmp ult i64 %137, %add893
  br i1 %cmp894, label %land.lhs.true896, label %if.else1052

land.lhs.true896:                                 ; preds = %lor.lhs.false890, %lor.lhs.false879
  %sv_u897 = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 16
  %138 = load ptr, ptr %sv_u897, align 8
  %139 = load ptr, ptr %spec.store.select, align 8
  %xpv_len_u899 = getelementptr inbounds nuw i8, ptr %139, i64 24
  %140 = load i64, ptr %xpv_len_u899, align 8
  %add.ptr900 = getelementptr inbounds nuw i8, ptr %138, i64 %140
  %add.ptr901 = getelementptr inbounds i8, ptr %add.ptr900, i64 -1
  %141 = load i8, ptr %add.ptr901, align 1
  %cmp903.not = icmp eq i8 %141, -1
  br i1 %cmp903.not, label %if.else1052, label %if.end953

cond.false905:                                    ; preds = %land.lhs.true874
  %and906 = and i32 %41, 251741184
  %cmp907 = icmp eq i32 %and906, 17408
  br i1 %cmp907, label %land.lhs.true909, label %if.else1052

land.lhs.true909:                                 ; preds = %cond.false905
  %and911 = and i32 %40, 67108864
  %tobool912.not = icmp eq i32 %and911, 0
  %sub914 = sub i64 %115, %114
  %cmp915 = icmp ult i64 %sub914, 80
  %mul918 = shl i64 %114, 1
  %cmp919 = icmp ult i64 %115, %mul918
  %142 = and i1 %cmp919, %cmp915
  %or.cond1636 = select i1 %tobool912.not, i1 %142, i1 false
  br i1 %or.cond1636, label %land.lhs.true921, label %if.else1052

land.lhs.true921:                                 ; preds = %land.lhs.true909
  %add922 = add i64 %114, 1
  %cmp923 = icmp ult i64 %add922, %115
  br i1 %cmp923, label %land.lhs.true925, label %if.else1052

land.lhs.true925:                                 ; preds = %land.lhs.true921
  %cmp926 = icmp ugt i64 %114, 1249
  br i1 %cmp926, label %if.then945, label %lor.lhs.false936

lor.lhs.false936:                                 ; preds = %land.lhs.true925
  %143 = load ptr, ptr %dstr, align 8
  %xpv_len_u938 = getelementptr inbounds nuw i8, ptr %143, i64 24
  %144 = load i64, ptr %xpv_len_u938, align 8
  %cmp940 = icmp ult i64 %144, %add922
  br i1 %cmp940, label %if.then945, label %if.else1052

if.then945:                                       ; preds = %lor.lhs.false936, %land.lhs.true925
  %145 = load i32, ptr %sv_flags14, align 4
  %or947 = or i32 %145, 268435456
  store i32 %or947, ptr %sv_flags14, align 4
  %sv_u948 = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 16
  %146 = load ptr, ptr %sv_u948, align 8
  %147 = load ptr, ptr %spec.store.select, align 8
  %xpv_len_u950 = getelementptr inbounds nuw i8, ptr %147, i64 24
  %148 = load i64, ptr %xpv_len_u950, align 8
  %add.ptr951 = getelementptr inbounds nuw i8, ptr %146, i64 %148
  %add.ptr952 = getelementptr inbounds i8, ptr %add.ptr951, i64 -1
  store i8 0, ptr %add.ptr952, align 1
  br label %if.end953

if.end953:                                        ; preds = %if.then945, %land.lhs.true896, %cond.true877
  %sv_u954 = getelementptr inbounds nuw i8, ptr %dstr, i64 16
  %149 = load ptr, ptr %sv_u954, align 8
  %tobool956.not = icmp eq ptr %149, null
  br i1 %tobool956.not, label %if.end1005, label %do.body958

do.body958:                                       ; preds = %if.end953
  %150 = load ptr, ptr %dstr, align 8
  %xpv_len_u960 = getelementptr inbounds nuw i8, ptr %150, i64 24
  %151 = load i64, ptr %xpv_len_u960, align 8
  %tobool961.not = icmp eq i64 %151, 0
  br i1 %tobool961.not, label %if.end1005, label %if.then962

if.then962:                                       ; preds = %do.body958
  %152 = load i32, ptr %sv_flags, align 4
  %and964 = and i32 %152, 33554432
  %tobool965.not = icmp eq i32 %and964, 0
  br i1 %tobool965.not, label %if.end1000, label %if.then974

if.then974:                                       ; preds = %if.then962
  %arrayidx977 = getelementptr inbounds i8, ptr %149, i64 -1
  %153 = load i8, ptr %arrayidx977, align 1
  %conv978 = zext i8 %153 to i64
  %tobool979.not = icmp eq i8 %153, 0
  br i1 %tobool979.not, label %if.then980, label %do.body990

if.then980:                                       ; preds = %if.then974
  %add.ptr984 = getelementptr inbounds i8, ptr %149, i64 -9
  %zok969.0.copyload = load i64, ptr %add.ptr984, align 1
  br label %do.body990

do.body990:                                       ; preds = %if.then980, %if.then974
  %zok969.0 = phi i64 [ %conv978, %if.then974 ], [ %zok969.0.copyload, %if.then980 ]
  %idx.neg993 = sub i64 0, %zok969.0
  %add.ptr994 = getelementptr inbounds i8, ptr %149, i64 %idx.neg993
  store ptr %add.ptr994, ptr %sv_u954, align 8
  %and999 = and i32 %152, -33554433
  store i32 %and999, ptr %sv_flags, align 4
  br label %if.end1000

if.end1000:                                       ; preds = %do.body990, %if.then962
  %154 = load ptr, ptr %sv_u954, align 8
  tail call void @Perl_safesysfree(ptr noundef %154) #5
  br label %if.end1005

if.end1005:                                       ; preds = %if.end1000, %do.body958, %if.end953
  %tobool1006.not = icmp eq i64 %115, 0
  br i1 %tobool1006.not, label %do.body1025, label %if.then1007

if.then1007:                                      ; preds = %if.end1005
  %sv_u1012 = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 16
  %155 = load ptr, ptr %sv_u1012, align 8
  %156 = load ptr, ptr %spec.store.select, align 8
  %xpv_len_u1014 = getelementptr inbounds nuw i8, ptr %156, i64 24
  %157 = load i64, ptr %xpv_len_u1014, align 8
  %add.ptr1015 = getelementptr inbounds nuw i8, ptr %155, i64 %157
  %add.ptr1016 = getelementptr inbounds i8, ptr %add.ptr1015, i64 -1
  %158 = load i8, ptr %add.ptr1016, align 1
  %inc1017 = add i8 %158, 1
  store i8 %inc1017, ptr %add.ptr1016, align 1
  br label %do.body1040

do.body1025:                                      ; preds = %if.end1005
  %sv_u1026 = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 16
  %159 = load ptr, ptr %sv_u1026, align 8
  %he_valu = getelementptr inbounds i8, ptr %159, i64 -16
  %160 = load i64, ptr %he_valu, align 8
  %inc1030 = add i64 %160, 1
  store i64 %inc1030, ptr %he_valu, align 8
  br label %do.body1040

do.body1040:                                      ; preds = %do.body1025, %if.then1007
  %storemerge.in = phi ptr [ %sv_u1026, %do.body1025 ], [ %sv_u1012, %if.then1007 ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %sv_u954, align 8
  %161 = load ptr, ptr %dstr, align 8
  %xpv_len_u1042 = getelementptr inbounds nuw i8, ptr %161, i64 24
  store i64 %115, ptr %xpv_len_u1042, align 8
  %162 = load ptr, ptr %dstr, align 8
  %xpv_cur1047 = getelementptr inbounds nuw i8, ptr %162, i64 16
  store i64 %114, ptr %xpv_cur1047, align 8
  %163 = load i32, ptr %sv_flags, align 4
  %or1051 = or i32 %163, 268435456
  store i32 %or1051, ptr %sv_flags, align 4
  br label %if.end1083

if.else1052:                                      ; preds = %lor.lhs.false936, %land.lhs.true921, %land.lhs.true909, %cond.false905, %land.lhs.true896, %lor.lhs.false890, %if.else871
  %and1054 = and i32 %40, 268435456
  %tobool1055.not = icmp eq i32 %and1054, 0
  br i1 %tobool1055.not, label %lor.lhs.false1056, label %cond.true1062

lor.lhs.false1056:                                ; preds = %if.else1052
  %164 = load ptr, ptr %dstr, align 8
  %xpv_len_u1058 = getelementptr inbounds nuw i8, ptr %164, i64 24
  %165 = load i64, ptr %xpv_len_u1058, align 8
  %add1059 = add i64 %114, 1
  %cmp1060 = icmp ult i64 %165, %add1059
  br i1 %cmp1060, label %cond.true1062, label %cond.end1067

cond.true1062:                                    ; preds = %lor.lhs.false1056, %if.else1052
  %add1063 = add i64 %114, 1
  %call1064 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %dstr, i64 noundef %add1063)
  br label %cond.end1067

cond.end1067:                                     ; preds = %cond.true1062, %lor.lhs.false1056
  %sv_u1069 = getelementptr inbounds nuw i8, ptr %dstr, i64 16
  %166 = load ptr, ptr %sv_u1069, align 8
  %sv_u1070 = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 16
  %167 = load ptr, ptr %sv_u1070, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %166, ptr align 1 %167, i64 %114, i1 false)
  %168 = load ptr, ptr %dstr, align 8
  %xpv_cur1075 = getelementptr inbounds nuw i8, ptr %168, i64 16
  store i64 %114, ptr %xpv_cur1075, align 8
  %169 = load ptr, ptr %sv_u1069, align 8
  %170 = load ptr, ptr %dstr, align 8
  %xpv_cur1080 = getelementptr inbounds nuw i8, ptr %170, i64 16
  %171 = load i64, ptr %xpv_cur1080, align 8
  %add.ptr1081 = getelementptr inbounds nuw i8, ptr %169, i64 %171
  store i8 0, ptr %add.ptr1081, align 1
  br label %if.end1083

if.end1083:                                       ; preds = %cond.end1067, %do.body1040, %land.end853
  %and1084 = and i32 %41, 8192
  %tobool1085.not = icmp eq i32 %and1084, 0
  br i1 %tobool1085.not, label %if.end1094, label %do.body1087

do.body1087:                                      ; preds = %if.end1083
  %172 = load ptr, ptr %spec.store.select, align 8
  %xnv_u1089 = getelementptr inbounds nuw i8, ptr %172, i64 40
  %173 = load double, ptr %xnv_u1089, align 8
  %174 = load ptr, ptr %dstr, align 8
  %xnv_u1091 = getelementptr inbounds nuw i8, ptr %174, i64 40
  store double %173, ptr %xnv_u1091, align 8
  br label %if.end1094

if.end1094:                                       ; preds = %do.body1087, %if.end1083
  %and1095 = and i32 %41, 4096
  %tobool1096.not = icmp eq i32 %and1095, 0
  br i1 %tobool1096.not, label %if.end1111, label %do.body1098

do.body1098:                                      ; preds = %if.end1094
  %175 = load ptr, ptr %spec.store.select, align 8
  %xiv_u1100 = getelementptr inbounds nuw i8, ptr %175, i64 32
  %176 = load i64, ptr %xiv_u1100, align 8
  %177 = load ptr, ptr %dstr, align 8
  %xiv_u1102 = getelementptr inbounds nuw i8, ptr %177, i64 32
  store i64 %176, ptr %xiv_u1102, align 8
  %tobool1106.not = icmp sgt i32 %41, -1
  br i1 %tobool1106.not, label %if.end1111, label %if.then1107

if.then1107:                                      ; preds = %do.body1098
  %178 = load i32, ptr %sv_flags, align 4
  %or1109 = or i32 %178, -2147483648
  store i32 %or1109, ptr %sv_flags, align 4
  br label %if.end1111

if.end1111:                                       ; preds = %if.then1107, %do.body1098, %if.end1094
  %and1112 = and i32 %41, 536883968
  %179 = load i32, ptr %sv_flags, align 4
  %or1114 = or i32 %179, %and1112
  store i32 %or1114, ptr %sv_flags, align 4
  %180 = load i32, ptr %sv_flags14, align 4
  %and1116 = and i32 %180, 14680064
  %tobool1117.not = icmp eq i32 %and1116, 0
  br i1 %tobool1117.not, label %if.end1202, label %cond.end1121

cond.end1121:                                     ; preds = %if.end1111
  %call1119 = tail call ptr @Perl_mg_find(ptr noundef nonnull %spec.store.select, i32 noundef 86) #5
  %tobool1123.not = icmp eq ptr %call1119, null
  br i1 %tobool1123.not, label %if.end1202, label %if.then1124

if.then1124:                                      ; preds = %cond.end1121
  %mg_ptr = getelementptr inbounds nuw i8, ptr %call1119, i64 40
  %181 = load ptr, ptr %mg_ptr, align 8
  %mg_len = getelementptr inbounds nuw i8, ptr %call1119, i64 24
  %182 = load i64, ptr %mg_len, align 8
  %conv1125 = trunc i64 %182 to i32
  tail call void @Perl_sv_magic(ptr noundef nonnull %dstr, ptr noundef null, i32 noundef 86, ptr noundef %181, i32 noundef %conv1125)
  %183 = load i32, ptr %sv_flags, align 4
  %or1127 = or i32 %183, 8388608
  store i32 %or1127, ptr %sv_flags, align 4
  br label %if.end1202

if.else1129:                                      ; preds = %if.else727
  %and1130 = and i32 %41, 12288
  %tobool1131.not = icmp eq i32 %and1130, 0
  br i1 %tobool1131.not, label %if.else1168, label %if.then1132

if.then1132:                                      ; preds = %if.else1129
  %and1134 = and i32 %40, 1610547455
  store i32 %and1134, ptr %sv_flags, align 4
  %and1136 = and i32 %40, 33554432
  %tobool1137.not = icmp eq i32 %and1136, 0
  br i1 %tobool1137.not, label %land.end1141, label %land.rhs1138

land.rhs1138:                                     ; preds = %if.then1132
  %call1139 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %dstr)
  br label %land.end1141

land.end1141:                                     ; preds = %land.rhs1138, %if.then1132
  %and1143 = and i32 %41, -2147470592
  %184 = load i32, ptr %sv_flags, align 4
  %or1145 = or i32 %184, %and1143
  store i32 %or1145, ptr %sv_flags, align 4
  %and1146 = and i32 %41, 4096
  %tobool1147.not = icmp eq i32 %and1146, 0
  br i1 %tobool1147.not, label %if.end1156, label %do.body1149

do.body1149:                                      ; preds = %land.end1141
  %185 = load ptr, ptr %spec.store.select, align 8
  %xiv_u1151 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %186 = load i64, ptr %xiv_u1151, align 8
  %187 = load ptr, ptr %dstr, align 8
  %xiv_u1153 = getelementptr inbounds nuw i8, ptr %187, i64 32
  store i64 %186, ptr %xiv_u1153, align 8
  br label %if.end1156

if.end1156:                                       ; preds = %do.body1149, %land.end1141
  %and1157 = and i32 %41, 8192
  %tobool1158.not = icmp eq i32 %and1157, 0
  br i1 %tobool1158.not, label %if.end1202, label %do.body1160

do.body1160:                                      ; preds = %if.end1156
  %188 = load ptr, ptr %spec.store.select, align 8
  %xnv_u1162 = getelementptr inbounds nuw i8, ptr %188, i64 40
  %189 = load double, ptr %xnv_u1162, align 8
  %190 = load ptr, ptr %dstr, align 8
  %xnv_u1164 = getelementptr inbounds nuw i8, ptr %190, i64 40
  store double %189, ptr %xnv_u1164, align 8
  br label %if.end1202

if.else1168:                                      ; preds = %if.else1129
  %and1170 = and i32 %41, 32768
  %cmp1171.not = icmp eq i32 %and1170, 0
  br i1 %cmp1171.not, label %if.else1184, label %land.lhs.true1173

land.lhs.true1173:                                ; preds = %if.else1168
  %and1175 = and i32 %41, 255
  %and1175.off = add nsw i32 %and1175, -9
  %switch1642 = icmp ult i32 %and1175.off, 2
  br i1 %switch1642, label %if.then1183, label %if.else1184

if.then1183:                                      ; preds = %land.lhs.true1173
  tail call void @Perl_gv_efullname4(ptr noundef nonnull %dstr, ptr noundef nonnull %spec.store.select, ptr noundef nonnull @.str.9, i1 noundef zeroext true) #5
  br label %if.end1202

if.else1184:                                      ; preds = %land.lhs.true1173, %if.else1168
  %and1186 = and i32 %40, 1610547455
  store i32 %and1186, ptr %sv_flags, align 4
  %and1188 = and i32 %40, 33554432
  %tobool1189.not = icmp eq i32 %and1188, 0
  br i1 %tobool1189.not, label %if.end1202, label %land.rhs1190

land.rhs1190:                                     ; preds = %if.else1184
  %call1191 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %dstr)
  br label %if.end1202

if.end1202:                                       ; preds = %land.rhs1190, %if.else1184, %if.then1183, %do.body1160, %if.end1156, %if.then1124, %cond.end1121, %if.end1111, %if.then725, %if.then701, %cond.false699, %land.lhs.true628, %land.lhs.true622, %cond.true618, %if.end608, %if.else561, %if.then560, %S_SvREFCNT_inc.exit, %if.else372, %cond.end370, %Perl_sv_backoff.exit1662, %if.else325, %cond.end307
  %191 = load i32, ptr %sv_flags14, align 4
  %and1204 = and i32 %191, 14680064
  %tobool1205.not = icmp ne i32 %and1204, 0
  %and.i1698 = and i32 %191, 255
  %cmp.i = icmp samesign ugt i32 %and.i1698, 6
  %or.cond1710 = select i1 %tobool1205.not, i1 %cmp.i, i1 false
  br i1 %or.cond1710, label %land.lhs.true.i, label %cleanup

land.lhs.true.i:                                  ; preds = %if.end1202
  %192 = load ptr, ptr %spec.store.select, align 8
  %xmg_u.i = getelementptr inbounds nuw i8, ptr %192, i64 8
  %193 = load ptr, ptr %xmg_u.i, align 8
  %tobool.not.i1699 = icmp eq ptr %193, null
  br i1 %tobool.not.i1699, label %cleanup, label %if.then.i1700

if.then.i1700:                                    ; preds = %land.lhs.true.i
  %call.i = call ptr @Perl_mg_find(ptr noundef nonnull %spec.store.select, i32 noundef 116) #5
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %cleanup, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %if.then.i1700
  %mg_len.i = getelementptr inbounds nuw i8, ptr %call.i, i64 24
  %194 = load i64, ptr %mg_len.i, align 8
  %and3.i = and i64 %194, 1
  %tobool4.not.i = icmp eq i64 %and3.i, 0
  br i1 %tobool4.not.i, label %cleanup, label %Perl_sv_tainted.exit

Perl_sv_tainted.exit:                             ; preds = %land.lhs.true2.i
  %195 = load i8, ptr @PL_tainting, align 1, !range !0
  %loadedv1211 = trunc nuw i8 %195 to i1
  %196 = load i8, ptr @PL_tainted, align 1, !range !0
  %loadedv1216 = trunc nuw i8 %196 to i1
  %or.cond1252 = select i1 %loadedv1211, i1 %loadedv1216, i1 false
  br i1 %or.cond1252, label %if.then1226, label %cleanup

if.then1226:                                      ; preds = %Perl_sv_tainted.exit
  call void @Perl_sv_magic(ptr noundef nonnull %dstr, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then1226, %Perl_sv_tainted.exit, %land.lhs.true2.i, %if.then.i1700, %land.lhs.true.i, %if.end1202, %if.then458, %if.end439, %if.end435, %if.then229, %land.end103, %if.then63, %land.end53, %Perl_sv_backoff.exit, %if.then28, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden fastcc void @S_glob_assign_glob(ptr noundef, ptr noundef, i32 noundef range(i32 0, 256)) unnamed_addr #2

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @Perl_gv_fetchsv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_gp_free(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_gp_ref(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_reg_temp_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!0 = !{i8 0, i8 2}
