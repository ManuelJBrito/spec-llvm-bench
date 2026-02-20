; ModuleID = '/tmp/tmp.U7kEheaBze/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/sv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.body_details = type { i8, i8, i8, i8, i32 }
%struct.arena_desc = type { ptr, i64, i32 }

@PL_body_arenas = external local_unnamed_addr global ptr, align 8
@PL_body_roots = external local_unnamed_addr global [16 x ptr], align 16
@bodies_by_type = external hidden unnamed_addr constant [16 x %struct.body_details], align 16
@fake_rv = external hidden unnamed_addr constant %struct.body_details, align 4
@.str = external hidden unnamed_addr constant [30 x i8], align 1
@.str.1 = external hidden unnamed_addr constant [40 x i8], align 1
@.str.2 = external hidden unnamed_addr constant [11 x i8], align 1
@PL_stashcache = external local_unnamed_addr global ptr, align 8
@.str.3 = external hidden unnamed_addr constant [38 x i8], align 1
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

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #0

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_upgrade(ptr noundef %sv, i32 noundef %new_type) local_unnamed_addr #1 {
entry:
  %sv_flags = getelementptr inbounds nuw i8, ptr %sv, i64 12
  %0 = load i32, ptr %sv_flags, align 4
  %and = and i32 %0, 255
  %idx.ext = zext nneg i32 %and to i64
  %add.ptr = getelementptr inbounds nuw %struct.body_details, ptr @bodies_by_type, i64 %idx.ext
  %cmp = icmp eq i32 %and, %new_type
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ult i32 %new_type, 8
  %and3 = and i32 %0, 268435456
  %tobool.not = icmp eq i32 %and3, 0
  %or.cond = or i1 %cmp1, %tobool.not
  br i1 %or.cond, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %sv, i32 noundef 0)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %1 = load ptr, ptr %sv, align 8
  %trunc = trunc i32 %0 to i8
  switch i8 %trunc, label %sw.default [
    i8 0, label %sw.epilog
    i8 1, label %sw.bb
    i8 2, label %sw.bb18
    i8 3, label %sw.epilog
    i8 5, label %sw.epilog
    i8 6, label %sw.epilog
    i8 7, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end5
  %2 = load i32, ptr %sv_flags, align 4
  %and7 = and i32 %2, 2048
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %sw.bb
  %sv_u = getelementptr inbounds nuw i8, ptr %sv, i64 16
  %3 = load ptr, ptr %sv_u, align 8
  %cmp10 = icmp eq i32 %new_type, 2
  %spec.store.select = select i1 %cmp10, i32 6, i32 %new_type
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %cmp13 = icmp ult i32 %new_type, 5
  br i1 %cmp13, label %if.then14, label %sw.epilog

if.then14:                                        ; preds = %if.else
  %cmp15 = icmp eq i32 %new_type, 2
  %cond = select i1 %cmp15, i32 6, i32 5
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end5
  %spec.store.select252 = tail call i32 @llvm.umax.i32(i32 %new_type, i32 6)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end5
  %4 = shl nuw i64 1, %idx.ext
  %5 = and i64 %4, 239
  %tobool24.not.not = icmp eq i64 %5, 0
  br i1 %tobool24.not.not, label %if.then25, label %sw.epilog

if.then25:                                        ; preds = %sw.default
  %6 = load i32, ptr %sv_flags, align 4
  %trunc.i = trunc i32 %6 to i8
  switch i8 %trunc.i, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb.i
    i8 5, label %sw.bb.i
    i8 6, label %sw.bb.i
    i8 7, label %sw.bb.i
    i8 10, label %sw.bb21.i
    i8 11, label %Perl_sv_reftype.exit
    i8 12, label %sw.bb34.i
    i8 13, label %sw.bb35.i
    i8 9, label %sw.bb36.i
    i8 14, label %sw.bb50.i
    i8 15, label %sw.bb51.i
    i8 4, label %sw.bb52.i
    i8 8, label %sw.bb53.i
  ]

