; ModuleID = '/tmp/tmp.LGVlCOFzWf/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/regexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmatch_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i8, i8, i8, i8 }

@PL_regkind = external local_unnamed_addr constant [0 x i8], align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@.str.1 = external hidden unnamed_addr constant [25 x i8], align 1
@PL_regmatch_slab = external local_unnamed_addr global ptr, align 8
@PL_regmatch_state = external local_unnamed_addr global ptr, align 8
@PL_curpm = external local_unnamed_addr global ptr, align 8
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1
@PL_reg_curpm = external local_unnamed_addr global ptr, align 8
@PL_defgv = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @Perl_regexec_flags(ptr noundef %rx, ptr noundef %stringarg, ptr noundef %strend, ptr noundef %strbeg, i64 noundef %minend, ptr noundef %sv, ptr noundef readnone captures(none) %data, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %s = alloca ptr, align 8
  %reginfo_buf = alloca %struct.regmatch_info, align 8
  %len = alloca i64, align 8
  %0 = getelementptr i8, ptr %rx, i64 16
  %rx.val1466 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %s) #6
  %sv_flags = getelementptr inbounds nuw i8, ptr %sv, i64 12
  %1 = load i32, ptr %sv_flags, align 4
  %and = and i32 %1, 536870912
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr @PL_curcop, align 8
  %cop_hints = getelementptr inbounds nuw i8, ptr %2, i64 56
  %3 = load i32, ptr %cop_hints, align 8
  %and1 = and i32 %3, 8
  %tobool2.not = icmp eq i32 %and1, 0
  br label %if.end

if.end:                                           ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool2.not, %land.rhs ]
  %storedv = zext i1 %4 to i8
  %pprivate = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 104
  %5 = load ptr, ptr %pprivate, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %reginfo_buf) #6
  %intflags = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 100
  %6 = load i32, ptr %intflags, align 4
  %and4 = and i32 %6, 256
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end54, label %if.then6

if.then6:                                         ; preds = %if.end
  %and7 = and i32 %flags, 8
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %cond.false, label %cond.end16

cond.false:                                       ; preds = %if.then6
  %call9 = tail call ptr @Perl_mg_find_mglob(ptr noundef nonnull %sv) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %cond.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false
  %mg_len = getelementptr inbounds nuw i8, ptr %call9, i64 24
  %7 = load i64, ptr %mg_len, align 8
  %cmp11 = icmp sgt i64 %7, -1
  br i1 %cmp11, label %cond.true12, label %cond.end16

cond.true12:                                      ; preds = %land.lhs.true
  %sub.ptr.lhs.cast = ptrtoint ptr %strend to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %strbeg to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mg_flags.i = getelementptr inbounds nuw i8, ptr %call9, i64 19
  %8 = load i8, ptr %mg_flags.i, align 1
  %9 = and i8 %8, 64
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %S_MgBYTEPOS.exit

lor.lhs.false.i:                                  ; preds = %cond.true12
  %10 = load i32, ptr %sv_flags, align 4
  %and1.i = and i32 %10, 536870912
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %S_MgBYTEPOS.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %11 = load ptr, ptr @PL_curcop, align 8
  %cop_hints.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  %12 = load i32, ptr %cop_hints.i, align 8
  %and3.i = and i32 %12, 8
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %S_MgBYTEPOS.exit

if.else.i:                                        ; preds = %land.lhs.true.i
  %and7.i = and i32 %10, 2097152
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %cond.true.i

lor.lhs.false9.i:                                 ; preds = %if.else.i
  %and11.i = and i32 %10, 2048
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %cond.false.i, label %land.lhs.true13.i

land.lhs.true13.i:                                ; preds = %lor.lhs.false9.i
  %sv_u.i = getelementptr inbounds nuw i8, ptr %sv, i64 16
  %13 = load ptr, ptr %sv_u.i, align 8
  %sv_flags14.i = getelementptr inbounds nuw i8, ptr %13, i64 12
  %14 = load i32, ptr %sv_flags14.i, align 4
  %and15.i = and i32 %14, 1048576
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %cond.false.i, label %land.lhs.true17.i

land.lhs.true17.i:                                ; preds = %land.lhs.true13.i
  %15 = load ptr, ptr %13, align 8
  %16 = load ptr, ptr %15, align 8
  %sv_flags19.i = getelementptr inbounds nuw i8, ptr %16, i64 12
  %17 = load i32, ptr %sv_flags19.i, align 4
  %and20.i = and i32 %17, 268435456
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %land.lhs.true17.i, %if.else.i
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %strbeg, i64 %sub.ptr.sub
  %call.i = tail call i64 @Perl_utf8_length(ptr noundef %strbeg, ptr noundef %add.ptr.i) #6
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true17.i, %land.lhs.true13.i, %lor.lhs.false9.i
  %call22.i = tail call i64 @Perl_sv_len_utf8(ptr noundef nonnull %sv) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %call.i, %cond.true.i ], [ %call22.i, %cond.false.i ]
  %cmp.i = icmp ugt i64 %7, %cond.i
  br i1 %cmp.i, label %if.then24.i, label %if.end.i

if.then24.i:                                      ; preds = %cond.end.i
  %add25.i = add i64 %sub.ptr.sub, 1
  br label %S_MgBYTEPOS.exit

if.end.i:                                         ; preds = %cond.end.i
  %18 = load i32, ptr %sv_flags, align 4
  %and.i.i = and i32 %18, 2097152
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %and2.i.i = and i32 %18, 2048
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end19.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %sv_u.i.i = getelementptr inbounds nuw i8, ptr %sv, i64 16
  %19 = load ptr, ptr %sv_u.i.i, align 8
  %sv_flags4.i.i = getelementptr inbounds nuw i8, ptr %19, i64 12
  %20 = load i32, ptr %sv_flags4.i.i, align 4
  %and5.i.i = and i32 %20, 1048576
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end19.i.i, label %land.lhs.true7.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %21 = load ptr, ptr %19, align 8
  %22 = load ptr, ptr %21, align 8
  %sv_flags9.i.i = getelementptr inbounds nuw i8, ptr %22, i64 12
  %23 = load i32, ptr %sv_flags9.i.i, align 4
  %and10.i.i = and i32 %23, 268435456
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end19.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i, %if.end.i
  %conv.i.i = trunc i64 %7 to i32
  %call.i.i = tail call ptr @Perl_utf8_hop(ptr noundef %strbeg, i32 noundef %conv.i.i) #6
  %sub.ptr.lhs.cast16.i.i = ptrtoint ptr %call.i.i to i64
  %sub.ptr.sub18.i.i = sub i64 %sub.ptr.lhs.cast16.i.i, %sub.ptr.rhs.cast
  br label %S_MgBYTEPOS.exit

if.end19.i.i:                                     ; preds = %land.lhs.true7.i.i, %land.lhs.true.i.i, %lor.lhs.false.i.i
  %call20.i.i = tail call i64 @Perl_sv_pos_u2b_flags(ptr noundef nonnull %sv, i64 noundef %7, ptr noundef null, i32 noundef 32) #6
  br label %S_MgBYTEPOS.exit

S_MgBYTEPOS.exit:                                 ; preds = %if.end19.i.i, %if.then.i.i, %if.then24.i, %land.lhs.true.i, %lor.lhs.false.i, %cond.true12
  %retval.1.i = phi i64 [ %add25.i, %if.then24.i ], [ %sub.ptr.sub18.i.i, %if.then.i.i ], [ %call20.i.i, %if.end19.i.i ], [ %7, %land.lhs.true.i ], [ %7, %lor.lhs.false.i ], [ %7, %cond.true12 ]
  %add.ptr = getelementptr inbounds nuw i8, ptr %strbeg, i64 %retval.1.i
  br label %cond.end16

cond.end16:                                       ; preds = %S_MgBYTEPOS.exit, %land.lhs.true, %cond.false, %if.then6
  %cond17 = phi ptr [ %add.ptr, %S_MgBYTEPOS.exit ], [ %stringarg, %if.then6 ], [ %strbeg, %land.lhs.true ], [ %strbeg, %cond.false ]
  %ganch = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 40
  store ptr %cond17, ptr %ganch, align 8
  %24 = load i32, ptr %intflags, align 4
  %and19 = and i32 %24, 4096
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %cond.end16
  %gofs = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 80
  %25 = load i64, ptr %gofs, align 8
  %idx.neg = sub i64 0, %25
  %add.ptr23 = getelementptr inbounds i8, ptr %cond17, i64 %idx.neg
  %and24 = and i32 %flags, 128
  %tobool25.not = icmp eq i32 %and24, 0
  %cond29 = select i1 %tobool25.not, ptr %strbeg, ptr %stringarg
  %cmp30 = icmp ult ptr %add.ptr23, %cond29
  br i1 %cmp30, label %cleanup1085, label %if.end54

if.else:                                          ; preds = %cond.end16
  %gofs33 = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 80
  %26 = load i64, ptr %gofs33, align 8
  %tobool34.not = icmp eq i64 %26, 0
  br i1 %tobool34.not, label %if.else46, label %if.then35

if.then35:                                        ; preds = %if.else
  %idx.neg37 = sub i64 0, %26
  %add.ptr38 = getelementptr inbounds i8, ptr %stringarg, i64 %idx.neg37
  %cmp39 = icmp ult ptr %add.ptr38, %strbeg
  %strbeg.add.ptr38 = select i1 %cmp39, ptr %strbeg, ptr %add.ptr38
  br label %if.end54

if.else46:                                        ; preds = %if.else
  %and48 = and i32 %24, 512
  %tobool49.not = icmp eq i32 %and48, 0
  %spec.select = select i1 %tobool49.not, ptr %stringarg, ptr %strbeg
  br label %if.end54

if.end54:                                         ; preds = %if.else46, %if.then35, %if.then21, %if.end
  %startpos.2 = phi ptr [ %stringarg, %if.end ], [ %strbeg.add.ptr38, %if.then35 ], [ %spec.select, %if.else46 ], [ %add.ptr23, %if.then21 ]
  %minlen55 = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 64
  %27 = load i64, ptr %minlen55, align 8
  %add.ptr56 = getelementptr inbounds i8, ptr %startpos.2, i64 %27
  %cmp57 = icmp ugt ptr %add.ptr56, %strend
  %cmp58 = icmp ult ptr %startpos.2, %strbeg
  %or.cond1450 = or i1 %cmp58, %cmp57
  br i1 %or.cond1450, label %cleanup1085, label %if.end60

if.end60:                                         ; preds = %if.end54
  %28 = load i32, ptr @PL_savestack_ix, align 4
  store ptr %startpos.2, ptr %s, align 8
  %extflags = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 56
  %29 = load i32, ptr %extflags, align 8
  %and61 = and i32 %29, 6291456
  %tobool62.not = icmp ne i32 %and61, 0
  %and64 = and i32 %flags, 2
  %tobool65.not = icmp eq i32 %and64, 0
  %or.cond1451 = and i1 %tobool65.not, %tobool62.not
  br i1 %or.cond1451, label %if.then66, label %if.end115

if.then66:                                        ; preds = %if.end60
  %call67 = tail call ptr @Perl_re_intuit_start(ptr noundef nonnull %rx, ptr noundef nonnull %sv, ptr noundef %strbeg, ptr noundef %startpos.2, ptr noundef %strend, i32 noundef %flags, ptr noundef null)
  store ptr %call67, ptr %s, align 8
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %cleanup1085, label %if.end70

if.end70:                                         ; preds = %if.then66
  %30 = load i32, ptr %extflags, align 8
  %and72 = and i32 %30, 524288
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end115, label %if.then74

if.then74:                                        ; preds = %if.end70
  %and75 = and i32 %flags, 128
  %tobool76.not = icmp ne i32 %and75, 0
  %cmp78 = icmp ult ptr %call67, %stringarg
  %or.cond1452 = and i1 %tobool76.not, %cmp78
  br i1 %or.cond1452, label %do.body1073, label %if.end80

if.end80:                                         ; preds = %if.then74
  %lastcloseparen = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 116
  store i32 0, ptr %lastcloseparen, align 4
  %lastparen = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 112
  store i32 0, ptr %lastparen, align 8
  br i1 %4, label %cond.true94, label %cond.false99

cond.true94:                                      ; preds = %if.end80
  %rx.val1465 = load ptr, ptr %0, align 8
  %extflags83 = getelementptr inbounds nuw i8, ptr %rx.val1465, i64 56
  %31 = load i32, ptr %extflags83, align 8
  %or = or i32 %31, 1048576
  store i32 %or, ptr %extflags83, align 8
  %sub.ptr.lhs.cast901661 = ptrtoint ptr %call67 to i64
  %sub.ptr.rhs.cast911662 = ptrtoint ptr %strbeg to i64
  %sub.ptr.sub921663 = sub i64 %sub.ptr.lhs.cast901661, %sub.ptr.rhs.cast911662
  %offs1664 = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 120
  %32 = load ptr, ptr %offs1664, align 8
  store i64 %sub.ptr.sub921663, ptr %32, align 8
  %minlenret = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 72
  %33 = load i64, ptr %minlenret, align 8
  %conv = trunc i64 %33 to i32
  %call95 = tail call ptr @Perl_utf8_hop(ptr noundef nonnull %call67, i32 noundef %conv) #6
  %sub.ptr.lhs.cast96 = ptrtoint ptr %call95 to i64
  %sub.ptr.sub98 = sub i64 %sub.ptr.lhs.cast96, %sub.ptr.rhs.cast911662
  br label %cond.end105

cond.false99:                                     ; preds = %if.end80
  %rx.val1464 = load ptr, ptr %0, align 8
  %extflags86 = getelementptr inbounds nuw i8, ptr %rx.val1464, i64 56
  %34 = load i32, ptr %extflags86, align 8
  %and87 = and i32 %34, -1048577
  store i32 %and87, ptr %extflags86, align 8
  %sub.ptr.lhs.cast90 = ptrtoint ptr %call67 to i64
  %sub.ptr.rhs.cast91 = ptrtoint ptr %strbeg to i64
  %sub.ptr.sub92 = sub i64 %sub.ptr.lhs.cast90, %sub.ptr.rhs.cast91
  %offs = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 120
  %35 = load ptr, ptr %offs, align 8
  store i64 %sub.ptr.sub92, ptr %35, align 8
  %minlenret103 = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 72
  %36 = load i64, ptr %minlenret103, align 8
  %add104 = add nsw i64 %36, %sub.ptr.sub92
  br label %cond.end105

cond.end105:                                      ; preds = %cond.false99, %cond.true94
  %offs1666 = phi ptr [ %offs1664, %cond.true94 ], [ %offs, %cond.false99 ]
  %cond106 = phi i64 [ %sub.ptr.sub98, %cond.true94 ], [ %add104, %cond.false99 ]
  %37 = load ptr, ptr %offs1666, align 8
  %end = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 %cond106, ptr %end, align 8
  %and109 = and i32 %flags, 16
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.then111, label %cleanup1085

if.then111:                                       ; preds = %cond.end105
  tail call fastcc void @S_reg_set_capture_string(ptr noundef nonnull %rx, ptr noundef %strbeg, ptr noundef %strend, ptr noundef nonnull %sv, i32 noundef %flags, i1 noundef zeroext %4)
  br label %cleanup1085

if.end115:                                        ; preds = %if.end70, %if.end60
  %38 = load i32, ptr %extflags, align 8
  %and117 = and i32 %38, 1
  %39 = load ptr, ptr %s, align 8
  %sub.ptr.lhs.cast118 = ptrtoint ptr %strend to i64
  %sub.ptr.rhs.cast119 = ptrtoint ptr %39 to i64
  %sub.ptr.sub120 = sub i64 %sub.ptr.lhs.cast118, %sub.ptr.rhs.cast119
  %substrs = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 88
  %40 = load ptr, ptr %substrs, align 8
  %arrayidx122 = getelementptr inbounds nuw i8, ptr %40, i64 88
  %41 = load i64, ptr %arrayidx122, align 8
  %spec.select1453 = tail call i64 @llvm.smin.i64(i64 %41, i64 0)
  %add133 = add nsw i64 %spec.select1453, %27
  %cmp134 = icmp slt i64 %sub.ptr.sub120, %add133
  br i1 %cmp134, label %do.body1073, label %if.end137

