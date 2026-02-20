; ModuleID = '/tmp/tmp.KhdJeS5Fjy/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/sv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_grow(ptr noundef %sv, i64 noundef %newlen) local_unnamed_addr #1 {
entry:
  %sv_flags = getelementptr inbounds nuw i8, ptr %sv, i64 12
  %0 = load i32, ptr %sv_flags, align 4
  %and = and i32 %0, 2048
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @Perl_sv_unref_flags(ptr noundef nonnull %sv, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %sv_flags, align 4
  %and2 = and i32 %1, 255
  %cmp = icmp samesign ult i32 %and2, 3
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %sv, i32 noundef 3)
  %sv_u = getelementptr inbounds nuw i8, ptr %sv, i64 16
  %2 = load ptr, ptr %sv_u, align 8
  br label %if.end23

if.else:                                          ; preds = %if.end
  %and5 = and i32 %1, 33554432
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else14, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %sv_u.i = getelementptr inbounds nuw i8, ptr %sv, i64 16
  %3 = load ptr, ptr %sv_u.i, align 8
  %arrayidx.i = getelementptr inbounds i8, ptr %3, i64 -1
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %4 to i64
  %tobool3.not.i = icmp eq i8 %4, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %Perl_sv_backoff.exit

if.then4.i:                                       ; preds = %if.then.i
  %add.ptr8.i = getelementptr inbounds i8, ptr %3, i64 -9
  %delta.0.copyload.i = load i64, ptr %add.ptr8.i, align 1
  br label %Perl_sv_backoff.exit

Perl_sv_backoff.exit:                             ; preds = %if.then4.i, %if.then.i
  %delta.0.i = phi i64 [ %conv.i, %if.then.i ], [ %delta.0.copyload.i, %if.then4.i ]
  %5 = load ptr, ptr %sv, align 8
  %xpv_len_u.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %6 = load i64, ptr %xpv_len_u.i, align 8
  %add.i = add i64 %6, %delta.0.i
  store i64 %add.i, ptr %xpv_len_u.i, align 8
  %7 = load ptr, ptr %sv_u.i, align 8
  %idx.neg.i = sub i64 0, %delta.0.i
  %add.ptr17.i = getelementptr inbounds i8, ptr %7, i64 %idx.neg.i
  store ptr %add.ptr17.i, ptr %sv_u.i, align 8
  %8 = load ptr, ptr %sv, align 8
  %xpv_cur.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %9 = load i64, ptr %xpv_cur.i, align 8
  %add23.i = add i64 %9, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr17.i, ptr nonnull align 1 %3, i64 %add23.i, i1 false)
  %10 = load i32, ptr %sv_flags, align 4
  %and25.i = and i32 %10, -33554433
  store i32 %and25.i, ptr %sv_flags, align 4
  %11 = load ptr, ptr %sv_u.i, align 8
  %12 = load ptr, ptr %sv, align 8
  %xpv_len_u = getelementptr inbounds nuw i8, ptr %12, i64 24
  %13 = load i64, ptr %xpv_len_u, align 8
  %cmp10 = icmp ugt i64 %newlen, %13
  br i1 %cmp10, label %if.then11, label %if.end23

if.then11:                                        ; preds = %Perl_sv_backoff.exit
  %xpv_cur = getelementptr inbounds nuw i8, ptr %12, i64 16
  %14 = load i64, ptr %xpv_cur, align 8
  %sub = sub i64 %newlen, %14
  %mul = mul i64 %sub, 10
  %add = add i64 %mul, %newlen
  br label %if.end23

