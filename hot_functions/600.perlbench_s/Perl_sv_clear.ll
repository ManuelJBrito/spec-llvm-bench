; ModuleID = '/tmp/tmp.oV7UgzldeL/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/sv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.body_details = type { i8, i8, i8, i8, i32 }
%struct.sv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }

@PL_stderrgv = external local_unnamed_addr global ptr, align 8
@PL_in_clean_all = external local_unnamed_addr global i8, align 1
@PL_body_roots = external local_unnamed_addr global [16 x ptr], align 16
@PL_sv_root = external local_unnamed_addr global ptr, align 8
@bodies_by_type = external hidden unnamed_addr constant [16 x %struct.body_details], align 16
@PL_stashcache = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_sv_count = external local_unnamed_addr global i64, align 8
@PL_phase = external local_unnamed_addr global i32, align 4
@PL_statgv = external local_unnamed_addr global ptr, align 8
@PL_last_swash_hv = external local_unnamed_addr global ptr, align 8
@PL_comppad = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_hv_fetch_ent_mh = external local_unnamed_addr global ptr, align 8
@PL_last_in_gv = external local_unnamed_addr global ptr, align 8
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_sv_placeholder = external global %struct.sv, align 8
@.str.34 = external hidden unnamed_addr constant [46 x i8], align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #1

declare void @Perl_mro_method_changed_in(ptr noundef) local_unnamed_addr #1

declare void @Perl_gp_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden fastcc i32 @S_sv_unmagicext_flags(ptr noundef, i32 noundef, ptr noundef readnone captures(address), i32 noundef range(i32 0, 2)) unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_sv_del_backref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Perl_mg_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_clear(ptr noundef %orig_sv) local_unnamed_addr #2 {
entry:
  %hash_index = alloca i64, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %hash_index) #4
  store i64 0, ptr %hash_index, align 8
  %tobool.not837 = icmp eq ptr %orig_sv, null
  br i1 %tobool.not837, label %while.end595, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.end, %while.body.preheader
  %iter_sv.0839 = phi ptr [ %iter_sv.9, %while.end ], [ null, %while.body.preheader ]
  %sv.0838 = phi ptr [ %sv.5, %while.end ], [ %orig_sv, %while.body.preheader ]
  %sv_flags = getelementptr inbounds nuw i8, ptr %sv.0838, i64 12
  %0 = load i32, ptr %sv_flags, align 4
  %and = and i32 %0, 255
  %cmp = icmp samesign ult i32 %and, 2
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %while.body
  %and2 = and i32 %0, 2048
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end, label %free_rv

if.end:                                           ; preds = %if.then
  %and6 = and i32 %0, 67108864
  %or = or disjoint i32 %and6, 255
  store i32 %or, ptr %sv_flags, align 4
  br label %free_head

if.end8:                                          ; preds = %while.body
  %cmp9 = icmp samesign ugt i32 %and, 6
  br i1 %cmp9, label %if.then10, label %if.end36

if.then10:                                        ; preds = %if.end8
  %and12 = and i32 %0, 1048576
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end19, label %if.then14

if.then14:                                        ; preds = %if.then10
  %call = call fastcc zeroext i1 @S_curse(ptr noundef nonnull %sv.0838, i1 noundef zeroext true)
  br i1 %call, label %if.end16, label %get_next_sv

if.end16:                                         ; preds = %if.then14
  %1 = load i32, ptr %sv_flags, align 4
  %and18 = and i32 %1, 255
  br label %if.end19

if.end19:                                         ; preds = %if.end16, %if.then10
  %type.0 = phi i32 [ %and18, %if.end16 ], [ %and, %if.then10 ]
  %cmp20 = icmp eq i32 %type.0, 12
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end19
  call void @Perl_hv_kill_backrefs(ptr noundef nonnull %sv.0838) #4
  %2 = load ptr, ptr %sv.0838, align 8
  %xmg_u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %3 = load ptr, ptr %xmg_u, align 8
  %tobool22.not = icmp eq ptr %3, null
  br i1 %tobool22.not, label %if.end33, label %if.then23

if.then23:                                        ; preds = %if.then21
  %call24 = call i32 @Perl_mg_free(ptr noundef nonnull %sv.0838) #4
  br label %if.end33

if.else:                                          ; preds = %if.end19
  %4 = load ptr, ptr %sv.0838, align 8
  %xmg_u27 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %5 = load ptr, ptr %xmg_u27, align 8
  %tobool28.not = icmp eq ptr %5, null
  br i1 %tobool28.not, label %if.end33, label %if.then29

if.then29:                                        ; preds = %if.else
  %call.i = call fastcc i32 @S_sv_unmagicext_flags(ptr noundef nonnull %sv.0838, i32 noundef 60, ptr noundef null, i32 noundef 0)
  %call31 = call i32 @Perl_mg_free(ptr noundef nonnull %sv.0838) #4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.else, %if.then23, %if.then21
  %6 = load i32, ptr %sv_flags, align 4
  %and35 = and i32 %6, -14680065
  store i32 %and35, ptr %sv_flags, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.end8
  %type.1 = phi i32 [ %type.0, %if.end33 ], [ %and, %if.end8 ]
  switch i32 %type.1, label %free_body [
    i32 15, label %sw.bb
    i32 8, label %freeregexp
    i32 13, label %sw.bb93
    i32 14, label %sw.bb93
    i32 12, label %sw.bb98
    i32 11, label %sw.bb159
    i32 10, label %sw.bb181
    i32 9, label %sw.bb216
    i32 7, label %freescalar
    i32 6, label %freescalar
    i32 5, label %freescalar
    i32 4, label %freescalar
    i32 3, label %freescalar
  ]

sw.bb:                                            ; preds = %if.end36
  %sv_u = getelementptr inbounds nuw i8, ptr %sv.0838, i64 16
  %7 = load ptr, ptr %sv_u, align 8
  %tobool37.not = icmp eq ptr %7, null
  br i1 %tobool37.not, label %if.end69, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %call39 = call ptr @Perl_PerlIO_stdin() #4
  %cmp40.not = icmp eq ptr %7, %call39
  br i1 %cmp40.not, label %if.end69, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %land.lhs.true
  %8 = load ptr, ptr %sv_u, align 8
  %call43 = call ptr @Perl_PerlIO_stdout() #4
  %cmp44.not = icmp eq ptr %8, %call43
  br i1 %cmp44.not, label %if.end69, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %land.lhs.true41
  %9 = load ptr, ptr %sv_u, align 8
  %call47 = call ptr @Perl_PerlIO_stderr() #4
  %cmp48.not = icmp eq ptr %9, %call47
  br i1 %cmp48.not, label %if.end69, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %land.lhs.true45
  %10 = load ptr, ptr %sv.0838, align 8
  %xio_flags = getelementptr inbounds nuw i8, ptr %10, i64 129
  %11 = load i8, ptr %xio_flags, align 1
  %12 = and i8 %11, 64
  %tobool52.not = icmp eq i8 %12, 0
  br i1 %tobool52.not, label %if.then53, label %if.end69

if.then53:                                        ; preds = %land.lhs.true49
  %xio_type = getelementptr inbounds nuw i8, ptr %10, i64 128
  %13 = load i8, ptr %xio_type, align 8
  switch i8 %13, label %lor.rhs [
    i8 62, label %lor.end
    i8 43, label %lor.end
    i8 97, label %lor.end
  ]

lor.rhs:                                          ; preds = %if.then53
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then53, %if.then53, %if.then53
  %14 = phi i1 [ true, %if.then53 ], [ false, %lor.rhs ], [ true, %if.then53 ], [ true, %if.then53 ]
  %call68 = call zeroext i1 @Perl_io_close(ptr noundef nonnull %sv.0838, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %14) #4
  br label %if.end69