if.end137:                                        ; preds = %if.end115
  %program = getelementptr inbounds nuw i8, ptr %5, i64 44
  %42 = load i8, ptr %program, align 4
  %cmp139.not = icmp eq i8 %42, -100
  br i1 %cmp139.not, label %if.end142, label %if.then141

if.then141:                                       ; preds = %if.end137
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1) #6
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %if.end137
  %rx.val1463 = load ptr, ptr %0, align 8
  %extflags144 = getelementptr inbounds nuw i8, ptr %rx.val1463, i64 56
  %43 = load i32, ptr %extflags144, align 8
  %and145 = and i32 %43, -67108865
  store i32 %and145, ptr %extflags144, align 8
  br i1 %4, label %cond.true148, label %cond.false152

cond.true148:                                     ; preds = %if.end142
  %rx.val1462 = load ptr, ptr %0, align 8
  %extflags150 = getelementptr inbounds nuw i8, ptr %rx.val1462, i64 56
  %44 = load i32, ptr %extflags150, align 8
  %or151 = or i32 %44, 1048576
  store i32 %or151, ptr %extflags150, align 8
  br label %cond.end156

cond.false152:                                    ; preds = %if.end142
  %rx.val = load ptr, ptr %0, align 8
  %extflags154 = getelementptr inbounds nuw i8, ptr %rx.val, i64 56
  %45 = load i32, ptr %extflags154, align 8
  %and155 = and i32 %45, -1048577
  store i32 %and155, ptr %extflags154, align 8
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false152, %cond.true148
  store ptr %rx, ptr %reginfo_buf, align 8
  %intuit = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 88
  store i8 0, ptr %intuit, align 8
  %is_utf8_target = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 90
  store i8 %storedv, ptr %is_utf8_target, align 2
  %sv_flags164 = getelementptr inbounds nuw i8, ptr %rx, i64 12
  %46 = load i32, ptr %sv_flags164, align 4
  %is_utf8_pat = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 89
  %and165 = lshr i32 %46, 29
  %47 = trunc nuw nsw i32 %and165 to i8
  %storedv169 = and i8 %47, 1
  store i8 %storedv169, ptr %is_utf8_pat, align 1
  %warned = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 91
  store i8 0, ptr %warned, align 1
  %strbeg170 = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 8
  store ptr %strbeg, ptr %strbeg170, align 8
  %sv171 = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 32
  store ptr %sv, ptr %sv171, align 8
  %poscache_maxiter = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 72
  store i32 0, ptr %poscache_maxiter, align 8
  %strend172 = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 16
  store ptr %strend, ptr %strend172, align 8
  %add.ptr173 = getelementptr inbounds i8, ptr %stringarg, i64 %minend
  %till = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 24
  store ptr %add.ptr173, ptr %till, align 8
  %48 = load i32, ptr %extflags, align 8
  %and175 = and i32 %48, 131072
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end193, label %land.lhs.true177

land.lhs.true177:                                 ; preds = %cond.end156
  %49 = load i32, ptr %sv_flags, align 4
  %and179 = and i32 %49, 131072
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %if.end193, label %if.then181

if.then181:                                       ; preds = %land.lhs.true177
  %call182 = tail call ptr @Perl_newSV(i64 noundef 0) #6
  store ptr %call182, ptr %sv171, align 8
  %cmp185.not = icmp eq ptr %call182, %sv
  br i1 %cmp185.not, label %do.end, label %if.then189

if.then189:                                       ; preds = %if.then181
  tail call void @Perl_sv_setsv_flags(ptr noundef %call182, ptr noundef nonnull %sv, i32 noundef 1554) #6
  br label %do.end

do.end:                                           ; preds = %if.then189, %if.then181
  %50 = load ptr, ptr %sv171, align 8
  tail call void @Perl_save_pushptr(ptr noundef %50, i32 noundef 11) #6
  br label %if.end193

if.end193:                                        ; preds = %do.end, %land.lhs.true177, %cond.end156
  %51 = load i32, ptr %extflags, align 8
  %and195 = and i32 %51, 131072
  %tobool196.not = icmp eq i32 %and195, 0
  %cond197 = select i1 %tobool196.not, i32 1, i32 2
  %52 = load ptr, ptr @PL_regmatch_slab, align 8
  %tobool198.not = icmp eq ptr %52, null
  br i1 %tobool198.not, label %if.then199, label %if.end202

if.then199:                                       ; preds = %if.end193
  %call200 = tail call ptr @Perl_safesysmalloc(i64 noundef 3976) #6
  store ptr %call200, ptr @PL_regmatch_slab, align 8
  %prev = getelementptr inbounds nuw i8, ptr %call200, i64 3960
  store ptr null, ptr %prev, align 8
  %next = getelementptr inbounds nuw i8, ptr %call200, i64 3968
  store ptr null, ptr %next, align 8
  store ptr %call200, ptr @PL_regmatch_state, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.then199, %if.end193
  %53 = load ptr, ptr @PL_regmatch_state, align 8
  %54 = load ptr, ptr @PL_regmatch_slab, align 8
  %info_aux213 = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 56
  %info_aux_eval214 = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 64
  %info_aux = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 56
  %55 = add nuw nsw i32 %cond197, 1
  br label %for.body

for.body:                                         ; preds = %for.inc, %if.end202
  %i.01711 = phi i32 [ 0, %if.end202 ], [ %inc, %for.inc ]
  switch i32 %i.01711, label %if.end216 [
    i32 1, label %if.then207
    i32 2, label %if.then211
  ]

if.then207:                                       ; preds = %for.body
  %56 = load ptr, ptr @PL_regmatch_state, align 8
  %u = getelementptr inbounds nuw i8, ptr %56, i64 16
  store ptr %u, ptr %info_aux, align 8
  br label %if.end216

if.then211:                                       ; preds = %for.body
  %57 = load ptr, ptr @PL_regmatch_state, align 8
  %u212 = getelementptr inbounds nuw i8, ptr %57, i64 16
  %58 = load ptr, ptr %info_aux213, align 8
  store ptr %u212, ptr %58, align 8
  store ptr %u212, ptr %info_aux_eval214, align 8
  br label %if.end216

if.end216:                                        ; preds = %if.then211, %if.then207, %for.body
  %59 = load ptr, ptr @PL_regmatch_state, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %59, i64 120
  store ptr %incdec.ptr, ptr @PL_regmatch_state, align 8
  %60 = load ptr, ptr @PL_regmatch_slab, align 8
  %arrayidx218 = getelementptr inbounds nuw i8, ptr %60, i64 3840
  %cmp219 = icmp ugt ptr %incdec.ptr, %arrayidx218
  br i1 %cmp219, label %if.then221, label %for.inc

if.then221:                                       ; preds = %if.end216
  %next.i = getelementptr inbounds nuw i8, ptr %60, i64 3968
  %61 = load ptr, ptr %next.i, align 8
  %tobool.not.i1467 = icmp eq ptr %61, null
  br i1 %tobool.not.i1467, label %if.then.i1469, label %S_push_slab.exit

if.then.i1469:                                    ; preds = %if.then221
  %call.i1470 = tail call ptr @Perl_safesysmalloc(i64 noundef 3976) #6
  %62 = load ptr, ptr @PL_regmatch_slab, align 8
  %prev.i = getelementptr inbounds nuw i8, ptr %call.i1470, i64 3960
  store ptr %62, ptr %prev.i, align 8
  %next1.i = getelementptr inbounds nuw i8, ptr %call.i1470, i64 3968
  store ptr null, ptr %next1.i, align 8
  %next2.i = getelementptr inbounds nuw i8, ptr %62, i64 3968
  store ptr %call.i1470, ptr %next2.i, align 8
  br label %S_push_slab.exit

S_push_slab.exit:                                 ; preds = %if.then.i1469, %if.then221
  %s.0.i = phi ptr [ %61, %if.then221 ], [ %call.i1470, %if.then.i1469 ]
  store ptr %s.0.i, ptr @PL_regmatch_slab, align 8
  store ptr %s.0.i, ptr @PL_regmatch_state, align 8
  br label %for.inc

for.inc:                                          ; preds = %S_push_slab.exit, %if.end216
  %inc = add nuw nsw i32 %i.01711, 1
  %exitcond = icmp ne i32 %inc, %55
  br i1 %exitcond, label %for.body, label %for.end, !llvm.loop !0

for.end:                                          ; preds = %for.inc
  %info_aux224 = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 56
  %63 = load ptr, ptr %info_aux224, align 8
  %old_regmatch_state225 = getelementptr inbounds nuw i8, ptr %63, i64 8
  store ptr %53, ptr %old_regmatch_state225, align 8
  %64 = load ptr, ptr %info_aux224, align 8
  %old_regmatch_slab227 = getelementptr inbounds nuw i8, ptr %64, i64 16
  store ptr %54, ptr %old_regmatch_slab227, align 8
  %65 = load ptr, ptr %info_aux224, align 8
  %poscache = getelementptr inbounds nuw i8, ptr %65, i64 24
  store ptr null, ptr %poscache, align 8
  %66 = load ptr, ptr %info_aux224, align 8
  tail call void @Perl_save_destructor_x(ptr noundef nonnull @S_cleanup_regmatch_info_aux, ptr noundef %66) #6
  %67 = load i32, ptr %extflags, align 8
  %and231 = and i32 %67, 131072
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %if.else234, label %if.then233

if.then233:                                       ; preds = %for.end
  %68 = load ptr, ptr %reginfo_buf, align 8
  %69 = getelementptr i8, ptr %68, i64 16
  %.val.i = load ptr, ptr %69, align 8
  %info_aux_eval.i = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 64
  %70 = load ptr, ptr %info_aux_eval.i, align 8
  store ptr %.val.i, ptr %70, align 8
  %71 = load ptr, ptr %sv171, align 8
  %tobool.not.i1471 = icmp eq ptr %71, null
  br i1 %tobool.not.i1471, label %if.else.i1481, label %if.then.i1472

if.then.i1472:                                    ; preds = %if.then233
  %72 = load ptr, ptr @PL_defgv, align 8
  %sv_u.i1473 = getelementptr inbounds nuw i8, ptr %72, i64 16
  %73 = load ptr, ptr %sv_u.i1473, align 8
  %74 = load ptr, ptr %73, align 8
  %tobool3.not.i = icmp eq ptr %74, null
  br i1 %tobool3.not.i, label %cond.false.i1480, label %cond.end.i1474

cond.false.i1480:                                 ; preds = %if.then.i1472
  %call7.i = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %72, i32 noundef 0) #6
  %sv_u8.i = getelementptr inbounds nuw i8, ptr %call7.i, i64 16
  %75 = load ptr, ptr %sv_u8.i, align 8
  br label %cond.end.i1474

cond.end.i1474:                                   ; preds = %cond.false.i1480, %if.then.i1472
  %cond.i1475 = phi ptr [ %75, %cond.false.i1480 ], [ %73, %if.then.i1472 ]
  %76 = load ptr, ptr %cond.i1475, align 8
  %cmp.not.i = icmp eq ptr %71, %76
  br i1 %cmp.not.i, label %if.end.i1477, label %if.then12.i

if.then12.i:                                      ; preds = %cond.end.i1474
  %77 = load ptr, ptr @PL_defgv, align 8
  tail call void @Perl_save_gp(ptr noundef %77, i32 noundef 0) #6
  %78 = load ptr, ptr @PL_defgv, align 8
  %79 = load ptr, ptr %78, align 8
  %xpv_cur.i = getelementptr inbounds nuw i8, ptr %79, i64 16
  %80 = load i64, ptr %xpv_cur.i, align 8
  %and.i = and i64 %80, -2
  store i64 %and.i, ptr %xpv_cur.i, align 8
  %sv_u13.i = getelementptr inbounds nuw i8, ptr %78, i64 16
  %81 = load ptr, ptr %sv_u13.i, align 8
  tail call void @Perl_save_generic_svref(ptr noundef %81) #6
  %82 = load ptr, ptr @PL_defgv, align 8
  %sv_u16.i = getelementptr inbounds nuw i8, ptr %82, i64 16
  %83 = load ptr, ptr %sv_u16.i, align 8
  store ptr null, ptr %83, align 8
  %84 = load ptr, ptr @PL_defgv, align 8
  %sv_u19.i = getelementptr inbounds nuw i8, ptr %84, i64 16
  %85 = load ptr, ptr %sv_u19.i, align 8
  %86 = load ptr, ptr %85, align 8
  %cmp.not.i.i = icmp eq ptr %86, null
  br i1 %cmp.not.i.i, label %S_SvREFCNT_dec.exit.i, label %if.then.i.i1476

if.then.i.i1476:                                  ; preds = %if.then12.i
  %sv_refcnt.i.i = getelementptr inbounds nuw i8, ptr %86, i64 8
  %87 = load i32, ptr %sv_refcnt.i.i, align 8
  %cmp1.i.i = icmp ugt i32 %87, 1
  br i1 %cmp1.i.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i1476
  %sub.i.i = add i32 %87, -1
  store i32 %sub.i.i, ptr %sv_refcnt.i.i, align 8
  br label %S_SvREFCNT_dec.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i1476
  tail call void @Perl_sv_free2(ptr noundef nonnull %86, i32 noundef %87) #6
  br label %S_SvREFCNT_dec.exit.i

S_SvREFCNT_dec.exit.i:                            ; preds = %if.else.i.i, %if.then4.i.i, %if.then12.i
  %88 = load ptr, ptr %sv171, align 8
  %cmp.not.i104.i = icmp eq ptr %88, null
  br i1 %cmp.not.i104.i, label %S_SvREFCNT_inc.exit.i, label %if.then.i105.i

if.then.i105.i:                                   ; preds = %S_SvREFCNT_dec.exit.i
  %sv_refcnt.i106.i = getelementptr inbounds nuw i8, ptr %88, i64 8
  %89 = load i32, ptr %sv_refcnt.i106.i, align 8
  %inc.i.i = add i32 %89, 1
  store i32 %inc.i.i, ptr %sv_refcnt.i106.i, align 8
  br label %S_SvREFCNT_inc.exit.i

S_SvREFCNT_inc.exit.i:                            ; preds = %if.then.i105.i, %S_SvREFCNT_dec.exit.i
  %90 = load ptr, ptr @PL_defgv, align 8
  %sv_u24.i = getelementptr inbounds nuw i8, ptr %90, i64 16
  %91 = load ptr, ptr %sv_u24.i, align 8
  store ptr %88, ptr %91, align 8
  br label %if.end.i1477

if.end.i1477:                                     ; preds = %S_SvREFCNT_inc.exit.i, %cond.end.i1474
  %92 = load ptr, ptr %sv171, align 8
  %call28.i = tail call ptr @Perl_mg_find_mglob(ptr noundef %92) #6
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end33.i

if.then30.i:                                      ; preds = %if.end.i1477
  %93 = load ptr, ptr %sv171, align 8
  %call32.i = tail call ptr @Perl_sv_magicext_mglob(ptr noundef %93) #6
  %mg_len.i1479 = getelementptr inbounds nuw i8, ptr %call32.i, i64 24
  store i64 -1, ptr %mg_len.i1479, align 8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %if.end.i1477
  %mg.0.i = phi ptr [ %call28.i, %if.end.i1477 ], [ %call32.i, %if.then30.i ]
  %pos_magic.i = getelementptr inbounds nuw i8, ptr %70, i64 56
  store ptr %mg.0.i, ptr %pos_magic.i, align 8
  %mg_len34.i = getelementptr inbounds nuw i8, ptr %mg.0.i, i64 24
  %94 = load i64, ptr %mg_len34.i, align 8
  %pos.i = getelementptr inbounds nuw i8, ptr %70, i64 64
  store i64 %94, ptr %pos.i, align 8
  %mg_flags.i1478 = getelementptr inbounds nuw i8, ptr %mg.0.i, i64 19
  %95 = load i8, ptr %mg_flags.i1478, align 1
  %pos_flags.i = getelementptr inbounds nuw i8, ptr %70, i64 72
  store i8 %95, ptr %pos_flags.i, align 8
  br label %if.end36.i

if.else.i1481:                                    ; preds = %if.then233
  %pos_magic35.i = getelementptr inbounds nuw i8, ptr %70, i64 56
  store ptr null, ptr %pos_magic35.i, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i1481, %if.end33.i
  %96 = load ptr, ptr @PL_reg_curpm, align 8
  %tobool37.not.i = icmp eq ptr %96, null
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end40.i

