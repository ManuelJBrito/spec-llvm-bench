; ModuleID = '/tmp/tmp.voKWJiq9In/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }

@PL_hv_fetch_ent_mh = external local_unnamed_addr global ptr, align 8
@PL_body_roots = external local_unnamed_addr global [16 x ptr], align 16
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@PL_strtab = external local_unnamed_addr global ptr, align 8
@S_strtab_error = external hidden constant [43 x i8], align 16
@.str.1 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.2 = external hidden unnamed_addr constant [6 x i8], align 1
@PL_sv_placeholder = external global %struct.sv, align 8
@.str.3 = external hidden unnamed_addr constant [60 x i8], align 1
@PL_hash_rand_bits_enabled = external local_unnamed_addr global i8, align 1
@PL_hash_rand_bits = external local_unnamed_addr global i64, align 8
@.str.5 = external hidden unnamed_addr constant [60 x i8], align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.16 = external hidden unnamed_addr constant [7 x i8], align 1
@PL_defstash = external local_unnamed_addr global ptr, align 8
@.str.17 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.19 = external hidden unnamed_addr constant [62 x i8], align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_hv_common(ptr noundef %hv, ptr noundef %keysv, ptr noundef %key, i64 noundef %klen, i32 noundef %flags, i32 noundef %action, ptr noundef %val, i32 noundef %hash) local_unnamed_addr #2 {
entry:
  %klen.addr.i = alloca i64, align 8
  %is_utf8.i = alloca i8, align 1
  %klen.addr = alloca i64, align 8
  %is_utf8 = alloca i8, align 1
  store i64 %klen, ptr %klen.addr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %is_utf8) #5
  %and = and i32 %action, 32
  %tobool.not = icmp eq ptr %hv, null
  br i1 %tobool.not, label %cleanup750, label %if.end

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds nuw i8, ptr %hv, i64 12
  %0 = load i32, ptr %sv_flags, align 4
  %and2 = and i32 %0, 255
  %cmp = icmp eq i32 %and2, 255
  br i1 %cmp, label %cleanup750, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = and i32 %0, 6291456
  %or.cond1053.not1214 = icmp eq i32 %1, 6291456
  %and12 = and i32 %action, 1
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond1054 = and i1 %tobool13.not, %or.cond1053.not1214
  br i1 %or.cond1054, label %if.then14, label %if.end31

if.then14:                                        ; preds = %if.end4
  %call = tail call ptr @Perl_mg_find(ptr noundef nonnull %hv, i32 noundef 85) #5
  %tobool15.not = icmp eq ptr %call, null
  br i1 %tobool15.not, label %if.end31, label %if.then16

if.then16:                                        ; preds = %if.then14
  %mg_ptr = getelementptr inbounds nuw i8, ptr %call, i64 40
  %2 = load ptr, ptr %mg_ptr, align 8
  %uf_set = getelementptr inbounds nuw i8, ptr %2, i64 8
  %3 = load ptr, ptr %uf_set, align 8
  %cmp17 = icmp eq ptr %3, null
  br i1 %cmp17, label %if.then18, label %if.end31

if.then18:                                        ; preds = %if.then16
  %mg_obj = getelementptr inbounds nuw i8, ptr %call, i64 32
  %4 = load ptr, ptr %mg_obj, align 8
  %tobool19.not = icmp eq ptr %keysv, null
  br i1 %tobool19.not, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.then18
  %5 = load i64, ptr %klen.addr, align 8
  %and21 = shl i32 %flags, 29
  %cond = and i32 %and21, 536870912
  %or = or disjoint i32 %cond, 524288
  %call23 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %key, i64 noundef %5, i32 noundef %or) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.then18
  %keysv.addr.0 = phi ptr [ %keysv, %if.then18 ], [ %call23, %if.then20 ]
  store ptr %keysv.addr.0, ptr %mg_obj, align 8
  %conv = sext i32 %action to i64
  %uf_index = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %conv, ptr %uf_index, align 8
  %call26 = tail call i32 @Perl_magic_getuvar(ptr noundef nonnull %hv, ptr noundef nonnull %call) #5
  %6 = load ptr, ptr %mg_obj, align 8
  store ptr %4, ptr %mg_obj, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end24, %if.then16, %if.then14, %if.end4
  %hash.addr.2 = phi i32 [ %hash, %if.end4 ], [ %hash, %if.then14 ], [ 0, %if.end24 ], [ %hash, %if.then16 ]
  %keysv.addr.3 = phi ptr [ %keysv, %if.end4 ], [ %keysv, %if.then14 ], [ %6, %if.end24 ], [ %keysv, %if.then16 ]
  %tobool32 = icmp ne ptr %keysv.addr.3, null
  br i1 %tobool32, label %if.then33, label %if.else63

if.then33:                                        ; preds = %if.end31
  %and34 = and i32 %flags, 256
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.then33
  tail call void @Perl_safesysfree(ptr noundef %key) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.then33
  %sv_flags38 = getelementptr inbounds nuw i8, ptr %keysv.addr.3, i64 12
  %7 = load i32, ptr %sv_flags38, align 4
  %and39 = and i32 %7, 2098176
  %cmp40 = icmp eq i32 %and39, 1024
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end37
  %8 = load ptr, ptr %keysv.addr.3, align 8
  %xpv_cur = getelementptr inbounds nuw i8, ptr %8, i64 16
  %9 = load i64, ptr %xpv_cur, align 8
  store i64 %9, ptr %klen.addr, align 8
  %sv_u = getelementptr inbounds nuw i8, ptr %keysv.addr.3, i64 16
  %10 = load ptr, ptr %sv_u, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end37
  %call42 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %keysv.addr.3, ptr noundef nonnull %klen.addr, i32 noundef 34) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond43 = phi ptr [ %10, %cond.true ], [ %call42, %cond.false ]
  %11 = load i32, ptr %sv_flags38, align 4
  %and45 = lshr i32 %11, 29
  %and45.lobit = and i32 %and45, 1
  %storedv = trunc nuw nsw i32 %and45.lobit to i8
  store i8 %storedv, ptr %is_utf8, align 1
  %and49 = and i32 %11, 268435456
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end69, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %cond.end
  %12 = load ptr, ptr %keysv.addr.3, align 8
  %xpv_len_u = getelementptr inbounds nuw i8, ptr %12, i64 24
  %13 = load i64, ptr %xpv_len_u, align 8
  %cmp53 = icmp eq i64 %13, 0
  %or58 = or disjoint i32 %and45.lobit, 1024
  %spec.select1216 = select i1 %cmp53, i32 %or58, i32 %and45.lobit
  br label %if.end69

if.else63:                                        ; preds = %if.end31
  %14 = trunc i32 %flags to i8
  %storedv68 = and i8 %14, 1
  store i8 %storedv68, ptr %is_utf8, align 1
  br label %if.end69

if.end69:                                         ; preds = %if.else63, %land.lhs.true51, %cond.end
  %flags.addr.0 = phi i32 [ %flags, %if.else63 ], [ %and45.lobit, %cond.end ], [ %spec.select1216, %land.lhs.true51 ]
  %key.addr.0 = phi ptr [ %key, %if.else63 ], [ %cond43, %cond.end ], [ %cond43, %land.lhs.true51 ]
  %and70 = and i32 %action, 64
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end74, label %if.then72

if.then72:                                        ; preds = %if.end69
  %15 = load i64, ptr %klen.addr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %klen.addr.i)
  store i64 %15, ptr %klen.addr.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %is_utf8.i) #5
  %16 = trunc i32 %flags.addr.0 to i8
  %storedv.i = and i8 %16, 1
  store i8 %storedv.i, ptr %is_utf8.i, align 1
  %17 = load i32, ptr %sv_flags, align 4
  %and3.i = and i32 %17, 8388608
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end31.i, label %if.then.i

if.then.i:                                        ; preds = %if.then72
  %hv.val.i = load ptr, ptr %hv, align 8
  %18 = getelementptr i8, ptr %hv.val.i, i64 8
  %hv.val.val.i = load ptr, ptr %18, align 8
  %tobool.not1.i1138 = icmp eq ptr %hv.val.val.i, null
  br i1 %tobool.not1.i1138, label %if.end31.i, label %while.body.i1139.preheader

while.body.i1139.preheader:                       ; preds = %if.then.i
  br label %while.body.i1139

while.body.i1139:                                 ; preds = %if.end5.i1146, %while.body.i1139.preheader
  %needs_copy.i.0 = phi i1 [ %needs_copy.i.1, %if.end5.i1146 ], [ false, %while.body.i1139.preheader ]
  %mg.02.i1140 = phi ptr [ %21, %if.end5.i1146 ], [ %hv.val.val.i, %while.body.i1139.preheader ]
  %mg_type.i1141 = getelementptr inbounds nuw i8, ptr %mg.02.i1140, i64 18
  %19 = load i8, ptr %mg_type.i1141, align 2
  %idxprom.i1142 = zext i8 %19 to i64
  %arrayidx.i1143 = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %idxprom.i1142
  %20 = load i32, ptr %arrayidx.i1143, align 4
  %and.i1144 = and i32 %20, 16400
  %cmp.i1145 = icmp eq i32 %and.i1144, 16400
  br i1 %cmp.i1145, label %if.then.i1149, label %if.end5.i1146

if.then.i1149:                                    ; preds = %while.body.i1139
  %cmp2.i1150 = icmp eq i8 %19, 80
  br i1 %cmp2.i1150, label %if.then5.i.loopexit, label %if.end5.i1146

if.end5.i1146:                                    ; preds = %if.then.i1149, %while.body.i1139
  %needs_copy.i.1 = phi i1 [ true, %if.then.i1149 ], [ %needs_copy.i.0, %while.body.i1139 ]
  %21 = load ptr, ptr %mg.02.i1140, align 8
  %tobool.not.i1147 = icmp eq ptr %21, null
  br i1 %tobool.not.i1147, label %S_hv_magic_check.exit1152, label %while.body.i1139, !llvm.loop !0

S_hv_magic_check.exit1152:                        ; preds = %if.end5.i1146
  %needs_copy.i.1.lcssa = phi i1 [ %needs_copy.i.1, %if.end5.i1146 ]
  br i1 %needs_copy.i.1.lcssa, label %if.then5.i, label %if.end31.i

if.then5.i.loopexit:                              ; preds = %if.then.i1149
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.then5.i.loopexit, %S_hv_magic_check.exit1152
  %needs_store.i.01156 = phi i1 [ true, %S_hv_magic_check.exit1152 ], [ false, %if.then5.i.loopexit ]
  %and7.i = and i32 %flags.addr.0, -257
  %call.i = call ptr @Perl_hv_common(ptr noundef nonnull %hv, ptr noundef %keysv.addr.3, ptr noundef %key.addr.0, i64 noundef %15, i32 noundef %and7.i, i32 noundef 17, ptr noundef null, i32 noundef %hash.addr.2)
  %tobool8.not.i = icmp eq ptr %call.i, null
  br i1 %tobool8.not.i, label %if.end31.i, label %cond.end.i

cond.end.i:                                       ; preds = %if.then5.i
  %he_valu.i = getelementptr inbounds nuw i8, ptr %call.i, i64 16
  %22 = load ptr, ptr %he_valu.i, align 8
  %tobool10.not.i = icmp eq ptr %22, null
  br i1 %tobool10.not.i, label %if.end31.i, label %if.then11.i

if.then11.i:                                      ; preds = %cond.end.i
  %sv_flags12.i = getelementptr inbounds nuw i8, ptr %22, i64 12
  %23 = load i32, ptr %sv_flags12.i, align 4
  %and13.i = and i32 %23, 14680064
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then11.i
  %call16.i = call i32 @Perl_mg_clear(ptr noundef nonnull %22) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then15.i, %if.then11.i
  br i1 %needs_store.i.01156, label %if.end31.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end.i
  %call19.i = call ptr @Perl_mg_find(ptr noundef nonnull %22, i32 noundef 112) #5
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %S_hv_delete_common.exit, label %if.then21.i

if.then21.i:                                      ; preds = %if.then18.i
  %call22.i = call i32 @Perl_sv_unmagic(ptr noundef nonnull %22, i32 noundef 112) #5
  br label %S_hv_delete_common.exit

if.end31.i:                                       ; preds = %if.end.i, %cond.end.i, %if.then5.i, %S_hv_magic_check.exit1152, %if.then.i, %if.then72
  %24 = load ptr, ptr %hv, align 8
  %sv_u.i = getelementptr inbounds nuw i8, ptr %hv, i64 16
  %25 = load ptr, ptr %sv_u.i, align 8
  %tobool32.not.i = icmp eq ptr %25, null
  br i1 %tobool32.not.i, label %S_hv_delete_common.exit, label %if.end34.i

if.end34.i:                                       ; preds = %if.end31.i
  %26 = load i8, ptr %is_utf8.i, align 1, !range !2, !noundef !3
  %loadedv35.i = trunc nuw i8 %26 to i1
  %and36.i = and i32 %flags.addr.0, 1024
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %or.cond.i = and i1 %tobool37.not.i, %loadedv35.i
  br i1 %or.cond.i, label %if.then38.i, label %if.end53.i

if.then38.i:                                      ; preds = %if.end34.i
  %call39.i = call ptr @Perl_bytes_from_utf8(ptr noundef %key.addr.0, ptr noundef nonnull %klen.addr.i, ptr noundef nonnull %is_utf8.i) #5
  %27 = load i8, ptr %is_utf8.i, align 1, !range !2, !noundef !3
  %loadedv40.i = trunc nuw i8 %27 to i1
  %or.i = or i32 %flags.addr.0, 1
  %and42.i = and i32 %flags.addr.0, -1026
  %k_flags.addr.0.i = select i1 %loadedv40.i, i32 %or.i, i32 %and42.i
  %cmp.not.i = icmp eq ptr %call39.i, %key.addr.0
  br i1 %cmp.not.i, label %if.end50.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.then38.i
  %and45.i = and i32 %k_flags.addr.0.i, 256
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.then44.i
  call void @Perl_safesysfree(ptr noundef %key.addr.0) #5
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %if.then44.i
  %or49.i = or i32 %k_flags.addr.0.i, 258
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end48.i, %if.then38.i
  %k_flags.addr.1.i = phi i32 [ %or49.i, %if.end48.i ], [ %k_flags.addr.0.i, %if.then38.i ]
  %28 = load i32, ptr %sv_flags, align 4
  %or52.i = or i32 %28, -2147483648
  store i32 %or52.i, ptr %sv_flags, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end50.i, %if.end34.i
  %k_flags.addr.2.i = phi i32 [ %k_flags.addr.1.i, %if.end50.i ], [ %flags.addr.0, %if.end34.i ]
  %key.addr.0.i = phi ptr [ %call39.i, %if.end50.i ], [ %key.addr.0, %if.end34.i ]
  %tobool54.not.i = icmp eq ptr %keysv.addr.3, null
  br i1 %tobool54.not.i, label %if.else73.i, label %land.lhs.true55.i

land.lhs.true55.i:                                ; preds = %if.end53.i
  %sv_flags56.i = getelementptr inbounds nuw i8, ptr %keysv.addr.3, i64 12
  %29 = load i32, ptr %sv_flags56.i, align 4
  %and57.i = and i32 %29, 268435456
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.else73.i, label %land.lhs.true59.i

