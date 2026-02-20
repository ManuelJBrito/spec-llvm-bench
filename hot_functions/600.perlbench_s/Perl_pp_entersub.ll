; ModuleID = '/tmp/tmp.upjIhesuqW/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/pp_hot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.context = type { %union.anon }
%union.anon = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curcop = external global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_tmps_floor = external global i64, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@.str.1 = external hidden unnamed_addr constant [1 x i8], align 1
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_sv_yes = external global %struct.sv, align 8
@PL_curpm = external global ptr, align 8
@.str.24 = external hidden unnamed_addr constant [4 x i8], align 1
@PL_no_usym = external constant [0 x i8], align 1
@PL_markstack = external local_unnamed_addr global ptr, align 8
@.str.34 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.35 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.36 = external hidden unnamed_addr constant [76 x i8], align 1
@.str.37 = external hidden unnamed_addr constant [25 x i8], align 1
@.str.38 = external hidden unnamed_addr constant [33 x i8], align 1
@.str.39 = external hidden unnamed_addr constant [28 x i8], align 1
@PL_DBsub = external local_unnamed_addr global ptr, align 8
@PL_curcopdb = external local_unnamed_addr global ptr, align 8
@.str.40 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.41 = external hidden unnamed_addr constant [27 x i8], align 1
@PL_comppad = external local_unnamed_addr global ptr, align 8
@.str.42 = external hidden unnamed_addr constant [40 x i8], align 1
@PL_perldb = external local_unnamed_addr global i32, align 4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare i32 @Perl_block_gimme() local_unnamed_addr #1

declare void @Perl_push_scope() local_unnamed_addr #1

declare void @Perl_pop_scope() local_unnamed_addr #1

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #1

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #1

declare ptr @Perl_amagic_deref_call(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Perl_is_lvalue_sub() local_unnamed_addr #1

declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_sv_newmortal() local_unnamed_addr #1

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @Perl_newSVavdefelem(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @Perl_cxinc() local_unnamed_addr #1

declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_entersub() local_unnamed_addr #3 {
entry:
  %sv = alloca ptr, align 8
  %gv = alloca ptr, align 8
  %stash = alloca ptr, align 8
  %len = alloca i64, align 8
  %0 = load ptr, ptr @PL_stack_sp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %sv) #4
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 -8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %sv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %gv) #4
  %2 = load ptr, ptr @PL_op, align 8
  %op_flags = getelementptr inbounds nuw i8, ptr %2, i64 34
  %3 = load i8, ptr %op_flags, align 2
  %4 = and i8 %3, 64
  %cmp.not = icmp eq i8 %4, 0
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.34) #4
  br label %cleanup666

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds nuw i8, ptr %1, i64 12
  %5 = load i32, ptr %sv_flags, align 4
  %and2 = and i32 %5, 255
  %cmp3 = icmp eq i32 %and2, 9
  br i1 %cmp3, label %land.lhs.true, label %if.then13

land.lhs.true:                                    ; preds = %if.end
  %sv_u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = load ptr, ptr %sv_u, align 8
  %gp_cvgen = getelementptr inbounds nuw i8, ptr %6, i64 24
  %7 = load i32, ptr %gp_cvgen, align 8
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %cond.end, label %if.then13

cond.end:                                         ; preds = %land.lhs.true
  %gp_cv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %8 = load ptr, ptr %gp_cv, align 8
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %if.then13, label %if.end139

if.then13:                                        ; preds = %cond.end, %land.lhs.true, %if.end
  %trunc = trunc i32 %5 to i8
  switch i8 %trunc, label %sw.default [
    i8 9, label %we_have_a_glob
    i8 10, label %sw.bb34
    i8 12, label %sw.bb136
    i8 11, label %sw.bb136
    i8 13, label %if.end139
  ]

we_have_a_glob:                                   ; preds = %sw.bb34, %if.then13
  %sv_u16 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %9 = load ptr, ptr %sv_u16, align 8
  %gp_cvgen18 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %10 = load i32, ptr %gp_cvgen18, align 8
  %tobool19.not = icmp eq i32 %10, 0
  br i1 %tobool19.not, label %cond.end25, label %if.end30

cond.end25:                                       ; preds = %we_have_a_glob
  %gp_cv24 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %11 = load ptr, ptr %gp_cv24, align 8
  %tobool27.not = icmp eq ptr %11, null
  br i1 %tobool27.not, label %if.end30, label %if.end139

if.end30:                                         ; preds = %cond.end25, %we_have_a_glob
  call void @llvm.lifetime.start.p0(ptr nonnull %stash) #4
  %call29 = call ptr @Perl_sv_2cv(ptr noundef nonnull %1, ptr noundef nonnull %stash, ptr noundef nonnull %gv, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %stash) #4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %if.then32, label %if.end139

if.then32:                                        ; preds = %if.end30
  call void @Perl_push_scope() #4
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #4
  %12 = load i64, ptr @PL_tmps_ix, align 8
  store i64 %12, ptr @PL_tmps_floor, align 8
  br label %try_autoload

sw.bb34:                                          ; preds = %if.then13
  %and36 = and i32 %5, 49152
  %cmp37 = icmp eq i32 %and36, 32768
  br i1 %cmp37, label %we_have_a_glob, label %sw.default

sw.default:                                       ; preds = %sw.bb34, %if.then13
  %cmp50 = icmp eq ptr %1, @PL_sv_yes
  br i1 %cmp50, label %if.then52, label %if.end58

if.then52:                                        ; preds = %sw.default
  br i1 %cmp.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.then52
  %13 = load ptr, ptr @PL_stack_base, align 8
  %14 = load ptr, ptr @PL_markstack_ptr, align 8
  %incdec.ptr54 = getelementptr inbounds i8, ptr %14, i64 -4
  store ptr %incdec.ptr54, ptr @PL_markstack_ptr, align 8
  %15 = load i32, ptr %14, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr55 = getelementptr inbounds ptr, ptr %13, i64 %idx.ext
  br label %if.end57

if.else:                                          ; preds = %if.then52
  %16 = load ptr, ptr @PL_markstack_ptr, align 8
  %incdec.ptr56 = getelementptr inbounds i8, ptr %16, i64 -4
  store ptr %incdec.ptr56, ptr @PL_markstack_ptr, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then53
  %sp.0 = phi ptr [ %add.ptr55, %if.then53 ], [ %incdec.ptr, %if.else ]
  store ptr %sp.0, ptr @PL_stack_sp, align 8
  %17 = load ptr, ptr %2, align 8
  br label %cleanup666

if.end58:                                         ; preds = %sw.default
  %and60 = and i32 %5, 2097152
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end58
  %call64 = tail call i32 @Perl_mg_get(ptr noundef %1) #4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end58
  %18 = load ptr, ptr %sv, align 8
  %sv_flags66 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %19 = load i32, ptr %sv_flags66, align 4
  %and67 = and i32 %19, 2048
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.else86, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %land.end
  %sv_u74 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %20 = load ptr, ptr %sv_u74, align 8
  %sv_flags75 = getelementptr inbounds nuw i8, ptr %20, i64 12
  %21 = load i32, ptr %sv_flags75, align 4
  %and76 = and i32 %21, 1048576
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end128, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %land.lhs.true73
  %22 = load ptr, ptr %20, align 8
  %23 = load ptr, ptr %22, align 8
  %sv_flags80 = getelementptr inbounds nuw i8, ptr %23, i64 12
  %24 = load i32, ptr %sv_flags80, align 4
  %and81 = and i32 %24, 268435456
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end128, label %if.then83