sw.bb.i:                                          ; preds = %if.then25, %if.then25, %if.then25, %if.then25, %if.then25, %if.then25, %if.then25
  %and10.i = and i32 %6, 14680064
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end.i, label %land.lhs.true12.i

land.lhs.true12.i:                                ; preds = %sw.bb.i
  %call13.i = tail call ptr @Perl_mg_find(ptr noundef nonnull %sv, i32 noundef 86) #6
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.end.i, label %Perl_sv_reftype.exit

if.end.i:                                         ; preds = %land.lhs.true12.i, %sw.bb.i
  %7 = load i32, ptr %sv_flags, align 4
  %and17.i = and i32 %7, 2048
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %.str.52..str.51.i = select i1 %tobool18.not.i, ptr @.str.52, ptr @.str.51
  br label %Perl_sv_reftype.exit

sw.bb21.i:                                        ; preds = %if.then25
  %and23.i = and i32 %6, 2048
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %cond.false26.i, label %Perl_sv_reftype.exit

cond.false26.i:                                   ; preds = %sw.bb21.i
  %xlv_type.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %8 = load i8, ptr %xlv_type.i, align 8
  %9 = and i8 %8, -33
  %cmp28.i = icmp eq i8 %9, 84
  %cond30.i = select i1 %cmp28.i, ptr @.str.52, ptr @.str.53
  br label %Perl_sv_reftype.exit

sw.bb34.i:                                        ; preds = %if.then25
  br label %Perl_sv_reftype.exit

sw.bb35.i:                                        ; preds = %if.then25
  br label %Perl_sv_reftype.exit

sw.bb36.i:                                        ; preds = %if.then25
  %and38.i = and i32 %6, 49152
  %cmp39.i = icmp eq i32 %and38.i, 32768
  %spec.select.i = select i1 %cmp39.i, ptr @.str.57, ptr @.str.52
  br label %Perl_sv_reftype.exit

sw.bb50.i:                                        ; preds = %if.then25
  br label %Perl_sv_reftype.exit

sw.bb51.i:                                        ; preds = %if.then25
  br label %Perl_sv_reftype.exit

sw.bb52.i:                                        ; preds = %if.then25
  br label %Perl_sv_reftype.exit

sw.bb53.i:                                        ; preds = %if.then25
  br label %Perl_sv_reftype.exit

sw.default.i:                                     ; preds = %if.then25
  br label %Perl_sv_reftype.exit

Perl_sv_reftype.exit:                             ; preds = %sw.default.i, %sw.bb53.i, %sw.bb52.i, %sw.bb51.i, %sw.bb50.i, %sw.bb36.i, %sw.bb35.i, %sw.bb34.i, %cond.false26.i, %sw.bb21.i, %if.end.i, %land.lhs.true12.i, %if.then25
  %retval.0.i = phi ptr [ @.str.62, %sw.default.i ], [ @.str.55, %sw.bb34.i ], [ @.str.56, %sw.bb35.i ], [ %spec.select.i, %sw.bb36.i ], [ @.str.58, %sw.bb50.i ], [ @.str.59, %sw.bb51.i ], [ @.str.60, %sw.bb52.i ], [ @.str.61, %sw.bb53.i ], [ @.str.50, %land.lhs.true12.i ], [ %.str.52..str.51.i, %if.end.i ], [ %cond30.i, %cond.false26.i ], [ @.str.51, %sw.bb21.i ], [ @.str.54, %if.then25 ]
  %conv26 = zext i32 %new_type to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str, ptr noundef nonnull %retval.0.i, i64 noundef %idx.ext, i64 noundef %conv26) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %Perl_sv_reftype.exit, %sw.default, %sw.bb18, %if.then14, %if.else, %if.then9, %if.end5, %if.end5, %if.end5, %if.end5, %if.end5
  %referant.0 = phi ptr [ null, %Perl_sv_reftype.exit ], [ null, %sw.default ], [ %3, %if.then9 ], [ null, %if.then14 ], [ null, %if.else ], [ null, %sw.bb18 ], [ null, %if.end5 ], [ null, %if.end5 ], [ null, %if.end5 ], [ null, %if.end5 ], [ null, %if.end5 ]
  %old_type_details.0 = phi ptr [ %add.ptr, %Perl_sv_reftype.exit ], [ %add.ptr, %sw.default ], [ @fake_rv, %if.then9 ], [ %add.ptr, %if.then14 ], [ %add.ptr, %if.else ], [ %add.ptr, %sw.bb18 ], [ %add.ptr, %if.end5 ], [ %add.ptr, %if.end5 ], [ %add.ptr, %if.end5 ], [ %add.ptr, %if.end5 ], [ %add.ptr, %if.end5 ]
  %new_type.addr.0 = phi i32 [ %new_type, %Perl_sv_reftype.exit ], [ %new_type, %sw.default ], [ %spec.store.select, %if.then9 ], [ %cond, %if.then14 ], [ %new_type, %if.else ], [ %spec.store.select252, %sw.bb18 ], [ %new_type, %if.end5 ], [ %new_type, %if.end5 ], [ %new_type, %if.end5 ], [ %new_type, %if.end5 ], [ %new_type, %if.end5 ]
  %cmp28 = icmp ugt i32 %and, %new_type.addr.0
  br i1 %cmp28, label %if.then32, label %if.end33

