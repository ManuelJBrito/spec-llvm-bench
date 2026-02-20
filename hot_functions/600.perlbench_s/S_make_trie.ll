; ModuleID = '/tmp/tmp.tRsqBAH8dU/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/regcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i8, i8, i16 }
%struct._reg_trie_state = type { i16, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct._reg_trie_trans_list_elem = type { i16, i32 }
%struct.reg_trie_wordinfo = type { i16, i32, i32 }
%struct._reg_trie_trans = type { i32, i32 }

@PL_reg_name = external dso_local local_unnamed_addr constant [134 x ptr], align 16
@.str.204 = external hidden unnamed_addr constant [32 x i8], align 1
@.str.217 = external hidden unnamed_addr constant [15 x i8], align 1
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1
@PL_fold_latin1 = external constant [0 x i8], align 1
@PL_fold = external constant [0 x i8], align 1
@.str.222 = external hidden unnamed_addr constant [53 x i8], align 1
@PL_latin1_lc = external local_unnamed_addr constant [0 x i8], align 1
@.str.223 = external hidden unnamed_addr constant [52 x i8], align 1
@.str.224 = external hidden unnamed_addr constant [53 x i8], align 1
@reg_off_by_arg = external hidden unnamed_addr constant <{ [72 x i8], [22 x i8] }>, align 16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #1

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #1

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden fastcc range(i32 1, 5) i32 @S_make_trie(ptr noundef nonnull readonly captures(none) %pRExC_state, ptr noundef readnone captures(address) %startbranch, ptr noundef %first, ptr noundef %last, ptr noundef %tail, i32 noundef %word_count, i32 noundef range(i32 1, 40) %flags, i32 noundef %depth) unnamed_addr #6 {
entry:
  %len = alloca i64, align 8
  %uvc = alloca i64, align 8
  %ooooff = alloca i8, align 1
  %ooooff2331 = alloca i8, align 1
  %ooooff2516 = alloca i8, align 1
  %len3783 = alloca i64, align 8
  %call = tail call ptr @Perl_newSV_type(i32 noundef 11) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %len) #9
  store i64 0, ptr %len, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %uvc) #9
  store i64 0, ptr %uvc, align 8
  %rxi.i = getelementptr inbounds nuw i8, ptr %pRExC_state, i64 32
  %0 = load ptr, ptr %rxi.i, align 8
  %data.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %1 = load ptr, ptr %data.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %2 = load i32, ptr %1, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry
  %cond.i = phi i32 [ %2, %cond.true.i ], [ 0, %entry ]
  %add.i = add i32 %cond.i, 2
  %sub.i = add i32 %cond.i, 1
  %conv.i = zext i32 %sub.i to i64
  %mul.i = shl nuw nsw i64 %conv.i, 3
  %add6.i = add nuw nsw i64 %mul.i, 24
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %1, i64 noundef %add6.i) #9
  %3 = load ptr, ptr %rxi.i, align 8
  %data9.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %call.i, ptr %data9.i, align 8
  %tobool10.not.i = icmp eq i32 %cond.i, 0
  br i1 %tobool10.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end.i
  %4 = load ptr, ptr %rxi.i, align 8
  %data12.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %5 = load ptr, ptr %data12.i, align 8
  %what.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %6 = load ptr, ptr %what.i, align 8
  %conv14.i = zext i32 %add.i to i64
  %call16.i = tail call ptr @Perl_safesysrealloc(ptr noundef %6, i64 noundef %conv14.i) #9
  br label %S_add_data.exit

if.else.i:                                        ; preds = %cond.end.i
  %call22.i = tail call ptr @Perl_safesysmalloc(i64 noundef 2) #9
  br label %S_add_data.exit

S_add_data.exit:                                  ; preds = %if.else.i, %if.then.i
  %call22.sink.i = phi ptr [ %call22.i, %if.else.i ], [ %call16.i, %if.then.i ]
  %7 = load ptr, ptr %rxi.i, align 8
  %data24.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %8 = load ptr, ptr %data24.i, align 8
  %what25.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %call22.sink.i, ptr %what25.i, align 8
  %9 = load ptr, ptr %rxi.i, align 8
  %data28.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  %10 = load ptr, ptr %data28.i, align 8
  store i32 %add.i, ptr %10, align 8
  %11 = load ptr, ptr %rxi.i, align 8
  %data31.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %12 = load ptr, ptr %data31.i, align 8
  %what32.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %13 = load ptr, ptr %what32.i, align 8
  %idx.ext.i = zext i32 %cond.i to i64
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %13, i64 %idx.ext.i
  store i16 30068, ptr %add.ptr.i, align 1
  switch i32 %flags, label %sw.default [
    i32 31, label %sw.epilog
    i32 32, label %sw.epilog
    i32 36, label %sw.bb2
    i32 37, label %sw.bb2
    i32 35, label %sw.bb2
    i32 38, label %sw.bb2
    i32 33, label %sw.bb3
  ]

sw.bb2:                                           ; preds = %S_add_data.exit, %S_add_data.exit, %S_add_data.exit, %S_add_data.exit
  br label %sw.epilog

sw.bb3:                                           ; preds = %S_add_data.exit
  br label %sw.epilog

sw.default:                                       ; preds = %S_add_data.exit
  %idxprom = zext nneg i32 %flags to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr @PL_reg_name, i64 %idxprom
  %14 = load ptr, ptr %arrayidx, align 8
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.222, i32 noundef %flags, ptr noundef %14) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %S_add_data.exit, %S_add_data.exit
  %tobool3716.not = phi i1 [ true, %sw.default ], [ true, %S_add_data.exit ], [ true, %S_add_data.exit ], [ false, %sw.bb2 ], [ false, %sw.bb3 ]
  %folder.0 = phi ptr [ null, %sw.default ], [ null, %S_add_data.exit ], [ null, %S_add_data.exit ], [ @PL_fold_latin1, %sw.bb2 ], [ @PL_fold, %sw.bb3 ]
  %call4 = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #10
  store i32 1, ptr %call4, align 8
  %startstate = getelementptr inbounds nuw i8, ptr %call4, i64 60
  store i32 1, ptr %startstate, align 4
  %wordcount = getelementptr inbounds nuw i8, ptr %call4, i64 88
  store i32 %word_count, ptr %wordcount, align 8
  %15 = load ptr, ptr %rxi.i, align 8
  %data = getelementptr inbounds nuw i8, ptr %15, i64 24
  %16 = load ptr, ptr %data, align 8
  %data5 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %arrayidx7 = getelementptr inbounds nuw ptr, ptr %data5, i64 %idx.ext.i
  store ptr %call4, ptr %arrayidx7, align 8
  %call8 = tail call noalias dereferenceable_or_null(512) ptr @calloc(i64 noundef 256, i64 noundef 2) #10
  %charmap = getelementptr inbounds nuw i8, ptr %call4, i64 8
  store ptr %call8, ptr %charmap, align 8
  %17 = add nsw i32 %flags, -31
  %or.cond = icmp ult i32 %17, 2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %call10 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 32, i64 noundef 1) #10
  %bitmap = getelementptr inbounds nuw i8, ptr %call4, i64 32
  store ptr %call10, ptr %bitmap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %18 = load i32, ptr %wordcount, align 8
  %add = add i32 %18, 1
  %conv = zext i32 %add to i64
  %call12 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 12) #10
  %wordinfo = getelementptr inbounds nuw i8, ptr %call4, i64 48
  store ptr %call12, ptr %wordinfo, align 8
  %call13 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.217, i32 noundef 1) #9
  %sv_flags = getelementptr inbounds nuw i8, ptr %call13, i64 12
  %19 = load i32, ptr %sv_flags, align 4
  %and = and i32 %19, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  tail call void @Perl_sv_setiv(ptr noundef nonnull %call13, i64 noundef 65536) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end
  %cmp16 = icmp eq ptr %first, %startbranch
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end15
  %type = getelementptr inbounds nuw i8, ptr %last, i64 1
  %20 = load i8, ptr %type, align 1
  %cmp19.not = icmp eq i8 %20, 30
  br i1 %cmp19.not, label %if.else, label %if.end22

if.else:                                          ; preds = %land.lhs.true, %if.end15
  %add.ptr = getelementptr inbounds nuw i8, ptr %first, i64 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %land.lhs.true
  %convert.0 = phi ptr [ %add.ptr, %if.else ], [ %first, %land.lhs.true ]
  %cmp235403 = icmp ult ptr %first, %last
  br i1 %cmp235403, label %for.body.lr.ph, label %for.end2556

for.body.lr.ph:                                   ; preds = %if.end22
  %bitmap28 = getelementptr inbounds nuw i8, ptr %call4, i64 32
  %minlen = getelementptr inbounds nuw i8, ptr %call4, i64 64
  %utf8 = getelementptr inbounds nuw i8, ptr %pRExC_state, i64 216
  %cmp88 = icmp eq ptr %folder.0, @PL_fold_latin1
  %uniquecharcount = getelementptr inbounds nuw i8, ptr %call4, i64 56
  %uniquecharcount2488 = getelementptr inbounds nuw i8, ptr %call4, i64 56
  %uniquecharcount2302 = getelementptr inbounds nuw i8, ptr %call4, i64 56
  %minlen2530 = getelementptr inbounds nuw i8, ptr %call4, i64 64
  %maxlen2536 = getelementptr inbounds nuw i8, ptr %call4, i64 72
  %minlen2528 = getelementptr inbounds nuw i8, ptr %call4, i64 64
  %maxlen = getelementptr inbounds nuw i8, ptr %call4, i64 72
  %minlen54 = getelementptr inbounds nuw i8, ptr %call4, i64 64
  br label %for.body

for.body:                                         ; preds = %Perl_regnext.exit5044, %for.body.lr.ph
  %widecharmap.05408 = phi ptr [ null, %for.body.lr.ph ], [ %widecharmap.45346, %Perl_regnext.exit5044 ]
  %cur.05405 = phi ptr [ %first, %for.body.lr.ph ], [ %retval.0.i5038, %Perl_regnext.exit5044 ]
  %trie_charcount.05404 = phi i64 [ 0, %for.body.lr.ph ], [ %trie_charcount.25344, %Perl_regnext.exit5044 ]
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %cur.05405, i64 4
  %string = getelementptr inbounds nuw i8, ptr %cur.05405, i64 8
  %21 = load i8, ptr %add.ptr25, align 2
  %idx.ext = zext i8 %21 to i64
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %string, i64 %idx.ext
  %22 = load ptr, ptr %bitmap28, align 8
  %tobool29 = icmp ne ptr %22, null
  %type31 = getelementptr inbounds nuw i8, ptr %cur.05405, i64 5
  %23 = load i8, ptr %type31, align 1
  %cmp33 = icmp eq i8 %23, 40
  br i1 %cmp33, label %if.then35, label %if.end56

if.then35:                                        ; preds = %for.body
  %type.i = getelementptr inbounds nuw i8, ptr %cur.05405, i64 5
  %24 = load i8, ptr %type.i, align 1
  %cmp.i = icmp ugt i8 %24, 93
  br i1 %cmp.i, label %if.then2.i, label %if.end5.i

if.then2.i:                                       ; preds = %if.then35
  %conv.i5022 = zext i8 %24 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.204, i32 noundef %conv.i5022, i32 noundef 93) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.then35
  %25 = load i8, ptr %type.i, align 1
  %idxprom.i = zext i8 %25 to i64
  %arrayidx.i = getelementptr inbounds nuw i8, ptr @reg_off_by_arg, i64 %idxprom.i
  %26 = load i8, ptr %arrayidx.i, align 1
  %tobool8.not.i = icmp eq i8 %26, 0
  br i1 %tobool8.not.i, label %cond.false.i, label %cond.true.i5017

cond.true.i5017:                                  ; preds = %if.end5.i
  %arg1.i = getelementptr inbounds nuw i8, ptr %cur.05405, i64 8
  %27 = load i32, ptr %arg1.i, align 4
  br label %cond.end.i5018

cond.false.i:                                     ; preds = %if.end5.i
  %next_off.i = getelementptr inbounds nuw i8, ptr %cur.05405, i64 6
  %28 = load i16, ptr %next_off.i, align 2
  %conv9.i = zext i16 %28 to i32
  br label %cond.end.i5018

cond.end.i5018:                                   ; preds = %cond.false.i, %cond.true.i5017
  %cond.i5019 = phi i32 [ %27, %cond.true.i5017 ], [ %conv9.i, %cond.false.i ]
  %cmp10.i = icmp eq i32 %cond.i5019, 0
  %idx.ext.i5020 = sext i32 %cond.i5019 to i64
  %add.ptr.i5021 = getelementptr inbounds %struct.regnode, ptr %add.ptr25, i64 %idx.ext.i5020
  %retval.0.i = select i1 %cmp10.i, ptr null, ptr %add.ptr.i5021
  %cmp37.not = icmp eq ptr %retval.0.i, %tail
  br i1 %cmp37.not, label %cleanup2544.thread, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %cond.end.i5018
  %type40 = getelementptr inbounds nuw i8, ptr %add.ptr.i5021, i64 1
  %29 = load i8, ptr %type40, align 1
  %conv41 = zext i8 %29 to i32
  %cmp42 = icmp eq i32 %flags, %conv41
  br i1 %cmp42, label %cleanup.thread, label %cleanup2544.thread

cleanup.thread:                                   ; preds = %land.lhs.true39
  %string45 = getelementptr inbounds nuw i8, ptr %retval.0.i, i64 4
  %30 = load i8, ptr %add.ptr.i5021, align 2
  %idx.ext49 = zext i8 %30 to i64
  %add.ptr50 = getelementptr inbounds nuw i8, ptr %string45, i64 %idx.ext49
  store i64 %idx.ext49, ptr %minlen, align 8
  br label %if.end56

cleanup2544.thread:                               ; preds = %land.lhs.true39, %cond.end.i5018
  store i64 0, ptr %minlen54, align 8
  br label %if.end.i

if.end56:                                         ; preds = %cleanup.thread, %for.body
  %e.1 = phi ptr [ %add.ptr27, %for.body ], [ %add.ptr50, %cleanup.thread ]
  %uc.1 = phi ptr [ %string, %for.body ], [ %string45, %cleanup.thread ]
  %noper.1 = phi ptr [ %add.ptr25, %for.body ], [ %add.ptr.i5021, %cleanup.thread ]
  br i1 %tobool29, label %if.then57, label %if.end78

if.then57:                                        ; preds = %if.end56
  %31 = load i8, ptr %uc.1, align 1
  %and59 = and i8 %31, 7
  %shl = shl nuw i8 1, %and59
  %32 = load ptr, ptr %bitmap28, align 8
  %33 = lshr i8 %31, 3
  %idxprom63 = zext nneg i8 %33 to i64
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %32, i64 %idxprom63
  %34 = load i8, ptr %arrayidx64, align 1
  %or = or i8 %shl, %34
  store i8 %or, ptr %arrayidx64, align 1
  %type67 = getelementptr inbounds nuw i8, ptr %noper.1, i64 1
  %35 = load i8, ptr %type67, align 1
  %cmp69 = icmp eq i8 %35, 37
  br i1 %cmp69, label %if.then71, label %if.end78

if.then71:                                        ; preds = %if.then57
  %36 = load ptr, ptr %bitmap28, align 8
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %36, i64 27
  %37 = load i8, ptr %arrayidx73, align 1
  %or75 = or i8 %37, -128
  store i8 %or75, ptr %arrayidx73, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.then71, %if.then57, %if.end56
  %cmp805392 = icmp ult ptr %uc.1, %e.1
  br i1 %cmp805392, label %for.body82.lr.ph, label %for.end

for.body82.lr.ph:                                 ; preds = %if.end78
  %sub.ptr.lhs.cast = ptrtoint ptr %e.1 to i64
  %sub.ptr.lhs.cast2119 = ptrtoint ptr %e.1 to i64
  br label %for.body82

for.body82:                                       ; preds = %for.inc, %for.body82.lr.ph
  %widecharmap.15399 = phi ptr [ %widecharmap.05408, %for.body82.lr.ph ], [ %widecharmap.3, %for.inc ]
  %trie_charcount.15398 = phi i64 [ %trie_charcount.05404, %for.body82.lr.ph ], [ %inc, %for.inc ]
  %uc.25397 = phi ptr [ %uc.1, %for.body82.lr.ph ], [ %add.ptr2524, %for.inc ]
  %foldlen.05396 = phi i32 [ 0, %for.body82.lr.ph ], [ %foldlen.15333, %for.inc ]
  %minchars.05395 = phi i64 [ 0, %for.body82.lr.ph ], [ %minchars.15330, %for.inc ]
  %maxchars.05394 = phi i64 [ 0, %for.body82.lr.ph ], [ %inc106, %for.inc ]
  %set_bit.05393 = phi i1 [ %tobool29, %for.body82.lr.ph ], [ %set_bit.1, %for.inc ]
  %inc = add i64 %trie_charcount.15398, 1
  %38 = load i32, ptr %utf8, align 8
  %tobool84.not = icmp eq i32 %38, 0
  br i1 %tobool84.not, label %if.else87, label %if.then85

if.then85:                                        ; preds = %for.body82
  %call86 = call i64 @Perl_valid_utf8_to_uvchr(ptr noundef %uc.25397, ptr noundef nonnull %len) #9
  store i64 %call86, ptr %uvc, align 8
  br label %do.end

if.else87:                                        ; preds = %for.body82
  br i1 %cmp88, label %if.then90, label %if.else101

if.then90:                                        ; preds = %if.else87
  %39 = load i8, ptr %uc.25397, align 1
  %idxprom91 = zext i8 %39 to i64
  %arrayidx92 = getelementptr inbounds nuw i8, ptr @PL_latin1_lc, i64 %idxprom91
  %40 = load i8, ptr %arrayidx92, align 1
  %conv94 = zext i8 %40 to i64
  %cmp95 = icmp eq i8 %40, -75
  %spec.store.select = select i1 %cmp95, i64 956, i64 %conv94
  store i64 %spec.store.select, ptr %uvc, align 8
  store i64 1, ptr %len, align 8
  br label %do.end

if.else101:                                       ; preds = %if.else87
  %41 = load i8, ptr %uc.25397, align 1
  %conv103 = zext i8 %41 to i64
  store i64 %conv103, ptr %uvc, align 8
  store i64 1, ptr %len, align 8
  br label %do.end

do.end:                                           ; preds = %if.else101, %if.then90, %if.then85
  %inc106 = add i64 %maxchars.05394, 1
  br i1 %tobool3716.not, label %if.end2254.thread, label %if.else111

if.else111:                                       ; preds = %do.end
  %cmp112 = icmp sgt i32 %foldlen.05396, 0
  br i1 %cmp112, label %if.then114, label %if.else125

if.then114:                                       ; preds = %if.else111
  %42 = load i32, ptr %utf8, align 8
  %tobool116.not = icmp eq i32 %42, 0
  br i1 %tobool116.not, label %cond.end, label %cond.true119

cond.true119:                                     ; preds = %if.then114
  %43 = load i8, ptr %uc.25397, align 1
  %idxprom120 = zext i8 %43 to i64
  %arrayidx121 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom120
  %44 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %44 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true119, %if.then114
  %cond124 = phi i32 [ %conv122, %cond.true119 ], [ 1, %if.then114 ]
  %sub = sub nsw i32 %foldlen.05396, %cond124
  br label %if.end2254

if.else125:                                       ; preds = %if.else111
  %inc126 = add i64 %minchars.05395, 1
  %45 = load i32, ptr %utf8, align 8
  %tobool128.not = icmp eq i32 %45, 0
  br i1 %tobool128.not, label %if.else2118, label %if.then131

if.then131:                                       ; preds = %if.else125
  %sub.ptr.rhs.cast = ptrtoint ptr %uc.25397 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp132 = icmp sgt i64 %sub.ptr.sub, 5
  br i1 %cmp132, label %cond.true134, label %cond.false811

cond.true134:                                     ; preds = %if.then131
  %46 = load i8, ptr %uc.25397, align 1
  switch i8 %46, label %if.end2254 [
    i8 97, label %cond.true139
    i8 102, label %cond.true154
    i8 104, label %cond.true188
    i8 105, label %cond.true205
    i8 106, label %cond.true222
    i8 115, label %cond.true239
    i8 116, label %cond.true256
    i8 119, label %cond.true278
    i8 121, label %cond.true278
    i8 -59, label %cond.true295
    i8 -54, label %cond.true317
    i8 -50, label %cond.true334
    i8 -49, label %cond.true471
    i8 -43, label %cond.true651
    i8 -31, label %cond.true723
  ]

cond.true139:                                     ; preds = %cond.true134
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %47 = load i8, ptr %arrayidx140, align 1
  %cmp142 = icmp eq i8 %47, -54
  br i1 %cmp142, label %land.rhs, label %if.end2254

land.rhs:                                         ; preds = %cond.true139
  %arrayidx144 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %48 = load i8, ptr %arrayidx144, align 1
  %cmp146 = icmp eq i8 %48, -66
  br i1 %cmp146, label %if.then2112, label %if.end2254

cond.true154:                                     ; preds = %cond.true134
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %49 = load i8, ptr %arrayidx155, align 1
  switch i8 %49, label %if.end2254 [
    i8 102, label %cond.true159
    i8 105, label %if.then2112
    i8 108, label %if.then2112
  ]

cond.true159:                                     ; preds = %cond.true154
  %arrayidx160 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %50 = load i8, ptr %arrayidx160, align 1
  %cmp162 = icmp eq i8 %50, 105
  %cmp166 = icmp eq i8 %50, 108
  %51 = or i1 %cmp162, %cmp166
  %cond168 = select i1 %51, i32 3, i32 2
  br label %if.then2112

cond.true188:                                     ; preds = %cond.true134
  %arrayidx189 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %52 = load i8, ptr %arrayidx189, align 1
  %cmp191 = icmp eq i8 %52, -52
  br i1 %cmp191, label %land.rhs193, label %if.end2254

land.rhs193:                                      ; preds = %cond.true188
  %arrayidx194 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %53 = load i8, ptr %arrayidx194, align 1
  %cmp196 = icmp eq i8 %53, -79
  br i1 %cmp196, label %if.then2112, label %if.end2254

cond.true205:                                     ; preds = %cond.true134
  %arrayidx206 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %54 = load i8, ptr %arrayidx206, align 1
  %cmp208 = icmp eq i8 %54, -52
  br i1 %cmp208, label %land.rhs210, label %if.end2254

land.rhs210:                                      ; preds = %cond.true205
  %arrayidx211 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %55 = load i8, ptr %arrayidx211, align 1
  %cmp213 = icmp eq i8 %55, -121
  br i1 %cmp213, label %if.then2112, label %if.end2254

cond.true222:                                     ; preds = %cond.true134
  %arrayidx223 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %56 = load i8, ptr %arrayidx223, align 1
  %cmp225 = icmp eq i8 %56, -52
  br i1 %cmp225, label %land.rhs227, label %if.end2254

land.rhs227:                                      ; preds = %cond.true222
  %arrayidx228 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %57 = load i8, ptr %arrayidx228, align 1
  %cmp230 = icmp eq i8 %57, -116
  br i1 %cmp230, label %if.then2112, label %if.end2254

cond.true239:                                     ; preds = %cond.true134
  %arrayidx240 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %58 = load i8, ptr %arrayidx240, align 1
  %cmp242 = icmp eq i8 %58, 115
  %cmp247 = icmp eq i8 %58, 116
  %59 = select i1 %cmp247, i32 2, i32 0
  br i1 %cmp242, label %if.then2112, label %cond.end2109

cond.true256:                                     ; preds = %cond.true134
  %arrayidx257 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %60 = load i8, ptr %arrayidx257, align 1
  %cmp259 = icmp eq i8 %60, -52
  br i1 %cmp259, label %land.rhs261, label %if.end2254

land.rhs261:                                      ; preds = %cond.true256
  %arrayidx262 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %61 = load i8, ptr %arrayidx262, align 1
  %cmp264 = icmp eq i8 %61, -120
  br i1 %cmp264, label %if.then2112, label %if.end2254

cond.true278:                                     ; preds = %cond.true134, %cond.true134
  %arrayidx279 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %62 = load i8, ptr %arrayidx279, align 1
  %cmp281 = icmp eq i8 %62, -52
  br i1 %cmp281, label %land.rhs283, label %if.end2254

land.rhs283:                                      ; preds = %cond.true278
  %arrayidx284 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %63 = load i8, ptr %arrayidx284, align 1
  %cmp286 = icmp eq i8 %63, -118
  br i1 %cmp286, label %if.then2112, label %if.end2254

cond.true295:                                     ; preds = %cond.true134
  %arrayidx296 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %64 = load i8, ptr %arrayidx296, align 1
  %cmp298 = icmp eq i8 %64, -65
  br i1 %cmp298, label %land.lhs.true300, label %if.end2254

land.lhs.true300:                                 ; preds = %cond.true295
  %arrayidx301 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %65 = load i8, ptr %arrayidx301, align 1
  %cmp303 = icmp eq i8 %65, -59
  br i1 %cmp303, label %land.rhs305, label %if.end2254

land.rhs305:                                      ; preds = %land.lhs.true300
  %arrayidx306 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %66 = load i8, ptr %arrayidx306, align 1
  %cmp308 = icmp eq i8 %66, -65
  br i1 %cmp308, label %if.then2112, label %if.end2254

cond.true317:                                     ; preds = %cond.true134
  %arrayidx318 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %67 = load i8, ptr %arrayidx318, align 1
  %cmp320 = icmp eq i8 %67, -68
  br i1 %cmp320, label %land.rhs322, label %if.end2254

land.rhs322:                                      ; preds = %cond.true317
  %arrayidx323 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %68 = load i8, ptr %arrayidx323, align 1
  %cmp325 = icmp eq i8 %68, 110
  br i1 %cmp325, label %if.then2112, label %if.end2254

cond.true334:                                     ; preds = %cond.true134
  %arrayidx335 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %69 = load i8, ptr %arrayidx335, align 1
  %70 = and i8 %69, -3
  %cmp338 = icmp eq i8 %70, -84
  br i1 %cmp338, label %cond.true340, label %cond.false352

cond.true340:                                     ; preds = %cond.true334
  %arrayidx341 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %71 = load i8, ptr %arrayidx341, align 1
  %cmp343 = icmp eq i8 %71, -50
  br i1 %cmp343, label %land.rhs345, label %if.end2254

land.rhs345:                                      ; preds = %cond.true340
  %arrayidx346 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %72 = load i8, ptr %arrayidx346, align 1
  %cmp348 = icmp eq i8 %72, -71
  br i1 %cmp348, label %if.then2112, label %if.end2254

cond.false352:                                    ; preds = %cond.true334
  switch i8 %69, label %if.end2254 [
    i8 -79, label %cond.true362
    i8 -73, label %cond.true362
    i8 -71, label %cond.true406
  ]

cond.true362:                                     ; preds = %cond.false352, %cond.false352
  %arrayidx363 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %73 = load i8, ptr %arrayidx363, align 1
  switch i8 %73, label %if.end2254 [
    i8 -51, label %cond.true367
    i8 -50, label %land.rhs392
  ]

cond.true367:                                     ; preds = %cond.true362
  %arrayidx368 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %74 = load i8, ptr %arrayidx368, align 1
  %cmp370 = icmp eq i8 %74, -126
  br i1 %cmp370, label %cond.true372, label %if.end2254

cond.true372:                                     ; preds = %cond.true367
  %arrayidx373 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 4
  %75 = load i8, ptr %arrayidx373, align 1
  %cmp375 = icmp eq i8 %75, -50
  br i1 %cmp375, label %land.rhs377, label %if.then2112

land.rhs377:                                      ; preds = %cond.true372
  %arrayidx378 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 5
  %76 = load i8, ptr %arrayidx378, align 1
  %cmp380 = icmp eq i8 %76, -71
  %77 = select i1 %cmp380, i32 6, i32 4
  br label %if.then2112

land.rhs392:                                      ; preds = %cond.true362
  %arrayidx393 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %78 = load i8, ptr %arrayidx393, align 1
  %cmp395 = icmp eq i8 %78, -71
  br i1 %cmp395, label %if.then2112, label %if.end2254

cond.true406:                                     ; preds = %cond.false352
  %arrayidx407 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %79 = load i8, ptr %arrayidx407, align 1
  switch i8 %79, label %if.end2254 [
    i8 -52, label %cond.true411
    i8 -51, label %land.rhs450
  ]

cond.true411:                                     ; preds = %cond.true406
  %arrayidx412 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %80 = load i8, ptr %arrayidx412, align 1
  %cmp414 = icmp eq i8 %80, -120
  br i1 %cmp414, label %cond.true416, label %if.end2254

cond.true416:                                     ; preds = %cond.true411
  %arrayidx417 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 4
  %81 = load i8, ptr %arrayidx417, align 1
  switch i8 %81, label %if.end2254 [
    i8 -52, label %cond.true421
    i8 -51, label %land.rhs433
  ]

cond.true421:                                     ; preds = %cond.true416
  %arrayidx422 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 5
  %82 = load i8, ptr %arrayidx422, align 1
  %cmp425 = icmp slt i8 %82, -126
  br i1 %cmp425, label %if.then2112, label %if.end2254

land.rhs433:                                      ; preds = %cond.true416
  %arrayidx434 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 5
  %83 = load i8, ptr %arrayidx434, align 1
  %cmp436 = icmp eq i8 %83, -126
  br i1 %cmp436, label %if.then2112, label %if.end2254

land.rhs450:                                      ; preds = %cond.true406
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %84 = load i8, ptr %arrayidx451, align 1
  %cmp453 = icmp eq i8 %84, -126
  br i1 %cmp453, label %if.then2112, label %if.end2254

cond.true471:                                     ; preds = %cond.true134
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %85 = load i8, ptr %arrayidx472, align 1
  switch i8 %85, label %if.end2254 [
    i8 -127, label %cond.true476
    i8 -123, label %cond.true493
    i8 -119, label %cond.true584
    i8 -114, label %land.lhs.true628
  ]

cond.true476:                                     ; preds = %cond.true471
  %arrayidx477 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %86 = load i8, ptr %arrayidx477, align 1
  %cmp479 = icmp eq i8 %86, -52
  br i1 %cmp479, label %land.rhs481, label %if.end2254

land.rhs481:                                      ; preds = %cond.true476
  %arrayidx482 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %87 = load i8, ptr %arrayidx482, align 1
  %cmp484 = icmp eq i8 %87, -109
  br i1 %cmp484, label %if.then2112, label %if.end2254

cond.true493:                                     ; preds = %cond.true471
  %arrayidx494 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %88 = load i8, ptr %arrayidx494, align 1
  switch i8 %88, label %if.end2254 [
    i8 -52, label %cond.true498
    i8 -51, label %land.rhs570
  ]

cond.true498:                                     ; preds = %cond.true493
  %arrayidx499 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %89 = load i8, ptr %arrayidx499, align 1
  switch i8 %89, label %if.end2254 [
    i8 -120, label %cond.true503
    i8 -109, label %cond.true534
  ]

cond.true503:                                     ; preds = %cond.true498
  %arrayidx504 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 4
  %90 = load i8, ptr %arrayidx504, align 1
  switch i8 %90, label %if.end2254 [
    i8 -52, label %cond.true508
    i8 -51, label %land.rhs520
  ]

cond.true508:                                     ; preds = %cond.true503
  %arrayidx509 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 5
  %91 = load i8, ptr %arrayidx509, align 1
  %cmp512 = icmp slt i8 %91, -126
  br i1 %cmp512, label %if.then2112, label %if.end2254

land.rhs520:                                      ; preds = %cond.true503
  %arrayidx521 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 5
  %92 = load i8, ptr %arrayidx521, align 1
  %cmp523 = icmp eq i8 %92, -126
  br i1 %cmp523, label %if.then2112, label %if.end2254

cond.true534:                                     ; preds = %cond.true498
  %arrayidx535 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 4
  %93 = load i8, ptr %arrayidx535, align 1
  switch i8 %93, label %if.then2112 [
    i8 -52, label %cond.true539
    i8 -51, label %land.rhs551
  ]

cond.true539:                                     ; preds = %cond.true534
  %arrayidx540 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 5
  %94 = load i8, ptr %arrayidx540, align 1
  %cmp543 = icmp slt i8 %94, -126
  %cond545 = select i1 %cmp543, i32 6, i32 4
  br label %if.then2112

land.rhs551:                                      ; preds = %cond.true534
  %arrayidx552 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 5
  %95 = load i8, ptr %arrayidx552, align 1
  %cmp554 = icmp eq i8 %95, -126
  %96 = select i1 %cmp554, i32 6, i32 4
  br label %if.then2112

land.rhs570:                                      ; preds = %cond.true493
  %arrayidx571 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %97 = load i8, ptr %arrayidx571, align 1
  %cmp573 = icmp eq i8 %97, -126
  br i1 %cmp573, label %if.then2112, label %if.end2254

cond.true584:                                     ; preds = %cond.true471
  %arrayidx585 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %98 = load i8, ptr %arrayidx585, align 1
  switch i8 %98, label %if.end2254 [
    i8 -51, label %cond.true589
    i8 -50, label %land.rhs614
  ]

cond.true589:                                     ; preds = %cond.true584
  %arrayidx590 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %99 = load i8, ptr %arrayidx590, align 1
  %cmp592 = icmp eq i8 %99, -126
  br i1 %cmp592, label %cond.true594, label %if.end2254

cond.true594:                                     ; preds = %cond.true589
  %arrayidx595 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 4
  %100 = load i8, ptr %arrayidx595, align 1
  %cmp597 = icmp eq i8 %100, -50
  br i1 %cmp597, label %land.rhs599, label %if.then2112

land.rhs599:                                      ; preds = %cond.true594
  %arrayidx600 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 5
  %101 = load i8, ptr %arrayidx600, align 1
  %cmp602 = icmp eq i8 %101, -71
  %102 = select i1 %cmp602, i32 6, i32 4
  br label %if.then2112