land.lhs.true59.i:                                ; preds = %land.lhs.true55.i
  %30 = load ptr, ptr %keysv.addr.3, align 8
  %xpv_len_u.i = getelementptr inbounds nuw i8, ptr %30, i64 24
  %31 = load i64, ptr %xpv_len_u.i, align 8
  %cmp61.i = icmp eq i64 %31, 0
  br i1 %cmp61.i, label %if.then62.i, label %if.else73.i

if.then62.i:                                      ; preds = %land.lhs.true59.i
  %32 = load i32, ptr %sv_flags, align 4
  %and64.i = and i32 %32, 536870912
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.end69.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.then62.i
  %sv_u67.i = getelementptr inbounds nuw i8, ptr %keysv.addr.3, i64 16
  %33 = load ptr, ptr %sv_u67.i, align 8
  %add.ptr68.i = getelementptr inbounds i8, ptr %33, i64 -8
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then66.i, %if.then62.i
  %keysv_hek.0.i = phi ptr [ %add.ptr68.i, %if.then66.i ], [ null, %if.then62.i ]
  %sv_u70.i = getelementptr inbounds nuw i8, ptr %keysv.addr.3, i64 16
  %34 = load ptr, ptr %sv_u70.i, align 8
  %add.ptr72.i = getelementptr inbounds i8, ptr %34, i64 -8
  %35 = load i32, ptr %add.ptr72.i, align 4
  br label %if.end78.i

if.else73.i:                                      ; preds = %land.lhs.true59.i, %land.lhs.true55.i, %if.end53.i
  %tobool74.not.i = icmp eq i32 %hash.addr.2, 0
  br i1 %tobool74.not.i, label %if.then75.i, label %if.end78.i

if.then75.i:                                      ; preds = %if.else73.i
  %36 = load i64, ptr %klen.addr.i, align 8
  %add.ptr.i1103 = getelementptr inbounds nuw i8, ptr %key.addr.0.i, i64 %36
  %conv.i1104 = trunc i64 %36 to i32
  %add.i1105 = add i32 %conv.i1104, 544173908
  %cmp1.not.i1106 = icmp eq i64 %36, 0
  br i1 %cmp1.not.i1106, label %S_perl_hash_one_at_a_time_hard.exit1137, label %while.body.i1107.preheader

while.body.i1107.preheader:                       ; preds = %if.then75.i
  br label %while.body.i1107

while.body.i1107:                                 ; preds = %while.body.i1107, %while.body.i1107.preheader
  %hash.03.i1108 = phi i32 [ %add4.i1115, %while.body.i1107 ], [ %add.i1105, %while.body.i1107.preheader ]
  %str.addr.02.i1109 = phi ptr [ %incdec.ptr.i1113, %while.body.i1107 ], [ %key.addr.0.i, %while.body.i1107.preheader ]
  %add2.i1110 = mul i32 %hash.03.i1108, 1025
  %shr.i1111 = lshr i32 %add2.i1110, 6
  %xor.i1112 = xor i32 %shr.i1111, %add2.i1110
  %incdec.ptr.i1113 = getelementptr inbounds nuw i8, ptr %str.addr.02.i1109, i64 1
  %37 = load i8, ptr %str.addr.02.i1109, align 1
  %conv3.i1114 = zext i8 %37 to i32
  %add4.i1115 = add i32 %xor.i1112, %conv3.i1114
  %cmp.i1116 = icmp ult ptr %incdec.ptr.i1113, %add.ptr.i1103
  br i1 %cmp.i1116, label %while.body.i1107, label %S_perl_hash_one_at_a_time_hard.exit1137.loopexit, !llvm.loop !4

S_perl_hash_one_at_a_time_hard.exit1137.loopexit: ; preds = %while.body.i1107
  %add4.i1115.lcssa = phi i32 [ %add4.i1115, %while.body.i1107 ]
  br label %S_perl_hash_one_at_a_time_hard.exit1137

S_perl_hash_one_at_a_time_hard.exit1137:          ; preds = %S_perl_hash_one_at_a_time_hard.exit1137.loopexit, %if.then75.i
  %hash.0.lcssa.i1117 = phi i32 [ %add.i1105, %if.then75.i ], [ %add4.i1115.lcssa, %S_perl_hash_one_at_a_time_hard.exit1137.loopexit ]
  %add6.i1118 = mul i32 %hash.0.lcssa.i1117, 1025
  %shr7.i1119 = lshr i32 %add6.i1118, 6
  %xor8.i1120 = xor i32 %shr7.i1119, %add6.i1118
  %38 = mul i32 %xor8.i1120, 1025
  %add12.i1121 = add i32 %38, 73800
  %shr13.i1122 = lshr i32 %add12.i1121, 6
  %xor14.i1123 = xor i32 %shr13.i1122, %add12.i1121
  %39 = mul i32 %xor14.i1123, 1025
  %add19.i1124 = add i32 %39, 113775
  %shr20.i1125 = lshr i32 %add19.i1124, 6
  %xor21.i1126 = xor i32 %shr20.i1125, %add19.i1124
  %40 = mul i32 %xor21.i1126, 1025
  %add26.i1127 = add i32 %40, 118900
  %shr27.i1128 = lshr i32 %add26.i1127, 6
  %xor28.i1129 = xor i32 %shr27.i1128, %add26.i1127
  %41 = mul i32 %xor28.i1129, 1025
  %add33.i1130 = add i32 %41, 32800
  %shr34.i1131 = lshr i32 %add33.i1130, 6
  %xor35.i1132 = xor i32 %shr34.i1131, %add33.i1130
  %add37.i1133 = mul i32 %xor35.i1132, 9
  %shr38.i1134 = lshr i32 %add37.i1133, 11
  %xor39.i1135 = xor i32 %shr38.i1134, %add37.i1133
  %add41.i1136 = mul i32 %xor39.i1135, 32769
  br label %if.end78.i

if.end78.i:                                       ; preds = %S_perl_hash_one_at_a_time_hard.exit1137, %if.else73.i, %if.end69.i
  %keysv_hek.1.i = phi ptr [ %keysv_hek.0.i, %if.end69.i ], [ null, %if.else73.i ], [ null, %S_perl_hash_one_at_a_time_hard.exit1137 ]
  %hash.addr.0.i = phi i32 [ %35, %if.end69.i ], [ %hash.addr.2, %if.else73.i ], [ %add41.i1136, %S_perl_hash_one_at_a_time_hard.exit1137 ]
  %42 = load ptr, ptr %sv_u.i, align 8
  %43 = load ptr, ptr %hv, align 8
  %xhv_max.i = getelementptr inbounds nuw i8, ptr %43, i64 24
  %44 = load i64, ptr %xhv_max.i, align 8
  %conv.i = trunc i64 %44 to i32
  %and82.i = and i32 %hash.addr.0.i, %conv.i
  %idxprom.i = zext i32 %and82.i to i64
  %arrayidx.i = getelementptr inbounds nuw ptr, ptr %42, i64 %idxprom.i
  %45 = load ptr, ptr %arrayidx.i, align 8
  %tobool83.not.i = icmp eq ptr %45, null
  br i1 %tobool83.not.i, label %not_found.i, label %if.end85.i

if.end85.i:                                       ; preds = %if.end78.i
  %tobool86.not.i = icmp eq ptr %keysv_hek.1.i, null
  br i1 %tobool86.not.i, label %if.end116.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end85.i
  %hek_len.i = getelementptr inbounds nuw i8, ptr %keysv_hek.1.i, i64 4
  %46 = load i32, ptr %hek_len.i, align 4
  %idx.ext.i = sext i32 %46 to i64
  %add.ptr88.i = getelementptr i8, ptr %keysv_hek.1.i, i64 %idx.ext.i
  %add.ptr89.i = getelementptr i8, ptr %add.ptr88.i, i64 9
  %47 = load i8, ptr %add.ptr89.i, align 1
  %tobool91.not.i1230 = icmp eq ptr %45, null
  br i1 %tobool91.not.i1230, label %not_found.i, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then87.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.i.preheader
  %entry1.0.i1232 = phi ptr [ %51, %for.inc.i ], [ %45, %for.body.i.preheader ]
  %oentry.0.i1231 = phi ptr [ %entry1.0.i1232, %for.inc.i ], [ %arrayidx.i, %for.body.i.preheader ]
  %hent_hek.i = getelementptr inbounds nuw i8, ptr %entry1.0.i1232, i64 8
  %48 = load ptr, ptr %hent_hek.i, align 8
  %cmp92.i = icmp eq ptr %48, %keysv_hek.1.i
  br i1 %cmp92.i, label %found.i.loopexit1243, label %if.end95.i

if.end95.i:                                       ; preds = %for.body.i
  %hek_len98.i = getelementptr inbounds nuw i8, ptr %48, i64 4
  %49 = load i32, ptr %hek_len98.i, align 4
  %idx.ext99.i = sext i32 %49 to i64
  %add.ptr100.i = getelementptr i8, ptr %48, i64 %idx.ext99.i
  %add.ptr101.i = getelementptr i8, ptr %add.ptr100.i, i64 9
  %50 = load i8, ptr %add.ptr101.i, align 1
  %cmp103.not.i = icmp eq i8 %50, %47
  br i1 %cmp103.not.i, label %for.inc.i, label %if.end116.i.loopexit

for.inc.i:                                        ; preds = %if.end95.i
  %51 = load ptr, ptr %entry1.0.i1232, align 8
  %tobool91.not.i = icmp eq ptr %51, null
  br i1 %tobool91.not.i, label %not_found.i.loopexit1244, label %for.body.i, !llvm.loop !5

if.end116.i.loopexit:                             ; preds = %if.end95.i
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.end116.i.loopexit, %if.end85.i
  %tobool118.not.i1233 = icmp eq ptr %45, null
  br i1 %tobool118.not.i1233, label %not_found.i, label %for.body119.i.lr.ph

for.body119.i.lr.ph:                              ; preds = %if.end116.i
  %52 = load i64, ptr %klen.addr.i, align 8
  %conv128.i = trunc i64 %52 to i32
  br label %for.body119.i

for.body119.i:                                    ; preds = %for.inc634.i, %for.body119.i.lr.ph
  %entry1.3.i1235 = phi ptr [ %45, %for.body119.i.lr.ph ], [ %137, %for.inc634.i ]
  %oentry.3.i1234 = phi ptr [ %arrayidx.i, %for.body119.i.lr.ph ], [ %entry1.3.i1235, %for.inc634.i ]
  %hent_hek120.i = getelementptr inbounds nuw i8, ptr %entry1.3.i1235, i64 8
  %53 = load ptr, ptr %hent_hek120.i, align 8
  %54 = load i32, ptr %53, align 4
  %cmp122.not.i = icmp eq i32 %54, %hash.addr.0.i
  br i1 %cmp122.not.i, label %if.end125.i, label %for.inc634.i

if.end125.i:                                      ; preds = %for.body119.i
  %hek_len127.i = getelementptr inbounds nuw i8, ptr %53, i64 4
  %55 = load i32, ptr %hek_len127.i, align 4
  %cmp129.not.i = icmp eq i32 %55, %conv128.i
  br i1 %cmp129.not.i, label %if.end132.i, label %for.inc634.i

if.end132.i:                                      ; preds = %if.end125.i
  %hek_key134.i = getelementptr inbounds nuw i8, ptr %53, i64 8
  %bcmp.i = call i32 @bcmp(ptr nonnull %hek_key134.i, ptr %key.addr.0.i, i64 %52)
  %tobool137.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool137.not.i, label %if.end139.i, label %for.inc634.i

if.end139.i:                                      ; preds = %if.end132.i
  %idx.ext145.i = sext i32 %55 to i64
  %add.ptr146.i = getelementptr inbounds i8, ptr %hek_key134.i, i64 %idx.ext145.i
  %add.ptr147.i = getelementptr inbounds nuw i8, ptr %add.ptr146.i, i64 1
  %56 = load i8, ptr %add.ptr147.i, align 1
  %conv148.i = zext i8 %56 to i32
  %xor.i = xor i32 %k_flags.addr.2.i, %conv148.i
  %and149.i = and i32 %xor.i, 1
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  br i1 %tobool150.not.i, label %found.i.loopexit, label %for.inc634.i

found.i.loopexit:                                 ; preds = %if.end139.i
  %entry1.3.i1235.lcssa = phi ptr [ %entry1.3.i1235, %if.end139.i ]
  %oentry.3.i1234.lcssa = phi ptr [ %oentry.3.i1234, %if.end139.i ]
  br label %found.i

found.i.loopexit1243:                             ; preds = %for.body.i
  %entry1.0.i1232.lcssa = phi ptr [ %entry1.0.i1232, %for.body.i ]
  %oentry.0.i1231.lcssa = phi ptr [ %oentry.0.i1231, %for.body.i ]
  br label %found.i

found.i:                                          ; preds = %found.i.loopexit1243, %found.i.loopexit
  %oentry.4.i = phi ptr [ %oentry.3.i1234.lcssa, %found.i.loopexit ], [ %oentry.0.i1231.lcssa, %found.i.loopexit1243 ]
  %entry1.4.i = phi ptr [ %entry1.3.i1235.lcssa, %found.i.loopexit ], [ %entry1.0.i1232.lcssa, %found.i.loopexit1243 ]
  %57 = load ptr, ptr @PL_strtab, align 8
  %cmp153.i = icmp eq ptr %hv, %57
  br i1 %cmp153.i, label %if.then155.i, label %if.end160.i

if.then155.i:                                     ; preds = %found.i
  %and156.i = and i32 %k_flags.addr.2.i, 256
  %tobool157.not.i = icmp eq i32 %and156.i, 0
  br i1 %tobool157.not.i, label %if.end159.i, label %if.then158.i

if.then158.i:                                     ; preds = %if.then155.i
  call void @Perl_safesysfree(ptr noundef %key.addr.0.i) #5
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then158.i, %if.then155.i
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @S_strtab_error, ptr noundef nonnull @.str.16) #5
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.end159.i, %found.i
  %he_valu161.i = getelementptr inbounds nuw i8, ptr %entry1.4.i, i64 16
  %58 = load ptr, ptr %he_valu161.i, align 8
  %cmp162.i = icmp eq ptr %58, @PL_sv_placeholder
  br i1 %cmp162.i, label %if.then164.i, label %if.end169.i

if.then164.i:                                     ; preds = %if.end160.i
  %and165.i = and i32 %k_flags.addr.2.i, 256
  %tobool166.not.i = icmp eq i32 %and165.i, 0
  br i1 %tobool166.not.i, label %S_hv_delete_common.exit, label %if.then167.i

if.then167.i:                                     ; preds = %if.then164.i
  call void @Perl_safesysfree(ptr noundef %key.addr.0.i) #5
  br label %S_hv_delete_common.exit

if.end169.i:                                      ; preds = %if.end160.i
  %59 = load i32, ptr %sv_flags, align 4
  %and171.i = and i32 %59, 134283264
  %tobool172.not.i = icmp eq i32 %and171.i, 0
  %tobool175.not.i = icmp eq ptr %58, null
  %or.cond857.i = or i1 %tobool175.not.i, %tobool172.not.i
  br i1 %or.cond857.i, label %if.end183.i, label %land.lhs.true176.i

