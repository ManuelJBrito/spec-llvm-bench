; ModuleID = '/tmp/tmp.JmKYR7RRJF/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/regcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.scan_data_t = type { i64, i64, ptr, i64, i64, i64, ptr, ptr, i64, ptr, i32, ptr, i64, i64, ptr, i64, i32, i32, ptr, ptr }
%struct.RExC_state_t = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, %struct.regnode_ssc, i32, i32, i32, i64, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i64, ptr, ptr, i32, i32, ptr }
%struct.regnode_ssc = type { i8, i8, i16, i32, [32 x i8], i32, ptr }
%struct.reg_code_block = type { i64, i64, ptr, ptr }
%struct.regnode = type { i8, i8, i16 }
%struct._reg_trie_state = type { i16, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct._reg_trie_trans = type { i32, i32 }

@PL_regkind = external dso_local local_unnamed_addr constant [134 x i8], align 16
@PL_simple_bitmask = external dso_local local_unnamed_addr constant <{ i8, i8, i8, i8, [8 x i8] }>, align 1
@.str.178 = external hidden unnamed_addr constant [1 x i8], align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_compiling = external global %struct.cop, align 8
@PL_AboveLatin1 = external local_unnamed_addr global ptr, align 8
@AboveLatin1_invlist = external hidden constant [5 x i64], align 16
@Latin1_invlist = external hidden constant [5 x i64], align 16
@PL_Latin1 = external local_unnamed_addr global ptr, align 8
@UpperLatin1_invlist = external hidden constant [6 x i64], align 16
@PL_UpperLatin1 = external local_unnamed_addr global ptr, align 8
@_Perl_Any_Folds_invlist = external hidden constant [238 x i64], align 16
@PL_utf8_foldable = external local_unnamed_addr global ptr, align 8
@_Perl_Folds_To_Multi_Char_invlist = external hidden constant [62 x i64], align 16
@PL_HasMultiCharFold = external local_unnamed_addr global ptr, align 8
@PL_InBitmap = external local_unnamed_addr global ptr, align 8
@PL_tainting = external local_unnamed_addr global i8, align 1
@PL_tainted = external local_unnamed_addr global i8, align 1
@.str.180 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.181 = external hidden unnamed_addr constant [70 x i8], align 1
@.str.182 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.183 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.184 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.186 = external hidden unnamed_addr constant [74 x i8], align 1
@regarglen = external hidden unnamed_addr constant [94 x i8], align 16
@.str.204 = external hidden unnamed_addr constant [32 x i8], align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_errgv = external local_unnamed_addr global ptr, align 8
@.str.208 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.209 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.210 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.211 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.212 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.213 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.214 = external hidden unnamed_addr constant [2 x i8], align 1
@zero_scan_data = external hidden unnamed_addr constant { i64, i64, ptr, i64, i64, i64, ptr, ptr, i64, ptr, i32, [4 x i8], ptr, i64, i64, ptr, i64, i32, i32, ptr, ptr }, align 8
@reg_off_by_arg = external hidden unnamed_addr constant <{ [72 x i8], [22 x i8] }>, align 16

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_re_op_compile(ptr noundef readonly captures(address) %patternp, i32 noundef %pat_count, ptr noundef %expr, ptr noundef %eng, ptr noundef readonly captures(address_is_null, ret: address, provenance) %old_re, ptr noundef writeonly captures(address_is_null) %is_bare_re, i32 noundef %orig_rx_flags, i32 noundef %pm_flags) #0 {
entry:
  %invlist.i2537 = alloca ptr, align 8
  %invlist.i = alloca ptr, align 8
  %plen = alloca i64, align 8
  %scan = alloca ptr, align 8
  %flags = alloca i32, align 4
  %minlen = alloca i64, align 8
  %recompile = alloca i8, align 1
  %data = alloca %struct.scan_data_t, align 8
  %RExC_state = alloca %struct.RExC_state_t, align 8
  %copyRExC_state = alloca %struct.RExC_state_t, align 8
  %fake = alloca i64, align 8
  %ch_class = alloca %struct.regnode_ssc, align 8
  %last_close = alloca i64, align 8
  %first = alloca ptr, align 8
  %fake1337 = alloca i64, align 8
  %ch_class1338 = alloca %struct.regnode_ssc, align 8
  %last_close1339 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %plen) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %scan) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %flags) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %minlen) #9
  store i64 0, ptr %minlen, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %recompile) #9
  store i8 0, ptr %recompile, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %data) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %RExC_state) #9
  call void @llvm.lifetime.start.p0(ptr %copyRExC_state)
  %0 = load ptr, ptr @PL_AboveLatin1, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @Perl_newSV_type(i32 noundef 4) #9
  %sv_u.i = getelementptr inbounds nuw i8, ptr %call.i, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @AboveLatin1_invlist, i64 24), ptr %sv_u.i, align 8
  %1 = load ptr, ptr %call.i, align 8
  %xpv_len_u.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %xpv_len_u.i, align 8
  %call.val.i = load ptr, ptr %call.i, align 8
  %is_offset.i.i = getelementptr inbounds nuw i8, ptr %call.val.i, i64 48
  store i8 1, ptr %is_offset.i.i, align 1
  %call.val23.i = load ptr, ptr %call.i, align 8
  %xpv_cur.i.i = getelementptr inbounds nuw i8, ptr %call.val23.i, i64 16
  store i64 16, ptr %xpv_cur.i.i, align 8
  %call.val24.i = load ptr, ptr %call.i, align 8
  %prev_index.i.i.i = getelementptr inbounds nuw i8, ptr %call.val24.i, i64 32
  store i64 0, ptr %prev_index.i.i.i, align 8
  %call.val25.i = load ptr, ptr %call.i, align 8
  %iterator.i.i.i = getelementptr inbounds nuw i8, ptr %call.val25.i, i64 40
  store i64 -1, ptr %iterator.i.i.i, align 8
  %sv_flags.i = getelementptr inbounds nuw i8, ptr %call.i, i64 12
  %2 = load i32, ptr %sv_flags.i, align 4
  %or.i = or i32 %2, 134283264
  store i32 %or.i, ptr %sv_flags.i, align 4
  store ptr %call.i, ptr @PL_AboveLatin1, align 8
  %call.i2187 = tail call ptr @Perl_newSV_type(i32 noundef 4) #9
  %sv_u.i2188 = getelementptr inbounds nuw i8, ptr %call.i2187, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @Latin1_invlist, i64 24), ptr %sv_u.i2188, align 8
  %3 = load ptr, ptr %call.i2187, align 8
  %xpv_len_u.i2189 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %xpv_len_u.i2189, align 8
  %call.val.i2190 = load ptr, ptr %call.i2187, align 8
  %is_offset.i.i2191 = getelementptr inbounds nuw i8, ptr %call.val.i2190, i64 48
  store i8 0, ptr %is_offset.i.i2191, align 1
  %call.val23.i2192 = load ptr, ptr %call.i2187, align 8
  %xpv_cur.i.i2193 = getelementptr inbounds nuw i8, ptr %call.val23.i2192, i64 16
  store i64 16, ptr %xpv_cur.i.i2193, align 8
  %call.val24.i2194 = load ptr, ptr %call.i2187, align 8
  %prev_index.i.i.i2195 = getelementptr inbounds nuw i8, ptr %call.val24.i2194, i64 32
  store i64 0, ptr %prev_index.i.i.i2195, align 8
  %call.val25.i2196 = load ptr, ptr %call.i2187, align 8
  %iterator.i.i.i2197 = getelementptr inbounds nuw i8, ptr %call.val25.i2196, i64 40
  store i64 -1, ptr %iterator.i.i.i2197, align 8
  %sv_flags.i2198 = getelementptr inbounds nuw i8, ptr %call.i2187, i64 12
  %4 = load i32, ptr %sv_flags.i2198, align 4
  %or.i2199 = or i32 %4, 134283264
  store i32 %or.i2199, ptr %sv_flags.i2198, align 4
  store ptr %call.i2187, ptr @PL_Latin1, align 8
  %call.i2200 = tail call ptr @Perl_newSV_type(i32 noundef 4) #9
  %sv_u.i2201 = getelementptr inbounds nuw i8, ptr %call.i2200, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @UpperLatin1_invlist, i64 24), ptr %sv_u.i2201, align 8
  %5 = load ptr, ptr %call.i2200, align 8
  %xpv_len_u.i2202 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %xpv_len_u.i2202, align 8
  %call.val.i2203 = load ptr, ptr %call.i2200, align 8
  %is_offset.i.i2204 = getelementptr inbounds nuw i8, ptr %call.val.i2203, i64 48
  store i8 1, ptr %is_offset.i.i2204, align 1
  %call.val23.i2205 = load ptr, ptr %call.i2200, align 8
  %xpv_cur.i.i2206 = getelementptr inbounds nuw i8, ptr %call.val23.i2205, i64 16
  store i64 24, ptr %xpv_cur.i.i2206, align 8
  %call.val24.i2207 = load ptr, ptr %call.i2200, align 8
  %prev_index.i.i.i2208 = getelementptr inbounds nuw i8, ptr %call.val24.i2207, i64 32
  store i64 0, ptr %prev_index.i.i.i2208, align 8
  %call.val25.i2209 = load ptr, ptr %call.i2200, align 8
  %iterator.i.i.i2210 = getelementptr inbounds nuw i8, ptr %call.val25.i2209, i64 40
  store i64 -1, ptr %iterator.i.i.i2210, align 8
  %sv_flags.i2211 = getelementptr inbounds nuw i8, ptr %call.i2200, i64 12
  %6 = load i32, ptr %sv_flags.i2211, align 4
  %or.i2212 = or i32 %6, 134283264
  store i32 %or.i2212, ptr %sv_flags.i2211, align 4
  store ptr %call.i2200, ptr @PL_UpperLatin1, align 8
  %call.i2213 = tail call ptr @Perl_newSV_type(i32 noundef 4) #9
  %sv_u.i2214 = getelementptr inbounds nuw i8, ptr %call.i2213, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_Perl_Any_Folds_invlist, i64 24), ptr %sv_u.i2214, align 8
  %7 = load ptr, ptr %call.i2213, align 8
  %xpv_len_u.i2215 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 0, ptr %xpv_len_u.i2215, align 8
  %call.val.i2216 = load ptr, ptr %call.i2213, align 8
  %is_offset.i.i2217 = getelementptr inbounds nuw i8, ptr %call.val.i2216, i64 48
  store i8 1, ptr %is_offset.i.i2217, align 1
  %call.val23.i2218 = load ptr, ptr %call.i2213, align 8
  %xpv_cur.i.i2219 = getelementptr inbounds nuw i8, ptr %call.val23.i2218, i64 16
  store i64 1880, ptr %xpv_cur.i.i2219, align 8
  %call.val24.i2220 = load ptr, ptr %call.i2213, align 8
  %prev_index.i.i.i2221 = getelementptr inbounds nuw i8, ptr %call.val24.i2220, i64 32
  store i64 0, ptr %prev_index.i.i.i2221, align 8
  %call.val25.i2222 = load ptr, ptr %call.i2213, align 8
  %iterator.i.i.i2223 = getelementptr inbounds nuw i8, ptr %call.val25.i2222, i64 40
  store i64 -1, ptr %iterator.i.i.i2223, align 8
  %sv_flags.i2224 = getelementptr inbounds nuw i8, ptr %call.i2213, i64 12
  %8 = load i32, ptr %sv_flags.i2224, align 4
  %or.i2225 = or i32 %8, 134283264
  store i32 %or.i2225, ptr %sv_flags.i2224, align 4
  store ptr %call.i2213, ptr @PL_utf8_foldable, align 8
  %call.i2226 = tail call ptr @Perl_newSV_type(i32 noundef 4) #9
  %sv_u.i2227 = getelementptr inbounds nuw i8, ptr %call.i2226, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_Perl_Folds_To_Multi_Char_invlist, i64 24), ptr %sv_u.i2227, align 8
  %9 = load ptr, ptr %call.i2226, align 8
  %xpv_len_u.i2228 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 0, ptr %xpv_len_u.i2228, align 8
  %call.val.i2229 = load ptr, ptr %call.i2226, align 8
  %is_offset.i.i2230 = getelementptr inbounds nuw i8, ptr %call.val.i2229, i64 48
  store i8 1, ptr %is_offset.i.i2230, align 1
  %call.val23.i2231 = load ptr, ptr %call.i2226, align 8
  %xpv_cur.i.i2232 = getelementptr inbounds nuw i8, ptr %call.val23.i2231, i64 16
  store i64 472, ptr %xpv_cur.i.i2232, align 8
  %call.val24.i2233 = load ptr, ptr %call.i2226, align 8
  %prev_index.i.i.i2234 = getelementptr inbounds nuw i8, ptr %call.val24.i2233, i64 32
  store i64 0, ptr %prev_index.i.i.i2234, align 8
  %call.val25.i2235 = load ptr, ptr %call.i2226, align 8
  %iterator.i.i.i2236 = getelementptr inbounds nuw i8, ptr %call.val25.i2235, i64 40
  store i64 -1, ptr %iterator.i.i.i2236, align 8
  %sv_flags.i2237 = getelementptr inbounds nuw i8, ptr %call.i2226, i64 12
  %10 = load i32, ptr %sv_flags.i2237, align 4
  %or.i2238 = or i32 %10, 134283264
  store i32 %or.i2238, ptr %sv_flags.i2237, align 4
  store ptr %call.i2226, ptr @PL_HasMultiCharFold, align 8
  %call.i2239 = tail call ptr @Perl_newSV_type(i32 noundef 4) #9
  %sv_flags.i2240 = getelementptr inbounds nuw i8, ptr %call.i2239, i64 12
  %11 = load i32, ptr %sv_flags.i2240, align 4
  %and.i2241 = and i32 %11, 268435456
  %tobool.not.i = icmp eq i32 %and.i2241, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %cond.true.i

lor.lhs.false.i:                                  ; preds = %if.then
  %12 = load ptr, ptr %call.i2239, align 8
  %xpv_len_u.i2244 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %13 = load i64, ptr %xpv_len_u.i2244, align 8
  %cmp2.i = icmp ult i64 %13, 25
  br i1 %cmp2.i, label %cond.true.i, label %Perl__new_invlist.exit

cond.true.i:                                      ; preds = %lor.lhs.false.i, %if.then
  %call6.i = tail call ptr @Perl_sv_grow(ptr noundef nonnull %call.i2239, i64 noundef 25) #9
  br label %Perl__new_invlist.exit

Perl__new_invlist.exit:                           ; preds = %cond.true.i, %lor.lhs.false.i
  %call.val.i2242 = load ptr, ptr %call.i2239, align 8
  %xpv_cur.i.i2243 = getelementptr inbounds nuw i8, ptr %call.val.i2242, i64 16
  store i64 0, ptr %xpv_cur.i.i2243, align 8
  %call.val19.i = load ptr, ptr %call.i2239, align 8
  %iterator.i.i = getelementptr inbounds nuw i8, ptr %call.val19.i, i64 40
  store i64 -1, ptr %iterator.i.i, align 8
  %call.val18.i = load ptr, ptr %call.i2239, align 8
  %prev_index.i.i = getelementptr inbounds nuw i8, ptr %call.val18.i, i64 32
  store i64 0, ptr %prev_index.i.i, align 8
  store ptr %call.i2239, ptr @PL_InBitmap, align 8
  %call7 = tail call ptr @Perl__add_range_to_invlist(ptr noundef nonnull %call.i2239, i64 noundef 0, i64 noundef 255)
  store ptr %call7, ptr @PL_InBitmap, align 8
  br label %if.end

if.end:                                           ; preds = %Perl__new_invlist.exit, %entry
  %code_blocks = getelementptr inbounds nuw i8, ptr %RExC_state, i64 288
  store ptr null, ptr %code_blocks, align 8
  %num_code_blocks = getelementptr inbounds nuw i8, ptr %RExC_state, i64 296
  store i32 0, ptr %num_code_blocks, align 8
  %tobool8.not = icmp eq ptr %is_bare_re, null
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  store i8 0, ptr %is_bare_re, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %tobool11.not = icmp eq ptr %expr, null
  br i1 %tobool11.not, label %if.end37, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %op_type = getelementptr inbounds nuw i8, ptr %expr, i64 32
  %bf.load = load i16, ptr %op_type, align 8
  %bf.clear = and i16 %bf.load, 511
  switch i16 %bf.clear, label %if.end37 [
    i16 158, label %if.then19
    i16 0, label %land.lhs.true17
  ]

land.lhs.true17:                                  ; preds = %land.lhs.true
  %op_targ = getelementptr inbounds nuw i8, ptr %expr, i64 24
  %14 = load i64, ptr %op_targ, align 8
  %cmp18 = icmp eq i64 %14, 158
  br i1 %cmp18, label %if.then19, label %if.end37

if.then19:                                        ; preds = %land.lhs.true17, %land.lhs.true
  %op_first = getelementptr inbounds nuw i8, ptr %expr, i64 40
  %o.02729 = load ptr, ptr %op_first, align 8
  %tobool20.not2730 = icmp eq ptr %o.02729, null
  br i1 %tobool20.not2730, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then19
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %o.02732 = phi ptr [ %o.0, %for.inc ], [ %o.02729, %for.body.preheader ]
  %ncode.02731 = phi i32 [ %ncode.1, %for.inc ], [ 0, %for.body.preheader ]
  %op_type21 = getelementptr inbounds nuw i8, ptr %o.02732, i64 32
  %bf.load22 = load i16, ptr %op_type21, align 8
  %bf.clear23 = and i16 %bf.load22, 511
  %cmp25 = icmp eq i16 %bf.clear23, 0
  br i1 %cmp25, label %land.lhs.true26, label %for.inc

land.lhs.true26:                                  ; preds = %for.body
  %op_flags = getelementptr inbounds nuw i8, ptr %o.02732, i64 34
  %15 = load i8, ptr %op_flags, align 2
  %.lobit = lshr i8 %15, 7
  %inc = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %ncode.02731, %inc
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true26, %for.body
  %ncode.1 = phi i32 [ %ncode.02731, %for.body ], [ %spec.select, %land.lhs.true26 ]
  %op_sibling = getelementptr inbounds nuw i8, ptr %o.02732, i64 8
  %o.0 = load ptr, ptr %op_sibling, align 8
  %tobool20.not = icmp eq ptr %o.0, null
  br i1 %tobool20.not, label %for.end.loopexit, label %for.body, !llvm.loop !0

for.end.loopexit:                                 ; preds = %for.inc
  %ncode.1.lcssa = phi i32 [ %ncode.1, %for.inc ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then19
  %ncode.0.lcssa = phi i32 [ 0, %if.then19 ], [ %ncode.1.lcssa, %for.end.loopexit ]
  %tobool30.not = icmp eq i32 %ncode.0.lcssa, 0
  br i1 %tobool30.not, label %if.end37, label %if.then31

if.then31:                                        ; preds = %for.end
  store i32 %ncode.0.lcssa, ptr %num_code_blocks, align 8
  %conv33 = sext i32 %ncode.0.lcssa to i64
  %mul = shl nsw i64 %conv33, 5
  %call34 = tail call ptr @Perl_safesysmalloc(i64 noundef %mul) #9
  store ptr %call34, ptr %code_blocks, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %for.end, %land.lhs.true17, %land.lhs.true, %if.end10
  %tobool38.not = icmp eq i32 %pat_count, 0
  br i1 %tobool38.not, label %if.then39, label %if.end98

if.then39:                                        ; preds = %if.end37
  %op_type41 = getelementptr inbounds nuw i8, ptr %expr, i64 32
  %bf.load42 = load i16, ptr %op_type41, align 8
  %bf.clear43 = and i16 %bf.load42, 511
  %cmp45 = icmp eq i16 %bf.clear43, 5
  br i1 %cmp45, label %if.end65, label %if.else

if.else:                                          ; preds = %if.then39
  %op_first48 = getelementptr inbounds nuw i8, ptr %expr, i64 40
  %o40.02733 = load ptr, ptr %op_first48, align 8
  %tobool50.not2734 = icmp eq ptr %o40.02733, null
  br i1 %tobool50.not2734, label %if.end65, label %for.body51.preheader

for.body51.preheader:                             ; preds = %if.else
  br label %for.body51

for.body51:                                       ; preds = %for.body51, %for.body51.preheader
  %o40.02736 = phi ptr [ %o40.0, %for.body51 ], [ %o40.02733, %for.body51.preheader ]
  %n.02735 = phi i32 [ %spec.select2164, %for.body51 ], [ 0, %for.body51.preheader ]
  %op_type52 = getelementptr inbounds nuw i8, ptr %o40.02736, i64 32
  %bf.load53 = load i16, ptr %op_type52, align 8
  %bf.clear54 = and i16 %bf.load53, 511
  %cmp56 = icmp eq i16 %bf.clear54, 5
  %inc59 = zext i1 %cmp56 to i32
  %spec.select2164 = add nuw nsw i32 %n.02735, %inc59
  %op_sibling62 = getelementptr inbounds nuw i8, ptr %o40.02736, i64 8
  %o40.0 = load ptr, ptr %op_sibling62, align 8
  %tobool50.not = icmp eq ptr %o40.0, null
  br i1 %tobool50.not, label %if.end65.loopexit, label %for.body51, !llvm.loop !2

if.end65.loopexit:                                ; preds = %for.body51
  %spec.select2164.lcssa = phi i32 [ %spec.select2164, %for.body51 ]
  br label %if.end65

if.end65:                                         ; preds = %if.end65.loopexit, %if.else, %if.then39
  %n.2 = phi i32 [ 1, %if.then39 ], [ 0, %if.else ], [ %spec.select2164.lcssa, %if.end65.loopexit ]
  %conv66 = sext i32 %n.2 to i64
  %mul67 = shl nsw i64 %conv66, 3
  %call68 = tail call ptr @Perl_safesysmalloc(i64 noundef %mul67) #9
  tail call void @Perl_save_pushptr(ptr noundef %call68, i32 noundef 10) #9
  %bf.load70 = load i16, ptr %op_type41, align 8
  %bf.clear71 = and i16 %bf.load70, 511
  %cmp73 = icmp eq i16 %bf.clear71, 5
  br i1 %cmp73, label %if.then75, label %if.else76

if.then75:                                        ; preds = %if.end65
  %op_sv = getelementptr inbounds nuw i8, ptr %expr, i64 40
  %16 = load ptr, ptr %op_sv, align 8
  store ptr %16, ptr %call68, align 8
  br label %if.end98

if.else76:                                        ; preds = %if.end65
  %op_first77 = getelementptr inbounds nuw i8, ptr %expr, i64 40
  %o40.12738 = load ptr, ptr %op_first77, align 8
  %tobool79.not2739 = icmp eq ptr %o40.12738, null
  br i1 %tobool79.not2739, label %if.end98, label %for.body80.preheader

for.body80.preheader:                             ; preds = %if.else76
  br label %for.body80

for.body80:                                       ; preds = %for.inc93, %for.body80.preheader
  %o40.12741 = phi ptr [ %o40.1, %for.inc93 ], [ %o40.12738, %for.body80.preheader ]
  %n.32740 = phi i32 [ %n.4, %for.inc93 ], [ 0, %for.body80.preheader ]
  %op_type81 = getelementptr inbounds nuw i8, ptr %o40.12741, i64 32
  %bf.load82 = load i16, ptr %op_type81, align 8
  %bf.clear83 = and i16 %bf.load82, 511
  %cmp85 = icmp eq i16 %bf.clear83, 5
  br i1 %cmp85, label %if.then87, label %for.inc93

if.then87:                                        ; preds = %for.body80
  %op_sv88 = getelementptr inbounds nuw i8, ptr %o40.12741, i64 40
  %17 = load ptr, ptr %op_sv88, align 8
  %inc89 = add nsw i32 %n.32740, 1
  %idxprom90 = sext i32 %n.32740 to i64
  %arrayidx91 = getelementptr inbounds ptr, ptr %call68, i64 %idxprom90
  store ptr %17, ptr %arrayidx91, align 8
  br label %for.inc93

for.inc93:                                        ; preds = %if.then87, %for.body80
  %n.4 = phi i32 [ %inc89, %if.then87 ], [ %n.32740, %for.body80 ]
  %op_sibling94 = getelementptr inbounds nuw i8, ptr %o40.12741, i64 8
  %o40.1 = load ptr, ptr %op_sibling94, align 8
  %tobool79.not = icmp eq ptr %o40.1, null
  br i1 %tobool79.not, label %if.end98.loopexit, label %for.body80, !llvm.loop !3

if.end98.loopexit:                                ; preds = %for.inc93
  br label %if.end98

if.end98:                                         ; preds = %if.end98.loopexit, %if.else76, %if.then75, %if.end37
  %new_patternp.0 = phi ptr [ %patternp, %if.end37 ], [ %call68, %if.then75 ], [ %call68, %if.else76 ], [ %call68, %if.end98.loopexit ]
  %pat_count.addr.0 = phi i32 [ %pat_count, %if.end37 ], [ %n.2, %if.then75 ], [ %n.2, %if.else76 ], [ %n.2, %if.end98.loopexit ]
  %18 = load i32, ptr %num_code_blocks, align 8
  %tobool100.not = icmp eq i32 %18, 0
  br i1 %tobool100.not, label %if.end112, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %if.end98
  %op_type102 = getelementptr inbounds nuw i8, ptr %expr, i64 32
  %bf.load103 = load i16, ptr %op_type102, align 8
  %bf.clear104 = and i16 %bf.load103, 511
  %cmp106.not = icmp eq i16 %bf.clear104, 5
  br i1 %cmp106.not, label %if.end112, label %if.then108

if.then108:                                       ; preds = %land.lhs.true101
  %op_first109 = getelementptr inbounds nuw i8, ptr %expr, i64 40
  %19 = load ptr, ptr %op_first109, align 8
  %op_sibling110 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %20 = load ptr, ptr %op_sibling110, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %land.lhs.true101, %if.end98
  %expr.addr.0 = phi ptr [ %20, %if.then108 ], [ %expr, %land.lhs.true101 ], [ %expr, %if.end98 ]
  %call113 = call fastcc ptr @S_concat_pat(ptr noundef %RExC_state, ptr noundef null, ptr noundef %new_patternp.0, i32 noundef %pat_count.addr.0, ptr noundef %expr.addr.0, ptr noundef %recompile, ptr noundef null)
  %sv_flags = getelementptr inbounds nuw i8, ptr %call113, i64 12
  %21 = load i32, ptr %sv_flags, align 4
  %and114 = and i32 %21, 2048
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end117, label %if.then116

if.then116:                                       ; preds = %if.end112
  %sv_u = getelementptr inbounds nuw i8, ptr %call113, i64 16
  %22 = load ptr, ptr %sv_u, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.end112
  %re.0 = phi ptr [ %22, %if.then116 ], [ %call113, %if.end112 ]
  %sv_flags118 = getelementptr inbounds nuw i8, ptr %re.0, i64 12
  %23 = load i32, ptr %sv_flags118, align 4
  %and119 = and i32 %23, 255
  %cmp120.not = icmp eq i32 %and119, 8
  br i1 %cmp120.not, label %if.then122, label %cleanup.cont

if.then122:                                       ; preds = %if.end117
  br i1 %tobool8.not, label %S_SvREFCNT_inc.exit, label %if.then124

if.then124:                                       ; preds = %if.then122
  store i8 1, ptr %is_bare_re, align 1
  br label %S_SvREFCNT_inc.exit

S_SvREFCNT_inc.exit:                              ; preds = %if.then124, %if.then122
  %sv_refcnt.i = getelementptr inbounds nuw i8, ptr %re.0, i64 8
  %24 = load i32, ptr %sv_refcnt.i, align 8
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %sv_refcnt.i, align 8
  %25 = load ptr, ptr %code_blocks, align 8
  tail call void @Perl_safesysfree(ptr noundef %25) #9
  br label %cleanup1635

cleanup.cont:                                     ; preds = %if.end117
  %26 = load i32, ptr %sv_flags, align 4
  %and130 = and i32 %26, 2098176
  %cmp131 = icmp eq i32 %and130, 1024
  br i1 %cmp131, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cleanup.cont
  %27 = load ptr, ptr %call113, align 8
  %xpv_cur = getelementptr inbounds nuw i8, ptr %27, i64 16
  %28 = load i64, ptr %xpv_cur, align 8
  store i64 %28, ptr %plen, align 8
  %sv_u133 = getelementptr inbounds nuw i8, ptr %call113, i64 16
  %29 = load ptr, ptr %sv_u133, align 8
  br label %cond.end

cond.false:                                       ; preds = %cleanup.cont
  %call134 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %call113, ptr noundef nonnull %plen, i32 noundef 0) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %29, %cond.true ], [ %call134, %cond.false ]
  %op_comp = getelementptr inbounds nuw i8, ptr %eng, i64 88
  %30 = load ptr, ptr %op_comp, align 8
  %tobool135.not = icmp eq ptr %30, null
  br i1 %tobool135.not, label %if.then136, label %if.end177

if.then136:                                       ; preds = %cond.end
  %31 = load i32, ptr %sv_flags, align 4
  %and138 = and i32 %31, 536870912
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %lor.lhs.false143, label %land.lhs.true140

land.lhs.true140:                                 ; preds = %if.then136
  %32 = load ptr, ptr @PL_curcop, align 8
  %cop_hints = getelementptr inbounds nuw i8, ptr %32, i64 56
  %33 = load i32, ptr %cop_hints, align 8
  %and141 = and i32 %33, 8
  %and145 = and i32 %31, 2097152
  %34 = or disjoint i32 %and141, %and145
  %or.cond2615 = icmp eq i32 %34, 0
  br i1 %or.cond2615, label %lor.lhs.false147, label %if.then162

lor.lhs.false143:                                 ; preds = %if.then136
  %and145.old = and i32 %31, 2097152
  %tobool146.not.old = icmp eq i32 %and145.old, 0
  br i1 %tobool146.not.old, label %lor.lhs.false147, label %if.then162

lor.lhs.false147:                                 ; preds = %lor.lhs.false143, %land.lhs.true140
  %and149 = and i32 %31, 2048
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end174, label %land.lhs.true151

land.lhs.true151:                                 ; preds = %lor.lhs.false147
  %sv_u152 = getelementptr inbounds nuw i8, ptr %call113, i64 16
  %35 = load ptr, ptr %sv_u152, align 8
  %sv_flags153 = getelementptr inbounds nuw i8, ptr %35, i64 12
  %36 = load i32, ptr %sv_flags153, align 4
  %and154 = and i32 %36, 1048576
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end174, label %land.lhs.true156

land.lhs.true156:                                 ; preds = %land.lhs.true151
  %37 = load ptr, ptr %35, align 8
  %38 = load ptr, ptr %37, align 8
  %sv_flags159 = getelementptr inbounds nuw i8, ptr %38, i64 12
  %39 = load i32, ptr %sv_flags159, align 4
  %and160 = and i32 %39, 268435456
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end174, label %if.then162

if.then162:                                       ; preds = %land.lhs.true156, %lor.lhs.false143, %land.lhs.true140
  %40 = load i64, ptr %plen, align 8
  %41 = load ptr, ptr @PL_curcop, align 8
  %cop_hints163 = getelementptr inbounds nuw i8, ptr %41, i64 56
  %42 = load i32, ptr %cop_hints163, align 8
  %and165 = and i32 %42, 8
  %tobool166.not = icmp eq i32 %and165, 0
  %43 = or disjoint i32 %and138, 524288
  %spec.select2616 = select i1 %tobool166.not, i32 %43, i32 524288
  %call173 = call ptr @Perl_newSVpvn_flags(ptr noundef %cond, i64 noundef %40, i32 noundef %spec.select2616) #9
  br label %if.end174

if.end174:                                        ; preds = %if.then162, %land.lhs.true156, %land.lhs.true151, %lor.lhs.false147
  %pat.0 = phi ptr [ %call173, %if.then162 ], [ %call113, %land.lhs.true156 ], [ %call113, %land.lhs.true151 ], [ %call113, %lor.lhs.false147 ]
  %44 = load ptr, ptr %code_blocks, align 8
  call void @Perl_safesysfree(ptr noundef %44) #9
  %45 = load ptr, ptr %eng, align 8
  %call176 = call ptr %45(ptr noundef %pat.0, i32 noundef %orig_rx_flags) #9
  br label %cleanup1635

if.end177:                                        ; preds = %cond.end
  %46 = load i64, ptr %plen, align 8
  %cmp178 = icmp eq i64 %46, 0
  br i1 %cmp178, label %cond.end189, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %if.end177
  %47 = load ptr, ptr @PL_curcop, align 8
  %cop_hints181 = getelementptr inbounds nuw i8, ptr %47, i64 56
  %48 = load i32, ptr %cop_hints181, align 8
  %and183 = and i32 %48, 8
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %cond.false186, label %cond.end189

cond.false186:                                    ; preds = %lor.lhs.false180
  %49 = load i32, ptr %sv_flags, align 4
  %and188 = and i32 %49, 536870912
  br label %cond.end189