land.rhs614:                                      ; preds = %cond.true584
  %arrayidx615 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %103 = load i8, ptr %arrayidx615, align 1
  %cmp617 = icmp eq i8 %103, -71
  br i1 %cmp617, label %if.then2112, label %if.end2254

land.lhs.true628:                                 ; preds = %cond.true471
  %arrayidx629 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %104 = load i8, ptr %arrayidx629, align 1
  %cmp631 = icmp eq i8 %104, -50
  br i1 %cmp631, label %land.rhs633, label %if.end2254

land.rhs633:                                      ; preds = %land.lhs.true628
  %arrayidx634 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %105 = load i8, ptr %arrayidx634, align 1
  %cmp636 = icmp eq i8 %105, -71
  br i1 %cmp636, label %if.then2112, label %if.end2254

cond.true651:                                     ; preds = %cond.true134
  %arrayidx652 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %106 = load i8, ptr %arrayidx652, align 1
  switch i8 %106, label %if.end2254 [
    i8 -91, label %cond.true656
    i8 -76, label %cond.true673
    i8 -66, label %land.lhs.true702
  ]

cond.true656:                                     ; preds = %cond.true651
  %arrayidx657 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %107 = load i8, ptr %arrayidx657, align 1
  %cmp659 = icmp eq i8 %107, -42
  br i1 %cmp659, label %land.rhs661, label %if.end2254

land.rhs661:                                      ; preds = %cond.true656
  %arrayidx662 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %108 = load i8, ptr %arrayidx662, align 1
  %cmp664 = icmp eq i8 %108, -126
  br i1 %cmp664, label %if.then2112, label %if.end2254

cond.true673:                                     ; preds = %cond.true651
  %arrayidx674 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %109 = load i8, ptr %arrayidx674, align 1
  %cmp676 = icmp eq i8 %109, -43
  br i1 %cmp676, label %land.rhs678, label %if.end2254

land.rhs678:                                      ; preds = %cond.true673
  %arrayidx679 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %110 = load i8, ptr %arrayidx679, align 1
  switch i8 %110, label %if.end2254 [
    i8 -83, label %if.then2112
    i8 -85, label %if.then2112
    i8 -91, label %if.then2112
    i8 -74, label %if.then2112
  ]

land.lhs.true702:                                 ; preds = %cond.true651
  %arrayidx703 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %111 = load i8, ptr %arrayidx703, align 1
  %cmp705 = icmp eq i8 %111, -43
  br i1 %cmp705, label %land.rhs707, label %if.end2254

land.rhs707:                                      ; preds = %land.lhs.true702
  %arrayidx708 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %112 = load i8, ptr %arrayidx708, align 1
  %cmp710 = icmp eq i8 %112, -74
  br i1 %cmp710, label %if.then2112, label %if.end2254

cond.true723:                                     ; preds = %cond.true134
  %arrayidx724 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %113 = load i8, ptr %arrayidx724, align 1
  switch i8 %113, label %if.end2254 [
    i8 -68, label %cond.true728
    i8 -67, label %land.lhs.true751
  ]

cond.true728:                                     ; preds = %cond.true723
  %arrayidx729 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %114 = load i8, ptr %arrayidx729, align 1
  %115 = and i8 %114, -40
  %cmp732 = icmp eq i8 %115, -128
  br i1 %cmp732, label %land.lhs.true734, label %if.end2254

land.lhs.true734:                                 ; preds = %cond.true728
  %arrayidx735 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %116 = load i8, ptr %arrayidx735, align 1
  %cmp737 = icmp eq i8 %116, -50
  br i1 %cmp737, label %land.rhs739, label %if.end2254

land.rhs739:                                      ; preds = %land.lhs.true734
  %arrayidx740 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 4
  %117 = load i8, ptr %arrayidx740, align 1
  %cmp742 = icmp eq i8 %117, -71
  br i1 %cmp742, label %if.then2112, label %if.end2254

land.lhs.true751:                                 ; preds = %cond.true723
  %arrayidx752 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %118 = load i8, ptr %arrayidx752, align 1
  %conv753 = zext i8 %118 to i32
  %and754 = and i32 %conv753, 248
  %cmp755 = icmp eq i32 %and754, 160
  %and760 = and i32 %conv753, 251
  %cmp761 = icmp eq i32 %and760, 176
  %or.cond4992 = or i1 %cmp755, %cmp761
  %cmp766 = icmp eq i8 %118, -68
  %or.cond4993 = or i1 %cmp766, %or.cond4992
  br i1 %or.cond4993, label %land.lhs.true768, label %if.end2254

land.lhs.true768:                                 ; preds = %land.lhs.true751
  %arrayidx769 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %119 = load i8, ptr %arrayidx769, align 1
  %cmp771 = icmp eq i8 %119, -50
  br i1 %cmp771, label %land.rhs773, label %if.end2254

land.rhs773:                                      ; preds = %land.lhs.true768
  %arrayidx774 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 4
  %120 = load i8, ptr %arrayidx774, align 1
  %cmp776 = icmp eq i8 %120, -71
  br i1 %cmp776, label %if.then2112, label %if.end2254

cond.false811:                                    ; preds = %if.then131
  %cmp815 = icmp eq i64 %sub.ptr.sub, 5
  br i1 %cmp815, label %cond.true817, label %cond.false1365

cond.true817:                                     ; preds = %cond.false811
  %121 = load i8, ptr %uc.25397, align 1
  switch i8 %121, label %if.end2254 [
    i8 97, label %cond.true822
    i8 102, label %cond.true839
    i8 104, label %cond.true875
    i8 105, label %cond.true892
    i8 106, label %cond.true909
    i8 115, label %cond.true926
    i8 116, label %cond.true943
    i8 119, label %cond.true965
    i8 121, label %cond.true965
    i8 -59, label %cond.true982
    i8 -54, label %cond.true1004
    i8 -50, label %cond.true1021
    i8 -49, label %cond.true1100
    i8 -43, label %cond.true1205
    i8 -31, label %cond.true1277
  ]

cond.true822:                                     ; preds = %cond.true817
  %arrayidx823 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %122 = load i8, ptr %arrayidx823, align 1
  %cmp825 = icmp eq i8 %122, -54
  br i1 %cmp825, label %land.rhs827, label %if.end2254

land.rhs827:                                      ; preds = %cond.true822
  %arrayidx828 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %123 = load i8, ptr %arrayidx828, align 1
  %cmp830 = icmp eq i8 %123, -66
  br i1 %cmp830, label %if.then2112, label %if.end2254

cond.true839:                                     ; preds = %cond.true817
  %arrayidx840 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %124 = load i8, ptr %arrayidx840, align 1
  switch i8 %124, label %if.end2254 [
    i8 102, label %cond.true844
    i8 105, label %if.then2112
    i8 108, label %if.then2112
  ]

cond.true844:                                     ; preds = %cond.true839
  %arrayidx845 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %125 = load i8, ptr %arrayidx845, align 1
  %cmp847 = icmp eq i8 %125, 105
  %cmp852 = icmp eq i8 %125, 108
  %126 = or i1 %cmp847, %cmp852
  %cond855 = select i1 %126, i32 3, i32 2
  br label %if.then2112

cond.true875:                                     ; preds = %cond.true817
  %arrayidx876 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %127 = load i8, ptr %arrayidx876, align 1
  %cmp878 = icmp eq i8 %127, -52
  br i1 %cmp878, label %land.rhs880, label %if.end2254

land.rhs880:                                      ; preds = %cond.true875
  %arrayidx881 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %128 = load i8, ptr %arrayidx881, align 1
  %cmp883 = icmp eq i8 %128, -79
  br i1 %cmp883, label %if.then2112, label %if.end2254

cond.true892:                                     ; preds = %cond.true817
  %arrayidx893 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %129 = load i8, ptr %arrayidx893, align 1
  %cmp895 = icmp eq i8 %129, -52
  br i1 %cmp895, label %land.rhs897, label %if.end2254

land.rhs897:                                      ; preds = %cond.true892
  %arrayidx898 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %130 = load i8, ptr %arrayidx898, align 1
  %cmp900 = icmp eq i8 %130, -121
  br i1 %cmp900, label %if.then2112, label %if.end2254

cond.true909:                                     ; preds = %cond.true817
  %arrayidx910 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %131 = load i8, ptr %arrayidx910, align 1
  %cmp912 = icmp eq i8 %131, -52
  br i1 %cmp912, label %land.rhs914, label %if.end2254

land.rhs914:                                      ; preds = %cond.true909
  %arrayidx915 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %132 = load i8, ptr %arrayidx915, align 1
  %cmp917 = icmp eq i8 %132, -116
  br i1 %cmp917, label %if.then2112, label %if.end2254

cond.true926:                                     ; preds = %cond.true817
  %arrayidx927 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %133 = load i8, ptr %arrayidx927, align 1
  %cmp929 = icmp eq i8 %133, 115
  %cmp934 = icmp eq i8 %133, 116
  %134 = select i1 %cmp934, i32 2, i32 0
  br i1 %cmp929, label %if.then2112, label %cond.end2109

cond.true943:                                     ; preds = %cond.true817
  %arrayidx944 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %135 = load i8, ptr %arrayidx944, align 1
  %cmp946 = icmp eq i8 %135, -52
  br i1 %cmp946, label %land.rhs948, label %if.end2254

land.rhs948:                                      ; preds = %cond.true943
  %arrayidx949 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %136 = load i8, ptr %arrayidx949, align 1
  %cmp951 = icmp eq i8 %136, -120
  br i1 %cmp951, label %if.then2112, label %if.end2254

cond.true965:                                     ; preds = %cond.true817, %cond.true817
  %arrayidx966 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %137 = load i8, ptr %arrayidx966, align 1
  %cmp968 = icmp eq i8 %137, -52
  br i1 %cmp968, label %land.rhs970, label %if.end2254

land.rhs970:                                      ; preds = %cond.true965
  %arrayidx971 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %138 = load i8, ptr %arrayidx971, align 1
  %cmp973 = icmp eq i8 %138, -118
  br i1 %cmp973, label %if.then2112, label %if.end2254

cond.true982:                                     ; preds = %cond.true817
  %arrayidx983 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %139 = load i8, ptr %arrayidx983, align 1
  %cmp985 = icmp eq i8 %139, -65
  br i1 %cmp985, label %land.lhs.true987, label %if.end2254

land.lhs.true987:                                 ; preds = %cond.true982
  %arrayidx988 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %140 = load i8, ptr %arrayidx988, align 1
  %cmp990 = icmp eq i8 %140, -59
  br i1 %cmp990, label %land.rhs992, label %if.end2254

land.rhs992:                                      ; preds = %land.lhs.true987
  %arrayidx993 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %141 = load i8, ptr %arrayidx993, align 1
  %cmp995 = icmp eq i8 %141, -65
  br i1 %cmp995, label %if.then2112, label %if.end2254

cond.true1004:                                    ; preds = %cond.true817
  %arrayidx1005 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %142 = load i8, ptr %arrayidx1005, align 1
  %cmp1007 = icmp eq i8 %142, -68
  br i1 %cmp1007, label %land.rhs1009, label %if.end2254

land.rhs1009:                                     ; preds = %cond.true1004
  %arrayidx1010 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %143 = load i8, ptr %arrayidx1010, align 1
  %cmp1012 = icmp eq i8 %143, 110
  br i1 %cmp1012, label %if.then2112, label %if.end2254

cond.true1021:                                    ; preds = %cond.true817
  %arrayidx1022 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %144 = load i8, ptr %arrayidx1022, align 1
  %145 = and i8 %144, -3
  %cmp1025 = icmp eq i8 %145, -84
  br i1 %cmp1025, label %cond.true1027, label %cond.false1039

cond.true1027:                                    ; preds = %cond.true1021
  %arrayidx1028 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %146 = load i8, ptr %arrayidx1028, align 1
  %cmp1030 = icmp eq i8 %146, -50
  br i1 %cmp1030, label %land.rhs1032, label %if.end2254

land.rhs1032:                                     ; preds = %cond.true1027
  %arrayidx1033 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %147 = load i8, ptr %arrayidx1033, align 1
  %cmp1035 = icmp eq i8 %147, -71
  br i1 %cmp1035, label %if.then2112, label %if.end2254

cond.false1039:                                   ; preds = %cond.true1021
  switch i8 %144, label %if.end2254 [
    i8 -79, label %cond.true1049
    i8 -73, label %cond.true1049
    i8 -71, label %land.lhs.true1079
  ]

cond.true1049:                                    ; preds = %cond.false1039, %cond.false1039
  %arrayidx1050 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %148 = load i8, ptr %arrayidx1050, align 1
  switch i8 %148, label %if.end2254 [
    i8 -51, label %cond.true1054
    i8 -50, label %land.rhs1065
  ]

cond.true1054:                                    ; preds = %cond.true1049
  %arrayidx1055 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %149 = load i8, ptr %arrayidx1055, align 1
  %cmp1057 = icmp eq i8 %149, -126
  br i1 %cmp1057, label %if.then2112, label %if.end2254

land.rhs1065:                                     ; preds = %cond.true1049
  %arrayidx1066 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %150 = load i8, ptr %arrayidx1066, align 1
  %cmp1068 = icmp eq i8 %150, -71
  br i1 %cmp1068, label %if.then2112, label %if.end2254

land.lhs.true1079:                                ; preds = %cond.false1039
  %arrayidx1080 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %151 = load i8, ptr %arrayidx1080, align 1
  %cmp1082 = icmp eq i8 %151, -51
  br i1 %cmp1082, label %land.rhs1084, label %if.end2254

land.rhs1084:                                     ; preds = %land.lhs.true1079
  %arrayidx1085 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %152 = load i8, ptr %arrayidx1085, align 1
  %cmp1087 = icmp eq i8 %152, -126
  br i1 %cmp1087, label %if.then2112, label %if.end2254

cond.true1100:                                    ; preds = %cond.true817
  %arrayidx1101 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %153 = load i8, ptr %arrayidx1101, align 1
  switch i8 %153, label %if.end2254 [
    i8 -127, label %cond.true1105
    i8 -123, label %cond.true1122
    i8 -119, label %cond.true1152
    i8 -114, label %land.lhs.true1182
  ]

cond.true1105:                                    ; preds = %cond.true1100
  %arrayidx1106 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %154 = load i8, ptr %arrayidx1106, align 1
  %cmp1108 = icmp eq i8 %154, -52
  br i1 %cmp1108, label %land.rhs1110, label %if.end2254

land.rhs1110:                                     ; preds = %cond.true1105
  %arrayidx1111 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %155 = load i8, ptr %arrayidx1111, align 1
  %cmp1113 = icmp eq i8 %155, -109
  br i1 %cmp1113, label %if.then2112, label %if.end2254

cond.true1122:                                    ; preds = %cond.true1100
  %arrayidx1123 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %156 = load i8, ptr %arrayidx1123, align 1
  switch i8 %156, label %if.end2254 [
    i8 -52, label %cond.true1127
    i8 -51, label %land.rhs1138
  ]

cond.true1127:                                    ; preds = %cond.true1122
  %arrayidx1128 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %157 = load i8, ptr %arrayidx1128, align 1
  %cmp1130 = icmp eq i8 %157, -109
  br i1 %cmp1130, label %if.then2112, label %if.end2254

land.rhs1138:                                     ; preds = %cond.true1122
  %arrayidx1139 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %158 = load i8, ptr %arrayidx1139, align 1
  %cmp1141 = icmp eq i8 %158, -126
  br i1 %cmp1141, label %if.then2112, label %if.end2254

cond.true1152:                                    ; preds = %cond.true1100
  %arrayidx1153 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %159 = load i8, ptr %arrayidx1153, align 1
  switch i8 %159, label %if.end2254 [
    i8 -51, label %cond.true1157
    i8 -50, label %land.rhs1168
  ]

cond.true1157:                                    ; preds = %cond.true1152
  %arrayidx1158 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %160 = load i8, ptr %arrayidx1158, align 1
  %cmp1160 = icmp eq i8 %160, -126
  br i1 %cmp1160, label %if.then2112, label %if.end2254

land.rhs1168:                                     ; preds = %cond.true1152
  %arrayidx1169 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %161 = load i8, ptr %arrayidx1169, align 1
  %cmp1171 = icmp eq i8 %161, -71
  br i1 %cmp1171, label %if.then2112, label %if.end2254

land.lhs.true1182:                                ; preds = %cond.true1100
  %arrayidx1183 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %162 = load i8, ptr %arrayidx1183, align 1
  %cmp1185 = icmp eq i8 %162, -50
  br i1 %cmp1185, label %land.rhs1187, label %if.end2254

land.rhs1187:                                     ; preds = %land.lhs.true1182
  %arrayidx1188 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %163 = load i8, ptr %arrayidx1188, align 1
  %cmp1190 = icmp eq i8 %163, -71
  br i1 %cmp1190, label %if.then2112, label %if.end2254

cond.true1205:                                    ; preds = %cond.true817
  %arrayidx1206 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %164 = load i8, ptr %arrayidx1206, align 1
  switch i8 %164, label %if.end2254 [
    i8 -91, label %cond.true1210
    i8 -76, label %cond.true1227
    i8 -66, label %land.lhs.true1256
  ]

cond.true1210:                                    ; preds = %cond.true1205
  %arrayidx1211 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %165 = load i8, ptr %arrayidx1211, align 1
  %cmp1213 = icmp eq i8 %165, -42
  br i1 %cmp1213, label %land.rhs1215, label %if.end2254

land.rhs1215:                                     ; preds = %cond.true1210
  %arrayidx1216 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %166 = load i8, ptr %arrayidx1216, align 1
  %cmp1218 = icmp eq i8 %166, -126
  br i1 %cmp1218, label %if.then2112, label %if.end2254

cond.true1227:                                    ; preds = %cond.true1205
  %arrayidx1228 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %167 = load i8, ptr %arrayidx1228, align 1
  %cmp1230 = icmp eq i8 %167, -43
  br i1 %cmp1230, label %land.rhs1232, label %if.end2254

land.rhs1232:                                     ; preds = %cond.true1227
  %arrayidx1233 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %168 = load i8, ptr %arrayidx1233, align 1
  switch i8 %168, label %if.end2254 [
    i8 -83, label %if.then2112
    i8 -85, label %if.then2112
    i8 -91, label %if.then2112
    i8 -74, label %if.then2112
  ]

land.lhs.true1256:                                ; preds = %cond.true1205
  %arrayidx1257 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %169 = load i8, ptr %arrayidx1257, align 1
  %cmp1259 = icmp eq i8 %169, -43
  br i1 %cmp1259, label %land.rhs1261, label %if.end2254

land.rhs1261:                                     ; preds = %land.lhs.true1256
  %arrayidx1262 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %170 = load i8, ptr %arrayidx1262, align 1
  %cmp1264 = icmp eq i8 %170, -74
  br i1 %cmp1264, label %if.then2112, label %if.end2254

cond.true1277:                                    ; preds = %cond.true817
  %arrayidx1278 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %171 = load i8, ptr %arrayidx1278, align 1
  switch i8 %171, label %if.end2254 [
    i8 -68, label %cond.true1282
    i8 -67, label %land.lhs.true1305
  ]

cond.true1282:                                    ; preds = %cond.true1277
  %arrayidx1283 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %172 = load i8, ptr %arrayidx1283, align 1
  %173 = and i8 %172, -40
  %cmp1286 = icmp eq i8 %173, -128
  br i1 %cmp1286, label %land.lhs.true1288, label %if.end2254

land.lhs.true1288:                                ; preds = %cond.true1282
  %arrayidx1289 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %174 = load i8, ptr %arrayidx1289, align 1
  %cmp1291 = icmp eq i8 %174, -50
  br i1 %cmp1291, label %land.rhs1293, label %if.end2254

land.rhs1293:                                     ; preds = %land.lhs.true1288
  %arrayidx1294 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 4
  %175 = load i8, ptr %arrayidx1294, align 1
  %cmp1296 = icmp eq i8 %175, -71
  br i1 %cmp1296, label %if.then2112, label %if.end2254

land.lhs.true1305:                                ; preds = %cond.true1277
  %arrayidx1306 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %176 = load i8, ptr %arrayidx1306, align 1
  %conv1307 = zext i8 %176 to i32
  %and1308 = and i32 %conv1307, 248
  %cmp1309 = icmp eq i32 %and1308, 160
  %and1314 = and i32 %conv1307, 251
  %cmp1315 = icmp eq i32 %and1314, 176
  %or.cond4996 = or i1 %cmp1309, %cmp1315
  %cmp1320 = icmp eq i8 %176, -68
  %or.cond4997 = or i1 %cmp1320, %or.cond4996
  br i1 %or.cond4997, label %land.lhs.true1322, label %if.end2254

land.lhs.true1322:                                ; preds = %land.lhs.true1305
  %arrayidx1323 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %177 = load i8, ptr %arrayidx1323, align 1
  %cmp1325 = icmp eq i8 %177, -50
  br i1 %cmp1325, label %land.rhs1327, label %if.end2254

land.rhs1327:                                     ; preds = %land.lhs.true1322
  %arrayidx1328 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 4
  %178 = load i8, ptr %arrayidx1328, align 1
  %cmp1330 = icmp eq i8 %178, -71
  br i1 %cmp1330, label %if.then2112, label %if.end2254

cond.false1365:                                   ; preds = %cond.false811
  %cmp1369 = icmp sgt i64 %sub.ptr.sub, 3
  br i1 %cmp1369, label %cond.true1371, label %cond.false1853

cond.true1371:                                    ; preds = %cond.false1365
  %179 = load i8, ptr %uc.25397, align 1
  switch i8 %179, label %if.end2254 [
    i8 97, label %cond.true1376
    i8 102, label %cond.true1393
    i8 104, label %cond.true1429
    i8 105, label %cond.true1446
    i8 106, label %cond.true1463
    i8 115, label %cond.true1480
    i8 116, label %cond.true1497
    i8 119, label %cond.true1519
    i8 121, label %cond.true1519
    i8 -59, label %cond.true1536
    i8 -54, label %cond.true1558
    i8 -50, label %cond.true1575
    i8 -49, label %cond.true1654
    i8 -43, label %cond.true1759
  ]

cond.true1376:                                    ; preds = %cond.true1371
  %arrayidx1377 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %180 = load i8, ptr %arrayidx1377, align 1
  %cmp1379 = icmp eq i8 %180, -54
  br i1 %cmp1379, label %land.rhs1381, label %if.end2254

land.rhs1381:                                     ; preds = %cond.true1376
  %arrayidx1382 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %181 = load i8, ptr %arrayidx1382, align 1
  %cmp1384 = icmp eq i8 %181, -66
  br i1 %cmp1384, label %if.then2112, label %if.end2254

cond.true1393:                                    ; preds = %cond.true1371
  %arrayidx1394 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %182 = load i8, ptr %arrayidx1394, align 1
  switch i8 %182, label %if.end2254 [
    i8 102, label %cond.true1398
    i8 105, label %if.then2112
    i8 108, label %if.then2112
  ]

cond.true1398:                                    ; preds = %cond.true1393
  %arrayidx1399 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %183 = load i8, ptr %arrayidx1399, align 1
  %cmp1401 = icmp eq i8 %183, 105
  %cmp1406 = icmp eq i8 %183, 108
  %184 = or i1 %cmp1401, %cmp1406
  %cond1409 = select i1 %184, i32 3, i32 2
  br label %if.then2112

cond.true1429:                                    ; preds = %cond.true1371
  %arrayidx1430 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %185 = load i8, ptr %arrayidx1430, align 1
  %cmp1432 = icmp eq i8 %185, -52
  br i1 %cmp1432, label %land.rhs1434, label %if.end2254

land.rhs1434:                                     ; preds = %cond.true1429
  %arrayidx1435 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %186 = load i8, ptr %arrayidx1435, align 1
  %cmp1437 = icmp eq i8 %186, -79
  br i1 %cmp1437, label %if.then2112, label %if.end2254

cond.true1446:                                    ; preds = %cond.true1371
  %arrayidx1447 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %187 = load i8, ptr %arrayidx1447, align 1
  %cmp1449 = icmp eq i8 %187, -52
  br i1 %cmp1449, label %land.rhs1451, label %if.end2254

land.rhs1451:                                     ; preds = %cond.true1446
  %arrayidx1452 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %188 = load i8, ptr %arrayidx1452, align 1
  %cmp1454 = icmp eq i8 %188, -121
  br i1 %cmp1454, label %if.then2112, label %if.end2254

cond.true1463:                                    ; preds = %cond.true1371
  %arrayidx1464 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %189 = load i8, ptr %arrayidx1464, align 1
  %cmp1466 = icmp eq i8 %189, -52
  br i1 %cmp1466, label %land.rhs1468, label %if.end2254

land.rhs1468:                                     ; preds = %cond.true1463
  %arrayidx1469 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %190 = load i8, ptr %arrayidx1469, align 1
  %cmp1471 = icmp eq i8 %190, -116
  br i1 %cmp1471, label %if.then2112, label %if.end2254

cond.true1480:                                    ; preds = %cond.true1371
  %arrayidx1481 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %191 = load i8, ptr %arrayidx1481, align 1
  %cmp1483 = icmp eq i8 %191, 115
  %cmp1488 = icmp eq i8 %191, 116
  %192 = select i1 %cmp1488, i32 2, i32 0
  br i1 %cmp1483, label %if.then2112, label %cond.end2109

cond.true1497:                                    ; preds = %cond.true1371
  %arrayidx1498 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %193 = load i8, ptr %arrayidx1498, align 1
  %cmp1500 = icmp eq i8 %193, -52
  br i1 %cmp1500, label %land.rhs1502, label %if.end2254

land.rhs1502:                                     ; preds = %cond.true1497
  %arrayidx1503 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %194 = load i8, ptr %arrayidx1503, align 1
  %cmp1505 = icmp eq i8 %194, -120
  br i1 %cmp1505, label %if.then2112, label %if.end2254

cond.true1519:                                    ; preds = %cond.true1371, %cond.true1371
  %arrayidx1520 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %195 = load i8, ptr %arrayidx1520, align 1
  %cmp1522 = icmp eq i8 %195, -52
  br i1 %cmp1522, label %land.rhs1524, label %if.end2254

land.rhs1524:                                     ; preds = %cond.true1519
  %arrayidx1525 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %196 = load i8, ptr %arrayidx1525, align 1
  %cmp1527 = icmp eq i8 %196, -118
  br i1 %cmp1527, label %if.then2112, label %if.end2254

cond.true1536:                                    ; preds = %cond.true1371
  %arrayidx1537 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %197 = load i8, ptr %arrayidx1537, align 1
  %cmp1539 = icmp eq i8 %197, -65
  br i1 %cmp1539, label %land.lhs.true1541, label %if.end2254

land.lhs.true1541:                                ; preds = %cond.true1536
  %arrayidx1542 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %198 = load i8, ptr %arrayidx1542, align 1
  %cmp1544 = icmp eq i8 %198, -59
  br i1 %cmp1544, label %land.rhs1546, label %if.end2254

land.rhs1546:                                     ; preds = %land.lhs.true1541
  %arrayidx1547 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %199 = load i8, ptr %arrayidx1547, align 1
  %cmp1549 = icmp eq i8 %199, -65
  br i1 %cmp1549, label %if.then2112, label %if.end2254

cond.true1558:                                    ; preds = %cond.true1371
  %arrayidx1559 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %200 = load i8, ptr %arrayidx1559, align 1
  %cmp1561 = icmp eq i8 %200, -68
  br i1 %cmp1561, label %land.rhs1563, label %if.end2254

land.rhs1563:                                     ; preds = %cond.true1558
  %arrayidx1564 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %201 = load i8, ptr %arrayidx1564, align 1
  %cmp1566 = icmp eq i8 %201, 110
  br i1 %cmp1566, label %if.then2112, label %if.end2254

cond.true1575:                                    ; preds = %cond.true1371
  %arrayidx1576 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %202 = load i8, ptr %arrayidx1576, align 1
  %203 = and i8 %202, -3
  %cmp1579 = icmp eq i8 %203, -84
  br i1 %cmp1579, label %cond.true1581, label %cond.false1593

cond.true1581:                                    ; preds = %cond.true1575
  %arrayidx1582 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %204 = load i8, ptr %arrayidx1582, align 1
  %cmp1584 = icmp eq i8 %204, -50
  br i1 %cmp1584, label %land.rhs1586, label %if.end2254

land.rhs1586:                                     ; preds = %cond.true1581
  %arrayidx1587 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %205 = load i8, ptr %arrayidx1587, align 1
  %cmp1589 = icmp eq i8 %205, -71
  br i1 %cmp1589, label %if.then2112, label %if.end2254

cond.false1593:                                   ; preds = %cond.true1575
  switch i8 %202, label %if.end2254 [
    i8 -79, label %cond.true1603
    i8 -73, label %cond.true1603
    i8 -71, label %land.lhs.true1633
  ]

cond.true1603:                                    ; preds = %cond.false1593, %cond.false1593
  %arrayidx1604 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %206 = load i8, ptr %arrayidx1604, align 1
  switch i8 %206, label %if.end2254 [
    i8 -51, label %cond.true1608
    i8 -50, label %land.rhs1619
  ]

cond.true1608:                                    ; preds = %cond.true1603
  %arrayidx1609 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %207 = load i8, ptr %arrayidx1609, align 1
  %cmp1611 = icmp eq i8 %207, -126
  br i1 %cmp1611, label %if.then2112, label %if.end2254

land.rhs1619:                                     ; preds = %cond.true1603
  %arrayidx1620 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %208 = load i8, ptr %arrayidx1620, align 1
  %cmp1622 = icmp eq i8 %208, -71
  br i1 %cmp1622, label %if.then2112, label %if.end2254

land.lhs.true1633:                                ; preds = %cond.false1593
  %arrayidx1634 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %209 = load i8, ptr %arrayidx1634, align 1
  %cmp1636 = icmp eq i8 %209, -51
  br i1 %cmp1636, label %land.rhs1638, label %if.end2254

land.rhs1638:                                     ; preds = %land.lhs.true1633
  %arrayidx1639 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %210 = load i8, ptr %arrayidx1639, align 1
  %cmp1641 = icmp eq i8 %210, -126
  br i1 %cmp1641, label %if.then2112, label %if.end2254

cond.true1654:                                    ; preds = %cond.true1371
  %arrayidx1655 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %211 = load i8, ptr %arrayidx1655, align 1
  switch i8 %211, label %if.end2254 [
    i8 -127, label %cond.true1659
    i8 -123, label %cond.true1676
    i8 -119, label %cond.true1706
    i8 -114, label %land.lhs.true1736
  ]

cond.true1659:                                    ; preds = %cond.true1654
  %arrayidx1660 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %212 = load i8, ptr %arrayidx1660, align 1
  %cmp1662 = icmp eq i8 %212, -52
  br i1 %cmp1662, label %land.rhs1664, label %if.end2254

land.rhs1664:                                     ; preds = %cond.true1659
  %arrayidx1665 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %213 = load i8, ptr %arrayidx1665, align 1
  %cmp1667 = icmp eq i8 %213, -109
  br i1 %cmp1667, label %if.then2112, label %if.end2254

cond.true1676:                                    ; preds = %cond.true1654
  %arrayidx1677 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %214 = load i8, ptr %arrayidx1677, align 1
  switch i8 %214, label %if.end2254 [
    i8 -52, label %cond.true1681
    i8 -51, label %land.rhs1692
  ]

cond.true1681:                                    ; preds = %cond.true1676
  %arrayidx1682 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %215 = load i8, ptr %arrayidx1682, align 1
  %cmp1684 = icmp eq i8 %215, -109
  br i1 %cmp1684, label %if.then2112, label %if.end2254

land.rhs1692:                                     ; preds = %cond.true1676
  %arrayidx1693 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %216 = load i8, ptr %arrayidx1693, align 1
  %cmp1695 = icmp eq i8 %216, -126
  br i1 %cmp1695, label %if.then2112, label %if.end2254

cond.true1706:                                    ; preds = %cond.true1654
  %arrayidx1707 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %217 = load i8, ptr %arrayidx1707, align 1
  switch i8 %217, label %if.end2254 [
    i8 -51, label %cond.true1711
    i8 -50, label %land.rhs1722
  ]

cond.true1711:                                    ; preds = %cond.true1706
  %arrayidx1712 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %218 = load i8, ptr %arrayidx1712, align 1
  %cmp1714 = icmp eq i8 %218, -126
  br i1 %cmp1714, label %if.then2112, label %if.end2254

land.rhs1722:                                     ; preds = %cond.true1706
  %arrayidx1723 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %219 = load i8, ptr %arrayidx1723, align 1
  %cmp1725 = icmp eq i8 %219, -71
  br i1 %cmp1725, label %if.then2112, label %if.end2254

land.lhs.true1736:                                ; preds = %cond.true1654
  %arrayidx1737 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %220 = load i8, ptr %arrayidx1737, align 1
  %cmp1739 = icmp eq i8 %220, -50
  br i1 %cmp1739, label %land.rhs1741, label %if.end2254

land.rhs1741:                                     ; preds = %land.lhs.true1736
  %arrayidx1742 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %221 = load i8, ptr %arrayidx1742, align 1
  %cmp1744 = icmp eq i8 %221, -71
  br i1 %cmp1744, label %if.then2112, label %if.end2254

cond.true1759:                                    ; preds = %cond.true1371
  %arrayidx1760 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %222 = load i8, ptr %arrayidx1760, align 1
  switch i8 %222, label %if.end2254 [
    i8 -91, label %cond.true1764
    i8 -76, label %cond.true1781
    i8 -66, label %land.lhs.true1810
  ]

cond.true1764:                                    ; preds = %cond.true1759
  %arrayidx1765 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %223 = load i8, ptr %arrayidx1765, align 1
  %cmp1767 = icmp eq i8 %223, -42
  br i1 %cmp1767, label %land.rhs1769, label %if.end2254