if.then83:                                        ; preds = %land.lhs.true78
  %call84 = tail call ptr @Perl_amagic_deref_call(ptr noundef nonnull %18, i32 noundef 5) #4
  store ptr %call84, ptr %sv, align 8
  br label %if.end128

if.else86:                                        ; preds = %land.end
  call void @llvm.lifetime.start.p0(ptr nonnull %len) #4
  %and88 = and i32 %19, 63232
  %tobool89.not = icmp ne i32 %and88, 0
  %and92 = and i32 %19, 255
  %cmp93 = icmp eq i32 %and92, 8
  %or.cond = or i1 %tobool89.not, %cmp93
  %and97 = and i32 %19, 16777471
  %cmp98 = icmp eq i32 %and97, 16777226
  %or.cond813 = or i1 %cmp98, %or.cond
  br i1 %or.cond813, label %if.end102, label %if.then100

if.then100:                                       ; preds = %if.else86
  %call101 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_usym, ptr noundef nonnull @.str.35) #4
  br label %cleanup.thread

if.end102:                                        ; preds = %if.else86
  %and104 = and i32 %19, 2098176
  %cmp105 = icmp eq i32 %and104, 1024
  br i1 %cmp105, label %cond.true107, label %cond.false111

cond.true107:                                     ; preds = %if.end102
  %25 = load ptr, ptr %18, align 8
  %xpv_cur = getelementptr inbounds nuw i8, ptr %25, i64 16
  %26 = load i64, ptr %xpv_cur, align 8
  store i64 %26, ptr %len, align 8
  %sv_u109 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %27 = load ptr, ptr %sv_u109, align 8
  br label %cond.end113

cond.false111:                                    ; preds = %if.end102
  %call112 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %18, ptr noundef nonnull %len, i32 noundef 32) #4
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false111, %cond.true107
  %cond114 = phi ptr [ %27, %cond.true107 ], [ %call112, %cond.false111 ]
  %28 = load ptr, ptr @PL_op, align 8
  %op_private = getelementptr inbounds nuw i8, ptr %28, i64 35
  %29 = load i8, ptr %op_private, align 1
  %30 = and i8 %29, 2
  %tobool117.not = icmp eq i8 %30, 0
  br i1 %tobool117.not, label %cleanup, label %if.then118

if.then118:                                       ; preds = %cond.end113
  %31 = load ptr, ptr %sv, align 8
  %32 = load i64, ptr %len, align 8
  %cmp119 = icmp ugt i64 %32, 32
  %cond121 = select i1 %cmp119, ptr @.str.24, ptr @.str.1
  %call122 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.36, ptr noundef %31, ptr noundef nonnull %cond121) #4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then118, %if.then100
  %retval.0.ph = phi ptr [ %call101, %if.then100 ], [ %call122, %if.then118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %len) #4
  br label %cleanup666

cleanup:                                          ; preds = %cond.end113
  %33 = load i64, ptr %len, align 8
  %34 = load ptr, ptr %sv, align 8
  %sv_flags124 = getelementptr inbounds nuw i8, ptr %34, i64 12
  %35 = load i32, ptr %sv_flags124, align 4
  %and125 = and i32 %35, 536870912
  %or = or disjoint i32 %and125, 1
  %call126 = call ptr @Perl_get_cvn_flags(ptr noundef %cond114, i64 noundef %33, i32 noundef %or) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %len) #4
  br label %if.end139

if.end128:                                        ; preds = %if.then83, %land.lhs.true78, %land.lhs.true73
  %36 = load ptr, ptr %sv, align 8
  %sv_u129 = getelementptr inbounds nuw i8, ptr %36, i64 16
  %37 = load ptr, ptr %sv_u129, align 8
  %sv_flags130 = getelementptr inbounds nuw i8, ptr %37, i64 12
  %38 = load i32, ptr %sv_flags130, align 4
  %and131 = and i32 %38, 255
  %cmp132 = icmp eq i32 %and131, 13
  br i1 %cmp132, label %if.end139, label %sw.bb136

sw.bb136:                                         ; preds = %if.end128, %if.then13, %if.then13
  %call137 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.34) #4
  br label %cleanup666

if.end139:                                        ; preds = %if.end128, %cleanup, %if.end30, %cond.end25, %if.then13, %cond.end
  %cv.3 = phi ptr [ %8, %cond.end ], [ %37, %if.end128 ], [ %call126, %cleanup ], [ %call29, %if.end30 ], [ %1, %if.then13 ], [ %11, %cond.end25 ]
  call void @Perl_push_scope() #4
  br label %retry

retry:                                            ; preds = %if.end231, %if.end139
  %cv.4 = phi ptr [ %cv.3, %if.end139 ], [ %cv.5, %if.end231 ]
  %39 = load ptr, ptr %cv.4, align 8
  %xcv_flags = getelementptr inbounds nuw i8, ptr %39, i64 92
  %40 = load i32, ptr %xcv_flags, align 4
  %41 = and i32 %40, 96
  %or.cond814 = icmp eq i32 %41, 32
  br i1 %or.cond814, label %if.then150, label %if.end152

if.then150:                                       ; preds = %retry
  %call151 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.37) #4
  br label %cleanup666

if.end152:                                        ; preds = %retry
  %xcv_root_u = getelementptr inbounds nuw i8, ptr %39, i64 48
  %42 = load ptr, ptr %xcv_root_u, align 8
  %tobool154.not = icmp eq ptr %42, null
  br i1 %tobool154.not, label %if.then161, label %if.end235

if.then161:                                       ; preds = %if.end152
  %and164 = and i32 %40, 65536
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end174, label %land.lhs.true166

land.lhs.true166:                                 ; preds = %if.then161
  %xcv_gv_u = getelementptr inbounds nuw i8, ptr %39, i64 56
  %43 = load ptr, ptr %xcv_gv_u, align 8
  %tobool168.not = icmp eq ptr %43, null
  br i1 %tobool168.not, label %if.end174, label %if.then171

if.then171:                                       ; preds = %land.lhs.true166
  %call172 = call ptr @Perl_cv_name(ptr noundef nonnull %cv.4, ptr noundef null, i32 noundef 0) #4
  %call173 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.38, ptr noundef %call172) #4
  br label %cleanup666

if.end174:                                        ; preds = %land.lhs.true166, %if.then161
  %and177 = and i32 %40, 128
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %lor.lhs.false179, label %if.then185

lor.lhs.false179:                                 ; preds = %if.end174
  %xcv_gv_u181 = getelementptr inbounds nuw i8, ptr %39, i64 56
  %44 = load ptr, ptr %xcv_gv_u181, align 8
  %tobool182.not = icmp eq ptr %44, null
  br i1 %tobool182.not, label %if.then185, label %if.end187

if.then185:                                       ; preds = %lor.lhs.false179, %if.end174
  %call186 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.39) #4
  br label %cleanup666

if.end187:                                        ; preds = %lor.lhs.false179
  %and.i = and i32 %40, 32768
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %S_CvGV.exit, label %cond.true.i