cond.end189:                                      ; preds = %cond.false186, %lor.lhs.false180, %if.end177
  %cond190 = phi i32 [ %and188, %cond.false186 ], [ 0, %lor.lhs.false180 ], [ 0, %if.end177 ]
  %orig_utf8 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 220
  store i32 %cond190, ptr %orig_utf8, align 4
  %utf8 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 216
  store i32 %cond190, ptr %utf8, align 8
  %uni_semantics = getelementptr inbounds nuw i8, ptr %RExC_state, i64 224
  store i32 0, ptr %uni_semantics, align 8
  %contains_locale = getelementptr inbounds nuw i8, ptr %RExC_state, i64 272
  store i32 0, ptr %contains_locale, align 8
  %contains_i = getelementptr inbounds nuw i8, ptr %RExC_state, i64 276
  store i32 0, ptr %contains_i, align 4
  %and191 = lshr i32 %pm_flags, 10
  %and191.lobit = and i32 %and191, 1
  %strict = getelementptr inbounds nuw i8, ptr %RExC_state, i64 332
  store i32 %and191.lobit, ptr %strict, align 4
  %runtime_code_qr = getelementptr inbounds nuw i8, ptr %RExC_state, i64 336
  store ptr null, ptr %runtime_code_qr, align 8
  %frame_head = getelementptr inbounds nuw i8, ptr %RExC_state, i64 312
  store ptr null, ptr %frame_head, align 8
  %frame_last = getelementptr inbounds nuw i8, ptr %RExC_state, i64 320
  store ptr null, ptr %frame_last, align 8
  %frame_count = getelementptr inbounds nuw i8, ptr %RExC_state, i64 328
  store i32 0, ptr %frame_count, align 8
  %tobool195.not = icmp sgt i32 %pm_flags, -1
  %tobool205 = icmp eq ptr %old_re, null
  %sv_flags208 = getelementptr inbounds nuw i8, ptr %old_re, i64 12
  %50 = getelementptr i8, ptr %old_re, i64 16
  %and225 = and i32 %orig_rx_flags, 4095
  %and265 = and i32 %orig_rx_flags, 4
  %tobool266.not = icmp eq i32 %and265, 0
  %51 = and i32 %orig_rx_flags, 896
  %cmp273 = icmp eq i32 %51, 0
  %and.i2248 = and i32 %orig_rx_flags, -897
  %or.i2249 = or disjoint i32 %and.i2248, 256
  %precomp = getelementptr inbounds nuw i8, ptr %RExC_state, i64 8
  %pm_flags278 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 4
  %precomp.le2742 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 8
  %precomp.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 8
  %sawback = getelementptr inbounds nuw i8, ptr %RExC_state, i64 156
  %seen = getelementptr inbounds nuw i8, ptr %RExC_state, i64 160
  %maxlen = getelementptr inbounds nuw i8, ptr %RExC_state, i64 304
  %in_lookbehind = getelementptr inbounds nuw i8, ptr %RExC_state, i64 268
  %seen_zerolen = getelementptr inbounds nuw i8, ptr %RExC_state, i64 188
  %extralen = getelementptr inbounds nuw i8, ptr %RExC_state, i64 184
  %override_recoding = getelementptr inbounds nuw i8, ptr %RExC_state, i64 280
  %in_multi_char_class = getelementptr inbounds nuw i8, ptr %RExC_state, i64 284
  %parse = getelementptr inbounds nuw i8, ptr %RExC_state, i64 56
  %start = getelementptr inbounds nuw i8, ptr %RExC_state, i64 40
  %end = getelementptr inbounds nuw i8, ptr %RExC_state, i64 48
  %naughty = getelementptr inbounds nuw i8, ptr %RExC_state, i64 152
  %npar = getelementptr inbounds nuw i8, ptr %RExC_state, i64 176
  %nestroot = getelementptr inbounds nuw i8, ptr %RExC_state, i64 180
  %size = getelementptr inbounds nuw i8, ptr %RExC_state, i64 168
  %emit_dummy = getelementptr inbounds nuw i8, ptr %RExC_state, i64 96
  %emit = getelementptr inbounds nuw i8, ptr %RExC_state, i64 88
  %whilem_seen = getelementptr inbounds nuw i8, ptr %RExC_state, i64 64
  %open_parens = getelementptr inbounds nuw i8, ptr %RExC_state, i64 192
  %close_parens = getelementptr inbounds nuw i8, ptr %RExC_state, i64 200
  %opend = getelementptr inbounds nuw i8, ptr %RExC_state, i64 208
  %paren_names = getelementptr inbounds nuw i8, ptr %RExC_state, i64 232
  %recurse = getelementptr inbounds nuw i8, ptr %RExC_state, i64 240
  %study_chunk_recursed = getelementptr inbounds nuw i8, ptr %RExC_state, i64 256
  %study_chunk_recursed_bytes = getelementptr inbounds nuw i8, ptr %RExC_state, i64 264
  %recurse_count = getelementptr inbounds nuw i8, ptr %RExC_state, i64 248
  %code_index = getelementptr inbounds nuw i8, ptr %RExC_state, i64 300
  br label %redo_first_pass.outer

redo_first_pass.outer:                            ; preds = %S_pat_upgrade_to_utf8.exit2335, %cond.end189
  %exp.0.ph = phi ptr [ %call.i2287, %S_pat_upgrade_to_utf8.exit2335 ], [ %cond, %cond.end189 ]
  %runtime_code.0.ph = phi i8 [ %runtime_code.12803, %S_pat_upgrade_to_utf8.exit2335 ], [ 0, %cond.end189 ]
  %code_blocksv.0.ph = phi ptr [ %code_blocksv.1, %S_pat_upgrade_to_utf8.exit2335 ], [ null, %cond.end189 ]
  br label %redo_first_pass

redo_first_pass:                                  ; preds = %S_pat_upgrade_to_utf8.exit, %redo_first_pass.outer
  %exp.0 = phi ptr [ %call.i2266, %S_pat_upgrade_to_utf8.exit ], [ %exp.0.ph, %redo_first_pass.outer ]
  %runtime_code.0 = phi i8 [ %runtime_code.1, %S_pat_upgrade_to_utf8.exit ], [ %runtime_code.0.ph, %redo_first_pass.outer ]
  br i1 %tobool195.not, label %lor.lhs.false196, label %if.then202

lor.lhs.false196:                                 ; preds = %redo_first_pass
  %52 = load ptr, ptr @PL_curcop, align 8
  %cmp197 = icmp eq ptr %52, @PL_compiling
  br i1 %cmp197, label %land.lhs.true199, label %if.end204

land.lhs.true199:                                 ; preds = %lor.lhs.false196
  %53 = load i32, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  %and200 = and i32 %53, 2097152
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %if.end204, label %if.then202

if.then202:                                       ; preds = %land.lhs.true199, %redo_first_pass
  %54 = load i64, ptr %plen, align 8
  %RExC_state.val = load ptr, ptr %code_blocks, align 8
  %RExC_state.val2186 = load i32, ptr %num_code_blocks, align 8
  %cmp3.not.i = icmp eq i64 %54, 0
  br i1 %cmp3.not.i, label %if.end204, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then202
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.i.preheader
  %s.05.i = phi i64 [ %inc41.i, %for.inc.i ], [ 0, %for.body.i.preheader ]
  %n.04.i = phi i32 [ %n.1.i, %for.inc.i ], [ 0, %for.body.i.preheader ]
  %cmp1.i = icmp slt i32 %n.04.i, %RExC_state.val2186
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %idxprom.i = sext i32 %n.04.i to i64
  %arrayidx.i = getelementptr inbounds %struct.reg_code_block, ptr %RExC_state.val, i64 %idxprom.i
  %55 = load i64, ptr %arrayidx.i, align 8
  %cmp2.i2245 = icmp eq i64 %s.05.i, %55
  br i1 %cmp2.i2245, label %if.then.i2246, label %if.end.i

if.then.i2246:                                    ; preds = %land.lhs.true.i
  %end.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 8
  %56 = load i64, ptr %end.i, align 8
  %inc.i2247 = add nsw i32 %n.04.i, 1
  br label %for.inc.i

if.end.i:                                         ; preds = %land.lhs.true.i, %for.body.i
  %arrayidx6.i = getelementptr inbounds nuw i8, ptr %exp.0, i64 %s.05.i
  %57 = load i8, ptr %arrayidx6.i, align 1
  %cmp7.i = icmp eq i8 %57, 40
  br i1 %cmp7.i, label %land.lhs.true9.i, label %for.inc.i

land.lhs.true9.i:                                 ; preds = %if.end.i
  %add.i = add i64 %s.05.i, 2
  %cmp10.not.i = icmp ugt i64 %add.i, %54
  br i1 %cmp10.not.i, label %for.inc.i, label %land.lhs.true12.i

land.lhs.true12.i:                                ; preds = %land.lhs.true9.i
  %arrayidx14.i = getelementptr i8, ptr %arrayidx6.i, i64 1
  %58 = load i8, ptr %arrayidx14.i, align 1
  %cmp16.i = icmp eq i8 %58, 63
  br i1 %cmp16.i, label %land.lhs.true18.i, label %for.inc.i

land.lhs.true18.i:                                ; preds = %land.lhs.true12.i
  %arrayidx20.i = getelementptr inbounds nuw i8, ptr %exp.0, i64 %add.i
  %59 = load i8, ptr %arrayidx20.i, align 1
  switch i8 %59, label %for.inc.i [
    i8 123, label %if.end204.loopexit
    i8 63, label %land.lhs.true33.i
  ]

land.lhs.true33.i:                                ; preds = %land.lhs.true18.i
  %arrayidx35.i = getelementptr i8, ptr %arrayidx6.i, i64 3
  %60 = load i8, ptr %arrayidx35.i, align 1
  %cmp37.i = icmp eq i8 %60, 123
  br i1 %cmp37.i, label %if.end204.loopexit, label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true33.i, %land.lhs.true18.i, %land.lhs.true12.i, %land.lhs.true9.i, %if.end.i, %if.then.i2246
  %n.1.i = phi i32 [ %inc.i2247, %if.then.i2246 ], [ %n.04.i, %land.lhs.true33.i ], [ %n.04.i, %land.lhs.true12.i ], [ %n.04.i, %land.lhs.true9.i ], [ %n.04.i, %if.end.i ], [ %n.04.i, %land.lhs.true18.i ]
  %s.1.i = phi i64 [ %56, %if.then.i2246 ], [ %s.05.i, %land.lhs.true33.i ], [ %s.05.i, %land.lhs.true12.i ], [ %s.05.i, %land.lhs.true9.i ], [ %s.05.i, %if.end.i ], [ %s.05.i, %land.lhs.true18.i ]
  %inc41.i = add i64 %s.1.i, 1
  %cmp.i = icmp ult i64 %inc41.i, %54
  br i1 %cmp.i, label %for.body.i, label %if.end204.loopexit, !llvm.loop !4

if.end204.loopexit:                               ; preds = %for.inc.i, %land.lhs.true33.i, %land.lhs.true18.i
  %runtime_code.1.ph = phi i8 [ 0, %for.inc.i ], [ 1, %land.lhs.true33.i ], [ 1, %land.lhs.true18.i ]
  br label %if.end204

if.end204:                                        ; preds = %if.end204.loopexit, %if.then202, %land.lhs.true199, %lor.lhs.false196
  %runtime_code.1 = phi i8 [ %runtime_code.0, %land.lhs.true199 ], [ %runtime_code.0, %lor.lhs.false196 ], [ 0, %if.then202 ], [ %runtime_code.1.ph, %if.end204.loopexit ]
  %61 = load i8, ptr %recompile, align 1, !range !5
  %loadedv = trunc nuw i8 %61 to i1
  %or.cond = select i1 %tobool205, i1 true, i1 %loadedv
  br i1 %or.cond, label %if.end264, label %land.lhs.true207

land.lhs.true207:                                 ; preds = %if.end204
  %62 = load i32, ptr %sv_flags208, align 4
  %63 = load i32, ptr %utf8, align 8
  %tobool213 = icmp ne i32 %63, 0
  %64 = and i32 %62, 536870912
  %65 = icmp eq i32 %64, 0
  %cmp218 = xor i1 %tobool213, %65
  br i1 %cmp218, label %land.lhs.true220, label %if.end264

land.lhs.true220:                                 ; preds = %land.lhs.true207
  %old_re.val2185 = load ptr, ptr %50, align 8
  %compflags = getelementptr inbounds nuw i8, ptr %old_re.val2185, i64 176
  %bf.load222 = load i16, ptr %compflags, align 8
  %bf.lshr = lshr i16 %bf.load222, 4
  %bf.clear223 = and i16 %bf.lshr, 511
  %bf.cast224 = zext nneg i16 %bf.clear223 to i32
  %cmp226 = icmp eq i32 %and225, %bf.cast224
  br i1 %cmp226, label %land.lhs.true228, label %if.end264

land.lhs.true228:                                 ; preds = %land.lhs.true220
  %xpv_len_u = getelementptr inbounds nuw i8, ptr %old_re.val2185, i64 24
  %66 = load ptr, ptr %xpv_len_u, align 8
  %tobool235.not = icmp eq ptr %66, null
  br i1 %tobool235.not, label %if.end264, label %land.lhs.true236

land.lhs.true236:                                 ; preds = %land.lhs.true228
  %67 = load ptr, ptr %old_re, align 8
  %xpv_cur238 = getelementptr inbounds nuw i8, ptr %67, i64 16
  %68 = load i64, ptr %xpv_cur238, align 8
  %bf.clear242 = and i16 %bf.load222, 15
  %69 = xor i16 %bf.clear242, -1
  %70 = sext i16 %69 to i64
  %sub245 = add i64 %68, %70
  %71 = load i64, ptr %plen, align 8
  %cmp246 = icmp eq i64 %sub245, %71
  br i1 %cmp246, label %land.lhs.true248, label %if.end264

land.lhs.true248:                                 ; preds = %land.lhs.true236
  %idx.ext256 = zext nneg i16 %bf.clear242 to i64
  %add.ptr257 = getelementptr inbounds nuw i8, ptr %66, i64 %idx.ext256
  %bcmp = call i32 @bcmp(ptr %add.ptr257, ptr %exp.0, i64 %71)
  %tobool259 = icmp ne i32 %bcmp, 0
  %loadedv261 = trunc nuw i8 %runtime_code.1 to i1
  %or.cond1660 = select i1 %tobool259, i1 true, i1 %loadedv261
  br i1 %or.cond1660, label %if.end264, label %if.then262

if.then262:                                       ; preds = %land.lhs.true248
  %72 = load ptr, ptr %code_blocks, align 8
  call void @Perl_safesysfree(ptr noundef %72) #9
  br label %cleanup1635

if.end264:                                        ; preds = %land.lhs.true248, %land.lhs.true236, %land.lhs.true228, %land.lhs.true220, %land.lhs.true207, %if.end204
  br i1 %tobool266.not, label %if.end269, label %if.then267

if.then267:                                       ; preds = %if.end264
  store i32 1, ptr %contains_i, align 4
  br label %if.end269

if.end269:                                        ; preds = %if.then267, %if.end264
  %73 = load i32, ptr %utf8, align 8
  %tobool271 = icmp ne i32 %73, 0
  %or.cond1661 = and i1 %cmp273, %tobool271
  %rx_flags.0 = select i1 %or.cond1661, i32 %or.i2249, i32 %orig_rx_flags
  store ptr %exp.0, ptr %precomp, align 8
  store i32 %rx_flags.0, ptr %RExC_state, align 8
  store i32 %pm_flags, ptr %pm_flags278, align 4
  %loadedv279 = trunc nuw i8 %runtime_code.1 to i1
  br i1 %loadedv279, label %if.then280, label %if.end292.loopexit

if.then280:                                       ; preds = %if.end269
  %74 = load i8, ptr @PL_tainting, align 1, !range !5, !noundef !6
  %loadedv281 = trunc nuw i8 %74 to i1
  %75 = load i8, ptr @PL_tainted, align 1, !range !5
  %loadedv284 = trunc nuw i8 %75 to i1
  %or.cond1662 = select i1 %loadedv281, i1 %loadedv284, i1 false
  br i1 %or.cond1662, label %if.then286, label %if.end287

if.then286:                                       ; preds = %if.then280
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.180) #9
  br label %if.end287

if.end287:                                        ; preds = %if.then286, %if.then280
  %76 = load i64, ptr %plen, align 8
  %77 = load ptr, ptr %runtime_code_qr, align 8
  %tobool.not.i2250 = icmp eq ptr %77, null
  br i1 %tobool.not.i2250, label %if.else.i, label %if.then.i2251

if.then.i2251:                                    ; preds = %if.end287
  store ptr null, ptr %runtime_code_qr, align 8
  br label %if.end199.i

if.else.i:                                        ; preds = %if.end287
  %78 = trunc i64 %76 to i32
  %conv.i = add i32 %78, 6
  %79 = load ptr, ptr @PL_stack_sp, align 8
  %cmp452.not.i = icmp eq i64 %76, 0
  br i1 %cmp452.not.i, label %for.end.i, label %for.body.i2252.preheader

for.body.i2252.preheader:                         ; preds = %if.else.i
  br label %for.body.i2252

for.body.i2252:                                   ; preds = %for.inc.i2255, %for.body.i2252.preheader
  %s.0454.i = phi i64 [ %inc12.i, %for.inc.i2255 ], [ 0, %for.body.i2252.preheader ]
  %newlen.0453.i = phi i32 [ %newlen.1.i, %for.inc.i2255 ], [ %conv.i, %for.body.i2252.preheader ]
  %arrayidx.i2253 = getelementptr inbounds nuw i8, ptr %exp.0, i64 %s.0454.i
  %80 = load i8, ptr %arrayidx.i2253, align 1
  switch i8 %80, label %for.inc.i2255 [
    i8 39, label %if.then11.i
    i8 92, label %if.then11.i
  ]

if.then11.i:                                      ; preds = %for.body.i2252, %for.body.i2252
  %inc.i2254 = add nsw i32 %newlen.0453.i, 1
  br label %for.inc.i2255

for.inc.i2255:                                    ; preds = %if.then11.i, %for.body.i2252
  %newlen.1.i = phi i32 [ %inc.i2254, %if.then11.i ], [ %newlen.0453.i, %for.body.i2252 ]
  %inc12.i = add nuw i64 %s.0454.i, 1
  %exitcond.not.i = icmp eq i64 %inc12.i, %76
  br i1 %exitcond.not.i, label %for.end.i.loopexit, label %for.body.i2252, !llvm.loop !7

for.end.i.loopexit:                               ; preds = %for.inc.i2255
  %newlen.1.i.lcssa = phi i32 [ %newlen.1.i, %for.inc.i2255 ]
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %if.else.i
  %newlen.0.lcssa.i = phi i32 [ %conv.i, %if.else.i ], [ %newlen.1.i.lcssa, %for.end.i.loopexit ]
  %conv13.i = sext i32 %newlen.0.lcssa.i to i64
  %call.i2256 = call ptr @Perl_safesysmalloc(i64 noundef %conv13.i) #9
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %call.i2256, i64 1
  store i8 113, ptr %call.i2256, align 1
  %incdec.ptr14.i = getelementptr inbounds nuw i8, ptr %call.i2256, i64 2
  store i8 114, ptr %incdec.ptr.i, align 1
  %incdec.ptr15.i = getelementptr inbounds nuw i8, ptr %call.i2256, i64 3
  store i8 39, ptr %incdec.ptr14.i, align 1
  br i1 %cmp452.not.i, label %for.end51.i, label %for.body19.i.preheader

for.body19.i.preheader:                           ; preds = %for.end.i
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.inc49.i, %for.body19.i.preheader
  %n.0465.i = phi i32 [ %n.1.i2258, %for.inc49.i ], [ 0, %for.body19.i.preheader ]
  %s.1464.i = phi i64 [ %s.3.i, %for.inc49.i ], [ 0, %for.body19.i.preheader ]
  %p.0463.i = phi ptr [ %p.3.i, %for.inc49.i ], [ %incdec.ptr15.i, %for.body19.i.preheader ]
  %81 = load i32, ptr %num_code_blocks, align 8
  %cmp20.i = icmp slt i32 %n.0465.i, %81
  br i1 %cmp20.i, label %land.lhs.true.i2262, label %if.end34.i

land.lhs.true.i2262:                              ; preds = %for.body19.i
  %82 = load ptr, ptr %code_blocks, align 8
  %idxprom.i2263 = sext i32 %n.0465.i to i64
  %arrayidx22.i = getelementptr inbounds %struct.reg_code_block, ptr %82, i64 %idxprom.i2263
  %83 = load i64, ptr %arrayidx22.i, align 8
  %cmp23.i = icmp eq i64 %s.1464.i, %83
  br i1 %cmp23.i, label %while.cond.preheader.i, label %if.end34.i

while.cond.preheader.i:                           ; preds = %land.lhs.true.i2262
  %end456.i = getelementptr inbounds nuw i8, ptr %arrayidx22.i, i64 8
  %84 = load i64, ptr %end456.i, align 8
  %cmp29.not457.i = icmp ugt i64 %s.1464.i, %84
  br i1 %cmp29.not457.i, label %while.end.i, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.i.preheader
  %s.2459.i = phi i64 [ %inc32.i, %while.body.i ], [ %s.1464.i, %while.body.i.preheader ]
  %p.1458.i = phi ptr [ %incdec.ptr31.i, %while.body.i ], [ %p.0463.i, %while.body.i.preheader ]
  %incdec.ptr31.i = getelementptr inbounds nuw i8, ptr %p.1458.i, i64 1
  store i8 95, ptr %p.1458.i, align 1
  %inc32.i = add i64 %s.2459.i, 1
  %85 = load ptr, ptr %code_blocks, align 8
  %arrayidx28.i = getelementptr inbounds %struct.reg_code_block, ptr %85, i64 %idxprom.i2263
  %end.i2264 = getelementptr inbounds nuw i8, ptr %arrayidx28.i, i64 8
  %86 = load i64, ptr %end.i2264, align 8
  %cmp29.not.i = icmp ugt i64 %inc32.i, %86
  br i1 %cmp29.not.i, label %while.end.i.loopexit, label %while.body.i, !llvm.loop !8

while.end.i.loopexit:                             ; preds = %while.body.i
  %incdec.ptr31.i.lcssa = phi ptr [ %incdec.ptr31.i, %while.body.i ]
  %inc32.i.lcssa = phi i64 [ %inc32.i, %while.body.i ]
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %while.cond.preheader.i
  %p.1.lcssa.i = phi ptr [ %p.0463.i, %while.cond.preheader.i ], [ %incdec.ptr31.i.lcssa, %while.end.i.loopexit ]
  %s.2.lcssa.i = phi i64 [ %s.1464.i, %while.cond.preheader.i ], [ %inc32.i.lcssa, %while.end.i.loopexit ]
  %inc33.i = add nsw i32 %n.0465.i, 1
  br label %for.inc49.i

if.end34.i:                                       ; preds = %land.lhs.true.i2262, %for.body19.i
  %arrayidx35.i2257 = getelementptr inbounds nuw i8, ptr %exp.0, i64 %s.1464.i
  %87 = load i8, ptr %arrayidx35.i2257, align 1
  switch i8 %87, label %if.end46.i [
    i8 39, label %if.then44.i
    i8 92, label %if.then44.i
  ]

if.then44.i:                                      ; preds = %if.end34.i, %if.end34.i
  %incdec.ptr45.i = getelementptr inbounds nuw i8, ptr %p.0463.i, i64 1
  store i8 92, ptr %p.0463.i, align 1
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then44.i, %if.end34.i
  %p.2.i = phi ptr [ %incdec.ptr45.i, %if.then44.i ], [ %p.0463.i, %if.end34.i ]
  %88 = load i8, ptr %arrayidx35.i2257, align 1
  %incdec.ptr48.i = getelementptr inbounds nuw i8, ptr %p.2.i, i64 1
  store i8 %88, ptr %p.2.i, align 1
  %89 = add nuw i64 %s.1464.i, 1
  br label %for.inc49.i

for.inc49.i:                                      ; preds = %if.end46.i, %while.end.i
  %p.3.i = phi ptr [ %p.1.lcssa.i, %while.end.i ], [ %incdec.ptr48.i, %if.end46.i ]
  %s.3.i = phi i64 [ %s.2.lcssa.i, %while.end.i ], [ %89, %if.end46.i ]
  %n.1.i2258 = phi i32 [ %inc33.i, %while.end.i ], [ %n.0465.i, %if.end46.i ]
  %cmp17.i = icmp ult i64 %s.3.i, %76
  br i1 %cmp17.i, label %for.body19.i, label %for.end51.i.loopexit, !llvm.loop !9

for.end51.i.loopexit:                             ; preds = %for.inc49.i
  %p.3.i.lcssa = phi ptr [ %p.3.i, %for.inc49.i ]
  br label %for.end51.i

for.end51.i:                                      ; preds = %for.end51.i.loopexit, %for.end.i
  %p.0.lcssa.i = phi ptr [ %incdec.ptr15.i, %for.end.i ], [ %p.3.i.lcssa, %for.end51.i.loopexit ]
  %incdec.ptr52.i = getelementptr inbounds nuw i8, ptr %p.0.lcssa.i, i64 1
  store i8 39, ptr %p.0.lcssa.i, align 1
  %90 = load i32, ptr %pm_flags278, align 4
  %and.i2259 = and i32 %90, 8
  %tobool53.not.i = icmp eq i32 %and.i2259, 0
  br i1 %tobool53.not.i, label %if.end56.i, label %if.then54.i

if.then54.i:                                      ; preds = %for.end51.i
  %incdec.ptr55.i = getelementptr inbounds nuw i8, ptr %p.0.lcssa.i, i64 2
  store i8 120, ptr %incdec.ptr52.i, align 1
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %for.end51.i
  %p.4.i = phi ptr [ %incdec.ptr55.i, %if.then54.i ], [ %incdec.ptr52.i, %for.end51.i ]
  %incdec.ptr57.i = getelementptr inbounds nuw i8, ptr %p.4.i, i64 1
  store i8 0, ptr %p.4.i, align 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr57.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call.i2256 to i64
  %91 = xor i64 %sub.ptr.rhs.cast.i, -1
  %sub.i = add i64 %sub.ptr.lhs.cast.i, %91
  %92 = load i32, ptr %utf8, align 8
  %tobool58.not.i = icmp eq i32 %92, 0
  %cond.i = select i1 %tobool58.not.i, i32 0, i32 536870912
  %call59.i = call ptr @Perl_newSVpvn_flags(ptr noundef %call.i2256, i64 noundef %sub.i, i32 noundef %cond.i) #9
  call void @Perl_safesysfree(ptr noundef %call.i2256) #9
  call void @Perl_push_scope() #9
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #9
  %93 = load i64, ptr @PL_tmps_ix, align 8
  store i64 %93, ptr @PL_tmps_floor, align 8
  call void @Perl_save_re_context()
  %94 = load ptr, ptr @PL_curstackinfo, align 8
  %si_next.i = getelementptr inbounds nuw i8, ptr %94, i64 24
  %95 = load ptr, ptr %si_next.i, align 8
  %tobool60.not.i = icmp eq ptr %95, null
  br i1 %tobool60.not.i, label %if.then61.i, label %if.end64.i

if.then61.i:                                      ; preds = %if.end56.i
  %call62.i = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #9
  %96 = load ptr, ptr @PL_curstackinfo, align 8
  %si_prev.i = getelementptr inbounds nuw i8, ptr %call62.i, i64 16
  store ptr %96, ptr %si_prev.i, align 8
  %si_next63.i = getelementptr inbounds nuw i8, ptr %96, i64 24
  store ptr %call62.i, ptr %si_next63.i, align 8
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then61.i, %if.end56.i
  %next.0.i = phi ptr [ %95, %if.end56.i ], [ %call62.i, %if.then61.i ]
  %si_type.i = getelementptr inbounds nuw i8, ptr %next.0.i, i64 40
  store i32 9, ptr %si_type.i, align 8
  %si_cxix.i = getelementptr inbounds nuw i8, ptr %next.0.i, i64 32
  store i32 -1, ptr %si_cxix.i, align 8
  %97 = load ptr, ptr %next.0.i, align 8
  %98 = load ptr, ptr %97, align 8
  %xav_fill.i = getelementptr inbounds nuw i8, ptr %98, i64 16
  store i64 0, ptr %xav_fill.i, align 8
  %99 = load ptr, ptr @PL_stack_base, align 8
  %sub.ptr.lhs.cast66.i = ptrtoint ptr %79 to i64
  %sub.ptr.rhs.cast67.i = ptrtoint ptr %99 to i64
  %sub.ptr.sub68.i = sub i64 %sub.ptr.lhs.cast66.i, %sub.ptr.rhs.cast67.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub68.i, 3
  %100 = load ptr, ptr @PL_curstack, align 8
  %101 = load ptr, ptr %100, align 8
  %xav_fill70.i = getelementptr inbounds nuw i8, ptr %101, i64 16
  store i64 %sub.ptr.div.i, ptr %xav_fill70.i, align 8
  %102 = load ptr, ptr %next.0.i, align 8
  %sv_u.i2260 = getelementptr inbounds nuw i8, ptr %102, i64 16
  %103 = load ptr, ptr %sv_u.i2260, align 8
  store ptr %103, ptr @PL_stack_base, align 8
  %104 = load ptr, ptr %next.0.i, align 8
  %105 = load ptr, ptr %104, align 8
  %xav_max.i = getelementptr inbounds nuw i8, ptr %105, i64 24
  %106 = load i64, ptr %xav_max.i, align 8
  %add.ptr.i = getelementptr inbounds ptr, ptr %103, i64 %106
  store ptr %add.ptr.i, ptr @PL_stack_max, align 8
  %107 = load ptr, ptr %next.0.i, align 8
  %108 = load ptr, ptr %107, align 8
  %xav_fill76.i = getelementptr inbounds nuw i8, ptr %108, i64 16
  %109 = load i64, ptr %xav_fill76.i, align 8
  %add.ptr77.i = getelementptr inbounds ptr, ptr %103, i64 %109
  store ptr %add.ptr77.i, ptr @PL_stack_sp, align 8
  %110 = load ptr, ptr %next.0.i, align 8
  store ptr %110, ptr @PL_curstack, align 8
  store ptr %next.0.i, ptr @PL_curstackinfo, align 8
  %call81.i = call i32 @Perl_eval_sv(ptr noundef %call59.i, i32 noundef 2050) #9
  %sv_refcnt.i.i = getelementptr inbounds nuw i8, ptr %call59.i, i64 8
  %111 = load i32, ptr %sv_refcnt.i.i, align 8
  %cmp.i.i = icmp ugt i32 %111, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end64.i
  %sub.i.i = add i32 %111, -1
  store i32 %sub.i.i, ptr %sv_refcnt.i.i, align 8
  br label %S_SvREFCNT_dec_NN.exit.i

if.else.i.i:                                      ; preds = %if.end64.i
  call void @Perl_sv_free2(ptr noundef nonnull %call59.i, i32 noundef %111) #9
  br label %S_SvREFCNT_dec_NN.exit.i

S_SvREFCNT_dec_NN.exit.i:                         ; preds = %if.else.i.i, %if.then.i.i
  %112 = load ptr, ptr @PL_stack_sp, align 8
  %incdec.ptr82.i = getelementptr inbounds i8, ptr %112, i64 -8
  %113 = load ptr, ptr %112, align 8
  store ptr %incdec.ptr82.i, ptr @PL_stack_sp, align 8
  %114 = load ptr, ptr @PL_errgv, align 8
  %sv_u83.i = getelementptr inbounds nuw i8, ptr %114, i64 16
  %115 = load ptr, ptr %sv_u83.i, align 8
  %116 = load ptr, ptr %115, align 8
  %tobool85.not.i = icmp eq ptr %116, null
  br i1 %tobool85.not.i, label %cond.false.i, label %cond.end.i

cond.false.i:                                     ; preds = %S_SvREFCNT_dec_NN.exit.i
  %call89.i = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %114, i32 noundef 0) #9
  %sv_u90.i = getelementptr inbounds nuw i8, ptr %call89.i, i64 16
  %117 = load ptr, ptr %sv_u90.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %S_SvREFCNT_dec_NN.exit.i
  %cond93.i = phi ptr [ %117, %cond.false.i ], [ %115, %S_SvREFCNT_dec_NN.exit.i ]
  %118 = load ptr, ptr %cond93.i, align 8
  %sv_flags.i2261 = getelementptr inbounds nuw i8, ptr %118, i64 12
  %119 = load i32, ptr %sv_flags.i2261, align 4
  %and94.i = and i32 %119, 2097152
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %cond.false101.i, label %cond.true98.i

cond.true98.i:                                    ; preds = %cond.end.i
  %call99.i = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %118, i32 noundef 2) #9
  br i1 %call99.i, label %if.then162.i, label %if.end164.i

