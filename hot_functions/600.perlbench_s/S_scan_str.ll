; ModuleID = '/tmp/tmp.XPbn0C7tez/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/toke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }

@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_parser = external local_unnamed_addr global ptr, align 8
@PL_compiling = external global %struct.cop, align 8
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.77 = external hidden unnamed_addr constant [15 x i8], align 1
@PL_encoding = external local_unnamed_addr global ptr, align 8
@PL_lex_encoding = external local_unnamed_addr global ptr, align 8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @Perl_utf8n_to_uvchr(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local zeroext i1 @Perl_lex_next_chunk(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
declare dso_local void @Perl_lex_read_space(i32 noundef) local_unnamed_addr #3

declare void @Perl_sv_free(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden fastcc ptr @S_scan_str(ptr noundef %start, i32 noundef range(i32 0, 2) %keep_bracketed_quoted, i32 noundef range(i32 0, 2) %keep_delims, i32 noundef range(i32 0, 17) %re_reparse, ptr noundef writeonly captures(address_is_null) %delimp) unnamed_addr #3 {
entry:
  %termstr = alloca [13 x i8], align 1
  %termlen = alloca i64, align 8
  %offset = alloca i32, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %termstr) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %termlen) #7
  %0 = load i8, ptr %start, align 1
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 17408
  %cmp = icmp eq i32 %and, 17408
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %s34.i = ptrtoint ptr %start to i64
  %2 = load ptr, ptr @PL_parser, align 8
  %lex_formbrack.i = getelementptr inbounds nuw i8, ptr %2, i64 76
  %3 = load i32, ptr %lex_formbrack.i, align 4
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then
  %lex_brackets.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load i32, ptr %lex_brackets.i, align 8
  %cmp.not.i = icmp sgt i32 %4, %3
  br i1 %cmp.not.i, label %if.else.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %land.lhs.true.i
  %bufend.i = getelementptr inbounds nuw i8, ptr %2, i64 200
  %5 = load ptr, ptr %bufend.i, align 8
  %cmp231.i = icmp ult ptr %start, %5
  br i1 %cmp231.i, label %land.rhs.preheader.i, label %if.end

land.rhs.preheader.i:                             ; preds = %while.cond.preheader.i
  %6 = ptrtoint ptr %5 to i64
  %7 = sub i64 %6, %s34.i
  %scevgep.i = getelementptr i8, ptr %start, i64 %7
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i, %land.rhs.preheader.i
  %s.addr.032.i = phi ptr [ %incdec.ptr.i, %while.body.i ], [ %start, %land.rhs.preheader.i ]
  %8 = load i8, ptr %s.addr.032.i, align 1
  %idxprom.i = zext i8 %8 to i64
  %arrayidx.i = getelementptr inbounds nuw i32, ptr @PL_charclass, i64 %idxprom.i
  %9 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %9, 18432
  %cmp3.i = icmp eq i32 %and.i, 18432
  %tobool4.not.i = icmp eq i8 %8, 0
  %or.cond.i = or i1 %tobool4.not.i, %cmp3.i
  br i1 %or.cond.i, label %while.body.i, label %if.end.loopexit

while.body.i:                                     ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %s.addr.032.i, i64 1
  %exitcond.not.i = icmp eq ptr %incdec.ptr.i, %5
  br i1 %exitcond.not.i, label %if.end.loopexit, label %land.rhs.i, !llvm.loop !0

if.else.i:                                        ; preds = %land.lhs.true.i, %if.then
  %bufptr.i = getelementptr inbounds nuw i8, ptr %2, i64 176
  %10 = load ptr, ptr %bufptr.i, align 8
  %linestr.i = getelementptr inbounds nuw i8, ptr %2, i64 168
  %11 = load ptr, ptr %linestr.i, align 8
  %sv_u.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %12 = load ptr, ptr %sv_u.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  store ptr %start, ptr %bufptr.i, align 8
  %lex_inwhat.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %13 = load i16, ptr %lex_inwhat.i, align 8
  %tobool6.not.i = icmp eq i16 %13, 0
  br i1 %tobool6.not.i, label %lor.rhs7.i, label %lor.end11.i

lor.rhs7.i:                                       ; preds = %if.else.i
  %lex_state.i = getelementptr inbounds nuw i8, ptr %2, i64 238
  %14 = load i8, ptr %lex_state.i, align 2
  %cmp9.i = icmp eq i8 %14, 1
  %15 = select i1 %cmp9.i, i32 -2147483646, i32 2
  br label %lor.end11.i

lor.end11.i:                                      ; preds = %lor.rhs7.i, %if.else.i
  %cond.i = phi i32 [ -2147483646, %if.else.i ], [ %15, %lor.rhs7.i ]
  tail call void @Perl_lex_read_space(i32 noundef %cond.i)
  %16 = load ptr, ptr @PL_parser, align 8
  %bufptr13.i = getelementptr inbounds nuw i8, ptr %16, i64 176
  %17 = load ptr, ptr %bufptr13.i, align 8
  %linestr14.i = getelementptr inbounds nuw i8, ptr %16, i64 168
  %18 = load ptr, ptr %linestr14.i, align 8
  %sv_u15.i = getelementptr inbounds nuw i8, ptr %18, i64 16
  %19 = load ptr, ptr %sv_u15.i, align 8
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %19, i64 %sub.ptr.sub.i
  %linestart.i = getelementptr inbounds nuw i8, ptr %16, i64 208
  %20 = load ptr, ptr %linestart.i, align 8
  %cmp18.i = icmp ugt ptr %20, %add.ptr.i
  %spec.store.select.i = select i1 %cmp18.i, ptr %20, ptr %add.ptr.i
  store ptr %spec.store.select.i, ptr %bufptr13.i, align 8
  br label %if.end

if.end.loopexit:                                  ; preds = %while.body.i, %land.rhs.i
  %s.0.ph = phi ptr [ %s.addr.032.i, %land.rhs.i ], [ %scevgep.i, %while.body.i ]
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %lor.end11.i, %while.cond.preheader.i, %entry
  %s.0 = phi ptr [ %start, %entry ], [ %17, %lor.end11.i ], [ %start, %while.cond.preheader.i ], [ %s.0.ph, %if.end.loopexit ]
  %21 = load ptr, ptr @PL_curcop, align 8
  %cop_line = getelementptr inbounds nuw i8, ptr %21, i64 36
  %22 = load i32, ptr %cop_line, align 4
  %23 = load ptr, ptr @PL_parser, align 8
  %copline = getelementptr inbounds nuw i8, ptr %23, i64 232
  %24 = load i32, ptr %copline, align 8
  %. = tail call i32 @llvm.umin.i32(i32 %22, i32 %24)
  store i32 %., ptr %copline, align 8
  %25 = load i8, ptr %s.0, align 1
  %linestr = getelementptr inbounds nuw i8, ptr %23, i64 168
  %26 = load ptr, ptr %linestr, align 8
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %sv_flags = getelementptr inbounds nuw i8, ptr %26, i64 12
  %27 = load i32, ptr %sv_flags, align 4
  %and6 = and i32 %27, 536870912
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %cop_hints = getelementptr inbounds nuw i8, ptr %21, i64 56
  %28 = load i32, ptr %cop_hints, align 8
  %and9 = and i32 %28, 8
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true8, %land.lhs.true, %if.end
  %lex_flags = getelementptr inbounds nuw i8, ptr %23, i64 609
  %29 = load i8, ptr %lex_flags, align 1
  %30 = and i8 %29, 2
  %tobool12.not = icmp eq i8 %30, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %if.then18

land.lhs.true13:                                  ; preds = %lor.lhs.false
  %31 = load i32, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  %and14 = and i32 %31, 8388608
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %land.lhs.true13, %lor.lhs.false
  store i8 %25, ptr %termstr, align 1
  %conv20 = zext i8 %25 to i64
  store i64 1, ptr %termlen, align 8
  br label %if.end31

if.else:                                          ; preds = %land.lhs.true13, %land.lhs.true8
  %bufend = getelementptr inbounds nuw i8, ptr %23, i64 200
  %32 = load ptr, ptr %bufend, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %32 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %s.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call21 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #7
  %cond23 = select i1 %call21, i32 0, i32 -8161
  %call24 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %s.0, i64 noundef %sub.ptr.sub, ptr noundef nonnull %termlen, i32 noundef %cond23) #7
  %33 = load i64, ptr %termlen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %termstr, ptr nonnull align 1 %s.0, i64 %33, i1 false)
  %.lobit = lshr i8 %25, 7
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then18
  %termcode.0 = phi i64 [ %conv20, %if.then18 ], [ %call24, %if.else ]
  %has_utf8.0 = phi i8 [ 0, %if.then18 ], [ %.lobit, %if.else ]
  %34 = load ptr, ptr @PL_curcop, align 8
  %cop_line32 = getelementptr inbounds nuw i8, ptr %34, i64 36
  %35 = load i32, ptr %cop_line32, align 4
  %36 = load ptr, ptr @PL_parser, align 8
  %multi_start = getelementptr inbounds nuw i8, ptr %36, i64 120
  store i32 %35, ptr %multi_start, align 8
  %multi_open = getelementptr inbounds nuw i8, ptr %36, i64 128
  store i8 %25, ptr %multi_open, align 8
  %herelines33 = getelementptr inbounds nuw i8, ptr %36, i64 600
  %37 = load i32, ptr %herelines33, align 8
  %tobool35.not = icmp eq i8 %25, 0
  br i1 %tobool35.not, label %if.end44, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.end31
  %conv34 = sext i8 %25 to i32
  %memchr = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.77, i32 %conv34, i64 15)
  %tobool39.not = icmp eq ptr %memchr, null
  br i1 %tobool39.not, label %if.end44, label %if.then40

if.then40:                                        ; preds = %land.lhs.true36
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %memchr, i64 5
  %38 = load i8, ptr %arrayidx41, align 1
  store i8 %38, ptr %termstr, align 1
  %conv43 = zext i8 %38 to i64
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %land.lhs.true36, %if.end31
  %termcode.1 = phi i64 [ %conv43, %if.then40 ], [ %termcode.0, %land.lhs.true36 ], [ %termcode.0, %if.end31 ]
  %term.0 = phi i8 [ %38, %if.then40 ], [ %25, %land.lhs.true36 ], [ 0, %if.end31 ]
  %term.0.fr = freeze i8 %term.0
  %multi_close = getelementptr inbounds nuw i8, ptr %36, i64 129
  store i8 %term.0.fr, ptr %multi_close, align 1
  %39 = load i8, ptr %multi_open, align 8
  %.fr = freeze i8 %39
  %cmp49 = icmp eq i8 %.fr, %term.0.fr
  %spec.select1107 = select i1 %cmp49, i32 0, i32 %keep_bracketed_quoted
  %call53 = call ptr @Perl_newSV_type(i32 noundef 5) #7
  %sv_flags54 = getelementptr inbounds nuw i8, ptr %call53, i64 12
  %40 = load i32, ptr %sv_flags54, align 4
  %and55 = and i32 %40, 268435456
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %lor.lhs.false57, label %cond.true60

lor.lhs.false57:                                  ; preds = %if.end44
  %41 = load ptr, ptr %call53, align 8
  %xpv_len_u = getelementptr inbounds nuw i8, ptr %41, i64 24
  %42 = load i64, ptr %xpv_len_u, align 8
  %cmp58 = icmp ult i64 %42, 80
  br i1 %cmp58, label %cond.true60, label %do.body

