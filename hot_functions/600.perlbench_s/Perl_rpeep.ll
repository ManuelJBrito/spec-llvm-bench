; ModuleID = '/tmp/tmp.bodb44GiZM/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }

@PL_compcv = external local_unnamed_addr global ptr, align 8
@PL_ppaddr = external local_unnamed_addr global [0 x ptr], align 8
@PL_curcop = external global ptr, align 8
@PL_perldb = external local_unnamed_addr global i32, align 4
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_rpeepp = external local_unnamed_addr global ptr, align 8
@PL_cv_has_eval = external local_unnamed_addr global i8, align 1
@PL_generation = external local_unnamed_addr global i32, align 4
@.str.164 = external hidden unnamed_addr constant [54 x i8], align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare void @Perl_push_scope() local_unnamed_addr #1

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_pop_scope() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_op_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_op_clear(ptr noundef captures(address)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_op_null(ptr noundef captures(address)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local ptr @Perl_op_sibling_splice(ptr noundef captures(address_is_null), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local ptr @Perl_custom_op_get_field(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #2

declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #1

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @Perl_newLISTOP(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local void @S_maybe_multideref(ptr noundef captures(address), ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_rpeep(ptr noundef %o) local_unnamed_addr #2 {
entry:
  %defer_queue = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %defer_queue) #5
  %tobool.not = icmp eq ptr %o, null
  br i1 %tobool.not, label %cleanup2419, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %op_opt = getelementptr inbounds nuw i8, ptr %o, i64 32
  %bf.load = load i16, ptr %op_opt, align 8
  %0 = and i16 %bf.load, 512
  %tobool1.not = icmp eq i16 %0, 0
  br i1 %tobool1.not, label %if.end, label %cleanup2419

if.end:                                           ; preds = %lor.lhs.false
  tail call void @Perl_push_scope() #5
  %1 = load ptr, ptr @PL_op, align 8
  tail call void @Perl_save_pushptr(ptr noundef %1, i32 noundef 18) #5
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_curcop) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc2416, %if.end
  %defer_ix.0 = phi i32 [ -1, %if.end ], [ %defer_ix.10, %for.inc2416 ]
  %defer_base.0 = phi i32 [ 0, %if.end ], [ %defer_base.9, %for.inc2416 ]
  %oldoldop.0 = phi ptr [ null, %if.end ], [ %oldoldop.5, %for.inc2416 ]
  %oldop.0 = phi ptr [ null, %if.end ], [ %oldop.5, %for.inc2416 ]
  %o.addr.0 = phi ptr [ %o, %if.end ], [ %380, %for.inc2416 ]
  %tobool2.not = icmp eq ptr %o.addr.0, null
  br i1 %tobool2.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond
  %op_opt3 = getelementptr inbounds nuw i8, ptr %o.addr.0, i64 32
  %bf.load4 = load i16, ptr %op_opt3, align 8
  %2 = and i16 %bf.load4, 512
  %tobool8.not = icmp eq i16 %2, 0
  %spec.select = select i1 %tobool8.not, ptr %o.addr.0, ptr null
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %for.cond
  %o.addr.1 = phi ptr [ null, %for.cond ], [ %spec.select, %land.lhs.true ]
  %tobool11.not = icmp eq ptr %o.addr.1, null
  br i1 %tobool11.not, label %while.cond.preheader, label %redo.preheader

redo.preheader:                                   ; preds = %if.end10
  br label %redo

while.cond.preheader:                             ; preds = %if.end10
  %defer_ix.0.lcssa = phi i32 [ %defer_ix.0, %if.end10 ]
  %defer_base.0.lcssa = phi i32 [ %defer_base.0, %if.end10 ]
  %cmp3439 = icmp sgt i32 %defer_ix.0.lcssa, -1
  br i1 %cmp3439, label %while.body.preheader, label %for.end2418

while.body.preheader:                             ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %S_prune_chain_head.exit, %while.body.preheader
  %defer_ix.13440 = phi i32 [ %dec, %S_prune_chain_head.exit ], [ %defer_ix.0.lcssa, %while.body.preheader ]
  %dec = add nsw i32 %defer_ix.13440, -1
  %add = add nsw i32 %defer_ix.13440, %defer_base.0.lcssa
  %rem = srem i32 %add, 4
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds ptr, ptr %defer_queue, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  %4 = load ptr, ptr @PL_rpeepp, align 8
  %5 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef %5) #5
  %.pr.i = load ptr, ptr %3, align 8
  %tobool.not23.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not23.i, label %S_prune_chain_head.exit, label %land.rhs.i.preheader

land.rhs.i.preheader:                             ; preds = %while.body
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i, %land.rhs.i.preheader
  %6 = phi ptr [ %7, %while.body.i ], [ %.pr.i, %land.rhs.i.preheader ]
  %op_type.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %bf.load.i = load i16, ptr %op_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 511
  switch i16 %bf.clear.i, label %S_prune_chain_head.exit.loopexit [
    i16 0, label %while.body.i
    i16 198, label %while.body.i
    i16 2, label %while.body.i
    i16 192, label %while.body.i
  ]

while.body.i:                                     ; preds = %land.rhs.i, %land.rhs.i, %land.rhs.i, %land.rhs.i
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %3, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %S_prune_chain_head.exit.loopexit, label %land.rhs.i, !llvm.loop !0

S_prune_chain_head.exit.loopexit:                 ; preds = %while.body.i, %land.rhs.i
  br label %S_prune_chain_head.exit

S_prune_chain_head.exit:                          ; preds = %S_prune_chain_head.exit.loopexit, %while.body
  %cmp = icmp sgt i32 %defer_ix.13440, 0
  br i1 %cmp, label %while.body, label %for.end2418.loopexit, !llvm.loop !2

redo:                                             ; preds = %if.then1275, %redo.preheader
  %oldoldop.1 = phi ptr [ null, %if.then1275 ], [ %oldoldop.0, %redo.preheader ]
  %oldop.1 = phi ptr [ %oldoldop.1, %if.then1275 ], [ %oldop.0, %redo.preheader ]
  %o.addr.2 = phi ptr [ %oldop.1, %if.then1275 ], [ %o.addr.1, %redo.preheader ]
  %op_opt14 = getelementptr inbounds nuw i8, ptr %o.addr.2, i64 32
  %bf.load15 = load i16, ptr %op_opt14, align 8
  %bf.set = or i16 %bf.load15, 512
  store i16 %bf.set, ptr %op_opt14, align 8
  store ptr %o.addr.2, ptr @PL_op, align 8
  %bf.clear18 = and i16 %bf.load15, 511
  switch i16 %bf.clear18, label %sw.epilog [
    i16 7, label %sw.bb
    i16 9, label %sw.bb80
    i16 10, label %sw.bb116
    i16 11, label %sw.bb116
    i16 135, label %sw.bb138
    i16 149, label %sw.bb138
  ]

sw.bb:                                            ; preds = %redo
  %8 = load ptr, ptr %o.addr.2, align 8
  %op_type20 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %bf.load21 = load i16, ptr %op_type20, align 8
  %bf.clear22 = and i16 %bf.load21, 511
  switch i16 %bf.clear22, label %sw.epilog [
    i16 135, label %do_deref
    i16 149, label %if.then32
    i16 15, label %if.end40
  ]

if.then32:                                        ; preds = %sw.bb
  br label %do_deref

if.end40:                                         ; preds = %sw.bb
  %op_flags = getelementptr inbounds nuw i8, ptr %8, i64 34
  %9 = load i8, ptr %op_flags, align 2
  %10 = and i8 %9, -77
  %cmp41.not = icmp eq i8 %10, 34
  br i1 %cmp41.not, label %if.end44, label %sw.epilog

if.end44:                                         ; preds = %if.end40
  %op_private = getelementptr inbounds nuw i8, ptr %8, i64 35
  %11 = load i8, ptr %op_private, align 1
  %tobool47.not = icmp ult i8 %11, 64
  br i1 %tobool47.not, label %if.end49, label %sw.epilog

if.end49:                                         ; preds = %if.end44
  %12 = and i8 %11, 48
  switch i8 %12, label %sw.epilog [
    i8 16, label %if.end62
    i8 32, label %if.end62
  ]

if.end62:                                         ; preds = %if.end49, %if.end49
  %13 = load ptr, ptr %8, align 8
  %op_type64 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %bf.load65 = load i16, ptr %op_type64, align 8
  %bf.clear66 = and i16 %bf.load65, 511
  switch i16 %bf.clear66, label %sw.epilog [
    i16 135, label %do_deref
    i16 149, label %if.then78
  ]

if.then78:                                        ; preds = %if.end62
  br label %do_deref

sw.bb80:                                          ; preds = %redo
  %op_flags81 = getelementptr inbounds nuw i8, ptr %o.addr.2, i64 34
  %14 = load i8, ptr %op_flags81, align 2
  %15 = and i8 %14, -77
  %cmp84.not = icmp eq i8 %15, 34
  br i1 %cmp84.not, label %if.end87, label %sw.epilog

if.end87:                                         ; preds = %sw.bb80
  %op_private88 = getelementptr inbounds nuw i8, ptr %o.addr.2, i64 35
  %16 = load i8, ptr %op_private88, align 1
  switch i8 %16, label %sw.epilog [
    i8 16, label %if.end98
    i8 32, label %if.end98
  ]

if.end98:                                         ; preds = %if.end87, %if.end87
  %17 = load ptr, ptr %o.addr.2, align 8
  %op_type100 = getelementptr inbounds nuw i8, ptr %17, i64 32
  %bf.load101 = load i16, ptr %op_type100, align 8
  %bf.clear102 = and i16 %bf.load101, 511
  switch i16 %bf.clear102, label %sw.epilog [
    i16 135, label %do_deref
    i16 149, label %if.then114
  ]

if.then114:                                       ; preds = %if.end98
  br label %do_deref

sw.bb116:                                         ; preds = %redo, %redo
  %op_flags117 = getelementptr inbounds nuw i8, ptr %o.addr.2, i64 34
  %18 = load i8, ptr %op_flags117, align 2
  %cmp126.not = icmp eq i8 %18, 18
  br i1 %cmp126.not, label %if.end129, label %sw.epilog

if.end129:                                        ; preds = %sw.bb116
  %bf.clear132 = and i16 %bf.load15, 511
  %cmp134 = icmp eq i16 %bf.clear132, 10
  %conv136 = select i1 %cmp134, i64 5, i64 12
  %19 = load ptr, ptr %o.addr.2, align 8
  tail call void @S_maybe_multideref(ptr noundef nonnull %o.addr.2, ptr noundef %19, i64 noundef %conv136, i8 noundef zeroext 0)
  br label %sw.epilog

sw.bb138:                                         ; preds = %redo, %redo
  %bf.clear141 = and i16 %bf.load15, 511
  %cmp143 = icmp eq i16 %bf.clear141, 135
  %conv146 = select i1 %cmp143, i64 1, i64 8
  br label %do_deref

do_deref:                                         ; preds = %sw.bb138, %if.then114, %if.end98, %if.then78, %if.end62, %if.then32, %sw.bb
  %o2.0 = phi ptr [ %8, %if.then32 ], [ %13, %if.then78 ], [ %17, %if.then114 ], [ %o.addr.2, %sw.bb138 ], [ %8, %sw.bb ], [ %13, %if.end62 ], [ %17, %if.end98 ]
  %action.0 = phi i64 [ 13, %if.then32 ], [ 9, %if.then78 ], [ 10, %if.then114 ], [ %conv146, %sw.bb138 ], [ 6, %sw.bb ], [ 2, %if.end62 ], [ 3, %if.end98 ]
  %op_flags147 = getelementptr inbounds nuw i8, ptr %o2.0, i64 34
  %20 = load i8, ptr %op_flags147, align 2
  %cmp149.not = icmp eq i8 %20, 22
  br i1 %cmp149.not, label %if.end152, label %sw.epilog

if.end152:                                        ; preds = %do_deref
  %op_private153 = getelementptr inbounds nuw i8, ptr %o2.0, i64 35
  %21 = load i8, ptr %op_private153, align 1
  %22 = and i8 %21, 2
  %23 = load ptr, ptr %o2.0, align 8
  tail call void @S_maybe_multideref(ptr noundef nonnull %o.addr.2, ptr noundef %23, i64 noundef %action.0, i8 noundef zeroext %22)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end152, %do_deref, %if.end129, %sw.bb116, %if.end98, %if.end87, %sw.bb80, %if.end62, %if.end49, %if.end44, %if.end40, %sw.bb, %redo
  %bf.load160 = load i16, ptr %op_opt14, align 8
  %bf.clear161 = and i16 %bf.load160, 511
  switch i16 %bf.clear161, label %sw.epilog2396.loopexit3442 [
    i16 194, label %sw.bb163
    i16 193, label %sw.bb164
    i16 67, label %sw.bb443
    i16 1, label %sw.bb478
    i16 0, label %sw.bb486
    i16 2, label %nothin.loopexit
    i16 192, label %nothin.loopexit
    i16 198, label %nothin.loopexit
    i16 3, label %sw.bb510
    i16 10, label %sw.bb1052
    i16 9, label %sw.bb1052
    i16 11, label %sw.bb1052
    i16 7, label %lor.lhs.false1084
    i16 103, label %sw.bb1360
    i16 176, label %sw.bb1425
    i16 177, label %sw.bb1425
    i16 179, label %sw.bb1425
    i16 180, label %sw.bb1713
    i16 172, label %sw.bb1778.loopexit
    i16 170, label %sw.bb1778.loopexit
    i16 181, label %sw.bb1778.loopexit
    i16 182, label %sw.bb1778.loopexit
    i16 183, label %sw.bb1778.loopexit
    i16 173, label %sw.bb1778.loopexit
    i16 379, label %sw.bb1778.loopexit
    i16 201, label %sw.bb1811
    i16 199, label %sw.bb1811
    i16 344, label %do.body1868
    i16 33, label %while.cond1888.preheader
    i16 167, label %sw.bb1923
    i16 168, label %sw.bb2018
    i16 380, label %sw.bb2390
    i16 38, label %sw.bb2344
    i16 385, label %sw.bb2216
    i16 37, label %sw.bb2264
  ]

while.cond1888.preheader:                         ; preds = %sw.epilog
  %oldoldop.1.lcssa3528 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3503 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3479 = phi ptr [ %o.addr.2, %sw.epilog ]
  %24 = load ptr, ptr @PL_op, align 8
  %op_pmstashstartu = getelementptr inbounds nuw i8, ptr %24, i64 80
  %op_pmstashstartu.promoted = load ptr, ptr %op_pmstashstartu, align 8
  %tobool1889.not3334 = icmp eq ptr %op_pmstashstartu.promoted, null
  br i1 %tobool1889.not3334, label %do.body1904, label %land.rhs1890.preheader

land.rhs1890.preheader:                           ; preds = %while.cond1888.preheader
  br label %land.rhs1890

sw.bb163:                                         ; preds = %sw.epilog
  %oldoldop.1.lcssa3515 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3490 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3466 = phi ptr [ %o.addr.2, %sw.epilog ]
  store ptr %o.addr.2.lcssa3466, ptr @PL_curcop, align 8
  br label %sw.epilog2396

sw.bb164:                                         ; preds = %sw.epilog
  %oldoldop.1.lcssa3516 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3491 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3467 = phi ptr [ %o.addr.2, %sw.epilog ]
  store ptr %o.addr.2.lcssa3467, ptr @PL_curcop, align 8
  %25 = load ptr, ptr %o.addr.2.lcssa3467, align 8
  %op_sibling = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3467, i64 8
  %26 = load ptr, ptr %op_sibling, align 8
  %tobool166.not = icmp eq ptr %25, null
  br i1 %tobool166.not, label %if.end407, label %land.lhs.true167

land.lhs.true167:                                 ; preds = %sw.bb164
  %op_type168 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %bf.load169 = load i16, ptr %op_type168, align 8
  %bf.clear170 = and i16 %bf.load169, 511
  %cmp172 = icmp eq i16 %bf.clear170, 3
  %tobool175 = icmp ne ptr %26, null
  %or.cond = select i1 %cmp172, i1 %tobool175, i1 false
  br i1 %or.cond, label %land.lhs.true176, label %if.end254thread-pre-split

land.lhs.true176:                                 ; preds = %land.lhs.true167
  %op_type177 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %bf.load178 = load i16, ptr %op_type177, align 8
  %bf.clear179 = and i16 %bf.load178, 511
  %cmp181 = icmp eq i16 %bf.clear179, 203
  br i1 %cmp181, label %land.lhs.true183, label %if.end254thread-pre-split

land.lhs.true183:                                 ; preds = %land.lhs.true176
  %27 = load ptr, ptr %26, align 8
  %tobool185.not = icmp eq ptr %27, null
  br i1 %tobool185.not, label %if.end254thread-pre-split, label %land.lhs.true186

land.lhs.true186:                                 ; preds = %land.lhs.true183
  %op_type188 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %bf.load189 = load i16, ptr %op_type188, align 8
  %bf.clear190 = and i16 %bf.load189, 511
  %cmp192 = icmp eq i16 %bf.clear190, 192
  br i1 %cmp192, label %land.lhs.true194, label %if.end254thread-pre-split

land.lhs.true194:                                 ; preds = %land.lhs.true186
  %28 = load ptr, ptr %27, align 8
  %tobool197.not = icmp eq ptr %28, null
  br i1 %tobool197.not, label %if.end254thread-pre-split, label %land.lhs.true198

land.lhs.true198:                                 ; preds = %land.lhs.true194
  %op_type201 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %bf.load202 = load i16, ptr %op_type201, align 8
  %bf.clear203 = and i16 %bf.load202, 511
  %cmp205 = icmp eq i16 %bf.clear203, 186
  br i1 %cmp205, label %land.lhs.true220, label %land.lhs.true211

land.lhs.true211:                                 ; preds = %land.lhs.true198
  %op_type214 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %bf.load215 = load i16, ptr %op_type214, align 8
  %bf.clear216 = and i16 %bf.load215, 511
  %cmp218 = icmp eq i16 %bf.clear216, 187
  br i1 %cmp218, label %land.lhs.true220, label %if.end254thread-pre-split

land.lhs.true220:                                 ; preds = %land.lhs.true211, %land.lhs.true198
  %op_first = getelementptr inbounds nuw i8, ptr %26, i64 40
  %29 = load ptr, ptr %op_first, align 8
  %cmp221 = icmp eq ptr %29, %25
  br i1 %cmp221, label %land.lhs.true223, label %if.end254thread-pre-split

land.lhs.true223:                                 ; preds = %land.lhs.true220
  %op_sibling224 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %30 = load ptr, ptr %op_sibling224, align 8
  %tobool225.not = icmp eq ptr %30, null
  br i1 %tobool225.not, label %if.end254thread-pre-split, label %land.lhs.true226

land.lhs.true226:                                 ; preds = %land.lhs.true223
  %31 = load ptr, ptr %30, align 8
  %tobool230.not = icmp eq ptr %31, null
  br i1 %tobool230.not, label %if.end254thread-pre-split, label %land.lhs.true231

land.lhs.true231:                                 ; preds = %land.lhs.true226
  %32 = load ptr, ptr %25, align 8
  %tobool233.not = icmp eq ptr %32, null
  %tobool238.not3437 = icmp eq ptr %30, null
  %or.cond3441 = or i1 %tobool233.not, %tobool238.not3437
  br i1 %or.cond3441, label %if.end254thread-pre-split, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %land.lhs.true231
  br label %land.rhs

land.rhs:                                         ; preds = %if.end250, %land.rhs.preheader
  %top.03438 = phi ptr [ %35, %if.end250 ], [ %30, %land.rhs.preheader ]
  %33 = load ptr, ptr %top.03438, align 8
  %tobool240.not = icmp eq ptr %33, null
  br i1 %tobool240.not, label %if.end254thread-pre-split.loopexit, label %while.body241

while.body241:                                    ; preds = %land.rhs
  %cmp243 = icmp eq ptr %33, %26
  br i1 %cmp243, label %if.then245, label %if.end250

if.then245:                                       ; preds = %while.body241
  %top.03438.lcssa3541 = phi ptr [ %top.03438, %while.body241 ]
  store ptr %27, ptr %top.03438.lcssa3541, align 8
  %34 = load ptr, ptr %25, align 8
  store ptr %34, ptr %o.addr.2.lcssa3467, align 8
  br label %if.end254

if.end250:                                        ; preds = %while.body241
  %op_sibling251 = getelementptr inbounds nuw i8, ptr %top.03438, i64 8
  %35 = load ptr, ptr %op_sibling251, align 8
  %tobool238.not = icmp eq ptr %35, null
  br i1 %tobool238.not, label %if.end254thread-pre-split.loopexit, label %land.rhs, !llvm.loop !3

if.end254thread-pre-split.loopexit:               ; preds = %if.end250, %land.rhs
  br label %if.end254thread-pre-split

if.end254thread-pre-split:                        ; preds = %if.end254thread-pre-split.loopexit, %land.lhs.true231, %land.lhs.true226, %land.lhs.true223, %land.lhs.true220, %land.lhs.true211, %land.lhs.true194, %land.lhs.true186, %land.lhs.true183, %land.lhs.true176, %land.lhs.true167
  %.pr = load ptr, ptr %o.addr.2.lcssa3467, align 8
  br label %if.end254

if.end254:                                        ; preds = %if.end254thread-pre-split, %if.then245
  %36 = phi ptr [ %.pr, %if.end254thread-pre-split ], [ %34, %if.then245 ]
  %tobool256.not = icmp eq ptr %36, null
  br i1 %tobool256.not, label %if.end407, label %land.lhs.true257

land.lhs.true257:                                 ; preds = %if.end254
  %op_type259 = getelementptr inbounds nuw i8, ptr %36, i64 32
  %bf.load260 = load i16, ptr %op_type259, align 8
  %bf.clear261 = and i16 %bf.load260, 511
  %bf.clear261.off = add nsw i16 %bf.clear261, -9
  %switch = icmp ult i16 %bf.clear261.off, 3
  br i1 %switch, label %land.lhs.true281, label %if.end407

land.lhs.true281:                                 ; preds = %land.lhs.true257
  %op_private283 = getelementptr inbounds nuw i8, ptr %36, i64 35
  %37 = load i8, ptr %op_private283, align 1
  %38 = and i8 %37, 127
  %tobool286.not = icmp eq i8 %38, 0
  br i1 %tobool286.not, label %land.lhs.true287, label %if.end407

land.lhs.true287:                                 ; preds = %land.lhs.true281
  %39 = load ptr, ptr %36, align 8
  %tobool290.not = icmp eq ptr %39, null
  br i1 %tobool290.not, label %if.end407, label %land.lhs.true291

land.lhs.true291:                                 ; preds = %land.lhs.true287
  %op_type294 = getelementptr inbounds nuw i8, ptr %39, i64 32
  %bf.load295 = load i16, ptr %op_type294, align 8
  %bf.clear296 = and i16 %bf.load295, 511
  %cmp298 = icmp eq i16 %bf.clear296, 193
  br i1 %cmp298, label %land.lhs.true300, label %if.end407

land.lhs.true300:                                 ; preds = %land.lhs.true291
  %40 = load ptr, ptr %39, align 8
  %tobool304.not = icmp eq ptr %40, null
  br i1 %tobool304.not, label %if.end407, label %land.lhs.true305

land.lhs.true305:                                 ; preds = %land.lhs.true300
  %op_type309 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %bf.load310 = load i16, ptr %op_type309, align 8
  %bf.clear311 = and i16 %bf.load310, 511
  %bf.clear311.off = add nsw i16 %bf.clear311, -9
  %switch3032 = icmp ult i16 %bf.clear311.off, 3
  br i1 %switch3032, label %land.lhs.true335, label %if.end407

land.lhs.true335:                                 ; preds = %land.lhs.true305
  %op_private339 = getelementptr inbounds nuw i8, ptr %40, i64 35
  %41 = load i8, ptr %op_private339, align 1
  %42 = and i8 %41, 127
  %tobool342.not = icmp eq i8 %42, 0
  br i1 %tobool342.not, label %land.lhs.true343, label %if.end407

land.lhs.true343:                                 ; preds = %land.lhs.true335
  %43 = load ptr, ptr %40, align 8
  %tobool348.not = icmp eq ptr %43, null
  br i1 %tobool348.not, label %if.end407, label %land.lhs.true349

land.lhs.true349:                                 ; preds = %land.lhs.true343
  %op_type354 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %bf.load355 = load i16, ptr %op_type354, align 8
  %bf.clear356 = and i16 %bf.load355, 511
  %cmp358 = icmp eq i16 %bf.clear356, 193
  br i1 %cmp358, label %land.lhs.true360, label %if.end407

land.lhs.true360:                                 ; preds = %land.lhs.true349
  %call = tail call ptr @Perl_cop_fetch_label(ptr noundef nonnull %o.addr.2.lcssa3467, ptr noundef null, ptr noundef null) #5
  %tobool361.not = icmp eq ptr %call, null
  br i1 %tobool361.not, label %land.lhs.true362, label %if.end407

land.lhs.true362:                                 ; preds = %land.lhs.true360
  %44 = load ptr, ptr %o.addr.2.lcssa3467, align 8
  %45 = load ptr, ptr %44, align 8
  %call365 = tail call ptr @Perl_cop_fetch_label(ptr noundef %45, ptr noundef null, ptr noundef null) #5
  %tobool366.not = icmp eq ptr %call365, null
  br i1 %tobool366.not, label %if.then367, label %if.end407

if.then367:                                       ; preds = %land.lhs.true362
  %46 = load ptr, ptr %o.addr.2.lcssa3467, align 8
  %47 = load ptr, ptr %46, align 8
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %48, align 8
  %call372 = tail call ptr @Perl_op_sibling_splice(ptr noundef null, ptr noundef %46, i32 noundef 1, ptr noundef null)
  tail call void @Perl_op_free(ptr noundef %47)
  %call373 = tail call ptr @Perl_op_sibling_splice(ptr noundef null, ptr noundef nonnull %o.addr.2.lcssa3467, i32 noundef 2, ptr noundef null)
  %call374 = tail call ptr @Perl_newLISTOP(i32 noundef 158, i32 noundef 0, ptr noundef %46, ptr noundef %48)
  %op_flags375 = getelementptr inbounds nuw i8, ptr %call374, i64 34
  %50 = load i8, ptr %op_flags375, align 2
  %51 = and i8 %50, -12
  %52 = or disjoint i8 %51, 9
  store i8 %52, ptr %op_flags375, align 2
  %call385 = tail call ptr @Perl_op_sibling_splice(ptr noundef null, ptr noundef nonnull %o.addr.2.lcssa3467, i32 noundef 0, ptr noundef %call374)
  %op_first386 = getelementptr inbounds nuw i8, ptr %call374, i64 40
  %53 = load ptr, ptr %op_first386, align 8
  store ptr %53, ptr %o.addr.2.lcssa3467, align 8
  store ptr %46, ptr %53, align 8
  store ptr %48, ptr %46, align 8
  store ptr %call374, ptr %48, align 8
  store ptr %49, ptr %call374, align 8
  %op_flags392 = getelementptr inbounds nuw i8, ptr %46, i64 34
  %54 = load i8, ptr %op_flags392, align 2
  %55 = and i8 %54, 32
  %tobool395.not = icmp eq i8 %55, 0
  br i1 %tobool395.not, label %sw.epilog2396, label %land.lhs.true396

land.lhs.true396:                                 ; preds = %if.then367
  %op_flags397 = getelementptr inbounds nuw i8, ptr %48, i64 34
  %56 = load i8, ptr %op_flags397, align 2
  %57 = and i8 %56, 32
  %tobool400.not = icmp eq i8 %57, 0
  br i1 %tobool400.not, label %sw.epilog2396, label %if.then401

if.then401:                                       ; preds = %land.lhs.true396
  %op_flags402 = getelementptr inbounds nuw i8, ptr %53, i64 34
  %58 = load i8, ptr %op_flags402, align 2
  %59 = or i8 %58, 32
  store i8 %59, ptr %op_flags402, align 2
  br label %sw.epilog2396

if.end407:                                        ; preds = %land.lhs.true362, %land.lhs.true360, %land.lhs.true349, %land.lhs.true343, %land.lhs.true335, %land.lhs.true305, %land.lhs.true300, %land.lhs.true291, %land.lhs.true287, %land.lhs.true281, %land.lhs.true257, %if.end254, %sw.bb164
  %call408 = tail call ptr @Perl_cop_fetch_label(ptr noundef nonnull %o.addr.2.lcssa3467, ptr noundef null, ptr noundef null) #5
  %tobool409.not = icmp eq ptr %call408, null
  br i1 %tobool409.not, label %land.lhs.true410, label %sw.epilog2396

land.lhs.true410:                                 ; preds = %if.end407
  %60 = load i32, ptr @PL_perldb, align 4
  %and411 = and i32 %60, 4
  %tobool412.not = icmp eq i32 %and411, 0
  br i1 %tobool412.not, label %while.cond415.preheader, label %sw.epilog2396

while.cond415.preheader:                          ; preds = %land.lhs.true410
  br label %while.cond415

while.cond415:                                    ; preds = %land.rhs417, %while.cond415.preheader
  %nextop.0.in = phi ptr [ %nextop.0, %land.rhs417 ], [ %o.addr.2.lcssa3467, %while.cond415.preheader ]
  %nextop.0 = load ptr, ptr %nextop.0.in, align 8
  %tobool416.not = icmp eq ptr %nextop.0, null
  br i1 %tobool416.not, label %sw.epilog2396.loopexit, label %land.rhs417

land.rhs417:                                      ; preds = %while.cond415
  %op_type418 = getelementptr inbounds nuw i8, ptr %nextop.0, i64 32
  %bf.load419 = load i16, ptr %op_type418, align 8
  %bf.clear420 = and i16 %bf.load419, 511
  switch i16 %bf.clear420, label %sw.epilog2396.loopexit [
    i16 0, label %while.cond415
    i16 193, label %if.then436
  ]

if.then436:                                       ; preds = %land.rhs417
  %nextop.0.lcssa3542 = phi ptr [ %nextop.0, %land.rhs417 ]
  tail call void @Perl_op_null(ptr noundef %o.addr.2.lcssa3467)
  %tobool437.not = icmp eq ptr %oldop.1.lcssa3491, null
  br i1 %tobool437.not, label %for.inc2416, label %if.then438

if.then438:                                       ; preds = %if.then436
  store ptr %nextop.0.lcssa3542, ptr %oldop.1.lcssa3491, align 8
  br label %for.inc2416

sw.bb443:                                         ; preds = %sw.epilog
  %oldoldop.1.lcssa3517 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3492 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3468 = phi ptr [ %o.addr.2, %sw.epilog ]
  %61 = load ptr, ptr %o.addr.2.lcssa3468, align 8
  %tobool445.not = icmp eq ptr %61, null
  br i1 %tobool445.not, label %sw.epilog2396, label %land.lhs.true446

land.lhs.true446:                                 ; preds = %sw.bb443
  %op_type448 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %bf.load449 = load i16, ptr %op_type448, align 8
  %bf.clear450 = and i16 %bf.load449, 511
  %cmp452 = icmp eq i16 %bf.clear450, 68
  br i1 %cmp452, label %if.then454, label %sw.epilog2396

if.then454:                                       ; preds = %land.lhs.true446
  %op_private456 = getelementptr inbounds nuw i8, ptr %61, i64 35
  %62 = load i8, ptr %op_private456, align 1
  %63 = and i8 %62, 16
  %tobool459.not = icmp eq i8 %63, 0
  br i1 %tobool459.not, label %if.end475, label %if.then460

if.then460:                                       ; preds = %if.then454
  %op_flags461 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3468, i64 34
  %64 = load i8, ptr %op_flags461, align 2
  %65 = and i8 %64, 64
  %tobool464.not = icmp eq i8 %65, 0
  br i1 %tobool464.not, label %if.else, label %sw.epilog2396

if.else:                                          ; preds = %if.then460
  %op_targ = getelementptr inbounds nuw i8, ptr %61, i64 24
  %66 = load i64, ptr %op_targ, align 8
  %op_targ467 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3468, i64 24
  store i64 %66, ptr %op_targ467, align 8
  store i64 0, ptr %op_targ, align 8
  %op_private470 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3468, i64 35
  %67 = load i8, ptr %op_private470, align 1
  %68 = or i8 %67, 16
  store i8 %68, ptr %op_private470, align 1
  br label %if.end475

if.end475:                                        ; preds = %if.else, %if.then454
  %69 = load ptr, ptr %o.addr.2.lcssa3468, align 8
  %op_type.i3035 = getelementptr inbounds nuw i8, ptr %69, i64 32
  %bf.load.i3036 = load i16, ptr %op_type.i3035, align 8
  %bf.clear.i3037 = and i16 %bf.load.i3036, 511
  %cmp.i = icmp eq i16 %bf.clear.i3037, 0
  br i1 %cmp.i, label %sw.epilog2396, label %if.end.i

if.end.i:                                         ; preds = %if.end475
  tail call void @Perl_op_clear(ptr noundef nonnull %69)
  %bf.load2.i = load i16, ptr %op_type.i3035, align 8
  %bf.clear3.i = and i16 %bf.load2.i, 511
  %conv.i = zext nneg i16 %bf.clear3.i to i64
  %op_targ.i = getelementptr inbounds nuw i8, ptr %69, i64 24
  store i64 %conv.i, ptr %op_targ.i, align 8
  %bf.clear7.i = and i16 %bf.load2.i, -512
  store i16 %bf.clear7.i, ptr %op_type.i3035, align 8
  %70 = load ptr, ptr @PL_ppaddr, align 8
  %op_ppaddr.i = getelementptr inbounds nuw i8, ptr %69, i64 16
  store ptr %70, ptr %op_ppaddr.i, align 8
  br label %sw.epilog2396

sw.bb478:                                         ; preds = %sw.epilog
  %oldoldop.1.lcssa3518 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3493 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3469 = phi ptr [ %o.addr.2, %sw.epilog ]
  %op_opt14.lcssa3446 = phi ptr [ %op_opt14, %sw.epilog ]
  %op_flags479 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3469, i64 34
  %71 = load i8, ptr %op_flags479, align 2
  %72 = and i8 %71, 3
  %cmp482 = icmp eq i8 %72, 3
  %tobool501 = icmp ne ptr %oldop.1.lcssa3493, null
  %or.cond2443 = select i1 %cmp482, i1 %tobool501, i1 false
  br i1 %or.cond2443, label %if.then502, label %sw.epilog2396

sw.bb486:                                         ; preds = %sw.epilog
  %oldoldop.1.lcssa3519 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3494 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3470 = phi ptr [ %o.addr.2, %sw.epilog ]
  %op_opt14.lcssa3447 = phi ptr [ %op_opt14, %sw.epilog ]
  %op_targ487 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3470, i64 24
  %73 = load i64, ptr %op_targ487, align 8
  %.off = add i64 %73, -193
  %switch3033 = icmp ult i64 %.off, 2
  br i1 %switch3033, label %if.then494, label %if.end495

if.then494:                                       ; preds = %sw.bb486
  store ptr %o.addr.2.lcssa3470, ptr @PL_curcop, align 8
  br label %if.end495

if.end495:                                        ; preds = %if.then494, %sw.bb486
  %bf.load497 = load i16, ptr %op_opt14.lcssa3447, align 8
  %bf.clear498 = and i16 %bf.load497, -513
  store i16 %bf.clear498, ptr %op_opt14.lcssa3447, align 8
  br label %nothin

nothin.loopexit:                                  ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %oldoldop.1.lcssa3520 = phi ptr [ %oldoldop.1, %sw.epilog ], [ %oldoldop.1, %sw.epilog ], [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3495 = phi ptr [ %oldop.1, %sw.epilog ], [ %oldop.1, %sw.epilog ], [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3471 = phi ptr [ %o.addr.2, %sw.epilog ], [ %o.addr.2, %sw.epilog ], [ %o.addr.2, %sw.epilog ]
  %op_opt14.lcssa3448 = phi ptr [ %op_opt14, %sw.epilog ], [ %op_opt14, %sw.epilog ], [ %op_opt14, %sw.epilog ]
  br label %nothin

nothin:                                           ; preds = %nothin.loopexit, %if.end495
  %oldoldop.13539 = phi ptr [ %oldoldop.1.lcssa3520, %nothin.loopexit ], [ %oldoldop.1.lcssa3519, %if.end495 ]
  %oldop.13514 = phi ptr [ %oldop.1.lcssa3495, %nothin.loopexit ], [ %oldop.1.lcssa3494, %if.end495 ]
  %o.addr.23488 = phi ptr [ %o.addr.2.lcssa3471, %nothin.loopexit ], [ %o.addr.2.lcssa3470, %if.end495 ]
  %op_opt143465 = phi ptr [ %op_opt14.lcssa3448, %nothin.loopexit ], [ %op_opt14.lcssa3447, %if.end495 ]
  %tobool501.old.not = icmp eq ptr %oldop.13514, null
  br i1 %tobool501.old.not, label %for.inc2416, label %if.then502

if.then502:                                       ; preds = %nothin, %sw.bb478
  %oldoldop.13538 = phi ptr [ %oldoldop.1.lcssa3518, %sw.bb478 ], [ %oldoldop.13539, %nothin ]
  %oldop.13513 = phi ptr [ %oldop.1.lcssa3493, %sw.bb478 ], [ %oldop.13514, %nothin ]
  %o.addr.23487 = phi ptr [ %o.addr.2.lcssa3469, %sw.bb478 ], [ %o.addr.23488, %nothin ]
  %op_opt143464 = phi ptr [ %op_opt14.lcssa3446, %sw.bb478 ], [ %op_opt143465, %nothin ]
  %74 = load ptr, ptr %o.addr.23487, align 8
  store ptr %74, ptr %oldop.13513, align 8
  %bf.load506 = load i16, ptr %op_opt143464, align 8
  %bf.clear507 = and i16 %bf.load506, -513
  store i16 %bf.clear507, ptr %op_opt143464, align 8
  br label %for.inc2416

sw.bb510:                                         ; preds = %sw.epilog
  %oldoldop.1.lcssa3521 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3496 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3472 = phi ptr [ %o.addr.2, %sw.epilog ]
  %75 = load ptr, ptr %o.addr.2.lcssa3472, align 8
  %op_type512 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %bf.load513 = load i16, ptr %op_type512, align 8
  %bf.clear514 = and i16 %bf.load513, 511
  switch i16 %bf.clear514, label %if.end628 [
    i16 5, label %if.end568
    i16 9, label %land.lhs.true526
    i16 7, label %land.lhs.true540
  ]

land.lhs.true526:                                 ; preds = %sw.bb510
  %op_private528 = getelementptr inbounds nuw i8, ptr %75, i64 35
  %76 = load i8, ptr %op_private528, align 1
  %tobool531.not = icmp sgt i8 %76, -1
  br i1 %tobool531.not, label %if.end568, label %if.end628

land.lhs.true540:                                 ; preds = %sw.bb510
  %77 = load ptr, ptr %75, align 8
  %op_type543 = getelementptr inbounds nuw i8, ptr %77, i64 32
  %bf.load544 = load i16, ptr %op_type543, align 8
  %bf.clear545 = and i16 %bf.load544, 511
  %cmp547 = icmp eq i16 %bf.clear545, 15
  br i1 %cmp547, label %land.lhs.true549, label %if.end628

land.lhs.true549:                                 ; preds = %land.lhs.true540
  %op_private552 = getelementptr inbounds nuw i8, ptr %77, i64 35
  %78 = load i8, ptr %op_private552, align 1
  %tobool555.not = icmp ult i8 %78, 64
  br i1 %tobool555.not, label %if.then566, label %if.end628

if.then566:                                       ; preds = %land.lhs.true549
  %79 = load ptr, ptr %75, align 8
  br label %if.end568

if.end568:                                        ; preds = %if.then566, %land.lhs.true526, %sw.bb510
  %kid.0.in = phi ptr [ %79, %if.then566 ], [ %75, %sw.bb510 ], [ %75, %land.lhs.true526 ]
  %kid.0 = load ptr, ptr %kid.0.in, align 8
  %op_type569 = getelementptr inbounds nuw i8, ptr %kid.0, i64 32
  %bf.load570 = load i16, ptr %op_type569, align 8
  %bf.clear571 = and i16 %bf.load570, 511
  %cmp573 = icmp eq i16 %bf.clear571, 0
  br i1 %cmp573, label %land.lhs.true575, label %if.end628

land.lhs.true575:                                 ; preds = %if.end568
  %80 = load ptr, ptr %kid.0, align 8
  %op_type577 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %bf.load578 = load i16, ptr %op_type577, align 8
  %bf.clear579 = and i16 %bf.load578, 511
  %cmp581 = icmp eq i16 %bf.clear579, 5
  br i1 %cmp581, label %land.lhs.true583, label %if.end628

land.lhs.true583:                                 ; preds = %land.lhs.true575
  %81 = load ptr, ptr %80, align 8
  %op_type585 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %bf.load586 = load i16, ptr %op_type585, align 8
  %bf.clear587 = and i16 %bf.load586, 511
  %cmp589 = icmp eq i16 %bf.clear587, 62
  br i1 %cmp589, label %land.lhs.true591, label %if.end628

land.lhs.true591:                                 ; preds = %land.lhs.true583
  %op_private593 = getelementptr inbounds nuw i8, ptr %81, i64 35
  %82 = load i8, ptr %op_private593, align 1
  %83 = and i8 %82, 64
  %tobool596.not = icmp eq i8 %83, 0
  br i1 %tobool596.not, label %if.end628, label %land.lhs.true597

land.lhs.true597:                                 ; preds = %land.lhs.true591
  %op_flags599 = getelementptr inbounds nuw i8, ptr %81, i64 34
  %84 = load i8, ptr %op_flags599, align 2
  %85 = and i8 %84, 3
  %cmp602 = icmp eq i8 %85, 3
  br i1 %cmp602, label %land.lhs.true604, label %if.end628

land.lhs.true604:                                 ; preds = %land.lhs.true597
  %op_sv = getelementptr inbounds nuw i8, ptr %80, i64 40
  %86 = load ptr, ptr %op_sv, align 8
  %sv_flags = getelementptr inbounds nuw i8, ptr %86, i64 12
  %87 = load i32, ptr %sv_flags, align 4
  %and605 = and i32 %87, 256
  %tobool606.not = icmp eq i32 %and605, 0
  br i1 %tobool606.not, label %if.end628, label %land.lhs.true607

land.lhs.true607:                                 ; preds = %land.lhs.true604
  %88 = load ptr, ptr %86, align 8
  %xiv_u = getelementptr inbounds nuw i8, ptr %88, i64 32
  %89 = load i64, ptr %xiv_u, align 8
  %cmp609 = icmp eq i64 %89, 0
  br i1 %cmp609, label %cleanup625, label %if.end628

cleanup625:                                       ; preds = %land.lhs.true607
  store ptr %81, ptr %oldop.1.lcssa3496, align 8
  %op_first614 = getelementptr inbounds nuw i8, ptr %81, i64 40
  %90 = load ptr, ptr %op_first614, align 8
  tail call void @Perl_op_free(ptr noundef %90)
  %op_last = getelementptr inbounds nuw i8, ptr %81, i64 48
  %91 = load ptr, ptr %op_last, align 8
  tail call void @Perl_op_free(ptr noundef %91)
  %92 = load i8, ptr %op_flags599, align 2
  %93 = and i8 %92, -5
  store i8 %93, ptr %op_flags599, align 2
  %bf.load620 = load i16, ptr %op_type585, align 8
  %bf.clear621 = and i16 %bf.load620, -512
  %bf.set622 = or disjoint i16 %bf.clear621, 1
  store i16 %bf.set622, ptr %op_type585, align 8
  %94 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PL_ppaddr, i64 8), align 8
  %op_ppaddr = getelementptr inbounds nuw i8, ptr %81, i64 16
  store ptr %94, ptr %op_ppaddr, align 8
  store i8 0, ptr %op_private593, align 1
  br label %sw.epilog2396

if.end628:                                        ; preds = %land.lhs.true607, %land.lhs.true604, %land.lhs.true597, %land.lhs.true591, %land.lhs.true583, %land.lhs.true575, %if.end568, %land.lhs.true549, %land.lhs.true540, %land.lhs.true526, %sw.bb510
  %95 = load ptr, ptr %o.addr.2.lcssa3472, align 8
  %op_type630 = getelementptr inbounds nuw i8, ptr %95, i64 32
  %bf.load631 = load i16, ptr %op_type630, align 8
  %bf.clear632 = and i16 %bf.load631, 511
  %cmp634 = icmp eq i16 %bf.clear632, 7
  br i1 %cmp634, label %land.lhs.true636, label %if.end685.thread

land.lhs.true636:                                 ; preds = %if.end628
  %op_sv637 = getelementptr inbounds nuw i8, ptr %95, i64 40
  %96 = load ptr, ptr %op_sv637, align 8
  %97 = load ptr, ptr @PL_defgv, align 8
  %cmp638 = icmp eq ptr %96, %97
  br i1 %cmp638, label %land.lhs.true640, label %if.end685.thread

land.lhs.true640:                                 ; preds = %land.lhs.true636
  %98 = load ptr, ptr %95, align 8
  %tobool642.not = icmp eq ptr %98, null
  br i1 %tobool642.not, label %if.end685.thread, label %land.lhs.true643

land.lhs.true643:                                 ; preds = %land.lhs.true640
  %op_type644 = getelementptr inbounds nuw i8, ptr %98, i64 32
  %bf.load645 = load i16, ptr %op_type644, align 8
  %bf.clear646 = and i16 %bf.load645, 511
  %cmp648 = icmp eq i16 %bf.clear646, 135
  br i1 %cmp648, label %land.lhs.true650, label %if.end685.thread

land.lhs.true650:                                 ; preds = %land.lhs.true643
  %op_flags651 = getelementptr inbounds nuw i8, ptr %98, i64 34
  %99 = load i8, ptr %op_flags651, align 2
  %conv652 = zext i8 %99 to i32
  %and653 = and i32 %conv652, 16
  %tobool654.not = icmp eq i32 %and653, 0
  br i1 %tobool654.not, label %land.lhs.true655, label %if.end685.thread

land.lhs.true655:                                 ; preds = %land.lhs.true650
  %op_private656 = getelementptr inbounds nuw i8, ptr %98, i64 35
  %100 = load i8, ptr %op_private656, align 1
  %101 = and i8 %100, -120
  %tobool659.not = icmp eq i8 %101, 0
  %and663 = and i32 %conv652, 3
  %cmp664 = icmp eq i32 %and663, 3
  %or.cond3022 = and i1 %cmp664, %tobool659.not
  br i1 %or.cond3022, label %if.then666, label %if.end685.thread

if.then666:                                       ; preds = %land.lhs.true655
  %102 = load ptr, ptr %98, align 8
  %op_type668 = getelementptr inbounds nuw i8, ptr %102, i64 32
  %bf.load669 = load i16, ptr %op_type668, align 8
  %bf.clear670 = and i16 %bf.load669, 511
  %cmp672 = icmp eq i16 %bf.clear670, 0
  br i1 %cmp672, label %if.then674, label %if.end685

if.then674:                                       ; preds = %if.then666
  %103 = load ptr, ptr %102, align 8
  br label %if.end685

if.end685:                                        ; preds = %if.then674, %if.then666
  %q.0 = phi ptr [ %103, %if.then674 ], [ %102, %if.then666 ]
  %op_type677 = getelementptr inbounds nuw i8, ptr %q.0, i64 32
  %bf.load678 = load i16, ptr %op_type677, align 8
  %bf.load678.fr = freeze i16 %bf.load678
  %bf.clear679 = and i16 %bf.load678.fr, 511
  %cmp681 = icmp eq i16 %bf.clear679, 3
  %spec.select3230 = select i1 %cmp681, ptr %q.0, ptr %o.addr.2.lcssa3472
  br label %if.end685.thread

if.end685.thread:                                 ; preds = %if.end685, %land.lhs.true655, %land.lhs.true650, %land.lhs.true643, %land.lhs.true640, %land.lhs.true636, %if.end628
  %defav.03173 = phi i1 [ false, %land.lhs.true650 ], [ false, %land.lhs.true655 ], [ false, %land.lhs.true643 ], [ false, %land.lhs.true640 ], [ false, %land.lhs.true636 ], [ false, %if.end628 ], [ %cmp681, %if.end685 ]
  %104 = phi ptr [ %o.addr.2.lcssa3472, %land.lhs.true650 ], [ %o.addr.2.lcssa3472, %land.lhs.true655 ], [ %o.addr.2.lcssa3472, %land.lhs.true643 ], [ %o.addr.2.lcssa3472, %land.lhs.true640 ], [ %o.addr.2.lcssa3472, %land.lhs.true636 ], [ %o.addr.2.lcssa3472, %if.end628 ], [ %spec.select3230, %if.end685 ]
  %p.23360 = load ptr, ptr %104, align 8
  %tobool690.not3361 = icmp eq ptr %p.23360, null
  br i1 %tobool690.not3361, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end685.thread
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %p.23367 = phi ptr [ %p.2, %for.inc ], [ %p.23360, %for.body.preheader ]
  %followop.03366 = phi ptr [ %followop.1, %for.inc ], [ null, %for.body.preheader ]
  %count.03365 = phi i8 [ %count.1, %for.inc ], [ 0, %for.body.preheader ]
  %intro.03364 = phi i8 [ %intro.2, %for.inc ], [ 0, %for.body.preheader ]
  %base.03363 = phi i64 [ %base.2, %for.inc ], [ 0, %for.body.preheader ]
  %gvoid.03362 = phi i8 [ %gvoid.2, %for.inc ], [ 0, %for.body.preheader ]
  %op_type691 = getelementptr inbounds nuw i8, ptr %p.23367, i64 32
  %bf.load692 = load i16, ptr %op_type691, align 8
  %bf.clear693 = and i16 %bf.load692, 511
  switch i16 %bf.clear693, label %for.end.loopexit [
    i16 0, label %for.inc
    i16 9, label %lor.lhs.false719
    i16 10, label %lor.lhs.false719
    i16 11, label %lor.lhs.false719
  ]

lor.lhs.false719:                                 ; preds = %for.body, %for.body, %for.body
  %op_private720 = getelementptr inbounds nuw i8, ptr %p.23367, i64 35
  %105 = load i8, ptr %op_private720, align 1
  %106 = and i8 %105, 127
  %tobool723.not = icmp eq i8 %106, 0
  br i1 %tobool723.not, label %if.end725, label %for.end.loopexit

if.end725:                                        ; preds = %lor.lhs.false719
  %cmp730 = icmp eq i16 %bf.clear693, 10
  br i1 %cmp730, label %land.lhs.true732, label %if.end757

land.lhs.true732:                                 ; preds = %if.end725
  %107 = load ptr, ptr %p.23367, align 8
  %tobool734.not = icmp eq ptr %107, null
  br i1 %tobool734.not, label %if.end757, label %land.lhs.true735

land.lhs.true735:                                 ; preds = %land.lhs.true732
  %op_type737 = getelementptr inbounds nuw i8, ptr %107, i64 32
  %bf.load738 = load i16, ptr %op_type737, align 8
  %bf.clear739 = and i16 %bf.load738, 511
  %cmp741 = icmp eq i16 %bf.clear739, 5
  br i1 %cmp741, label %land.lhs.true743, label %if.end757

land.lhs.true743:                                 ; preds = %land.lhs.true735
  %108 = load ptr, ptr %107, align 8
  %tobool746.not = icmp eq ptr %108, null
  br i1 %tobool746.not, label %if.end757, label %land.lhs.true747

land.lhs.true747:                                 ; preds = %land.lhs.true743
  %op_type750 = getelementptr inbounds nuw i8, ptr %108, i64 32
  %bf.load751 = load i16, ptr %op_type750, align 8
  %bf.clear752 = and i16 %bf.load751, 511
  %cmp754 = icmp eq i16 %bf.clear752, 138
  br i1 %cmp754, label %for.end.loopexit, label %if.end757

if.end757:                                        ; preds = %land.lhs.true747, %land.lhs.true743, %land.lhs.true735, %land.lhs.true732, %if.end725
  %cmp759 = icmp eq i8 %count.03365, 0
  br i1 %cmp759, label %if.end814.thread, label %if.else779

if.else779:                                       ; preds = %if.end757
  %cmp784.not = icmp eq i8 %105, %intro.03364
  br i1 %cmp784.not, label %if.end787, label %for.end.loopexit

if.end787:                                        ; preds = %if.else779
  %op_targ788 = getelementptr inbounds nuw i8, ptr %p.23367, i64 24
  %109 = load i64, ptr %op_targ788, align 8
  %conv789 = zext i8 %count.03365 to i64
  %add790 = add i64 %base.03363, %conv789
  %cmp791.not = icmp eq i64 %109, %add790
  br i1 %cmp791.not, label %if.end794, label %for.end.loopexit

if.end794:                                        ; preds = %if.end787
  %op_flags797 = getelementptr inbounds nuw i8, ptr %p.23367, i64 34
  %110 = load i8, ptr %op_flags797, align 2
  %111 = and i8 %110, 3
  %112 = trunc i8 %gvoid.03362 to i1
  %113 = icmp ne i8 %111, 1
  %cmp810.not = xor i1 %113, %112
  br i1 %cmp810.not, label %if.end814, label %for.end.loopexit

if.end814:                                        ; preds = %if.end794
  %cmp819 = icmp eq i16 %bf.clear693, 9
  %loadedv822 = trunc nuw i8 %gvoid.03362 to i1
  %or.cond2428 = select i1 %cmp819, i1 true, i1 %loadedv822
  br i1 %or.cond2428, label %if.end829, label %land.lhs.true823

if.end814.thread:                                 ; preds = %if.end757
  %op_targ766 = getelementptr inbounds nuw i8, ptr %p.23367, i64 24
  %114 = load i64, ptr %op_targ766, align 8
  %op_flags767 = getelementptr inbounds nuw i8, ptr %p.23367, i64 34
  %115 = load i8, ptr %op_flags767, align 2
  %116 = and i8 %115, 3
  %117 = icmp eq i8 %116, 1
  %118 = zext i1 %117 to i8
  %cmp8193177 = icmp eq i16 %bf.clear693, 9
  %or.cond24283179 = select i1 %cmp8193177, i1 true, i1 %117
  br i1 %or.cond24283179, label %if.end834, label %land.lhs.true823

land.lhs.true823:                                 ; preds = %if.end814.thread, %if.end814
  %intro.13187 = phi i8 [ %105, %if.end814.thread ], [ %intro.03364, %if.end814 ]
  %base.13184 = phi i64 [ %114, %if.end814.thread ], [ %base.03363, %if.end814 ]
  %gvoid.13181 = phi i8 [ %118, %if.end814.thread ], [ 0, %if.end814 ]
  %op_flags824 = getelementptr inbounds nuw i8, ptr %p.23367, i64 34
  %119 = load i8, ptr %op_flags824, align 2
  %120 = and i8 %119, 16
  %tobool827 = icmp eq i8 %120, 0
  %cmp831 = icmp ugt i8 %count.03365, 126
  %or.cond2445 = select i1 %tobool827, i1 true, i1 %cmp831
  br i1 %or.cond2445, label %for.end.loopexit, label %if.end834

if.end829:                                        ; preds = %if.end814
  %cmp831.old = icmp ugt i8 %count.03365, 126
  br i1 %cmp831.old, label %for.end.loopexit, label %if.end834

if.end834:                                        ; preds = %if.end829, %land.lhs.true823, %if.end814.thread
  %intro.13186 = phi i8 [ %intro.13187, %land.lhs.true823 ], [ %intro.03364, %if.end829 ], [ %105, %if.end814.thread ]
  %base.13183 = phi i64 [ %base.13184, %land.lhs.true823 ], [ %base.03363, %if.end829 ], [ %114, %if.end814.thread ]
  %gvoid.13180 = phi i8 [ %gvoid.13181, %land.lhs.true823 ], [ %gvoid.03362, %if.end829 ], [ %118, %if.end814.thread ]
  %tobool836 = icmp ne i8 %intro.13186, 0
  %cmp838 = icmp ugt i64 %base.13183, 2251799813685247
  %or.cond2429 = select i1 %tobool836, i1 %cmp838, i1 false
  br i1 %or.cond2429, label %for.end.loopexit, label %if.end841

if.end841:                                        ; preds = %if.end834
  %inc = add nuw nsw i8 %count.03365, 1
  %121 = load ptr, ptr %p.23367, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end841, %for.body
  %gvoid.2 = phi i8 [ %gvoid.03362, %for.body ], [ %gvoid.13180, %if.end841 ]
  %base.2 = phi i64 [ %base.03363, %for.body ], [ %base.13183, %if.end841 ]
  %intro.2 = phi i8 [ %intro.03364, %for.body ], [ %intro.13186, %if.end841 ]
  %count.1 = phi i8 [ %count.03365, %for.body ], [ %inc, %if.end841 ]
  %followop.1 = phi ptr [ %followop.03366, %for.body ], [ %121, %if.end841 ]
  %p.2 = load ptr, ptr %p.23367, align 8
  %tobool690.not = icmp eq ptr %p.2, null
  br i1 %tobool690.not, label %for.end.loopexit, label %for.body, !llvm.loop !4

for.end.loopexit:                                 ; preds = %for.inc, %if.end834, %if.end829, %land.lhs.true823, %if.end794, %if.end787, %if.else779, %land.lhs.true747, %lor.lhs.false719, %for.body
  %count.0.lcssa.ph = phi i8 [ %count.1, %for.inc ], [ %count.03365, %lor.lhs.false719 ], [ %count.03365, %land.lhs.true747 ], [ %count.03365, %if.else779 ], [ %count.03365, %if.end787 ], [ %count.03365, %if.end794 ], [ %count.03365, %land.lhs.true823 ], [ %count.03365, %if.end829 ], [ %count.03365, %if.end834 ], [ %count.03365, %for.body ]
  %followop.0.lcssa.ph = phi ptr [ %followop.1, %for.inc ], [ %followop.03366, %lor.lhs.false719 ], [ %followop.03366, %land.lhs.true747 ], [ %followop.03366, %if.else779 ], [ %followop.03366, %if.end787 ], [ %followop.03366, %if.end794 ], [ %followop.03366, %land.lhs.true823 ], [ %followop.03366, %if.end829 ], [ %followop.03366, %if.end834 ], [ %followop.03366, %for.body ]
  %gvoid.3.ph = phi i8 [ %gvoid.2, %for.inc ], [ %gvoid.03362, %lor.lhs.false719 ], [ %gvoid.03362, %land.lhs.true747 ], [ %gvoid.03362, %if.else779 ], [ %gvoid.03362, %if.end787 ], [ %gvoid.03362, %if.end794 ], [ %gvoid.13181, %land.lhs.true823 ], [ %gvoid.03362, %if.end829 ], [ %gvoid.13180, %if.end834 ], [ %gvoid.03362, %for.body ]
  %base.3.ph = phi i64 [ %base.2, %for.inc ], [ %base.03363, %lor.lhs.false719 ], [ %base.03363, %land.lhs.true747 ], [ %base.03363, %if.else779 ], [ %base.03363, %if.end787 ], [ %base.03363, %if.end794 ], [ %base.13184, %land.lhs.true823 ], [ %base.03363, %if.end829 ], [ %base.13183, %if.end834 ], [ %base.03363, %for.body ]
  %intro.3.ph = phi i8 [ %intro.2, %for.inc ], [ %intro.03364, %lor.lhs.false719 ], [ %intro.03364, %land.lhs.true747 ], [ %intro.03364, %if.else779 ], [ %intro.03364, %if.end787 ], [ %intro.03364, %if.end794 ], [ %intro.13187, %land.lhs.true823 ], [ %intro.03364, %if.end829 ], [ %intro.13186, %if.end834 ], [ %intro.03364, %for.body ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end685.thread
  %count.0.lcssa = phi i8 [ 0, %if.end685.thread ], [ %count.0.lcssa.ph, %for.end.loopexit ]
  %followop.0.lcssa = phi ptr [ null, %if.end685.thread ], [ %followop.0.lcssa.ph, %for.end.loopexit ]
  %gvoid.3 = phi i8 [ 0, %if.end685.thread ], [ %gvoid.3.ph, %for.end.loopexit ]
  %base.3 = phi i64 [ 0, %if.end685.thread ], [ %base.3.ph, %for.end.loopexit ]
  %intro.3 = phi i8 [ 0, %if.end685.thread ], [ %intro.3.ph, %for.end.loopexit ]
  %conv844 = zext i8 %count.0.lcssa to i32
  %cmp845 = icmp ne i8 %count.0.lcssa, 0
  %cmp849 = icmp ne i8 %count.0.lcssa, 1
  %or.cond2430 = or i1 %defav.03173, %cmp849
  %or.cond3026 = and i1 %cmp845, %or.cond2430
  br i1 %or.cond3026, label %if.end854, label %sw.epilog2396

if.end854:                                        ; preds = %for.end
  %loadedv855 = trunc nuw i8 %gvoid.3 to i1
  br i1 %loadedv855, label %if.then856, label %if.else1015

if.then856:                                       ; preds = %if.end854
  %op_type857 = getelementptr inbounds nuw i8, ptr %followop.0.lcssa, i64 32
  %bf.load858 = load i16, ptr %op_type857, align 8
  %bf.clear859 = and i16 %bf.load858, 511
  %cmp861 = icmp eq i16 %bf.clear859, 158
  br i1 %cmp861, label %land.lhs.true863, label %sw.epilog2396

land.lhs.true863:                                 ; preds = %if.then856
  %op_flags864 = getelementptr inbounds nuw i8, ptr %followop.0.lcssa, i64 34
  %122 = load i8, ptr %op_flags864, align 2
  %123 = and i8 %122, 3
  %124 = icmp eq i8 %123, 1
  br i1 %124, label %if.then877, label %sw.epilog2396

if.then877:                                       ; preds = %land.lhs.true863
  %125 = load ptr, ptr %followop.0.lcssa, align 8
  %tobool879.not = icmp eq ptr %oldoldop.1.lcssa3521, null
  br i1 %tobool879.not, label %if.end927, label %land.lhs.true880

land.lhs.true880:                                 ; preds = %if.then877
  %op_type881 = getelementptr inbounds nuw i8, ptr %oldoldop.1.lcssa3521, i64 32
  %bf.load882 = load i16, ptr %op_type881, align 8
  %bf.clear883 = and i16 %bf.load882, 511
  %cmp885 = icmp eq i16 %bf.clear883, 390
  br i1 %cmp885, label %land.lhs.true887, label %if.end927

land.lhs.true887:                                 ; preds = %land.lhs.true880
  %op_flags888 = getelementptr inbounds nuw i8, ptr %oldoldop.1.lcssa3521, i64 34
  %126 = load i8, ptr %op_flags888, align 2
  %127 = and i8 %126, 3
  %cmp891 = icmp eq i8 %127, 1
  br i1 %cmp891, label %land.lhs.true893, label %if.end927

land.lhs.true893:                                 ; preds = %land.lhs.true887
  %op_private894 = getelementptr inbounds nuw i8, ptr %oldoldop.1.lcssa3521, i64 35
  %128 = load i8, ptr %op_private894, align 1
  %129 = and i8 %128, -128
  %cmp898 = icmp eq i8 %129, %intro.3
  %tobool904.not = icmp sgt i8 %126, -1
  %or.cond3028 = and i1 %tobool904.not, %cmp898
  br i1 %or.cond3028, label %if.then905, label %if.end927

if.then905:                                       ; preds = %land.lhs.true893
  %and908 = and i8 %128, 127
  %op_targ910 = getelementptr inbounds nuw i8, ptr %oldoldop.1.lcssa3521, i64 24
  %130 = load i64, ptr %op_targ910, align 8
  %conv911 = zext nneg i8 %and908 to i64
  %add912 = add i64 %130, %conv911
  %cmp913 = icmp eq i64 %add912, %base.3
  br i1 %cmp913, label %land.lhs.true915, label %if.end927

land.lhs.true915:                                 ; preds = %if.then905
  %conv916 = zext nneg i8 %and908 to i32
  %sub = sub nsw i32 127, %conv844
  %cmp918 = icmp sgt i32 %sub, %conv916
  br i1 %cmp918, label %if.then920, label %if.end927

if.then920:                                       ; preds = %land.lhs.true915
  %add924 = add i8 %and908, %count.0.lcssa
  br label %if.end927

if.end927:                                        ; preds = %if.then920, %land.lhs.true915, %if.then905, %land.lhs.true893, %land.lhs.true887, %land.lhs.true880, %if.then877
  %reuse.1 = phi i1 [ false, %land.lhs.true893 ], [ false, %land.lhs.true887 ], [ false, %land.lhs.true880 ], [ false, %if.then877 ], [ true, %if.then920 ], [ false, %land.lhs.true915 ], [ false, %if.then905 ]
  %base.5 = phi i64 [ %base.3, %land.lhs.true893 ], [ %base.3, %land.lhs.true887 ], [ %base.3, %land.lhs.true880 ], [ %base.3, %if.then877 ], [ %130, %if.then920 ], [ %base.3, %land.lhs.true915 ], [ %base.3, %if.then905 ]
  %count.3 = phi i8 [ %count.0.lcssa, %land.lhs.true893 ], [ %count.0.lcssa, %land.lhs.true887 ], [ %count.0.lcssa, %land.lhs.true880 ], [ %count.0.lcssa, %if.then877 ], [ %add924, %if.then920 ], [ %count.0.lcssa, %land.lhs.true915 ], [ %count.0.lcssa, %if.then905 ]
  %131 = load ptr, ptr %125, align 8
  %tobool930.not3418 = icmp eq ptr %131, null
  br i1 %tobool930.not3418, label %if.end1006, label %land.lhs.true931.lr.ph

land.lhs.true931.lr.ph:                           ; preds = %if.end927
  %conv962 = zext i8 %intro.3 to i32
  %132 = zext i8 %count.3 to i64
  br label %land.lhs.true931

land.lhs.true931:                                 ; preds = %while.body1000, %land.lhs.true931.lr.ph
  %indvars.iv = phi i64 [ %132, %land.lhs.true931.lr.ph ], [ %indvars.iv.next, %while.body1000 ]
  %133 = phi ptr [ %131, %land.lhs.true931.lr.ph ], [ %140, %while.body1000 ]
  %followop.23420 = phi ptr [ %125, %land.lhs.true931.lr.ph ], [ %138, %while.body1000 ]
  %op_type932 = getelementptr inbounds nuw i8, ptr %133, i64 32
  %bf.load933 = load i16, ptr %op_type932, align 8
  %bf.clear934 = and i16 %bf.load933, 511
  %bf.clear934.off = add nsw i16 %bf.clear934, -9
  %switch3034 = icmp ult i16 %bf.clear934.off, 3
  %134 = trunc nuw i64 %indvars.iv to i8
  br i1 %switch3034, label %land.lhs.true952, label %if.end1006.loopexit

land.lhs.true952:                                 ; preds = %land.lhs.true931
  %op_flags953 = getelementptr inbounds nuw i8, ptr %133, i64 34
  %135 = load i8, ptr %op_flags953, align 2
  %136 = and i8 %135, 3
  %cmp956 = icmp eq i8 %136, 1
  br i1 %cmp956, label %land.lhs.true958, label %if.end1006.loopexit

land.lhs.true958:                                 ; preds = %land.lhs.true952
  %op_private959 = getelementptr inbounds nuw i8, ptr %133, i64 35
  %137 = load i8, ptr %op_private959, align 1
  %conv960 = zext i8 %137 to i32
  %and961 = and i32 %conv960, 128
  %cmp963 = icmp eq i32 %and961, %conv962
  %and968 = and i32 %conv960, 127
  %tobool969.not = icmp eq i32 %and968, 0
  %or.cond3029 = and i1 %cmp963, %tobool969.not
  br i1 %or.cond3029, label %land.lhs.true970, label %if.end1006.loopexit

land.lhs.true970:                                 ; preds = %land.lhs.true958
  %138 = load ptr, ptr %133, align 8
  %tobool972.not = icmp eq ptr %138, null
  br i1 %tobool972.not, label %if.end1006.loopexit, label %land.lhs.true973

land.lhs.true973:                                 ; preds = %land.lhs.true970
  %op_type975 = getelementptr inbounds nuw i8, ptr %138, i64 32
  %bf.load976 = load i16, ptr %op_type975, align 8
  %bf.clear977 = and i16 %bf.load976, 511
  %cmp979 = icmp eq i16 %bf.clear977, 193
  br i1 %cmp979, label %land.lhs.true989, label %lor.lhs.false981

lor.lhs.false981:                                 ; preds = %land.lhs.true973
  %cmp987 = icmp eq i16 %bf.clear977, 194
  %cmp991 = icmp samesign ult i64 %indvars.iv, 127
  %or.cond2431 = select i1 %cmp987, i1 %cmp991, i1 false
  br i1 %or.cond2431, label %land.rhs993, label %if.end1006.loopexit

land.lhs.true989:                                 ; preds = %land.lhs.true973
  %cmp991.old = icmp samesign ult i64 %indvars.iv, 127
  br i1 %cmp991.old, label %land.rhs993, label %if.end1006.loopexit

land.rhs993:                                      ; preds = %land.lhs.true989, %lor.lhs.false981
  %add995 = add i64 %base.5, %indvars.iv
  %op_targ996 = getelementptr inbounds nuw i8, ptr %133, i64 24
  %139 = load i64, ptr %op_targ996, align 8
  %cmp997 = icmp eq i64 %add995, %139
  br i1 %cmp997, label %while.body1000, label %if.end1006.loopexit

while.body1000:                                   ; preds = %land.rhs993
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars = trunc i64 %indvars.iv.next to i8
  %140 = load ptr, ptr %138, align 8
  %tobool930.not = icmp eq ptr %140, null
  br i1 %tobool930.not, label %if.end1006.loopexit, label %land.lhs.true931, !llvm.loop !5

if.end1006.loopexit:                              ; preds = %while.body1000, %land.rhs993, %land.lhs.true989, %lor.lhs.false981, %land.lhs.true970, %land.lhs.true958, %land.lhs.true952, %land.lhs.true931
  %count.4.lcssa.ph = phi i8 [ %134, %land.rhs993 ], [ %indvars, %while.body1000 ], [ %134, %land.lhs.true952 ], [ %134, %land.lhs.true958 ], [ %134, %land.lhs.true970 ], [ %134, %lor.lhs.false981 ], [ %134, %land.lhs.true989 ], [ %134, %land.lhs.true931 ]
  %followop.2.lcssa.ph = phi ptr [ %followop.23420, %land.rhs993 ], [ %138, %while.body1000 ], [ %followop.23420, %land.lhs.true952 ], [ %followop.23420, %land.lhs.true958 ], [ %followop.23420, %land.lhs.true970 ], [ %followop.23420, %lor.lhs.false981 ], [ %followop.23420, %land.lhs.true989 ], [ %followop.23420, %land.lhs.true931 ]
  br label %if.end1006

if.end1006:                                       ; preds = %if.end1006.loopexit, %if.end927
  %count.4.lcssa = phi i8 [ %count.3, %if.end927 ], [ %count.4.lcssa.ph, %if.end1006.loopexit ]
  %followop.2.lcssa = phi ptr [ %125, %if.end927 ], [ %followop.2.lcssa.ph, %if.end1006.loopexit ]
  br i1 %reuse.1, label %if.then1008, label %if.else1015

if.then1008:                                      ; preds = %if.end1006
  store ptr %followop.2.lcssa, ptr %oldoldop.1.lcssa3521, align 8
  %or10123020 = or i8 %count.4.lcssa, %intro.3
  %op_private1014 = getelementptr inbounds nuw i8, ptr %oldoldop.1.lcssa3521, i64 35
  store i8 %or10123020, ptr %op_private1014, align 1
  br label %for.inc2416

if.else1015:                                      ; preds = %if.end1006, %if.end854
  %followop.33199 = phi ptr [ %followop.2.lcssa, %if.end1006 ], [ %followop.0.lcssa, %if.end854 ]
  %count.53198 = phi i8 [ %count.4.lcssa, %if.end1006 ], [ %count.0.lcssa, %if.end854 ]
  %base.63197 = phi i64 [ %base.5, %if.end1006 ], [ %base.3, %if.end854 ]
  store ptr %followop.33199, ptr %o.addr.2.lcssa3472, align 8
  %op_type1018 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3472, i64 32
  %bf.load1019 = load i16, ptr %op_type1018, align 8
  %bf.clear1020 = and i16 %bf.load1019, -512
  %bf.set1021 = or disjoint i16 %bf.clear1020, 390
  store i16 %bf.set1021, ptr %op_type1018, align 8
  %141 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PL_ppaddr, i64 3120), align 8
  %op_ppaddr1022 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3472, i64 16
  store ptr %141, ptr %op_ppaddr1022, align 8
  %op_targ1025 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3472, i64 24
  store i64 %base.63197, ptr %op_targ1025, align 8
  %or10283018 = or i8 %count.53198, %intro.3
  %op_private1030 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3472, i64 35
  store i8 %or10283018, ptr %op_private1030, align 1
  %op_flags1031 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3472, i64 34
  %142 = load i8, ptr %op_flags1031, align 2
  %143 = and i8 %142, 124
  %loadedv855.mask = and i8 %gvoid.3, 1
  %cond1039 = select i1 %defav.03173, i8 -128, i8 0
  %or10363019 = or disjoint i8 %loadedv855.mask, %cond1039
  %or1040 = or disjoint i8 %or10363019, %143
  store i8 %or1040, ptr %op_flags1031, align 2
  br label %sw.epilog2396

sw.bb1052:                                        ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %tobool1053.not = icmp eq ptr %oldop.1, null
  br i1 %tobool1053.not, label %if.end1068, label %land.lhs.true1054

land.lhs.true1054:                                ; preds = %sw.bb1052
  %op_private1055 = getelementptr inbounds nuw i8, ptr %o.addr.2, i64 35
  %144 = load i8, ptr %op_private1055, align 1
  %cmp1057 = icmp eq i8 %144, -64
  br i1 %cmp1057, label %land.lhs.true1059, label %if.end1068

land.lhs.true1059:                                ; preds = %land.lhs.true1054
  %op_flags1060 = getelementptr inbounds nuw i8, ptr %o.addr.2, i64 34
  %145 = load i8, ptr %op_flags1060, align 2
  %146 = and i8 %145, 3
  %cmp1063 = icmp eq i8 %146, 1
  br i1 %cmp1063, label %redo_nextstate, label %if.end1068

if.end1068:                                       ; preds = %land.lhs.true1059, %land.lhs.true1054, %sw.bb1052
  %cmp1073.not = icmp eq i16 %bf.clear161, 10
  br i1 %cmp1073.not, label %cond.end1104, label %sw.epilog2396.loopexit3442

lor.lhs.false1084:                                ; preds = %sw.epilog
  %147 = load ptr, ptr %o.addr.2, align 8
  %op_type1086 = getelementptr inbounds nuw i8, ptr %147, i64 32
  %bf.load1087 = load i16, ptr %op_type1086, align 8
  %bf.clear1088 = and i16 %bf.load1087, 511
  %cmp1090 = icmp eq i16 %bf.clear1088, 135
  br i1 %cmp1090, label %cond.false1101, label %if.end1226

cond.false1101:                                   ; preds = %lor.lhs.false1084
  %148 = load ptr, ptr %o.addr.2, align 8
  br label %cond.end1104

cond.end1104:                                     ; preds = %cond.false1101, %if.end1068
  %cond1105.in = phi ptr [ %148, %cond.false1101 ], [ %o.addr.2, %if.end1068 ]
  %cond1105 = load ptr, ptr %cond1105.in, align 8
  %tobool1106.not = icmp eq ptr %cond1105, null
  br i1 %tobool1106.not, label %if.end1213, label %land.lhs.true1107

land.lhs.true1107:                                ; preds = %cond.end1104
  %op_type1108 = getelementptr inbounds nuw i8, ptr %cond1105, i64 32
  %bf.load1109 = load i16, ptr %op_type1108, align 8
  %bf.clear1110 = and i16 %bf.load1109, 511
  %cmp1112 = icmp eq i16 %bf.clear1110, 5
  br i1 %cmp1112, label %land.lhs.true1114, label %if.end1213

land.lhs.true1114:                                ; preds = %land.lhs.true1107
  %149 = load ptr, ptr %cond1105, align 8
  store ptr %149, ptr @PL_op, align 8
  %tobool1116.not = icmp eq ptr %149, null
  br i1 %tobool1116.not, label %if.end1213, label %land.lhs.true1117

land.lhs.true1117:                                ; preds = %land.lhs.true1114
  %150 = load ptr, ptr %cond1105, align 8
  %op_type1119 = getelementptr inbounds nuw i8, ptr %150, i64 32
  %bf.load1120 = load i16, ptr %op_type1119, align 8
  %bf.clear1121 = and i16 %bf.load1120, 511
  %cmp1123 = icmp eq i16 %bf.clear1121, 138
  br i1 %cmp1123, label %land.lhs.true1125, label %if.end1213

land.lhs.true1125:                                ; preds = %land.lhs.true1117
  %op_private1127 = getelementptr inbounds nuw i8, ptr %150, i64 35
  %151 = load i8, ptr %op_private1127, align 1
  %tobool1130.not = icmp ult i8 %151, 8
  br i1 %tobool1130.not, label %land.lhs.true1131, label %if.end1213

land.lhs.true1131:                                ; preds = %land.lhs.true1125
  %op_sv1132 = getelementptr inbounds nuw i8, ptr %cond1105, i64 40
  %152 = load ptr, ptr %op_sv1132, align 8
  %sv_flags1133 = getelementptr inbounds nuw i8, ptr %152, i64 12
  %153 = load i32, ptr %sv_flags1133, align 4
  %and1134 = and i32 %153, 2097408
  %cmp1135 = icmp eq i32 %and1134, 256
  br i1 %cmp1135, label %cond.true1137, label %cond.false1141

cond.true1137:                                    ; preds = %land.lhs.true1131
  %154 = load ptr, ptr %152, align 8
  %xiv_u1140 = getelementptr inbounds nuw i8, ptr %154, i64 32
  %155 = load i64, ptr %xiv_u1140, align 8
  br label %cond.end1144

cond.false1141:                                   ; preds = %land.lhs.true1131
  %call1143 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %152, i32 noundef 2) #5
  br label %cond.end1144

cond.end1144:                                     ; preds = %cond.false1141, %cond.true1137
  %cond1145 = phi i64 [ %155, %cond.true1137 ], [ %call1143, %cond.false1141 ]
  %156 = add i64 %cond1145, 128
  %or.cond2433 = icmp ult i64 %156, 256
  br i1 %or.cond2433, label %if.then1151, label %if.end1213

if.then1151:                                      ; preds = %cond.end1144
  %op_private1152 = getelementptr inbounds nuw i8, ptr %cond1105, i64 35
  %157 = load i8, ptr %op_private1152, align 1
  %158 = and i8 %157, 8
  %tobool1155.not = icmp eq i8 %158, 0
  br i1 %tobool1155.not, label %if.end1157, label %if.then1156

if.then1156:                                      ; preds = %if.then1151
  %159 = load ptr, ptr %op_sv1132, align 8
  %call.i = tail call ptr (ptr, ...) @Perl_mess(ptr noundef nonnull @.str.164, ptr noundef %159) #5
  tail call void @Perl_qerror(ptr noundef %call.i) #5
  %160 = load i8, ptr %op_private1152, align 1
  %161 = and i8 %160, -9
  store i8 %161, ptr %op_private1152, align 1
  br label %if.end1157

if.end1157:                                       ; preds = %if.then1156, %if.then1151
  %bf.load1159 = load i16, ptr %op_opt14, align 8
  %bf.clear1160 = and i16 %bf.load1159, 511
  %cmp1162 = icmp eq i16 %bf.clear1160, 7
  br i1 %cmp1162, label %if.then1164, label %if.end1166

if.then1164:                                      ; preds = %if.end1157
  %162 = load ptr, ptr %o.addr.2, align 8
  %op_type.i3038 = getelementptr inbounds nuw i8, ptr %162, i64 32
  %bf.load.i3039 = load i16, ptr %op_type.i3038, align 8
  %bf.clear.i3040 = and i16 %bf.load.i3039, 511
  %cmp.i3041 = icmp eq i16 %bf.clear.i3040, 0
  br i1 %cmp.i3041, label %if.end1166, label %if.end.i3042

if.end.i3042:                                     ; preds = %if.then1164
  tail call void @Perl_op_clear(ptr noundef nonnull %162)
  %bf.load2.i3043 = load i16, ptr %op_type.i3038, align 8
  %bf.clear3.i3044 = and i16 %bf.load2.i3043, 511
  %conv.i3045 = zext nneg i16 %bf.clear3.i3044 to i64
  %op_targ.i3046 = getelementptr inbounds nuw i8, ptr %162, i64 24
  store i64 %conv.i3045, ptr %op_targ.i3046, align 8
  %bf.clear7.i3047 = and i16 %bf.load2.i3043, -512
  store i16 %bf.clear7.i3047, ptr %op_type.i3038, align 8
  %163 = load ptr, ptr @PL_ppaddr, align 8
  %op_ppaddr.i3048 = getelementptr inbounds nuw i8, ptr %162, i64 16
  store ptr %163, ptr %op_ppaddr.i3048, align 8
  br label %if.end1166

if.end1166:                                       ; preds = %if.end.i3042, %if.then1164, %if.end1157
  %164 = load ptr, ptr %cond1105, align 8
  %op_type.i3050 = getelementptr inbounds nuw i8, ptr %164, i64 32
  %bf.load.i3051 = load i16, ptr %op_type.i3050, align 8
  %bf.clear.i3052 = and i16 %bf.load.i3051, 511
  %cmp.i3053 = icmp eq i16 %bf.clear.i3052, 0
  br i1 %cmp.i3053, label %Perl_op_null.exit3061, label %if.end.i3054

if.end.i3054:                                     ; preds = %if.end1166
  tail call void @Perl_op_clear(ptr noundef nonnull %164)
  %bf.load2.i3055 = load i16, ptr %op_type.i3050, align 8
  %bf.clear3.i3056 = and i16 %bf.load2.i3055, 511
  %conv.i3057 = zext nneg i16 %bf.clear3.i3056 to i64
  %op_targ.i3058 = getelementptr inbounds nuw i8, ptr %164, i64 24
  store i64 %conv.i3057, ptr %op_targ.i3058, align 8
  %bf.clear7.i3059 = and i16 %bf.load2.i3055, -512
  store i16 %bf.clear7.i3059, ptr %op_type.i3050, align 8
  %165 = load ptr, ptr @PL_ppaddr, align 8
  %op_ppaddr.i3060 = getelementptr inbounds nuw i8, ptr %164, i64 16
  store ptr %165, ptr %op_ppaddr.i3060, align 8
  br label %Perl_op_null.exit3061

Perl_op_null.exit3061:                            ; preds = %if.end.i3054, %if.end1166
  %bf.load.i3063 = load i16, ptr %op_type1108, align 8
  %bf.clear.i3064 = and i16 %bf.load.i3063, 511
  %cmp.i3065 = icmp eq i16 %bf.clear.i3064, 0
  br i1 %cmp.i3065, label %Perl_op_null.exit3073, label %if.end.i3066

if.end.i3066:                                     ; preds = %Perl_op_null.exit3061
  tail call void @Perl_op_clear(ptr noundef nonnull %cond1105)
  %bf.load2.i3067 = load i16, ptr %op_type1108, align 8
  %bf.clear3.i3068 = and i16 %bf.load2.i3067, 511
  %conv.i3069 = zext nneg i16 %bf.clear3.i3068 to i64
  %op_targ.i3070 = getelementptr inbounds nuw i8, ptr %cond1105, i64 24
  store i64 %conv.i3069, ptr %op_targ.i3070, align 8
  %bf.clear7.i3071 = and i16 %bf.load2.i3067, -512
  store i16 %bf.clear7.i3071, ptr %op_type1108, align 8
  %166 = load ptr, ptr @PL_ppaddr, align 8
  %op_ppaddr.i3072 = getelementptr inbounds nuw i8, ptr %cond1105, i64 16
  store ptr %166, ptr %op_ppaddr.i3072, align 8
  br label %Perl_op_null.exit3073

Perl_op_null.exit3073:                            ; preds = %if.end.i3066, %Perl_op_null.exit3061
  %167 = load ptr, ptr %cond1105, align 8
  %op_flags1169 = getelementptr inbounds nuw i8, ptr %167, i64 34
  %168 = load i8, ptr %op_flags1169, align 2
  %169 = and i8 %168, 32
  %op_flags1172 = getelementptr inbounds nuw i8, ptr %o.addr.2, i64 34
  %170 = load i8, ptr %op_flags1172, align 2
  %or11743015 = or i8 %170, %169
  store i8 %or11743015, ptr %op_flags1172, align 2
  %171 = load ptr, ptr %cond1105, align 8
  %172 = load ptr, ptr %171, align 8
  store ptr %172, ptr %o.addr.2, align 8
  %173 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PL_ppaddr, i64 1088), align 8
  %op_ppaddr1179 = getelementptr inbounds nuw i8, ptr %o.addr.2, i64 16
  store ptr %173, ptr %op_ppaddr1179, align 8
  %conv1180 = trunc nsw i64 %cond1145 to i8
  %op_private1181 = getelementptr inbounds nuw i8, ptr %o.addr.2, i64 35
  store i8 %conv1180, ptr %op_private1181, align 1
  %bf.load1183 = load i16, ptr %op_opt14, align 8
  %bf.clear1184 = and i16 %bf.load1183, 511
  %cmp1186 = icmp eq i16 %bf.clear1184, 7
  br i1 %cmp1186, label %if.then1188, label %if.else1207

if.then1188:                                      ; preds = %Perl_op_null.exit3073
  %op_sv1189 = getelementptr inbounds nuw i8, ptr %o.addr.2, i64 40
  %174 = load ptr, ptr %op_sv1189, align 8
  %sv_u = getelementptr inbounds nuw i8, ptr %174, i64 16
  %175 = load ptr, ptr %sv_u, align 8
  %gp_av = getelementptr inbounds nuw i8, ptr %175, i64 40
  %176 = load ptr, ptr %gp_av, align 8
  %tobool1191.not = icmp eq ptr %176, null
  br i1 %tobool1191.not, label %cond.false1196, label %cond.end1201

cond.false1196:                                   ; preds = %if.then1188
  %call1197 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %174, i32 noundef 11) #5
  br label %cond.end1201

cond.end1201:                                     ; preds = %cond.false1196, %if.then1188
  %bf.load1204 = load i16, ptr %op_opt14, align 8
  %bf.clear1205 = and i16 %bf.load1204, -512
  %bf.set1206 = or disjoint i16 %bf.clear1205, 136
  br label %if.end1212

if.else1207:                                      ; preds = %Perl_op_null.exit3073
  %bf.clear1210 = and i16 %bf.load1183, -512
  %bf.set1211 = or disjoint i16 %bf.clear1210, 137
  br label %if.end1212

if.end1212:                                       ; preds = %if.else1207, %cond.end1201
  %storemerge = phi i16 [ %bf.set1211, %if.else1207 ], [ %bf.set1206, %cond.end1201 ]
  store i16 %storemerge, ptr %op_opt14, align 8
  br label %if.end1213

if.end1213:                                       ; preds = %if.end1212, %cond.end1144, %land.lhs.true1125, %land.lhs.true1117, %land.lhs.true1114, %land.lhs.true1107, %cond.end1104
  %bf.load1215 = load i16, ptr %op_opt14, align 8
  %bf.clear1216 = and i16 %bf.load1215, 511
  %cmp1218.not = icmp eq i16 %bf.clear1216, 7
  br i1 %cmp1218.not, label %if.end1226, label %sw.epilog2396.loopexit3442

if.end1226:                                       ; preds = %if.end1213, %lor.lhs.false1084
  %tobool1227.not = icmp eq ptr %oldop.1, null
  br i1 %tobool1227.not, label %if.else1281, label %land.lhs.true1228

land.lhs.true1228:                                ; preds = %if.end1226
  %177 = load ptr, ptr %o.addr.2, align 8
  %op_type1230 = getelementptr inbounds nuw i8, ptr %177, i64 32
  %bf.load1231 = load i16, ptr %op_type1230, align 8
  %bf.clear1232 = and i16 %bf.load1231, 511
  switch i16 %bf.clear1232, label %if.else1281 [
    i16 15, label %land.lhs.true1252
    i16 135, label %land.lhs.true1252
    i16 149, label %land.lhs.true1252
  ]

land.lhs.true1252:                                ; preds = %land.lhs.true1228, %land.lhs.true1228, %land.lhs.true1228
  %op_flags1254 = getelementptr inbounds nuw i8, ptr %177, i64 34
  %178 = load i8, ptr %op_flags1254, align 2
  %179 = and i8 %178, 3
  %cmp1257 = icmp eq i8 %179, 1
  br i1 %cmp1257, label %land.lhs.true1259, label %if.else1281

land.lhs.true1259:                                ; preds = %land.lhs.true1252
  %op_private1261 = getelementptr inbounds nuw i8, ptr %177, i64 35
  %180 = load i8, ptr %op_private1261, align 1
  %tobool1264.not = icmp sgt i8 %180, -1
  br i1 %tobool1264.not, label %redo_nextstate, label %if.else1281

redo_nextstate:                                   ; preds = %land.lhs.true1259, %land.lhs.true1059
  %storemerge3016.in = phi ptr [ %o.addr.2, %land.lhs.true1059 ], [ %177, %land.lhs.true1259 ]
  %storemerge3016 = load ptr, ptr %storemerge3016.in, align 8
  store ptr %storemerge3016, ptr %oldop.1, align 8
  %op_type1269 = getelementptr inbounds nuw i8, ptr %oldop.1, i64 32
  %bf.load1270 = load i16, ptr %op_type1269, align 8
  %bf.clear1271 = and i16 %bf.load1270, 511
  %cmp1273 = icmp eq i16 %bf.clear1271, 193
  br i1 %cmp1273, label %if.then1275, label %sw.epilog2396.loopexit3442

if.then1275:                                      ; preds = %redo_nextstate
  %bf.clear1278 = and i16 %bf.load1270, -831
  store i16 %bf.clear1278, ptr %op_type1269, align 8
  br label %redo

if.else1281:                                      ; preds = %land.lhs.true1259, %land.lhs.true1252, %land.lhs.true1228, %if.end1226
  %oldoldop.1.lcssa3535 = phi ptr [ %oldoldop.1, %land.lhs.true1228 ], [ %oldoldop.1, %land.lhs.true1259 ], [ %oldoldop.1, %land.lhs.true1252 ], [ %oldoldop.1, %if.end1226 ]
  %oldop.1.lcssa3510 = phi ptr [ %oldop.1, %land.lhs.true1228 ], [ %oldop.1, %land.lhs.true1259 ], [ %oldop.1, %land.lhs.true1252 ], [ %oldop.1, %if.end1226 ]
  %o.addr.2.lcssa3486 = phi ptr [ %o.addr.2, %land.lhs.true1228 ], [ %o.addr.2, %land.lhs.true1259 ], [ %o.addr.2, %land.lhs.true1252 ], [ %o.addr.2, %if.end1226 ]
  %op_opt14.lcssa3463 = phi ptr [ %op_opt14, %land.lhs.true1228 ], [ %op_opt14, %land.lhs.true1259 ], [ %op_opt14, %land.lhs.true1252 ], [ %op_opt14, %if.end1226 ]
  %181 = load ptr, ptr %o.addr.2.lcssa3486, align 8
  %op_type1283 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %bf.load1284 = load i16, ptr %op_type1283, align 8
  %bf.clear1285 = and i16 %bf.load1284, 511
  switch i16 %bf.clear1285, label %sw.epilog2396 [
    i16 15, label %if.then1289
    i16 26, label %land.lhs.true1325
  ]

if.then1289:                                      ; preds = %if.else1281
  %op_private1291 = getelementptr inbounds nuw i8, ptr %181, i64 35
  %182 = load i8, ptr %op_private1291, align 1
  %183 = and i8 %182, 48
  %tobool1294.not = icmp eq i8 %183, 0
  br i1 %tobool1294.not, label %Perl_op_null.exit3085, label %sw.epilog2396

Perl_op_null.exit3085:                            ; preds = %if.then1289
  tail call void @Perl_op_clear(ptr noundef nonnull %181)
  %bf.load2.i3079 = load i16, ptr %op_type1283, align 8
  %bf.clear3.i3080 = and i16 %bf.load2.i3079, 511
  %conv.i3081 = zext nneg i16 %bf.clear3.i3080 to i64
  %op_targ.i3082 = getelementptr inbounds nuw i8, ptr %181, i64 24
  store i64 %conv.i3081, ptr %op_targ.i3082, align 8
  %bf.clear7.i3083 = and i16 %bf.load2.i3079, -512
  store i16 %bf.clear7.i3083, ptr %op_type1283, align 8
  %184 = load ptr, ptr @PL_ppaddr, align 8
  %op_ppaddr.i3084 = getelementptr inbounds nuw i8, ptr %181, i64 16
  store ptr %184, ptr %op_ppaddr.i3084, align 8
  %185 = load ptr, ptr %o.addr.2.lcssa3486, align 8
  %op_private1298 = getelementptr inbounds nuw i8, ptr %185, i64 35
  %186 = load i8, ptr %op_private1298, align 1
  %187 = and i8 %186, -64
  %op_private1301 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3486, i64 35
  %188 = load i8, ptr %op_private1301, align 1
  %or13033017 = or i8 %188, %187
  store i8 %or13033017, ptr %op_private1301, align 1
  %189 = load ptr, ptr %185, align 8
  store ptr %189, ptr %o.addr.2.lcssa3486, align 8
  %bf.load1310 = load i16, ptr %op_opt14.lcssa3463, align 8
  %bf.clear1311 = and i16 %bf.load1310, -512
  %bf.set1312 = or disjoint i16 %bf.clear1311, 6
  store i16 %bf.set1312, ptr %op_opt14.lcssa3463, align 8
  %190 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PL_ppaddr, i64 48), align 8
  %op_ppaddr1313 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3486, i64 16
  store ptr %190, ptr %op_ppaddr1313, align 8
  br label %sw.epilog2396