if.then32:                                        ; preds = %sw.epilog
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1, i32 noundef %and, i32 noundef %new_type.addr.0) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %sw.epilog
  %idx.ext34 = zext i32 %new_type.addr.0 to i64
  %add.ptr35 = getelementptr inbounds nuw %struct.body_details, ptr @bodies_by_type, i64 %idx.ext34
  %10 = load i32, ptr %sv_flags, align 4
  %and37 = and i32 %10, -256
  %or = or i32 %and37, %new_type.addr.0
  store i32 %or, ptr %sv_flags, align 4
  switch i32 %new_type.addr.0, label %sw.default229 [
    i32 1, label %sw.bb39
    i32 2, label %sw.bb44
    i32 12, label %do.body53
    i32 11, label %do.body53
    i32 5, label %sw.bb126
    i32 15, label %sw.bb126
    i32 14, label %sw.bb126
    i32 9, label %sw.bb126
    i32 13, label %sw.bb126
    i32 10, label %sw.bb126
    i32 4, label %sw.bb126
    i32 8, label %sw.bb126
    i32 7, label %sw.bb126
    i32 6, label %sw.bb126
    i32 3, label %sw.bb126
  ]

sw.bb39:                                          ; preds = %if.end33
  %add.ptr41 = getelementptr inbounds i8, ptr %sv, i64 -16
  store ptr %add.ptr41, ptr %sv, align 8
  %xiv_u = getelementptr inbounds nuw i8, ptr %sv, i64 16
  store i64 0, ptr %xiv_u, align 8
  br label %cleanup

sw.bb44:                                          ; preds = %if.end33
  %add.ptr46 = getelementptr inbounds i8, ptr %sv, i64 -24
  store ptr %add.ptr46, ptr %sv, align 8
  %xnv_u = getelementptr inbounds nuw i8, ptr %sv, i64 16
  store double 0.000000e+00, ptr %xnv_u, align 8
  br label %cleanup

do.body53:                                        ; preds = %if.end33, %if.end33
  %arrayidx = getelementptr inbounds nuw ptr, ptr @PL_body_roots, i64 %idx.ext34
  %11 = load ptr, ptr %arrayidx, align 8
  %tobool54.not = icmp eq ptr %11, null
  br i1 %tobool54.not, label %cond.false56, label %cond.end

cond.false56:                                     ; preds = %do.body53
  %12 = load i8, ptr %add.ptr35, align 8
  %conv59 = zext i8 %12 to i64
  %arena_size = getelementptr inbounds nuw i8, ptr %add.ptr35, i64 4
  %13 = load i32, ptr %arena_size, align 4
  %conv62 = zext i32 %13 to i64
  %14 = load ptr, ptr @PL_body_arenas, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %cond.false56
  %curr1.i = getelementptr inbounds nuw i8, ptr %14, i64 12
  %15 = load i32, ptr %curr1.i, align 4
  %set_size.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = load i32, ptr %set_size.i, align 8
  %cmp.not.i = icmp ult i32 %15, %16
  br i1 %cmp.not.i, label %if.end.i360, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %cond.false56
  %call.i = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 4072) #6
  %set_size2.i = getelementptr inbounds nuw i8, ptr %call.i, i64 8
  store i32 169, ptr %set_size2.i, align 8
  store ptr %14, ptr %call.i, align 8
  store ptr %call.i, ptr @PL_body_arenas, align 8
  br label %if.end.i360