cond.true.i:                                      ; preds = %if.end187
  %call.i = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %cv.4) #4
  br label %S_CvGV.exit

S_CvGV.exit:                                      ; preds = %cond.true.i, %if.end187
  %cond.i = phi ptr [ %call.i, %cond.true.i ], [ %44, %if.end187 ]
  store ptr %cond.i, ptr %gv, align 8
  %sv_u189 = getelementptr inbounds nuw i8, ptr %cond.i, i64 16
  %45 = load ptr, ptr %sv_u189, align 8
  %gp_cv191 = getelementptr inbounds nuw i8, ptr %45, i64 16
  %46 = load ptr, ptr %gp_cv191, align 8
  %cmp193.not = icmp eq ptr %cv.4, %46
  br i1 %cmp193.not, label %try_autoload, label %if.end231

try_autoload:                                     ; preds = %S_CvGV.exit, %if.then32
  %47 = load ptr, ptr %gv, align 8
  %48 = load ptr, ptr %47, align 8
  %xnv_u = getelementptr inbounds nuw i8, ptr %48, i64 40
  %49 = load ptr, ptr %xnv_u, align 8
  %xiv_u = getelementptr inbounds nuw i8, ptr %48, i64 32
  %50 = load ptr, ptr %xiv_u, align 8
  %hek_key = getelementptr inbounds nuw i8, ptr %50, i64 8
  %hek_len = getelementptr inbounds nuw i8, ptr %50, i64 4
  %51 = load i32, ptr %hek_len, align 4
  %conv205 = sext i32 %51 to i64
  %add.ptr214 = getelementptr inbounds i8, ptr %hek_key, i64 %conv205
  %add.ptr215 = getelementptr inbounds nuw i8, ptr %add.ptr214, i64 1
  %52 = load i8, ptr %add.ptr215, align 1
  %53 = and i8 %52, 1
  %54 = zext nneg i8 %53 to i32
  %cond219 = shl nuw nsw i32 %54, 29
  %call220 = call ptr @Perl_gv_autoload_pvn(ptr noundef %49, ptr noundef nonnull %hek_key, i64 noundef %conv205, i32 noundef %cond219) #4
  %tobool221.not = icmp eq ptr %call220, null
  br i1 %tobool221.not, label %sorry, label %if.then222

if.then222:                                       ; preds = %try_autoload
  %sv_u223 = getelementptr inbounds nuw i8, ptr %call220, i64 16
  %55 = load ptr, ptr %sv_u223, align 8
  %gp_cv225 = getelementptr inbounds nuw i8, ptr %55, i64 16
  %56 = load ptr, ptr %gp_cv225, align 8
  br label %if.end231

sorry:                                            ; preds = %if.end231, %try_autoload
  %call228 = call ptr @Perl_sv_newmortal() #4
  %57 = load ptr, ptr %gv, align 8
  call void @Perl_gv_efullname4(ptr noundef %call228, ptr noundef %57, ptr noundef null, i1 noundef zeroext true) #4
  %call229 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.38, ptr noundef %call228) #4
  br label %cleanup666

if.end231:                                        ; preds = %if.then222, %S_CvGV.exit
  %cv.5 = phi ptr [ %56, %if.then222 ], [ %46, %S_CvGV.exit ]
  %tobool232.not = icmp eq ptr %cv.5, null
  br i1 %tobool232.not, label %sorry, label %retry

if.end235:                                        ; preds = %if.end152
  %58 = load ptr, ptr @PL_op, align 8
  %op_private236 = getelementptr inbounds nuw i8, ptr %58, i64 35
  %59 = load i8, ptr %op_private236, align 1
  %60 = and i8 %59, 64
  %tobool239.not = icmp eq i8 %60, 0
  br i1 %tobool239.not, label %if.end294, label %land.lhs.true240

land.lhs.true240:                                 ; preds = %if.end235
  %61 = load ptr, ptr @PL_DBsub, align 8
  %sv_u241 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %62 = load ptr, ptr %sv_u241, align 8
  %gp_cv243 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %63 = load ptr, ptr %gp_cv243, align 8
  %tobool245.not = icmp ne ptr %63, null
  %and249 = and i32 %40, 512
  %tobool250.not = icmp eq i32 %and249, 0
  %or.cond833 = and i1 %tobool250.not, %tobool245.not
  br i1 %or.cond833, label %if.then253, label %if.end294

if.then253:                                       ; preds = %land.lhs.true240
  call void @Perl_get_db_sub(ptr noundef nonnull %sv, ptr noundef nonnull %cv.4) #4
  %64 = load ptr, ptr %cv.4, align 8
  %xcv_flags255 = getelementptr inbounds nuw i8, ptr %64, i64 92
  %65 = load i32, ptr %xcv_flags255, align 4
  %and256 = and i32 %65, 8
  %tobool257.not = icmp eq i32 %and256, 0
  br i1 %tobool257.not, label %if.end259, label %if.then258

if.then258:                                       ; preds = %if.then253
  %66 = load ptr, ptr @PL_curcop, align 8
  store ptr %66, ptr @PL_curcopdb, align 8
  br label %if.end259

if.end259:                                        ; preds = %if.then258, %if.then253
  %67 = load ptr, ptr %cv.4, align 8
  %xcv_flags261 = getelementptr inbounds nuw i8, ptr %67, i64 92
  %68 = load i32, ptr %xcv_flags261, align 4
  %and262 = and i32 %68, 2
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %if.end282, label %if.then264

if.then264:                                       ; preds = %if.end259
  %call265 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.40, i64 noundef 8, i32 noundef 2, i32 noundef 13) #4
  %sv_u266 = getelementptr inbounds nuw i8, ptr %call265, i64 16
  %69 = load ptr, ptr %sv_u266, align 8
  %gp_cv268 = getelementptr inbounds nuw i8, ptr %69, i64 16
  %70 = load ptr, ptr %gp_cv268, align 8
  %tobool270.not = icmp eq ptr %70, null
  br i1 %tobool270.not, label %if.end282, label %lor.lhs.false284

if.end282:                                        ; preds = %if.then264, %if.end259
  %.pn834 = load ptr, ptr @PL_DBsub, align 8
  %.pn.in = getelementptr inbounds nuw i8, ptr %.pn834, i64 16
  %.pn = load ptr, ptr %.pn.in, align 8
  %cv.6.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %cv.6 = load ptr, ptr %cv.6.in, align 8
  %tobool283.not = icmp eq ptr %cv.6, null
  br i1 %tobool283.not, label %if.then291, label %lor.lhs.false284

lor.lhs.false284:                                 ; preds = %if.end282, %if.then264
  %cv.6830 = phi ptr [ %cv.6, %if.end282 ], [ %70, %if.then264 ]
  %71 = load ptr, ptr %cv.6830, align 8
  %xcv_root_u286 = getelementptr inbounds nuw i8, ptr %71, i64 48
  %72 = load ptr, ptr %xcv_root_u286, align 8
  %tobool287.not = icmp eq ptr %72, null
  br i1 %tobool287.not, label %land.lhs.true288, label %if.end294