cond.true60:                                      ; preds = %lor.lhs.false57, %if.end44
  %call61 = call ptr @Perl_sv_grow(ptr noundef nonnull %call53, i64 noundef 80) #7
  br label %do.body

do.body:                                          ; preds = %cond.true60, %lor.lhs.false57
  %sext = shl i64 %termcode.1, 32
  %conv65 = ashr exact i64 %sext, 32
  %43 = load ptr, ptr %call53, align 8
  %xiv_u = getelementptr inbounds nuw i8, ptr %43, i64 32
  store i64 %conv65, ptr %xiv_u, align 8
  %44 = load i32, ptr %sv_flags54, align 4
  %and68 = and i32 %44, 1610547455
  %or = or disjoint i32 %and68, 17408
  store i32 %or, ptr %sv_flags54, align 4
  %tobool70.not = icmp eq i32 %keep_delims, 0
  br i1 %tobool70.not, label %if.end72, label %if.then71

if.then71:                                        ; preds = %do.body
  %45 = load i64, ptr %termlen, align 8
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %call53, ptr noundef nonnull %s.0, i64 noundef %45, i32 noundef 2) #7
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %do.body
  %46 = load i64, ptr %termlen, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %s.0, i64 %46
  %tobool106.old.not = icmp eq i32 %re_reparse, 0
  %sv_u213 = getelementptr inbounds nuw i8, ptr %call53, i64 16
  %tobool272.not = icmp eq i32 %spec.select1107, 0
  %tobool305.not = icmp eq i32 %spec.select1107, 0
  %sv_u413 = getelementptr inbounds nuw i8, ptr %call53, i64 16
  %tobool590.not = icmp eq i32 %spec.select1107, 0
  %cmp467 = icmp ne i8 %term.0.fr, 92
  %tobool470.not = icmp eq i32 %spec.select1107, 0
  %tobool478.not = icmp ne i32 %re_reparse, 0
  br label %for.cond

for.cond:                                         ; preds = %if.end769, %if.end72
  %last_off.0 = phi i32 [ 0, %if.end72 ], [ %last_off.5, %if.end769 ]
  %has_utf8.1 = phi i8 [ %has_utf8.0, %if.end72 ], [ %has_utf8.7, %if.end769 ]
  %brackets.0 = phi i32 [ 1, %if.end72 ], [ %brackets.11, %if.end769 ]
  %s.1 = phi ptr [ %add.ptr, %if.end72 ], [ %215, %if.end769 ]
  %47 = load ptr, ptr @PL_encoding, align 8
  %tobool73.not = icmp eq ptr %47, null
  br i1 %tobool73.not, label %lor.lhs.false74, label %land.lhs.true82

lor.lhs.false74:                                  ; preds = %for.cond
  %48 = load ptr, ptr @PL_lex_encoding, align 8
  %tobool75.not = icmp eq ptr %48, null
  br i1 %tobool75.not, label %if.end382, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %lor.lhs.false74
  %call77 = call ptr @Perl__get_encoding() #7
  %cmp78.not = icmp eq ptr %call77, null
  br i1 %cmp78.not, label %if.end382, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %land.lhs.true76, %for.cond
  %49 = load ptr, ptr @PL_parser, align 8
  %linestr83 = getelementptr inbounds nuw i8, ptr %49, i64 168
  %50 = load ptr, ptr %linestr83, align 8
  %tobool84.not = icmp eq ptr %50, null
  br i1 %tobool84.not, label %lor.lhs.false95, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %land.lhs.true82
  %sv_flags87 = getelementptr inbounds nuw i8, ptr %50, i64 12
  %51 = load i32, ptr %sv_flags87, align 4
  %and88 = and i32 %51, 536870912
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %lor.lhs.false95, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %land.lhs.true85
  %52 = load ptr, ptr @PL_curcop, align 8
  %cop_hints91 = getelementptr inbounds nuw i8, ptr %52, i64 56
  %53 = load i32, ptr %cop_hints91, align 8
  %and93 = and i32 %53, 8
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end382, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %land.lhs.true90, %land.lhs.true85, %land.lhs.true82
  %lex_flags96 = getelementptr inbounds nuw i8, ptr %49, i64 609
  %54 = load i8, ptr %lex_flags96, align 1
  %55 = and i8 %54, 2
  %tobool99.not = icmp eq i8 %55, 0
  br i1 %tobool99.not, label %land.lhs.true100, label %land.lhs.true105

land.lhs.true100:                                 ; preds = %lor.lhs.false95
  %56 = load i32, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  %and101 = and i32 %56, 8388608
  %57 = or disjoint i32 %and101, %re_reparse
  %or.cond.not = icmp eq i32 %57, 0
  br i1 %or.cond.not, label %if.then107, label %if.end382

land.lhs.true105:                                 ; preds = %lor.lhs.false95
  br i1 %tobool106.old.not, label %if.then107, label %if.end382

if.then107:                                       ; preds = %land.lhs.true105, %land.lhs.true100
  br label %while.body

while.body:                                       ; preds = %cleanup359, %if.then107
  %s.21147 = phi ptr [ %s.1, %if.then107 ], [ %s.4.lcssa, %cleanup359 ]
  %brackets.11146 = phi i32 [ %brackets.0, %if.then107 ], [ %brackets.5, %cleanup359 ]
  %last_off.11145 = phi i32 [ %last_off.0, %if.then107 ], [ %last_off.3, %cleanup359 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %offset) #7
  %58 = load ptr, ptr @PL_parser, align 8
  %linestr108 = getelementptr inbounds nuw i8, ptr %58, i64 168
  %59 = load ptr, ptr %linestr108, align 8
  %sv_u109 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %60 = load ptr, ptr %sv_u109, align 8
  %sub.ptr.lhs.cast111 = ptrtoint ptr %s.21147 to i64
  %sub.ptr.rhs.cast112 = ptrtoint ptr %60 to i64
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast112
  %conv114 = trunc i64 %sub.ptr.sub113 to i32
  store i32 %conv114, ptr %offset, align 4
  %call115 = call ptr @Perl__get_encoding() #7
  %61 = load ptr, ptr @PL_parser, align 8
  %linestr116 = getelementptr inbounds nuw i8, ptr %61, i64 168
  %62 = load ptr, ptr %linestr116, align 8
  %63 = load i64, ptr %termlen, align 8
  %conv118 = trunc i64 %63 to i32
  %call119 = call zeroext i1 @Perl_sv_cat_decode(ptr noundef %call53, ptr noundef %call115, ptr noundef %62, ptr noundef nonnull %offset, ptr noundef nonnull %termstr, i32 noundef %conv118) #7
  %64 = load ptr, ptr @PL_parser, align 8
  %linestr120 = getelementptr inbounds nuw i8, ptr %64, i64 168
  %65 = load ptr, ptr %linestr120, align 8
  %sv_flags121 = getelementptr inbounds nuw i8, ptr %65, i64 12
  %66 = load i32, ptr %sv_flags121, align 4
  %and122 = and i32 %66, 268435456
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end208, label %if.then124

if.then124:                                       ; preds = %while.body
  %sv_u126 = getelementptr inbounds nuw i8, ptr %65, i64 16
  %67 = load ptr, ptr %sv_u126, align 8
  %bufend127 = getelementptr inbounds nuw i8, ptr %64, i64 200
  %68 = load ptr, ptr %bufend127, align 8
  %sub.ptr.lhs.cast128 = ptrtoint ptr %68 to i64
  %sub.ptr.rhs.cast129 = ptrtoint ptr %67 to i64
  %sub.ptr.sub130 = sub i64 %sub.ptr.lhs.cast128, %sub.ptr.rhs.cast129
  %bufptr = getelementptr inbounds nuw i8, ptr %64, i64 176
  %69 = load ptr, ptr %bufptr, align 8
  %sub.ptr.lhs.cast131 = ptrtoint ptr %69 to i64
  %sub.ptr.sub133 = sub i64 %sub.ptr.lhs.cast131, %sub.ptr.rhs.cast129
  %oldbufptr = getelementptr inbounds nuw i8, ptr %64, i64 184
  %70 = load ptr, ptr %oldbufptr, align 8
  %sub.ptr.lhs.cast134 = ptrtoint ptr %70 to i64
  %sub.ptr.sub136 = sub i64 %sub.ptr.lhs.cast134, %sub.ptr.rhs.cast129
  %oldoldbufptr = getelementptr inbounds nuw i8, ptr %64, i64 192
  %71 = load ptr, ptr %oldoldbufptr, align 8
  %sub.ptr.lhs.cast137 = ptrtoint ptr %71 to i64
  %sub.ptr.sub139 = sub i64 %sub.ptr.lhs.cast137, %sub.ptr.rhs.cast129
  %linestart = getelementptr inbounds nuw i8, ptr %64, i64 208
  %72 = load ptr, ptr %linestart, align 8
  %sub.ptr.lhs.cast140 = ptrtoint ptr %72 to i64
  %sub.ptr.sub142 = sub i64 %sub.ptr.lhs.cast140, %sub.ptr.rhs.cast129
  %last_uni = getelementptr inbounds nuw i8, ptr %64, i64 216
  %73 = load ptr, ptr %last_uni, align 8
  %last_lop = getelementptr inbounds nuw i8, ptr %64, i64 224
  %74 = load ptr, ptr %last_lop, align 8
  %tobool152.not = icmp eq ptr %74, null
  %sub.ptr.lhs.cast155 = ptrtoint ptr %74 to i64
  %sub.ptr.sub157 = sub i64 %sub.ptr.lhs.cast155, %sub.ptr.rhs.cast129
  %cond160 = select i1 %tobool152.not, i64 0, i64 %sub.ptr.sub157
  %lex_shared = getelementptr inbounds nuw i8, ptr %64, i64 160
  %75 = load ptr, ptr %lex_shared, align 8
  %re_eval_start = getelementptr inbounds nuw i8, ptr %75, i64 24
  %76 = load ptr, ptr %re_eval_start, align 8
  %tobool161.not = icmp eq ptr %76, null
  %sub.ptr.lhs.cast165 = ptrtoint ptr %76 to i64
  %sub.ptr.sub167 = sub i64 %sub.ptr.lhs.cast165, %sub.ptr.rhs.cast129
  %cond170 = select i1 %tobool161.not, i64 0, i64 %sub.ptr.sub167
  %sub.ptr.sub173 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast129
  call void @Perl_sv_force_normal_flags(ptr noundef nonnull %65, i32 noundef 0) #7
  %77 = load ptr, ptr @PL_parser, align 8
  %linestr175 = getelementptr inbounds nuw i8, ptr %77, i64 168
  %78 = load ptr, ptr %linestr175, align 8
  %sv_u176 = getelementptr inbounds nuw i8, ptr %78, i64 16
  %79 = load ptr, ptr %sv_u176, align 8
  %add.ptr177 = getelementptr inbounds nuw i8, ptr %79, i64 %sub.ptr.sub130
  %bufend178 = getelementptr inbounds nuw i8, ptr %77, i64 200
  store ptr %add.ptr177, ptr %bufend178, align 8
  %add.ptr179 = getelementptr inbounds nuw i8, ptr %79, i64 %sub.ptr.sub133
  %bufptr180 = getelementptr inbounds nuw i8, ptr %77, i64 176
  store ptr %add.ptr179, ptr %bufptr180, align 8
  %add.ptr181 = getelementptr inbounds nuw i8, ptr %79, i64 %sub.ptr.sub136
  %oldbufptr182 = getelementptr inbounds nuw i8, ptr %77, i64 184
  store ptr %add.ptr181, ptr %oldbufptr182, align 8
  %add.ptr183 = getelementptr inbounds nuw i8, ptr %79, i64 %sub.ptr.sub139
  %oldoldbufptr184 = getelementptr inbounds nuw i8, ptr %77, i64 192
  store ptr %add.ptr183, ptr %oldoldbufptr184, align 8
  %add.ptr185 = getelementptr inbounds nuw i8, ptr %79, i64 %sub.ptr.sub142
  %linestart186 = getelementptr inbounds nuw i8, ptr %77, i64 208
  store ptr %add.ptr185, ptr %linestart186, align 8
  %last_uni187 = getelementptr inbounds nuw i8, ptr %77, i64 216
  %80 = load ptr, ptr %last_uni187, align 8
  %tobool188.not = icmp eq ptr %80, null
  br i1 %tobool188.not, label %if.end192, label %if.then189