if.end.i360:                                      ; preds = %if.then.i, %lor.lhs.false.i
  %aroot.0.i = phi ptr [ %call.i, %if.then.i ], [ %14, %lor.lhs.false.i ]
  %curr3.i = getelementptr inbounds nuw i8, ptr %aroot.0.i, i64 12
  %17 = load i32, ptr %curr3.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %curr3.i, align 4
  %set.i = getelementptr inbounds nuw i8, ptr %aroot.0.i, i64 16
  %idxprom4.i = zext i32 %17 to i64
  %arrayidx5.i = getelementptr inbounds nuw %struct.arena_desc, ptr %set.i, i64 %idxprom4.i
  %call6.i = tail call ptr @Perl_safesysmalloc(i64 noundef %conv62) #6
  store ptr %call6.i, ptr %arrayidx5.i, align 8
  %size.i = getelementptr inbounds nuw i8, ptr %arrayidx5.i, i64 8
  store i64 %conv62, ptr %size.i, align 8
  %utype.i = getelementptr inbounds nuw i8, ptr %arrayidx5.i, i64 16
  store i32 %new_type.addr.0, ptr %utype.i, align 8
  %.rhs.trunc = zext i8 %12 to i32
  %18 = urem i32 %13, %.rhs.trunc
  %.zext = zext nneg i32 %18 to i64
  %mul8.i = sub nuw nsw i64 %conv62, %.zext
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %call6.i, i64 %mul8.i
  store ptr %call6.i, ptr %arrayidx, align 8
  %cmp11.not48.i = icmp samesign ugt i64 %mul8.i, %conv59
  br i1 %cmp11.not48.i, label %cleanup.preheader.i, label %Perl_more_bodies.exit

cleanup.preheader.i:                              ; preds = %if.end.i360
  %add.ptr1047.i = getelementptr inbounds nuw i8, ptr %call6.i, i64 %conv59
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i, %cleanup.preheader.i
  %add.ptr1050.i = phi ptr [ %add.ptr10.i, %cleanup.i ], [ %add.ptr1047.i, %cleanup.preheader.i ]
  %start.049.i = phi ptr [ %add.ptr1050.i, %cleanup.i ], [ %call6.i, %cleanup.preheader.i ]
  store ptr %add.ptr1050.i, ptr %start.049.i, align 8
  %add.ptr10.i = getelementptr inbounds nuw i8, ptr %add.ptr1050.i, i64 %conv59
  %cmp11.not.i = icmp ult ptr %add.ptr10.i, %add.ptr.i
  br i1 %cmp11.not.i, label %cleanup.i, label %Perl_more_bodies.exit.loopexit

Perl_more_bodies.exit.loopexit:                   ; preds = %cleanup.i
  %add.ptr1050.i.lcssa = phi ptr [ %add.ptr1050.i, %cleanup.i ]
  br label %Perl_more_bodies.exit

Perl_more_bodies.exit:                            ; preds = %Perl_more_bodies.exit.loopexit, %if.end.i360
  %start.0.lcssa.i = phi ptr [ %call6.i, %if.end.i360 ], [ %add.ptr1050.i.lcssa, %Perl_more_bodies.exit.loopexit ]
  store ptr null, ptr %start.0.lcssa.i, align 8
  %19 = load ptr, ptr %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %Perl_more_bodies.exit, %do.body53
  %cond64 = phi ptr [ %19, %Perl_more_bodies.exit ], [ %11, %do.body53 ]
  %20 = load ptr, ptr %cond64, align 8
  store ptr %20, ptr %arrayidx, align 8
  %21 = load i8, ptr %add.ptr35, align 4
  %conv68 = zext i8 %21 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %cond64, i8 0, i64 %conv68, i1 false)
  %offset = getelementptr inbounds nuw i8, ptr %add.ptr35, i64 2
  %22 = load i8, ptr %offset, align 2
  %idx.ext70 = zext i8 %22 to i64
  %idx.neg = sub nsw i64 0, %idx.ext70
  %add.ptr71 = getelementptr inbounds i8, ptr %cond64, i64 %idx.neg
  store ptr %add.ptr71, ptr %sv, align 8
  %cmp73 = icmp eq i32 %new_type.addr.0, 11
  br i1 %cmp73, label %if.then75, label %if.else88