land.rhs1769:                                     ; preds = %cond.true1764
  %arrayidx1770 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %224 = load i8, ptr %arrayidx1770, align 1
  %cmp1772 = icmp eq i8 %224, -126
  br i1 %cmp1772, label %if.then2112, label %if.end2254

cond.true1781:                                    ; preds = %cond.true1759
  %arrayidx1782 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %225 = load i8, ptr %arrayidx1782, align 1
  %cmp1784 = icmp eq i8 %225, -43
  br i1 %cmp1784, label %land.rhs1786, label %if.end2254

land.rhs1786:                                     ; preds = %cond.true1781
  %arrayidx1787 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %226 = load i8, ptr %arrayidx1787, align 1
  switch i8 %226, label %if.end2254 [
    i8 -83, label %if.then2112
    i8 -85, label %if.then2112
    i8 -91, label %if.then2112
    i8 -74, label %if.then2112
  ]

land.lhs.true1810:                                ; preds = %cond.true1759
  %arrayidx1811 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %227 = load i8, ptr %arrayidx1811, align 1
  %cmp1813 = icmp eq i8 %227, -43
  br i1 %cmp1813, label %land.rhs1815, label %if.end2254

land.rhs1815:                                     ; preds = %land.lhs.true1810
  %arrayidx1816 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 3
  %228 = load i8, ptr %arrayidx1816, align 1
  %cmp1818 = icmp eq i8 %228, -74
  br i1 %cmp1818, label %if.then2112, label %if.end2254

cond.false1853:                                   ; preds = %cond.false1365
  %cmp1857 = icmp eq i64 %sub.ptr.sub, 3
  br i1 %cmp1857, label %cond.true1859, label %cond.false2052

cond.true1859:                                    ; preds = %cond.false1853
  %229 = load i8, ptr %uc.25397, align 1
  switch i8 %229, label %if.end2254 [
    i8 97, label %cond.true1864
    i8 102, label %cond.true1881
    i8 104, label %cond.true1917
    i8 105, label %cond.true1934
    i8 106, label %cond.true1951
    i8 115, label %cond.true1968
    i8 116, label %cond.true1985
    i8 119, label %cond.true2007
    i8 121, label %cond.true2007
    i8 -54, label %land.lhs.true2024
  ]

cond.true1864:                                    ; preds = %cond.true1859
  %arrayidx1865 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %230 = load i8, ptr %arrayidx1865, align 1
  %cmp1867 = icmp eq i8 %230, -54
  br i1 %cmp1867, label %land.rhs1869, label %if.end2254

land.rhs1869:                                     ; preds = %cond.true1864
  %arrayidx1870 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %231 = load i8, ptr %arrayidx1870, align 1
  %cmp1872 = icmp eq i8 %231, -66
  br i1 %cmp1872, label %if.then2112, label %if.end2254

cond.true1881:                                    ; preds = %cond.true1859
  %arrayidx1882 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %232 = load i8, ptr %arrayidx1882, align 1
  switch i8 %232, label %if.end2254 [
    i8 102, label %cond.true1886
    i8 105, label %if.then2112
    i8 108, label %if.then2112
  ]

cond.true1886:                                    ; preds = %cond.true1881
  %arrayidx1887 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %233 = load i8, ptr %arrayidx1887, align 1
  %cmp1889 = icmp eq i8 %233, 105
  %cmp1894 = icmp eq i8 %233, 108
  %234 = or i1 %cmp1889, %cmp1894
  %cond1897 = select i1 %234, i32 3, i32 2
  br label %if.then2112

cond.true1917:                                    ; preds = %cond.true1859
  %arrayidx1918 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %235 = load i8, ptr %arrayidx1918, align 1
  %cmp1920 = icmp eq i8 %235, -52
  br i1 %cmp1920, label %land.rhs1922, label %if.end2254

land.rhs1922:                                     ; preds = %cond.true1917
  %arrayidx1923 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %236 = load i8, ptr %arrayidx1923, align 1
  %cmp1925 = icmp eq i8 %236, -79
  br i1 %cmp1925, label %if.then2112, label %if.end2254

cond.true1934:                                    ; preds = %cond.true1859
  %arrayidx1935 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %237 = load i8, ptr %arrayidx1935, align 1
  %cmp1937 = icmp eq i8 %237, -52
  br i1 %cmp1937, label %land.rhs1939, label %if.end2254

land.rhs1939:                                     ; preds = %cond.true1934
  %arrayidx1940 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %238 = load i8, ptr %arrayidx1940, align 1
  %cmp1942 = icmp eq i8 %238, -121
  br i1 %cmp1942, label %if.then2112, label %if.end2254

cond.true1951:                                    ; preds = %cond.true1859
  %arrayidx1952 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %239 = load i8, ptr %arrayidx1952, align 1
  %cmp1954 = icmp eq i8 %239, -52
  br i1 %cmp1954, label %land.rhs1956, label %if.end2254

land.rhs1956:                                     ; preds = %cond.true1951
  %arrayidx1957 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %240 = load i8, ptr %arrayidx1957, align 1
  %cmp1959 = icmp eq i8 %240, -116
  br i1 %cmp1959, label %if.then2112, label %if.end2254

cond.true1968:                                    ; preds = %cond.true1859
  %arrayidx1969 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %241 = load i8, ptr %arrayidx1969, align 1
  %cmp1971 = icmp eq i8 %241, 115
  %cmp1976 = icmp eq i8 %241, 116
  %242 = select i1 %cmp1976, i32 2, i32 0
  br i1 %cmp1971, label %if.then2112, label %cond.end2109

cond.true1985:                                    ; preds = %cond.true1859
  %arrayidx1986 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %243 = load i8, ptr %arrayidx1986, align 1
  %cmp1988 = icmp eq i8 %243, -52
  br i1 %cmp1988, label %land.rhs1990, label %if.end2254

land.rhs1990:                                     ; preds = %cond.true1985
  %arrayidx1991 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %244 = load i8, ptr %arrayidx1991, align 1
  %cmp1993 = icmp eq i8 %244, -120
  br i1 %cmp1993, label %if.then2112, label %if.end2254

cond.true2007:                                    ; preds = %cond.true1859, %cond.true1859
  %arrayidx2008 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %245 = load i8, ptr %arrayidx2008, align 1
  %cmp2010 = icmp eq i8 %245, -52
  br i1 %cmp2010, label %land.rhs2012, label %if.end2254

land.rhs2012:                                     ; preds = %cond.true2007
  %arrayidx2013 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %246 = load i8, ptr %arrayidx2013, align 1
  %cmp2015 = icmp eq i8 %246, -118
  br i1 %cmp2015, label %if.then2112, label %if.end2254

land.lhs.true2024:                                ; preds = %cond.true1859
  %arrayidx2025 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %247 = load i8, ptr %arrayidx2025, align 1
  %cmp2027 = icmp eq i8 %247, -68
  br i1 %cmp2027, label %land.rhs2029, label %if.end2254

land.rhs2029:                                     ; preds = %land.lhs.true2024
  %arrayidx2030 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %248 = load i8, ptr %arrayidx2030, align 1
  %cmp2032 = icmp eq i8 %248, 110
  br i1 %cmp2032, label %if.then2112, label %if.end2254

cond.false2052:                                   ; preds = %cond.false1853
  %cmp2056 = icmp sgt i64 %sub.ptr.sub, 1
  br i1 %cmp2056, label %cond.true2058, label %if.end2254

cond.true2058:                                    ; preds = %cond.false2052
  %249 = load i8, ptr %uc.25397, align 1
  switch i8 %249, label %if.end2254 [
    i8 102, label %cond.true2063
    i8 115, label %land.rhs2085
  ]

cond.true2063:                                    ; preds = %cond.true2058
  %arrayidx2064 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %250 = load i8, ptr %arrayidx2064, align 1
  switch i8 %250, label %if.end2254 [
    i8 102, label %if.then2112
    i8 105, label %if.then2112
    i8 108, label %if.then2112
  ]

land.rhs2085:                                     ; preds = %cond.true2058
  %arrayidx2086 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %251 = load i8, ptr %arrayidx2086, align 1
  %.off = add i8 %251, -115
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then2112, label %if.end2254

cond.end2109:                                     ; preds = %cond.true1968, %cond.true1480, %cond.true926, %cond.true239
  %cond2110 = phi i32 [ %59, %cond.true239 ], [ %134, %cond.true926 ], [ %192, %cond.true1480 ], [ %242, %cond.true1968 ]
  %tobool2111.not = icmp eq i32 %cond2110, 0
  br i1 %tobool2111.not, label %if.end2254, label %if.then2112

if.then2112:                                      ; preds = %cond.end2109, %land.rhs2085, %cond.true2063, %cond.true2063, %cond.true2063, %land.rhs2029, %land.rhs2012, %land.rhs1990, %cond.true1968, %land.rhs1956, %land.rhs1939, %land.rhs1922, %cond.true1886, %cond.true1881, %cond.true1881, %land.rhs1869, %land.rhs1815, %land.rhs1786, %land.rhs1786, %land.rhs1786, %land.rhs1786, %land.rhs1769, %land.rhs1741, %land.rhs1722, %cond.true1711, %land.rhs1692, %cond.true1681, %land.rhs1664, %land.rhs1638, %land.rhs1619, %cond.true1608, %land.rhs1586, %land.rhs1563, %land.rhs1546, %land.rhs1524, %land.rhs1502, %cond.true1480, %land.rhs1468, %land.rhs1451, %land.rhs1434, %cond.true1398, %cond.true1393, %cond.true1393, %land.rhs1381, %land.rhs1327, %land.rhs1293, %land.rhs1261, %land.rhs1232, %land.rhs1232, %land.rhs1232, %land.rhs1232, %land.rhs1215, %land.rhs1187, %land.rhs1168, %cond.true1157, %land.rhs1138, %cond.true1127, %land.rhs1110, %land.rhs1084, %land.rhs1065, %cond.true1054, %land.rhs1032, %land.rhs1009, %land.rhs992, %land.rhs970, %land.rhs948, %cond.true926, %land.rhs914, %land.rhs897, %land.rhs880, %cond.true844, %cond.true839, %cond.true839, %land.rhs827, %land.rhs773, %land.rhs739, %land.rhs707, %land.rhs678, %land.rhs678, %land.rhs678, %land.rhs678, %land.rhs661, %land.rhs633, %land.rhs614, %land.rhs599, %cond.true594, %land.rhs570, %land.rhs551, %cond.true539, %cond.true534, %land.rhs520, %cond.true508, %land.rhs481, %land.rhs450, %land.rhs433, %cond.true421, %land.rhs392, %land.rhs377, %cond.true372, %land.rhs345, %land.rhs322, %land.rhs305, %land.rhs283, %land.rhs261, %cond.true239, %land.rhs227, %land.rhs210, %land.rhs193, %cond.true159, %cond.true154, %cond.true154, %land.rhs
  %cond21105320 = phi i32 [ %cond2110, %cond.end2109 ], [ 4, %land.rhs1786 ], [ 4, %land.rhs1232 ], [ 4, %land.rhs678 ], [ 2, %cond.true2063 ], [ 2, %cond.true1881 ], [ 4, %land.rhs1786 ], [ 4, %land.rhs1786 ], [ 2, %cond.true1393 ], [ 4, %land.rhs1232 ], [ 4, %land.rhs1232 ], [ 2, %cond.true839 ], [ 4, %land.rhs678 ], [ 4, %land.rhs678 ], [ 2, %cond.true154 ], [ 2, %cond.true2063 ], [ 2, %cond.true2063 ], [ 2, %cond.true1881 ], [ 4, %land.rhs1786 ], [ 2, %cond.true1393 ], [ 4, %land.rhs1232 ], [ 2, %cond.true839 ], [ 4, %land.rhs678 ], [ %102, %land.rhs599 ], [ 4, %cond.true594 ], [ 4, %cond.true534 ], [ %96, %land.rhs551 ], [ %77, %land.rhs377 ], [ 4, %cond.true372 ], [ 2, %cond.true154 ], [ %cond1897, %cond.true1886 ], [ %cond1409, %cond.true1398 ], [ %cond855, %cond.true844 ], [ %cond545, %cond.true539 ], [ %cond168, %cond.true159 ], [ 2, %cond.true239 ], [ 6, %cond.true421 ], [ 6, %cond.true508 ], [ 2, %cond.true926 ], [ 4, %cond.true1054 ], [ 4, %cond.true1127 ], [ 4, %cond.true1157 ], [ 2, %cond.true1480 ], [ 4, %cond.true1608 ], [ 4, %cond.true1681 ], [ 4, %cond.true1711 ], [ 2, %cond.true1968 ], [ 3, %land.rhs ], [ 3, %land.rhs193 ], [ 3, %land.rhs210 ], [ 3, %land.rhs227 ], [ 3, %land.rhs261 ], [ 3, %land.rhs283 ], [ 4, %land.rhs305 ], [ 3, %land.rhs322 ], [ 4, %land.rhs345 ], [ 4, %land.rhs392 ], [ 6, %land.rhs433 ], [ 4, %land.rhs450 ], [ 4, %land.rhs481 ], [ 6, %land.rhs520 ], [ 4, %land.rhs570 ], [ 4, %land.rhs614 ], [ 4, %land.rhs633 ], [ 4, %land.rhs661 ], [ 4, %land.rhs707 ], [ 5, %land.rhs739 ], [ 5, %land.rhs773 ], [ 3, %land.rhs827 ], [ 3, %land.rhs880 ], [ 3, %land.rhs897 ], [ 3, %land.rhs914 ], [ 3, %land.rhs948 ], [ 3, %land.rhs970 ], [ 4, %land.rhs992 ], [ 3, %land.rhs1009 ], [ 4, %land.rhs1032 ], [ 4, %land.rhs1065 ], [ 4, %land.rhs1084 ], [ 4, %land.rhs1110 ], [ 4, %land.rhs1138 ], [ 4, %land.rhs1168 ], [ 4, %land.rhs1187 ], [ 4, %land.rhs1215 ], [ 4, %land.rhs1261 ], [ 5, %land.rhs1293 ], [ 5, %land.rhs1327 ], [ 3, %land.rhs1381 ], [ 3, %land.rhs1434 ], [ 3, %land.rhs1451 ], [ 3, %land.rhs1468 ], [ 3, %land.rhs1502 ], [ 3, %land.rhs1524 ], [ 4, %land.rhs1546 ], [ 3, %land.rhs1563 ], [ 4, %land.rhs1586 ], [ 4, %land.rhs1619 ], [ 4, %land.rhs1638 ], [ 4, %land.rhs1664 ], [ 4, %land.rhs1692 ], [ 4, %land.rhs1722 ], [ 4, %land.rhs1741 ], [ 4, %land.rhs1769 ], [ 4, %land.rhs1815 ], [ 3, %land.rhs1869 ], [ 3, %land.rhs1922 ], [ 3, %land.rhs1939 ], [ 3, %land.rhs1956 ], [ 3, %land.rhs1990 ], [ 3, %land.rhs2012 ], [ 3, %land.rhs2029 ], [ 2, %land.rhs2085 ]
  %252 = load i8, ptr %uc.25397, align 1
  %idxprom2113 = zext i8 %252 to i64
  %arrayidx2114 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom2113
  %253 = load i8, ptr %arrayidx2114, align 1
  %conv2115 = zext i8 %253 to i32
  %sub2116 = sub nsw i32 %cond21105320, %conv2115
  br label %if.end2254

if.else2118:                                      ; preds = %if.else125
  %sub.ptr.rhs.cast2120 = ptrtoint ptr %uc.25397 to i64
  %sub.ptr.sub2121 = sub i64 %sub.ptr.lhs.cast2119, %sub.ptr.rhs.cast2120
  %cmp2122 = icmp sgt i64 %sub.ptr.sub2121, 2
  br i1 %cmp2122, label %cond.true2124, label %cond.false2189

cond.true2124:                                    ; preds = %if.else2118
  %254 = load i8, ptr %uc.25397, align 1
  %255 = and i8 %254, -33
  switch i8 %255, label %if.end2254 [
    i8 70, label %cond.true2130
    i8 83, label %land.rhs2172
  ]

cond.true2130:                                    ; preds = %cond.true2124
  %arrayidx2131 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %256 = load i8, ptr %arrayidx2131, align 1
  %257 = and i8 %256, -33
  switch i8 %257, label %if.end2254 [
    i8 70, label %cond.true2136
    i8 73, label %cond.end2247
    i8 76, label %cond.end2247
  ]

cond.true2136:                                    ; preds = %cond.true2130
  %arrayidx2137 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 2
  %258 = load i8, ptr %arrayidx2137, align 1
  %259 = and i8 %258, -33
  %cmp2140 = icmp eq i8 %259, 73
  %cmp2146 = icmp eq i8 %259, 76
  %260 = or i1 %cmp2140, %cmp2146
  %261 = select i1 %260, i32 2, i32 1
  br label %cond.end2247

land.rhs2172:                                     ; preds = %cond.true2124
  %arrayidx2173 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %262 = load i8, ptr %arrayidx2173, align 1
  %263 = and i8 %262, -33
  %.off5378 = add i8 %263, -83
  %switch5379 = icmp ult i8 %.off5378, 2
  br i1 %switch5379, label %cond.end2247, label %if.end2254

cond.false2189:                                   ; preds = %if.else2118
  %cmp2193 = icmp eq i64 %sub.ptr.sub2121, 2
  br i1 %cmp2193, label %cond.true2195, label %if.end2254

cond.true2195:                                    ; preds = %cond.false2189
  %264 = load i8, ptr %uc.25397, align 1
  %265 = and i8 %264, -33
  switch i8 %265, label %if.end2254 [
    i8 70, label %cond.true2201
    i8 83, label %land.rhs2227
  ]

cond.true2201:                                    ; preds = %cond.true2195
  %arrayidx2202 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %266 = load i8, ptr %arrayidx2202, align 1
  %267 = and i8 %266, -33
  switch i8 %267, label %if.end2254 [
    i8 70, label %cond.end2247
    i8 73, label %cond.end2247
    i8 76, label %cond.end2247
  ]

land.rhs2227:                                     ; preds = %cond.true2195
  %arrayidx2228 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 1
  %268 = load i8, ptr %arrayidx2228, align 1
  %269 = and i8 %268, -33
  %.off5380 = add i8 %269, -83
  %switch5381 = icmp ult i8 %.off5380, 2
  br i1 %switch5381, label %cond.end2247, label %if.end2254

cond.end2247:                                     ; preds = %land.rhs2227, %cond.true2201, %cond.true2201, %cond.true2201, %land.rhs2172, %cond.true2136, %cond.true2130, %cond.true2130
  %cond2248 = phi i32 [ %261, %cond.true2136 ], [ 1, %cond.true2130 ], [ 1, %cond.true2201 ], [ 1, %cond.true2201 ], [ 1, %cond.true2130 ], [ 1, %cond.true2201 ], [ 1, %land.rhs2172 ], [ 1, %land.rhs2227 ]
  br label %if.end2254

if.end2254:                                       ; preds = %cond.end2247, %land.rhs2227, %cond.true2201, %cond.true2195, %cond.false2189, %land.rhs2172, %cond.true2130, %cond.true2124, %if.then2112, %cond.end2109, %land.rhs2085, %cond.true2063, %cond.true2058, %cond.false2052, %land.rhs2029, %land.lhs.true2024, %land.rhs2012, %cond.true2007, %land.rhs1990, %cond.true1985, %land.rhs1956, %cond.true1951, %land.rhs1939, %cond.true1934, %land.rhs1922, %cond.true1917, %cond.true1881, %land.rhs1869, %cond.true1864, %cond.true1859, %land.rhs1815, %land.lhs.true1810, %land.rhs1786, %cond.true1781, %land.rhs1769, %cond.true1764, %cond.true1759, %land.rhs1741, %land.lhs.true1736, %land.rhs1722, %cond.true1711, %cond.true1706, %land.rhs1692, %cond.true1681, %cond.true1676, %land.rhs1664, %cond.true1659, %cond.true1654, %land.rhs1638, %land.lhs.true1633, %land.rhs1619, %cond.true1608, %cond.true1603, %cond.false1593, %land.rhs1586, %cond.true1581, %land.rhs1563, %cond.true1558, %land.rhs1546, %land.lhs.true1541, %cond.true1536, %land.rhs1524, %cond.true1519, %land.rhs1502, %cond.true1497, %land.rhs1468, %cond.true1463, %land.rhs1451, %cond.true1446, %land.rhs1434, %cond.true1429, %cond.true1393, %land.rhs1381, %cond.true1376, %cond.true1371, %land.rhs1327, %land.lhs.true1322, %land.lhs.true1305, %land.rhs1293, %land.lhs.true1288, %cond.true1282, %cond.true1277, %land.rhs1261, %land.lhs.true1256, %land.rhs1232, %cond.true1227, %land.rhs1215, %cond.true1210, %cond.true1205, %land.rhs1187, %land.lhs.true1182, %land.rhs1168, %cond.true1157, %cond.true1152, %land.rhs1138, %cond.true1127, %cond.true1122, %land.rhs1110, %cond.true1105, %cond.true1100, %land.rhs1084, %land.lhs.true1079, %land.rhs1065, %cond.true1054, %cond.true1049, %cond.false1039, %land.rhs1032, %cond.true1027, %land.rhs1009, %cond.true1004, %land.rhs992, %land.lhs.true987, %cond.true982, %land.rhs970, %cond.true965, %land.rhs948, %cond.true943, %land.rhs914, %cond.true909, %land.rhs897, %cond.true892, %land.rhs880, %cond.true875, %cond.true839, %land.rhs827, %cond.true822, %cond.true817, %land.rhs773, %land.lhs.true768, %land.lhs.true751, %land.rhs739, %land.lhs.true734, %cond.true728, %cond.true723, %land.rhs707, %land.lhs.true702, %land.rhs678, %cond.true673, %land.rhs661, %cond.true656, %cond.true651, %land.rhs633, %land.lhs.true628, %land.rhs614, %cond.true589, %cond.true584, %land.rhs570, %land.rhs520, %cond.true508, %cond.true503, %cond.true498, %cond.true493, %land.rhs481, %cond.true476, %cond.true471, %land.rhs450, %land.rhs433, %cond.true421, %cond.true416, %cond.true411, %cond.true406, %land.rhs392, %cond.true367, %cond.true362, %cond.false352, %land.rhs345, %cond.true340, %land.rhs322, %cond.true317, %land.rhs305, %land.lhs.true300, %cond.true295, %land.rhs283, %cond.true278, %land.rhs261, %cond.true256, %land.rhs227, %cond.true222, %land.rhs210, %cond.true205, %land.rhs193, %cond.true188, %cond.true154, %land.rhs, %cond.true139, %cond.true134, %cond.end
  %minchars.1 = phi i64 [ %minchars.05395, %cond.end ], [ %inc126, %if.then2112 ], [ %inc126, %cond.end2109 ], [ %inc126, %cond.true2195 ], [ %inc126, %cond.true2124 ], [ %inc126, %cond.false2189 ], [ %inc126, %cond.end2247 ], [ %inc126, %cond.true367 ], [ %inc126, %cond.true421 ], [ %inc126, %cond.true411 ], [ %inc126, %cond.true508 ], [ %inc126, %cond.true589 ], [ %inc126, %cond.true1054 ], [ %inc126, %cond.true1127 ], [ %inc126, %cond.true1157 ], [ %inc126, %cond.true1608 ], [ %inc126, %cond.true1681 ], [ %inc126, %cond.true1711 ], [ %inc126, %cond.false2052 ], [ %inc126, %cond.true139 ], [ %inc126, %land.rhs ], [ %inc126, %cond.true188 ], [ %inc126, %land.rhs193 ], [ %inc126, %cond.true205 ], [ %inc126, %land.rhs210 ], [ %inc126, %cond.true222 ], [ %inc126, %land.rhs227 ], [ %inc126, %cond.true256 ], [ %inc126, %land.rhs261 ], [ %inc126, %cond.true278 ], [ %inc126, %land.rhs283 ], [ %inc126, %land.lhs.true300 ], [ %inc126, %cond.true295 ], [ %inc126, %land.rhs305 ], [ %inc126, %cond.true317 ], [ %inc126, %land.rhs322 ], [ %inc126, %cond.true340 ], [ %inc126, %land.rhs345 ], [ %inc126, %land.rhs392 ], [ %inc126, %cond.true362 ], [ %inc126, %cond.false352 ], [ %inc126, %land.rhs433 ], [ %inc126, %cond.true416 ], [ %inc126, %land.rhs450 ], [ %inc126, %cond.true406 ], [ %inc126, %cond.true476 ], [ %inc126, %land.rhs481 ], [ %inc126, %land.rhs520 ], [ %inc126, %cond.true503 ], [ %inc126, %cond.true498 ], [ %inc126, %land.rhs570 ], [ %inc126, %cond.true493 ], [ %inc126, %land.rhs614 ], [ %inc126, %cond.true584 ], [ %inc126, %land.lhs.true628 ], [ %inc126, %land.rhs633 ], [ %inc126, %cond.true471 ], [ %inc126, %cond.true656 ], [ %inc126, %land.rhs661 ], [ %inc126, %cond.true673 ], [ %inc126, %land.lhs.true702 ], [ %inc126, %land.rhs707 ], [ %inc126, %cond.true651 ], [ %inc126, %cond.true134 ], [ %inc126, %land.lhs.true734 ], [ %inc126, %cond.true728 ], [ %inc126, %land.rhs739 ], [ %inc126, %land.lhs.true768 ], [ %inc126, %land.rhs773 ], [ %inc126, %cond.true723 ], [ %inc126, %land.lhs.true751 ], [ %inc126, %cond.true822 ], [ %inc126, %land.rhs827 ], [ %inc126, %cond.true875 ], [ %inc126, %land.rhs880 ], [ %inc126, %cond.true892 ], [ %inc126, %land.rhs897 ], [ %inc126, %cond.true909 ], [ %inc126, %land.rhs914 ], [ %inc126, %cond.true943 ], [ %inc126, %land.rhs948 ], [ %inc126, %cond.true965 ], [ %inc126, %land.rhs970 ], [ %inc126, %land.lhs.true987 ], [ %inc126, %cond.true982 ], [ %inc126, %land.rhs992 ], [ %inc126, %cond.true1004 ], [ %inc126, %land.rhs1009 ], [ %inc126, %cond.true1027 ], [ %inc126, %land.rhs1032 ], [ %inc126, %land.rhs1065 ], [ %inc126, %cond.true1049 ], [ %inc126, %land.lhs.true1079 ], [ %inc126, %land.rhs1084 ], [ %inc126, %cond.false1039 ], [ %inc126, %cond.true1105 ], [ %inc126, %land.rhs1110 ], [ %inc126, %land.rhs1138 ], [ %inc126, %cond.true1122 ], [ %inc126, %land.rhs1168 ], [ %inc126, %cond.true1152 ], [ %inc126, %land.lhs.true1182 ], [ %inc126, %land.rhs1187 ], [ %inc126, %cond.true1100 ], [ %inc126, %cond.true1210 ], [ %inc126, %land.rhs1215 ], [ %inc126, %cond.true1227 ], [ %inc126, %land.lhs.true1256 ], [ %inc126, %land.rhs1261 ], [ %inc126, %cond.true1205 ], [ %inc126, %cond.true817 ], [ %inc126, %land.lhs.true1288 ], [ %inc126, %cond.true1282 ], [ %inc126, %land.rhs1293 ], [ %inc126, %land.lhs.true1322 ], [ %inc126, %land.rhs1327 ], [ %inc126, %cond.true1277 ], [ %inc126, %land.lhs.true1305 ], [ %inc126, %cond.true1376 ], [ %inc126, %land.rhs1381 ], [ %inc126, %cond.true1429 ], [ %inc126, %land.rhs1434 ], [ %inc126, %cond.true1446 ], [ %inc126, %land.rhs1451 ], [ %inc126, %cond.true1463 ], [ %inc126, %land.rhs1468 ], [ %inc126, %cond.true1497 ], [ %inc126, %land.rhs1502 ], [ %inc126, %cond.true1519 ], [ %inc126, %land.rhs1524 ], [ %inc126, %land.lhs.true1541 ], [ %inc126, %cond.true1536 ], [ %inc126, %land.rhs1546 ], [ %inc126, %cond.true1558 ], [ %inc126, %land.rhs1563 ], [ %inc126, %cond.true1581 ], [ %inc126, %land.rhs1586 ], [ %inc126, %land.rhs1619 ], [ %inc126, %cond.true1603 ], [ %inc126, %land.lhs.true1633 ], [ %inc126, %land.rhs1638 ], [ %inc126, %cond.false1593 ], [ %inc126, %cond.true1659 ], [ %inc126, %land.rhs1664 ], [ %inc126, %land.rhs1692 ], [ %inc126, %cond.true1676 ], [ %inc126, %land.rhs1722 ], [ %inc126, %cond.true1706 ], [ %inc126, %land.lhs.true1736 ], [ %inc126, %land.rhs1741 ], [ %inc126, %cond.true1654 ], [ %inc126, %cond.true1371 ], [ %inc126, %cond.true1764 ], [ %inc126, %land.rhs1769 ], [ %inc126, %cond.true1781 ], [ %inc126, %land.lhs.true1810 ], [ %inc126, %land.rhs1815 ], [ %inc126, %cond.true1759 ], [ %inc126, %cond.true1864 ], [ %inc126, %land.rhs1869 ], [ %inc126, %cond.true1917 ], [ %inc126, %land.rhs1922 ], [ %inc126, %cond.true1934 ], [ %inc126, %land.rhs1939 ], [ %inc126, %cond.true1951 ], [ %inc126, %land.rhs1956 ], [ %inc126, %cond.true1985 ], [ %inc126, %land.rhs1990 ], [ %inc126, %cond.true2007 ], [ %inc126, %land.rhs2012 ], [ %inc126, %land.lhs.true2024 ], [ %inc126, %land.rhs2029 ], [ %inc126, %cond.true1859 ], [ %inc126, %cond.true2058 ], [ %inc126, %cond.true154 ], [ %inc126, %land.rhs678 ], [ %inc126, %cond.true839 ], [ %inc126, %land.rhs1232 ], [ %inc126, %cond.true1393 ], [ %inc126, %land.rhs1786 ], [ %inc126, %cond.true1881 ], [ %inc126, %cond.true2063 ], [ %inc126, %cond.true2130 ], [ %inc126, %cond.true2201 ], [ %inc126, %land.rhs2085 ], [ %inc126, %land.rhs2172 ], [ %inc126, %land.rhs2227 ]
  %foldlen.1 = phi i32 [ %sub, %cond.end ], [ %sub2116, %if.then2112 ], [ 0, %cond.end2109 ], [ 0, %cond.true2195 ], [ 0, %cond.true2124 ], [ 0, %cond.false2189 ], [ %cond2248, %cond.end2247 ], [ 0, %cond.true367 ], [ 0, %cond.true421 ], [ 0, %cond.true411 ], [ 0, %cond.true508 ], [ 0, %cond.true589 ], [ 0, %cond.true1054 ], [ 0, %cond.true1127 ], [ 0, %cond.true1157 ], [ 0, %cond.true1608 ], [ 0, %cond.true1681 ], [ 0, %cond.true1711 ], [ 0, %cond.false2052 ], [ 0, %cond.true139 ], [ 0, %land.rhs ], [ 0, %cond.true188 ], [ 0, %land.rhs193 ], [ 0, %cond.true205 ], [ 0, %land.rhs210 ], [ 0, %cond.true222 ], [ 0, %land.rhs227 ], [ 0, %cond.true256 ], [ 0, %land.rhs261 ], [ 0, %cond.true278 ], [ 0, %land.rhs283 ], [ 0, %land.lhs.true300 ], [ 0, %cond.true295 ], [ 0, %land.rhs305 ], [ 0, %cond.true317 ], [ 0, %land.rhs322 ], [ 0, %cond.true340 ], [ 0, %land.rhs345 ], [ 0, %land.rhs392 ], [ 0, %cond.true362 ], [ 0, %cond.false352 ], [ 0, %land.rhs433 ], [ 0, %cond.true416 ], [ 0, %land.rhs450 ], [ 0, %cond.true406 ], [ 0, %cond.true476 ], [ 0, %land.rhs481 ], [ 0, %land.rhs520 ], [ 0, %cond.true503 ], [ 0, %cond.true498 ], [ 0, %land.rhs570 ], [ 0, %cond.true493 ], [ 0, %land.rhs614 ], [ 0, %cond.true584 ], [ 0, %land.lhs.true628 ], [ 0, %land.rhs633 ], [ 0, %cond.true471 ], [ 0, %cond.true656 ], [ 0, %land.rhs661 ], [ 0, %cond.true673 ], [ 0, %land.lhs.true702 ], [ 0, %land.rhs707 ], [ 0, %cond.true651 ], [ 0, %cond.true134 ], [ 0, %land.lhs.true734 ], [ 0, %cond.true728 ], [ 0, %land.rhs739 ], [ 0, %land.lhs.true768 ], [ 0, %land.rhs773 ], [ 0, %cond.true723 ], [ 0, %land.lhs.true751 ], [ 0, %cond.true822 ], [ 0, %land.rhs827 ], [ 0, %cond.true875 ], [ 0, %land.rhs880 ], [ 0, %cond.true892 ], [ 0, %land.rhs897 ], [ 0, %cond.true909 ], [ 0, %land.rhs914 ], [ 0, %cond.true943 ], [ 0, %land.rhs948 ], [ 0, %cond.true965 ], [ 0, %land.rhs970 ], [ 0, %land.lhs.true987 ], [ 0, %cond.true982 ], [ 0, %land.rhs992 ], [ 0, %cond.true1004 ], [ 0, %land.rhs1009 ], [ 0, %cond.true1027 ], [ 0, %land.rhs1032 ], [ 0, %land.rhs1065 ], [ 0, %cond.true1049 ], [ 0, %land.lhs.true1079 ], [ 0, %land.rhs1084 ], [ 0, %cond.false1039 ], [ 0, %cond.true1105 ], [ 0, %land.rhs1110 ], [ 0, %land.rhs1138 ], [ 0, %cond.true1122 ], [ 0, %land.rhs1168 ], [ 0, %cond.true1152 ], [ 0, %land.lhs.true1182 ], [ 0, %land.rhs1187 ], [ 0, %cond.true1100 ], [ 0, %cond.true1210 ], [ 0, %land.rhs1215 ], [ 0, %cond.true1227 ], [ 0, %land.lhs.true1256 ], [ 0, %land.rhs1261 ], [ 0, %cond.true1205 ], [ 0, %cond.true817 ], [ 0, %land.lhs.true1288 ], [ 0, %cond.true1282 ], [ 0, %land.rhs1293 ], [ 0, %land.lhs.true1322 ], [ 0, %land.rhs1327 ], [ 0, %cond.true1277 ], [ 0, %land.lhs.true1305 ], [ 0, %cond.true1376 ], [ 0, %land.rhs1381 ], [ 0, %cond.true1429 ], [ 0, %land.rhs1434 ], [ 0, %cond.true1446 ], [ 0, %land.rhs1451 ], [ 0, %cond.true1463 ], [ 0, %land.rhs1468 ], [ 0, %cond.true1497 ], [ 0, %land.rhs1502 ], [ 0, %cond.true1519 ], [ 0, %land.rhs1524 ], [ 0, %land.lhs.true1541 ], [ 0, %cond.true1536 ], [ 0, %land.rhs1546 ], [ 0, %cond.true1558 ], [ 0, %land.rhs1563 ], [ 0, %cond.true1581 ], [ 0, %land.rhs1586 ], [ 0, %land.rhs1619 ], [ 0, %cond.true1603 ], [ 0, %land.lhs.true1633 ], [ 0, %land.rhs1638 ], [ 0, %cond.false1593 ], [ 0, %cond.true1659 ], [ 0, %land.rhs1664 ], [ 0, %land.rhs1692 ], [ 0, %cond.true1676 ], [ 0, %land.rhs1722 ], [ 0, %cond.true1706 ], [ 0, %land.lhs.true1736 ], [ 0, %land.rhs1741 ], [ 0, %cond.true1654 ], [ 0, %cond.true1371 ], [ 0, %cond.true1764 ], [ 0, %land.rhs1769 ], [ 0, %cond.true1781 ], [ 0, %land.lhs.true1810 ], [ 0, %land.rhs1815 ], [ 0, %cond.true1759 ], [ 0, %cond.true1864 ], [ 0, %land.rhs1869 ], [ 0, %cond.true1917 ], [ 0, %land.rhs1922 ], [ 0, %cond.true1934 ], [ 0, %land.rhs1939 ], [ 0, %cond.true1951 ], [ 0, %land.rhs1956 ], [ 0, %cond.true1985 ], [ 0, %land.rhs1990 ], [ 0, %cond.true2007 ], [ 0, %land.rhs2012 ], [ 0, %land.lhs.true2024 ], [ 0, %land.rhs2029 ], [ 0, %cond.true1859 ], [ 0, %cond.true2058 ], [ 0, %cond.true154 ], [ 0, %land.rhs678 ], [ 0, %cond.true839 ], [ 0, %land.rhs1232 ], [ 0, %cond.true1393 ], [ 0, %land.rhs1786 ], [ 0, %cond.true1881 ], [ 0, %cond.true2063 ], [ 0, %cond.true2130 ], [ 0, %cond.true2201 ], [ 0, %land.rhs2085 ], [ 0, %land.rhs2172 ], [ 0, %land.rhs2227 ]
  %270 = load i64, ptr %uvc, align 8
  %cmp2255 = icmp ult i64 %270, 256
  br i1 %cmp2255, label %if.then2259, label %if.else2404