if.then38.i:                                      ; preds = %if.end36.i
  %call39.i = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 96) #6
  store ptr %call39.i, ptr @PL_reg_curpm, align 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then38.i, %if.end36.i
  %97 = load ptr, ptr %info_aux_eval.i, align 8
  %tobool42.not.i = icmp eq ptr %97, null
  br i1 %tobool42.not.i, label %if.end48.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end40.i
  %98 = load ptr, ptr %reginfo_buf, align 8
  %cmp.not.i107.i = icmp eq ptr %98, null
  br i1 %cmp.not.i107.i, label %S_SvREFCNT_inc.exit111.i, label %if.then.i108.i

if.then.i108.i:                                   ; preds = %if.then43.i
  %sv_refcnt.i109.i = getelementptr inbounds nuw i8, ptr %98, i64 8
  %99 = load i32, ptr %sv_refcnt.i109.i, align 8
  %inc.i110.i = add i32 %99, 1
  store i32 %inc.i110.i, ptr %sv_refcnt.i109.i, align 8
  br label %S_SvREFCNT_inc.exit111.i

S_SvREFCNT_inc.exit111.i:                         ; preds = %if.then.i108.i, %if.then43.i
  %100 = load ptr, ptr @PL_reg_curpm, align 8
  %op_pmregexp.i = getelementptr inbounds nuw i8, ptr %100, i64 56
  %101 = load ptr, ptr %op_pmregexp.i, align 8
  %cmp.not.i112.i = icmp eq ptr %101, null
  br i1 %cmp.not.i112.i, label %S_SvREFCNT_dec.exit119.i, label %if.then.i113.i

if.then.i113.i:                                   ; preds = %S_SvREFCNT_inc.exit111.i
  %sv_refcnt.i114.i = getelementptr inbounds nuw i8, ptr %101, i64 8
  %102 = load i32, ptr %sv_refcnt.i114.i, align 8
  %cmp1.i115.i = icmp ugt i32 %102, 1
  br i1 %cmp1.i115.i, label %if.then4.i117.i, label %if.else.i116.i

if.then4.i117.i:                                  ; preds = %if.then.i113.i
  %sub.i118.i = add i32 %102, -1
  store i32 %sub.i118.i, ptr %sv_refcnt.i114.i, align 8
  br label %S_SvREFCNT_dec.exit119.i

if.else.i116.i:                                   ; preds = %if.then.i113.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %101, i32 noundef %102) #6
  br label %S_SvREFCNT_dec.exit119.i

S_SvREFCNT_dec.exit119.i:                         ; preds = %if.else.i116.i, %if.then4.i117.i, %S_SvREFCNT_inc.exit111.i
  %103 = load ptr, ptr %reginfo_buf, align 8
  %104 = load ptr, ptr @PL_reg_curpm, align 8
  %op_pmregexp47.i = getelementptr inbounds nuw i8, ptr %104, i64 56
  store ptr %103, ptr %op_pmregexp47.i, align 8
  br label %if.end48.i

if.end48.i:                                       ; preds = %S_SvREFCNT_dec.exit119.i, %if.end40.i
  %105 = load ptr, ptr @PL_curpm, align 8
  %curpm.i = getelementptr inbounds nuw i8, ptr %70, i64 8
  store ptr %105, ptr %curpm.i, align 8
  %106 = load ptr, ptr @PL_reg_curpm, align 8
  store ptr %106, ptr @PL_curpm, align 8
  %extflags.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 56
  %107 = load i32, ptr %extflags.i, align 8
  %and49.i = and i32 %107, 33554432
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.else59.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end48.i
  %subbeg.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 128
  %108 = load ptr, ptr %subbeg.i, align 8
  %subbeg52.i = getelementptr inbounds nuw i8, ptr %70, i64 24
  store ptr %108, ptr %subbeg52.i, align 8
  %sublen.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 144
  %109 = load i64, ptr %sublen.i, align 8
  %sublen53.i = getelementptr inbounds nuw i8, ptr %70, i64 32
  store i64 %109, ptr %sublen53.i, align 8
  %suboffset.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 152
  %110 = load i64, ptr %suboffset.i, align 8
  %suboffset54.i = getelementptr inbounds nuw i8, ptr %70, i64 40
  store i64 %110, ptr %suboffset54.i, align 8
  %subcoffset.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 160
  %111 = load i64, ptr %subcoffset.i, align 8
  %subcoffset55.i = getelementptr inbounds nuw i8, ptr %70, i64 48
  store i64 %111, ptr %subcoffset55.i, align 8
  %saved_copy.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 136
  %112 = load ptr, ptr %saved_copy.i, align 8
  %saved_copy56.i = getelementptr inbounds nuw i8, ptr %70, i64 16
  store ptr %112, ptr %saved_copy56.i, align 8
  %113 = load i32, ptr %extflags.i, align 8
  %and58.i = and i32 %113, -33554433
  store i32 %and58.i, ptr %extflags.i, align 8
  br label %S_setup_eval_state.exit

if.else59.i:                                      ; preds = %if.end48.i
  %subbeg60.i = getelementptr inbounds nuw i8, ptr %70, i64 24
  store ptr null, ptr %subbeg60.i, align 8
  br label %S_setup_eval_state.exit

S_setup_eval_state.exit:                          ; preds = %if.else59.i, %if.then51.i
  %114 = load ptr, ptr %strbeg170, align 8
  %subbeg62.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 128
  store ptr %114, ptr %subbeg62.i, align 8
  %suboffset63.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %suboffset63.i, i8 0, i64 16, i1 false)
  %115 = load ptr, ptr %strend172, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %115 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %114 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sublen66.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 144
  store i64 %sub.ptr.sub.i, ptr %sublen66.i, align 8
  br label %if.end238

if.else234:                                       ; preds = %for.end
  %116 = load ptr, ptr %info_aux224, align 8
  store ptr null, ptr %116, align 8
  %info_aux_eval237 = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 64
  store ptr null, ptr %info_aux_eval237, align 8
  br label %if.end238

if.end238:                                        ; preds = %if.else234, %S_setup_eval_state.exit
  %117 = load ptr, ptr @PL_curpm, align 8
  %tobool239.not = icmp eq ptr %117, null
  br i1 %tobool239.not, label %if.end249, label %land.lhs.true240

land.lhs.true240:                                 ; preds = %if.end238
  %op_pmregexp = getelementptr inbounds nuw i8, ptr %117, i64 56
  %118 = load ptr, ptr %op_pmregexp, align 8
  %cmp241 = icmp eq ptr %118, %rx
  br i1 %cmp241, label %if.then243, label %if.end249

if.then243:                                       ; preds = %land.lhs.true240
  %offs244 = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 120
  %119 = load ptr, ptr %offs244, align 8
  %nparens = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 96
  %120 = load i32, ptr %nparens, align 8
  %add245 = add i32 %120, 1
  %conv246 = zext i32 %add245 to i64
  %call247 = tail call ptr @Perl_safesyscalloc(i64 noundef %conv246, i64 noundef 24) #6
  store ptr %call247, ptr %offs244, align 8
  br label %if.end249

if.end249:                                        ; preds = %if.then243, %land.lhs.true240, %if.end238
  %swap.0 = phi ptr [ %119, %if.then243 ], [ null, %land.lhs.true240 ], [ null, %if.end238 ]
  %121 = load i32, ptr %intflags, align 4
  %and251 = and i32 %121, 3072
  %tobool252.not = icmp eq i32 %and251, 0
  br i1 %tobool252.not, label %if.end307, label %if.then253

if.then253:                                       ; preds = %if.end249
  %122 = load ptr, ptr %reginfo_buf, align 8
  %123 = getelementptr i8, ptr %122, i64 16
  %.val.i1482 = load ptr, ptr %123, align 8
  %pprivate.i = getelementptr inbounds nuw i8, ptr %.val.i1482, i64 104
  %124 = load ptr, ptr %pprivate.i, align 8
  %cutpoint.i = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 48
  store ptr null, ptr %cutpoint.i, align 8
  %125 = load ptr, ptr %s, align 8
  %126 = load ptr, ptr %strbeg170, align 8
  %sub.ptr.lhs.cast.i1484 = ptrtoint ptr %125 to i64
  %sub.ptr.rhs.cast.i1485 = ptrtoint ptr %126 to i64
  %sub.ptr.sub.i1486 = sub i64 %sub.ptr.lhs.cast.i1484, %sub.ptr.rhs.cast.i1485
  %offs.i = getelementptr inbounds nuw i8, ptr %.val.i1482, i64 120
  %127 = load ptr, ptr %offs.i, align 8
  store i64 %sub.ptr.sub.i1486, ptr %127, align 8
  %lastparen.i = getelementptr inbounds nuw i8, ptr %.val.i1482, i64 112
  store i32 0, ptr %lastparen.i, align 8
  %lastcloseparen.i = getelementptr inbounds nuw i8, ptr %.val.i1482, i64 116
  store i32 0, ptr %lastcloseparen.i, align 4
  %nparens.i = getelementptr inbounds nuw i8, ptr %.val.i1482, i64 96
  %128 = load i32, ptr %nparens.i, align 8
  %cmp47.i = icmp sgt i32 %128, 0
  br i1 %cmp47.i, label %for.body.preheader.i, label %if.end.i1487

for.body.preheader.i:                             ; preds = %if.then253
  %129 = load ptr, ptr %offs.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %i.049.i = phi i32 [ %dec.i, %for.body.i ], [ %128, %for.body.preheader.i ]
  %pp.048.i = phi ptr [ %incdec.ptr.i, %for.body.i ], [ %129, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %pp.048.i, i64 24
  %dec.i = add nsw i32 %i.049.i, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %incdec.ptr.i, i8 -1, i64 16, i1 false)
  %130 = load i32, ptr %lastparen.i, align 8
  %cmp.i1489 = icmp sgt i32 %dec.i, %130
  br i1 %cmp.i1489, label %for.body.i, label %if.end.i1487.loopexit, !llvm.loop !2

if.end.i1487.loopexit:                            ; preds = %for.body.i
  br label %if.end.i1487

if.end.i1487:                                     ; preds = %if.end.i1487.loopexit, %if.then253
  %131 = load i32, ptr @PL_savestack_ix, align 4
  %add.ptr.i1488 = getelementptr inbounds nuw i8, ptr %124, i64 48
  %call6.i = call fastcc i64 @S_regmatch(ptr noundef nonnull %reginfo_buf, ptr noundef %125, ptr noundef nonnull %add.ptr.i1488)
  %cmp7.not.i = icmp eq i64 %call6.i, -1
  br i1 %cmp7.not.i, label %if.end12.i, label %S_regtry.exit

if.end12.i:                                       ; preds = %if.end.i1487
  %132 = load ptr, ptr %cutpoint.i, align 8
  %tobool14.not.i = icmp eq ptr %132, null
  br i1 %tobool14.not.i, label %do.body.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i
  store ptr %132, ptr %s, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then15.i, %if.end12.i
  %133 = load i32, ptr @PL_savestack_ix, align 4
  %cmp18.i = icmp sgt i32 %133, %131
  br i1 %cmp18.i, label %if.then19.i, label %if.end258

if.then19.i:                                      ; preds = %do.body.i
  call void @Perl_leave_scope(i32 noundef %131) #6
  br label %if.end258

S_regtry.exit:                                    ; preds = %if.end.i1487
  %134 = load ptr, ptr %offs.i, align 8
  %end11.i = getelementptr inbounds nuw i8, ptr %134, i64 8
  store i64 %call6.i, ptr %end11.i, align 8
  br label %got_it

if.end258:                                        ; preds = %if.then19.i, %do.body.i
  %135 = load i32, ptr %intflags, align 4
  %and260 = and i32 %135, 1024
  %tobool261.not = icmp eq i32 %and260, 0
  br i1 %tobool261.not, label %do.body1073, label %if.end263

if.end263:                                        ; preds = %if.end258
  %spec.select1454 = call i64 @llvm.usub.sat.i64(i64 %27, i64 1)
  %136 = load i8, ptr %is_utf8_target, align 2, !range !3, !noundef !4
  %loadedv268 = trunc nuw i8 %136 to i1
  br i1 %loadedv268, label %cond.true270, label %cond.false273

cond.true270:                                     ; preds = %if.end263
  %sub271 = sub nsw i64 0, %spec.select1454
  %call272 = call fastcc ptr @S_reghop3(ptr noundef %strend, i64 noundef %sub271, ptr noundef %strbeg)
  br label %cond.end276

cond.false273:                                    ; preds = %if.end263
  %sub274 = sub nsw i64 0, %spec.select1454
  %add.ptr275 = getelementptr inbounds i8, ptr %strend, i64 %sub274
  br label %cond.end276

cond.end276:                                      ; preds = %cond.false273, %cond.true270
  %cond277 = phi ptr [ %call272, %cond.true270 ], [ %add.ptr275, %cond.false273 ]
  %add.ptr278 = getelementptr inbounds i8, ptr %cond277, i64 -1
  %s.promoted = load ptr, ptr %s, align 8
  %cmp279.not1713 = icmp ugt ptr %s.promoted, %add.ptr278
  br i1 %cmp279.not1713, label %do.body1073.loopexit1708, label %while.body.preheader

while.body.preheader:                             ; preds = %cond.end276
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.preheader
  %137 = phi ptr [ %139, %while.cond.backedge ], [ %s.promoted, %while.body.preheader ]
  %incdec.ptr281 = getelementptr inbounds nuw i8, ptr %137, i64 1
  %138 = load i8, ptr %137, align 1
  %cmp283.not = icmp eq i8 %138, 10
  br i1 %cmp283.not, label %if.end286, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then19.i1514, %if.end12.i1509, %while.body
  %139 = phi ptr [ %incdec.ptr281, %while.body ], [ %spec.select1750, %if.end12.i1509 ], [ %spec.select1750, %if.then19.i1514 ]
  %cmp279.not = icmp ugt ptr %139, %add.ptr278
  br i1 %cmp279.not, label %do.body1073.loopexit1708.loopexit, label %while.body, !llvm.loop !5

if.end286:                                        ; preds = %while.body
  %140 = load ptr, ptr %substrs, align 8
  %substr = getelementptr inbounds nuw i8, ptr %140, i64 104
  %141 = load ptr, ptr %substr, align 8
  %tobool290.not = icmp eq ptr %141, null
  br i1 %tobool290.not, label %lor.lhs.false291, label %if.then296

lor.lhs.false291:                                 ; preds = %if.end286
  %utf8_substr = getelementptr inbounds nuw i8, ptr %140, i64 112
  %142 = load ptr, ptr %utf8_substr, align 8
  %tobool295.not = icmp eq ptr %142, null
  br i1 %tobool295.not, label %if.end301, label %if.then296

if.then296:                                       ; preds = %lor.lhs.false291, %if.end286
  %call297 = call ptr @Perl_re_intuit_start(ptr noundef %rx, ptr noundef %sv, ptr noundef %strbeg, ptr noundef nonnull %incdec.ptr281, ptr noundef %strend, i32 noundef %flags, ptr noundef null)
  %tobool298.not = icmp eq ptr %call297, null
  br i1 %tobool298.not, label %do.body1073.loopexit1708.loopexit, label %if.end301

if.end301:                                        ; preds = %if.then296, %lor.lhs.false291
  %143 = phi ptr [ %call297, %if.then296 ], [ %incdec.ptr281, %lor.lhs.false291 ]
  %144 = load ptr, ptr %reginfo_buf, align 8
  %145 = getelementptr i8, ptr %144, i64 16
  %.val.i1490 = load ptr, ptr %145, align 8
  %pprivate.i1491 = getelementptr inbounds nuw i8, ptr %.val.i1490, i64 104
  %146 = load ptr, ptr %pprivate.i1491, align 8
  store ptr null, ptr %cutpoint.i, align 8
  %147 = load ptr, ptr %strbeg170, align 8
  %sub.ptr.lhs.cast.i1494 = ptrtoint ptr %143 to i64
  %sub.ptr.rhs.cast.i1495 = ptrtoint ptr %147 to i64
  %sub.ptr.sub.i1496 = sub i64 %sub.ptr.lhs.cast.i1494, %sub.ptr.rhs.cast.i1495
  %offs.i1497 = getelementptr inbounds nuw i8, ptr %.val.i1490, i64 120
  %148 = load ptr, ptr %offs.i1497, align 8
  store i64 %sub.ptr.sub.i1496, ptr %148, align 8
  %lastparen.i1498 = getelementptr inbounds nuw i8, ptr %.val.i1490, i64 112
  store i32 0, ptr %lastparen.i1498, align 8
  %lastcloseparen.i1499 = getelementptr inbounds nuw i8, ptr %.val.i1490, i64 116
  store i32 0, ptr %lastcloseparen.i1499, align 4
  %nparens.i1500 = getelementptr inbounds nuw i8, ptr %.val.i1490, i64 96
  %149 = load i32, ptr %nparens.i1500, align 8
  %cmp47.i1501 = icmp sgt i32 %149, 0
  br i1 %cmp47.i1501, label %for.body.preheader.i1515, label %if.end.i1502