if.then75:                                        ; preds = %cond.end
  %xav_max = getelementptr inbounds nuw i8, ptr %add.ptr71, i64 24
  store i64 -1, ptr %xav_max, align 8
  %23 = load ptr, ptr %sv, align 8
  %xav_fill = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 -1, ptr %xav_fill, align 8
  %24 = load i32, ptr %sv_flags, align 4
  %and79 = and i32 %24, 1073741823
  %or81 = or disjoint i32 %and79, 1073741824
  store i32 %or81, ptr %sv_flags, align 4
  %25 = load i8, ptr %old_type_details.0, align 4
  %tobool83.not = icmp eq i8 %25, 0
  br i1 %tobool83.not, label %if.end99, label %if.then84

if.then84:                                        ; preds = %if.then75
  %26 = load ptr, ptr %sv, align 8
  %xav_alloc = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr null, ptr %xav_alloc, align 8
  br label %if.end99

if.else88:                                        ; preds = %cond.end
  %27 = load i32, ptr %sv_flags, align 4
  %and90 = and i32 %27, 1610547455
  store i32 %and90, ptr %sv_flags, align 4
  %and92 = and i32 %27, 33554432
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.else88
  %call94 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %sv)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else88
  %28 = load i32, ptr %sv_flags, align 4
  %or97 = or i32 %28, 536870912
  store i32 %or97, ptr %sv_flags, align 4
  %29 = load ptr, ptr %sv, align 8
  %xhv_max = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i64 7, ptr %xhv_max, align 8
  br label %if.end99

if.end99:                                         ; preds = %land.end, %if.then84, %if.then75
  %cmp109 = icmp samesign ugt i32 %and, 6
  br i1 %cmp109, label %do.body112, label %if.else122

do.body112:                                       ; preds = %if.end99
  %xmg_u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %30 = load ptr, ptr %xmg_u, align 8
  %31 = load ptr, ptr %sv, align 8
  %xmg_u114 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %30, ptr %xmg_u114, align 8
  %32 = load ptr, ptr %1, align 8
  %33 = load ptr, ptr %sv, align 8
  store ptr %32, ptr %33, align 8
  br label %sw.epilog231

if.else122:                                       ; preds = %if.end99
  %sv_u123 = getelementptr inbounds nuw i8, ptr %sv, i64 16
  store ptr null, ptr %sv_u123, align 8
  br label %sw.epilog231

sw.bb126:                                         ; preds = %if.end33, %if.end33, %if.end33, %if.end33, %if.end33, %if.end33, %if.end33, %if.end33, %if.end33, %if.end33, %if.end33
  %34 = shl nuw nsw i64 1, %idx.ext34
  %35 = and i64 %34, 16391
  %tobool131.not.not = icmp eq i64 %35, 0
  br i1 %tobool131.not.not, label %do.body133, label %if.else161

do.body133:                                       ; preds = %sw.bb126
  %arrayidx136 = getelementptr inbounds nuw ptr, ptr @PL_body_roots, i64 %idx.ext34
  %36 = load ptr, ptr %arrayidx136, align 8
  %tobool137.not = icmp eq ptr %36, null
  br i1 %tobool137.not, label %cond.false139, label %cond.end149