cond.false101.i:                                  ; preds = %cond.end.i
  %and103.i = and i32 %119, 65280
  %tobool104.not.i = icmp ne i32 %and103.i, 0
  %and107.i = and i32 %119, 255
  %cmp108.i = icmp eq i32 %and107.i, 8
  %or.cond.i = or i1 %tobool104.not.i, %cmp108.i
  %and112.i = and i32 %119, 16777471
  %cmp113.i = icmp eq i32 %and112.i, 16777226
  %or.cond418.i = or i1 %cmp113.i, %or.cond.i
  br i1 %or.cond418.i, label %cond.false116.i, label %if.end164.i

cond.false116.i:                                  ; preds = %cond.false101.i
  %and118.i = and i32 %119, 1024
  %tobool119.not.i = icmp eq i32 %and118.i, 0
  br i1 %tobool119.not.i, label %cond.false136.i, label %cond.true120.i

cond.true120.i:                                   ; preds = %cond.false116.i
  %120 = load ptr, ptr %118, align 8
  %tobool122.not.i = icmp eq ptr %120, null
  br i1 %tobool122.not.i, label %if.end164.i, label %land.lhs.true123.i

land.lhs.true123.i:                               ; preds = %cond.true120.i
  %xpv_cur.i = getelementptr inbounds nuw i8, ptr %120, i64 16
  %121 = load i64, ptr %xpv_cur.i, align 8
  %cmp125.i = icmp ugt i64 %121, 1
  br i1 %cmp125.i, label %if.then162.i, label %lor.lhs.false127.i

lor.lhs.false127.i:                               ; preds = %land.lhs.true123.i
  %tobool130.not.i = icmp eq i64 %121, 0
  br i1 %tobool130.not.i, label %if.end164.i, label %land.lhs.true131.i

land.lhs.true131.i:                               ; preds = %lor.lhs.false127.i
  %sv_u132.i = getelementptr inbounds nuw i8, ptr %118, i64 16
  %122 = load ptr, ptr %sv_u132.i, align 8
  %123 = load i8, ptr %122, align 1
  %cmp134.not.i = icmp eq i8 %123, 48
  br i1 %cmp134.not.i, label %if.end164.i, label %if.then162.i

cond.false136.i:                                  ; preds = %cond.false116.i
  %and138.i = and i32 %119, 768
  %tobool139.not.i = icmp eq i32 %and138.i, 0
  br i1 %tobool139.not.i, label %cond.false159.i, label %cond.true140.i

cond.true140.i:                                   ; preds = %cond.false136.i
  %and142.i = and i32 %119, 256
  %tobool143.not.i = icmp eq i32 %and142.i, 0
  br i1 %tobool143.not.i, label %lor.lhs.false148.i, label %land.lhs.true144.i

land.lhs.true144.i:                               ; preds = %cond.true140.i
  %124 = load ptr, ptr %118, align 8
  %xiv_u.i = getelementptr inbounds nuw i8, ptr %124, i64 32
  %125 = load i64, ptr %xiv_u.i, align 8
  %cmp146.not.i = icmp eq i64 %125, 0
  br i1 %cmp146.not.i, label %lor.lhs.false148.i, label %if.then162.i

lor.lhs.false148.i:                               ; preds = %land.lhs.true144.i, %cond.true140.i
  %and150.i = and i32 %119, 512
  %tobool151.not.i = icmp eq i32 %and150.i, 0
  br i1 %tobool151.not.i, label %if.end164.i, label %land.lhs.true152.i

land.lhs.true152.i:                               ; preds = %lor.lhs.false148.i
  %126 = load ptr, ptr %118, align 8
  %xnv_u.i = getelementptr inbounds nuw i8, ptr %126, i64 40
  %127 = load double, ptr %xnv_u.i, align 8
  %cmp157.i = fcmp une double %127, 0.000000e+00
  br i1 %cmp157.i, label %if.then162.i, label %if.end164.i

cond.false159.i:                                  ; preds = %cond.false136.i
  %call160.i = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %118, i32 noundef 0) #9
  br i1 %call160.i, label %if.then162.i, label %if.end164.i

if.then162.i:                                     ; preds = %cond.false159.i, %land.lhs.true152.i, %land.lhs.true144.i, %land.lhs.true131.i, %land.lhs.true123.i, %cond.true98.i
  %128 = load ptr, ptr %code_blocks, align 8
  call void @Perl_safesysfree(ptr noundef %128) #9
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.208, ptr noundef nonnull %118) #9
  br label %if.end164.i

if.end164.i:                                      ; preds = %if.then162.i, %cond.false159.i, %land.lhs.true152.i, %lor.lhs.false148.i, %land.lhs.true131.i, %lor.lhs.false127.i, %cond.true120.i, %cond.false101.i, %cond.true98.i
  %sv_u165.i = getelementptr inbounds nuw i8, ptr %113, i64 16
  %129 = load ptr, ptr %sv_u165.i, align 8
  %cmp.not.i.i = icmp eq ptr %129, null
  br i1 %cmp.not.i.i, label %S_SvREFCNT_inc.exit.i, label %if.then.i420.i

if.then.i420.i:                                   ; preds = %if.end164.i
  %sv_refcnt.i421.i = getelementptr inbounds nuw i8, ptr %129, i64 8
  %130 = load i32, ptr %sv_refcnt.i421.i, align 8
  %inc.i.i = add i32 %130, 1
  store i32 %inc.i.i, ptr %sv_refcnt.i421.i, align 8
  br label %S_SvREFCNT_inc.exit.i

S_SvREFCNT_inc.exit.i:                            ; preds = %if.then.i420.i, %if.end164.i
  %131 = load ptr, ptr @PL_stack_sp, align 8
  %132 = load ptr, ptr @PL_curstackinfo, align 8
  %si_prev169.i = getelementptr inbounds nuw i8, ptr %132, i64 16
  %133 = load ptr, ptr %si_prev169.i, align 8
  %tobool170.not.i = icmp eq ptr %133, null
  br i1 %tobool170.not.i, label %if.then171.i, label %do.body173.i

if.then171.i:                                     ; preds = %S_SvREFCNT_inc.exit.i
  call void @Perl_croak_popstack() #9
  br label %do.body173.i

do.body173.i:                                     ; preds = %if.then171.i, %S_SvREFCNT_inc.exit.i
  %134 = load ptr, ptr @PL_stack_base, align 8
  %sub.ptr.lhs.cast174.i = ptrtoint ptr %131 to i64
  %sub.ptr.rhs.cast175.i = ptrtoint ptr %134 to i64
  %sub.ptr.sub176.i = sub i64 %sub.ptr.lhs.cast174.i, %sub.ptr.rhs.cast175.i
  %sub.ptr.div177.i = ashr exact i64 %sub.ptr.sub176.i, 3
  %135 = load ptr, ptr @PL_curstack, align 8
  %136 = load ptr, ptr %135, align 8
  %xav_fill179.i = getelementptr inbounds nuw i8, ptr %136, i64 16
  store i64 %sub.ptr.div177.i, ptr %xav_fill179.i, align 8
  %137 = load ptr, ptr %133, align 8
  %sv_u181.i = getelementptr inbounds nuw i8, ptr %137, i64 16
  %138 = load ptr, ptr %sv_u181.i, align 8
  store ptr %138, ptr @PL_stack_base, align 8
  %139 = load ptr, ptr %133, align 8
  %140 = load ptr, ptr %139, align 8
  %xav_max184.i = getelementptr inbounds nuw i8, ptr %140, i64 24
  %141 = load i64, ptr %xav_max184.i, align 8
  %add.ptr185.i = getelementptr inbounds ptr, ptr %138, i64 %141
  store ptr %add.ptr185.i, ptr @PL_stack_max, align 8
  %142 = load ptr, ptr %133, align 8
  %143 = load ptr, ptr %142, align 8
  %xav_fill188.i = getelementptr inbounds nuw i8, ptr %143, i64 16
  %144 = load i64, ptr %xav_fill188.i, align 8
  %add.ptr189.i = getelementptr inbounds ptr, ptr %138, i64 %144
  store ptr %add.ptr189.i, ptr @PL_stack_sp, align 8
  %145 = load ptr, ptr %133, align 8
  store ptr %145, ptr @PL_curstack, align 8
  store ptr %133, ptr @PL_curstackinfo, align 8
  %146 = load i64, ptr @PL_tmps_ix, align 8
  %147 = load i64, ptr @PL_tmps_floor, align 8
  %cmp195.i = icmp sgt i64 %146, %147
  br i1 %cmp195.i, label %if.then197.i, label %if.end198.i

if.then197.i:                                     ; preds = %do.body173.i
  call void @Perl_free_tmps() #9
  br label %if.end198.i

if.end198.i:                                      ; preds = %if.then197.i, %do.body173.i
  call void @Perl_pop_scope() #9
  br label %if.end199.i

if.end199.i:                                      ; preds = %if.end198.i, %if.then.i2251
  %qr.0.i = phi ptr [ %77, %if.then.i2251 ], [ %129, %if.end198.i ]
  %qr.0.fr.i = freeze ptr %qr.0.i
  %148 = load i32, ptr %utf8, align 8
  %tobool201.not.i = icmp eq i32 %148, 0
  br i1 %tobool201.not.i, label %land.lhs.true202.i, label %if.end208.i

land.lhs.true202.i:                               ; preds = %if.end199.i
  %sv_flags203.i = getelementptr inbounds nuw i8, ptr %qr.0.fr.i, i64 12
  %149 = load i32, ptr %sv_flags203.i, align 4
  %and204.i = and i32 %149, 536870912
  %tobool205.not.i = icmp eq i32 %and204.i, 0
  br i1 %tobool205.not.i, label %if.end208.i, label %if.then289

if.end208.i:                                      ; preds = %land.lhs.true202.i, %if.end199.i
  %qr.0.fr.i.lcssa = phi ptr [ %qr.0.fr.i, %land.lhs.true202.i ], [ %qr.0.fr.i, %if.end199.i ]
  %rx_flags.0.lcssa2804 = phi i32 [ %rx_flags.0, %land.lhs.true202.i ], [ %rx_flags.0, %if.end199.i ]
  %runtime_code.1.lcssa2802 = phi i8 [ %runtime_code.1, %land.lhs.true202.i ], [ %runtime_code.1, %if.end199.i ]
  %exp.0.lcssa2797 = phi ptr [ %exp.0, %land.lhs.true202.i ], [ %exp.0, %if.end199.i ]
  %150 = getelementptr i8, ptr %qr.0.fr.i.lcssa, i64 16
  %qr.0.val.i = load ptr, ptr %150, align 8
  %pprivate.i = getelementptr inbounds nuw i8, ptr %qr.0.val.i, i64 104
  %151 = load ptr, ptr %pprivate.i, align 8
  %num_code_blocks210.i = getelementptr inbounds nuw i8, ptr %151, i64 40
  %152 = load i32, ptr %num_code_blocks210.i, align 8
  %tobool211.not.not.i = icmp eq i32 %152, 0
  br i1 %tobool211.not.not.i, label %if.then212.i, label %while.cond220.preheader.i

if.then212.i:                                     ; preds = %if.end208.i
  %sv_refcnt.i422.i = getelementptr inbounds nuw i8, ptr %qr.0.fr.i.lcssa, i64 8
  %153 = load i32, ptr %sv_refcnt.i422.i, align 8
  %cmp.i423.i = icmp ugt i32 %153, 1
  br i1 %cmp.i423.i, label %if.then.i425.i, label %if.else.i424.i

if.then.i425.i:                                   ; preds = %if.then212.i
  %sub.i426.i = add i32 %153, -1
  store i32 %sub.i426.i, ptr %sv_refcnt.i422.i, align 8
  br label %if.end292

if.else.i424.i:                                   ; preds = %if.then212.i
  call void @Perl_sv_free2(ptr noundef nonnull %qr.0.fr.i.lcssa, i32 noundef %153) #9
  br label %if.end292

while.cond220.preheader.i:                        ; preds = %if.end208.i
  %154 = load i32, ptr %num_code_blocks, align 8
  %add216.i = add nsw i32 %154, %152
  %conv217.i = sext i32 %add216.i to i64
  %mul218.i = shl nsw i64 %conv217.i, 5
  %call219.i = call ptr @Perl_safesysmalloc(i64 noundef %mul218.i) #9
  %code_blocks250.i = getelementptr inbounds nuw i8, ptr %151, i64 32
  %sv_refcnt.i430.i = getelementptr inbounds nuw i8, ptr %qr.0.fr.i.lcssa, i64 8
  br label %while.cond220.i

while.cond220.i:                                  ; preds = %cond.end278.i, %while.cond220.preheader.i
  %dst.0.i = phi ptr [ %incdec.ptr281.i, %cond.end278.i ], [ %call219.i, %while.cond220.preheader.i ]
  %i1.0.i = phi i32 [ %i1.1447.i, %cond.end278.i ], [ 0, %while.cond220.preheader.i ]
  %i2.0.i = phi i32 [ %i2.1449.i, %cond.end278.i ], [ 0, %while.cond220.preheader.i ]
  %155 = load i32, ptr %num_code_blocks, align 8
  %cmp222.i = icmp slt i32 %i1.0.i, %155
  br i1 %cmp222.i, label %while.body227.i, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %while.cond220.i
  %156 = load i32, ptr %num_code_blocks210.i, align 8
  %cmp225.i = icmp slt i32 %i2.0.i, %156
  br i1 %cmp225.i, label %while.body227.i, label %cleanup.i

while.body227.i:                                  ; preds = %lor.rhs.i, %while.cond220.i
  %cmp229.i = icmp eq i32 %i1.0.i, %155
  br i1 %cmp229.i, label %if.then231.i, label %if.else236.i

if.then231.i:                                     ; preds = %while.body227.i
  %157 = load ptr, ptr %code_blocks250.i, align 8
  %idxprom234.i = sext i32 %i2.0.i to i64
  %arrayidx235.i = getelementptr inbounds %struct.reg_code_block, ptr %157, i64 %idxprom234.i
  br label %cond.true275.i

if.else236.i:                                     ; preds = %while.body227.i
  %158 = load i32, ptr %num_code_blocks210.i, align 8
  %cmp238.i = icmp eq i32 %i2.0.i, %158
  %159 = load ptr, ptr %code_blocks, align 8
  %idxprom243.i = sext i32 %i1.0.i to i64
  %arrayidx244.i = getelementptr inbounds %struct.reg_code_block, ptr %159, i64 %idxprom243.i
  br i1 %cmp238.i, label %cond.false277.i, label %if.else245.i

if.else245.i:                                     ; preds = %if.else236.i
  %160 = load i64, ptr %arrayidx244.i, align 8
  %161 = load ptr, ptr %code_blocks250.i, align 8
  %idxprom251.i = sext i32 %i2.0.i to i64
  %arrayidx252.i = getelementptr inbounds %struct.reg_code_block, ptr %161, i64 %idxprom251.i
  %162 = load i64, ptr %arrayidx252.i, align 8
  %cmp254.i = icmp ult i64 %160, %162
  br i1 %cmp254.i, label %cond.false277.i, label %cond.true275.i

cond.true275.i:                                   ; preds = %if.else245.i, %if.then231.i
  %src.0.ph.i = phi ptr [ %arrayidx235.i, %if.then231.i ], [ %arrayidx252.i, %if.else245.i ]
  %i2.1.ph.i = add nsw i32 %i2.0.i, 1
  %163 = load i64, ptr %src.0.ph.i, align 8
  store i64 %163, ptr %dst.0.i, align 8
  %end271443.i = getelementptr inbounds nuw i8, ptr %src.0.ph.i, i64 8
  %164 = load i64, ptr %end271443.i, align 8
  %end272444.i = getelementptr inbounds nuw i8, ptr %dst.0.i, i64 8
  store i64 %164, ptr %end272444.i, align 8
  %block445.i = getelementptr inbounds nuw i8, ptr %src.0.ph.i, i64 16
  %165 = load ptr, ptr %block445.i, align 8
  %block273446.i = getelementptr inbounds nuw i8, ptr %dst.0.i, i64 16
  store ptr %165, ptr %block273446.i, align 8
  %166 = load i32, ptr %sv_refcnt.i430.i, align 8
  %inc.i431.i = add i32 %166, 1
  store i32 %inc.i431.i, ptr %sv_refcnt.i430.i, align 8
  br label %cond.end278.i

cond.false277.i:                                  ; preds = %if.else245.i, %if.else236.i
  %i1.1.i = add nsw i32 %i1.0.i, 1
  %167 = load i64, ptr %arrayidx244.i, align 8
  store i64 %167, ptr %dst.0.i, align 8
  %end271.i = getelementptr inbounds nuw i8, ptr %arrayidx244.i, i64 8
  %168 = load i64, ptr %end271.i, align 8
  %end272.i = getelementptr inbounds nuw i8, ptr %dst.0.i, i64 8
  store i64 %168, ptr %end272.i, align 8
  %block.i = getelementptr inbounds nuw i8, ptr %arrayidx244.i, i64 16
  %169 = load ptr, ptr %block.i, align 8
  %block273.i = getelementptr inbounds nuw i8, ptr %dst.0.i, i64 16
  store ptr %169, ptr %block273.i, align 8
  %src_regex.i = getelementptr inbounds nuw i8, ptr %arrayidx244.i, i64 24
  %170 = load ptr, ptr %src_regex.i, align 8
  br label %cond.end278.i

cond.end278.i:                                    ; preds = %cond.false277.i, %cond.true275.i
  %i2.1449.i = phi i32 [ %i2.0.i, %cond.false277.i ], [ %i2.1.ph.i, %cond.true275.i ]
  %i1.1447.i = phi i32 [ %i1.1.i, %cond.false277.i ], [ %i1.0.i, %cond.true275.i ]
  %cond279.i = phi ptr [ %170, %cond.false277.i ], [ %qr.0.fr.i.lcssa, %cond.true275.i ]
  %src_regex280.i = getelementptr inbounds nuw i8, ptr %dst.0.i, i64 24
  store ptr %cond279.i, ptr %src_regex280.i, align 8
  %incdec.ptr281.i = getelementptr inbounds nuw i8, ptr %dst.0.i, i64 32
  br label %while.cond220.i, !llvm.loop !10

cleanup.i:                                        ; preds = %lor.rhs.i
  %.lcssa2809 = phi i32 [ %156, %lor.rhs.i ]
  %.lcssa2808 = phi i32 [ %155, %lor.rhs.i ]
  %add285.i = add nsw i32 %.lcssa2809, %.lcssa2808
  store i32 %add285.i, ptr %num_code_blocks, align 8
  %171 = load ptr, ptr %code_blocks, align 8
  call void @Perl_safesysfree(ptr noundef %171) #9
  store ptr %call219.i, ptr %code_blocks, align 8
  %172 = load i32, ptr %sv_refcnt.i430.i, align 8
  %cmp.i434.i = icmp ugt i32 %172, 1
  br i1 %cmp.i434.i, label %if.then.i436.i, label %if.else.i435.i

if.then.i436.i:                                   ; preds = %cleanup.i
  %sub.i437.i = add i32 %172, -1
  store i32 %sub.i437.i, ptr %sv_refcnt.i430.i, align 8
  br label %if.end292

if.else.i435.i:                                   ; preds = %cleanup.i
  call void @Perl_sv_free2(ptr noundef nonnull %qr.0.fr.i.lcssa, i32 noundef %172) #9
  br label %if.end292

if.then289:                                       ; preds = %land.lhs.true202.i
  store ptr %qr.0.fr.i, ptr %runtime_code_qr, align 8
  %173 = load i32, ptr %num_code_blocks, align 8
  %174 = load i64, ptr %plen, align 8
  %mul.i = shl i64 %174, 1
  %add.i2265 = or disjoint i64 %mul.i, 1
  %call.i2266 = call ptr @Perl_safesysmalloc(i64 noundef %add.i2265) #9
  %175 = load i64, ptr %plen, align 8
  %cmp59.not.i = icmp eq i64 %175, 0
  br i1 %cmp59.not.i, label %S_pat_upgrade_to_utf8.exit, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.then289
  %sub.ptr.rhs.cast.i2268 = ptrtoint ptr %call.i2266 to i64
  %176 = xor i64 %sub.ptr.rhs.cast.i2268, -1
  br label %while.body.i2269

while.body.i2269:                                 ; preds = %if.end26.i, %while.body.lr.ph.i
  %do_end.063.i = phi i1 [ false, %while.body.lr.ph.i ], [ %do_end.1.i, %if.end26.i ]
  %s.062.i = phi i64 [ 0, %while.body.lr.ph.i ], [ %inc27.i, %if.end26.i ]
  %n.061.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %n.1.i2274, %if.end26.i ]
  %d.060.i = phi ptr [ %call.i2266, %while.body.lr.ph.i ], [ %incdec.ptr8.i.i, %if.end26.i ]
  %arrayidx.i2270 = getelementptr inbounds nuw i8, ptr %exp.0, i64 %s.062.i
  %177 = load i8, ptr %arrayidx.i2270, align 1
  %cmp.i.i2271 = icmp sgt i8 %177, -1
  br i1 %cmp.i.i2271, label %S_append_utf8_from_native_byte.exit.i, label %if.else.i.i2272

if.else.i.i2272:                                  ; preds = %while.body.i2269
  %shr.i.i = lshr i8 %177, 6
  %or.i.i = or disjoint i8 %shr.i.i, -64
  %incdec.ptr4.i.i = getelementptr inbounds nuw i8, ptr %d.060.i, i64 1
  store i8 %or.i.i, ptr %d.060.i, align 1
  %178 = and i8 %177, -65
  br label %S_append_utf8_from_native_byte.exit.i

S_append_utf8_from_native_byte.exit.i:            ; preds = %if.else.i.i2272, %while.body.i2269
  %d.1.i = phi ptr [ %d.060.i, %while.body.i2269 ], [ %incdec.ptr4.i.i, %if.else.i.i2272 ]
  %.sink.i.i = phi i8 [ %177, %while.body.i2269 ], [ %178, %if.else.i.i2272 ]
  %incdec.ptr8.i.i = getelementptr inbounds nuw i8, ptr %d.1.i, i64 1
  store i8 %.sink.i.i, ptr %d.1.i, align 1
  %cmp2.i2273 = icmp slt i32 %n.061.i, %173
  br i1 %cmp2.i2273, label %if.then.i2278, label %if.end26.i

if.then.i2278:                                    ; preds = %S_append_utf8_from_native_byte.exit.i
  %179 = load ptr, ptr %code_blocks, align 8
  %idxprom13.i = sext i32 %n.061.i to i64
  %arrayidx14.i2279 = getelementptr inbounds %struct.reg_code_block, ptr %179, i64 %idxprom13.i
  br i1 %do_end.063.i, label %land.lhs.true11.i, label %land.lhs.true.i2280

land.lhs.true.i2280:                              ; preds = %if.then.i2278
  %180 = load i64, ptr %arrayidx14.i2279, align 8
  %cmp4.i = icmp eq i64 %180, %s.062.i
  br i1 %cmp4.i, label %if.then5.i, label %if.end26.i

if.then5.i:                                       ; preds = %land.lhs.true.i2280
  %sub.ptr.lhs.cast.i2281 = ptrtoint ptr %incdec.ptr8.i.i to i64
  %sub.i2282 = add i64 %sub.ptr.lhs.cast.i2281, %176
  store i64 %sub.i2282, ptr %arrayidx14.i2279, align 8
  br label %if.end26.i

land.lhs.true11.i:                                ; preds = %if.then.i2278
  %end.i2283 = getelementptr inbounds nuw i8, ptr %arrayidx14.i2279, i64 8
  %181 = load i64, ptr %end.i2283, align 8
  %cmp15.i = icmp eq i64 %181, %s.062.i
  br i1 %cmp15.i, label %if.then16.i, label %if.end26.i

if.then16.i:                                      ; preds = %land.lhs.true11.i
  %sub.ptr.lhs.cast17.i = ptrtoint ptr %incdec.ptr8.i.i to i64
  %sub20.i = add i64 %sub.ptr.lhs.cast17.i, %176
  store i64 %sub20.i, ptr %end.i2283, align 8
  %inc.i2284 = add nsw i32 %n.061.i, 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then16.i, %land.lhs.true11.i, %if.then5.i, %land.lhs.true.i2280, %S_append_utf8_from_native_byte.exit.i
  %n.1.i2274 = phi i32 [ %inc.i2284, %if.then16.i ], [ %n.061.i, %land.lhs.true11.i ], [ %n.061.i, %if.then5.i ], [ %n.061.i, %S_append_utf8_from_native_byte.exit.i ], [ %n.061.i, %land.lhs.true.i2280 ]
  %do_end.1.i = phi i1 [ false, %if.then16.i ], [ true, %land.lhs.true11.i ], [ true, %if.then5.i ], [ %do_end.063.i, %S_append_utf8_from_native_byte.exit.i ], [ false, %land.lhs.true.i2280 ]
  %inc27.i = add nuw i64 %s.062.i, 1
  %182 = load i64, ptr %plen, align 8
  %cmp.i2275 = icmp ult i64 %inc27.i, %182
  br i1 %cmp.i2275, label %while.body.i2269, label %S_pat_upgrade_to_utf8.exit.loopexit, !llvm.loop !11

S_pat_upgrade_to_utf8.exit.loopexit:              ; preds = %if.end26.i
  %incdec.ptr8.i.i.lcssa = phi ptr [ %incdec.ptr8.i.i, %if.end26.i ]
  br label %S_pat_upgrade_to_utf8.exit

S_pat_upgrade_to_utf8.exit:                       ; preds = %S_pat_upgrade_to_utf8.exit.loopexit, %if.then289
  %d.0.lcssa.i = phi ptr [ %call.i2266, %if.then289 ], [ %incdec.ptr8.i.i.lcssa, %S_pat_upgrade_to_utf8.exit.loopexit ]
  store i8 0, ptr %d.0.lcssa.i, align 1
  %sub.ptr.lhs.cast28.i = ptrtoint ptr %d.0.lcssa.i to i64
  %sub.ptr.rhs.cast29.i = ptrtoint ptr %call.i2266 to i64
  %sub.ptr.sub30.i = sub i64 %sub.ptr.lhs.cast28.i, %sub.ptr.rhs.cast29.i
  store i64 %sub.ptr.sub30.i, ptr %plen, align 8
  call void @Perl_save_pushptr(ptr noundef %call.i2266, i32 noundef 10) #9
  store i32 1, ptr %utf8, align 8
  store i32 1, ptr %orig_utf8, align 4
  br label %redo_first_pass

if.end292.loopexit:                               ; preds = %if.end269
  %rx_flags.0.lcssa = phi i32 [ %rx_flags.0, %if.end269 ]
  %runtime_code.1.lcssa2801 = phi i8 [ %runtime_code.1, %if.end269 ]
  %exp.0.lcssa2796 = phi ptr [ %exp.0, %if.end269 ]
  br label %if.end292

if.end292:                                        ; preds = %if.end292.loopexit, %if.else.i435.i, %if.then.i436.i, %if.else.i424.i, %if.then.i425.i
  %rx_flags.02805 = phi i32 [ %rx_flags.0.lcssa2804, %if.then.i425.i ], [ %rx_flags.0.lcssa2804, %if.else.i424.i ], [ %rx_flags.0.lcssa2804, %if.else.i435.i ], [ %rx_flags.0.lcssa2804, %if.then.i436.i ], [ %rx_flags.0.lcssa, %if.end292.loopexit ]
  %runtime_code.12803 = phi i8 [ %runtime_code.1.lcssa2802, %if.then.i425.i ], [ %runtime_code.1.lcssa2802, %if.else.i424.i ], [ %runtime_code.1.lcssa2802, %if.else.i435.i ], [ %runtime_code.1.lcssa2802, %if.then.i436.i ], [ %runtime_code.1.lcssa2801, %if.end292.loopexit ]
  %exp.02798 = phi ptr [ %exp.0.lcssa2797, %if.then.i425.i ], [ %exp.0.lcssa2797, %if.else.i424.i ], [ %exp.0.lcssa2797, %if.else.i435.i ], [ %exp.0.lcssa2797, %if.then.i436.i ], [ %exp.0.lcssa2796, %if.end292.loopexit ]
  %precomp2668 = phi ptr [ %precomp.le, %if.then.i425.i ], [ %precomp.le, %if.else.i424.i ], [ %precomp.le, %if.else.i435.i ], [ %precomp.le, %if.then.i436.i ], [ %precomp.le2742, %if.end292.loopexit ]
  store i32 0, ptr %sawback, align 4
  store i32 0, ptr %seen, align 8
  store i64 0, ptr %maxlen, align 8
  store i32 0, ptr %in_lookbehind, align 4
  %183 = load i8, ptr %exp.02798, align 1
  %cmp294 = icmp eq i8 %183, 94
  %cond296 = sext i1 %cmp294 to i32
  store i32 %cond296, ptr %seen_zerolen, align 4
  store i32 0, ptr %extralen, align 8
  store i32 0, ptr %override_recoding, align 8
  store i32 0, ptr %in_multi_char_class, align 4
  store ptr %exp.02798, ptr %parse, align 8
  store ptr %exp.02798, ptr %start, align 8
  %184 = load i64, ptr %plen, align 8
  %add.ptr297 = getelementptr inbounds nuw i8, ptr %exp.02798, i64 %184
  store ptr %add.ptr297, ptr %end, align 8
  store i32 0, ptr %naughty, align 8
  store i32 1, ptr %npar, align 8
  store i32 0, ptr %nestroot, align 4
  store i64 0, ptr %size, align 8
  store ptr %emit_dummy, ptr %emit, align 8
  store i64 0, ptr %whilem_seen, align 8
  store ptr null, ptr %open_parens, align 8
  store ptr null, ptr %close_parens, align 8
  store ptr null, ptr %opend, align 8
  store ptr null, ptr %paren_names, align 8
  store ptr null, ptr %recurse, align 8
  store ptr null, ptr %study_chunk_recursed, align 8
  store i32 0, ptr %study_chunk_recursed_bytes, align 8
  store i32 0, ptr %recurse_count, align 8
  store i32 0, ptr %code_index, align 4
  %185 = load ptr, ptr %code_blocks, align 8
  %tobool299 = icmp eq ptr %185, null
  %tobool301 = icmp ne ptr %code_blocksv.0.ph, null
  %or.cond1663 = select i1 %tobool299, i1 true, i1 %tobool301
  br i1 %or.cond1663, label %if.end311, label %if.then302

if.then302:                                       ; preds = %if.end292
  %call303 = call ptr @Perl_newSV_type(i32 noundef 3) #9
  call void @Perl_save_pushptr(ptr noundef %call303, i32 noundef 11) #9
  %186 = load ptr, ptr %code_blocks, align 8
  %sv_u305 = getelementptr inbounds nuw i8, ptr %call303, i64 16
  store ptr %186, ptr %sv_u305, align 8
  %187 = load ptr, ptr %call303, align 8
  %xpv_len_u308 = getelementptr inbounds nuw i8, ptr %187, i64 24
  store i64 1, ptr %xpv_len_u308, align 8
  br label %if.end311

if.end311:                                        ; preds = %if.then302, %if.end292
  %code_blocksv.1 = phi ptr [ %code_blocksv.0.ph, %if.end292 ], [ %call303, %if.then302 ]
  %call312 = call fastcc ptr @S_reg(ptr noundef %RExC_state, i32 noundef 0, ptr noundef %flags, i32 noundef 1)
  %cmp313 = icmp eq ptr %call312, null
  br i1 %cmp313, label %if.then315, label %if.end322.loopexit

if.then315:                                       ; preds = %if.end311
  %188 = load i32, ptr %flags, align 4
  %and316 = and i32 %188, 32
  %tobool317.not = icmp eq i32 %and316, 0
  br i1 %tobool317.not, label %if.end320, label %if.then318

if.then318:                                       ; preds = %if.then315
  %189 = load i32, ptr %num_code_blocks, align 8
  %190 = load i64, ptr %plen, align 8
  %mul.i2285 = shl i64 %190, 1
  %add.i2286 = or disjoint i64 %mul.i2285, 1
  %call.i2287 = call ptr @Perl_safesysmalloc(i64 noundef %add.i2286) #9
  %191 = load i64, ptr %plen, align 8
  %cmp59.not.i2288 = icmp eq i64 %191, 0
  br i1 %cmp59.not.i2288, label %S_pat_upgrade_to_utf8.exit2335, label %while.body.lr.ph.i2289

while.body.lr.ph.i2289:                           ; preds = %if.then318
  %sub.ptr.rhs.cast.i2291 = ptrtoint ptr %call.i2287 to i64
  %192 = xor i64 %sub.ptr.rhs.cast.i2291, -1
  br label %while.body.i2292

while.body.i2292:                                 ; preds = %if.end26.i2308, %while.body.lr.ph.i2289
  %do_end.063.i2293 = phi i1 [ false, %while.body.lr.ph.i2289 ], [ %do_end.1.i2310, %if.end26.i2308 ]
  %s.062.i2294 = phi i64 [ 0, %while.body.lr.ph.i2289 ], [ %inc27.i2311, %if.end26.i2308 ]
  %n.061.i2295 = phi i32 [ 0, %while.body.lr.ph.i2289 ], [ %n.1.i2309, %if.end26.i2308 ]
  %d.060.i2296 = phi ptr [ %call.i2287, %while.body.lr.ph.i2289 ], [ %incdec.ptr8.i.i2306, %if.end26.i2308 ]
  %arrayidx.i2297 = getelementptr inbounds nuw i8, ptr %exp.02798, i64 %s.062.i2294
  %193 = load i8, ptr %arrayidx.i2297, align 1
  %cmp.i.i2298 = icmp sgt i8 %193, -1
  br i1 %cmp.i.i2298, label %S_append_utf8_from_native_byte.exit.i2303, label %if.else.i.i2299