for.body.preheader.i1515:                         ; preds = %if.end301
  %150 = load ptr, ptr %offs.i1497, align 8
  br label %for.body.i1516

for.body.i1516:                                   ; preds = %for.body.i1516, %for.body.preheader.i1515
  %i.049.i1517 = phi i32 [ %dec.i1520, %for.body.i1516 ], [ %149, %for.body.preheader.i1515 ]
  %pp.048.i1518 = phi ptr [ %incdec.ptr.i1519, %for.body.i1516 ], [ %150, %for.body.preheader.i1515 ]
  %incdec.ptr.i1519 = getelementptr inbounds nuw i8, ptr %pp.048.i1518, i64 24
  %dec.i1520 = add nsw i32 %i.049.i1517, -1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %incdec.ptr.i1519, i8 -1, i64 16, i1 false)
  %151 = load i32, ptr %lastparen.i1498, align 8
  %cmp.i1521 = icmp sgt i32 %dec.i1520, %151
  br i1 %cmp.i1521, label %for.body.i1516, label %if.end.i1502.loopexit, !llvm.loop !2

if.end.i1502.loopexit:                            ; preds = %for.body.i1516
  br label %if.end.i1502

if.end.i1502:                                     ; preds = %if.end.i1502.loopexit, %if.end301
  %152 = load i32, ptr @PL_savestack_ix, align 4
  %add.ptr.i1503 = getelementptr inbounds nuw i8, ptr %146, i64 48
  %call6.i1504 = call fastcc i64 @S_regmatch(ptr noundef nonnull %reginfo_buf, ptr noundef nonnull %143, ptr noundef nonnull %add.ptr.i1503)
  %cmp7.not.i1505 = icmp eq i64 %call6.i1504, -1
  br i1 %cmp7.not.i1505, label %if.end12.i1509, label %S_regtry.exit1522.thread

S_regtry.exit1522.thread:                         ; preds = %if.end.i1502
  %call6.i1504.lcssa = phi i64 [ %call6.i1504, %if.end.i1502 ]
  %.lcssa1771 = phi ptr [ %143, %if.end.i1502 ]
  %offs.i1497.lcssa = phi ptr [ %offs.i1497, %if.end.i1502 ]
  store ptr %.lcssa1771, ptr %s, align 8
  %153 = load ptr, ptr %offs.i1497.lcssa, align 8
  %end11.i1507 = getelementptr inbounds nuw i8, ptr %153, i64 8
  store i64 %call6.i1504.lcssa, ptr %end11.i1507, align 8
  br label %got_it

if.end12.i1509:                                   ; preds = %if.end.i1502
  %154 = load ptr, ptr %cutpoint.i, align 8
  %tobool14.not.i1510 = icmp eq ptr %154, null
  %spec.select1750 = select i1 %tobool14.not.i1510, ptr %143, ptr %154
  %155 = load i32, ptr @PL_savestack_ix, align 4
  %cmp18.i1513 = icmp sgt i32 %155, %152
  br i1 %cmp18.i1513, label %if.then19.i1514, label %while.cond.backedge

if.then19.i1514:                                  ; preds = %if.end12.i1509
  call void @Perl_leave_scope(i32 noundef %152) #6
  br label %while.cond.backedge

if.end307:                                        ; preds = %if.end249
  %and309 = and i32 %121, 4096
  %tobool310.not = icmp eq i32 %and309, 0
  br i1 %tobool310.not, label %if.end319, label %if.then311

if.then311:                                       ; preds = %if.end307
  %156 = load ptr, ptr %s, align 8
  %cmp312 = icmp eq ptr %156, %startpos.2
  br i1 %cmp312, label %land.lhs.true314, label %do.body1073

land.lhs.true314:                                 ; preds = %if.then311
  %call315 = call fastcc i32 @S_regtry(ptr noundef %reginfo_buf, ptr noundef %s)
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %do.body1073, label %got_it

if.end319:                                        ; preds = %if.end307
  %157 = load ptr, ptr %substrs, align 8
  %substr323 = getelementptr inbounds nuw i8, ptr %157, i64 24
  %158 = load ptr, ptr %substr323, align 8
  %tobool324.not = icmp eq ptr %158, null
  br i1 %tobool324.not, label %lor.lhs.false325, label %land.lhs.true331.thread

lor.lhs.false325:                                 ; preds = %if.end319
  %utf8_substr329 = getelementptr inbounds nuw i8, ptr %157, i64 32
  %159 = load ptr, ptr %utf8_substr329, align 8
  %tobool330.not = icmp eq ptr %159, null
  %and333 = and i32 %121, 1
  %tobool334.not = icmp eq i32 %and333, 0
  %or.cond1699 = or i1 %tobool334.not, %tobool330.not
  br i1 %or.cond1699, label %lor.lhs.false453, label %if.then335

land.lhs.true331.thread:                          ; preds = %if.end319
  %and3331678 = and i32 %121, 1
  %tobool334.not1679 = icmp eq i32 %and3331678, 0
  br i1 %tobool334.not1679, label %if.then495, label %if.then335.thread

if.then335:                                       ; preds = %lor.lhs.false325
  br i1 %4, label %if.then337, label %if.then395

if.then335.thread:                                ; preds = %land.lhs.true331.thread
  br i1 %4, label %if.then337, label %if.end402

if.then337:                                       ; preds = %if.then335.thread, %if.then335
  %utf8_substr341 = getelementptr inbounds nuw i8, ptr %157, i64 32
  %160 = load ptr, ptr %utf8_substr341, align 8
  %tobool342.not = icmp eq ptr %160, null
  br i1 %tobool342.not, label %if.then343, label %if.end344

if.then343:                                       ; preds = %if.then337
  tail call fastcc void @S_to_utf8_substr(ptr noundef nonnull %rx.val1466)
  br label %if.end344

if.end344:                                        ; preds = %if.then343, %if.then337
  %161 = load ptr, ptr %substrs, align 8
  %utf8_substr348 = getelementptr inbounds nuw i8, ptr %161, i64 32
  %162 = load ptr, ptr %utf8_substr348, align 8
  %sv_u = getelementptr inbounds nuw i8, ptr %162, i64 16
  %163 = load ptr, ptr %sv_u, align 8
  %164 = load i8, ptr %163, align 1
  %s.promoted1727 = load ptr, ptr %s, align 8
  %cmp3531732 = icmp ult ptr %s.promoted1727, %strend
  br i1 %cmp3531732, label %while.body355.lr.ph, label %do.body1073.loopexit1706

while.body355.lr.ph:                              ; preds = %if.end344
  %cutpoint.i1525 = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 48
  br label %while.body355

while.body355:                                    ; preds = %if.end384, %while.body355.lr.ph
  %storemerge1449.lcssa17281733 = phi ptr [ %s.promoted1727, %while.body355.lr.ph ], [ %incdec.ptr385, %if.end384 ]
  %165 = load i8, ptr %storemerge1449.lcssa17281733, align 1
  %cmp358 = icmp eq i8 %165, %164
  br i1 %cmp358, label %if.then360, label %if.end384

if.then360:                                       ; preds = %while.body355
  %166 = load ptr, ptr %reginfo_buf, align 8
  %167 = getelementptr i8, ptr %166, i64 16
  %.val.i1523 = load ptr, ptr %167, align 8
  %pprivate.i1524 = getelementptr inbounds nuw i8, ptr %.val.i1523, i64 104
  %168 = load ptr, ptr %pprivate.i1524, align 8
  store ptr null, ptr %cutpoint.i1525, align 8
  %169 = load ptr, ptr %strbeg170, align 8
  %sub.ptr.lhs.cast.i1527 = ptrtoint ptr %storemerge1449.lcssa17281733 to i64
  %sub.ptr.rhs.cast.i1528 = ptrtoint ptr %169 to i64
  %sub.ptr.sub.i1529 = sub i64 %sub.ptr.lhs.cast.i1527, %sub.ptr.rhs.cast.i1528
  %offs.i1530 = getelementptr inbounds nuw i8, ptr %.val.i1523, i64 120
  %170 = load ptr, ptr %offs.i1530, align 8
  store i64 %sub.ptr.sub.i1529, ptr %170, align 8
  %lastparen.i1531 = getelementptr inbounds nuw i8, ptr %.val.i1523, i64 112
  store i32 0, ptr %lastparen.i1531, align 8
  %lastcloseparen.i1532 = getelementptr inbounds nuw i8, ptr %.val.i1523, i64 116
  store i32 0, ptr %lastcloseparen.i1532, align 4
  %nparens.i1533 = getelementptr inbounds nuw i8, ptr %.val.i1523, i64 96
  %171 = load i32, ptr %nparens.i1533, align 8
  %cmp47.i1534 = icmp sgt i32 %171, 0
  br i1 %cmp47.i1534, label %for.body.preheader.i1548, label %if.end.i1535

for.body.preheader.i1548:                         ; preds = %if.then360
  %172 = load ptr, ptr %offs.i1530, align 8
  br label %for.body.i1549

for.body.i1549:                                   ; preds = %for.body.i1549, %for.body.preheader.i1548
  %i.049.i1550 = phi i32 [ %dec.i1553, %for.body.i1549 ], [ %171, %for.body.preheader.i1548 ]
  %pp.048.i1551 = phi ptr [ %incdec.ptr.i1552, %for.body.i1549 ], [ %172, %for.body.preheader.i1548 ]
  %incdec.ptr.i1552 = getelementptr inbounds nuw i8, ptr %pp.048.i1551, i64 24
  %dec.i1553 = add nsw i32 %i.049.i1550, -1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %incdec.ptr.i1552, i8 -1, i64 16, i1 false)
  %173 = load i32, ptr %lastparen.i1531, align 8
  %cmp.i1554 = icmp sgt i32 %dec.i1553, %173
  br i1 %cmp.i1554, label %for.body.i1549, label %if.end.i1535.loopexit, !llvm.loop !2

if.end.i1535.loopexit:                            ; preds = %for.body.i1549
  br label %if.end.i1535

if.end.i1535:                                     ; preds = %if.end.i1535.loopexit, %if.then360
  %174 = load i32, ptr @PL_savestack_ix, align 4
  %add.ptr.i1536 = getelementptr inbounds nuw i8, ptr %168, i64 48
  %call6.i1537 = call fastcc i64 @S_regmatch(ptr noundef nonnull %reginfo_buf, ptr noundef nonnull %storemerge1449.lcssa17281733, ptr noundef nonnull %add.ptr.i1536)
  %cmp7.not.i1538 = icmp eq i64 %call6.i1537, -1
  br i1 %cmp7.not.i1538, label %if.end12.i1542, label %S_regtry.exit1555

if.end12.i1542:                                   ; preds = %if.end.i1535
  %175 = load ptr, ptr %cutpoint.i1525, align 8
  %tobool14.not.i1543 = icmp eq ptr %175, null
  %spec.select1751 = select i1 %tobool14.not.i1543, ptr %storemerge1449.lcssa17281733, ptr %175
  %176 = load i32, ptr @PL_savestack_ix, align 4
  %cmp18.i1546 = icmp sgt i32 %176, %174
  br i1 %cmp18.i1546, label %if.then19.i1547, label %if.end364

if.then19.i1547:                                  ; preds = %if.end12.i1542
  call void @Perl_leave_scope(i32 noundef %174) #6
  br label %if.end364

S_regtry.exit1555:                                ; preds = %if.end.i1535
  %storemerge1449.lcssa17281733.lcssa = phi ptr [ %storemerge1449.lcssa17281733, %if.end.i1535 ]
  %call6.i1537.lcssa = phi i64 [ %call6.i1537, %if.end.i1535 ]
  %offs.i1530.lcssa = phi ptr [ %offs.i1530, %if.end.i1535 ]
  store ptr %storemerge1449.lcssa17281733.lcssa, ptr %s, align 8
  %177 = load ptr, ptr %offs.i1530.lcssa, align 8
  %end11.i1540 = getelementptr inbounds nuw i8, ptr %177, i64 8
  store i64 %call6.i1537.lcssa, ptr %end11.i1540, align 8
  br label %got_it

if.end364:                                        ; preds = %if.then19.i1547, %if.end12.i1542
  %178 = load i8, ptr %spec.select1751, align 1
  %idxprom = zext i8 %178 to i64
  %arrayidx365 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom
  %179 = load i8, ptr %arrayidx365, align 1
  %idx.ext = zext i8 %179 to i64
  %add.ptr367 = getelementptr inbounds nuw i8, ptr %spec.select1751, i64 %idx.ext
  %cmp3691723 = icmp ult ptr %add.ptr367, %strend
  br i1 %cmp3691723, label %land.rhs371.preheader, label %if.end384

land.rhs371.preheader:                            ; preds = %if.end364
  br label %land.rhs371

land.rhs371:                                      ; preds = %while.body377, %land.rhs371.preheader
  %storemerge14491724 = phi ptr [ %add.ptr382, %while.body377 ], [ %add.ptr367, %land.rhs371.preheader ]
  %180 = load i8, ptr %storemerge14491724, align 1
  %cmp374 = icmp eq i8 %180, %164
  br i1 %cmp374, label %while.body377, label %if.end384.loopexit

while.body377:                                    ; preds = %land.rhs371
  %idxprom378 = zext i8 %180 to i64
  %arrayidx379 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom378
  %181 = load i8, ptr %arrayidx379, align 1
  %idx.ext381 = zext i8 %181 to i64
  %add.ptr382 = getelementptr inbounds nuw i8, ptr %storemerge14491724, i64 %idx.ext381
  %cmp369 = icmp ult ptr %add.ptr382, %strend
  br i1 %cmp369, label %land.rhs371, label %if.end384.loopexit, !llvm.loop !6

if.end384.loopexit:                               ; preds = %while.body377, %land.rhs371
  %storemerge1449.lcssa1729.ph = phi ptr [ %storemerge14491724, %land.rhs371 ], [ %add.ptr382, %while.body377 ]
  br label %if.end384

if.end384:                                        ; preds = %if.end384.loopexit, %if.end364, %while.body355
  %storemerge1449.lcssa1729 = phi ptr [ %storemerge1449.lcssa17281733, %while.body355 ], [ %add.ptr367, %if.end364 ], [ %storemerge1449.lcssa1729.ph, %if.end384.loopexit ]
  %incdec.ptr385 = getelementptr inbounds nuw i8, ptr %storemerge1449.lcssa1729, i64 1
  %cmp353 = icmp ult ptr %incdec.ptr385, %strend
  br i1 %cmp353, label %while.body355, label %do.body1073.loopexit1706.loopexit, !llvm.loop !7

if.then395:                                       ; preds = %if.then335
  %call396 = tail call fastcc zeroext i1 @S_to_byte_substr(ptr noundef nonnull %rx.val1466)
  br i1 %call396, label %if.end402, label %do.body1073

if.end402:                                        ; preds = %if.then395, %if.then335.thread
  %182 = load ptr, ptr %substrs, align 8
  %substr406 = getelementptr inbounds nuw i8, ptr %182, i64 24
  %183 = load ptr, ptr %substr406, align 8
  %sv_u407 = getelementptr inbounds nuw i8, ptr %183, i64 16
  %184 = load ptr, ptr %sv_u407, align 8
  %185 = load i8, ptr %184, align 1
  %s.promoted1715 = load ptr, ptr %s, align 8
  %cmp4121720 = icmp ult ptr %s.promoted1715, %strend
  br i1 %cmp4121720, label %while.body414.lr.ph, label %do.body1073.loopexit1707