land.lhs.true1325:                                ; preds = %if.else1281
  %191 = load ptr, ptr %181, align 8
  %op_type1328 = getelementptr inbounds nuw i8, ptr %191, i64 32
  %bf.load1329 = load i16, ptr %op_type1328, align 8
  %bf.clear1330 = and i16 %bf.load1329, 511
  %cmp1332 = icmp eq i16 %bf.clear1330, 67
  br i1 %cmp1332, label %land.lhs.true1334, label %sw.epilog2396

land.lhs.true1334:                                ; preds = %land.lhs.true1325
  %op_flags1337 = getelementptr inbounds nuw i8, ptr %191, i64 34
  %192 = load i8, ptr %op_flags1337, align 2
  %193 = and i8 %192, 64
  %tobool1340.not = icmp eq i8 %193, 0
  br i1 %tobool1340.not, label %sw.epilog2396, label %do.body1342

do.body1342:                                      ; preds = %land.lhs.true1334
  %bf.load1344 = load i16, ptr %op_opt14.lcssa3463, align 8
  %bf.clear1345 = and i16 %bf.load1344, -512
  %bf.set1346 = or disjoint i16 %bf.clear1345, 27
  store i16 %bf.set1346, ptr %op_opt14.lcssa3463, align 8
  %194 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PL_ppaddr, i64 216), align 8
  %op_ppaddr1347 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3486, i64 16
  store ptr %194, ptr %op_ppaddr1347, align 8
  %op_flags1350 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3486, i64 34
  %195 = load i8, ptr %op_flags1350, align 2
  %196 = or i8 %195, 64
  store i8 %196, ptr %op_flags1350, align 2
  %197 = load ptr, ptr %181, align 8
  %op_type.i3086 = getelementptr inbounds nuw i8, ptr %197, i64 32
  %bf.load.i3087 = load i16, ptr %op_type.i3086, align 8
  %bf.clear.i3088 = and i16 %bf.load.i3087, 511
  %cmp.i3089 = icmp eq i16 %bf.clear.i3088, 0
  br i1 %cmp.i3089, label %Perl_op_null.exit3097, label %if.end.i3090