if.else.i.i2299:                                  ; preds = %while.body.i2292
  %shr.i.i2300 = lshr i8 %193, 6
  %or.i.i2301 = or disjoint i8 %shr.i.i2300, -64
  %incdec.ptr4.i.i2302 = getelementptr inbounds nuw i8, ptr %d.060.i2296, i64 1
  store i8 %or.i.i2301, ptr %d.060.i2296, align 1
  %194 = and i8 %193, -65
  br label %S_append_utf8_from_native_byte.exit.i2303

S_append_utf8_from_native_byte.exit.i2303:        ; preds = %if.else.i.i2299, %while.body.i2292
  %d.1.i2304 = phi ptr [ %d.060.i2296, %while.body.i2292 ], [ %incdec.ptr4.i.i2302, %if.else.i.i2299 ]
  %.sink.i.i2305 = phi i8 [ %193, %while.body.i2292 ], [ %194, %if.else.i.i2299 ]
  %incdec.ptr8.i.i2306 = getelementptr inbounds nuw i8, ptr %d.1.i2304, i64 1
  store i8 %.sink.i.i2305, ptr %d.1.i2304, align 1
  %cmp2.i2307 = icmp slt i32 %n.061.i2295, %189
  br i1 %cmp2.i2307, label %if.then.i2320, label %if.end26.i2308

if.then.i2320:                                    ; preds = %S_append_utf8_from_native_byte.exit.i2303
  %195 = load ptr, ptr %code_blocks, align 8
  %idxprom13.i2321 = sext i32 %n.061.i2295 to i64
  %arrayidx14.i2322 = getelementptr inbounds %struct.reg_code_block, ptr %195, i64 %idxprom13.i2321
  br i1 %do_end.063.i2293, label %land.lhs.true11.i2328, label %land.lhs.true.i2323

land.lhs.true.i2323:                              ; preds = %if.then.i2320
  %196 = load i64, ptr %arrayidx14.i2322, align 8
  %cmp4.i2324 = icmp eq i64 %196, %s.062.i2294
  br i1 %cmp4.i2324, label %if.then5.i2325, label %if.end26.i2308

if.then5.i2325:                                   ; preds = %land.lhs.true.i2323
  %sub.ptr.lhs.cast.i2326 = ptrtoint ptr %incdec.ptr8.i.i2306 to i64
  %sub.i2327 = add i64 %sub.ptr.lhs.cast.i2326, %192
  store i64 %sub.i2327, ptr %arrayidx14.i2322, align 8
  br label %if.end26.i2308

land.lhs.true11.i2328:                            ; preds = %if.then.i2320
  %end.i2329 = getelementptr inbounds nuw i8, ptr %arrayidx14.i2322, i64 8
  %197 = load i64, ptr %end.i2329, align 8
  %cmp15.i2330 = icmp eq i64 %197, %s.062.i2294
  br i1 %cmp15.i2330, label %if.then16.i2331, label %if.end26.i2308

if.then16.i2331:                                  ; preds = %land.lhs.true11.i2328
  %sub.ptr.lhs.cast17.i2332 = ptrtoint ptr %incdec.ptr8.i.i2306 to i64
  %sub20.i2333 = add i64 %sub.ptr.lhs.cast17.i2332, %192
  store i64 %sub20.i2333, ptr %end.i2329, align 8
  %inc.i2334 = add nsw i32 %n.061.i2295, 1
  br label %if.end26.i2308

if.end26.i2308:                                   ; preds = %if.then16.i2331, %land.lhs.true11.i2328, %if.then5.i2325, %land.lhs.true.i2323, %S_append_utf8_from_native_byte.exit.i2303
  %n.1.i2309 = phi i32 [ %inc.i2334, %if.then16.i2331 ], [ %n.061.i2295, %land.lhs.true11.i2328 ], [ %n.061.i2295, %if.then5.i2325 ], [ %n.061.i2295, %S_append_utf8_from_native_byte.exit.i2303 ], [ %n.061.i2295, %land.lhs.true.i2323 ]
  %do_end.1.i2310 = phi i1 [ false, %if.then16.i2331 ], [ true, %land.lhs.true11.i2328 ], [ true, %if.then5.i2325 ], [ %do_end.063.i2293, %S_append_utf8_from_native_byte.exit.i2303 ], [ false, %land.lhs.true.i2323 ]
  %inc27.i2311 = add nuw i64 %s.062.i2294, 1
  %198 = load i64, ptr %plen, align 8
  %cmp.i2312 = icmp ult i64 %inc27.i2311, %198
  br i1 %cmp.i2312, label %while.body.i2292, label %S_pat_upgrade_to_utf8.exit2335.loopexit, !llvm.loop !11

S_pat_upgrade_to_utf8.exit2335.loopexit:          ; preds = %if.end26.i2308
  %incdec.ptr8.i.i2306.lcssa = phi ptr [ %incdec.ptr8.i.i2306, %if.end26.i2308 ]
  br label %S_pat_upgrade_to_utf8.exit2335

S_pat_upgrade_to_utf8.exit2335:                   ; preds = %S_pat_upgrade_to_utf8.exit2335.loopexit, %if.then318
  %d.0.lcssa.i2314 = phi ptr [ %call.i2287, %if.then318 ], [ %incdec.ptr8.i.i2306.lcssa, %S_pat_upgrade_to_utf8.exit2335.loopexit ]
  store i8 0, ptr %d.0.lcssa.i2314, align 1
  %sub.ptr.lhs.cast28.i2315 = ptrtoint ptr %d.0.lcssa.i2314 to i64
  %sub.ptr.rhs.cast29.i2316 = ptrtoint ptr %call.i2287 to i64
  %sub.ptr.sub30.i2317 = sub i64 %sub.ptr.lhs.cast28.i2315, %sub.ptr.rhs.cast29.i2316
  store i64 %sub.ptr.sub30.i2317, ptr %plen, align 8
  call void @Perl_save_pushptr(ptr noundef %call.i2287, i32 noundef 10) #9
  store i32 1, ptr %utf8, align 8
  store i32 1, ptr %orig_utf8, align 4
  br label %redo_first_pass.outer

if.end320:                                        ; preds = %if.then315
  %.lcssa2814 = phi i32 [ %188, %if.then315 ]
  %code_blocksv.1.lcssa2812 = phi ptr [ %code_blocksv.1, %if.then315 ]
  %precomp2668.lcssa2810 = phi ptr [ %precomp2668, %if.then315 ]
  %rx_flags.02805.lcssa2806 = phi i32 [ %rx_flags.02805, %if.then315 ]
  %exp.02798.lcssa2799 = phi ptr [ %exp.02798, %if.then315 ]
  %sawback.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 156
  %seen.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 160
  %maxlen.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 304
  %seen_zerolen.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 188
  %extralen.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 184
  %parse.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 56
  %end.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 48
  %naughty.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 152
  %npar.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 176
  %size.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 168
  %emit_dummy.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 96
  %emit.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 88
  %whilem_seen.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 64
  %open_parens.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 192
  %close_parens.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 200
  %paren_names.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 232
  %recurse.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 240
  %study_chunk_recursed.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 256
  %study_chunk_recursed_bytes.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 264
  %recurse_count.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 248
  %code_index.le = getelementptr inbounds nuw i8, ptr %RExC_state, i64 300
  %conv321 = sext i32 %.lcssa2814 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.181, i64 noundef %conv321) #9
  br label %if.end322

if.end322.loopexit:                               ; preds = %if.end311
  %code_blocksv.1.lcssa = phi ptr [ %code_blocksv.1, %if.end311 ]
  %precomp2668.lcssa = phi ptr [ %precomp2668, %if.end311 ]
  %rx_flags.02805.lcssa = phi i32 [ %rx_flags.02805, %if.end311 ]
  %exp.02798.lcssa = phi ptr [ %exp.02798, %if.end311 ]
  %sawback.le2763 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 156
  %seen.le2762 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 160
  %maxlen.le2761 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 304
  %seen_zerolen.le2760 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 188
  %extralen.le2759 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 184
  %parse.le2758 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 56
  %end.le2757 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 48
  %naughty.le2756 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 152
  %npar.le2755 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 176
  %size.le2754 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 168
  %emit_dummy.le2753 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 96
  %emit.le2752 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 88
  %whilem_seen.le2751 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 64
  %open_parens.le2750 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 192
  %close_parens.le2749 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 200
  %paren_names.le2748 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 232
  %recurse.le2747 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 240
  %study_chunk_recursed.le2746 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 256
  %study_chunk_recursed_bytes.le2745 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 264
  %recurse_count.le2744 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 248
  %code_index.le2743 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 300
  br label %if.end322

if.end322:                                        ; preds = %if.end322.loopexit, %if.end320
  %code_blocksv.12813 = phi ptr [ %code_blocksv.1.lcssa, %if.end322.loopexit ], [ %code_blocksv.1.lcssa2812, %if.end320 ]
  %precomp26682811 = phi ptr [ %precomp2668.lcssa, %if.end322.loopexit ], [ %precomp2668.lcssa2810, %if.end320 ]
  %rx_flags.028052807 = phi i32 [ %rx_flags.02805.lcssa, %if.end322.loopexit ], [ %rx_flags.02805.lcssa2806, %if.end320 ]
  %exp.027982800 = phi ptr [ %exp.02798.lcssa, %if.end322.loopexit ], [ %exp.02798.lcssa2799, %if.end320 ]
  %sawback2725 = phi ptr [ %sawback.le2763, %if.end322.loopexit ], [ %sawback.le, %if.end320 ]
  %seen2721 = phi ptr [ %seen.le2762, %if.end322.loopexit ], [ %seen.le, %if.end320 ]
  %maxlen2719 = phi ptr [ %maxlen.le2761, %if.end322.loopexit ], [ %maxlen.le, %if.end320 ]
  %seen_zerolen2717 = phi ptr [ %seen_zerolen.le2760, %if.end322.loopexit ], [ %seen_zerolen.le, %if.end320 ]
  %extralen2715 = phi ptr [ %extralen.le2759, %if.end322.loopexit ], [ %extralen.le, %if.end320 ]
  %parse2713 = phi ptr [ %parse.le2758, %if.end322.loopexit ], [ %parse.le, %if.end320 ]
  %end2711 = phi ptr [ %end.le2757, %if.end322.loopexit ], [ %end.le, %if.end320 ]
  %naughty2709 = phi ptr [ %naughty.le2756, %if.end322.loopexit ], [ %naughty.le, %if.end320 ]
  %npar2707 = phi ptr [ %npar.le2755, %if.end322.loopexit ], [ %npar.le, %if.end320 ]
  %size2704 = phi ptr [ %size.le2754, %if.end322.loopexit ], [ %size.le, %if.end320 ]
  %emit_dummy2702 = phi ptr [ %emit_dummy.le2753, %if.end322.loopexit ], [ %emit_dummy.le, %if.end320 ]
  %emit2700 = phi ptr [ %emit.le2752, %if.end322.loopexit ], [ %emit.le, %if.end320 ]
  %whilem_seen2698 = phi ptr [ %whilem_seen.le2751, %if.end322.loopexit ], [ %whilem_seen.le, %if.end320 ]
  %open_parens2696 = phi ptr [ %open_parens.le2750, %if.end322.loopexit ], [ %open_parens.le, %if.end320 ]
  %close_parens2694 = phi ptr [ %close_parens.le2749, %if.end322.loopexit ], [ %close_parens.le, %if.end320 ]
  %paren_names2692 = phi ptr [ %paren_names.le2748, %if.end322.loopexit ], [ %paren_names.le, %if.end320 ]
  %recurse2690 = phi ptr [ %recurse.le2747, %if.end322.loopexit ], [ %recurse.le, %if.end320 ]
  %study_chunk_recursed2688 = phi ptr [ %study_chunk_recursed.le2746, %if.end322.loopexit ], [ %study_chunk_recursed.le, %if.end320 ]
  %study_chunk_recursed_bytes2686 = phi ptr [ %study_chunk_recursed_bytes.le2745, %if.end322.loopexit ], [ %study_chunk_recursed_bytes.le, %if.end320 ]
  %recurse_count2684 = phi ptr [ %recurse_count.le2744, %if.end322.loopexit ], [ %recurse_count.le, %if.end320 ]
  %code_index2682 = phi ptr [ %code_index.le2743, %if.end322.loopexit ], [ %code_index.le, %if.end320 ]
  %tobool323.not = icmp eq ptr %code_blocksv.12813, null
  br i1 %tobool323.not, label %if.end330, label %do.body325

do.body325:                                       ; preds = %if.end322
  %199 = load ptr, ptr %code_blocksv.12813, align 8
  %xpv_len_u327 = getelementptr inbounds nuw i8, ptr %199, i64 24
  store i64 0, ptr %xpv_len_u327, align 8
  br label %if.end330

if.end330:                                        ; preds = %do.body325, %if.end322
  %200 = load i32, ptr %utf8, align 8
  %tobool332.not = icmp ne i32 %200, 0
  %201 = load i32, ptr %uni_semantics, align 8
  %tobool335.not = icmp ne i32 %201, 0
  %or.cond2165.not2787 = select i1 %tobool332.not, i1 true, i1 %tobool335.not
  %202 = and i32 %rx_flags.028052807, 896
  %cmp338 = icmp eq i32 %202, 0
  %or.cond2621 = select i1 %or.cond2165.not2787, i1 %cmp338, i1 false
  %or.i2339 = or disjoint i32 %and.i2248, 256
  %rx_flags.1 = select i1 %or.cond2621, i32 %or.i2339, i32 %rx_flags.028052807
  %203 = load i64, ptr %size2704, align 8
  %cmp343 = icmp sgt i64 %203, 65535
  br i1 %cmp343, label %land.lhs.true345, label %if.else353

land.lhs.true345:                                 ; preds = %if.end330
  %204 = load i32, ptr %extralen2715, align 8
  %tobool347.not = icmp eq i32 %204, 0
  br i1 %tobool347.not, label %if.else353, label %if.then348

if.then348:                                       ; preds = %land.lhs.true345
  %conv350 = sext i32 %204 to i64
  %add352 = add nsw i64 %203, %conv350
  store i64 %add352, ptr %size2704, align 8
  br label %if.end355

if.else353:                                       ; preds = %land.lhs.true345, %if.end330
  store i32 0, ptr %extralen2715, align 8
  br label %if.end355

if.end355:                                        ; preds = %if.else353, %if.then348
  %205 = load i64, ptr %whilem_seen2698, align 8
  %cmp357 = icmp sgt i64 %205, 15
  br i1 %cmp357, label %if.then359, label %if.end361

if.then359:                                       ; preds = %if.end355
  store i64 15, ptr %whilem_seen2698, align 8
  br label %if.end361

if.end361:                                        ; preds = %if.then359, %if.end355
  %call362 = call ptr @Perl_newSV_type(i32 noundef 8) #9
  %206 = getelementptr i8, ptr %call362, i64 16
  %call362.val2180 = load ptr, ptr %206, align 8
  %207 = load i64, ptr %size2704, align 8
  %conv366 = shl i64 %207, 2
  %mul367 = and i64 %conv366, 17179869180
  %add368 = add nuw nsw i64 %mul367, 48
  %call370 = call ptr @Perl_safesysmalloc(i64 noundef %add368) #9
  %cmp371 = icmp eq ptr %call362.val2180, null
  %cmp374 = icmp eq ptr %call370, null
  %or.cond1664 = select i1 %cmp371, i1 true, i1 %cmp374
  br i1 %or.cond1664, label %do.body377, label %if.end398

do.body377:                                       ; preds = %if.end361
  %208 = load ptr, ptr %end2711, align 8
  %209 = load ptr, ptr %precomp26682811, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %208 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %209 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %210 = load ptr, ptr %emit2700, align 8
  %cmp382 = icmp eq ptr %210, %emit_dummy2702
  br i1 %cmp382, label %if.end385, label %if.then384

if.then384:                                       ; preds = %do.body377
  %rx_sv = getelementptr inbounds nuw i8, ptr %RExC_state, i64 16
  %211 = load ptr, ptr %rx_sv, align 8
  call void @Perl_save_pushptr(ptr noundef %211, i32 noundef 11) #9
  br label %if.end385

if.end385:                                        ; preds = %if.then384, %do.body377
  %cmp386 = icmp sgt i64 %sub.ptr.sub, 127
  %spec.select2166 = select i1 %cmp386, ptr @.str.182, ptr @.str.178
  %spec.select2167 = select i1 %cmp386, i64 117, i64 %sub.ptr.sub
  %212 = load i32, ptr %utf8, align 8
  %tobool391.not = icmp ne i32 %212, 0
  %cond392 = zext i1 %tobool391.not to i32
  %213 = load ptr, ptr %precomp26682811, align 8
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184, i32 noundef %cond392, i64 noundef %spec.select2167, ptr noundef %213, ptr noundef nonnull %spec.select2166) #9
  br label %if.end398

if.end398:                                        ; preds = %if.end385, %if.end361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %call370, i8 0, i64 48, i1 false)
  %pprivate = getelementptr inbounds nuw i8, ptr %call362.val2180, i64 104
  store ptr %call370, ptr %pprivate, align 8
  %engine = getelementptr inbounds nuw i8, ptr %call362.val2180, i64 32
  store ptr %eng, ptr %engine, align 8
  %extflags = getelementptr inbounds nuw i8, ptr %call362.val2180, i64 56
  store i32 %rx_flags.1, ptr %extflags, align 8
  %compflags400 = getelementptr inbounds nuw i8, ptr %call362.val2180, i64 176
  %214 = trunc i32 %orig_rx_flags to i16
  %bf.load401 = load i16, ptr %compflags400, align 8
  %bf.value = shl i16 %214, 4
  %bf.shl = and i16 %bf.value, 8176
  %bf.clear402 = and i16 %bf.load401, -8177
  %bf.set = or disjoint i16 %bf.clear402, %bf.shl
  store i16 %bf.set, ptr %compflags400, align 8
  %and403 = and i32 %pm_flags, 1073741824
  %tobool404.not = icmp eq i32 %and403, 0
  br i1 %tobool404.not, label %for.cond412.preheader, label %if.then405

for.cond412.preheader:                            ; preds = %if.end398
  %215 = load i32, ptr %num_code_blocks, align 8
  %cmp4142764 = icmp sgt i32 %215, 0
  br i1 %cmp4142764, label %for.body416.preheader, label %for.end429

for.body416.preheader:                            ; preds = %for.cond412.preheader
  br label %for.body416

if.then405:                                       ; preds = %if.end398
  %216 = load ptr, ptr %code_blocks, align 8
  %code_blocks407 = getelementptr inbounds nuw i8, ptr %call370, i64 32
  store ptr %216, ptr %code_blocks407, align 8
  %217 = load i32, ptr %num_code_blocks, align 8
  %num_code_blocks409 = getelementptr inbounds nuw i8, ptr %call370, i64 40
  store i32 %217, ptr %num_code_blocks409, align 8
  br label %if.end431

for.body416:                                      ; preds = %for.inc427, %for.body416.preheader
  %indvars.iv = phi i64 [ 0, %for.body416.preheader ], [ %indvars.iv.next, %for.inc427 ]
  %218 = load ptr, ptr %code_blocks, align 8
  %arrayidx419 = getelementptr inbounds nuw %struct.reg_code_block, ptr %218, i64 %indvars.iv
  %src_regex = getelementptr inbounds nuw i8, ptr %arrayidx419, i64 24
  %219 = load ptr, ptr %src_regex, align 8
  %tobool420.not = icmp eq ptr %219, null
  br i1 %tobool420.not, label %for.inc427, label %if.then421

if.then421:                                       ; preds = %for.body416
  call void @Perl_save_pushptr(ptr noundef nonnull %219, i32 noundef 11) #9
  br label %for.inc427

for.inc427:                                       ; preds = %if.then421, %for.body416
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %220 = load i32, ptr %num_code_blocks, align 8
  %221 = sext i32 %220 to i64
  %cmp414 = icmp slt i64 %indvars.iv.next, %221
  br i1 %cmp414, label %for.body416, label %for.end429.loopexit, !llvm.loop !12

for.end429.loopexit:                              ; preds = %for.inc427
  br label %for.end429

for.end429:                                       ; preds = %for.end429.loopexit, %for.cond412.preheader
  %222 = load ptr, ptr %code_blocks, align 8
  call void @Perl_save_pushptr(ptr noundef %222, i32 noundef 10) #9
  br label %if.end431

if.end431:                                        ; preds = %for.end429, %if.then405
  %223 = load i32, ptr %extflags, align 8
  %and433 = and i32 %223, 64
  %cmp434.not = icmp eq i32 %and433, 0
  %224 = and i32 %223, 896
  %cmp439.not = icmp eq i32 %224, 0
  %and443 = and i32 %223, 47
  %cmp444 = icmp ne i32 %and443, 47
  %225 = or i1 %cmp444, %cmp439.not
  %226 = load i32, ptr %seen2721, align 8
  %and451 = and i32 %226, 512
  %cmp452.not = icmp eq i32 %and451, 0
  %227 = load i64, ptr %plen, align 8
  %and433.lobit = lshr exact i32 %and433, 6
  %conv459 = zext nneg i32 %and433.lobit to i64
  %and451.lobit = lshr exact i32 %and451, 9
  %conv462 = zext nneg i32 %and451.lobit to i64
  %conv465 = zext i1 %225 to i64
  %cond469 = select i1 %cmp439.not, i64 0, i64 2
  %add460 = add i64 %227, 11
  %add463 = add i64 %add460, %conv459
  %add466 = add i64 %add463, %cond469
  %add471 = add i64 %add466, %conv462
  %add474 = add i64 %add471, %conv465
  %call476 = call ptr @Perl_safesysmalloc(i64 noundef %add474) #9
  %xpv_len_u477 = getelementptr inbounds nuw i8, ptr %call362.val2180, i64 24
  store ptr %call476, ptr %xpv_len_u477, align 8
  %228 = load i32, ptr %utf8, align 8
  %tobool479.not = icmp eq i32 %228, 0
  br i1 %tobool479.not, label %if.end483, label %if.then480

if.then480:                                       ; preds = %if.end431
  %sv_flags481 = getelementptr inbounds nuw i8, ptr %call362, i64 12
  %229 = load i32, ptr %sv_flags481, align 4
  %or482 = or i32 %229, 536870912
  store i32 %or482, ptr %sv_flags481, align 4
  br label %if.end483

if.end483:                                        ; preds = %if.then480, %if.end431
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %call476, i64 1
  store i8 40, ptr %call476, align 1
  %incdec.ptr484 = getelementptr inbounds nuw i8, ptr %call476, i64 2
  store i8 63, ptr %incdec.ptr, align 1
  br i1 %225, label %if.end488, label %if.then490

if.end488:                                        ; preds = %if.end483
  %incdec.ptr487 = getelementptr inbounds nuw i8, ptr %call476, i64 3
  store i8 94, ptr %incdec.ptr484, align 1
  br i1 %cmp439.not, label %if.end496, label %if.then490

if.then490:                                       ; preds = %if.end488, %if.end483
  %p.02592 = phi ptr [ %incdec.ptr487, %if.end488 ], [ %incdec.ptr484, %if.end483 ]
  %230 = load i32, ptr %extflags, align 8
  %and.i.i = lshr i32 %230, 7
  %shr.i.i2342 = and i32 %and.i.i, 7
  switch i32 %shr.i.i2342, label %sw.epilog.i [
    i32 0, label %get_regex_charset_name.exit
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 4, label %sw.bb4.i
  ]

sw.bb1.i:                                         ; preds = %if.then490
  br label %get_regex_charset_name.exit

sw.bb2.i:                                         ; preds = %if.then490
  br label %get_regex_charset_name.exit

sw.bb3.i:                                         ; preds = %if.then490
  br label %get_regex_charset_name.exit

sw.bb4.i:                                         ; preds = %if.then490
  br label %get_regex_charset_name.exit

sw.epilog.i:                                      ; preds = %if.then490
  br label %get_regex_charset_name.exit

get_regex_charset_name.exit:                      ; preds = %sw.epilog.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then490
  %len491.0 = phi i64 [ 1, %sw.epilog.i ], [ 1, %if.then490 ], [ 1, %sw.bb1.i ], [ 1, %sw.bb2.i ], [ 1, %sw.bb3.i ], [ 2, %sw.bb4.i ]
  %retval.0.i = phi ptr [ @.str.214, %sw.epilog.i ], [ @.str.209, %if.then490 ], [ @.str.210, %sw.bb1.i ], [ @.str.211, %sw.bb2.i ], [ @.str.212, %sw.bb3.i ], [ @.str.213, %sw.bb4.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %p.02592, ptr noundef nonnull align 1 dereferenceable(1) %retval.0.i, i64 %len491.0, i1 false)
  %add.ptr495 = getelementptr inbounds nuw i8, ptr %p.02592, i64 %len491.0
  br label %if.end496

if.end496:                                        ; preds = %get_regex_charset_name.exit, %if.end488
  %p.1 = phi ptr [ %add.ptr495, %get_regex_charset_name.exit ], [ %incdec.ptr487, %if.end488 ]
  br i1 %cmp434.not, label %if.end500, label %if.then498

if.then498:                                       ; preds = %if.end496
  %incdec.ptr499 = getelementptr inbounds nuw i8, ptr %p.1, i64 1
  store i8 112, ptr %p.1, align 1
  br label %if.end500

if.end500:                                        ; preds = %if.then498, %if.end496
  %p.2 = phi ptr [ %incdec.ptr499, %if.then498 ], [ %p.1, %if.end496 ]
  br label %while.body

while.body:                                       ; preds = %if.end500
  %and504 = and i32 %and443, 1
  %tobool505.not = icmp eq i32 %and504, 0
  br i1 %tobool505.not, label %if.end508, label %if.then506

if.then506:                                       ; preds = %while.body
  %incdec.ptr507 = getelementptr inbounds nuw i8, ptr %p.2, i64 1
  store i8 109, ptr %p.2, align 1
  br label %if.end508

if.end508:                                        ; preds = %if.then506, %while.body
  %p.4 = phi ptr [ %incdec.ptr507, %if.then506 ], [ %p.2, %while.body ]
  %conv503 = lshr i32 %and443, 1
  %and504.1 = and i32 %conv503, 1
  %tobool505.not.1 = icmp eq i32 %and504.1, 0
  br i1 %tobool505.not.1, label %if.end508.1, label %if.then506.1

if.then506.1:                                     ; preds = %if.end508
  %incdec.ptr507.1 = getelementptr inbounds nuw i8, ptr %p.4, i64 1
  store i8 115, ptr %p.4, align 1
  br label %if.end508.1

if.end508.1:                                      ; preds = %if.then506.1, %if.end508
  %p.4.1 = phi ptr [ %incdec.ptr507.1, %if.then506.1 ], [ %p.4, %if.end508 ]
  %conv503.1 = lshr i32 %conv503, 1
  %and504.2 = and i32 %conv503.1, 1
  %tobool505.not.2 = icmp eq i32 %and504.2, 0
  br i1 %tobool505.not.2, label %if.end508.2, label %if.then506.2

if.then506.2:                                     ; preds = %if.end508.1
  %incdec.ptr507.2 = getelementptr inbounds nuw i8, ptr %p.4.1, i64 1
  store i8 105, ptr %p.4.1, align 1
  br label %if.end508.2

if.end508.2:                                      ; preds = %if.then506.2, %if.end508.1
  %p.4.2 = phi ptr [ %incdec.ptr507.2, %if.then506.2 ], [ %p.4.1, %if.end508.1 ]
  %conv503.2 = lshr i32 %conv503.1, 1
  %and504.3 = and i32 %conv503.2, 1
  %tobool505.not.3 = icmp eq i32 %and504.3, 0
  br i1 %tobool505.not.3, label %if.end508.3, label %if.then506.3

if.then506.3:                                     ; preds = %if.end508.2
  %incdec.ptr507.3 = getelementptr inbounds nuw i8, ptr %p.4.2, i64 1
  store i8 120, ptr %p.4.2, align 1
  br label %if.end508.3

if.end508.3:                                      ; preds = %if.then506.3, %if.end508.2
  %p.4.3 = phi ptr [ %incdec.ptr507.3, %if.then506.3 ], [ %p.4.2, %if.end508.2 ]
  %conv503.3 = lshr i32 %conv503.2, 1
  %and504.4 = and i32 %conv503.3, 1
  %tobool505.not.4 = icmp eq i32 %and504.4, 0
  br i1 %tobool505.not.4, label %if.end508.4, label %if.then506.4

if.then506.4:                                     ; preds = %if.end508.3
  %incdec.ptr507.4 = getelementptr inbounds nuw i8, ptr %p.4.3, i64 1
  store i8 120, ptr %p.4.3, align 1
  br label %if.end508.4

if.end508.4:                                      ; preds = %if.then506.4, %if.end508.3
  %p.4.4 = phi ptr [ %incdec.ptr507.4, %if.then506.4 ], [ %p.4.3, %if.end508.3 ]
  %conv503.4 = lshr i32 %conv503.3, 1
  %and504.5 = and i32 %conv503.4, 1
  %tobool505.not.5 = icmp eq i32 %and504.5, 0
  br i1 %tobool505.not.5, label %if.end508.5, label %if.then506.5

if.then506.5:                                     ; preds = %if.end508.4
  %incdec.ptr507.5 = getelementptr inbounds nuw i8, ptr %p.4.4, i64 1
  store i8 110, ptr %p.4.4, align 1
  br label %if.end508.5

if.end508.5:                                      ; preds = %if.then506.5, %if.end508.4
  %p.4.5 = phi ptr [ %incdec.ptr507.5, %if.then506.5 ], [ %p.4.4, %if.end508.4 ]
  %incdec.ptr512 = getelementptr inbounds nuw i8, ptr %p.4.5, i64 1
  store i8 58, ptr %p.4.5, align 1
  %231 = load ptr, ptr %precomp26682811, align 8
  %232 = load i64, ptr %plen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %incdec.ptr512, ptr align 1 %231, i64 %232, i1 false)
  %call362.val2179 = load ptr, ptr %206, align 8
  %xpv_len_u516 = getelementptr inbounds nuw i8, ptr %call362.val2179, i64 24
  %233 = load ptr, ptr %xpv_len_u516, align 8
  %sub.ptr.lhs.cast517 = ptrtoint ptr %incdec.ptr512 to i64
  %sub.ptr.rhs.cast518 = ptrtoint ptr %233 to i64
  %sub.ptr.sub519 = sub i64 %sub.ptr.lhs.cast517, %sub.ptr.rhs.cast518
  %234 = trunc i64 %sub.ptr.sub519 to i16
  %bf.load522 = load i16, ptr %compflags400, align 8
  %bf.value523 = and i16 %234, 15
  %bf.clear524 = and i16 %bf.load522, -16
  %bf.set525 = or disjoint i16 %bf.value523, %bf.clear524
  store i16 %bf.set525, ptr %compflags400, align 8
  %235 = load i64, ptr %plen, align 8
  %add.ptr527 = getelementptr inbounds nuw i8, ptr %incdec.ptr512, i64 %235
  br i1 %cmp452.not, label %if.end531, label %if.then529

if.then529:                                       ; preds = %if.end508.5
  %incdec.ptr530 = getelementptr inbounds nuw i8, ptr %add.ptr527, i64 1
  store i8 10, ptr %add.ptr527, align 1
  br label %if.end531

if.end531:                                        ; preds = %if.then529, %if.end508.5
  %p.5 = phi ptr [ %incdec.ptr530, %if.then529 ], [ %add.ptr527, %if.end508.5 ]
  %incdec.ptr532 = getelementptr inbounds nuw i8, ptr %p.5, i64 1
  store i8 41, ptr %p.5, align 1
  store i8 0, ptr %incdec.ptr532, align 1
  %call362.val = load ptr, ptr %206, align 8
  %xpv_len_u535 = getelementptr inbounds nuw i8, ptr %call362.val, i64 24
  %236 = load ptr, ptr %xpv_len_u535, align 8
  %sub.ptr.lhs.cast536 = ptrtoint ptr %incdec.ptr532 to i64
  %sub.ptr.rhs.cast537 = ptrtoint ptr %236 to i64
  %sub.ptr.sub538 = sub i64 %sub.ptr.lhs.cast536, %sub.ptr.rhs.cast537
  %237 = load ptr, ptr %call362, align 8
  %xpv_cur540 = getelementptr inbounds nuw i8, ptr %237, i64 16
  store i64 %sub.ptr.sub538, ptr %xpv_cur540, align 8
  %intflags = getelementptr inbounds nuw i8, ptr %call362.val2180, i64 100
  store i32 0, ptr %intflags, align 4
  %238 = load i32, ptr %npar2707, align 8
  %sub544 = add nsw i32 %238, -1
  %nparens = getelementptr inbounds nuw i8, ptr %call362.val2180, i64 96
  store i32 %sub544, ptr %nparens, align 8
  %239 = load i32, ptr %seen2721, align 8
  %and546 = and i32 %239, 32
  %tobool547.not = icmp eq i32 %and546, 0
  br i1 %tobool547.not, label %if.end559, label %if.then548