while.body414.lr.ph:                              ; preds = %if.end402
  %cutpoint.i1558 = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 48
  br label %while.body414

while.body414:                                    ; preds = %if.end437, %while.body414.lr.ph
  %storemerge1448.lcssa17161721 = phi ptr [ %s.promoted1715, %while.body414.lr.ph ], [ %incdec.ptr438, %if.end437 ]
  %186 = load i8, ptr %storemerge1448.lcssa17161721, align 1
  %cmp417 = icmp eq i8 %186, %185
  br i1 %cmp417, label %if.then419, label %if.end437

if.then419:                                       ; preds = %while.body414
  %187 = load ptr, ptr %reginfo_buf, align 8
  %188 = getelementptr i8, ptr %187, i64 16
  %.val.i1556 = load ptr, ptr %188, align 8
  %pprivate.i1557 = getelementptr inbounds nuw i8, ptr %.val.i1556, i64 104
  %189 = load ptr, ptr %pprivate.i1557, align 8
  store ptr null, ptr %cutpoint.i1558, align 8
  %190 = load ptr, ptr %strbeg170, align 8
  %sub.ptr.lhs.cast.i1560 = ptrtoint ptr %storemerge1448.lcssa17161721 to i64
  %sub.ptr.rhs.cast.i1561 = ptrtoint ptr %190 to i64
  %sub.ptr.sub.i1562 = sub i64 %sub.ptr.lhs.cast.i1560, %sub.ptr.rhs.cast.i1561
  %offs.i1563 = getelementptr inbounds nuw i8, ptr %.val.i1556, i64 120
  %191 = load ptr, ptr %offs.i1563, align 8
  store i64 %sub.ptr.sub.i1562, ptr %191, align 8
  %lastparen.i1564 = getelementptr inbounds nuw i8, ptr %.val.i1556, i64 112
  store i32 0, ptr %lastparen.i1564, align 8
  %lastcloseparen.i1565 = getelementptr inbounds nuw i8, ptr %.val.i1556, i64 116
  store i32 0, ptr %lastcloseparen.i1565, align 4
  %nparens.i1566 = getelementptr inbounds nuw i8, ptr %.val.i1556, i64 96
  %192 = load i32, ptr %nparens.i1566, align 8
  %cmp47.i1567 = icmp sgt i32 %192, 0
  br i1 %cmp47.i1567, label %for.body.preheader.i1581, label %if.end.i1568

for.body.preheader.i1581:                         ; preds = %if.then419
  %193 = load ptr, ptr %offs.i1563, align 8
  br label %for.body.i1582

for.body.i1582:                                   ; preds = %for.body.i1582, %for.body.preheader.i1581
  %i.049.i1583 = phi i32 [ %dec.i1586, %for.body.i1582 ], [ %192, %for.body.preheader.i1581 ]
  %pp.048.i1584 = phi ptr [ %incdec.ptr.i1585, %for.body.i1582 ], [ %193, %for.body.preheader.i1581 ]
  %incdec.ptr.i1585 = getelementptr inbounds nuw i8, ptr %pp.048.i1584, i64 24
  %dec.i1586 = add nsw i32 %i.049.i1583, -1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %incdec.ptr.i1585, i8 -1, i64 16, i1 false)
  %194 = load i32, ptr %lastparen.i1564, align 8
  %cmp.i1587 = icmp sgt i32 %dec.i1586, %194
  br i1 %cmp.i1587, label %for.body.i1582, label %if.end.i1568.loopexit, !llvm.loop !2

if.end.i1568.loopexit:                            ; preds = %for.body.i1582
  br label %if.end.i1568

if.end.i1568:                                     ; preds = %if.end.i1568.loopexit, %if.then419
  %195 = load i32, ptr @PL_savestack_ix, align 4
  %add.ptr.i1569 = getelementptr inbounds nuw i8, ptr %189, i64 48
  %call6.i1570 = call fastcc i64 @S_regmatch(ptr noundef nonnull %reginfo_buf, ptr noundef nonnull %storemerge1448.lcssa17161721, ptr noundef nonnull %add.ptr.i1569)
  %cmp7.not.i1571 = icmp eq i64 %call6.i1570, -1
  br i1 %cmp7.not.i1571, label %if.end12.i1575, label %S_regtry.exit1588

if.end12.i1575:                                   ; preds = %if.end.i1568
  %196 = load ptr, ptr %cutpoint.i1558, align 8
  %tobool14.not.i1576 = icmp eq ptr %196, null
  %spec.select1752 = select i1 %tobool14.not.i1576, ptr %storemerge1448.lcssa17161721, ptr %196
  %197 = load i32, ptr @PL_savestack_ix, align 4
  %cmp18.i1579 = icmp sgt i32 %197, %195
  br i1 %cmp18.i1579, label %if.then19.i1580, label %if.end423

if.then19.i1580:                                  ; preds = %if.end12.i1575
  call void @Perl_leave_scope(i32 noundef %195) #6
  br label %if.end423

S_regtry.exit1588:                                ; preds = %if.end.i1568
  %storemerge1448.lcssa17161721.lcssa = phi ptr [ %storemerge1448.lcssa17161721, %if.end.i1568 ]
  %call6.i1570.lcssa = phi i64 [ %call6.i1570, %if.end.i1568 ]
  %offs.i1563.lcssa = phi ptr [ %offs.i1563, %if.end.i1568 ]
  store ptr %storemerge1448.lcssa17161721.lcssa, ptr %s, align 8
  %198 = load ptr, ptr %offs.i1563.lcssa, align 8
  %end11.i1573 = getelementptr inbounds nuw i8, ptr %198, i64 8
  store i64 %call6.i1570.lcssa, ptr %end11.i1573, align 8
  br label %got_it

if.end423:                                        ; preds = %if.then19.i1580, %if.end12.i1575
  br label %while.cond425

while.cond425:                                    ; preds = %land.rhs428, %if.end423
  %.pn = phi ptr [ %spec.select1752, %if.end423 ], [ %storemerge1448, %land.rhs428 ]
  %storemerge1448 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %cmp426 = icmp ult ptr %storemerge1448, %strend
  br i1 %cmp426, label %land.rhs428, label %if.end437.loopexit

land.rhs428:                                      ; preds = %while.cond425
  %199 = load i8, ptr %storemerge1448, align 1
  %cmp431 = icmp eq i8 %199, %185
  br i1 %cmp431, label %while.cond425, label %if.end437.loopexit, !llvm.loop !8

if.end437.loopexit:                               ; preds = %land.rhs428, %while.cond425
  %storemerge1448.lcssa = phi ptr [ %storemerge1448, %while.cond425 ], [ %storemerge1448, %land.rhs428 ]
  br label %if.end437

if.end437:                                        ; preds = %if.end437.loopexit, %while.body414
  %storemerge1448.lcssa1717 = phi ptr [ %storemerge1448.lcssa17161721, %while.body414 ], [ %storemerge1448.lcssa, %if.end437.loopexit ]
  %incdec.ptr438 = getelementptr inbounds nuw i8, ptr %storemerge1448.lcssa1717, i64 1
  %cmp412 = icmp ult ptr %incdec.ptr438, %strend
  br i1 %cmp412, label %while.body414, label %do.body1073.loopexit1707.loopexit, !llvm.loop !9

lor.lhs.false453:                                 ; preds = %lor.lhs.false325
  %utf8_substr457 = getelementptr inbounds nuw i8, ptr %157, i64 32
  %200 = load ptr, ptr %utf8_substr457, align 8
  %cmp458.not = icmp eq ptr %200, null
  br i1 %cmp458.not, label %lor.lhs.false460, label %lor.lhs.false489

lor.lhs.false460:                                 ; preds = %lor.lhs.false453
  %substr464 = getelementptr inbounds nuw i8, ptr %157, i64 64
  %201 = load ptr, ptr %substr464, align 8
  %cmp465.not = icmp eq ptr %201, null
  br i1 %cmp465.not, label %lor.lhs.false467, label %land.lhs.true474

lor.lhs.false467:                                 ; preds = %lor.lhs.false460
  %utf8_substr471 = getelementptr inbounds nuw i8, ptr %157, i64 72
  %202 = load ptr, ptr %utf8_substr471, align 8
  %cmp472.not = icmp eq ptr %202, null
  br i1 %cmp472.not, label %if.else822.thread, label %land.lhs.true474

land.lhs.true474:                                 ; preds = %lor.lhs.false467, %lor.lhs.false460
  %max_offset = getelementptr inbounds nuw i8, ptr %157, i64 56
  %203 = load i64, ptr %max_offset, align 8
  %204 = load ptr, ptr %s, align 8
  %sub.ptr.rhs.cast479 = ptrtoint ptr %204 to i64
  %sub.ptr.sub480 = sub i64 %sub.ptr.lhs.cast118, %sub.ptr.rhs.cast479
  %cmp481 = icmp slt i64 %203, %sub.ptr.sub480
  br i1 %cmp481, label %lor.lhs.false489, label %if.else822

lor.lhs.false489:                                 ; preds = %land.lhs.true474, %lor.lhs.false453
  %utf8_substr493 = getelementptr inbounds nuw i8, ptr %157, i64 32
  %205 = load ptr, ptr %utf8_substr493, align 8
  %tobool494.not = icmp eq ptr %205, null
  br i1 %tobool494.not, label %if.else532, label %if.then495.thread

if.then495:                                       ; preds = %land.lhs.true331.thread
  br i1 %4, label %if.then497, label %if.end522

if.then495.thread:                                ; preds = %lor.lhs.false489
  br i1 %4, label %if.then497, label %if.then515

if.then497:                                       ; preds = %if.then495.thread, %if.then495
  %utf8_substr501 = getelementptr inbounds nuw i8, ptr %157, i64 32
  %206 = load ptr, ptr %utf8_substr501, align 8
  %tobool502.not = icmp eq ptr %206, null
  br i1 %tobool502.not, label %if.then503, label %if.end504

if.then503:                                       ; preds = %if.then497
  tail call fastcc void @S_to_utf8_substr(ptr noundef nonnull %rx.val1466)
  br label %if.end504

if.end504:                                        ; preds = %if.then503, %if.then497
  %207 = load ptr, ptr %substrs, align 8
  %utf8_substr508 = getelementptr inbounds nuw i8, ptr %207, i64 32
  br label %if.end527

if.then515:                                       ; preds = %if.then495.thread
  %call516 = tail call fastcc zeroext i1 @S_to_byte_substr(ptr noundef nonnull %rx.val1466)
  br i1 %call516, label %if.end522, label %do.body1073

if.end522:                                        ; preds = %if.then515, %if.then495
  %208 = load ptr, ptr %substrs, align 8
  %substr526 = getelementptr inbounds nuw i8, ptr %208, i64 24
  br label %if.end527

if.end527:                                        ; preds = %if.end522, %if.end504
  %must.0.in = phi ptr [ %utf8_substr508, %if.end504 ], [ %substr526, %if.end522 ]
  %209 = load ptr, ptr %substrs, align 8
  %data529 = getelementptr inbounds nuw i8, ptr %209, i64 8
  %210 = load i64, ptr %data529, align 8
  br label %if.end573

if.else532:                                       ; preds = %lor.lhs.false489
  br i1 %4, label %if.then534, label %if.else546

if.then534:                                       ; preds = %if.else532
  %utf8_substr538 = getelementptr inbounds nuw i8, ptr %157, i64 72
  %211 = load ptr, ptr %utf8_substr538, align 8
  %tobool539.not = icmp eq ptr %211, null
  br i1 %tobool539.not, label %if.then540, label %if.end541

if.then540:                                       ; preds = %if.then534
  tail call fastcc void @S_to_utf8_substr(ptr noundef nonnull %rx.val1466)
  br label %if.end541

if.end541:                                        ; preds = %if.then540, %if.then534
  %212 = load ptr, ptr %substrs, align 8
  %utf8_substr545 = getelementptr inbounds nuw i8, ptr %212, i64 72
  br label %if.end564

if.else546:                                       ; preds = %if.else532
  %substr550 = getelementptr inbounds nuw i8, ptr %157, i64 64
  %213 = load ptr, ptr %substr550, align 8
  %tobool551.not = icmp eq ptr %213, null
  br i1 %tobool551.not, label %if.then552, label %if.end559

if.then552:                                       ; preds = %if.else546
  %call553 = tail call fastcc zeroext i1 @S_to_byte_substr(ptr noundef nonnull %rx.val1466)
  br i1 %call553, label %if.end559, label %do.body1073

if.end559:                                        ; preds = %if.then552, %if.else546
  %214 = load ptr, ptr %substrs, align 8
  %substr563 = getelementptr inbounds nuw i8, ptr %214, i64 64
  br label %if.end564

if.end564:                                        ; preds = %if.end559, %if.end541
  %must.1.in = phi ptr [ %utf8_substr545, %if.end541 ], [ %substr563, %if.end559 ]
  %215 = load ptr, ptr %substrs, align 8
  %arrayidx567 = getelementptr inbounds nuw i8, ptr %215, i64 48
  %max_offset568 = getelementptr inbounds nuw i8, ptr %215, i64 56
  %216 = load i64, ptr %max_offset568, align 8
  %217 = load i64, ptr %arrayidx567, align 8
  br label %if.end573

if.end573:                                        ; preds = %if.end564, %if.end527
  %must.2.in = phi ptr [ %must.0.in, %if.end527 ], [ %must.1.in, %if.end564 ]
  %back_max.0 = phi i64 [ %210, %if.end527 ], [ %216, %if.end564 ]
  %back_min.0 = phi i64 [ %210, %if.end527 ], [ %217, %if.end564 ]
  %sub778 = sub i64 0, %back_min.0
  %must.2 = load ptr, ptr %must.2.in, align 8
  %cmp574 = icmp slt i64 %back_min.0, 0
  br i1 %cmp574, label %if.end623, label %if.else577

if.else577:                                       ; preds = %if.end573
  %218 = load i8, ptr %is_utf8_target, align 2, !range !3, !noundef !4
  %loadedv579 = trunc nuw i8 %218 to i1
  br i1 %loadedv579, label %cond.true581, label %cond.false600

cond.true581:                                     ; preds = %if.else577
  br i1 %4, label %cond.true584, label %cond.false586

cond.true584:                                     ; preds = %cond.true581
  %call585 = tail call i64 @Perl_sv_len_utf8(ptr noundef %must.2) #6
  br label %cond.end587

cond.false586:                                    ; preds = %cond.true581
  %219 = load ptr, ptr %must.2, align 8
  %xpv_cur = getelementptr inbounds nuw i8, ptr %219, i64 16
  %220 = load i64, ptr %xpv_cur, align 8
  br label %cond.end587

cond.end587:                                      ; preds = %cond.false586, %cond.true584
  %cond588 = phi i64 [ %call585, %cond.true584 ], [ %220, %cond.false586 ]
  %sv_flags589 = getelementptr inbounds nuw i8, ptr %must.2, i64 12
  %221 = load i32, ptr %sv_flags589, align 4
  %cmp591 = icmp ugt i32 %221, -1073741825
  %conv595.neg.neg = zext i1 %cmp591 to i64
  %222 = add i64 %cond588, %back_min.0
  %add597.neg = sub i64 %conv595.neg.neg, %222
  %call599 = tail call fastcc ptr @S_reghop3(ptr noundef %strend, i64 noundef %add597.neg, ptr noundef %strbeg)
  br label %if.end623

cond.false600:                                    ; preds = %if.else577
  br i1 %4, label %cond.true603, label %cond.false605

cond.true603:                                     ; preds = %cond.false600
  %call604 = tail call i64 @Perl_sv_len_utf8(ptr noundef %must.2) #6
  br label %cond.end608

cond.false605:                                    ; preds = %cond.false600
  %223 = load ptr, ptr %must.2, align 8
  %xpv_cur607 = getelementptr inbounds nuw i8, ptr %223, i64 16
  %224 = load i64, ptr %xpv_cur607, align 8
  br label %cond.end608