if.end2254.thread:                                ; preds = %do.end
  %inc110 = add i64 %minchars.05395, 1
  %271 = load i64, ptr %uvc, align 8
  %cmp22555329 = icmp ult i64 %271, 256
  br i1 %cmp22555329, label %if.end2297, label %if.else2404

if.then2259:                                      ; preds = %if.end2254
  %arrayidx2262 = getelementptr inbounds nuw i8, ptr %folder.0, i64 %270
  %272 = load i8, ptr %arrayidx2262, align 1
  %273 = load ptr, ptr %charmap, align 8
  %idxprom2264 = zext i8 %272 to i64
  %arrayidx2265 = getelementptr inbounds nuw i16, ptr %273, i64 %idxprom2264
  %274 = load i16, ptr %arrayidx2265, align 2
  %tobool2266.not = icmp eq i16 %274, 0
  br i1 %tobool2266.not, label %if.then2267, label %if.end2297

if.then2267:                                      ; preds = %if.then2259
  %275 = load i16, ptr %uniquecharcount, align 8
  %inc2268 = add i16 %275, 1
  store i16 %inc2268, ptr %uniquecharcount, align 8
  store i16 %inc2268, ptr %arrayidx2265, align 2
  %276 = load i32, ptr %utf8, align 8
  %tobool2274.not = icmp eq i32 %276, 0
  br i1 %tobool2274.not, label %if.else2291, label %if.then2277

if.then2277:                                      ; preds = %if.then2267
  %call2278 = call ptr @Perl_newSV(i64 noundef 7) #9
  %sv_u = getelementptr inbounds nuw i8, ptr %call2278, i64 16
  %277 = load ptr, ptr %sv_u, align 8
  %call2280 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %277, i64 noundef %idxprom2264, i64 noundef 0) #9
  %sub.ptr.lhs.cast2282 = ptrtoint ptr %call2280 to i64
  %sub.ptr.rhs.cast2283 = ptrtoint ptr %277 to i64
  %sub.ptr.sub2284 = sub i64 %sub.ptr.lhs.cast2282, %sub.ptr.rhs.cast2283
  %278 = load ptr, ptr %call2278, align 8
  %xpv_cur = getelementptr inbounds nuw i8, ptr %278, i64 16
  store i64 %sub.ptr.sub2284, ptr %xpv_cur, align 8
  %sv_flags2287 = getelementptr inbounds nuw i8, ptr %call2278, i64 12
  %279 = load i32, ptr %sv_flags2287, align 4
  %or2290 = or i32 %279, 536888320
  store i32 %or2290, ptr %sv_flags2287, align 4
  call void @Perl_av_push(ptr noundef %call, ptr noundef %call2278) #9
  br label %if.end2297

if.else2291:                                      ; preds = %if.then2267
  call void @llvm.lifetime.start.p0(ptr nonnull %ooooff) #9
  store i8 %272, ptr %ooooff, align 1
  %call2292 = call ptr @Perl_newSVpvn(ptr noundef nonnull %ooooff, i64 noundef 1) #9
  call void @Perl_av_push(ptr noundef %call, ptr noundef %call2292) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %ooooff) #9
  br label %if.end2297

if.end2297:                                       ; preds = %if.else2291, %if.then2277, %if.then2259, %if.end2254.thread
  %minchars.153325339 = phi i64 [ %minchars.1, %if.then2259 ], [ %minchars.1, %if.else2291 ], [ %minchars.1, %if.then2277 ], [ %inc110, %if.end2254.thread ]
  %foldlen.153355338 = phi i32 [ %foldlen.1, %if.then2259 ], [ %foldlen.1, %if.else2291 ], [ %foldlen.1, %if.then2277 ], [ %foldlen.05396, %if.end2254.thread ]
  %280 = load ptr, ptr %charmap, align 8
  %281 = load i64, ptr %uvc, align 8
  %arrayidx2299 = getelementptr inbounds nuw i16, ptr %280, i64 %281
  %282 = load i16, ptr %arrayidx2299, align 2
  %tobool2300.not = icmp eq i16 %282, 0
  br i1 %tobool2300.not, label %if.then2301, label %if.end2337

if.then2301:                                      ; preds = %if.end2297
  %283 = load i16, ptr %uniquecharcount2302, align 8
  %inc2303 = add i16 %283, 1
  store i16 %inc2303, ptr %uniquecharcount2302, align 8
  store i16 %inc2303, ptr %arrayidx2299, align 2
  %284 = load i32, ptr %utf8, align 8
  %tobool2308.not = icmp eq i32 %284, 0
  br i1 %tobool2308.not, label %if.else2330, label %if.then2311

if.then2311:                                      ; preds = %if.then2301
  %call2313 = call ptr @Perl_newSV(i64 noundef 7) #9
  %sv_u2315 = getelementptr inbounds nuw i8, ptr %call2313, i64 16
  %285 = load ptr, ptr %sv_u2315, align 8
  %286 = load i64, ptr %uvc, align 8
  %call2317 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %285, i64 noundef %286, i64 noundef 0) #9
  %sub.ptr.lhs.cast2319 = ptrtoint ptr %call2317 to i64
  %sub.ptr.rhs.cast2320 = ptrtoint ptr %285 to i64
  %sub.ptr.sub2321 = sub i64 %sub.ptr.lhs.cast2319, %sub.ptr.rhs.cast2320
  %287 = load ptr, ptr %call2313, align 8
  %xpv_cur2323 = getelementptr inbounds nuw i8, ptr %287, i64 16
  store i64 %sub.ptr.sub2321, ptr %xpv_cur2323, align 8
  %sv_flags2326 = getelementptr inbounds nuw i8, ptr %call2313, i64 12
  %288 = load i32, ptr %sv_flags2326, align 4
  %or2329 = or i32 %288, 536888320
  store i32 %or2329, ptr %sv_flags2326, align 4
  call void @Perl_av_push(ptr noundef %call, ptr noundef %call2313) #9
  br label %if.end2337

if.else2330:                                      ; preds = %if.then2301
  call void @llvm.lifetime.start.p0(ptr nonnull %ooooff2331) #9
  %289 = load i64, ptr %uvc, align 8
  %conv2332 = trunc i64 %289 to i8
  store i8 %conv2332, ptr %ooooff2331, align 1
  %call2333 = call ptr @Perl_newSVpvn(ptr noundef nonnull %ooooff2331, i64 noundef 1) #9
  call void @Perl_av_push(ptr noundef %call, ptr noundef %call2333) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %ooooff2331) #9
  br label %if.end2337

if.end2337:                                       ; preds = %if.else2330, %if.then2311, %if.end2297
  br i1 %set_bit.05393, label %if.then2339, label %for.inc

if.then2339:                                      ; preds = %if.end2337
  %290 = load i64, ptr %uvc, align 8
  %conv2340 = trunc i64 %290 to i8
  %and2342 = and i8 %conv2340, 7
  %shl2343 = shl nuw i8 1, %and2342
  %291 = load ptr, ptr %bitmap28, align 8
  %conv2341 = lshr i64 %290, 3
  %shr2347 = and i64 %conv2341, 31
  %arrayidx2350 = getelementptr inbounds nuw i8, ptr %291, i64 %shr2347
  %292 = load i8, ptr %arrayidx2350, align 1
  %or2352 = or i8 %shl2343, %292
  store i8 %or2352, ptr %arrayidx2350, align 1
  br i1 %tobool3716.not, label %if.end2374, label %if.then2355

if.then2355:                                      ; preds = %if.then2339
  %293 = load i64, ptr %uvc, align 8
  %idxprom2357 = and i64 %293, 255
  %arrayidx2358 = getelementptr inbounds nuw i8, ptr %folder.0, i64 %idxprom2357
  %294 = load i8, ptr %arrayidx2358, align 1
  %and2360 = and i8 %294, 7
  %shl2361 = shl nuw i8 1, %and2360
  %295 = load ptr, ptr %bitmap28, align 8
  %296 = lshr i8 %294, 3
  %idxprom2369 = zext nneg i8 %296 to i64
  %arrayidx2370 = getelementptr inbounds nuw i8, ptr %295, i64 %idxprom2369
  %297 = load i8, ptr %arrayidx2370, align 1
  %or2372 = or i8 %shl2361, %297
  store i8 %or2372, ptr %arrayidx2370, align 1
  br label %if.end2374

if.end2374:                                       ; preds = %if.then2355, %if.then2339
  %298 = load i32, ptr %utf8, align 8
  %tobool2376 = icmp ne i32 %298, 0
  %299 = load i64, ptr %uvc, align 8
  %cmp2380 = icmp ult i64 %299, 128
  %or.cond3989 = select i1 %tobool2376, i1 true, i1 %cmp2380
  br i1 %or.cond3989, label %for.inc, label %if.then2382

if.then2382:                                      ; preds = %if.end2374
  %300 = trunc i64 %299 to i32
  %301 = lshr i32 %300, 6
  %and2387 = and i32 %301, 7
  %shl2388 = shl nuw nsw i32 1, %and2387
  %302 = load ptr, ptr %bitmap28, align 8
  %conv2385 = lshr i64 %299, 9
  %conv2386 = and i64 %conv2385, 7
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 %conv2386
  %arrayidx2397 = getelementptr inbounds nuw i8, ptr %303, i64 24
  %304 = load i8, ptr %arrayidx2397, align 1
  %305 = trunc nuw i32 %shl2388 to i8
  %conv2400 = or i8 %304, %305
  store i8 %conv2400, ptr %arrayidx2397, align 1
  br label %for.inc

if.else2404:                                      ; preds = %if.end2254.thread, %if.end2254
  %foldlen.15334 = phi i32 [ %foldlen.05396, %if.end2254.thread ], [ %foldlen.1, %if.end2254 ]
  %minchars.15331 = phi i64 [ %inc110, %if.end2254.thread ], [ %minchars.1, %if.end2254 ]
  %tobool2405.not = icmp eq ptr %widecharmap.15399, null
  br i1 %tobool2405.not, label %if.then2406, label %if.end2408

if.then2406:                                      ; preds = %if.else2404
  %call2407 = call ptr @Perl_newSV_type(i32 noundef 12) #9
  br label %if.end2408

if.end2408:                                       ; preds = %if.then2406, %if.else2404
  %widecharmap.2 = phi ptr [ %widecharmap.15399, %if.else2404 ], [ %call2407, %if.then2406 ]
  %call2409 = call ptr @Perl_hv_common_key_len(ptr noundef %widecharmap.2, ptr noundef nonnull %uvc, i32 noundef 8, i32 noundef 48, ptr noundef null, i32 noundef 0) #9
  %tobool2410.not = icmp eq ptr %call2409, null
  br i1 %tobool2410.not, label %if.then2411, label %if.end2412

if.then2411:                                      ; preds = %if.end2408
  %306 = load i64, ptr %uvc, align 8
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.223, i64 noundef %306) #9
  br label %if.end2412

if.end2412:                                       ; preds = %if.then2411, %if.end2408
  %307 = load ptr, ptr %call2409, align 8
  %tobool2413.not = icmp eq ptr %307, null
  br i1 %tobool2413.not, label %if.then2487, label %land.lhs.true2416

land.lhs.true2416:                                ; preds = %if.end2412
  %sv_flags2417 = getelementptr inbounds nuw i8, ptr %307, i64 12
  %308 = load i32, ptr %sv_flags2417, align 4
  %and2418 = and i32 %308, 2097152
  %tobool2419.not = icmp eq i32 %and2418, 0
  br i1 %tobool2419.not, label %cond.false2425, label %cond.true2422

cond.true2422:                                    ; preds = %land.lhs.true2416
  %call2423 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %307, i32 noundef 2) #9
  br i1 %call2423, label %for.inc, label %if.then2487

cond.false2425:                                   ; preds = %land.lhs.true2416
  %and2427 = and i32 %308, 65280
  %tobool2428.not = icmp ne i32 %and2427, 0
  %and2431 = and i32 %308, 255
  %cmp2432 = icmp eq i32 %and2431, 8
  %or.cond5004 = or i1 %tobool2428.not, %cmp2432
  %and2436 = and i32 %308, 16777471
  %cmp2437 = icmp eq i32 %and2436, 16777226
  %or.cond5005 = or i1 %cmp2437, %or.cond5004
  br i1 %or.cond5005, label %cond.false2440, label %if.then2487

cond.false2440:                                   ; preds = %cond.false2425
  %and2442 = and i32 %308, 1024
  %tobool2443.not = icmp eq i32 %and2442, 0
  br i1 %tobool2443.not, label %cond.false2461, label %cond.true2444

cond.true2444:                                    ; preds = %cond.false2440
  %309 = load ptr, ptr %307, align 8
  %tobool2446.not = icmp eq ptr %309, null
  br i1 %tobool2446.not, label %if.then2487, label %land.lhs.true2447

land.lhs.true2447:                                ; preds = %cond.true2444
  %xpv_cur2449 = getelementptr inbounds nuw i8, ptr %309, i64 16
  %310 = load i64, ptr %xpv_cur2449, align 8
  %cmp2450 = icmp ugt i64 %310, 1
  br i1 %cmp2450, label %for.inc, label %lor.lhs.false2452

lor.lhs.false2452:                                ; preds = %land.lhs.true2447
  %tobool2455.not = icmp eq i64 %310, 0
  br i1 %tobool2455.not, label %if.then2487, label %land.lhs.true2456

land.lhs.true2456:                                ; preds = %lor.lhs.false2452
  %sv_u2457 = getelementptr inbounds nuw i8, ptr %307, i64 16
  %311 = load ptr, ptr %sv_u2457, align 8
  %312 = load i8, ptr %311, align 1
  %cmp2459.not = icmp eq i8 %312, 48
  br i1 %cmp2459.not, label %if.then2487, label %for.inc

cond.false2461:                                   ; preds = %cond.false2440
  %and2463 = and i32 %308, 768
  %tobool2464.not = icmp eq i32 %and2463, 0
  br i1 %tobool2464.not, label %cond.false2484, label %cond.true2465

cond.true2465:                                    ; preds = %cond.false2461
  %and2467 = and i32 %308, 256
  %tobool2468.not = icmp eq i32 %and2467, 0
  br i1 %tobool2468.not, label %lor.lhs.false2473, label %land.lhs.true2469

land.lhs.true2469:                                ; preds = %cond.true2465
  %313 = load ptr, ptr %307, align 8
  %xiv_u = getelementptr inbounds nuw i8, ptr %313, i64 32
  %314 = load i64, ptr %xiv_u, align 8
  %cmp2471.not = icmp eq i64 %314, 0
  br i1 %cmp2471.not, label %lor.lhs.false2473, label %for.inc

lor.lhs.false2473:                                ; preds = %land.lhs.true2469, %cond.true2465
  %and2475 = and i32 %308, 512
  %tobool2476.not = icmp eq i32 %and2475, 0
  br i1 %tobool2476.not, label %if.then2487, label %land.lhs.true2477

land.lhs.true2477:                                ; preds = %lor.lhs.false2473
  %315 = load ptr, ptr %307, align 8
  %xnv_u = getelementptr inbounds nuw i8, ptr %315, i64 40
  %316 = load double, ptr %xnv_u, align 8
  %cmp2482 = fcmp une double %316, 0.000000e+00
  br i1 %cmp2482, label %for.inc, label %if.then2487

cond.false2484:                                   ; preds = %cond.false2461
  %call2485 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %307, i32 noundef 0) #9
  br i1 %call2485, label %for.inc, label %if.then2487

if.then2487:                                      ; preds = %cond.false2484, %land.lhs.true2477, %lor.lhs.false2473, %land.lhs.true2456, %lor.lhs.false2452, %cond.true2444, %cond.false2425, %cond.true2422, %if.end2412
  %317 = load ptr, ptr %call2409, align 8
  %318 = load i16, ptr %uniquecharcount2488, align 8
  %inc2489 = add i16 %318, 1
  store i16 %inc2489, ptr %uniquecharcount2488, align 8
  %conv2490 = zext i16 %inc2489 to i64
  call void @Perl_sv_setiv(ptr noundef %317, i64 noundef %conv2490) #9
  %319 = load i32, ptr %utf8, align 8
  %tobool2493.not = icmp eq i32 %319, 0
  br i1 %tobool2493.not, label %if.else2515, label %if.then2496

if.then2496:                                      ; preds = %if.then2487
  %call2498 = call ptr @Perl_newSV(i64 noundef 7) #9
  %sv_u2500 = getelementptr inbounds nuw i8, ptr %call2498, i64 16
  %320 = load ptr, ptr %sv_u2500, align 8
  %321 = load i64, ptr %uvc, align 8
  %call2502 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %320, i64 noundef %321, i64 noundef 0) #9
  %sub.ptr.lhs.cast2504 = ptrtoint ptr %call2502 to i64
  %sub.ptr.rhs.cast2505 = ptrtoint ptr %320 to i64
  %sub.ptr.sub2506 = sub i64 %sub.ptr.lhs.cast2504, %sub.ptr.rhs.cast2505
  %322 = load ptr, ptr %call2498, align 8
  %xpv_cur2508 = getelementptr inbounds nuw i8, ptr %322, i64 16
  store i64 %sub.ptr.sub2506, ptr %xpv_cur2508, align 8
  %sv_flags2511 = getelementptr inbounds nuw i8, ptr %call2498, i64 12
  %323 = load i32, ptr %sv_flags2511, align 4
  %or2514 = or i32 %323, 536888320
  store i32 %or2514, ptr %sv_flags2511, align 4
  call void @Perl_av_push(ptr noundef %call, ptr noundef %call2498) #9
  br label %for.inc

if.else2515:                                      ; preds = %if.then2487
  call void @llvm.lifetime.start.p0(ptr nonnull %ooooff2516) #9
  %324 = load i64, ptr %uvc, align 8
  %conv2517 = trunc i64 %324 to i8
  store i8 %conv2517, ptr %ooooff2516, align 1
  %call2518 = call ptr @Perl_newSVpvn(ptr noundef nonnull %ooooff2516, i64 noundef 1) #9
  call void @Perl_av_push(ptr noundef %call, ptr noundef %call2518) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %ooooff2516) #9
  br label %for.inc

for.inc:                                          ; preds = %if.else2515, %if.then2496, %cond.false2484, %land.lhs.true2477, %land.lhs.true2469, %land.lhs.true2456, %land.lhs.true2447, %cond.true2422, %if.then2382, %if.end2374, %if.end2337
  %foldlen.15333 = phi i32 [ %foldlen.153355338, %if.end2337 ], [ %foldlen.153355338, %if.then2382 ], [ %foldlen.153355338, %if.end2374 ], [ %foldlen.15334, %if.then2496 ], [ %foldlen.15334, %if.else2515 ], [ %foldlen.15334, %cond.false2484 ], [ %foldlen.15334, %land.lhs.true2477 ], [ %foldlen.15334, %land.lhs.true2469 ], [ %foldlen.15334, %land.lhs.true2456 ], [ %foldlen.15334, %land.lhs.true2447 ], [ %foldlen.15334, %cond.true2422 ]
  %minchars.15330 = phi i64 [ %minchars.153325339, %if.end2337 ], [ %minchars.153325339, %if.then2382 ], [ %minchars.153325339, %if.end2374 ], [ %minchars.15331, %if.then2496 ], [ %minchars.15331, %if.else2515 ], [ %minchars.15331, %cond.false2484 ], [ %minchars.15331, %land.lhs.true2477 ], [ %minchars.15331, %land.lhs.true2469 ], [ %minchars.15331, %land.lhs.true2456 ], [ %minchars.15331, %land.lhs.true2447 ], [ %minchars.15331, %cond.true2422 ]
  %set_bit.1 = phi i1 [ false, %if.end2337 ], [ false, %if.then2382 ], [ false, %if.end2374 ], [ %set_bit.05393, %if.then2496 ], [ %set_bit.05393, %if.else2515 ], [ %set_bit.05393, %cond.false2484 ], [ %set_bit.05393, %land.lhs.true2477 ], [ %set_bit.05393, %land.lhs.true2469 ], [ %set_bit.05393, %land.lhs.true2456 ], [ %set_bit.05393, %land.lhs.true2447 ], [ %set_bit.05393, %cond.true2422 ]
  %widecharmap.3 = phi ptr [ %widecharmap.15399, %if.end2337 ], [ %widecharmap.15399, %if.then2382 ], [ %widecharmap.15399, %if.end2374 ], [ %widecharmap.2, %if.then2496 ], [ %widecharmap.2, %if.else2515 ], [ %widecharmap.2, %cond.false2484 ], [ %widecharmap.2, %land.lhs.true2477 ], [ %widecharmap.2, %land.lhs.true2469 ], [ %widecharmap.2, %land.lhs.true2456 ], [ %widecharmap.2, %land.lhs.true2447 ], [ %widecharmap.2, %cond.true2422 ]
  %325 = load i64, ptr %len, align 8
  %add.ptr2524 = getelementptr inbounds nuw i8, ptr %uc.25397, i64 %325
  %cmp80 = icmp ult ptr %add.ptr2524, %e.1
  br i1 %cmp80, label %for.body82, label %for.end.loopexit, !llvm.loop !0

for.end.loopexit:                                 ; preds = %for.inc
  %minchars.15330.lcssa = phi i64 [ %minchars.15330, %for.inc ]
  %widecharmap.3.lcssa = phi ptr [ %widecharmap.3, %for.inc ]
  %inc106.lcssa = phi i64 [ %inc106, %for.inc ]
  %inc.lcssa = phi i64 [ %inc, %for.inc ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end78
  %maxchars.0.lcssa = phi i64 [ 0, %if.end78 ], [ %inc106.lcssa, %for.end.loopexit ]
  %minchars.0.lcssa = phi i64 [ 0, %if.end78 ], [ %minchars.15330.lcssa, %for.end.loopexit ]
  %trie_charcount.1.lcssa = phi i64 [ %trie_charcount.05404, %if.end78 ], [ %inc.lcssa, %for.end.loopexit ]
  %widecharmap.1.lcssa = phi ptr [ %widecharmap.05408, %if.end78 ], [ %widecharmap.3.lcssa, %for.end.loopexit ]
  %cmp2525 = icmp eq ptr %cur.05405, %first
  br i1 %cmp2525, label %if.then2527, label %if.else2529

if.then2527:                                      ; preds = %for.end
  store i64 %minchars.0.lcssa, ptr %minlen2528, align 8
  store i64 %maxchars.0.lcssa, ptr %maxlen, align 8
  br label %cleanup2544

if.else2529:                                      ; preds = %for.end
  %326 = load i64, ptr %minlen2530, align 8
  %cmp2531 = icmp ult i64 %minchars.0.lcssa, %326
  br i1 %cmp2531, label %if.then2533, label %if.else2535

if.then2533:                                      ; preds = %if.else2529
  store i64 %minchars.0.lcssa, ptr %minlen2530, align 8
  br label %cleanup2544

if.else2535:                                      ; preds = %if.else2529
  %327 = load i64, ptr %maxlen2536, align 8
  %cmp2537 = icmp ugt i64 %maxchars.0.lcssa, %327
  br i1 %cmp2537, label %if.then2539, label %cleanup2544

if.then2539:                                      ; preds = %if.else2535
  store i64 %maxchars.0.lcssa, ptr %maxlen2536, align 8
  br label %cleanup2544

cleanup2544:                                      ; preds = %if.then2539, %if.else2535, %if.then2533, %if.then2527
  %tobool.not.i5023 = icmp eq ptr %cur.05405, null
  br i1 %tobool.not.i5023, label %Perl_regnext.exit5044, label %if.end.i

if.end.i:                                         ; preds = %cleanup2544, %cleanup2544.thread
  %widecharmap.45345 = phi ptr [ %widecharmap.05408, %cleanup2544.thread ], [ %widecharmap.1.lcssa, %cleanup2544 ]
  %trie_charcount.25343 = phi i64 [ %trie_charcount.05404, %cleanup2544.thread ], [ %trie_charcount.1.lcssa, %cleanup2544 ]
  %type.i5024 = getelementptr inbounds nuw i8, ptr %cur.05405, i64 1
  %328 = load i8, ptr %type.i5024, align 1
  %cmp.i5025 = icmp ugt i8 %328, 93
  br i1 %cmp.i5025, label %if.then2.i5042, label %if.end5.i5026

if.then2.i5042:                                   ; preds = %if.end.i
  %conv.i5043 = zext i8 %328 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.204, i32 noundef %conv.i5043, i32 noundef 93) #9
  br label %if.end5.i5026

if.end5.i5026:                                    ; preds = %if.then2.i5042, %if.end.i
  %329 = load i8, ptr %type.i5024, align 1
  %idxprom.i5027 = zext i8 %329 to i64
  %arrayidx.i5028 = getelementptr inbounds nuw i8, ptr @reg_off_by_arg, i64 %idxprom.i5027
  %330 = load i8, ptr %arrayidx.i5028, align 1
  %tobool8.not.i5029 = icmp eq i8 %330, 0
  br i1 %tobool8.not.i5029, label %cond.false.i5039, label %cond.true.i5030

cond.true.i5030:                                  ; preds = %if.end5.i5026
  %331 = load i32, ptr %add.ptr25, align 4
  br label %cond.end.i5032

cond.false.i5039:                                 ; preds = %if.end5.i5026
  %next_off.i5040 = getelementptr inbounds nuw i8, ptr %cur.05405, i64 2
  %332 = load i16, ptr %next_off.i5040, align 2
  %conv9.i5041 = zext i16 %332 to i32
  br label %cond.end.i5032

cond.end.i5032:                                   ; preds = %cond.false.i5039, %cond.true.i5030
  %cond.i5033 = phi i32 [ %331, %cond.true.i5030 ], [ %conv9.i5041, %cond.false.i5039 ]
  %cmp10.i5034 = icmp eq i32 %cond.i5033, 0
  br i1 %cmp10.i5034, label %Perl_regnext.exit5044, label %if.end13.i5035

if.end13.i5035:                                   ; preds = %cond.end.i5032
  %idx.ext.i5036 = sext i32 %cond.i5033 to i64
  %add.ptr.i5037 = getelementptr inbounds %struct.regnode, ptr %cur.05405, i64 %idx.ext.i5036
  br label %Perl_regnext.exit5044

Perl_regnext.exit5044:                            ; preds = %if.end13.i5035, %cond.end.i5032, %cleanup2544
  %widecharmap.45346 = phi ptr [ %widecharmap.45345, %if.end13.i5035 ], [ %widecharmap.1.lcssa, %cleanup2544 ], [ %widecharmap.45345, %cond.end.i5032 ]
  %trie_charcount.25344 = phi i64 [ %trie_charcount.25343, %if.end13.i5035 ], [ %trie_charcount.1.lcssa, %cleanup2544 ], [ %trie_charcount.25343, %cond.end.i5032 ]
  %retval.0.i5038 = phi ptr [ %add.ptr.i5037, %if.end13.i5035 ], [ null, %cleanup2544 ], [ null, %cond.end.i5032 ]
  %cmp23 = icmp ult ptr %retval.0.i5038, %last
  br i1 %cmp23, label %for.body, label %for.end2556.loopexit, !llvm.loop !2

for.end2556.loopexit:                             ; preds = %Perl_regnext.exit5044
  %widecharmap.45346.lcssa = phi ptr [ %widecharmap.45346, %Perl_regnext.exit5044 ]
  %trie_charcount.25344.lcssa = phi i64 [ %trie_charcount.25344, %Perl_regnext.exit5044 ]
  br label %for.end2556

for.end2556:                                      ; preds = %for.end2556.loopexit, %if.end22
  %trie_charcount.0.lcssa = phi i64 [ 0, %if.end22 ], [ %trie_charcount.25344.lcssa, %for.end2556.loopexit ]
  %widecharmap.0.lcssa = phi ptr [ null, %if.end22 ], [ %widecharmap.45346.lcssa, %for.end2556.loopexit ]
  %add2557 = add i64 %trie_charcount.0.lcssa, 2
  %mul = shl i64 %add2557, 2
  %call2558 = call ptr @Perl_safesysmalloc(i64 noundef %mul) #9
  %arrayidx2559 = getelementptr inbounds nuw i8, ptr %call2558, i64 4
  store i32 0, ptr %arrayidx2559, align 4
  %add2560 = add i64 %trie_charcount.0.lcssa, 1
  %uniquecharcount2561 = getelementptr inbounds nuw i8, ptr %call4, i64 56
  %333 = load i16, ptr %uniquecharcount2561, align 8
  %conv2562 = zext i16 %333 to i64
  %mul2563 = mul i64 %add2560, %conv2562
  %add2564 = add i64 %mul2563, 1
  %334 = load i32, ptr %sv_flags, align 4
  %and2566 = and i32 %334, 2097408
  %cmp2567 = icmp eq i32 %and2566, 256
  br i1 %cmp2567, label %cond.true2569, label %cond.false2572

cond.true2569:                                    ; preds = %for.end2556
  %335 = load ptr, ptr %call13, align 8
  %xiv_u2571 = getelementptr inbounds nuw i8, ptr %335, i64 32
  %336 = load i64, ptr %xiv_u2571, align 8
  br label %cond.end2574

cond.false2572:                                   ; preds = %for.end2556
  %call2573 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %call13, i32 noundef 2) #9
  br label %cond.end2574

cond.end2574:                                     ; preds = %cond.false2572, %cond.true2569
  %cond2575 = phi i64 [ %336, %cond.true2569 ], [ %call2573, %cond.false2572 ]
  %cmp2576 = icmp sgt i64 %add2564, %cond2575
  br i1 %cmp2576, label %if.then2578, label %if.else3144

if.then2578:                                      ; preds = %cond.end2574
  %call2580 = call noalias ptr @calloc(i64 noundef %add2557, i64 noundef 16) #10
  %states = getelementptr inbounds nuw i8, ptr %call4, i64 16
  store ptr %call2580, ptr %states, align 8
  %call2582 = call ptr @Perl_safesyscalloc(i64 noundef 4, i64 noundef 8) #9
  %337 = load ptr, ptr %states, align 8
  %trans = getelementptr inbounds nuw i8, ptr %337, i64 24
  store ptr %call2582, ptr %trans, align 8
  %338 = load ptr, ptr %states, align 8
  %trans2587 = getelementptr inbounds nuw i8, ptr %338, i64 24
  %339 = load ptr, ptr %trans2587, align 8
  store i16 1, ptr %339, align 4
  %340 = load ptr, ptr %states, align 8
  %trans2591 = getelementptr inbounds nuw i8, ptr %340, i64 24
  %341 = load ptr, ptr %trans2591, align 8
  %newstate = getelementptr inbounds nuw i8, ptr %341, i64 4
  store i32 4, ptr %newstate, align 4
  %cmp25965469 = icmp ult ptr %first, %last
  br i1 %cmp25965469, label %for.body2598.lr.ph, label %for.end2922