if.then189:                                       ; preds = %if.then124
  %tobool143.not = icmp eq ptr %73, null
  %sub.ptr.lhs.cast146 = ptrtoint ptr %73 to i64
  %sub.ptr.sub148 = sub i64 %sub.ptr.lhs.cast146, %sub.ptr.rhs.cast129
  %cond151 = select i1 %tobool143.not, i64 0, i64 %sub.ptr.sub148
  %add.ptr190 = getelementptr inbounds nuw i8, ptr %79, i64 %cond151
  store ptr %add.ptr190, ptr %last_uni187, align 8
  br label %if.end192

if.end192:                                        ; preds = %if.then189, %if.then124
  %last_lop193 = getelementptr inbounds nuw i8, ptr %77, i64 224
  %81 = load ptr, ptr %last_lop193, align 8
  %tobool194.not = icmp eq ptr %81, null
  br i1 %tobool194.not, label %if.end198, label %if.then195

if.then195:                                       ; preds = %if.end192
  %add.ptr196 = getelementptr inbounds nuw i8, ptr %79, i64 %cond160
  store ptr %add.ptr196, ptr %last_lop193, align 8
  br label %if.end198

if.end198:                                        ; preds = %if.then195, %if.end192
  %lex_shared199 = getelementptr inbounds nuw i8, ptr %77, i64 160
  %82 = load ptr, ptr %lex_shared199, align 8
  %re_eval_start200 = getelementptr inbounds nuw i8, ptr %82, i64 24
  %83 = load ptr, ptr %re_eval_start200, align 8
  %tobool201.not = icmp eq ptr %83, null
  br i1 %tobool201.not, label %if.end206, label %if.then202

if.then202:                                       ; preds = %if.end198
  %add.ptr203 = getelementptr inbounds nuw i8, ptr %79, i64 %cond170
  store ptr %add.ptr203, ptr %re_eval_start200, align 8
  br label %if.end206

if.end206:                                        ; preds = %if.then202, %if.end198
  %add.ptr207 = getelementptr inbounds nuw i8, ptr %79, i64 %sub.ptr.sub173
  br label %if.end208

