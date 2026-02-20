; ModuleID = '/tmp/tmp.TLXKgxT6dw/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/sv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PL_tainting = external local_unnamed_addr global i8, align 1
@PL_tainted = external local_unnamed_addr global i8, align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
declare dso_local i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef writeonly captures(address_is_null), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_catpvn_flags(ptr noundef %dsv, ptr noundef readonly captures(address) %sstr, i64 noundef %slen, i32 noundef %flags) local_unnamed_addr #2 {
entry:
  %dlen = alloca i64, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %dlen) #4
  %sv_flags = getelementptr inbounds nuw i8, ptr %dsv, i64 12
  %0 = load i32, ptr %sv_flags, align 4
  %and = and i32 %0, 430018304
  %cmp = icmp eq i32 %and, 1024
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %dsv, align 8
  %xpv_cur = getelementptr inbounds nuw i8, ptr %1, i64 16
  %2 = load i64, ptr %xpv_cur, align 8
  store i64 %2, ptr %dlen, align 8
  %sv_u = getelementptr inbounds nuw i8, ptr %dsv, i64 16
  %3 = load ptr, ptr %sv_u, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %dsv, ptr noundef nonnull %dlen, i32 noundef %flags)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %call, %cond.false ]
  %and1 = and i32 %flags, 16384
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %4 = load i32, ptr %sv_flags, align 4
  %and3 = and i32 %4, 536870912
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then, label %if.else41

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %and5 = and i32 %flags, 32768
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, ptr %sv_flags, align 4
  %and8 = and i32 %5, 536870912
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true
  %add = add i64 %slen, 1
  %call11 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef nonnull %dsv, i32 noundef 0, i64 noundef %add)
  %6 = load ptr, ptr %dsv, align 8
  %xpv_cur13 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %7 = load i64, ptr %xpv_cur13, align 8
  store i64 %7, ptr %dlen, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %8 = load i32, ptr %sv_flags, align 4
  %and15 = and i32 %8, 268435456
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %cond.true22

lor.lhs.false17:                                  ; preds = %if.else
  %9 = load ptr, ptr %dsv, align 8
  %xpv_len_u = getelementptr inbounds nuw i8, ptr %9, i64 24
  %10 = load i64, ptr %xpv_len_u, align 8
  %11 = load i64, ptr %dlen, align 8
  %add19 = add i64 %slen, 1
  %add20 = add i64 %add19, %11
  %cmp21 = icmp ult i64 %10, %add20
  br i1 %cmp21, label %cond.true22, label %if.end

cond.true22:                                      ; preds = %lor.lhs.false17, %if.else
  %12 = load i64, ptr %dlen, align 8
  %add23 = add i64 %slen, 1
  %add24 = add i64 %add23, %12
  %call25 = call ptr @Perl_sv_grow(ptr noundef nonnull %dsv, i64 noundef %add24)
  br label %if.end

if.end:                                           ; preds = %cond.true22, %lor.lhs.false17, %if.then10
  %cmp30 = icmp eq ptr %sstr, %cond
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end
  %sv_u32 = getelementptr inbounds nuw i8, ptr %dsv, i64 16
  %13 = load ptr, ptr %sv_u32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end
  %sstr.addr.0 = phi ptr [ %13, %if.then31 ], [ %sstr, %if.end ]
  %sv_u34 = getelementptr inbounds nuw i8, ptr %dsv, i64 16
  %14 = load ptr, ptr %sv_u34, align 8
  %15 = load i64, ptr %dlen, align 8
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %14, i64 %15
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr35, ptr align 1 %sstr.addr.0, i64 %slen, i1 false)
  %16 = load ptr, ptr %dsv, align 8
  %xpv_cur37 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %17 = load i64, ptr %xpv_cur37, align 8
  %add38 = add i64 %17, %slen
  store i64 %add38, ptr %xpv_cur37, align 8
  br label %if.end71

if.else41:                                        ; preds = %lor.lhs.false
  %add.ptr42 = getelementptr inbounds nuw i8, ptr %sstr, i64 %slen
  %and44 = and i32 %4, 268435456
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %lor.lhs.false46, label %cond.true53

lor.lhs.false46:                                  ; preds = %if.else41
  %18 = load ptr, ptr %dsv, align 8
  %xpv_len_u48 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %19 = load i64, ptr %xpv_len_u48, align 8
  %20 = load i64, ptr %dlen, align 8
  %mul49 = shl i64 %slen, 1
  %add50 = or disjoint i64 %mul49, 1
  %add51 = add i64 %add50, %20
  %cmp52 = icmp ult i64 %19, %add51
  br i1 %cmp52, label %cond.true53, label %cond.end60

cond.true53:                                      ; preds = %lor.lhs.false46, %if.else41
  %21 = load i64, ptr %dlen, align 8
  %mul54 = shl i64 %slen, 1
  %add55 = or disjoint i64 %mul54, 1
  %add56 = add i64 %add55, %21
  %call57 = call ptr @Perl_sv_grow(ptr noundef nonnull %dsv, i64 noundef %add56)
  br label %cond.end60