if.then548:                                       ; preds = %if.end531
  %240 = load i32, ptr %npar2707, align 8
  %conv550 = sext i32 %240 to i64
  %call551 = call ptr @Perl_safesyscalloc(i64 noundef %conv550, i64 noundef 8) #9
  store ptr %call551, ptr %open_parens2696, align 8
  call void @Perl_save_pushptr(ptr noundef %call551, i32 noundef 10) #9
  %241 = load i32, ptr %npar2707, align 8
  %conv555 = sext i32 %241 to i64
  %call556 = call ptr @Perl_safesyscalloc(i64 noundef %conv555, i64 noundef 8) #9
  store ptr %call556, ptr %close_parens2694, align 8
  call void @Perl_save_pushptr(ptr noundef %call556, i32 noundef 10) #9
  br label %if.end559

if.end559:                                        ; preds = %if.then548, %if.end531
  %242 = load i32, ptr %seen2721, align 8
  %and561 = and i32 %242, 2080
  %tobool562.not = icmp eq i32 %and561, 0
  br i1 %tobool562.not, label %if.end580, label %if.then563

if.then563:                                       ; preds = %if.end559
  %243 = load i32, ptr %npar2707, align 8
  %shr565 = ashr i32 %243, 3
  %and567 = and i32 %243, 7
  %cmp568 = icmp ne i32 %and567, 0
  %conv569 = zext i1 %cmp568 to i32
  %add570 = add nsw i32 %shr565, %conv569
  store i32 %add570, ptr %study_chunk_recursed_bytes2686, align 8
  %mul574 = mul i32 %add570, %243
  %conv575 = zext i32 %mul574 to i64
  %call577 = call ptr @Perl_safesysmalloc(i64 noundef %conv575) #9
  store ptr %call577, ptr %study_chunk_recursed2688, align 8
  call void @Perl_save_pushptr(ptr noundef %call577, i32 noundef 10) #9
  br label %if.end580

if.end580:                                        ; preds = %if.then563, %if.end559
  %244 = load i64, ptr %size2704, align 8
  %conv582 = trunc i64 %244 to i32
  %u = getelementptr inbounds nuw i8, ptr %call370, i64 8
  store i32 %conv582, ptr %u, align 8
  %rx_sv583 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 16
  store ptr %call362, ptr %rx_sv583, align 8
  %rx584 = getelementptr inbounds nuw i8, ptr %RExC_state, i64 24
  store ptr %call362.val2180, ptr %rx584, align 8
  %rxi = getelementptr inbounds nuw i8, ptr %RExC_state, i64 32
  store ptr %call370, ptr %rxi, align 8
  store i32 %rx_flags.1, ptr %RExC_state, align 8
  store i32 %pm_flags, ptr %pm_flags278, align 4
  store ptr %exp.027982800, ptr %parse2713, align 8
  %245 = load i64, ptr %plen, align 8
  %add.ptr588 = getelementptr inbounds nuw i8, ptr %exp.027982800, i64 %245
  store ptr %add.ptr588, ptr %end2711, align 8
  store i32 0, ptr %naughty2709, align 8
  store i32 1, ptr %npar2707, align 8
  %program = getelementptr inbounds nuw i8, ptr %call370, i64 44
  %emit_start = getelementptr inbounds nuw i8, ptr %RExC_state, i64 72
  store ptr %program, ptr %emit_start, align 8
  store ptr %program, ptr %emit2700, align 8
  %246 = load i64, ptr %size2704, align 8
  %add.ptr598 = getelementptr inbounds %struct.regnode, ptr %program, i64 %246
  %add.ptr599 = getelementptr inbounds nuw i8, ptr %add.ptr598, i64 4
  %emit_bound = getelementptr inbounds nuw i8, ptr %RExC_state, i64 80
  store ptr %add.ptr599, ptr %emit_bound, align 8
  store i32 0, ptr %code_index2682, align 4
  %incdec.ptr602 = getelementptr inbounds nuw i8, ptr %call370, i64 48
  store ptr %incdec.ptr602, ptr %emit2700, align 8
  store i8 -100, ptr %program, align 1
  %call603 = call fastcc ptr @S_reg(ptr noundef %RExC_state, i32 noundef 0, ptr noundef %flags, i32 noundef 1)
  %cmp604 = icmp eq ptr %call603, null
  br i1 %cmp604, label %if.then.i2344, label %if.end608

if.then.i2344:                                    ; preds = %if.end580
  %sv_refcnt.i2345 = getelementptr inbounds nuw i8, ptr %call362, i64 8
  %247 = load i32, ptr %sv_refcnt.i2345, align 8
  %cmp1.i2346 = icmp ugt i32 %247, 1
  br i1 %cmp1.i2346, label %if.then4.i, label %if.else.i2347

if.then4.i:                                       ; preds = %if.then.i2344
  %sub.i2348 = add i32 %247, -1
  store i32 %sub.i2348, ptr %sv_refcnt.i2345, align 8
  br label %S_SvREFCNT_dec.exit

if.else.i2347:                                    ; preds = %if.then.i2344
  call void @Perl_sv_free2(ptr noundef nonnull %call362, i32 noundef %247) #9
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %if.else.i2347, %if.then4.i
  %248 = load i32, ptr %flags, align 4
  %conv607 = sext i32 %248 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.186, i64 noundef %conv607) #9
  br label %if.end608

if.end608:                                        ; preds = %S_SvREFCNT_dec.exit, %if.end580
  %call609 = call ptr @Perl_safesysmalloc(i64 noundef 128) #9
  %substrs = getelementptr inbounds nuw i8, ptr %call362.val2180, i64 88
  store ptr %call609, ptr %substrs, align 8
  %249 = load i32, ptr %recurse_count2684, align 8
  %tobool611.not = icmp eq i32 %249, 0
  br i1 %tobool611.not, label %if.end618, label %if.then612

if.then612:                                       ; preds = %if.end608
  %conv614 = sext i32 %249 to i64
  %call615 = call ptr @Perl_safesyscalloc(i64 noundef %conv614, i64 noundef 8) #9
  store ptr %call615, ptr %recurse2690, align 8
  call void @Perl_save_pushptr(ptr noundef %call615, i32 noundef 10) #9
  br label %if.end618

if.end618:                                        ; preds = %if.then612, %if.end608
  %minlen619 = getelementptr inbounds nuw i8, ptr %call362.val2180, i64 64
  %regstclass = getelementptr inbounds nuw i8, ptr %call370, i64 16
  %add.ptr665 = getelementptr inbounds nuw i8, ptr %call370, i64 48
  %sv_flags653 = getelementptr inbounds nuw i8, ptr %call362, i64 12
  %type.i2482 = getelementptr inbounds nuw i8, ptr %ch_class1338, i64 1
  %next_off.i2483 = getelementptr inbounds nuw i8, ptr %ch_class1338, i64 2
  %arg1.i2484 = getelementptr inbounds nuw i8, ptr %ch_class1338, i64 4
  %invlist.i.i2498 = getelementptr inbounds nuw i8, ptr %ch_class1338, i64 48
  %250 = getelementptr inbounds nuw i8, ptr %ch_class1338, i64 40
  %start_class1343 = getelementptr inbounds nuw i8, ptr %data, i64 144
  %last_closep1344 = getelementptr inbounds nuw i8, ptr %data, i64 136
  %flags1352 = getelementptr inbounds nuw i8, ptr %data, i64 128
  %type.i = getelementptr inbounds nuw i8, ptr %call370, i64 49
  %arg1.i = getelementptr inbounds nuw i8, ptr %call370, i64 52
  %next_off.i = getelementptr inbounds nuw i8, ptr %call370, i64 50
  %data779 = getelementptr inbounds nuw i8, ptr %call370, i64 24
  %longest_fixed = getelementptr inbounds nuw i8, ptr %data, i64 56
  %longest_float = getelementptr inbounds nuw i8, ptr %data, i64 88
  %last_found = getelementptr inbounds nuw i8, ptr %data, i64 16
  %longest = getelementptr inbounds nuw i8, ptr %data, i64 48
  %type.i2408 = getelementptr inbounds nuw i8, ptr %ch_class, i64 1
  %next_off.i2409 = getelementptr inbounds nuw i8, ptr %ch_class, i64 2
  %arg1.i2410 = getelementptr inbounds nuw i8, ptr %ch_class, i64 4
  %invlist.i.i = getelementptr inbounds nuw i8, ptr %ch_class, i64 48
  %251 = getelementptr inbounds nuw i8, ptr %ch_class, i64 40
  %start_class = getelementptr inbounds nuw i8, ptr %data, i64 144
  %last_closep = getelementptr inbounds nuw i8, ptr %data, i64 136
  %flags929 = getelementptr inbounds nuw i8, ptr %data, i64 128
  br label %reStudy

reStudy:                                          ; preds = %reStudy.backedge, %if.end618
  %tobool631.not = phi i1 [ true, %if.end618 ], [ false, %reStudy.backedge ]
  store i64 0, ptr %minlen, align 8
  store i64 0, ptr %minlen619, align 8
  %252 = load ptr, ptr %substrs, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %252, i8 0, i64 128, i1 false)
  %253 = load ptr, ptr %study_chunk_recursed2688, align 8
  %tobool622.not = icmp eq ptr %253, null
  br i1 %tobool622.not, label %if.end630, label %if.then623

if.then623:                                       ; preds = %reStudy
  %254 = load i32, ptr %study_chunk_recursed_bytes2686, align 8
  %255 = load i32, ptr %npar2707, align 8
  %mul627 = mul i32 %255, %254
  %conv628 = zext i32 %mul627 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %253, i8 0, i64 %conv628, i1 false)
  br label %if.end630

if.end630:                                        ; preds = %if.then623, %reStudy
  br i1 %tobool631.not, label %if.then632, label %if.else633

if.then632:                                       ; preds = %if.end630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %data, ptr noundef nonnull align 8 dereferenceable(152) @zero_scan_data, i64 152, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %copyRExC_state, ptr noundef nonnull align 8 dereferenceable(344) %RExC_state, i64 344, i1 false)
  br label %if.end645

if.else633:                                       ; preds = %if.end630
  %256 = load i32, ptr %seen2721, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %RExC_state, ptr noundef nonnull align 8 dereferenceable(344) %copyRExC_state, i64 344, i1 false)
  %and636 = and i32 %256, 64
  %257 = load i32, ptr %seen2721, align 8
  %and643 = and i32 %257, -65
  %storemerge = or disjoint i32 %and643, %and636
  store i32 %storemerge, ptr %seen2721, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %data, ptr noundef nonnull align 8 dereferenceable(152) @zero_scan_data, i64 152, i1 false)
  br label %if.end645

if.end645:                                        ; preds = %if.else633, %if.then632
  %258 = load i32, ptr %RExC_state, align 8
  store i32 %258, ptr %extflags, align 8
  %259 = load i32, ptr %utf8, align 8
  %tobool649.not = icmp eq i32 %259, 0
  br i1 %tobool649.not, label %if.end655, label %if.then652

if.then652:                                       ; preds = %if.end645
  %260 = load i32, ptr %sv_flags653, align 4
  %or654 = or i32 %260, 536870912
  store i32 %or654, ptr %sv_flags653, align 4
  br label %if.end655

if.end655:                                        ; preds = %if.then652, %if.end645
  store ptr null, ptr %regstclass, align 8
  %261 = load i32, ptr %naughty2709, align 8
  %cmp657 = icmp sgt i32 %261, 9
  br i1 %cmp657, label %if.then659, label %if.end662

if.then659:                                       ; preds = %if.end655
  %262 = load i32, ptr %intflags, align 4
  %or661 = or i32 %262, 4
  store i32 %or661, ptr %intflags, align 4
  br label %if.end662

if.end662:                                        ; preds = %if.then659, %if.end655
  store ptr %add.ptr665, ptr %scan, align 8
  %263 = load i32, ptr %seen2721, align 8
  %and667 = and i32 %263, 64
  %tobool668.not = icmp eq i32 %and667, 0
  br i1 %tobool668.not, label %if.end.i2350, label %if.else1336

if.end.i2350:                                     ; preds = %if.end662
  call void @llvm.lifetime.start.p0(ptr nonnull %fake) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %ch_class) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %last_close) #9
  store i64 0, ptr %last_close, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %first) #9
  store ptr %add.ptr665, ptr %first, align 8
  %264 = load i8, ptr %type.i, align 1
  %cmp.i2351 = icmp ugt i8 %264, 93
  br i1 %cmp.i2351, label %if.then2.i, label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i2350
  %conv.i2361 = zext i8 %264 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.204, i32 noundef %conv.i2361, i32 noundef 93) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i2350
  %265 = load i8, ptr %type.i, align 1
  %idxprom.i2352 = zext i8 %265 to i64
  %arrayidx.i2353 = getelementptr inbounds nuw i8, ptr @reg_off_by_arg, i64 %idxprom.i2352
  %266 = load i8, ptr %arrayidx.i2353, align 1
  %tobool8.not.i = icmp eq i8 %266, 0
  br i1 %tobool8.not.i, label %cond.false.i2360, label %cond.true.i2354

cond.true.i2354:                                  ; preds = %if.end5.i
  %267 = load i32, ptr %arg1.i, align 4
  br label %cond.end.i2355

cond.false.i2360:                                 ; preds = %if.end5.i
  %268 = load i16, ptr %next_off.i, align 2
  %conv9.i = zext i16 %268 to i32
  br label %cond.end.i2355

cond.end.i2355:                                   ; preds = %cond.false.i2360, %cond.true.i2354
  %cond.i2356 = phi i32 [ %267, %cond.true.i2354 ], [ %conv9.i, %cond.false.i2360 ]
  %cmp10.i = icmp eq i32 %cond.i2356, 0
  %idx.ext.i = sext i32 %cond.i2356 to i64
  %add.ptr.i2357 = getelementptr inbounds %struct.regnode, ptr %add.ptr665, i64 %idx.ext.i
  %retval.0.i2359 = select i1 %cmp10.i, ptr null, ptr %add.ptr.i2357
  %first.promoted = load ptr, ptr %first, align 8
  br label %while.cond671

while.cond671:                                    ; preds = %cond.end.i2372, %cond.end.i2355
  %add.ptr7482769 = phi ptr [ %first.promoted, %cond.end.i2355 ], [ %add.ptr748, %cond.end.i2372 ]
  %sawminmod.0 = phi i32 [ 0, %cond.end.i2355 ], [ %sawminmod.2, %cond.end.i2372 ]
  %sawopen.0 = phi i32 [ 0, %cond.end.i2355 ], [ %sawopen.12596, %cond.end.i2372 ]
  %first_next.0 = phi ptr [ %retval.0.i2359, %cond.end.i2355 ], [ %retval.0.i2379, %cond.end.i2372 ]
  %sawplus.0 = phi i32 [ 0, %cond.end.i2355 ], [ %sawplus.1, %cond.end.i2372 ]
  %sawlookahead.0 = phi i32 [ 0, %cond.end.i2355 ], [ %sawlookahead.12598, %cond.end.i2372 ]
  %type = getelementptr inbounds nuw i8, ptr %add.ptr7482769, i64 1
  %269 = load i8, ptr %type, align 1
  switch i8 %269, label %lor.lhs.false705 [
    i8 49, label %if.end740
    i8 30, label %land.lhs.true681
    i8 63, label %land.lhs.true691
    i8 43, label %if.end747
    i8 69, label %if.then739
  ]

land.lhs.true681:                                 ; preds = %while.cond671
  %type682 = getelementptr inbounds nuw i8, ptr %first_next.0, i64 1
  %270 = load i8, ptr %type682, align 1
  %cmp684.not = icmp eq i8 %270, 30
  br i1 %cmp684.not, label %lor.lhs.false705, label %if.end740

land.lhs.true691:                                 ; preds = %while.cond671
  %271 = load i8, ptr %add.ptr7482769, align 2
  %tobool693.not = icmp eq i8 %271, 0
  br i1 %tobool693.not, label %if.end740, label %lor.lhs.false705

lor.lhs.false705:                                 ; preds = %land.lhs.true691, %land.lhs.true681, %while.cond671
  %idxprom707 = zext i8 %269 to i64
  %arrayidx708 = getelementptr inbounds nuw i8, ptr @PL_regkind, i64 %idxprom707
  %272 = load i8, ptr %arrayidx708, align 1
  %cmp710 = icmp eq i8 %272, 44
  br i1 %cmp710, label %land.lhs.true712, label %lor.rhs716

land.lhs.true712:                                 ; preds = %lor.lhs.false705
  %arg1 = getelementptr inbounds nuw i8, ptr %add.ptr7482769, i64 4
  %273 = load i16, ptr %arg1, align 2
  %cmp714.not = icmp eq i16 %273, 0
  br i1 %cmp714.not, label %lor.rhs716, label %while.body728

lor.rhs716:                                       ; preds = %land.lhs.true712, %lor.lhs.false705
  %cmp719 = icmp eq i8 %269, 40
  br i1 %cmp719, label %land.rhs, label %while.end750

land.rhs:                                         ; preds = %lor.rhs716
  %type721 = getelementptr inbounds nuw i8, ptr %first_next.0, i64 1
  %274 = load i8, ptr %type721, align 1
  %cmp725.not = icmp ult i8 %274, 2
  br i1 %cmp725.not, label %while.end750, label %if.end740

while.body728:                                    ; preds = %land.lhs.true712
  switch i8 %269, label %if.end740 [
    i8 43, label %if.end747
    i8 69, label %if.then739
  ]

if.then739:                                       ; preds = %while.body728, %while.cond671
  br label %if.end740

if.end740:                                        ; preds = %if.then739, %while.body728, %land.rhs, %land.lhs.true691, %land.lhs.true681, %while.cond671
  %sawlookahead.12599 = phi i32 [ %sawlookahead.0, %if.then739 ], [ 1, %land.lhs.true691 ], [ %sawlookahead.0, %while.cond671 ], [ %sawlookahead.0, %land.rhs ], [ %sawlookahead.0, %land.lhs.true681 ], [ %sawlookahead.0, %while.body728 ]
  %sawopen.12597 = phi i32 [ %sawopen.0, %if.then739 ], [ %sawopen.0, %land.lhs.true691 ], [ 1, %while.cond671 ], [ %sawopen.0, %land.rhs ], [ %sawopen.0, %land.lhs.true681 ], [ %sawopen.0, %while.body728 ]
  %sawminmod.1 = phi i32 [ 1, %if.then739 ], [ %sawminmod.0, %land.lhs.true691 ], [ %sawminmod.0, %while.cond671 ], [ %sawminmod.0, %land.rhs ], [ %sawminmod.0, %land.lhs.true681 ], [ %sawminmod.0, %while.body728 ]
  %idxprom742 = zext i8 %269 to i64
  %arrayidx743 = getelementptr inbounds nuw i8, ptr @regarglen, i64 %idxprom742
  %275 = load i8, ptr %arrayidx743, align 1
  %idx.ext745 = zext i8 %275 to i64
  %add.ptr746 = getelementptr inbounds nuw %struct.regnode, ptr %add.ptr7482769, i64 %idx.ext745
  br label %if.end747

if.end747:                                        ; preds = %if.end740, %while.body728, %while.cond671
  %add.ptr7482770 = phi ptr [ %add.ptr746, %if.end740 ], [ %add.ptr7482769, %while.body728 ], [ %add.ptr7482769, %while.cond671 ]
  %sawlookahead.12598 = phi i32 [ %sawlookahead.12599, %if.end740 ], [ %sawlookahead.0, %while.body728 ], [ %sawlookahead.0, %while.cond671 ]
  %sawopen.12596 = phi i32 [ %sawopen.12597, %if.end740 ], [ %sawopen.0, %while.body728 ], [ %sawopen.0, %while.cond671 ]
  %sawminmod.2 = phi i32 [ %sawminmod.1, %if.end740 ], [ %sawminmod.0, %while.body728 ], [ %sawminmod.0, %while.cond671 ]
  %sawplus.1 = phi i32 [ %sawplus.0, %if.end740 ], [ 1, %while.body728 ], [ 1, %while.cond671 ]
  %add.ptr748 = getelementptr inbounds nuw i8, ptr %add.ptr7482770, i64 4
  %type.i2364 = getelementptr inbounds nuw i8, ptr %add.ptr7482770, i64 5
  %276 = load i8, ptr %type.i2364, align 1
  %cmp.i2365 = icmp ugt i8 %276, 93
  br i1 %cmp.i2365, label %if.then2.i2383, label %if.end5.i2366

if.then2.i2383:                                   ; preds = %if.end747
  %conv.i2384 = zext i8 %276 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.204, i32 noundef %conv.i2384, i32 noundef 93) #9
  br label %if.end5.i2366

if.end5.i2366:                                    ; preds = %if.then2.i2383, %if.end747
  %277 = load i8, ptr %type.i2364, align 1
  %idxprom.i2367 = zext i8 %277 to i64
  %arrayidx.i2368 = getelementptr inbounds nuw i8, ptr @reg_off_by_arg, i64 %idxprom.i2367
  %278 = load i8, ptr %arrayidx.i2368, align 1
  %tobool8.not.i2369 = icmp eq i8 %278, 0
  br i1 %tobool8.not.i2369, label %cond.false.i2380, label %cond.true.i2370

cond.true.i2370:                                  ; preds = %if.end5.i2366
  %arg1.i2371 = getelementptr inbounds nuw i8, ptr %add.ptr7482770, i64 8
  %279 = load i32, ptr %arg1.i2371, align 4
  br label %cond.end.i2372

cond.false.i2380:                                 ; preds = %if.end5.i2366
  %next_off.i2381 = getelementptr inbounds nuw i8, ptr %add.ptr7482770, i64 6
  %280 = load i16, ptr %next_off.i2381, align 2
  %conv9.i2382 = zext i16 %280 to i32
  br label %cond.end.i2372

cond.end.i2372:                                   ; preds = %cond.false.i2380, %cond.true.i2370
  %cond.i2373 = phi i32 [ %279, %cond.true.i2370 ], [ %conv9.i2382, %cond.false.i2380 ]
  %cmp10.i2374 = icmp eq i32 %cond.i2373, 0
  %idx.ext.i2376 = sext i32 %cond.i2373 to i64
  %add.ptr.i2377 = getelementptr inbounds %struct.regnode, ptr %add.ptr748, i64 %idx.ext.i2376
  %retval.0.i2379 = select i1 %cmp10.i2374, ptr null, ptr %add.ptr.i2377
  br label %while.cond671, !llvm.loop !13

while.end750:                                     ; preds = %land.rhs, %lor.rhs716
  %add.ptr7482769.lcssa = phi ptr [ %add.ptr7482769, %lor.rhs716 ], [ %add.ptr7482769, %land.rhs ]
  %sawminmod.0.lcssa = phi i32 [ %sawminmod.0, %lor.rhs716 ], [ %sawminmod.0, %land.rhs ]
  %sawopen.0.lcssa = phi i32 [ %sawopen.0, %lor.rhs716 ], [ %sawopen.0, %land.rhs ]
  %sawplus.0.lcssa = phi i32 [ %sawplus.0, %lor.rhs716 ], [ %sawplus.0, %land.rhs ]
  %sawlookahead.0.lcssa = phi i32 [ %sawlookahead.0, %lor.rhs716 ], [ %sawlookahead.0, %land.rhs ]
  store ptr %add.ptr7482769.lcssa, ptr %first, align 8
  %type7512780 = getelementptr inbounds nuw i8, ptr %add.ptr7482769.lcssa, i64 1
  %281 = load i8, ptr %type7512780, align 1
  %282 = add i8 %281, -31
  %cmp7552781 = icmp ult i8 %282, 9
  br i1 %cmp7552781, label %if.then757, label %if.else771.lr.ph

if.else771.lr.ph:                                 ; preds = %while.end750
  %tobool846.not = icmp eq i32 %sawopen.0.lcssa, 0
  %tobool851 = icmp eq i32 %sawlookahead.0.lcssa, 0
  %tobool851.old.not = icmp eq i32 %sawlookahead.0.lcssa, 0
  br label %if.else771

if.then757.loopexit:                              ; preds = %again.backedge
  %add.ptr8832774.lcssa = phi ptr [ %add.ptr8832774, %again.backedge ]
  %.lcssa2794 = phi i8 [ %340, %again.backedge ]
  br label %if.then757

if.then757:                                       ; preds = %if.then757.loopexit, %while.end750
  %add.ptr8832773.lcssa = phi ptr [ %add.ptr7482769.lcssa, %while.end750 ], [ %add.ptr8832774.lcssa, %if.then757.loopexit ]
  %.lcssa2627 = phi i8 [ %282, %while.end750 ], [ %.lcssa2794, %if.then757.loopexit ]
  store ptr %add.ptr8832773.lcssa, ptr %first, align 8
  %switch = icmp samesign ult i8 %.lcssa2627, 2
  br i1 %switch, label %if.end891, label %if.else768

if.else768:                                       ; preds = %if.then757
  store ptr %add.ptr8832773.lcssa, ptr %regstclass, align 8
  br label %if.end891

if.else771:                                       ; preds = %again.backedge, %if.else771.lr.ph
  %283 = phi i8 [ %281, %if.else771.lr.ph ], [ %339, %again.backedge ]
  %add.ptr88327732782 = phi ptr [ %add.ptr7482769.lcssa, %if.else771.lr.ph ], [ %add.ptr8832774, %again.backedge ]
  %idxprom752 = zext i8 %283 to i64
  %arrayidx753 = getelementptr inbounds nuw i8, ptr @PL_regkind, i64 %idxprom752
  %284 = load i8, ptr %arrayidx753, align 1
  %cmp776 = icmp eq i8 %284, 72
  br i1 %cmp776, label %land.lhs.true778, label %if.else790

land.lhs.true778:                                 ; preds = %if.else771
  %285 = load ptr, ptr %data779, align 8
  %data780 = getelementptr inbounds nuw i8, ptr %285, i64 16
  %arg1781 = getelementptr inbounds nuw i8, ptr %add.ptr88327732782, i64 4
  %286 = load i32, ptr %arg1781, align 4
  %idxprom782 = zext i32 %286 to i64
  %arrayidx783 = getelementptr inbounds nuw ptr, ptr %data780, i64 %idxprom782
  %287 = load ptr, ptr %arrayidx783, align 8
  %minlen784 = getelementptr inbounds nuw i8, ptr %287, i64 64
  %288 = load i64, ptr %minlen784, align 8
  %cmp785.not = icmp eq i64 %288, 0
  br i1 %cmp785.not, label %if.else790, label %if.then787

if.then787:                                       ; preds = %land.lhs.true778
  %add.ptr88327732782.lcssa = phi ptr [ %add.ptr88327732782, %land.lhs.true778 ]
  %.lcssa = phi i32 [ %286, %land.lhs.true778 ]
  %idxprom782.lcssa = phi i64 [ %idxprom782, %land.lhs.true778 ]
  store ptr %add.ptr88327732782.lcssa, ptr %first, align 8
  %type751.le = getelementptr inbounds nuw i8, ptr %add.ptr88327732782.lcssa, i64 1
  %289 = load ptr, ptr %rxi, align 8
  %data.i = getelementptr inbounds nuw i8, ptr %289, i64 24
  %290 = load ptr, ptr %data.i, align 8
  %data1.i = getelementptr inbounds nuw i8, ptr %290, i64 16
  %arrayidx.i2388 = getelementptr inbounds nuw ptr, ptr %data1.i, i64 %idxprom782.lcssa
  %291 = load ptr, ptr %arrayidx.i2388, align 8
  %uniquecharcount.i = getelementptr inbounds nuw i8, ptr %291, i64 56
  %292 = load i16, ptr %uniquecharcount.i, align 8
  %conv.i2389 = zext i16 %292 to i32
  %statecount.i = getelementptr inbounds nuw i8, ptr %291, i64 84
  %293 = load i32, ptr %statecount.i, align 4
  %lasttrans.i = getelementptr inbounds nuw i8, ptr %291, i64 4
  %294 = load i32, ptr %lasttrans.i, align 4
  %add.i2390 = add i32 %294, %conv.i2389
  %states.i = getelementptr inbounds nuw i8, ptr %291, i64 16
  %295 = load ptr, ptr %states.i, align 8
  %trans.i = getelementptr inbounds nuw i8, ptr %295, i64 24
  %296 = load i32, ptr %trans.i, align 8
  %297 = load i32, ptr %290, align 8
  %add.i.i = add i32 %297, 1
  %conv.i.i = zext i32 %297 to i64
  %mul.i.i = shl nuw nsw i64 %conv.i.i, 3
  %add6.i.i = add nuw nsw i64 %mul.i.i, 24
  %call.i.i = call ptr @Perl_safesysrealloc(ptr noundef %290, i64 noundef %add6.i.i) #9
  %298 = load ptr, ptr %rxi, align 8
  %data9.i.i = getelementptr inbounds nuw i8, ptr %298, i64 24
  store ptr %call.i.i, ptr %data9.i.i, align 8
  %tobool10.not.i.i = icmp eq i32 %297, 0
  br i1 %tobool10.not.i.i, label %if.else.i.i2407, label %if.then.i.i2391

if.then.i.i2391:                                  ; preds = %if.then787
  %299 = load ptr, ptr %rxi, align 8
  %data12.i.i = getelementptr inbounds nuw i8, ptr %299, i64 24
  %300 = load ptr, ptr %data12.i.i, align 8
  %what.i.i = getelementptr inbounds nuw i8, ptr %300, i64 8
  %301 = load ptr, ptr %what.i.i, align 8
  %conv14.i.i = zext i32 %add.i.i to i64
  %call16.i.i = call ptr @Perl_safesysrealloc(ptr noundef %301, i64 noundef %conv14.i.i) #9
  br label %S_add_data.exit.i

if.else.i.i2407:                                  ; preds = %if.then787
  %call22.i.i = call ptr @Perl_safesysmalloc(i64 noundef 1) #9
  br label %S_add_data.exit.i

S_add_data.exit.i:                                ; preds = %if.else.i.i2407, %if.then.i.i2391
  %call22.sink.i.i = phi ptr [ %call22.i.i, %if.else.i.i2407 ], [ %call16.i.i, %if.then.i.i2391 ]
  %302 = load ptr, ptr %rxi, align 8
  %data24.i.i = getelementptr inbounds nuw i8, ptr %302, i64 24
  %303 = load ptr, ptr %data24.i.i, align 8
  %what25.i.i = getelementptr inbounds nuw i8, ptr %303, i64 8
  store ptr %call22.sink.i.i, ptr %what25.i.i, align 8
  %304 = load ptr, ptr %rxi, align 8
  %data28.i.i = getelementptr inbounds nuw i8, ptr %304, i64 24
  %305 = load ptr, ptr %data28.i.i, align 8
  store i32 %add.i.i, ptr %305, align 8
  %306 = load ptr, ptr %rxi, align 8
  %data31.i.i = getelementptr inbounds nuw i8, ptr %306, i64 24
  %307 = load ptr, ptr %data31.i.i, align 8
  %what32.i.i = getelementptr inbounds nuw i8, ptr %307, i64 8
  %308 = load ptr, ptr %what32.i.i, align 8
  %add.ptr.i.i = getelementptr inbounds nuw i8, ptr %308, i64 %conv.i.i
  store i8 84, ptr %add.ptr.i.i, align 1
  %309 = load i8, ptr %type751.le, align 1
  %cmp.i2393 = icmp eq i8 %309, 72
  br i1 %cmp.i2393, label %if.then.i2406, label %if.else.i2394

if.then.i2406:                                    ; preds = %S_add_data.exit.i
  %call5.i = call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #10
  %310 = load i64, ptr %add.ptr88327732782.lcssa, align 4
  store i64 %310, ptr %call5.i, align 4
  br label %if.end.i2395

if.else.i2394:                                    ; preds = %S_add_data.exit.i
  %call7.i = call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %call7.i, ptr noundef nonnull readonly align 4 dereferenceable(40) %add.ptr88327732782.lcssa, i64 40, i1 false)
  br label %if.end.i2395