if.end69:                                         ; preds = %lor.end, %land.lhs.true49, %land.lhs.true45, %land.lhs.true41, %land.lhs.true, %sw.bb
  %15 = load ptr, ptr %sv.0838, align 8
  %xio_dirpu = getelementptr inbounds nuw i8, ptr %15, i64 48
  %16 = load ptr, ptr %xio_dirpu, align 8
  %tobool71.not = icmp eq ptr %16, null
  br i1 %tobool71.not, label %if.end82, label %land.lhs.true72

land.lhs.true72:                                  ; preds = %if.end69
  %xio_flags74 = getelementptr inbounds nuw i8, ptr %15, i64 129
  %17 = load i8, ptr %xio_flags74, align 1
  %18 = and i8 %17, 64
  %tobool77.not = icmp eq i8 %18, 0
  br i1 %tobool77.not, label %if.then78, label %if.end82

if.then78:                                        ; preds = %land.lhs.true72
  %call81 = call i32 @closedir(ptr noundef nonnull %16)
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %land.lhs.true72, %if.end69
  %19 = load ptr, ptr %sv.0838, align 8
  %xio_dirpu84 = getelementptr inbounds nuw i8, ptr %19, i64 48
  store ptr null, ptr %xio_dirpu84, align 8
  %20 = load ptr, ptr %sv.0838, align 8
  %xio_top_name = getelementptr inbounds nuw i8, ptr %20, i64 80
  %21 = load ptr, ptr %xio_top_name, align 8
  call void @Perl_safesysfree(ptr noundef %21) #4
  %22 = load ptr, ptr %sv.0838, align 8
  %xio_fmt_name = getelementptr inbounds nuw i8, ptr %22, i64 96
  %23 = load ptr, ptr %xio_fmt_name, align 8
  call void @Perl_safesysfree(ptr noundef %23) #4
  %24 = load ptr, ptr %sv.0838, align 8
  %xio_bottom_name = getelementptr inbounds nuw i8, ptr %24, i64 112
  %25 = load ptr, ptr %xio_bottom_name, align 8
  call void @Perl_safesysfree(ptr noundef %25) #4
  %26 = load ptr, ptr @PL_statgv, align 8
  %cmp88 = icmp eq ptr %sv.0838, %26
  br i1 %cmp88, label %if.then90, label %freescalar

if.then90:                                        ; preds = %if.end82
  store ptr null, ptr @PL_statgv, align 8
  br label %freescalar

freeregexp:                                       ; preds = %if.end204, %if.end36
  call void @Perl_pregfree2(ptr noundef nonnull %sv.0838) #4
  br label %freescalar

sw.bb93:                                          ; preds = %if.end36, %if.end36
  call void @Perl_cv_undef(ptr noundef nonnull %sv.0838) #4
  %27 = load ptr, ptr %sv.0838, align 8
  %xcv_stash = getelementptr inbounds nuw i8, ptr %27, i64 32
  %28 = load ptr, ptr %xcv_stash, align 8
  %tobool95.not = icmp eq ptr %28, null
  br i1 %tobool95.not, label %freescalar, label %if.then96

if.then96:                                        ; preds = %sw.bb93
  call void @Perl_sv_del_backref(ptr noundef nonnull %28, ptr noundef nonnull %sv.0838)
  br label %freescalar

sw.bb98:                                          ; preds = %if.end36
  %29 = load ptr, ptr @PL_last_swash_hv, align 8
  %cmp99 = icmp eq ptr %29, %sv.0838
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %sw.bb98
  store ptr null, ptr @PL_last_swash_hv, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %sw.bb98
  %30 = load ptr, ptr %sv.0838, align 8
  %xhv_keys = getelementptr inbounds nuw i8, ptr %30, i64 16
  %31 = load i64, ptr %xhv_keys, align 8
  %cmp104.not = icmp eq i64 %31, 0
  br i1 %cmp104.not, label %if.end158, label %if.then106

if.then106:                                       ; preds = %if.end102
  %32 = load i32, ptr @PL_phase, align 4
  %cmp107.not = icmp eq i32 %32, 6
  br i1 %cmp107.not, label %if.end153, label %land.lhs.true109

land.lhs.true109:                                 ; preds = %if.then106
  %33 = load i32, ptr %sv_flags, align 4
  %and111 = and i32 %33, 33554432
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end153, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %land.lhs.true109
  %sv_u114 = getelementptr inbounds nuw i8, ptr %sv.0838, i64 16
  %34 = load ptr, ptr %sv_u114, align 8
  %xhv_max = getelementptr inbounds nuw i8, ptr %30, i64 24
  %35 = load i64, ptr %xhv_max, align 8
  %36 = getelementptr ptr, ptr %34, i64 %35
  %arrayidx = getelementptr i8, ptr %36, i64 8
  %37 = load ptr, ptr %arrayidx, align 8
  %tobool116.not = icmp eq ptr %37, null
  br i1 %tobool116.not, label %if.end153, label %cond.true

cond.true:                                        ; preds = %land.lhs.true113
  %xhv_name_count = getelementptr i8, ptr %36, i64 36
  %38 = load i32, ptr %xhv_name_count, align 4
  %tobool122.not = icmp eq i32 %38, 0
  br i1 %tobool122.not, label %if.then140, label %cond.end137

cond.end137:                                      ; preds = %cond.true
  %39 = load ptr, ptr %37, align 8
  %tobool139.not = icmp eq ptr %39, null
  br i1 %tobool139.not, label %if.end153, label %if.then140

if.then140:                                       ; preds = %cond.end137, %cond.true
  %cond138824 = phi ptr [ %39, %cond.end137 ], [ %37, %cond.true ]
  %40 = load ptr, ptr @PL_stashcache, align 8
  %tobool141.not = icmp eq ptr %40, null
  br i1 %tobool141.not, label %if.end152, label %if.then142

if.then142:                                       ; preds = %if.then140
  %hek_key = getelementptr inbounds nuw i8, ptr %cond138824, i64 8
  %hek_len = getelementptr inbounds nuw i8, ptr %cond138824, i64 4
  %41 = load i32, ptr %hek_len, align 4
  %conv143 = sext i32 %41 to i64
  %add.ptr147 = getelementptr inbounds i8, ptr %hek_key, i64 %conv143
  %add.ptr148 = getelementptr inbounds nuw i8, ptr %add.ptr147, i64 1
  %42 = load i8, ptr %add.ptr148, align 1
  %43 = and i8 %42, 1
  %and150 = zext nneg i8 %43 to i32
  %44 = load i32, ptr %cond138824, align 4
  %call151 = call ptr @Perl_hv_common(ptr noundef nonnull %40, ptr noundef null, ptr noundef nonnull %hek_key, i64 noundef %conv143, i32 noundef %and150, i32 noundef 68, ptr noundef null, i32 noundef %44) #4
  br label %if.end152

if.end152:                                        ; preds = %if.then142, %if.then140
  call void @Perl_hv_name_set(ptr noundef nonnull %sv.0838, ptr noundef null, i32 noundef 0, i32 noundef 0) #4
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %cond.end137, %land.lhs.true113, %land.lhs.true109, %if.then106
  %45 = load ptr, ptr %sv.0838, align 8
  store ptr %iter_sv.0839, ptr %45, align 8
  %46 = load i64, ptr %hash_index, align 8
  %47 = load ptr, ptr %sv.0838, align 8
  %xmg_u156 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %46, ptr %xmg_u156, align 8
  store i64 0, ptr %hash_index, align 8
  %call157 = call ptr @Perl_hfree_next_entry(ptr noundef nonnull %sv.0838, ptr noundef nonnull %hash_index) #4
  br label %get_next_sv