for.body2598.lr.ph:                               ; preds = %if.then2578
  %utf82644 = getelementptr inbounds nuw i8, ptr %pRExC_state, i64 216
  %cmp2651 = icmp eq ptr %folder.0, @PL_fold_latin1
  %jump = getelementptr inbounds nuw i8, ptr %call4, i64 40
  %add2878 = add i32 %word_count, 1
  %conv2879 = zext i32 %add2878 to i64
  %sub.ptr.rhs.cast2884 = ptrtoint ptr %convert.0 to i64
  br label %for.body2598

for.body2598:                                     ; preds = %Perl_regnext.exit5136, %for.body2598.lr.ph
  %cur.15475 = phi ptr [ %first, %for.body2598.lr.ph ], [ %retval.0.i5130, %Perl_regnext.exit5136 ]
  %curword.05474 = phi i16 [ 0, %for.body2598.lr.ph ], [ %inc2862, %Perl_regnext.exit5136 ]
  %next_alloc.05473 = phi i32 [ 2, %for.body2598.lr.ph ], [ %next_alloc.45366, %Perl_regnext.exit5136 ]
  %jumper.05472 = phi ptr [ null, %for.body2598.lr.ph ], [ %jumper.2, %Perl_regnext.exit5136 ]
  %nextbranch.05471 = phi ptr [ null, %for.body2598.lr.ph ], [ %nextbranch.1, %Perl_regnext.exit5136 ]
  %transcount.05470 = phi i64 [ 1, %for.body2598.lr.ph ], [ %transcount.45364, %Perl_regnext.exit5136 ]
  %add.ptr2600 = getelementptr inbounds nuw i8, ptr %cur.15475, i64 4
  %string2602 = getelementptr inbounds nuw i8, ptr %cur.15475, i64 8
  %342 = load i8, ptr %add.ptr2600, align 2
  %idx.ext2607 = zext i8 %342 to i64
  %add.ptr2608 = getelementptr inbounds nuw i8, ptr %string2602, i64 %idx.ext2607
  %type2610 = getelementptr inbounds nuw i8, ptr %cur.15475, i64 5
  %343 = load i8, ptr %type2610, align 1
  %cmp2612 = icmp eq i8 %343, 40
  br i1 %cmp2612, label %if.then2614, label %if.end2632

if.then2614:                                      ; preds = %for.body2598
  %type.i5047 = getelementptr inbounds nuw i8, ptr %cur.15475, i64 5
  %344 = load i8, ptr %type.i5047, align 1
  %cmp.i5048 = icmp ugt i8 %344, 93
  br i1 %cmp.i5048, label %if.then2.i5065, label %if.end5.i5049

if.then2.i5065:                                   ; preds = %if.then2614
  %conv.i5066 = zext i8 %344 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.204, i32 noundef %conv.i5066, i32 noundef 93) #9
  br label %if.end5.i5049

if.end5.i5049:                                    ; preds = %if.then2.i5065, %if.then2614
  %345 = load i8, ptr %type.i5047, align 1
  %idxprom.i5050 = zext i8 %345 to i64
  %arrayidx.i5051 = getelementptr inbounds nuw i8, ptr @reg_off_by_arg, i64 %idxprom.i5050
  %346 = load i8, ptr %arrayidx.i5051, align 1
  %tobool8.not.i5052 = icmp eq i8 %346, 0
  br i1 %tobool8.not.i5052, label %cond.false.i5062, label %cond.true.i5053

cond.true.i5053:                                  ; preds = %if.end5.i5049
  %arg1.i5054 = getelementptr inbounds nuw i8, ptr %cur.15475, i64 8
  %347 = load i32, ptr %arg1.i5054, align 4
  br label %cond.end.i5055

cond.false.i5062:                                 ; preds = %if.end5.i5049
  %next_off.i5063 = getelementptr inbounds nuw i8, ptr %cur.15475, i64 6
  %348 = load i16, ptr %next_off.i5063, align 2
  %conv9.i5064 = zext i16 %348 to i32
  br label %cond.end.i5055

cond.end.i5055:                                   ; preds = %cond.false.i5062, %cond.true.i5053
  %cond.i5056 = phi i32 [ %347, %cond.true.i5053 ], [ %conv9.i5064, %cond.false.i5062 ]
  %cmp10.i5057 = icmp eq i32 %cond.i5056, 0
  %idx.ext.i5059 = sext i32 %cond.i5056 to i64
  %add.ptr.i5060 = getelementptr inbounds %struct.regnode, ptr %add.ptr2600, i64 %idx.ext.i5059
  %retval.0.i5061 = select i1 %cmp10.i5057, ptr null, ptr %add.ptr.i5060
  %cmp2617.not = icmp eq ptr %retval.0.i5061, %tail
  br i1 %cmp2617.not, label %if.end2632, label %land.lhs.true2619

land.lhs.true2619:                                ; preds = %cond.end.i5055
  %type2620 = getelementptr inbounds nuw i8, ptr %add.ptr.i5060, i64 1
  %349 = load i8, ptr %type2620, align 1
  %conv2621 = zext i8 %349 to i32
  %cmp2622 = icmp eq i32 %flags, %conv2621
  br i1 %cmp2622, label %if.then2624, label %if.end2632

if.then2624:                                      ; preds = %land.lhs.true2619
  %string2625 = getelementptr inbounds nuw i8, ptr %retval.0.i5061, i64 4
  %350 = load i8, ptr %add.ptr.i5060, align 2
  %idx.ext2629 = zext i8 %350 to i64
  %add.ptr2630 = getelementptr inbounds nuw i8, ptr %string2625, i64 %idx.ext2629
  br label %if.end2632

if.end2632:                                       ; preds = %if.then2624, %land.lhs.true2619, %cond.end.i5055, %for.body2598
  %e2604.1 = phi ptr [ %add.ptr2608, %for.body2598 ], [ %add.ptr2630, %if.then2624 ], [ %add.ptr2608, %land.lhs.true2619 ], [ %add.ptr2608, %cond.end.i5055 ]
  %uc2601.1 = phi ptr [ %string2602, %for.body2598 ], [ %string2625, %if.then2624 ], [ %string2602, %land.lhs.true2619 ], [ %string2602, %cond.end.i5055 ]
  %noper2599.1 = phi ptr [ %add.ptr2600, %for.body2598 ], [ %retval.0.i5061, %if.then2624 ], [ %add.ptr2600, %land.lhs.true2619 ], [ %add.ptr2600, %cond.end.i5055 ]
  %type2633 = getelementptr inbounds nuw i8, ptr %noper2599.1, i64 1
  %351 = load i8, ptr %type2633, align 1
  %cmp2635.not = icmp eq i8 %351, 40
  br i1 %cmp2635.not, label %do.body2856.thread, label %for.cond2638.preheader

for.cond2638.preheader:                           ; preds = %if.end2632
  %cmp26395453 = icmp ult ptr %uc2601.1, %e2604.1
  br i1 %cmp26395453, label %do.body2642.preheader, label %do.body2856

do.body2642.preheader:                            ; preds = %for.cond2638.preheader
  br label %do.body2642

do.body2856.thread:                               ; preds = %if.end2632
  %352 = load ptr, ptr %states, align 8
  %arrayidx28595357 = getelementptr inbounds nuw i8, ptr %352, i64 16
  %353 = load i16, ptr %arrayidx28595357, align 8
  br label %if.end.i5069

do.body2642:                                      ; preds = %for.inc2852, %do.body2642.preheader
  %next_alloc.15463 = phi i32 [ %next_alloc.3, %for.inc2852 ], [ %next_alloc.05473, %do.body2642.preheader ]
  %transcount.15461 = phi i64 [ %transcount.3, %for.inc2852 ], [ %transcount.05470, %do.body2642.preheader ]
  %uc2601.25456 = phi ptr [ %add.ptr2853, %for.inc2852 ], [ %uc2601.1, %do.body2642.preheader ]
  %wordlen2609.05455 = phi i32 [ %inc2643, %for.inc2852 ], [ 0, %do.body2642.preheader ]
  %state.05454 = phi i32 [ %state.1, %for.inc2852 ], [ 1, %do.body2642.preheader ]
  %inc2643 = add i32 %wordlen2609.05455, 1
  %354 = load i32, ptr %utf82644, align 8
  %tobool2645.not = icmp eq i32 %354, 0
  br i1 %tobool2645.not, label %if.else2650, label %if.then2648

if.then2648:                                      ; preds = %do.body2642
  %call2649 = call i64 @Perl_valid_utf8_to_uvchr(ptr noundef %uc2601.25456, ptr noundef nonnull %len) #9
  store i64 %call2649, ptr %uvc, align 8
  br label %do.end2670

if.else2650:                                      ; preds = %do.body2642
  br i1 %cmp2651, label %if.then2653, label %do.end2670.thread

if.then2653:                                      ; preds = %if.else2650
  %355 = load i8, ptr %uc2601.25456, align 1
  %idxprom2654 = zext i8 %355 to i64
  %arrayidx2655 = getelementptr inbounds nuw i8, ptr @PL_latin1_lc, i64 %idxprom2654
  %356 = load i8, ptr %arrayidx2655, align 1
  %conv2657 = zext i8 %356 to i64
  %cmp2658 = icmp eq i8 %356, -75
  %spec.store.select3990 = select i1 %cmp2658, i64 956, i64 %conv2657
  store i64 %spec.store.select3990, ptr %uvc, align 8
  store i64 1, ptr %len, align 8
  br label %do.end2670

do.end2670.thread:                                ; preds = %if.else2650
  %357 = load i8, ptr %uc2601.25456, align 1
  %conv2666 = zext i8 %357 to i64
  store i64 %conv2666, ptr %uvc, align 8
  store i64 1, ptr %len, align 8
  br label %if.then2673

do.end2670:                                       ; preds = %if.then2653, %if.then2648
  %358 = phi i64 [ %spec.store.select3990, %if.then2653 ], [ %call2649, %if.then2648 ]
  %cmp2671 = icmp ult i64 %358, 256
  br i1 %cmp2671, label %if.then2673, label %if.else2676

if.then2673:                                      ; preds = %do.end2670, %do.end2670.thread
  %359 = phi i64 [ %conv2666, %do.end2670.thread ], [ %358, %do.end2670 ]
  %360 = load ptr, ptr %charmap, align 8
  %arrayidx2675 = getelementptr inbounds nuw i16, ptr %360, i64 %359
  %361 = load i16, ptr %arrayidx2675, align 2
  br label %if.end2695

if.else2676:                                      ; preds = %do.end2670
  %call2678 = call ptr @Perl_hv_common_key_len(ptr noundef %widecharmap.0.lcssa, ptr noundef nonnull %uvc, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #9
  %tobool2679.not = icmp eq ptr %call2678, null
  br i1 %tobool2679.not, label %if.else2850, label %if.else2681

if.else2681:                                      ; preds = %if.else2676
  %362 = load ptr, ptr %call2678, align 8
  %sv_flags2682 = getelementptr inbounds nuw i8, ptr %362, i64 12
  %363 = load i32, ptr %sv_flags2682, align 4
  %and2683 = and i32 %363, 2097408
  %cmp2684 = icmp eq i32 %and2683, 256
  br i1 %cmp2684, label %cond.true2686, label %cond.false2689

cond.true2686:                                    ; preds = %if.else2681
  %364 = load ptr, ptr %362, align 8
  %xiv_u2688 = getelementptr inbounds nuw i8, ptr %364, i64 32
  %365 = load i64, ptr %xiv_u2688, align 8
  br label %cond.end2691

cond.false2689:                                   ; preds = %if.else2681
  %call2690 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %362, i32 noundef 2) #9
  br label %cond.end2691

cond.end2691:                                     ; preds = %cond.false2689, %cond.true2686
  %cond2692 = phi i64 [ %365, %cond.true2686 ], [ %call2690, %cond.false2689 ]
  %conv2693 = trunc i64 %cond2692 to i16
  br label %if.end2695

if.end2695:                                       ; preds = %cond.end2691, %if.then2673
  %charid.1 = phi i16 [ %361, %if.then2673 ], [ %conv2693, %cond.end2691 ]
  %tobool2696.not = icmp eq i16 %charid.1, 0
  br i1 %tobool2696.not, label %if.else2850, label %if.then2697

if.then2697:                                      ; preds = %if.end2695
  %dec2699 = add i16 %charid.1, -1
  %366 = load ptr, ptr %states, align 8
  %idxprom2701 = zext i32 %state.05454 to i64
  %arrayidx2702 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %366, i64 %idxprom2701
  %trans2703 = getelementptr inbounds nuw i8, ptr %arrayidx2702, i64 8
  %367 = load ptr, ptr %trans2703, align 8
  %tobool2704.not = icmp eq ptr %367, null
  br i1 %tobool2704.not, label %do.body2706, label %if.end2726

do.body2706:                                      ; preds = %if.then2697
  %call2707 = call ptr @Perl_safesyscalloc(i64 noundef 4, i64 noundef 8) #9
  %368 = load ptr, ptr %states, align 8
  %arrayidx2710 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %368, i64 %idxprom2701
  %trans2711 = getelementptr inbounds nuw i8, ptr %arrayidx2710, i64 8
  store ptr %call2707, ptr %trans2711, align 8
  %369 = load ptr, ptr %states, align 8
  %arrayidx2714 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %369, i64 %idxprom2701
  %trans2715 = getelementptr inbounds nuw i8, ptr %arrayidx2714, i64 8
  %370 = load ptr, ptr %trans2715, align 8
  store i16 1, ptr %370, align 4
  %371 = load ptr, ptr %states, align 8
  %arrayidx2720 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %371, i64 %idxprom2701
  %trans2721 = getelementptr inbounds nuw i8, ptr %arrayidx2720, i64 8
  %372 = load ptr, ptr %trans2721, align 8
  %newstate2723 = getelementptr inbounds nuw i8, ptr %372, i64 4
  store i32 4, ptr %newstate2723, align 4
  br label %if.end2726

if.end2726:                                       ; preds = %do.body2706, %if.then2697
  %373 = load ptr, ptr %states, align 8
  %arrayidx2731 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %373, i64 %idxprom2701
  %trans2732 = getelementptr inbounds nuw i8, ptr %arrayidx2731, i64 8
  %374 = load ptr, ptr %trans2732, align 8
  %tobool2733.not = icmp eq ptr %374, null
  br i1 %tobool2733.not, label %for.cond2727.us.preheader, label %if.end2726.split

for.cond2727.us.preheader:                        ; preds = %if.end2726
  br label %for.cond2727.us

for.cond2727.us:                                  ; preds = %for.cond2727.us.preheader
  br i1 false, label %for.body2748.us, label %if.then2773.loopexit

for.body2748.us:                                  ; preds = %for.cond2727.us
  br label %for.end2771.loopexit

if.end2726.split:                                 ; preds = %if.end2726
  %375 = load i16, ptr %374, align 4
  %umax = call i16 @llvm.umax.i16(i16 %375, i16 1)
  br label %for.cond2727

for.cond2727:                                     ; preds = %for.body2748, %if.end2726.split
  %check.0 = phi i16 [ 1, %if.end2726.split ], [ %inc2770, %for.body2748 ]
  %exitcond5541 = icmp ne i16 %check.0, %umax
  br i1 %exitcond5541, label %for.body2748, label %if.then2773.loopexit5523

for.body2748:                                     ; preds = %for.cond2727
  %idxprom2753 = zext i16 %check.0 to i64
  %arrayidx2754 = getelementptr inbounds nuw %struct._reg_trie_trans_list_elem, ptr %374, i64 %idxprom2753
  %376 = load i16, ptr %arrayidx2754, align 4
  %cmp2758 = icmp eq i16 %376, %dec2699
  %inc2770 = add i16 %check.0, 1
  br i1 %cmp2758, label %for.end2771.loopexit5524, label %for.cond2727, !llvm.loop !3

for.end2771.loopexit:                             ; preds = %for.body2748.us
  br label %for.end2771

for.end2771.loopexit5524:                         ; preds = %for.body2748
  %idxprom2753.lcssa = phi i64 [ %idxprom2753, %for.body2748 ]
  br label %for.end2771

for.end2771:                                      ; preds = %for.end2771.loopexit5524, %for.end2771.loopexit
  %.us-phi = phi i64 [ poison, %for.end2771.loopexit ], [ %idxprom2753.lcssa, %for.end2771.loopexit5524 ]
  %arrayidx2754.le = getelementptr inbounds nuw %struct._reg_trie_trans_list_elem, ptr %374, i64 %.us-phi
  %newstate2767 = getelementptr inbounds nuw i8, ptr %arrayidx2754.le, i64 4
  %377 = load i32, ptr %newstate2767, align 4
  %tobool2772.not = icmp eq i32 %377, 0
  br i1 %tobool2772.not, label %if.then2773, label %for.inc2852

if.then2773.loopexit:                             ; preds = %for.cond2727.us
  br label %if.then2773

if.then2773.loopexit5523:                         ; preds = %for.cond2727
  br label %if.then2773

if.then2773:                                      ; preds = %if.then2773.loopexit5523, %if.then2773.loopexit, %for.end2771
  %inc2774 = add i32 %next_alloc.15463, 1
  %idxprom2775 = zext i32 %next_alloc.15463 to i64
  %arrayidx2776 = getelementptr inbounds nuw i32, ptr %call2558, i64 %idxprom2775
  store i32 %state.05454, ptr %arrayidx2776, align 4
  %378 = load ptr, ptr %states, align 8
  %arrayidx2780 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %378, i64 %idxprom2701
  %trans2781 = getelementptr inbounds nuw i8, ptr %arrayidx2780, i64 8
  %379 = load ptr, ptr %trans2781, align 8
  %380 = load i16, ptr %379, align 4
  %conv2784 = zext i16 %380 to i32
  %newstate2790 = getelementptr inbounds nuw i8, ptr %379, i64 4
  %381 = load i32, ptr %newstate2790, align 4
  %cmp2791.not = icmp ugt i32 %381, %conv2784
  br i1 %cmp2791.not, label %if.end2812, label %if.then2793

if.then2793:                                      ; preds = %if.then2773
  %mul2800 = shl nuw nsw i32 %381, 1
  store i32 %mul2800, ptr %newstate2790, align 4
  %382 = load ptr, ptr %states, align 8
  %arrayidx2803 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %382, i64 %idxprom2701
  %trans2804 = getelementptr inbounds nuw i8, ptr %arrayidx2803, i64 8
  %383 = load ptr, ptr %trans2804, align 8
  %conv2805 = zext nneg i32 %mul2800 to i64
  %mul2806 = shl nuw nsw i64 %conv2805, 3
  %call2807 = call ptr @Perl_safesysrealloc(ptr noundef %383, i64 noundef %mul2806) #9
  %384 = load ptr, ptr %states, align 8
  %arrayidx2810 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %384, i64 %idxprom2701
  %trans2811 = getelementptr inbounds nuw i8, ptr %arrayidx2810, i64 8
  store ptr %call2807, ptr %trans2811, align 8
  br label %if.end2812

if.end2812:                                       ; preds = %if.then2793, %if.then2773
  %385 = load ptr, ptr %states, align 8
  %arrayidx2815 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %385, i64 %idxprom2701
  %trans2816 = getelementptr inbounds nuw i8, ptr %arrayidx2815, i64 8
  %386 = load ptr, ptr %trans2816, align 8
  %387 = load i16, ptr %386, align 4
  %idxprom2823 = zext i16 %387 to i64
  %arrayidx2824 = getelementptr inbounds nuw %struct._reg_trie_trans_list_elem, ptr %386, i64 %idxprom2823
  store i16 %dec2699, ptr %arrayidx2824, align 4
  %388 = load ptr, ptr %states, align 8
  %arrayidx2828 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %388, i64 %idxprom2701
  %trans2829 = getelementptr inbounds nuw i8, ptr %arrayidx2828, i64 8
  %389 = load ptr, ptr %trans2829, align 8
  %390 = load i16, ptr %389, align 4
  %idxprom2836 = zext i16 %390 to i64
  %arrayidx2837 = getelementptr inbounds nuw %struct._reg_trie_trans_list_elem, ptr %389, i64 %idxprom2836
  %newstate2838 = getelementptr inbounds nuw i8, ptr %arrayidx2837, i64 4
  store i32 %next_alloc.15463, ptr %newstate2838, align 4
  %391 = load ptr, ptr %states, align 8
  %arrayidx2841 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %391, i64 %idxprom2701
  %trans2842 = getelementptr inbounds nuw i8, ptr %arrayidx2841, i64 8
  %392 = load ptr, ptr %trans2842, align 8
  %393 = load i16, ptr %392, align 4
  %inc2845 = add i16 %393, 1
  store i16 %inc2845, ptr %392, align 4
  %inc2848 = add i64 %transcount.15461, 1
  br label %for.inc2852

if.else2850:                                      ; preds = %if.end2695, %if.else2676
  %394 = load i64, ptr %uvc, align 8
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.224, i64 noundef %394) #9
  br label %for.inc2852

for.inc2852:                                      ; preds = %if.else2850, %if.end2812, %for.end2771
  %state.1 = phi i32 [ %state.05454, %if.else2850 ], [ %377, %for.end2771 ], [ %next_alloc.15463, %if.end2812 ]
  %transcount.3 = phi i64 [ %transcount.15461, %if.else2850 ], [ %transcount.15461, %for.end2771 ], [ %inc2848, %if.end2812 ]
  %next_alloc.3 = phi i32 [ %next_alloc.15463, %if.else2850 ], [ %next_alloc.15463, %for.end2771 ], [ %inc2774, %if.end2812 ]
  %395 = load i64, ptr %len, align 8
  %add.ptr2853 = getelementptr inbounds nuw i8, ptr %uc2601.25456, i64 %395
  %cmp2639 = icmp ult ptr %add.ptr2853, %e2604.1
  br i1 %cmp2639, label %do.body2642, label %do.body2856.loopexit, !llvm.loop !4

do.body2856.loopexit:                             ; preds = %for.inc2852
  %state.1.lcssa = phi i32 [ %state.1, %for.inc2852 ]
  %transcount.3.lcssa = phi i64 [ %transcount.3, %for.inc2852 ]
  %next_alloc.3.lcssa = phi i32 [ %next_alloc.3, %for.inc2852 ]
  %inc2643.lcssa = phi i32 [ %inc2643, %for.inc2852 ]
  br label %do.body2856

do.body2856:                                      ; preds = %do.body2856.loopexit, %for.cond2638.preheader
  %state.0.lcssa = phi i32 [ 1, %for.cond2638.preheader ], [ %state.1.lcssa, %do.body2856.loopexit ]
  %wordlen2609.0.lcssa = phi i32 [ 0, %for.cond2638.preheader ], [ %inc2643.lcssa, %do.body2856.loopexit ]
  %transcount.1.lcssa = phi i64 [ %transcount.05470, %for.cond2638.preheader ], [ %transcount.3.lcssa, %do.body2856.loopexit ]
  %next_alloc.1.lcssa = phi i32 [ %next_alloc.05473, %for.cond2638.preheader ], [ %next_alloc.3.lcssa, %do.body2856.loopexit ]
  %396 = load ptr, ptr %states, align 8
  %idxprom2858 = zext i32 %state.0.lcssa to i64
  %arrayidx2859 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %396, i64 %idxprom2858
  %397 = load i16, ptr %arrayidx2859, align 8
  %tobool.not.i5068 = icmp eq ptr %noper2599.1, null
  br i1 %tobool.not.i5068, label %Perl_regnext.exit5090, label %if.end.i5069

if.end.i5069:                                     ; preds = %do.body2856, %do.body2856.thread
  %398 = phi i16 [ %353, %do.body2856.thread ], [ %397, %do.body2856 ]
  %idxprom28585367 = phi i64 [ 1, %do.body2856.thread ], [ %idxprom2858, %do.body2856 ]
  %next_alloc.45365 = phi i32 [ %next_alloc.05473, %do.body2856.thread ], [ %next_alloc.1.lcssa, %do.body2856 ]
  %transcount.45363 = phi i64 [ %transcount.05470, %do.body2856.thread ], [ %transcount.1.lcssa, %do.body2856 ]
  %wordlen2609.15361 = phi i32 [ 0, %do.body2856.thread ], [ %wordlen2609.0.lcssa, %do.body2856 ]
  %state.25359 = phi i32 [ 1, %do.body2856.thread ], [ %state.0.lcssa, %do.body2856 ]
  %399 = load i8, ptr %type2633, align 1
  %cmp.i5071 = icmp ugt i8 %399, 93
  br i1 %cmp.i5071, label %if.then2.i5088, label %if.end5.i5072

if.then2.i5088:                                   ; preds = %if.end.i5069
  %conv.i5089 = zext i8 %399 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.204, i32 noundef %conv.i5089, i32 noundef 93) #9
  br label %if.end5.i5072

if.end5.i5072:                                    ; preds = %if.then2.i5088, %if.end.i5069
  %400 = load i8, ptr %type2633, align 1
  %idxprom.i5073 = zext i8 %400 to i64
  %arrayidx.i5074 = getelementptr inbounds nuw i8, ptr @reg_off_by_arg, i64 %idxprom.i5073
  %401 = load i8, ptr %arrayidx.i5074, align 1
  %tobool8.not.i5075 = icmp eq i8 %401, 0
  br i1 %tobool8.not.i5075, label %cond.false.i5085, label %cond.true.i5076

cond.true.i5076:                                  ; preds = %if.end5.i5072
  %arg1.i5077 = getelementptr inbounds nuw i8, ptr %noper2599.1, i64 4
  %402 = load i32, ptr %arg1.i5077, align 4
  br label %cond.end.i5078

cond.false.i5085:                                 ; preds = %if.end5.i5072
  %next_off.i5086 = getelementptr inbounds nuw i8, ptr %noper2599.1, i64 2
  %403 = load i16, ptr %next_off.i5086, align 2
  %conv9.i5087 = zext i16 %403 to i32
  br label %cond.end.i5078

cond.end.i5078:                                   ; preds = %cond.false.i5085, %cond.true.i5076
  %cond.i5079 = phi i32 [ %402, %cond.true.i5076 ], [ %conv9.i5087, %cond.false.i5085 ]
  %cmp10.i5080 = icmp eq i32 %cond.i5079, 0
  br i1 %cmp10.i5080, label %Perl_regnext.exit5090, label %if.end13.i5081

if.end13.i5081:                                   ; preds = %cond.end.i5078
  %idx.ext.i5082 = sext i32 %cond.i5079 to i64
  %add.ptr.i5083 = getelementptr inbounds %struct.regnode, ptr %noper2599.1, i64 %idx.ext.i5082
  br label %Perl_regnext.exit5090

Perl_regnext.exit5090:                            ; preds = %if.end13.i5081, %cond.end.i5078, %do.body2856
  %404 = phi i16 [ %398, %if.end13.i5081 ], [ %397, %do.body2856 ], [ %398, %cond.end.i5078 ]
  %idxprom28585368 = phi i64 [ %idxprom28585367, %if.end13.i5081 ], [ %idxprom2858, %do.body2856 ], [ %idxprom28585367, %cond.end.i5078 ]
  %next_alloc.45366 = phi i32 [ %next_alloc.45365, %if.end13.i5081 ], [ %next_alloc.1.lcssa, %do.body2856 ], [ %next_alloc.45365, %cond.end.i5078 ]
  %transcount.45364 = phi i64 [ %transcount.45363, %if.end13.i5081 ], [ %transcount.1.lcssa, %do.body2856 ], [ %transcount.45363, %cond.end.i5078 ]
  %wordlen2609.15362 = phi i32 [ %wordlen2609.15361, %if.end13.i5081 ], [ %wordlen2609.0.lcssa, %do.body2856 ], [ %wordlen2609.15361, %cond.end.i5078 ]
  %state.25360 = phi i32 [ %state.25359, %if.end13.i5081 ], [ %state.0.lcssa, %do.body2856 ], [ %state.25359, %cond.end.i5078 ]
  %retval.0.i5084 = phi ptr [ %add.ptr.i5083, %if.end13.i5081 ], [ null, %do.body2856 ], [ null, %cond.end.i5078 ]
  %inc2862 = add i16 %curword.05474, 1
  %405 = load ptr, ptr %wordinfo, align 8
  %idxprom2864 = zext i16 %inc2862 to i64
  %arrayidx2865 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %405, i64 %idxprom2864
  store i16 0, ptr %arrayidx2865, align 4
  %406 = load ptr, ptr %wordinfo, align 8
  %arrayidx2868 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %406, i64 %idxprom2864
  %len2869 = getelementptr inbounds nuw i8, ptr %arrayidx2868, i64 4
  store i32 %wordlen2609.15362, ptr %len2869, align 4
  %407 = load ptr, ptr %wordinfo, align 8
  %arrayidx2872 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %407, i64 %idxprom2864
  %accept = getelementptr inbounds nuw i8, ptr %arrayidx2872, i64 8
  store i32 %state.25360, ptr %accept, align 4
  %cmp2873 = icmp ult ptr %retval.0.i5084, %tail
  br i1 %cmp2873, label %if.then2875, label %if.end2897

if.then2875:                                      ; preds = %Perl_regnext.exit5090
  %408 = load ptr, ptr %jump, align 8
  %tobool2876.not = icmp eq ptr %408, null
  br i1 %tobool2876.not, label %if.then2877, label %if.end2882

if.then2877:                                      ; preds = %if.then2875
  %call2880 = call noalias ptr @calloc(i64 noundef %conv2879, i64 noundef 2) #10
  store ptr %call2880, ptr %jump, align 8
  br label %if.end2882

if.end2882:                                       ; preds = %if.then2877, %if.then2875
  %sub.ptr.lhs.cast2883 = ptrtoint ptr %retval.0.i5084 to i64
  %sub.ptr.sub2885 = sub i64 %sub.ptr.lhs.cast2883, %sub.ptr.rhs.cast2884
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub2885, 2
  %conv2886 = trunc i64 %sub.ptr.div to i16
  %409 = load ptr, ptr %jump, align 8
  %arrayidx2889 = getelementptr inbounds nuw i16, ptr %409, i64 %idxprom2864
  store i16 %conv2886, ptr %arrayidx2889, align 2
  %tobool2890.not = icmp eq ptr %jumper.05472, null
  %spec.select5007 = select i1 %tobool2890.not, ptr %retval.0.i5084, ptr %jumper.05472
  %tobool2893.not = icmp eq ptr %nextbranch.05471, null
  br i1 %tobool2893.not, label %if.then2894, label %if.end2897

if.then2894:                                      ; preds = %if.end2882
  %tobool.not.i5091 = icmp eq ptr %cur.15475, null
  br i1 %tobool.not.i5091, label %if.end2897, label %if.end.i5092

if.end.i5092:                                     ; preds = %if.then2894
  %type.i5093 = getelementptr inbounds nuw i8, ptr %cur.15475, i64 1
  %410 = load i8, ptr %type.i5093, align 1
  %cmp.i5094 = icmp ugt i8 %410, 93
  br i1 %cmp.i5094, label %if.then2.i5111, label %if.end5.i5095

if.then2.i5111:                                   ; preds = %if.end.i5092
  %conv.i5112 = zext i8 %410 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.204, i32 noundef %conv.i5112, i32 noundef 93) #9
  br label %if.end5.i5095

if.end5.i5095:                                    ; preds = %if.then2.i5111, %if.end.i5092
  %411 = load i8, ptr %type.i5093, align 1
  %idxprom.i5096 = zext i8 %411 to i64
  %arrayidx.i5097 = getelementptr inbounds nuw i8, ptr @reg_off_by_arg, i64 %idxprom.i5096
  %412 = load i8, ptr %arrayidx.i5097, align 1
  %tobool8.not.i5098 = icmp eq i8 %412, 0
  br i1 %tobool8.not.i5098, label %cond.false.i5108, label %cond.true.i5099

cond.true.i5099:                                  ; preds = %if.end5.i5095
  %413 = load i32, ptr %add.ptr2600, align 4
  br label %cond.end.i5101

cond.false.i5108:                                 ; preds = %if.end5.i5095
  %next_off.i5109 = getelementptr inbounds nuw i8, ptr %cur.15475, i64 2
  %414 = load i16, ptr %next_off.i5109, align 2
  %conv9.i5110 = zext i16 %414 to i32
  br label %cond.end.i5101

cond.end.i5101:                                   ; preds = %cond.false.i5108, %cond.true.i5099
  %cond.i5102 = phi i32 [ %413, %cond.true.i5099 ], [ %conv9.i5110, %cond.false.i5108 ]
  %cmp10.i5103 = icmp eq i32 %cond.i5102, 0
  br i1 %cmp10.i5103, label %if.end2897, label %if.end13.i5104

if.end13.i5104:                                   ; preds = %cond.end.i5101
  %idx.ext.i5105 = sext i32 %cond.i5102 to i64
  %add.ptr.i5106 = getelementptr inbounds %struct.regnode, ptr %cur.15475, i64 %idx.ext.i5105
  br label %if.end2897

if.end2897:                                       ; preds = %if.end13.i5104, %cond.end.i5101, %if.then2894, %if.end2882, %Perl_regnext.exit5090
  %nextbranch.1 = phi ptr [ %nextbranch.05471, %if.end2882 ], [ %nextbranch.05471, %Perl_regnext.exit5090 ], [ %add.ptr.i5106, %if.end13.i5104 ], [ null, %if.then2894 ], [ null, %cond.end.i5101 ]
  %jumper.2 = phi ptr [ %spec.select5007, %if.end2882 ], [ %jumper.05472, %Perl_regnext.exit5090 ], [ %spec.select5007, %if.end13.i5104 ], [ %spec.select5007, %if.then2894 ], [ %spec.select5007, %cond.end.i5101 ]
  %tobool2898.not = icmp eq i16 %404, 0
  br i1 %tobool2898.not, label %if.else2912, label %if.then2899