if.else14:                                        ; preds = %if.else
  %and16 = and i32 %1, 268435456
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.else14
  tail call fastcc void @S_sv_uncow(ptr noundef nonnull %sv, i32 noundef 0)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.else14
  %sv_u20 = getelementptr inbounds nuw i8, ptr %sv, i64 16
  %15 = load ptr, ptr %sv_u20, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.end19, %if.then11, %Perl_sv_backoff.exit, %if.then3
  %s.0 = phi ptr [ %2, %if.then3 ], [ %11, %if.then11 ], [ %11, %Perl_sv_backoff.exit ], [ %15, %if.end19 ]
  %newlen.addr.0 = phi i64 [ %newlen, %if.then3 ], [ %add, %if.then11 ], [ %newlen, %Perl_sv_backoff.exit ], [ %newlen, %if.end19 ]
  %and24 = and i64 %newlen.addr.0, 255
  %tobool25 = icmp ne i64 %and24, 0
  %cmp26 = icmp ne i64 %newlen.addr.0, -1
  %or.cond = and i1 %cmp26, %tobool25
  %inc = zext i1 %or.cond to i64
  %spec.select = add nuw i64 %newlen.addr.0, %inc
  %16 = load ptr, ptr %sv, align 8
  %xpv_len_u30 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %17 = load i64, ptr %xpv_len_u30, align 8
  %cmp31 = icmp ugt i64 %spec.select, %17
  br i1 %cmp31, label %if.then32, label %if.end84

if.then32:                                        ; preds = %if.end23
  %xpv_cur34 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %18 = load i64, ptr %xpv_cur34, align 8
  %shr = lshr i64 %18, 2
  %add35 = add i64 %18, 10
  %add36 = add i64 %add35, %shr
  %spec.select132 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %add36)
  %tobool42.not = icmp eq i64 %17, 0
  %add45 = add i64 %spec.select132, 7
  %and46 = and i64 %add45, -8
  %spec.select133 = tail call i64 @llvm.umax.i64(i64 %and46, i64 %spec.select132)
  %newlen.addr.4 = select i1 %tobool42.not, i64 %spec.select132, i64 %spec.select133
  %tobool53 = icmp ne i64 %17, 0
  %tobool55 = icmp ne ptr %s.0, null
  %or.cond85 = select i1 %tobool53, i1 %tobool55, i1 false
  br i1 %or.cond85, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.then32
  %call57 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %s.0, i64 noundef %spec.select133) #4
  br label %do.body

if.else58:                                        ; preds = %if.then32
  %call59 = tail call ptr @Perl_safesysmalloc(i64 noundef %newlen.addr.4) #4
  %sv_u60 = getelementptr inbounds nuw i8, ptr %sv, i64 16
  %19 = load ptr, ptr %sv_u60, align 8
  %tobool62.not = icmp eq ptr %19, null
  br i1 %tobool62.not, label %do.body, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %if.else58
  %20 = load ptr, ptr %sv, align 8
  %xpv_cur65 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %21 = load i64, ptr %xpv_cur65, align 8
  %tobool66.not = icmp eq i64 %21, 0
  br i1 %tobool66.not, label %do.body, label %if.then67

if.then67:                                        ; preds = %land.lhs.true63
  %newlen.addr.4. = tail call i64 @llvm.umin.i64(i64 %newlen.addr.4, i64 %21)
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %call59, ptr nonnull align 1 %19, i64 %newlen.addr.4., i1 false)
  br label %do.body

do.body:                                          ; preds = %if.then67, %land.lhs.true63, %if.else58, %if.then56
  %s.1 = phi ptr [ %call57, %if.then56 ], [ %call59, %if.then67 ], [ %call59, %land.lhs.true63 ], [ %call59, %if.else58 ]
  %sv_u78 = getelementptr inbounds nuw i8, ptr %sv, i64 16
  store ptr %s.1, ptr %sv_u78, align 8
  %22 = load ptr, ptr %sv, align 8
  %xpv_len_u81 = getelementptr inbounds nuw i8, ptr %22, i64 24
  store i64 %newlen.addr.4, ptr %xpv_len_u81, align 8
  br label %if.end84

if.end84:                                         ; preds = %do.body, %if.end23
  %s.2 = phi ptr [ %s.1, %do.body ], [ %s.0, %if.end23 ]
  ret ptr %s.2
}

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_sv_unref_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden fastcc void @S_sv_uncow(ptr noundef, i32 noundef) unnamed_addr #1

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