cond.end608:                                      ; preds = %cond.false605, %cond.true603
  %cond609 = phi i64 [ %call604, %cond.true603 ], [ %224, %cond.false605 ]
  %sv_flags610 = getelementptr inbounds nuw i8, ptr %must.2, i64 12
  %225 = load i32, ptr %sv_flags610, align 4
  %cmp612 = icmp ugt i32 %225, -1073741825
  %conv616.neg.neg = zext i1 %cmp612 to i64
  %226 = add i64 %cond609, %back_min.0
  %add618.neg = sub i64 %conv616.neg.neg, %226
  %add.ptr620 = getelementptr inbounds i8, ptr %strend, i64 %add618.neg
  br label %if.end623

if.end623:                                        ; preds = %cond.end608, %cond.end587, %if.end573
  %last.0 = phi ptr [ %strend, %if.end573 ], [ %call599, %cond.end587 ], [ %add.ptr620, %cond.end608 ]
  %227 = load ptr, ptr %s, align 8
  %228 = load ptr, ptr %strbeg170, align 8
  %cmp625 = icmp ugt ptr %227, %228
  br i1 %cmp625, label %if.then627, label %if.else638

if.then627:                                       ; preds = %if.end623
  %229 = load i8, ptr %is_utf8_target, align 2, !range !3, !noundef !4
  %loadedv629 = trunc nuw i8 %229 to i1
  br i1 %loadedv629, label %cond.true631, label %cond.false634

cond.true631:                                     ; preds = %if.then627
  %call633 = tail call fastcc ptr @S_reghop3(ptr noundef %227, i64 noundef -1, ptr noundef %228)
  br label %if.end640

cond.false634:                                    ; preds = %if.then627
  %add.ptr635 = getelementptr inbounds i8, ptr %227, i64 -1
  br label %if.end640

if.else638:                                       ; preds = %if.end623
  %add.ptr639 = getelementptr inbounds i8, ptr %227, i64 -1
  br label %if.end640

if.end640:                                        ; preds = %if.else638, %cond.false634, %cond.true631
  %last1.0 = phi ptr [ %add.ptr639, %if.else638 ], [ %call633, %cond.true631 ], [ %add.ptr635, %cond.false634 ]
  %230 = load ptr, ptr %s, align 8
  %cmp662.not1746 = icmp ugt ptr %230, %last.0
  br i1 %cmp662.not1746, label %do.body1073, label %land.rhs664.lr.ph

land.rhs664.lr.ph:                                ; preds = %if.end640
  %sub696 = sub nsw i64 0, %back_max.0
  %sub684 = sub nsw i64 0, %back_max.0
  %cmp686 = icmp slt i64 %back_max.0, 1
  %sub766 = sub nsw i64 0, %back_min.0
  %cmp768 = icmp slt i64 %back_min.0, 1
  %sub719 = sub nsw i64 0, %back_min.0
  %sub707 = sub nsw i64 0, %back_min.0
  %cmp709 = icmp slt i64 %back_min.0, 1
  %sub739 = sub nsw i64 0, %back_max.0
  %sub727 = sub nsw i64 0, %back_max.0
  %cmp729 = icmp slt i64 %back_max.0, 1
  %cutpoint.i1630 = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 48
  %cutpoint.i1597 = getelementptr inbounds nuw i8, ptr %reginfo_buf, i64 48
  br label %land.rhs664

land.rhs664:                                      ; preds = %if.end815, %land.rhs664.lr.ph
  %231 = phi ptr [ %230, %land.rhs664.lr.ph ], [ %277, %if.end815 ]
  %last1.11747 = phi ptr [ %last1.0, %land.rhs664.lr.ph ], [ %last1.2, %if.end815 ]
  %232 = load i8, ptr %is_utf8_target, align 2, !range !3, !noundef !4
  %loadedv666 = trunc nuw i8 %232 to i1
  br i1 %loadedv666, label %cond.true668, label %cond.false670

cond.true668:                                     ; preds = %land.rhs664
  %call669 = call fastcc ptr @S_reghop4(ptr noundef %231, i64 noundef %back_min.0, ptr noundef %strbeg, ptr noundef %strend)
  br label %cond.end672

cond.false670:                                    ; preds = %land.rhs664
  %add.ptr671 = getelementptr inbounds i8, ptr %231, i64 %back_min.0
  br label %cond.end672

cond.end672:                                      ; preds = %cond.false670, %cond.true668
  %cond673 = phi ptr [ %call669, %cond.true668 ], [ %add.ptr671, %cond.false670 ]
  %call676 = call ptr @Perl_fbm_instr(ptr noundef %cond673, ptr noundef %strend, ptr noundef %must.2, i32 noundef %and117) #6
  store ptr %call676, ptr %s, align 8
  %tobool677.not = icmp eq ptr %call676, null
  br i1 %tobool677.not, label %do.body1073.loopexit1757, label %while.body679

while.body679:                                    ; preds = %cond.end672
  %233 = load i8, ptr %is_utf8_target, align 2, !range !3, !noundef !4
  %loadedv681 = trunc nuw i8 %233 to i1
  br i1 %loadedv681, label %cond.true683, label %cond.false695

cond.true683:                                     ; preds = %while.body679
  %234 = load ptr, ptr %strend172, align 8
  %235 = load ptr, ptr %strbeg170, align 8
  %cond693 = select i1 %cmp686, ptr %234, ptr %235
  %call694 = call fastcc ptr @S_reghop3(ptr noundef nonnull %call676, i64 noundef %sub684, ptr noundef %cond693)
  br label %cond.end698

cond.false695:                                    ; preds = %while.body679
  %add.ptr697 = getelementptr inbounds i8, ptr %call676, i64 %sub696
  br label %cond.end698

cond.end698:                                      ; preds = %cond.false695, %cond.true683
  %cond699 = phi ptr [ %call694, %cond.true683 ], [ %add.ptr697, %cond.false695 ]
  %cmp700 = icmp ugt ptr %cond699, %last1.11747
  br i1 %cmp700, label %if.then702, label %if.else743

if.then702:                                       ; preds = %cond.end698
  %236 = load i8, ptr %is_utf8_target, align 2, !range !3, !noundef !4
  %loadedv704 = trunc nuw i8 %236 to i1
  br i1 %loadedv704, label %cond.true706, label %cond.false718

cond.true706:                                     ; preds = %if.then702
  %237 = load ptr, ptr %strend172, align 8
  %238 = load ptr, ptr %strbeg170, align 8
  %cond716 = select i1 %cmp709, ptr %237, ptr %238
  %call717 = call fastcc ptr @S_reghop3(ptr noundef nonnull %call676, i64 noundef %sub707, ptr noundef %cond716)
  br label %cond.end721

cond.false718:                                    ; preds = %if.then702
  %add.ptr720 = getelementptr inbounds i8, ptr %call676, i64 %sub719
  br label %cond.end721

cond.end721:                                      ; preds = %cond.false718, %cond.true706
  %cond722 = phi ptr [ %call717, %cond.true706 ], [ %add.ptr720, %cond.false718 ]
  %239 = load i8, ptr %is_utf8_target, align 2, !range !3, !noundef !4
  %loadedv724 = trunc nuw i8 %239 to i1
  br i1 %loadedv724, label %cond.true726, label %cond.false738

cond.true726:                                     ; preds = %cond.end721
  %240 = load ptr, ptr %strend172, align 8
  %241 = load ptr, ptr %strbeg170, align 8
  %cond736 = select i1 %cmp729, ptr %240, ptr %241
  %call737 = call fastcc ptr @S_reghop3(ptr noundef nonnull %call676, i64 noundef %sub727, ptr noundef %cond736)
  br label %if.end782

cond.false738:                                    ; preds = %cond.end721
  %add.ptr740 = getelementptr inbounds i8, ptr %call676, i64 %sub739
  br label %if.end782

if.else743:                                       ; preds = %cond.end698
  %242 = load ptr, ptr %strbeg170, align 8
  %cmp745.not = icmp ult ptr %last1.11747, %242
  br i1 %cmp745.not, label %cond.false758, label %cond.true747

cond.true747:                                     ; preds = %if.else743
  %243 = load i8, ptr %is_utf8_target, align 2, !range !3, !noundef !4
  %loadedv749 = trunc nuw i8 %243 to i1
  br i1 %loadedv749, label %cond.true751, label %cond.false754

cond.true751:                                     ; preds = %cond.true747
  %244 = load ptr, ptr %strend172, align 8
  %cmp156.i1592 = icmp ult ptr %last1.11747, %244
  br i1 %cmp156.i1592, label %while.body.i.preheader, label %cond.end760

while.body.i.preheader:                           ; preds = %cond.true751
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.preheader
  %245 = load i8, ptr %last1.11747, align 1
  %idxprom.i = zext i8 %245 to i64
  %arrayidx.i = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom.i
  %246 = load i8, ptr %arrayidx.i, align 1
  %idx.ext.i = zext i8 %246 to i64
  %add.ptr.i1594 = getelementptr inbounds nuw i8, ptr %last1.11747, i64 %idx.ext.i
  br label %cond.end760.loopexit

cond.false754:                                    ; preds = %cond.true747
  %add.ptr755 = getelementptr inbounds nuw i8, ptr %last1.11747, i64 1
  br label %cond.end760

cond.false758:                                    ; preds = %if.else743
  %add.ptr759 = getelementptr inbounds nuw i8, ptr %last1.11747, i64 1
  br label %cond.end760

cond.end760.loopexit:                             ; preds = %while.body.i
  %add.ptr.i1594.lcssa = phi ptr [ %add.ptr.i1594, %while.body.i ]
  br label %cond.end760

cond.end760:                                      ; preds = %cond.end760.loopexit, %cond.false758, %cond.false754, %cond.true751
  %cond761 = phi ptr [ %add.ptr759, %cond.false758 ], [ %add.ptr755, %cond.false754 ], [ %last1.11747, %cond.true751 ], [ %add.ptr.i1594.lcssa, %cond.end760.loopexit ]
  %247 = load i8, ptr %is_utf8_target, align 2, !range !3, !noundef !4
  %loadedv763 = trunc nuw i8 %247 to i1
  br i1 %loadedv763, label %cond.true765, label %cond.false777

cond.true765:                                     ; preds = %cond.end760
  %248 = load ptr, ptr %strend172, align 8
  %cond775 = select i1 %cmp768, ptr %248, ptr %242
  %call776 = call fastcc ptr @S_reghop3(ptr noundef nonnull %call676, i64 noundef %sub766, ptr noundef %cond775)
  br label %if.end782

cond.false777:                                    ; preds = %cond.end760
  %add.ptr779 = getelementptr inbounds i8, ptr %call676, i64 %sub778
  br label %if.end782

if.end782:                                        ; preds = %cond.false777, %cond.true765, %cond.false738, %cond.true726
  %storemerge = phi ptr [ %call737, %cond.true726 ], [ %add.ptr740, %cond.false738 ], [ %cond761, %cond.false777 ], [ %cond761, %cond.true765 ]
  %last1.2 = phi ptr [ %cond722, %cond.true726 ], [ %cond722, %cond.false738 ], [ %add.ptr779, %cond.false777 ], [ %call776, %cond.true765 ]
  store ptr %storemerge, ptr %s, align 8
  br i1 %4, label %while.cond785.preheader, label %while.cond805.preheader

while.cond805.preheader:                          ; preds = %if.end782
  %s.promoted1735 = load ptr, ptr %s, align 8
  %cmp806.not1738 = icmp ugt ptr %s.promoted1735, %last1.2
  br i1 %cmp806.not1738, label %if.end815.loopexit1704, label %while.body808.preheader

while.body808.preheader:                          ; preds = %while.cond805.preheader
  br label %while.body808

while.cond785.preheader:                          ; preds = %if.end782
  %s.promoted1740 = load ptr, ptr %s, align 8
  %cmp786.not1744 = icmp ugt ptr %s.promoted1740, %last1.2
  br i1 %cmp786.not1744, label %if.end815.loopexit, label %while.body788.preheader

while.body788.preheader:                          ; preds = %while.cond785.preheader
  br label %while.body788

while.body788:                                    ; preds = %if.end797, %while.body788.preheader
  %249 = phi ptr [ %add.ptr802, %if.end797 ], [ %s.promoted1740, %while.body788.preheader ]
  %250 = load ptr, ptr %reginfo_buf, align 8
  %251 = getelementptr i8, ptr %250, i64 16
  %.val.i1595 = load ptr, ptr %251, align 8
  %pprivate.i1596 = getelementptr inbounds nuw i8, ptr %.val.i1595, i64 104
  %252 = load ptr, ptr %pprivate.i1596, align 8
  store ptr null, ptr %cutpoint.i1597, align 8
  %253 = load ptr, ptr %strbeg170, align 8
  %sub.ptr.lhs.cast.i1599 = ptrtoint ptr %249 to i64
  %sub.ptr.rhs.cast.i1600 = ptrtoint ptr %253 to i64
  %sub.ptr.sub.i1601 = sub i64 %sub.ptr.lhs.cast.i1599, %sub.ptr.rhs.cast.i1600
  %offs.i1602 = getelementptr inbounds nuw i8, ptr %.val.i1595, i64 120
  %254 = load ptr, ptr %offs.i1602, align 8
  store i64 %sub.ptr.sub.i1601, ptr %254, align 8
  %lastparen.i1603 = getelementptr inbounds nuw i8, ptr %.val.i1595, i64 112
  store i32 0, ptr %lastparen.i1603, align 8
  %lastcloseparen.i1604 = getelementptr inbounds nuw i8, ptr %.val.i1595, i64 116
  store i32 0, ptr %lastcloseparen.i1604, align 4
  %nparens.i1605 = getelementptr inbounds nuw i8, ptr %.val.i1595, i64 96
  %255 = load i32, ptr %nparens.i1605, align 8
  %cmp47.i1606 = icmp sgt i32 %255, 0
  br i1 %cmp47.i1606, label %for.body.preheader.i1620, label %if.end.i1607

for.body.preheader.i1620:                         ; preds = %while.body788
  %256 = load ptr, ptr %offs.i1602, align 8
  br label %for.body.i1621

for.body.i1621:                                   ; preds = %for.body.i1621, %for.body.preheader.i1620
  %i.049.i1622 = phi i32 [ %dec.i1625, %for.body.i1621 ], [ %255, %for.body.preheader.i1620 ]
  %pp.048.i1623 = phi ptr [ %incdec.ptr.i1624, %for.body.i1621 ], [ %256, %for.body.preheader.i1620 ]
  %incdec.ptr.i1624 = getelementptr inbounds nuw i8, ptr %pp.048.i1623, i64 24
  %dec.i1625 = add nsw i32 %i.049.i1622, -1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %incdec.ptr.i1624, i8 -1, i64 16, i1 false)
  %257 = load i32, ptr %lastparen.i1603, align 8
  %cmp.i1626 = icmp sgt i32 %dec.i1625, %257
  br i1 %cmp.i1626, label %for.body.i1621, label %if.end.i1607.loopexit, !llvm.loop !2

if.end.i1607.loopexit:                            ; preds = %for.body.i1621
  br label %if.end.i1607

if.end.i1607:                                     ; preds = %if.end.i1607.loopexit, %while.body788
  %258 = load i32, ptr @PL_savestack_ix, align 4
  %add.ptr.i1608 = getelementptr inbounds nuw i8, ptr %252, i64 48
  %call6.i1609 = call fastcc i64 @S_regmatch(ptr noundef nonnull %reginfo_buf, ptr noundef %249, ptr noundef nonnull %add.ptr.i1608)
  %cmp7.not.i1610 = icmp eq i64 %call6.i1609, -1
  br i1 %cmp7.not.i1610, label %if.end12.i1614, label %S_regtry.exit1627

if.end12.i1614:                                   ; preds = %if.end.i1607
  %259 = load ptr, ptr %cutpoint.i1597, align 8
  %tobool14.not.i1615 = icmp eq ptr %259, null
  %spec.select1753 = select i1 %tobool14.not.i1615, ptr %249, ptr %259
  %260 = load i32, ptr @PL_savestack_ix, align 4
  %cmp18.i1618 = icmp sgt i32 %260, %258
  br i1 %cmp18.i1618, label %if.then19.i1619, label %if.end792

if.then19.i1619:                                  ; preds = %if.end12.i1614
  call void @Perl_leave_scope(i32 noundef %258) #6
  br label %if.end792