if.end.i2395:                                     ; preds = %if.else.i2394, %if.then.i2406
  %stclass.0.i = phi ptr [ %call5.i, %if.then.i2406 ], [ %call7.i, %if.else.i2394 ]
  %type8.i = getelementptr inbounds nuw i8, ptr %stclass.0.i, i64 1
  %311 = load i8, ptr %type8.i, align 1
  %add10.i = add i8 %311, 2
  store i8 %add10.i, ptr %type8.i, align 1
  %arg112.i = getelementptr inbounds nuw i8, ptr %stclass.0.i, i64 4
  store i32 %297, ptr %arg112.i, align 4
  %call13.i = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #10
  %312 = load ptr, ptr %rxi, align 8
  %data15.i = getelementptr inbounds nuw i8, ptr %312, i64 24
  %313 = load ptr, ptr %data15.i, align 8
  %data16.i = getelementptr inbounds nuw i8, ptr %313, i64 16
  %arrayidx18.i = getelementptr inbounds nuw ptr, ptr %data16.i, i64 %conv.i.i
  store ptr %call13.i, ptr %arrayidx18.i, align 8
  %trie19.i = getelementptr inbounds nuw i8, ptr %call13.i, i64 4
  store i32 %.lcssa, ptr %trie19.i, align 4
  %conv20.i = zext i32 %293 to i64
  %mul.i2396 = shl nuw nsw i64 %conv20.i, 4
  %call21.i = call noalias ptr @malloc(i64 noundef %mul.i2396) #11
  %states22.i = getelementptr inbounds nuw i8, ptr %call13.i, i64 16
  store ptr %call21.i, ptr %states22.i, align 8
  %314 = load ptr, ptr %states.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call21.i, ptr align 1 %314, i64 %mul.i2396, i1 false)
  %call28.i = call ptr @Perl_safesyscalloc(i64 noundef %conv20.i, i64 noundef 4) #9
  %call30.i = call noalias ptr @calloc(i64 noundef %conv20.i, i64 noundef 4) #10
  %fail31.i = getelementptr inbounds nuw i8, ptr %call13.i, i64 8
  store ptr %call30.i, ptr %fail31.i, align 8
  store i32 1, ptr %call13.i, align 8
  %arrayidx33.i = getelementptr inbounds nuw i8, ptr %call30.i, i64 4
  store i32 1, ptr %arrayidx33.i, align 4
  store i32 1, ptr %call30.i, align 4
  %cmp35391.not.i = icmp eq i16 %292, 0
  br i1 %cmp35391.not.i, label %S_construct_ahocorasick_from_trie.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.i2395
  %trans44.i = getelementptr inbounds nuw i8, ptr %291, i64 24
  %sub.i2397 = sub i32 %296, %conv.i2389
  %wide.trip.count.i = zext i16 %292 to i64
  br label %for.body.i2398

while.cond.preheader.i2401:                       ; preds = %if.end70.i
  %q_write.1.i.lcssa = phi i32 [ %q_write.1.i, %if.end70.i ]
  %cmp72400.not.i = icmp eq i32 %q_write.1.i.lcssa, 0
  br i1 %cmp72400.not.i, label %S_construct_ahocorasick_from_trie.exit, label %while.body.us.i.preheader

while.body.us.i.preheader:                        ; preds = %while.cond.preheader.i2401
  br label %while.body.us.i

while.body.us.i:                                  ; preds = %for.cond81.while.cond.loopexit_crit_edge.us.i, %while.body.us.i.preheader
  %q_read.0402.us.i = phi i32 [ %inc74.us.i, %for.cond81.while.cond.loopexit_crit_edge.us.i ], [ 0, %while.body.us.i.preheader ]
  %q_write.2401.us.i = phi i32 [ %q_write.4.us.i.lcssa, %for.cond81.while.cond.loopexit_crit_edge.us.i ], [ %q_write.1.i.lcssa, %while.body.us.i.preheader ]
  %rem.us.i = urem i32 %q_read.0402.us.i, %293
  %idxprom75.us.i = zext i32 %rem.us.i to i64
  %arrayidx76.us.i = getelementptr inbounds nuw i32, ptr %call28.i, i64 %idxprom75.us.i
  %315 = load i32, ptr %arrayidx76.us.i, align 4
  %316 = load ptr, ptr %states.i, align 8
  %idxprom78.us.i = zext i32 %315 to i64
  %arrayidx79.us.i = getelementptr inbounds nuw %struct._reg_trie_state, ptr %316, i64 %idxprom78.us.i
  %trans80.us.i = getelementptr inbounds nuw i8, ptr %arrayidx79.us.i, i64 8
  %317 = load i32, ptr %trans80.us.i, align 8
  %sub94.us.i = sub i32 %317, %conv.i2389
  %cmp117.us.i = icmp eq i32 %315, 1
  %cond119.us.i = zext i1 %cmp117.us.i to i32
  br label %for.body84.us.i

for.body84.us.i:                                  ; preds = %if.end232.us.i, %while.body.us.i
  %indvars.iv408.i = phi i64 [ 0, %while.body.us.i ], [ %indvars.iv.next409.i, %if.end232.us.i ]
  %q_write.3398.us.i = phi i32 [ %q_write.2401.us.i, %while.body.us.i ], [ %q_write.4.us.i, %if.end232.us.i ]
  %indvars412.i = trunc i64 %indvars.iv408.i to i32
  %add85.us.i = add i32 %317, %indvars412.i
  %cmp86.not.us.i = icmp uge i32 %add85.us.i, %conv.i2389
  %cmp90.us.i = icmp ult i32 %add85.us.i, %add.i2390
  %or.cond377.us.i = select i1 %cmp86.not.us.i, i1 %cmp90.us.i, i1 false
  br i1 %or.cond377.us.i, label %land.lhs.true92.us.i, label %cond.end120.us.i

land.lhs.true92.us.i:                             ; preds = %for.body84.us.i
  %318 = load ptr, ptr %trans44.i, align 8
  %add95.us.i = add i32 %sub94.us.i, %indvars412.i
  %idxprom96.us.i = zext i32 %add95.us.i to i64
  %arrayidx97.us.i = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %318, i64 %idxprom96.us.i
  %check98.us.i = getelementptr inbounds nuw i8, ptr %arrayidx97.us.i, i64 4
  %319 = load i32, ptr %check98.us.i, align 4
  %cmp99.us.i = icmp eq i32 %315, %319
  br i1 %cmp99.us.i, label %land.lhs.true101.us.i, label %cond.end120.us.i

land.lhs.true101.us.i:                            ; preds = %land.lhs.true92.us.i
  %320 = load i32, ptr %arrayidx97.us.i, align 4
  %tobool108.not.us.i = icmp ne i32 %320, 0
  %brmerge.i = or i1 %cmp117.us.i, %tobool108.not.us.i
  %.mux.i = select i1 %tobool108.not.us.i, i32 %320, i32 %cond119.us.i
  br i1 %brmerge.i, label %do.body.preheader.us.i, label %if.end232.us.i

cond.end120.us.i:                                 ; preds = %land.lhs.true92.us.i, %for.body84.us.i
  br i1 %cmp117.us.i, label %do.body.preheader.us.i, label %if.end232.us.i

do.body.us.i:                                     ; preds = %do.body.backedge.us.i, %do.body.preheader.us.i
  %fail_state.0.us.i = phi i32 [ %315, %do.body.preheader.us.i ], [ %321, %do.body.backedge.us.i ]
  %idxprom124.us.i = zext i32 %fail_state.0.us.i to i64
  %arrayidx125.us.i = getelementptr inbounds nuw i32, ptr %call30.i, i64 %idxprom124.us.i
  %321 = load i32, ptr %arrayidx125.us.i, align 4
  %idxprom127.us.i = zext i32 %321 to i64
  %arrayidx128.us.i = getelementptr inbounds nuw %struct._reg_trie_state, ptr %330, i64 %idxprom127.us.i
  %trans129.us.i = getelementptr inbounds nuw i8, ptr %arrayidx128.us.i, i64 8
  %322 = load i32, ptr %trans129.us.i, align 8
  %add130.us.i = add i32 %322, %indvars412.i
  %cmp131.not.us.i = icmp uge i32 %add130.us.i, %conv.i2389
  %cmp135.us.i = icmp ult i32 %add130.us.i, %add.i2390
  %or.cond378.us.i = select i1 %cmp131.not.us.i, i1 %cmp135.us.i, i1 false
  br i1 %or.cond378.us.i, label %land.lhs.true137.us.i, label %cond.false161.thread.us.i

cond.false161.thread.us.i:                        ; preds = %do.body.us.i
  %cmp162.old384.not.us.i = icmp eq i32 %321, 1
  br i1 %cmp162.old384.not.us.i, label %cond.false199.us.i.loopexit, label %do.body.backedge.us.i

land.lhs.true137.us.i:                            ; preds = %do.body.us.i
  %323 = load ptr, ptr %trans44.i, align 8
  %add140.us.i = add i32 %322, %332
  %idxprom141.us.i = zext i32 %add140.us.i to i64
  %arrayidx142.us.i = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %323, i64 %idxprom141.us.i
  %check143.us.i = getelementptr inbounds nuw i8, ptr %arrayidx142.us.i, i64 4
  %324 = load i32, ptr %check143.us.i, align 4
  %cmp144.us.i = icmp eq i32 %321, %324
  br i1 %cmp144.us.i, label %land.lhs.true146.us.i, label %cond.false161.us.i

cond.false161.us.i:                               ; preds = %land.lhs.true137.us.i
  %cmp162.old.not.us.i = icmp eq i32 %321, 1
  br i1 %cmp162.old.not.us.i, label %cond.false199.us.i.loopexit, label %do.body.backedge.us.i

land.lhs.true146.us.i:                            ; preds = %land.lhs.true137.us.i
  %325 = load i32, ptr %arrayidx142.us.i, align 4
  %tobool153.not.us.i = icmp eq i32 %325, 0
  %cmp162.us.i = icmp ne i32 %321, 1
  %or.cond381.us.i = and i1 %cmp162.us.i, %tobool153.not.us.i
  br i1 %or.cond381.us.i, label %do.body.backedge.us.i, label %land.lhs.true184.us.i

land.lhs.true184.us.i:                            ; preds = %land.lhs.true146.us.i
  %arrayidx142.us.i.lcssa = phi ptr [ %arrayidx142.us.i, %land.lhs.true146.us.i ]
  %.lcssa2795 = phi i32 [ %324, %land.lhs.true146.us.i ]
  %326 = load i32, ptr %arrayidx142.us.i.lcssa, align 4
  %tobool191.not.us.i = icmp eq i32 %326, 0
  br i1 %tobool191.not.us.i, label %cond.false199.us.i, label %cond.end203.us.i

cond.false199.us.i.loopexit:                      ; preds = %cond.false161.us.i, %cond.false161.thread.us.i
  br label %cond.false199.us.i

cond.false199.us.i:                               ; preds = %cond.false199.us.i.loopexit, %land.lhs.true184.us.i
  %327 = phi i32 [ %.lcssa2795, %land.lhs.true184.us.i ], [ 1, %cond.false199.us.i.loopexit ]
  %cmp200.us.i = icmp eq i32 %327, 1
  %cond202.us.i = zext i1 %cmp200.us.i to i32
  br label %cond.end203.us.i

cond.end203.us.i:                                 ; preds = %cond.false199.us.i, %land.lhs.true184.us.i
  %cond204.us.i = phi i32 [ %cond202.us.i, %cond.false199.us.i ], [ %326, %land.lhs.true184.us.i ]
  %idxprom205.us.i = zext i32 %cond121.us428.i to i64
  %arrayidx206.us.i = getelementptr inbounds nuw i32, ptr %call30.i, i64 %idxprom205.us.i
  store i32 %cond204.us.i, ptr %arrayidx206.us.i, align 4
  %arrayidx209.us.i = getelementptr inbounds nuw %struct._reg_trie_state, ptr %330, i64 %idxprom205.us.i
  %328 = load i16, ptr %arrayidx209.us.i, align 8
  %tobool210.not.us.i = icmp eq i16 %328, 0
  br i1 %tobool210.not.us.i, label %land.lhs.true211.us.i, label %if.end227.us.i

land.lhs.true211.us.i:                            ; preds = %cond.end203.us.i
  %idxprom213.us.i = zext i32 %cond204.us.i to i64
  %arrayidx214.us.i = getelementptr inbounds nuw %struct._reg_trie_state, ptr %330, i64 %idxprom213.us.i
  %329 = load i16, ptr %arrayidx214.us.i, align 8
  %tobool217.not.us.i = icmp eq i16 %329, 0
  br i1 %tobool217.not.us.i, label %if.end227.us.i, label %if.then218.us.i

if.then218.us.i:                                  ; preds = %land.lhs.true211.us.i
  store i16 %329, ptr %arrayidx209.us.i, align 8
  br label %if.end227.us.i

if.end227.us.i:                                   ; preds = %if.then218.us.i, %land.lhs.true211.us.i, %cond.end203.us.i
  %inc228.us.i = add i32 %q_write.3398.us.i, 1
  %rem229.us.i = urem i32 %q_write.3398.us.i, %293
  %idxprom230.us.i = zext i32 %rem229.us.i to i64
  %arrayidx231.us.i = getelementptr inbounds nuw i32, ptr %call28.i, i64 %idxprom230.us.i
  store i32 %cond121.us428.i, ptr %arrayidx231.us.i, align 4
  br label %if.end232.us.i

if.end232.us.i:                                   ; preds = %if.end227.us.i, %cond.end120.us.i, %land.lhs.true101.us.i
  %q_write.4.us.i = phi i32 [ %inc228.us.i, %if.end227.us.i ], [ %q_write.3398.us.i, %cond.end120.us.i ], [ %q_write.3398.us.i, %land.lhs.true101.us.i ]
  %indvars.iv.next409.i = add nuw nsw i64 %indvars.iv408.i, 1
  %exitcond414.not.i = icmp eq i64 %indvars.iv.next409.i, %wide.trip.count.i
  br i1 %exitcond414.not.i, label %for.cond81.while.cond.loopexit_crit_edge.us.i, label %for.body84.us.i, !llvm.loop !14

do.body.preheader.us.i:                           ; preds = %cond.end120.us.i, %land.lhs.true101.us.i
  %cond121.us428.i = phi i32 [ 1, %cond.end120.us.i ], [ %.mux.i, %land.lhs.true101.us.i ]
  %330 = load ptr, ptr %states22.i, align 8
  %331 = sub nsw i64 %indvars.iv408.i, %wide.trip.count.i
  %332 = trunc nsw i64 %331 to i32
  br label %do.body.us.i

do.body.backedge.us.i:                            ; preds = %land.lhs.true146.us.i, %cond.false161.us.i, %cond.false161.thread.us.i
  br label %do.body.us.i, !llvm.loop !15

for.cond81.while.cond.loopexit_crit_edge.us.i:    ; preds = %if.end232.us.i
  %q_write.4.us.i.lcssa = phi i32 [ %q_write.4.us.i, %if.end232.us.i ]
  %inc74.us.i = add nuw i32 %q_read.0402.us.i, 1
  %cmp72.us.i = icmp ult i32 %inc74.us.i, %q_write.4.us.i.lcssa
  br i1 %cmp72.us.i, label %while.body.us.i, label %S_construct_ahocorasick_from_trie.exit.loopexit, !llvm.loop !16

for.body.i2398:                                   ; preds = %if.end70.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end70.i ]
  %q_write.0393.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %q_write.1.i, %if.end70.i ]
  %indvars407.i = trunc i64 %indvars.iv.i to i32
  %add37.i = add i32 %296, %indvars407.i
  %cmp38.not.i = icmp uge i32 %add37.i, %conv.i2389
  %cmp41.i = icmp ult i32 %add37.i, %add.i2390
  %or.cond.i2399 = select i1 %cmp38.not.i, i1 %cmp41.i, i1 false
  br i1 %or.cond.i2399, label %land.lhs.true43.i, label %if.end70.i

land.lhs.true43.i:                                ; preds = %for.body.i2398
  %333 = load ptr, ptr %trans44.i, align 8
  %add45.i = add i32 %sub.i2397, %indvars407.i
  %idxprom46.i = zext i32 %add45.i to i64
  %arrayidx47.i = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %333, i64 %idxprom46.i
  %check.i = getelementptr inbounds nuw i8, ptr %arrayidx47.i, i64 4
  %334 = load i32, ptr %check.i, align 4
  %cmp48.i = icmp eq i32 %334, 1
  br i1 %cmp48.i, label %cond.end.i2404, label %if.end70.i

cond.end.i2404:                                   ; preds = %land.lhs.true43.i
  %335 = load i32, ptr %arrayidx47.i, align 4
  %tobool62.not.i = icmp eq i32 %335, 0
  br i1 %tobool62.not.i, label %if.end70.i, label %if.then63.i

if.then63.i:                                      ; preds = %cond.end.i2404
  %idxprom64.i = zext i32 %q_write.0393.i to i64
  %arrayidx65.i = getelementptr inbounds nuw i32, ptr %call28.i, i64 %idxprom64.i
  store i32 %335, ptr %arrayidx65.i, align 4
  %inc.i2405 = add i32 %q_write.0393.i, 1
  %idxprom68.i = zext i32 %335 to i64
  %arrayidx69.i = getelementptr inbounds nuw i32, ptr %call30.i, i64 %idxprom68.i
  store i32 1, ptr %arrayidx69.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then63.i, %cond.end.i2404, %land.lhs.true43.i, %for.body.i2398
  %q_write.1.i = phi i32 [ %inc.i2405, %if.then63.i ], [ %q_write.0393.i, %cond.end.i2404 ], [ %q_write.0393.i, %land.lhs.true43.i ], [ %q_write.0393.i, %for.body.i2398 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i2400 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i2400, label %while.cond.preheader.i2401, label %for.body.i2398, !llvm.loop !17

S_construct_ahocorasick_from_trie.exit.loopexit:  ; preds = %for.cond81.while.cond.loopexit_crit_edge.us.i
  br label %S_construct_ahocorasick_from_trie.exit

S_construct_ahocorasick_from_trie.exit:           ; preds = %S_construct_ahocorasick_from_trie.exit.loopexit, %while.cond.preheader.i2401, %if.end.i2395
  store i32 0, ptr %arrayidx33.i, align 4
  store i32 0, ptr %call30.i, align 4
  call void @Perl_safesysfree(ptr noundef %call28.i) #9
  store ptr %stclass.0.i, ptr %regstclass, align 8
  br label %if.end891

if.else790:                                       ; preds = %land.lhs.true778, %if.else771
  %conv792 = zext i8 %283 to i32
  %shr793 = lshr i32 %conv792, 3
  %idxprom794 = zext nneg i32 %shr793 to i64
  %arrayidx795 = getelementptr inbounds nuw i8, ptr @PL_simple_bitmask, i64 %idxprom794
  %336 = load i8, ptr %arrayidx795, align 1
  %conv796 = zext i8 %336 to i32
  %and799 = and i32 %conv792, 7
  %shl = shl nuw nsw i32 1, %and799
  %and800 = and i32 %shl, %conv796
  %tobool801.not = icmp eq i32 %and800, 0
  br i1 %tobool801.not, label %if.else804, label %if.then802

if.then802:                                       ; preds = %if.else790
  %add.ptr88327732782.lcssa2789 = phi ptr [ %add.ptr88327732782, %if.else790 ]
  store ptr %add.ptr88327732782.lcssa2789, ptr %first, align 8
  store ptr %add.ptr88327732782.lcssa2789, ptr %regstclass, align 8
  br label %if.end891

if.else804:                                       ; preds = %if.else790
  %trunc = and i8 %283, -4
  switch i8 %trunc, label %if.else820 [
    i8 12, label %if.then818
    i8 8, label %if.then818
  ]

if.then818:                                       ; preds = %if.else804, %if.else804
  %add.ptr88327732782.lcssa2790 = phi ptr [ %add.ptr88327732782, %if.else804 ], [ %add.ptr88327732782, %if.else804 ]
  store ptr %add.ptr88327732782.lcssa2790, ptr %first, align 8
  store ptr %add.ptr88327732782.lcssa2790, ptr %regstclass, align 8
  br label %if.end891

if.else820:                                       ; preds = %if.else804
  %337 = and i8 %283, -2
  %cmp825 = icmp eq i8 %337, 2
  br i1 %cmp825, label %if.then827, label %if.else836

if.then827:                                       ; preds = %if.else820
  %cmp830 = icmp eq i8 %283, 3
  %cond832 = select i1 %cmp830, i32 1024, i32 2048
  %338 = load i32, ptr %intflags, align 4
  %or834 = or i32 %338, %cond832
  store i32 %or834, ptr %intflags, align 4
  br label %again.backedge

again.backedge:                                   ; preds = %if.then872, %if.then841, %if.then827
  %add.ptr8832774 = getelementptr inbounds nuw i8, ptr %add.ptr88327732782, i64 4
  %type751 = getelementptr inbounds nuw i8, ptr %add.ptr88327732782, i64 5
  %339 = load i8, ptr %type751, align 1
  %340 = add i8 %339, -31
  %cmp755 = icmp ult i8 %340, 9
  br i1 %cmp755, label %if.then757.loopexit, label %if.else771

if.else836:                                       ; preds = %if.else820
  %cmp839 = icmp eq i8 %283, 7
  br i1 %cmp839, label %if.then841, label %if.else845

if.then841:                                       ; preds = %if.else836
  %341 = load i32, ptr %intflags, align 4
  %or843 = or i32 %341, 4096
  store i32 %or843, ptr %intflags, align 4
  br label %again.backedge

if.else845:                                       ; preds = %if.else836
  br i1 %tobool846.not, label %land.lhs.true850, label %lor.lhs.false847

lor.lhs.false847:                                 ; preds = %if.else845
  %342 = load i32, ptr %sawback2725, align 4
  %tobool849 = icmp eq i32 %342, 0
  %or.cond1665.not2619 = select i1 %tobool849, i1 %tobool851, i1 false
  %cmp855 = icmp eq i8 %283, 42
  %or.cond2617 = and i1 %cmp855, %or.cond1665.not2619
  br i1 %or.cond2617, label %land.lhs.true857, label %if.end891.loopexit

land.lhs.true850:                                 ; preds = %if.else845
  br i1 %tobool851.old.not, label %land.lhs.true852, label %if.end908.loopexit

land.lhs.true852:                                 ; preds = %land.lhs.true850
  %cmp855.old = icmp eq i8 %283, 42
  br i1 %cmp855.old, label %land.lhs.true857, label %if.end891.loopexit

land.lhs.true857:                                 ; preds = %land.lhs.true852, %lor.lhs.false847
  %type859 = getelementptr inbounds nuw i8, ptr %add.ptr88327732782, i64 5
  %343 = load i8, ptr %type859, align 1
  %344 = add i8 %343, -16
  %cmp863 = icmp ult i8 %344, 3
  br i1 %cmp863, label %land.lhs.true865, label %if.end891.loopexit

land.lhs.true865:                                 ; preds = %land.lhs.true857
  %345 = load i32, ptr %intflags, align 4
  %and867 = and i32 %345, 7168
  %tobool868.not = icmp eq i32 %and867, 0
  %346 = load i32, ptr %num_code_blocks, align 8
  %tobool871.not = icmp eq i32 %346, 0
  %or.cond2169 = select i1 %tobool868.not, i1 %tobool871.not, i1 false
  br i1 %or.cond2169, label %if.then872, label %if.end891.loopexit

if.then872:                                       ; preds = %land.lhs.true865
  %cmp877 = icmp eq i8 %343, 16
  %or880 = select i1 %cmp877, i32 1026, i32 2050
  %or882 = or i32 %345, %or880
  store i32 %or882, ptr %intflags, align 4
  br label %again.backedge

if.end891.loopexit:                               ; preds = %land.lhs.true865, %land.lhs.true857, %land.lhs.true852, %lor.lhs.false847
  %add.ptr88327732782.lcssa2791 = phi ptr [ %add.ptr88327732782, %lor.lhs.false847 ], [ %add.ptr88327732782, %land.lhs.true852 ], [ %add.ptr88327732782, %land.lhs.true857 ], [ %add.ptr88327732782, %land.lhs.true865 ]
  store ptr %add.ptr88327732782.lcssa2791, ptr %first, align 8
  br label %if.end891

if.end891:                                        ; preds = %if.end891.loopexit, %if.then818, %if.then802, %S_construct_ahocorasick_from_trie.exit, %if.else768, %if.then757
  %tobool892 = icmp eq i32 %sawplus.0.lcssa, 0
  %tobool894 = icmp ne i32 %sawminmod.0.lcssa, 0
  %or.cond1667 = select i1 %tobool892, i1 true, i1 %tobool894
  %tobool896 = icmp ne i32 %sawlookahead.0.lcssa, 0
  %or.cond1669 = select i1 %or.cond1667, i1 true, i1 %tobool896
  br i1 %or.cond1669, label %if.end908, label %land.lhs.true897

land.lhs.true897:                                 ; preds = %if.end891
  %tobool898.not = icmp eq i32 %sawopen.0.lcssa, 0
  %347 = load i32, ptr %sawback2725, align 4
  %tobool901.not = icmp eq i32 %347, 0
  %or.cond2170 = select i1 %tobool898.not, i1 true, i1 %tobool901.not
  %348 = load i32, ptr %num_code_blocks, align 8
  %tobool904.not = icmp eq i32 %348, 0
  %or.cond2171 = select i1 %or.cond2170, i1 %tobool904.not, i1 false
  br i1 %or.cond2171, label %if.then905, label %if.end908

if.then905:                                       ; preds = %land.lhs.true897
  %349 = load i32, ptr %intflags, align 4
  %or907 = or i32 %349, 1
  store i32 %or907, ptr %intflags, align 4
  br label %if.end908

if.end908.loopexit:                               ; preds = %land.lhs.true850
  %add.ptr88327732782.lcssa2792 = phi ptr [ %add.ptr88327732782, %land.lhs.true850 ]
  store ptr %add.ptr88327732782.lcssa2792, ptr %first, align 8
  br label %if.end908

if.end908:                                        ; preds = %if.end908.loopexit, %if.then905, %land.lhs.true897, %if.end891
  %call909 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.178, i64 noundef 0) #9
  store ptr %call909, ptr %longest_fixed, align 8
  %call910 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.178, i64 noundef 0) #9
  store ptr %call910, ptr %longest_float, align 8
  %call911 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.178, i64 noundef 0) #9
  store ptr %call911, ptr %last_found, align 8
  store ptr %longest_fixed, ptr %longest, align 8
  call void @Perl_push_scope() #9
  %350 = load ptr, ptr %longest_fixed, align 8
  call void @Perl_save_pushptr(ptr noundef %350, i32 noundef 11) #9
  %351 = load ptr, ptr %longest_float, align 8
  call void @Perl_save_pushptr(ptr noundef %351, i32 noundef 11) #9
  %352 = load ptr, ptr %last_found, align 8
  call void @Perl_save_pushptr(ptr noundef %352, i32 noundef 11) #9
  store ptr %add.ptr665, ptr %first, align 8
  %353 = load ptr, ptr %regstclass, align 8
  %tobool917.not.not = icmp eq ptr %353, null
  br i1 %tobool917.not.not, label %if.then918, label %if.end920

if.then918:                                       ; preds = %if.end908
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %ch_class, i8 0, i64 56, i1 false)
  store i8 19, ptr %type.i2408, align 1
  store i16 1, ptr %next_off.i2409, align 2
  store i32 -1, ptr %arg1.i2410, align 4
  %call.i.i.i = call ptr @Perl_newSV_type(i32 noundef 4) #9
  %sv_flags.i.i.i = getelementptr inbounds nuw i8, ptr %call.i.i.i, i64 12
  %354 = load i32, ptr %sv_flags.i.i.i, align 4
  %and.i.i.i = and i32 %354, 268435456
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %cond.true.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then918
  %355 = load ptr, ptr %call.i.i.i, align 8
  %xpv_len_u.i.i.i = getelementptr inbounds nuw i8, ptr %355, i64 24
  %356 = load i64, ptr %xpv_len_u.i.i.i, align 8
  %cmp2.i.i.i = icmp ult i64 %356, 25
  br i1 %cmp2.i.i.i, label %cond.true.i.i.i, label %S_ssc_init.exit

cond.true.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i, %if.then918
  %call6.i.i.i = call ptr @Perl_sv_grow(ptr noundef nonnull %call.i.i.i, i64 noundef 25) #9
  br label %S_ssc_init.exit

S_ssc_init.exit:                                  ; preds = %cond.true.i.i.i, %lor.lhs.false.i.i.i
  %call.val.i.i.i = load ptr, ptr %call.i.i.i, align 8
  %xpv_cur.i.i.i.i = getelementptr inbounds nuw i8, ptr %call.val.i.i.i, i64 16
  store i64 0, ptr %xpv_cur.i.i.i.i, align 8
  %call.val19.i.i.i = load ptr, ptr %call.i.i.i, align 8
  %iterator.i.i.i.i = getelementptr inbounds nuw i8, ptr %call.val19.i.i.i, i64 40
  store i64 -1, ptr %iterator.i.i.i.i, align 8
  %call.val18.i.i.i = load ptr, ptr %call.i.i.i, align 8
  %prev_index.i.i.i.i = getelementptr inbounds nuw i8, ptr %call.val18.i.i.i, i64 32
  store i64 0, ptr %prev_index.i.i.i.i, align 8
  %call1.i.i = call ptr @Perl_sv_2mortal(ptr noundef nonnull %call.i.i.i) #9
  store ptr %call1.i.i, ptr %invlist.i.i, align 8
  call fastcc void @S__append_range_to_invlist(ptr noundef %call1.i.i, i64 noundef 0, i64 noundef -1)
  %357 = load i8, ptr %ch_class, align 8
  %358 = or i8 %357, 1
  store i8 %358, ptr %ch_class, align 8
  %359 = load i32, ptr %contains_locale, align 8
  %tobool.not.i2411 = icmp eq i32 %359, 0
  %spec.select.i = select i1 %tobool.not.i2411, i32 0, i32 536870911
  store i32 %spec.select.i, ptr %251, align 4
  store ptr %ch_class, ptr %start_class, align 8
  br label %if.end920

if.end920:                                        ; preds = %S_ssc_init.exit, %if.end908
  %stclass_flag.0 = phi i32 [ 2048, %S_ssc_init.exit ], [ 0, %if.end908 ]
  store ptr %last_close, ptr %last_closep, align 8
  %360 = load ptr, ptr %scan, align 8
  %361 = load i64, ptr %size2704, align 8
  %add.ptr922 = getelementptr inbounds %struct.regnode, ptr %360, i64 %361
  %or923 = select i1 %tobool631.not, i32 9216, i32 74752
  %or926 = or disjoint i32 %or923, %stclass_flag.0
  %call927 = call fastcc i64 @S_study_chunk(ptr noundef %RExC_state, ptr noundef %first, ptr noundef %minlen, ptr noundef %fake, ptr noundef %add.ptr922, ptr noundef nonnull %data, i32 noundef -1, i32 noundef 0, i32 noundef %or926, i32 noundef 0)
  store i64 %call927, ptr %minlen, align 8
  %362 = load i32, ptr %flags929, align 8
  %and930 = and i32 %362, 16384
  %tobool931.not = icmp ne i32 %and930, 0
  %brmerge.not = and i1 %tobool931.not, %tobool631.not
  br i1 %brmerge.not, label %cleanup1326, label %do.end938

do.end938:                                        ; preds = %if.end920
  %tobool917.not.not.lcssa = phi i1 [ %tobool917.not.not, %if.end920 ]
  %longest_fixed.le = getelementptr inbounds nuw i8, ptr %data, i64 56
  %longest_float.le = getelementptr inbounds nuw i8, ptr %data, i64 88
  %longest.le = getelementptr inbounds nuw i8, ptr %data, i64 48
  %flags929.le = getelementptr inbounds nuw i8, ptr %data, i64 128
  %363 = load i32, ptr %npar2707, align 8
  %cmp940 = icmp eq i32 %363, 1
  %364 = load ptr, ptr %longest.le, align 8
  %cmp945 = icmp eq ptr %364, %longest_fixed.le
  %or.cond1671 = select i1 %cmp940, i1 %cmp945, i1 false
  %last_start_min = getelementptr inbounds nuw i8, ptr %data, i64 32
  %365 = load i64, ptr %last_start_min, align 8
  %cmp948 = icmp eq i64 %365, 0
  %or.cond1673 = select i1 %or.cond1671, i1 %cmp948, i1 false
  %last_end = getelementptr inbounds nuw i8, ptr %data, i64 24
  %366 = load i64, ptr %last_end, align 8
  %cmp951 = icmp sgt i64 %366, 0
  %or.cond1675 = select i1 %or.cond1673, i1 %cmp951, i1 false
  %367 = load i32, ptr %seen_zerolen2717, align 4
  %tobool955.not = icmp eq i32 %367, 0
  %or.cond2172 = select i1 %or.cond1675, i1 %tobool955.not, i1 false
  br i1 %or.cond2172, label %land.lhs.true956, label %if.end967

land.lhs.true956:                                 ; preds = %do.end938
  %368 = load i32, ptr %seen2721, align 8
  %369 = and i32 %368, 132
  %or.cond2173 = icmp eq i32 %369, 0
  br i1 %or.cond2173, label %if.then964, label %if.end967

if.then964:                                       ; preds = %land.lhs.true956
  %370 = load i32, ptr %extflags, align 8
  %or966 = or i32 %370, 524288
  store i32 %or966, ptr %extflags, align 8
  br label %if.end967