if.end158:                                        ; preds = %if.end102
  call void @Perl_hv_undef_flags(ptr noundef nonnull %sv.0838, i32 noundef 2) #4
  br label %free_body

sw.bb159:                                         ; preds = %if.end36
  %48 = load ptr, ptr @PL_comppad, align 8
  %cmp160 = icmp eq ptr %48, %sv.0838
  br i1 %cmp160, label %if.then162, label %if.end163

if.then162:                                       ; preds = %sw.bb159
  store ptr null, ptr @PL_comppad, align 8
  store ptr null, ptr @PL_curpad, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.then162, %sw.bb159
  %49 = load i32, ptr %sv_flags, align 4
  %and165 = and i32 %49, 1073741824
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %cleanup.thread, label %land.lhs.true167

land.lhs.true167:                                 ; preds = %if.end163
  %50 = load ptr, ptr %sv.0838, align 8
  %xav_fill = getelementptr inbounds nuw i8, ptr %50, i64 16
  %51 = load i64, ptr %xav_fill, align 8
  %cmp169 = icmp sgt i64 %51, -1
  br i1 %cmp169, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %land.lhs.true167, %if.end163
  %52 = load ptr, ptr %sv.0838, align 8
  %xav_alloc = getelementptr inbounds nuw i8, ptr %52, i64 32
  %53 = load ptr, ptr %xav_alloc, align 8
  call void @Perl_safesysfree(ptr noundef %53) #4
  br label %free_body

cleanup:                                          ; preds = %land.lhs.true167
  %sv_u172 = getelementptr inbounds nuw i8, ptr %sv.0838, i64 16
  %54 = load ptr, ptr %sv_u172, align 8
  %dec = add nsw i64 %51, -1
  store i64 %dec, ptr %xav_fill, align 8
  %arrayidx175 = getelementptr inbounds nuw ptr, ptr %54, i64 %51
  %55 = load ptr, ptr %arrayidx175, align 8
  %56 = load ptr, ptr %sv_u172, align 8
  %57 = load ptr, ptr %sv.0838, align 8
  %xav_max = getelementptr inbounds nuw i8, ptr %57, i64 24
  %58 = load i64, ptr %xav_max, align 8
  %arrayidx178 = getelementptr inbounds ptr, ptr %56, i64 %58
  store ptr %iter_sv.0839, ptr %arrayidx178, align 8
  br label %get_next_sv

sw.bb181:                                         ; preds = %if.end36
  %59 = load ptr, ptr %sv.0838, align 8
  %xlv_type = getelementptr inbounds nuw i8, ptr %59, i64 72
  %60 = load i8, ptr %xlv_type, align 8
  switch i8 %60, label %if.then200 [
    i8 84, label %if.then186
    i8 116, label %if.end204
  ]

if.then186:                                       ; preds = %sw.bb181
  %xlv_targ = getelementptr inbounds nuw i8, ptr %59, i64 64
  %61 = load ptr, ptr %xlv_targ, align 8
  %hent_hek = getelementptr inbounds nuw i8, ptr %61, i64 8
  %62 = load ptr, ptr %hent_hek, align 8
  %hek_key188 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %63 = load ptr, ptr %hek_key188, align 4
  %cmp.not.i = icmp eq ptr %63, null
  br i1 %cmp.not.i, label %S_SvREFCNT_dec.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then186
  %sv_refcnt.i = getelementptr inbounds nuw i8, ptr %63, i64 8
  %64 = load i32, ptr %sv_refcnt.i, align 8
  %cmp1.i = icmp ugt i32 %64, 1
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %64, -1
  store i32 %sub.i, ptr %sv_refcnt.i, align 8
  br label %S_SvREFCNT_dec.exit

if.else.i:                                        ; preds = %if.then.i
  call void @Perl_sv_free2(ptr noundef nonnull %63, i32 noundef %64)
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %if.else.i, %if.then4.i, %if.then186
  %65 = load ptr, ptr @PL_hv_fetch_ent_mh, align 8
  %66 = load ptr, ptr %sv.0838, align 8
  %xlv_targ191 = getelementptr inbounds nuw i8, ptr %66, i64 64
  %67 = load ptr, ptr %xlv_targ191, align 8
  store ptr %65, ptr %67, align 8
  %68 = load ptr, ptr %sv.0838, align 8
  %xlv_targ193 = getelementptr inbounds nuw i8, ptr %68, i64 64
  %69 = load ptr, ptr %xlv_targ193, align 8
  store ptr %69, ptr @PL_hv_fetch_ent_mh, align 8
  br label %if.end204

if.then200:                                       ; preds = %sw.bb181
  %xlv_targ202 = getelementptr inbounds nuw i8, ptr %59, i64 64
  %70 = load ptr, ptr %xlv_targ202, align 8
  %cmp.not.i799 = icmp eq ptr %70, null
  br i1 %cmp.not.i799, label %if.end204, label %if.then.i800

if.then.i800:                                     ; preds = %if.then200
  %sv_refcnt.i801 = getelementptr inbounds nuw i8, ptr %70, i64 8
  %71 = load i32, ptr %sv_refcnt.i801, align 8
  %cmp1.i802 = icmp ugt i32 %71, 1
  br i1 %cmp1.i802, label %if.then4.i804, label %if.else.i803

if.then4.i804:                                    ; preds = %if.then.i800
  %sub.i805 = add i32 %71, -1
  store i32 %sub.i805, ptr %sv_refcnt.i801, align 8
  br label %if.end204

if.else.i803:                                     ; preds = %if.then.i800
  call void @Perl_sv_free2(ptr noundef nonnull %70, i32 noundef %71)
  br label %if.end204

if.end204:                                        ; preds = %if.else.i803, %if.then4.i804, %if.then200, %S_SvREFCNT_dec.exit, %sw.bb181
  %72 = load i32, ptr %sv_flags, align 4
  %and206 = and i32 %72, 255
  %cmp207 = icmp eq i32 %and206, 8
  %and211 = and i32 %72, 16826623
  %cmp212 = icmp eq i32 %and211, 16777226
  %or.cond797 = or i1 %cmp207, %cmp212
  br i1 %or.cond797, label %freeregexp, label %sw.bb216

sw.bb216:                                         ; preds = %if.end204, %if.end36
  %73 = load i32, ptr %sv_flags, align 4
  %and218 = and i32 %73, 49152
  %cmp219 = icmp eq i32 %and218, 32768
  br i1 %cmp219, label %land.lhs.true221, label %if.end347

land.lhs.true221:                                 ; preds = %sw.bb216
  %and223 = and i32 %73, 255
  %and223.off = add nsw i32 %and223, -9
  %switch = icmp ult i32 %and223.off, 2
  br i1 %switch, label %if.then231, label %if.end347

if.then231:                                       ; preds = %land.lhs.true221
  %sv_u232 = getelementptr inbounds nuw i8, ptr %sv.0838, i64 16
  %74 = load ptr, ptr %sv_u232, align 8
  %gp_cvgen = getelementptr inbounds nuw i8, ptr %74, i64 24
  %75 = load i32, ptr %gp_cvgen, align 8
  %tobool234.not = icmp eq i32 %75, 0
  br i1 %tobool234.not, label %cond.false236, label %if.end326

cond.false236:                                    ; preds = %if.then231
  %gp_cv = getelementptr inbounds nuw i8, ptr %74, i64 16
  %76 = load ptr, ptr %gp_cv, align 8
  %tobool239.not = icmp eq ptr %76, null
  br i1 %tobool239.not, label %if.end326, label %land.lhs.true240