if.then2899:                                      ; preds = %if.end2897
  %415 = load ptr, ptr %wordinfo, align 8
  %idxprom2901 = zext i16 %404 to i64
  %arrayidx2902 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %415, i64 %idxprom2901
  %416 = load i16, ptr %arrayidx2902, align 4
  %arrayidx2906 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %415, i64 %idxprom2864
  store i16 %416, ptr %arrayidx2906, align 4
  %417 = load ptr, ptr %wordinfo, align 8
  %arrayidx2910 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %417, i64 %idxprom2901
  store i16 %inc2862, ptr %arrayidx2910, align 4
  br label %if.end2917

if.else2912:                                      ; preds = %if.end2897
  %418 = load ptr, ptr %states, align 8
  %arrayidx2915 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %418, i64 %idxprom28585368
  store i16 %inc2862, ptr %arrayidx2915, align 8
  br label %if.end2917

if.end2917:                                       ; preds = %if.else2912, %if.then2899
  %tobool.not.i5114 = icmp eq ptr %cur.15475, null
  br i1 %tobool.not.i5114, label %Perl_regnext.exit5136, label %if.end.i5115

if.end.i5115:                                     ; preds = %if.end2917
  %type.i5116 = getelementptr inbounds nuw i8, ptr %cur.15475, i64 1
  %419 = load i8, ptr %type.i5116, align 1
  %cmp.i5117 = icmp ugt i8 %419, 93
  br i1 %cmp.i5117, label %if.then2.i5134, label %if.end5.i5118

if.then2.i5134:                                   ; preds = %if.end.i5115
  %conv.i5135 = zext i8 %419 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.204, i32 noundef %conv.i5135, i32 noundef 93) #9
  br label %if.end5.i5118

if.end5.i5118:                                    ; preds = %if.then2.i5134, %if.end.i5115
  %420 = load i8, ptr %type.i5116, align 1
  %idxprom.i5119 = zext i8 %420 to i64
  %arrayidx.i5120 = getelementptr inbounds nuw i8, ptr @reg_off_by_arg, i64 %idxprom.i5119
  %421 = load i8, ptr %arrayidx.i5120, align 1
  %tobool8.not.i5121 = icmp eq i8 %421, 0
  br i1 %tobool8.not.i5121, label %cond.false.i5131, label %cond.true.i5122

cond.true.i5122:                                  ; preds = %if.end5.i5118
  %422 = load i32, ptr %add.ptr2600, align 4
  br label %cond.end.i5124

cond.false.i5131:                                 ; preds = %if.end5.i5118
  %next_off.i5132 = getelementptr inbounds nuw i8, ptr %cur.15475, i64 2
  %423 = load i16, ptr %next_off.i5132, align 2
  %conv9.i5133 = zext i16 %423 to i32
  br label %cond.end.i5124

cond.end.i5124:                                   ; preds = %cond.false.i5131, %cond.true.i5122
  %cond.i5125 = phi i32 [ %422, %cond.true.i5122 ], [ %conv9.i5133, %cond.false.i5131 ]
  %cmp10.i5126 = icmp eq i32 %cond.i5125, 0
  br i1 %cmp10.i5126, label %Perl_regnext.exit5136, label %if.end13.i5127

if.end13.i5127:                                   ; preds = %cond.end.i5124
  %idx.ext.i5128 = sext i32 %cond.i5125 to i64
  %add.ptr.i5129 = getelementptr inbounds %struct.regnode, ptr %cur.15475, i64 %idx.ext.i5128
  br label %Perl_regnext.exit5136

Perl_regnext.exit5136:                            ; preds = %if.end13.i5127, %cond.end.i5124, %if.end2917
  %retval.0.i5130 = phi ptr [ %add.ptr.i5129, %if.end13.i5127 ], [ null, %if.end2917 ], [ null, %cond.end.i5124 ]
  %cmp2596 = icmp ult ptr %retval.0.i5130, %last
  br i1 %cmp2596, label %for.body2598, label %for.end2922.loopexit, !llvm.loop !5

for.end2922.loopexit:                             ; preds = %Perl_regnext.exit5136
  %nextbranch.1.lcssa = phi ptr [ %nextbranch.1, %Perl_regnext.exit5136 ]
  %jumper.2.lcssa = phi ptr [ %jumper.2, %Perl_regnext.exit5136 ]
  %next_alloc.45366.lcssa = phi i32 [ %next_alloc.45366, %Perl_regnext.exit5136 ]
  %transcount.45364.lcssa = phi i64 [ %transcount.45364, %Perl_regnext.exit5136 ]
  br label %for.end2922

for.end2922:                                      ; preds = %for.end2922.loopexit, %if.then2578
  %transcount.0.lcssa = phi i64 [ 1, %if.then2578 ], [ %transcount.45364.lcssa, %for.end2922.loopexit ]
  %nextbranch.0.lcssa = phi ptr [ null, %if.then2578 ], [ %nextbranch.1.lcssa, %for.end2922.loopexit ]
  %jumper.0.lcssa = phi ptr [ null, %if.then2578 ], [ %jumper.2.lcssa, %for.end2922.loopexit ]
  %next_alloc.0.lcssa = phi i32 [ 2, %if.then2578 ], [ %next_alloc.45366.lcssa, %for.end2922.loopexit ]
  %statecount = getelementptr inbounds nuw i8, ptr %call4, i64 84
  store i32 %next_alloc.0.lcssa, ptr %statecount, align 4
  %424 = load ptr, ptr %states, align 8
  %conv2924 = zext i32 %next_alloc.0.lcssa to i64
  %mul2925 = shl nuw nsw i64 %conv2924, 4
  %call2926 = call ptr @realloc(ptr noundef %424, i64 noundef %mul2925) #11
  store ptr %call2926, ptr %states, align 8
  %call2928 = call noalias ptr @calloc(i64 noundef %transcount.0.lcssa, i64 noundef 8) #10
  %trans2929 = getelementptr inbounds nuw i8, ptr %call4, i64 24
  store ptr %call2928, ptr %trans2929, align 8
  %cmp29325491 = icmp ugt i32 %next_alloc.0.lcssa, 1
  br i1 %cmp29325491, label %for.body2934.preheader, label %for.end3142

for.body2934.preheader:                           ; preds = %for.end2922
  %wide.trip.count5553 = zext i32 %next_alloc.0.lcssa to i64
  br label %for.body2934

for.body2934:                                     ; preds = %if.end3135, %for.body2934.preheader
  %indvars.iv5550 = phi i64 [ 1, %for.body2934.preheader ], [ %indvars.iv.next5551, %if.end3135 ]
  %zp.05496 = phi i32 [ %zp.4, %if.end3135 ], [ 0, %for.body2934.preheader ]
  %tp.05495 = phi i32 [ %tp.3, %if.end3135 ], [ 0, %for.body2934.preheader ]
  %transcount.55492 = phi i64 [ %transcount.7, %if.end3135 ], [ %transcount.0.lcssa, %for.body2934.preheader ]
  %425 = load ptr, ptr %states, align 8
  %arrayidx2937 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %425, i64 %indvars.iv5550
  %trans2938 = getelementptr inbounds nuw i8, ptr %arrayidx2937, i64 8
  %426 = load ptr, ptr %trans2938, align 8
  %tobool2939.not = icmp eq ptr %426, null
  br i1 %tobool2939.not, label %if.end3135, label %if.then2940

if.then2940:                                      ; preds = %for.body2934
  %arrayidx2945 = getelementptr inbounds nuw i8, ptr %426, i64 8
  %427 = load i16, ptr %arrayidx2945, align 4
  %428 = load i16, ptr %426, align 4
  %cmp2966.not.not5481 = icmp ugt i16 %428, 2
  br i1 %cmp2966.not.not5481, label %for.body2968.preheader, label %for.end2992

for.body2968.preheader:                           ; preds = %if.then2940
  %wide.trip.count = zext i16 %428 to i64
  br label %for.body2968

for.body2968:                                     ; preds = %for.body2968, %for.body2968.preheader
  %indvars.iv5542 = phi i64 [ 2, %for.body2968.preheader ], [ %indvars.iv.next5543, %for.body2968 ]
  %maxid.05483 = phi i16 [ %maxid.1, %for.body2968 ], [ %427, %for.body2968.preheader ]
  %minid.05482 = phi i16 [ %minid.1, %for.body2968 ], [ %427, %for.body2968.preheader ]
  %arrayidx2975 = getelementptr inbounds nuw %struct._reg_trie_trans_list_elem, ptr %426, i64 %indvars.iv5542
  %429 = load i16, ptr %arrayidx2975, align 4
  %cmp2979 = icmp ult i16 %429, %minid.05482
  %spec.select5008 = call i16 @llvm.umax.i16(i16 %429, i16 %maxid.05483)
  %minid.1 = call i16 @llvm.umin.i16(i16 %429, i16 %minid.05482)
  %maxid.1 = select i1 %cmp2979, i16 %maxid.05483, i16 %spec.select5008
  %indvars.iv.next5543 = add nuw nsw i64 %indvars.iv5542, 1
  %exitcond5545 = icmp ne i64 %indvars.iv.next5543, %wide.trip.count
  br i1 %exitcond5545, label %for.body2968, label %for.end2992.loopexit, !llvm.loop !6

for.end2992.loopexit:                             ; preds = %for.body2968
  %minid.1.lcssa = phi i16 [ %minid.1, %for.body2968 ]
  %maxid.1.lcssa = phi i16 [ %maxid.1, %for.body2968 ]
  br label %for.end2992

for.end2992:                                      ; preds = %for.end2992.loopexit, %if.then2940
  %minid.0.lcssa = phi i16 [ %427, %if.then2940 ], [ %minid.1.lcssa, %for.end2992.loopexit ]
  %maxid.0.lcssa = phi i16 [ %427, %if.then2940 ], [ %maxid.1.lcssa, %for.end2992.loopexit ]
  %conv2993 = zext i16 %maxid.0.lcssa to i32
  %conv2995 = zext i16 %minid.0.lcssa to i32
  %add2994 = add i32 %tp.05495, 1
  %sub2996 = sub i32 %add2994, %conv2995
  %add2997 = add i32 %sub2996, %conv2993
  %conv2998 = zext i32 %add2997 to i64
  %cmp2999 = icmp ult i64 %transcount.55492, %conv2998
  br i1 %cmp2999, label %if.then3001, label %if.end3011

if.then3001:                                      ; preds = %for.end2992
  %mul3002 = shl nuw nsw i64 %transcount.55492, 1
  %430 = load ptr, ptr %trans2929, align 8
  %mul3004 = shl nuw nsw i64 %transcount.55492, 4
  %call3005 = call ptr @realloc(ptr noundef %430, i64 noundef %mul3004) #11
  store ptr %call3005, ptr %trans2929, align 8
  %add.ptr3008 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %call3005, i64 %transcount.55492
  %mul3010 = shl nuw nsw i64 %transcount.55492, 3
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr3008, i8 0, i64 %mul3010, i1 false)
  br label %if.end3011

if.end3011:                                       ; preds = %if.then3001, %for.end2992
  %transcount.6 = phi i64 [ %mul3002, %if.then3001 ], [ %transcount.55492, %for.end2992 ]
  %431 = load i16, ptr %uniquecharcount2561, align 8
  %conv3013 = zext i16 %431 to i32
  %add3014 = sub i32 %tp.05495, %conv2995
  %sub3016 = add i32 %add3014, %conv3013
  %cmp3019 = icmp eq i16 %maxid.0.lcssa, %minid.0.lcssa
  br i1 %cmp3019, label %for.cond3022.preheader, label %for.cond3073.preheader

for.cond3073.preheader:                           ; preds = %if.end3011
  br label %for.cond3073

for.cond3022.preheader:                           ; preds = %if.end3011
  %cmp3023.not5489 = icmp ult i32 %zp.05496, %tp.05495
  br i1 %cmp3023.not5489, label %for.body3025.lr.ph, label %if.then3055

for.body3025.lr.ph:                               ; preds = %for.cond3022.preheader
  %432 = load ptr, ptr %trans2929, align 8
  %433 = zext i32 %zp.05496 to i64
  br label %for.body3025

for.body3025:                                     ; preds = %for.inc3051, %for.body3025.lr.ph
  %indvars.iv5546 = phi i64 [ %433, %for.body3025.lr.ph ], [ %indvars.iv.next5547, %for.inc3051 ]
  %arrayidx3028 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %432, i64 %indvars.iv5546
  %434 = load i32, ptr %arrayidx3028, align 4
  %tobool3029.not = icmp eq i32 %434, 0
  br i1 %tobool3029.not, label %for.end3053.thread, label %for.inc3051

for.end3053.thread:                               ; preds = %for.body3025
  %zp.15490.lcssa.wide = phi i64 [ %indvars.iv5546, %for.body3025 ]
  %idxprom3027.lcssa = phi i64 [ %indvars.iv5546, %for.body3025 ]
  %435 = trunc nuw i64 %zp.15490.lcssa.wide to i32
  %arrayidx3028.le = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %432, i64 %idxprom3027.lcssa
  %add3033 = sub nsw i32 %conv3013, %conv2995
  %sub3035 = add i32 %add3033, %435
  %436 = load ptr, ptr %states, align 8
  %arrayidx3038 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %436, i64 %indvars.iv5550
  %trans3039 = getelementptr inbounds nuw i8, ptr %arrayidx3038, i64 8
  %437 = load ptr, ptr %trans3039, align 8
  %newstate3041 = getelementptr inbounds nuw i8, ptr %437, i64 12
  %438 = load i32, ptr %newstate3041, align 4
  store i32 %438, ptr %arrayidx3028.le, align 4
  %439 = load ptr, ptr %trans2929, align 8
  %arrayidx3048 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %439, i64 %idxprom3027.lcssa
  %check3049 = getelementptr inbounds nuw i8, ptr %arrayidx3048, i64 4
  %440 = trunc nuw i64 %indvars.iv5550 to i32
  store i32 %440, ptr %check3049, align 4
  br label %if.end3130

for.inc3051:                                      ; preds = %for.body3025
  %indvars.iv.next5547 = add nuw nsw i64 %indvars.iv5546, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next5547 to i32
  %exitcond5549 = icmp ne i32 %lftr.wideiv, %tp.05495
  br i1 %exitcond5549, label %for.body3025, label %if.then3055.loopexit, !llvm.loop !7

if.then3055.loopexit:                             ; preds = %for.inc3051
  br label %if.then3055

if.then3055:                                      ; preds = %if.then3055.loopexit, %for.cond3022.preheader
  %441 = load ptr, ptr %states, align 8
  %arrayidx3058 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %441, i64 %indvars.iv5550
  %trans3059 = getelementptr inbounds nuw i8, ptr %arrayidx3058, i64 8
  %442 = load ptr, ptr %trans3059, align 8
  %newstate3061 = getelementptr inbounds nuw i8, ptr %442, i64 12
  %443 = load i32, ptr %newstate3061, align 4
  %444 = load ptr, ptr %trans2929, align 8
  %idxprom3063 = zext i32 %tp.05495 to i64
  %arrayidx3064 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %444, i64 %idxprom3063
  store i32 %443, ptr %arrayidx3064, align 4
  %445 = load ptr, ptr %trans2929, align 8
  %arrayidx3068 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %445, i64 %idxprom3063
  %check3069 = getelementptr inbounds nuw i8, ptr %arrayidx3068, i64 4
  %446 = trunc nuw i64 %indvars.iv5550 to i32
  store i32 %446, ptr %check3069, align 4
  %inc3070 = add i32 %tp.05495, 1
  br label %if.end3130

for.cond3073:                                     ; preds = %for.body3094, %for.cond3073.preheader
  %idx.1 = phi i16 [ %inc3123, %for.body3094 ], [ 1, %for.cond3073.preheader ]
  %conv3074 = zext i16 %idx.1 to i32
  %447 = load ptr, ptr %states, align 8
  %arrayidx3077 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %447, i64 %indvars.iv5550
  %trans3078 = getelementptr inbounds nuw i8, ptr %arrayidx3077, i64 8
  %448 = load ptr, ptr %trans3078, align 8
  %tobool3079.not = icmp eq ptr %448, null
  br i1 %tobool3079.not, label %cond.end3090, label %cond.true3080

cond.true3080:                                    ; preds = %for.cond3073
  %449 = load i16, ptr %448, align 4
  %conv3087 = zext i16 %449 to i32
  %sub3088 = add nsw i32 %conv3087, -1
  br label %cond.end3090

cond.end3090:                                     ; preds = %cond.true3080, %for.cond3073
  %cond3091 = phi i32 [ %sub3088, %cond.true3080 ], [ 0, %for.cond3073 ]
  %cmp3092.not = icmp slt i32 %cond3091, %conv3074
  br i1 %cmp3092.not, label %for.end3124, label %for.body3094

for.body3094:                                     ; preds = %cond.end3090
  %450 = load i16, ptr %uniquecharcount2561, align 8
  %conv3096 = zext i16 %450 to i32
  %sub3097 = sub i32 %sub3016, %conv3096
  %idxprom3102 = zext i16 %idx.1 to i64
  %arrayidx3103 = getelementptr inbounds nuw %struct._reg_trie_trans_list_elem, ptr %448, i64 %idxprom3102
  %451 = load i16, ptr %arrayidx3103, align 4
  %conv3105 = zext i16 %451 to i32
  %add3106 = add i32 %sub3097, %conv3105
  %newstate3113 = getelementptr inbounds nuw i8, ptr %arrayidx3103, i64 4
  %452 = load i32, ptr %newstate3113, align 4
  %453 = load ptr, ptr %trans2929, align 8
  %idxprom3115 = zext i32 %add3106 to i64
  %arrayidx3116 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %453, i64 %idxprom3115
  store i32 %452, ptr %arrayidx3116, align 4
  %454 = load ptr, ptr %trans2929, align 8
  %arrayidx3120 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %454, i64 %idxprom3115
  %check3121 = getelementptr inbounds nuw i8, ptr %arrayidx3120, i64 4
  %455 = trunc nuw i64 %indvars.iv5550 to i32
  store i32 %455, ptr %check3121, align 4
  %inc3123 = add i16 %idx.1, 1
  br label %for.cond3073, !llvm.loop !8

for.end3124:                                      ; preds = %cond.end3090
  %sub3127 = add i32 %tp.05495, 1
  %add3128 = sub i32 %sub3127, %conv2995
  %add3129 = add i32 %add3128, %conv2993
  br label %if.end3130

if.end3130:                                       ; preds = %for.end3124, %if.then3055, %for.end3053.thread
  %tp.2 = phi i32 [ %add3129, %for.end3124 ], [ %inc3070, %if.then3055 ], [ %tp.05495, %for.end3053.thread ]
  %zp.3 = phi i32 [ %zp.05496, %for.end3124 ], [ %inc3070, %if.then3055 ], [ %435, %for.end3053.thread ]
  %base.1 = phi i32 [ %sub3016, %for.end3124 ], [ %sub3016, %if.then3055 ], [ %sub3035, %for.end3053.thread ]
  %456 = load ptr, ptr %states, align 8
  %arrayidx3133 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %456, i64 %indvars.iv5550
  %trans3134 = getelementptr inbounds nuw i8, ptr %arrayidx3133, i64 8
  %457 = load ptr, ptr %trans3134, align 8
  call void @Perl_safesysfree(ptr noundef %457) #9
  br label %if.end3135

if.end3135:                                       ; preds = %if.end3130, %for.body2934
  %transcount.7 = phi i64 [ %transcount.6, %if.end3130 ], [ %transcount.55492, %for.body2934 ]
  %tp.3 = phi i32 [ %tp.2, %if.end3130 ], [ %tp.05495, %for.body2934 ]
  %zp.4 = phi i32 [ %zp.3, %if.end3130 ], [ %zp.05496, %for.body2934 ]
  %base.2 = phi i32 [ %base.1, %if.end3130 ], [ 0, %for.body2934 ]
  %458 = load ptr, ptr %states, align 8
  %arrayidx3138 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %458, i64 %indvars.iv5550
  %trans3139 = getelementptr inbounds nuw i8, ptr %arrayidx3138, i64 8
  store i32 %base.2, ptr %trans3139, align 8
  %indvars.iv.next5551 = add nuw nsw i64 %indvars.iv5550, 1
  %exitcond5554 = icmp ne i64 %indvars.iv.next5551, %wide.trip.count5553
  br i1 %exitcond5554, label %for.body2934, label %for.end3142.loopexit, !llvm.loop !9

for.end3142.loopexit:                             ; preds = %if.end3135
  %tp.3.lcssa = phi i32 [ %tp.3, %if.end3135 ]
  br label %for.end3142

for.end3142:                                      ; preds = %for.end3142.loopexit, %for.end2922
  %tp.0.lcssa = phi i32 [ 0, %for.end2922 ], [ %tp.3.lcssa, %for.end3142.loopexit ]
  %add3143 = add i32 %tp.0.lcssa, 1
  %lasttrans = getelementptr inbounds nuw i8, ptr %call4, i64 4
  store i32 %add3143, ptr %lasttrans, align 4
  br label %if.end3578

if.else3144:                                      ; preds = %cond.end2574
  %459 = load i16, ptr %uniquecharcount2561, align 8
  %conv3147 = zext i16 %459 to i64
  %mul3148 = mul i64 %add2560, %conv3147
  %add3149 = add i64 %mul3148, 1
  %call3150 = call noalias ptr @calloc(i64 noundef %add3149, i64 noundef 8) #10
  %trans3151 = getelementptr inbounds nuw i8, ptr %call4, i64 24
  store ptr %call3150, ptr %trans3151, align 8
  %call3153 = call noalias ptr @calloc(i64 noundef %add2557, i64 noundef 16) #10
  %states3154 = getelementptr inbounds nuw i8, ptr %call4, i64 16
  store ptr %call3153, ptr %states3154, align 8
  %conv3156 = zext i16 %459 to i32
  %add3157 = add nuw nsw i32 %conv3156, 1
  %cmp31595423 = icmp ult ptr %first, %last
  br i1 %cmp31595423, label %for.body3161.lr.ph, label %for.end3391

for.body3161.lr.ph:                               ; preds = %if.else3144
  %utf83209 = getelementptr inbounds nuw i8, ptr %pRExC_state, i64 216
  %cmp3216 = icmp eq ptr %folder.0, @PL_fold_latin1
  %jump3343 = getelementptr inbounds nuw i8, ptr %call4, i64 40
  %add3346 = add i32 %word_count, 1
  %conv3347 = zext i32 %add3346 to i64
  %sub.ptr.rhs.cast3352 = ptrtoint ptr %convert.0 to i64
  br label %for.body3161

for.body3161:                                     ; preds = %Perl_regnext.exit5228, %for.body3161.lr.ph
  %cur.25428 = phi ptr [ %first, %for.body3161.lr.ph ], [ %retval.0.i5222, %Perl_regnext.exit5228 ]
  %curword.15427 = phi i16 [ 0, %for.body3161.lr.ph ], [ %inc3327, %Perl_regnext.exit5228 ]
  %next_alloc.55426 = phi i32 [ %add3157, %for.body3161.lr.ph ], [ %next_alloc.9, %Perl_regnext.exit5228 ]
  %jumper.35425 = phi ptr [ null, %for.body3161.lr.ph ], [ %jumper.5, %Perl_regnext.exit5228 ]
  %nextbranch.25424 = phi ptr [ null, %for.body3161.lr.ph ], [ %nextbranch.3, %Perl_regnext.exit5228 ]
  %add.ptr3163 = getelementptr inbounds nuw i8, ptr %cur.25428, i64 4
  %string3165 = getelementptr inbounds nuw i8, ptr %cur.25428, i64 8
  %460 = load i8, ptr %add.ptr3163, align 2
  %idx.ext3170 = zext i8 %460 to i64
  %add.ptr3171 = getelementptr inbounds nuw i8, ptr %string3165, i64 %idx.ext3170
  %type3175 = getelementptr inbounds nuw i8, ptr %cur.25428, i64 5
  %461 = load i8, ptr %type3175, align 1
  %cmp3177 = icmp eq i8 %461, 40
  br i1 %cmp3177, label %if.then3179, label %if.end3197

if.then3179:                                      ; preds = %for.body3161
  %type.i5139 = getelementptr inbounds nuw i8, ptr %cur.25428, i64 5
  %462 = load i8, ptr %type.i5139, align 1
  %cmp.i5140 = icmp ugt i8 %462, 93
  br i1 %cmp.i5140, label %if.then2.i5157, label %if.end5.i5141

if.then2.i5157:                                   ; preds = %if.then3179
  %conv.i5158 = zext i8 %462 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.204, i32 noundef %conv.i5158, i32 noundef 93) #9
  br label %if.end5.i5141

if.end5.i5141:                                    ; preds = %if.then2.i5157, %if.then3179
  %463 = load i8, ptr %type.i5139, align 1
  %idxprom.i5142 = zext i8 %463 to i64
  %arrayidx.i5143 = getelementptr inbounds nuw i8, ptr @reg_off_by_arg, i64 %idxprom.i5142
  %464 = load i8, ptr %arrayidx.i5143, align 1
  %tobool8.not.i5144 = icmp eq i8 %464, 0
  br i1 %tobool8.not.i5144, label %cond.false.i5154, label %cond.true.i5145

cond.true.i5145:                                  ; preds = %if.end5.i5141
  %arg1.i5146 = getelementptr inbounds nuw i8, ptr %cur.25428, i64 8
  %465 = load i32, ptr %arg1.i5146, align 4
  br label %cond.end.i5147

cond.false.i5154:                                 ; preds = %if.end5.i5141
  %next_off.i5155 = getelementptr inbounds nuw i8, ptr %cur.25428, i64 6
  %466 = load i16, ptr %next_off.i5155, align 2
  %conv9.i5156 = zext i16 %466 to i32
  br label %cond.end.i5147

cond.end.i5147:                                   ; preds = %cond.false.i5154, %cond.true.i5145
  %cond.i5148 = phi i32 [ %465, %cond.true.i5145 ], [ %conv9.i5156, %cond.false.i5154 ]
  %cmp10.i5149 = icmp eq i32 %cond.i5148, 0
  %idx.ext.i5151 = sext i32 %cond.i5148 to i64
  %add.ptr.i5152 = getelementptr inbounds %struct.regnode, ptr %add.ptr3163, i64 %idx.ext.i5151
  %retval.0.i5153 = select i1 %cmp10.i5149, ptr null, ptr %add.ptr.i5152
  %cmp3182.not = icmp eq ptr %retval.0.i5153, %tail
  br i1 %cmp3182.not, label %if.end3197, label %land.lhs.true3184

land.lhs.true3184:                                ; preds = %cond.end.i5147
  %type3185 = getelementptr inbounds nuw i8, ptr %add.ptr.i5152, i64 1
  %467 = load i8, ptr %type3185, align 1
  %conv3186 = zext i8 %467 to i32
  %cmp3187 = icmp eq i32 %flags, %conv3186
  br i1 %cmp3187, label %if.then3189, label %if.end3197

if.then3189:                                      ; preds = %land.lhs.true3184
  %string3190 = getelementptr inbounds nuw i8, ptr %retval.0.i5153, i64 4
  %468 = load i8, ptr %add.ptr.i5152, align 2
  %idx.ext3194 = zext i8 %468 to i64
  %add.ptr3195 = getelementptr inbounds nuw i8, ptr %string3190, i64 %idx.ext3194
  br label %if.end3197

if.end3197:                                       ; preds = %if.then3189, %land.lhs.true3184, %cond.end.i5147, %for.body3161
  %noper3162.1 = phi ptr [ %add.ptr3163, %for.body3161 ], [ %retval.0.i5153, %if.then3189 ], [ %add.ptr3163, %land.lhs.true3184 ], [ %add.ptr3163, %cond.end.i5147 ]
  %uc3164.1 = phi ptr [ %string3165, %for.body3161 ], [ %string3190, %if.then3189 ], [ %string3165, %land.lhs.true3184 ], [ %string3165, %cond.end.i5147 ]
  %e3167.1 = phi ptr [ %add.ptr3171, %for.body3161 ], [ %add.ptr3195, %if.then3189 ], [ %add.ptr3171, %land.lhs.true3184 ], [ %add.ptr3171, %cond.end.i5147 ]
  %type3198 = getelementptr inbounds nuw i8, ptr %noper3162.1, i64 1
  %469 = load i8, ptr %type3198, align 1
  %cmp3200.not = icmp ne i8 %469, 40
  %cmp32045411 = icmp ult ptr %uc3164.1, %e3167.1
  %or.cond5521 = select i1 %cmp3200.not, i1 %cmp32045411, i1 false
  br i1 %or.cond5521, label %do.body3207.preheader, label %if.end3313

do.body3207.preheader:                            ; preds = %if.end3197
  br label %do.body3207

do.body3207:                                      ; preds = %for.inc3310, %do.body3207.preheader
  %next_alloc.65419 = phi i32 [ %next_alloc.8, %for.inc3310 ], [ %next_alloc.55426, %do.body3207.preheader ]
  %wordlen3174.05418 = phi i32 [ %inc3208, %for.inc3310 ], [ 0, %do.body3207.preheader ]
  %state3172.05417 = phi i32 [ %state3172.1, %for.inc3310 ], [ 1, %do.body3207.preheader ]
  %uc3164.25412 = phi ptr [ %add.ptr3311, %for.inc3310 ], [ %uc3164.1, %do.body3207.preheader ]
  %inc3208 = add i32 %wordlen3174.05418, 1
  %470 = load i32, ptr %utf83209, align 8
  %tobool3210.not = icmp eq i32 %470, 0
  br i1 %tobool3210.not, label %if.else3215, label %if.then3213

if.then3213:                                      ; preds = %do.body3207
  %call3214 = call i64 @Perl_valid_utf8_to_uvchr(ptr noundef %uc3164.25412, ptr noundef nonnull %len) #9
  store i64 %call3214, ptr %uvc, align 8
  br label %do.end3235

if.else3215:                                      ; preds = %do.body3207
  br i1 %cmp3216, label %if.then3218, label %do.end3235.thread

if.then3218:                                      ; preds = %if.else3215
  %471 = load i8, ptr %uc3164.25412, align 1
  %idxprom3219 = zext i8 %471 to i64
  %arrayidx3220 = getelementptr inbounds nuw i8, ptr @PL_latin1_lc, i64 %idxprom3219
  %472 = load i8, ptr %arrayidx3220, align 1
  %conv3222 = zext i8 %472 to i64
  %cmp3223 = icmp eq i8 %472, -75
  %spec.store.select3991 = select i1 %cmp3223, i64 956, i64 %conv3222
  store i64 %spec.store.select3991, ptr %uvc, align 8
  store i64 1, ptr %len, align 8
  br label %do.end3235

do.end3235.thread:                                ; preds = %if.else3215
  %473 = load i8, ptr %uc3164.25412, align 1
  %conv3231 = zext i8 %473 to i64
  store i64 %conv3231, ptr %uvc, align 8
  store i64 1, ptr %len, align 8
  br label %if.then3238

do.end3235:                                       ; preds = %if.then3218, %if.then3213
  %474 = phi i64 [ %spec.store.select3991, %if.then3218 ], [ %call3214, %if.then3213 ]
  %cmp3236 = icmp ult i64 %474, 256
  br i1 %cmp3236, label %if.then3238, label %if.else3241

if.then3238:                                      ; preds = %do.end3235, %do.end3235.thread
  %475 = phi i64 [ %conv3231, %do.end3235.thread ], [ %474, %do.end3235 ]
  %476 = load ptr, ptr %charmap, align 8
  %arrayidx3240 = getelementptr inbounds nuw i16, ptr %476, i64 %475
  %477 = load i16, ptr %arrayidx3240, align 2
  br label %if.end3263

if.else3241:                                      ; preds = %do.end3235
  %call3243 = call ptr @Perl_hv_common_key_len(ptr noundef %widecharmap.0.lcssa, ptr noundef nonnull %uvc, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #9
  %tobool3244.not = icmp eq ptr %call3243, null
  br i1 %tobool3244.not, label %if.else3308, label %cond.true3245

cond.true3245:                                    ; preds = %if.else3241
  %478 = load ptr, ptr %call3243, align 8
  %sv_flags3246 = getelementptr inbounds nuw i8, ptr %478, i64 12
  %479 = load i32, ptr %sv_flags3246, align 4
  %and3247 = and i32 %479, 2097408
  %cmp3248 = icmp eq i32 %and3247, 256
  br i1 %cmp3248, label %cond.true3250, label %cond.false3253

cond.true3250:                                    ; preds = %cond.true3245
  %480 = load ptr, ptr %478, align 8
  %xiv_u3252 = getelementptr inbounds nuw i8, ptr %480, i64 32
  %481 = load i64, ptr %xiv_u3252, align 8
  br label %cond.end3255

cond.false3253:                                   ; preds = %cond.true3245
  %call3254 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %478, i32 noundef 2) #9
  br label %cond.end3255

cond.end3255:                                     ; preds = %cond.false3253, %cond.true3250
  %cond3256 = phi i64 [ %481, %cond.true3250 ], [ %call3254, %cond.false3253 ]
  %conv3257 = trunc i64 %cond3256 to i16
  br label %if.end3263

if.end3263:                                       ; preds = %cond.end3255, %if.then3238
  %charid3173.0 = phi i16 [ %477, %if.then3238 ], [ %conv3257, %cond.end3255 ]
  %tobool3264.not = icmp eq i16 %charid3173.0, 0
  br i1 %tobool3264.not, label %if.else3308, label %if.then3265

if.then3265:                                      ; preds = %if.end3263
  %dec3266 = add i16 %charid3173.0, -1
  %482 = load ptr, ptr %trans3151, align 8
  %conv3268 = zext i16 %dec3266 to i32
  %add3269 = add i32 %state3172.05417, %conv3268
  %idxprom3270 = zext i32 %add3269 to i64
  %arrayidx3271 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %482, i64 %idxprom3270
  %483 = load i32, ptr %arrayidx3271, align 4
  %tobool3273.not = icmp eq i32 %483, 0
  br i1 %tobool3273.not, label %if.then3274, label %if.end3301