land.lhs.true176.i:                               ; preds = %if.end169.i
  %sv_flags178.i = getelementptr inbounds nuw i8, ptr %58, i64 12
  %60 = load i32, ptr %sv_flags178.i, align 4
  %and179.i = and i32 %60, 134283264
  %tobool180.not.i = icmp eq i32 %and179.i, 0
  br i1 %tobool180.not.i, label %if.end183.i, label %if.then181.i

if.then181.i:                                     ; preds = %land.lhs.true176.i
  %61 = load i64, ptr %klen.addr.i, align 8
  %conv182.i = trunc i64 %61 to i32
  call fastcc void @S_hv_notallowed(i32 noundef %k_flags.addr.2.i, ptr noundef %key.addr.0.i, i32 noundef %conv182.i, ptr noundef nonnull @.str.5)
  br label %if.end183.i

if.end183.i:                                      ; preds = %if.then181.i, %land.lhs.true176.i, %if.end169.i
  %and184.i = and i32 %k_flags.addr.2.i, 256
  %tobool185.not.i = icmp eq i32 %and184.i, 0
  br i1 %tobool185.not.i, label %if.end187.i, label %if.then186.i

if.then186.i:                                     ; preds = %if.end183.i
  call void @Perl_safesysfree(ptr noundef %key.addr.0.i) #5
  br label %if.end187.i

if.end187.i:                                      ; preds = %if.then186.i, %if.end183.i
  %62 = load ptr, ptr %he_valu161.i, align 8
  %tobool189.not.i = icmp eq ptr %62, null
  br i1 %tobool189.not.i, label %if.end417.i, label %land.lhs.true190.i

land.lhs.true190.i:                               ; preds = %if.end187.i
  %63 = load i32, ptr %sv_flags, align 4
  %and192.i = and i32 %63, 33554432
  %tobool193.not.i = icmp eq i32 %and192.i, 0
  br i1 %tobool193.not.i, label %if.end417.i, label %land.lhs.true194.i

land.lhs.true194.i:                               ; preds = %land.lhs.true190.i
  %64 = load ptr, ptr %sv_u.i, align 8
  %65 = load ptr, ptr %hv, align 8
  %xhv_max197.i = getelementptr inbounds nuw i8, ptr %65, i64 24
  %66 = load i64, ptr %xhv_max197.i, align 8
  %67 = getelementptr ptr, ptr %64, i64 %66
  %arrayidx199.i = getelementptr i8, ptr %67, i64 8
  %68 = load ptr, ptr %arrayidx199.i, align 8
  %tobool200.not.i = icmp eq ptr %68, null
  br i1 %tobool200.not.i, label %if.end417.i, label %land.lhs.true201.i

land.lhs.true201.i:                               ; preds = %land.lhs.true194.i
  %xhv_name_count.i = getelementptr i8, ptr %67, i64 36
  %69 = load i32, ptr %xhv_name_count.i, align 4
  %cmp207.not.i = icmp eq i32 %69, -1
  br i1 %cmp207.not.i, label %if.end417.i, label %cond.true209.i

cond.true209.i:                                   ; preds = %land.lhs.true201.i
  br i1 %tobool54.not.i, label %if.end285.ithread-pre-split, label %if.then273.i

if.then273.i:                                     ; preds = %cond.true209.i
  %sv_flags274.i = getelementptr inbounds nuw i8, ptr %keysv.addr.3, i64 12
  %70 = load i32, ptr %sv_flags274.i, align 4
  %and275.i = and i32 %70, 2098176
  %cmp276.i = icmp eq i32 %and275.i, 1024
  br i1 %cmp276.i, label %cond.true278.i, label %cond.false281.i

cond.true278.i:                                   ; preds = %if.then273.i
  %71 = load ptr, ptr %keysv.addr.3, align 8
  %xpv_cur.i = getelementptr inbounds nuw i8, ptr %71, i64 16
  %72 = load i64, ptr %xpv_cur.i, align 8
  store i64 %72, ptr %klen.addr.i, align 8
  %sv_u280.i = getelementptr inbounds nuw i8, ptr %keysv.addr.3, i64 16
  %73 = load ptr, ptr %sv_u280.i, align 8
  br label %if.end285.i

cond.false281.i:                                  ; preds = %if.then273.i
  %call282.i = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %keysv.addr.3, ptr noundef nonnull %klen.addr.i, i32 noundef 2) #5
  br label %if.end285.ithread-pre-split

if.end285.ithread-pre-split:                      ; preds = %cond.false281.i, %cond.true209.i
  %key.addr.1.i.ph = phi ptr [ %call282.i, %cond.false281.i ], [ %key.addr.0.i, %cond.true209.i ]
  %.pr = load i64, ptr %klen.addr.i, align 8
  br label %if.end285.i

if.end285.i:                                      ; preds = %if.end285.ithread-pre-split, %cond.true278.i
  %74 = phi i64 [ %.pr, %if.end285.ithread-pre-split ], [ %72, %cond.true278.i ]
  %key.addr.1.i = phi ptr [ %key.addr.1.i.ph, %if.end285.ithread-pre-split ], [ %73, %cond.true278.i ]
  %cmp286.i = icmp ugt i64 %74, 1
  br i1 %cmp286.i, label %land.lhs.true288.i, label %lor.lhs.false.i

land.lhs.true288.i:                               ; preds = %if.end285.i
  %75 = getelementptr i8, ptr %key.addr.1.i, i64 %74
  %arrayidx289.i = getelementptr i8, ptr %75, i64 -2
  %76 = load i8, ptr %arrayidx289.i, align 1
  %cmp291.i = icmp eq i8 %76, 58
  br i1 %cmp291.i, label %land.lhs.true293.i, label %if.else408.i

land.lhs.true293.i:                               ; preds = %land.lhs.true288.i
  %arrayidx295.i = getelementptr i8, ptr %75, i64 -1
  %77 = load i8, ptr %arrayidx295.i, align 1
  %cmp297.i = icmp eq i8 %77, 58
  br i1 %cmp297.i, label %land.lhs.true306.i, label %if.else408.i

lor.lhs.false.i:                                  ; preds = %if.end285.i
  %cmp299.i = icmp eq i64 %74, 1
  br i1 %cmp299.i, label %land.lhs.true301.i, label %if.end417.i

land.lhs.true301.i:                               ; preds = %lor.lhs.false.i
  %78 = load i8, ptr %key.addr.1.i, align 1
  %cmp304.i = icmp eq i8 %78, 58
  br i1 %cmp304.i, label %land.lhs.true315.i, label %if.end417.i

land.lhs.true306.i:                               ; preds = %land.lhs.true293.i
  %cmp307.not.i = icmp eq i64 %74, 6
  %79 = load ptr, ptr @PL_defstash, align 8
  %cmp310.not.i = icmp eq ptr %hv, %79
  %or.cond858.i = select i1 %cmp307.not.i, i1 %cmp310.not.i, i1 false
  br i1 %or.cond858.i, label %lor.lhs.false312.i, label %land.lhs.true315.i

lor.lhs.false312.i:                               ; preds = %land.lhs.true306.i
  %bcmp856.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %key.addr.1.i, ptr noundef nonnull dereferenceable(6) @.str.17, i64 6)
  %tobool314.not.i = icmp eq i32 %bcmp856.i, 0
  br i1 %tobool314.not.i, label %if.end417.i, label %land.lhs.true315.i

land.lhs.true315.i:                               ; preds = %lor.lhs.false312.i, %land.lhs.true306.i, %land.lhs.true301.i
  %sv_flags316.i = getelementptr inbounds nuw i8, ptr %62, i64 12
  %80 = load i32, ptr %sv_flags316.i, align 4
  %and317.i = and i32 %80, 255
  %cmp318.i = icmp eq i32 %and317.i, 9
  br i1 %cmp318.i, label %land.lhs.true320.i, label %if.else408.i

land.lhs.true320.i:                               ; preds = %land.lhs.true315.i
  %sv_u321.i = getelementptr inbounds nuw i8, ptr %62, i64 16
  %81 = load ptr, ptr %sv_u321.i, align 8
  %gp_hv.i = getelementptr inbounds nuw i8, ptr %81, i64 32
  %82 = load ptr, ptr %gp_hv.i, align 8
  %tobool323.not.i = icmp eq ptr %82, null
  br i1 %tobool323.not.i, label %if.else408.i, label %land.lhs.true324.i

land.lhs.true324.i:                               ; preds = %land.lhs.true320.i
  %sv_flags325.i = getelementptr inbounds nuw i8, ptr %82, i64 12
  %83 = load i32, ptr %sv_flags325.i, align 4
  %and326.i = and i32 %83, 33554432
  %tobool327.not.i = icmp eq i32 %and326.i, 0
  br i1 %tobool327.not.i, label %if.else408.i, label %land.lhs.true328.i

land.lhs.true328.i:                               ; preds = %land.lhs.true324.i
  %sv_u329.i = getelementptr inbounds nuw i8, ptr %82, i64 16
  %84 = load ptr, ptr %sv_u329.i, align 8
  %85 = load ptr, ptr %82, align 8
  %xhv_max331.i = getelementptr inbounds nuw i8, ptr %85, i64 24
  %86 = load i64, ptr %xhv_max331.i, align 8
  %87 = getelementptr ptr, ptr %84, i64 %86
  %arrayidx333.i = getelementptr i8, ptr %87, i64 8
  %88 = load ptr, ptr %arrayidx333.i, align 8
  %tobool335.not.i = icmp eq ptr %88, null
  br i1 %tobool335.not.i, label %if.else408.i, label %land.lhs.true336.i

land.lhs.true336.i:                               ; preds = %land.lhs.true328.i
  %xhv_name_count342.i = getelementptr i8, ptr %87, i64 36
  %89 = load i32, ptr %xhv_name_count342.i, align 4
  %cmp343.not.i = icmp eq i32 %89, -1
  br i1 %cmp343.not.i, label %if.else408.i, label %cond.true345.i

cond.true345.i:                                   ; preds = %land.lhs.true336.i
  %call407.i = call ptr @Perl_sv_2mortal(ptr noundef nonnull %62) #5
  %sv_refcnt.i = getelementptr inbounds nuw i8, ptr %call407.i, i64 8
  %90 = load i32, ptr %sv_refcnt.i, align 8
  %inc.i = add i32 %90, 1
  store i32 %inc.i, ptr %sv_refcnt.i, align 8
  br label %if.end417.i

if.else408.i:                                     ; preds = %land.lhs.true336.i, %land.lhs.true328.i, %land.lhs.true324.i, %land.lhs.true320.i, %land.lhs.true315.i, %land.lhs.true293.i, %land.lhs.true288.i
  %stash.0.i = phi ptr [ %82, %land.lhs.true336.i ], [ %82, %land.lhs.true328.i ], [ %82, %land.lhs.true324.i ], [ null, %land.lhs.true320.i ], [ null, %land.lhs.true315.i ], [ null, %land.lhs.true293.i ], [ null, %land.lhs.true288.i ]
  %cmp409.i = icmp eq i64 %74, 3
  br i1 %cmp409.i, label %sub_0, label %if.end417.i

sub_0:                                            ; preds = %if.else408.i
  %91 = load i8, ptr %key.addr.1.i, align 1
  %.not = icmp eq i8 %91, 73
  br i1 %.not, label %sub_1, label %land.lhs.true411.i.tail

sub_1:                                            ; preds = %sub_0
  %92 = getelementptr inbounds nuw i8, ptr %key.addr.1.i, i64 1
  %93 = load i8, ptr %92, align 1
  %.not1240 = icmp eq i8 %93, 83
  br i1 %.not1240, label %sub_2, label %land.lhs.true411.i.tail

sub_2:                                            ; preds = %sub_1
  %94 = getelementptr inbounds nuw i8, ptr %key.addr.1.i, i64 2
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 65
  br label %land.lhs.true411.i.tail

land.lhs.true411.i.tail:                          ; preds = %sub_2, %sub_1, %sub_0
  %tobool413.not.i = phi i1 [ false, %sub_0 ], [ false, %sub_1 ], [ %96, %sub_2 ]
  br label %if.end417.i

if.end417.i:                                      ; preds = %land.lhs.true411.i.tail, %if.else408.i, %cond.true345.i, %lor.lhs.false312.i, %land.lhs.true301.i, %lor.lhs.false.i, %land.lhs.true201.i, %land.lhs.true194.i, %land.lhs.true190.i, %if.end187.i
  %cmp624.i = phi i1 [ false, %cond.true345.i ], [ false, %if.else408.i ], [ false, %land.lhs.true201.i ], [ false, %land.lhs.true194.i ], [ false, %land.lhs.true190.i ], [ false, %if.end187.i ], [ %tobool413.not.i, %land.lhs.true411.i.tail ], [ false, %lor.lhs.false312.i ], [ false, %land.lhs.true301.i ], [ false, %lor.lhs.false.i ]
  %cmp629.i = phi i1 [ true, %cond.true345.i ], [ false, %if.else408.i ], [ false, %land.lhs.true201.i ], [ false, %land.lhs.true194.i ], [ false, %land.lhs.true190.i ], [ false, %if.end187.i ], [ false, %land.lhs.true411.i.tail ], [ false, %lor.lhs.false312.i ], [ false, %land.lhs.true301.i ], [ false, %lor.lhs.false.i ]
  %gv.0.i = phi ptr [ %62, %cond.true345.i ], [ %62, %if.else408.i ], [ null, %land.lhs.true201.i ], [ null, %land.lhs.true194.i ], [ null, %land.lhs.true190.i ], [ null, %if.end187.i ], [ %62, %land.lhs.true411.i.tail ], [ %62, %lor.lhs.false312.i ], [ %62, %land.lhs.true301.i ], [ %62, %lor.lhs.false.i ]
  %stash.1.i = phi ptr [ %82, %cond.true345.i ], [ %stash.0.i, %if.else408.i ], [ null, %land.lhs.true201.i ], [ null, %land.lhs.true194.i ], [ null, %land.lhs.true190.i ], [ null, %if.end187.i ], [ %stash.0.i, %land.lhs.true411.i.tail ], [ null, %lor.lhs.false312.i ], [ null, %land.lhs.true301.i ], [ null, %lor.lhs.false.i ]
  %and418.i = and i32 %action, 4
  %tobool419.not.i = icmp eq i32 %and418.i, 0
  br i1 %tobool419.not.i, label %cond.false422.i, label %cond.true420.i

cond.true420.i:                                   ; preds = %if.end417.i
  %97 = load ptr, ptr %he_valu161.i, align 8
  br label %cond.end425.i

cond.false422.i:                                  ; preds = %if.end417.i
  %98 = load ptr, ptr %he_valu161.i, align 8
  %call424.i = call ptr @Perl_sv_2mortal(ptr noundef %98) #5
  br label %cond.end425.i

cond.end425.i:                                    ; preds = %cond.false422.i, %cond.true420.i
  %cond426.i.mux = phi ptr [ null, %cond.true420.i ], [ %call424.i, %cond.false422.i ]
  %cond426.i = phi ptr [ %97, %cond.true420.i ], [ %call424.i, %cond.false422.i ]
  store ptr @PL_sv_placeholder, ptr %he_valu161.i, align 8
  %tobool428.not.i = icmp eq ptr %cond426.i, null
  br i1 %tobool428.not.i, label %if.end542.i, label %if.then429.i