land.lhs.true240:                                 ; preds = %cond.false236
  %77 = load ptr, ptr %sv.0838, align 8
  %xnv_u = getelementptr inbounds nuw i8, ptr %77, i64 40
  %78 = load ptr, ptr %xnv_u, align 8
  %tobool242.not = icmp eq ptr %78, null
  br i1 %tobool242.not, label %if.end326, label %land.lhs.true243

land.lhs.true243:                                 ; preds = %land.lhs.true240
  %sv_flags244 = getelementptr inbounds nuw i8, ptr %78, i64 12
  %79 = load i32, ptr %sv_flags244, align 4
  %and245 = and i32 %79, 33554432
  %tobool246.not = icmp eq i32 %and245, 0
  br i1 %tobool246.not, label %if.end326, label %land.lhs.true247

land.lhs.true247:                                 ; preds = %land.lhs.true243
  %sv_u248 = getelementptr inbounds nuw i8, ptr %78, i64 16
  %80 = load ptr, ptr %sv_u248, align 8
  %81 = load ptr, ptr %78, align 8
  %xhv_max250 = getelementptr inbounds nuw i8, ptr %81, i64 24
  %82 = load i64, ptr %xhv_max250, align 8
  %83 = getelementptr ptr, ptr %80, i64 %82
  %arrayidx252 = getelementptr i8, ptr %83, i64 8
  %84 = load ptr, ptr %arrayidx252, align 8
  %tobool254.not = icmp eq ptr %84, null
  br i1 %tobool254.not, label %if.end326, label %land.lhs.true255

land.lhs.true255:                                 ; preds = %land.lhs.true247
  %xhv_name_count261 = getelementptr i8, ptr %83, i64 36
  %85 = load i32, ptr %xhv_name_count261, align 4
  %cmp262.not = icmp eq i32 %85, -1
  br i1 %cmp262.not, label %if.end326, label %cond.true264

cond.true264:                                     ; preds = %land.lhs.true255
  call void @Perl_mro_method_changed_in(ptr noundef nonnull %78) #4
  br label %if.end326

if.end326:                                        ; preds = %cond.true264, %land.lhs.true255, %land.lhs.true247, %land.lhs.true243, %land.lhs.true240, %cond.false236, %if.then231
  call void @Perl_gp_free(ptr noundef nonnull %sv.0838) #4
  %86 = load ptr, ptr %sv.0838, align 8
  %xiv_u = getelementptr inbounds nuw i8, ptr %86, i64 32
  %87 = load ptr, ptr %xiv_u, align 8
  %tobool328.not = icmp eq ptr %87, null
  br i1 %tobool328.not, label %if.end332, label %if.then329

if.then329:                                       ; preds = %if.end326
  call void @Perl_unshare_hek(ptr noundef nonnull %87) #4
  br label %if.end332

if.end332:                                        ; preds = %if.then329, %if.end326
  %88 = load i32, ptr %sv_flags, align 4
  %and334 = and i32 %88, 1073741824
  %tobool335.not = icmp eq i32 %and334, 0
  %and338 = and i32 %88, 49152
  %cmp339 = icmp eq i32 %and338, 49152
  %or.cond798 = or i1 %tobool335.not, %cmp339
  br i1 %or.cond798, label %land.lhs.true341, label %if.end347

land.lhs.true341:                                 ; preds = %if.end332
  %89 = load ptr, ptr %sv.0838, align 8
  %xnv_u343 = getelementptr inbounds nuw i8, ptr %89, i64 40
  %90 = load ptr, ptr %xnv_u343, align 8
  %tobool344.not = icmp eq ptr %90, null
  br i1 %tobool344.not, label %if.end347, label %if.then345

if.then345:                                       ; preds = %land.lhs.true341
  call void @Perl_sv_del_backref(ptr noundef nonnull %90, ptr noundef nonnull %sv.0838)
  br label %if.end347

if.end347:                                        ; preds = %if.then345, %land.lhs.true341, %if.end332, %land.lhs.true221, %sw.bb216
  %91 = load ptr, ptr @PL_last_in_gv, align 8
  %cmp348 = icmp eq ptr %sv.0838, %91
  br i1 %cmp348, label %if.then350, label %if.else351

if.then350:                                       ; preds = %if.end347
  store ptr null, ptr @PL_last_in_gv, align 8
  br label %freescalar

if.else351:                                       ; preds = %if.end347
  %92 = load ptr, ptr @PL_statgv, align 8
  %cmp352 = icmp eq ptr %sv.0838, %92
  br i1 %cmp352, label %if.then354, label %if.else355

if.then354:                                       ; preds = %if.else351
  store ptr null, ptr @PL_statgv, align 8
  br label %freescalar

if.else355:                                       ; preds = %if.else351
  %93 = load ptr, ptr @PL_stderrgv, align 8
  %cmp356 = icmp eq ptr %sv.0838, %93
  br i1 %cmp356, label %if.then358, label %freescalar

if.then358:                                       ; preds = %if.else355
  store ptr null, ptr @PL_stderrgv, align 8
  br label %freescalar

freescalar:                                       ; preds = %if.then358, %if.else355, %if.then354, %if.then350, %if.then96, %sw.bb93, %freeregexp, %if.then90, %if.end82, %if.end36, %if.end36, %if.end36, %if.end36, %if.end36
  %94 = load i32, ptr %sv_flags, align 4
  %and364 = and i32 %94, 33554432
  %tobool365.not = icmp eq i32 %and364, 0
  br i1 %tobool365.not, label %if.end391, label %if.then370

if.then370:                                       ; preds = %freescalar
  %sv_u371 = getelementptr inbounds nuw i8, ptr %sv.0838, i64 16
  %95 = load ptr, ptr %sv_u371, align 8
  %arrayidx373 = getelementptr inbounds i8, ptr %95, i64 -1
  %96 = load i8, ptr %arrayidx373, align 1
  %conv374 = zext i8 %96 to i64
  %tobool375.not = icmp eq i8 %96, 0
  br i1 %tobool375.not, label %if.then376, label %do.body384

if.then376:                                       ; preds = %if.then370
  %add.ptr380 = getelementptr inbounds i8, ptr %95, i64 -9
  %offset.0.copyload = load i64, ptr %add.ptr380, align 1
  br label %do.body384

do.body384:                                       ; preds = %if.then376, %if.then370
  %offset.0 = phi i64 [ %conv374, %if.then370 ], [ %offset.0.copyload, %if.then376 ]
  %idx.neg = sub i64 0, %offset.0
  %add.ptr387 = getelementptr inbounds i8, ptr %95, i64 %idx.neg
  store ptr %add.ptr387, ptr %sv_u371, align 8
  br label %if.end391

if.end391:                                        ; preds = %do.body384, %freescalar
  %97 = load i32, ptr %sv_flags, align 4
  %and393 = and i32 %97, 2048
  %tobool394.not = icmp eq i32 %and393, 0
  br i1 %tobool394.not, label %if.else404, label %free_rv

free_rv:                                          ; preds = %if.end391, %if.then
  %type.2 = phi i32 [ %and, %if.then ], [ %type.1, %if.end391 ]
  %sv_u396 = getelementptr inbounds nuw i8, ptr %sv.0838, i64 16
  %98 = load ptr, ptr %sv_u396, align 8
  %99 = load i32, ptr %sv_flags, align 4
  %and398 = and i32 %99, -2147481600
  %cmp399 = icmp eq i32 %and398, -2147481600
  br i1 %cmp399, label %if.then401, label %free_body