cond.false139:                                    ; preds = %do.body133
  %37 = load i8, ptr %add.ptr35, align 8
  %conv143 = zext i8 %37 to i64
  %arena_size146 = getelementptr inbounds nuw i8, ptr %add.ptr35, i64 4
  %38 = load i32, ptr %arena_size146, align 4
  %conv147 = zext i32 %38 to i64
  %39 = load ptr, ptr @PL_body_arenas, align 8
  %tobool.not.i363 = icmp eq ptr %39, null
  br i1 %tobool.not.i363, label %if.then.i368, label %lor.lhs.false.i364

lor.lhs.false.i364:                               ; preds = %cond.false139
  %curr1.i365 = getelementptr inbounds nuw i8, ptr %39, i64 12
  %40 = load i32, ptr %curr1.i365, align 4
  %set_size.i366 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %41 = load i32, ptr %set_size.i366, align 8
  %cmp.not.i367 = icmp ult i32 %40, %41
  br i1 %cmp.not.i367, label %if.end.i371, label %if.then.i368

if.then.i368:                                     ; preds = %lor.lhs.false.i364, %cond.false139
  %call.i369 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 4072) #6
  %set_size2.i370 = getelementptr inbounds nuw i8, ptr %call.i369, i64 8
  store i32 169, ptr %set_size2.i370, align 8
  store ptr %39, ptr %call.i369, align 8
  store ptr %call.i369, ptr @PL_body_arenas, align 8
  br label %if.end.i371

if.end.i371:                                      ; preds = %if.then.i368, %lor.lhs.false.i364
  %aroot.0.i372 = phi ptr [ %call.i369, %if.then.i368 ], [ %39, %lor.lhs.false.i364 ]
  %curr3.i373 = getelementptr inbounds nuw i8, ptr %aroot.0.i372, i64 12
  %42 = load i32, ptr %curr3.i373, align 4
  %inc.i374 = add i32 %42, 1
  store i32 %inc.i374, ptr %curr3.i373, align 4
  %set.i375 = getelementptr inbounds nuw i8, ptr %aroot.0.i372, i64 16
  %idxprom4.i376 = zext i32 %42 to i64
  %arrayidx5.i377 = getelementptr inbounds nuw %struct.arena_desc, ptr %set.i375, i64 %idxprom4.i376
  %call6.i378 = tail call ptr @Perl_safesysmalloc(i64 noundef %conv147) #6
  store ptr %call6.i378, ptr %arrayidx5.i377, align 8
  %size.i379 = getelementptr inbounds nuw i8, ptr %arrayidx5.i377, i64 8
  store i64 %conv147, ptr %size.i379, align 8
  %utype.i380 = getelementptr inbounds nuw i8, ptr %arrayidx5.i377, i64 16
  store i32 %new_type.addr.0, ptr %utype.i380, align 8
  %.rhs.trunc398 = zext i8 %37 to i32
  %43 = urem i32 %38, %.rhs.trunc398
  %.zext399 = zext nneg i32 %43 to i64
  %mul8.i381 = sub nuw nsw i64 %conv147, %.zext399
  %add.ptr.i382 = getelementptr inbounds nuw i8, ptr %call6.i378, i64 %mul8.i381
  store ptr %call6.i378, ptr %arrayidx136, align 8
  %cmp11.not48.i383 = icmp samesign ugt i64 %mul8.i381, %conv143
  br i1 %cmp11.not48.i383, label %cleanup.preheader.i385, label %Perl_more_bodies.exit392

cleanup.preheader.i385:                           ; preds = %if.end.i371
  %add.ptr1047.i386 = getelementptr inbounds nuw i8, ptr %call6.i378, i64 %conv143
  br label %cleanup.i387

cleanup.i387:                                     ; preds = %cleanup.i387, %cleanup.preheader.i385
  %add.ptr1050.i388 = phi ptr [ %add.ptr10.i390, %cleanup.i387 ], [ %add.ptr1047.i386, %cleanup.preheader.i385 ]
  %start.049.i389 = phi ptr [ %add.ptr1050.i388, %cleanup.i387 ], [ %call6.i378, %cleanup.preheader.i385 ]
  store ptr %add.ptr1050.i388, ptr %start.049.i389, align 8
  %add.ptr10.i390 = getelementptr inbounds nuw i8, ptr %add.ptr1050.i388, i64 %conv143
  %cmp11.not.i391 = icmp ult ptr %add.ptr10.i390, %add.ptr.i382
  br i1 %cmp11.not.i391, label %cleanup.i387, label %Perl_more_bodies.exit392.loopexit