land.lhs.true288:                                 ; preds = %lor.lhs.false284
  %xcv_start_u = getelementptr inbounds nuw i8, ptr %71, i64 40
  %73 = load ptr, ptr %xcv_start_u, align 8
  %tobool290.not = icmp eq ptr %73, null
  br i1 %tobool290.not, label %if.then291, label %if.end294

if.then291:                                       ; preds = %land.lhs.true288, %if.end282
  %call292 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.41) #4
  br label %cleanup666

if.end294:                                        ; preds = %land.lhs.true288, %lor.lhs.false284, %land.lhs.true240, %if.end235
  %cv.7 = phi ptr [ %cv.6830, %lor.lhs.false284 ], [ %cv.6830, %land.lhs.true288 ], [ %cv.4, %land.lhs.true240 ], [ %cv.4, %if.end235 ]
  %74 = load ptr, ptr @PL_op, align 8
  %op_flags295 = getelementptr inbounds nuw i8, ptr %74, i64 34
  %75 = load i8, ptr %op_flags295, align 2
  %76 = and i8 %75, 3
  %tobool298.not = icmp eq i8 %76, 0
  br i1 %tobool298.not, label %cond.false303, label %cond.true299

cond.true299:                                     ; preds = %if.end294
  %and297 = zext nneg i8 %76 to i32
  br label %cond.end305

cond.false303:                                    ; preds = %if.end294
  %call304 = call i32 @Perl_block_gimme() #4
  br label %cond.end305

cond.end305:                                      ; preds = %cond.false303, %cond.true299
  %cond306 = phi i32 [ %and297, %cond.true299 ], [ %call304, %cond.false303 ]
  %77 = load ptr, ptr %cv.7, align 8
  %xcv_flags308 = getelementptr inbounds nuw i8, ptr %77, i64 92
  %78 = load i32, ptr %xcv_flags308, align 4
  %and309 = and i32 %78, 8
  %tobool310.not = icmp eq i32 %and309, 0
  br i1 %tobool310.not, label %if.then311, label %if.else509

if.then311:                                       ; preds = %cond.end305
  %79 = load ptr, ptr @PL_stack_base, align 8
  %80 = load ptr, ptr @PL_markstack_ptr, align 8
  %incdec.ptr312 = getelementptr inbounds i8, ptr %80, i64 -4
  store ptr %incdec.ptr312, ptr @PL_markstack_ptr, align 8
  %81 = load i32, ptr %80, align 4
  %idx.ext313 = sext i32 %81 to i64
  %add.ptr314 = getelementptr inbounds ptr, ptr %79, i64 %idx.ext313
  %82 = load ptr, ptr %cv.7, align 8
  %xcv_padlist_u = getelementptr inbounds nuw i8, ptr %82, i64 72
  %83 = load ptr, ptr %xcv_padlist_u, align 8
  %84 = load ptr, ptr @PL_curstackinfo, align 8
  %si_cxix = getelementptr inbounds nuw i8, ptr %84, i64 32
  %85 = load i32, ptr %si_cxix, align 8
  %si_cxmax = getelementptr inbounds nuw i8, ptr %84, i64 36
  %86 = load i32, ptr %si_cxmax, align 4
  %cmp316 = icmp slt i32 %85, %86
  br i1 %cmp316, label %cond.true318, label %cond.false320

cond.true318:                                     ; preds = %if.then311
  %inc = add nsw i32 %85, 1
  store i32 %inc, ptr %si_cxix, align 8
  br label %cond.end323

cond.false320:                                    ; preds = %if.then311
  %call321 = call i32 @Perl_cxinc() #4
  %87 = load ptr, ptr @PL_curstackinfo, align 8
  %si_cxix322 = getelementptr inbounds nuw i8, ptr %87, i64 32
  store i32 %call321, ptr %si_cxix322, align 8
  br label %cond.end323

cond.end323:                                      ; preds = %cond.false320, %cond.true318
  %88 = load ptr, ptr @PL_curstackinfo, align 8
  %si_cxstack = getelementptr inbounds nuw i8, ptr %88, i64 8
  %89 = load ptr, ptr %si_cxstack, align 8
  %si_cxix325 = getelementptr inbounds nuw i8, ptr %88, i64 32
  %90 = load i32, ptr %si_cxix325, align 8
  %idxprom = sext i32 %90 to i64
  %arrayidx = getelementptr inbounds %struct.context, ptr %89, i64 %idxprom
  store i8 8, ptr %arrayidx, align 8
  %91 = load ptr, ptr @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr314 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %91 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 3
  %conv326 = trunc i64 %sub.ptr.div to i32
  %blku_oldsp = getelementptr inbounds nuw i8, ptr %arrayidx, i64 4
  store i32 %conv326, ptr %blku_oldsp, align 4
  %92 = load ptr, ptr @PL_curcop, align 8
  %blku_oldcop = getelementptr inbounds nuw i8, ptr %arrayidx, i64 8
  store ptr %92, ptr %blku_oldcop, align 8
  %93 = load ptr, ptr @PL_markstack_ptr, align 8
  %94 = load ptr, ptr @PL_markstack, align 8
  %sub.ptr.lhs.cast329 = ptrtoint ptr %93 to i64
  %sub.ptr.rhs.cast330 = ptrtoint ptr %94 to i64
  %sub.ptr.sub331 = sub i64 %sub.ptr.lhs.cast329, %sub.ptr.rhs.cast330
  %sub.ptr.div332 = lshr exact i64 %sub.ptr.sub331, 2
  %conv333 = trunc i64 %sub.ptr.div332 to i32
  %blku_oldmarksp = getelementptr inbounds nuw i8, ptr %arrayidx, i64 16
  store i32 %conv333, ptr %blku_oldmarksp, align 8
  %95 = load i32, ptr @PL_scopestack_ix, align 4
  %blku_oldscopesp = getelementptr inbounds nuw i8, ptr %arrayidx, i64 20
  store i32 %95, ptr %blku_oldscopesp, align 4
  %96 = load ptr, ptr @PL_curpm, align 8
  %blku_oldpm = getelementptr inbounds nuw i8, ptr %arrayidx, i64 24
  store ptr %96, ptr %blku_oldpm, align 8
  %conv337 = trunc i32 %cond306 to i8
  %blku_gimme = getelementptr inbounds nuw i8, ptr %arrayidx, i64 1
  store i8 %conv337, ptr %blku_gimme, align 1
  %97 = load ptr, ptr @PL_op, align 8
  %op_flags339 = getelementptr inbounds nuw i8, ptr %97, i64 34
  %98 = load i8, ptr %op_flags339, align 2
  %99 = and i8 %98, 3
  %tobool342.not = icmp eq i8 %99, 0
  br i1 %tobool342.not, label %cond.false344, label %cond.end356

cond.false344:                                    ; preds = %cond.end323
  %op_private345 = getelementptr inbounds nuw i8, ptr %97, i64 35
  %100 = load i8, ptr %op_private345, align 1
  %101 = and i8 %100, -127
  %tobool348.not = icmp eq i8 %101, 0
  br i1 %tobool348.not, label %cond.end356, label %cond.false350

cond.false350:                                    ; preds = %cond.false344
  %call351 = call i32 @Perl_was_lvalue_sub() #4
  %102 = and i32 %call351, 207
  %103 = or disjoint i32 %102, 48
  br label %cond.end356