if.end.i3090:                                     ; preds = %do.body1342
  tail call void @Perl_op_clear(ptr noundef nonnull %197)
  %bf.load2.i3091 = load i16, ptr %op_type.i3086, align 8
  %bf.clear3.i3092 = and i16 %bf.load2.i3091, 511
  %conv.i3093 = zext nneg i16 %bf.clear3.i3092 to i64
  %op_targ.i3094 = getelementptr inbounds nuw i8, ptr %197, i64 24
  store i64 %conv.i3093, ptr %op_targ.i3094, align 8
  %bf.clear7.i3095 = and i16 %bf.load2.i3091, -512
  store i16 %bf.clear7.i3095, ptr %op_type.i3086, align 8
  %198 = load ptr, ptr @PL_ppaddr, align 8
  %op_ppaddr.i3096 = getelementptr inbounds nuw i8, ptr %197, i64 16
  store ptr %198, ptr %op_ppaddr.i3096, align 8
  br label %Perl_op_null.exit3097

Perl_op_null.exit3097:                            ; preds = %if.end.i3090, %do.body1342
  %199 = load ptr, ptr %o.addr.2.lcssa3486, align 8
  %op_type.i3098 = getelementptr inbounds nuw i8, ptr %199, i64 32
  %bf.load.i3099 = load i16, ptr %op_type.i3098, align 8
  %bf.clear.i3100 = and i16 %bf.load.i3099, 511
  %cmp.i3101 = icmp eq i16 %bf.clear.i3100, 0
  br i1 %cmp.i3101, label %sw.epilog2396, label %if.end.i3102