S_regtry.exit1627:                                ; preds = %if.end.i1607
  %call6.i1609.lcssa = phi i64 [ %call6.i1609, %if.end.i1607 ]
  %.lcssa1763 = phi ptr [ %249, %if.end.i1607 ]
  %offs.i1602.lcssa = phi ptr [ %offs.i1602, %if.end.i1607 ]
  store ptr %.lcssa1763, ptr %s, align 8
  %261 = load ptr, ptr %offs.i1602.lcssa, align 8
  %end11.i1612 = getelementptr inbounds nuw i8, ptr %261, i64 8
  store i64 %call6.i1609.lcssa, ptr %end11.i1612, align 8
  br label %got_it

if.end792:                                        ; preds = %if.then19.i1619, %if.end12.i1614
  %cmp793.not = icmp ult ptr %spec.select1753, %last1.2
  br i1 %cmp793.not, label %if.end797, label %if.then795

if.then795:                                       ; preds = %if.end792
  %spec.select1753.lcssa = phi ptr [ %spec.select1753, %if.end792 ]
  %incdec.ptr796 = getelementptr inbounds nuw i8, ptr %spec.select1753.lcssa, i64 1
  store ptr %incdec.ptr796, ptr %s, align 8
  br label %if.end815

if.end797:                                        ; preds = %if.end792
  %262 = load i8, ptr %spec.select1753, align 1
  %idxprom798 = zext i8 %262 to i64
  %arrayidx799 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom798
  %263 = load i8, ptr %arrayidx799, align 1
  %idx.ext801 = zext i8 %263 to i64
  %add.ptr802 = getelementptr inbounds nuw i8, ptr %spec.select1753, i64 %idx.ext801
  %cmp786.not = icmp ugt ptr %add.ptr802, %last1.2
  br i1 %cmp786.not, label %if.end815.loopexit.loopexit, label %while.body788, !llvm.loop !10

while.body808:                                    ; preds = %if.end812, %while.body808.preheader
  %264 = phi ptr [ %incdec.ptr813, %if.end812 ], [ %s.promoted1735, %while.body808.preheader ]
  %265 = load ptr, ptr %reginfo_buf, align 8
  %266 = getelementptr i8, ptr %265, i64 16
  %.val.i1628 = load ptr, ptr %266, align 8
  %pprivate.i1629 = getelementptr inbounds nuw i8, ptr %.val.i1628, i64 104
  %267 = load ptr, ptr %pprivate.i1629, align 8
  store ptr null, ptr %cutpoint.i1630, align 8
  %268 = load ptr, ptr %strbeg170, align 8
  %sub.ptr.lhs.cast.i1632 = ptrtoint ptr %264 to i64
  %sub.ptr.rhs.cast.i1633 = ptrtoint ptr %268 to i64
  %sub.ptr.sub.i1634 = sub i64 %sub.ptr.lhs.cast.i1632, %sub.ptr.rhs.cast.i1633
  %offs.i1635 = getelementptr inbounds nuw i8, ptr %.val.i1628, i64 120
  %269 = load ptr, ptr %offs.i1635, align 8
  store i64 %sub.ptr.sub.i1634, ptr %269, align 8
  %lastparen.i1636 = getelementptr inbounds nuw i8, ptr %.val.i1628, i64 112
  store i32 0, ptr %lastparen.i1636, align 8
  %lastcloseparen.i1637 = getelementptr inbounds nuw i8, ptr %.val.i1628, i64 116
  store i32 0, ptr %lastcloseparen.i1637, align 4
  %nparens.i1638 = getelementptr inbounds nuw i8, ptr %.val.i1628, i64 96
  %270 = load i32, ptr %nparens.i1638, align 8
  %cmp47.i1639 = icmp sgt i32 %270, 0
  br i1 %cmp47.i1639, label %for.body.preheader.i1653, label %if.end.i1640

for.body.preheader.i1653:                         ; preds = %while.body808
  %271 = load ptr, ptr %offs.i1635, align 8
  br label %for.body.i1654

for.body.i1654:                                   ; preds = %for.body.i1654, %for.body.preheader.i1653
  %i.049.i1655 = phi i32 [ %dec.i1658, %for.body.i1654 ], [ %270, %for.body.preheader.i1653 ]
  %pp.048.i1656 = phi ptr [ %incdec.ptr.i1657, %for.body.i1654 ], [ %271, %for.body.preheader.i1653 ]
  %incdec.ptr.i1657 = getelementptr inbounds nuw i8, ptr %pp.048.i1656, i64 24
  %dec.i1658 = add nsw i32 %i.049.i1655, -1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %incdec.ptr.i1657, i8 -1, i64 16, i1 false)
  %272 = load i32, ptr %lastparen.i1636, align 8
  %cmp.i1659 = icmp sgt i32 %dec.i1658, %272
  br i1 %cmp.i1659, label %for.body.i1654, label %if.end.i1640.loopexit, !llvm.loop !2

if.end.i1640.loopexit:                            ; preds = %for.body.i1654
  br label %if.end.i1640

if.end.i1640:                                     ; preds = %if.end.i1640.loopexit, %while.body808
  %273 = load i32, ptr @PL_savestack_ix, align 4
  %add.ptr.i1641 = getelementptr inbounds nuw i8, ptr %267, i64 48
  %call6.i1642 = call fastcc i64 @S_regmatch(ptr noundef nonnull %reginfo_buf, ptr noundef %264, ptr noundef nonnull %add.ptr.i1641)
  %cmp7.not.i1643 = icmp eq i64 %call6.i1642, -1
  br i1 %cmp7.not.i1643, label %if.end12.i1647, label %S_regtry.exit1660

if.end12.i1647:                                   ; preds = %if.end.i1640
  %274 = load ptr, ptr %cutpoint.i1630, align 8
  %tobool14.not.i1648 = icmp eq ptr %274, null
  %spec.select1754 = select i1 %tobool14.not.i1648, ptr %264, ptr %274
  %275 = load i32, ptr @PL_savestack_ix, align 4
  %cmp18.i1651 = icmp sgt i32 %275, %273
  br i1 %cmp18.i1651, label %if.then19.i1652, label %if.end812

if.then19.i1652:                                  ; preds = %if.end12.i1647
  call void @Perl_leave_scope(i32 noundef %273) #6
  br label %if.end812

S_regtry.exit1660:                                ; preds = %if.end.i1640
  %call6.i1642.lcssa = phi i64 [ %call6.i1642, %if.end.i1640 ]
  %.lcssa = phi ptr [ %264, %if.end.i1640 ]
  %offs.i1635.lcssa = phi ptr [ %offs.i1635, %if.end.i1640 ]
  store ptr %.lcssa, ptr %s, align 8
  %276 = load ptr, ptr %offs.i1635.lcssa, align 8
  %end11.i1645 = getelementptr inbounds nuw i8, ptr %276, i64 8
  store i64 %call6.i1642.lcssa, ptr %end11.i1645, align 8
  br label %got_it

if.end812:                                        ; preds = %if.then19.i1652, %if.end12.i1647
  %incdec.ptr813 = getelementptr inbounds nuw i8, ptr %spec.select1754, i64 1
  %cmp806.not = icmp ugt ptr %incdec.ptr813, %last1.2
  br i1 %cmp806.not, label %if.end815.loopexit1704.loopexit, label %while.body808, !llvm.loop !11

if.end815.loopexit.loopexit:                      ; preds = %if.end797
  %add.ptr802.lcssa = phi ptr [ %add.ptr802, %if.end797 ]
  br label %if.end815.loopexit

if.end815.loopexit:                               ; preds = %if.end815.loopexit.loopexit, %while.cond785.preheader
  %.lcssa1741 = phi ptr [ %s.promoted1740, %while.cond785.preheader ], [ %add.ptr802.lcssa, %if.end815.loopexit.loopexit ]
  store ptr %.lcssa1741, ptr %s, align 8
  br label %if.end815

if.end815.loopexit1704.loopexit:                  ; preds = %if.end812
  %incdec.ptr813.lcssa = phi ptr [ %incdec.ptr813, %if.end812 ]
  br label %if.end815.loopexit1704

if.end815.loopexit1704:                           ; preds = %if.end815.loopexit1704.loopexit, %while.cond805.preheader
  %.lcssa1736 = phi ptr [ %s.promoted1735, %while.cond805.preheader ], [ %incdec.ptr813.lcssa, %if.end815.loopexit1704.loopexit ]
  store ptr %.lcssa1736, ptr %s, align 8
  br label %if.end815

if.end815:                                        ; preds = %if.end815.loopexit1704, %if.end815.loopexit, %if.then795
  %277 = load ptr, ptr %s, align 8
  %cmp662.not = icmp ugt ptr %277, %last.0
  br i1 %cmp662.not, label %do.body1073.loopexit1757, label %land.rhs664, !llvm.loop !12

if.else822:                                       ; preds = %land.lhs.true474
  %regstclass = getelementptr inbounds nuw i8, ptr %5, i64 16
  %278 = load ptr, ptr %regstclass, align 8
  %tobool823.not = icmp eq ptr %278, null
  br i1 %tobool823.not, label %if.else874, label %if.then824

if.else822.thread:                                ; preds = %lor.lhs.false467
  %regstclass1686 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %279 = load ptr, ptr %regstclass1686, align 8
  %tobool823.not1687 = icmp eq ptr %279, null
  br i1 %tobool823.not1687, label %lor.lhs.false881, label %if.then824

if.then824:                                       ; preds = %if.else822.thread, %if.else822
  %280 = phi ptr [ %279, %if.else822.thread ], [ %278, %if.else822 ]
  %tobool825.not = icmp eq i64 %27, 0
  br i1 %tobool825.not, label %if.end869, label %if.then826

if.then826:                                       ; preds = %if.then824
  %type = getelementptr inbounds nuw i8, ptr %280, i64 1
  %281 = load i8, ptr %type, align 1
  %.fr = freeze i8 %281
  %cmp836 = icmp eq i8 %.fr, 18
  br i1 %cmp836, label %if.end869, label %switch.early.test

switch.early.test:                                ; preds = %if.then826
  %idxprom829 = zext i8 %.fr to i64
  %arrayidx830 = getelementptr inbounds nuw i8, ptr @PL_regkind, i64 %idxprom829
  %282 = load i8, ptr %arrayidx830, align 1
  switch i8 %282, label %if.then844 [
    i8 72, label %if.end869
    i8 31, label %if.end869
  ]

if.then844:                                       ; preds = %switch.early.test
  %283 = load i8, ptr %is_utf8_target, align 2, !range !3, !noundef !4
  %loadedv846 = trunc nuw i8 %283 to i1
  br i1 %loadedv846, label %cond.true848, label %cond.false862

cond.true848:                                     ; preds = %if.then844
  %sub850 = sub nsw i64 1, %27
  %cmp853 = icmp slt i64 %27, 2
  %284 = load ptr, ptr %strend172, align 8
  %285 = load ptr, ptr %strbeg170, align 8
  %cond860 = select i1 %cmp853, ptr %284, ptr %285
  %call861 = tail call fastcc ptr @S_reghop3(ptr noundef %strend, i64 noundef %sub850, ptr noundef %cond860)
  br label %if.end869

cond.false862:                                    ; preds = %if.then844
  %sub864 = sub nsw i64 1, %27
  %add.ptr865 = getelementptr inbounds i8, ptr %strend, i64 %sub864
  br label %if.end869

if.end869:                                        ; preds = %cond.false862, %cond.true848, %switch.early.test, %switch.early.test, %if.then826, %if.then824
  %strend.addr.1 = phi ptr [ %strend, %if.then824 ], [ %strend, %switch.early.test ], [ %call861, %cond.true848 ], [ %add.ptr865, %cond.false862 ], [ %strend, %if.then826 ], [ %strend, %switch.early.test ]
  %286 = load ptr, ptr %s, align 8
  %call870 = call fastcc ptr @S_find_byclass(ptr noundef nonnull %rx.val1466, ptr noundef nonnull %280, ptr noundef %286, ptr noundef %strend.addr.1, ptr noundef %reginfo_buf)
  %tobool871.not = icmp eq ptr %call870, null
  br i1 %tobool871.not, label %do.body1073, label %got_it

if.else874:                                       ; preds = %if.else822
  br i1 %cmp465.not, label %lor.lhs.false881, label %if.then888.thread

lor.lhs.false881:                                 ; preds = %if.else874, %if.else822.thread
  %utf8_substr885 = getelementptr inbounds nuw i8, ptr %157, i64 72
  %287 = load ptr, ptr %utf8_substr885, align 8
  %cmp886.not = icmp eq ptr %287, null
  br i1 %cmp886.not, label %if.end998, label %if.then888

if.then888:                                       ; preds = %lor.lhs.false881
  call void @llvm.lifetime.start.p0(ptr nonnull %len) #6
  br i1 %4, label %if.then891, label %if.else903

if.then888.thread:                                ; preds = %if.else874
  call void @llvm.lifetime.start.p0(ptr nonnull %len) #6
  br i1 %4, label %if.then891, label %if.end916

if.then891:                                       ; preds = %if.then888.thread, %if.then888
  %utf8_substr895 = getelementptr inbounds nuw i8, ptr %157, i64 72
  %288 = load ptr, ptr %utf8_substr895, align 8
  %tobool896.not = icmp eq ptr %288, null
  br i1 %tobool896.not, label %if.then897, label %if.end898

if.then897:                                       ; preds = %if.then891
  tail call fastcc void @S_to_utf8_substr(ptr noundef nonnull %rx.val1466)
  br label %if.end898

if.end898:                                        ; preds = %if.then897, %if.then891
  %289 = load ptr, ptr %substrs, align 8
  %utf8_substr902 = getelementptr inbounds nuw i8, ptr %289, i64 72
  br label %if.end921

if.else903:                                       ; preds = %if.then888
  br i1 %cmp465.not, label %if.then909, label %if.end916

if.then909:                                       ; preds = %if.else903
  %call910 = tail call fastcc zeroext i1 @S_to_byte_substr(ptr noundef nonnull %rx.val1466)
  br i1 %call910, label %if.end916, label %cleanup992.thread

if.end916:                                        ; preds = %if.then909, %if.else903, %if.then888.thread
  %290 = load ptr, ptr %substrs, align 8
  %substr920 = getelementptr inbounds nuw i8, ptr %290, i64 64
  br label %if.end921

if.end921:                                        ; preds = %if.end916, %if.end898
  %float_real.0.in = phi ptr [ %utf8_substr902, %if.end898 ], [ %substr920, %if.end916 ]
  %float_real.0 = load ptr, ptr %float_real.0.in, align 8
  %sv_flags922 = getelementptr inbounds nuw i8, ptr %float_real.0, i64 12
  %291 = load i32, ptr %sv_flags922, align 4
  %and923 = and i32 %291, 2098176
  %cmp924 = icmp eq i32 %and923, 1024
  br i1 %cmp924, label %cond.true926, label %cond.false931

cond.true926:                                     ; preds = %if.end921
  %292 = load ptr, ptr %float_real.0, align 8
  %xpv_cur928 = getelementptr inbounds nuw i8, ptr %292, i64 16
  %293 = load i64, ptr %xpv_cur928, align 8
  store i64 %293, ptr %len, align 8
  %sv_u929 = getelementptr inbounds nuw i8, ptr %float_real.0, i64 16
  %294 = load ptr, ptr %sv_u929, align 8
  br label %cond.end933

cond.false931:                                    ; preds = %if.end921
  %call932 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %float_real.0, ptr noundef nonnull %len, i32 noundef 34) #6
  br label %cond.end933

cond.end933:                                      ; preds = %cond.false931, %cond.true926
  %cond934 = phi ptr [ %294, %cond.true926 ], [ %call932, %cond.false931 ]
  %295 = load i32, ptr %sv_flags922, align 4
  %cmp937 = icmp ugt i32 %295, -1073741825
  br i1 %cmp937, label %if.then939, label %find_last

if.then939:                                       ; preds = %cond.end933
  %296 = load i64, ptr %len, align 8
  %idx.neg940 = sub i64 0, %296
  %add.ptr941 = getelementptr inbounds i8, ptr %strend, i64 %idx.neg940
  %add.ptr942 = getelementptr inbounds nuw i8, ptr %add.ptr941, i64 1
  %cmp943 = icmp ult ptr %add.ptr942, %strbeg
  br i1 %cmp943, label %cleanup992.thread, label %if.else946