if.then429.i:                                     ; preds = %cond.end425.i
  %sv_flags430.i = getelementptr inbounds nuw i8, ptr %cond426.i, i64 12
  %99 = load i32, ptr %sv_flags430.i, align 4
  %100 = and i32 %99, 49407
  %or.cond859.i = icmp eq i32 %100, 32777
  br i1 %or.cond859.i, label %land.lhs.true449.i, label %if.end542.i

land.lhs.true449.i:                               ; preds = %if.then429.i
  %sv_u450.i = getelementptr inbounds nuw i8, ptr %cond426.i, i64 16
  %101 = load ptr, ptr %sv_u450.i, align 8
  %gp_cvgen.i = getelementptr inbounds nuw i8, ptr %101, i64 24
  %102 = load i32, ptr %gp_cvgen.i, align 8
  %tobool452.not.i = icmp eq i32 %102, 0
  br i1 %tobool452.not.i, label %cond.false454.i, label %if.end542.i

cond.false454.i:                                  ; preds = %land.lhs.true449.i
  %gp_cv.i = getelementptr inbounds nuw i8, ptr %101, i64 16
  %103 = load ptr, ptr %gp_cv.i, align 8
  %tobool457.not.i = icmp eq ptr %103, null
  br i1 %tobool457.not.i, label %if.end542.i, label %land.lhs.true458.i

land.lhs.true458.i:                               ; preds = %cond.false454.i
  %104 = load i32, ptr %sv_flags, align 4
  %and460.i = and i32 %104, 33554432
  %tobool461.not.i = icmp eq i32 %and460.i, 0
  br i1 %tobool461.not.i, label %if.end542.i, label %land.lhs.true462.i

land.lhs.true462.i:                               ; preds = %land.lhs.true458.i
  %105 = load ptr, ptr %sv_u.i, align 8
  %106 = load ptr, ptr %hv, align 8
  %xhv_max465.i = getelementptr inbounds nuw i8, ptr %106, i64 24
  %107 = load i64, ptr %xhv_max465.i, align 8
  %108 = getelementptr ptr, ptr %105, i64 %107
  %arrayidx467.i = getelementptr i8, ptr %108, i64 8
  %109 = load ptr, ptr %arrayidx467.i, align 8
  %tobool469.not.i = icmp eq ptr %109, null
  br i1 %tobool469.not.i, label %if.end542.i, label %land.lhs.true470.i

land.lhs.true470.i:                               ; preds = %land.lhs.true462.i
  %xhv_name_count476.i = getelementptr i8, ptr %108, i64 36
  %110 = load i32, ptr %xhv_name_count476.i, align 4
  %cmp477.not.i = icmp eq i32 %110, -1
  br i1 %cmp477.not.i, label %if.end542.i, label %cond.true479.i

cond.true479.i:                                   ; preds = %land.lhs.true470.i
  call void @Perl_mro_method_changed_in(ptr noundef nonnull %hv) #5
  br label %if.end542.i

if.end542.i:                                      ; preds = %cond.true479.i, %land.lhs.true470.i, %land.lhs.true462.i, %land.lhs.true458.i, %cond.false454.i, %land.lhs.true449.i, %if.then429.i, %cond.end425.i
  %111 = load i32, ptr %sv_flags, align 4
  %and544.i = and i32 %111, 134283264
  %tobool545.not.i = icmp eq i32 %and544.i, 0
  br i1 %tobool545.not.i, label %if.else549.i, label %if.then546.i

if.then546.i:                                     ; preds = %if.end542.i
  %call547.i = call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %hv)
  %112 = load i64, ptr %call547.i, align 8
  %inc548.i = add nsw i64 %112, 1
  store i64 %inc548.i, ptr %call547.i, align 8
  br label %if.end618.i

if.else549.i:                                     ; preds = %if.end542.i
  %113 = load ptr, ptr %entry1.4.i, align 8
  store ptr %113, ptr %oentry.4.i, align 8
  %114 = load ptr, ptr %arrayidx.i, align 8
  %tobool551.not.i = icmp eq ptr %114, null
  br i1 %tobool551.not.i, label %land.lhs.true552.i, label %if.end566.i

land.lhs.true552.i:                               ; preds = %if.else549.i
  %115 = load i32, ptr %sv_flags, align 4
  %and554.i = and i32 %115, 33554432
  %tobool555.not.i = icmp eq i32 %and554.i, 0
  br i1 %tobool555.not.i, label %if.end566.i, label %if.then556.i

if.then556.i:                                     ; preds = %land.lhs.true552.i
  %116 = load ptr, ptr %sv_u.i, align 8
  %117 = load ptr, ptr %hv, align 8
  %xhv_max559.i = getelementptr inbounds nuw i8, ptr %117, i64 24
  %118 = load i64, ptr %xhv_max559.i, align 8
  %119 = getelementptr ptr, ptr %116, i64 %118
  %xhv_fill_lazy.i = getelementptr i8, ptr %119, i64 56
  %120 = load i32, ptr %xhv_fill_lazy.i, align 8
  %tobool562.not.i = icmp eq i32 %120, 0
  br i1 %tobool562.not.i, label %if.end566.i, label %if.then563.i

if.then563.i:                                     ; preds = %if.then556.i
  %dec.i = add i32 %120, -1
  store i32 %dec.i, ptr %xhv_fill_lazy.i, align 8
  br label %if.end566.i

if.end566.i:                                      ; preds = %if.then563.i, %if.then556.i, %land.lhs.true552.i, %if.else549.i
  %121 = load i32, ptr %sv_flags, align 4
  %and568.i = and i32 %121, 33554432
  %tobool569.not.i = icmp eq i32 %and568.i, 0
  br i1 %tobool569.not.i, label %if.end608.i, label %land.lhs.true570.i

land.lhs.true570.i:                               ; preds = %if.end566.i
  %122 = load ptr, ptr %sv_u.i, align 8
  %123 = load ptr, ptr %hv, align 8
  %xhv_max573.i = getelementptr inbounds nuw i8, ptr %123, i64 24
  %124 = load i64, ptr %xhv_max573.i, align 8
  %125 = getelementptr ptr, ptr %122, i64 %124
  %xhv_eiter.i = getelementptr i8, ptr %125, i64 24
  %126 = load ptr, ptr %xhv_eiter.i, align 8
  %cmp576.i = icmp eq ptr %entry1.4.i, %126
  br i1 %cmp576.i, label %if.then578.i, label %if.else581.i

if.then578.i:                                     ; preds = %land.lhs.true570.i
  %or580.i = or i32 %121, 1073741824
  store i32 %or580.i, ptr %sv_flags, align 4
  br label %if.end609.i

if.else581.i:                                     ; preds = %land.lhs.true570.i
  %and587.i = and i32 %121, 1073741824
  %tobool588.not.i = icmp eq i32 %and587.i, 0
  br i1 %tobool588.not.i, label %if.end608.i, label %land.lhs.true589.i

land.lhs.true589.i:                               ; preds = %if.else581.i
  %127 = load ptr, ptr %sv_u.i, align 8
  %128 = load ptr, ptr %hv, align 8
  %xhv_max592.i = getelementptr inbounds nuw i8, ptr %128, i64 24
  %129 = load i64, ptr %xhv_max592.i, align 8
  %130 = getelementptr ptr, ptr %127, i64 %129
  %xhv_eiter595.i = getelementptr i8, ptr %130, i64 24
  %131 = load ptr, ptr %xhv_eiter595.i, align 8
  %132 = load ptr, ptr %131, align 8
  %cmp597.i = icmp eq ptr %entry1.4.i, %132
  br i1 %cmp597.i, label %if.then599.i, label %if.end608.i

if.then599.i:                                     ; preds = %land.lhs.true589.i
  %133 = load ptr, ptr %entry1.4.i, align 8
  store ptr %133, ptr %131, align 8
  br label %if.end608.i

if.end608.i:                                      ; preds = %if.then599.i, %land.lhs.true589.i, %if.else581.i, %if.end566.i
  call void @Perl_hv_free_ent(ptr noundef nonnull %hv, ptr noundef nonnull %entry1.4.i)
  br label %if.end609.i

if.end609.i:                                      ; preds = %if.end608.i, %if.then578.i
  %xhv_keys.i = getelementptr inbounds nuw i8, ptr %24, i64 16
  %134 = load i64, ptr %xhv_keys.i, align 8
  %dec610.i = add i64 %134, -1
  store i64 %dec610.i, ptr %xhv_keys.i, align 8
  %cmp612.i = icmp eq i64 %dec610.i, 0
  br i1 %cmp612.i, label %if.then614.i, label %if.end618.i

if.then614.i:                                     ; preds = %if.end609.i
  %135 = load i32, ptr %sv_flags, align 4
  %and616.i = and i32 %135, 2147483647
  store i32 %and616.i, ptr %sv_flags, align 4
  br label %if.end618.i

if.end618.i:                                      ; preds = %if.then614.i, %if.end609.i, %if.then546.i
  %brmerge = or i1 %tobool419.not.i, %tobool428.not.i
  br i1 %brmerge, label %if.end622.i, label %if.then.i1096

if.then.i1096:                                    ; preds = %if.end618.i
  %sv_refcnt.i1097 = getelementptr inbounds nuw i8, ptr %cond426.i, i64 8
  %136 = load i32, ptr %sv_refcnt.i1097, align 8
  %cmp1.i1098 = icmp ugt i32 %136, 1
  br i1 %cmp1.i1098, label %if.then4.i1100, label %if.else.i1099

if.then4.i1100:                                   ; preds = %if.then.i1096
  %sub.i1101 = add i32 %136, -1
  store i32 %sub.i1101, ptr %sv_refcnt.i1097, align 8
  br label %if.end622.i

if.else.i1099:                                    ; preds = %if.then.i1096
  call void @Perl_sv_free2(ptr noundef nonnull %cond426.i, i32 noundef %136) #5
  br label %if.end622.i

if.end622.i:                                      ; preds = %if.else.i1099, %if.then4.i1100, %if.end618.i
  %sv.0.i = phi ptr [ %cond426.i.mux, %if.end618.i ], [ null, %if.then4.i1100 ], [ null, %if.else.i1099 ]
  br i1 %cmp624.i, label %if.then626.i, label %if.else627.i

if.then626.i:                                     ; preds = %if.end622.i
  call void @Perl_mro_isa_changed_in(ptr noundef nonnull %hv) #5
  br label %S_hv_delete_common.exit

if.else627.i:                                     ; preds = %if.end622.i
  br i1 %cmp629.i, label %if.then631.i, label %S_hv_delete_common.exit

if.then631.i:                                     ; preds = %if.else627.i
  call void @Perl_mro_package_moved(ptr noundef null, ptr noundef %stash.1.i, ptr noundef %gv.0.i, i32 noundef 1) #5
  br label %S_hv_delete_common.exit

for.inc634.i:                                     ; preds = %if.end139.i, %if.end132.i, %if.end125.i, %for.body119.i
  %137 = load ptr, ptr %entry1.3.i1235, align 8
  %tobool118.not.i = icmp eq ptr %137, null
  br i1 %tobool118.not.i, label %not_found.i.loopexit, label %for.body119.i, !llvm.loop !6

not_found.i.loopexit:                             ; preds = %for.inc634.i
  br label %not_found.i

not_found.i.loopexit1244:                         ; preds = %for.inc.i
  br label %not_found.i

not_found.i:                                      ; preds = %not_found.i.loopexit1244, %not_found.i.loopexit, %if.end116.i, %if.then87.i, %if.end78.i
  %138 = load i32, ptr %sv_flags, align 4
  %and638.i = and i32 %138, 134283264
  %tobool639.not.i = icmp eq i32 %and638.i, 0
  br i1 %tobool639.not.i, label %if.end642.i, label %if.then640.i

if.then640.i:                                     ; preds = %not_found.i
  %139 = load i64, ptr %klen.addr.i, align 8
  %call.i1084 = call ptr @Perl_sv_newmortal() #5
  %and.i1085 = and i32 %k_flags.addr.2.i, 256
  %tobool.not.i1086 = icmp eq i32 %and.i1085, 0
  %sext = shl i64 %139, 32
  %conv.i1087 = ashr exact i64 %sext, 32
  br i1 %tobool.not.i1086, label %if.then.i1094, label %if.else.i1088

if.then.i1094:                                    ; preds = %if.then640.i
  call void @Perl_sv_setpvn(ptr noundef %call.i1084, ptr noundef %key.addr.0.i, i64 noundef %conv.i1087) #5
  br label %if.end.i1089

if.else.i1088:                                    ; preds = %if.then640.i
  call void @Perl_sv_usepvn_flags(ptr noundef %call.i1084, ptr noundef %key.addr.0.i, i64 noundef %conv.i1087, i32 noundef 0) #5
  br label %if.end.i1089

if.end.i1089:                                     ; preds = %if.else.i1088, %if.then.i1094
  %and2.i = and i32 %k_flags.addr.2.i, 1
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %S_hv_notallowed.exit, label %if.then4.i1090

if.then4.i1090:                                   ; preds = %if.end.i1089
  %sv_flags.i1091 = getelementptr inbounds nuw i8, ptr %call.i1084, i64 12
  %140 = load i32, ptr %sv_flags.i1091, align 4
  %or.i1092 = or i32 %140, 536870912
  store i32 %or.i1092, ptr %sv_flags.i1091, align 4
  br label %S_hv_notallowed.exit

S_hv_notallowed.exit:                             ; preds = %if.then4.i1090, %if.end.i1089
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.19, ptr noundef %call.i1084) #5
  br label %if.end642.i

if.end642.i:                                      ; preds = %S_hv_notallowed.exit, %not_found.i
  %and643.i = and i32 %k_flags.addr.2.i, 256
  %tobool644.not.i = icmp eq i32 %and643.i, 0
  br i1 %tobool644.not.i, label %S_hv_delete_common.exit, label %if.then645.i

if.then645.i:                                     ; preds = %if.end642.i
  call void @Perl_safesysfree(ptr noundef %key.addr.0.i) #5
  br label %S_hv_delete_common.exit

S_hv_delete_common.exit:                          ; preds = %if.then645.i, %if.end642.i, %if.then631.i, %if.else627.i, %if.then626.i, %if.then167.i, %if.then164.i, %if.end31.i, %if.then21.i, %if.then18.i
  %retval.4.i = phi ptr [ null, %if.end31.i ], [ null, %if.then167.i ], [ null, %if.then164.i ], [ %sv.0.i, %if.else627.i ], [ %sv.0.i, %if.then631.i ], [ %sv.0.i, %if.then626.i ], [ null, %if.then645.i ], [ null, %if.end642.i ], [ %22, %if.then21.i ], [ null, %if.then18.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %is_utf8.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %klen.addr.i)
  br label %cleanup750

if.end74:                                         ; preds = %if.end69
  %141 = load ptr, ptr %hv, align 8
  %142 = load i32, ptr %sv_flags, align 4
  %and77 = and i32 %142, 14680064
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end302, label %if.then79