if.end.i3102:                                     ; preds = %Perl_op_null.exit3097
  tail call void @Perl_op_clear(ptr noundef nonnull %199)
  %bf.load2.i3103 = load i16, ptr %op_type.i3098, align 8
  %bf.clear3.i3104 = and i16 %bf.load2.i3103, 511
  %conv.i3105 = zext nneg i16 %bf.clear3.i3104 to i64
  %op_targ.i3106 = getelementptr inbounds nuw i8, ptr %199, i64 24
  store i64 %conv.i3105, ptr %op_targ.i3106, align 8
  %bf.clear7.i3107 = and i16 %bf.load2.i3103, -512
  store i16 %bf.clear7.i3107, ptr %op_type.i3098, align 8
  %200 = load ptr, ptr @PL_ppaddr, align 8
  %op_ppaddr.i3108 = getelementptr inbounds nuw i8, ptr %199, i64 16
  store ptr %200, ptr %op_ppaddr.i3108, align 8
  br label %sw.epilog2396

sw.bb1360:                                        ; preds = %sw.epilog
  %oldoldop.1.lcssa3522 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3497 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3473 = phi ptr [ %o.addr.2, %sw.epilog ]
  %201 = load ptr, ptr @PL_op, align 8
  %op_first1361 = getelementptr inbounds nuw i8, ptr %201, i64 40
  %202 = load ptr, ptr %op_first1361, align 8
  %op_type1362 = getelementptr inbounds nuw i8, ptr %202, i64 32
  %bf.load1363 = load i16, ptr %op_type1362, align 8
  %bf.clear1364 = and i16 %bf.load1363, 511
  switch i16 %bf.clear1364, label %sw.epilog2396 [
    i16 11, label %if.then1419
    i16 149, label %if.then1419
    i16 2, label %land.lhs.true1386
  ]

land.lhs.true1386:                                ; preds = %sw.bb1360
  %op_flags1388 = getelementptr inbounds nuw i8, ptr %202, i64 34
  %203 = load i8, ptr %op_flags1388, align 2
  %204 = and i8 %203, 4
  %tobool1391.not = icmp eq i8 %204, 0
  br i1 %tobool1391.not, label %sw.epilog2396, label %land.lhs.true1392

land.lhs.true1392:                                ; preds = %land.lhs.true1386
  %op_first1394 = getelementptr inbounds nuw i8, ptr %202, i64 40
  %205 = load ptr, ptr %op_first1394, align 8
  %op_type1395 = getelementptr inbounds nuw i8, ptr %205, i64 32
  %bf.load1396 = load i16, ptr %op_type1395, align 8
  %bf.clear1397 = and i16 %bf.load1396, 511
  switch i16 %bf.clear1397, label %sw.epilog2396 [
    i16 11, label %if.then1419
    i16 149, label %if.then1419
  ]

if.then1419:                                      ; preds = %land.lhs.true1392, %land.lhs.true1392, %sw.bb1360, %sw.bb1360
  %cond1417 = phi ptr [ %202, %sw.bb1360 ], [ %202, %sw.bb1360 ], [ %205, %land.lhs.true1392 ], [ %205, %land.lhs.true1392 ]
  %op_private1420 = getelementptr inbounds nuw i8, ptr %cond1417, i64 35
  %206 = load i8, ptr %op_private1420, align 1
  %207 = or i8 %206, 32
  store i8 %207, ptr %op_private1420, align 1
  br label %sw.epilog2396