if.end208:                                        ; preds = %if.end206, %while.body
  %s.3 = phi ptr [ %add.ptr207, %if.end206 ], [ %s.21147, %while.body ]
  %84 = load ptr, ptr @PL_parser, align 8
  %linestr209 = getelementptr inbounds nuw i8, ptr %84, i64 168
  %85 = load ptr, ptr %linestr209, align 8
  %sv_u210 = getelementptr inbounds nuw i8, ptr %85, i64 16
  %86 = load ptr, ptr %sv_u210, align 8
  %87 = load i32, ptr %offset, align 4
  %idx.ext = sext i32 %87 to i64
  %add.ptr212 = getelementptr inbounds i8, ptr %86, i64 %idx.ext
  %88 = load ptr, ptr %sv_u213, align 8
  %89 = load ptr, ptr %call53, align 8
  %xpv_cur = getelementptr inbounds nuw i8, ptr %89, i64 16
  %90 = load i64, ptr %xpv_cur, align 8
  %add.ptr215 = getelementptr inbounds nuw i8, ptr %88, i64 %90
  %add.ptr216 = getelementptr inbounds i8, ptr %add.ptr215, i64 -1
  %cmp2181129 = icmp ult ptr %s.3, %add.ptr212
  br i1 %cmp2181129, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end208
  %rsfp = getelementptr inbounds nuw i8, ptr %84, i64 248
  %filtered = getelementptr inbounds nuw i8, ptr %84, i64 610
  %91 = load ptr, ptr @PL_curcop, align 8
  %cop_line229 = getelementptr inbounds nuw i8, ptr %91, i64 36
  %herelines230 = getelementptr inbounds nuw i8, ptr %84, i64 600
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %s.41130 = phi ptr [ %s.3, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %92 = load i8, ptr %s.41130, align 1
  %cmp221 = icmp eq i8 %92, 10
  br i1 %cmp221, label %land.lhs.true223, label %for.inc

land.lhs.true223:                                 ; preds = %for.body
  %93 = load ptr, ptr %rsfp, align 8
  %tobool224.not = icmp eq ptr %93, null
  br i1 %tobool224.not, label %land.lhs.true225, label %for.inc

land.lhs.true225:                                 ; preds = %land.lhs.true223
  %bf.load = load i8, ptr %filtered, align 2
  %94 = and i8 %bf.load, 2
  %tobool226.not = icmp eq i8 %94, 0
  br i1 %tobool226.not, label %do.body228, label %for.inc

do.body228:                                       ; preds = %land.lhs.true225
  %95 = load i32, ptr %cop_line229, align 4
  %inc = add i32 %95, 1
  store i32 %inc, ptr %cop_line229, align 4
  %96 = load i32, ptr %herelines230, align 8
  %tobool231.not = icmp eq i32 %96, 0
  br i1 %tobool231.not, label %for.inc, label %if.then232

if.then232:                                       ; preds = %do.body228
  %add235 = add i32 %96, %inc
  store i32 %add235, ptr %cop_line229, align 4
  store i32 0, ptr %herelines230, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then232, %do.body228, %land.lhs.true225, %land.lhs.true223, %for.body
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.41130, i64 1
  %cmp218 = icmp ult ptr %incdec.ptr, %add.ptr212
  br i1 %cmp218, label %for.body, label %for.end.loopexit, !llvm.loop !2

for.end.loopexit:                                 ; preds = %for.inc
  %incdec.ptr.lcssa = phi ptr [ %incdec.ptr, %for.inc ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end208
  %s.4.lcssa = phi ptr [ %s.3, %if.end208 ], [ %incdec.ptr.lcssa, %for.end.loopexit ]
  br i1 %call119, label %if.else243, label %cleanup380

if.else243:                                       ; preds = %for.end
  %97 = load ptr, ptr %call53, align 8
  %xpv_cur245 = getelementptr inbounds nuw i8, ptr %97, i64 16
  %98 = load i64, ptr %xpv_cur245, align 8
  %cmp246 = icmp ugt i64 %98, 1
  br i1 %cmp246, label %land.lhs.true248, label %if.end284

land.lhs.true248:                                 ; preds = %if.else243
  %add.ptr249 = getelementptr inbounds i8, ptr %add.ptr215, i64 -2
  %99 = load i8, ptr %add.ptr249, align 1
  %cmp251 = icmp eq i8 %99, 92
  br i1 %cmp251, label %if.then253, label %if.end284

if.then253:                                       ; preds = %land.lhs.true248
  %add.ptr254 = getelementptr inbounds i8, ptr %add.ptr215, i64 -3
  %100 = load ptr, ptr %sv_u213, align 8
  %cmp258.not1131 = icmp ult ptr %add.ptr254, %100
  br i1 %cmp258.not1131, label %for.end265, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.then253
  br label %land.rhs

land.rhs:                                         ; preds = %for.body263, %land.rhs.preheader
  %t.01132 = phi ptr [ %incdec.ptr264, %for.body263 ], [ %add.ptr254, %land.rhs.preheader ]
  %101 = load i8, ptr %t.01132, align 1
  %cmp261 = icmp eq i8 %101, 92
  br i1 %cmp261, label %for.body263, label %for.end265.loopexit

for.body263:                                      ; preds = %land.rhs
  %incdec.ptr264 = getelementptr inbounds i8, ptr %t.01132, i64 -1
  %cmp258.not = icmp ult ptr %incdec.ptr264, %100
  br i1 %cmp258.not, label %for.end265.loopexit, label %land.rhs, !llvm.loop !3

for.end265.loopexit:                              ; preds = %for.body263, %land.rhs
  %t.0.lcssa.ph = phi ptr [ %t.01132, %land.rhs ], [ %incdec.ptr264, %for.body263 ]
  br label %for.end265

for.end265:                                       ; preds = %for.end265.loopexit, %if.then253
  %t.0.lcssa = phi ptr [ %add.ptr254, %if.then253 ], [ %t.0.lcssa.ph, %for.end265.loopexit ]
  %sub.ptr.lhs.cast267 = ptrtoint ptr %add.ptr249 to i64
  %sub.ptr.rhs.cast268 = ptrtoint ptr %t.0.lcssa to i64
  %sub.ptr.sub269 = sub i64 %sub.ptr.lhs.cast267, %sub.ptr.rhs.cast268
  %102 = and i64 %sub.ptr.sub269, 1
  %tobool270.not = icmp eq i64 %102, 0
  br i1 %tobool270.not, label %if.end284, label %if.then271

if.then271:                                       ; preds = %for.end265
  br i1 %tobool272.not, label %if.then273, label %cleanup359, !llvm.loop !4

if.then273:                                       ; preds = %if.then271
  store i8 %term.0.fr, ptr %add.ptr249, align 1
  store i8 0, ptr %add.ptr216, align 1
  %103 = load ptr, ptr %call53, align 8
  %xpv_cur277 = getelementptr inbounds nuw i8, ptr %103, i64 16
  %104 = load i64, ptr %xpv_cur277, align 8
  %sub = add i64 %104, -1
  store i64 %sub, ptr %xpv_cur277, align 8
  br label %cleanup359, !llvm.loop !4

if.end284:                                        ; preds = %for.end265, %land.lhs.true248, %if.else243
  %105 = load ptr, ptr @PL_parser, align 8
  %multi_open285 = getelementptr inbounds nuw i8, ptr %105, i64 128
  %106 = load i8, ptr %multi_open285, align 8
  %multi_close287 = getelementptr inbounds nuw i8, ptr %105, i64 129
  %107 = load i8, ptr %multi_close287, align 1
  %cmp289 = icmp eq i8 %106, %107
  br i1 %cmp289, label %cleanup359, label %if.else292

if.else292:                                       ; preds = %if.end284
  %108 = load ptr, ptr %sv_u213, align 8
  %idx.ext295 = sext i32 %last_off.11145 to i64
  %add.ptr296 = getelementptr inbounds i8, ptr %108, i64 %idx.ext295
  %cmp2981135 = icmp ult ptr %add.ptr296, %add.ptr216
  br i1 %cmp2981135, label %for.body300.lr.ph, label %for.end332

for.body300.lr.ph:                                ; preds = %if.else292
  br i1 %tobool305.not, label %for.body300.us.preheader, label %for.body300.preheader

for.body300.preheader:                            ; preds = %for.body300.lr.ph
  br label %for.body300

for.body300.us.preheader:                         ; preds = %for.body300.lr.ph
  br label %for.body300.us

for.body300.us:                                   ; preds = %if.end328.us, %for.body300.us.preheader
  %w.01138.us = phi ptr [ %incdec.ptr330.us, %if.end328.us ], [ %add.ptr296, %for.body300.us.preheader ]
  %t293.01137.us = phi ptr [ %incdec.ptr331.us, %if.end328.us ], [ %add.ptr296, %for.body300.us.preheader ]
  %brackets.21136.us = phi i32 [ %brackets.3.us, %if.end328.us ], [ %brackets.11146, %for.body300.us.preheader ]
  %109 = load i8, ptr %t293.01137.us, align 1
  %cmp302.us = icmp eq i8 %109, 92
  br i1 %cmp302.us, label %if.then304.us, label %if.else319.us

if.else319.us:                                    ; preds = %for.body300.us
  %110 = load ptr, ptr @PL_parser, align 8
  %multi_open321.us = getelementptr inbounds nuw i8, ptr %110, i64 128
  %111 = load i8, ptr %multi_open321.us, align 8
  %cmp323.us = icmp eq i8 %109, %111
  %inc326.us = zext i1 %cmp323.us to i32
  %spec.select1108.us = add nsw i32 %brackets.21136.us, %inc326.us
  br label %if.end328.us

if.then304.us:                                    ; preds = %for.body300.us
  %add.ptr307.us = getelementptr inbounds nuw i8, ptr %t293.01137.us, i64 1
  %112 = load i8, ptr %add.ptr307.us, align 1
  %113 = load ptr, ptr @PL_parser, align 8
  %multi_open309.us = getelementptr inbounds nuw i8, ptr %113, i64 128
  %114 = load i8, ptr %multi_open309.us, align 8
  %cmp311.us = icmp eq i8 %112, %114
  br i1 %cmp311.us, label %if.end328.us, label %if.else315.us

if.else315.us:                                    ; preds = %if.then304.us
  %incdec.ptr316.us = getelementptr inbounds nuw i8, ptr %t293.01137.us, i64 1
  %incdec.ptr317.us = getelementptr inbounds nuw i8, ptr %w.01138.us, i64 1
  store i8 %109, ptr %w.01138.us, align 1
  br label %if.end328.us

if.end328.us:                                     ; preds = %if.else315.us, %if.then304.us, %if.else319.us
  %brackets.3.us = phi i32 [ %brackets.21136.us, %if.else315.us ], [ %brackets.21136.us, %if.then304.us ], [ %spec.select1108.us, %if.else319.us ]
  %t293.1.us = phi ptr [ %incdec.ptr316.us, %if.else315.us ], [ %add.ptr307.us, %if.then304.us ], [ %t293.01137.us, %if.else319.us ]
  %w.1.us = phi ptr [ %incdec.ptr317.us, %if.else315.us ], [ %w.01138.us, %if.then304.us ], [ %w.01138.us, %if.else319.us ]
  %115 = load i8, ptr %t293.1.us, align 1
  store i8 %115, ptr %w.1.us, align 1
  %incdec.ptr330.us = getelementptr inbounds nuw i8, ptr %w.1.us, i64 1
  %incdec.ptr331.us = getelementptr inbounds nuw i8, ptr %t293.1.us, i64 1
  %cmp298.us = icmp ult ptr %incdec.ptr331.us, %add.ptr216
  br i1 %cmp298.us, label %for.body300.us, label %for.end332.loopexit, !llvm.loop !5

for.body300:                                      ; preds = %if.end328, %for.body300.preheader
  %w.01138 = phi ptr [ %incdec.ptr330, %if.end328 ], [ %add.ptr296, %for.body300.preheader ]
  %t293.01137 = phi ptr [ %incdec.ptr331, %if.end328 ], [ %add.ptr296, %for.body300.preheader ]
  %brackets.21136 = phi i32 [ %brackets.3, %if.end328 ], [ %brackets.11146, %for.body300.preheader ]
  %116 = load i8, ptr %t293.01137, align 1
  %cmp302 = icmp eq i8 %116, 92
  br i1 %cmp302, label %if.then304, label %if.else319

if.then304:                                       ; preds = %for.body300
  %incdec.ptr316 = getelementptr inbounds nuw i8, ptr %t293.01137, i64 1
  %incdec.ptr317 = getelementptr inbounds nuw i8, ptr %w.01138, i64 1
  store i8 %116, ptr %w.01138, align 1
  br label %if.end328

if.else319:                                       ; preds = %for.body300
  %117 = load ptr, ptr @PL_parser, align 8
  %multi_open321 = getelementptr inbounds nuw i8, ptr %117, i64 128
  %118 = load i8, ptr %multi_open321, align 8
  %cmp323 = icmp eq i8 %116, %118
  %inc326 = zext i1 %cmp323 to i32
  %spec.select1108 = add nsw i32 %brackets.21136, %inc326
  br label %if.end328

if.end328:                                        ; preds = %if.else319, %if.then304
  %brackets.3 = phi i32 [ %brackets.21136, %if.then304 ], [ %spec.select1108, %if.else319 ]
  %t293.1 = phi ptr [ %incdec.ptr316, %if.then304 ], [ %t293.01137, %if.else319 ]
  %w.1 = phi ptr [ %incdec.ptr317, %if.then304 ], [ %w.01138, %if.else319 ]
  %119 = load i8, ptr %t293.1, align 1
  store i8 %119, ptr %w.1, align 1
  %incdec.ptr330 = getelementptr inbounds nuw i8, ptr %w.1, i64 1
  %incdec.ptr331 = getelementptr inbounds nuw i8, ptr %t293.1, i64 1
  %cmp298 = icmp ult ptr %incdec.ptr331, %add.ptr216
  br i1 %cmp298, label %for.body300, label %for.end332.loopexit1180, !llvm.loop !5

for.end332.loopexit:                              ; preds = %if.end328.us
  %brackets.3.us.lcssa = phi i32 [ %brackets.3.us, %if.end328.us ]
  %incdec.ptr330.us.lcssa = phi ptr [ %incdec.ptr330.us, %if.end328.us ]
  %incdec.ptr331.us.lcssa = phi ptr [ %incdec.ptr331.us, %if.end328.us ]
  br label %for.end332

for.end332.loopexit1180:                          ; preds = %if.end328
  %brackets.3.lcssa = phi i32 [ %brackets.3, %if.end328 ]
  %incdec.ptr330.lcssa = phi ptr [ %incdec.ptr330, %if.end328 ]
  %incdec.ptr331.lcssa = phi ptr [ %incdec.ptr331, %if.end328 ]
  br label %for.end332

for.end332:                                       ; preds = %for.end332.loopexit1180, %for.end332.loopexit, %if.else292
  %brackets.2.lcssa = phi i32 [ %brackets.11146, %if.else292 ], [ %brackets.3.us.lcssa, %for.end332.loopexit ], [ %brackets.3.lcssa, %for.end332.loopexit1180 ]
  %t293.0.lcssa = phi ptr [ %add.ptr296, %if.else292 ], [ %incdec.ptr331.us.lcssa, %for.end332.loopexit ], [ %incdec.ptr331.lcssa, %for.end332.loopexit1180 ]
  %w.0.lcssa = phi ptr [ %add.ptr296, %if.else292 ], [ %incdec.ptr330.us.lcssa, %for.end332.loopexit ], [ %incdec.ptr330.lcssa, %for.end332.loopexit1180 ]
  %cmp333 = icmp ult ptr %w.0.lcssa, %t293.0.lcssa
  br i1 %cmp333, label %if.then335, label %if.end347

if.then335:                                       ; preds = %for.end332
  %incdec.ptr336 = getelementptr inbounds nuw i8, ptr %w.0.lcssa, i64 1
  store i8 %term.0.fr, ptr %w.0.lcssa, align 1
  store i8 0, ptr %incdec.ptr336, align 1
  %120 = load ptr, ptr %sv_u213, align 8
  %sub.ptr.lhs.cast340 = ptrtoint ptr %incdec.ptr336 to i64
  %sub.ptr.rhs.cast341 = ptrtoint ptr %120 to i64
  %sub.ptr.sub342 = sub i64 %sub.ptr.lhs.cast340, %sub.ptr.rhs.cast341
  %121 = load ptr, ptr %call53, align 8
  %xpv_cur344 = getelementptr inbounds nuw i8, ptr %121, i64 16
  store i64 %sub.ptr.sub342, ptr %xpv_cur344, align 8
  br label %if.end347

if.end347:                                        ; preds = %if.then335, %for.end332
  %w.2 = phi ptr [ %incdec.ptr336, %if.then335 ], [ %w.0.lcssa, %for.end332 ]
  %122 = load ptr, ptr %sv_u213, align 8
  %sub.ptr.lhs.cast349 = ptrtoint ptr %w.2 to i64
  %sub.ptr.rhs.cast350 = ptrtoint ptr %122 to i64
  %sub.ptr.sub351 = sub i64 %sub.ptr.lhs.cast349, %sub.ptr.rhs.cast350
  %conv352 = trunc i64 %sub.ptr.sub351 to i32
  %dec = add nsw i32 %brackets.2.lcssa, -1
  %cmp353 = icmp sgt i32 %brackets.2.lcssa, 1
  br label %cleanup359

cleanup359:                                       ; preds = %if.end347, %if.end284, %if.then273, %if.then271
  %cont.3 = phi i1 [ %cmp353, %if.end347 ], [ false, %if.end284 ], [ true, %if.then271 ], [ true, %if.then273 ]
  %last_off.3 = phi i32 [ %conv352, %if.end347 ], [ %last_off.11145, %if.end284 ], [ %last_off.11145, %if.then271 ], [ %last_off.11145, %if.then273 ]
  %brackets.5 = phi i32 [ %dec, %if.end347 ], [ %brackets.11146, %if.end284 ], [ %brackets.11146, %if.then271 ], [ %brackets.11146, %if.then273 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %offset) #7
  br i1 %cont.3, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup359
  %has_utf8.1.lcssa = phi i8 [ %has_utf8.1, %cleanup359 ]
  %s.4.lcssa.lcssa1187 = phi ptr [ %s.4.lcssa, %cleanup359 ]
  br i1 %tobool70.not, label %do.body367, label %for.end771

do.body367:                                       ; preds = %while.end
  %123 = load ptr, ptr %call53, align 8
  %xpv_cur369 = getelementptr inbounds nuw i8, ptr %123, i64 16
  %124 = load i64, ptr %xpv_cur369, align 8
  %sub370 = add i64 %124, -1
  store i64 %sub370, ptr %xpv_cur369, align 8
  %sv_u375 = getelementptr inbounds nuw i8, ptr %call53, i64 16
  %125 = load ptr, ptr %sv_u375, align 8
  %126 = load ptr, ptr %call53, align 8
  %xpv_cur377 = getelementptr inbounds nuw i8, ptr %126, i64 16
  %127 = load i64, ptr %xpv_cur377, align 8
  %add.ptr378 = getelementptr inbounds nuw i8, ptr %125, i64 %127
  store i8 0, ptr %add.ptr378, align 1
  br label %for.end771

cleanup380:                                       ; preds = %for.end
  %brackets.11146.lcssa = phi i32 [ %brackets.11146, %for.end ]
  %last_off.11145.lcssa = phi i32 [ %last_off.11145, %for.end ]
  call void @llvm.lifetime.end.p0(ptr nonnull %offset) #7
  br label %do.body750

if.end382:                                        ; preds = %land.lhs.true105, %land.lhs.true100, %land.lhs.true90, %land.lhs.true76, %lor.lhs.false74
  %128 = load i32, ptr %sv_flags54, align 4
  %and384 = and i32 %128, 268435456
  %tobool385.not = icmp eq i32 %and384, 0
  br i1 %tobool385.not, label %lor.lhs.false386, label %cond.true399

lor.lhs.false386:                                 ; preds = %if.end382
  %129 = load ptr, ptr %call53, align 8
  %xpv_len_u388 = getelementptr inbounds nuw i8, ptr %129, i64 24
  %130 = load i64, ptr %xpv_len_u388, align 8
  %xpv_cur390 = getelementptr inbounds nuw i8, ptr %129, i64 16
  %131 = load i64, ptr %xpv_cur390, align 8
  %132 = load ptr, ptr @PL_parser, align 8
  %bufend391 = getelementptr inbounds nuw i8, ptr %132, i64 200
  %133 = load ptr, ptr %bufend391, align 8
  %sub.ptr.lhs.cast392 = ptrtoint ptr %133 to i64
  %sub.ptr.rhs.cast393 = ptrtoint ptr %s.1 to i64
  %reass.sub = sub i64 %131, %sub.ptr.rhs.cast393
  %add395 = add i64 %reass.sub, 1
  %add396 = add i64 %add395, %sub.ptr.lhs.cast392
  %cmp397 = icmp ult i64 %130, %add396
  br i1 %cmp397, label %cond.true399, label %cond.end411

cond.true399:                                     ; preds = %lor.lhs.false386, %if.end382
  %134 = load ptr, ptr %call53, align 8
  %xpv_cur401 = getelementptr inbounds nuw i8, ptr %134, i64 16
  %135 = load i64, ptr %xpv_cur401, align 8
  %136 = load ptr, ptr @PL_parser, align 8
  %bufend402 = getelementptr inbounds nuw i8, ptr %136, i64 200
  %137 = load ptr, ptr %bufend402, align 8
  %sub.ptr.lhs.cast403 = ptrtoint ptr %137 to i64
  %sub.ptr.rhs.cast404 = ptrtoint ptr %s.1 to i64
  %reass.sub1179 = sub i64 %135, %sub.ptr.rhs.cast404
  %add406 = add i64 %reass.sub1179, 1
  %add407 = add i64 %add406, %sub.ptr.lhs.cast403
  %call408 = call ptr @Perl_sv_grow(ptr noundef nonnull %call53, i64 noundef %add407) #7
  br label %cond.end411

cond.end411:                                      ; preds = %cond.true399, %lor.lhs.false386
  %138 = load ptr, ptr %sv_u413, align 8
  %139 = load ptr, ptr %call53, align 8
  %xpv_cur415 = getelementptr inbounds nuw i8, ptr %139, i64 16
  %140 = load i64, ptr %xpv_cur415, align 8
  %add.ptr416 = getelementptr inbounds nuw i8, ptr %138, i64 %140
  %141 = load ptr, ptr @PL_parser, align 8
  %multi_open417 = getelementptr inbounds nuw i8, ptr %141, i64 128
  %142 = load i8, ptr %multi_open417, align 8
  %multi_close419 = getelementptr inbounds nuw i8, ptr %141, i64 129
  %143 = load i8, ptr %multi_close419, align 1
  %cmp421 = icmp eq i8 %142, %143
  br i1 %cmp421, label %for.cond424.preheader, label %for.cond548.preheader

for.cond548.preheader:                            ; preds = %cond.end411
  %144 = load ptr, ptr @PL_parser, align 8
  %bufend5491148 = getelementptr inbounds nuw i8, ptr %144, i64 200
  %145 = load ptr, ptr %bufend5491148, align 8
  %cmp5501149 = icmp ult ptr %s.1, %145
  br i1 %cmp5501149, label %for.body552.preheader, label %if.end668

for.body552.preheader:                            ; preds = %for.cond548.preheader
  br label %for.body552

for.cond424.preheader:                            ; preds = %cond.end411
  %146 = load ptr, ptr @PL_parser, align 8
  %bufend4251163 = getelementptr inbounds nuw i8, ptr %146, i64 200
  %147 = load ptr, ptr %bufend4251163, align 8
  %cmp4261164 = icmp ult ptr %s.1, %147
  br i1 %cmp4261164, label %for.body428.preheader, label %if.end668

for.body428.preheader:                            ; preds = %for.cond424.preheader
  br label %for.body428

for.body428:                                      ; preds = %if.end542, %for.body428.preheader
  %bufend4251168 = phi ptr [ %bufend425, %if.end542 ], [ %bufend4251163, %for.body428.preheader ]
  %148 = phi ptr [ %168, %if.end542 ], [ %146, %for.body428.preheader ]
  %s.61167 = phi ptr [ %incdec.ptr544, %if.end542 ], [ %s.1, %for.body428.preheader ]
  %to.01166 = phi ptr [ %incdec.ptr545, %if.end542 ], [ %add.ptr416, %for.body428.preheader ]
  %has_utf8.21165 = phi i8 [ %has_utf8.3, %if.end542 ], [ %has_utf8.1, %for.body428.preheader ]
  %149 = load i8, ptr %s.61167, align 1
  %cmp430 = icmp eq i8 %149, 10
  br i1 %cmp430, label %land.lhs.true432, label %if.end456

land.lhs.true432:                                 ; preds = %for.body428
  %rsfp433 = getelementptr inbounds nuw i8, ptr %148, i64 248
  %150 = load ptr, ptr %rsfp433, align 8
  %tobool434.not = icmp eq ptr %150, null
  br i1 %tobool434.not, label %land.lhs.true435, label %if.end456thread-pre-split

land.lhs.true435:                                 ; preds = %land.lhs.true432
  %filtered436 = getelementptr inbounds nuw i8, ptr %148, i64 610
  %bf.load437 = load i8, ptr %filtered436, align 2
  %151 = and i8 %bf.load437, 2
  %tobool441.not = icmp eq i8 %151, 0
  br i1 %tobool441.not, label %do.body443, label %if.end456thread-pre-split

do.body443:                                       ; preds = %land.lhs.true435
  %152 = load ptr, ptr @PL_curcop, align 8
  %cop_line444 = getelementptr inbounds nuw i8, ptr %152, i64 36
  %153 = load i32, ptr %cop_line444, align 4
  %inc445 = add i32 %153, 1
  store i32 %inc445, ptr %cop_line444, align 4
  %herelines446 = getelementptr inbounds nuw i8, ptr %148, i64 600
  %154 = load i32, ptr %herelines446, align 8
  %tobool447.not = icmp eq i32 %154, 0
  br i1 %tobool447.not, label %if.end456thread-pre-split, label %if.then448

if.then448:                                       ; preds = %do.body443
  %add451 = add i32 %154, %inc445
  store i32 %add451, ptr %cop_line444, align 4
  store i32 0, ptr %herelines446, align 8
  br label %if.end456thread-pre-split

if.end456thread-pre-split:                        ; preds = %if.then448, %do.body443, %land.lhs.true435, %land.lhs.true432
  %.pr = load i8, ptr %s.61167, align 1
  br label %if.end456

if.end456:                                        ; preds = %if.end456thread-pre-split, %for.body428
  %155 = phi i8 [ %.pr, %if.end456thread-pre-split ], [ %149, %for.body428 ]
  %cmp458 = icmp eq i8 %155, 92
  br i1 %cmp458, label %land.lhs.true460, label %if.else490

land.lhs.true460:                                 ; preds = %if.end456
  %add.ptr461 = getelementptr inbounds nuw i8, ptr %s.61167, i64 1
  %156 = load ptr, ptr %bufend4251168, align 8
  %cmp463 = icmp ult ptr %add.ptr461, %156
  %or.cond902 = and i1 %cmp467, %cmp463
  br i1 %or.cond902, label %if.then469, label %if.else490

if.then469:                                       ; preds = %land.lhs.true460
  br i1 %tobool470.not, label %land.lhs.true471, label %if.else486

land.lhs.true471:                                 ; preds = %if.then469
  %157 = load i8, ptr %add.ptr461, align 1
  %cmp475 = icmp eq i8 %157, %term.0.fr
  %cmp482 = icmp eq i8 %157, 92
  %or.cond = and i1 %tobool478.not, %cmp482
  %or.cond1178 = or i1 %cmp475, %or.cond
  br i1 %or.cond1178, label %if.end542, label %if.else486

if.else486:                                       ; preds = %land.lhs.true471, %if.then469
  %incdec.ptr488 = getelementptr inbounds nuw i8, ptr %to.01166, i64 1
  store i8 %155, ptr %to.01166, align 1
  br label %if.end542

if.else490:                                       ; preds = %land.lhs.true460, %if.end456
  %cmp493 = icmp eq i8 %155, %term.0.fr
  br i1 %cmp493, label %if.then495, label %if.else510

if.then495:                                       ; preds = %if.else490
  %158 = load i64, ptr %termlen, align 8
  %cmp496 = icmp eq i64 %158, 1
  br i1 %cmp496, label %if.end668.loopexit, label %if.end499

if.end499:                                        ; preds = %if.then495
  %add.ptr500 = getelementptr inbounds nuw i8, ptr %s.61167, i64 %158
  %159 = load ptr, ptr %bufend4251168, align 8
  %cmp502.not = icmp ugt ptr %add.ptr500, %159
  br i1 %cmp502.not, label %if.end542, label %land.lhs.true504

land.lhs.true504:                                 ; preds = %if.end499
  %bcmp = call i32 @bcmp(ptr nonnull %s.61167, ptr nonnull %termstr, i64 %158)
  %tobool507.not = icmp eq i32 %bcmp, 0
  br i1 %tobool507.not, label %if.end668.loopexit, label %if.end542

if.else510:                                       ; preds = %if.else490
  %loadedv511 = trunc nuw i8 %has_utf8.21165 to i1
  %cmp514 = icmp sgt i8 %155, -1
  %or.cond1110 = or i1 %cmp514, %loadedv511
  br i1 %or.cond1110, label %if.end542, label %land.lhs.true516

land.lhs.true516:                                 ; preds = %if.else510
  %linestr517 = getelementptr inbounds nuw i8, ptr %148, i64 168
  %160 = load ptr, ptr %linestr517, align 8
  %tobool518.not = icmp eq ptr %160, null
  br i1 %tobool518.not, label %lor.lhs.false529, label %land.lhs.true519

land.lhs.true519:                                 ; preds = %land.lhs.true516
  %sv_flags521 = getelementptr inbounds nuw i8, ptr %160, i64 12
  %161 = load i32, ptr %sv_flags521, align 4
  %and522 = and i32 %161, 536870912
  %tobool523.not = icmp eq i32 %and522, 0
  br i1 %tobool523.not, label %lor.lhs.false529, label %land.lhs.true524

land.lhs.true524:                                 ; preds = %land.lhs.true519
  %162 = load ptr, ptr @PL_curcop, align 8
  %cop_hints525 = getelementptr inbounds nuw i8, ptr %162, i64 56
  %163 = load i32, ptr %cop_hints525, align 8
  %and527 = and i32 %163, 8
  %tobool528.not = icmp eq i32 %and527, 0
  br i1 %tobool528.not, label %if.then539, label %lor.lhs.false529

lor.lhs.false529:                                 ; preds = %land.lhs.true524, %land.lhs.true519, %land.lhs.true516
  %lex_flags530 = getelementptr inbounds nuw i8, ptr %148, i64 609
  %164 = load i8, ptr %lex_flags530, align 1
  %165 = and i8 %164, 2
  %tobool533.not = icmp eq i8 %165, 0
  br i1 %tobool533.not, label %land.lhs.true534, label %if.end542

land.lhs.true534:                                 ; preds = %lor.lhs.false529
  %166 = load i32, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  %and535 = and i32 %166, 8388608
  %tobool536.not = icmp eq i32 %and535, 0
  br i1 %tobool536.not, label %if.end542, label %if.then539

if.then539:                                       ; preds = %land.lhs.true534, %land.lhs.true524
  br label %if.end542

if.end542:                                        ; preds = %if.then539, %land.lhs.true534, %lor.lhs.false529, %if.else510, %land.lhs.true504, %if.end499, %if.else486, %land.lhs.true471
  %has_utf8.3 = phi i8 [ %has_utf8.21165, %if.else486 ], [ %has_utf8.21165, %land.lhs.true504 ], [ %has_utf8.21165, %if.end499 ], [ %has_utf8.21165, %if.else510 ], [ 0, %lor.lhs.false529 ], [ 1, %if.then539 ], [ 0, %land.lhs.true534 ], [ %has_utf8.21165, %land.lhs.true471 ]
  %to.1 = phi ptr [ %incdec.ptr488, %if.else486 ], [ %to.01166, %land.lhs.true504 ], [ %to.01166, %if.end499 ], [ %to.01166, %if.else510 ], [ %to.01166, %lor.lhs.false529 ], [ %to.01166, %if.then539 ], [ %to.01166, %land.lhs.true534 ], [ %to.01166, %land.lhs.true471 ]
  %s.7 = phi ptr [ %add.ptr461, %if.else486 ], [ %s.61167, %land.lhs.true504 ], [ %s.61167, %if.end499 ], [ %s.61167, %if.else510 ], [ %s.61167, %lor.lhs.false529 ], [ %s.61167, %if.then539 ], [ %s.61167, %land.lhs.true534 ], [ %add.ptr461, %land.lhs.true471 ]
  %167 = load i8, ptr %s.7, align 1
  store i8 %167, ptr %to.1, align 1
  %incdec.ptr544 = getelementptr inbounds nuw i8, ptr %s.7, i64 1
  %incdec.ptr545 = getelementptr inbounds nuw i8, ptr %to.1, i64 1
  %168 = load ptr, ptr @PL_parser, align 8
  %bufend425 = getelementptr inbounds nuw i8, ptr %168, i64 200
  %169 = load ptr, ptr %bufend425, align 8
  %cmp426 = icmp ult ptr %incdec.ptr544, %169
  br i1 %cmp426, label %for.body428, label %if.end668.loopexit, !llvm.loop !6

for.body552:                                      ; preds = %if.end663, %for.body552.preheader
  %bufend5491154 = phi ptr [ %bufend549, %if.end663 ], [ %bufend5491148, %for.body552.preheader ]
  %170 = phi ptr [ %192, %if.end663 ], [ %144, %for.body552.preheader ]
  %s.81153 = phi ptr [ %incdec.ptr665, %if.end663 ], [ %s.1, %for.body552.preheader ]
  %to.21152 = phi ptr [ %incdec.ptr666, %if.end663 ], [ %add.ptr416, %for.body552.preheader ]
  %brackets.71151 = phi i32 [ %brackets.9, %if.end663 ], [ %brackets.0, %for.body552.preheader ]
  %has_utf8.41150 = phi i8 [ %has_utf8.5, %if.end663 ], [ %has_utf8.1, %for.body552.preheader ]
  %171 = load i8, ptr %s.81153, align 1
  %cmp554 = icmp eq i8 %171, 10
  br i1 %cmp554, label %land.lhs.true556, label %if.end580

land.lhs.true556:                                 ; preds = %for.body552
  %rsfp557 = getelementptr inbounds nuw i8, ptr %170, i64 248
  %172 = load ptr, ptr %rsfp557, align 8
  %tobool558.not = icmp eq ptr %172, null
  br i1 %tobool558.not, label %land.lhs.true559, label %if.end580thread-pre-split

land.lhs.true559:                                 ; preds = %land.lhs.true556
  %filtered560 = getelementptr inbounds nuw i8, ptr %170, i64 610
  %bf.load561 = load i8, ptr %filtered560, align 2
  %173 = and i8 %bf.load561, 2
  %tobool565.not = icmp eq i8 %173, 0
  br i1 %tobool565.not, label %do.body567, label %if.end580thread-pre-split

do.body567:                                       ; preds = %land.lhs.true559
  %174 = load ptr, ptr @PL_curcop, align 8
  %cop_line568 = getelementptr inbounds nuw i8, ptr %174, i64 36
  %175 = load i32, ptr %cop_line568, align 4
  %inc569 = add i32 %175, 1
  store i32 %inc569, ptr %cop_line568, align 4
  %herelines570 = getelementptr inbounds nuw i8, ptr %170, i64 600
  %176 = load i32, ptr %herelines570, align 8
  %tobool571.not = icmp eq i32 %176, 0
  br i1 %tobool571.not, label %if.end580thread-pre-split, label %if.then572

if.then572:                                       ; preds = %do.body567
  %add575 = add i32 %176, %inc569
  store i32 %add575, ptr %cop_line568, align 4
  store i32 0, ptr %herelines570, align 8
  br label %if.end580thread-pre-split

if.end580thread-pre-split:                        ; preds = %if.then572, %do.body567, %land.lhs.true559, %land.lhs.true556
  %.pr1121 = load i8, ptr %s.81153, align 1
  br label %if.end580

if.end580:                                        ; preds = %if.end580thread-pre-split, %for.body552
  %177 = phi i8 [ %.pr1121, %if.end580thread-pre-split ], [ %171, %for.body552 ]
  %cmp582 = icmp eq i8 %177, 92
  br i1 %cmp582, label %land.lhs.true584, label %if.else611

land.lhs.true584:                                 ; preds = %if.end580
  %add.ptr585 = getelementptr inbounds nuw i8, ptr %s.81153, i64 1
  %178 = load ptr, ptr %bufend5491154, align 8
  %cmp587 = icmp ult ptr %add.ptr585, %178
  br i1 %cmp587, label %if.then589, label %if.else611

if.then589:                                       ; preds = %land.lhs.true584
  br i1 %tobool590.not, label %land.lhs.true591, label %if.else607

land.lhs.true591:                                 ; preds = %if.then589
  %179 = load i8, ptr %add.ptr585, align 1
  %multi_open594 = getelementptr inbounds nuw i8, ptr %170, i64 128
  %180 = load i8, ptr %multi_open594, align 8
  %cmp596 = icmp eq i8 %179, %180
  br i1 %cmp596, label %if.end663, label %lor.lhs.false598

lor.lhs.false598:                                 ; preds = %land.lhs.true591
  %multi_close601 = getelementptr inbounds nuw i8, ptr %170, i64 129
  %181 = load i8, ptr %multi_close601, align 1
  %cmp603 = icmp eq i8 %179, %181
  br i1 %cmp603, label %if.end663, label %if.else607

if.else607:                                       ; preds = %lor.lhs.false598, %if.then589
  %incdec.ptr609 = getelementptr inbounds nuw i8, ptr %to.21152, i64 1
  store i8 %177, ptr %to.21152, align 1
  br label %if.end663

if.else611:                                       ; preds = %land.lhs.true584, %if.end580
  %multi_close613 = getelementptr inbounds nuw i8, ptr %170, i64 129
  %182 = load i8, ptr %multi_close613, align 1
  %cmp615 = icmp eq i8 %177, %182
  br i1 %cmp615, label %land.lhs.true617, label %if.else622

land.lhs.true617:                                 ; preds = %if.else611
  %dec618 = add nsw i32 %brackets.71151, -1
  %cmp619 = icmp slt i32 %brackets.71151, 2
  br i1 %cmp619, label %if.end668.loopexit1181, label %if.else622

if.else622:                                       ; preds = %land.lhs.true617, %if.else611
  %brackets.8 = phi i32 [ %dec618, %land.lhs.true617 ], [ %brackets.71151, %if.else611 ]
  %multi_open624 = getelementptr inbounds nuw i8, ptr %170, i64 128
  %183 = load i8, ptr %multi_open624, align 8
  %cmp626 = icmp eq i8 %177, %183
  br i1 %cmp626, label %if.then628, label %if.else630

if.then628:                                       ; preds = %if.else622
  %inc629 = add nsw i32 %brackets.8, 1
  br label %if.end663

if.else630:                                       ; preds = %if.else622
  %loadedv631 = trunc nuw i8 %has_utf8.41150 to i1
  %cmp634 = icmp sgt i8 %177, -1
  %or.cond1111 = or i1 %cmp634, %loadedv631
  br i1 %or.cond1111, label %if.end663, label %land.lhs.true636

land.lhs.true636:                                 ; preds = %if.else630
  %linestr637 = getelementptr inbounds nuw i8, ptr %170, i64 168
  %184 = load ptr, ptr %linestr637, align 8
  %tobool638.not = icmp eq ptr %184, null
  br i1 %tobool638.not, label %lor.lhs.false649, label %land.lhs.true639

land.lhs.true639:                                 ; preds = %land.lhs.true636
  %sv_flags641 = getelementptr inbounds nuw i8, ptr %184, i64 12
  %185 = load i32, ptr %sv_flags641, align 4
  %and642 = and i32 %185, 536870912
  %tobool643.not = icmp eq i32 %and642, 0
  br i1 %tobool643.not, label %lor.lhs.false649, label %land.lhs.true644

land.lhs.true644:                                 ; preds = %land.lhs.true639
  %186 = load ptr, ptr @PL_curcop, align 8
  %cop_hints645 = getelementptr inbounds nuw i8, ptr %186, i64 56
  %187 = load i32, ptr %cop_hints645, align 8
  %and647 = and i32 %187, 8
  %tobool648.not = icmp eq i32 %and647, 0
  br i1 %tobool648.not, label %if.then659, label %lor.lhs.false649

lor.lhs.false649:                                 ; preds = %land.lhs.true644, %land.lhs.true639, %land.lhs.true636
  %lex_flags650 = getelementptr inbounds nuw i8, ptr %170, i64 609
  %188 = load i8, ptr %lex_flags650, align 1
  %189 = and i8 %188, 2
  %tobool653.not = icmp eq i8 %189, 0
  br i1 %tobool653.not, label %land.lhs.true654, label %if.end663

land.lhs.true654:                                 ; preds = %lor.lhs.false649
  %190 = load i32, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  %and655 = and i32 %190, 8388608
  %tobool656.not = icmp eq i32 %and655, 0
  br i1 %tobool656.not, label %if.end663, label %if.then659

if.then659:                                       ; preds = %land.lhs.true654, %land.lhs.true644
  br label %if.end663

if.end663:                                        ; preds = %if.then659, %land.lhs.true654, %lor.lhs.false649, %if.else630, %if.then628, %if.else607, %lor.lhs.false598, %land.lhs.true591
  %has_utf8.5 = phi i8 [ %has_utf8.41150, %if.else607 ], [ %has_utf8.41150, %if.then628 ], [ %has_utf8.41150, %if.else630 ], [ 0, %lor.lhs.false649 ], [ 1, %if.then659 ], [ 0, %land.lhs.true654 ], [ %has_utf8.41150, %lor.lhs.false598 ], [ %has_utf8.41150, %land.lhs.true591 ]
  %brackets.9 = phi i32 [ %brackets.71151, %if.else607 ], [ %inc629, %if.then628 ], [ %brackets.8, %if.else630 ], [ %brackets.8, %lor.lhs.false649 ], [ %brackets.8, %if.then659 ], [ %brackets.8, %land.lhs.true654 ], [ %brackets.71151, %lor.lhs.false598 ], [ %brackets.71151, %land.lhs.true591 ]
  %to.3 = phi ptr [ %incdec.ptr609, %if.else607 ], [ %to.21152, %if.then628 ], [ %to.21152, %if.else630 ], [ %to.21152, %lor.lhs.false649 ], [ %to.21152, %if.then659 ], [ %to.21152, %land.lhs.true654 ], [ %to.21152, %lor.lhs.false598 ], [ %to.21152, %land.lhs.true591 ]
  %s.9 = phi ptr [ %add.ptr585, %if.else607 ], [ %s.81153, %if.then628 ], [ %s.81153, %if.else630 ], [ %s.81153, %lor.lhs.false649 ], [ %s.81153, %if.then659 ], [ %s.81153, %land.lhs.true654 ], [ %add.ptr585, %lor.lhs.false598 ], [ %add.ptr585, %land.lhs.true591 ]
  %191 = load i8, ptr %s.9, align 1
  store i8 %191, ptr %to.3, align 1
  %incdec.ptr665 = getelementptr inbounds nuw i8, ptr %s.9, i64 1
  %incdec.ptr666 = getelementptr inbounds nuw i8, ptr %to.3, i64 1
  %192 = load ptr, ptr @PL_parser, align 8
  %bufend549 = getelementptr inbounds nuw i8, ptr %192, i64 200
  %193 = load ptr, ptr %bufend549, align 8
  %cmp550 = icmp ult ptr %incdec.ptr665, %193
  br i1 %cmp550, label %for.body552, label %if.end668.loopexit1181, !llvm.loop !7

if.end668.loopexit:                               ; preds = %if.end542, %land.lhs.true504, %if.then495
  %has_utf8.6.ph = phi i8 [ %has_utf8.3, %if.end542 ], [ %has_utf8.21165, %if.then495 ], [ %has_utf8.21165, %land.lhs.true504 ]
  %to.4.ph = phi ptr [ %incdec.ptr545, %if.end542 ], [ %to.01166, %if.then495 ], [ %to.01166, %land.lhs.true504 ]
  %s.10.ph = phi ptr [ %incdec.ptr544, %if.end542 ], [ %s.61167, %if.then495 ], [ %s.61167, %land.lhs.true504 ]
  br label %if.end668

if.end668.loopexit1181:                           ; preds = %if.end663, %land.lhs.true617
  %has_utf8.6.ph1182 = phi i8 [ %has_utf8.5, %if.end663 ], [ %has_utf8.41150, %land.lhs.true617 ]
  %brackets.10.ph = phi i32 [ %brackets.9, %if.end663 ], [ %dec618, %land.lhs.true617 ]
  %to.4.ph1183 = phi ptr [ %incdec.ptr666, %if.end663 ], [ %to.21152, %land.lhs.true617 ]
  %s.10.ph1184 = phi ptr [ %incdec.ptr665, %if.end663 ], [ %s.81153, %land.lhs.true617 ]
  br label %if.end668

if.end668:                                        ; preds = %if.end668.loopexit1181, %if.end668.loopexit, %for.cond424.preheader, %for.cond548.preheader
  %has_utf8.6 = phi i8 [ %has_utf8.1, %for.cond424.preheader ], [ %has_utf8.1, %for.cond548.preheader ], [ %has_utf8.6.ph, %if.end668.loopexit ], [ %has_utf8.6.ph1182, %if.end668.loopexit1181 ]
  %brackets.10 = phi i32 [ %brackets.0, %for.cond424.preheader ], [ %brackets.0, %for.cond548.preheader ], [ %brackets.0, %if.end668.loopexit ], [ %brackets.10.ph, %if.end668.loopexit1181 ]
  %to.4 = phi ptr [ %add.ptr416, %for.cond424.preheader ], [ %add.ptr416, %for.cond548.preheader ], [ %to.4.ph, %if.end668.loopexit ], [ %to.4.ph1183, %if.end668.loopexit1181 ]
  %s.10 = phi ptr [ %s.1, %for.cond424.preheader ], [ %s.1, %for.cond548.preheader ], [ %s.10.ph, %if.end668.loopexit ], [ %s.10.ph1184, %if.end668.loopexit1181 ]
  store i8 0, ptr %to.4, align 1
  %194 = load ptr, ptr %sv_u413, align 8
  %sub.ptr.lhs.cast672 = ptrtoint ptr %to.4 to i64
  %sub.ptr.rhs.cast673 = ptrtoint ptr %194 to i64
  %sub.ptr.sub674 = sub i64 %sub.ptr.lhs.cast672, %sub.ptr.rhs.cast673
  %195 = load ptr, ptr %call53, align 8
  %xpv_cur676 = getelementptr inbounds nuw i8, ptr %195, i64 16
  store i64 %sub.ptr.sub674, ptr %xpv_cur676, align 8
  %196 = load ptr, ptr @PL_parser, align 8
  %bufend679 = getelementptr inbounds nuw i8, ptr %196, i64 200
  %197 = load ptr, ptr %bufend679, align 8
  %cmp680 = icmp ult ptr %s.10, %197
  br i1 %cmp680, label %for.end771.loopexit, label %if.end683

if.end683:                                        ; preds = %if.end668
  %198 = load ptr, ptr %sv_u413, align 8
  %sub.ptr.rhs.cast687 = ptrtoint ptr %198 to i64
  %sub.ptr.sub688 = sub i64 %sub.ptr.lhs.cast672, %sub.ptr.rhs.cast687
  %cmp689 = icmp sgt i64 %sub.ptr.sub688, 1
  br i1 %cmp689, label %if.then691, label %if.else733

if.then691:                                       ; preds = %if.end683
  %arrayidx692 = getelementptr inbounds i8, ptr %to.4, i64 -2
  %199 = load i8, ptr %arrayidx692, align 1
  switch i8 %199, label %if.else724 [
    i8 13, label %land.lhs.true696
    i8 10, label %land.lhs.true706
  ]

land.lhs.true696:                                 ; preds = %if.then691
  %arrayidx697 = getelementptr inbounds i8, ptr %to.4, i64 -1
  %200 = load i8, ptr %arrayidx697, align 1
  %cmp699 = icmp eq i8 %200, 10
  br i1 %cmp699, label %if.then711, label %if.else724

land.lhs.true706:                                 ; preds = %if.then691
  %arrayidx707 = getelementptr inbounds i8, ptr %to.4, i64 -1
  %201 = load i8, ptr %arrayidx707, align 1
  %cmp709 = icmp eq i8 %201, 13
  br i1 %cmp709, label %if.then711, label %if.else724

if.then711:                                       ; preds = %land.lhs.true706, %land.lhs.true696
  store i8 10, ptr %arrayidx692, align 1
  %incdec.ptr713 = getelementptr inbounds i8, ptr %to.4, i64 -1
  %202 = load ptr, ptr %sv_u413, align 8
  %sub.ptr.lhs.cast717 = ptrtoint ptr %incdec.ptr713 to i64
  %sub.ptr.rhs.cast718 = ptrtoint ptr %202 to i64
  %sub.ptr.sub719 = sub i64 %sub.ptr.lhs.cast717, %sub.ptr.rhs.cast718
  %203 = load ptr, ptr %call53, align 8
  %xpv_cur721 = getelementptr inbounds nuw i8, ptr %203, i64 16
  store i64 %sub.ptr.sub719, ptr %xpv_cur721, align 8
  br label %do.body750

if.else724:                                       ; preds = %land.lhs.true706, %land.lhs.true696, %if.then691
  %arrayidx725 = getelementptr inbounds i8, ptr %to.4, i64 -1
  %204 = load i8, ptr %arrayidx725, align 1
  %cmp727 = icmp eq i8 %204, 13
  br i1 %cmp727, label %if.then729, label %do.body750

if.then729:                                       ; preds = %if.else724
  store i8 10, ptr %arrayidx725, align 1
  br label %do.body750

if.else733:                                       ; preds = %if.end683
  %cmp739 = icmp eq i64 %sub.ptr.sub688, 1
  br i1 %cmp739, label %land.lhs.true741, label %do.body750

land.lhs.true741:                                 ; preds = %if.else733
  %arrayidx742 = getelementptr inbounds i8, ptr %to.4, i64 -1
  %205 = load i8, ptr %arrayidx742, align 1
  %cmp744 = icmp eq i8 %205, 13
  br i1 %cmp744, label %if.then746, label %do.body750

if.then746:                                       ; preds = %land.lhs.true741
  store i8 10, ptr %arrayidx742, align 1
  br label %do.body750

do.body750:                                       ; preds = %if.then746, %land.lhs.true741, %if.else733, %if.then729, %if.else724, %if.then711, %cleanup380
  %last_off.5 = phi i32 [ %last_off.0, %if.then711 ], [ %last_off.0, %if.then729 ], [ %last_off.0, %if.else724 ], [ %last_off.0, %if.then746 ], [ %last_off.0, %land.lhs.true741 ], [ %last_off.0, %if.else733 ], [ %last_off.11145.lcssa, %cleanup380 ]
  %has_utf8.7 = phi i8 [ %has_utf8.6, %if.then711 ], [ %has_utf8.6, %if.then729 ], [ %has_utf8.6, %if.else724 ], [ %has_utf8.6, %if.then746 ], [ %has_utf8.6, %land.lhs.true741 ], [ %has_utf8.6, %if.else733 ], [ %has_utf8.1, %cleanup380 ]
  %brackets.11 = phi i32 [ %brackets.10, %if.then711 ], [ %brackets.10, %if.then729 ], [ %brackets.10, %if.else724 ], [ %brackets.10, %if.then746 ], [ %brackets.10, %land.lhs.true741 ], [ %brackets.10, %if.else733 ], [ %brackets.11146.lcssa, %cleanup380 ]
  %206 = load ptr, ptr @PL_curcop, align 8
  %cop_line751 = getelementptr inbounds nuw i8, ptr %206, i64 36
  %207 = load i32, ptr %cop_line751, align 4
  %inc752 = add i32 %207, 1
  store i32 %inc752, ptr %cop_line751, align 4
  %208 = load ptr, ptr @PL_parser, align 8
  %herelines753 = getelementptr inbounds nuw i8, ptr %208, i64 600
  %209 = load i32, ptr %herelines753, align 8
  %tobool754.not = icmp eq i32 %209, 0
  br i1 %tobool754.not, label %do.end762, label %if.then755

if.then755:                                       ; preds = %do.body750
  %add758 = add i32 %209, %inc752
  store i32 %add758, ptr %cop_line751, align 4
  store i32 0, ptr %herelines753, align 8
  br label %do.end762

do.end762:                                        ; preds = %if.then755, %do.body750
  %bufend763 = getelementptr inbounds nuw i8, ptr %208, i64 200
  %210 = load ptr, ptr %bufend763, align 8
  %bufptr764 = getelementptr inbounds nuw i8, ptr %208, i64 176
  store ptr %210, ptr %bufptr764, align 8
  %call765 = call zeroext i1 @Perl_lex_next_chunk(i32 noundef 0)
  br i1 %call765, label %if.end769, label %if.then766

if.then766:                                       ; preds = %do.end762
  call void @Perl_sv_free(ptr noundef %call53) #7
  %211 = load ptr, ptr @PL_parser, align 8
  %multi_start767 = getelementptr inbounds nuw i8, ptr %211, i64 120
  %212 = load i32, ptr %multi_start767, align 8
  %213 = load ptr, ptr @PL_curcop, align 8
  %cop_line768 = getelementptr inbounds nuw i8, ptr %213, i64 36
  store i32 %212, ptr %cop_line768, align 4
  br label %cleanup888

if.end769:                                        ; preds = %do.end762
  %214 = load ptr, ptr @PL_parser, align 8
  %bufptr770 = getelementptr inbounds nuw i8, ptr %214, i64 176
  %215 = load ptr, ptr %bufptr770, align 8
  br label %for.cond

for.end771.loopexit:                              ; preds = %if.end668
  %has_utf8.6.lcssa = phi i8 [ %has_utf8.6, %if.end668 ]
  %s.10.lcssa = phi ptr [ %s.10, %if.end668 ]
  br label %for.end771

for.end771:                                       ; preds = %for.end771.loopexit, %do.body367, %while.end
  %has_utf8.8 = phi i8 [ %has_utf8.1.lcssa, %do.body367 ], [ %has_utf8.1.lcssa, %while.end ], [ %has_utf8.6.lcssa, %for.end771.loopexit ]
  %s.11 = phi ptr [ %s.4.lcssa.lcssa1187, %do.body367 ], [ %s.4.lcssa.lcssa1187, %while.end ], [ %s.10.lcssa, %for.end771.loopexit ]
  %216 = load ptr, ptr @PL_encoding, align 8
  %tobool772.not = icmp eq ptr %216, null
  br i1 %tobool772.not, label %lor.lhs.false773, label %lor.lhs.false781

lor.lhs.false773:                                 ; preds = %for.end771
  %217 = load ptr, ptr @PL_lex_encoding, align 8
  %tobool774.not = icmp eq ptr %217, null
  br i1 %tobool774.not, label %if.then806, label %land.lhs.true775

land.lhs.true775:                                 ; preds = %lor.lhs.false773
  %call776 = call ptr @Perl__get_encoding() #7
  %cmp777.not = icmp eq ptr %call776, null
  br i1 %cmp777.not, label %if.then806, label %lor.lhs.false781

lor.lhs.false781:                                 ; preds = %land.lhs.true775, %for.end771
  %218 = load ptr, ptr @PL_parser, align 8
  %linestr782 = getelementptr inbounds nuw i8, ptr %218, i64 168
  %219 = load ptr, ptr %linestr782, align 8
  %tobool783.not = icmp eq ptr %219, null
  br i1 %tobool783.not, label %lor.lhs.false794, label %land.lhs.true784

land.lhs.true784:                                 ; preds = %lor.lhs.false781
  %sv_flags786 = getelementptr inbounds nuw i8, ptr %219, i64 12
  %220 = load i32, ptr %sv_flags786, align 4
  %and787 = and i32 %220, 536870912
  %tobool788.not = icmp eq i32 %and787, 0
  br i1 %tobool788.not, label %lor.lhs.false794, label %land.lhs.true789

land.lhs.true789:                                 ; preds = %land.lhs.true784
  %221 = load ptr, ptr @PL_curcop, align 8
  %cop_hints790 = getelementptr inbounds nuw i8, ptr %221, i64 56
  %222 = load i32, ptr %cop_hints790, align 8
  %and792 = and i32 %222, 8
  %tobool793.not = icmp eq i32 %and792, 0
  br i1 %tobool793.not, label %if.then806, label %lor.lhs.false794

lor.lhs.false794:                                 ; preds = %land.lhs.true789, %land.lhs.true784, %lor.lhs.false781
  %lex_flags795 = getelementptr inbounds nuw i8, ptr %218, i64 609
  %223 = load i8, ptr %lex_flags795, align 1
  %224 = and i8 %223, 2
  %tobool798.not = icmp eq i8 %224, 0
  br i1 %tobool798.not, label %land.lhs.true799, label %lor.lhs.false804

land.lhs.true799:                                 ; preds = %lor.lhs.false794
  %225 = load i32, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  %and800 = and i32 %225, 8388608
  %226 = or disjoint i32 %and800, %re_reparse
  %or.cond904.not = icmp eq i32 %226, 0
  br i1 %or.cond904.not, label %if.end811, label %if.then806

lor.lhs.false804:                                 ; preds = %lor.lhs.false794
  %tobool805.old.not = icmp eq i32 %re_reparse, 0
  br i1 %tobool805.old.not, label %if.end811, label %if.then806

if.then806:                                       ; preds = %lor.lhs.false804, %land.lhs.true799, %land.lhs.true789, %land.lhs.true775, %lor.lhs.false773
  br i1 %tobool70.not, label %if.end809, label %if.then808

if.then808:                                       ; preds = %if.then806
  %227 = load i64, ptr %termlen, align 8
  call void @Perl_sv_catpvn_flags(ptr noundef %call53, ptr noundef %s.11, i64 noundef %227, i32 noundef 2) #7
  br label %if.end809

if.end809:                                        ; preds = %if.then808, %if.then806
  %228 = load i64, ptr %termlen, align 8
  %add.ptr810 = getelementptr inbounds nuw i8, ptr %s.11, i64 %228
  br label %if.end811

if.end811:                                        ; preds = %if.end809, %lor.lhs.false804, %land.lhs.true799
  %s.12 = phi ptr [ %add.ptr810, %if.end809 ], [ %s.11, %lor.lhs.false804 ], [ %s.11, %land.lhs.true799 ]
  %loadedv812 = trunc nuw i8 %has_utf8.8 to i1
  br i1 %loadedv812, label %if.then826, label %lor.lhs.false814

lor.lhs.false814:                                 ; preds = %if.end811
  %229 = load ptr, ptr @PL_encoding, align 8
  %tobool815.not = icmp eq ptr %229, null
  br i1 %tobool815.not, label %lor.lhs.false816, label %land.lhs.true824

lor.lhs.false816:                                 ; preds = %lor.lhs.false814
  %230 = load ptr, ptr @PL_lex_encoding, align 8
  %tobool817.not = icmp eq ptr %230, null
  br i1 %tobool817.not, label %if.end829, label %land.lhs.true818

land.lhs.true818:                                 ; preds = %lor.lhs.false816
  %call819 = call ptr @Perl__get_encoding() #7
  %cmp820 = icmp eq ptr %call819, null
  %tobool825 = icmp ne i32 %re_reparse, 0
  %or.cond906 = or i1 %tobool825, %cmp820
  br i1 %or.cond906, label %if.end829, label %if.then826

land.lhs.true824:                                 ; preds = %lor.lhs.false814
  %tobool825.old.not = icmp eq i32 %re_reparse, 0
  br i1 %tobool825.old.not, label %if.then826, label %if.end829

if.then826:                                       ; preds = %land.lhs.true824, %land.lhs.true818, %if.end811
  %231 = load i32, ptr %sv_flags54, align 4
  %or828 = or i32 %231, 536870912
  store i32 %or828, ptr %sv_flags54, align 4
  br label %if.end829

if.end829:                                        ; preds = %if.then826, %land.lhs.true824, %land.lhs.true818, %lor.lhs.false816
  %232 = load ptr, ptr @PL_curcop, align 8
  %cop_line830 = getelementptr inbounds nuw i8, ptr %232, i64 36
  %233 = load i32, ptr %cop_line830, align 4
  %234 = load ptr, ptr @PL_parser, align 8
  %multi_end = getelementptr inbounds nuw i8, ptr %234, i64 124
  store i32 %233, ptr %multi_end, align 4
  %multi_start831 = getelementptr inbounds nuw i8, ptr %234, i64 120
  %235 = load i32, ptr %multi_start831, align 8
  store i32 %235, ptr %cop_line830, align 4
  %herelines833 = getelementptr inbounds nuw i8, ptr %234, i64 600
  store i32 %37, ptr %herelines833, align 8
  %236 = load ptr, ptr %call53, align 8
  %xpv_cur835 = getelementptr inbounds nuw i8, ptr %236, i64 16
  %237 = load i64, ptr %xpv_cur835, align 8
  %add836 = add i64 %237, 5
  %xpv_len_u838 = getelementptr inbounds nuw i8, ptr %236, i64 24
  %238 = load i64, ptr %xpv_len_u838, align 8
  %cmp839 = icmp ult i64 %add836, %238
  br i1 %cmp839, label %do.body842, label %if.end868

do.body842:                                       ; preds = %if.end829
  %add845 = add i64 %237, 1
  store i64 %add845, ptr %xpv_len_u838, align 8
  %239 = load ptr, ptr %call53, align 8
  %xpv_len_u853 = getelementptr inbounds nuw i8, ptr %239, i64 24
  %240 = load i64, ptr %xpv_len_u853, align 8
  %sv_u859 = getelementptr inbounds nuw i8, ptr %call53, i64 16
  %241 = load ptr, ptr %sv_u859, align 8
  %call862 = call ptr @Perl_safesysrealloc(ptr noundef %241, i64 noundef %240) #7
  store ptr %call862, ptr %sv_u859, align 8
  br label %if.end868

if.end868:                                        ; preds = %do.body842, %if.end829
  %242 = load ptr, ptr @PL_parser, align 8
  %lex_stuff = getelementptr inbounds nuw i8, ptr %242, i64 112
  %243 = load ptr, ptr %lex_stuff, align 8
  %tobool869.not = icmp eq ptr %243, null
  br i1 %tobool869.not, label %if.else871, label %if.then870

if.then870:                                       ; preds = %if.end868
  %repl = getelementptr inbounds nuw i8, ptr %242, i64 152
  store ptr %call53, ptr %repl, align 8
  br label %if.end873

if.else871:                                       ; preds = %if.end868
  store ptr %call53, ptr %lex_stuff, align 8
  br label %if.end873

if.end873:                                        ; preds = %if.else871, %if.then870
  %tobool874.not = icmp eq ptr %delimp, null
  br i1 %tobool874.not, label %cleanup888, label %if.then875

if.then875:                                       ; preds = %if.end873
  %multi_open876 = getelementptr inbounds nuw i8, ptr %242, i64 128
  %244 = load i8, ptr %multi_open876, align 8
  %multi_close878 = getelementptr inbounds nuw i8, ptr %242, i64 129
  %245 = load i8, ptr %multi_close878, align 1
  %cmp880 = icmp eq i8 %244, %245
  %246 = load i64, ptr %termlen, align 8
  %idx.neg = sub i64 0, %246
  %cond886.idx = select i1 %cmp880, i64 %idx.neg, i64 0
  %cond886 = getelementptr inbounds i8, ptr %s.12, i64 %cond886.idx
  store ptr %cond886, ptr %delimp, align 8
  br label %cleanup888

cleanup888:                                       ; preds = %if.then875, %if.end873, %if.then766
  %retval.0 = phi ptr [ null, %if.then766 ], [ %s.12, %if.then875 ], [ %s.12, %if.end873 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %termlen) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %termstr) #7
  ret ptr %retval.0
}

declare ptr @Perl__get_encoding() local_unnamed_addr #2

declare zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare zeroext i1 @Perl_sv_cat_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) #6

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
!3 = distinct !{!3, !1}
!4 = distinct !{!4, !1}
!5 = distinct !{!5, !1}
!6 = distinct !{!6, !1}
!7 = distinct !{!7, !1}