cond.end356:                                      ; preds = %cond.false350, %cond.false344, %cond.end323
  %cond357 = phi i32 [ 177, %cond.end323 ], [ %103, %cond.false350 ], [ 48, %cond.false344 ]
  %blk_u = getelementptr inbounds nuw i8, ptr %arrayidx, i64 32
  %cv360 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 40
  store ptr %cv.7, ptr %cv360, align 8
  %cv.7.val816 = load ptr, ptr %cv.7, align 8
  %xcv_depth.i = getelementptr inbounds nuw i8, ptr %cv.7.val816, i64 96
  %104 = load i32, ptr %xcv_depth.i, align 4
  %olddepth = getelementptr inbounds nuw i8, ptr %arrayidx, i64 64
  store i32 %104, ptr %olddepth, align 8
  %cond366 = lshr exact i8 %4, 1
  %105 = load i8, ptr %arrayidx, align 8
  %or370 = or i8 %105, %cond366
  store i8 %or370, ptr %arrayidx, align 8
  store ptr null, ptr %blk_u, align 8
  %cv.7.val815 = load ptr, ptr %cv.7, align 8
  %xcv_depth.i817 = getelementptr inbounds nuw i8, ptr %cv.7.val815, i64 96
  %106 = load i32, ptr %xcv_depth.i817, align 4
  %tobool375.not = icmp eq i32 %106, 0
  br i1 %tobool375.not, label %if.then376, label %if.end380

if.then376:                                       ; preds = %cond.end356
  %sv_refcnt = getelementptr inbounds nuw i8, ptr %cv.7, i64 8
  %107 = load i32, ptr %sv_refcnt, align 8
  %inc379 = add i32 %107, 2
  store i32 %inc379, ptr %sv_refcnt, align 8
  call void @Perl_save_pushptr(ptr noundef nonnull %cv.7, i32 noundef 11) #4
  br label %if.end380

if.end380:                                        ; preds = %if.then376, %cond.end356
  %108 = load ptr, ptr @PL_op, align 8
  %op_private381 = getelementptr inbounds nuw i8, ptr %108, i64 35
  %109 = load i8, ptr %op_private381, align 1
  %conv382 = zext i8 %109 to i32
  %and385 = and i32 %cond357, %conv382
  %conv386 = trunc nuw nsw i32 %and385 to i16
  %blku_u16 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 2
  store i16 %conv386, ptr %blku_u16, align 2
  %110 = load ptr, ptr @PL_op, align 8
  %111 = load ptr, ptr %110, align 8
  store ptr %111, ptr %blk_u, align 8
  %cv.7.val = load ptr, ptr %cv.7, align 8
  %xcv_depth.i818 = getelementptr inbounds nuw i8, ptr %cv.7.val, i64 96
  %112 = load i32, ptr %xcv_depth.i818, align 4
  %inc393 = add nsw i32 %112, 1
  store i32 %inc393, ptr %xcv_depth.i818, align 4
  %cmp394 = icmp sgt i32 %112, 0
  br i1 %cmp394, label %if.then398, label %if.end399

if.then398:                                       ; preds = %if.end380
  call void @Perl_pad_push(ptr noundef %83, i32 noundef %inc393) #4
  br label %if.end399

if.end399:                                        ; preds = %if.then398, %if.end380
  %113 = load ptr, ptr @PL_comppad, align 8
  call void @Perl_save_pushptr(ptr noundef %113, i32 noundef 7) #4
  %xpadl_alloc = getelementptr inbounds nuw i8, ptr %83, i64 8
  %114 = load ptr, ptr %xpadl_alloc, align 8
  %idxprom400 = sext i32 %inc393 to i64
  %arrayidx401 = getelementptr inbounds ptr, ptr %114, i64 %idxprom400
  %115 = load ptr, ptr %arrayidx401, align 8
  store ptr %115, ptr @PL_comppad, align 8
  %sv_u402 = getelementptr inbounds nuw i8, ptr %115, i64 16
  %116 = load ptr, ptr %sv_u402, align 8
  store ptr %116, ptr @PL_curpad, align 8
  br i1 %cmp.not, label %if.end468, label %if.then407

if.then407:                                       ; preds = %if.end399
  %117 = load ptr, ptr %116, align 8
  %sv_flags409 = getelementptr inbounds nuw i8, ptr %117, i64 12
  %118 = load i32, ptr %sv_flags409, align 4
  %and410 = and i32 %118, 1073741824
  %tobool411.not = icmp eq i32 %and410, 0
  br i1 %tobool411.not, label %if.end419, label %if.then414

if.then414:                                       ; preds = %if.then407
  call void @Perl_av_clear(ptr noundef nonnull %117) #4
  %119 = load i32, ptr %sv_flags409, align 4
  %and416 = and i32 %119, 1073741823
  %or418 = or disjoint i32 %and416, -2147483648
  store i32 %or418, ptr %sv_flags409, align 4
  br label %if.end419

if.end419:                                        ; preds = %if.then414, %if.then407
  %120 = load ptr, ptr @PL_defgv, align 8
  %sv_u420 = getelementptr inbounds nuw i8, ptr %120, i64 16
  %121 = load ptr, ptr %sv_u420, align 8
  %gp_av = getelementptr inbounds nuw i8, ptr %121, i64 40
  %122 = load ptr, ptr %gp_av, align 8
  %savearray = getelementptr inbounds nuw i8, ptr %arrayidx, i64 48
  store ptr %122, ptr %savearray, align 8
  %sv_refcnt424 = getelementptr inbounds nuw i8, ptr %117, i64 8
  %123 = load i32, ptr %sv_refcnt424, align 8
  %inc425 = add i32 %123, 1
  store i32 %inc425, ptr %sv_refcnt424, align 8
  store ptr %117, ptr %gp_av, align 8
  %124 = load ptr, ptr @PL_comppad, align 8
  %oldcomppad = getelementptr inbounds nuw i8, ptr %arrayidx, i64 72
  store ptr %124, ptr %oldcomppad, align 8
  %argarray = getelementptr inbounds nuw i8, ptr %arrayidx, i64 56
  store ptr %117, ptr %argarray, align 8
  %sub.ptr.lhs.cast430 = ptrtoint ptr %incdec.ptr to i64
  %sub.ptr.sub432 = sub i64 %sub.ptr.lhs.cast430, %sub.ptr.lhs.cast
  %sub.ptr.div433 = ashr exact i64 %sub.ptr.sub432, 3
  %sub = add nsw i64 %sub.ptr.div433, -1
  %125 = load ptr, ptr %117, align 8
  %xav_max = getelementptr inbounds nuw i8, ptr %125, i64 24
  %126 = load i64, ptr %xav_max, align 8
  %cmp435 = icmp sgt i64 %sub, %126
  br i1 %cmp435, label %if.then439, label %if.end448

if.then439:                                       ; preds = %if.end419
  %xav_alloc = getelementptr inbounds nuw i8, ptr %125, i64 32
  %127 = load ptr, ptr %xav_alloc, align 8
  store i64 %sub, ptr %xav_max, align 8
  %call444 = call ptr @Perl_safesysrealloc(ptr noundef %127, i64 noundef %sub.ptr.sub432) #4
  %128 = load ptr, ptr %117, align 8
  %xav_alloc446 = getelementptr inbounds nuw i8, ptr %128, i64 32
  store ptr %call444, ptr %xav_alloc446, align 8
  %sv_u447 = getelementptr inbounds nuw i8, ptr %117, i64 16
  store ptr %call444, ptr %sv_u447, align 8
  br label %if.end448