if.then401:                                       ; preds = %free_rv
  call void @Perl_sv_del_backref(ptr noundef %98, ptr noundef nonnull %sv.0838)
  br label %free_body

if.else404:                                       ; preds = %if.end391
  %sv_u405 = getelementptr inbounds nuw i8, ptr %sv.0838, i64 16
  %100 = load ptr, ptr %sv_u405, align 8
  %tobool407.not = icmp eq ptr %100, null
  br i1 %tobool407.not, label %free_body, label %land.lhs.true408

land.lhs.true408:                                 ; preds = %if.else404
  %and410 = and i32 %97, 255
  %cmp411 = icmp eq i32 %and410, 15
  br i1 %cmp411, label %land.lhs.true413, label %if.then419

land.lhs.true413:                                 ; preds = %land.lhs.true408
  %101 = load ptr, ptr %sv.0838, align 8
  %xio_flags415 = getelementptr inbounds nuw i8, ptr %101, i64 129
  %102 = load i8, ptr %xio_flags415, align 1
  %103 = and i8 %102, 64
  %tobool418.not = icmp eq i8 %103, 0
  br i1 %tobool418.not, label %free_body, label %if.then419

if.then419:                                       ; preds = %land.lhs.true413, %land.lhs.true408
  %and421 = and i32 %97, 268435456
  %tobool422.not = icmp eq i32 %and421, 0
  br i1 %tobool422.not, label %if.end451, label %if.then423

if.then423:                                       ; preds = %if.then419
  %104 = load ptr, ptr %sv.0838, align 8
  %xpv_len_u = getelementptr inbounds nuw i8, ptr %104, i64 24
  %105 = load i64, ptr %xpv_len_u, align 8
  %tobool425.not = icmp eq i64 %105, 0
  br i1 %tobool425.not, label %if.else446, label %if.then426

if.then426:                                       ; preds = %if.then423
  %add.ptr430 = getelementptr inbounds nuw i8, ptr %100, i64 %105
  %add.ptr431 = getelementptr inbounds i8, ptr %add.ptr430, i64 -1
  %106 = load i8, ptr %add.ptr431, align 1
  %tobool432.not = icmp eq i8 %106, 0
  br i1 %tobool432.not, label %if.end451, label %if.then433

if.then433:                                       ; preds = %if.then426
  %dec439 = add i8 %106, -1
  store i8 %dec439, ptr %add.ptr431, align 1
  %107 = load ptr, ptr %sv.0838, align 8
  %xpv_len_u442 = getelementptr inbounds nuw i8, ptr %107, i64 24
  store i64 0, ptr %xpv_len_u442, align 8
  br label %if.end451

if.else446:                                       ; preds = %if.then423
  %add.ptr449 = getelementptr inbounds i8, ptr %100, i64 -8
  call void @Perl_unshare_hek(ptr noundef nonnull %add.ptr449) #4
  br label %if.end451

if.end451:                                        ; preds = %if.else446, %if.then433, %if.then426, %if.then419
  %108 = load ptr, ptr %sv.0838, align 8
  %xpv_len_u453 = getelementptr inbounds nuw i8, ptr %108, i64 24
  %109 = load i64, ptr %xpv_len_u453, align 8
  %tobool454.not = icmp eq i64 %109, 0
  br i1 %tobool454.not, label %free_body, label %if.then455

if.then455:                                       ; preds = %if.end451
  %110 = load ptr, ptr %sv_u405, align 8
  call void @Perl_safesysfree(ptr noundef %110) #4
  br label %free_body

free_body:                                        ; preds = %if.then553, %cleanup538, %if.then455, %if.end451, %land.lhs.true413, %if.else404, %if.then401, %free_rv, %cleanup.thread, %if.end158, %if.end36
  %sv.1 = phi ptr [ %iter_sv.5, %cleanup538 ], [ %iter_sv.5, %if.then553 ], [ %sv.0838, %if.then401 ], [ %sv.0838, %free_rv ], [ %sv.0838, %if.end451 ], [ %sv.0838, %if.then455 ], [ %sv.0838, %land.lhs.true413 ], [ %sv.0838, %if.else404 ], [ %sv.0838, %if.end36 ], [ %sv.0838, %if.end158 ], [ %sv.0838, %cleanup.thread ]
  %next_sv.4 = phi ptr [ null, %cleanup538 ], [ null, %if.then553 ], [ null, %if.then401 ], [ %98, %free_rv ], [ null, %if.end451 ], [ null, %if.then455 ], [ null, %land.lhs.true413 ], [ null, %if.else404 ], [ null, %if.end36 ], [ null, %if.end158 ], [ null, %cleanup.thread ]
  %iter_sv.3 = phi ptr [ %141, %cleanup538 ], [ %146, %if.then553 ], [ %iter_sv.0839, %if.then401 ], [ %iter_sv.0839, %free_rv ], [ %iter_sv.0839, %if.end451 ], [ %iter_sv.0839, %if.then455 ], [ %iter_sv.0839, %land.lhs.true413 ], [ %iter_sv.0839, %if.else404 ], [ %iter_sv.0839, %if.end36 ], [ %iter_sv.0839, %if.end158 ], [ %iter_sv.0839, %cleanup.thread ]
  %type.4 = phi i32 [ 11, %cleanup538 ], [ %and555, %if.then553 ], [ %type.2, %if.then401 ], [ %type.2, %free_rv ], [ %type.1, %if.end451 ], [ %type.1, %if.then455 ], [ %type.1, %land.lhs.true413 ], [ %type.1, %if.else404 ], [ %type.1, %if.end36 ], [ 12, %if.end158 ], [ 11, %cleanup.thread ]
  %sv_flags461 = getelementptr inbounds nuw i8, ptr %sv.1, i64 12
  %111 = load i32, ptr %sv_flags461, align 4
  %and462 = and i32 %111, 67108864
  %or464 = or disjoint i32 %and462, 255
  store i32 %or464, ptr %sv_flags461, align 4
  %idx.ext465 = zext i32 %type.4 to i64
  %112 = shl nuw i64 1, %idx.ext465
  %113 = and i64 %112, 16391
  %tobool467.not.not = icmp eq i64 %113, 0
  br i1 %tobool467.not.not, label %do.body469, label %if.else480

do.body469:                                       ; preds = %free_body
  %add.ptr466 = getelementptr inbounds nuw %struct.body_details, ptr @bodies_by_type, i64 %idx.ext465
  %114 = load ptr, ptr %sv.1, align 8
  %offset471 = getelementptr inbounds nuw i8, ptr %add.ptr466, i64 2
  %115 = load i8, ptr %offset471, align 2
  %idx.ext473 = zext i8 %115 to i64
  %add.ptr474 = getelementptr inbounds nuw i8, ptr %114, i64 %idx.ext473
  %arrayidx475 = getelementptr inbounds nuw ptr, ptr @PL_body_roots, i64 %idx.ext465
  %116 = load ptr, ptr %arrayidx475, align 8
  store ptr %116, ptr %add.ptr474, align 8
  store ptr %add.ptr474, ptr %arrayidx475, align 8
  br label %free_head

if.else480:                                       ; preds = %free_body
  %tobool481.not = icmp ult i32 %type.4, 3
  br i1 %tobool481.not, label %free_head, label %if.then482

if.then482:                                       ; preds = %if.else480
  %117 = load ptr, ptr %sv.1, align 8
  call void @Perl_safesysfree(ptr noundef %117) #4
  br label %free_head