sw.bb1425:                                        ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %oldoldop.1.lcssa3523 = phi ptr [ %oldoldop.1, %sw.epilog ], [ %oldoldop.1, %sw.epilog ], [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3498 = phi ptr [ %oldop.1, %sw.epilog ], [ %oldop.1, %sw.epilog ], [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3474 = phi ptr [ %o.addr.2, %sw.epilog ], [ %o.addr.2, %sw.epilog ], [ %o.addr.2, %sw.epilog ]
  %op_opt14.lcssa3451 = phi ptr [ %op_opt14, %sw.epilog ], [ %op_opt14, %sw.epilog ], [ %op_opt14, %sw.epilog ]
  %208 = load ptr, ptr @PL_op, align 8
  %op_first1426 = getelementptr inbounds nuw i8, ptr %208, i64 40
  %209 = load ptr, ptr %op_first1426, align 8
  %op_sibling1427 = getelementptr inbounds nuw i8, ptr %209, i64 8
  %210 = load ptr, ptr %op_sibling1427, align 8
  %op_other = getelementptr inbounds nuw i8, ptr %208, i64 48
  %op_other.promoted = load ptr, ptr %op_other, align 8
  %op_type14303351 = getelementptr inbounds nuw i8, ptr %op_other.promoted, i64 32
  %bf.load14313352 = load i16, ptr %op_type14303351, align 8
  %bf.clear14323353 = and i16 %bf.load14313352, 511
  %cmp14343354 = icmp eq i16 %bf.clear14323353, 0
  br i1 %cmp14343354, label %while.body1436.preheader, label %while.cond1441thread-pre-split

while.body1436.preheader:                         ; preds = %sw.bb1425
  br label %while.body1436

while.body1436:                                   ; preds = %while.body1436, %while.body1436.preheader
  %211 = phi ptr [ %212, %while.body1436 ], [ %op_other.promoted, %while.body1436.preheader ]
  %212 = load ptr, ptr %211, align 8
  store ptr %212, ptr %op_other, align 8
  %op_type1430 = getelementptr inbounds nuw i8, ptr %212, i64 32
  %bf.load1431 = load i16, ptr %op_type1430, align 8
  %bf.clear1432 = and i16 %bf.load1431, 511
  %cmp1434 = icmp eq i16 %bf.clear1432, 0
  br i1 %cmp1434, label %while.body1436, label %while.cond1441thread-pre-split.loopexit, !llvm.loop !6

while.cond1441thread-pre-split.loopexit:          ; preds = %while.body1436
  br label %while.cond1441thread-pre-split

while.cond1441thread-pre-split:                   ; preds = %while.cond1441thread-pre-split.loopexit, %sw.bb1425
  %.pr3205 = load ptr, ptr %o.addr.2.lcssa3474, align 8
  %tobool1443.not3355 = icmp eq ptr %.pr3205, null
  br i1 %tobool1443.not3355, label %do.body1513, label %land.rhs1444.preheader

land.rhs1444.preheader:                           ; preds = %while.cond1441thread-pre-split
  br label %land.rhs1444

land.rhs1444:                                     ; preds = %while.body1464, %land.rhs1444.preheader
  %213 = phi ptr [ %214, %while.body1464 ], [ %.pr3205, %land.rhs1444.preheader ]
  %bf.load1446 = load i16, ptr %op_opt14.lcssa3451, align 8
  %bf.clear1447 = and i16 %bf.load1446, 511
  %op_type1450 = getelementptr inbounds nuw i8, ptr %213, i64 32
  %bf.load1451 = load i16, ptr %op_type1450, align 8
  %bf.clear1452 = and i16 %bf.load1451, 511
  %cmp1454 = icmp eq i16 %bf.clear1447, %bf.clear1452
  %cmp1461 = icmp eq i16 %bf.clear1452, 0
  %or.cond3030 = or i1 %cmp1454, %cmp1461
  br i1 %or.cond3030, label %while.body1464, label %land.lhs.true1471

while.body1464:                                   ; preds = %land.rhs1444
  %214 = load ptr, ptr %213, align 8
  store ptr %214, ptr %o.addr.2.lcssa3474, align 8
  %tobool1443.not = icmp eq ptr %214, null
  br i1 %tobool1443.not, label %do.body1513.loopexit, label %land.rhs1444, !llvm.loop !7

land.lhs.true1471:                                ; preds = %land.rhs1444
  %.lcssa = phi ptr [ %213, %land.rhs1444 ]
  %bf.load1473 = load i16, ptr %op_opt14.lcssa3451, align 8
  %bf.clear1474 = and i16 %bf.load1473, 511
  switch i16 %bf.clear1474, label %do.body1513 [
    i16 176, label %land.lhs.true1478
    i16 177, label %land.lhs.true1493
  ]

land.lhs.true1478:                                ; preds = %land.lhs.true1471
  %op_type1480 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32
  %bf.load1481 = load i16, ptr %op_type1480, align 8
  %bf.clear1482 = and i16 %bf.load1481, 511
  %cmp1484 = icmp eq i16 %bf.clear1482, 177
  br i1 %cmp1484, label %land.lhs.true1501, label %do.body1513

land.lhs.true1493:                                ; preds = %land.lhs.true1471
  %op_type1495 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32
  %bf.load1496 = load i16, ptr %op_type1495, align 8
  %bf.clear1497 = and i16 %bf.load1496, 511
  %cmp1499 = icmp eq i16 %bf.clear1497, 176
  br i1 %cmp1499, label %land.lhs.true1501, label %do.body1513

land.lhs.true1501:                                ; preds = %land.lhs.true1493, %land.lhs.true1478
  %op_flags1503 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 34
  %215 = load i8, ptr %op_flags1503, align 2
  %216 = and i8 %215, 3
  %cmp1506 = icmp eq i8 %216, 1
  br i1 %cmp1506, label %if.then1508, label %do.body1513

if.then1508:                                      ; preds = %land.lhs.true1501
  %op_other1510 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 48
  %217 = load ptr, ptr %op_other1510, align 8
  store ptr %217, ptr %o.addr.2.lcssa3474, align 8
  br label %do.body1513

do.body1513.loopexit:                             ; preds = %while.body1464
  br label %do.body1513

do.body1513:                                      ; preds = %do.body1513.loopexit, %if.then1508, %land.lhs.true1501, %land.lhs.true1493, %land.lhs.true1478, %land.lhs.true1471, %while.cond1441thread-pre-split
  %cmp1514 = icmp eq i32 %defer_ix.0, 3
  br i1 %cmp1514, label %if.then1516, label %if.end1523

if.then1516:                                      ; preds = %do.body1513
  %idxprom1518 = sext i32 %defer_base.0 to i64
  %arrayidx1519 = getelementptr inbounds ptr, ptr %defer_queue, i64 %idxprom1518
  %218 = load ptr, ptr %arrayidx1519, align 8
  %219 = load ptr, ptr @PL_rpeepp, align 8
  %220 = load ptr, ptr %218, align 8
  tail call void %219(ptr noundef %220) #5
  %.pr.i3110 = load ptr, ptr %218, align 8
  %tobool.not23.i3111 = icmp eq ptr %.pr.i3110, null
  br i1 %tobool.not23.i3111, label %S_prune_chain_head.exit3118, label %land.rhs.i3112.preheader

land.rhs.i3112.preheader:                         ; preds = %if.then1516
  br label %land.rhs.i3112

land.rhs.i3112:                                   ; preds = %while.body.i3116, %land.rhs.i3112.preheader
  %221 = phi ptr [ %222, %while.body.i3116 ], [ %.pr.i3110, %land.rhs.i3112.preheader ]
  %op_type.i3113 = getelementptr inbounds nuw i8, ptr %221, i64 32
  %bf.load.i3114 = load i16, ptr %op_type.i3113, align 8
  %bf.clear.i3115 = and i16 %bf.load.i3114, 511
  switch i16 %bf.clear.i3115, label %S_prune_chain_head.exit3118.loopexit [
    i16 0, label %while.body.i3116
    i16 198, label %while.body.i3116
    i16 2, label %while.body.i3116
    i16 192, label %while.body.i3116
  ]

while.body.i3116:                                 ; preds = %land.rhs.i3112, %land.rhs.i3112, %land.rhs.i3112, %land.rhs.i3112
  %222 = load ptr, ptr %221, align 8
  store ptr %222, ptr %218, align 8
  %tobool.not.i3117 = icmp eq ptr %222, null
  br i1 %tobool.not.i3117, label %S_prune_chain_head.exit3118.loopexit, label %land.rhs.i3112, !llvm.loop !0

S_prune_chain_head.exit3118.loopexit:             ; preds = %while.body.i3116, %land.rhs.i3112
  br label %S_prune_chain_head.exit3118

S_prune_chain_head.exit3118:                      ; preds = %S_prune_chain_head.exit3118.loopexit, %if.then1516
  %add1520 = add nsw i32 %defer_base.0, 1
  %rem1521 = srem i32 %add1520, 4
  br label %if.end1523

if.end1523:                                       ; preds = %S_prune_chain_head.exit3118, %do.body1513
  %defer_ix.2 = phi i32 [ 2, %S_prune_chain_head.exit3118 ], [ %defer_ix.0, %do.body1513 ]
  %defer_base.1 = phi i32 [ %rem1521, %S_prune_chain_head.exit3118 ], [ %defer_base.0, %do.body1513 ]
  %223 = load ptr, ptr @PL_op, align 8
  %op_other1524 = getelementptr inbounds nuw i8, ptr %223, i64 48
  %inc1525 = add nsw i32 %defer_ix.2, 1
  %add1526 = add nsw i32 %defer_base.1, %inc1525
  %rem1527 = srem i32 %add1526, 4
  %idxprom1528 = sext i32 %rem1527 to i64
  %arrayidx1529 = getelementptr inbounds ptr, ptr %defer_queue, i64 %idxprom1528
  store ptr %op_other1524, ptr %arrayidx1529, align 8
  %bf.load1533 = load i16, ptr %op_opt14.lcssa3451, align 8
  %bf.set1535 = or i16 %bf.load1533, 512
  store i16 %bf.set1535, ptr %op_opt14.lcssa3451, align 8
  %op_type1536 = getelementptr inbounds nuw i8, ptr %209, i64 32
  %bf.load1537 = load i16, ptr %op_type1536, align 8
  %bf.clear1538 = and i16 %bf.load1537, 511
  switch i16 %bf.clear1538, label %cond.end1583.fold.split [
    i16 11, label %cond.end1583
    i16 149, label %cond.end1583
    i16 2, label %land.lhs.true1557
  ]

land.lhs.true1557:                                ; preds = %if.end1523
  %op_flags1558 = getelementptr inbounds nuw i8, ptr %209, i64 34
  %224 = load i8, ptr %op_flags1558, align 2
  %225 = and i8 %224, 4
  %tobool1561.not = icmp eq i8 %225, 0
  br i1 %tobool1561.not, label %cond.end1583, label %land.lhs.true1562

land.lhs.true1562:                                ; preds = %land.lhs.true1557
  %op_first1563 = getelementptr inbounds nuw i8, ptr %209, i64 40
  %226 = load ptr, ptr %op_first1563, align 8
  %op_type1564 = getelementptr inbounds nuw i8, ptr %226, i64 32
  %bf.load1565 = load i16, ptr %op_type1564, align 8
  %bf.clear1566 = and i16 %bf.load1565, 511
  switch i16 %bf.clear1566, label %cond.end1583 [
    i16 11, label %cond.true1578
    i16 149, label %cond.true1578
  ]

cond.true1578:                                    ; preds = %land.lhs.true1562, %land.lhs.true1562
  br label %cond.end1583

cond.end1583.fold.split:                          ; preds = %if.end1523
  br label %cond.end1583

cond.end1583:                                     ; preds = %cond.end1583.fold.split, %cond.true1578, %land.lhs.true1562, %land.lhs.true1557, %if.end1523, %if.end1523
  %cond1584 = phi ptr [ %226, %cond.true1578 ], [ null, %land.lhs.true1557 ], [ %209, %if.end1523 ], [ %209, %if.end1523 ], [ null, %cond.end1583.fold.split ], [ null, %land.lhs.true1562 ]
  %tobool1585.not = icmp eq ptr %210, null
  br i1 %tobool1585.not, label %if.end1636, label %if.then1586

if.then1586:                                      ; preds = %cond.end1583
  %op_type1587 = getelementptr inbounds nuw i8, ptr %210, i64 32
  %bf.load1588 = load i16, ptr %op_type1587, align 8
  %bf.clear1589 = and i16 %bf.load1588, 511
  switch i16 %bf.clear1589, label %if.end1636 [
    i16 11, label %if.end1636.thread
    i16 149, label %if.end1636.thread
    i16 2, label %land.lhs.true1608
  ]

land.lhs.true1608:                                ; preds = %if.then1586
  %op_flags1609 = getelementptr inbounds nuw i8, ptr %210, i64 34
  %227 = load i8, ptr %op_flags1609, align 2
  %228 = and i8 %227, 4
  %tobool1612.not = icmp eq i8 %228, 0
  br i1 %tobool1612.not, label %if.end1636, label %land.lhs.true1613

land.lhs.true1613:                                ; preds = %land.lhs.true1608
  %op_first1614 = getelementptr inbounds nuw i8, ptr %210, i64 40
  %229 = load ptr, ptr %op_first1614, align 8
  %op_type1615 = getelementptr inbounds nuw i8, ptr %229, i64 32
  %bf.load1616 = load i16, ptr %op_type1615, align 8
  %bf.clear1617 = and i16 %bf.load1616, 511
  switch i16 %bf.clear1617, label %if.end1636 [
    i16 11, label %if.end1636.thread
    i16 149, label %if.end1636.thread
  ]

if.end1636.thread:                                ; preds = %land.lhs.true1613, %land.lhs.true1613, %if.then1586, %if.then1586
  %sop.0.ph = phi ptr [ %210, %if.then1586 ], [ %210, %if.then1586 ], [ %229, %land.lhs.true1613 ], [ %229, %land.lhs.true1613 ]
  %tobool16373208 = icmp ne ptr %cond1584, null
  br label %if.then1640

if.end1636:                                       ; preds = %land.lhs.true1613, %land.lhs.true1608, %if.then1586, %cond.end1583
  %tobool1637.not = icmp eq ptr %cond1584, null
  br i1 %tobool1637.not, label %sw.epilog2396, label %if.then1640

if.then1640:                                      ; preds = %if.end1636, %if.end1636.thread
  %tobool16393213 = phi i1 [ true, %if.end1636.thread ], [ false, %if.end1636 ]
  %tobool16373212 = phi i1 [ %tobool16373208, %if.end1636.thread ], [ true, %if.end1636 ]
  %sop.03211 = phi ptr [ %sop.0.ph, %if.end1636.thread ], [ null, %if.end1636 ]
  %op_flags1641 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3474, i64 34
  %230 = load i8, ptr %op_flags1641, align 2
  %231 = and i8 %230, 3
  %cmp1644.not = icmp eq i8 %231, 1
  br i1 %cmp1644.not, label %if.end1666, label %land.rhs1649.preheader

land.rhs1649.preheader:                           ; preds = %if.then1640
  %232 = load ptr, ptr %o.addr.2.lcssa3474, align 8
  %tobool1651.not3356 = icmp eq ptr %232, null
  br i1 %tobool1651.not3356, label %if.end1666, label %while.body1653.preheader

while.body1653.preheader:                         ; preds = %land.rhs1649.preheader
  br label %while.body1653

while.body1653:                                   ; preds = %sw.epilog1664, %while.body1653.preheader
  %233 = phi ptr [ %234, %sw.epilog1664 ], [ %232, %while.body1653.preheader ]
  %lop.03357 = phi ptr [ %lop.1, %sw.epilog1664 ], [ %o.addr.2.lcssa3474, %while.body1653.preheader ]
  %op_type1655 = getelementptr inbounds nuw i8, ptr %233, i64 32
  %bf.load1656 = load i16, ptr %op_type1655, align 8
  %bf.clear1657 = and i16 %bf.load1656, 511
  switch i16 %bf.clear1657, label %if.end1666.loopexit [
    i16 103, label %sw.bb1659
    i16 176, label %sw.bb1659
    i16 177, label %sw.bb1659
    i16 179, label %sw.bb1659
    i16 0, label %sw.epilog1664
  ]

sw.bb1659:                                        ; preds = %while.body1653, %while.body1653, %while.body1653, %while.body1653
  br label %sw.epilog1664

sw.epilog1664:                                    ; preds = %sw.bb1659, %while.body1653
  %lop.1 = phi ptr [ %233, %sw.bb1659 ], [ %lop.03357, %while.body1653 ]
  %234 = load ptr, ptr %233, align 8
  %tobool1651.not = icmp eq ptr %234, null
  br i1 %tobool1651.not, label %if.end1666.loopexit, label %while.body1653

if.end1666.loopexit:                              ; preds = %sw.epilog1664, %while.body1653
  %lop.2.ph = phi ptr [ %lop.03357, %while.body1653 ], [ %lop.1, %sw.epilog1664 ]
  br label %if.end1666

if.end1666:                                       ; preds = %if.end1666.loopexit, %land.rhs1649.preheader, %if.then1640
  %lop.2 = phi ptr [ %o.addr.2.lcssa3474, %if.then1640 ], [ %o.addr.2.lcssa3474, %land.rhs1649.preheader ], [ %lop.2.ph, %if.end1666.loopexit ]
  br i1 %tobool16373212, label %if.then1668, label %if.end1698

if.then1668:                                      ; preds = %if.end1666
  %op_flags1669 = getelementptr inbounds nuw i8, ptr %lop.2, i64 34
  %235 = load i8, ptr %op_flags1669, align 2
  %236 = and i8 %235, 3
  %cmp1672 = icmp eq i8 %236, 1
  %bf.clear1677 = and i16 %bf.load1533, 511
  %cmp1679 = icmp eq i16 %bf.clear1677, 176
  %or.cond3231 = select i1 %cmp1672, i1 true, i1 %cmp1679
  br i1 %or.cond3231, label %if.then1681, label %if.else1686

if.then1681:                                      ; preds = %if.then1668
  %op_private1682 = getelementptr inbounds nuw i8, ptr %cond1584, i64 35
  %237 = load i8, ptr %op_private1682, align 1
  %238 = or i8 %237, 32
  store i8 %238, ptr %op_private1682, align 1
  br label %if.end1698

if.else1686:                                      ; preds = %if.then1668
  %tobool1690.not = icmp eq i8 %236, 0
  br i1 %tobool1690.not, label %if.then1691, label %if.end1698

if.then1691:                                      ; preds = %if.else1686
  %op_private1692 = getelementptr inbounds nuw i8, ptr %cond1584, i64 35
  %239 = load i8, ptr %op_private1692, align 1
  %240 = or i8 %239, 16
  store i8 %240, ptr %op_private1692, align 1
  br label %if.end1698

if.end1698:                                       ; preds = %if.then1691, %if.else1686, %if.then1681, %if.end1666
  %op_flags1699 = getelementptr inbounds nuw i8, ptr %lop.2, i64 34
  %241 = load i8, ptr %op_flags1699, align 2
  %242 = and i8 %241, 3
  %cmp1702 = icmp eq i8 %242, 1
  %or.cond2437 = and i1 %tobool16393213, %cmp1702
  br i1 %or.cond2437, label %if.then1706, label %sw.epilog2396

if.then1706:                                      ; preds = %if.end1698
  %op_private1707 = getelementptr inbounds nuw i8, ptr %sop.03211, i64 35
  %243 = load i8, ptr %op_private1707, align 1
  %244 = or i8 %243, 32
  store i8 %244, ptr %op_private1707, align 1
  br label %sw.epilog2396

sw.bb1713:                                        ; preds = %sw.epilog
  %oldoldop.1.lcssa3524 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3499 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3475 = phi ptr [ %o.addr.2, %sw.epilog ]
  %245 = load ptr, ptr @PL_op, align 8
  %op_first1714 = getelementptr inbounds nuw i8, ptr %245, i64 40
  %246 = load ptr, ptr %op_first1714, align 8
  %op_type1715 = getelementptr inbounds nuw i8, ptr %246, i64 32
  %bf.load1716 = load i16, ptr %op_type1715, align 8
  %bf.clear1717 = and i16 %bf.load1716, 511
  switch i16 %bf.clear1717, label %sw.bb1778 [
    i16 11, label %if.then1772
    i16 149, label %if.then1772
    i16 2, label %land.lhs.true1739
  ]

land.lhs.true1739:                                ; preds = %sw.bb1713
  %op_flags1741 = getelementptr inbounds nuw i8, ptr %246, i64 34
  %247 = load i8, ptr %op_flags1741, align 2
  %248 = and i8 %247, 4
  %tobool1744.not = icmp eq i8 %248, 0
  br i1 %tobool1744.not, label %sw.bb1778, label %land.lhs.true1745

land.lhs.true1745:                                ; preds = %land.lhs.true1739
  %op_first1747 = getelementptr inbounds nuw i8, ptr %246, i64 40
  %249 = load ptr, ptr %op_first1747, align 8
  %op_type1748 = getelementptr inbounds nuw i8, ptr %249, i64 32
  %bf.load1749 = load i16, ptr %op_type1748, align 8
  %bf.clear1750 = and i16 %bf.load1749, 511
  switch i16 %bf.clear1750, label %sw.bb1778 [
    i16 11, label %if.then1772
    i16 149, label %if.then1772
  ]

if.then1772:                                      ; preds = %land.lhs.true1745, %land.lhs.true1745, %sw.bb1713, %sw.bb1713
  %cond1770 = phi ptr [ %246, %sw.bb1713 ], [ %246, %sw.bb1713 ], [ %249, %land.lhs.true1745 ], [ %249, %land.lhs.true1745 ]
  %op_private1773 = getelementptr inbounds nuw i8, ptr %cond1770, i64 35
  %250 = load i8, ptr %op_private1773, align 1
  %251 = or i8 %250, 32
  store i8 %251, ptr %op_private1773, align 1
  br label %sw.bb1778

sw.bb1778.loopexit:                               ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %oldoldop.1.lcssa3525 = phi ptr [ %oldoldop.1, %sw.epilog ], [ %oldoldop.1, %sw.epilog ], [ %oldoldop.1, %sw.epilog ], [ %oldoldop.1, %sw.epilog ], [ %oldoldop.1, %sw.epilog ], [ %oldoldop.1, %sw.epilog ], [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3500 = phi ptr [ %oldop.1, %sw.epilog ], [ %oldop.1, %sw.epilog ], [ %oldop.1, %sw.epilog ], [ %oldop.1, %sw.epilog ], [ %oldop.1, %sw.epilog ], [ %oldop.1, %sw.epilog ], [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3476 = phi ptr [ %o.addr.2, %sw.epilog ], [ %o.addr.2, %sw.epilog ], [ %o.addr.2, %sw.epilog ], [ %o.addr.2, %sw.epilog ], [ %o.addr.2, %sw.epilog ], [ %o.addr.2, %sw.epilog ], [ %o.addr.2, %sw.epilog ]
  br label %sw.bb1778

sw.bb1778:                                        ; preds = %sw.bb1778.loopexit, %if.then1772, %land.lhs.true1745, %land.lhs.true1739, %sw.bb1713
  %oldoldop.13537 = phi ptr [ %oldoldop.1.lcssa3525, %sw.bb1778.loopexit ], [ %oldoldop.1.lcssa3524, %land.lhs.true1745 ], [ %oldoldop.1.lcssa3524, %sw.bb1713 ], [ %oldoldop.1.lcssa3524, %land.lhs.true1739 ], [ %oldoldop.1.lcssa3524, %if.then1772 ]
  %oldop.13512 = phi ptr [ %oldop.1.lcssa3500, %sw.bb1778.loopexit ], [ %oldop.1.lcssa3499, %land.lhs.true1745 ], [ %oldop.1.lcssa3499, %sw.bb1713 ], [ %oldop.1.lcssa3499, %land.lhs.true1739 ], [ %oldop.1.lcssa3499, %if.then1772 ]
  %o.addr.23489 = phi ptr [ %o.addr.2.lcssa3476, %sw.bb1778.loopexit ], [ %o.addr.2.lcssa3475, %land.lhs.true1745 ], [ %o.addr.2.lcssa3475, %sw.bb1713 ], [ %o.addr.2.lcssa3475, %land.lhs.true1739 ], [ %o.addr.2.lcssa3475, %if.then1772 ]
  %252 = load ptr, ptr @PL_op, align 8
  %op_other1780 = getelementptr inbounds nuw i8, ptr %252, i64 48
  %op_other1780.promoted = load ptr, ptr %op_other1780, align 8
  %op_type17813347 = getelementptr inbounds nuw i8, ptr %op_other1780.promoted, i64 32
  %bf.load17823348 = load i16, ptr %op_type17813347, align 8
  %bf.clear17833349 = and i16 %bf.load17823348, 511
  %cmp17853350 = icmp eq i16 %bf.clear17833349, 0
  br i1 %cmp17853350, label %while.body1787.preheader, label %do.body1792

while.body1787.preheader:                         ; preds = %sw.bb1778
  br label %while.body1787

while.body1787:                                   ; preds = %while.body1787, %while.body1787.preheader
  %253 = phi ptr [ %254, %while.body1787 ], [ %op_other1780.promoted, %while.body1787.preheader ]
  %254 = load ptr, ptr %253, align 8
  store ptr %254, ptr %op_other1780, align 8
  %op_type1781 = getelementptr inbounds nuw i8, ptr %254, i64 32
  %bf.load1782 = load i16, ptr %op_type1781, align 8
  %bf.clear1783 = and i16 %bf.load1782, 511
  %cmp1785 = icmp eq i16 %bf.clear1783, 0
  br i1 %cmp1785, label %while.body1787, label %do.body1792.loopexit, !llvm.loop !8

do.body1792.loopexit:                             ; preds = %while.body1787
  br label %do.body1792

do.body1792:                                      ; preds = %do.body1792.loopexit, %sw.bb1778
  %cmp1793 = icmp eq i32 %defer_ix.0, 3
  br i1 %cmp1793, label %if.then1795, label %if.end1802

if.then1795:                                      ; preds = %do.body1792
  %idxprom1797 = sext i32 %defer_base.0 to i64
  %arrayidx1798 = getelementptr inbounds ptr, ptr %defer_queue, i64 %idxprom1797
  %255 = load ptr, ptr %arrayidx1798, align 8
  %256 = load ptr, ptr @PL_rpeepp, align 8
  %257 = load ptr, ptr %255, align 8
  tail call void %256(ptr noundef %257) #5
  %.pr.i3119 = load ptr, ptr %255, align 8
  %tobool.not23.i3120 = icmp eq ptr %.pr.i3119, null
  br i1 %tobool.not23.i3120, label %S_prune_chain_head.exit3127, label %land.rhs.i3121.preheader

land.rhs.i3121.preheader:                         ; preds = %if.then1795
  br label %land.rhs.i3121

land.rhs.i3121:                                   ; preds = %while.body.i3125, %land.rhs.i3121.preheader
  %258 = phi ptr [ %259, %while.body.i3125 ], [ %.pr.i3119, %land.rhs.i3121.preheader ]
  %op_type.i3122 = getelementptr inbounds nuw i8, ptr %258, i64 32
  %bf.load.i3123 = load i16, ptr %op_type.i3122, align 8
  %bf.clear.i3124 = and i16 %bf.load.i3123, 511
  switch i16 %bf.clear.i3124, label %S_prune_chain_head.exit3127.loopexit [
    i16 0, label %while.body.i3125
    i16 198, label %while.body.i3125
    i16 2, label %while.body.i3125
    i16 192, label %while.body.i3125
  ]

while.body.i3125:                                 ; preds = %land.rhs.i3121, %land.rhs.i3121, %land.rhs.i3121, %land.rhs.i3121
  %259 = load ptr, ptr %258, align 8
  store ptr %259, ptr %255, align 8
  %tobool.not.i3126 = icmp eq ptr %259, null
  br i1 %tobool.not.i3126, label %S_prune_chain_head.exit3127.loopexit, label %land.rhs.i3121, !llvm.loop !0

S_prune_chain_head.exit3127.loopexit:             ; preds = %while.body.i3125, %land.rhs.i3121
  br label %S_prune_chain_head.exit3127

S_prune_chain_head.exit3127:                      ; preds = %S_prune_chain_head.exit3127.loopexit, %if.then1795
  %add1799 = add nsw i32 %defer_base.0, 1
  %rem1800 = srem i32 %add1799, 4
  br label %if.end1802

if.end1802:                                       ; preds = %S_prune_chain_head.exit3127, %do.body1792
  %defer_ix.3 = phi i32 [ 2, %S_prune_chain_head.exit3127 ], [ %defer_ix.0, %do.body1792 ]
  %defer_base.2 = phi i32 [ %rem1800, %S_prune_chain_head.exit3127 ], [ %defer_base.0, %do.body1792 ]
  %260 = load ptr, ptr @PL_op, align 8
  %op_other1803 = getelementptr inbounds nuw i8, ptr %260, i64 48
  %inc1804 = add nsw i32 %defer_ix.3, 1
  %add1805 = add nsw i32 %defer_base.2, %inc1804
  %rem1806 = srem i32 %add1805, 4
  %idxprom1807 = sext i32 %rem1806 to i64
  %arrayidx1808 = getelementptr inbounds ptr, ptr %defer_queue, i64 %idxprom1807
  store ptr %op_other1803, ptr %arrayidx1808, align 8
  br label %sw.epilog2396

sw.bb1811:                                        ; preds = %sw.epilog, %sw.epilog
  %oldoldop.1.lcssa3526 = phi ptr [ %oldoldop.1, %sw.epilog ], [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3501 = phi ptr [ %oldop.1, %sw.epilog ], [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3477 = phi ptr [ %o.addr.2, %sw.epilog ], [ %o.addr.2, %sw.epilog ]
  %261 = load ptr, ptr @PL_op, align 8
  %op_redoop = getelementptr inbounds nuw i8, ptr %261, i64 56
  %op_redoop.promoted = load ptr, ptr %op_redoop, align 8
  %op_type18133335 = getelementptr inbounds nuw i8, ptr %op_redoop.promoted, i64 32
  %bf.load18143336 = load i16, ptr %op_type18133335, align 8
  %bf.clear18153337 = and i16 %bf.load18143336, 511
  %cmp18173338 = icmp eq i16 %bf.clear18153337, 0
  br i1 %cmp18173338, label %while.body1819.preheader, label %while.cond1824.preheader

while.body1819.preheader:                         ; preds = %sw.bb1811
  br label %while.body1819

while.cond1824.preheader.loopexit:                ; preds = %while.body1819
  br label %while.cond1824.preheader

while.cond1824.preheader:                         ; preds = %while.cond1824.preheader.loopexit, %sw.bb1811
  %op_nextop = getelementptr inbounds nuw i8, ptr %261, i64 64
  %op_nextop.promoted = load ptr, ptr %op_nextop, align 8
  %op_type18253339 = getelementptr inbounds nuw i8, ptr %op_nextop.promoted, i64 32
  %bf.load18263340 = load i16, ptr %op_type18253339, align 8
  %bf.clear18273341 = and i16 %bf.load18263340, 511
  %cmp18293342 = icmp eq i16 %bf.clear18273341, 0
  br i1 %cmp18293342, label %while.body1831.preheader, label %while.cond1836.preheader

while.body1831.preheader:                         ; preds = %while.cond1824.preheader
  br label %while.body1831

while.body1819:                                   ; preds = %while.body1819, %while.body1819.preheader
  %262 = phi ptr [ %263, %while.body1819 ], [ %op_redoop.promoted, %while.body1819.preheader ]
  %263 = load ptr, ptr %262, align 8
  store ptr %263, ptr %op_redoop, align 8
  %op_type1813 = getelementptr inbounds nuw i8, ptr %263, i64 32
  %bf.load1814 = load i16, ptr %op_type1813, align 8
  %bf.clear1815 = and i16 %bf.load1814, 511
  %cmp1817 = icmp eq i16 %bf.clear1815, 0
  br i1 %cmp1817, label %while.body1819, label %while.cond1824.preheader.loopexit, !llvm.loop !9

while.cond1836.preheader.loopexit:                ; preds = %while.body1831
  br label %while.cond1836.preheader

while.cond1836.preheader:                         ; preds = %while.cond1836.preheader.loopexit, %while.cond1824.preheader
  %op_lastop = getelementptr inbounds nuw i8, ptr %261, i64 72
  %op_lastop.promoted = load ptr, ptr %op_lastop, align 8
  %op_type18373343 = getelementptr inbounds nuw i8, ptr %op_lastop.promoted, i64 32
  %bf.load18383344 = load i16, ptr %op_type18373343, align 8
  %bf.clear18393345 = and i16 %bf.load18383344, 511
  %cmp18413346 = icmp eq i16 %bf.clear18393345, 0
  br i1 %cmp18413346, label %while.body1843.preheader, label %do.body1848

while.body1843.preheader:                         ; preds = %while.cond1836.preheader
  br label %while.body1843

while.body1831:                                   ; preds = %while.body1831, %while.body1831.preheader
  %264 = phi ptr [ %265, %while.body1831 ], [ %op_nextop.promoted, %while.body1831.preheader ]
  %265 = load ptr, ptr %264, align 8
  store ptr %265, ptr %op_nextop, align 8
  %op_type1825 = getelementptr inbounds nuw i8, ptr %265, i64 32
  %bf.load1826 = load i16, ptr %op_type1825, align 8
  %bf.clear1827 = and i16 %bf.load1826, 511
  %cmp1829 = icmp eq i16 %bf.clear1827, 0
  br i1 %cmp1829, label %while.body1831, label %while.cond1836.preheader.loopexit, !llvm.loop !10

while.body1843:                                   ; preds = %while.body1843, %while.body1843.preheader
  %266 = phi ptr [ %267, %while.body1843 ], [ %op_lastop.promoted, %while.body1843.preheader ]
  %267 = load ptr, ptr %266, align 8
  store ptr %267, ptr %op_lastop, align 8
  %op_type1837 = getelementptr inbounds nuw i8, ptr %267, i64 32
  %bf.load1838 = load i16, ptr %op_type1837, align 8
  %bf.clear1839 = and i16 %bf.load1838, 511
  %cmp1841 = icmp eq i16 %bf.clear1839, 0
  br i1 %cmp1841, label %while.body1843, label %do.body1848.loopexit, !llvm.loop !11

do.body1848.loopexit:                             ; preds = %while.body1843
  br label %do.body1848

do.body1848:                                      ; preds = %do.body1848.loopexit, %while.cond1836.preheader
  %cmp1849 = icmp eq i32 %defer_ix.0, 3
  br i1 %cmp1849, label %if.then1851, label %if.end1858

if.then1851:                                      ; preds = %do.body1848
  %idxprom1853 = sext i32 %defer_base.0 to i64
  %arrayidx1854 = getelementptr inbounds ptr, ptr %defer_queue, i64 %idxprom1853
  %268 = load ptr, ptr %arrayidx1854, align 8
  %269 = load ptr, ptr @PL_rpeepp, align 8
  %270 = load ptr, ptr %268, align 8
  tail call void %269(ptr noundef %270) #5
  %.pr.i3128 = load ptr, ptr %268, align 8
  %tobool.not23.i3129 = icmp eq ptr %.pr.i3128, null
  br i1 %tobool.not23.i3129, label %S_prune_chain_head.exit3136, label %land.rhs.i3130.preheader

land.rhs.i3130.preheader:                         ; preds = %if.then1851
  br label %land.rhs.i3130

land.rhs.i3130:                                   ; preds = %while.body.i3134, %land.rhs.i3130.preheader
  %271 = phi ptr [ %272, %while.body.i3134 ], [ %.pr.i3128, %land.rhs.i3130.preheader ]
  %op_type.i3131 = getelementptr inbounds nuw i8, ptr %271, i64 32
  %bf.load.i3132 = load i16, ptr %op_type.i3131, align 8
  %bf.clear.i3133 = and i16 %bf.load.i3132, 511
  switch i16 %bf.clear.i3133, label %S_prune_chain_head.exit3136.loopexit [
    i16 0, label %while.body.i3134
    i16 198, label %while.body.i3134
    i16 2, label %while.body.i3134
    i16 192, label %while.body.i3134
  ]

while.body.i3134:                                 ; preds = %land.rhs.i3130, %land.rhs.i3130, %land.rhs.i3130, %land.rhs.i3130
  %272 = load ptr, ptr %271, align 8
  store ptr %272, ptr %268, align 8
  %tobool.not.i3135 = icmp eq ptr %272, null
  br i1 %tobool.not.i3135, label %S_prune_chain_head.exit3136.loopexit, label %land.rhs.i3130, !llvm.loop !0

S_prune_chain_head.exit3136.loopexit:             ; preds = %while.body.i3134, %land.rhs.i3130
  br label %S_prune_chain_head.exit3136

S_prune_chain_head.exit3136:                      ; preds = %S_prune_chain_head.exit3136.loopexit, %if.then1851
  %add1855 = add nsw i32 %defer_base.0, 1
  %rem1856 = srem i32 %add1855, 4
  br label %if.end1858

if.end1858:                                       ; preds = %S_prune_chain_head.exit3136, %do.body1848
  %defer_ix.4 = phi i32 [ 2, %S_prune_chain_head.exit3136 ], [ %defer_ix.0, %do.body1848 ]
  %defer_base.3 = phi i32 [ %rem1856, %S_prune_chain_head.exit3136 ], [ %defer_base.0, %do.body1848 ]
  %273 = load ptr, ptr @PL_op, align 8
  %op_lastop1859 = getelementptr inbounds nuw i8, ptr %273, i64 72
  %inc1860 = add nsw i32 %defer_ix.4, 1
  %add1861 = add nsw i32 %defer_base.3, %inc1860
  %rem1862 = srem i32 %add1861, 4
  %idxprom1863 = sext i32 %rem1862 to i64
  %arrayidx1864 = getelementptr inbounds ptr, ptr %defer_queue, i64 %idxprom1863
  store ptr %op_lastop1859, ptr %arrayidx1864, align 8
  br label %sw.epilog2396

do.body1868:                                      ; preds = %sw.epilog
  %oldoldop.1.lcssa3527 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3502 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3478 = phi ptr [ %o.addr.2, %sw.epilog ]
  %cmp1869 = icmp eq i32 %defer_ix.0, 3
  br i1 %cmp1869, label %if.then1871, label %if.end1878

if.then1871:                                      ; preds = %do.body1868
  %idxprom1873 = sext i32 %defer_base.0 to i64
  %arrayidx1874 = getelementptr inbounds ptr, ptr %defer_queue, i64 %idxprom1873
  %274 = load ptr, ptr %arrayidx1874, align 8
  %275 = load ptr, ptr @PL_rpeepp, align 8
  %276 = load ptr, ptr %274, align 8
  tail call void %275(ptr noundef %276) #5
  %.pr.i3137 = load ptr, ptr %274, align 8
  %tobool.not23.i3138 = icmp eq ptr %.pr.i3137, null
  br i1 %tobool.not23.i3138, label %S_prune_chain_head.exit3145, label %land.rhs.i3139.preheader

land.rhs.i3139.preheader:                         ; preds = %if.then1871
  br label %land.rhs.i3139

land.rhs.i3139:                                   ; preds = %while.body.i3143, %land.rhs.i3139.preheader
  %277 = phi ptr [ %278, %while.body.i3143 ], [ %.pr.i3137, %land.rhs.i3139.preheader ]
  %op_type.i3140 = getelementptr inbounds nuw i8, ptr %277, i64 32
  %bf.load.i3141 = load i16, ptr %op_type.i3140, align 8
  %bf.clear.i3142 = and i16 %bf.load.i3141, 511
  switch i16 %bf.clear.i3142, label %S_prune_chain_head.exit3145.loopexit [
    i16 0, label %while.body.i3143
    i16 198, label %while.body.i3143
    i16 2, label %while.body.i3143
    i16 192, label %while.body.i3143
  ]

while.body.i3143:                                 ; preds = %land.rhs.i3139, %land.rhs.i3139, %land.rhs.i3139, %land.rhs.i3139
  %278 = load ptr, ptr %277, align 8
  store ptr %278, ptr %274, align 8
  %tobool.not.i3144 = icmp eq ptr %278, null
  br i1 %tobool.not.i3144, label %S_prune_chain_head.exit3145.loopexit, label %land.rhs.i3139, !llvm.loop !0

S_prune_chain_head.exit3145.loopexit:             ; preds = %while.body.i3143, %land.rhs.i3139
  br label %S_prune_chain_head.exit3145

S_prune_chain_head.exit3145:                      ; preds = %S_prune_chain_head.exit3145.loopexit, %if.then1871
  %add1875 = add nsw i32 %defer_base.0, 1
  %rem1876 = srem i32 %add1875, 4
  br label %if.end1878

if.end1878:                                       ; preds = %S_prune_chain_head.exit3145, %do.body1868
  %defer_ix.5 = phi i32 [ 2, %S_prune_chain_head.exit3145 ], [ %defer_ix.0, %do.body1868 ]
  %defer_base.4 = phi i32 [ %rem1876, %S_prune_chain_head.exit3145 ], [ %defer_base.0, %do.body1868 ]
  %op_other1879 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3478, i64 48
  %inc1880 = add nsw i32 %defer_ix.5, 1
  %add1881 = add nsw i32 %defer_base.4, %inc1880
  %rem1882 = srem i32 %add1881, 4
  %idxprom1883 = sext i32 %rem1882 to i64
  %arrayidx1884 = getelementptr inbounds ptr, ptr %defer_queue, i64 %idxprom1883
  store ptr %op_other1879, ptr %arrayidx1884, align 8
  br label %sw.epilog2396

land.rhs1890:                                     ; preds = %while.body1899, %land.rhs1890.preheader
  %279 = phi ptr [ %280, %while.body1899 ], [ %op_pmstashstartu.promoted, %land.rhs1890.preheader ]
  %op_type1892 = getelementptr inbounds nuw i8, ptr %279, i64 32
  %bf.load1893 = load i16, ptr %op_type1892, align 8
  %bf.clear1894 = and i16 %bf.load1893, 511
  %cmp1896 = icmp eq i16 %bf.clear1894, 0
  br i1 %cmp1896, label %while.body1899, label %do.body1904.loopexit

while.body1899:                                   ; preds = %land.rhs1890
  %280 = load ptr, ptr %279, align 8
  store ptr %280, ptr %op_pmstashstartu, align 8
  %tobool1889.not = icmp eq ptr %280, null
  br i1 %tobool1889.not, label %do.body1904.loopexit, label %land.rhs1890, !llvm.loop !12

do.body1904.loopexit:                             ; preds = %while.body1899, %land.rhs1890
  br label %do.body1904

do.body1904:                                      ; preds = %do.body1904.loopexit, %while.cond1888.preheader
  %cmp1905 = icmp eq i32 %defer_ix.0, 3
  br i1 %cmp1905, label %if.then1907, label %if.end1914

if.then1907:                                      ; preds = %do.body1904
  %idxprom1909 = sext i32 %defer_base.0 to i64
  %arrayidx1910 = getelementptr inbounds ptr, ptr %defer_queue, i64 %idxprom1909
  %281 = load ptr, ptr %arrayidx1910, align 8
  %282 = load ptr, ptr @PL_rpeepp, align 8
  %283 = load ptr, ptr %281, align 8
  tail call void %282(ptr noundef %283) #5
  %.pr.i3146 = load ptr, ptr %281, align 8
  %tobool.not23.i3147 = icmp eq ptr %.pr.i3146, null
  br i1 %tobool.not23.i3147, label %S_prune_chain_head.exit3154, label %land.rhs.i3148.preheader

land.rhs.i3148.preheader:                         ; preds = %if.then1907
  br label %land.rhs.i3148

land.rhs.i3148:                                   ; preds = %while.body.i3152, %land.rhs.i3148.preheader
  %284 = phi ptr [ %285, %while.body.i3152 ], [ %.pr.i3146, %land.rhs.i3148.preheader ]
  %op_type.i3149 = getelementptr inbounds nuw i8, ptr %284, i64 32
  %bf.load.i3150 = load i16, ptr %op_type.i3149, align 8
  %bf.clear.i3151 = and i16 %bf.load.i3150, 511
  switch i16 %bf.clear.i3151, label %S_prune_chain_head.exit3154.loopexit [
    i16 0, label %while.body.i3152
    i16 198, label %while.body.i3152
    i16 2, label %while.body.i3152
    i16 192, label %while.body.i3152
  ]

while.body.i3152:                                 ; preds = %land.rhs.i3148, %land.rhs.i3148, %land.rhs.i3148, %land.rhs.i3148
  %285 = load ptr, ptr %284, align 8
  store ptr %285, ptr %281, align 8
  %tobool.not.i3153 = icmp eq ptr %285, null
  br i1 %tobool.not.i3153, label %S_prune_chain_head.exit3154.loopexit, label %land.rhs.i3148, !llvm.loop !0

S_prune_chain_head.exit3154.loopexit:             ; preds = %while.body.i3152, %land.rhs.i3148
  br label %S_prune_chain_head.exit3154

S_prune_chain_head.exit3154:                      ; preds = %S_prune_chain_head.exit3154.loopexit, %if.then1907
  %add1911 = add nsw i32 %defer_base.0, 1
  %rem1912 = srem i32 %add1911, 4
  br label %if.end1914

if.end1914:                                       ; preds = %S_prune_chain_head.exit3154, %do.body1904
  %defer_ix.6 = phi i32 [ 2, %S_prune_chain_head.exit3154 ], [ %defer_ix.0, %do.body1904 ]
  %defer_base.5 = phi i32 [ %rem1912, %S_prune_chain_head.exit3154 ], [ %defer_base.0, %do.body1904 ]
  %286 = load ptr, ptr @PL_op, align 8
  %op_pmstashstartu1915 = getelementptr inbounds nuw i8, ptr %286, i64 80
  %inc1916 = add nsw i32 %defer_ix.6, 1
  %add1917 = add nsw i32 %defer_base.5, %inc1916
  %rem1918 = srem i32 %add1917, 4
  %idxprom1919 = sext i32 %rem1918 to i64
  %arrayidx1920 = getelementptr inbounds ptr, ptr %defer_queue, i64 %idxprom1919
  store ptr %op_pmstashstartu1915, ptr %arrayidx1920, align 8
  br label %sw.epilog2396

sw.bb1923:                                        ; preds = %sw.epilog
  %oldoldop.1.lcssa3529 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3504 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3480 = phi ptr [ %o.addr.2, %sw.epilog ]
  %op_flags1924 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3480, i64 34
  %287 = load i8, ptr %op_flags1924, align 2
  %tobool1927.not = icmp sgt i8 %287, -1
  br i1 %tobool1927.not, label %if.end1956, label %if.then1928

if.then1928:                                      ; preds = %sw.bb1923
  %288 = load ptr, ptr @PL_op, align 8
  %op_first1929 = getelementptr inbounds nuw i8, ptr %288, i64 40
  %289 = load ptr, ptr %op_first1929, align 8
  %op_sibling1930 = getelementptr inbounds nuw i8, ptr %289, i64 8
  %290 = load ptr, ptr %op_sibling1930, align 8
  %op_first1933 = getelementptr inbounds nuw i8, ptr %290, i64 40
  %291 = load ptr, ptr %op_first1933, align 8
  %op_first1934 = getelementptr inbounds nuw i8, ptr %291, i64 40
  %292 = load ptr, ptr %op_first1934, align 8
  %293 = load ptr, ptr %292, align 8
  store ptr %293, ptr %290, align 8
  %cmp1938 = icmp eq i32 %defer_ix.0, 3
  br i1 %cmp1938, label %if.then1940, label %if.end1947

if.then1940:                                      ; preds = %if.then1928
  %idxprom1942 = sext i32 %defer_base.0 to i64
  %arrayidx1943 = getelementptr inbounds ptr, ptr %defer_queue, i64 %idxprom1942
  %294 = load ptr, ptr %arrayidx1943, align 8
  %295 = load ptr, ptr @PL_rpeepp, align 8
  %296 = load ptr, ptr %294, align 8
  tail call void %295(ptr noundef %296) #5
  %.pr.i3155 = load ptr, ptr %294, align 8
  %tobool.not23.i3156 = icmp eq ptr %.pr.i3155, null
  br i1 %tobool.not23.i3156, label %S_prune_chain_head.exit3163, label %land.rhs.i3157.preheader

land.rhs.i3157.preheader:                         ; preds = %if.then1940
  br label %land.rhs.i3157

land.rhs.i3157:                                   ; preds = %while.body.i3161, %land.rhs.i3157.preheader
  %297 = phi ptr [ %298, %while.body.i3161 ], [ %.pr.i3155, %land.rhs.i3157.preheader ]
  %op_type.i3158 = getelementptr inbounds nuw i8, ptr %297, i64 32
  %bf.load.i3159 = load i16, ptr %op_type.i3158, align 8
  %bf.clear.i3160 = and i16 %bf.load.i3159, 511
  switch i16 %bf.clear.i3160, label %S_prune_chain_head.exit3163.loopexit [
    i16 0, label %while.body.i3161
    i16 198, label %while.body.i3161
    i16 2, label %while.body.i3161
    i16 192, label %while.body.i3161
  ]

while.body.i3161:                                 ; preds = %land.rhs.i3157, %land.rhs.i3157, %land.rhs.i3157, %land.rhs.i3157
  %298 = load ptr, ptr %297, align 8
  store ptr %298, ptr %294, align 8
  %tobool.not.i3162 = icmp eq ptr %298, null
  br i1 %tobool.not.i3162, label %S_prune_chain_head.exit3163.loopexit, label %land.rhs.i3157, !llvm.loop !0

S_prune_chain_head.exit3163.loopexit:             ; preds = %while.body.i3161, %land.rhs.i3157
  br label %S_prune_chain_head.exit3163

S_prune_chain_head.exit3163:                      ; preds = %S_prune_chain_head.exit3163.loopexit, %if.then1940
  %add1944 = add nsw i32 %defer_base.0, 1
  %rem1945 = srem i32 %add1944, 4
  br label %if.end1947

if.end1947:                                       ; preds = %S_prune_chain_head.exit3163, %if.then1928
  %defer_ix.7 = phi i32 [ 2, %S_prune_chain_head.exit3163 ], [ %defer_ix.0, %if.then1928 ]
  %defer_base.6 = phi i32 [ %rem1945, %S_prune_chain_head.exit3163 ], [ %defer_base.0, %if.then1928 ]
  %inc1949 = add nsw i32 %defer_ix.7, 1
  %add1950 = add nsw i32 %defer_base.6, %inc1949
  %rem1951 = srem i32 %add1950, 4
  %idxprom1952 = sext i32 %rem1951 to i64
  %arrayidx1953 = getelementptr inbounds ptr, ptr %defer_queue, i64 %idxprom1952
  store ptr %290, ptr %arrayidx1953, align 8
  br label %if.end1956

if.end1956:                                       ; preds = %if.end1947, %sw.bb1923
  %defer_ix.8 = phi i32 [ %inc1949, %if.end1947 ], [ %defer_ix.0, %sw.bb1923 ]
  %defer_base.7 = phi i32 [ %defer_base.6, %if.end1947 ], [ %defer_base.0, %sw.bb1923 ]
  %op_first1957 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3480, i64 40
  %299 = load ptr, ptr %op_first1957, align 8
  %tobool1958.not = icmp eq ptr %299, null
  br i1 %tobool1958.not, label %sw.epilog2396, label %lor.lhs.false1959

lor.lhs.false1959:                                ; preds = %if.end1956
  %op_type1960 = getelementptr inbounds nuw i8, ptr %299, i64 32
  %bf.load1961 = load i16, ptr %op_type1960, align 8
  %bf.clear1962 = and i16 %bf.load1961, 511
  %cmp1964.not = icmp eq i16 %bf.clear1962, 3
  br i1 %cmp1964.not, label %if.end1967, label %sw.epilog2396

if.end1967:                                       ; preds = %lor.lhs.false1959
  %op_private1968 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3480, i64 35
  %300 = load i8, ptr %op_private1968, align 1
  %301 = and i8 %300, 8
  %tobool1971.not = icmp eq i8 %301, 0
  br i1 %tobool1971.not, label %if.end1973, label %sw.epilog2396

if.end1973:                                       ; preds = %if.end1967
  %op_sibling1974 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3480, i64 8
  %302 = load ptr, ptr %op_sibling1974, align 8
  %tobool1975.not = icmp eq ptr %302, null
  br i1 %tobool1975.not, label %if.then1978, label %sw.epilog2396

if.then1978:                                      ; preds = %if.end1973
  %303 = load ptr, ptr %o.addr.2.lcssa3480, align 8
  %op_type1980 = getelementptr inbounds nuw i8, ptr %303, i64 32
  %bf.load1981 = load i16, ptr %op_type1980, align 8
  %bf.clear1982 = and i16 %bf.load1981, 511
  %cmp1984 = icmp eq i16 %bf.clear1982, 168
  br i1 %cmp1984, label %land.lhs.true1986, label %sw.epilog2396

land.lhs.true1986:                                ; preds = %if.then1978
  %op_flags1987 = getelementptr inbounds nuw i8, ptr %303, i64 34
  %304 = load i8, ptr %op_flags1987, align 2
  %305 = and i8 %304, 3
  %cmp1990 = icmp eq i8 %305, 3
  br i1 %cmp1990, label %if.then1992, label %sw.epilog2396

if.then1992:                                      ; preds = %land.lhs.true1986
  %op_first1993 = getelementptr inbounds nuw i8, ptr %303, i64 40
  %306 = load ptr, ptr %op_first1993, align 8
  %tobool1994.not = icmp eq ptr %306, null
  br i1 %tobool1994.not, label %sw.epilog2396, label %land.lhs.true1995

land.lhs.true1995:                                ; preds = %if.then1992
  %op_type1996 = getelementptr inbounds nuw i8, ptr %306, i64 32
  %bf.load1997 = load i16, ptr %op_type1996, align 8
  %bf.clear1998 = and i16 %bf.load1997, 511
  %cmp2000 = icmp eq i16 %bf.clear1998, 3
  br i1 %cmp2000, label %land.lhs.true2002, label %sw.epilog2396

land.lhs.true2002:                                ; preds = %land.lhs.true1995
  %op_sibling2003 = getelementptr inbounds nuw i8, ptr %306, i64 8
  %307 = load ptr, ptr %op_sibling2003, align 8
  %cmp2005 = icmp eq ptr %307, %o.addr.2.lcssa3480
  br i1 %cmp2005, label %if.then2007, label %sw.epilog2396

if.then2007:                                      ; preds = %land.lhs.true2002
  %or2010 = or i8 %300, 4
  store i8 %or2010, ptr %op_private1968, align 1
  tail call void @Perl_op_null(ptr noundef nonnull %303)
  %308 = load ptr, ptr %299, align 8
  store ptr %308, ptr %306, align 8
  tail call void @Perl_op_null(ptr noundef nonnull %299)
  br label %sw.epilog2396

sw.bb2018:                                        ; preds = %sw.epilog
  %oldoldop.1.lcssa3530 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3505 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3481 = phi ptr [ %o.addr.2, %sw.epilog ]
  %op_private2020 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3481, i64 35
  %309 = load i8, ptr %op_private2020, align 1
  %310 = and i8 %309, 8
  %tobool2023.not = icmp eq i8 %310, 0
  br i1 %tobool2023.not, label %if.end2025, label %sw.epilog2396

if.end2025:                                       ; preds = %sw.bb2018
  %311 = load ptr, ptr %o.addr.2.lcssa3481, align 8
  %tobool2027.not = icmp eq ptr %311, null
  br i1 %tobool2027.not, label %sw.epilog2396, label %if.end2029

if.end2029:                                       ; preds = %if.end2025
  %op_type2030 = getelementptr inbounds nuw i8, ptr %311, i64 32
  %bf.load2031 = load i16, ptr %op_type2030, align 8
  %bf.clear2032 = and i16 %bf.load2031, 511
  %cmp2034 = icmp eq i16 %bf.clear2032, 0
  br i1 %cmp2034, label %if.then2036, label %if.end2041

if.then2036:                                      ; preds = %if.end2029
  %312 = load ptr, ptr %311, align 8
  %tobool2038.not = icmp eq ptr %312, null
  br i1 %tobool2038.not, label %sw.epilog2396, label %if.end2041

if.end2041:                                       ; preds = %if.then2036, %if.end2029
  %enter.0 = phi ptr [ %312, %if.then2036 ], [ %311, %if.end2029 ]
  %op_type2042 = getelementptr inbounds nuw i8, ptr %enter.0, i64 32
  %bf.load2043 = load i16, ptr %op_type2042, align 8
  %bf.clear2044 = and i16 %bf.load2043, 511
  %cmp2046 = icmp eq i16 %bf.clear2044, 7
  br i1 %cmp2046, label %if.then2048, label %if.end2065

if.then2048:                                      ; preds = %if.end2041
  %313 = load ptr, ptr %enter.0, align 8
  %tobool2050.not = icmp eq ptr %313, null
  br i1 %tobool2050.not, label %sw.epilog2396, label %if.end2052

if.end2052:                                       ; preds = %if.then2048
  %op_type2053 = getelementptr inbounds nuw i8, ptr %313, i64 32
  %bf.load2054 = load i16, ptr %op_type2053, align 8
  %bf.clear2055 = and i16 %bf.load2054, 511
  %cmp2057 = icmp eq i16 %bf.clear2055, 14
  br i1 %cmp2057, label %if.then2059, label %if.end2065

if.then2059:                                      ; preds = %if.end2052
  %314 = load ptr, ptr %313, align 8
  %tobool2061.not = icmp eq ptr %314, null
  br i1 %tobool2061.not, label %sw.epilog2396, label %if.end2065

if.end2065:                                       ; preds = %if.then2059, %if.end2052, %if.end2041
  %gvop.0 = phi ptr [ %enter.0, %if.then2059 ], [ %enter.0, %if.end2052 ], [ null, %if.end2041 ]
  %enter.1 = phi ptr [ %314, %if.then2059 ], [ %313, %if.end2052 ], [ %enter.0, %if.end2041 ]
  %op_type2066 = getelementptr inbounds nuw i8, ptr %enter.1, i64 32
  %bf.load2067 = load i16, ptr %op_type2066, align 8
  %bf.clear2068 = and i16 %bf.load2067, 511
  %cmp2070.not = icmp eq i16 %bf.clear2068, 199
  br i1 %cmp2070.not, label %if.end2073, label %sw.epilog2396

if.end2073:                                       ; preds = %if.end2065
  %315 = load ptr, ptr %enter.1, align 8
  %tobool2075.not = icmp eq ptr %315, null
  br i1 %tobool2075.not, label %sw.epilog2396, label %lor.lhs.false2076

lor.lhs.false2076:                                ; preds = %if.end2073
  %op_type2077 = getelementptr inbounds nuw i8, ptr %315, i64 32
  %bf.load2078 = load i16, ptr %op_type2077, align 8
  %bf.clear2079 = and i16 %bf.load2078, 511
  %cmp2081.not = icmp eq i16 %bf.clear2079, 200
  br i1 %cmp2081.not, label %if.end2084, label %sw.epilog2396

if.end2084:                                       ; preds = %lor.lhs.false2076
  %op_first2085 = getelementptr inbounds nuw i8, ptr %enter.1, i64 40
  %316 = load ptr, ptr %op_first2085, align 8
  %tobool2086.not = icmp eq ptr %316, null
  br i1 %tobool2086.not, label %sw.epilog2396, label %lor.lhs.false2087

lor.lhs.false2087:                                ; preds = %if.end2084
  %op_type2088 = getelementptr inbounds nuw i8, ptr %316, i64 32
  %bf.load2089 = load i16, ptr %op_type2088, align 8
  %bf.clear2090 = and i16 %bf.load2089, 511
  %cmp2092.not = icmp eq i16 %bf.clear2090, 0
  br i1 %cmp2092.not, label %lor.lhs.false2094, label %sw.epilog2396

lor.lhs.false2094:                                ; preds = %lor.lhs.false2087
  %op_targ2095 = getelementptr inbounds nuw i8, ptr %316, i64 24
  %317 = load i64, ptr %op_targ2095, align 8
  %cmp2096.not = icmp eq i64 %317, 3
  br i1 %cmp2096.not, label %if.end2099, label %sw.epilog2396

if.end2099:                                       ; preds = %lor.lhs.false2094
  %op_sibling2100 = getelementptr inbounds nuw i8, ptr %316, i64 8
  %318 = load ptr, ptr %op_sibling2100, align 8
  %tobool2102.not = icmp eq ptr %318, null
  br i1 %tobool2102.not, label %sw.epilog2396, label %lor.lhs.false2103

lor.lhs.false2103:                                ; preds = %if.end2099
  %op_type2104 = getelementptr inbounds nuw i8, ptr %318, i64 32
  %bf.load2105 = load i16, ptr %op_type2104, align 8
  %bf.clear2106 = and i16 %bf.load2105, 511
  %cmp2108.not = icmp eq i16 %bf.clear2106, 0
  br i1 %cmp2108.not, label %lor.lhs.false2110, label %sw.epilog2396

lor.lhs.false2110:                                ; preds = %lor.lhs.false2103
  %op_targ2111 = getelementptr inbounds nuw i8, ptr %318, i64 24
  %319 = load i64, ptr %op_targ2111, align 8
  %cmp2112.not = icmp eq i64 %319, 158
  br i1 %cmp2112.not, label %if.end2115, label %sw.epilog2396

if.end2115:                                       ; preds = %lor.lhs.false2110
  %op_last2116 = getelementptr inbounds nuw i8, ptr %318, i64 48
  %320 = load ptr, ptr %op_last2116, align 8
  %cmp2117.not = icmp eq ptr %320, %o.addr.2.lcssa3481
  br i1 %cmp2117.not, label %if.end2120, label %sw.epilog2396

if.end2120:                                       ; preds = %if.end2115
  %op_first2121 = getelementptr inbounds nuw i8, ptr %318, i64 40
  %321 = load ptr, ptr %op_first2121, align 8
  %tobool2122.not = icmp eq ptr %321, null
  br i1 %tobool2122.not, label %sw.epilog2396, label %lor.lhs.false2123

lor.lhs.false2123:                                ; preds = %if.end2120
  %op_type2124 = getelementptr inbounds nuw i8, ptr %321, i64 32
  %bf.load2125 = load i16, ptr %op_type2124, align 8
  %bf.clear2126 = and i16 %bf.load2125, 511
  %cmp2128.not = icmp eq i16 %bf.clear2126, 3
  br i1 %cmp2128.not, label %if.end2131, label %sw.epilog2396

if.end2131:                                       ; preds = %lor.lhs.false2123
  %op_sibling2132 = getelementptr inbounds nuw i8, ptr %321, i64 8
  %322 = load ptr, ptr %op_sibling2132, align 8
  %cmp2134.not = icmp eq ptr %322, %o.addr.2.lcssa3481
  br i1 %cmp2134.not, label %if.end2137, label %sw.epilog2396

if.end2137:                                       ; preds = %if.end2131
  %op_first2138 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3481, i64 40
  %323 = load ptr, ptr %op_first2138, align 8
  %tobool2139.not = icmp eq ptr %323, null
  br i1 %tobool2139.not, label %sw.epilog2396, label %lor.lhs.false2140

lor.lhs.false2140:                                ; preds = %if.end2137
  %op_type2141 = getelementptr inbounds nuw i8, ptr %323, i64 32
  %bf.load2142 = load i16, ptr %op_type2141, align 8
  %bf.clear2143 = and i16 %bf.load2142, 511
  %cmp2145.not = icmp eq i16 %bf.clear2143, 3
  br i1 %cmp2145.not, label %if.end2148, label %sw.epilog2396

if.end2148:                                       ; preds = %lor.lhs.false2140
  %op_last2149 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3481, i64 48
  %324 = load ptr, ptr %op_last2149, align 8
  %tobool2150.not = icmp eq ptr %324, null
  br i1 %tobool2150.not, label %sw.epilog2396, label %lor.lhs.false2151

lor.lhs.false2151:                                ; preds = %if.end2148
  %325 = load ptr, ptr %324, align 8
  %cmp2153.not = icmp eq ptr %325, %o.addr.2.lcssa3481
  br i1 %cmp2153.not, label %if.end2156, label %sw.epilog2396

if.end2156:                                       ; preds = %lor.lhs.false2151
  %op_sibling2157 = getelementptr inbounds nuw i8, ptr %323, i64 8
  %326 = load ptr, ptr %op_sibling2157, align 8
  %tobool2159.not = icmp eq ptr %326, null
  br i1 %tobool2159.not, label %if.end2183, label %land.lhs.true2160

land.lhs.true2160:                                ; preds = %if.end2156
  %op_type2161 = getelementptr inbounds nuw i8, ptr %326, i64 32
  %bf.load2162 = load i16, ptr %op_type2161, align 8
  %bf.clear2163 = and i16 %bf.load2162, 511
  %cmp2165 = icmp eq i16 %bf.clear2163, 135
  br i1 %cmp2165, label %land.lhs.true2167, label %if.end2183

land.lhs.true2167:                                ; preds = %land.lhs.true2160
  %op_sibling2168 = getelementptr inbounds nuw i8, ptr %326, i64 8
  %327 = load ptr, ptr %op_sibling2168, align 8
  %tobool2169.not = icmp eq ptr %327, null
  br i1 %tobool2169.not, label %land.lhs.true2172, label %if.end2183

land.lhs.true2172:                                ; preds = %land.lhs.true2167
  %op_flags2173 = getelementptr inbounds nuw i8, ptr %326, i64 34
  %328 = load i8, ptr %op_flags2173, align 2
  %cmp2175 = icmp eq i8 %328, 7
  br i1 %cmp2175, label %if.then2177, label %if.end2183

if.then2177:                                      ; preds = %land.lhs.true2172
  store i8 22, ptr %op_flags2173, align 2
  %op_flags2179 = getelementptr inbounds nuw i8, ptr %enter.1, i64 34
  %329 = load i8, ptr %op_flags2179, align 2
  %330 = or i8 %329, 64
  store i8 %330, ptr %op_flags2179, align 2
  br label %if.end2183

if.end2183:                                       ; preds = %if.then2177, %land.lhs.true2172, %land.lhs.true2167, %land.lhs.true2160, %if.end2156
  %331 = load ptr, ptr %323, align 8
  store ptr %331, ptr %321, align 8
  %op_flags2186 = getelementptr inbounds nuw i8, ptr %323, i64 34
  %332 = load i8, ptr %op_flags2186, align 2
  %op_flags2187 = getelementptr inbounds nuw i8, ptr %321, i64 34
  store i8 %332, ptr %op_flags2187, align 2
  %tobool2188.not = icmp eq ptr %gvop.0, null
  %cond2192 = select i1 %tobool2188.not, ptr %enter.1, ptr %gvop.0
  store ptr %cond2192, ptr %324, align 8
  tail call void @Perl_op_null(ptr noundef nonnull %323)
  tail call void @Perl_op_null(ptr noundef nonnull %o.addr.2.lcssa3481)
  %op_private2194 = getelementptr inbounds nuw i8, ptr %enter.1, i64 35
  %333 = load i8, ptr %op_private2194, align 1
  %334 = or i8 %333, 4
  store i8 %334, ptr %op_private2194, align 1
  %op_private2198 = getelementptr inbounds nuw i8, ptr %315, i64 35
  %335 = load i8, ptr %op_private2198, align 1
  %336 = or i8 %335, 4
  store i8 %336, ptr %op_private2198, align 1
  br label %sw.epilog2396

sw.bb2216:                                        ; preds = %sw.epilog
  %oldoldop.1.lcssa3533 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3508 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3484 = phi ptr [ %o.addr.2, %sw.epilog ]
  %op_opt14.lcssa3461 = phi ptr [ %op_opt14, %sw.epilog ]
  %op_private2217 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3484, i64 35
  %337 = load i8, ptr %op_private2217, align 1
  %tobool2220.not = icmp sgt i8 %337, -1
  br i1 %tobool2220.not, label %land.lhs.true2221, label %sw.epilog2396

land.lhs.true2221:                                ; preds = %sw.bb2216
  %338 = load ptr, ptr @PL_compcv, align 8
  %339 = load ptr, ptr %338, align 8
  %xcv_flags = getelementptr inbounds nuw i8, ptr %339, i64 92
  %340 = load i32, ptr %xcv_flags, align 4
  %and2223 = and i32 %340, 32
  %tobool2224.not = icmp eq i32 %and2223, 0
  br i1 %tobool2224.not, label %land.lhs.true2225, label %sw.epilog2396

land.lhs.true2225:                                ; preds = %land.lhs.true2221
  %and2228 = and i32 %340, 128
  %tobool2229.not = icmp eq i32 %and2228, 0
  br i1 %tobool2229.not, label %if.then2234, label %lor.lhs.false2230

lor.lhs.false2230:                                ; preds = %land.lhs.true2225
  %341 = load i8, ptr @PL_cv_has_eval, align 1, !range !13, !noundef !14
  %loadedv2231 = trunc nuw i8 %341 to i1
  %342 = load i32, ptr @PL_perldb, align 4
  %tobool2233 = icmp ne i32 %342, 0
  %or.cond2439 = select i1 %loadedv2231, i1 true, i1 %tobool2233
  br i1 %or.cond2439, label %sw.epilog2396, label %if.then2234

if.then2234:                                      ; preds = %lor.lhs.false2230, %land.lhs.true2225
  %and2237 = and i32 %340, 256
  %tobool2238.not = icmp eq i32 %and2237, 0
  br i1 %tobool2238.not, label %if.else2244, label %land.lhs.true2239

land.lhs.true2239:                                ; preds = %if.then2234
  %sv_flags2240 = getelementptr inbounds nuw i8, ptr %338, i64 12
  %343 = load i32, ptr %sv_flags2240, align 4
  %and2241 = and i32 %343, 16777216
  %tobool2242.not = icmp eq i32 %and2241, 0
  br i1 %tobool2242.not, label %do.body2250, label %if.else2244

if.else2244:                                      ; preds = %land.lhs.true2239, %if.then2234
  %call2245 = tail call ptr @Perl_newRV(ptr noundef nonnull %338) #5
  %call2246 = tail call ptr @Perl_sv_rvweaken(ptr noundef %call2245) #5
  %sv_flags2247 = getelementptr inbounds nuw i8, ptr %call2245, i64 12
  %344 = load i32, ptr %sv_flags2247, align 4
  %or2248 = or i32 %344, 134283264
  store i32 %or2248, ptr %sv_flags2247, align 4
  br label %do.body2250

do.body2250:                                      ; preds = %if.else2244, %land.lhs.true2239
  %sv.0 = phi ptr [ %call2245, %if.else2244 ], [ @PL_sv_undef, %land.lhs.true2239 ]
  %bf.load2252 = load i16, ptr %op_opt14.lcssa3461, align 8
  %bf.clear2253 = and i16 %bf.load2252, -512
  %bf.set2254 = or disjoint i16 %bf.clear2253, 5
  store i16 %bf.set2254, ptr %op_opt14.lcssa3461, align 8
  %345 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PL_ppaddr, i64 40), align 8
  %op_ppaddr2255 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3484, i64 16
  store ptr %345, ptr %op_ppaddr2255, align 8
  %op_flags2258 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3484, i64 34
  %346 = load i8, ptr %op_flags2258, align 2
  %347 = or i8 %346, -128
  store i8 %347, ptr %op_flags2258, align 2
  %op_sv2262 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3484, i64 40
  store ptr %sv.0, ptr %op_sv2262, align 8
  br label %sw.epilog2396

sw.bb2264:                                        ; preds = %sw.epilog
  %oldoldop.1.lcssa3534 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3509 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3485 = phi ptr [ %o.addr.2, %sw.epilog ]
  %op_flags2265 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3485, i64 34
  %348 = load i8, ptr %op_flags2265, align 2
  %349 = and i8 %348, 3
  %350 = icmp eq i8 %349, 1
  br i1 %350, label %if.then2309, label %lor.lhs.false2278

lor.lhs.false2278:                                ; preds = %sw.bb2264
  %351 = load ptr, ptr %o.addr.2.lcssa3485, align 8
  %op_type2280 = getelementptr inbounds nuw i8, ptr %351, i64 32
  %bf.load2281 = load i16, ptr %op_type2280, align 8
  %bf.clear2282 = and i16 %bf.load2281, 511
  %cmp2284 = icmp eq i16 %bf.clear2282, 192
  br i1 %cmp2284, label %land.lhs.true2286, label %sw.epilog2396

land.lhs.true2286:                                ; preds = %lor.lhs.false2278
  %352 = load ptr, ptr %351, align 8
  %op_type2289 = getelementptr inbounds nuw i8, ptr %352, i64 32
  %bf.load2290 = load i16, ptr %op_type2289, align 8
  %bf.clear2291 = and i16 %bf.load2290, 511
  switch i16 %bf.clear2291, label %sw.epilog2396 [
    i16 186, label %if.then2309
    i16 203, label %land.lhs.true2304
  ]

land.lhs.true2304:                                ; preds = %land.lhs.true2286
  %353 = load ptr, ptr @PL_compcv, align 8
  %354 = load ptr, ptr %353, align 8
  %xcv_flags2306 = getelementptr inbounds nuw i8, ptr %354, i64 92
  %355 = load i32, ptr %xcv_flags2306, align 4
  %and2307 = and i32 %355, 2
  %tobool2308.not = icmp eq i32 %and2307, 0
  br i1 %tobool2308.not, label %if.then2309, label %sw.epilog2396

if.then2309:                                      ; preds = %land.lhs.true2304, %land.lhs.true2286, %sw.bb2264
  %356 = load ptr, ptr @PL_op, align 8
  %op_first2310 = getelementptr inbounds nuw i8, ptr %356, i64 40
  %357 = load ptr, ptr %op_first2310, align 8
  %tobool2311.not = icmp eq ptr %357, null
  br i1 %tobool2311.not, label %sw.epilog2396, label %if.then2312

if.then2312:                                      ; preds = %if.then2309
  %op_sibling2313 = getelementptr inbounds nuw i8, ptr %357, i64 8
  %358 = load ptr, ptr %op_sibling2313, align 8
  %op_type2315 = getelementptr inbounds nuw i8, ptr %358, i64 32
  %bf.load2316 = load i16, ptr %op_type2315, align 8
  %bf.clear2317 = and i16 %bf.load2316, 511
  %cmp2319 = icmp eq i16 %bf.clear2317, 121
  br i1 %cmp2319, label %land.lhs.true2321, label %sw.epilog2396

land.lhs.true2321:                                ; preds = %if.then2312
  %op_private2322 = getelementptr inbounds nuw i8, ptr %358, i64 35
  %359 = load i8, ptr %op_private2322, align 1
  %360 = and i8 %359, 4
  %cmp2325.not.not = icmp eq i8 %360, 0
  br i1 %cmp2325.not.not, label %if.then2327, label %sw.epilog2396

if.then2327:                                      ; preds = %land.lhs.true2321
  tail call void @Perl_op_null(ptr noundef nonnull %o.addr.2.lcssa3485)
  %call2328 = tail call ptr @Perl_op_sibling_splice(ptr noundef nonnull %o.addr.2.lcssa3485, ptr noundef null, i32 noundef 1, ptr noundef null)
  %op_first2329 = getelementptr inbounds nuw i8, ptr %358, i64 40
  %361 = load ptr, ptr %op_first2329, align 8
  %call2330 = tail call ptr @Perl_op_sibling_splice(ptr noundef nonnull %358, ptr noundef %361, i32 noundef 0, ptr noundef nonnull %357)
  %362 = load i8, ptr %op_private2322, align 1
  %363 = or i8 %362, 16
  store i8 %363, ptr %op_private2322, align 1
  %364 = load i8, ptr %op_flags2265, align 2
  %365 = and i8 %364, -4
  %366 = or disjoint i8 %365, 1
  %op_flags2340 = getelementptr inbounds nuw i8, ptr %358, i64 34
  store i8 %366, ptr %op_flags2340, align 2
  br label %sw.epilog2396

sw.bb2344:                                        ; preds = %sw.epilog
  %oldoldop.1.lcssa3532 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3507 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3483 = phi ptr [ %o.addr.2, %sw.epilog ]
  %op_last2345 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3483, i64 48
  %367 = load ptr, ptr %op_last2345, align 8
  %op_first2346 = getelementptr inbounds nuw i8, ptr %367, i64 40
  %368 = load ptr, ptr %op_first2346, align 8
  %op_sibling2347 = getelementptr inbounds nuw i8, ptr %368, i64 8
  %369 = load ptr, ptr %op_sibling2347, align 8
  %op_last2350 = getelementptr inbounds nuw i8, ptr %367, i64 48
  %370 = load ptr, ptr %op_last2350, align 8
  %cmp2351 = icmp eq ptr %369, %370
  br i1 %cmp2351, label %land.lhs.true2353, label %if.end2367

land.lhs.true2353:                                ; preds = %sw.bb2344
  %op_type2356 = getelementptr inbounds nuw i8, ptr %370, i64 32
  %bf.load2357 = load i16, ptr %op_type2356, align 8
  %bf.clear2358 = and i16 %bf.load2357, 511
  %cmp2360 = icmp eq i16 %bf.clear2358, 1
  br i1 %cmp2360, label %if.then2362, label %if.end2367

if.then2362:                                      ; preds = %land.lhs.true2353
  %op_private2363 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3483, i64 35
  %371 = load i8, ptr %op_private2363, align 1
  %372 = and i8 %371, -65
  store i8 %372, ptr %op_private2363, align 1
  br label %sw.epilog2396

if.end2367:                                       ; preds = %land.lhs.true2353, %sw.bb2344
  %op_private2368 = getelementptr inbounds nuw i8, ptr %o.addr.2.lcssa3483, i64 35
  %373 = load i8, ptr %op_private2368, align 1
  %374 = and i8 %373, 64
  %tobool2371.not = icmp eq i8 %374, 0
  br i1 %tobool2371.not, label %if.else2381, label %if.then2372

if.then2372:                                      ; preds = %if.end2367
  %375 = load i32, ptr @PL_generation, align 4
  %inc2373 = add nsw i32 %375, 1
  store i32 %inc2373, ptr @PL_generation, align 4
  %call2374 = tail call fastcc zeroext i1 @S_aassign_common_vars(ptr noundef nonnull %o.addr.2.lcssa3483)
  br i1 %call2374, label %sw.epilog2396, label %if.then2375

if.then2375:                                      ; preds = %if.then2372
  %376 = load i8, ptr %op_private2368, align 1
  %377 = and i8 %376, -65
  store i8 %377, ptr %op_private2368, align 1
  br label %sw.epilog2396

if.else2381:                                      ; preds = %if.end2367
  %call2382 = tail call fastcc zeroext i1 @S_aassign_common_vars_aliases_only(ptr noundef nonnull %o.addr.2.lcssa3483)
  br i1 %call2382, label %if.then2383, label %sw.epilog2396

if.then2383:                                      ; preds = %if.else2381
  %378 = or disjoint i8 %373, 64
  store i8 %378, ptr %op_private2368, align 1
  br label %sw.epilog2396

sw.bb2390:                                        ; preds = %sw.epilog
  %oldoldop.1.lcssa3531 = phi ptr [ %oldoldop.1, %sw.epilog ]
  %oldop.1.lcssa3506 = phi ptr [ %oldop.1, %sw.epilog ]
  %o.addr.2.lcssa3482 = phi ptr [ %o.addr.2, %sw.epilog ]
  %call2391 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %o.addr.2.lcssa3482, i32 noundef 8)
  %tobool2392.not = icmp eq ptr %call2391, null
  br i1 %tobool2392.not, label %sw.epilog2396, label %if.then2393

if.then2393:                                      ; preds = %sw.bb2390
  tail call void %call2391(ptr noundef nonnull %o.addr.2.lcssa3482, ptr noundef %oldop.1.lcssa3506) #5
  br label %sw.epilog2396

sw.epilog2396.loopexit:                           ; preds = %land.rhs417, %while.cond415
  br label %sw.epilog2396

sw.epilog2396.loopexit3442:                       ; preds = %redo_nextstate, %if.end1213, %if.end1068, %sw.epilog
  %oldoldop.1.lcssa = phi ptr [ %oldoldop.1, %sw.epilog ], [ %oldoldop.1, %if.end1068 ], [ %oldoldop.1, %redo_nextstate ], [ %oldoldop.1, %if.end1213 ]
  %oldop.1.lcssa = phi ptr [ %oldop.1, %sw.epilog ], [ %oldop.1, %if.end1068 ], [ %oldop.1, %redo_nextstate ], [ %oldop.1, %if.end1213 ]
  %o.addr.7.ph = phi ptr [ %o.addr.2, %if.end1213 ], [ %oldop.1, %redo_nextstate ], [ %o.addr.2, %if.end1068 ], [ %o.addr.2, %sw.epilog ]
  br label %sw.epilog2396

sw.epilog2396:                                    ; preds = %sw.epilog2396.loopexit3442, %sw.epilog2396.loopexit, %if.then2393, %sw.bb2390, %if.then2383, %if.else2381, %if.then2375, %if.then2372, %if.then2362, %if.then2327, %land.lhs.true2321, %if.then2312, %if.then2309, %land.lhs.true2304, %land.lhs.true2286, %lor.lhs.false2278, %do.body2250, %lor.lhs.false2230, %land.lhs.true2221, %sw.bb2216, %if.end2183, %lor.lhs.false2151, %if.end2148, %lor.lhs.false2140, %if.end2137, %if.end2131, %lor.lhs.false2123, %if.end2120, %if.end2115, %lor.lhs.false2110, %lor.lhs.false2103, %if.end2099, %lor.lhs.false2094, %lor.lhs.false2087, %if.end2084, %lor.lhs.false2076, %if.end2073, %if.end2065, %if.then2059, %if.then2048, %if.then2036, %if.end2025, %sw.bb2018, %if.then2007, %land.lhs.true2002, %land.lhs.true1995, %if.then1992, %land.lhs.true1986, %if.then1978, %if.end1973, %if.end1967, %lor.lhs.false1959, %if.end1956, %if.end1914, %if.end1878, %if.end1858, %if.end1802, %if.then1706, %if.end1698, %if.end1636, %if.then1419, %land.lhs.true1392, %land.lhs.true1386, %sw.bb1360, %if.end.i3102, %Perl_op_null.exit3097, %land.lhs.true1334, %land.lhs.true1325, %Perl_op_null.exit3085, %if.then1289, %if.else1281, %if.else1015, %land.lhs.true863, %if.then856, %for.end, %cleanup625, %sw.bb478, %if.end.i, %if.end475, %if.then460, %land.lhs.true446, %sw.bb443, %land.lhs.true410, %if.end407, %if.then401, %land.lhs.true396, %if.then367, %sw.bb163
  %oldoldop.13536 = phi ptr [ %oldoldop.1.lcssa3515, %sw.bb163 ], [ %oldoldop.1.lcssa3516, %if.end407 ], [ %oldoldop.1.lcssa3516, %land.lhs.true410 ], [ %oldoldop.1.lcssa3517, %if.then460 ], [ %oldoldop.1.lcssa3517, %land.lhs.true446 ], [ %oldoldop.1.lcssa3517, %sw.bb443 ], [ %oldoldop.1.lcssa3518, %sw.bb478 ], [ %oldoldop.1.lcssa3521, %cleanup625 ], [ %oldoldop.1.lcssa3535, %if.then1289 ], [ %oldoldop.1.lcssa3535, %Perl_op_null.exit3085 ], [ %oldoldop.1.lcssa3535, %land.lhs.true1334 ], [ %oldoldop.1.lcssa3535, %land.lhs.true1325 ], [ %oldoldop.1.lcssa3522, %if.then1419 ], [ %oldoldop.1.lcssa3523, %if.end1636 ], [ %oldoldop.13537, %if.end1802 ], [ %oldoldop.1.lcssa3526, %if.end1858 ], [ %oldoldop.1.lcssa3527, %if.end1878 ], [ %oldoldop.1.lcssa3528, %if.end1914 ], [ %oldoldop.1.lcssa3533, %sw.bb2216 ], [ %oldoldop.1.lcssa3533, %land.lhs.true2221 ], [ %oldoldop.1.lcssa3533, %lor.lhs.false2230 ], [ %oldoldop.1.lcssa3533, %do.body2250 ], [ %oldoldop.1.lcssa3534, %land.lhs.true2304 ], [ %oldoldop.1.lcssa3534, %lor.lhs.false2278 ], [ %oldoldop.1.lcssa3532, %if.then2362 ], [ %oldoldop.1.lcssa3532, %if.then2372 ], [ %oldoldop.1.lcssa3532, %if.then2375 ], [ %oldoldop.1.lcssa3532, %if.then2383 ], [ %oldoldop.1.lcssa3532, %if.else2381 ], [ %oldoldop.1.lcssa3516, %if.then401 ], [ %oldoldop.1.lcssa3516, %land.lhs.true396 ], [ %oldoldop.1.lcssa3516, %if.then367 ], [ %oldoldop.1.lcssa3521, %if.else1015 ], [ %oldoldop.1.lcssa3521, %if.then856 ], [ %oldoldop.1.lcssa3521, %land.lhs.true863 ], [ %oldoldop.1.lcssa3521, %for.end ], [ %oldoldop.1.lcssa3535, %if.else1281 ], [ %oldoldop.1.lcssa3523, %if.then1706 ], [ %oldoldop.1.lcssa3523, %if.end1698 ], [ %oldoldop.1.lcssa3529, %if.end1973 ], [ %oldoldop.1.lcssa3529, %if.then1992 ], [ %oldoldop.1.lcssa3529, %land.lhs.true1995 ], [ %oldoldop.1.lcssa3529, %land.lhs.true2002 ], [ %oldoldop.1.lcssa3529, %if.then2007 ], [ %oldoldop.1.lcssa3529, %land.lhs.true1986 ], [ %oldoldop.1.lcssa3529, %if.then1978 ], [ %oldoldop.1.lcssa3529, %if.end1967 ], [ %oldoldop.1.lcssa3529, %if.end1956 ], [ %oldoldop.1.lcssa3529, %lor.lhs.false1959 ], [ %oldoldop.1.lcssa3530, %if.end2148 ], [ %oldoldop.1.lcssa3530, %lor.lhs.false2151 ], [ %oldoldop.1.lcssa3530, %if.end2137 ], [ %oldoldop.1.lcssa3530, %lor.lhs.false2140 ], [ %oldoldop.1.lcssa3530, %if.end2131 ], [ %oldoldop.1.lcssa3530, %if.end2120 ], [ %oldoldop.1.lcssa3530, %lor.lhs.false2123 ], [ %oldoldop.1.lcssa3530, %if.end2115 ], [ %oldoldop.1.lcssa3530, %if.end2099 ], [ %oldoldop.1.lcssa3530, %lor.lhs.false2103 ], [ %oldoldop.1.lcssa3530, %lor.lhs.false2110 ], [ %oldoldop.1.lcssa3530, %if.end2084 ], [ %oldoldop.1.lcssa3530, %lor.lhs.false2087 ], [ %oldoldop.1.lcssa3530, %lor.lhs.false2094 ], [ %oldoldop.1.lcssa3530, %if.end2073 ], [ %oldoldop.1.lcssa3530, %lor.lhs.false2076 ], [ %oldoldop.1.lcssa3530, %if.end2065 ], [ %oldoldop.1.lcssa3530, %if.then2059 ], [ %oldoldop.1.lcssa3530, %if.then2048 ], [ %oldoldop.1.lcssa3530, %if.then2036 ], [ %oldoldop.1.lcssa3530, %if.end2025 ], [ %oldoldop.1.lcssa3530, %sw.bb2018 ], [ %oldoldop.1.lcssa3530, %if.end2183 ], [ %oldoldop.1.lcssa3534, %land.lhs.true2286 ], [ %oldoldop.1.lcssa3534, %if.then2312 ], [ %oldoldop.1.lcssa3534, %land.lhs.true2321 ], [ %oldoldop.1.lcssa3534, %if.then2327 ], [ %oldoldop.1.lcssa3534, %if.then2309 ], [ %oldoldop.1.lcssa3531, %if.then2393 ], [ %oldoldop.1.lcssa3531, %sw.bb2390 ], [ %oldoldop.1.lcssa3517, %if.end475 ], [ %oldoldop.1.lcssa3517, %if.end.i ], [ %oldoldop.1.lcssa3535, %Perl_op_null.exit3097 ], [ %oldoldop.1.lcssa3535, %if.end.i3102 ], [ %oldoldop.1.lcssa3522, %land.lhs.true1386 ], [ %oldoldop.1.lcssa3522, %sw.bb1360 ], [ %oldoldop.1.lcssa3522, %land.lhs.true1392 ], [ %oldoldop.1.lcssa3516, %sw.epilog2396.loopexit ], [ %oldoldop.1.lcssa, %sw.epilog2396.loopexit3442 ]
  %oldop.13511 = phi ptr [ %oldop.1.lcssa3490, %sw.bb163 ], [ %oldop.1.lcssa3491, %if.end407 ], [ %oldop.1.lcssa3491, %land.lhs.true410 ], [ %oldop.1.lcssa3492, %if.then460 ], [ %oldop.1.lcssa3492, %land.lhs.true446 ], [ %oldop.1.lcssa3492, %sw.bb443 ], [ %oldop.1.lcssa3493, %sw.bb478 ], [ %oldop.1.lcssa3496, %cleanup625 ], [ %oldop.1.lcssa3510, %if.then1289 ], [ %oldop.1.lcssa3510, %Perl_op_null.exit3085 ], [ %oldop.1.lcssa3510, %land.lhs.true1334 ], [ %oldop.1.lcssa3510, %land.lhs.true1325 ], [ %oldop.1.lcssa3497, %if.then1419 ], [ %oldop.1.lcssa3498, %if.end1636 ], [ %oldop.13512, %if.end1802 ], [ %oldop.1.lcssa3501, %if.end1858 ], [ %oldop.1.lcssa3502, %if.end1878 ], [ %oldop.1.lcssa3503, %if.end1914 ], [ %oldop.1.lcssa3508, %sw.bb2216 ], [ %oldop.1.lcssa3508, %land.lhs.true2221 ], [ %oldop.1.lcssa3508, %lor.lhs.false2230 ], [ %oldop.1.lcssa3508, %do.body2250 ], [ %oldop.1.lcssa3509, %land.lhs.true2304 ], [ %oldop.1.lcssa3509, %lor.lhs.false2278 ], [ %oldop.1.lcssa3507, %if.then2362 ], [ %oldop.1.lcssa3507, %if.then2372 ], [ %oldop.1.lcssa3507, %if.then2375 ], [ %oldop.1.lcssa3507, %if.then2383 ], [ %oldop.1.lcssa3507, %if.else2381 ], [ %oldop.1.lcssa3491, %if.then401 ], [ %oldop.1.lcssa3491, %land.lhs.true396 ], [ %oldop.1.lcssa3491, %if.then367 ], [ %oldop.1.lcssa3496, %if.else1015 ], [ %oldop.1.lcssa3496, %if.then856 ], [ %oldop.1.lcssa3496, %land.lhs.true863 ], [ %oldop.1.lcssa3496, %for.end ], [ %oldop.1.lcssa3510, %if.else1281 ], [ %oldop.1.lcssa3498, %if.then1706 ], [ %oldop.1.lcssa3498, %if.end1698 ], [ %oldop.1.lcssa3504, %if.end1973 ], [ %oldop.1.lcssa3504, %if.then1992 ], [ %oldop.1.lcssa3504, %land.lhs.true1995 ], [ %oldop.1.lcssa3504, %land.lhs.true2002 ], [ %oldop.1.lcssa3504, %if.then2007 ], [ %oldop.1.lcssa3504, %land.lhs.true1986 ], [ %oldop.1.lcssa3504, %if.then1978 ], [ %oldop.1.lcssa3504, %if.end1967 ], [ %oldop.1.lcssa3504, %if.end1956 ], [ %oldop.1.lcssa3504, %lor.lhs.false1959 ], [ %oldop.1.lcssa3505, %if.end2148 ], [ %oldop.1.lcssa3505, %lor.lhs.false2151 ], [ %oldop.1.lcssa3505, %if.end2137 ], [ %oldop.1.lcssa3505, %lor.lhs.false2140 ], [ %oldop.1.lcssa3505, %if.end2131 ], [ %oldop.1.lcssa3505, %if.end2120 ], [ %oldop.1.lcssa3505, %lor.lhs.false2123 ], [ %oldop.1.lcssa3505, %if.end2115 ], [ %oldop.1.lcssa3505, %if.end2099 ], [ %oldop.1.lcssa3505, %lor.lhs.false2103 ], [ %oldop.1.lcssa3505, %lor.lhs.false2110 ], [ %oldop.1.lcssa3505, %if.end2084 ], [ %oldop.1.lcssa3505, %lor.lhs.false2087 ], [ %oldop.1.lcssa3505, %lor.lhs.false2094 ], [ %oldop.1.lcssa3505, %if.end2073 ], [ %oldop.1.lcssa3505, %lor.lhs.false2076 ], [ %oldop.1.lcssa3505, %if.end2065 ], [ %oldop.1.lcssa3505, %if.then2059 ], [ %oldop.1.lcssa3505, %if.then2048 ], [ %oldop.1.lcssa3505, %if.then2036 ], [ %oldop.1.lcssa3505, %if.end2025 ], [ %oldop.1.lcssa3505, %sw.bb2018 ], [ %oldop.1.lcssa3505, %if.end2183 ], [ %oldop.1.lcssa3509, %land.lhs.true2286 ], [ %oldop.1.lcssa3509, %if.then2312 ], [ %oldop.1.lcssa3509, %land.lhs.true2321 ], [ %oldop.1.lcssa3509, %if.then2327 ], [ %oldop.1.lcssa3509, %if.then2309 ], [ %oldop.1.lcssa3506, %if.then2393 ], [ %oldop.1.lcssa3506, %sw.bb2390 ], [ %oldop.1.lcssa3492, %if.end475 ], [ %oldop.1.lcssa3492, %if.end.i ], [ %oldop.1.lcssa3510, %Perl_op_null.exit3097 ], [ %oldop.1.lcssa3510, %if.end.i3102 ], [ %oldop.1.lcssa3497, %land.lhs.true1386 ], [ %oldop.1.lcssa3497, %sw.bb1360 ], [ %oldop.1.lcssa3497, %land.lhs.true1392 ], [ %oldop.1.lcssa3491, %sw.epilog2396.loopexit ], [ %oldop.1.lcssa, %sw.epilog2396.loopexit3442 ]
  %defer_ix.9 = phi i32 [ %defer_ix.0, %sw.bb163 ], [ %defer_ix.0, %if.end407 ], [ %defer_ix.0, %land.lhs.true410 ], [ %defer_ix.0, %if.then460 ], [ %defer_ix.0, %land.lhs.true446 ], [ %defer_ix.0, %sw.bb443 ], [ %defer_ix.0, %sw.bb478 ], [ %defer_ix.0, %cleanup625 ], [ %defer_ix.0, %if.then1289 ], [ %defer_ix.0, %Perl_op_null.exit3085 ], [ %defer_ix.0, %land.lhs.true1334 ], [ %defer_ix.0, %land.lhs.true1325 ], [ %defer_ix.0, %if.then1419 ], [ %inc1525, %if.end1636 ], [ %inc1804, %if.end1802 ], [ %inc1860, %if.end1858 ], [ %inc1880, %if.end1878 ], [ %inc1916, %if.end1914 ], [ %defer_ix.0, %sw.bb2216 ], [ %defer_ix.0, %land.lhs.true2221 ], [ %defer_ix.0, %lor.lhs.false2230 ], [ %defer_ix.0, %do.body2250 ], [ %defer_ix.0, %land.lhs.true2304 ], [ %defer_ix.0, %lor.lhs.false2278 ], [ %defer_ix.0, %if.then2362 ], [ %defer_ix.0, %if.then2372 ], [ %defer_ix.0, %if.then2375 ], [ %defer_ix.0, %if.then2383 ], [ %defer_ix.0, %if.else2381 ], [ %defer_ix.0, %if.then401 ], [ %defer_ix.0, %land.lhs.true396 ], [ %defer_ix.0, %if.then367 ], [ %defer_ix.0, %if.else1015 ], [ %defer_ix.0, %if.then856 ], [ %defer_ix.0, %land.lhs.true863 ], [ %defer_ix.0, %for.end ], [ %defer_ix.0, %if.else1281 ], [ %inc1525, %if.then1706 ], [ %inc1525, %if.end1698 ], [ %defer_ix.8, %if.end1973 ], [ %defer_ix.8, %if.then1992 ], [ %defer_ix.8, %land.lhs.true1995 ], [ %defer_ix.8, %land.lhs.true2002 ], [ %defer_ix.8, %if.then2007 ], [ %defer_ix.8, %land.lhs.true1986 ], [ %defer_ix.8, %if.then1978 ], [ %defer_ix.8, %if.end1967 ], [ %defer_ix.8, %if.end1956 ], [ %defer_ix.8, %lor.lhs.false1959 ], [ %defer_ix.0, %if.end2148 ], [ %defer_ix.0, %lor.lhs.false2151 ], [ %defer_ix.0, %if.end2137 ], [ %defer_ix.0, %lor.lhs.false2140 ], [ %defer_ix.0, %if.end2131 ], [ %defer_ix.0, %if.end2120 ], [ %defer_ix.0, %lor.lhs.false2123 ], [ %defer_ix.0, %if.end2115 ], [ %defer_ix.0, %if.end2099 ], [ %defer_ix.0, %lor.lhs.false2103 ], [ %defer_ix.0, %lor.lhs.false2110 ], [ %defer_ix.0, %if.end2084 ], [ %defer_ix.0, %lor.lhs.false2087 ], [ %defer_ix.0, %lor.lhs.false2094 ], [ %defer_ix.0, %if.end2073 ], [ %defer_ix.0, %lor.lhs.false2076 ], [ %defer_ix.0, %if.end2065 ], [ %defer_ix.0, %if.then2059 ], [ %defer_ix.0, %if.then2048 ], [ %defer_ix.0, %if.then2036 ], [ %defer_ix.0, %if.end2025 ], [ %defer_ix.0, %sw.bb2018 ], [ %defer_ix.0, %if.end2183 ], [ %defer_ix.0, %land.lhs.true2286 ], [ %defer_ix.0, %if.then2312 ], [ %defer_ix.0, %land.lhs.true2321 ], [ %defer_ix.0, %if.then2327 ], [ %defer_ix.0, %if.then2309 ], [ %defer_ix.0, %if.then2393 ], [ %defer_ix.0, %sw.bb2390 ], [ %defer_ix.0, %if.end475 ], [ %defer_ix.0, %if.end.i ], [ %defer_ix.0, %Perl_op_null.exit3097 ], [ %defer_ix.0, %if.end.i3102 ], [ %defer_ix.0, %land.lhs.true1386 ], [ %defer_ix.0, %sw.bb1360 ], [ %defer_ix.0, %land.lhs.true1392 ], [ %defer_ix.0, %sw.epilog2396.loopexit ], [ %defer_ix.0, %sw.epilog2396.loopexit3442 ]
  %defer_base.8 = phi i32 [ %defer_base.0, %sw.bb163 ], [ %defer_base.0, %if.end407 ], [ %defer_base.0, %land.lhs.true410 ], [ %defer_base.0, %if.then460 ], [ %defer_base.0, %land.lhs.true446 ], [ %defer_base.0, %sw.bb443 ], [ %defer_base.0, %sw.bb478 ], [ %defer_base.0, %cleanup625 ], [ %defer_base.0, %if.then1289 ], [ %defer_base.0, %Perl_op_null.exit3085 ], [ %defer_base.0, %land.lhs.true1334 ], [ %defer_base.0, %land.lhs.true1325 ], [ %defer_base.0, %if.then1419 ], [ %defer_base.1, %if.end1636 ], [ %defer_base.2, %if.end1802 ], [ %defer_base.3, %if.end1858 ], [ %defer_base.4, %if.end1878 ], [ %defer_base.5, %if.end1914 ], [ %defer_base.0, %sw.bb2216 ], [ %defer_base.0, %land.lhs.true2221 ], [ %defer_base.0, %lor.lhs.false2230 ], [ %defer_base.0, %do.body2250 ], [ %defer_base.0, %land.lhs.true2304 ], [ %defer_base.0, %lor.lhs.false2278 ], [ %defer_base.0, %if.then2362 ], [ %defer_base.0, %if.then2372 ], [ %defer_base.0, %if.then2375 ], [ %defer_base.0, %if.then2383 ], [ %defer_base.0, %if.else2381 ], [ %defer_base.0, %if.then401 ], [ %defer_base.0, %land.lhs.true396 ], [ %defer_base.0, %if.then367 ], [ %defer_base.0, %if.else1015 ], [ %defer_base.0, %if.then856 ], [ %defer_base.0, %land.lhs.true863 ], [ %defer_base.0, %for.end ], [ %defer_base.0, %if.else1281 ], [ %defer_base.1, %if.then1706 ], [ %defer_base.1, %if.end1698 ], [ %defer_base.7, %if.end1973 ], [ %defer_base.7, %if.then1992 ], [ %defer_base.7, %land.lhs.true1995 ], [ %defer_base.7, %land.lhs.true2002 ], [ %defer_base.7, %if.then2007 ], [ %defer_base.7, %land.lhs.true1986 ], [ %defer_base.7, %if.then1978 ], [ %defer_base.7, %if.end1967 ], [ %defer_base.7, %if.end1956 ], [ %defer_base.7, %lor.lhs.false1959 ], [ %defer_base.0, %if.end2148 ], [ %defer_base.0, %lor.lhs.false2151 ], [ %defer_base.0, %if.end2137 ], [ %defer_base.0, %lor.lhs.false2140 ], [ %defer_base.0, %if.end2131 ], [ %defer_base.0, %if.end2120 ], [ %defer_base.0, %lor.lhs.false2123 ], [ %defer_base.0, %if.end2115 ], [ %defer_base.0, %if.end2099 ], [ %defer_base.0, %lor.lhs.false2103 ], [ %defer_base.0, %lor.lhs.false2110 ], [ %defer_base.0, %if.end2084 ], [ %defer_base.0, %lor.lhs.false2087 ], [ %defer_base.0, %lor.lhs.false2094 ], [ %defer_base.0, %if.end2073 ], [ %defer_base.0, %lor.lhs.false2076 ], [ %defer_base.0, %if.end2065 ], [ %defer_base.0, %if.then2059 ], [ %defer_base.0, %if.then2048 ], [ %defer_base.0, %if.then2036 ], [ %defer_base.0, %if.end2025 ], [ %defer_base.0, %sw.bb2018 ], [ %defer_base.0, %if.end2183 ], [ %defer_base.0, %land.lhs.true2286 ], [ %defer_base.0, %if.then2312 ], [ %defer_base.0, %land.lhs.true2321 ], [ %defer_base.0, %if.then2327 ], [ %defer_base.0, %if.then2309 ], [ %defer_base.0, %if.then2393 ], [ %defer_base.0, %sw.bb2390 ], [ %defer_base.0, %if.end475 ], [ %defer_base.0, %if.end.i ], [ %defer_base.0, %Perl_op_null.exit3097 ], [ %defer_base.0, %if.end.i3102 ], [ %defer_base.0, %land.lhs.true1386 ], [ %defer_base.0, %sw.bb1360 ], [ %defer_base.0, %land.lhs.true1392 ], [ %defer_base.0, %sw.epilog2396.loopexit ], [ %defer_base.0, %sw.epilog2396.loopexit3442 ]
  %o.addr.7 = phi ptr [ %o.addr.2.lcssa3466, %sw.bb163 ], [ %o.addr.2.lcssa3467, %if.end407 ], [ %o.addr.2.lcssa3467, %land.lhs.true410 ], [ %o.addr.2.lcssa3468, %if.then460 ], [ %o.addr.2.lcssa3468, %land.lhs.true446 ], [ %o.addr.2.lcssa3468, %sw.bb443 ], [ %o.addr.2.lcssa3469, %sw.bb478 ], [ %81, %cleanup625 ], [ %o.addr.2.lcssa3486, %if.then1289 ], [ %o.addr.2.lcssa3486, %Perl_op_null.exit3085 ], [ %o.addr.2.lcssa3486, %land.lhs.true1334 ], [ %o.addr.2.lcssa3486, %land.lhs.true1325 ], [ %o.addr.2.lcssa3473, %if.then1419 ], [ %o.addr.2.lcssa3474, %if.end1636 ], [ %o.addr.23489, %if.end1802 ], [ %o.addr.2.lcssa3477, %if.end1858 ], [ %o.addr.2.lcssa3478, %if.end1878 ], [ %o.addr.2.lcssa3479, %if.end1914 ], [ %o.addr.2.lcssa3484, %sw.bb2216 ], [ %o.addr.2.lcssa3484, %land.lhs.true2221 ], [ %o.addr.2.lcssa3484, %lor.lhs.false2230 ], [ %o.addr.2.lcssa3484, %do.body2250 ], [ %o.addr.2.lcssa3485, %land.lhs.true2304 ], [ %o.addr.2.lcssa3485, %lor.lhs.false2278 ], [ %o.addr.2.lcssa3483, %if.then2362 ], [ %o.addr.2.lcssa3483, %if.then2372 ], [ %o.addr.2.lcssa3483, %if.then2375 ], [ %o.addr.2.lcssa3483, %if.then2383 ], [ %o.addr.2.lcssa3483, %if.else2381 ], [ %o.addr.2.lcssa3467, %if.then401 ], [ %o.addr.2.lcssa3467, %land.lhs.true396 ], [ %o.addr.2.lcssa3467, %if.then367 ], [ %o.addr.2.lcssa3472, %if.else1015 ], [ %o.addr.2.lcssa3472, %if.then856 ], [ %o.addr.2.lcssa3472, %land.lhs.true863 ], [ %o.addr.2.lcssa3472, %for.end ], [ %o.addr.2.lcssa3486, %if.else1281 ], [ %o.addr.2.lcssa3474, %if.then1706 ], [ %o.addr.2.lcssa3474, %if.end1698 ], [ %o.addr.2.lcssa3480, %if.end1973 ], [ %o.addr.2.lcssa3480, %if.then1992 ], [ %o.addr.2.lcssa3480, %land.lhs.true1995 ], [ %o.addr.2.lcssa3480, %land.lhs.true2002 ], [ %o.addr.2.lcssa3480, %if.then2007 ], [ %o.addr.2.lcssa3480, %land.lhs.true1986 ], [ %o.addr.2.lcssa3480, %if.then1978 ], [ %o.addr.2.lcssa3480, %if.end1967 ], [ %o.addr.2.lcssa3480, %if.end1956 ], [ %o.addr.2.lcssa3480, %lor.lhs.false1959 ], [ %o.addr.2.lcssa3481, %if.end2148 ], [ %o.addr.2.lcssa3481, %lor.lhs.false2151 ], [ %o.addr.2.lcssa3481, %if.end2137 ], [ %o.addr.2.lcssa3481, %lor.lhs.false2140 ], [ %o.addr.2.lcssa3481, %if.end2131 ], [ %o.addr.2.lcssa3481, %if.end2120 ], [ %o.addr.2.lcssa3481, %lor.lhs.false2123 ], [ %o.addr.2.lcssa3481, %if.end2115 ], [ %o.addr.2.lcssa3481, %if.end2099 ], [ %o.addr.2.lcssa3481, %lor.lhs.false2103 ], [ %o.addr.2.lcssa3481, %lor.lhs.false2110 ], [ %o.addr.2.lcssa3481, %if.end2084 ], [ %o.addr.2.lcssa3481, %lor.lhs.false2087 ], [ %o.addr.2.lcssa3481, %lor.lhs.false2094 ], [ %o.addr.2.lcssa3481, %if.end2073 ], [ %o.addr.2.lcssa3481, %lor.lhs.false2076 ], [ %o.addr.2.lcssa3481, %if.end2065 ], [ %o.addr.2.lcssa3481, %if.then2059 ], [ %o.addr.2.lcssa3481, %if.then2048 ], [ %o.addr.2.lcssa3481, %if.then2036 ], [ %o.addr.2.lcssa3481, %if.end2025 ], [ %o.addr.2.lcssa3481, %sw.bb2018 ], [ %o.addr.2.lcssa3481, %if.end2183 ], [ %o.addr.2.lcssa3485, %land.lhs.true2286 ], [ %o.addr.2.lcssa3485, %if.then2312 ], [ %o.addr.2.lcssa3485, %land.lhs.true2321 ], [ %o.addr.2.lcssa3485, %if.then2327 ], [ %o.addr.2.lcssa3485, %if.then2309 ], [ %o.addr.2.lcssa3482, %if.then2393 ], [ %o.addr.2.lcssa3482, %sw.bb2390 ], [ %o.addr.2.lcssa3468, %if.end475 ], [ %o.addr.2.lcssa3468, %if.end.i ], [ %o.addr.2.lcssa3486, %Perl_op_null.exit3097 ], [ %o.addr.2.lcssa3486, %if.end.i3102 ], [ %o.addr.2.lcssa3473, %land.lhs.true1386 ], [ %o.addr.2.lcssa3473, %sw.bb1360 ], [ %o.addr.2.lcssa3473, %land.lhs.true1392 ], [ %o.addr.2.lcssa3467, %sw.epilog2396.loopexit ], [ %o.addr.7.ph, %sw.epilog2396.loopexit3442 ]
  %op_type2397 = getelementptr inbounds nuw i8, ptr %o.addr.7, i64 32
  %bf.load2398 = load i16, ptr %op_type2397, align 8
  %bf.clear2399 = and i16 %bf.load2398, 511
  %cmp2401 = icmp eq i16 %bf.clear2399, 0
  %tobool2404 = icmp ne ptr %oldop.13511, null
  %or.cond2441 = select i1 %cmp2401, i1 %tobool2404, i1 false
  br i1 %or.cond2441, label %land.lhs.true2405, label %for.inc2416

land.lhs.true2405:                                ; preds = %sw.epilog2396
  %379 = load ptr, ptr %oldop.13511, align 8
  %cmp2407 = icmp eq ptr %379, %o.addr.7
  br i1 %cmp2407, label %if.then2409, label %for.inc2416

if.then2409:                                      ; preds = %land.lhs.true2405
  %bf.clear2412 = and i16 %bf.load2398, -1024
  store i16 %bf.clear2412, ptr %op_type2397, align 8
  br label %for.inc2416

for.inc2416:                                      ; preds = %if.then2409, %land.lhs.true2405, %sw.epilog2396, %if.then1008, %if.then502, %nothin, %if.then438, %if.then436
  %defer_ix.10 = phi i32 [ %defer_ix.9, %if.then2409 ], [ %defer_ix.0, %if.then502 ], [ %defer_ix.9, %land.lhs.true2405 ], [ %defer_ix.9, %sw.epilog2396 ], [ %defer_ix.0, %if.then436 ], [ %defer_ix.0, %if.then438 ], [ %defer_ix.0, %nothin ], [ %defer_ix.0, %if.then1008 ]
  %defer_base.9 = phi i32 [ %defer_base.8, %if.then2409 ], [ %defer_base.0, %if.then502 ], [ %defer_base.8, %land.lhs.true2405 ], [ %defer_base.8, %sw.epilog2396 ], [ %defer_base.0, %if.then436 ], [ %defer_base.0, %if.then438 ], [ %defer_base.0, %nothin ], [ %defer_base.0, %if.then1008 ]
  %oldoldop.5 = phi ptr [ %oldoldop.13536, %if.then2409 ], [ %oldoldop.13538, %if.then502 ], [ %oldop.13511, %land.lhs.true2405 ], [ %oldop.13511, %sw.epilog2396 ], [ %oldoldop.1.lcssa3516, %if.then436 ], [ %oldoldop.1.lcssa3516, %if.then438 ], [ null, %nothin ], [ null, %if.then1008 ]
  %oldop.5 = phi ptr [ %oldop.13511, %if.then2409 ], [ %oldop.13513, %if.then502 ], [ %o.addr.7, %land.lhs.true2405 ], [ %o.addr.7, %sw.epilog2396 ], [ null, %if.then436 ], [ %oldop.1.lcssa3491, %if.then438 ], [ %o.addr.23488, %nothin ], [ %oldoldop.1.lcssa3521, %if.then1008 ]
  %o.addr.8 = phi ptr [ %oldop.13511, %if.then2409 ], [ %o.addr.23487, %if.then502 ], [ %o.addr.7, %land.lhs.true2405 ], [ %o.addr.7, %sw.epilog2396 ], [ %o.addr.2.lcssa3467, %if.then436 ], [ %o.addr.2.lcssa3467, %if.then438 ], [ %o.addr.23488, %nothin ], [ %oldoldop.1.lcssa3521, %if.then1008 ]
  %380 = load ptr, ptr %o.addr.8, align 8
  br label %for.cond

for.end2418.loopexit:                             ; preds = %S_prune_chain_head.exit
  br label %for.end2418

for.end2418:                                      ; preds = %for.end2418.loopexit, %while.cond.preheader
  tail call void @Perl_pop_scope() #5
  br label %cleanup2419

cleanup2419:                                      ; preds = %for.end2418, %lor.lhs.false, %entry
  call void @llvm.lifetime.end.p0(ptr nonnull %defer_queue) #5
  ret void
}

declare ptr @Perl_cop_fetch_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Perl_sv_rvweaken(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare hidden fastcc noundef zeroext i1 @S_aassign_common_vars(ptr noundef readonly captures(none)) unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare hidden fastcc noundef zeroext i1 @S_aassign_common_vars_aliases_only(ptr noundef readonly captures(none)) unnamed_addr #4

declare void @Perl_qerror(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_mess(ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!10 = distinct !{!10, !1}
!11 = distinct !{!11, !1}
!12 = distinct !{!12, !1}
!13 = !{i8 0, i8 2}
!14 = !{}