if.then79:                                        ; preds = %if.end74
  %and81 = and i32 %142, 8388608
  %tobool82.not = icmp ne i32 %and81, 0
  %and84 = and i32 %action, 12
  %tobool85.not = icmp eq i32 %and84, 0
  %or.cond1055 = and i1 %tobool85.not, %tobool82.not
  br i1 %or.cond1055, label %if.then86, label %if.else129

if.then86:                                        ; preds = %if.then79
  %call87 = call ptr @Perl_mg_find(ptr noundef nonnull %hv, i32 noundef 80) #5
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %lor.lhs.false, label %if.then92

lor.lhs.false:                                    ; preds = %if.then86
  %143 = load i32, ptr %sv_flags, align 4
  %and90 = and i32 %143, 2097152
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end302, label %if.then92

if.then92:                                        ; preds = %lor.lhs.false, %if.then86
  br i1 %tobool32, label %if.else99, label %if.then94

if.then94:                                        ; preds = %if.then92
  %144 = load i64, ptr %klen.addr, align 8
  %145 = load i8, ptr %is_utf8, align 1, !range !2, !noundef !3
  %146 = zext nneg i8 %145 to i32
  %cond97 = shl nuw nsw i32 %146, 29
  %call98 = call ptr @Perl_newSVpvn_flags(ptr noundef %key.addr.0, i64 noundef %144, i32 noundef %cond97) #5
  br label %if.end101

if.else99:                                        ; preds = %if.then92
  %call100 = call ptr @Perl_newSVsv(ptr noundef nonnull %keysv.addr.3) #5
  br label %if.end101

if.end101:                                        ; preds = %if.else99, %if.then94
  %keysv.addr.4 = phi ptr [ %call100, %if.else99 ], [ %call98, %if.then94 ]
  %call102 = call ptr @Perl_sv_newmortal() #5
  %call103 = call i32 @Perl_mg_copy(ptr noundef nonnull %hv, ptr noundef %call102, ptr noundef %keysv.addr.4, i32 noundef -2) #5
  %147 = load ptr, ptr @PL_hv_fetch_ent_mh, align 8
  %tobool104.not = icmp eq ptr %147, null
  br i1 %tobool104.not, label %if.else106, label %if.then105

if.then105:                                       ; preds = %if.end101
  %148 = load ptr, ptr %147, align 8
  store ptr %148, ptr @PL_hv_fetch_ent_mh, align 8
  br label %if.end109

if.else106:                                       ; preds = %if.end101
  %call107 = call fastcc ptr @S_new_he()
  %call108 = call ptr @Perl_safesysmalloc(i64 noundef 16) #5
  %hent_hek = getelementptr inbounds nuw i8, ptr %call107, i64 8
  store ptr %call108, ptr %hent_hek, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.else106, %if.then105
  %entry1.0 = phi ptr [ %147, %if.then105 ], [ %call107, %if.else106 ]
  store ptr null, ptr %entry1.0, align 8
  %hent_hek111 = getelementptr inbounds nuw i8, ptr %entry1.0, i64 8
  %149 = load ptr, ptr %hent_hek111, align 8
  %hek_len = getelementptr inbounds nuw i8, ptr %149, i64 4
  store i32 -2, ptr %hek_len, align 4
  %150 = load ptr, ptr %hent_hek111, align 8
  %hek_key = getelementptr inbounds nuw i8, ptr %150, i64 8
  store ptr %keysv.addr.4, ptr %hek_key, align 4
  %he_valu = getelementptr inbounds nuw i8, ptr %entry1.0, i64 16
  store ptr %call102, ptr %he_valu, align 8
  call void @Perl_sv_upgrade(ptr noundef %call102, i32 noundef 10) #5
  %151 = load ptr, ptr %call102, align 8
  %xlv_type = getelementptr inbounds nuw i8, ptr %151, i64 72
  store i8 84, ptr %xlv_type, align 8
  %152 = load ptr, ptr %call102, align 8
  %xlv_targ = getelementptr inbounds nuw i8, ptr %152, i64 64
  store ptr %entry1.0, ptr %xlv_targ, align 8
  %and115 = and i32 %flags.addr.0, 256
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end118, label %if.then117

if.then117:                                       ; preds = %if.end109
  call void @Perl_safesysfree(ptr noundef %key.addr.0) #5
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %if.end109
  %tobool119.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool119.not, ptr %entry1.0, ptr %he_valu
  br label %cleanup750

if.else129:                                       ; preds = %if.then79
  %tobool132.not = icmp eq i32 %and81, 0
  %and134 = and i32 %action, 8
  %tobool135.not = icmp eq i32 %and134, 0
  %or.cond1056 = or i1 %tobool135.not, %tobool132.not
  br i1 %or.cond1056, label %if.else248, label %if.then136

if.then136:                                       ; preds = %if.else129
  %call137 = call ptr @Perl_mg_find(ptr noundef nonnull %hv, i32 noundef 80) #5
  %tobool138.not = icmp eq ptr %call137, null
  br i1 %tobool138.not, label %lor.lhs.false139, label %if.then143

lor.lhs.false139:                                 ; preds = %if.then136
  %153 = load i32, ptr %sv_flags, align 4
  %and141 = and i32 %153, 2097152
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end302, label %if.then143

if.then143:                                       ; preds = %lor.lhs.false139, %if.then136
  %call144 = call ptr @Perl_sv_newmortal() #5
  %call145 = call ptr @Perl_sv_newmortal() #5
  %154 = load i8, ptr %is_utf8, align 1, !range !2
  %loadedv148 = trunc nuw i8 %154 to i1
  %or.cond = select i1 %tobool32, i1 true, i1 %loadedv148
  br i1 %or.cond, label %if.then150, label %if.else159

if.then150:                                       ; preds = %if.then143
  br i1 %tobool32, label %if.else154, label %if.then152

if.then152:                                       ; preds = %if.then150
  %155 = load i64, ptr %klen.addr, align 8
  %call153 = call ptr @Perl_newSVpvn_flags(ptr noundef %key.addr.0, i64 noundef %155, i32 noundef 536870912) #5
  br label %if.end156

if.else154:                                       ; preds = %if.then150
  %call155 = call ptr @Perl_newSVsv(ptr noundef nonnull %keysv.addr.3) #5
  br label %if.end156

if.end156:                                        ; preds = %if.else154, %if.then152
  %keysv.addr.5 = phi ptr [ %call155, %if.else154 ], [ %call153, %if.then152 ]
  %call157 = call ptr @Perl_sv_2mortal(ptr noundef %keysv.addr.5) #5
  %call158 = call i32 @Perl_mg_copy(ptr noundef nonnull %hv, ptr noundef %call145, ptr noundef %call157, i32 noundef -2) #5
  br label %if.end162

if.else159:                                       ; preds = %if.then143
  %156 = load i64, ptr %klen.addr, align 8
  %conv160 = trunc i64 %156 to i32
  %call161 = call i32 @Perl_mg_copy(ptr noundef nonnull %hv, ptr noundef %call145, ptr noundef %key.addr.0, i32 noundef %conv160) #5
  br label %if.end162

if.end162:                                        ; preds = %if.else159, %if.end156
  %and163 = and i32 %flags.addr.0, 256
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.end166, label %if.then165

if.then165:                                       ; preds = %if.end162
  call void @Perl_safesysfree(ptr noundef %key.addr.0) #5
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %if.end162
  %call167 = call ptr @Perl_mg_find(ptr noundef %call145, i32 noundef 112) #5
  %call168 = call i32 @Perl_magic_existspack(ptr noundef %call144, ptr noundef %call167) #5
  %tobool169.not = icmp eq ptr %call144, null
  br i1 %tobool169.not, label %cleanup750, label %land.lhs.true172

land.lhs.true172:                                 ; preds = %if.end166
  %sv_flags173 = getelementptr inbounds nuw i8, ptr %call144, i64 12
  %157 = load i32, ptr %sv_flags173, align 4
  %and174 = and i32 %157, 2097152
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %cond.false181, label %cond.true178

cond.true178:                                     ; preds = %land.lhs.true172
  %call179 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %call144, i32 noundef 2) #5
  br i1 %call179, label %cond.true243, label %cleanup750

cond.false181:                                    ; preds = %land.lhs.true172
  %and183 = and i32 %157, 65280
  %tobool184.not = icmp ne i32 %and183, 0
  %and187 = and i32 %157, 255
  %cmp188 = icmp eq i32 %and187, 8
  %or.cond1057 = or i1 %tobool184.not, %cmp188
  %and192 = and i32 %157, 16777471
  %cmp193 = icmp eq i32 %and192, 16777226
  %or.cond1058 = or i1 %cmp193, %or.cond1057
  br i1 %or.cond1058, label %cond.false196, label %cleanup750

cond.false196:                                    ; preds = %cond.false181
  %and198 = and i32 %157, 1024
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %cond.false217, label %cond.true200

cond.true200:                                     ; preds = %cond.false196
  %158 = load ptr, ptr %call144, align 8
  %tobool202.not = icmp eq ptr %158, null
  br i1 %tobool202.not, label %cleanup750, label %land.lhs.true203

land.lhs.true203:                                 ; preds = %cond.true200
  %xpv_cur205 = getelementptr inbounds nuw i8, ptr %158, i64 16
  %159 = load i64, ptr %xpv_cur205, align 8
  %cmp206 = icmp ugt i64 %159, 1
  br i1 %cmp206, label %cond.true243, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %land.lhs.true203
  %tobool211.not = icmp eq i64 %159, 0
  br i1 %tobool211.not, label %cleanup750, label %land.lhs.true212

land.lhs.true212:                                 ; preds = %lor.lhs.false208
  %sv_u213 = getelementptr inbounds nuw i8, ptr %call144, i64 16
  %160 = load ptr, ptr %sv_u213, align 8
  %161 = load i8, ptr %160, align 1
  %cmp215.not = icmp eq i8 %161, 48
  br i1 %cmp215.not, label %cleanup750, label %cond.true243

cond.false217:                                    ; preds = %cond.false196
  %and219 = and i32 %157, 768
  %tobool220.not = icmp eq i32 %and219, 0
  br i1 %tobool220.not, label %cond.false240, label %cond.true221

cond.true221:                                     ; preds = %cond.false217
  %and223 = and i32 %157, 256
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %lor.lhs.false229, label %land.lhs.true225

land.lhs.true225:                                 ; preds = %cond.true221
  %162 = load ptr, ptr %call144, align 8
  %xiv_u = getelementptr inbounds nuw i8, ptr %162, i64 32
  %163 = load i64, ptr %xiv_u, align 8
  %cmp227.not = icmp eq i64 %163, 0
  br i1 %cmp227.not, label %lor.lhs.false229, label %cond.true243

lor.lhs.false229:                                 ; preds = %land.lhs.true225, %cond.true221
  %and231 = and i32 %157, 512
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %cleanup750, label %land.lhs.true233

land.lhs.true233:                                 ; preds = %lor.lhs.false229
  %164 = load ptr, ptr %call144, align 8
  %xnv_u = getelementptr inbounds nuw i8, ptr %164, i64 40
  %165 = load double, ptr %xnv_u, align 8
  %cmp238 = fcmp une double %165, 0.000000e+00
  br i1 %cmp238, label %cond.true243, label %cleanup750

cond.false240:                                    ; preds = %cond.false217
  %call241 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %call144, i32 noundef 0) #5
  br i1 %call241, label %cond.true243, label %cleanup750

cond.true243:                                     ; preds = %cond.false240, %land.lhs.true233, %land.lhs.true225, %land.lhs.true212, %land.lhs.true203, %cond.true178
  br label %cleanup750

if.else248:                                       ; preds = %if.else129
  %and249 = and i32 %action, 4
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %if.end302, label %if.then251

if.then251:                                       ; preds = %if.else248
  %166 = getelementptr i8, ptr %141, i64 8
  %hv.val.val = load ptr, ptr %166, align 8
  %tobool.not1.i = icmp eq ptr %hv.val.val, null
  br i1 %tobool.not1.i, label %if.end302, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.then251
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i, %while.body.i.preheader
  %needs_copy.0 = phi i1 [ %needs_copy.1, %if.end5.i ], [ false, %while.body.i.preheader ]
  %mg.02.i = phi ptr [ %169, %if.end5.i ], [ %hv.val.val, %while.body.i.preheader ]
  %mg_type.i = getelementptr inbounds nuw i8, ptr %mg.02.i, i64 18
  %167 = load i8, ptr %mg_type.i, align 2
  %idxprom.i1064 = zext i8 %167 to i64
  %arrayidx.i1065 = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %idxprom.i1064
  %168 = load i32, ptr %arrayidx.i1065, align 4
  %and.i = and i32 %168, 16400
  %cmp.i = icmp eq i32 %and.i, 16400
  br i1 %cmp.i, label %if.then.i1067, label %if.end5.i

if.then.i1067:                                    ; preds = %while.body.i
  %cmp2.i = icmp eq i8 %167, 80
  br i1 %cmp2.i, label %if.then253.loopexit, label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i1067, %while.body.i
  %needs_copy.1 = phi i1 [ true, %if.then.i1067 ], [ %needs_copy.0, %while.body.i ]
  %169 = load ptr, ptr %mg.02.i, align 8
  %tobool.not.i = icmp eq ptr %169, null
  br i1 %tobool.not.i, label %S_hv_magic_check.exit, label %while.body.i, !llvm.loop !0

S_hv_magic_check.exit:                            ; preds = %if.end5.i
  %needs_copy.1.lcssa = phi i1 [ %needs_copy.1, %if.end5.i ]
  br i1 %needs_copy.1.lcssa, label %if.then253, label %if.end302

if.then253.loopexit:                              ; preds = %if.then.i1067
  br label %if.then253

if.then253:                                       ; preds = %if.then253.loopexit, %S_hv_magic_check.exit
  %needs_store.01187 = phi i1 [ true, %S_hv_magic_check.exit ], [ false, %if.then253.loopexit ]
  %170 = load i8, ptr @PL_tainted, align 1, !range !2, !noundef !3
  %loadedv254 = trunc nuw i8 %170 to i1
  %171 = load i8, ptr %is_utf8, align 1, !range !2
  %loadedv258 = trunc nuw i8 %171 to i1
  %or.cond760 = select i1 %tobool32, i1 true, i1 %loadedv258
  br i1 %or.cond760, label %if.then260, label %if.else277

if.then260:                                       ; preds = %if.then253
  br i1 %tobool32, label %if.end264, label %if.then262

if.then262:                                       ; preds = %if.then260
  %172 = load i64, ptr %klen.addr, align 8
  %call263 = call ptr @Perl_newSVpvn_flags(ptr noundef %key.addr.0, i64 noundef %172, i32 noundef 536870912) #5
  br label %if.end264

if.end264:                                        ; preds = %if.then262, %if.then260
  %keysv.addr.6 = phi ptr [ %keysv.addr.3, %if.then260 ], [ %call263, %if.then262 ]
  %173 = load i8, ptr @PL_tainting, align 1, !range !2, !noundef !3
  %loadedv265 = trunc nuw i8 %173 to i1
  br i1 %loadedv265, label %if.then266, label %if.end273