free_head:                                        ; preds = %if.then482, %if.else480, %do.body469, %if.end
  %sv.2 = phi ptr [ %sv.1, %do.body469 ], [ %sv.1, %if.then482 ], [ %sv.1, %if.else480 ], [ %sv.0838, %if.end ]
  %next_sv.5 = phi ptr [ %next_sv.4, %do.body469 ], [ %next_sv.4, %if.then482 ], [ %next_sv.4, %if.else480 ], [ null, %if.end ]
  %iter_sv.4 = phi ptr [ %iter_sv.3, %do.body469 ], [ %iter_sv.3, %if.then482 ], [ %iter_sv.3, %if.else480 ], [ %iter_sv.0839, %if.end ]
  %cmp486.not = icmp eq ptr %sv.2, %orig_sv
  br i1 %cmp486.not, label %get_next_sv, label %land.lhs.true488

land.lhs.true488:                                 ; preds = %free_head
  %sv_refcnt = getelementptr inbounds nuw i8, ptr %sv.2, i64 8
  %118 = load i32, ptr %sv_refcnt, align 8
  %tobool489.not = icmp eq i32 %118, 0
  br i1 %tobool489.not, label %do.body491, label %get_next_sv

do.body491:                                       ; preds = %land.lhs.true488
  %sv_flags492 = getelementptr inbounds nuw i8, ptr %sv.2, i64 12
  %119 = load i32, ptr %sv_flags492, align 4
  store i32 255, ptr %sv_flags492, align 4
  %and494 = and i32 %119, 67108864
  %tobool495.not = icmp eq i32 %and494, 0
  br i1 %tobool495.not, label %if.then496, label %if.end498

if.then496:                                       ; preds = %do.body491
  %120 = load ptr, ptr @PL_sv_root, align 8
  store ptr %120, ptr %sv.2, align 8
  store ptr %sv.2, ptr @PL_sv_root, align 8
  br label %if.end498

if.end498:                                        ; preds = %if.then496, %do.body491
  %121 = load i64, ptr @PL_sv_count, align 8
  %dec499 = add nsw i64 %121, -1
  store i64 %dec499, ptr @PL_sv_count, align 8
  br label %get_next_sv

get_next_sv:                                      ; preds = %if.end498, %land.lhs.true488, %free_head, %cleanup, %if.end153, %if.then14
  %next_sv.6 = phi ptr [ %next_sv.5, %land.lhs.true488 ], [ %next_sv.5, %if.end498 ], [ %next_sv.5, %free_head ], [ %call157, %if.end153 ], [ %55, %cleanup ], [ null, %if.then14 ]
  %iter_sv.5 = phi ptr [ %iter_sv.4, %land.lhs.true488 ], [ %iter_sv.4, %if.end498 ], [ %iter_sv.4, %free_head ], [ %sv.0838, %if.end153 ], [ %sv.0838, %cleanup ], [ %iter_sv.0839, %if.then14 ]
  %tobool509.not = icmp eq ptr %iter_sv.5, null
  %sv_flags512 = getelementptr inbounds nuw i8, ptr %iter_sv.5, i64 12
  %sv_u523 = getelementptr inbounds nuw i8, ptr %iter_sv.5, i64 16
  br label %while.cond504.peel.begin

while.cond504.peel.begin:                         ; preds = %get_next_sv
  br label %while.cond504.peel

while.cond504.peel:                               ; preds = %while.cond504.peel.begin
  %tobool506.not.peel = icmp eq ptr %next_sv.6, null
  br i1 %tobool506.not.peel, label %if.else508.peel, label %if.end567.peel

if.else508.peel:                                  ; preds = %while.cond504.peel
  br i1 %tobool509.not, label %while.end, label %if.else511.peel

if.else511.peel:                                  ; preds = %if.else508.peel
  %122 = load i32, ptr %sv_flags512, align 4
  %trunc.peel = trunc i32 %122 to i8
  switch i8 %trunc.peel, label %if.end564.peel [
    i8 11, label %if.then516.peel
    i8 12, label %if.then546.peel
  ]

if.then546.peel:                                  ; preds = %if.else511.peel
  %call547.peel = call ptr @Perl_hfree_next_entry(ptr noundef nonnull %iter_sv.5, ptr noundef nonnull %hash_index) #4
  %tobool548.not.peel = icmp eq ptr %call547.peel, null
  br i1 %tobool548.not.peel, label %land.lhs.true549.peel, label %if.end567.peel

land.lhs.true549.peel:                            ; preds = %if.then546.peel
  %123 = load ptr, ptr %iter_sv.5, align 8
  %xhv_keys551.peel = getelementptr inbounds nuw i8, ptr %123, i64 16
  %124 = load i64, ptr %xhv_keys551.peel, align 8
  %tobool552.not.peel = icmp eq i64 %124, 0
  br i1 %tobool552.not.peel, label %if.then553, label %if.end564.peel

if.then516.peel:                                  ; preds = %if.else511.peel
  %125 = load ptr, ptr %iter_sv.5, align 8
  %xav_fill519.peel = getelementptr inbounds nuw i8, ptr %125, i64 16
  %126 = load i64, ptr %xav_fill519.peel, align 8
  %cmp520.peel = icmp sgt i64 %126, -1
  br i1 %cmp520.peel, label %cleanup538.thread.peel, label %cleanup538

cleanup538.thread.peel:                           ; preds = %if.then516.peel
  %127 = load ptr, ptr %sv_u523, align 8
  %dec526.peel = add nsw i64 %126, -1
  store i64 %dec526.peel, ptr %xav_fill519.peel, align 8
  %arrayidx527.peel = getelementptr inbounds nuw ptr, ptr %127, i64 %126
  %128 = load ptr, ptr %arrayidx527.peel, align 8
  br label %if.end564.peel

if.end564.peel:                                   ; preds = %cleanup538.thread.peel, %land.lhs.true549.peel, %if.else511.peel
  %sv.4.peel = phi ptr [ null, %land.lhs.true549.peel ], [ null, %if.else511.peel ], [ %128, %cleanup538.thread.peel ]
  %tobool565.not.peel = icmp eq ptr %sv.4.peel, null
  br i1 %tobool565.not.peel, label %while.cond504.backedge.peel, label %if.end567.peel

if.end567.peel:                                   ; preds = %if.end564.peel, %if.then546.peel, %while.cond504.peel
  %sv.4834.peel = phi ptr [ %sv.4.peel, %if.end564.peel ], [ %next_sv.6, %while.cond504.peel ], [ %call547.peel, %if.then546.peel ]
  %sv_refcnt568.peel = getelementptr inbounds nuw i8, ptr %sv.4834.peel, i64 8
  %129 = load i32, ptr %sv_refcnt568.peel, align 8
  %tobool569.not.peel = icmp eq i32 %129, 0
  br i1 %tobool569.not.peel, label %if.end19.i.peel, label %if.end571.peel

if.end571.peel:                                   ; preds = %if.end567.peel
  %dec573.peel = add i32 %129, -1
  store i32 %dec573.peel, ptr %sv_refcnt568.peel, align 8
  %tobool574.not.peel = icmp eq i32 %dec573.peel, 0
  br i1 %tobool574.not.peel, label %if.end576.peel, label %while.cond504.backedge.peel

if.end576.peel:                                   ; preds = %if.end571.peel
  %sv_flags577.peel = getelementptr inbounds nuw i8, ptr %sv.4834.peel, i64 12
  %130 = load i32, ptr %sv_flags577.peel, align 4
  %and578.peel = and i32 %130, 134283264
  %tobool579.not.peel = icmp eq i32 %and578.peel, 0
  br i1 %tobool579.not.peel, label %while.end, label %land.lhs.true580.peel