if.then3274:                                      ; preds = %if.then3265
  store i32 %next_alloc.65419, ptr %arrayidx3271, align 4
  %484 = load ptr, ptr %trans3151, align 8
  %idxprom3282 = zext i32 %state3172.05417 to i64
  %arrayidx3283 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %484, i64 %idxprom3282
  %check3284 = getelementptr inbounds nuw i8, ptr %arrayidx3283, i64 4
  %485 = load i32, ptr %check3284, align 4
  %inc3285 = add i32 %485, 1
  store i32 %inc3285, ptr %check3284, align 4
  %sub3286 = add i32 %state3172.05417, -1
  %486 = load i16, ptr %uniquecharcount2561, align 8
  %conv3288 = zext i16 %486 to i32
  %div3289 = udiv i32 %sub3286, %conv3288
  %add3290 = add i32 %div3289, 1
  %sub3291 = add i32 %next_alloc.65419, -1
  %div3294 = udiv i32 %sub3291, %conv3288
  %add3295 = add i32 %div3294, 1
  %idxprom3296 = zext i32 %add3295 to i64
  %arrayidx3297 = getelementptr inbounds nuw i32, ptr %call2558, i64 %idxprom3296
  store i32 %add3290, ptr %arrayidx3297, align 4
  %487 = load i16, ptr %uniquecharcount2561, align 8
  %conv3299 = zext i16 %487 to i32
  %add3300 = add i32 %next_alloc.65419, %conv3299
  br label %if.end3301

if.end3301:                                       ; preds = %if.then3274, %if.then3265
  %next_alloc.7 = phi i32 [ %next_alloc.65419, %if.then3265 ], [ %add3300, %if.then3274 ]
  %488 = load ptr, ptr %trans3151, align 8
  %arrayidx3306 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %488, i64 %idxprom3270
  %489 = load i32, ptr %arrayidx3306, align 4
  br label %for.inc3310

if.else3308:                                      ; preds = %if.end3263, %if.else3241
  %490 = load i64, ptr %uvc, align 8
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.224, i64 noundef %490) #9
  br label %for.inc3310

for.inc3310:                                      ; preds = %if.else3308, %if.end3301
  %state3172.1 = phi i32 [ %489, %if.end3301 ], [ %state3172.05417, %if.else3308 ]
  %next_alloc.8 = phi i32 [ %next_alloc.7, %if.end3301 ], [ %next_alloc.65419, %if.else3308 ]
  %491 = load i64, ptr %len, align 8
  %add.ptr3311 = getelementptr inbounds nuw i8, ptr %uc3164.25412, i64 %491
  %cmp3204 = icmp ult ptr %add.ptr3311, %e3167.1
  br i1 %cmp3204, label %do.body3207, label %if.end3313.loopexit, !llvm.loop !10

if.end3313.loopexit:                              ; preds = %for.inc3310
  %state3172.1.lcssa = phi i32 [ %state3172.1, %for.inc3310 ]
  %next_alloc.8.lcssa = phi i32 [ %next_alloc.8, %for.inc3310 ]
  %inc3208.lcssa = phi i32 [ %inc3208, %for.inc3310 ]
  br label %if.end3313

if.end3313:                                       ; preds = %if.end3313.loopexit, %if.end3197
  %state3172.2 = phi i32 [ 1, %if.end3197 ], [ %state3172.1.lcssa, %if.end3313.loopexit ]
  %wordlen3174.1 = phi i32 [ 0, %if.end3197 ], [ %inc3208.lcssa, %if.end3313.loopexit ]
  %next_alloc.9 = phi i32 [ %next_alloc.55426, %if.end3197 ], [ %next_alloc.8.lcssa, %if.end3313.loopexit ]
  %sub3314 = add i32 %state3172.2, -1
  %492 = load i16, ptr %uniquecharcount2561, align 8
  %conv3316 = zext i16 %492 to i32
  %div3317 = udiv i32 %sub3314, %conv3316
  %add3318 = add i32 %div3317, 1
  %493 = load ptr, ptr %states3154, align 8
  %idxprom3322 = zext i32 %add3318 to i64
  %arrayidx3323 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %493, i64 %idxprom3322
  %494 = load i16, ptr %arrayidx3323, align 8
  %tobool.not.i5160 = icmp eq ptr %noper3162.1, null
  br i1 %tobool.not.i5160, label %Perl_regnext.exit5182, label %if.end.i5161

if.end.i5161:                                     ; preds = %if.end3313
  %495 = load i8, ptr %type3198, align 1
  %cmp.i5163 = icmp ugt i8 %495, 93
  br i1 %cmp.i5163, label %if.then2.i5180, label %if.end5.i5164

if.then2.i5180:                                   ; preds = %if.end.i5161
  %conv.i5181 = zext i8 %495 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.204, i32 noundef %conv.i5181, i32 noundef 93) #9
  br label %if.end5.i5164

if.end5.i5164:                                    ; preds = %if.then2.i5180, %if.end.i5161
  %496 = load i8, ptr %type3198, align 1
  %idxprom.i5165 = zext i8 %496 to i64
  %arrayidx.i5166 = getelementptr inbounds nuw i8, ptr @reg_off_by_arg, i64 %idxprom.i5165
  %497 = load i8, ptr %arrayidx.i5166, align 1
  %tobool8.not.i5167 = icmp eq i8 %497, 0
  br i1 %tobool8.not.i5167, label %cond.false.i5177, label %cond.true.i5168

cond.true.i5168:                                  ; preds = %if.end5.i5164
  %arg1.i5169 = getelementptr inbounds nuw i8, ptr %noper3162.1, i64 4
  %498 = load i32, ptr %arg1.i5169, align 4
  br label %cond.end.i5170

cond.false.i5177:                                 ; preds = %if.end5.i5164
  %next_off.i5178 = getelementptr inbounds nuw i8, ptr %noper3162.1, i64 2
  %499 = load i16, ptr %next_off.i5178, align 2
  %conv9.i5179 = zext i16 %499 to i32
  br label %cond.end.i5170

cond.end.i5170:                                   ; preds = %cond.false.i5177, %cond.true.i5168
  %cond.i5171 = phi i32 [ %498, %cond.true.i5168 ], [ %conv9.i5179, %cond.false.i5177 ]
  %cmp10.i5172 = icmp eq i32 %cond.i5171, 0
  br i1 %cmp10.i5172, label %Perl_regnext.exit5182, label %if.end13.i5173

if.end13.i5173:                                   ; preds = %cond.end.i5170
  %idx.ext.i5174 = sext i32 %cond.i5171 to i64
  %add.ptr.i5175 = getelementptr inbounds %struct.regnode, ptr %noper3162.1, i64 %idx.ext.i5174
  br label %Perl_regnext.exit5182

Perl_regnext.exit5182:                            ; preds = %if.end13.i5173, %cond.end.i5170, %if.end3313
  %retval.0.i5176 = phi ptr [ %add.ptr.i5175, %if.end13.i5173 ], [ null, %if.end3313 ], [ null, %cond.end.i5170 ]
  %inc3327 = add i16 %curword.15427, 1
  %500 = load ptr, ptr %wordinfo, align 8
  %idxprom3329 = zext i16 %inc3327 to i64
  %arrayidx3330 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %500, i64 %idxprom3329
  store i16 0, ptr %arrayidx3330, align 4
  %501 = load ptr, ptr %wordinfo, align 8
  %arrayidx3334 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %501, i64 %idxprom3329
  %len3335 = getelementptr inbounds nuw i8, ptr %arrayidx3334, i64 4
  store i32 %wordlen3174.1, ptr %len3335, align 4
  %502 = load ptr, ptr %wordinfo, align 8
  %arrayidx3338 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %502, i64 %idxprom3329
  %accept3339 = getelementptr inbounds nuw i8, ptr %arrayidx3338, i64 8
  store i32 %add3318, ptr %accept3339, align 4
  %cmp3340 = icmp ult ptr %retval.0.i5176, %tail
  br i1 %cmp3340, label %if.then3342, label %if.end3366

if.then3342:                                      ; preds = %Perl_regnext.exit5182
  %503 = load ptr, ptr %jump3343, align 8
  %tobool3344.not = icmp eq ptr %503, null
  br i1 %tobool3344.not, label %if.then3345, label %if.end3350

if.then3345:                                      ; preds = %if.then3342
  %call3348 = call noalias ptr @calloc(i64 noundef %conv3347, i64 noundef 2) #10
  store ptr %call3348, ptr %jump3343, align 8
  br label %if.end3350

if.end3350:                                       ; preds = %if.then3345, %if.then3342
  %sub.ptr.lhs.cast3351 = ptrtoint ptr %retval.0.i5176 to i64
  %sub.ptr.sub3353 = sub i64 %sub.ptr.lhs.cast3351, %sub.ptr.rhs.cast3352
  %sub.ptr.div3354 = lshr exact i64 %sub.ptr.sub3353, 2
  %conv3355 = trunc i64 %sub.ptr.div3354 to i16
  %504 = load ptr, ptr %jump3343, align 8
  %arrayidx3358 = getelementptr inbounds nuw i16, ptr %504, i64 %idxprom3329
  store i16 %conv3355, ptr %arrayidx3358, align 2
  %tobool3359.not = icmp eq ptr %jumper.35425, null
  %spec.select5009 = select i1 %tobool3359.not, ptr %retval.0.i5176, ptr %jumper.35425
  %tobool3362.not = icmp eq ptr %nextbranch.25424, null
  br i1 %tobool3362.not, label %if.then3363, label %if.end3366

if.then3363:                                      ; preds = %if.end3350
  %tobool.not.i5183 = icmp eq ptr %cur.25428, null
  br i1 %tobool.not.i5183, label %if.end3366, label %if.end.i5184

if.end.i5184:                                     ; preds = %if.then3363
  %type.i5185 = getelementptr inbounds nuw i8, ptr %cur.25428, i64 1
  %505 = load i8, ptr %type.i5185, align 1
  %cmp.i5186 = icmp ugt i8 %505, 93
  br i1 %cmp.i5186, label %if.then2.i5203, label %if.end5.i5187

if.then2.i5203:                                   ; preds = %if.end.i5184
  %conv.i5204 = zext i8 %505 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.204, i32 noundef %conv.i5204, i32 noundef 93) #9
  br label %if.end5.i5187

if.end5.i5187:                                    ; preds = %if.then2.i5203, %if.end.i5184
  %506 = load i8, ptr %type.i5185, align 1
  %idxprom.i5188 = zext i8 %506 to i64
  %arrayidx.i5189 = getelementptr inbounds nuw i8, ptr @reg_off_by_arg, i64 %idxprom.i5188
  %507 = load i8, ptr %arrayidx.i5189, align 1
  %tobool8.not.i5190 = icmp eq i8 %507, 0
  br i1 %tobool8.not.i5190, label %cond.false.i5200, label %cond.true.i5191

cond.true.i5191:                                  ; preds = %if.end5.i5187
  %508 = load i32, ptr %add.ptr3163, align 4
  br label %cond.end.i5193

cond.false.i5200:                                 ; preds = %if.end5.i5187
  %next_off.i5201 = getelementptr inbounds nuw i8, ptr %cur.25428, i64 2
  %509 = load i16, ptr %next_off.i5201, align 2
  %conv9.i5202 = zext i16 %509 to i32
  br label %cond.end.i5193

cond.end.i5193:                                   ; preds = %cond.false.i5200, %cond.true.i5191
  %cond.i5194 = phi i32 [ %508, %cond.true.i5191 ], [ %conv9.i5202, %cond.false.i5200 ]
  %cmp10.i5195 = icmp eq i32 %cond.i5194, 0
  br i1 %cmp10.i5195, label %if.end3366, label %if.end13.i5196

if.end13.i5196:                                   ; preds = %cond.end.i5193
  %idx.ext.i5197 = sext i32 %cond.i5194 to i64
  %add.ptr.i5198 = getelementptr inbounds %struct.regnode, ptr %cur.25428, i64 %idx.ext.i5197
  br label %if.end3366

if.end3366:                                       ; preds = %if.end13.i5196, %cond.end.i5193, %if.then3363, %if.end3350, %Perl_regnext.exit5182
  %nextbranch.3 = phi ptr [ %nextbranch.25424, %if.end3350 ], [ %nextbranch.25424, %Perl_regnext.exit5182 ], [ %add.ptr.i5198, %if.end13.i5196 ], [ null, %if.then3363 ], [ null, %cond.end.i5193 ]
  %jumper.5 = phi ptr [ %spec.select5009, %if.end3350 ], [ %jumper.35425, %Perl_regnext.exit5182 ], [ %spec.select5009, %if.end13.i5196 ], [ %spec.select5009, %if.then3363 ], [ %spec.select5009, %cond.end.i5193 ]
  %tobool3367.not = icmp eq i16 %494, 0
  br i1 %tobool3367.not, label %if.else3381, label %if.then3368

if.then3368:                                      ; preds = %if.end3366
  %510 = load ptr, ptr %wordinfo, align 8
  %idxprom3370 = zext i16 %494 to i64
  %arrayidx3371 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %510, i64 %idxprom3370
  %511 = load i16, ptr %arrayidx3371, align 4
  %arrayidx3375 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %510, i64 %idxprom3329
  store i16 %511, ptr %arrayidx3375, align 4
  %512 = load ptr, ptr %wordinfo, align 8
  %arrayidx3379 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %512, i64 %idxprom3370
  store i16 %inc3327, ptr %arrayidx3379, align 4
  br label %if.end3386

if.else3381:                                      ; preds = %if.end3366
  %513 = load ptr, ptr %states3154, align 8
  %arrayidx3384 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %513, i64 %idxprom3322
  store i16 %inc3327, ptr %arrayidx3384, align 8
  br label %if.end3386

if.end3386:                                       ; preds = %if.else3381, %if.then3368
  %tobool.not.i5206 = icmp eq ptr %cur.25428, null
  br i1 %tobool.not.i5206, label %Perl_regnext.exit5228, label %if.end.i5207

if.end.i5207:                                     ; preds = %if.end3386
  %type.i5208 = getelementptr inbounds nuw i8, ptr %cur.25428, i64 1
  %514 = load i8, ptr %type.i5208, align 1
  %cmp.i5209 = icmp ugt i8 %514, 93
  br i1 %cmp.i5209, label %if.then2.i5226, label %if.end5.i5210

if.then2.i5226:                                   ; preds = %if.end.i5207
  %conv.i5227 = zext i8 %514 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.204, i32 noundef %conv.i5227, i32 noundef 93) #9
  br label %if.end5.i5210

if.end5.i5210:                                    ; preds = %if.then2.i5226, %if.end.i5207
  %515 = load i8, ptr %type.i5208, align 1
  %idxprom.i5211 = zext i8 %515 to i64
  %arrayidx.i5212 = getelementptr inbounds nuw i8, ptr @reg_off_by_arg, i64 %idxprom.i5211
  %516 = load i8, ptr %arrayidx.i5212, align 1
  %tobool8.not.i5213 = icmp eq i8 %516, 0
  br i1 %tobool8.not.i5213, label %cond.false.i5223, label %cond.true.i5214

cond.true.i5214:                                  ; preds = %if.end5.i5210
  %517 = load i32, ptr %add.ptr3163, align 4
  br label %cond.end.i5216

cond.false.i5223:                                 ; preds = %if.end5.i5210
  %next_off.i5224 = getelementptr inbounds nuw i8, ptr %cur.25428, i64 2
  %518 = load i16, ptr %next_off.i5224, align 2
  %conv9.i5225 = zext i16 %518 to i32
  br label %cond.end.i5216

cond.end.i5216:                                   ; preds = %cond.false.i5223, %cond.true.i5214
  %cond.i5217 = phi i32 [ %517, %cond.true.i5214 ], [ %conv9.i5225, %cond.false.i5223 ]
  %cmp10.i5218 = icmp eq i32 %cond.i5217, 0
  br i1 %cmp10.i5218, label %Perl_regnext.exit5228, label %if.end13.i5219

if.end13.i5219:                                   ; preds = %cond.end.i5216
  %idx.ext.i5220 = sext i32 %cond.i5217 to i64
  %add.ptr.i5221 = getelementptr inbounds %struct.regnode, ptr %cur.25428, i64 %idx.ext.i5220
  br label %Perl_regnext.exit5228

Perl_regnext.exit5228:                            ; preds = %if.end13.i5219, %cond.end.i5216, %if.end3386
  %retval.0.i5222 = phi ptr [ %add.ptr.i5221, %if.end13.i5219 ], [ null, %if.end3386 ], [ null, %cond.end.i5216 ]
  %cmp3159 = icmp ult ptr %retval.0.i5222, %last
  br i1 %cmp3159, label %for.body3161, label %for.end3391.loopexit, !llvm.loop !11

for.end3391.loopexit:                             ; preds = %Perl_regnext.exit5228
  %nextbranch.3.lcssa = phi ptr [ %nextbranch.3, %Perl_regnext.exit5228 ]
  %jumper.5.lcssa = phi ptr [ %jumper.5, %Perl_regnext.exit5228 ]
  %next_alloc.9.lcssa = phi i32 [ %next_alloc.9, %Perl_regnext.exit5228 ]
  br label %for.end3391

for.end3391:                                      ; preds = %for.end3391.loopexit, %if.else3144
  %nextbranch.2.lcssa = phi ptr [ null, %if.else3144 ], [ %nextbranch.3.lcssa, %for.end3391.loopexit ]
  %jumper.3.lcssa = phi ptr [ null, %if.else3144 ], [ %jumper.5.lcssa, %for.end3391.loopexit ]
  %next_alloc.5.lcssa = phi i32 [ %add3157, %if.else3144 ], [ %next_alloc.9.lcssa, %for.end3391.loopexit ]
  %sub3392 = add i32 %next_alloc.5.lcssa, -1
  %519 = load i16, ptr %uniquecharcount2561, align 8
  %conv3394 = zext i16 %519 to i32
  %div3395 = udiv i32 %sub3392, %conv3394
  %add3396 = add i32 %div3395, 1
  %statecount3400 = getelementptr inbounds nuw i8, ptr %call4, i64 84
  store i32 %add3396, ptr %statecount3400, align 4
  %cmp34025445 = icmp ugt i32 %add3396, 1
  br i1 %cmp34025445, label %for.body3404.preheader, label %for.end3570

for.body3404.preheader:                           ; preds = %for.end3391
  %520 = zext i32 %add3396 to i64
  br label %for.body3404

for.body3404:                                     ; preds = %for.end3567, %for.body3404.preheader
  %indvars.iv5537 = phi i64 [ 1, %for.body3404.preheader ], [ %indvars.iv.next5538, %for.end3567 ]
  %zp3399.05449 = phi i32 [ %zp3399.2, %for.end3567 ], [ 0, %for.body3404.preheader ]
  %pos.05448 = phi i32 [ %pos.3, %for.end3567 ], [ 0, %for.body3404.preheader ]
  br i1 false, label %cond.end3413, label %cond.true3406

cond.true3406:                                    ; preds = %for.body3404
  %521 = add nsw i64 %indvars.iv5537, -1
  %522 = load i16, ptr %uniquecharcount2561, align 8
  %conv3409 = zext i16 %522 to i32
  %523 = trunc nuw i64 %521 to i32
  %mul3410 = mul i32 %523, %conv3409
  %add3411 = add i32 %mul3410, 1
  br label %cond.end3413

cond.end3413:                                     ; preds = %cond.true3406, %for.body3404
  %cond3414 = phi i32 [ %add3411, %cond.true3406 ], [ 0, %for.body3404 ]
  %524 = load ptr, ptr %trans3151, align 8
  %idxprom3416 = zext i32 %cond3414 to i64
  %arrayidx3417 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %524, i64 %idxprom3416
  %check3418 = getelementptr inbounds nuw i8, ptr %arrayidx3417, i64 4
  %525 = load i32, ptr %check3418, align 4
  store i32 0, ptr %check3418, align 4
  %tobool3428.not5433 = icmp eq i32 %525, 0
  br i1 %tobool3428.not5433, label %for.end3567, label %land.rhs3429.lr.ph

land.rhs3429.lr.ph:                               ; preds = %cond.end3413
  %cmp3453 = icmp eq i32 %525, 1
  br label %land.rhs3429

land.rhs3429:                                     ; preds = %for.inc3565, %land.rhs3429.lr.ph
  %indvars.iv = phi i64 [ 0, %land.rhs3429.lr.ph ], [ %indvars.iv.next, %for.inc3565 ]
  %charid3398.0.neg5438 = phi i32 [ 0, %land.rhs3429.lr.ph ], [ %charid3398.0.neg, %for.inc3565 ]
  %used.05437 = phi i32 [ %525, %land.rhs3429.lr.ph ], [ %used.2, %for.inc3565 ]
  %flag.05436 = phi i8 [ 0, %land.rhs3429.lr.ph ], [ %flag.2, %for.inc3565 ]
  %pos.15435 = phi i32 [ %pos.05448, %land.rhs3429.lr.ph ], [ %pos.2, %for.inc3565 ]
  %526 = load i16, ptr %uniquecharcount2561, align 8
  %conv3431 = zext i16 %526 to i32
  %527 = zext i32 %conv3431 to i64
  %cmp3432 = icmp samesign ult i64 %indvars.iv, %527
  br i1 %cmp3432, label %for.body3435, label %for.end3567.loopexit

for.body3435:                                     ; preds = %land.rhs3429
  %tobool3437.not = icmp eq i8 %flag.05436, 0
  br i1 %tobool3437.not, label %lor.lhs.false3438, label %if.then3445

lor.lhs.false3438:                                ; preds = %for.body3435
  %528 = load ptr, ptr %trans3151, align 8
  %529 = trunc nuw nsw i64 %indvars.iv to i32
  %add3440 = add i32 %529, %cond3414
  %idxprom3441 = zext i32 %add3440 to i64
  %arrayidx3442 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %528, i64 %idxprom3441
  %530 = load i32, ptr %arrayidx3442, align 4
  %tobool3444.not = icmp eq i32 %530, 0
  br i1 %tobool3444.not, label %for.inc3565, label %if.then3445

if.then3445:                                      ; preds = %lor.lhs.false3438, %for.body3435
  %531 = load ptr, ptr %trans3151, align 8
  %532 = trunc nuw nsw i64 %indvars.iv to i32
  %add3447 = add i32 %532, %cond3414
  %idxprom3448 = zext i32 %add3447 to i64
  %arrayidx3449 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %531, i64 %idxprom3448
  %533 = load i32, ptr %arrayidx3449, align 4
  %tobool3451.not = icmp eq i32 %533, 0
  br i1 %tobool3451.not, label %if.end3518, label %if.then3452

if.then3452:                                      ; preds = %if.then3445
  br i1 %cmp3453, label %for.cond3456.preheader, label %if.end3516

for.cond3456.preheader:                           ; preds = %if.then3452
  %pos.15435.lcssa5535 = phi i32 [ %pos.15435, %if.then3452 ]
  %charid3398.0.neg5438.lcssa5531 = phi i32 [ %charid3398.0.neg5438, %if.then3452 ]
  %pos.15435.lcssa5530 = phi i32 [ %pos.15435, %if.then3452 ]
  %conv3431.lcssa5529 = phi i32 [ %conv3431, %if.then3452 ]
  %.lcssa = phi ptr [ %531, %if.then3452 ]
  %idxprom3448.lcssa = phi i64 [ %idxprom3448, %if.then3452 ]
  %cmp34575441 = icmp ult i32 %zp3399.05449, %pos.15435.lcssa5530
  br i1 %cmp34575441, label %for.body3459.preheader, label %for.end3469

for.body3459.preheader:                           ; preds = %for.cond3456.preheader
  %534 = zext i32 %zp3399.05449 to i64
  %535 = zext i32 %pos.15435.lcssa5530 to i64
  br label %for.body3459

for.body3459:                                     ; preds = %for.inc3467, %for.body3459.preheader
  %indvars.iv5533 = phi i64 [ %534, %for.body3459.preheader ], [ %indvars.iv.next5534, %for.inc3467 ]
  %arrayidx3462 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %.lcssa, i64 %indvars.iv5533
  %536 = load i32, ptr %arrayidx3462, align 4
  %tobool3464.not = icmp eq i32 %536, 0
  %537 = trunc nuw i64 %indvars.iv5533 to i32
  br i1 %tobool3464.not, label %for.end3469.loopexit, label %for.inc3467

for.inc3467:                                      ; preds = %for.body3459
  %indvars.iv.next5534 = add nuw nsw i64 %indvars.iv5533, 1
  %exitcond = icmp ne i64 %indvars.iv.next5534, %535
  br i1 %exitcond, label %for.body3459, label %for.end3469.loopexit, !llvm.loop !12

for.end3469.loopexit:                             ; preds = %for.inc3467, %for.body3459
  %zp3399.1.lcssa.ph = phi i32 [ %pos.15435.lcssa5535, %for.inc3467 ], [ %537, %for.body3459 ]
  br label %for.end3469

for.end3469:                                      ; preds = %for.end3469.loopexit, %for.cond3456.preheader
  %zp3399.1.lcssa = phi i32 [ %zp3399.05449, %for.cond3456.preheader ], [ %zp3399.1.lcssa.ph, %for.end3469.loopexit ]
  %add3472 = add i32 %charid3398.0.neg5438.lcssa5531, %conv3431.lcssa5529
  %sub3473 = add i32 %add3472, %zp3399.1.lcssa
  %538 = load ptr, ptr %states3154, align 8
  %arrayidx3476 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %538, i64 %indvars.iv5537
  %trans3477 = getelementptr inbounds nuw i8, ptr %arrayidx3476, i64 8
  store i32 %sub3473, ptr %trans3477, align 8
  %539 = load ptr, ptr %trans3151, align 8
  %arrayidx3481 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %539, i64 %idxprom3448.lcssa
  %540 = load i32, ptr %arrayidx3481, align 4
  %tobool3483.not = icmp eq i32 %540, 0
  br i1 %tobool3483.not, label %cond.end3501, label %cond.true3484

cond.true3484:                                    ; preds = %for.end3469
  %sub3490 = add i32 %540, -1
  %541 = load i16, ptr %uniquecharcount2561, align 8
  %conv3492 = zext i16 %541 to i32
  %div3493 = udiv i32 %sub3490, %conv3492
  %add3494 = add nuw i32 %div3493, 1
  br label %cond.end3501

cond.end3501:                                     ; preds = %cond.true3484, %for.end3469
  %cond3502 = phi i32 [ %add3494, %cond.true3484 ], [ 0, %for.end3469 ]
  %idxprom3504 = zext i32 %zp3399.1.lcssa to i64
  %arrayidx3505 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %539, i64 %idxprom3504
  store i32 %cond3502, ptr %arrayidx3505, align 4
  %542 = load ptr, ptr %trans3151, align 8
  %arrayidx3509 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %542, i64 %idxprom3504
  %check3510 = getelementptr inbounds nuw i8, ptr %arrayidx3509, i64 4
  %543 = trunc nuw i64 %indvars.iv5537 to i32
  store i32 %543, ptr %check3510, align 4
  %inc3511 = add i32 %zp3399.1.lcssa, 1
  %spec.select5010 = call i32 @llvm.umax.i32(i32 %inc3511, i32 %pos.15435.lcssa5530)
  br label %for.end3567

if.end3516:                                       ; preds = %if.then3452
  %dec3517 = add i32 %used.05437, -1
  br label %if.end3518

if.end3518:                                       ; preds = %if.end3516, %if.then3445
  %used.1 = phi i32 [ %dec3517, %if.end3516 ], [ %used.05437, %if.then3445 ]
  br i1 %tobool3437.not, label %if.then3520, label %if.end3529

if.then3520:                                      ; preds = %if.end3518
  %add3523 = add i32 %pos.15435, %charid3398.0.neg5438
  %sub3524 = add i32 %add3523, %conv3431
  %544 = load ptr, ptr %states3154, align 8
  %arrayidx3527 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %544, i64 %indvars.iv5537
  %trans3528 = getelementptr inbounds nuw i8, ptr %arrayidx3527, i64 8
  store i32 %sub3524, ptr %trans3528, align 8
  br label %if.end3529

if.end3529:                                       ; preds = %if.then3520, %if.end3518
  %545 = load ptr, ptr %trans3151, align 8
  %arrayidx3533 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %545, i64 %idxprom3448
  %546 = load i32, ptr %arrayidx3533, align 4
  %tobool3535.not = icmp eq i32 %546, 0
  br i1 %tobool3535.not, label %cond.end3553, label %cond.true3536

cond.true3536:                                    ; preds = %if.end3529
  %sub3542 = add i32 %546, -1
  %547 = load i16, ptr %uniquecharcount2561, align 8
  %conv3544 = zext i16 %547 to i32
  %div3545 = udiv i32 %sub3542, %conv3544
  %add3546 = add nuw i32 %div3545, 1
  br label %cond.end3553

cond.end3553:                                     ; preds = %cond.true3536, %if.end3529
  %cond3554 = phi i32 [ %add3546, %cond.true3536 ], [ 0, %if.end3529 ]
  %idxprom3556 = zext i32 %pos.15435 to i64
  %arrayidx3557 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %545, i64 %idxprom3556
  store i32 %cond3554, ptr %arrayidx3557, align 4
  %548 = load ptr, ptr %trans3151, align 8
  %arrayidx3561 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %548, i64 %idxprom3556
  %check3562 = getelementptr inbounds nuw i8, ptr %arrayidx3561, i64 4
  %549 = trunc nuw i64 %indvars.iv5537 to i32
  store i32 %549, ptr %check3562, align 4
  %inc3563 = add i32 %pos.15435, 1
  br label %for.inc3565