if.end967:                                        ; preds = %if.then964, %land.lhs.true956, %do.end938
  call fastcc void @S_scan_commit(ptr noundef %RExC_state, ptr noundef nonnull %data, ptr noundef %minlen, i32 noundef 0)
  %371 = load i32, ptr %utf8, align 8
  %tobool969.not = icmp eq i32 %371, 0
  br i1 %tobool969.not, label %cond.false975, label %cond.true972

cond.true972:                                     ; preds = %if.end967
  %372 = load ptr, ptr %longest_float.le, align 8
  %call974 = call i64 @Perl_sv_len_utf8(ptr noundef %372) #9
  br label %cond.end979

cond.false975:                                    ; preds = %if.end967
  %373 = load ptr, ptr %longest_float.le, align 8
  %374 = load ptr, ptr %373, align 8
  %xpv_cur978 = getelementptr inbounds nuw i8, ptr %374, i64 16
  %375 = load i64, ptr %xpv_cur978, align 8
  br label %cond.end979

cond.end979:                                      ; preds = %cond.false975, %cond.true972
  %cond980 = phi i64 [ %call974, %cond.true972 ], [ %375, %cond.false975 ]
  %376 = load ptr, ptr %longest_fixed.le, align 8
  %377 = load ptr, ptr %376, align 8
  %xpv_cur983 = getelementptr inbounds nuw i8, ptr %377, i64 16
  %378 = load i64, ptr %xpv_cur983, align 8
  %tobool984.not = icmp eq i64 %378, 0
  br i1 %tobool984.not, label %land.lhs.true997, label %land.lhs.true985

land.lhs.true985:                                 ; preds = %cond.end979
  %offset_fixed = getelementptr inbounds nuw i8, ptr %data, i64 64
  %379 = load i64, ptr %offset_fixed, align 8
  %offset_float_min = getelementptr inbounds nuw i8, ptr %data, i64 96
  %380 = load i64, ptr %offset_float_min, align 8
  %cmp986 = icmp eq i64 %379, %380
  br i1 %cmp986, label %land.lhs.true988, label %land.lhs.true997

land.lhs.true988:                                 ; preds = %land.lhs.true985
  %381 = load ptr, ptr %longest_float.le, align 8
  %382 = load ptr, ptr %381, align 8
  %xpv_cur994 = getelementptr inbounds nuw i8, ptr %382, i64 16
  %383 = load i64, ptr %xpv_cur994, align 8
  %cmp995 = icmp eq i64 %378, %383
  br i1 %cmp995, label %if.else1044, label %land.lhs.true997

land.lhs.true997:                                 ; preds = %land.lhs.true988, %land.lhs.true985, %cond.end979
  %384 = load ptr, ptr %longest_float.le, align 8
  %385 = load ptr, ptr %substrs, align 8
  %utf8_substr = getelementptr inbounds nuw i8, ptr %385, i64 72
  %substr = getelementptr inbounds nuw i8, ptr %385, i64 64
  %end_shift = getelementptr inbounds nuw i8, ptr %385, i64 80
  %lookbehind_float = getelementptr inbounds nuw i8, ptr %data, i64 120
  %386 = load i64, ptr %lookbehind_float, align 8
  %offset_float_min1008 = getelementptr inbounds nuw i8, ptr %data, i64 96
  %387 = load i64, ptr %offset_float_min1008, align 8
  %minlen_float = getelementptr inbounds nuw i8, ptr %data, i64 112
  %388 = load ptr, ptr %minlen_float, align 8
  %389 = load i32, ptr %flags929.le, align 8
  %and1010 = and i32 %389, 48
  %tobool1011.not = icmp eq i32 %and1010, 0
  %and1015 = and i32 %389, 32
  %tobool1016.not = icmp eq i32 %and1015, 0
  %tobool.not.i2412 = icmp eq i64 %cond980, 0
  br i1 %tobool.not.i2412, label %lor.lhs.false.i2424, label %lor.lhs.false5.i

lor.lhs.false.i2424:                              ; preds = %land.lhs.true997
  br i1 %tobool1011.not, label %if.else1044, label %land.lhs.true.i2425

land.lhs.true.i2425:                              ; preds = %lor.lhs.false.i2424
  br i1 %tobool1016.not, label %lor.lhs.false5.i, label %lor.lhs.false3.i

lor.lhs.false3.i:                                 ; preds = %land.lhs.true.i2425
  %390 = load i32, ptr %RExC_state, align 8
  %and.i2426 = and i32 %390, 1
  %tobool4.not.i = icmp eq i32 %and.i2426, 0
  br i1 %tobool4.not.i, label %if.else1044, label %lor.lhs.false5.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false3.i, %land.lhs.true.i2425, %land.lhs.true997
  %391 = load i32, ptr %seen2721, align 8
  %and6.i = and i32 %391, 1024
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i2415, label %if.else1044

if.end.i2415:                                     ; preds = %lor.lhs.false5.i
  %sv_flags.i2416 = getelementptr inbounds nuw i8, ptr %384, i64 12
  %392 = load i32, ptr %sv_flags.i2416, align 4
  %and8.i = and i32 %392, 536870912
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %rx_substr.rx_utf8.i = select i1 %tobool9.not.i, ptr %substr, ptr %utf8_substr
  %rx_utf8.rx_substr.i = select i1 %tobool9.not.i, ptr %utf8_substr, ptr %substr
  store ptr %384, ptr %rx_substr.rx_utf8.i, align 8
  store ptr null, ptr %rx_utf8.rx_substr.i, align 8
  %tobool12.not.i = icmp eq ptr %388, null
  br i1 %tobool12.not.i, label %cond.end.i2418, label %cond.true.i2417

cond.true.i2417:                                  ; preds = %if.end.i2415
  %393 = load i64, ptr %388, align 8
  br label %cond.end.i2418

cond.end.i2418:                                   ; preds = %cond.true.i2417, %if.end.i2415
  %cond.i2419 = phi i64 [ %393, %cond.true.i2417 ], [ %cond980, %if.end.i2415 ]
  %394 = load i32, ptr %sv_flags.i2416, align 4
  %cmp.i2420 = icmp ugt i32 %394, -1073741825
  %conv18.i = zext i1 %cmp.i2420 to i64
  %395 = add i64 %cond980, %387
  %sub13.i = sub i64 %386, %395
  %add.i2421 = add i64 %sub13.i, %cond.i2419
  %add19.i = add i64 %add.i2421, %conv18.i
  store i64 %add19.i, ptr %end_shift, align 8
  %.mux.i2422 = select i1 %tobool1011.not, i32 0, i32 15
  %396 = load i32, ptr %RExC_state, align 8
  %and24.i = and i32 %396, 1
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %397 = select i1 %tobool25.not.i, i32 0, i32 15
  %cond27.i = select i1 %tobool1016.not, i32 %.mux.i2422, i32 %397
  call void @Perl_fbm_compile(ptr noundef nonnull %384, i32 noundef %cond27.i) #9
  %398 = load i64, ptr %offset_float_min1008, align 8
  %399 = load i64, ptr %lookbehind_float, align 8
  %sub1024 = sub nsw i64 %398, %399
  %400 = load ptr, ptr %substrs, align 8
  %arrayidx1027 = getelementptr inbounds nuw i8, ptr %400, i64 48
  store i64 %sub1024, ptr %arrayidx1027, align 8
  %offset_float_max = getelementptr inbounds nuw i8, ptr %data, i64 104
  %401 = load i64, ptr %offset_float_max, align 8
  %402 = load ptr, ptr %substrs, align 8
  %max_offset = getelementptr inbounds nuw i8, ptr %402, i64 56
  store i64 %401, ptr %max_offset, align 8
  %403 = load i64, ptr %offset_float_max, align 8
  %cmp1032.not = icmp eq i64 %403, 9223372036854775807
  br i1 %cmp1032.not, label %if.end1041, label %if.then1034

if.then1034:                                      ; preds = %cond.end.i2418
  %404 = load i64, ptr %lookbehind_float, align 8
  %405 = load ptr, ptr %substrs, align 8
  %max_offset1039 = getelementptr inbounds nuw i8, ptr %405, i64 56
  %406 = load i64, ptr %max_offset1039, align 8
  %sub1040 = sub nsw i64 %406, %404
  store i64 %sub1040, ptr %max_offset1039, align 8
  br label %if.end1041

if.end1041:                                       ; preds = %if.then1034, %cond.end.i2418
  %407 = load ptr, ptr %longest_float.le, align 8
  %sv_refcnt = getelementptr inbounds nuw i8, ptr %407, i64 8
  %408 = load i32, ptr %sv_refcnt, align 8
  %inc1043 = add i32 %408, 1
  store i32 %inc1043, ptr %sv_refcnt, align 8
  br label %if.end1053

if.else1044:                                      ; preds = %lor.lhs.false5.i, %lor.lhs.false3.i, %lor.lhs.false.i2424, %land.lhs.true988
  %409 = load ptr, ptr %substrs, align 8
  %utf8_substr1048 = getelementptr inbounds nuw i8, ptr %409, i64 72
  store ptr null, ptr %utf8_substr1048, align 8
  %410 = load ptr, ptr %substrs, align 8
  %substr1052 = getelementptr inbounds nuw i8, ptr %410, i64 64
  store ptr null, ptr %substr1052, align 8
  br label %if.end1053

if.end1053:                                       ; preds = %if.else1044, %if.end1041
  %longest_float_length.0 = phi i64 [ 0, %if.else1044 ], [ %cond980, %if.end1041 ]
  %411 = load i32, ptr %utf8, align 8
  %tobool1055.not = icmp eq i32 %411, 0
  br i1 %tobool1055.not, label %cond.false1061, label %cond.true1058

cond.true1058:                                    ; preds = %if.end1053
  %412 = load ptr, ptr %longest_fixed.le, align 8
  %call1060 = call i64 @Perl_sv_len_utf8(ptr noundef %412) #9
  br label %cond.end1065

cond.false1061:                                   ; preds = %if.end1053
  %413 = load ptr, ptr %longest_fixed.le, align 8
  %414 = load ptr, ptr %413, align 8
  %xpv_cur1064 = getelementptr inbounds nuw i8, ptr %414, i64 16
  %415 = load i64, ptr %xpv_cur1064, align 8
  br label %cond.end1065

cond.end1065:                                     ; preds = %cond.false1061, %cond.true1058
  %cond1066 = phi i64 [ %call1060, %cond.true1058 ], [ %415, %cond.false1061 ]
  %416 = load ptr, ptr %longest_fixed.le, align 8
  %417 = load ptr, ptr %substrs, align 8
  %utf8_substr1071 = getelementptr inbounds nuw i8, ptr %417, i64 32
  %substr1075 = getelementptr inbounds nuw i8, ptr %417, i64 24
  %end_shift1079 = getelementptr inbounds nuw i8, ptr %417, i64 40
  %lookbehind_fixed = getelementptr inbounds nuw i8, ptr %data, i64 80
  %418 = load i32, ptr %lookbehind_fixed, align 8
  %conv1080 = sext i32 %418 to i64
  %offset_fixed1081 = getelementptr inbounds nuw i8, ptr %data, i64 64
  %419 = load i64, ptr %offset_fixed1081, align 8
  %minlen_fixed = getelementptr inbounds nuw i8, ptr %data, i64 72
  %420 = load ptr, ptr %minlen_fixed, align 8
  %421 = load i32, ptr %flags929.le, align 8
  %and1083 = and i32 %421, 12
  %tobool1084.not = icmp eq i32 %and1083, 0
  %and1088 = and i32 %421, 8
  %tobool1089.not = icmp eq i32 %and1088, 0
  %tobool.not.i2427 = icmp eq i64 %cond1066, 0
  br i1 %tobool.not.i2427, label %lor.lhs.false.i2456, label %lor.lhs.false5.i2428

lor.lhs.false.i2456:                              ; preds = %cond.end1065
  br i1 %tobool1084.not, label %if.else1105, label %land.lhs.true.i2457

land.lhs.true.i2457:                              ; preds = %lor.lhs.false.i2456
  br i1 %tobool1089.not, label %lor.lhs.false5.i2428, label %lor.lhs.false3.i2458

lor.lhs.false3.i2458:                             ; preds = %land.lhs.true.i2457
  %422 = load i32, ptr %RExC_state, align 8
  %and.i2459 = and i32 %422, 1
  %tobool4.not.i2460 = icmp eq i32 %and.i2459, 0
  br i1 %tobool4.not.i2460, label %if.else1105, label %lor.lhs.false5.i2428

lor.lhs.false5.i2428:                             ; preds = %lor.lhs.false3.i2458, %land.lhs.true.i2457, %cond.end1065
  %423 = load i32, ptr %seen2721, align 8
  %and6.i2430 = and i32 %423, 1024
  %tobool7.not.i2431 = icmp eq i32 %and6.i2430, 0
  br i1 %tobool7.not.i2431, label %if.end.i2434, label %if.else1105

if.end.i2434:                                     ; preds = %lor.lhs.false5.i2428
  %sv_flags.i2435 = getelementptr inbounds nuw i8, ptr %416, i64 12
  %424 = load i32, ptr %sv_flags.i2435, align 4
  %and8.i2436 = and i32 %424, 536870912
  %tobool9.not.i2437 = icmp eq i32 %and8.i2436, 0
  %rx_substr.rx_utf8.i2438 = select i1 %tobool9.not.i2437, ptr %substr1075, ptr %utf8_substr1071
  %rx_utf8.rx_substr.i2439 = select i1 %tobool9.not.i2437, ptr %utf8_substr1071, ptr %substr1075
  store ptr %416, ptr %rx_substr.rx_utf8.i2438, align 8
  store ptr null, ptr %rx_utf8.rx_substr.i2439, align 8
  %tobool12.not.i2440 = icmp eq ptr %420, null
  br i1 %tobool12.not.i2440, label %cond.end.i2442, label %cond.true.i2441

cond.true.i2441:                                  ; preds = %if.end.i2434
  %425 = load i64, ptr %420, align 8
  br label %cond.end.i2442

cond.end.i2442:                                   ; preds = %cond.true.i2441, %if.end.i2434
  %cond.i2443 = phi i64 [ %425, %cond.true.i2441 ], [ %cond1066, %if.end.i2434 ]
  %426 = load i32, ptr %sv_flags.i2435, align 4
  %cmp.i2444 = icmp ugt i32 %426, -1073741825
  %conv18.i2445 = zext i1 %cmp.i2444 to i64
  %427 = add i64 %419, %cond1066
  %sub13.i2446 = sub i64 %conv1080, %427
  %add.i2447 = add i64 %sub13.i2446, %cond.i2443
  %add19.i2448 = add i64 %add.i2447, %conv18.i2445
  store i64 %add19.i2448, ptr %end_shift1079, align 8
  %.mux.i2450 = select i1 %tobool1084.not, i32 0, i32 15
  %428 = load i32, ptr %RExC_state, align 8
  %and24.i2454 = and i32 %428, 1
  %tobool25.not.i2455 = icmp eq i32 %and24.i2454, 0
  %429 = select i1 %tobool25.not.i2455, i32 0, i32 15
  %cond27.i2452 = select i1 %tobool1089.not, i32 %.mux.i2450, i32 %429
  call void @Perl_fbm_compile(ptr noundef nonnull %416, i32 noundef %cond27.i2452) #9
  %430 = load i64, ptr %offset_fixed1081, align 8
  %431 = load i32, ptr %lookbehind_fixed, align 8
  %conv1096 = sext i32 %431 to i64
  %sub1097 = sub nsw i64 %430, %conv1096
  %432 = load ptr, ptr %substrs, align 8
  %data1099 = getelementptr inbounds nuw i8, ptr %432, i64 8
  store i64 %sub1097, ptr %data1099, align 8
  %433 = load ptr, ptr %longest_fixed.le, align 8
  %sv_refcnt1103 = getelementptr inbounds nuw i8, ptr %433, i64 8
  %434 = load i32, ptr %sv_refcnt1103, align 8
  %inc1104 = add i32 %434, 1
  store i32 %inc1104, ptr %sv_refcnt1103, align 8
  %435 = icmp ugt i64 %cond1066, %longest_float_length.0
  br label %if.end1114

if.else1105:                                      ; preds = %lor.lhs.false5.i2428, %lor.lhs.false3.i2458, %lor.lhs.false.i2456
  %436 = load ptr, ptr %substrs, align 8
  %utf8_substr1109 = getelementptr inbounds nuw i8, ptr %436, i64 32
  store ptr null, ptr %utf8_substr1109, align 8
  %437 = load ptr, ptr %substrs, align 8
  %substr1113 = getelementptr inbounds nuw i8, ptr %437, i64 24
  store ptr null, ptr %substr1113, align 8
  br label %if.end1114

if.end1114:                                       ; preds = %if.else1105, %cond.end.i2442
  %longest_fixed_length.0 = phi i1 [ %435, %cond.end.i2442 ], [ false, %if.else1105 ]
  call void @Perl_pop_scope() #9
  %438 = load ptr, ptr %regstclass, align 8
  %tobool1116.not = icmp eq ptr %438, null
  br i1 %tobool1116.not, label %if.end1131, label %land.lhs.true1117

land.lhs.true1117:                                ; preds = %if.end1114
  %type1119 = getelementptr inbounds nuw i8, ptr %438, i64 1
  %439 = load i8, ptr %type1119, align 1
  %440 = and i8 %439, -2
  %switch2178 = icmp eq i8 %440, 16
  br i1 %switch2178, label %if.then1129, label %if.end1131

if.then1129:                                      ; preds = %land.lhs.true1117
  store ptr null, ptr %regstclass, align 8
  br label %if.end1131

if.end1131:                                       ; preds = %if.then1129, %land.lhs.true1117, %if.end1114
  %441 = load ptr, ptr %substrs, align 8
  %substr1135 = getelementptr inbounds nuw i8, ptr %441, i64 24
  %442 = load ptr, ptr %substr1135, align 8
  %tobool1136.not = icmp eq ptr %442, null
  br i1 %tobool1136.not, label %lor.lhs.false1137, label %lor.lhs.false1143

lor.lhs.false1137:                                ; preds = %if.end1131
  %utf8_substr1141 = getelementptr inbounds nuw i8, ptr %441, i64 32
  %443 = load ptr, ptr %utf8_substr1141, align 8
  %tobool1142.not = icmp eq ptr %443, null
  br i1 %tobool1142.not, label %land.lhs.true1149, label %lor.lhs.false1143

lor.lhs.false1143:                                ; preds = %lor.lhs.false1137, %if.end1131
  %data1145 = getelementptr inbounds nuw i8, ptr %441, i64 8
  %444 = load i64, ptr %data1145, align 8
  %tobool1148 = icmp ne i64 %444, 0
  %or.cond1677 = and i1 %tobool917.not.not.lcssa, %tobool1148
  br i1 %or.cond1677, label %land.lhs.true1151, label %if.end1186

land.lhs.true1149:                                ; preds = %lor.lhs.false1137
  br i1 %tobool917.not.not.lcssa, label %land.lhs.true1151, label %if.end1186

land.lhs.true1151:                                ; preds = %land.lhs.true1149, %lor.lhs.false1143
  %start_class1152 = getelementptr inbounds nuw i8, ptr %data, i64 144
  %445 = load ptr, ptr %start_class1152, align 8
  %446 = load i8, ptr %445, align 8
  %447 = and i8 %446, 1
  %tobool1156.not = icmp eq i8 %447, 0
  br i1 %tobool1156.not, label %land.lhs.true1157, label %if.end1186

land.lhs.true1157:                                ; preds = %land.lhs.true1151
  %call1159 = call fastcc zeroext i1 @S_is_ssc_worth_it(ptr noundef %RExC_state, ptr noundef nonnull %445)
  br i1 %call1159, label %if.then1161, label %if.end1186

if.then1161:                                      ; preds = %land.lhs.true1157
  %448 = load ptr, ptr %rxi, align 8
  %data.i2463 = getelementptr inbounds nuw i8, ptr %448, i64 24
  %449 = load ptr, ptr %data.i2463, align 8
  %tobool.not.i2464 = icmp eq ptr %449, null
  br i1 %tobool.not.i2464, label %cond.end.i2466, label %cond.true.i2465

cond.true.i2465:                                  ; preds = %if.then1161
  %450 = load i32, ptr %449, align 8
  br label %cond.end.i2466

cond.end.i2466:                                   ; preds = %cond.true.i2465, %if.then1161
  %cond.i2467 = phi i32 [ %450, %cond.true.i2465 ], [ 0, %if.then1161 ]
  %add.i2468 = add i32 %cond.i2467, 1
  %conv.i2470 = zext i32 %cond.i2467 to i64
  %mul.i2471 = shl nuw nsw i64 %conv.i2470, 3
  %add6.i = add nuw nsw i64 %mul.i2471, 24
  %call.i2472 = call ptr @Perl_safesysrealloc(ptr noundef %449, i64 noundef %add6.i) #9
  %451 = load ptr, ptr %rxi, align 8
  %data9.i = getelementptr inbounds nuw i8, ptr %451, i64 24
  store ptr %call.i2472, ptr %data9.i, align 8
  %tobool10.not.i = icmp eq i32 %cond.i2467, 0
  br i1 %tobool10.not.i, label %if.else.i2477, label %if.then.i2473

if.then.i2473:                                    ; preds = %cond.end.i2466
  %452 = load ptr, ptr %rxi, align 8
  %data12.i = getelementptr inbounds nuw i8, ptr %452, i64 24
  %453 = load ptr, ptr %data12.i, align 8
  %what.i = getelementptr inbounds nuw i8, ptr %453, i64 8
  %454 = load ptr, ptr %what.i, align 8
  %conv14.i = zext i32 %add.i2468 to i64
  %call16.i = call ptr @Perl_safesysrealloc(ptr noundef %454, i64 noundef %conv14.i) #9
  br label %S_add_data.exit

if.else.i2477:                                    ; preds = %cond.end.i2466
  %call22.i = call ptr @Perl_safesysmalloc(i64 noundef 1) #9
  br label %S_add_data.exit

S_add_data.exit:                                  ; preds = %if.else.i2477, %if.then.i2473
  %call22.sink.i = phi ptr [ %call22.i, %if.else.i2477 ], [ %call16.i, %if.then.i2473 ]
  %455 = load ptr, ptr %rxi, align 8
  %data24.i = getelementptr inbounds nuw i8, ptr %455, i64 24
  %456 = load ptr, ptr %data24.i, align 8
  %what25.i = getelementptr inbounds nuw i8, ptr %456, i64 8
  store ptr %call22.sink.i, ptr %what25.i, align 8
  %457 = load ptr, ptr %rxi, align 8
  %data28.i = getelementptr inbounds nuw i8, ptr %457, i64 24
  %458 = load ptr, ptr %data28.i, align 8
  store i32 %add.i2468, ptr %458, align 8
  %459 = load ptr, ptr %rxi, align 8
  %data31.i = getelementptr inbounds nuw i8, ptr %459, i64 24
  %460 = load ptr, ptr %data31.i, align 8
  %what32.i = getelementptr inbounds nuw i8, ptr %460, i64 8
  %461 = load ptr, ptr %what32.i, align 8
  %add.ptr.i2476 = getelementptr inbounds nuw i8, ptr %461, i64 %conv.i2470
  store i8 102, ptr %add.ptr.i2476, align 1
  %462 = load ptr, ptr %start_class1152, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %invlist.i) #9
  %invlist1.i = getelementptr inbounds nuw i8, ptr %462, i64 48
  %463 = load ptr, ptr %invlist1.i, align 8
  %call.i2478 = call fastcc ptr @S_invlist_clone(ptr noundef %463)
  store ptr %call.i2478, ptr %invlist.i, align 8
  call fastcc void @S_populate_ANYOF_from_invlist(ptr noundef %462, ptr noundef %invlist.i)
  %464 = load ptr, ptr %invlist.i, align 8
  call fastcc void @S_set_ANYOF_arg(ptr noundef nonnull readonly %RExC_state, ptr noundef %462, ptr noundef %464, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  store ptr null, ptr %invlist1.i, align 8
  %classflags.i = getelementptr inbounds nuw i8, ptr %462, i64 40
  %465 = load i32, ptr %classflags.i, align 8
  %tobool.not.i2479 = icmp eq i32 %465, 0
  br i1 %tobool.not.i2479, label %S_ssc_finalize.exit, label %if.then.i2480

if.then.i2480:                                    ; preds = %S_add_data.exit
  %466 = load i8, ptr %462, align 8
  %467 = or i8 %466, 8
  store i8 %467, ptr %462, align 8
  br label %S_ssc_finalize.exit

S_ssc_finalize.exit:                              ; preds = %if.then.i2480, %S_add_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %invlist.i) #9
  %call1165 = call ptr @Perl_safesysmalloc(i64 noundef 56) #9
  %468 = load ptr, ptr %rxi, align 8
  %data1167 = getelementptr inbounds nuw i8, ptr %468, i64 24
  %469 = load ptr, ptr %data1167, align 8
  %data1168 = getelementptr inbounds nuw i8, ptr %469, i64 16
  %arrayidx1170 = getelementptr inbounds nuw ptr, ptr %data1168, i64 %conv.i2470
  store ptr %call1165, ptr %arrayidx1170, align 8
  %470 = load ptr, ptr %rxi, align 8
  %data1172 = getelementptr inbounds nuw i8, ptr %470, i64 24
  %471 = load ptr, ptr %data1172, align 8
  %data1173 = getelementptr inbounds nuw i8, ptr %471, i64 16
  %arrayidx1175 = getelementptr inbounds nuw ptr, ptr %data1173, i64 %conv.i2470
  %472 = load ptr, ptr %arrayidx1175, align 8
  %473 = load ptr, ptr %start_class1152, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %472, ptr noundef nonnull align 8 dereferenceable(56) %473, i64 56, i1 false)
  %474 = load ptr, ptr %rxi, align 8
  %data1178 = getelementptr inbounds nuw i8, ptr %474, i64 24
  %475 = load ptr, ptr %data1178, align 8
  %data1179 = getelementptr inbounds nuw i8, ptr %475, i64 16
  %arrayidx1181 = getelementptr inbounds nuw ptr, ptr %data1179, i64 %conv.i2470
  %476 = load ptr, ptr %arrayidx1181, align 8
  store ptr %476, ptr %regstclass, align 8
  %477 = load i32, ptr %intflags, align 4
  %and1184 = and i32 %477, -2
  store i32 %and1184, ptr %intflags, align 4
  store ptr null, ptr %start_class1152, align 8
  br label %if.end1186

if.end1186:                                       ; preds = %S_ssc_finalize.exit, %land.lhs.true1157, %land.lhs.true1151, %land.lhs.true1149, %lor.lhs.false1143
  br i1 %longest_fixed_length.0, label %if.then1189, label %if.else1234

if.then1189:                                      ; preds = %if.end1186
  %478 = load ptr, ptr %substrs, align 8
  store i8 0, ptr %478, align 8
  %479 = load ptr, ptr %substrs, align 8
  %end_shift1194 = getelementptr inbounds nuw i8, ptr %479, i64 40
  %480 = load i64, ptr %end_shift1194, align 8
  %end_shift1198 = getelementptr inbounds nuw i8, ptr %479, i64 120
  store i64 %480, ptr %end_shift1198, align 8
  %481 = load ptr, ptr %substrs, align 8
  %substr1202 = getelementptr inbounds nuw i8, ptr %481, i64 24
  %482 = load ptr, ptr %substr1202, align 8
  %substr1206 = getelementptr inbounds nuw i8, ptr %481, i64 104
  store ptr %482, ptr %substr1206, align 8
  %483 = load ptr, ptr %substrs, align 8
  %utf8_substr1210 = getelementptr inbounds nuw i8, ptr %483, i64 32
  %484 = load ptr, ptr %utf8_substr1210, align 8
  %utf8_substr1214 = getelementptr inbounds nuw i8, ptr %483, i64 112
  store ptr %484, ptr %utf8_substr1214, align 8
  %485 = load ptr, ptr %substrs, align 8
  %data1216 = getelementptr inbounds nuw i8, ptr %485, i64 8
  %486 = load i64, ptr %data1216, align 8
  %max_offset1222 = getelementptr inbounds nuw i8, ptr %485, i64 96
  store i64 %486, ptr %max_offset1222, align 8
  %487 = load ptr, ptr %substrs, align 8
  %arrayidx1225 = getelementptr inbounds nuw i8, ptr %487, i64 88
  store i64 %486, ptr %arrayidx1225, align 8
  %488 = load i32, ptr %intflags, align 4
  %and1228 = and i32 %488, 6144
  %tobool1229.not = icmp eq i32 %and1228, 0
  br i1 %tobool1229.not, label %if.end1277, label %if.then1230

if.then1230:                                      ; preds = %if.then1189
  %or1232 = or i32 %488, 64
  store i32 %or1232, ptr %intflags, align 4
  br label %if.end1277

if.else1234:                                      ; preds = %if.end1186
  %489 = load ptr, ptr %substrs, align 8
  store i8 1, ptr %489, align 8
  %490 = load ptr, ptr %substrs, align 8
  %end_shift1240 = getelementptr inbounds nuw i8, ptr %490, i64 80
  %491 = load i64, ptr %end_shift1240, align 8
  %end_shift1244 = getelementptr inbounds nuw i8, ptr %490, i64 120
  store i64 %491, ptr %end_shift1244, align 8
  %492 = load ptr, ptr %substrs, align 8
  %substr1248 = getelementptr inbounds nuw i8, ptr %492, i64 64
  %493 = load ptr, ptr %substr1248, align 8
  %substr1252 = getelementptr inbounds nuw i8, ptr %492, i64 104
  store ptr %493, ptr %substr1252, align 8
  %494 = load ptr, ptr %substrs, align 8
  %utf8_substr1256 = getelementptr inbounds nuw i8, ptr %494, i64 72
  %495 = load ptr, ptr %utf8_substr1256, align 8
  %utf8_substr1260 = getelementptr inbounds nuw i8, ptr %494, i64 112
  store ptr %495, ptr %utf8_substr1260, align 8
  %496 = load ptr, ptr %substrs, align 8
  %arrayidx1263 = getelementptr inbounds nuw i8, ptr %496, i64 48
  %497 = load i64, ptr %arrayidx1263, align 8
  %arrayidx1267 = getelementptr inbounds nuw i8, ptr %496, i64 88
  store i64 %497, ptr %arrayidx1267, align 8
  %498 = load ptr, ptr %substrs, align 8
  %max_offset1272 = getelementptr inbounds nuw i8, ptr %498, i64 56
  %499 = load i64, ptr %max_offset1272, align 8
  %max_offset1276 = getelementptr inbounds nuw i8, ptr %498, i64 96
  store i64 %499, ptr %max_offset1276, align 8
  br label %if.end1277

if.end1277:                                       ; preds = %if.else1234, %if.then1230, %if.then1189
  %500 = load ptr, ptr %substrs, align 8
  %substr1281 = getelementptr inbounds nuw i8, ptr %500, i64 104
  %501 = load ptr, ptr %substr1281, align 8
  %tobool1282.not = icmp eq ptr %501, null
  br i1 %tobool1282.not, label %lor.lhs.false1283, label %if.then1289

lor.lhs.false1283:                                ; preds = %if.end1277
  %utf8_substr1287 = getelementptr inbounds nuw i8, ptr %500, i64 112
  %502 = load ptr, ptr %utf8_substr1287, align 8
  %tobool1288.not = icmp eq ptr %502, null
  br i1 %tobool1288.not, label %cleanup1326.thread, label %if.then1289

if.then1289:                                      ; preds = %lor.lhs.false1283, %if.end1277
  %503 = load i32, ptr %extflags, align 8
  %or1291 = or i32 %503, 6291456
  store i32 %or1291, ptr %extflags, align 8
  %504 = load ptr, ptr %substr1281, align 8
  %tobool1296.not = icmp eq ptr %504, null
  br i1 %tobool1296.not, label %cond.false1302, label %cond.end1307

cond.false1302:                                   ; preds = %if.then1289
  %utf8_substr1306 = getelementptr inbounds nuw i8, ptr %500, i64 112
  %505 = load ptr, ptr %utf8_substr1306, align 8
  br label %cond.end1307

cond.end1307:                                     ; preds = %cond.false1302, %if.then1289
  %cond1308 = phi ptr [ %505, %cond.false1302 ], [ %504, %if.then1289 ]
  %sv_flags1309 = getelementptr inbounds nuw i8, ptr %cond1308, i64 12
  %506 = load i32, ptr %sv_flags1309, align 4
  %cmp1311 = icmp ugt i32 %506, -1073741825
  br i1 %cmp1311, label %if.then1313, label %cleanup1326.thread

if.then1313:                                      ; preds = %cond.end1307
  %or1315 = or i32 %503, 14680064
  store i32 %or1315, ptr %extflags, align 8
  br label %cleanup1326.thread

cleanup1326.thread:                               ; preds = %if.then1313, %cond.end1307, %lor.lhs.false1283
  %507 = load ptr, ptr %substrs, align 8
  %data1319 = getelementptr inbounds nuw i8, ptr %507, i64 8
  %508 = load i64, ptr %data1319, align 8
  %max_offset1325 = getelementptr inbounds nuw i8, ptr %507, i64 16
  store i64 %508, ptr %max_offset1325, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %first) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %last_close) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %ch_class) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %fake) #9
  br label %if.end1426