cond.end60:                                       ; preds = %cond.true53, %lor.lhs.false46
  %sv_u62 = getelementptr inbounds nuw i8, ptr %dsv, i64 16
  %22 = load ptr, ptr %sv_u62, align 8
  %23 = load i64, ptr %dlen, align 8
  %add.ptr63 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  %cmp64161.not = icmp eq i64 %slen, 0
  br i1 %cmp64161.not, label %do.body65, label %while.body.preheader

while.body.preheader:                             ; preds = %cond.end60
  br label %while.body

while.body:                                       ; preds = %S_append_utf8_from_native_byte.exit, %while.body.preheader
  %sstr.addr.1163 = phi ptr [ %incdec.ptr, %S_append_utf8_from_native_byte.exit ], [ %sstr, %while.body.preheader ]
  %d.0162 = phi ptr [ %incdec.ptr8.i, %S_append_utf8_from_native_byte.exit ], [ %add.ptr63, %while.body.preheader ]
  %24 = load i8, ptr %sstr.addr.1163, align 1
  %cmp.i = icmp sgt i8 %24, -1
  br i1 %cmp.i, label %S_append_utf8_from_native_byte.exit, label %if.else.i

if.else.i:                                        ; preds = %while.body
  %shr.i = lshr i8 %24, 6
  %or.i = or disjoint i8 %shr.i, -64
  %incdec.ptr4.i = getelementptr inbounds nuw i8, ptr %d.0162, i64 1
  store i8 %or.i, ptr %d.0162, align 1
  %25 = and i8 %24, -65
  br label %S_append_utf8_from_native_byte.exit

S_append_utf8_from_native_byte.exit:              ; preds = %if.else.i, %while.body
  %d.1 = phi ptr [ %d.0162, %while.body ], [ %incdec.ptr4.i, %if.else.i ]
  %.sink.i = phi i8 [ %24, %while.body ], [ %25, %if.else.i ]
  %incdec.ptr8.i = getelementptr inbounds nuw i8, ptr %d.1, i64 1
  store i8 %.sink.i, ptr %d.1, align 1
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %sstr.addr.1163, i64 1
  %cmp64 = icmp ult ptr %incdec.ptr, %add.ptr42
  br i1 %cmp64, label %while.body, label %do.body65.loopexit, !llvm.loop !0

do.body65.loopexit:                               ; preds = %S_append_utf8_from_native_byte.exit
  %incdec.ptr8.i.lcssa = phi ptr [ %incdec.ptr8.i, %S_append_utf8_from_native_byte.exit ]
  br label %do.body65

do.body65:                                        ; preds = %do.body65.loopexit, %cond.end60
  %d.0.lcssa = phi ptr [ %add.ptr63, %cond.end60 ], [ %incdec.ptr8.i.lcssa, %do.body65.loopexit ]
  %26 = load ptr, ptr %sv_u62, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %d.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %27 = load ptr, ptr %dsv, align 8
  %xpv_cur68 = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 %sub.ptr.sub, ptr %xpv_cur68, align 8
  br label %if.end71

if.end71:                                         ; preds = %do.body65, %if.end33
  %sv_u72 = getelementptr inbounds nuw i8, ptr %dsv, i64 16
  %28 = load ptr, ptr %sv_u72, align 8
  %29 = load ptr, ptr %dsv, align 8
  %xpv_cur74 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %30 = load i64, ptr %xpv_cur74, align 8
  %add.ptr75 = getelementptr inbounds nuw i8, ptr %28, i64 %30
  store i8 0, ptr %add.ptr75, align 1
  %31 = load i32, ptr %sv_flags, align 4
  %and77 = and i32 %31, 2147418367
  %or = or disjoint i32 %and77, 17408
  store i32 %or, ptr %sv_flags, align 4
  %32 = load i8, ptr @PL_tainting, align 1, !range !2, !noundef !3
  %loadedv = trunc nuw i8 %32 to i1
  %33 = load i8, ptr @PL_tainted, align 1, !range !2
  %loadedv83 = trunc nuw i8 %33 to i1
  %or.cond = select i1 %loadedv, i1 %loadedv83, i1 false
  br i1 %or.cond, label %if.then91, label %do.end98

if.then91:                                        ; preds = %if.end71
  call void @Perl_sv_magic(ptr noundef nonnull %dsv, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0)
  br label %do.end98

do.end98:                                         ; preds = %if.then91, %if.end71
  %and99 = and i32 %flags, 128
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end113, label %do.body102

do.body102:                                       ; preds = %do.end98
  %34 = load i32, ptr %sv_flags, align 4
  %and104 = and i32 %34, 4194304
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end113, label %if.then108

if.then108:                                       ; preds = %do.body102
  %call109 = call i32 @Perl_mg_set(ptr noundef nonnull %dsv) #4
  br label %if.end113

if.end113:                                        ; preds = %if.then108, %do.body102, %do.end98
  call void @llvm.lifetime.end.p0(ptr nonnull %dlen) #4
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = !{i8 0, i8 2}
!3 = !{}