for.inc3565:                                      ; preds = %cond.end3553, %lor.lhs.false3438
  %pos.2 = phi i32 [ %inc3563, %cond.end3553 ], [ %pos.15435, %lor.lhs.false3438 ]
  %flag.2 = phi i8 [ 1, %cond.end3553 ], [ 0, %lor.lhs.false3438 ]
  %used.2 = phi i32 [ %used.1, %cond.end3553 ], [ %used.05437, %lor.lhs.false3438 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %550 = trunc nuw nsw i64 %indvars.iv to i32
  %charid3398.0.neg = xor i32 %550, -1
  %tobool3428.not = icmp eq i32 %used.2, 0
  br i1 %tobool3428.not, label %for.end3567.loopexit, label %land.rhs3429, !llvm.loop !13

for.end3567.loopexit:                             ; preds = %for.inc3565, %land.rhs3429
  %pos.3.ph = phi i32 [ %pos.2, %for.inc3565 ], [ %pos.15435, %land.rhs3429 ]
  br label %for.end3567

for.end3567:                                      ; preds = %for.end3567.loopexit, %cond.end3501, %cond.end3413
  %pos.3 = phi i32 [ %spec.select5010, %cond.end3501 ], [ %pos.05448, %cond.end3413 ], [ %pos.3.ph, %for.end3567.loopexit ]
  %zp3399.2 = phi i32 [ %inc3511, %cond.end3501 ], [ %zp3399.05449, %cond.end3413 ], [ %zp3399.05449, %for.end3567.loopexit ]
  %indvars.iv.next5538 = add nuw nsw i64 %indvars.iv5537, 1
  %cmp3402 = icmp samesign ult i64 %indvars.iv.next5538, %520
  br i1 %cmp3402, label %for.body3404, label %for.end3570.loopexit, !llvm.loop !14

for.end3570.loopexit:                             ; preds = %for.end3567
  %pos.3.lcssa = phi i32 [ %pos.3, %for.end3567 ]
  br label %for.end3570

for.end3570:                                      ; preds = %for.end3570.loopexit, %for.end3391
  %pos.0.lcssa = phi i32 [ 0, %for.end3391 ], [ %pos.3.lcssa, %for.end3570.loopexit ]
  %add3571 = add i32 %pos.0.lcssa, 1
  %lasttrans3572 = getelementptr inbounds nuw i8, ptr %call4, i64 4
  store i32 %add3571, ptr %lasttrans3572, align 4
  %551 = load ptr, ptr %states3154, align 8
  %conv3574 = zext i32 %add3396 to i64
  %mul3575 = shl nuw nsw i64 %conv3574, 4
  %call3576 = call ptr @realloc(ptr noundef %551, i64 noundef %mul3575) #11
  store ptr %call3576, ptr %states3154, align 8
  br label %if.end3578

if.end3578:                                       ; preds = %for.end3570, %for.end3142
  %nextbranch.4 = phi ptr [ %nextbranch.0.lcssa, %for.end3142 ], [ %nextbranch.2.lcssa, %for.end3570 ]
  %jumper.6 = phi ptr [ %jumper.0.lcssa, %for.end3142 ], [ %jumper.3.lcssa, %for.end3570 ]
  %trans3579 = getelementptr inbounds nuw i8, ptr %call4, i64 24
  %552 = load ptr, ptr %trans3579, align 8
  %lasttrans3580 = getelementptr inbounds nuw i8, ptr %call4, i64 4
  %553 = load i32, ptr %lasttrans3580, align 4
  %conv3581 = zext i32 %553 to i64
  %mul3582 = shl nuw nsw i64 %conv3581, 3
  %call3583 = call ptr @realloc(ptr noundef %552, i64 noundef %mul3582) #11
  store ptr %call3583, ptr %trans3579, align 8
  %conv3586 = trunc nuw nsw i32 %flags to i8
  br i1 %cmp16, label %lor.lhs.false3589, label %if.then3594

lor.lhs.false3589:                                ; preds = %if.end3578
  %type3590 = getelementptr inbounds nuw i8, ptr %last, i64 1
  %554 = load i8, ptr %type3590, align 1
  %cmp3592 = icmp eq i8 %554, 30
  br i1 %cmp3592, label %if.then3594, label %if.end3600

if.then3594:                                      ; preds = %lor.lhs.false3589, %if.end3578
  %sub.ptr.lhs.cast3595 = ptrtoint ptr %last to i64
  %sub.ptr.rhs.cast3596 = ptrtoint ptr %first to i64
  %sub.ptr.sub3597 = sub i64 %sub.ptr.lhs.cast3595, %sub.ptr.rhs.cast3596
  %sub.ptr.div3598 = lshr exact i64 %sub.ptr.sub3597, 2
  %conv3599 = trunc i64 %sub.ptr.div3598 to i16
  %next_off = getelementptr inbounds nuw i8, ptr %first, i64 2
  store i16 %conv3599, ptr %next_off, align 2
  br label %if.end3600

if.end3600:                                       ; preds = %if.then3594, %lor.lhs.false3589
  store i32 1, ptr %startstate, align 4
  %bitmap3602 = getelementptr inbounds nuw i8, ptr %call4, i64 32
  %555 = load ptr, ptr %bitmap3602, align 8
  %tobool3603 = icmp eq ptr %555, null
  %tobool3605 = icmp ne ptr %widecharmap.0.lcssa, null
  %or.cond3988 = select i1 %tobool3603, i1 true, i1 %tobool3605
  br i1 %or.cond3988, label %if.end3862, label %land.lhs.true3606

land.lhs.true3606:                                ; preds = %if.end3600
  %jump3607 = getelementptr inbounds nuw i8, ptr %call4, i64 40
  %556 = load ptr, ptr %jump3607, align 8
  %tobool3608.not = icmp eq ptr %556, null
  br i1 %tobool3608.not, label %for.cond3611.preheader, label %if.end3862

for.cond3611.preheader:                           ; preds = %land.lhs.true3606
  %statecount3612 = getelementptr inbounds nuw i8, ptr %call4, i64 84
  %557 = load i32, ptr %statecount3612, align 4
  %558 = add i32 %557, -3
  %cmp36145512 = icmp ult i32 %558, -2
  br i1 %cmp36145512, label %for.body3616.lr.ph, label %for.end3822

for.body3616.lr.ph:                               ; preds = %for.cond3611.preheader
  %states3619 = getelementptr inbounds nuw i8, ptr %call4, i64 16
  %type3800 = getelementptr inbounds nuw i8, ptr %convert.0, i64 1
  %string3801 = getelementptr inbounds nuw i8, ptr %convert.0, i64 4
  br label %for.body3616

for.body3616:                                     ; preds = %for.inc3820, %for.body3616.lr.ph
  %indvars.iv5558 = phi i64 [ 1, %for.body3616.lr.ph ], [ %indvars.iv.next5559, %for.inc3820 ]
  %str.05513 = phi ptr [ null, %for.body3616.lr.ph ], [ %str.2.lcssa, %for.inc3820 ]
  %559 = load ptr, ptr %states3619, align 8
  %arrayidx3621 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %559, i64 %indvars.iv5558
  %trans3622 = getelementptr inbounds nuw i8, ptr %arrayidx3621, i64 8
  %560 = load i32, ptr %trans3622, align 8
  %561 = load i16, ptr %arrayidx3621, align 8
  %tobool3627.not = icmp ne i16 %561, 0
  %spec.select5011 = zext i1 %tobool3627.not to i32
  %562 = load i16, ptr %uniquecharcount2561, align 8
  %cmp36335499.not = icmp eq i16 %562, 0
  br i1 %cmp36335499.not, label %for.end3776, label %for.body3635.lr.ph

for.body3635.lr.ph:                               ; preds = %for.body3616
  %conv36325498 = zext i16 %562 to i32
  %cmp3678 = icmp eq i64 %indvars.iv5558, 1
  br label %for.body3635

for.body3635:                                     ; preds = %for.inc3774, %for.body3635.lr.ph
  %indvars.iv5555 = phi i64 [ 0, %for.body3635.lr.ph ], [ %indvars.iv.next5556, %for.inc3774 ]
  %conv36325503 = phi i32 [ %conv36325498, %for.body3635.lr.ph ], [ %conv3632, %for.inc3774 ]
  %count.15502 = phi i32 [ %spec.select5011, %for.body3635.lr.ph ], [ %count.2, %for.inc3774 ]
  %idx3617.05501 = phi i32 [ -1, %for.body3635.lr.ph ], [ %idx3617.1, %for.inc3774 ]
  %563 = trunc nuw nsw i64 %indvars.iv5555 to i32
  %add3636 = add i32 %563, %560
  %cmp3639.not = icmp ult i32 %add3636, %conv36325503
  br i1 %cmp3639.not, label %for.inc3774, label %land.lhs.true3641

land.lhs.true3641:                                ; preds = %for.body3635
  %sub3645 = sub nuw i32 %add3636, %conv36325503
  %564 = load i32, ptr %lasttrans3580, align 4
  %cmp3647 = icmp ult i32 %sub3645, %564
  br i1 %cmp3647, label %land.lhs.true3649, label %for.inc3774

land.lhs.true3649:                                ; preds = %land.lhs.true3641
  %565 = load ptr, ptr %trans3579, align 8
  %idxprom3655 = zext i32 %sub3645 to i64
  %arrayidx3656 = getelementptr inbounds nuw %struct._reg_trie_trans, ptr %565, i64 %idxprom3655
  %check3657 = getelementptr inbounds nuw i8, ptr %arrayidx3656, i64 4
  %566 = load i32, ptr %check3657, align 4
  %567 = zext i32 %566 to i64
  %cmp3658 = icmp eq i64 %567, %indvars.iv5558
  br i1 %cmp3658, label %if.then3660, label %for.inc3774

if.then3660:                                      ; preds = %land.lhs.true3649
  %inc3661 = add i32 %count.15502, 1
  %cmp3662 = icmp ugt i32 %inc3661, 1
  %568 = trunc nuw nsw i64 %indvars.iv5555 to i32
  br i1 %cmp3662, label %if.then3664, label %for.inc3774

if.then3664:                                      ; preds = %if.then3660
  %call3666 = call ptr @Perl_av_fetch(ptr noundef %call, i64 noundef %indvars.iv5555, i32 noundef 0) #9
  %569 = load ptr, ptr %call3666, align 8
  %sv_flags3667 = getelementptr inbounds nuw i8, ptr %569, i64 12
  %570 = load i32, ptr %sv_flags3667, align 4
  %and3668 = and i32 %570, 2098176
  %cmp3669 = icmp eq i32 %and3668, 1024
  br i1 %cmp3669, label %cond.true3671, label %cond.false3674

cond.true3671:                                    ; preds = %if.then3664
  %sv_u3672 = getelementptr inbounds nuw i8, ptr %569, i64 16
  %571 = load ptr, ptr %sv_u3672, align 8
  br label %cond.end3676

cond.false3674:                                   ; preds = %if.then3664
  %call3675 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %569, ptr noundef null, i32 noundef 34) #9
  br label %cond.end3676

cond.end3676:                                     ; preds = %cond.false3674, %cond.true3671
  %cond3677 = phi ptr [ %571, %cond.true3671 ], [ %call3675, %cond.false3674 ]
  br i1 %cmp3678, label %for.end3822.loopexit, label %if.end3681

if.end3681:                                       ; preds = %cond.end3676
  %cmp3682 = icmp eq i32 %inc3661, 2
  br i1 %cmp3682, label %if.then3684, label %if.end3736

if.then3684:                                      ; preds = %if.end3681
  %572 = load ptr, ptr %bitmap3602, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %572, i8 0, i64 32, i1 false)
  %cmp3686 = icmp sgt i32 %idx3617.05501, -1
  br i1 %cmp3686, label %if.then3688, label %if.end3736

if.then3688:                                      ; preds = %if.then3684
  %conv3690 = zext nneg i32 %idx3617.05501 to i64
  %call3691 = call ptr @Perl_av_fetch(ptr noundef %call, i64 noundef %conv3690, i32 noundef 0) #9
  %573 = load ptr, ptr %call3691, align 8
  %sv_flags3693 = getelementptr inbounds nuw i8, ptr %573, i64 12
  %574 = load i32, ptr %sv_flags3693, align 4
  %and3694 = and i32 %574, 2098176
  %cmp3695 = icmp eq i32 %and3694, 1024
  br i1 %cmp3695, label %cond.true3697, label %cond.false3700

cond.true3697:                                    ; preds = %if.then3688
  %sv_u3698 = getelementptr inbounds nuw i8, ptr %573, i64 16
  %575 = load ptr, ptr %sv_u3698, align 8
  br label %cond.end3702

cond.false3700:                                   ; preds = %if.then3688
  %call3701 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %573, ptr noundef null, i32 noundef 34) #9
  br label %cond.end3702

cond.end3702:                                     ; preds = %cond.false3700, %cond.true3697
  %cond3703 = phi ptr [ %575, %cond.true3697 ], [ %call3701, %cond.false3700 ]
  %576 = load i8, ptr %cond3703, align 1
  %and3705 = and i8 %576, 7
  %shl3706 = shl nuw i8 1, %and3705
  %577 = load ptr, ptr %bitmap3602, align 8
  %578 = lshr i8 %576, 3
  %idxprom3711 = zext nneg i8 %578 to i64
  %arrayidx3712 = getelementptr inbounds nuw i8, ptr %577, i64 %idxprom3711
  %579 = load i8, ptr %arrayidx3712, align 1
  %or3714 = or i8 %shl3706, %579
  store i8 %or3714, ptr %arrayidx3712, align 1
  br i1 %tobool3716.not, label %if.end3767.critedge, label %if.then3717

if.then3717:                                      ; preds = %cond.end3702
  %580 = load i8, ptr %cond3703, align 1
  %idxprom3718 = zext i8 %580 to i64
  %arrayidx3719 = getelementptr inbounds nuw i8, ptr %folder.0, i64 %idxprom3718
  %581 = load i8, ptr %arrayidx3719, align 1
  %and3721 = and i8 %581, 7
  %shl3722 = shl nuw i8 1, %and3721
  %582 = load ptr, ptr %bitmap3602, align 8
  %583 = lshr i8 %581, 3
  %idxprom3729 = zext nneg i8 %583 to i64
  %arrayidx3730 = getelementptr inbounds nuw i8, ptr %582, i64 %idxprom3729
  %584 = load i8, ptr %arrayidx3730, align 1
  %or3732 = or i8 %shl3722, %584
  store i8 %or3732, ptr %arrayidx3730, align 1
  br label %if.end3736

if.end3736:                                       ; preds = %if.then3717, %if.then3684, %if.end3681
  %585 = load i8, ptr %cond3677, align 1
  %and3738 = and i8 %585, 7
  %shl3739 = shl nuw i8 1, %and3738
  %586 = load ptr, ptr %bitmap3602, align 8
  %587 = lshr i8 %585, 3
  %idxprom3744 = zext nneg i8 %587 to i64
  %arrayidx3745 = getelementptr inbounds nuw i8, ptr %586, i64 %idxprom3744
  %588 = load i8, ptr %arrayidx3745, align 1
  %or3747 = or i8 %shl3739, %588
  store i8 %or3747, ptr %arrayidx3745, align 1
  br i1 %tobool3716.not, label %for.inc3774, label %if.then3750

if.then3750:                                      ; preds = %if.end3736
  %589 = load i8, ptr %cond3677, align 1
  %idxprom3751 = zext i8 %589 to i64
  %arrayidx3752 = getelementptr inbounds nuw i8, ptr %folder.0, i64 %idxprom3751
  %590 = load i8, ptr %arrayidx3752, align 1
  %and3754 = and i8 %590, 7
  %shl3755 = shl nuw i8 1, %and3754
  %591 = load ptr, ptr %bitmap3602, align 8
  %592 = lshr i8 %590, 3
  %idxprom3762 = zext nneg i8 %592 to i64
  %arrayidx3763 = getelementptr inbounds nuw i8, ptr %591, i64 %idxprom3762
  %593 = load i8, ptr %arrayidx3763, align 1
  %or3765 = or i8 %shl3755, %593
  store i8 %or3765, ptr %arrayidx3763, align 1
  br label %for.inc3774

if.end3767.critedge:                              ; preds = %cond.end3702
  %594 = load i8, ptr %cond3677, align 1
  %and3738.c = and i8 %594, 7
  %shl3739.c = shl nuw i8 1, %and3738.c
  %595 = load ptr, ptr %bitmap3602, align 8
  %596 = lshr i8 %594, 3
  %idxprom3744.c = zext nneg i8 %596 to i64
  %arrayidx3745.c = getelementptr inbounds nuw i8, ptr %595, i64 %idxprom3744.c
  %597 = load i8, ptr %arrayidx3745.c, align 1
  %or3747.c = or i8 %shl3739.c, %597
  store i8 %or3747.c, ptr %arrayidx3745.c, align 1
  br label %for.inc3774

for.inc3774:                                      ; preds = %if.end3767.critedge, %if.then3750, %if.end3736, %if.then3660, %land.lhs.true3649, %land.lhs.true3641, %for.body3635
  %idx3617.1 = phi i32 [ %idx3617.05501, %land.lhs.true3649 ], [ %idx3617.05501, %land.lhs.true3641 ], [ %idx3617.05501, %for.body3635 ], [ %568, %if.then3660 ], [ %568, %if.end3767.critedge ], [ %568, %if.then3750 ], [ %568, %if.end3736 ]
  %count.2 = phi i32 [ %count.15502, %land.lhs.true3649 ], [ %count.15502, %land.lhs.true3641 ], [ %count.15502, %for.body3635 ], [ %inc3661, %if.then3660 ], [ 2, %if.end3767.critedge ], [ %inc3661, %if.then3750 ], [ %inc3661, %if.end3736 ]
  %indvars.iv.next5556 = add nuw nsw i64 %indvars.iv5555, 1
  %598 = load i16, ptr %uniquecharcount2561, align 8
  %conv3632 = zext i16 %598 to i32
  %599 = zext i32 %conv3632 to i64
  %cmp3633 = icmp samesign ult i64 %indvars.iv.next5556, %599
  br i1 %cmp3633, label %for.body3635, label %for.end3776.loopexit, !llvm.loop !15

for.end3776.loopexit:                             ; preds = %for.inc3774
  %idx3617.1.lcssa = phi i32 [ %idx3617.1, %for.inc3774 ]
  %count.2.lcssa = phi i32 [ %count.2, %for.inc3774 ]
  br label %for.end3776

for.end3776:                                      ; preds = %for.end3776.loopexit, %for.body3616
  %idx3617.0.lcssa = phi i32 [ -1, %for.body3616 ], [ %idx3617.1.lcssa, %for.end3776.loopexit ]
  %count.1.lcssa = phi i32 [ %spec.select5011, %for.body3616 ], [ %count.2.lcssa, %for.end3776.loopexit ]
  %cmp3777 = icmp eq i32 %count.1.lcssa, 1
  %600 = trunc nuw i64 %indvars.iv5558 to i32
  br i1 %cmp3777, label %if.then3779, label %for.end3822.loopexit5522

if.then3779:                                      ; preds = %for.end3776
  %conv3781 = sext i32 %idx3617.0.lcssa to i64
  %call3782 = call ptr @Perl_av_fetch(ptr noundef %call, i64 noundef %conv3781, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %len3783) #9
  %601 = load ptr, ptr %call3782, align 8
  %sv_flags3785 = getelementptr inbounds nuw i8, ptr %601, i64 12
  %602 = load i32, ptr %sv_flags3785, align 4
  %and3786 = and i32 %602, 2098176
  %cmp3787 = icmp eq i32 %and3786, 1024
  br i1 %cmp3787, label %cond.true3789, label %cond.false3793

cond.true3789:                                    ; preds = %if.then3779
  %603 = load ptr, ptr %601, align 8
  %xpv_cur3791 = getelementptr inbounds nuw i8, ptr %603, i64 16
  %604 = load i64, ptr %xpv_cur3791, align 8
  store i64 %604, ptr %len3783, align 8
  %605 = load ptr, ptr %call3782, align 8
  %sv_u3792 = getelementptr inbounds nuw i8, ptr %605, i64 16
  %606 = load ptr, ptr %sv_u3792, align 8
  br label %cond.end3795

cond.false3793:                                   ; preds = %if.then3779
  %call3794 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %601, ptr noundef nonnull %len3783, i32 noundef 2) #9
  br label %cond.end3795

cond.end3795:                                     ; preds = %cond.false3793, %cond.true3789
  %cond3796 = phi ptr [ %606, %cond.true3789 ], [ %call3794, %cond.false3793 ]
  %cmp3797 = icmp eq i64 %indvars.iv5558, 1
  br i1 %cmp3797, label %if.then3799, label %if.end3804

if.then3799:                                      ; preds = %cond.end3795
  store i8 %conv3586, ptr %type3800, align 1
  store i8 0, ptr %convert.0, align 2
  br label %if.end3804

if.end3804:                                       ; preds = %if.then3799, %cond.end3795
  %str.1 = phi ptr [ %string3801, %if.then3799 ], [ %str.05513, %cond.end3795 ]
  %607 = load i64, ptr %len3783, align 8
  %608 = load i8, ptr %convert.0, align 2
  %609 = trunc i64 %607 to i8
  %conv3808 = add i8 %608, %609
  store i8 %conv3808, ptr %convert.0, align 2
  %dec38095506 = add i64 %607, -1
  store i64 %dec38095506, ptr %len3783, align 8
  %tobool3810.not5507 = icmp eq i64 %607, 0
  br i1 %tobool3810.not5507, label %for.inc3820, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end3804
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader
  %ch3784.05509 = phi ptr [ %incdec.ptr, %while.body ], [ %cond3796, %while.body.preheader ]
  %str.25508 = phi ptr [ %incdec.ptr3811, %while.body ], [ %str.1, %while.body.preheader ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %ch3784.05509, i64 1
  %610 = load i8, ptr %ch3784.05509, align 1
  %incdec.ptr3811 = getelementptr inbounds nuw i8, ptr %str.25508, i64 1
  store i8 %610, ptr %str.25508, align 1
  %.pr = load i64, ptr %len3783, align 8
  %dec3809 = add i64 %.pr, -1
  store i64 %dec3809, ptr %len3783, align 8
  %tobool3810.not = icmp eq i64 %.pr, 0
  br i1 %tobool3810.not, label %for.inc3820.loopexit, label %while.body, !llvm.loop !16

for.inc3820.loopexit:                             ; preds = %while.body
  %incdec.ptr3811.lcssa = phi ptr [ %incdec.ptr3811, %while.body ]
  br label %for.inc3820

for.inc3820:                                      ; preds = %for.inc3820.loopexit, %if.end3804
  %str.2.lcssa = phi ptr [ %str.1, %if.end3804 ], [ %incdec.ptr3811.lcssa, %for.inc3820.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %len3783) #9
  %indvars.iv.next5559 = add nuw nsw i64 %indvars.iv5558, 1
  %indvars = trunc i64 %indvars.iv.next5559 to i32
  %611 = load i32, ptr %statecount3612, align 4
  %sub3613 = add i32 %611, -1
  %612 = zext i32 %sub3613 to i64
  %cmp3614 = icmp samesign ult i64 %indvars.iv.next5559, %612
  br i1 %cmp3614, label %for.body3616, label %for.end3822.loopexit5522, !llvm.loop !17

for.end3822.loopexit:                             ; preds = %cond.end3676
  %state3610.05514.lcssa.wide = phi i64 [ %indvars.iv5558, %cond.end3676 ]
  %str.05513.lcssa = phi ptr [ %str.05513, %cond.end3676 ]
  %613 = trunc nuw i64 %state3610.05514.lcssa.wide to i32
  br label %for.end3822

for.end3822.loopexit5522:                         ; preds = %for.inc3820, %for.end3776
  %str.05388.ph = phi ptr [ %str.05513, %for.end3776 ], [ %str.2.lcssa, %for.inc3820 ]
  %state3610.05386.ph = phi i32 [ %600, %for.end3776 ], [ %indvars, %for.inc3820 ]
  br label %for.end3822

for.end3822:                                      ; preds = %for.end3822.loopexit5522, %for.end3822.loopexit, %for.cond3611.preheader
  %str.05388 = phi ptr [ null, %for.cond3611.preheader ], [ %str.05513.lcssa, %for.end3822.loopexit ], [ %str.05388.ph, %for.end3822.loopexit5522 ]
  %state3610.05386 = phi i32 [ 1, %for.cond3611.preheader ], [ %613, %for.end3822.loopexit ], [ %state3610.05386.ph, %for.end3822.loopexit5522 ]
  %sub3823 = add i32 %state3610.05386, -1
  %prefixlen = getelementptr inbounds nuw i8, ptr %call4, i64 80
  store i32 %sub3823, ptr %prefixlen, align 8
  %tobool3824.not = icmp eq ptr %str.05388, null
  br i1 %tobool3824.not, label %if.end3862, label %if.then3825

if.then3825:                                      ; preds = %for.end3822
  %614 = load i8, ptr %convert.0, align 2
  %conv3827 = zext i8 %614 to i64
  %sub3829 = add nuw nsw i64 %conv3827, 3
  %div38304990 = lshr i64 %sub3829, 2
  %add3831 = add nuw nsw i64 %div38304990, 1
  %conv3839 = trunc nuw nsw i64 %add3831 to i16
  %next_off3840 = getelementptr inbounds nuw i8, ptr %convert.0, i64 2
  store i16 %conv3839, ptr %next_off3840, align 2
  store i32 %state3610.05386, ptr %startstate, align 4
  %conv3843 = zext i32 %sub3823 to i64
  %minlen3844 = getelementptr inbounds nuw i8, ptr %call4, i64 64
  %615 = load i64, ptr %minlen3844, align 8
  %sub3845 = sub i64 %615, %conv3843
  store i64 %sub3845, ptr %minlen3844, align 8
  %maxlen3848 = getelementptr inbounds nuw i8, ptr %call4, i64 72
  %616 = load i64, ptr %maxlen3848, align 8
  %sub3849 = sub i64 %616, %conv3843
  store i64 %sub3849, ptr %maxlen3848, align 8
  %tobool3851.not = icmp eq i64 %616, %conv3843
  br i1 %tobool3851.not, label %if.else3853, label %if.then3852

if.then3852:                                      ; preds = %if.then3825
  %add.ptr3832 = getelementptr inbounds nuw %struct.regnode, ptr %convert.0, i64 %add3831
  br label %if.end3862

if.else3853:                                      ; preds = %if.then3825
  %sub.ptr.lhs.cast3854 = ptrtoint ptr %tail to i64
  %sub.ptr.rhs.cast3855 = ptrtoint ptr %convert.0 to i64
  %sub.ptr.sub3856 = sub i64 %sub.ptr.lhs.cast3854, %sub.ptr.rhs.cast3855
  %sub.ptr.div3857 = lshr exact i64 %sub.ptr.sub3856, 2
  %conv3858 = trunc i64 %sub.ptr.div3857 to i16
  store i16 %conv3858, ptr %next_off3840, align 2
  br label %if.end3862

if.end3862:                                       ; preds = %if.else3853, %if.then3852, %for.end3822, %land.lhs.true3606, %if.end3600
  %convert.3 = phi ptr [ %convert.0, %if.end3600 ], [ %convert.0, %land.lhs.true3606 ], [ %convert.0, %for.end3822 ], [ %add.ptr3832, %if.then3852 ], [ %convert.0, %if.else3853 ]
  %tobool3863.not = icmp eq ptr %jumper.6, null
  %spec.select5012 = select i1 %tobool3863.not, ptr %last, ptr %jumper.6
  %maxlen3866 = getelementptr inbounds nuw i8, ptr %call4, i64 72
  %617 = load i64, ptr %maxlen3866, align 8
  %tobool3867.not = icmp eq i64 %617, 0
  br i1 %tobool3867.not, label %if.end3912, label %if.then3868

if.then3868:                                      ; preds = %if.end3862
  %sub.ptr.lhs.cast3869 = ptrtoint ptr %tail to i64
  %sub.ptr.rhs.cast3870 = ptrtoint ptr %convert.3 to i64
  %sub.ptr.sub3871 = sub i64 %sub.ptr.lhs.cast3869, %sub.ptr.rhs.cast3870
  %sub.ptr.div3872 = lshr exact i64 %sub.ptr.sub3871, 2
  %conv3873 = trunc i64 %sub.ptr.div3872 to i16
  %next_off3874 = getelementptr inbounds nuw i8, ptr %convert.3, i64 2
  store i16 %conv3873, ptr %next_off3874, align 2
  %arg1 = getelementptr inbounds nuw i8, ptr %convert.3, i64 4
  store i32 %cond.i, ptr %arg1, align 4
  %jump3875 = getelementptr inbounds nuw i8, ptr %call4, i64 40
  %618 = load ptr, ptr %jump3875, align 8
  %tobool3876.not = icmp eq ptr %618, null
  br i1 %tobool3876.not, label %if.end3885, label %if.then3877

if.then3877:                                      ; preds = %if.then3868
  %sub.ptr.lhs.cast3878 = ptrtoint ptr %nextbranch.4 to i64
  %sub.ptr.sub3880 = sub i64 %sub.ptr.lhs.cast3878, %sub.ptr.rhs.cast3870
  %sub.ptr.div3881 = lshr exact i64 %sub.ptr.sub3880, 2
  %conv3882 = trunc i64 %sub.ptr.div3881 to i16
  store i16 %conv3882, ptr %618, align 2
  br label %if.end3885

if.end3885:                                       ; preds = %if.then3877, %if.then3868
  %states3886 = getelementptr inbounds nuw i8, ptr %call4, i64 16
  %619 = load ptr, ptr %states3886, align 8
  %620 = load i32, ptr %startstate, align 4
  %idxprom3888 = zext i32 %620 to i64
  %arrayidx3889 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %619, i64 %idxprom3888
  %621 = load i16, ptr %arrayidx3889, align 8
  %tobool3891.not = icmp eq i16 %621, 0
  br i1 %tobool3891.not, label %land.lhs.true3892, label %if.else3908

land.lhs.true3892:                                ; preds = %if.end3885
  %622 = load ptr, ptr %bitmap3602, align 8
  %tobool3894.not = icmp ne ptr %622, null
  %sub.ptr.lhs.cast3896 = ptrtoint ptr %spec.select5012 to i64
  %sub.ptr.sub3898 = sub i64 %sub.ptr.lhs.cast3896, %sub.ptr.rhs.cast3870
  %cmp3899 = icmp sgt i64 %sub.ptr.sub3898, 39
  %or.cond5013 = select i1 %tobool3894.not, i1 %cmp3899, i1 false
  br i1 %or.cond5013, label %if.then3901, label %if.else3908

if.then3901:                                      ; preds = %land.lhs.true3892
  %type3902 = getelementptr inbounds nuw i8, ptr %convert.3, i64 1
  store i8 73, ptr %type3902, align 1
  %bitmap3903 = getelementptr inbounds nuw i8, ptr %convert.3, i64 8
  %623 = load ptr, ptr %bitmap3602, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %bitmap3903, ptr noundef nonnull align 1 dereferenceable(32) %623, i64 32, i1 false)
  %624 = load ptr, ptr %bitmap3602, align 8
  call void @free(ptr noundef %624) #9
  store ptr null, ptr %bitmap3602, align 8
  br label %if.end3910

if.else3908:                                      ; preds = %land.lhs.true3892, %if.end3885
  %type3909 = getelementptr inbounds nuw i8, ptr %convert.3, i64 1
  store i8 72, ptr %type3909, align 1
  br label %if.end3910

if.end3910:                                       ; preds = %if.else3908, %if.then3901
  store i8 %conv3586, ptr %convert.3, align 2
  br label %if.end3912

if.end3912:                                       ; preds = %if.end3910, %if.end3862
  %625 = load i32, ptr %wordcount, align 8
  %cmp3918.not5519 = icmp eq i32 %625, 0
  br i1 %cmp3918.not5519, label %for.end3954, label %for.body3920.lr.ph

for.body3920.lr.ph:                               ; preds = %if.end3912
  %states3940 = getelementptr inbounds nuw i8, ptr %call4, i64 16
  br label %for.body3920

for.body3920:                                     ; preds = %for.inc3952, %for.body3920.lr.ph
  %word.05520 = phi i16 [ 1, %for.body3920.lr.ph ], [ %inc3953, %for.inc3952 ]
  %626 = load ptr, ptr %wordinfo, align 8
  %idxprom3922 = zext i16 %word.05520 to i64
  %arrayidx3923 = getelementptr inbounds nuw %struct.reg_trie_wordinfo, ptr %626, i64 %idxprom3922
  %627 = load i16, ptr %arrayidx3923, align 4
  %tobool3925.not = icmp eq i16 %627, 0
  br i1 %tobool3925.not, label %if.end3927, label %for.inc3952

if.end3927:                                       ; preds = %for.body3920
  %accept3931 = getelementptr inbounds nuw i8, ptr %arrayidx3923, i64 8
  %628 = load i32, ptr %accept3931, align 4
  %tobool3933.old.not = icmp eq i32 %628, 0
  br i1 %tobool3933.old.not, label %while.end3947, label %while.body3934.preheader

while.body3934.preheader:                         ; preds = %if.end3927
  br label %while.body3934

while.body3934:                                   ; preds = %if.end3939, %while.body3934.preheader
  %state3913.0 = phi i32 [ %629, %if.end3939 ], [ %628, %while.body3934.preheader ]
  %idxprom3935 = zext i32 %state3913.0 to i64
  %arrayidx3936 = getelementptr inbounds nuw i32, ptr %call2558, i64 %idxprom3935
  %629 = load i32, ptr %arrayidx3936, align 4
  %tobool3937.not = icmp eq i32 %629, 0
  br i1 %tobool3937.not, label %while.end3947.loopexit, label %if.end3939

if.end3939:                                       ; preds = %while.body3934
  %630 = load ptr, ptr %states3940, align 8
  %idxprom3941 = zext i32 %629 to i64
  %arrayidx3942 = getelementptr inbounds nuw %struct._reg_trie_state, ptr %630, i64 %idxprom3941
  %631 = load i16, ptr %arrayidx3942, align 8
  %tobool3944 = icmp eq i16 %631, 0
  br i1 %tobool3944, label %while.body3934, label %while.end3947.loopexit, !llvm.loop !18

while.end3947.loopexit:                           ; preds = %if.end3939, %while.body3934
  %prev3914.1.ph = phi i16 [ %631, %if.end3939 ], [ 0, %while.body3934 ]
  br label %while.end3947

while.end3947:                                    ; preds = %while.end3947.loopexit, %if.end3927
  %prev3914.1 = phi i16 [ 0, %if.end3927 ], [ %prev3914.1.ph, %while.end3947.loopexit ]
  store i16 %prev3914.1, ptr %arrayidx3923, align 4
  br label %for.inc3952

for.inc3952:                                      ; preds = %while.end3947, %for.body3920
  %inc3953 = add i16 %word.05520, 1
  %conv3916 = zext i16 %inc3953 to i32
  %632 = load i32, ptr %wordcount, align 8
  %cmp3918.not = icmp ult i32 %632, %conv3916
  br i1 %cmp3918.not, label %for.end3954.loopexit, label %for.body3920, !llvm.loop !19

for.end3954.loopexit:                             ; preds = %for.inc3952
  br label %for.end3954

for.end3954:                                      ; preds = %for.end3954.loopexit, %if.end3912
  call void @Perl_safesysfree(ptr noundef %call2558) #9
  %633 = load ptr, ptr %rxi.i, align 8
  %data3956 = getelementptr inbounds nuw i8, ptr %633, i64 24
  %634 = load ptr, ptr %data3956, align 8
  %data3957 = getelementptr inbounds nuw i8, ptr %634, i64 16
  %add3958 = add i32 %cond.i, 1
  %idxprom3959 = zext i32 %add3958 to i64
  %arrayidx3960 = getelementptr inbounds nuw ptr, ptr %data3957, i64 %idxprom3959
  store ptr %widecharmap.0.lcssa, ptr %arrayidx3960, align 8
  %sv_refcnt.i = getelementptr inbounds nuw i8, ptr %call, i64 8
  %635 = load i32, ptr %sv_refcnt.i, align 8
  %cmp.i5229 = icmp ugt i32 %635, 1
  br i1 %cmp.i5229, label %if.then.i5232, label %if.else.i5230

if.then.i5232:                                    ; preds = %for.end3954
  %sub.i5233 = add i32 %635, -1
  store i32 %sub.i5233, ptr %sv_refcnt.i, align 8
  br label %S_SvREFCNT_dec_NN.exit

if.else.i5230:                                    ; preds = %for.end3954
  call void @Perl_sv_free2(ptr noundef nonnull %call, i32 noundef %635) #9
  br label %S_SvREFCNT_dec_NN.exit

S_SvREFCNT_dec_NN.exit:                           ; preds = %if.else.i5230, %if.then.i5232
  %jump3961 = getelementptr inbounds nuw i8, ptr %call4, i64 40
  %636 = load ptr, ptr %jump3961, align 8
  %tobool3962.not = icmp eq ptr %636, null
  br i1 %tobool3962.not, label %cond.false3964, label %cond.end3969

cond.false3964:                                   ; preds = %S_SvREFCNT_dec_NN.exit
  %637 = load i32, ptr %startstate, align 4
  %cmp3966 = icmp ugt i32 %637, 1
  %cond3968 = select i1 %cmp3966, i32 4, i32 1
  br label %cond.end3969

cond.end3969:                                     ; preds = %cond.false3964, %S_SvREFCNT_dec_NN.exit
  %cond3970 = phi i32 [ %cond3968, %cond.false3964 ], [ 2, %S_SvREFCNT_dec_NN.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %uvc) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %len) #9
  ret i32 %cond3970
}

declare i64 @Perl_valid_utf8_to_uvchr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #1

declare ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind allocsize(1) }

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
!13 = distinct !{!13, !1}
!14 = distinct !{!14, !1}
!15 = distinct !{!15, !1}
!16 = distinct !{!16, !1}
!17 = distinct !{!17, !1}
!18 = distinct !{!18, !1}
!19 = distinct !{!19, !1}