Perl_more_bodies.exit392.loopexit:                ; preds = %cleanup.i387
  %add.ptr1050.i388.lcssa = phi ptr [ %add.ptr1050.i388, %cleanup.i387 ]
  br label %Perl_more_bodies.exit392

Perl_more_bodies.exit392:                         ; preds = %Perl_more_bodies.exit392.loopexit, %if.end.i371
  %start.0.lcssa.i384 = phi ptr [ %call6.i378, %if.end.i371 ], [ %add.ptr1050.i388.lcssa, %Perl_more_bodies.exit392.loopexit ]
  store ptr null, ptr %start.0.lcssa.i384, align 8
  %44 = load ptr, ptr %arrayidx136, align 8
  br label %cond.end149

cond.end149:                                      ; preds = %Perl_more_bodies.exit392, %do.body133
  %cond150 = phi ptr [ %44, %Perl_more_bodies.exit392 ], [ %36, %do.body133 ]
  %45 = load ptr, ptr %cond150, align 8
  store ptr %45, ptr %arrayidx136, align 8
  %46 = load i8, ptr %add.ptr35, align 4
  %conv154 = zext i8 %46 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %cond150, i8 0, i64 %conv154, i1 false)
  %offset156 = getelementptr inbounds nuw i8, ptr %add.ptr35, i64 2
  %47 = load i8, ptr %offset156, align 2
  %idx.ext158 = zext i8 %47 to i64
  %idx.neg159 = sub nsw i64 0, %idx.ext158
  %add.ptr160 = getelementptr inbounds i8, ptr %cond150, i64 %idx.neg159
  br label %if.end168

if.else161:                                       ; preds = %sw.bb126
  %48 = load i8, ptr %add.ptr35, align 4
  %conv163 = zext i8 %48 to i64
  %offset164 = getelementptr inbounds nuw i8, ptr %add.ptr35, i64 2
  %49 = load i8, ptr %offset164, align 2
  %conv165 = zext i8 %49 to i64
  %add = add nuw nsw i64 %conv165, %conv163
  %call167 = tail call ptr @Perl_safesyscalloc(i64 noundef %add, i64 noundef 1) #6
  br label %if.end168

if.end168:                                        ; preds = %if.else161, %cond.end149
  %new_body.0 = phi ptr [ %add.ptr160, %cond.end149 ], [ %call167, %if.else161 ]
  store ptr %new_body.0, ptr %sv, align 8
  %copy = getelementptr inbounds nuw i8, ptr %old_type_details.0, i64 1
  %50 = load i8, ptr %copy, align 1
  %tobool170.not = icmp eq i8 %50, 0
  br i1 %tobool170.not, label %if.end197, label %if.then171

if.then171:                                       ; preds = %if.end168
  %offset173 = getelementptr inbounds nuw i8, ptr %old_type_details.0, i64 2
  %51 = load i8, ptr %offset173, align 2
  %conv174 = zext i8 %51 to i64
  %conv176 = zext i8 %50 to i64
  %offset177 = getelementptr inbounds nuw i8, ptr %add.ptr35, i64 2
  %52 = load i8, ptr %offset177, align 2
  %cmp181 = icmp ugt i8 %52, %51
  %conv178 = zext i8 %52 to i64
  %sub.neg = sub nsw i64 %conv174, %conv178
  %offset172.0400 = tail call i8 @llvm.umax.i8(i8 %52, i8 %51)
  %sub189 = select i1 %cmp181, i64 %sub.neg, i64 0
  %length.0 = add nsw i64 %sub189, %conv176
  %idx.ext191 = zext i8 %offset172.0400 to i64
  %add.ptr192 = getelementptr inbounds nuw i8, ptr %new_body.0, i64 %idx.ext191
  %add.ptr194 = getelementptr inbounds nuw i8, ptr %1, i64 %idx.ext191
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr192, ptr align 1 %add.ptr194, i64 %length.0, i1 false)
  br label %if.end197