cleanup1326:                                      ; preds = %if.end920
  call void @Perl_pop_scope() #9
  call void @llvm.lifetime.end.p0(ptr nonnull %first) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %last_close) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %ch_class) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %fake) #9
  br label %reStudy.backedge

reStudy.backedge:                                 ; preds = %cleanup1421, %cleanup1326
  br label %reStudy

if.else1336:                                      ; preds = %if.end662
  call void @llvm.lifetime.start.p0(ptr nonnull %fake1337) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %ch_class1338) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %last_close1339) #9
  store i64 0, ptr %last_close1339, align 8
  store ptr %add.ptr665, ptr %scan, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %ch_class1338, i8 0, i64 56, i1 false)
  store i8 19, ptr %type.i2482, align 1
  store i16 1, ptr %next_off.i2483, align 2
  store i32 -1, ptr %arg1.i2484, align 4
  %call.i.i.i2485 = call ptr @Perl_newSV_type(i32 noundef 4) #9
  %sv_flags.i.i.i2486 = getelementptr inbounds nuw i8, ptr %call.i.i.i2485, i64 12
  %509 = load i32, ptr %sv_flags.i.i.i2486, align 4
  %and.i.i.i2487 = and i32 %509, 268435456
  %tobool.not.i.i.i2488 = icmp eq i32 %and.i.i.i2487, 0
  br i1 %tobool.not.i.i.i2488, label %lor.lhs.false.i.i.i2502, label %cond.true.i.i.i2489

lor.lhs.false.i.i.i2502:                          ; preds = %if.else1336
  %510 = load ptr, ptr %call.i.i.i2485, align 8
  %xpv_len_u.i.i.i2503 = getelementptr inbounds nuw i8, ptr %510, i64 24
  %511 = load i64, ptr %xpv_len_u.i.i.i2503, align 8
  %cmp2.i.i.i2504 = icmp ult i64 %511, 25
  br i1 %cmp2.i.i.i2504, label %cond.true.i.i.i2489, label %S_ssc_init.exit2505

cond.true.i.i.i2489:                              ; preds = %lor.lhs.false.i.i.i2502, %if.else1336
  %call6.i.i.i2490 = call ptr @Perl_sv_grow(ptr noundef nonnull %call.i.i.i2485, i64 noundef 25) #9
  br label %S_ssc_init.exit2505

S_ssc_init.exit2505:                              ; preds = %cond.true.i.i.i2489, %lor.lhs.false.i.i.i2502
  %call.val.i.i.i2491 = load ptr, ptr %call.i.i.i2485, align 8
  %xpv_cur.i.i.i.i2492 = getelementptr inbounds nuw i8, ptr %call.val.i.i.i2491, i64 16
  store i64 0, ptr %xpv_cur.i.i.i.i2492, align 8
  %call.val19.i.i.i2493 = load ptr, ptr %call.i.i.i2485, align 8
  %iterator.i.i.i.i2494 = getelementptr inbounds nuw i8, ptr %call.val19.i.i.i2493, i64 40
  store i64 -1, ptr %iterator.i.i.i.i2494, align 8
  %call.val18.i.i.i2495 = load ptr, ptr %call.i.i.i2485, align 8
  %prev_index.i.i.i.i2496 = getelementptr inbounds nuw i8, ptr %call.val18.i.i.i2495, i64 32
  store i64 0, ptr %prev_index.i.i.i.i2496, align 8
  %call1.i.i2497 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %call.i.i.i2485) #9
  store ptr %call1.i.i2497, ptr %invlist.i.i2498, align 8
  call fastcc void @S__append_range_to_invlist(ptr noundef %call1.i.i2497, i64 noundef 0, i64 noundef -1)
  %512 = load i8, ptr %ch_class1338, align 8
  %513 = or i8 %512, 1
  store i8 %513, ptr %ch_class1338, align 8
  %514 = load i32, ptr %contains_locale, align 8
  %tobool.not.i2500 = icmp eq i32 %514, 0
  %spec.select.i2501 = select i1 %tobool.not.i2500, i32 0, i32 536870911
  store i32 %spec.select.i2501, ptr %250, align 4
  store ptr %ch_class1338, ptr %start_class1343, align 8
  store ptr %last_close1339, ptr %last_closep1344, align 8
  %515 = load i64, ptr %size2704, align 8
  %add.ptr1346 = getelementptr inbounds %struct.regnode, ptr %add.ptr665, i64 %515
  %or1349 = select i1 %tobool631.not, i32 10240, i32 75776
  %call1350 = call fastcc i64 @S_study_chunk(ptr noundef %RExC_state, ptr noundef %scan, ptr noundef %minlen, ptr noundef %fake1337, ptr noundef nonnull %add.ptr1346, ptr noundef nonnull %data, i32 noundef -1, i32 noundef 0, i32 noundef %or1349, i32 noundef 0)
  store i64 %call1350, ptr %minlen, align 8
  %516 = load i32, ptr %flags1352, align 8
  %and1353 = and i32 %516, 16384
  %tobool1354.not = icmp ne i32 %and1353, 0
  %brmerge2623.not = and i1 %tobool1354.not, %tobool631.not
  br i1 %brmerge2623.not, label %cleanup1421, label %do.end1361

do.end1361:                                       ; preds = %S_ssc_init.exit2505
  %start_class1343.le = getelementptr inbounds nuw i8, ptr %data, i64 144
  %517 = load ptr, ptr %substrs, align 8
  %utf8_substr1365 = getelementptr inbounds nuw i8, ptr %517, i64 72
  store ptr null, ptr %utf8_substr1365, align 8
  %518 = load ptr, ptr %substrs, align 8
  %substr1369 = getelementptr inbounds nuw i8, ptr %518, i64 64
  store ptr null, ptr %substr1369, align 8
  %519 = load ptr, ptr %substrs, align 8
  %utf8_substr1373 = getelementptr inbounds nuw i8, ptr %519, i64 32
  store ptr null, ptr %utf8_substr1373, align 8
  %520 = load ptr, ptr %substrs, align 8
  %substr1377 = getelementptr inbounds nuw i8, ptr %520, i64 24
  store ptr null, ptr %substr1377, align 8
  %521 = load ptr, ptr %substrs, align 8
  %utf8_substr1381 = getelementptr inbounds nuw i8, ptr %521, i64 112
  store ptr null, ptr %utf8_substr1381, align 8
  %522 = load ptr, ptr %substrs, align 8
  %substr1385 = getelementptr inbounds nuw i8, ptr %522, i64 104
  store ptr null, ptr %substr1385, align 8
  %523 = load ptr, ptr %start_class1343.le, align 8
  %524 = load i8, ptr %523, align 8
  %525 = and i8 %524, 1
  %tobool1390.not = icmp eq i8 %525, 0
  br i1 %tobool1390.not, label %land.lhs.true1391, label %cleanup1421.thread

land.lhs.true1391:                                ; preds = %do.end1361
  %call1393 = call fastcc zeroext i1 @S_is_ssc_worth_it(ptr noundef %RExC_state, ptr noundef nonnull %523)
  br i1 %call1393, label %if.then1395, label %cleanup1421.thread

if.then1395:                                      ; preds = %land.lhs.true1391
  %526 = load ptr, ptr %rxi, align 8
  %data.i2507 = getelementptr inbounds nuw i8, ptr %526, i64 24
  %527 = load ptr, ptr %data.i2507, align 8
  %tobool.not.i2508 = icmp eq ptr %527, null
  br i1 %tobool.not.i2508, label %cond.end.i2510, label %cond.true.i2509

cond.true.i2509:                                  ; preds = %if.then1395
  %528 = load i32, ptr %527, align 8
  br label %cond.end.i2510

cond.end.i2510:                                   ; preds = %cond.true.i2509, %if.then1395
  %cond.i2511 = phi i32 [ %528, %cond.true.i2509 ], [ 0, %if.then1395 ]
  %add.i2512 = add i32 %cond.i2511, 1
  %conv.i2514 = zext i32 %cond.i2511 to i64
  %mul.i2515 = shl nuw nsw i64 %conv.i2514, 3
  %add6.i2516 = add nuw nsw i64 %mul.i2515, 24
  %call.i2517 = call ptr @Perl_safesysrealloc(ptr noundef %527, i64 noundef %add6.i2516) #9
  %529 = load ptr, ptr %rxi, align 8
  %data9.i2518 = getelementptr inbounds nuw i8, ptr %529, i64 24
  store ptr %call.i2517, ptr %data9.i2518, align 8
  %tobool10.not.i2519 = icmp eq i32 %cond.i2511, 0
  br i1 %tobool10.not.i2519, label %if.else.i2534, label %if.then.i2520

if.then.i2520:                                    ; preds = %cond.end.i2510
  %530 = load ptr, ptr %rxi, align 8
  %data12.i2521 = getelementptr inbounds nuw i8, ptr %530, i64 24
  %531 = load ptr, ptr %data12.i2521, align 8
  %what.i2522 = getelementptr inbounds nuw i8, ptr %531, i64 8
  %532 = load ptr, ptr %what.i2522, align 8
  %conv14.i2523 = zext i32 %add.i2512 to i64
  %call16.i2524 = call ptr @Perl_safesysrealloc(ptr noundef %532, i64 noundef %conv14.i2523) #9
  br label %S_add_data.exit2536

if.else.i2534:                                    ; preds = %cond.end.i2510
  %call22.i2535 = call ptr @Perl_safesysmalloc(i64 noundef 1) #9
  br label %S_add_data.exit2536

S_add_data.exit2536:                              ; preds = %if.else.i2534, %if.then.i2520
  %call22.sink.i2526 = phi ptr [ %call22.i2535, %if.else.i2534 ], [ %call16.i2524, %if.then.i2520 ]
  %533 = load ptr, ptr %rxi, align 8
  %data24.i2527 = getelementptr inbounds nuw i8, ptr %533, i64 24
  %534 = load ptr, ptr %data24.i2527, align 8
  %what25.i2528 = getelementptr inbounds nuw i8, ptr %534, i64 8
  store ptr %call22.sink.i2526, ptr %what25.i2528, align 8
  %535 = load ptr, ptr %rxi, align 8
  %data28.i2529 = getelementptr inbounds nuw i8, ptr %535, i64 24
  %536 = load ptr, ptr %data28.i2529, align 8
  store i32 %add.i2512, ptr %536, align 8
  %537 = load ptr, ptr %rxi, align 8
  %data31.i2530 = getelementptr inbounds nuw i8, ptr %537, i64 24
  %538 = load ptr, ptr %data31.i2530, align 8
  %what32.i2531 = getelementptr inbounds nuw i8, ptr %538, i64 8
  %539 = load ptr, ptr %what32.i2531, align 8
  %add.ptr.i2533 = getelementptr inbounds nuw i8, ptr %539, i64 %conv.i2514
  store i8 102, ptr %add.ptr.i2533, align 1
  %540 = load ptr, ptr %start_class1343.le, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %invlist.i2537) #9
  %invlist1.i2538 = getelementptr inbounds nuw i8, ptr %540, i64 48
  %541 = load ptr, ptr %invlist1.i2538, align 8
  %call.i2539 = call fastcc ptr @S_invlist_clone(ptr noundef %541)
  store ptr %call.i2539, ptr %invlist.i2537, align 8
  call fastcc void @S_populate_ANYOF_from_invlist(ptr noundef %540, ptr noundef %invlist.i2537)
  %542 = load ptr, ptr %invlist.i2537, align 8
  call fastcc void @S_set_ANYOF_arg(ptr noundef nonnull readonly %RExC_state, ptr noundef %540, ptr noundef %542, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  store ptr null, ptr %invlist1.i2538, align 8
  %classflags.i2540 = getelementptr inbounds nuw i8, ptr %540, i64 40
  %543 = load i32, ptr %classflags.i2540, align 8
  %tobool.not.i2541 = icmp eq i32 %543, 0
  br i1 %tobool.not.i2541, label %S_ssc_finalize.exit2544, label %if.then.i2542

if.then.i2542:                                    ; preds = %S_add_data.exit2536
  %544 = load i8, ptr %540, align 8
  %545 = or i8 %544, 8
  store i8 %545, ptr %540, align 8
  br label %S_ssc_finalize.exit2544

S_ssc_finalize.exit2544:                          ; preds = %if.then.i2542, %S_add_data.exit2536
  call void @llvm.lifetime.end.p0(ptr nonnull %invlist.i2537) #9
  %call1399 = call ptr @Perl_safesysmalloc(i64 noundef 56) #9
  %546 = load ptr, ptr %rxi, align 8
  %data1401 = getelementptr inbounds nuw i8, ptr %546, i64 24
  %547 = load ptr, ptr %data1401, align 8
  %data1402 = getelementptr inbounds nuw i8, ptr %547, i64 16
  %arrayidx1404 = getelementptr inbounds nuw ptr, ptr %data1402, i64 %conv.i2514
  store ptr %call1399, ptr %arrayidx1404, align 8
  %548 = load ptr, ptr %rxi, align 8
  %data1406 = getelementptr inbounds nuw i8, ptr %548, i64 24
  %549 = load ptr, ptr %data1406, align 8
  %data1407 = getelementptr inbounds nuw i8, ptr %549, i64 16
  %arrayidx1409 = getelementptr inbounds nuw ptr, ptr %data1407, i64 %conv.i2514
  %550 = load ptr, ptr %arrayidx1409, align 8
  %551 = load ptr, ptr %start_class1343.le, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %550, ptr noundef nonnull align 8 dereferenceable(56) %551, i64 56, i1 false)
  %552 = load ptr, ptr %rxi, align 8
  %data1412 = getelementptr inbounds nuw i8, ptr %552, i64 24
  %553 = load ptr, ptr %data1412, align 8
  %data1413 = getelementptr inbounds nuw i8, ptr %553, i64 16
  %arrayidx1415 = getelementptr inbounds nuw ptr, ptr %data1413, i64 %conv.i2514
  %554 = load ptr, ptr %arrayidx1415, align 8
  store ptr %554, ptr %regstclass, align 8
  %555 = load i32, ptr %intflags, align 4
  %and1418 = and i32 %555, -2
  store i32 %and1418, ptr %intflags, align 4
  store ptr null, ptr %start_class1343.le, align 8
  br label %cleanup1421.thread

cleanup1421.thread:                               ; preds = %S_ssc_finalize.exit2544, %land.lhs.true1391, %do.end1361
  call void @llvm.lifetime.end.p0(ptr nonnull %last_close1339) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %ch_class1338) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %fake1337) #9
  br label %if.end1426

cleanup1421:                                      ; preds = %S_ssc_init.exit2505
  call void @llvm.lifetime.end.p0(ptr nonnull %last_close1339) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %ch_class1338) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %fake1337) #9
  br label %reStudy.backedge

if.end1426:                                       ; preds = %cleanup1421.thread, %cleanup1326.thread
  %minlen6192646 = getelementptr inbounds nuw i8, ptr %call362.val2180, i64 64
  %556 = load i32, ptr %seen2721, align 8
  %and1428 = and i32 %556, 4096
  %tobool1429.not = icmp eq i32 %and1428, 0
  br i1 %tobool1429.not, label %if.else1434, label %if.then1430

if.then1430:                                      ; preds = %if.end1426
  %557 = load i32, ptr %extflags, align 8
  %or1432 = or i32 %557, 262144
  store i32 %or1432, ptr %extflags, align 8
  br label %if.end1437

if.else1434:                                      ; preds = %if.end1426
  %558 = load i64, ptr %maxlen2719, align 8
  br label %if.end1437

if.end1437:                                       ; preds = %if.else1434, %if.then1430
  %.sink = phi i64 [ %558, %if.else1434 ], [ 32767, %if.then1430 ]
  %559 = getelementptr inbounds nuw i8, ptr %call362.val2180, i64 168
  store i64 %.sink, ptr %559, align 8
  %560 = load i64, ptr %minlen, align 8
  %minlenret = getelementptr inbounds nuw i8, ptr %call362.val2180, i64 72
  store i64 %560, ptr %minlenret, align 8
  %561 = load i64, ptr %minlen6192646, align 8
  %cmp1439 = icmp slt i64 %561, %560
  br i1 %cmp1439, label %if.then1441, label %if.end1443

if.then1441:                                      ; preds = %if.end1437
  store i64 %560, ptr %minlen6192646, align 8
  br label %if.end1443

if.end1443:                                       ; preds = %if.then1441, %if.end1437
  %562 = load i32, ptr %seen2721, align 8
  %and1445 = and i32 %562, 4
  %tobool1446.not = icmp eq i32 %and1445, 0
  br i1 %tobool1446.not, label %if.end1450, label %if.then1447

if.then1447:                                      ; preds = %if.end1443
  %563 = load i32, ptr %intflags, align 4
  %or1449 = or i32 %563, 256
  store i32 %or1449, ptr %intflags, align 4
  br label %if.end1450

if.end1450:                                       ; preds = %if.then1447, %if.end1443
  %564 = load i32, ptr %seen2721, align 8
  %and1452 = and i32 %564, 2
  %tobool1453.not = icmp eq i32 %and1452, 0
  br i1 %tobool1453.not, label %if.end1457, label %if.then1454

if.then1454:                                      ; preds = %if.end1450
  %565 = load i32, ptr %extflags, align 8
  %or1456 = or i32 %565, 65536
  store i32 %or1456, ptr %extflags, align 8
  br label %if.end1457

if.end1457:                                       ; preds = %if.then1454, %if.end1450
  %566 = load i32, ptr %num_code_blocks, align 8
  %tobool1459.not = icmp eq i32 %566, 0
  br i1 %tobool1459.not, label %if.end1463, label %if.then1460

if.then1460:                                      ; preds = %if.end1457
  %567 = load i32, ptr %extflags, align 8
  %or1462 = or i32 %567, 131072
  store i32 %or1462, ptr %extflags, align 8
  br label %if.end1463

if.end1463:                                       ; preds = %if.then1460, %if.end1457
  %568 = load i32, ptr %seen2721, align 8
  %and1465 = and i32 %568, 16
  %tobool1466.not = icmp eq i32 %and1465, 0
  br i1 %tobool1466.not, label %if.end1470, label %if.then1467

if.then1467:                                      ; preds = %if.end1463
  %569 = load i32, ptr %intflags, align 4
  %or1469 = or i32 %569, 128
  store i32 %or1469, ptr %intflags, align 4
  br label %if.end1470

if.end1470:                                       ; preds = %if.then1467, %if.end1463
  %570 = load i32, ptr %seen2721, align 8
  %and1472 = and i32 %570, 128
  %tobool1473.not = icmp eq i32 %and1472, 0
  br i1 %tobool1473.not, label %if.end1479, label %if.then1474

if.then1474:                                      ; preds = %if.end1470
  %571 = load i32, ptr %intflags, align 4
  %or1476 = or i32 %571, 8
  store i32 %or1476, ptr %intflags, align 4
  %572 = load i32, ptr %extflags, align 8
  %or1478 = or i32 %572, 65536
  store i32 %or1478, ptr %extflags, align 8
  br label %if.end1479

if.end1479:                                       ; preds = %if.then1474, %if.end1470
  %573 = load i32, ptr %seen2721, align 8
  %and1481 = and i32 %573, 256
  %tobool1482.not = icmp eq i32 %and1481, 0
  br i1 %tobool1482.not, label %if.end1486, label %if.then1483

if.then1483:                                      ; preds = %if.end1479
  %574 = load i32, ptr %intflags, align 4
  %or1485 = or i32 %574, 16
  store i32 %or1485, ptr %intflags, align 4
  br label %if.end1486

if.end1486:                                       ; preds = %if.then1483, %if.end1479
  br i1 %tobool195.not, label %if.end1492, label %if.then1489

if.then1489:                                      ; preds = %if.end1486
  %575 = load i32, ptr %intflags, align 4
  %or1491 = or i32 %575, 32
  store i32 %or1491, ptr %intflags, align 4
  br label %if.end1492

if.end1492:                                       ; preds = %if.then1489, %if.end1486
  %576 = load ptr, ptr %paren_names2692, align 8
  %tobool1494.not = icmp eq ptr %576, null
  br i1 %tobool1494.not, label %if.else1499, label %S_SvREFCNT_inc.exit2550

S_SvREFCNT_inc.exit2550:                          ; preds = %if.end1492
  %sv_refcnt.i2547 = getelementptr inbounds nuw i8, ptr %576, i64 8
  %577 = load i32, ptr %sv_refcnt.i2547, align 8
  %inc.i2548 = add i32 %577, 1
  store i32 %inc.i2548, ptr %sv_refcnt.i2547, align 8
  br label %if.end1501

if.else1499:                                      ; preds = %if.end1492
  br label %if.end1501

if.end1501:                                       ; preds = %if.else1499, %S_SvREFCNT_inc.exit2550
  %.sink2816 = phi ptr [ null, %if.else1499 ], [ %576, %S_SvREFCNT_inc.exit2550 ]
  %578 = getelementptr inbounds nuw i8, ptr %call362.val2180, i64 48
  store ptr %.sink2816, ptr %578, align 8
  %579 = load i32, ptr %intflags, align 4
  %and1503 = and i32 %579, 7168
  %tobool1504.not = icmp eq i32 %and1503, 0
  br i1 %tobool1504.not, label %if.end1508, label %if.then1505

if.then1505:                                      ; preds = %if.end1501
  %580 = load i32, ptr %extflags, align 8
  %or1507 = or i32 %580, 16777216
  store i32 %or1507, ptr %extflags, align 8
  br label %if.end1508

if.end1508:                                       ; preds = %if.then1505, %if.end1501
  %type1513 = getelementptr inbounds nuw i8, ptr %call370, i64 49
  %581 = load i8, ptr %type1513, align 1
  %type.i2553 = getelementptr inbounds nuw i8, ptr %call370, i64 49
  %cmp.i2554 = icmp ugt i8 %581, 93
  br i1 %cmp.i2554, label %if.then2.i2572, label %if.end5.i2555

if.then2.i2572:                                   ; preds = %if.end1508
  %conv.i2573 = zext i8 %581 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.204, i32 noundef %conv.i2573, i32 noundef 93) #9
  br label %if.end5.i2555

if.end5.i2555:                                    ; preds = %if.then2.i2572, %if.end1508
  %582 = load i8, ptr %type.i2553, align 1
  %idxprom.i2556 = zext i8 %582 to i64
  %arrayidx.i2557 = getelementptr inbounds nuw i8, ptr @reg_off_by_arg, i64 %idxprom.i2556
  %583 = load i8, ptr %arrayidx.i2557, align 1
  %tobool8.not.i2558 = icmp eq i8 %583, 0
  br i1 %tobool8.not.i2558, label %cond.false.i2569, label %cond.true.i2559

cond.true.i2559:                                  ; preds = %if.end5.i2555
  %arg1.i2560 = getelementptr inbounds nuw i8, ptr %call370, i64 52
  %584 = load i32, ptr %arg1.i2560, align 4
  br label %cond.end.i2561

cond.false.i2569:                                 ; preds = %if.end5.i2555
  %next_off.i2570 = getelementptr inbounds nuw i8, ptr %call370, i64 50
  %585 = load i16, ptr %next_off.i2570, align 2
  %conv9.i2571 = zext i16 %585 to i32
  br label %cond.end.i2561

cond.end.i2561:                                   ; preds = %cond.false.i2569, %cond.true.i2559
  %cond.i2562 = phi i32 [ %584, %cond.true.i2559 ], [ %conv9.i2571, %cond.false.i2569 ]
  %idx.ext.i2565 = sext i32 %cond.i2562 to i64
  %add.ptr.i2566 = getelementptr inbounds %struct.regnode, ptr %add.ptr665, i64 %idx.ext.i2565
  %type1515 = getelementptr inbounds nuw i8, ptr %add.ptr.i2566, i64 1
  %586 = load i8, ptr %type1515, align 1
  %idxprom1516 = zext i8 %581 to i64
  %arrayidx1517 = getelementptr inbounds nuw i8, ptr @PL_regkind, i64 %idxprom1516
  %587 = load i8, ptr %arrayidx1517, align 1
  %cmp1519 = icmp eq i8 %587, 40
  %cmp1523 = icmp eq i8 %586, 0
  %or.cond1679 = select i1 %cmp1519, i1 %cmp1523, i1 false
  br i1 %or.cond1679, label %if.then1525, label %if.else1528

if.then1525:                                      ; preds = %cond.end.i2561
  %588 = load i32, ptr %extflags, align 8
  %or1527 = or i32 %588, -2147483648
  store i32 %or1527, ptr %extflags, align 8
  br label %if.end1599

if.else1528:                                      ; preds = %cond.end.i2561
  switch i8 %581, label %if.else1568 [
    i8 3, label %land.lhs.true1539
    i8 2, label %land.lhs.true1536
    i8 43, label %if.end1599
  ]

land.lhs.true1536:                                ; preds = %if.else1528
  %589 = load i8, ptr %add.ptr665, align 2
  %tobool1538 = icmp eq i8 %589, 0
  %or.cond1681 = select i1 %tobool1538, i1 %cmp1523, i1 false
  br i1 %or.cond1681, label %if.then1543, label %if.end1599

land.lhs.true1539:                                ; preds = %if.else1528
  br i1 %cmp1523, label %if.then1543, label %if.end1599

if.then1543:                                      ; preds = %land.lhs.true1539, %land.lhs.true1536
  %590 = load i32, ptr %extflags, align 8
  %or1545 = or i32 %590, 268435456
  store i32 %or1545, ptr %extflags, align 8
  br label %if.end1599

if.else1568:                                      ; preds = %if.else1528
  %591 = load i32, ptr %extflags, align 8
  %and1570 = and i32 %591, 2048
  %tobool1571.not = icmp ne i32 %and1570, 0
  %592 = add i8 %581, -31
  %or.cond1685 = icmp ult i8 %592, 2
  %or.cond2176 = and i1 %or.cond1685, %tobool1571.not
  br i1 %or.cond2176, label %land.lhs.true1580, label %if.end1599

land.lhs.true1580:                                ; preds = %if.else1568
  %593 = load i8, ptr %add.ptr665, align 2
  %cmp1582 = icmp eq i8 %593, 1
  br i1 %cmp1582, label %land.lhs.true1584, label %if.end1599

land.lhs.true1584:                                ; preds = %land.lhs.true1580
  %string = getelementptr inbounds nuw i8, ptr %call370, i64 52
  %594 = load i8, ptr %string, align 2
  %cmp1587 = icmp eq i8 %594, 32
  %or.cond1687 = select i1 %cmp1587, i1 %cmp1523, i1 false
  br i1 %or.cond1687, label %if.then1593, label %if.end1599

if.then1593:                                      ; preds = %land.lhs.true1584
  %or1595 = or i32 %591, 1610612736
  store i32 %or1595, ptr %extflags, align 8
  br label %if.end1599

if.end1599:                                       ; preds = %if.then1593, %land.lhs.true1584, %land.lhs.true1580, %if.else1568, %if.then1543, %land.lhs.true1539, %land.lhs.true1536, %if.else1528, %if.then1525
  %595 = load i32, ptr %contains_locale, align 8
  %tobool1601.not = icmp eq i32 %595, 0
  br i1 %tobool1601.not, label %if.end1605, label %if.then1602

if.then1602:                                      ; preds = %if.end1599
  %596 = load i32, ptr %extflags, align 8
  %or1604 = or i32 %596, 134217728
  store i32 %or1604, ptr %extflags, align 8
  br label %if.end1605

if.end1605:                                       ; preds = %if.then1602, %if.end1599
  store i32 0, ptr %call370, align 8
  %597 = load i32, ptr %recurse_count2684, align 8
  %tobool1607.not = icmp eq i32 %597, 0
  br i1 %tobool1607.not, label %if.end1631, label %for.body1612.preheader

for.body1612.preheader:                           ; preds = %if.end1605
  br label %for.body1612

for.body1612:                                     ; preds = %for.body1612, %for.body1612.preheader
  %598 = phi i32 [ %dec, %for.body1612 ], [ %597, %for.body1612.preheader ]
  %599 = load ptr, ptr %recurse2690, align 8
  %600 = sext i32 %598 to i64
  %601 = getelementptr ptr, ptr %599, i64 %600
  %arrayidx1618 = getelementptr i8, ptr %601, i64 -8
  %602 = load ptr, ptr %arrayidx1618, align 8
  %603 = load ptr, ptr %open_parens2696, align 8
  %arg11620 = getelementptr inbounds nuw i8, ptr %602, i64 4
  %604 = load i32, ptr %arg11620, align 4
  %sub1621 = add i32 %604, -1
  %idxprom1622 = zext i32 %sub1621 to i64
  %arrayidx1623 = getelementptr inbounds nuw ptr, ptr %603, i64 %idxprom1622
  %605 = load ptr, ptr %arrayidx1623, align 8
  %sub.ptr.lhs.cast1624 = ptrtoint ptr %605 to i64
  %sub.ptr.rhs.cast1625 = ptrtoint ptr %602 to i64
  %sub.ptr.sub1626 = sub i64 %sub.ptr.lhs.cast1624, %sub.ptr.rhs.cast1625
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub1626, 2
  %conv1627 = trunc i64 %sub.ptr.div to i32
  %arg2 = getelementptr inbounds nuw i8, ptr %602, i64 8
  store i32 %conv1627, ptr %arg2, align 4
  %606 = load i32, ptr %recurse_count2684, align 8
  %dec = add nsw i32 %606, -1
  store i32 %dec, ptr %recurse_count2684, align 8
  %tobool1611.not = icmp eq i32 %dec, 0
  br i1 %tobool1611.not, label %if.end1631.loopexit, label %for.body1612, !llvm.loop !18

if.end1631.loopexit:                              ; preds = %for.body1612
  br label %if.end1631

if.end1631:                                       ; preds = %if.end1631.loopexit, %if.end1605
  %607 = load i32, ptr %npar2707, align 8
  %conv1633 = sext i32 %607 to i64
  %call1634 = call ptr @Perl_safesyscalloc(i64 noundef %conv1633, i64 noundef 24) #9
  %offs = getelementptr inbounds nuw i8, ptr %call362.val2180, i64 120
  store ptr %call1634, ptr %offs, align 8
  br label %cleanup1635

cleanup1635:                                      ; preds = %if.end1631, %if.then262, %if.end174, %S_SvREFCNT_inc.exit
  %retval.1 = phi ptr [ %call362, %if.end1631 ], [ %old_re, %if.then262 ], [ %call176, %if.end174 ], [ %re.0, %S_SvREFCNT_inc.exit ]
  call void @llvm.lifetime.end.p0(ptr %copyRExC_state)
  call void @llvm.lifetime.end.p0(ptr nonnull %RExC_state) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %data) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %recompile) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %minlen) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %flags) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %scan) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %plen) #9
  ret ptr %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @Perl__add_range_to_invlist(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc ptr @S_concat_pat(ptr noundef nonnull captures(none), ptr noundef, ptr noundef readonly captures(address), i32 noundef, ptr noundef, ptr noundef nonnull writeonly captures(none), ptr noundef) unnamed_addr #0

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc ptr @S_reg(ptr noundef nonnull, i32 noundef range(i32 0, 3), ptr noundef nonnull initializes((0, 4)), i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc i64 @S_study_chunk(ptr noundef nonnull, ptr noundef nonnull captures(none), ptr noundef nonnull, ptr noundef nonnull writeonly captures(none), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #0

declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc void @S_scan_commit(ptr noundef nonnull readonly captures(none), ptr noundef captures(none), ptr noundef nonnull, i32 noundef range(i32 0, 2)) unnamed_addr #0

declare i64 @Perl_sv_len_utf8(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare hidden fastcc noundef zeroext i1 @S_is_ssc_worth_it(ptr noundef nonnull readonly captures(none), ptr noundef readonly captures(none)) unnamed_addr #5

declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc ptr @S_invlist_clone(ptr noundef readonly captures(none)) unnamed_addr #0

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc void @S__append_range_to_invlist(ptr noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_save_re_context() local_unnamed_addr #0

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_eval_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_croak_popstack() local_unnamed_addr #2

declare void @Perl_free_tmps() local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare void @Perl_fbm_compile(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc void @S_populate_ANYOF_from_invlist(ptr noundef captures(none) initializes((8, 40)), ptr noundef nonnull captures(none)) unnamed_addr #0

; Function Attrs: nounwind uwtable
declare hidden fastcc void @S_set_ANYOF_arg(ptr noundef nonnull readonly captures(none), ptr noundef writeonly captures(none) initializes((4, 8)), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind allocsize(0) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
!3 = distinct !{!3, !1}
!4 = distinct !{!4, !1}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !1}
!8 = distinct !{!8, !1}
!9 = distinct !{!9, !1}
!10 = distinct !{!10, !1}
!11 = distinct !{!11, !1}
!12 = distinct !{!12, !1}
!13 = distinct !{!13, !1}
!14 = distinct !{!14, !1}
!15 = distinct !{!15, !1}
!16 = distinct !{!16, !1}
!17 = distinct !{!17, !1}
!18 = distinct !{!18, !1}