if.end448:                                        ; preds = %if.then439, %if.end419
  %sv_u449 = getelementptr inbounds nuw i8, ptr %117, i64 16
  %129 = load ptr, ptr %sv_u449, align 8
  %add.ptr450 = getelementptr inbounds nuw i8, ptr %add.ptr314, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %129, ptr nonnull align 1 %add.ptr450, i64 %sub.ptr.sub432, i1 false)
  %130 = load ptr, ptr %117, align 8
  %xav_fill = getelementptr inbounds nuw i8, ptr %130, i64 16
  store i64 %sub, ptr %xav_fill, align 8
  %131 = load ptr, ptr %sv_u449, align 8
  %tobool455.not842 = icmp eq ptr %incdec.ptr, %add.ptr314
  br i1 %tobool455.not842, label %if.end468, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end448
  br label %while.body

while.body:                                       ; preds = %if.end466, %while.body.preheader
  %dec844.in = phi i64 [ %dec844, %if.end466 ], [ %sub.ptr.div433, %while.body.preheader ]
  %mark.0843 = phi ptr [ %incdec.ptr467, %if.end466 ], [ %131, %while.body.preheader ]
  %dec844 = add nsw i64 %dec844.in, -1
  %132 = load ptr, ptr %mark.0843, align 8
  %tobool456.not = icmp eq ptr %132, null
  br i1 %tobool456.not, label %if.end466, label %if.then457

if.then457:                                       ; preds = %while.body
  %sv_flags458 = getelementptr inbounds nuw i8, ptr %132, i64 12
  %133 = load i32, ptr %sv_flags458, align 4
  %and459 = and i32 %133, 131072
  %tobool460.not = icmp eq i32 %and459, 0
  br i1 %tobool460.not, label %if.end463, label %if.then461

if.then461:                                       ; preds = %if.then457
  %call462 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %132, i32 noundef 1538) #4
  store ptr %call462, ptr %mark.0843, align 8
  br label %if.end463

if.end463:                                        ; preds = %if.then461, %if.then457
  %134 = load ptr, ptr %mark.0843, align 8
  %sv_flags464 = getelementptr inbounds nuw i8, ptr %134, i64 12
  %135 = load i32, ptr %sv_flags464, align 4
  %and465 = and i32 %135, -524289
  store i32 %and465, ptr %sv_flags464, align 4
  br label %if.end466

if.end466:                                        ; preds = %if.end463, %while.body
  %incdec.ptr467 = getelementptr inbounds nuw i8, ptr %mark.0843, i64 8
  %tobool455.not = icmp eq i64 %dec844, 0
  br i1 %tobool455.not, label %if.end468.loopexit, label %while.body, !llvm.loop !0

if.end468.loopexit:                               ; preds = %if.end466
  br label %if.end468

if.end468:                                        ; preds = %if.end468.loopexit, %if.end448, %if.end399
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #4
  %136 = load i64, ptr @PL_tmps_ix, align 8
  store i64 %136, ptr @PL_tmps_floor, align 8
  %137 = load i16, ptr %blku_u16, align 2
  %138 = and i16 %137, 129
  %cmp473 = icmp eq i16 %138, 128
  br i1 %cmp473, label %land.lhs.true475, label %if.end484

land.lhs.true475:                                 ; preds = %if.end468
  %139 = load ptr, ptr %cv.7, align 8
  %xcv_flags477 = getelementptr inbounds nuw i8, ptr %139, i64 92
  %140 = load i32, ptr %xcv_flags477, align 4
  %and478 = and i32 %140, 2
  %tobool479.not = icmp eq i32 %and478, 0
  br i1 %tobool479.not, label %if.then482, label %if.end484

if.then482:                                       ; preds = %land.lhs.true475
  %call483 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.42) #4
  br label %cleanup666

if.end484:                                        ; preds = %land.lhs.true475, %if.end468
  %cmp485 = icmp eq i32 %inc393, 100
  br i1 %cmp485, label %land.lhs.true487, label %if.end503

land.lhs.true487:                                 ; preds = %if.end484
  %call488 = call zeroext i1 @Perl_ckwarn(i32 noundef 18) #4
  br i1 %call488, label %land.lhs.true490, label %if.end503

land.lhs.true490:                                 ; preds = %land.lhs.true487
  %141 = load i32, ptr @PL_perldb, align 4
  %and491 = and i32 %141, 1
  %tobool492.not = icmp eq i32 %and491, 0
  br i1 %tobool492.not, label %if.then502, label %land.lhs.true493

land.lhs.true493:                                 ; preds = %land.lhs.true490
  %142 = load ptr, ptr @PL_DBsub, align 8
  %sv_u494 = getelementptr inbounds nuw i8, ptr %142, i64 16
  %143 = load ptr, ptr %sv_u494, align 8
  %gp_cv496 = getelementptr inbounds nuw i8, ptr %143, i64 16
  %144 = load ptr, ptr %gp_cv496, align 8
  %cmp498 = icmp eq ptr %cv.7, %144
  br i1 %cmp498, label %if.end503, label %if.then502

if.then502:                                       ; preds = %land.lhs.true493, %land.lhs.true490
  call void @Perl_sub_crush_depth(ptr noundef %cv.7)
  br label %if.end503

if.end503:                                        ; preds = %if.then502, %land.lhs.true493, %land.lhs.true487, %if.end484
  store ptr %incdec.ptr, ptr @PL_stack_sp, align 8
  %145 = load ptr, ptr %cv.7, align 8
  %xcv_start_u505 = getelementptr inbounds nuw i8, ptr %145, i64 40
  %146 = load ptr, ptr %xcv_start_u505, align 8
  br label %cleanup666

if.else509:                                       ; preds = %cond.end305
  %147 = load ptr, ptr @PL_markstack_ptr, align 8
  %148 = load i32, ptr %147, align 4
  %conv510 = sext i32 %148 to i64
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #4
  %149 = load i64, ptr @PL_tmps_ix, align 8
  store i64 %149, ptr @PL_tmps_floor, align 8
  store ptr %incdec.ptr, ptr @PL_stack_sp, align 8
  %150 = load ptr, ptr @PL_op, align 8
  %op_private511 = getelementptr inbounds nuw i8, ptr %150, i64 35
  %151 = load i8, ptr %op_private511, align 1
  %conv512 = zext i8 %151 to i32
  %op_flags513 = getelementptr inbounds nuw i8, ptr %150, i64 34
  %152 = load i8, ptr %op_flags513, align 2
  %153 = and i8 %152, 3
  %tobool516.not = icmp eq i8 %153, 0
  br i1 %tobool516.not, label %cond.false518, label %cond.end530

cond.false518:                                    ; preds = %if.else509
  %and521 = and i32 %conv512, 129
  %tobool522.not = icmp eq i32 %and521, 0
  br i1 %tobool522.not, label %cond.end530, label %cond.false524