if.then266:                                       ; preds = %if.end264
  %sv_flags267 = getelementptr inbounds nuw i8, ptr %keysv.addr.6, i64 12
  %174 = load i32, ptr %sv_flags267, align 4
  %and268 = and i32 %174, 14680064
  %tobool269.not = icmp eq i32 %and268, 0
  br i1 %tobool269.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then266
  %call270 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %keysv.addr.6) #5
  %175 = zext i1 %call270 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then266
  %storedv272 = phi i8 [ 0, %if.then266 ], [ %175, %land.rhs ]
  store i8 %storedv272, ptr @PL_tainted, align 1
  br label %if.end273

if.end273:                                        ; preds = %land.end, %if.end264
  %call274 = call ptr @Perl_newSVsv(ptr noundef %keysv.addr.6) #5
  %call275 = call ptr @Perl_sv_2mortal(ptr noundef %call274) #5
  %call276 = call i32 @Perl_mg_copy(ptr noundef %hv, ptr noundef %val, ptr noundef %call275, i32 noundef -2) #5
  br label %if.end280

if.else277:                                       ; preds = %if.then253
  %176 = load i64, ptr %klen.addr, align 8
  %conv278 = trunc i64 %176 to i32
  %call279 = call i32 @Perl_mg_copy(ptr noundef %hv, ptr noundef %val, ptr noundef %key.addr.0, i32 noundef %conv278) #5
  br label %if.end280

if.end280:                                        ; preds = %if.else277, %if.end273
  %keysv.addr.7 = phi ptr [ %call275, %if.end273 ], [ null, %if.else277 ]
  br i1 %loadedv254, label %if.then285, label %if.end286

if.then285:                                       ; preds = %if.end280
  store i8 1, ptr @PL_tainted, align 1
  br label %if.end286

if.end286:                                        ; preds = %if.then285, %if.end280
  br i1 %needs_store.01187, label %if.end302, label %if.then288

if.then288:                                       ; preds = %if.end286
  %and289 = and i32 %flags.addr.0, 256
  %tobool290.not = icmp eq i32 %and289, 0
  br i1 %tobool290.not, label %cleanup750, label %if.then291

if.then291:                                       ; preds = %if.then288
  call void @Perl_safesysfree(ptr noundef %key.addr.0) #5
  br label %cleanup750

if.end302:                                        ; preds = %if.end286, %S_hv_magic_check.exit, %if.then251, %if.else248, %lor.lhs.false139, %lor.lhs.false, %if.end74
  %keysv.addr.10 = phi ptr [ %keysv.addr.3, %lor.lhs.false139 ], [ %keysv.addr.3, %if.else248 ], [ %keysv.addr.3, %lor.lhs.false ], [ %keysv.addr.3, %if.end74 ], [ %keysv.addr.7, %if.end286 ], [ %keysv.addr.3, %S_hv_magic_check.exit ], [ %keysv.addr.3, %if.then251 ]
  %sv_u303 = getelementptr inbounds nuw i8, ptr %hv, i64 16
  %177 = load ptr, ptr %sv_u303, align 8
  %tobool304.not = icmp eq ptr %177, null
  br i1 %tobool304.not, label %if.then305, label %if.end317

if.then305:                                       ; preds = %if.end302
  %and306 = and i32 %action, 20
  %tobool307.not = icmp eq i32 %and306, 0
  br i1 %tobool307.not, label %if.else311, label %if.then308

if.then308:                                       ; preds = %if.then305
  %xhv_max = getelementptr inbounds nuw i8, ptr %141, i64 24
  %178 = load i64, ptr %xhv_max, align 8
  %add = shl i64 %178, 3
  %mul = add i64 %add, 8
  %call309 = call ptr @Perl_safesyscalloc(i64 noundef %mul, i64 noundef 1) #5
  store ptr %call309, ptr %sv_u303, align 8
  br label %if.end317

if.else311:                                       ; preds = %if.then305
  %and312 = and i32 %flags.addr.0, 256
  %tobool313.not = icmp eq i32 %and312, 0
  br i1 %tobool313.not, label %cleanup750, label %if.then314

if.then314:                                       ; preds = %if.else311
  call void @Perl_safesysfree(ptr noundef %key.addr.0) #5
  br label %cleanup750

if.end317:                                        ; preds = %if.then308, %if.end302
  %179 = load i8, ptr %is_utf8, align 1, !range !2, !noundef !3
  %loadedv318 = trunc nuw i8 %179 to i1
  %and321 = and i32 %flags.addr.0, 1024
  %tobool322.not = icmp eq i32 %and321, 0
  %or.cond1060 = select i1 %loadedv318, i1 %tobool322.not, i1 false
  br i1 %or.cond1060, label %if.then323, label %if.end340

if.then323:                                       ; preds = %if.end317
  %call324 = call ptr @Perl_bytes_from_utf8(ptr noundef %key.addr.0, ptr noundef nonnull %klen.addr, ptr noundef nonnull %is_utf8) #5
  %180 = load i8, ptr %is_utf8, align 1, !range !2, !noundef !3
  %loadedv325 = trunc nuw i8 %180 to i1
  %or327 = or i32 %flags.addr.0, 1
  %and329 = and i32 %flags.addr.0, -1026
  %flags.addr.1 = select i1 %loadedv325, i32 %or327, i32 %and329
  %cmp331.not = icmp eq ptr %call324, %key.addr.0
  br i1 %cmp331.not, label %if.end340, label %if.then333

if.then333:                                       ; preds = %if.then323
  %and334 = and i32 %flags.addr.1, 256
  %tobool335.not = icmp eq i32 %and334, 0
  br i1 %tobool335.not, label %if.end337, label %if.then336

if.then336:                                       ; preds = %if.then333
  call void @Perl_safesysfree(ptr noundef %key.addr.0) #5
  br label %if.end337

if.end337:                                        ; preds = %if.then336, %if.then333
  %or338 = or i32 %flags.addr.1, 258
  br label %if.end340

if.end340:                                        ; preds = %if.end337, %if.then323, %if.end317
  %hash.addr.4 = phi i32 [ %hash.addr.2, %if.end317 ], [ 0, %if.end337 ], [ %hash.addr.2, %if.then323 ]
  %flags.addr.3 = phi i32 [ %flags.addr.0, %if.end317 ], [ %or338, %if.end337 ], [ %flags.addr.1, %if.then323 ]
  %key.addr.1 = phi ptr [ %key.addr.0, %if.end317 ], [ %call324, %if.end337 ], [ %call324, %if.then323 ]
  %tobool341.not = icmp eq ptr %keysv.addr.10, null
  br i1 %tobool341.not, label %if.else364, label %land.lhs.true342

land.lhs.true342:                                 ; preds = %if.end340
  %sv_flags343 = getelementptr inbounds nuw i8, ptr %keysv.addr.10, i64 12
  %181 = load i32, ptr %sv_flags343, align 4
  %and344 = and i32 %181, 268435456
  %tobool345.not = icmp eq i32 %and344, 0
  br i1 %tobool345.not, label %if.else364, label %land.lhs.true346

land.lhs.true346:                                 ; preds = %land.lhs.true342
  %182 = load ptr, ptr %keysv.addr.10, align 8
  %xpv_len_u348 = getelementptr inbounds nuw i8, ptr %182, i64 24
  %183 = load i64, ptr %xpv_len_u348, align 8
  %cmp349 = icmp eq i64 %183, 0
  br i1 %cmp349, label %if.then351, label %if.else364

if.then351:                                       ; preds = %land.lhs.true346
  %184 = load i32, ptr %sv_flags, align 4
  %and353 = and i32 %184, 536870912
  %tobool354.not = icmp eq i32 %and353, 0
  br i1 %tobool354.not, label %if.end359, label %if.then355

if.then355:                                       ; preds = %if.then351
  %sv_u356 = getelementptr inbounds nuw i8, ptr %keysv.addr.10, i64 16
  %185 = load ptr, ptr %sv_u356, align 8
  %add.ptr358 = getelementptr inbounds i8, ptr %185, i64 -8
  br label %if.end359

if.end359:                                        ; preds = %if.then355, %if.then351
  %keysv_hek.0 = phi ptr [ %add.ptr358, %if.then355 ], [ null, %if.then351 ]
  %sv_u360 = getelementptr inbounds nuw i8, ptr %keysv.addr.10, i64 16
  %186 = load ptr, ptr %sv_u360, align 8
  %add.ptr362 = getelementptr inbounds i8, ptr %186, i64 -8
  %187 = load i32, ptr %add.ptr362, align 4
  br label %if.end369

if.else364:                                       ; preds = %land.lhs.true346, %land.lhs.true342, %if.end340
  %tobool365.not = icmp eq i32 %hash.addr.4, 0
  br i1 %tobool365.not, label %if.then366, label %if.end369

if.then366:                                       ; preds = %if.else364
  %188 = load i64, ptr %klen.addr, align 8
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %key.addr.1, i64 %188
  %conv.i1068 = trunc i64 %188 to i32
  %add.i = add i32 %conv.i1068, 544173908
  %cmp1.not.i = icmp eq i64 %188, 0
  br i1 %cmp1.not.i, label %S_perl_hash_one_at_a_time_hard.exit, label %while.body.i1069.preheader

while.body.i1069.preheader:                       ; preds = %if.then366
  br label %while.body.i1069

while.body.i1069:                                 ; preds = %while.body.i1069, %while.body.i1069.preheader
  %hash.03.i = phi i32 [ %add4.i, %while.body.i1069 ], [ %add.i, %while.body.i1069.preheader ]
  %str.addr.02.i = phi ptr [ %incdec.ptr.i, %while.body.i1069 ], [ %key.addr.1, %while.body.i1069.preheader ]
  %add2.i = mul i32 %hash.03.i, 1025
  %shr.i = lshr i32 %add2.i, 6
  %xor.i1070 = xor i32 %shr.i, %add2.i
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %str.addr.02.i, i64 1
  %189 = load i8, ptr %str.addr.02.i, align 1
  %conv3.i = zext i8 %189 to i32
  %add4.i = add i32 %xor.i1070, %conv3.i
  %cmp.i1071 = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i1071, label %while.body.i1069, label %S_perl_hash_one_at_a_time_hard.exit.loopexit, !llvm.loop !4

S_perl_hash_one_at_a_time_hard.exit.loopexit:     ; preds = %while.body.i1069
  %add4.i.lcssa = phi i32 [ %add4.i, %while.body.i1069 ]
  br label %S_perl_hash_one_at_a_time_hard.exit

S_perl_hash_one_at_a_time_hard.exit:              ; preds = %S_perl_hash_one_at_a_time_hard.exit.loopexit, %if.then366
  %hash.0.lcssa.i = phi i32 [ %add.i, %if.then366 ], [ %add4.i.lcssa, %S_perl_hash_one_at_a_time_hard.exit.loopexit ]
  %add6.i = mul i32 %hash.0.lcssa.i, 1025
  %shr7.i = lshr i32 %add6.i, 6
  %xor8.i = xor i32 %shr7.i, %add6.i
  %190 = mul i32 %xor8.i, 1025
  %add12.i = add i32 %190, 73800
  %shr13.i = lshr i32 %add12.i, 6
  %xor14.i = xor i32 %shr13.i, %add12.i
  %191 = mul i32 %xor14.i, 1025
  %add19.i = add i32 %191, 113775
  %shr20.i = lshr i32 %add19.i, 6
  %xor21.i = xor i32 %shr20.i, %add19.i
  %192 = mul i32 %xor21.i, 1025
  %add26.i = add i32 %192, 118900
  %shr27.i = lshr i32 %add26.i, 6
  %xor28.i = xor i32 %shr27.i, %add26.i
  %193 = mul i32 %xor28.i, 1025
  %add33.i = add i32 %193, 32800
  %shr34.i = lshr i32 %add33.i, 6
  %xor35.i = xor i32 %shr34.i, %add33.i
  %add37.i = mul i32 %xor35.i, 9
  %shr38.i = lshr i32 %add37.i, 11
  %xor39.i = xor i32 %shr38.i, %add37.i
  %add41.i = mul i32 %xor39.i, 32769
  br label %if.end369

if.end369:                                        ; preds = %S_perl_hash_one_at_a_time_hard.exit, %if.else364, %if.end359
  %keysv_hek.1 = phi ptr [ %keysv_hek.0, %if.end359 ], [ null, %if.else364 ], [ null, %S_perl_hash_one_at_a_time_hard.exit ]
  %hash.addr.5 = phi i32 [ %187, %if.end359 ], [ %hash.addr.4, %if.else364 ], [ %add41.i, %S_perl_hash_one_at_a_time_hard.exit ]
  %and370 = and i32 %flags.addr.3, 255
  %194 = load ptr, ptr %sv_u303, align 8
  %195 = load ptr, ptr %hv, align 8
  %xhv_max373 = getelementptr inbounds nuw i8, ptr %195, i64 24
  %196 = load i64, ptr %xhv_max373, align 8
  %conv374 = trunc i64 %196 to i32
  %and375 = and i32 %hash.addr.5, %conv374
  %idxprom = zext i32 %and375 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %194, i64 %idxprom
  %197 = load ptr, ptr %arrayidx, align 8
  %tobool376.not = icmp eq ptr %197, null
  br i1 %tobool376.not, label %land.lhs.true560, label %if.end378

if.end378:                                        ; preds = %if.end369
  %tobool379.not = icmp eq ptr %keysv_hek.1, null
  br i1 %tobool379.not, label %if.end415, label %if.then380

if.then380:                                       ; preds = %if.end378
  %hek_len383 = getelementptr inbounds nuw i8, ptr %keysv_hek.1, i64 4
  %198 = load i32, ptr %hek_len383, align 4
  %idx.ext = sext i32 %198 to i64
  %add.ptr384 = getelementptr i8, ptr %keysv_hek.1, i64 %idx.ext
  %add.ptr385 = getelementptr i8, ptr %add.ptr384, i64 9
  %199 = load i8, ptr %add.ptr385, align 1
  %tobool387.not1236 = icmp eq ptr %197, null
  br i1 %tobool387.not1236, label %land.lhs.true560, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then380
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %entry1.11237 = phi ptr [ %203, %for.inc ], [ %197, %for.body.preheader ]
  %hent_hek388 = getelementptr inbounds nuw i8, ptr %entry1.11237, i64 8
  %200 = load ptr, ptr %hent_hek388, align 8
  %cmp389 = icmp eq ptr %200, %keysv_hek.1
  br i1 %cmp389, label %found.loopexit1241, label %if.end392

if.end392:                                        ; preds = %for.body
  %hek_len395 = getelementptr inbounds nuw i8, ptr %200, i64 4
  %201 = load i32, ptr %hek_len395, align 4
  %idx.ext396 = sext i32 %201 to i64
  %add.ptr397 = getelementptr i8, ptr %200, i64 %idx.ext396
  %add.ptr398 = getelementptr i8, ptr %add.ptr397, i64 9
  %202 = load i8, ptr %add.ptr398, align 1
  %cmp400.not = icmp eq i8 %202, %199
  br i1 %cmp400.not, label %for.inc, label %if.end415.loopexit