land.lhs.true580.peel:                            ; preds = %if.end576.peel
  %cmp581.peel = icmp eq ptr %sv.4834.peel, @PL_sv_undef
  %cmp584.peel = icmp eq ptr %sv.4834.peel, @PL_sv_yes
  %or.cond.peel = or i1 %cmp581.peel, %cmp584.peel
  %cmp587.peel = icmp eq ptr %sv.4834.peel, @PL_sv_no
  %or.cond596.peel = or i1 %cmp587.peel, %or.cond.peel
  %cmp590.peel = icmp eq ptr %sv.4834.peel, @PL_sv_placeholder
  %or.cond597.peel = or i1 %cmp590.peel, %or.cond596.peel
  br i1 %or.cond597.peel, label %if.then592.peel, label %while.end

if.then592.peel:                                  ; preds = %land.lhs.true580.peel
  store i32 2147483647, ptr %sv_refcnt568.peel, align 8
  br label %while.cond504.backedge.peel

if.end19.i.peel:                                  ; preds = %if.end567.peel
  %sv_flags20.i.peel = getelementptr inbounds nuw i8, ptr %sv.4834.peel, i64 12
  %131 = load i32, ptr %sv_flags20.i.peel, align 4
  %and21.i.peel = and i32 %131, 67108864
  %tobool22.i.peel = icmp ne i32 %and21.i.peel, 0
  %132 = load i8, ptr @PL_in_clean_all, align 1, !range !0
  %loadedv.i.peel = trunc nuw i8 %132 to i1
  %or.cond48.i.peel = select i1 %tobool22.i.peel, i1 true, i1 %loadedv.i.peel
  br i1 %or.cond48.i.peel, label %while.cond504.backedge.peel, label %if.end26.i.peel

if.end26.i.peel:                                  ; preds = %if.end19.i.peel
  %and28.i.peel = and i32 %131, 134283264
  %tobool29.not.i.peel = icmp eq i32 %and28.i.peel, 0
  br i1 %tobool29.not.i.peel, label %if.end40.i.peel, label %land.lhs.true30.i.peel

land.lhs.true30.i.peel:                           ; preds = %if.end26.i.peel
  %cmp31.i.peel = icmp eq ptr %sv.4834.peel, @PL_sv_undef
  %cmp33.i.peel = icmp eq ptr %sv.4834.peel, @PL_sv_yes
  %or.cond45.i.peel = or i1 %cmp31.i.peel, %cmp33.i.peel
  %cmp35.i.peel = icmp eq ptr %sv.4834.peel, @PL_sv_no
  %or.cond46.i.peel = or i1 %cmp35.i.peel, %or.cond45.i.peel
  %cmp37.i.peel = icmp eq ptr %sv.4834.peel, @PL_sv_placeholder
  %or.cond47.i.peel = or i1 %cmp37.i.peel, %or.cond46.i.peel
  br i1 %or.cond47.i.peel, label %if.then38.i.peel, label %if.end40.i.peel

if.then38.i.peel:                                 ; preds = %land.lhs.true30.i.peel
  store i32 2147483647, ptr %sv_refcnt568.peel, align 8
  br label %while.cond504.backedge.peel

if.end40.i.peel:                                  ; preds = %land.lhs.true30.i.peel, %if.end26.i.peel
  %call.i815.peel = call zeroext i1 @Perl_ckwarn_d(i32 noundef 24) #4
  br i1 %call.i815.peel, label %if.then41.i.peel, label %while.cond504.backedge.peel

if.then41.i.peel:                                 ; preds = %if.end40.i.peel
  %133 = ptrtoint ptr %sv.4834.peel to i64
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 24, ptr noundef nonnull @.str.34, i64 noundef %133) #4
  br label %while.cond504.backedge.peel

while.cond504.backedge.peel:                      ; preds = %if.then41.i.peel, %if.end40.i.peel, %if.then38.i.peel, %if.end19.i.peel, %if.then592.peel, %if.end571.peel, %if.end564.peel
  br label %while.cond504.peel.next

while.cond504.peel.next:                          ; preds = %while.cond504.backedge.peel
  br label %while.cond504.peel.next841

while.cond504.peel.next841:                       ; preds = %while.cond504.peel.next
  br label %get_next_sv.peel.newph

get_next_sv.peel.newph:                           ; preds = %while.cond504.peel.next841
  br label %while.cond504

while.cond504:                                    ; preds = %while.cond504.backedge, %get_next_sv.peel.newph
  br i1 true, label %if.else508, label %if.end567

if.else508:                                       ; preds = %while.cond504
  br i1 %tobool509.not, label %while.end.loopexit, label %if.else511

if.else511:                                       ; preds = %if.else508
  %134 = load i32, ptr %sv_flags512, align 4
  %trunc = trunc i32 %134 to i8
  switch i8 %trunc, label %if.end564 [
    i8 11, label %if.then516
    i8 12, label %if.then546
  ]

if.then516:                                       ; preds = %if.else511
  %135 = load ptr, ptr %iter_sv.5, align 8
  %xav_fill519 = getelementptr inbounds nuw i8, ptr %135, i64 16
  %136 = load i64, ptr %xav_fill519, align 8
  %cmp520 = icmp sgt i64 %136, -1
  br i1 %cmp520, label %cleanup538.thread, label %cleanup538.loopexit

cleanup538.thread:                                ; preds = %if.then516
  %137 = load ptr, ptr %sv_u523, align 8
  %dec526 = add nsw i64 %136, -1
  store i64 %dec526, ptr %xav_fill519, align 8
  %arrayidx527 = getelementptr inbounds nuw ptr, ptr %137, i64 %136
  %138 = load ptr, ptr %arrayidx527, align 8
  br label %if.end564

cleanup538.loopexit:                              ; preds = %if.then516
  %.lcssa840.ph = phi ptr [ %135, %if.then516 ]
  br label %cleanup538

cleanup538:                                       ; preds = %cleanup538.loopexit, %if.then516.peel
  %.lcssa840 = phi ptr [ %125, %if.then516.peel ], [ %.lcssa840.ph, %cleanup538.loopexit ]
  %sv_u531 = getelementptr inbounds nuw i8, ptr %iter_sv.5, i64 16
  %139 = load ptr, ptr %sv_u531, align 8
  %xav_max533 = getelementptr inbounds nuw i8, ptr %.lcssa840, i64 24
  %140 = load i64, ptr %xav_max533, align 8
  %arrayidx534 = getelementptr inbounds ptr, ptr %139, i64 %140
  %141 = load ptr, ptr %arrayidx534, align 8
  %xav_alloc536 = getelementptr inbounds nuw i8, ptr %.lcssa840, i64 32
  %142 = load ptr, ptr %xav_alloc536, align 8
  call void @Perl_safesysfree(ptr noundef %142) #4
  br label %free_body

if.then546:                                       ; preds = %if.else511
  %call547 = call ptr @Perl_hfree_next_entry(ptr noundef nonnull %iter_sv.5, ptr noundef nonnull %hash_index) #4
  %tobool548.not = icmp eq ptr %call547, null
  br i1 %tobool548.not, label %land.lhs.true549, label %if.end567

land.lhs.true549:                                 ; preds = %if.then546
  %143 = load ptr, ptr %iter_sv.5, align 8
  %xhv_keys551 = getelementptr inbounds nuw i8, ptr %143, i64 16
  %144 = load i64, ptr %xhv_keys551, align 8
  %tobool552.not = icmp eq i64 %144, 0
  br i1 %tobool552.not, label %if.then553.loopexit, label %if.end564

if.then553.loopexit:                              ; preds = %land.lhs.true549
  %.lcssa.ph = phi ptr [ %143, %land.lhs.true549 ]
  br label %if.then553