cond.false524:                                    ; preds = %cond.false518
  %call525 = call i32 @Perl_is_lvalue_sub() #4
  %conv527 = and i32 %call525, 255
  br label %cond.end530

cond.end530:                                      ; preds = %cond.false524, %cond.false518, %if.else509
  %cond531 = phi i32 [ 129, %if.else509 ], [ %conv527, %cond.false524 ], [ 0, %cond.false518 ]
  %and532 = and i32 %conv512, 129
  %and533 = and i32 %and532, %cond531
  %cmp534 = icmp eq i32 %and533, 128
  br i1 %cmp534, label %land.lhs.true536, label %if.end545

land.lhs.true536:                                 ; preds = %cond.end530
  %154 = load ptr, ptr %cv.7, align 8
  %xcv_flags538 = getelementptr inbounds nuw i8, ptr %154, i64 92
  %155 = load i32, ptr %xcv_flags538, align 4
  %and539 = and i32 %155, 2
  %tobool540.not = icmp eq i32 %and539, 0
  br i1 %tobool540.not, label %if.then543, label %if.end545

if.then543:                                       ; preds = %land.lhs.true536
  %call544 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.42) #4
  br label %cleanup666

if.end545:                                        ; preds = %land.lhs.true536, %cond.end530
  br i1 %cmp.not, label %land.lhs.true547, label %if.else617

land.lhs.true547:                                 ; preds = %if.end545
  %156 = load ptr, ptr @PL_defgv, align 8
  %sv_u548 = getelementptr inbounds nuw i8, ptr %156, i64 16
  %157 = load ptr, ptr %sv_u548, align 8
  %gp_av550 = getelementptr inbounds nuw i8, ptr %157, i64 40
  %158 = load ptr, ptr %gp_av550, align 8
  %tobool551.not = icmp eq ptr %158, null
  br i1 %tobool551.not, label %if.else617, label %if.then554

if.then554:                                       ; preds = %land.lhs.true547
  %sv_flags560 = getelementptr inbounds nuw i8, ptr %158, i64 12
  %159 = load i32, ptr %sv_flags560, align 4
  %and561 = and i32 %159, 8388608
  %tobool562.not = icmp eq i32 %and561, 0
  br i1 %tobool562.not, label %cond.false566, label %cond.true563

cond.true563:                                     ; preds = %if.then554
  %call564 = call i32 @Perl_mg_size(ptr noundef nonnull %158) #4
  %conv565 = sext i32 %call564 to i64
  br label %cond.end569

cond.false566:                                    ; preds = %if.then554
  %160 = load ptr, ptr %158, align 8
  %xav_fill568 = getelementptr inbounds nuw i8, ptr %160, i64 16
  %161 = load i64, ptr %xav_fill568, align 8
  br label %cond.end569

cond.end569:                                      ; preds = %cond.false566, %cond.true563
  %cond570 = phi i64 [ %conv565, %cond.true563 ], [ %161, %cond.false566 ]
  %add = add nsw i64 %cond570, 1
  %tobool571.not = icmp eq i64 %add, 0
  br i1 %tobool571.not, label %if.end639, label %if.then572

if.then572:                                       ; preds = %cond.end569
  %162 = load i32, ptr %sv_flags560, align 4
  %and574 = and i32 %162, 8388608
  %tobool575.not = icmp eq i32 %and574, 0
  %163 = load ptr, ptr @PL_stack_max, align 8
  %sub.ptr.lhs.cast579 = ptrtoint ptr %163 to i64
  %sub.ptr.rhs.cast580 = ptrtoint ptr %incdec.ptr to i64
  %sub.ptr.sub581 = sub i64 %sub.ptr.lhs.cast579, %sub.ptr.rhs.cast580
  %sub.ptr.div582 = ashr exact i64 %sub.ptr.sub581, 3
  %cmp583.not = icmp sgt i64 %sub.ptr.div582, %cond570
  br i1 %cmp583.not, label %do.end, label %if.then587

if.then587:                                       ; preds = %if.then572
  %call588 = call ptr @Perl_stack_grow(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull %incdec.ptr, i64 noundef %add) #4
  br label %do.end

do.end:                                           ; preds = %if.then587, %if.then572
  %sp.1 = phi ptr [ %call588, %if.then587 ], [ %incdec.ptr, %if.then572 ]
  %cmp590.not835 = icmp slt i64 %cond570, 0
  br i1 %cmp590.not835, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.end
  %sv_u602 = getelementptr inbounds nuw i8, ptr %158, i64 16
  br i1 %tobool575.not, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %164 = add i64 %cond570, 1
  br label %for.body

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  br label %for.body.us

for.body.us:                                      ; preds = %if.end613.us, %for.body.us.preheader
  %i.0836.us = phi i64 [ %inc614.us, %if.end613.us ], [ 0, %for.body.us.preheader ]
  %165 = load ptr, ptr %sv_u602, align 8
  %arrayidx603.us = getelementptr inbounds nuw ptr, ptr %165, i64 %i.0836.us
  %sv592.0.us = load ptr, ptr %arrayidx603.us, align 8
  %tobool605.not.us = icmp eq ptr %sv592.0.us, null
  br i1 %tobool605.not.us, label %if.else609.us, label %if.then606.us

if.then606.us:                                    ; preds = %for.body.us
  %166 = getelementptr inbounds nuw ptr, ptr %sp.1, i64 %i.0836.us
  %arrayidx608.us = getelementptr inbounds nuw i8, ptr %166, i64 8
  store ptr %sv592.0.us, ptr %arrayidx608.us, align 8
  br label %if.end613.us

if.else609.us:                                    ; preds = %for.body.us
  %call610.us = call ptr @Perl_newSVavdefelem(ptr noundef %158, i64 noundef %i.0836.us, i1 noundef zeroext true) #4
  %167 = getelementptr inbounds nuw ptr, ptr %sp.1, i64 %i.0836.us
  %arrayidx612.us = getelementptr inbounds nuw i8, ptr %167, i64 8
  store ptr %call610.us, ptr %arrayidx612.us, align 8
  br label %if.end613.us

if.end613.us:                                     ; preds = %if.else609.us, %if.then606.us
  %inc614.us = add nuw i64 %i.0836.us, 1
  %exitcond846 = icmp ne i64 %inc614.us, %add
  br i1 %exitcond846, label %for.body.us, label %for.end.loopexit, !llvm.loop !2

for.body:                                         ; preds = %if.end613, %for.body.preheader
  %i.0836 = phi i64 [ %inc614, %if.end613 ], [ 0, %for.body.preheader ]
  %call595 = call ptr @Perl_av_fetch(ptr noundef %158, i64 noundef %i.0836, i32 noundef 0) #4
  %tobool596.not = icmp eq ptr %call595, null
  br i1 %tobool596.not, label %if.else609, label %if.end604

if.end604:                                        ; preds = %for.body
  %sv592.0 = load ptr, ptr %call595, align 8
  %tobool605.not = icmp eq ptr %sv592.0, null
  br i1 %tobool605.not, label %if.else609, label %if.then606

if.then606:                                       ; preds = %if.end604
  %168 = getelementptr inbounds nuw ptr, ptr %sp.1, i64 %i.0836
  %arrayidx608 = getelementptr inbounds nuw i8, ptr %168, i64 8
  store ptr %sv592.0, ptr %arrayidx608, align 8
  br label %if.end613