for.inc:                                          ; preds = %if.end392
  %203 = load ptr, ptr %entry1.11237, align 8
  %tobool387.not = icmp eq ptr %203, null
  br i1 %tobool387.not, label %land.lhs.true560.loopexit1242, label %for.body, !llvm.loop !7

if.end415.loopexit:                               ; preds = %if.end392
  br label %if.end415

if.end415:                                        ; preds = %if.end415.loopexit, %if.end378
  %tobool417.not1238 = icmp eq ptr %197, null
  br i1 %tobool417.not1238, label %land.lhs.true560, label %for.body418.lr.ph

for.body418.lr.ph:                                ; preds = %if.end415
  %204 = load i64, ptr %klen.addr, align 8
  %conv427 = trunc i64 %204 to i32
  br label %for.body418

for.body418:                                      ; preds = %for.inc556, %for.body418.lr.ph
  %entry1.41239 = phi ptr [ %197, %for.body418.lr.ph ], [ %225, %for.inc556 ]
  %hent_hek419 = getelementptr inbounds nuw i8, ptr %entry1.41239, i64 8
  %205 = load ptr, ptr %hent_hek419, align 8
  %206 = load i32, ptr %205, align 4
  %cmp421.not = icmp eq i32 %206, %hash.addr.5
  br i1 %cmp421.not, label %if.end424, label %for.inc556

if.end424:                                        ; preds = %for.body418
  %hek_len426 = getelementptr inbounds nuw i8, ptr %205, i64 4
  %207 = load i32, ptr %hek_len426, align 4
  %cmp428.not = icmp eq i32 %207, %conv427
  br i1 %cmp428.not, label %if.end431, label %for.inc556

if.end431:                                        ; preds = %if.end424
  %hek_key433 = getelementptr inbounds nuw i8, ptr %205, i64 8
  %bcmp = call i32 @bcmp(ptr nonnull %hek_key433, ptr %key.addr.1, i64 %204)
  %tobool436.not = icmp eq i32 %bcmp, 0
  br i1 %tobool436.not, label %if.end438, label %for.inc556

if.end438:                                        ; preds = %if.end431
  %idx.ext444 = sext i32 %207 to i64
  %add.ptr445 = getelementptr inbounds i8, ptr %hek_key433, i64 %idx.ext444
  %add.ptr446 = getelementptr inbounds nuw i8, ptr %add.ptr445, i64 1
  %208 = load i8, ptr %add.ptr446, align 1
  %conv447 = zext i8 %208 to i32
  %xor = xor i32 %flags.addr.3, %conv447
  %and448 = and i32 %xor, 1
  %tobool449.not = icmp eq i32 %and448, 0
  br i1 %tobool449.not, label %found.loopexit, label %for.inc556

found.loopexit:                                   ; preds = %if.end438
  %entry1.41239.lcssa = phi ptr [ %entry1.41239, %if.end438 ]
  br label %found

found.loopexit1241:                               ; preds = %for.body
  %entry1.11237.lcssa = phi ptr [ %entry1.11237, %for.body ]
  br label %found

found:                                            ; preds = %found.loopexit1241, %found.loopexit
  %entry1.5 = phi ptr [ %entry1.41239.lcssa, %found.loopexit ], [ %entry1.11237.lcssa, %found.loopexit1241 ]
  %and452 = and i32 %action, 20
  %tobool453.not = icmp eq i32 %and452, 0
  br i1 %tobool453.not, label %if.else536, label %if.then454

if.then454:                                       ; preds = %found
  %hent_hek455 = getelementptr inbounds nuw i8, ptr %entry1.5, i64 8
  %209 = load ptr, ptr %hent_hek455, align 8
  %hek_len459 = getelementptr inbounds nuw i8, ptr %209, i64 4
  %210 = load i32, ptr %hek_len459, align 4
  %idx.ext460 = sext i32 %210 to i64
  %add.ptr461 = getelementptr i8, ptr %209, i64 %idx.ext460
  %add.ptr462 = getelementptr i8, ptr %add.ptr461, i64 9
  %211 = load i8, ptr %add.ptr462, align 1
  %212 = trunc i32 %flags.addr.3 to i8
  %cmp464.not = icmp eq i8 %211, %212
  br i1 %cmp464.not, label %if.end504, label %if.then466

if.then466:                                       ; preds = %if.then454
  %213 = load i32, ptr %sv_flags, align 4
  %and468 = and i32 %213, 536870912
  %tobool469.not = icmp eq i32 %and468, 0
  br i1 %tobool469.not, label %if.else475, label %if.then470

if.then470:                                       ; preds = %if.then466
  %214 = load i64, ptr %klen.addr, align 8
  %conv471 = trunc i64 %214 to i32
  %call472 = call fastcc ptr @S_share_hek_flags(ptr noundef %key.addr.1, i32 noundef %conv471, i32 noundef %hash.addr.5, i32 noundef %and370)
  %215 = load ptr, ptr %hent_hek455, align 8
  call fastcc void @S_unshare_hek_or_pvn(ptr noundef %215, ptr noundef null, i32 noundef 0, i32 noundef 0)
  store ptr %call472, ptr %hent_hek455, align 8
  br label %if.end497

if.else475:                                       ; preds = %if.then466
  %216 = load ptr, ptr @PL_strtab, align 8
  %cmp476 = icmp eq ptr %hv, %216
  br i1 %cmp476, label %if.then478, label %if.else486

if.then478:                                       ; preds = %if.else475
  %and479 = and i32 %flags.addr.3, 256
  %tobool480.not = icmp eq i32 %and479, 0
  br i1 %tobool480.not, label %if.end482, label %if.then481

if.then481:                                       ; preds = %if.then478
  call void @Perl_safesysfree(ptr noundef %key.addr.1) #5
  br label %if.end482

if.end482:                                        ; preds = %if.then481, %if.then478
  %and483 = and i32 %action, 16
  %tobool484.not = icmp eq i32 %and483, 0
  %cond485 = select i1 %tobool484.not, ptr @.str.2, ptr @.str.1
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @S_strtab_error, ptr noundef nonnull %cond485) #5
  br label %if.end497

if.else486:                                       ; preds = %if.else475
  store i8 %212, ptr %add.ptr462, align 1
  br label %if.end497

if.end497:                                        ; preds = %if.else486, %if.end482, %if.then470
  %and498 = and i32 %flags.addr.3, 247
  %tobool499.not = icmp eq i32 %and498, 0
  br i1 %tobool499.not, label %if.end504, label %if.then500

if.then500:                                       ; preds = %if.end497
  %217 = load i32, ptr %sv_flags, align 4
  %or502 = or i32 %217, -2147483648
  store i32 %or502, ptr %sv_flags, align 4
  br label %if.end504

if.end504:                                        ; preds = %if.then500, %if.end497, %if.then454
  %he_valu505 = getelementptr inbounds nuw i8, ptr %entry1.5, i64 16
  %218 = load ptr, ptr %he_valu505, align 8
  %cmp506 = icmp eq ptr %218, @PL_sv_placeholder
  br i1 %cmp506, label %if.then508, label %if.else528

if.then508:                                       ; preds = %if.end504
  %and509 = and i32 %action, 16
  %tobool510.not = icmp eq i32 %and509, 0
  br i1 %tobool510.not, label %if.else519, label %if.then511

if.then511:                                       ; preds = %if.then508
  %219 = load i32, ptr %sv_flags, align 4
  %and513 = and i32 %219, 14680064
  %tobool514.not = icmp eq i32 %and513, 0
  br i1 %tobool514.not, label %if.end516, label %if.end569

if.end516:                                        ; preds = %if.then511
  %call517 = call ptr @Perl_newSV(i64 noundef 0) #5
  %call518 = call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %hv)
  %220 = load i64, ptr %call518, align 8
  %dec = add nsw i64 %220, -1
  store i64 %dec, ptr %call518, align 8
  br label %if.end526

if.else519:                                       ; preds = %if.then508
  %cmp520.not = icmp eq ptr %val, @PL_sv_placeholder
  br i1 %cmp520.not, label %if.end526, label %if.then522

if.then522:                                       ; preds = %if.else519
  %call523 = call ptr @Perl_hv_placeholders_p(ptr noundef %hv)
  %221 = load i64, ptr %call523, align 8
  %dec524 = add nsw i64 %221, -1
  store i64 %dec524, ptr %call523, align 8
  br label %if.end526

if.end526:                                        ; preds = %if.then522, %if.else519, %if.end516
  %val.addr.0 = phi ptr [ %call517, %if.end516 ], [ %val, %if.then522 ], [ @PL_sv_placeholder, %if.else519 ]
  store ptr %val.addr.0, ptr %he_valu505, align 8
  br label %if.end542

if.else528:                                       ; preds = %if.end504
  %and529 = and i32 %action, 4
  %tobool530.not = icmp eq i32 %and529, 0
  br i1 %tobool530.not, label %if.end542, label %if.then531

if.then531:                                       ; preds = %if.else528
  %cmp.not.i1072 = icmp eq ptr %218, null
  br i1 %cmp.not.i1072, label %S_SvREFCNT_dec.exit, label %if.then.i1073

if.then.i1073:                                    ; preds = %if.then531
  %sv_refcnt.i1074 = getelementptr inbounds nuw i8, ptr %218, i64 8
  %222 = load i32, ptr %sv_refcnt.i1074, align 8
  %cmp1.i = icmp ugt i32 %222, 1
  br i1 %cmp1.i, label %if.then4.i1075, label %if.else.i

if.then4.i1075:                                   ; preds = %if.then.i1073
  %sub.i = add i32 %222, -1
  store i32 %sub.i, ptr %sv_refcnt.i1074, align 8
  br label %S_SvREFCNT_dec.exit

if.else.i:                                        ; preds = %if.then.i1073
  call void @Perl_sv_free2(ptr noundef nonnull %218, i32 noundef %222) #5
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %if.else.i, %if.then4.i1075, %if.then531
  store ptr %val, ptr %he_valu505, align 8
  br label %if.end542

if.else536:                                       ; preds = %found
  %he_valu537 = getelementptr inbounds nuw i8, ptr %entry1.5, i64 16
  %223 = load ptr, ptr %he_valu537, align 8
  %cmp538 = icmp eq ptr %223, @PL_sv_placeholder
  br i1 %cmp538, label %if.end569, label %if.end542

if.end542:                                        ; preds = %if.else536, %S_SvREFCNT_dec.exit, %if.else528, %if.end526
  %and543 = and i32 %flags.addr.3, 256
  %tobool544.not = icmp eq i32 %and543, 0
  br i1 %tobool544.not, label %if.end546, label %if.then545

if.then545:                                       ; preds = %if.end542
  call void @Perl_safesysfree(ptr noundef %key.addr.1) #5
  br label %if.end546

if.end546:                                        ; preds = %if.then545, %if.end542
  %224 = lshr exact i32 %and, 1
  %spec.select1215.idx = zext nneg i32 %224 to i64
  %spec.select1215 = getelementptr inbounds nuw i8, ptr %entry1.5, i64 %spec.select1215.idx
  br label %cleanup750

for.inc556:                                       ; preds = %if.end438, %if.end431, %if.end424, %for.body418
  %225 = load ptr, ptr %entry1.41239, align 8
  %tobool417.not = icmp eq ptr %225, null
  br i1 %tobool417.not, label %land.lhs.true560.loopexit, label %for.body418, !llvm.loop !8

land.lhs.true560.loopexit:                        ; preds = %for.inc556
  br label %land.lhs.true560

land.lhs.true560.loopexit1242:                    ; preds = %for.inc
  br label %land.lhs.true560

land.lhs.true560:                                 ; preds = %land.lhs.true560.loopexit1242, %land.lhs.true560.loopexit, %if.end415, %if.then380, %if.end369
  %226 = load i32, ptr %sv_flags, align 4
  %and562 = and i32 %226, 134283264
  %tobool563.not = icmp ne i32 %and562, 0
  %and565 = and i32 %action, 8
  %tobool566.not = icmp eq i32 %and565, 0
  %or.cond1063 = and i1 %tobool566.not, %tobool563.not
  br i1 %or.cond1063, label %if.then567, label %if.end569

if.then567:                                       ; preds = %land.lhs.true560
  %227 = load i64, ptr %klen.addr, align 8
  %conv568 = trunc i64 %227 to i32
  call fastcc void @S_hv_notallowed(i32 noundef %flags.addr.3, ptr noundef %key.addr.1, i32 noundef %conv568, ptr noundef nonnull @.str.3)
  br label %if.end569

if.end569:                                        ; preds = %if.then567, %land.lhs.true560, %if.else536, %if.then511
  %and570 = and i32 %action, 20
  %tobool571.not = icmp eq i32 %and570, 0
  br i1 %tobool571.not, label %if.then572, label %if.end577

if.then572:                                       ; preds = %if.end569
  %and573 = and i32 %flags.addr.3, 256
  %tobool574.not = icmp eq i32 %and573, 0
  br i1 %tobool574.not, label %cleanup750, label %if.then575

if.then575:                                       ; preds = %if.then572
  call void @Perl_safesysfree(ptr noundef %key.addr.1) #5
  br label %cleanup750

if.end577:                                        ; preds = %if.end569
  %and578 = and i32 %action, 16
  %tobool579.not = icmp eq i32 %and578, 0
  br i1 %tobool579.not, label %if.end595, label %if.then580

if.then580:                                       ; preds = %if.end577
  %and581 = and i32 %action, 128
  %tobool582.not = icmp eq i32 %and581, 0
  br i1 %tobool582.not, label %cond.false584, label %cond.end586

cond.false584:                                    ; preds = %if.then580
  %call585 = call ptr @Perl_newSV(i64 noundef 0) #5
  br label %cond.end586

cond.end586:                                      ; preds = %cond.false584, %if.then580
  %cond587 = phi ptr [ %call585, %cond.false584 ], [ null, %if.then580 ]
  %228 = load i32, ptr %sv_flags, align 4
  %and589 = and i32 %228, 14680064
  %tobool590.not = icmp eq i32 %and589, 0
  br i1 %tobool590.not, label %if.end595, label %if.then591

if.then591:                                       ; preds = %cond.end586
  %229 = load i64, ptr %klen.addr, align 8
  %or592 = or disjoint i32 %and, 5
  %call593 = call ptr @Perl_hv_common(ptr noundef nonnull %hv, ptr noundef %keysv.addr.10, ptr noundef %key.addr.1, i64 noundef %229, i32 noundef %flags.addr.3, i32 noundef %or592, ptr noundef %cond587, i32 noundef %hash.addr.5)
  br label %cleanup750

if.end595:                                        ; preds = %cond.end586, %if.end577
  %val.addr.1 = phi ptr [ %cond587, %cond.end586 ], [ %val, %if.end577 ]
  %230 = load ptr, ptr %sv_u303, align 8
  %tobool597.not = icmp eq ptr %230, null
  br i1 %tobool597.not, label %if.then598, label %if.end605

if.then598:                                       ; preds = %if.end595
  %xhv_max600 = getelementptr inbounds nuw i8, ptr %141, i64 24
  %231 = load i64, ptr %xhv_max600, align 8
  %add601 = shl i64 %231, 3
  %mul602 = add i64 %add601, 8
  %call603 = call ptr @Perl_safesyscalloc(i64 noundef %mul602, i64 noundef 1) #5
  store ptr %call603, ptr %sv_u303, align 8
  br label %if.end605