if.then553:                                       ; preds = %if.then553.loopexit, %land.lhs.true549.peel
  %.lcssa = phi ptr [ %123, %land.lhs.true549.peel ], [ %.lcssa.ph, %if.then553.loopexit ]
  %sv_flags512.le = getelementptr inbounds nuw i8, ptr %iter_sv.5, i64 12
  %145 = load i32, ptr %sv_flags512.le, align 4
  %and555 = and i32 %145, 255
  %146 = load ptr, ptr %.lcssa, align 8
  %xmg_u559 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %147 = load i64, ptr %xmg_u559, align 8
  store i64 %147, ptr %hash_index, align 8
  call void @Perl_hv_undef_flags(ptr noundef nonnull %iter_sv.5, i32 noundef 2) #4
  br label %free_body

if.end564:                                        ; preds = %land.lhs.true549, %cleanup538.thread, %if.else511
  %sv.4 = phi ptr [ null, %land.lhs.true549 ], [ null, %if.else511 ], [ %138, %cleanup538.thread ]
  %tobool565.not = icmp eq ptr %sv.4, null
  br i1 %tobool565.not, label %while.cond504.backedge, label %if.end567

if.end567:                                        ; preds = %if.end564, %if.then546, %while.cond504
  %sv.4834 = phi ptr [ %sv.4, %if.end564 ], [ null, %while.cond504 ], [ %call547, %if.then546 ]
  %sv_refcnt568 = getelementptr inbounds nuw i8, ptr %sv.4834, i64 8
  %148 = load i32, ptr %sv_refcnt568, align 8
  %tobool569.not = icmp eq i32 %148, 0
  br i1 %tobool569.not, label %if.end19.i, label %if.end571

if.end19.i:                                       ; preds = %if.end567
  %sv_flags20.i = getelementptr inbounds nuw i8, ptr %sv.4834, i64 12
  %149 = load i32, ptr %sv_flags20.i, align 4
  %and21.i = and i32 %149, 67108864
  %tobool22.i = icmp ne i32 %and21.i, 0
  %150 = load i8, ptr @PL_in_clean_all, align 1, !range !0
  %loadedv.i = trunc nuw i8 %150 to i1
  %or.cond48.i = select i1 %tobool22.i, i1 true, i1 %loadedv.i
  br i1 %or.cond48.i, label %while.cond504.backedge, label %if.end26.i

if.end26.i:                                       ; preds = %if.end19.i
  %and28.i = and i32 %149, 134283264
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end40.i, label %land.lhs.true30.i

land.lhs.true30.i:                                ; preds = %if.end26.i
  %cmp31.i = icmp eq ptr %sv.4834, @PL_sv_undef
  %cmp33.i = icmp eq ptr %sv.4834, @PL_sv_yes
  %or.cond45.i = or i1 %cmp31.i, %cmp33.i
  %cmp35.i = icmp eq ptr %sv.4834, @PL_sv_no
  %or.cond46.i = or i1 %cmp35.i, %or.cond45.i
  %cmp37.i = icmp eq ptr %sv.4834, @PL_sv_placeholder
  %or.cond47.i = or i1 %cmp37.i, %or.cond46.i
  br i1 %or.cond47.i, label %if.then38.i, label %if.end40.i

if.then38.i:                                      ; preds = %land.lhs.true30.i
  store i32 2147483647, ptr %sv_refcnt568, align 8
  br label %while.cond504.backedge

if.end40.i:                                       ; preds = %land.lhs.true30.i, %if.end26.i
  %call.i815 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 24) #4
  br i1 %call.i815, label %if.then41.i, label %while.cond504.backedge

if.then41.i:                                      ; preds = %if.end40.i
  %151 = ptrtoint ptr %sv.4834 to i64
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 24, ptr noundef nonnull @.str.34, i64 noundef %151) #4
  br label %while.cond504.backedge

while.cond504.backedge:                           ; preds = %if.then592, %if.end571, %if.then41.i, %if.end40.i, %if.then38.i, %if.end19.i, %if.end564
  br label %while.cond504, !llvm.loop !1

if.end571:                                        ; preds = %if.end567
  %dec573 = add i32 %148, -1
  store i32 %dec573, ptr %sv_refcnt568, align 8
  %tobool574.not = icmp eq i32 %dec573, 0
  br i1 %tobool574.not, label %if.end576, label %while.cond504.backedge

if.end576:                                        ; preds = %if.end571
  %sv_flags577 = getelementptr inbounds nuw i8, ptr %sv.4834, i64 12
  %152 = load i32, ptr %sv_flags577, align 4
  %and578 = and i32 %152, 134283264
  %tobool579.not = icmp eq i32 %and578, 0
  br i1 %tobool579.not, label %while.end.loopexit, label %land.lhs.true580

land.lhs.true580:                                 ; preds = %if.end576
  %cmp581 = icmp eq ptr %sv.4834, @PL_sv_undef
  %cmp584 = icmp eq ptr %sv.4834, @PL_sv_yes
  %or.cond = or i1 %cmp581, %cmp584
  %cmp587 = icmp eq ptr %sv.4834, @PL_sv_no
  %or.cond596 = or i1 %cmp587, %or.cond
  %cmp590 = icmp eq ptr %sv.4834, @PL_sv_placeholder
  %or.cond597 = or i1 %cmp590, %or.cond596
  br i1 %or.cond597, label %if.then592, label %while.end.loopexit

if.then592:                                       ; preds = %land.lhs.true580
  store i32 2147483647, ptr %sv_refcnt568, align 8
  br label %while.cond504.backedge

while.end.loopexit:                               ; preds = %land.lhs.true580, %if.end576, %if.else508
  %sv.5.ph = phi ptr [ null, %if.else508 ], [ %sv.4834, %if.end576 ], [ %sv.4834, %land.lhs.true580 ]
  %iter_sv.9.ph = phi ptr [ null, %if.else508 ], [ %iter_sv.5, %if.end576 ], [ %iter_sv.5, %land.lhs.true580 ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %land.lhs.true580.peel, %if.end576.peel, %if.else508.peel
  %sv.5 = phi ptr [ null, %if.else508.peel ], [ %sv.4834.peel, %if.end576.peel ], [ %sv.4834.peel, %land.lhs.true580.peel ], [ %sv.5.ph, %while.end.loopexit ]
  %iter_sv.9 = phi ptr [ null, %if.else508.peel ], [ %iter_sv.5, %if.end576.peel ], [ %iter_sv.5, %land.lhs.true580.peel ], [ %iter_sv.9.ph, %while.end.loopexit ]
  %tobool.not = icmp eq ptr %sv.5, null
  br i1 %tobool.not, label %while.end595.loopexit, label %while.body, !llvm.loop !3

while.end595.loopexit:                            ; preds = %while.end
  br label %while.end595

while.end595:                                     ; preds = %while.end595.loopexit, %entry
  call void @llvm.lifetime.end.p0(ptr nonnull %hash_index) #4
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden fastcc noundef zeroext i1 @S_curse(ptr noundef, i1 noundef zeroext) unnamed_addr #2

declare void @Perl_hv_kill_backrefs(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_PerlIO_stdin() local_unnamed_addr #1

declare ptr @Perl_PerlIO_stdout() local_unnamed_addr #1

declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #1

declare zeroext i1 @Perl_io_close(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #3

declare void @Perl_pregfree2(ptr noundef) local_unnamed_addr #1

declare void @Perl_cv_undef(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_hv_name_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_hfree_next_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Perl_hv_undef_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_unshare_hek(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #1

declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!0 = !{i8 0, i8 2}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.peeled.count", i32 1}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