if.else946:                                       ; preds = %if.then939
  %sub948 = add i64 %296, -1
  %bcmp = call i32 @bcmp(ptr nonnull %add.ptr942, ptr %cond934, i64 %sub948)
  %tobool950.not = icmp eq i32 %bcmp, 0
  br i1 %tobool950.not, label %cleanup992, label %if.else953

if.else953:                                       ; preds = %if.else946
  %cmp954 = icmp ult ptr %add.ptr941, %strbeg
  br i1 %cmp954, label %cleanup992.thread, label %if.else957

if.else957:                                       ; preds = %if.else953
  %tobool958.not = icmp eq i32 %and117, 0
  br i1 %tobool958.not, label %if.then959, label %find_last

if.then959:                                       ; preds = %if.else957
  %bcmp1447 = call i32 @bcmp(ptr %add.ptr941, ptr %cond934, i64 %296)
  %tobool961.not = icmp eq i32 %bcmp1447, 0
  br i1 %tobool961.not, label %if.end980, label %cleanup992.thread

find_last:                                        ; preds = %if.else957, %cond.end933
  %297 = load i64, ptr %len, align 8
  %tobool974.not = icmp eq i64 %297, 0
  br i1 %tobool974.not, label %if.end980, label %if.then975

if.then975:                                       ; preds = %find_last
  %298 = load ptr, ptr %s, align 8
  %add.ptr976 = getelementptr inbounds nuw i8, ptr %cond934, i64 %297
  %call977 = call ptr @Perl_rninstr(ptr noundef %298, ptr noundef %strend, ptr noundef %cond934, ptr noundef %add.ptr976) #6
  br label %if.end980

if.end980:                                        ; preds = %if.then975, %find_last, %if.then959
  %last889.2 = phi ptr [ %call977, %if.then975 ], [ %strend, %find_last ], [ %add.ptr941, %if.then959 ]
  %tobool981.not = icmp eq ptr %last889.2, null
  br i1 %tobool981.not, label %cleanup992.thread, label %cleanup992

cleanup992.thread:                                ; preds = %if.end980, %if.then959, %if.else953, %if.then939, %if.then909
  call void @llvm.lifetime.end.p0(ptr nonnull %len) #6
  br label %do.body1073

cleanup992:                                       ; preds = %if.end980, %if.else946
  %last889.21698 = phi ptr [ %last889.2, %if.end980 ], [ %add.ptr942, %if.else946 ]
  %sub.ptr.rhs.cast985 = ptrtoint ptr %last889.21698 to i64
  %sub.ptr.sub986 = sub i64 %sub.ptr.lhs.cast118, %sub.ptr.rhs.cast985
  %299 = load ptr, ptr %substrs, align 8
  %arrayidx989 = getelementptr inbounds nuw i8, ptr %299, i64 48
  %300 = load i64, ptr %arrayidx989, align 8
  %add991 = add nsw i64 %sub.ptr.sub986, %300
  call void @llvm.lifetime.end.p0(ptr nonnull %len) #6
  br label %if.end998

if.end998:                                        ; preds = %cleanup992, %lor.lhs.false881
  %dontbother.2 = phi i64 [ %add991, %cleanup992 ], [ 0, %lor.lhs.false881 ]
  %tobool999.not = icmp ne i64 %27, 0
  %cmp1001 = icmp slt i64 %dontbother.2, %27
  %or.cond1459 = select i1 %tobool999.not, i1 %cmp1001, i1 false
  %sub1004 = add nsw i64 %27, -1
  %dontbother.3 = select i1 %or.cond1459, i64 %sub1004, i64 %dontbother.2
  %idx.neg1006 = sub i64 0, %dontbother.3
  %add.ptr1007 = getelementptr inbounds i8, ptr %strend, i64 %idx.neg1006
  br i1 %4, label %for.cond1010.preheader, label %do.body1026.preheader

do.body1026.preheader:                            ; preds = %if.end998
  br label %do.body1026

for.cond1010.preheader:                           ; preds = %if.end998
  %call10111748 = call fastcc i32 @S_regtry(ptr noundef %reginfo_buf, ptr noundef %s)
  %tobool1012.not1749 = icmp eq i32 %call10111748, 0
  br i1 %tobool1012.not1749, label %if.end1014.preheader, label %got_it

if.end1014.preheader:                             ; preds = %for.cond1010.preheader
  br label %if.end1014

if.end1014:                                       ; preds = %if.end1018, %if.end1014.preheader
  %301 = load ptr, ptr %s, align 8
  %cmp1015.not = icmp ult ptr %301, %add.ptr1007
  br i1 %cmp1015.not, label %if.end1018, label %do.body1073.loopexit

if.end1018:                                       ; preds = %if.end1014
  %302 = load i8, ptr %301, align 1
  %idxprom1019 = zext i8 %302 to i64
  %arrayidx1020 = getelementptr inbounds nuw i8, ptr @PL_utf8skip, i64 %idxprom1019
  %303 = load i8, ptr %arrayidx1020, align 1
  %idx.ext1022 = zext i8 %303 to i64
  %add.ptr1023 = getelementptr inbounds nuw i8, ptr %301, i64 %idx.ext1022
  store ptr %add.ptr1023, ptr %s, align 8
  %call1011 = call fastcc i32 @S_regtry(ptr noundef %reginfo_buf, ptr noundef %s)
  %tobool1012.not = icmp eq i32 %call1011, 0
  br i1 %tobool1012.not, label %if.end1014, label %got_it.loopexit

do.body1026:                                      ; preds = %do.cond1031, %do.body1026.preheader
  %call1027 = call fastcc i32 @S_regtry(ptr noundef %reginfo_buf, ptr noundef %s)
  %tobool1028.not = icmp eq i32 %call1027, 0
  br i1 %tobool1028.not, label %do.cond1031, label %got_it.loopexit1755

do.cond1031:                                      ; preds = %do.body1026
  %304 = load ptr, ptr %s, align 8
  %incdec.ptr1032 = getelementptr inbounds nuw i8, ptr %304, i64 1
  store ptr %incdec.ptr1032, ptr %s, align 8
  %cmp1033 = icmp ult ptr %304, %add.ptr1007
  br i1 %cmp1033, label %do.body1026, label %do.body1073.loopexit1756, !llvm.loop !13

got_it.loopexit:                                  ; preds = %if.end1018
  br label %got_it

got_it.loopexit1755:                              ; preds = %do.body1026
  br label %got_it

got_it:                                           ; preds = %got_it.loopexit1755, %got_it.loopexit, %for.cond1010.preheader, %if.end869, %S_regtry.exit1660, %S_regtry.exit1627, %S_regtry.exit1588, %S_regtry.exit1555, %land.lhs.true314, %S_regtry.exit1522.thread, %S_regtry.exit
  %and1042 = and i32 %flags, 128
  %tobool1043.not = icmp eq i32 %and1042, 0
  br i1 %tobool1043.not, label %if.end1054, label %land.lhs.true1044

land.lhs.true1044:                                ; preds = %got_it
  %offs1045 = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 120
  %305 = load ptr, ptr %offs1045, align 8
  %306 = load i64, ptr %305, align 8
  %sub.ptr.lhs.cast1048 = ptrtoint ptr %stringarg to i64
  %sub.ptr.rhs.cast1049 = ptrtoint ptr %strbeg to i64
  %sub.ptr.sub1050 = sub i64 %sub.ptr.lhs.cast1048, %sub.ptr.rhs.cast1049
  %cmp1051 = icmp slt i64 %306, %sub.ptr.sub1050
  br i1 %cmp1051, label %do.body1073, label %if.end1054

if.end1054:                                       ; preds = %land.lhs.true1044, %got_it
  call void @Perl_safesysfree(ptr noundef %swap.0) #6
  %307 = load i32, ptr @PL_savestack_ix, align 4
  %cmp1056 = icmp sgt i32 %307, %28
  br i1 %cmp1056, label %if.then1058, label %do.end1061

if.then1058:                                      ; preds = %if.end1054
  call void @Perl_leave_scope(i32 noundef %28) #6
  br label %do.end1061

do.end1061:                                       ; preds = %if.then1058, %if.end1054
  %paren_names = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 48
  %308 = load ptr, ptr %paren_names, align 8
  %tobool1062.not = icmp eq ptr %308, null
  br i1 %tobool1062.not, label %if.end1066, label %if.then1063

if.then1063:                                      ; preds = %do.end1061
  %call1065 = call i32 @Perl_hv_iterinit(ptr noundef nonnull %308) #6
  br label %if.end1066

if.end1066:                                       ; preds = %if.then1063, %do.end1061
  %and1067 = and i32 %flags, 16
  %tobool1068.not = icmp eq i32 %and1067, 0
  br i1 %tobool1068.not, label %if.then1069, label %cleanup1085

if.then1069:                                      ; preds = %if.end1066
  %309 = load ptr, ptr %strend172, align 8
  call fastcc void @S_reg_set_capture_string(ptr noundef %rx, ptr noundef %strbeg, ptr noundef %309, ptr noundef %sv, i32 noundef %flags, i1 noundef zeroext %4)
  br label %cleanup1085

do.body1073.loopexit1706.loopexit:                ; preds = %if.end384
  %incdec.ptr385.lcssa = phi ptr [ %incdec.ptr385, %if.end384 ]
  br label %do.body1073.loopexit1706

do.body1073.loopexit1706:                         ; preds = %do.body1073.loopexit1706.loopexit, %if.end344
  %storemerge1449.lcssa1728.lcssa = phi ptr [ %s.promoted1727, %if.end344 ], [ %incdec.ptr385.lcssa, %do.body1073.loopexit1706.loopexit ]
  store ptr %storemerge1449.lcssa1728.lcssa, ptr %s, align 8
  br label %do.body1073

do.body1073.loopexit1707.loopexit:                ; preds = %if.end437
  %incdec.ptr438.lcssa = phi ptr [ %incdec.ptr438, %if.end437 ]
  br label %do.body1073.loopexit1707

do.body1073.loopexit1707:                         ; preds = %do.body1073.loopexit1707.loopexit, %if.end402
  %storemerge1448.lcssa1716.lcssa = phi ptr [ %s.promoted1715, %if.end402 ], [ %incdec.ptr438.lcssa, %do.body1073.loopexit1707.loopexit ]
  store ptr %storemerge1448.lcssa1716.lcssa, ptr %s, align 8
  br label %do.body1073

do.body1073.loopexit1708.loopexit:                ; preds = %if.then296, %while.cond.backedge
  %.ph = phi ptr [ %139, %while.cond.backedge ], [ %call297, %if.then296 ]
  br label %do.body1073.loopexit1708

do.body1073.loopexit1708:                         ; preds = %do.body1073.loopexit1708.loopexit, %cond.end276
  %310 = phi ptr [ %s.promoted, %cond.end276 ], [ %.ph, %do.body1073.loopexit1708.loopexit ]
  store ptr %310, ptr %s, align 8
  br label %do.body1073

do.body1073.loopexit:                             ; preds = %if.end1014
  br label %do.body1073

do.body1073.loopexit1756:                         ; preds = %do.cond1031
  br label %do.body1073

do.body1073.loopexit1757:                         ; preds = %if.end815, %cond.end672
  br label %do.body1073

do.body1073:                                      ; preds = %do.body1073.loopexit1757, %do.body1073.loopexit1756, %do.body1073.loopexit, %do.body1073.loopexit1708, %do.body1073.loopexit1707, %do.body1073.loopexit1706, %land.lhs.true1044, %cleanup992.thread, %if.end869, %if.end640, %if.then552, %if.then515, %if.then395, %land.lhs.true314, %if.then311, %if.end258, %if.end115, %if.then74
  %swap.1 = phi ptr [ null, %if.end115 ], [ %swap.0, %land.lhs.true1044 ], [ %swap.0, %land.lhs.true314 ], [ %swap.0, %if.then311 ], [ %swap.0, %if.end869 ], [ null, %if.then74 ], [ %swap.0, %cleanup992.thread ], [ %swap.0, %if.end258 ], [ %swap.0, %if.then395 ], [ %swap.0, %if.then515 ], [ %swap.0, %if.then552 ], [ %swap.0, %do.body1073.loopexit1706 ], [ %swap.0, %do.body1073.loopexit1707 ], [ %swap.0, %do.body1073.loopexit1708 ], [ %swap.0, %if.end640 ], [ %swap.0, %do.body1073.loopexit ], [ %swap.0, %do.body1073.loopexit1756 ], [ %swap.0, %do.body1073.loopexit1757 ]
  %311 = load i32, ptr @PL_savestack_ix, align 4
  %cmp1074 = icmp sgt i32 %311, %28
  br i1 %cmp1074, label %if.then1076, label %do.end1079

if.then1076:                                      ; preds = %do.body1073
  call void @Perl_leave_scope(i32 noundef %28) #6
  br label %do.end1079

do.end1079:                                       ; preds = %if.then1076, %do.body1073
  %tobool1080.not = icmp eq ptr %swap.1, null
  br i1 %tobool1080.not, label %cleanup1085, label %if.then1081

if.then1081:                                      ; preds = %do.end1079
  %offs1082 = getelementptr inbounds nuw i8, ptr %rx.val1466, i64 120
  %312 = load ptr, ptr %offs1082, align 8
  call void @Perl_safesysfree(ptr noundef %312) #6
  store ptr %swap.1, ptr %offs1082, align 8
  br label %cleanup1085

cleanup1085:                                      ; preds = %if.then1081, %do.end1079, %if.then1069, %if.end1066, %if.then111, %cond.end105, %if.then66, %if.end54, %if.then21
  %retval.2 = phi i32 [ 0, %if.end54 ], [ 0, %if.then66 ], [ 1, %if.then111 ], [ 1, %cond.end105 ], [ 1, %if.then1069 ], [ 1, %if.end1066 ], [ 0, %if.then1081 ], [ 0, %do.end1079 ], [ 0, %if.then21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %reginfo_buf) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %s) #6
  ret i32 %retval.2
}

; Function Attrs: nounwind uwtable
declare dso_local ptr @Perl_re_intuit_start(ptr noundef readonly captures(none), ptr noundef readonly captures(address_is_null), ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef readnone captures(none)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
declare hidden fastcc void @S_to_utf8_substr(ptr noundef readonly captures(none)) unnamed_addr #0

; Function Attrs: nounwind uwtable
declare hidden fastcc noundef zeroext i1 @S_to_byte_substr(ptr noundef readonly captures(none)) unnamed_addr #0

; Function Attrs: nounwind uwtable
declare hidden fastcc ptr @S_reghop3(ptr noundef readonly captures(address, ret: address, provenance), i64 noundef, ptr noundef readnone captures(address)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @Perl_fbm_instr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc ptr @S_reghop4(ptr noundef readonly captures(address, ret: address, provenance), i64 noundef, ptr noundef readnone captures(address), ptr noundef readnone captures(address)) unnamed_addr #0

; Function Attrs: nounwind uwtable
declare hidden fastcc ptr @S_find_byclass(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull) unnamed_addr #0

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_mg_find_mglob(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_utf8_hop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc void @S_reg_set_capture_string(ptr noundef readonly captures(none), ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #0

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

declare void @Perl_save_destructor_x(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden void @S_cleanup_regmatch_info_aux(ptr noundef readonly captures(none)) #0

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc range(i32 0, 2) i32 @S_regtry(ptr noundef nonnull initializes((48, 56)), ptr noundef nonnull captures(none)) unnamed_addr #0

declare i64 @Perl_sv_len_utf8(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_rninstr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

declare void @Perl_leave_scope(i32 noundef) local_unnamed_addr #2

declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_utf8_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @Perl_sv_pos_u2b_flags(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden fastcc i64 @S_regmatch(ptr noundef nonnull, ptr noundef, ptr noundef) unnamed_addr #0

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @Perl_save_gp(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_generic_svref(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_magicext_mglob(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
!3 = !{i8 0, i8 2}
!4 = !{}
!5 = distinct !{!5, !1}
!6 = distinct !{!6, !1}
!7 = distinct !{!7, !1}
!8 = distinct !{!8, !1}
!9 = distinct !{!9, !1}
!10 = distinct !{!10, !1}
!11 = distinct !{!11, !1}
!12 = distinct !{!12, !1}
!13 = distinct !{!13, !1}