if.end605:                                        ; preds = %if.then598, %if.end595
  %232 = load ptr, ptr %sv_u303, align 8
  %xhv_max607 = getelementptr inbounds nuw i8, ptr %141, i64 24
  %233 = load i64, ptr %xhv_max607, align 8
  %conv608 = trunc i64 %233 to i32
  %and609 = and i32 %hash.addr.5, %conv608
  %idxprom610 = zext i32 %and609 to i64
  %arrayidx611 = getelementptr inbounds nuw ptr, ptr %232, i64 %idxprom610
  %234 = load ptr, ptr @PL_body_roots, align 8
  %tobool.not.i1076 = icmp eq ptr %234, null
  br i1 %tobool.not.i1076, label %if.then.i1078, label %S_new_he.exit

if.then.i1078:                                    ; preds = %if.end605
  %call.i1079 = call ptr @Perl_more_bodies(i32 noundef 0, i64 noundef 24, i64 noundef 4080) #5
  br label %S_new_he.exit

S_new_he.exit:                                    ; preds = %if.then.i1078, %if.end605
  %235 = load ptr, ptr @PL_body_roots, align 8
  %236 = load ptr, ptr %235, align 8
  store ptr %236, ptr @PL_body_roots, align 8
  %237 = load i32, ptr %sv_flags, align 4
  %and614 = and i32 %237, 536870912
  %tobool615.not = icmp eq i32 %and614, 0
  br i1 %tobool615.not, label %if.else620, label %if.then616

if.then616:                                       ; preds = %S_new_he.exit
  %238 = load i64, ptr %klen.addr, align 8
  %conv617 = trunc i64 %238 to i32
  %call618 = call fastcc ptr @S_share_hek_flags(ptr noundef %key.addr.1, i32 noundef %conv617, i32 noundef %hash.addr.5, i32 noundef %flags.addr.3)
  %hent_hek619 = getelementptr inbounds nuw i8, ptr %235, i64 8
  store ptr %call618, ptr %hent_hek619, align 8
  br label %if.end636

if.else620:                                       ; preds = %S_new_he.exit
  %239 = load ptr, ptr @PL_strtab, align 8
  %cmp621 = icmp eq ptr %hv, %239
  br i1 %cmp621, label %if.then623, label %if.else631

if.then623:                                       ; preds = %if.else620
  %and624 = and i32 %flags.addr.3, 256
  %tobool625.not = icmp eq i32 %and624, 0
  br i1 %tobool625.not, label %if.end627, label %if.then626

if.then626:                                       ; preds = %if.then623
  call void @Perl_safesysfree(ptr noundef %key.addr.1) #5
  br label %if.end627

if.end627:                                        ; preds = %if.then626, %if.then623
  %cond630 = select i1 %tobool579.not, ptr @.str.2, ptr @.str.1
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @S_strtab_error, ptr noundef nonnull %cond630) #5
  br label %if.end636

if.else631:                                       ; preds = %if.else620
  %240 = load i64, ptr %klen.addr, align 8
  %conv632 = trunc i64 %240 to i32
  %call633 = call fastcc ptr @S_save_hek_flags(ptr noundef %key.addr.1, i32 noundef %conv632, i32 noundef %hash.addr.5, i32 noundef %flags.addr.3)
  %hent_hek634 = getelementptr inbounds nuw i8, ptr %235, i64 8
  store ptr %call633, ptr %hent_hek634, align 8
  br label %if.end636

if.end636:                                        ; preds = %if.else631, %if.end627, %if.then616
  %he_valu637 = getelementptr inbounds nuw i8, ptr %235, i64 16
  store ptr %val.addr.1, ptr %he_valu637, align 8
  %241 = load ptr, ptr %arrayidx611, align 8
  %tobool638.not = icmp eq ptr %241, null
  br i1 %tobool638.not, label %land.lhs.true639, label %if.end653

land.lhs.true639:                                 ; preds = %if.end636
  %242 = load i32, ptr %sv_flags, align 4
  %and641 = and i32 %242, 33554432
  %tobool642.not = icmp eq i32 %and641, 0
  br i1 %tobool642.not, label %if.end653, label %if.then643

if.then643:                                       ; preds = %land.lhs.true639
  %243 = load ptr, ptr %sv_u303, align 8
  %244 = load ptr, ptr %hv, align 8
  %xhv_max646 = getelementptr inbounds nuw i8, ptr %244, i64 24
  %245 = load i64, ptr %xhv_max646, align 8
  %246 = getelementptr ptr, ptr %243, i64 %245
  %xhv_fill_lazy = getelementptr i8, ptr %246, i64 56
  %247 = load i32, ptr %xhv_fill_lazy, align 8
  %tobool649.not = icmp eq i32 %247, 0
  br i1 %tobool649.not, label %if.end653, label %if.then650

if.then650:                                       ; preds = %if.then643
  %inc = add i32 %247, 1
  store i32 %inc, ptr %xhv_fill_lazy, align 8
  br label %if.end653

if.end653:                                        ; preds = %if.then650, %if.then643, %land.lhs.true639, %if.end636
  %248 = load ptr, ptr %arrayidx611, align 8
  %tobool654 = icmp ne ptr %248, null
  %249 = load i8, ptr @PL_hash_rand_bits_enabled, align 1
  %tobool657 = icmp ne i8 %249, 0
  %or.cond761 = select i1 %tobool654, i1 %tobool657, i1 false
  br i1 %or.cond761, label %if.then658, label %if.else670

if.then658:                                       ; preds = %if.end653
  %250 = load i64, ptr @PL_hash_rand_bits, align 8
  %inc659 = add i64 %250, 1
  %or660 = call i64 @llvm.fshl.i64(i64 %inc659, i64 %inc659, i64 1)
  store i64 %or660, ptr @PL_hash_rand_bits, align 8
  %and661 = and i64 %or660, 1
  %tobool662.not = icmp eq i64 %and661, 0
  br i1 %tobool662.not, label %if.else667, label %if.then663

if.then663:                                       ; preds = %if.then658
  %251 = load ptr, ptr %arrayidx611, align 8
  %252 = load ptr, ptr %251, align 8
  store ptr %252, ptr %235, align 8
  %253 = load ptr, ptr %arrayidx611, align 8
  store ptr %235, ptr %253, align 8
  br label %if.end672

if.else667:                                       ; preds = %if.then658
  %254 = load ptr, ptr %arrayidx611, align 8
  store ptr %254, ptr %235, align 8
  store ptr %235, ptr %arrayidx611, align 8
  br label %if.end672

if.else670:                                       ; preds = %if.end653
  store ptr %248, ptr %235, align 8
  store ptr %235, ptr %arrayidx611, align 8
  br label %if.end672

if.end672:                                        ; preds = %if.else670, %if.else667, %if.then663
  %255 = load i32, ptr %sv_flags, align 4
  %and674 = and i32 %255, 33554432
  %tobool675.not = icmp eq i32 %and674, 0
  br i1 %tobool675.not, label %if.end696, label %if.then676

if.then676:                                       ; preds = %if.end672
  %256 = load i8, ptr @PL_hash_rand_bits_enabled, align 1
  switch i8 %256, label %if.end685 [
    i8 0, label %if.end689
    i8 1, label %if.then682
  ]

if.then682:                                       ; preds = %if.then676
  %257 = ptrtoint ptr %235 to i64
  %add683 = add i64 %257, 1
  %258 = load i64, ptr @PL_hash_rand_bits, align 8
  %add684 = add i64 %add683, %258
  store i64 %add684, ptr @PL_hash_rand_bits, align 8
  br label %if.end685

if.end685:                                        ; preds = %if.then682, %if.then676
  %259 = load i64, ptr @PL_hash_rand_bits, align 8
  %or688 = call i64 @llvm.fshl.i64(i64 %259, i64 %259, i64 1)
  store i64 %or688, ptr @PL_hash_rand_bits, align 8
  br label %if.end689

if.end689:                                        ; preds = %if.end685, %if.then676
  %260 = load i64, ptr @PL_hash_rand_bits, align 8
  %conv690 = trunc i64 %260 to i32
  %261 = load ptr, ptr %sv_u303, align 8
  %262 = load ptr, ptr %hv, align 8
  %xhv_max693 = getelementptr inbounds nuw i8, ptr %262, i64 24
  %263 = load i64, ptr %xhv_max693, align 8
  %264 = getelementptr ptr, ptr %261, i64 %263
  %xhv_rand = getelementptr i8, ptr %264, i64 48
  store i32 %conv690, ptr %xhv_rand, align 8
  br label %if.end696

if.end696:                                        ; preds = %if.end689, %if.end672
  %cmp697 = icmp eq ptr %val.addr.1, @PL_sv_placeholder
  br i1 %cmp697, label %if.then699, label %if.end702

if.then699:                                       ; preds = %if.end696
  %call700 = call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %hv)
  %265 = load i64, ptr %call700, align 8
  %inc701 = add nsw i64 %265, 1
  store i64 %inc701, ptr %call700, align 8
  br label %if.end702

if.end702:                                        ; preds = %if.then699, %if.end696
  %and703 = and i32 %flags.addr.3, 247
  %tobool704.not = icmp eq i32 %and703, 0
  br i1 %tobool704.not, label %if.end708, label %if.then705

if.then705:                                       ; preds = %if.end702
  %266 = load i32, ptr %sv_flags, align 4
  %or707 = or i32 %266, -2147483648
  store i32 %or707, ptr %sv_flags, align 4
  br label %if.end708

if.end708:                                        ; preds = %if.then705, %if.end702
  %xhv_keys = getelementptr inbounds nuw i8, ptr %141, i64 16
  %267 = load i64, ptr %xhv_keys, align 8
  %inc709 = add i64 %267, 1
  store i64 %inc709, ptr %xhv_keys, align 8
  %268 = load i64, ptr %xhv_max607, align 8
  %cmp712 = icmp ugt i64 %inc709, %268
  br i1 %cmp712, label %if.then714, label %if.end740

if.then714:                                       ; preds = %if.end708
  %add716 = add nuw i64 %268, 1
  %269 = load ptr, ptr %hv, align 8
  %xmg_u = getelementptr inbounds nuw i8, ptr %269, i64 8
  %270 = load ptr, ptr %xmg_u, align 8
  %tobool718.not = icmp eq ptr %270, null
  br i1 %tobool718.not, label %if.else737, label %cond.true719

cond.true719:                                     ; preds = %if.then714
  %call.i1080 = call ptr @Perl_mg_find(ptr noundef nonnull %hv, i32 noundef 37) #5
  %tobool.not.i1081 = icmp eq ptr %call.i1080, null
  br i1 %tobool.not.i1081, label %if.else737, label %cond.end722

cond.end722:                                      ; preds = %cond.true719
  %mg_len.i = getelementptr inbounds nuw i8, ptr %call.i1080, i64 24
  %271 = load i64, ptr %mg_len.i, align 8
  %272 = trunc i64 %271 to i32
  %tobool724.not = icmp eq i32 %272, 0
  br i1 %tobool724.not, label %if.else737, label %land.lhs.true725

land.lhs.true725:                                 ; preds = %cond.end722
  %273 = load i32, ptr %sv_flags, align 4
  %and727 = and i32 %273, 134283264
  %tobool728.not = icmp eq i32 %and727, 0
  br i1 %tobool728.not, label %if.then729, label %if.else737

if.then729:                                       ; preds = %land.lhs.true725
  call fastcc void @S_clear_placeholders(ptr noundef nonnull %hv, i32 noundef %272)
  %274 = load i64, ptr %xhv_keys, align 8
  %275 = load i64, ptr %xhv_max607, align 8
  %cmp732 = icmp ugt i64 %274, %275
  br i1 %cmp732, label %if.then734, label %if.end740

if.then734:                                       ; preds = %if.then729
  %mul735 = shl i64 %add716, 1
  call fastcc void @S_hsplit(ptr noundef nonnull %hv, i64 noundef %add716, i64 noundef %mul735)
  br label %if.end740

if.else737:                                       ; preds = %land.lhs.true725, %cond.end722, %cond.true719, %if.then714
  %mul738 = shl i64 %add716, 1
  call fastcc void @S_hsplit(ptr noundef nonnull %hv, i64 noundef %add716, i64 noundef %mul738)
  br label %if.end740

if.end740:                                        ; preds = %if.else737, %if.then734, %if.then729, %if.end708
  %tobool741.not = icmp eq i32 %and, 0
  %spec.select1213 = select i1 %tobool741.not, ptr %235, ptr %he_valu637
  br label %cleanup750

cleanup750:                                       ; preds = %if.end740, %if.then591, %if.then575, %if.then572, %if.end546, %if.then314, %if.else311, %if.then291, %if.then288, %cond.true243, %cond.false240, %land.lhs.true233, %lor.lhs.false229, %land.lhs.true212, %lor.lhs.false208, %cond.true200, %cond.false181, %cond.true178, %if.end166, %if.end118, %S_hv_delete_common.exit, %if.end, %entry
  %retval.4 = phi ptr [ %retval.4.i, %S_hv_delete_common.exit ], [ %call593, %if.then591 ], [ null, %entry ], [ null, %if.end ], [ %hv, %cond.true243 ], [ null, %if.end166 ], [ null, %cond.false240 ], [ null, %lor.lhs.false229 ], [ null, %land.lhs.true212 ], [ null, %lor.lhs.false208 ], [ null, %cond.true200 ], [ null, %cond.true178 ], [ null, %cond.false181 ], [ null, %land.lhs.true233 ], [ null, %if.then314 ], [ null, %if.else311 ], [ null, %if.then575 ], [ null, %if.then572 ], [ null, %if.then291 ], [ null, %if.then288 ], [ %spec.select, %if.end118 ], [ %spec.select1213, %if.end740 ], [ %spec.select1215, %if.end546 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %is_utf8) #5
  ret ptr %retval.4
}

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Perl_magic_getuvar(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_sv_newmortal() local_unnamed_addr #1

declare i32 @Perl_mg_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden fastcc noundef ptr @S_new_he() unnamed_addr #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #1

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #1

declare i32 @Perl_magic_existspack(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @Perl_bytes_from_utf8(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden fastcc ptr @S_share_hek_flags(ptr noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #1

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local nonnull ptr @Perl_hv_placeholders_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc void @S_hv_notallowed(i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc noundef ptr @S_save_hek_flags(ptr noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc void @S_clear_placeholders(ptr noundef, i32 noundef range(i32 1, 0)) unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc void @S_hsplit(ptr noundef captures(address), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_hv_free_ent(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #2

declare i32 @Perl_mg_clear(ptr noundef) local_unnamed_addr #1

declare void @Perl_mro_isa_changed_in(ptr noundef) local_unnamed_addr #1

declare void @Perl_mro_package_moved(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden fastcc void @S_unshare_hek_or_pvn(ptr noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare ptr @Perl_more_bodies(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @Perl_sv_usepvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_mro_method_changed_in(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = !{i8 0, i8 2}
!3 = !{}
!4 = distinct !{!4, !1}
!5 = distinct !{!5, !1}
!6 = distinct !{!6, !1}
!7 = distinct !{!7, !1}
!8 = distinct !{!8, !1}