if.end197:                                        ; preds = %if.then171, %if.end168
  switch i32 %new_type.addr.0, label %if.else222 [
    i32 15, label %if.then202
    i32 8, label %if.then220
  ]

if.then202:                                       ; preds = %if.end197
  %call203 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.2, i64 noundef 10, i32 noundef 1, i32 noundef 12) #6
  %53 = load i32, ptr %sv_flags, align 4
  %or205 = or i32 %53, 1048576
  store i32 %or205, ptr %sv_flags, align 4
  %54 = load ptr, ptr @PL_stashcache, align 8
  tail call void @Perl_hv_clear(ptr noundef %54) #6
  %sv_u207 = getelementptr inbounds nuw i8, ptr %call203, i64 16
  %55 = load ptr, ptr %sv_u207, align 8
  %gp_hv = getelementptr inbounds nuw i8, ptr %55, i64 32
  %56 = load ptr, ptr %gp_hv, align 8
  %cmp.not.i393 = icmp eq ptr %56, null
  br i1 %cmp.not.i393, label %S_SvREFCNT_inc.exit, label %if.then.i394

if.then.i394:                                     ; preds = %if.then202
  %sv_refcnt.i = getelementptr inbounds nuw i8, ptr %56, i64 8
  %57 = load i32, ptr %sv_refcnt.i, align 8
  %inc.i395 = add i32 %57, 1
  store i32 %inc.i395, ptr %sv_refcnt.i, align 8
  br label %S_SvREFCNT_inc.exit

S_SvREFCNT_inc.exit:                              ; preds = %if.then.i394, %if.then202
  %58 = load ptr, ptr %sv, align 8
  store ptr %56, ptr %58, align 8
  %59 = load ptr, ptr %sv, align 8
  %xio_page_len = getelementptr inbounds nuw i8, ptr %59, i64 64
  store i64 60, ptr %xio_page_len, align 8
  br label %if.else222

if.then220:                                       ; preds = %if.end197
  %sv_u221 = getelementptr inbounds nuw i8, ptr %sv, i64 16
  store ptr %new_body.0, ptr %sv_u221, align 8
  br label %sw.epilog231

if.else222:                                       ; preds = %S_SvREFCNT_inc.exit, %if.end197
  %cmp223 = icmp samesign ult i32 %and, 3
  br i1 %cmp223, label %if.then225, label %sw.epilog231

if.then225:                                       ; preds = %if.else222
  %sv_u226 = getelementptr inbounds nuw i8, ptr %sv, i64 16
  store ptr %referant.0, ptr %sv_u226, align 8
  br label %sw.epilog231

sw.default229:                                    ; preds = %if.end33
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3, i64 noundef %idx.ext34) #6
  br label %sw.epilog231

sw.epilog231:                                     ; preds = %sw.default229, %if.then225, %if.else222, %if.then220, %if.else122, %do.body112
  %60 = load i8, ptr %old_type_details.0, align 4
  %tobool233.not = icmp eq i8 %60, 0
  br i1 %tobool233.not, label %cleanup, label %do.body235

do.body235:                                       ; preds = %sw.epilog231
  %offset236 = getelementptr inbounds nuw i8, ptr %old_type_details.0, i64 2
  %61 = load i8, ptr %offset236, align 2
  %idx.ext238 = zext i8 %61 to i64
  %add.ptr239 = getelementptr inbounds nuw i8, ptr %1, i64 %idx.ext238
  %arrayidx241 = getelementptr inbounds nuw ptr, ptr @PL_body_roots, i64 %idx.ext
  %62 = load ptr, ptr %arrayidx241, align 8
  store ptr %62, ptr %add.ptr239, align 8
  store ptr %add.ptr239, ptr %arrayidx241, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body235, %sw.epilog231, %sw.bb44, %sw.bb39, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare dso_local noundef i32 @Perl_sv_backoff(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @Perl_hv_clear(ptr noundef) local_unnamed_addr #0

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #5

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