if.else609:                                       ; preds = %if.end604, %for.body
  %call610 = call ptr @Perl_newSVavdefelem(ptr noundef %158, i64 noundef %i.0836, i1 noundef zeroext true) #4
  %169 = getelementptr inbounds nuw ptr, ptr %sp.1, i64 %i.0836
  %arrayidx612 = getelementptr inbounds nuw i8, ptr %169, i64 8
  store ptr %call610, ptr %arrayidx612, align 8
  br label %if.end613

if.end613:                                        ; preds = %if.else609, %if.then606
  %inc614 = add nuw i64 %i.0836, 1
  %exitcond = icmp ne i64 %inc614, %164
  br i1 %exitcond, label %for.body, label %for.end.loopexit845, !llvm.loop !2

for.end.loopexit:                                 ; preds = %if.end613.us
  br label %for.end

for.end.loopexit845:                              ; preds = %if.end613
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit845, %for.end.loopexit, %do.end
  %add.ptr615 = getelementptr inbounds ptr, ptr %sp.1, i64 %add
  store ptr %add.ptr615, ptr @PL_stack_sp, align 8
  br label %if.end639

if.else617:                                       ; preds = %land.lhs.true547, %if.end545
  %170 = load ptr, ptr @PL_stack_base, align 8
  %add.ptr619 = getelementptr inbounds ptr, ptr %170, i64 %conv510
  %sub.ptr.lhs.cast621 = ptrtoint ptr %incdec.ptr to i64
  %sub.ptr.rhs.cast622 = ptrtoint ptr %add.ptr619 to i64
  %sub.ptr.sub623 = sub i64 %sub.ptr.lhs.cast621, %sub.ptr.rhs.cast622
  %sub.ptr.div624 = ashr exact i64 %sub.ptr.sub623, 3
  %tobool627.not838 = icmp eq ptr %incdec.ptr, %add.ptr619
  br i1 %tobool627.not838, label %if.end639, label %while.body628.preheader

while.body628.preheader:                          ; preds = %if.else617
  br label %while.body628

while.body628:                                    ; preds = %if.end637, %while.body628.preheader
  %dec626840.in = phi i64 [ %dec626840, %if.end637 ], [ %sub.ptr.div624, %while.body628.preheader ]
  %mark618.0839 = phi ptr [ %incdec.ptr629, %if.end637 ], [ %add.ptr619, %while.body628.preheader ]
  %dec626840 = add nsw i64 %dec626840.in, -1
  %incdec.ptr629 = getelementptr inbounds nuw i8, ptr %mark618.0839, i64 8
  %171 = load ptr, ptr %incdec.ptr629, align 8
  %tobool630.not = icmp eq ptr %171, null
  br i1 %tobool630.not, label %if.end637, label %land.lhs.true631

land.lhs.true631:                                 ; preds = %while.body628
  %sv_flags632 = getelementptr inbounds nuw i8, ptr %171, i64 12
  %172 = load i32, ptr %sv_flags632, align 4
  %and633 = and i32 %172, 131072
  %tobool634.not = icmp eq i32 %and633, 0
  br i1 %tobool634.not, label %if.end637, label %if.then635

if.then635:                                       ; preds = %land.lhs.true631
  %call636 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %171, i32 noundef 1538) #4
  store ptr %call636, ptr %incdec.ptr629, align 8
  br label %if.end637

if.end637:                                        ; preds = %if.then635, %land.lhs.true631, %while.body628
  %tobool627.not = icmp eq i64 %dec626840, 0
  br i1 %tobool627.not, label %if.end639.loopexit, label %while.body628, !llvm.loop !3

if.end639.loopexit:                               ; preds = %if.end637
  br label %if.end639

if.end639:                                        ; preds = %if.end639.loopexit, %if.else617, %for.end, %cond.end569
  %173 = load ptr, ptr @PL_curcopdb, align 8
  %tobool640.not = icmp eq ptr %173, null
  br i1 %tobool640.not, label %if.end644, label %if.then643

if.then643:                                       ; preds = %if.end639
  call void @Perl_save_vptr(ptr noundef nonnull @PL_curcop) #4
  %174 = load ptr, ptr @PL_curcopdb, align 8
  store ptr %174, ptr @PL_curcop, align 8
  store ptr null, ptr @PL_curcopdb, align 8
  br label %if.end644

if.end644:                                        ; preds = %if.then643, %if.end639
  %175 = load ptr, ptr %cv.7, align 8
  %xcv_root_u646 = getelementptr inbounds nuw i8, ptr %175, i64 48
  %176 = load ptr, ptr %xcv_root_u646, align 8
  call void %176(ptr noundef %cv.7) #4
  %cmp647 = icmp eq i32 %cond306, 2
  br i1 %cmp647, label %if.then649, label %if.end663

if.then649:                                       ; preds = %if.end644
  %177 = load ptr, ptr @PL_stack_base, align 8
  %add.ptr651 = getelementptr inbounds ptr, ptr %177, i64 %conv510
  %add.ptr652 = getelementptr inbounds nuw i8, ptr %add.ptr651, i64 8
  %178 = load ptr, ptr @PL_stack_sp, align 8
  %cmp653.not = icmp eq ptr %add.ptr652, %178
  br i1 %cmp653.not, label %if.end663, label %if.then655

if.then655:                                       ; preds = %if.then649
  %cmp656 = icmp ugt ptr %add.ptr652, %178
  br i1 %cmp656, label %cond.end660, label %cond.false659

cond.false659:                                    ; preds = %if.then655
  %179 = load ptr, ptr %178, align 8
  br label %cond.end660

cond.end660:                                      ; preds = %cond.false659, %if.then655
  %cond661 = phi ptr [ %179, %cond.false659 ], [ @PL_sv_undef, %if.then655 ]
  store ptr %cond661, ptr %add.ptr652, align 8
  store ptr %add.ptr652, ptr @PL_stack_sp, align 8
  br label %if.end663

if.end663:                                        ; preds = %cond.end660, %if.then649, %if.end644
  call void @Perl_pop_scope() #4
  %180 = load ptr, ptr @PL_op, align 8
  %181 = load ptr, ptr %180, align 8
  br label %cleanup666

cleanup666:                                       ; preds = %if.end663, %if.then543, %if.end503, %if.then482, %if.then291, %sorry, %if.then185, %if.then171, %if.then150, %sw.bb136, %cleanup.thread, %if.end57, %if.then
  %retval.3 = phi ptr [ %call292, %if.then291 ], [ %call173, %if.then171 ], [ %call186, %if.then185 ], [ %call229, %sorry ], [ %call151, %if.then150 ], [ %17, %if.end57 ], [ %call137, %sw.bb136 ], [ %call, %if.then ], [ %146, %if.end503 ], [ %call483, %if.then482 ], [ %181, %if.end663 ], [ %call544, %if.then543 ], [ %retval.0.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %gv) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %sv) #4
  ret ptr %retval.3
}

declare ptr @Perl_sv_2cv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_get_cvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_cv_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_gv_autoload_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @Perl_get_db_sub(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Perl_was_lvalue_sub() local_unnamed_addr #1

declare void @Perl_pad_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_sub_crush_depth(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
!3 = distinct !{!3, !1}
