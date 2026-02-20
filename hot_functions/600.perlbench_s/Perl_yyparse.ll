; ModuleID = '/tmp/tmp.2yx7SzumWT/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/500.perlbench_r/src/perly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.YYSTYPE = type { ptr }
%struct.yy_stack_frame = type { %union.YYSTYPE, i16, i32, ptr }

@PL_parser = external local_unnamed_addr global ptr, align 8
@yypact = external hidden unnamed_addr constant [509 x i16], align 16
@yytranslate = external hidden unnamed_addr constant [338 x i8], align 16
@yycheck = external hidden unnamed_addr constant [2931 x i16], align 16
@yytable = external hidden unnamed_addr constant [2931 x i16], align 16
@PL_compcv = external local_unnamed_addr global ptr, align 8
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@yydefact = external hidden unnamed_addr constant [509 x i8], align 16
@yyr2 = external hidden unnamed_addr constant [254 x i8], align 16
@PL_compiling = external local_unnamed_addr global %struct.cop, align 8
@PL_eval_root = external local_unnamed_addr global ptr, align 8
@PL_pad_reset_pending = external local_unnamed_addr global i8, align 1
@.str = external hidden unnamed_addr constant [6 x i8], align 1
@.str.1 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.2 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.3 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.4 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.5 = external hidden unnamed_addr constant [3 x i8], align 1
@PL_comppad_name = external local_unnamed_addr global ptr, align 8
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_min_intro_pending = external local_unnamed_addr global i32, align 4
@PL_max_intro_pending = external local_unnamed_addr global i32, align 4
@.str.6 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.7 = external hidden unnamed_addr constant [39 x i8], align 1
@.str.8 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.9 = external hidden unnamed_addr constant [14 x i8], align 1
@yyr1 = external hidden unnamed_addr constant [254 x i8], align 16
@yypgoto = external hidden unnamed_addr constant [78 x i16], align 16
@yydefgoto = external hidden unnamed_addr constant [78 x i16], align 16
@.str.10 = external hidden unnamed_addr constant [13 x i8], align 1
@yy_type_tab = external hidden unnamed_addr constant [183 x i32], align 16
@yystos = external hidden unnamed_addr constant [509 x i8], align 16
@PL_comppad = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @Perl_yyparse(i32 noundef %gramtype) local_unnamed_addr #0 {
entry:
  %tmplval = alloca %union.YYSTYPE, align 8
  %0 = load ptr, ptr @PL_parser, align 8
  tail call void @Perl_push_scope() #4
  %yylval = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @Perl_save_pptr(ptr noundef nonnull %yylval) #4
  %yychar = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @Perl_save_int(ptr noundef nonnull %yychar) #4
  %yyerrstatus = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @Perl_save_int(ptr noundef nonnull %yyerrstatus) #4
  %stack_size = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @Perl_save_int(ptr noundef nonnull %stack_size) #4
  %yylen = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @Perl_save_int(ptr noundef nonnull %yylen) #4
  %stack = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @Perl_save_vptr(ptr noundef nonnull %stack) #4
  %ps1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @Perl_save_vptr(ptr noundef nonnull %ps1) #4
  store i32 %gramtype, ptr %yychar, align 8
  store i32 0, ptr %yyerrstatus, align 4
  store i32 200, ptr %stack_size, align 8
  store i32 0, ptr %yylen, align 4
  %call = tail call ptr @Perl_safesysmalloc(i64 noundef 4800) #4
  store ptr %call, ptr %stack, align 8
  store ptr %call, ptr %ps1, align 8
  %state = getelementptr inbounds nuw i8, ptr %call, i64 8
  store i16 0, ptr %state, align 8
  tail call void @Perl_save_destructor_x(ptr noundef nonnull @S_clear_yystack, ptr noundef %0) #4
  %in_my1919 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %copline1484 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %expect1027 = getelementptr inbounds nuw i8, ptr %0, i64 75
  %copline957 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %copline936 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %copline882 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %copline867 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %copline853 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %copline829 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %copline815 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %copline797 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %in_my776 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %copline774 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %copline757 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %copline741 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %expect715 = getelementptr inbounds nuw i8, ptr %0, i64 75
  %expect713 = getelementptr inbounds nuw i8, ptr %0, i64 75
  %copline711 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %copline695 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %copline664 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %copline640 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %copline625 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %parsed_sub607 = getelementptr inbounds nuw i8, ptr %0, i64 610
  %copline515 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %parsed_sub568 = getelementptr inbounds nuw i8, ptr %0, i64 610
  %in_my512 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %in_my_stash513 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %parsed_sub421 = getelementptr inbounds nuw i8, ptr %0, i64 610
  %in_my = getelementptr inbounds nuw i8, ptr %0, i64 236
  %in_my_stash = getelementptr inbounds nuw i8, ptr %0, i64 240
  %parsed_sub301 = getelementptr inbounds nuw i8, ptr %0, i64 610
  %parsed_sub198 = getelementptr inbounds nuw i8, ptr %0, i64 610
  %copline181 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %parsed_sub = getelementptr inbounds nuw i8, ptr %0, i64 610
  %copline163 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %copline = getelementptr inbounds nuw i8, ptr %0, i64 232
  %expect143 = getelementptr inbounds nuw i8, ptr %0, i64 75
  %expect137 = getelementptr inbounds nuw i8, ptr %0, i64 75
  %expect131 = getelementptr inbounds nuw i8, ptr %0, i64 75
  %expect125 = getelementptr inbounds nuw i8, ptr %0, i64 75
  %expect120 = getelementptr inbounds nuw i8, ptr %0, i64 75
  %expect = getelementptr inbounds nuw i8, ptr %0, i64 75
  br label %yynewstate

yynewstate:                                       ; preds = %yynewstate.backedge, %entry
  %ps.0 = phi ptr [ %call, %entry ], [ %ps.0.be, %yynewstate.backedge ]
  %state9 = getelementptr inbounds nuw i8, ptr %ps.0, i64 8
  %1 = load i16, ptr %state9, align 8
  store i32 0, ptr %yylen, align 4
  %2 = load ptr, ptr %stack, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %ps.0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %add = add nsw i64 %sub.ptr.div, 1
  %3 = load i32, ptr %stack_size, align 8
  %conv13 = sext i32 %3 to i64
  %sub = add nsw i64 %conv13, -1
  %cmp.not = icmp ult i64 %add, %sub
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %yynewstate
  %mul = shl nsw i32 %3, 1
  store i32 %mul, ptr %stack_size, align 8
  %conv18 = sext i32 %mul to i64
  %mul19 = mul nsw i64 %conv18, 24
  %call20 = call ptr @Perl_safesysrealloc(ptr noundef %2, i64 noundef %mul19) #4
  store ptr %call20, ptr %stack, align 8
  %add.ptr = getelementptr inbounds nuw %struct.yy_stack_frame, ptr %call20, i64 %add
  %add.ptr23 = getelementptr inbounds i8, ptr %add.ptr, i64 -24
  store ptr %add.ptr23, ptr %ps1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %yynewstate
  %ps.1 = phi ptr [ %add.ptr23, %if.then ], [ %ps.0, %yynewstate ]
  %idxprom = sext i16 %1 to i64
  %arrayidx = getelementptr inbounds i16, ptr @yypact, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2
  %conv25 = sext i16 %4 to i32
  %cmp26 = icmp eq i16 %4, -402
  br i1 %cmp26, label %yydefault, label %if.end29

if.end29:                                         ; preds = %if.end
  %5 = load i32, ptr %yychar, align 8
  %cmp31 = icmp eq i32 %5, -2
  br i1 %cmp31, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end29
  %call34 = call i32 @Perl_yylex() #4
  store i32 %call34, ptr %yychar, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end29
  %6 = phi i32 [ %call34, %if.then33 ], [ %5, %if.end29 ]
  %cmp38 = icmp slt i32 %6, 1
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end36
  store i32 0, ptr %yychar, align 8
  br label %if.end49

if.else:                                          ; preds = %if.end36
  %cmp43 = icmp samesign ult i32 %6, 338
  br i1 %cmp43, label %cond.true, label %if.end49

cond.true:                                        ; preds = %if.else
  %idxprom46 = zext nneg i32 %6 to i64
  %arrayidx47 = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %idxprom46
  %7 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %7 to i32
  br label %if.end49

if.end49:                                         ; preds = %cond.true, %if.else, %if.then40
  %yytoken.0 = phi i32 [ 0, %if.then40 ], [ %conv48, %cond.true ], [ 2, %if.else ]
  %add50 = add nsw i32 %yytoken.0, %conv25
  %or.cond = icmp ugt i32 %add50, 2930
  br i1 %or.cond, label %yydefault, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.end49
  %idxprom56 = zext nneg i32 %add50 to i64
  %arrayidx57 = getelementptr inbounds nuw i16, ptr @yycheck, i64 %idxprom56
  %8 = load i16, ptr %arrayidx57, align 2
  %conv58 = sext i16 %8 to i32
  %cmp59.not = icmp eq i32 %yytoken.0, %conv58
  br i1 %cmp59.not, label %if.end62, label %yydefault

if.end62:                                         ; preds = %lor.lhs.false55
  %arrayidx64 = getelementptr inbounds nuw i16, ptr @yytable, i64 %idxprom56
  %9 = load i16, ptr %arrayidx64, align 2
  %conv65 = sext i16 %9 to i32
  %cmp66 = icmp slt i16 %9, 1
  br i1 %cmp66, label %if.then68, label %if.end77

if.then68:                                        ; preds = %if.end62
  switch i16 %9, label %if.end75 [
    i16 -249, label %yyerrlab
    i16 0, label %yyerrlab
  ]

if.end75:                                         ; preds = %if.then68
  %sub76 = sub nsw i32 0, %conv65
  br label %yyreduce

if.end77:                                         ; preds = %if.end62
  %cmp78 = icmp eq i16 %9, 14
  br i1 %cmp78, label %yyacceptlab, label %if.end81

if.end81:                                         ; preds = %if.end77
  %10 = load i32, ptr %yychar, align 8
  %cmp83.not = icmp eq i32 %10, 0
  br i1 %cmp83.not, label %if.end87, label %if.then85

if.then85:                                        ; preds = %if.end81
  store i32 -2, ptr %yychar, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end81
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %ps.1, i64 24
  store ptr %incdec.ptr, ptr %ps1, align 8
  %state90 = getelementptr inbounds nuw i8, ptr %ps.1, i64 32
  store i16 %9, ptr %state90, align 8
  %11 = load i64, ptr %yylval, align 8
  store i64 %11, ptr %incdec.ptr, align 8
  %12 = load ptr, ptr @PL_compcv, align 8
  %cmp.not.i = icmp eq ptr %12, null
  br i1 %cmp.not.i, label %S_SvREFCNT_inc.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end87
  %sv_refcnt.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %13 = load i32, ptr %sv_refcnt.i, align 8
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %sv_refcnt.i, align 8
  br label %S_SvREFCNT_inc.exit

S_SvREFCNT_inc.exit:                              ; preds = %if.then.i, %if.end87
  %compcv = getelementptr inbounds nuw i8, ptr %ps.1, i64 40
  store ptr %12, ptr %compcv, align 8
  %14 = load i32, ptr @PL_savestack_ix, align 4
  %savestack_ix = getelementptr inbounds nuw i8, ptr %ps.1, i64 36
  store i32 %14, ptr %savestack_ix, align 4
  %15 = load i32, ptr %yyerrstatus, align 4
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %yynewstate.backedge, label %if.then94

if.then94:                                        ; preds = %S_SvREFCNT_inc.exit
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %yyerrstatus, align 4
  br label %yynewstate.backedge

yynewstate.backedge:                              ; preds = %S_SvREFCNT_inc.exit2981, %if.end2048, %if.then94, %S_SvREFCNT_inc.exit
  %ps.0.be = phi ptr [ %incdec.ptr2187, %S_SvREFCNT_inc.exit2981 ], [ %add.ptr2008, %if.end2048 ], [ %incdec.ptr, %if.then94 ], [ %incdec.ptr, %S_SvREFCNT_inc.exit ]
  br label %yynewstate

yydefault:                                        ; preds = %lor.lhs.false55, %if.end49, %if.end
  %arrayidx98 = getelementptr inbounds i8, ptr @yydefact, i64 %idxprom
  %16 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %16 to i32
  %cmp100 = icmp eq i8 %16, 0
  br i1 %cmp100, label %yyerrlab, label %yyreduce

yyreduce:                                         ; preds = %yydefault, %if.end75
  %yyn.0 = phi i32 [ %conv99, %yydefault ], [ %sub76, %if.end75 ]
  %idxprom104 = zext nneg i32 %yyn.0 to i64
  %arrayidx105 = getelementptr inbounds nuw i8, ptr @yyr2, i64 %idxprom104
  %17 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %17 to i32
  store i32 %conv106, ptr %yylen, align 4
  %sub109 = sub nsw i32 1, %conv106
  %idxprom110 = sext i32 %sub109 to i64
  %arrayidx111 = getelementptr inbounds %struct.yy_stack_frame, ptr %ps.1, i64 %idxprom110
  %yyval.sroa.0.0.copyload = load ptr, ptr %arrayidx111, align 8
  switch i32 %yyn.0, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb113
    i32 4, label %sw.bb119
    i32 5, label %sw.bb121
    i32 6, label %sw.bb124
    i32 7, label %sw.bb126
    i32 8, label %sw.bb130
    i32 9, label %sw.bb132
    i32 10, label %sw.bb136
    i32 11, label %sw.bb138
    i32 12, label %sw.bb142
    i32 13, label %sw.bb144
    i32 14, label %sw.bb147
    i32 15, label %sw.bb162
    i32 16, label %sw.bb178
    i32 17, label %sw.bb180
    i32 18, label %sw.bb196
    i32 19, label %sw.bb202
    i32 20, label %sw.bb203
    i32 21, label %sw.bb202
    i32 22, label %sw.bb218
    i32 23, label %sw.bb234
    i32 24, label %sw.bb245
    i32 25, label %sw.bb248
    i32 26, label %sw.bb263
    i32 27, label %sw.bb278
    i32 28, label %sw.bb281
    i32 29, label %sw.bb305
    i32 30, label %do.body
    i32 31, label %sw.bb425
    i32 32, label %sw.bb514
    i32 33, label %sw.bb572
    i32 34, label %sw.bb582
    i32 35, label %do.body589
    i32 36, label %sw.bb611
    i32 37, label %sw.bb626
    i32 38, label %sw.bb641
    i32 39, label %sw.bb665
    i32 40, label %sw.bb675
    i32 41, label %sw.bb680
    i32 42, label %sw.bb696
    i32 43, label %sw.bb712
    i32 44, label %sw.bb714
    i32 45, label %sw.bb716
    i32 46, label %sw.bb742
    i32 47, label %sw.bb758
    i32 48, label %sw.bb775
    i32 49, label %sw.bb780
    i32 50, label %sw.bb798
    i32 51, label %sw.bb816
    i32 52, label %sw.bb830
    i32 53, label %sw.bb836
    i32 54, label %sw.bb846
    i32 55, label %sw.bb863
    i32 56, label %sw.bb866
    i32 57, label %sw.bb868
    i32 58, label %sw.bb202
    i32 59, label %sw.bb895
    i32 60, label %sw.bb202
    i32 61, label %sw.bb900
    i32 62, label %sw.bb903
    i32 63, label %sw.bb909
    i32 64, label %sw.bb915
    i32 65, label %sw.bb922
    i32 66, label %sw.bb928
    i32 67, label %sw.bb937
    i32 68, label %sw.bb202
    i32 69, label %sw.bb945
    i32 70, label %sw.bb954
    i32 71, label %sw.bb202
    i32 72, label %sw.bb969
    i32 73, label %sw.bb973
    i32 74, label %sw.bb202
    i32 76, label %sw.bb979
    i32 78, label %sw.bb981
    i32 79, label %sw.bb986
    i32 80, label %sw.bb990
    i32 81, label %sw.bb994
    i32 82, label %sw.bb998
    i32 83, label %sw.bb202
    i32 84, label %sw.bb1002
    i32 85, label %sw.bb1004
    i32 86, label %sw.bb1006
    i32 89, label %sw.bb202
    i32 91, label %sw.bb202
    i32 92, label %sw.bb1010
    i32 93, label %sw.bb202
    i32 94, label %sw.bb1014
    i32 95, label %sw.bb202
    i32 96, label %sw.bb1018
    i32 97, label %sw.bb1020
    i32 99, label %sw.bb202
    i32 100, label %sw.bb1029
    i32 101, label %sw.bb1035
    i32 102, label %sw.bb1043
    i32 104, label %sw.bb1049
    i32 105, label %sw.bb1052
    i32 107, label %sw.bb1059
    i32 108, label %sw.bb1071
    i32 109, label %sw.bb1083
    i32 110, label %sw.bb1095
    i32 111, label %sw.bb1104
    i32 112, label %sw.bb1115
    i32 113, label %sw.bb1126
    i32 114, label %sw.bb1132
    i32 115, label %do.body1139
    i32 116, label %sw.bb1152
    i32 119, label %sw.bb1162
    i32 120, label %sw.bb1169
    i32 121, label %sw.bb1177
    i32 122, label %sw.bb1186
    i32 123, label %sw.bb1195
    i32 124, label %sw.bb1203
    i32 125, label %sw.bb1212
    i32 126, label %sw.bb1221
    i32 127, label %sw.bb1227
    i32 128, label %sw.bb1236
    i32 129, label %sw.bb1245
    i32 130, label %sw.bb1251
    i32 131, label %sw.bb1257
    i32 132, label %sw.bb1263
    i32 133, label %sw.bb1267
    i32 134, label %sw.bb1275
    i32 135, label %sw.bb1285
    i32 136, label %sw.bb1303
    i32 137, label %sw.bb1313
    i32 138, label %sw.bb1323
    i32 139, label %sw.bb1333
    i32 140, label %sw.bb1343
    i32 141, label %sw.bb1353
    i32 142, label %sw.bb1363
    i32 143, label %sw.bb1373
    i32 144, label %sw.bb1379
    i32 145, label %sw.bb1385
    i32 146, label %sw.bb1391
    i32 147, label %sw.bb1399
    i32 148, label %sw.bb1404
    i32 149, label %sw.bb1407
    i32 150, label %sw.bb1412
    i32 151, label %sw.bb1419
    i32 152, label %sw.bb1425
    i32 153, label %sw.bb1431
    i32 154, label %sw.bb1440
    i32 155, label %sw.bb1446
    i32 156, label %sw.bb1452
    i32 157, label %sw.bb1456
    i32 158, label %sw.bb1458
    i32 159, label %sw.bb1462
    i32 160, label %do.body1465
    i32 161, label %sw.bb1482
    i32 162, label %sw.bb1515
    i32 163, label %sw.bb1521
    i32 168, label %sw.bb1526
    i32 169, label %sw.bb1534
    i32 170, label %sw.bb1538
    i32 171, label %sw.bb1541
    i32 172, label %sw.bb1547
    i32 173, label %sw.bb1551
    i32 174, label %sw.bb1554
    i32 175, label %sw.bb1557
    i32 176, label %sw.bb1560
    i32 177, label %sw.bb1563
    i32 178, label %sw.bb1566
    i32 179, label %sw.bb1569
    i32 180, label %sw.bb1574
    i32 181, label %sw.bb1577
    i32 182, label %sw.bb1602
    i32 183, label %sw.bb1629
    i32 184, label %sw.bb1656
    i32 185, label %sw.bb1682
    i32 186, label %sw.bb1685
    i32 187, label %sw.bb1690
    i32 188, label %sw.bb1695
    i32 189, label %sw.bb1703
    i32 190, label %sw.bb1711
    i32 191, label %sw.bb1715
    i32 192, label %sw.bb1719
    i32 193, label %sw.bb1723
    i32 194, label %sw.bb1731
    i32 195, label %sw.bb1735
    i32 196, label %sw.bb1740
    i32 197, label %sw.bb1746
    i32 198, label %sw.bb1751
    i32 199, label %sw.bb1755
    i32 200, label %sw.bb1761
    i32 201, label %sw.bb1767
    i32 202, label %sw.bb1773
    i32 203, label %sw.bb1781
    i32 204, label %sw.bb1786
    i32 205, label %sw.bb1794
    i32 206, label %sw.bb1798
    i32 207, label %sw.bb1802
    i32 208, label %sw.bb1805
    i32 209, label %sw.bb1808
    i32 210, label %sw.bb1813
    i32 211, label %sw.bb1830
    i32 212, label %sw.bb1836
    i32 213, label %sw.bb1863
    i32 216, label %sw.bb1873
    i32 218, label %sw.bb1878
    i32 219, label %sw.bb1884
    i32 220, label %sw.bb1890
    i32 221, label %sw.bb1894
    i32 222, label %sw.bb1897
    i32 223, label %sw.bb1900
    i32 224, label %sw.bb1903
    i32 225, label %sw.bb202
    i32 226, label %sw.bb1907
    i32 227, label %sw.bb202
    i32 228, label %sw.bb1911
    i32 229, label %sw.bb202
    i32 230, label %sw.bb1915
    i32 231, label %sw.bb1918
    i32 237, label %sw.bb1923
    i32 238, label %sw.bb1929
    i32 239, label %sw.bb1933
    i32 240, label %sw.bb1946
    i32 241, label %sw.bb1959
    i32 242, label %sw.bb1963
    i32 243, label %sw.bb1967
    i32 245, label %sw.bb1971
    i32 247, label %sw.bb1975
    i32 249, label %sw.bb1979
    i32 250, label %sw.bb1983
    i32 251, label %sw.bb1987
    i32 252, label %sw.bb1991
    i32 253, label %sw.bb1995
  ]

sw.bb:                                            ; preds = %yyreduce
  store i8 3, ptr %expect, align 1
  br label %sw.epilog

sw.bb113:                                         ; preds = %yyreduce
  %arrayidx114 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %18 = load i32, ptr %arrayidx114, align 8
  %19 = load ptr, ptr %ps.1, align 8
  %call118 = call ptr @Perl_block_end(i32 noundef %18, ptr noundef %19) #4
  call void @Perl_newPROG(ptr noundef %call118) #4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 60), align 4
  %20 = ptrtoint ptr %yyval.sroa.0.0.copyload to i64
  %yyval.sroa.0.0.insert.mask = and i64 %20, -4294967296
  %21 = inttoptr i64 %yyval.sroa.0.0.insert.mask to ptr
  br label %sw.epilog

sw.bb119:                                         ; preds = %yyreduce
  store i8 1, ptr %expect120, align 1
  br label %sw.epilog

sw.bb121:                                         ; preds = %yyreduce
  %22 = load ptr, ptr %ps.1, align 8
  store ptr %22, ptr @PL_eval_root, align 8
  %23 = ptrtoint ptr %yyval.sroa.0.0.copyload to i64
  %yyval.sroa.0.0.insert.mask2242 = and i64 %23, -4294967296
  %24 = inttoptr i64 %yyval.sroa.0.0.insert.mask2242 to ptr
  br label %sw.epilog

sw.bb124:                                         ; preds = %yyreduce
  store i8 4, ptr %expect125, align 1
  br label %sw.epilog

sw.bb126:                                         ; preds = %yyreduce
  store i8 1, ptr @PL_pad_reset_pending, align 1
  %25 = load ptr, ptr %ps.1, align 8
  store ptr %25, ptr @PL_eval_root, align 8
  %26 = ptrtoint ptr %yyval.sroa.0.0.copyload to i64
  %yyval.sroa.0.0.insert.mask2245 = and i64 %26, -4294967296
  %27 = inttoptr i64 %yyval.sroa.0.0.insert.mask2245 to ptr
  call void @Perl_yyunlex() #4
  store i32 0, ptr %yychar, align 8
  br label %sw.epilog

sw.bb130:                                         ; preds = %yyreduce
  store i8 3, ptr %expect131, align 1
  br label %sw.epilog

sw.bb132:                                         ; preds = %yyreduce
  store i8 1, ptr @PL_pad_reset_pending, align 1
  %28 = load ptr, ptr %ps.1, align 8
  store ptr %28, ptr @PL_eval_root, align 8
  %29 = ptrtoint ptr %yyval.sroa.0.0.copyload to i64
  %yyval.sroa.0.0.insert.mask2248 = and i64 %29, -4294967296
  %30 = inttoptr i64 %yyval.sroa.0.0.insert.mask2248 to ptr
  call void @Perl_yyunlex() #4
  store i32 0, ptr %yychar, align 8
  br label %sw.epilog

sw.bb136:                                         ; preds = %yyreduce
  store i8 3, ptr %expect137, align 1
  br label %sw.epilog

sw.bb138:                                         ; preds = %yyreduce
  store i8 1, ptr @PL_pad_reset_pending, align 1
  %31 = load ptr, ptr %ps.1, align 8
  store ptr %31, ptr @PL_eval_root, align 8
  %32 = ptrtoint ptr %yyval.sroa.0.0.copyload to i64
  %yyval.sroa.0.0.insert.mask2251 = and i64 %32, -4294967296
  %33 = inttoptr i64 %yyval.sroa.0.0.insert.mask2251 to ptr
  call void @Perl_yyunlex() #4
  store i32 0, ptr %yychar, align 8
  br label %sw.epilog

sw.bb142:                                         ; preds = %yyreduce
  store i8 3, ptr %expect143, align 1
  br label %sw.epilog

sw.bb144:                                         ; preds = %yyreduce
  %34 = load ptr, ptr %ps.1, align 8
  store ptr %34, ptr @PL_eval_root, align 8
  %35 = ptrtoint ptr %yyval.sroa.0.0.copyload to i64
  %yyval.sroa.0.0.insert.mask2254 = and i64 %35, -4294967296
  %36 = inttoptr i64 %yyval.sroa.0.0.insert.mask2254 to ptr
  br label %sw.epilog

sw.bb147:                                         ; preds = %yyreduce
  %37 = load i32, ptr %copline, align 8
  %arrayidx148 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %38 = load i32, ptr %arrayidx148, align 8
  %cmp150 = icmp ugt i32 %37, %38
  br i1 %cmp150, label %if.then152, label %if.end156

if.then152:                                       ; preds = %sw.bb147
  store i32 %38, ptr %copline, align 8
  br label %if.end156

if.end156:                                        ; preds = %if.then152, %sw.bb147
  %arrayidx157 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %39 = load i32, ptr %arrayidx157, align 8
  %arrayidx159 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %40 = load ptr, ptr %arrayidx159, align 8
  %call161 = call ptr @Perl_block_end(i32 noundef %39, ptr noundef %40) #4
  br label %sw.epilog

sw.bb162:                                         ; preds = %yyreduce
  %41 = load i32, ptr %copline163, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %ps.1, i64 -144
  %42 = load i32, ptr %arrayidx164, align 8
  %cmp166 = icmp ugt i32 %41, %42
  br i1 %cmp166, label %if.then168, label %if.end172

if.then168:                                       ; preds = %sw.bb162
  store i32 %42, ptr %copline163, align 8
  br label %if.end172

if.end172:                                        ; preds = %if.then168, %sw.bb162
  %arrayidx173 = getelementptr inbounds i8, ptr %ps.1, i64 -120
  %43 = load i32, ptr %arrayidx173, align 8
  %arrayidx175 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %44 = load ptr, ptr %arrayidx175, align 8
  %call177 = call ptr @Perl_block_end(i32 noundef %43, ptr noundef %44) #4
  br label %sw.epilog

sw.bb178:                                         ; preds = %yyreduce
  %call179 = call i32 @Perl_block_start(i32 noundef 1) #4
  %45 = ptrtoint ptr %yyval.sroa.0.0.copyload to i64
  %yyval.sroa.0.0.insert.ext = zext i32 %call179 to i64
  %yyval.sroa.0.0.insert.mask2257 = and i64 %45, -4294967296
  %yyval.sroa.0.0.insert.insert2258 = or disjoint i64 %yyval.sroa.0.0.insert.mask2257, %yyval.sroa.0.0.insert.ext
  %46 = inttoptr i64 %yyval.sroa.0.0.insert.insert2258 to ptr
  %bf.load = load i8, ptr %parsed_sub, align 2
  %bf.clear = and i8 %bf.load, -9
  store i8 %bf.clear, ptr %parsed_sub, align 2
  br label %sw.epilog

sw.bb180:                                         ; preds = %yyreduce
  %47 = load i32, ptr %copline181, align 8
  %arrayidx182 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %48 = load i32, ptr %arrayidx182, align 8
  %cmp184 = icmp ugt i32 %47, %48
  br i1 %cmp184, label %if.then186, label %if.end190

if.then186:                                       ; preds = %sw.bb180
  store i32 %48, ptr %copline181, align 8
  br label %if.end190

if.end190:                                        ; preds = %if.then186, %sw.bb180
  %arrayidx191 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %49 = load i32, ptr %arrayidx191, align 8
  %arrayidx193 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %50 = load ptr, ptr %arrayidx193, align 8
  %call195 = call ptr @Perl_block_end(i32 noundef %49, ptr noundef %50) #4
  br label %sw.epilog

sw.bb196:                                         ; preds = %yyreduce
  %call197 = call i32 @Perl_block_start(i32 noundef 0) #4
  %51 = ptrtoint ptr %yyval.sroa.0.0.copyload to i64
  %yyval.sroa.0.0.insert.ext2260 = zext i32 %call197 to i64
  %yyval.sroa.0.0.insert.mask2261 = and i64 %51, -4294967296
  %yyval.sroa.0.0.insert.insert2262 = or disjoint i64 %yyval.sroa.0.0.insert.mask2261, %yyval.sroa.0.0.insert.ext2260
  %52 = inttoptr i64 %yyval.sroa.0.0.insert.insert2262 to ptr
  %bf.load199 = load i8, ptr %parsed_sub198, align 2
  %bf.clear200 = and i8 %bf.load199, -9
  store i8 %bf.clear200, ptr %parsed_sub198, align 2
  br label %sw.epilog

sw.bb202:                                         ; preds = %yyreduce, %yyreduce, %yyreduce, %yyreduce, %yyreduce, %yyreduce, %yyreduce, %yyreduce, %yyreduce, %yyreduce, %yyreduce, %yyreduce, %yyreduce, %yyreduce, %yyreduce, %yyreduce
  br label %sw.epilog

sw.bb203:                                         ; preds = %yyreduce
  %arrayidx204 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %53 = load ptr, ptr %arrayidx204, align 8
  %54 = load ptr, ptr %ps.1, align 8
  %call208 = call ptr @Perl_op_append_list(i32 noundef 192, ptr noundef %53, ptr noundef %54) #4
  store i8 1, ptr @PL_pad_reset_pending, align 1
  %55 = load ptr, ptr %arrayidx204, align 8
  %tobool211.not = icmp eq ptr %55, null
  br i1 %tobool211.not, label %sw.epilog, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb203
  %56 = load ptr, ptr %ps.1, align 8
  %tobool214.not = icmp eq ptr %56, null
  br i1 %tobool214.not, label %sw.epilog, label %if.then215

if.then215:                                       ; preds = %land.lhs.true
  %57 = load i32, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  %or = or i32 %57, 256
  store i32 %or, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  br label %sw.epilog

sw.bb218:                                         ; preds = %yyreduce
  %arrayidx219 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %58 = load ptr, ptr %arrayidx219, align 8
  %59 = load ptr, ptr %ps.1, align 8
  %call223 = call ptr @Perl_op_append_list(i32 noundef 192, ptr noundef %58, ptr noundef %59) #4
  store i8 1, ptr @PL_pad_reset_pending, align 1
  %60 = load ptr, ptr %arrayidx219, align 8
  %tobool226.not = icmp eq ptr %60, null
  br i1 %tobool226.not, label %sw.epilog, label %land.lhs.true227

land.lhs.true227:                                 ; preds = %sw.bb218
  %61 = load ptr, ptr %ps.1, align 8
  %tobool230.not = icmp eq ptr %61, null
  br i1 %tobool230.not, label %sw.epilog, label %if.then231

if.then231:                                       ; preds = %land.lhs.true227
  %62 = load i32, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  %or232 = or i32 %62, 256
  store i32 %or232, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  br label %sw.epilog

sw.bb234:                                         ; preds = %yyreduce
  %63 = load ptr, ptr %ps.1, align 8
  %tobool237.not = icmp eq ptr %63, null
  br i1 %tobool237.not, label %sw.epilog, label %cond.true238

cond.true238:                                     ; preds = %sw.bb234
  %call241 = call ptr @Perl_newSTATEOP(i32 noundef 0, ptr noundef null, ptr noundef nonnull %63) #4
  br label %sw.epilog

sw.bb245:                                         ; preds = %yyreduce
  %64 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb248:                                         ; preds = %yyreduce
  %arrayidx249 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %65 = load ptr, ptr %arrayidx249, align 8
  %call253 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %65) #5
  %66 = getelementptr i8, ptr %65, i64 %call253
  %arrayidx255 = getelementptr i8, ptr %66, i64 1
  %67 = load i8, ptr %arrayidx255, align 1
  %conv256 = sext i8 %67 to i32
  %mul257 = shl nsw i32 %conv256, 29
  %68 = load ptr, ptr %ps.1, align 8
  %call262 = call ptr @Perl_newSTATEOP(i32 noundef %mul257, ptr noundef %65, ptr noundef %68) #4
  br label %sw.epilog

sw.bb263:                                         ; preds = %yyreduce
  %arrayidx264 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %69 = load ptr, ptr %arrayidx264, align 8
  %call268 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %69) #5
  %70 = getelementptr i8, ptr %69, i64 %call268
  %arrayidx270 = getelementptr i8, ptr %70, i64 1
  %71 = load i8, ptr %arrayidx270, align 1
  %conv271 = sext i8 %71 to i32
  %mul272 = shl nsw i32 %conv271, 29
  %72 = load ptr, ptr %ps.1, align 8
  %call277 = call ptr @Perl_newSTATEOP(i32 noundef %mul272, ptr noundef %69, ptr noundef %72) #4
  br label %sw.epilog

sw.bb278:                                         ; preds = %yyreduce
  %73 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb281:                                         ; preds = %yyreduce
  %74 = load ptr, ptr @PL_compcv, align 8
  %arrayidx282 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %75 = load i32, ptr %arrayidx282, align 8
  %arrayidx284 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %76 = load ptr, ptr %arrayidx284, align 8
  %77 = load ptr, ptr %ps.1, align 8
  call void @Perl_newFORM(i32 noundef %75, ptr noundef %76, ptr noundef %77) #4
  %78 = load ptr, ptr %74, align 8
  %xcv_outside = getelementptr inbounds nuw i8, ptr %78, i64 80
  %79 = load ptr, ptr %xcv_outside, align 8
  %tobool288.not = icmp eq ptr %79, null
  br i1 %tobool288.not, label %if.end300, label %land.lhs.true289

land.lhs.true289:                                 ; preds = %sw.bb281
  %80 = load ptr, ptr %79, align 8
  %xcv_flags = getelementptr inbounds nuw i8, ptr %80, i64 92
  %81 = load i32, ptr %xcv_flags, align 4
  %and = and i32 %81, 256
  %tobool293.not = icmp eq i32 %and, 0
  br i1 %tobool293.not, label %if.then299, label %land.lhs.true294

land.lhs.true294:                                 ; preds = %land.lhs.true289
  %sv_flags = getelementptr inbounds nuw i8, ptr %79, i64 12
  %82 = load i32, ptr %sv_flags, align 4
  %and297 = and i32 %82, 16777216
  %tobool298.not = icmp eq i32 %and297, 0
  br i1 %tobool298.not, label %if.end300, label %if.then299

if.then299:                                       ; preds = %land.lhs.true294, %land.lhs.true289
  call void @Perl_pad_add_weakref(ptr noundef nonnull %74) #4
  br label %if.end300

if.end300:                                        ; preds = %if.then299, %land.lhs.true294, %sw.bb281
  %bf.load302 = load i8, ptr %parsed_sub301, align 2
  %bf.set304 = or i8 %bf.load302, 8
  store i8 %bf.set304, ptr %parsed_sub301, align 2
  br label %sw.epilog

sw.bb305:                                         ; preds = %yyreduce
  %arrayidx306 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %83 = load ptr, ptr %arrayidx306, align 8
  %op_type = getelementptr inbounds nuw i8, ptr %83, i64 32
  %bf.load308 = load i16, ptr %op_type, align 8
  %bf.clear309 = and i16 %bf.load308, 511
  %cmp310 = icmp eq i16 %bf.clear309, 5
  br i1 %cmp310, label %if.then312, label %if.else352

if.then312:                                       ; preds = %sw.bb305
  %op_sv = getelementptr inbounds nuw i8, ptr %83, i64 40
  %84 = load ptr, ptr %op_sv, align 8
  %sv_flags315 = getelementptr inbounds nuw i8, ptr %84, i64 12
  %85 = load i32, ptr %sv_flags315, align 4
  %and316 = and i32 %85, 2098176
  %cmp317 = icmp eq i32 %and316, 1024
  br i1 %cmp317, label %cond.true319, label %cond.false324

cond.true319:                                     ; preds = %if.then312
  %sv_u = getelementptr inbounds nuw i8, ptr %84, i64 16
  %86 = load ptr, ptr %sv_u, align 8
  br label %cond.end329

cond.false324:                                    ; preds = %if.then312
  %call328 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %84, ptr noundef null, i32 noundef 34) #4
  br label %cond.end329

cond.end329:                                      ; preds = %cond.false324, %cond.true319
  %cond330 = phi ptr [ %86, %cond.true319 ], [ %call328, %cond.false324 ]
  %call331 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond330, ptr noundef nonnull dereferenceable(6) @.str) #5
  %tobool332.not = icmp eq i32 %call331, 0
  br i1 %tobool332.not, label %if.then345, label %lor.lhs.false333

lor.lhs.false333:                                 ; preds = %cond.end329
  %call334 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond330, ptr noundef nonnull dereferenceable(4) @.str.1) #5
  %tobool335.not = icmp eq i32 %call334, 0
  br i1 %tobool335.not, label %if.then345, label %lor.lhs.false336

lor.lhs.false336:                                 ; preds = %lor.lhs.false333
  %call337 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond330, ptr noundef nonnull dereferenceable(5) @.str.2) #5
  %tobool338.not = icmp eq i32 %call337, 0
  br i1 %tobool338.not, label %if.then345, label %lor.lhs.false339

lor.lhs.false339:                                 ; preds = %lor.lhs.false336
  %call340 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond330, ptr noundef nonnull dereferenceable(6) @.str.3) #5
  %tobool341.not = icmp eq i32 %call340, 0
  br i1 %tobool341.not, label %if.then345, label %lor.lhs.false342

lor.lhs.false342:                                 ; preds = %lor.lhs.false339
  %call343 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond330, ptr noundef nonnull dereferenceable(10) @.str.4) #5
  %tobool344.not = icmp eq i32 %call343, 0
  br i1 %tobool344.not, label %if.then345, label %if.end381

if.then345:                                       ; preds = %lor.lhs.false342, %lor.lhs.false339, %lor.lhs.false336, %lor.lhs.false333, %cond.end329
  %87 = load ptr, ptr @PL_compcv, align 8
  %88 = load ptr, ptr %87, align 8
  %xcv_flags347 = getelementptr inbounds nuw i8, ptr %88, i64 92
  %89 = load i32, ptr %xcv_flags347, align 4
  %or348 = or i32 %89, 256
  store i32 %or348, ptr %xcv_flags347, align 4
  %sv_flags349 = getelementptr inbounds nuw i8, ptr %87, i64 12
  %90 = load i32, ptr %sv_flags349, align 4
  %or350 = or i32 %90, 16777216
  store i32 %or350, ptr %sv_flags349, align 4
  br label %if.end381

if.else352:                                       ; preds = %sw.bb305
  %91 = load ptr, ptr @PL_compcv, align 8
  %92 = load ptr, ptr %91, align 8
  %xcv_outside354 = getelementptr inbounds nuw i8, ptr %92, i64 80
  %93 = load ptr, ptr %xcv_outside354, align 8
  %94 = load ptr, ptr %93, align 8
  %xcv_flags356 = getelementptr inbounds nuw i8, ptr %94, i64 92
  %95 = load i32, ptr %xcv_flags356, align 4
  %96 = and i32 %95, 160
  %or.cond2942 = icmp eq i32 %96, 0
  br i1 %or.cond2942, label %lor.lhs.false366, label %if.then376

lor.lhs.false366:                                 ; preds = %if.else352
  %xcv_padlist_u = getelementptr inbounds nuw i8, ptr %94, i64 72
  %97 = load ptr, ptr %xcv_padlist_u, align 8
  %xpadl_alloc = getelementptr inbounds nuw i8, ptr %97, i64 8
  %98 = load ptr, ptr %xpadl_alloc, align 8
  %99 = load ptr, ptr %98, align 8
  %xpadnl_alloc = getelementptr inbounds nuw i8, ptr %99, i64 8
  %100 = load ptr, ptr %xpadnl_alloc, align 8
  %op_targ = getelementptr inbounds nuw i8, ptr %83, i64 24
  %101 = load i64, ptr %op_targ, align 8
  %arrayidx372 = getelementptr inbounds nuw ptr, ptr %100, i64 %101
  %102 = load ptr, ptr %arrayidx372, align 8
  %xpadn_flags = getelementptr inbounds nuw i8, ptr %102, i64 41
  %103 = load i8, ptr %xpadn_flags, align 1
  %104 = and i8 %103, 2
  %tobool375.not = icmp eq i8 %104, 0
  br i1 %tobool375.not, label %if.then376, label %if.end381

if.then376:                                       ; preds = %lor.lhs.false366, %if.else352
  %xcv_flags378 = getelementptr inbounds nuw i8, ptr %92, i64 92
  %105 = load i32, ptr %xcv_flags378, align 4
  %or379 = or i32 %105, 32
  store i32 %or379, ptr %xcv_flags378, align 4
  br label %if.end381

if.end381:                                        ; preds = %if.then376, %lor.lhs.false366, %if.then345, %lor.lhs.false342
  store i16 0, ptr %in_my, align 4
  store ptr null, ptr %in_my_stash, align 8
  br label %sw.epilog

do.body:                                          ; preds = %yyreduce
  %106 = load ptr, ptr @PL_compcv, align 8
  %tobool383.not = icmp eq ptr %106, null
  br i1 %tobool383.not, label %do.end, label %if.then384

if.then384:                                       ; preds = %do.body
  %sv_refcnt = getelementptr inbounds nuw i8, ptr %106, i64 8
  %107 = load i32, ptr %sv_refcnt, align 8
  %inc = add i32 %107, 1
  store i32 %inc, ptr %sv_refcnt, align 8
  br label %do.end

do.end:                                           ; preds = %if.then384, %do.body
  %arrayidx386 = getelementptr inbounds i8, ptr %ps.1, i64 -120
  %108 = load ptr, ptr %arrayidx386, align 8
  %op_type388 = getelementptr inbounds nuw i8, ptr %108, i64 32
  %bf.load389 = load i16, ptr %op_type388, align 8
  %bf.clear390 = and i16 %bf.load389, 511
  %cmp392 = icmp eq i16 %bf.clear390, 5
  br i1 %cmp392, label %cond.true394, label %cond.false406

cond.true394:                                     ; preds = %do.end
  %arrayidx395 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %109 = load i32, ptr %arrayidx395, align 8
  %arrayidx399 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %110 = load ptr, ptr %arrayidx399, align 8
  %arrayidx401 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %111 = load ptr, ptr %arrayidx401, align 8
  %112 = load ptr, ptr %ps.1, align 8
  %call405 = call ptr @Perl_newATTRSUB_x(i32 noundef %109, ptr noundef nonnull %108, ptr noundef %110, ptr noundef %111, ptr noundef %112, i1 noundef zeroext false) #4
  br label %cond.end418

cond.false406:                                    ; preds = %do.end
  %arrayidx407 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %113 = load i32, ptr %arrayidx407, align 8
  %arrayidx411 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %114 = load ptr, ptr %arrayidx411, align 8
  %arrayidx413 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %115 = load ptr, ptr %arrayidx413, align 8
  %116 = load ptr, ptr %ps.1, align 8
  %call417 = call ptr @Perl_newMYSUB(i32 noundef %113, ptr noundef nonnull %108, ptr noundef %114, ptr noundef %115, ptr noundef %116) #4
  br label %cond.end418

cond.end418:                                      ; preds = %cond.false406, %cond.true394
  %call420 = call i32 @Perl_intro_my() #4
  %bf.load422 = load i8, ptr %parsed_sub421, align 2
  %bf.set424 = or i8 %bf.load422, 8
  store i8 %bf.set424, ptr %parsed_sub421, align 2
  br label %sw.epilog

sw.bb425:                                         ; preds = %yyreduce
  %arrayidx426 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %117 = load ptr, ptr %arrayidx426, align 8
  %op_type428 = getelementptr inbounds nuw i8, ptr %117, i64 32
  %bf.load429 = load i16, ptr %op_type428, align 8
  %bf.clear430 = and i16 %bf.load429, 511
  %cmp432 = icmp eq i16 %bf.clear430, 5
  br i1 %cmp432, label %if.then434, label %if.else477

if.then434:                                       ; preds = %sw.bb425
  %op_sv438 = getelementptr inbounds nuw i8, ptr %117, i64 40
  %118 = load ptr, ptr %op_sv438, align 8
  %sv_flags439 = getelementptr inbounds nuw i8, ptr %118, i64 12
  %119 = load i32, ptr %sv_flags439, align 4
  %and440 = and i32 %119, 2098176
  %cmp441 = icmp eq i32 %and440, 1024
  br i1 %cmp441, label %cond.true443, label %cond.false449

cond.true443:                                     ; preds = %if.then434
  %sv_u447 = getelementptr inbounds nuw i8, ptr %118, i64 16
  %120 = load ptr, ptr %sv_u447, align 8
  br label %cond.end454

cond.false449:                                    ; preds = %if.then434
  %call453 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %118, ptr noundef null, i32 noundef 34) #4
  br label %cond.end454

cond.end454:                                      ; preds = %cond.false449, %cond.true443
  %cond455 = phi ptr [ %120, %cond.true443 ], [ %call453, %cond.false449 ]
  %call456 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond455, ptr noundef nonnull dereferenceable(6) @.str) #5
  %tobool457.not = icmp eq i32 %call456, 0
  br i1 %tobool457.not, label %if.then470, label %lor.lhs.false458

lor.lhs.false458:                                 ; preds = %cond.end454
  %call459 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond455, ptr noundef nonnull dereferenceable(4) @.str.1) #5
  %tobool460.not = icmp eq i32 %call459, 0
  br i1 %tobool460.not, label %if.then470, label %lor.lhs.false461

lor.lhs.false461:                                 ; preds = %lor.lhs.false458
  %call462 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond455, ptr noundef nonnull dereferenceable(5) @.str.2) #5
  %tobool463.not = icmp eq i32 %call462, 0
  br i1 %tobool463.not, label %if.then470, label %lor.lhs.false464

lor.lhs.false464:                                 ; preds = %lor.lhs.false461
  %call465 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond455, ptr noundef nonnull dereferenceable(6) @.str.3) #5
  %tobool466.not = icmp eq i32 %call465, 0
  br i1 %tobool466.not, label %if.then470, label %lor.lhs.false467

lor.lhs.false467:                                 ; preds = %lor.lhs.false464
  %call468 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond455, ptr noundef nonnull dereferenceable(10) @.str.4) #5
  %tobool469.not = icmp eq i32 %call468, 0
  br i1 %tobool469.not, label %if.then470, label %if.end511

if.then470:                                       ; preds = %lor.lhs.false467, %lor.lhs.false464, %lor.lhs.false461, %lor.lhs.false458, %cond.end454
  %121 = load ptr, ptr @PL_compcv, align 8
  %122 = load ptr, ptr %121, align 8
  %xcv_flags472 = getelementptr inbounds nuw i8, ptr %122, i64 92
  %123 = load i32, ptr %xcv_flags472, align 4
  %or473 = or i32 %123, 256
  store i32 %or473, ptr %xcv_flags472, align 4
  %sv_flags474 = getelementptr inbounds nuw i8, ptr %121, i64 12
  %124 = load i32, ptr %sv_flags474, align 4
  %or475 = or i32 %124, 16777216
  store i32 %or475, ptr %sv_flags474, align 4
  br label %if.end511

if.else477:                                       ; preds = %sw.bb425
  %125 = load ptr, ptr @PL_compcv, align 8
  %126 = load ptr, ptr %125, align 8
  %xcv_outside479 = getelementptr inbounds nuw i8, ptr %126, i64 80
  %127 = load ptr, ptr %xcv_outside479, align 8
  %128 = load ptr, ptr %127, align 8
  %xcv_flags481 = getelementptr inbounds nuw i8, ptr %128, i64 92
  %129 = load i32, ptr %xcv_flags481, align 4
  %130 = and i32 %129, 160
  %or.cond2943 = icmp eq i32 %130, 0
  br i1 %or.cond2943, label %lor.lhs.false491, label %if.then506

lor.lhs.false491:                                 ; preds = %if.else477
  %xcv_padlist_u495 = getelementptr inbounds nuw i8, ptr %128, i64 72
  %131 = load ptr, ptr %xcv_padlist_u495, align 8
  %xpadl_alloc496 = getelementptr inbounds nuw i8, ptr %131, i64 8
  %132 = load ptr, ptr %xpadl_alloc496, align 8
  %133 = load ptr, ptr %132, align 8
  %xpadnl_alloc497 = getelementptr inbounds nuw i8, ptr %133, i64 8
  %134 = load ptr, ptr %xpadnl_alloc497, align 8
  %op_targ500 = getelementptr inbounds nuw i8, ptr %117, i64 24
  %135 = load i64, ptr %op_targ500, align 8
  %arrayidx501 = getelementptr inbounds nuw ptr, ptr %134, i64 %135
  %136 = load ptr, ptr %arrayidx501, align 8
  %xpadn_flags502 = getelementptr inbounds nuw i8, ptr %136, i64 41
  %137 = load i8, ptr %xpadn_flags502, align 1
  %138 = and i8 %137, 2
  %tobool505.not = icmp eq i8 %138, 0
  br i1 %tobool505.not, label %if.then506, label %if.end511

if.then506:                                       ; preds = %lor.lhs.false491, %if.else477
  %xcv_flags508 = getelementptr inbounds nuw i8, ptr %126, i64 92
  %139 = load i32, ptr %xcv_flags508, align 4
  %or509 = or i32 %139, 32
  store i32 %or509, ptr %xcv_flags508, align 4
  br label %if.end511

if.end511:                                        ; preds = %if.then506, %lor.lhs.false491, %if.then470, %lor.lhs.false467
  store i16 0, ptr %in_my512, align 4
  store ptr null, ptr %in_my_stash513, align 8
  br label %sw.epilog

sw.bb514:                                         ; preds = %yyreduce
  %140 = load i32, ptr %copline515, align 8
  %arrayidx516 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %141 = load i32, ptr %arrayidx516, align 8
  %cmp518 = icmp ugt i32 %140, %141
  br i1 %cmp518, label %if.then520, label %if.end524

if.then520:                                       ; preds = %sw.bb514
  store i32 %141, ptr %copline515, align 8
  br label %if.end524

if.end524:                                        ; preds = %if.then520, %sw.bb514
  %arrayidx525 = getelementptr inbounds i8, ptr %ps.1, i64 -120
  %142 = load i32, ptr %arrayidx525, align 8
  %arrayidx527 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %143 = load ptr, ptr %arrayidx527, align 8
  %arrayidx529 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %144 = load ptr, ptr %arrayidx529, align 8
  %call531 = call ptr @Perl_op_append_list(i32 noundef 192, ptr noundef %143, ptr noundef %144) #4
  %call532 = call ptr @Perl_block_end(i32 noundef %142, ptr noundef %call531) #4
  %145 = load ptr, ptr @PL_compcv, align 8
  %tobool534.not = icmp eq ptr %145, null
  br i1 %tobool534.not, label %do.end540, label %if.then535

if.then535:                                       ; preds = %if.end524
  %sv_refcnt536 = getelementptr inbounds nuw i8, ptr %145, i64 8
  %146 = load i32, ptr %sv_refcnt536, align 8
  %inc537 = add i32 %146, 1
  store i32 %inc537, ptr %sv_refcnt536, align 8
  br label %do.end540

do.end540:                                        ; preds = %if.then535, %if.end524
  %arrayidx541 = getelementptr inbounds i8, ptr %ps.1, i64 -192
  %147 = load ptr, ptr %arrayidx541, align 8
  %op_type543 = getelementptr inbounds nuw i8, ptr %147, i64 32
  %bf.load544 = load i16, ptr %op_type543, align 8
  %bf.clear545 = and i16 %bf.load544, 511
  %cmp547 = icmp eq i16 %bf.clear545, 5
  br i1 %cmp547, label %cond.true549, label %cond.false557

cond.true549:                                     ; preds = %do.end540
  %arrayidx550 = getelementptr inbounds i8, ptr %ps.1, i64 -168
  %148 = load i32, ptr %arrayidx550, align 8
  %arrayidx554 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %149 = load ptr, ptr %arrayidx554, align 8
  %call556 = call ptr @Perl_newATTRSUB_x(i32 noundef %148, ptr noundef nonnull %147, ptr noundef null, ptr noundef %149, ptr noundef %call532, i1 noundef zeroext false) #4
  br label %cond.end565

cond.false557:                                    ; preds = %do.end540
  %arrayidx558 = getelementptr inbounds i8, ptr %ps.1, i64 -168
  %150 = load i32, ptr %arrayidx558, align 8
  %arrayidx562 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %151 = load ptr, ptr %arrayidx562, align 8
  %call564 = call ptr @Perl_newMYSUB(i32 noundef %150, ptr noundef nonnull %147, ptr noundef null, ptr noundef %151, ptr noundef %call532) #4
  br label %cond.end565

cond.end565:                                      ; preds = %cond.false557, %cond.true549
  %call567 = call i32 @Perl_intro_my() #4
  %bf.load569 = load i8, ptr %parsed_sub568, align 2
  %bf.set571 = or i8 %bf.load569, 8
  store i8 %bf.set571, ptr %parsed_sub568, align 2
  br label %sw.epilog

sw.bb572:                                         ; preds = %yyreduce
  %arrayidx573 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %152 = load ptr, ptr %arrayidx573, align 8
  call void @Perl_package(ptr noundef %152) #4
  %arrayidx575 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %153 = load ptr, ptr %arrayidx575, align 8
  %tobool577.not = icmp eq ptr %153, null
  br i1 %tobool577.not, label %sw.epilog, label %if.then578

if.then578:                                       ; preds = %sw.bb572
  call void @Perl_package_version(ptr noundef nonnull %153) #4
  br label %sw.epilog

sw.bb582:                                         ; preds = %yyreduce
  %154 = load ptr, ptr @PL_compcv, align 8
  %155 = load ptr, ptr %154, align 8
  %xcv_flags584 = getelementptr inbounds nuw i8, ptr %155, i64 92
  %156 = load i32, ptr %xcv_flags584, align 4
  %or585 = or i32 %156, 256
  store i32 %or585, ptr %xcv_flags584, align 4
  %sv_flags586 = getelementptr inbounds nuw i8, ptr %154, i64 12
  %157 = load i32, ptr %sv_flags586, align 4
  %or587 = or i32 %157, 16777216
  store i32 %or587, ptr %sv_flags586, align 4
  br label %sw.epilog

do.body589:                                       ; preds = %yyreduce
  %158 = load ptr, ptr @PL_compcv, align 8
  %tobool590.not = icmp eq ptr %158, null
  br i1 %tobool590.not, label %do.end596, label %if.then591

if.then591:                                       ; preds = %do.body589
  %sv_refcnt592 = getelementptr inbounds nuw i8, ptr %158, i64 8
  %159 = load i32, ptr %sv_refcnt592, align 8
  %inc593 = add i32 %159, 1
  store i32 %inc593, ptr %sv_refcnt592, align 8
  br label %do.end596

do.end596:                                        ; preds = %if.then591, %do.body589
  %arrayidx597 = getelementptr inbounds i8, ptr %ps.1, i64 -144
  %160 = load i32, ptr %arrayidx597, align 8
  %arrayidx599 = getelementptr inbounds i8, ptr %ps.1, i64 -120
  %161 = load i32, ptr %arrayidx599, align 8
  %arrayidx601 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %162 = load ptr, ptr %arrayidx601, align 8
  %arrayidx603 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %163 = load ptr, ptr %arrayidx603, align 8
  %arrayidx605 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %164 = load ptr, ptr %arrayidx605, align 8
  call void @Perl_utilize(i32 noundef %160, i32 noundef %161, ptr noundef %162, ptr noundef %163, ptr noundef %164) #4
  %bf.load608 = load i8, ptr %parsed_sub607, align 2
  %bf.set610 = or i8 %bf.load608, 8
  store i8 %bf.set610, ptr %parsed_sub607, align 2
  br label %sw.epilog

sw.bb611:                                         ; preds = %yyreduce
  %arrayidx612 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %165 = load i32, ptr %arrayidx612, align 8
  %arrayidx614 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %166 = load ptr, ptr %arrayidx614, align 8
  %arrayidx616 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %167 = load ptr, ptr %arrayidx616, align 8
  %call618 = call ptr @Perl_op_scope(ptr noundef %167) #4
  %168 = load ptr, ptr %ps.1, align 8
  %call621 = call ptr @Perl_newCONDOP(i32 noundef 0, ptr noundef %166, ptr noundef %call618, ptr noundef %168) #4
  %call622 = call ptr @Perl_block_end(i32 noundef %165, ptr noundef %call621) #4
  %arrayidx623 = getelementptr inbounds i8, ptr %ps.1, i64 -144
  %169 = load i32, ptr %arrayidx623, align 8
  store i32 %169, ptr %copline625, align 8
  br label %sw.epilog

sw.bb626:                                         ; preds = %yyreduce
  %arrayidx627 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %170 = load i32, ptr %arrayidx627, align 8
  %arrayidx629 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %171 = load ptr, ptr %arrayidx629, align 8
  %arrayidx631 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %172 = load ptr, ptr %arrayidx631, align 8
  %call633 = call ptr @Perl_op_scope(ptr noundef %172) #4
  %173 = load ptr, ptr %ps.1, align 8
  %call636 = call ptr @Perl_newCONDOP(i32 noundef 0, ptr noundef %171, ptr noundef %call633, ptr noundef %173) #4
  %call637 = call ptr @Perl_block_end(i32 noundef %170, ptr noundef %call636) #4
  %arrayidx638 = getelementptr inbounds i8, ptr %ps.1, i64 -144
  %174 = load i32, ptr %arrayidx638, align 8
  store i32 %174, ptr %copline640, align 8
  br label %sw.epilog

sw.bb641:                                         ; preds = %yyreduce
  %call642 = call i64 @Perl_pad_findmy_pvn(ptr noundef nonnull @.str.5, i64 noundef 2, i32 noundef 0) #4
  %arrayidx643 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %175 = load i32, ptr %arrayidx643, align 8
  %arrayidx645 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %176 = load ptr, ptr %arrayidx645, align 8
  %177 = load ptr, ptr %ps.1, align 8
  %call649 = call ptr @Perl_op_scope(ptr noundef %177) #4
  %cmp650 = icmp eq i64 %call642, -1
  br i1 %cmp650, label %cond.end658, label %lor.lhs.false652

lor.lhs.false652:                                 ; preds = %sw.bb641
  %178 = load ptr, ptr @PL_comppad_name, align 8
  %xpadnl_alloc653 = getelementptr inbounds nuw i8, ptr %178, i64 8
  %179 = load ptr, ptr %xpadnl_alloc653, align 8
  %arrayidx654 = getelementptr inbounds nuw ptr, ptr %179, i64 %call642
  %180 = load ptr, ptr %arrayidx654, align 8
  %xpadn_ourstash = getelementptr inbounds nuw i8, ptr %180, i64 8
  %181 = load ptr, ptr %xpadn_ourstash, align 8
  %tobool655.not = icmp eq ptr %181, null
  %spec.select = select i1 %tobool655.not, i64 %call642, i64 0
  br label %cond.end658

cond.end658:                                      ; preds = %lor.lhs.false652, %sw.bb641
  %cond659 = phi i64 [ 0, %sw.bb641 ], [ %spec.select, %lor.lhs.false652 ]
  %call660 = call ptr @Perl_newGIVENOP(ptr noundef %176, ptr noundef %call649, i64 noundef %cond659) #4
  %call661 = call ptr @Perl_block_end(i32 noundef %175, ptr noundef %call660) #4
  %arrayidx662 = getelementptr inbounds i8, ptr %ps.1, i64 -120
  %182 = load i32, ptr %arrayidx662, align 8
  store i32 %182, ptr %copline664, align 8
  br label %sw.epilog

sw.bb665:                                         ; preds = %yyreduce
  %arrayidx666 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %183 = load i32, ptr %arrayidx666, align 8
  %arrayidx668 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %184 = load ptr, ptr %arrayidx668, align 8
  %185 = load ptr, ptr %ps.1, align 8
  %call672 = call ptr @Perl_op_scope(ptr noundef %185) #4
  %call673 = call ptr @Perl_newWHENOP(ptr noundef %184, ptr noundef %call672) #4
  %call674 = call ptr @Perl_block_end(i32 noundef %183, ptr noundef %call673) #4
  br label %sw.epilog

sw.bb675:                                         ; preds = %yyreduce
  %186 = load ptr, ptr %ps.1, align 8
  %call678 = call ptr @Perl_op_scope(ptr noundef %186) #4
  %call679 = call ptr @Perl_newWHENOP(ptr noundef null, ptr noundef %call678) #4
  br label %sw.epilog

sw.bb680:                                         ; preds = %yyreduce
  %arrayidx681 = getelementptr inbounds i8, ptr %ps.1, i64 -120
  %187 = load i32, ptr %arrayidx681, align 8
  %arrayidx683 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %188 = load ptr, ptr %arrayidx683, align 8
  %arrayidx685 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %189 = load ptr, ptr %arrayidx685, align 8
  %190 = load ptr, ptr %ps.1, align 8
  %arrayidx689 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %191 = load i32, ptr %arrayidx689, align 8
  %call691 = call ptr @Perl_newWHILEOP(i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef %188, ptr noundef %189, ptr noundef %190, i32 noundef %191) #4
  %call692 = call ptr @Perl_block_end(i32 noundef %187, ptr noundef %call691) #4
  %arrayidx693 = getelementptr inbounds i8, ptr %ps.1, i64 -168
  %192 = load i32, ptr %arrayidx693, align 8
  store i32 %192, ptr %copline695, align 8
  br label %sw.epilog

sw.bb696:                                         ; preds = %yyreduce
  %arrayidx697 = getelementptr inbounds i8, ptr %ps.1, i64 -120
  %193 = load i32, ptr %arrayidx697, align 8
  %arrayidx699 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %194 = load ptr, ptr %arrayidx699, align 8
  %arrayidx701 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %195 = load ptr, ptr %arrayidx701, align 8
  %196 = load ptr, ptr %ps.1, align 8
  %arrayidx705 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %197 = load i32, ptr %arrayidx705, align 8
  %call707 = call ptr @Perl_newWHILEOP(i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef %194, ptr noundef %195, ptr noundef %196, i32 noundef %197) #4
  %call708 = call ptr @Perl_block_end(i32 noundef %193, ptr noundef %call707) #4
  %arrayidx709 = getelementptr inbounds i8, ptr %ps.1, i64 -168
  %198 = load i32, ptr %arrayidx709, align 8
  store i32 %198, ptr %copline711, align 8
  br label %sw.epilog

sw.bb712:                                         ; preds = %yyreduce
  store i8 1, ptr %expect713, align 1
  br label %sw.epilog

sw.bb714:                                         ; preds = %yyreduce
  store i8 1, ptr %expect715, align 1
  br label %sw.epilog

sw.bb716:                                         ; preds = %yyreduce
  %arrayidx717 = getelementptr inbounds i8, ptr %ps.1, i64 -216
  %199 = load ptr, ptr %arrayidx717, align 8
  %arrayidx719 = getelementptr inbounds i8, ptr %ps.1, i64 -144
  %200 = load ptr, ptr %arrayidx719, align 8
  %call721 = call ptr @Perl_scalar(ptr noundef %200) #4
  %201 = load ptr, ptr %ps.1, align 8
  %arrayidx724 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %202 = load ptr, ptr %arrayidx724, align 8
  %arrayidx726 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %203 = load i32, ptr %arrayidx726, align 8
  %call728 = call ptr @Perl_newWHILEOP(i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef %call721, ptr noundef %201, ptr noundef %202, i32 noundef %203) #4
  %tobool729.not = icmp eq ptr %199, null
  br i1 %tobool729.not, label %if.end734, label %if.then730

if.then730:                                       ; preds = %sw.bb716
  %call731 = call ptr @Perl_newOP(i32 noundef 195, i32 noundef 128) #4
  %call732 = call ptr @Perl_op_append_elem(i32 noundef 192, ptr noundef %call731, ptr noundef %call728) #4
  %call733 = call ptr @Perl_op_prepend_elem(i32 noundef 192, ptr noundef nonnull %199, ptr noundef %call732) #4
  br label %if.end734

if.end734:                                        ; preds = %if.then730, %sw.bb716
  %forop.0 = phi ptr [ %call733, %if.then730 ], [ %call728, %sw.bb716 ]
  %204 = load i32, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  %or735 = or i32 %204, 256
  store i32 %or735, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  %arrayidx736 = getelementptr inbounds i8, ptr %ps.1, i64 -240
  %205 = load i32, ptr %arrayidx736, align 8
  %call738 = call ptr @Perl_block_end(i32 noundef %205, ptr noundef %forop.0) #4
  %arrayidx739 = getelementptr inbounds i8, ptr %ps.1, i64 -288
  %206 = load i32, ptr %arrayidx739, align 8
  store i32 %206, ptr %copline741, align 8
  br label %sw.epilog

sw.bb742:                                         ; preds = %yyreduce
  %arrayidx743 = getelementptr inbounds i8, ptr %ps.1, i64 -144
  %207 = load i32, ptr %arrayidx743, align 8
  %arrayidx745 = getelementptr inbounds i8, ptr %ps.1, i64 -120
  %208 = load ptr, ptr %arrayidx745, align 8
  %arrayidx747 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %209 = load ptr, ptr %arrayidx747, align 8
  %arrayidx749 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %210 = load ptr, ptr %arrayidx749, align 8
  %211 = load ptr, ptr %ps.1, align 8
  %call753 = call ptr @Perl_newFOROP(i32 noundef 0, ptr noundef %208, ptr noundef %209, ptr noundef %210, ptr noundef %211) #4
  %call754 = call ptr @Perl_block_end(i32 noundef %207, ptr noundef %call753) #4
  %arrayidx755 = getelementptr inbounds i8, ptr %ps.1, i64 -192
  %212 = load i32, ptr %arrayidx755, align 8
  store i32 %212, ptr %copline757, align 8
  br label %sw.epilog

sw.bb758:                                         ; preds = %yyreduce
  %arrayidx759 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %213 = load i32, ptr %arrayidx759, align 8
  %arrayidx761 = getelementptr inbounds i8, ptr %ps.1, i64 -144
  %214 = load ptr, ptr %arrayidx761, align 8
  %call763 = call ptr @Perl_op_lvalue_flags(ptr noundef %214, i32 noundef 201, i32 noundef 0) #4
  %arrayidx764 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %215 = load ptr, ptr %arrayidx764, align 8
  %arrayidx766 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %216 = load ptr, ptr %arrayidx766, align 8
  %217 = load ptr, ptr %ps.1, align 8
  %call770 = call ptr @Perl_newFOROP(i32 noundef 0, ptr noundef %call763, ptr noundef %215, ptr noundef %216, ptr noundef %217) #4
  %call771 = call ptr @Perl_block_end(i32 noundef %213, ptr noundef %call770) #4
  %arrayidx772 = getelementptr inbounds i8, ptr %ps.1, i64 -168
  %218 = load i32, ptr %arrayidx772, align 8
  store i32 %218, ptr %copline774, align 8
  br label %sw.epilog

sw.bb775:                                         ; preds = %yyreduce
  store i16 0, ptr %in_my776, align 4
  %219 = load ptr, ptr %ps.1, align 8
  %call779 = call ptr @Perl_my_attrs(ptr noundef %219, ptr noundef null) #4
  br label %sw.epilog

sw.bb780:                                         ; preds = %yyreduce
  %arrayidx781 = getelementptr inbounds i8, ptr %ps.1, i64 -168
  %220 = load i32, ptr %arrayidx781, align 8
  %arrayidx783 = getelementptr inbounds i8, ptr %ps.1, i64 -120
  %221 = load ptr, ptr %arrayidx783, align 8
  %call785 = call ptr @Perl_newUNOP(i32 noundef 20, i32 noundef 0, ptr noundef %221) #4
  %call786 = call ptr @Perl_op_lvalue_flags(ptr noundef %call785, i32 noundef 201, i32 noundef 0) #4
  %arrayidx787 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %222 = load ptr, ptr %arrayidx787, align 8
  %arrayidx789 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %223 = load ptr, ptr %arrayidx789, align 8
  %224 = load ptr, ptr %ps.1, align 8
  %call793 = call ptr @Perl_newFOROP(i32 noundef 0, ptr noundef %call786, ptr noundef %222, ptr noundef %223, ptr noundef %224) #4
  %call794 = call ptr @Perl_block_end(i32 noundef %220, ptr noundef %call793) #4
  %arrayidx795 = getelementptr inbounds i8, ptr %ps.1, i64 -240
  %225 = load i32, ptr %arrayidx795, align 8
  store i32 %225, ptr %copline797, align 8
  br label %sw.epilog

sw.bb798:                                         ; preds = %yyreduce
  %arrayidx799 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %226 = load i32, ptr %arrayidx799, align 8
  %arrayidx801 = getelementptr inbounds i8, ptr %ps.1, i64 -144
  %227 = load ptr, ptr %arrayidx801, align 8
  %call803 = call ptr @Perl_newUNOP(i32 noundef 20, i32 noundef 0, ptr noundef %227) #4
  %call804 = call ptr @Perl_op_lvalue_flags(ptr noundef %call803, i32 noundef 201, i32 noundef 0) #4
  %arrayidx805 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %228 = load ptr, ptr %arrayidx805, align 8
  %arrayidx807 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %229 = load ptr, ptr %arrayidx807, align 8
  %230 = load ptr, ptr %ps.1, align 8
  %call811 = call ptr @Perl_newFOROP(i32 noundef 0, ptr noundef %call804, ptr noundef %228, ptr noundef %229, ptr noundef %230) #4
  %call812 = call ptr @Perl_block_end(i32 noundef %226, ptr noundef %call811) #4
  %arrayidx813 = getelementptr inbounds i8, ptr %ps.1, i64 -192
  %231 = load i32, ptr %arrayidx813, align 8
  store i32 %231, ptr %copline815, align 8
  br label %sw.epilog

sw.bb816:                                         ; preds = %yyreduce
  %arrayidx817 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %232 = load i32, ptr %arrayidx817, align 8
  %arrayidx819 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %233 = load ptr, ptr %arrayidx819, align 8
  %arrayidx821 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %234 = load ptr, ptr %arrayidx821, align 8
  %235 = load ptr, ptr %ps.1, align 8
  %call825 = call ptr @Perl_newFOROP(i32 noundef 0, ptr noundef null, ptr noundef %233, ptr noundef %234, ptr noundef %235) #4
  %call826 = call ptr @Perl_block_end(i32 noundef %232, ptr noundef %call825) #4
  %arrayidx827 = getelementptr inbounds i8, ptr %ps.1, i64 -144
  %236 = load i32, ptr %arrayidx827, align 8
  store i32 %236, ptr %copline829, align 8
  br label %sw.epilog

sw.bb830:                                         ; preds = %yyreduce
  %arrayidx831 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %237 = load ptr, ptr %arrayidx831, align 8
  %238 = load ptr, ptr %ps.1, align 8
  %call835 = call ptr @Perl_newWHILEOP(i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %237, ptr noundef %238, i32 noundef 0) #4
  br label %sw.epilog

sw.bb836:                                         ; preds = %yyreduce
  %arrayidx837 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %239 = load ptr, ptr %arrayidx837, align 8
  call void @Perl_package(ptr noundef %239) #4
  %arrayidx839 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %240 = load ptr, ptr %arrayidx839, align 8
  %tobool841.not = icmp eq ptr %240, null
  br i1 %tobool841.not, label %sw.epilog, label %if.then842

if.then842:                                       ; preds = %sw.bb836
  call void @Perl_package_version(ptr noundef nonnull %240) #4
  br label %sw.epilog

sw.bb846:                                         ; preds = %yyreduce
  %arrayidx847 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %241 = load i32, ptr %arrayidx847, align 8
  %arrayidx849 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %242 = load ptr, ptr %arrayidx849, align 8
  %call851 = call ptr @Perl_block_end(i32 noundef %241, ptr noundef %242) #4
  %call852 = call ptr @Perl_newWHILEOP(i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %call851, ptr noundef null, i32 noundef 0) #4
  %243 = load i32, ptr %copline853, align 8
  %arrayidx854 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %244 = load i32, ptr %arrayidx854, align 8
  %cmp856 = icmp ugt i32 %243, %244
  br i1 %cmp856, label %if.then858, label %sw.epilog

if.then858:                                       ; preds = %sw.bb846
  store i32 %244, ptr %copline853, align 8
  br label %sw.epilog

sw.bb863:                                         ; preds = %yyreduce
  %arrayidx864 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %245 = load ptr, ptr %arrayidx864, align 8
  br label %sw.epilog

sw.bb866:                                         ; preds = %yyreduce
  store i32 -1, ptr %copline867, align 8
  br label %sw.epilog

sw.bb868:                                         ; preds = %yyreduce
  %246 = load ptr, ptr %ps.1, align 8
  %tobool871.not = icmp eq ptr %246, null
  br i1 %tobool871.not, label %if.else878, label %if.then872

if.then872:                                       ; preds = %sw.bb868
  %arrayidx875 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %247 = load ptr, ptr %arrayidx875, align 8
  %call877 = call ptr @Perl_op_append_elem(i32 noundef 158, ptr noundef %247, ptr noundef nonnull %246) #4
  br label %if.end881

if.else878:                                       ; preds = %sw.bb868
  %arrayidx879 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %248 = load ptr, ptr %arrayidx879, align 8
  br label %if.end881

if.end881:                                        ; preds = %if.else878, %if.then872
  %list.0 = phi ptr [ %call877, %if.then872 ], [ %248, %if.else878 ]
  %249 = load i32, ptr %copline882, align 8
  %cmp883 = icmp eq i32 %249, -1
  br i1 %cmp883, label %if.then885, label %if.end891

if.then885:                                       ; preds = %if.end881
  %250 = load ptr, ptr @PL_curcop, align 8
  %cop_line = getelementptr inbounds nuw i8, ptr %250, i64 36
  %251 = load i32, ptr %cop_line, align 4
  br label %if.end891

if.end891:                                        ; preds = %if.then885, %if.end881
  %storemerge.in = phi i32 [ %251, %if.then885 ], [ %249, %if.end881 ]
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %copline882, align 8
  %call892 = call ptr @Perl_op_convert_list(i32 noundef 126, i32 noundef 0, ptr noundef %list.0) #4
  %call893 = call ptr @Perl_newSTATEOP(i32 noundef 0, ptr noundef null, ptr noundef %call892) #4
  br label %sw.epilog

sw.bb895:                                         ; preds = %yyreduce
  %arrayidx896 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %252 = load ptr, ptr %arrayidx896, align 8
  %call898 = call ptr @Perl_op_unscope(ptr noundef %252) #4
  br label %sw.epilog

sw.bb900:                                         ; preds = %yyreduce
  %253 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb903:                                         ; preds = %yyreduce
  %254 = load ptr, ptr %ps.1, align 8
  %arrayidx906 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %255 = load ptr, ptr %arrayidx906, align 8
  %call908 = call ptr @Perl_newLOGOP(i32 noundef 176, i32 noundef 0, ptr noundef %254, ptr noundef %255) #4
  br label %sw.epilog

sw.bb909:                                         ; preds = %yyreduce
  %256 = load ptr, ptr %ps.1, align 8
  %arrayidx912 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %257 = load ptr, ptr %arrayidx912, align 8
  %call914 = call ptr @Perl_newLOGOP(i32 noundef 177, i32 noundef 0, ptr noundef %256, ptr noundef %257) #4
  br label %sw.epilog

sw.bb915:                                         ; preds = %yyreduce
  %258 = load ptr, ptr %ps.1, align 8
  %call918 = call ptr @Perl_scalar(ptr noundef %258) #4
  %arrayidx919 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %259 = load ptr, ptr %arrayidx919, align 8
  %call921 = call ptr @Perl_newLOOPOP(i32 noundef 8, i32 noundef 1, ptr noundef %call918, ptr noundef %259) #4
  br label %sw.epilog

sw.bb922:                                         ; preds = %yyreduce
  %260 = load ptr, ptr %ps.1, align 8
  %arrayidx925 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %261 = load ptr, ptr %arrayidx925, align 8
  %call927 = call ptr @Perl_newLOOPOP(i32 noundef 8, i32 noundef 1, ptr noundef %260, ptr noundef %261) #4
  br label %sw.epilog

sw.bb928:                                         ; preds = %yyreduce
  %262 = load ptr, ptr %ps.1, align 8
  %arrayidx931 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %263 = load ptr, ptr %arrayidx931, align 8
  %call933 = call ptr @Perl_newFOROP(i32 noundef 0, ptr noundef null, ptr noundef %262, ptr noundef %263, ptr noundef null) #4
  %arrayidx934 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %264 = load i32, ptr %arrayidx934, align 8
  store i32 %264, ptr %copline936, align 8
  br label %sw.epilog

sw.bb937:                                         ; preds = %yyreduce
  %265 = load ptr, ptr %ps.1, align 8
  %arrayidx940 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %266 = load ptr, ptr %arrayidx940, align 8
  %call942 = call ptr @Perl_op_scope(ptr noundef %266) #4
  %call943 = call ptr @Perl_newWHENOP(ptr noundef %265, ptr noundef %call942) #4
  br label %sw.epilog

sw.bb945:                                         ; preds = %yyreduce
  %267 = load ptr, ptr %ps.1, align 8
  %op_flags = getelementptr inbounds nuw i8, ptr %267, i64 34
  %268 = load i8, ptr %op_flags, align 2
  %269 = or i8 %268, 8
  store i8 %269, ptr %op_flags, align 2
  %270 = load ptr, ptr %ps.1, align 8
  %call953 = call ptr @Perl_op_scope(ptr noundef %270) #4
  br label %sw.epilog

sw.bb954:                                         ; preds = %yyreduce
  %arrayidx955 = getelementptr inbounds i8, ptr %ps.1, i64 -120
  %271 = load i32, ptr %arrayidx955, align 8
  store i32 %271, ptr %copline957, align 8
  %arrayidx958 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %272 = load ptr, ptr %arrayidx958, align 8
  %call960 = call ptr @Perl_newSTATEOP(i32 noundef 128, ptr noundef null, ptr noundef %272) #4
  %arrayidx961 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %273 = load ptr, ptr %arrayidx961, align 8
  %call963 = call ptr @Perl_op_scope(ptr noundef %273) #4
  %274 = load ptr, ptr %ps.1, align 8
  %call966 = call ptr @Perl_newCONDOP(i32 noundef 0, ptr noundef %call960, ptr noundef %call963, ptr noundef %274) #4
  %275 = load i32, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  %or967 = or i32 %275, 256
  store i32 %or967, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  br label %sw.epilog

sw.bb969:                                         ; preds = %yyreduce
  %276 = load ptr, ptr %ps.1, align 8
  %call972 = call ptr @Perl_op_scope(ptr noundef %276) #4
  br label %sw.epilog

sw.bb973:                                         ; preds = %yyreduce
  %277 = load i32, ptr @PL_min_intro_pending, align 4
  %tobool974 = icmp ne i32 %277, 0
  %278 = load i32, ptr @PL_max_intro_pending, align 4
  %cmp975 = icmp sge i32 %278, %277
  %279 = select i1 %tobool974, i1 %cmp975, i1 false
  %280 = ptrtoint ptr %yyval.sroa.0.0.copyload to i64
  %yyval.sroa.0.0.insert.ext2264 = zext i1 %279 to i64
  %yyval.sroa.0.0.insert.mask2265 = and i64 %280, -4294967296
  %yyval.sroa.0.0.insert.insert2266 = or disjoint i64 %yyval.sroa.0.0.insert.mask2265, %yyval.sroa.0.0.insert.ext2264
  %281 = inttoptr i64 %yyval.sroa.0.0.insert.insert2266 to ptr
  %call977 = call i32 @Perl_intro_my() #4
  br label %sw.epilog

sw.bb979:                                         ; preds = %yyreduce
  call void @llvm.lifetime.start.p0(ptr nonnull %tmplval) #4
  %call980 = call ptr @Perl_scan_num(ptr noundef nonnull @.str.6, ptr noundef nonnull %tmplval) #4
  %282 = load ptr, ptr %tmplval, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %tmplval) #4
  br label %sw.epilog

sw.bb981:                                         ; preds = %yyreduce
  %283 = load ptr, ptr %ps.1, align 8
  %call984 = call ptr @Perl_scalar(ptr noundef %283) #4
  %call985 = call ptr @Perl_invert(ptr noundef %call984) #4
  br label %sw.epilog

sw.bb986:                                         ; preds = %yyreduce
  %284 = load ptr, ptr %ps.1, align 8
  %call989 = call i32 @Perl_intro_my() #4
  br label %sw.epilog

sw.bb990:                                         ; preds = %yyreduce
  %285 = load ptr, ptr %ps.1, align 8
  %call993 = call i32 @Perl_intro_my() #4
  br label %sw.epilog

sw.bb994:                                         ; preds = %yyreduce
  %286 = load ptr, ptr %ps.1, align 8
  %call997 = call i32 @Perl_intro_my() #4
  br label %sw.epilog

sw.bb998:                                         ; preds = %yyreduce
  %287 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1002:                                        ; preds = %yyreduce
  %call1003 = call i32 @Perl_start_subparse(i32 noundef 0, i32 noundef 0) #4
  %288 = ptrtoint ptr %yyval.sroa.0.0.copyload to i64
  %yyval.sroa.0.0.insert.ext2268 = zext i32 %call1003 to i64
  %yyval.sroa.0.0.insert.mask2269 = and i64 %288, -4294967296
  %yyval.sroa.0.0.insert.insert2270 = or disjoint i64 %yyval.sroa.0.0.insert.mask2269, %yyval.sroa.0.0.insert.ext2268
  %289 = inttoptr i64 %yyval.sroa.0.0.insert.insert2270 to ptr
  %290 = load ptr, ptr @PL_compcv, align 8
  call void @Perl_save_pushptr(ptr noundef %290, i32 noundef 11) #4
  br label %sw.epilog

sw.bb1004:                                        ; preds = %yyreduce
  %call1005 = call i32 @Perl_start_subparse(i32 noundef 0, i32 noundef 128) #4
  %291 = ptrtoint ptr %yyval.sroa.0.0.copyload to i64
  %yyval.sroa.0.0.insert.ext2272 = zext i32 %call1005 to i64
  %yyval.sroa.0.0.insert.mask2273 = and i64 %291, -4294967296
  %yyval.sroa.0.0.insert.insert2274 = or disjoint i64 %yyval.sroa.0.0.insert.mask2273, %yyval.sroa.0.0.insert.ext2272
  %292 = inttoptr i64 %yyval.sroa.0.0.insert.insert2274 to ptr
  %293 = load ptr, ptr @PL_compcv, align 8
  call void @Perl_save_pushptr(ptr noundef %293, i32 noundef 11) #4
  br label %sw.epilog

sw.bb1006:                                        ; preds = %yyreduce
  %call1007 = call i32 @Perl_start_subparse(i32 noundef 1, i32 noundef 0) #4
  %294 = ptrtoint ptr %yyval.sroa.0.0.copyload to i64
  %yyval.sroa.0.0.insert.ext2276 = zext i32 %call1007 to i64
  %yyval.sroa.0.0.insert.mask2277 = and i64 %294, -4294967296
  %yyval.sroa.0.0.insert.insert2278 = or disjoint i64 %yyval.sroa.0.0.insert.mask2277, %yyval.sroa.0.0.insert.ext2276
  %295 = inttoptr i64 %yyval.sroa.0.0.insert.insert2278 to ptr
  %296 = load ptr, ptr @PL_compcv, align 8
  call void @Perl_save_pushptr(ptr noundef %296, i32 noundef 11) #4
  br label %sw.epilog

sw.bb1010:                                        ; preds = %yyreduce
  %297 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1014:                                        ; preds = %yyreduce
  %298 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1018:                                        ; preds = %yyreduce
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 58, ptr noundef nonnull @.str.7) #4
  %call1019 = call ptr @Perl_parse_subsignature() #4
  br label %sw.epilog

sw.bb1020:                                        ; preds = %yyreduce
  %arrayidx1021 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %299 = load ptr, ptr %arrayidx1021, align 8
  %call1023 = call ptr @Perl_newNULLLIST() #4
  %call1024 = call ptr @Perl_sawparens(ptr noundef %call1023) #4
  %call1025 = call ptr @Perl_newSTATEOP(i32 noundef 0, ptr noundef null, ptr noundef %call1024) #4
  %call1026 = call ptr @Perl_op_append_list(i32 noundef 192, ptr noundef %299, ptr noundef %call1025) #4
  store i8 5, ptr %expect1027, align 1
  br label %sw.epilog

sw.bb1029:                                        ; preds = %yyreduce
  %arrayidx1030 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %300 = load ptr, ptr %arrayidx1030, align 8
  %301 = load ptr, ptr %ps.1, align 8
  %call1034 = call ptr @Perl_newLOGOP(i32 noundef 176, i32 noundef 0, ptr noundef %300, ptr noundef %301) #4
  br label %sw.epilog

sw.bb1035:                                        ; preds = %yyreduce
  %arrayidx1036 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %302 = load i32, ptr %arrayidx1036, align 8
  %arrayidx1038 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %303 = load ptr, ptr %arrayidx1038, align 8
  %304 = load ptr, ptr %ps.1, align 8
  %call1042 = call ptr @Perl_newLOGOP(i32 noundef %302, i32 noundef 0, ptr noundef %303, ptr noundef %304) #4
  br label %sw.epilog

sw.bb1043:                                        ; preds = %yyreduce
  %arrayidx1044 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %305 = load ptr, ptr %arrayidx1044, align 8
  %306 = load ptr, ptr %ps.1, align 8
  %call1048 = call ptr @Perl_newLOGOP(i32 noundef 179, i32 noundef 0, ptr noundef %305, ptr noundef %306) #4
  br label %sw.epilog

sw.bb1049:                                        ; preds = %yyreduce
  %arrayidx1050 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %307 = load ptr, ptr %arrayidx1050, align 8
  br label %sw.epilog

sw.bb1052:                                        ; preds = %yyreduce
  %308 = load ptr, ptr %ps.1, align 8
  %arrayidx1056 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %309 = load ptr, ptr %arrayidx1056, align 8
  %call1058 = call ptr @Perl_op_append_elem(i32 noundef 158, ptr noundef %309, ptr noundef %308) #4
  br label %sw.epilog

sw.bb1059:                                        ; preds = %yyreduce
  %arrayidx1060 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %310 = load i32, ptr %arrayidx1060, align 8
  %arrayidx1064 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %311 = load ptr, ptr %arrayidx1064, align 8
  %call1066 = call ptr @Perl_newGVREF(i32 noundef %310, ptr noundef %311) #4
  %312 = load ptr, ptr %ps.1, align 8
  %call1069 = call ptr @Perl_op_prepend_elem(i32 noundef 158, ptr noundef %call1066, ptr noundef %312) #4
  %call1070 = call ptr @Perl_op_convert_list(i32 noundef %310, i32 noundef 64, ptr noundef %call1069) #4
  br label %sw.epilog

sw.bb1071:                                        ; preds = %yyreduce
  %arrayidx1072 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %313 = load i32, ptr %arrayidx1072, align 8
  %arrayidx1076 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %314 = load ptr, ptr %arrayidx1076, align 8
  %call1078 = call ptr @Perl_newGVREF(i32 noundef %313, ptr noundef %314) #4
  %arrayidx1079 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %315 = load ptr, ptr %arrayidx1079, align 8
  %call1081 = call ptr @Perl_op_prepend_elem(i32 noundef 158, ptr noundef %call1078, ptr noundef %315) #4
  %call1082 = call ptr @Perl_op_convert_list(i32 noundef %313, i32 noundef 64, ptr noundef %call1081) #4
  br label %sw.epilog

sw.bb1083:                                        ; preds = %yyreduce
  %arrayidx1084 = getelementptr inbounds i8, ptr %ps.1, i64 -120
  %316 = load ptr, ptr %arrayidx1084, align 8
  %call1086 = call ptr @Perl_scalar(ptr noundef %316) #4
  %arrayidx1087 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %317 = load ptr, ptr %arrayidx1087, align 8
  %call1089 = call ptr @Perl_op_prepend_elem(i32 noundef 158, ptr noundef %call1086, ptr noundef %317) #4
  %arrayidx1090 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %318 = load ptr, ptr %arrayidx1090, align 8
  %call1092 = call ptr @Perl_newMETHOP(i32 noundef 184, i32 noundef 0, ptr noundef %318) #4
  %call1093 = call ptr @Perl_op_append_elem(i32 noundef 158, ptr noundef %call1089, ptr noundef %call1092) #4
  %call1094 = call ptr @Perl_op_convert_list(i32 noundef 185, i32 noundef 64, ptr noundef %call1093) #4
  br label %sw.epilog

sw.bb1095:                                        ; preds = %yyreduce
  %arrayidx1096 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %319 = load ptr, ptr %arrayidx1096, align 8
  %call1098 = call ptr @Perl_scalar(ptr noundef %319) #4
  %320 = load ptr, ptr %ps.1, align 8
  %call1101 = call ptr @Perl_newMETHOP(i32 noundef 184, i32 noundef 0, ptr noundef %320) #4
  %call1102 = call ptr @Perl_op_append_elem(i32 noundef 158, ptr noundef %call1098, ptr noundef %call1101) #4
  %call1103 = call ptr @Perl_op_convert_list(i32 noundef 185, i32 noundef 64, ptr noundef %call1102) #4
  br label %sw.epilog

sw.bb1104:                                        ; preds = %yyreduce
  %arrayidx1105 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %321 = load ptr, ptr %arrayidx1105, align 8
  %322 = load ptr, ptr %ps.1, align 8
  %call1109 = call ptr @Perl_op_prepend_elem(i32 noundef 158, ptr noundef %321, ptr noundef %322) #4
  %arrayidx1110 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %323 = load ptr, ptr %arrayidx1110, align 8
  %call1112 = call ptr @Perl_newMETHOP(i32 noundef 184, i32 noundef 0, ptr noundef %323) #4
  %call1113 = call ptr @Perl_op_append_elem(i32 noundef 158, ptr noundef %call1109, ptr noundef %call1112) #4
  %call1114 = call ptr @Perl_op_convert_list(i32 noundef 185, i32 noundef 64, ptr noundef %call1113) #4
  br label %sw.epilog

sw.bb1115:                                        ; preds = %yyreduce
  %arrayidx1116 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %324 = load ptr, ptr %arrayidx1116, align 8
  %arrayidx1118 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %325 = load ptr, ptr %arrayidx1118, align 8
  %call1120 = call ptr @Perl_op_prepend_elem(i32 noundef 158, ptr noundef %324, ptr noundef %325) #4
  %arrayidx1121 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %326 = load ptr, ptr %arrayidx1121, align 8
  %call1123 = call ptr @Perl_newMETHOP(i32 noundef 184, i32 noundef 0, ptr noundef %326) #4
  %call1124 = call ptr @Perl_op_append_elem(i32 noundef 158, ptr noundef %call1120, ptr noundef %call1123) #4
  %call1125 = call ptr @Perl_op_convert_list(i32 noundef 185, i32 noundef 64, ptr noundef %call1124) #4
  br label %sw.epilog

sw.bb1126:                                        ; preds = %yyreduce
  %arrayidx1127 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %327 = load i32, ptr %arrayidx1127, align 8
  %328 = load ptr, ptr %ps.1, align 8
  %call1131 = call ptr @Perl_op_convert_list(i32 noundef %327, i32 noundef 0, ptr noundef %328) #4
  br label %sw.epilog

sw.bb1132:                                        ; preds = %yyreduce
  %arrayidx1133 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %329 = load i32, ptr %arrayidx1133, align 8
  %arrayidx1135 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %330 = load ptr, ptr %arrayidx1135, align 8
  %call1137 = call ptr @Perl_op_convert_list(i32 noundef %329, i32 noundef 0, ptr noundef %330) #4
  br label %sw.epilog

do.body1139:                                      ; preds = %yyreduce
  %331 = load ptr, ptr @PL_compcv, align 8
  %tobool1140.not = icmp eq ptr %331, null
  br i1 %tobool1140.not, label %do.end1146, label %if.then1141

if.then1141:                                      ; preds = %do.body1139
  %sv_refcnt1142 = getelementptr inbounds nuw i8, ptr %331, i64 8
  %332 = load i32, ptr %sv_refcnt1142, align 8
  %inc1143 = add i32 %332, 1
  store i32 %inc1143, ptr %sv_refcnt1142, align 8
  br label %do.end1146

do.end1146:                                       ; preds = %if.then1141, %do.body1139
  %arrayidx1147 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %333 = load i32, ptr %arrayidx1147, align 8
  %334 = load ptr, ptr %ps.1, align 8
  %call1151 = call ptr @Perl_newANONATTRSUB(i32 noundef %333, ptr noundef null, ptr noundef null, ptr noundef %334) #4
  br label %sw.epilog

sw.bb1152:                                        ; preds = %yyreduce
  %arrayidx1153 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %335 = load ptr, ptr %arrayidx1153, align 8
  %336 = load ptr, ptr %ps.1, align 8
  %call1157 = call ptr @Perl_op_prepend_elem(i32 noundef 158, ptr noundef %335, ptr noundef %336) #4
  %arrayidx1158 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %337 = load ptr, ptr %arrayidx1158, align 8
  %call1160 = call ptr @Perl_op_append_elem(i32 noundef 158, ptr noundef %call1157, ptr noundef %337) #4
  %call1161 = call ptr @Perl_newUNOP(i32 noundef 185, i32 noundef 64, ptr noundef %call1160) #4
  br label %sw.epilog

sw.bb1162:                                        ; preds = %yyreduce
  %arrayidx1163 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %338 = load ptr, ptr %arrayidx1163, align 8
  %arrayidx1165 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %339 = load ptr, ptr %arrayidx1165, align 8
  %call1167 = call ptr @Perl_scalar(ptr noundef %339) #4
  %call1168 = call ptr @Perl_newBINOP(i32 noundef 8, i32 noundef 0, ptr noundef %338, ptr noundef %call1167) #4
  br label %sw.epilog

sw.bb1169:                                        ; preds = %yyreduce
  %arrayidx1170 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %340 = load ptr, ptr %arrayidx1170, align 8
  %call1172 = call ptr @Perl_oopsAV(ptr noundef %340) #4
  %arrayidx1173 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %341 = load ptr, ptr %arrayidx1173, align 8
  %call1175 = call ptr @Perl_scalar(ptr noundef %341) #4
  %call1176 = call ptr @Perl_newBINOP(i32 noundef 138, i32 noundef 0, ptr noundef %call1172, ptr noundef %call1175) #4
  br label %sw.epilog

sw.bb1177:                                        ; preds = %yyreduce
  %arrayidx1178 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %342 = load ptr, ptr %arrayidx1178, align 8
  %call1180 = call ptr @Perl_newAVREF(ptr noundef %342) #4
  %call1181 = call ptr @Perl_doref(ptr noundef %call1180, i32 noundef 135, i1 noundef zeroext true) #4
  %arrayidx1182 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %343 = load ptr, ptr %arrayidx1182, align 8
  %call1184 = call ptr @Perl_scalar(ptr noundef %343) #4
  %call1185 = call ptr @Perl_newBINOP(i32 noundef 138, i32 noundef 0, ptr noundef %call1181, ptr noundef %call1184) #4
  br label %sw.epilog

sw.bb1186:                                        ; preds = %yyreduce
  %arrayidx1187 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %344 = load ptr, ptr %arrayidx1187, align 8
  %call1189 = call ptr @Perl_newAVREF(ptr noundef %344) #4
  %call1190 = call ptr @Perl_doref(ptr noundef %call1189, i32 noundef 135, i1 noundef zeroext true) #4
  %arrayidx1191 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %345 = load ptr, ptr %arrayidx1191, align 8
  %call1193 = call ptr @Perl_scalar(ptr noundef %345) #4
  %call1194 = call ptr @Perl_newBINOP(i32 noundef 138, i32 noundef 0, ptr noundef %call1190, ptr noundef %call1193) #4
  br label %sw.epilog

sw.bb1195:                                        ; preds = %yyreduce
  %arrayidx1196 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %346 = load ptr, ptr %arrayidx1196, align 8
  %call1198 = call ptr @Perl_oopsHV(ptr noundef %346) #4
  %arrayidx1199 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %347 = load ptr, ptr %arrayidx1199, align 8
  %call1201 = call ptr @Perl_jmaybe(ptr noundef %347) #4
  %call1202 = call ptr @Perl_newBINOP(i32 noundef 150, i32 noundef 0, ptr noundef %call1198, ptr noundef %call1201) #4
  br label %sw.epilog

sw.bb1203:                                        ; preds = %yyreduce
  %arrayidx1204 = getelementptr inbounds i8, ptr %ps.1, i64 -120
  %348 = load ptr, ptr %arrayidx1204, align 8
  %call1206 = call ptr @Perl_newHVREF(ptr noundef %348) #4
  %call1207 = call ptr @Perl_doref(ptr noundef %call1206, i32 noundef 149, i1 noundef zeroext true) #4
  %arrayidx1208 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %349 = load ptr, ptr %arrayidx1208, align 8
  %call1210 = call ptr @Perl_jmaybe(ptr noundef %349) #4
  %call1211 = call ptr @Perl_newBINOP(i32 noundef 150, i32 noundef 0, ptr noundef %call1207, ptr noundef %call1210) #4
  br label %sw.epilog

sw.bb1212:                                        ; preds = %yyreduce
  %arrayidx1213 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %350 = load ptr, ptr %arrayidx1213, align 8
  %call1215 = call ptr @Perl_newHVREF(ptr noundef %350) #4
  %call1216 = call ptr @Perl_doref(ptr noundef %call1215, i32 noundef 149, i1 noundef zeroext true) #4
  %arrayidx1217 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %351 = load ptr, ptr %arrayidx1217, align 8
  %call1219 = call ptr @Perl_jmaybe(ptr noundef %351) #4
  %call1220 = call ptr @Perl_newBINOP(i32 noundef 150, i32 noundef 0, ptr noundef %call1216, ptr noundef %call1219) #4
  br label %sw.epilog

sw.bb1221:                                        ; preds = %yyreduce
  %arrayidx1222 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %352 = load ptr, ptr %arrayidx1222, align 8
  %call1224 = call ptr @Perl_scalar(ptr noundef %352) #4
  %call1225 = call ptr @Perl_newCVREF(i32 noundef 0, ptr noundef %call1224) #4
  %call1226 = call ptr @Perl_newUNOP(i32 noundef 185, i32 noundef 64, ptr noundef %call1225) #4
  br label %sw.epilog

sw.bb1227:                                        ; preds = %yyreduce
  %arrayidx1228 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %353 = load ptr, ptr %arrayidx1228, align 8
  %arrayidx1230 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %354 = load ptr, ptr %arrayidx1230, align 8
  %call1232 = call ptr @Perl_scalar(ptr noundef %354) #4
  %call1233 = call ptr @Perl_newCVREF(i32 noundef 0, ptr noundef %call1232) #4
  %call1234 = call ptr @Perl_op_append_elem(i32 noundef 158, ptr noundef %353, ptr noundef %call1233) #4
  %call1235 = call ptr @Perl_newUNOP(i32 noundef 185, i32 noundef 64, ptr noundef %call1234) #4
  br label %sw.epilog

sw.bb1236:                                        ; preds = %yyreduce
  %arrayidx1237 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %355 = load ptr, ptr %arrayidx1237, align 8
  %arrayidx1239 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %356 = load ptr, ptr %arrayidx1239, align 8
  %call1241 = call ptr @Perl_scalar(ptr noundef %356) #4
  %call1242 = call ptr @Perl_newCVREF(i32 noundef 0, ptr noundef %call1241) #4
  %call1243 = call ptr @Perl_op_append_elem(i32 noundef 158, ptr noundef %355, ptr noundef %call1242) #4
  %call1244 = call ptr @Perl_newUNOP(i32 noundef 185, i32 noundef 64, ptr noundef %call1243) #4
  br label %sw.epilog

sw.bb1245:                                        ; preds = %yyreduce
  %arrayidx1246 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %357 = load ptr, ptr %arrayidx1246, align 8
  %call1248 = call ptr @Perl_scalar(ptr noundef %357) #4
  %call1249 = call ptr @Perl_newCVREF(i32 noundef 0, ptr noundef %call1248) #4
  %call1250 = call ptr @Perl_newUNOP(i32 noundef 185, i32 noundef 64, ptr noundef %call1249) #4
  br label %sw.epilog

sw.bb1251:                                        ; preds = %yyreduce
  %arrayidx1252 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %358 = load ptr, ptr %arrayidx1252, align 8
  %arrayidx1254 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %359 = load ptr, ptr %arrayidx1254, align 8
  %call1256 = call ptr @Perl_newSLICEOP(i32 noundef 0, ptr noundef %358, ptr noundef %359) #4
  br label %sw.epilog

sw.bb1257:                                        ; preds = %yyreduce
  %arrayidx1258 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %360 = load ptr, ptr %arrayidx1258, align 8
  %arrayidx1260 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %361 = load ptr, ptr %arrayidx1260, align 8
  %call1262 = call ptr @Perl_newSLICEOP(i32 noundef 0, ptr noundef %360, ptr noundef %361) #4
  br label %sw.epilog

sw.bb1263:                                        ; preds = %yyreduce
  %arrayidx1264 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %362 = load ptr, ptr %arrayidx1264, align 8
  %call1266 = call ptr @Perl_newSLICEOP(i32 noundef 0, ptr noundef %362, ptr noundef null) #4
  br label %sw.epilog

sw.bb1267:                                        ; preds = %yyreduce
  %arrayidx1268 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %363 = load ptr, ptr %arrayidx1268, align 8
  %arrayidx1270 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %364 = load i32, ptr %arrayidx1270, align 8
  %365 = load ptr, ptr %ps.1, align 8
  %call1274 = call ptr @Perl_newASSIGNOP(i32 noundef 64, ptr noundef %363, i32 noundef %364, ptr noundef %365) #4
  br label %sw.epilog

sw.bb1275:                                        ; preds = %yyreduce
  %arrayidx1276 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %366 = load i32, ptr %arrayidx1276, align 8
  %arrayidx1278 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %367 = load ptr, ptr %arrayidx1278, align 8
  %call1280 = call ptr @Perl_scalar(ptr noundef %367) #4
  %368 = load ptr, ptr %ps.1, align 8
  %call1283 = call ptr @Perl_scalar(ptr noundef %368) #4
  %call1284 = call ptr @Perl_newBINOP(i32 noundef %366, i32 noundef 0, ptr noundef %call1280, ptr noundef %call1283) #4
  br label %sw.epilog

sw.bb1285:                                        ; preds = %yyreduce
  %arrayidx1286 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %369 = load i32, ptr %arrayidx1286, align 8
  %cmp1288.not = icmp eq i32 %369, 62
  br i1 %cmp1288.not, label %if.end1294, label %if.then1290

if.then1290:                                      ; preds = %sw.bb1285
  %arrayidx1291 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %370 = load ptr, ptr %arrayidx1291, align 8
  %call1293 = call ptr @Perl_scalar(ptr noundef %370) #4
  br label %if.end1294

if.end1294:                                       ; preds = %if.then1290, %sw.bb1285
  %371 = load i32, ptr %arrayidx1286, align 8
  %arrayidx1297 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %372 = load ptr, ptr %arrayidx1297, align 8
  %373 = load ptr, ptr %ps.1, align 8
  %call1301 = call ptr @Perl_scalar(ptr noundef %373) #4
  %call1302 = call ptr @Perl_newBINOP(i32 noundef %371, i32 noundef 0, ptr noundef %372, ptr noundef %call1301) #4
  br label %sw.epilog

sw.bb1303:                                        ; preds = %yyreduce
  %arrayidx1304 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %374 = load i32, ptr %arrayidx1304, align 8
  %arrayidx1306 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %375 = load ptr, ptr %arrayidx1306, align 8
  %call1308 = call ptr @Perl_scalar(ptr noundef %375) #4
  %376 = load ptr, ptr %ps.1, align 8
  %call1311 = call ptr @Perl_scalar(ptr noundef %376) #4
  %call1312 = call ptr @Perl_newBINOP(i32 noundef %374, i32 noundef 0, ptr noundef %call1308, ptr noundef %call1311) #4
  br label %sw.epilog

sw.bb1313:                                        ; preds = %yyreduce
  %arrayidx1314 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %377 = load i32, ptr %arrayidx1314, align 8
  %arrayidx1316 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %378 = load ptr, ptr %arrayidx1316, align 8
  %call1318 = call ptr @Perl_scalar(ptr noundef %378) #4
  %379 = load ptr, ptr %ps.1, align 8
  %call1321 = call ptr @Perl_scalar(ptr noundef %379) #4
  %call1322 = call ptr @Perl_newBINOP(i32 noundef %377, i32 noundef 0, ptr noundef %call1318, ptr noundef %call1321) #4
  br label %sw.epilog

sw.bb1323:                                        ; preds = %yyreduce
  %arrayidx1324 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %380 = load i32, ptr %arrayidx1324, align 8
  %arrayidx1326 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %381 = load ptr, ptr %arrayidx1326, align 8
  %call1328 = call ptr @Perl_scalar(ptr noundef %381) #4
  %382 = load ptr, ptr %ps.1, align 8
  %call1331 = call ptr @Perl_scalar(ptr noundef %382) #4
  %call1332 = call ptr @Perl_newBINOP(i32 noundef %380, i32 noundef 0, ptr noundef %call1328, ptr noundef %call1331) #4
  br label %sw.epilog

sw.bb1333:                                        ; preds = %yyreduce
  %arrayidx1334 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %383 = load i32, ptr %arrayidx1334, align 8
  %arrayidx1336 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %384 = load ptr, ptr %arrayidx1336, align 8
  %call1338 = call ptr @Perl_scalar(ptr noundef %384) #4
  %385 = load ptr, ptr %ps.1, align 8
  %call1341 = call ptr @Perl_scalar(ptr noundef %385) #4
  %call1342 = call ptr @Perl_newBINOP(i32 noundef %383, i32 noundef 0, ptr noundef %call1338, ptr noundef %call1341) #4
  br label %sw.epilog

sw.bb1343:                                        ; preds = %yyreduce
  %arrayidx1344 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %386 = load i32, ptr %arrayidx1344, align 8
  %arrayidx1346 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %387 = load ptr, ptr %arrayidx1346, align 8
  %call1348 = call ptr @Perl_scalar(ptr noundef %387) #4
  %388 = load ptr, ptr %ps.1, align 8
  %call1351 = call ptr @Perl_scalar(ptr noundef %388) #4
  %call1352 = call ptr @Perl_newBINOP(i32 noundef %386, i32 noundef 0, ptr noundef %call1348, ptr noundef %call1351) #4
  br label %sw.epilog

sw.bb1353:                                        ; preds = %yyreduce
  %arrayidx1354 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %389 = load i32, ptr %arrayidx1354, align 8
  %arrayidx1356 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %390 = load ptr, ptr %arrayidx1356, align 8
  %call1358 = call ptr @Perl_scalar(ptr noundef %390) #4
  %391 = load ptr, ptr %ps.1, align 8
  %call1361 = call ptr @Perl_scalar(ptr noundef %391) #4
  %call1362 = call ptr @Perl_newBINOP(i32 noundef %389, i32 noundef 0, ptr noundef %call1358, ptr noundef %call1361) #4
  br label %sw.epilog

sw.bb1363:                                        ; preds = %yyreduce
  %arrayidx1364 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %392 = load i32, ptr %arrayidx1364, align 8
  %arrayidx1366 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %393 = load ptr, ptr %arrayidx1366, align 8
  %call1368 = call ptr @Perl_scalar(ptr noundef %393) #4
  %394 = load ptr, ptr %ps.1, align 8
  %call1371 = call ptr @Perl_scalar(ptr noundef %394) #4
  %call1372 = call ptr @Perl_newRANGE(i32 noundef %392, ptr noundef %call1368, ptr noundef %call1371) #4
  br label %sw.epilog

sw.bb1373:                                        ; preds = %yyreduce
  %arrayidx1374 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %395 = load ptr, ptr %arrayidx1374, align 8
  %396 = load ptr, ptr %ps.1, align 8
  %call1378 = call ptr @Perl_newLOGOP(i32 noundef 176, i32 noundef 0, ptr noundef %395, ptr noundef %396) #4
  br label %sw.epilog

sw.bb1379:                                        ; preds = %yyreduce
  %arrayidx1380 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %397 = load ptr, ptr %arrayidx1380, align 8
  %398 = load ptr, ptr %ps.1, align 8
  %call1384 = call ptr @Perl_newLOGOP(i32 noundef 177, i32 noundef 0, ptr noundef %397, ptr noundef %398) #4
  br label %sw.epilog

sw.bb1385:                                        ; preds = %yyreduce
  %arrayidx1386 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %399 = load ptr, ptr %arrayidx1386, align 8
  %400 = load ptr, ptr %ps.1, align 8
  %call1390 = call ptr @Perl_newLOGOP(i32 noundef 179, i32 noundef 0, ptr noundef %399, ptr noundef %400) #4
  br label %sw.epilog

sw.bb1391:                                        ; preds = %yyreduce
  %arrayidx1392 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %401 = load i32, ptr %arrayidx1392, align 8
  %arrayidx1394 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %402 = load ptr, ptr %arrayidx1394, align 8
  %403 = load ptr, ptr %ps.1, align 8
  %call1398 = call ptr @Perl_bind_match(i32 noundef %401, ptr noundef %402, ptr noundef %403) #4
  br label %sw.epilog

sw.bb1399:                                        ; preds = %yyreduce
  %404 = load ptr, ptr %ps.1, align 8
  %call1402 = call ptr @Perl_scalar(ptr noundef %404) #4
  %call1403 = call ptr @Perl_newUNOP(i32 noundef 101, i32 noundef 0, ptr noundef %call1402) #4
  br label %sw.epilog

sw.bb1404:                                        ; preds = %yyreduce
  %405 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1407:                                        ; preds = %yyreduce
  %406 = load ptr, ptr %ps.1, align 8
  %call1410 = call ptr @Perl_scalar(ptr noundef %406) #4
  %call1411 = call ptr @Perl_newUNOP(i32 noundef 103, i32 noundef 0, ptr noundef %call1410) #4
  br label %sw.epilog

sw.bb1412:                                        ; preds = %yyreduce
  %arrayidx1413 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %407 = load i32, ptr %arrayidx1413, align 8
  %408 = load ptr, ptr %ps.1, align 8
  %call1417 = call ptr @Perl_scalar(ptr noundef %408) #4
  %call1418 = call ptr @Perl_newUNOP(i32 noundef %407, i32 noundef 0, ptr noundef %call1417) #4
  br label %sw.epilog

sw.bb1419:                                        ; preds = %yyreduce
  %arrayidx1420 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %409 = load ptr, ptr %arrayidx1420, align 8
  %call1422 = call ptr @Perl_scalar(ptr noundef %409) #4
  %call1423 = call ptr @Perl_op_lvalue_flags(ptr noundef %call1422, i32 noundef 51, i32 noundef 0) #4
  %call1424 = call ptr @Perl_newUNOP(i32 noundef 51, i32 noundef 0, ptr noundef %call1423) #4
  br label %sw.epilog

sw.bb1425:                                        ; preds = %yyreduce
  %arrayidx1426 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %410 = load ptr, ptr %arrayidx1426, align 8
  %call1428 = call ptr @Perl_scalar(ptr noundef %410) #4
  %call1429 = call ptr @Perl_op_lvalue_flags(ptr noundef %call1428, i32 noundef 53, i32 noundef 0) #4
  %call1430 = call ptr @Perl_newUNOP(i32 noundef 53, i32 noundef 0, ptr noundef %call1429) #4
  br label %sw.epilog

sw.bb1431:                                        ; preds = %yyreduce
  %call1432 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.8, i64 noundef 1) #4
  %call1433 = call ptr @Perl_newSVOP(i32 noundef 5, i32 noundef 0, ptr noundef %call1432) #4
  %call1434 = call ptr @Perl_scalar(ptr noundef %call1433) #4
  %call1435 = call ptr @Perl_newSVREF(ptr noundef %call1434) #4
  %arrayidx1436 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %411 = load ptr, ptr %arrayidx1436, align 8
  %call1438 = call ptr @Perl_op_append_elem(i32 noundef 158, ptr noundef %call1435, ptr noundef %411) #4
  %call1439 = call ptr @Perl_op_convert_list(i32 noundef 157, i32 noundef 0, ptr noundef %call1438) #4
  br label %sw.epilog

sw.bb1440:                                        ; preds = %yyreduce
  %412 = load ptr, ptr %ps.1, align 8
  %call1443 = call ptr @Perl_scalar(ptr noundef %412) #4
  %call1444 = call ptr @Perl_op_lvalue_flags(ptr noundef %call1443, i32 noundef 47, i32 noundef 0) #4
  %call1445 = call ptr @Perl_newUNOP(i32 noundef 47, i32 noundef 0, ptr noundef %call1444) #4
  br label %sw.epilog

sw.bb1446:                                        ; preds = %yyreduce
  %413 = load ptr, ptr %ps.1, align 8
  %call1449 = call ptr @Perl_scalar(ptr noundef %413) #4
  %call1450 = call ptr @Perl_op_lvalue_flags(ptr noundef %call1449, i32 noundef 49, i32 noundef 0) #4
  %call1451 = call ptr @Perl_newUNOP(i32 noundef 49, i32 noundef 0, ptr noundef %call1450) #4
  br label %sw.epilog

sw.bb1452:                                        ; preds = %yyreduce
  %arrayidx1453 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %414 = load ptr, ptr %arrayidx1453, align 8
  %call1455 = call ptr @Perl_newANONLIST(ptr noundef %414) #4
  br label %sw.epilog

sw.bb1456:                                        ; preds = %yyreduce
  %call1457 = call ptr @Perl_newANONLIST(ptr noundef null) #4
  br label %sw.epilog

sw.bb1458:                                        ; preds = %yyreduce
  %arrayidx1459 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %415 = load ptr, ptr %arrayidx1459, align 8
  %call1461 = call ptr @Perl_newANONHASH(ptr noundef %415) #4
  br label %sw.epilog

sw.bb1462:                                        ; preds = %yyreduce
  %call1463 = call ptr @Perl_newANONHASH(ptr noundef null) #4
  br label %sw.epilog

do.body1465:                                      ; preds = %yyreduce
  %416 = load ptr, ptr @PL_compcv, align 8
  %tobool1466.not = icmp eq ptr %416, null
  br i1 %tobool1466.not, label %do.end1472, label %if.then1467

if.then1467:                                      ; preds = %do.body1465
  %sv_refcnt1468 = getelementptr inbounds nuw i8, ptr %416, i64 8
  %417 = load i32, ptr %sv_refcnt1468, align 8
  %inc1469 = add i32 %417, 1
  store i32 %inc1469, ptr %sv_refcnt1468, align 8
  br label %do.end1472

do.end1472:                                       ; preds = %if.then1467, %do.body1465
  %arrayidx1473 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %418 = load i32, ptr %arrayidx1473, align 8
  %arrayidx1475 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %419 = load ptr, ptr %arrayidx1475, align 8
  %arrayidx1477 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %420 = load ptr, ptr %arrayidx1477, align 8
  %421 = load ptr, ptr %ps.1, align 8
  %call1481 = call ptr @Perl_newANONATTRSUB(i32 noundef %418, ptr noundef %419, ptr noundef %420, ptr noundef %421) #4
  br label %sw.epilog

sw.bb1482:                                        ; preds = %yyreduce
  %422 = load i32, ptr %copline1484, align 8
  %arrayidx1485 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %423 = load i32, ptr %arrayidx1485, align 8
  %cmp1487 = icmp ugt i32 %422, %423
  br i1 %cmp1487, label %if.then1489, label %if.end1493

if.then1489:                                      ; preds = %sw.bb1482
  store i32 %423, ptr %copline1484, align 8
  br label %if.end1493

if.end1493:                                       ; preds = %if.then1489, %sw.bb1482
  %arrayidx1494 = getelementptr inbounds i8, ptr %ps.1, i64 -120
  %424 = load i32, ptr %arrayidx1494, align 8
  %arrayidx1496 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %425 = load ptr, ptr %arrayidx1496, align 8
  %arrayidx1498 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %426 = load ptr, ptr %arrayidx1498, align 8
  %call1500 = call ptr @Perl_op_append_list(i32 noundef 192, ptr noundef %425, ptr noundef %426) #4
  %call1501 = call ptr @Perl_block_end(i32 noundef %424, ptr noundef %call1500) #4
  %427 = load ptr, ptr @PL_compcv, align 8
  %tobool1503.not = icmp eq ptr %427, null
  br i1 %tobool1503.not, label %do.end1509, label %if.then1504

if.then1504:                                      ; preds = %if.end1493
  %sv_refcnt1505 = getelementptr inbounds nuw i8, ptr %427, i64 8
  %428 = load i32, ptr %sv_refcnt1505, align 8
  %inc1506 = add i32 %428, 1
  store i32 %inc1506, ptr %sv_refcnt1505, align 8
  br label %do.end1509

do.end1509:                                       ; preds = %if.then1504, %if.end1493
  %arrayidx1510 = getelementptr inbounds i8, ptr %ps.1, i64 -144
  %429 = load i32, ptr %arrayidx1510, align 8
  %arrayidx1512 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %430 = load ptr, ptr %arrayidx1512, align 8
  %call1514 = call ptr @Perl_newANONATTRSUB(i32 noundef %429, ptr noundef null, ptr noundef %430, ptr noundef %call1501) #4
  br label %sw.epilog

sw.bb1515:                                        ; preds = %yyreduce
  %431 = load ptr, ptr %ps.1, align 8
  %arrayidx1518 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %432 = load i32, ptr %arrayidx1518, align 8
  %call1520 = call ptr @Perl_dofile(ptr noundef %431, i32 noundef %432) #4
  br label %sw.epilog

sw.bb1521:                                        ; preds = %yyreduce
  %433 = load ptr, ptr %ps.1, align 8
  %call1524 = call ptr @Perl_op_scope(ptr noundef %433) #4
  %call1525 = call ptr @Perl_newUNOP(i32 noundef 0, i32 noundef 128, ptr noundef %call1524) #4
  br label %sw.epilog

sw.bb1526:                                        ; preds = %yyreduce
  %arrayidx1527 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %434 = load ptr, ptr %arrayidx1527, align 8
  %arrayidx1529 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %435 = load ptr, ptr %arrayidx1529, align 8
  %436 = load ptr, ptr %ps.1, align 8
  %call1533 = call ptr @Perl_newCONDOP(i32 noundef 0, ptr noundef %434, ptr noundef %435, ptr noundef %436) #4
  br label %sw.epilog

sw.bb1534:                                        ; preds = %yyreduce
  %437 = load ptr, ptr %ps.1, align 8
  %call1537 = call ptr @Perl_newUNOP(i32 noundef 20, i32 noundef 0, ptr noundef %437) #4
  br label %sw.epilog

sw.bb1538:                                        ; preds = %yyreduce
  %438 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1541:                                        ; preds = %yyreduce
  %439 = load ptr, ptr %ps.1, align 8
  %arrayidx1544 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %440 = load i32, ptr %arrayidx1544, align 8
  %call1546 = call ptr @Perl_localize(ptr noundef %439, i32 noundef %440) #4
  br label %sw.epilog

sw.bb1547:                                        ; preds = %yyreduce
  %arrayidx1548 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %441 = load ptr, ptr %arrayidx1548, align 8
  %call1550 = call ptr @Perl_sawparens(ptr noundef %441) #4
  br label %sw.epilog

sw.bb1551:                                        ; preds = %yyreduce
  %442 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1554:                                        ; preds = %yyreduce
  %call1555 = call ptr @Perl_newNULLLIST() #4
  %call1556 = call ptr @Perl_sawparens(ptr noundef %call1555) #4
  br label %sw.epilog

sw.bb1557:                                        ; preds = %yyreduce
  %443 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1560:                                        ; preds = %yyreduce
  %444 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1563:                                        ; preds = %yyreduce
  %445 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1566:                                        ; preds = %yyreduce
  %446 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1569:                                        ; preds = %yyreduce
  %447 = load ptr, ptr %ps.1, align 8
  %call1572 = call ptr @Perl_doref(ptr noundef %447, i32 noundef 16, i1 noundef zeroext true) #4
  %call1573 = call ptr @Perl_newUNOP(i32 noundef 16, i32 noundef 0, ptr noundef %call1572) #4
  br label %sw.epilog

sw.bb1574:                                        ; preds = %yyreduce
  %448 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1577:                                        ; preds = %yyreduce
  %call1578 = call ptr @Perl_newOP(i32 noundef 3, i32 noundef 0) #4
  %arrayidx1579 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %449 = load ptr, ptr %arrayidx1579, align 8
  %call1581 = call ptr @Perl_list(ptr noundef %449) #4
  %arrayidx1582 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %450 = load ptr, ptr %arrayidx1582, align 8
  %call1584 = call ptr @Perl_doref(ptr noundef %450, i32 noundef 139, i1 noundef zeroext true) #4
  %call1585 = call ptr @Perl_newLISTOP(i32 noundef 139, i32 noundef 0, ptr noundef %call1581, ptr noundef %call1584) #4
  %call1586 = call ptr @Perl_op_prepend_elem(i32 noundef 139, ptr noundef %call1578, ptr noundef %call1585) #4
  %tobool1587.not = icmp eq ptr %call1586, null
  br i1 %tobool1587.not, label %sw.epilog, label %land.lhs.true1588

land.lhs.true1588:                                ; preds = %sw.bb1577
  %451 = load ptr, ptr %arrayidx1582, align 8
  %tobool1591.not = icmp eq ptr %451, null
  br i1 %tobool1591.not, label %sw.epilog, label %if.then1592

if.then1592:                                      ; preds = %land.lhs.true1588
  %op_private = getelementptr inbounds nuw i8, ptr %451, i64 35
  %452 = load i8, ptr %op_private, align 1
  %453 = and i8 %452, 4
  %op_private1597 = getelementptr inbounds nuw i8, ptr %call1586, i64 35
  %454 = load i8, ptr %op_private1597, align 1
  %or15992940 = or i8 %454, %453
  store i8 %or15992940, ptr %op_private1597, align 1
  br label %sw.epilog

sw.bb1602:                                        ; preds = %yyreduce
  %call1603 = call ptr @Perl_newOP(i32 noundef 3, i32 noundef 0) #4
  %arrayidx1604 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %455 = load ptr, ptr %arrayidx1604, align 8
  %call1606 = call ptr @Perl_list(ptr noundef %455) #4
  %arrayidx1607 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %456 = load ptr, ptr %arrayidx1607, align 8
  %call1609 = call ptr @Perl_oopsAV(ptr noundef %456) #4
  %call1610 = call ptr @Perl_doref(ptr noundef %call1609, i32 noundef 140, i1 noundef zeroext true) #4
  %call1611 = call ptr @Perl_newLISTOP(i32 noundef 140, i32 noundef 0, ptr noundef %call1606, ptr noundef %call1610) #4
  %call1612 = call ptr @Perl_op_prepend_elem(i32 noundef 140, ptr noundef %call1603, ptr noundef %call1611) #4
  %tobool1613.not = icmp eq ptr %call1612, null
  br i1 %tobool1613.not, label %sw.epilog, label %land.lhs.true1614

land.lhs.true1614:                                ; preds = %sw.bb1602
  %457 = load ptr, ptr %arrayidx1607, align 8
  %tobool1617.not = icmp eq ptr %457, null
  br i1 %tobool1617.not, label %sw.epilog, label %if.then1618

if.then1618:                                      ; preds = %land.lhs.true1614
  %op_private1621 = getelementptr inbounds nuw i8, ptr %457, i64 35
  %458 = load i8, ptr %op_private1621, align 1
  %459 = and i8 %458, 4
  %op_private1624 = getelementptr inbounds nuw i8, ptr %call1612, i64 35
  %460 = load i8, ptr %op_private1624, align 1
  %or16262939 = or i8 %460, %459
  store i8 %or16262939, ptr %op_private1624, align 1
  br label %sw.epilog

sw.bb1629:                                        ; preds = %yyreduce
  %call1630 = call ptr @Perl_newOP(i32 noundef 3, i32 noundef 0) #4
  %arrayidx1631 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %461 = load ptr, ptr %arrayidx1631, align 8
  %call1633 = call ptr @Perl_list(ptr noundef %461) #4
  %arrayidx1634 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %462 = load ptr, ptr %arrayidx1634, align 8
  %call1636 = call ptr @Perl_oopsHV(ptr noundef %462) #4
  %call1637 = call ptr @Perl_doref(ptr noundef %call1636, i32 noundef 151, i1 noundef zeroext true) #4
  %call1638 = call ptr @Perl_newLISTOP(i32 noundef 151, i32 noundef 0, ptr noundef %call1633, ptr noundef %call1637) #4
  %call1639 = call ptr @Perl_op_prepend_elem(i32 noundef 151, ptr noundef %call1630, ptr noundef %call1638) #4
  %tobool1640.not = icmp eq ptr %call1639, null
  br i1 %tobool1640.not, label %sw.epilog, label %land.lhs.true1641

land.lhs.true1641:                                ; preds = %sw.bb1629
  %463 = load ptr, ptr %arrayidx1634, align 8
  %tobool1644.not = icmp eq ptr %463, null
  br i1 %tobool1644.not, label %sw.epilog, label %if.then1645

if.then1645:                                      ; preds = %land.lhs.true1641
  %op_private1648 = getelementptr inbounds nuw i8, ptr %463, i64 35
  %464 = load i8, ptr %op_private1648, align 1
  %465 = and i8 %464, 4
  %op_private1651 = getelementptr inbounds nuw i8, ptr %call1639, i64 35
  %466 = load i8, ptr %op_private1651, align 1
  %or16532938 = or i8 %466, %465
  store i8 %or16532938, ptr %op_private1651, align 1
  br label %sw.epilog

sw.bb1656:                                        ; preds = %yyreduce
  %call1657 = call ptr @Perl_newOP(i32 noundef 3, i32 noundef 0) #4
  %arrayidx1658 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %467 = load ptr, ptr %arrayidx1658, align 8
  %call1660 = call ptr @Perl_list(ptr noundef %467) #4
  %arrayidx1661 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %468 = load ptr, ptr %arrayidx1661, align 8
  %call1663 = call ptr @Perl_doref(ptr noundef %468, i32 noundef 152, i1 noundef zeroext true) #4
  %call1664 = call ptr @Perl_newLISTOP(i32 noundef 152, i32 noundef 0, ptr noundef %call1660, ptr noundef %call1663) #4
  %call1665 = call ptr @Perl_op_prepend_elem(i32 noundef 152, ptr noundef %call1657, ptr noundef %call1664) #4
  %tobool1666.not = icmp eq ptr %call1665, null
  br i1 %tobool1666.not, label %sw.epilog, label %land.lhs.true1667

land.lhs.true1667:                                ; preds = %sw.bb1656
  %469 = load ptr, ptr %arrayidx1661, align 8
  %tobool1670.not = icmp eq ptr %469, null
  br i1 %tobool1670.not, label %sw.epilog, label %if.then1671

if.then1671:                                      ; preds = %land.lhs.true1667
  %op_private1674 = getelementptr inbounds nuw i8, ptr %469, i64 35
  %470 = load i8, ptr %op_private1674, align 1
  %471 = and i8 %470, 4
  %op_private1677 = getelementptr inbounds nuw i8, ptr %call1665, i64 35
  %472 = load i8, ptr %op_private1677, align 1
  %or16792937 = or i8 %472, %471
  store i8 %or16792937, ptr %op_private1677, align 1
  br label %sw.epilog

sw.bb1682:                                        ; preds = %yyreduce
  %473 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1685:                                        ; preds = %yyreduce
  %474 = load ptr, ptr %ps.1, align 8
  %call1688 = call ptr @Perl_scalar(ptr noundef %474) #4
  %call1689 = call ptr @Perl_newUNOP(i32 noundef 185, i32 noundef 0, ptr noundef %call1688) #4
  br label %sw.epilog

sw.bb1690:                                        ; preds = %yyreduce
  %arrayidx1691 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %475 = load ptr, ptr %arrayidx1691, align 8
  %call1693 = call ptr @Perl_scalar(ptr noundef %475) #4
  %call1694 = call ptr @Perl_newUNOP(i32 noundef 185, i32 noundef 64, ptr noundef %call1693) #4
  br label %sw.epilog

sw.bb1695:                                        ; preds = %yyreduce
  %arrayidx1696 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %476 = load ptr, ptr %arrayidx1696, align 8
  %arrayidx1698 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %477 = load ptr, ptr %arrayidx1698, align 8
  %call1700 = call ptr @Perl_scalar(ptr noundef %477) #4
  %call1701 = call ptr @Perl_op_append_elem(i32 noundef 158, ptr noundef %476, ptr noundef %call1700) #4
  %call1702 = call ptr @Perl_newUNOP(i32 noundef 185, i32 noundef 64, ptr noundef %call1701) #4
  br label %sw.epilog

sw.bb1703:                                        ; preds = %yyreduce
  %478 = load ptr, ptr %ps.1, align 8
  %arrayidx1706 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %479 = load ptr, ptr %arrayidx1706, align 8
  %call1708 = call ptr @Perl_scalar(ptr noundef %479) #4
  %call1709 = call ptr @Perl_op_append_elem(i32 noundef 158, ptr noundef %478, ptr noundef %call1708) #4
  %call1710 = call ptr @Perl_newUNOP(i32 noundef 185, i32 noundef 64, ptr noundef %call1709) #4
  br label %sw.epilog

sw.bb1711:                                        ; preds = %yyreduce
  %arrayidx1712 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %480 = load ptr, ptr %arrayidx1712, align 8
  %call1714 = call ptr @Perl_newSVREF(ptr noundef %480) #4
  br label %sw.epilog

sw.bb1715:                                        ; preds = %yyreduce
  %arrayidx1716 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %481 = load ptr, ptr %arrayidx1716, align 8
  %call1718 = call ptr @Perl_newAVREF(ptr noundef %481) #4
  br label %sw.epilog

sw.bb1719:                                        ; preds = %yyreduce
  %arrayidx1720 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %482 = load ptr, ptr %arrayidx1720, align 8
  %call1722 = call ptr @Perl_newHVREF(ptr noundef %482) #4
  br label %sw.epilog

sw.bb1723:                                        ; preds = %yyreduce
  %arrayidx1724 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %483 = load i32, ptr %arrayidx1724, align 8
  %arrayidx1726 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %484 = load ptr, ptr %arrayidx1726, align 8
  %call1728 = call ptr @Perl_newCVREF(i32 noundef %483, ptr noundef %484) #4
  %call1729 = call ptr @Perl_scalar(ptr noundef %call1728) #4
  %call1730 = call ptr @Perl_newUNOP(i32 noundef 185, i32 noundef 0, ptr noundef %call1729) #4
  br label %sw.epilog

sw.bb1731:                                        ; preds = %yyreduce
  %arrayidx1732 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %485 = load ptr, ptr %arrayidx1732, align 8
  %call1734 = call ptr @Perl_newGVREF(i32 noundef 0, ptr noundef %485) #4
  br label %sw.epilog

sw.bb1735:                                        ; preds = %yyreduce
  %486 = load i32, ptr %ps.1, align 8
  %call1738 = call ptr @Perl_newOP(i32 noundef %486, i32 noundef 128) #4
  %487 = load i32, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  %or1739 = or i32 %487, 256
  store i32 %or1739, ptr getelementptr inbounds nuw (i8, ptr @PL_compiling, i64 56), align 8
  br label %sw.epilog

sw.bb1740:                                        ; preds = %yyreduce
  %arrayidx1741 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %488 = load i32, ptr %arrayidx1741, align 8
  %489 = load ptr, ptr %ps.1, align 8
  %call1745 = call ptr @Perl_newLOOPEX(i32 noundef %488, ptr noundef %489) #4
  br label %sw.epilog

sw.bb1746:                                        ; preds = %yyreduce
  %490 = load ptr, ptr %ps.1, align 8
  %call1749 = call ptr @Perl_scalar(ptr noundef %490) #4
  %call1750 = call ptr @Perl_newUNOP(i32 noundef 103, i32 noundef 0, ptr noundef %call1749) #4
  br label %sw.epilog

sw.bb1751:                                        ; preds = %yyreduce
  %491 = load i32, ptr %ps.1, align 8
  %call1754 = call ptr @Perl_newOP(i32 noundef %491, i32 noundef 0) #4
  br label %sw.epilog

sw.bb1755:                                        ; preds = %yyreduce
  %arrayidx1756 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %492 = load i32, ptr %arrayidx1756, align 8
  %493 = load ptr, ptr %ps.1, align 8
  %call1760 = call ptr @Perl_newUNOP(i32 noundef %492, i32 noundef 0, ptr noundef %493) #4
  br label %sw.epilog

sw.bb1761:                                        ; preds = %yyreduce
  %arrayidx1762 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %494 = load i32, ptr %arrayidx1762, align 8
  %495 = load ptr, ptr %ps.1, align 8
  %call1766 = call ptr @Perl_newUNOP(i32 noundef %494, i32 noundef 0, ptr noundef %495) #4
  br label %sw.epilog

sw.bb1767:                                        ; preds = %yyreduce
  %496 = load i32, ptr %ps.1, align 8
  %tobool1770.not = icmp eq i32 %496, 0
  %cond1771 = select i1 %tobool1770.not, i32 0, i32 128
  %call1772 = call ptr @Perl_newOP(i32 noundef 339, i32 noundef %cond1771) #4
  br label %sw.epilog

sw.bb1773:                                        ; preds = %yyreduce
  %arrayidx1774 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %497 = load i32, ptr %arrayidx1774, align 8
  %tobool1776.not = icmp eq i32 %497, 0
  %cond1777 = select i1 %tobool1776.not, i32 0, i32 128
  %498 = load ptr, ptr %ps.1, align 8
  %call1780 = call ptr @Perl_newUNOP(i32 noundef 339, i32 noundef %cond1777, ptr noundef %498) #4
  br label %sw.epilog

sw.bb1781:                                        ; preds = %yyreduce
  %499 = load ptr, ptr %ps.1, align 8
  %call1784 = call ptr @Perl_scalar(ptr noundef %499) #4
  %call1785 = call ptr @Perl_newUNOP(i32 noundef 185, i32 noundef 64, ptr noundef %call1784) #4
  br label %sw.epilog

sw.bb1786:                                        ; preds = %yyreduce
  %500 = load ptr, ptr %ps.1, align 8
  %arrayidx1789 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %501 = load ptr, ptr %arrayidx1789, align 8
  %call1791 = call ptr @Perl_scalar(ptr noundef %501) #4
  %call1792 = call ptr @Perl_op_append_elem(i32 noundef 158, ptr noundef %500, ptr noundef %call1791) #4
  %call1793 = call ptr @Perl_newUNOP(i32 noundef 185, i32 noundef 64, ptr noundef %call1792) #4
  br label %sw.epilog

sw.bb1794:                                        ; preds = %yyreduce
  %502 = load i32, ptr %ps.1, align 8
  %call1797 = call ptr @Perl_newOP(i32 noundef %502, i32 noundef 0) #4
  br label %sw.epilog

sw.bb1798:                                        ; preds = %yyreduce
  %arrayidx1799 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %503 = load i32, ptr %arrayidx1799, align 8
  %call1801 = call ptr @Perl_newOP(i32 noundef %503, i32 noundef 0) #4
  br label %sw.epilog

sw.bb1802:                                        ; preds = %yyreduce
  %504 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1805:                                        ; preds = %yyreduce
  %arrayidx1806 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %505 = load ptr, ptr %arrayidx1806, align 8
  br label %sw.epilog

sw.bb1808:                                        ; preds = %yyreduce
  %506 = load ptr, ptr %ps.1, align 8
  %call1811 = call ptr @Perl_scalar(ptr noundef %506) #4
  %call1812 = call ptr @Perl_newUNOP(i32 noundef 185, i32 noundef 64, ptr noundef %call1811) #4
  br label %sw.epilog

sw.bb1813:                                        ; preds = %yyreduce
  %arrayidx1814 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %507 = load i32, ptr %arrayidx1814, align 8
  %cmp1816 = icmp eq i32 %507, 103
  br i1 %cmp1816, label %cond.true1818, label %cond.false1824

cond.true1818:                                    ; preds = %sw.bb1813
  %call1821 = call ptr @Perl_newSViv(i64 noundef 0) #4
  %call1822 = call ptr @Perl_newSVOP(i32 noundef 5, i32 noundef 0, ptr noundef %call1821) #4
  %call1823 = call ptr @Perl_newUNOP(i32 noundef 103, i32 noundef 0, ptr noundef %call1822) #4
  br label %sw.epilog

cond.false1824:                                   ; preds = %sw.bb1813
  %call1827 = call ptr @Perl_newOP(i32 noundef %507, i32 noundef 128) #4
  br label %sw.epilog

sw.bb1830:                                        ; preds = %yyreduce
  %arrayidx1831 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %508 = load i32, ptr %arrayidx1831, align 8
  %arrayidx1833 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %509 = load ptr, ptr %arrayidx1833, align 8
  %call1835 = call ptr @Perl_newUNOP(i32 noundef %508, i32 noundef 0, ptr noundef %509) #4
  br label %sw.epilog

sw.bb1836:                                        ; preds = %yyreduce
  %510 = load ptr, ptr %ps.1, align 8
  %op_type1839 = getelementptr inbounds nuw i8, ptr %510, i64 32
  %bf.load1840 = load i16, ptr %op_type1839, align 8
  %bf.clear1841 = and i16 %bf.load1840, 511
  %bf.clear1841.off = add nsw i16 %bf.clear1841, -35
  %switch = icmp ult i16 %bf.clear1841.off, 2
  br i1 %switch, label %if.else1861, label %land.lhs.true1854

land.lhs.true1854:                                ; preds = %sw.bb1836
  %op_pmflags = getelementptr inbounds nuw i8, ptr %510, i64 64
  %511 = load i32, ptr %op_pmflags, align 8
  %and1857 = and i32 %511, 268435456
  %tobool1858.not = icmp eq i32 %and1857, 0
  br i1 %tobool1858.not, label %if.else1861, label %if.then1859

if.then1859:                                      ; preds = %land.lhs.true1854
  %call1860 = call i32 @Perl_start_subparse(i32 noundef 0, i32 noundef 128) #4
  %512 = ptrtoint ptr %yyval.sroa.0.0.copyload to i64
  %yyval.sroa.0.0.insert.ext2280 = zext i32 %call1860 to i64
  %yyval.sroa.0.0.insert.mask2281 = and i64 %512, -4294967296
  %yyval.sroa.0.0.insert.insert2282 = or disjoint i64 %yyval.sroa.0.0.insert.mask2281, %yyval.sroa.0.0.insert.ext2280
  %513 = inttoptr i64 %yyval.sroa.0.0.insert.insert2282 to ptr
  %514 = load ptr, ptr @PL_compcv, align 8
  call void @Perl_save_pushptr(ptr noundef %514, i32 noundef 11) #4
  br label %sw.epilog

if.else1861:                                      ; preds = %land.lhs.true1854, %sw.bb1836
  %515 = ptrtoint ptr %yyval.sroa.0.0.copyload to i64
  %yyval.sroa.0.0.insert.mask2284 = and i64 %515, -4294967296
  %516 = inttoptr i64 %yyval.sroa.0.0.insert.mask2284 to ptr
  br label %sw.epilog

sw.bb1863:                                        ; preds = %yyreduce
  %arrayidx1864 = getelementptr inbounds i8, ptr %ps.1, i64 -120
  %517 = load ptr, ptr %arrayidx1864, align 8
  %arrayidx1866 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %518 = load ptr, ptr %arrayidx1866, align 8
  %arrayidx1868 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %519 = load ptr, ptr %arrayidx1868, align 8
  %arrayidx1870 = getelementptr inbounds i8, ptr %ps.1, i64 -96
  %520 = load i32, ptr %arrayidx1870, align 8
  %call1872 = call ptr @Perl_pmruntime(ptr noundef %517, ptr noundef %518, ptr noundef %519, i1 noundef zeroext true, i32 noundef %520) #4
  br label %sw.epilog

sw.bb1873:                                        ; preds = %yyreduce
  %call1874 = call ptr @Perl_newOP(i32 noundef 3, i32 noundef 0) #4
  %call1875 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.9, i64 noundef 13) #4
  %call1876 = call ptr @Perl_newSVOP(i32 noundef 5, i32 noundef 0, ptr noundef %call1875) #4
  %call1877 = call ptr @Perl_newLISTOP(i32 noundef 190, i32 noundef 0, ptr noundef %call1874, ptr noundef %call1876) #4
  br label %sw.epilog

sw.bb1878:                                        ; preds = %yyreduce
  %arrayidx1879 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %521 = load ptr, ptr %arrayidx1879, align 8
  %522 = load ptr, ptr %ps.1, align 8
  %call1883 = call ptr @Perl_my_attrs(ptr noundef %521, ptr noundef %522) #4
  br label %sw.epilog

sw.bb1884:                                        ; preds = %yyreduce
  %523 = load ptr, ptr %ps.1, align 8
  %arrayidx1887 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %524 = load i32, ptr %arrayidx1887, align 8
  %call1889 = call ptr @Perl_localize(ptr noundef %523, i32 noundef %524) #4
  br label %sw.epilog

sw.bb1890:                                        ; preds = %yyreduce
  %arrayidx1891 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %525 = load ptr, ptr %arrayidx1891, align 8
  %call1893 = call ptr @Perl_sawparens(ptr noundef %525) #4
  br label %sw.epilog

sw.bb1894:                                        ; preds = %yyreduce
  %call1895 = call ptr @Perl_newNULLLIST() #4
  %call1896 = call ptr @Perl_sawparens(ptr noundef %call1895) #4
  br label %sw.epilog

sw.bb1897:                                        ; preds = %yyreduce
  %526 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1900:                                        ; preds = %yyreduce
  %527 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1903:                                        ; preds = %yyreduce
  %528 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1907:                                        ; preds = %yyreduce
  %529 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1911:                                        ; preds = %yyreduce
  %530 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1915:                                        ; preds = %yyreduce
  %531 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.bb1918:                                        ; preds = %yyreduce
  store i16 0, ptr %in_my1919, align 4
  %532 = load ptr, ptr %ps.1, align 8
  %call1922 = call ptr @Perl_my_attrs(ptr noundef %532, ptr noundef null) #4
  br label %sw.epilog

sw.bb1923:                                        ; preds = %yyreduce
  %arrayidx1924 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %533 = load i32, ptr %arrayidx1924, align 8
  %534 = load ptr, ptr %ps.1, align 8
  %call1928 = call ptr @Perl_newCVREF(i32 noundef %533, ptr noundef %534) #4
  br label %sw.epilog

sw.bb1929:                                        ; preds = %yyreduce
  %535 = load ptr, ptr %ps.1, align 8
  %call1932 = call ptr @Perl_newSVREF(ptr noundef %535) #4
  br label %sw.epilog

sw.bb1933:                                        ; preds = %yyreduce
  %536 = load ptr, ptr %ps.1, align 8
  %call1936 = call ptr @Perl_newAVREF(ptr noundef %536) #4
  %tobool1937.not = icmp eq ptr %call1936, null
  br i1 %tobool1937.not, label %sw.epilog, label %if.then1938

if.then1938:                                      ; preds = %sw.bb1933
  %arrayidx1939 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %537 = load i32, ptr %arrayidx1939, align 8
  %op_private1941 = getelementptr inbounds nuw i8, ptr %call1936, i64 35
  %538 = load i8, ptr %op_private1941, align 1
  %539 = trunc i32 %537 to i8
  %conv1944 = or i8 %538, %539
  store i8 %conv1944, ptr %op_private1941, align 1
  br label %sw.epilog

sw.bb1946:                                        ; preds = %yyreduce
  %540 = load ptr, ptr %ps.1, align 8
  %call1949 = call ptr @Perl_newHVREF(ptr noundef %540) #4
  %tobool1950.not = icmp eq ptr %call1949, null
  br i1 %tobool1950.not, label %sw.epilog, label %if.then1951

if.then1951:                                      ; preds = %sw.bb1946
  %arrayidx1952 = getelementptr inbounds i8, ptr %ps.1, i64 -24
  %541 = load i32, ptr %arrayidx1952, align 8
  %op_private1954 = getelementptr inbounds nuw i8, ptr %call1949, i64 35
  %542 = load i8, ptr %op_private1954, align 1
  %543 = trunc i32 %541 to i8
  %conv1957 = or i8 %542, %543
  store i8 %conv1957, ptr %op_private1954, align 1
  br label %sw.epilog

sw.bb1959:                                        ; preds = %yyreduce
  %544 = load ptr, ptr %ps.1, align 8
  %call1962 = call ptr @Perl_newAVREF(ptr noundef %544) #4
  br label %sw.epilog

sw.bb1963:                                        ; preds = %yyreduce
  %arrayidx1964 = getelementptr inbounds i8, ptr %ps.1, i64 -72
  %545 = load ptr, ptr %arrayidx1964, align 8
  %call1966 = call ptr @Perl_newAVREF(ptr noundef %545) #4
  br label %sw.epilog

sw.bb1967:                                        ; preds = %yyreduce
  %546 = load ptr, ptr %ps.1, align 8
  %call1970 = call ptr @Perl_newGVREF(i32 noundef 0, ptr noundef %546) #4
  br label %sw.epilog

sw.bb1971:                                        ; preds = %yyreduce
  %arrayidx1972 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %547 = load ptr, ptr %arrayidx1972, align 8
  %call1974 = call ptr @Perl_newAVREF(ptr noundef %547) #4
  br label %sw.epilog

sw.bb1975:                                        ; preds = %yyreduce
  %arrayidx1976 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %548 = load ptr, ptr %arrayidx1976, align 8
  %call1978 = call ptr @Perl_newHVREF(ptr noundef %548) #4
  br label %sw.epilog

sw.bb1979:                                        ; preds = %yyreduce
  %arrayidx1980 = getelementptr inbounds i8, ptr %ps.1, i64 -48
  %549 = load ptr, ptr %arrayidx1980, align 8
  %call1982 = call ptr @Perl_newGVREF(i32 noundef 0, ptr noundef %549) #4
  br label %sw.epilog

sw.bb1983:                                        ; preds = %yyreduce
  %550 = load ptr, ptr %ps.1, align 8
  %call1986 = call ptr @Perl_scalar(ptr noundef %550) #4
  br label %sw.epilog

sw.bb1987:                                        ; preds = %yyreduce
  %551 = load ptr, ptr %ps.1, align 8
  %call1990 = call ptr @Perl_scalar(ptr noundef %551) #4
  br label %sw.epilog

sw.bb1991:                                        ; preds = %yyreduce
  %552 = load ptr, ptr %ps.1, align 8
  %call1994 = call ptr @Perl_op_scope(ptr noundef %552) #4
  br label %sw.epilog

sw.bb1995:                                        ; preds = %yyreduce
  %553 = load ptr, ptr %ps.1, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1995, %sw.bb1991, %sw.bb1987, %sw.bb1983, %sw.bb1979, %sw.bb1975, %sw.bb1971, %sw.bb1967, %sw.bb1963, %sw.bb1959, %if.then1951, %sw.bb1946, %if.then1938, %sw.bb1933, %sw.bb1929, %sw.bb1923, %sw.bb1918, %sw.bb1915, %sw.bb1911, %sw.bb1907, %sw.bb1903, %sw.bb1900, %sw.bb1897, %sw.bb1894, %sw.bb1890, %sw.bb1884, %sw.bb1878, %sw.bb1873, %sw.bb1863, %if.else1861, %if.then1859, %sw.bb1830, %cond.false1824, %cond.true1818, %sw.bb1808, %sw.bb1805, %sw.bb1802, %sw.bb1798, %sw.bb1794, %sw.bb1786, %sw.bb1781, %sw.bb1773, %sw.bb1767, %sw.bb1761, %sw.bb1755, %sw.bb1751, %sw.bb1746, %sw.bb1740, %sw.bb1735, %sw.bb1731, %sw.bb1723, %sw.bb1719, %sw.bb1715, %sw.bb1711, %sw.bb1703, %sw.bb1695, %sw.bb1690, %sw.bb1685, %sw.bb1682, %if.then1671, %land.lhs.true1667, %sw.bb1656, %if.then1645, %land.lhs.true1641, %sw.bb1629, %if.then1618, %land.lhs.true1614, %sw.bb1602, %if.then1592, %land.lhs.true1588, %sw.bb1577, %sw.bb1574, %sw.bb1569, %sw.bb1566, %sw.bb1563, %sw.bb1560, %sw.bb1557, %sw.bb1554, %sw.bb1551, %sw.bb1547, %sw.bb1541, %sw.bb1538, %sw.bb1534, %sw.bb1526, %sw.bb1521, %sw.bb1515, %do.end1509, %do.end1472, %sw.bb1462, %sw.bb1458, %sw.bb1456, %sw.bb1452, %sw.bb1446, %sw.bb1440, %sw.bb1431, %sw.bb1425, %sw.bb1419, %sw.bb1412, %sw.bb1407, %sw.bb1404, %sw.bb1399, %sw.bb1391, %sw.bb1385, %sw.bb1379, %sw.bb1373, %sw.bb1363, %sw.bb1353, %sw.bb1343, %sw.bb1333, %sw.bb1323, %sw.bb1313, %sw.bb1303, %if.end1294, %sw.bb1275, %sw.bb1267, %sw.bb1263, %sw.bb1257, %sw.bb1251, %sw.bb1245, %sw.bb1236, %sw.bb1227, %sw.bb1221, %sw.bb1212, %sw.bb1203, %sw.bb1195, %sw.bb1186, %sw.bb1177, %sw.bb1169, %sw.bb1162, %sw.bb1152, %do.end1146, %sw.bb1132, %sw.bb1126, %sw.bb1115, %sw.bb1104, %sw.bb1095, %sw.bb1083, %sw.bb1071, %sw.bb1059, %sw.bb1052, %sw.bb1049, %sw.bb1043, %sw.bb1035, %sw.bb1029, %sw.bb1020, %sw.bb1018, %sw.bb1014, %sw.bb1010, %sw.bb1006, %sw.bb1004, %sw.bb1002, %sw.bb998, %sw.bb994, %sw.bb990, %sw.bb986, %sw.bb981, %sw.bb979, %sw.bb973, %sw.bb969, %sw.bb954, %sw.bb945, %sw.bb937, %sw.bb928, %sw.bb922, %sw.bb915, %sw.bb909, %sw.bb903, %sw.bb900, %sw.bb895, %if.end891, %sw.bb866, %sw.bb863, %if.then858, %sw.bb846, %if.then842, %sw.bb836, %sw.bb830, %sw.bb816, %sw.bb798, %sw.bb780, %sw.bb775, %sw.bb758, %sw.bb742, %if.end734, %sw.bb714, %sw.bb712, %sw.bb696, %sw.bb680, %sw.bb675, %sw.bb665, %cond.end658, %sw.bb626, %sw.bb611, %do.end596, %sw.bb582, %if.then578, %sw.bb572, %cond.end565, %if.end511, %cond.end418, %if.end381, %if.end300, %sw.bb278, %sw.bb263, %sw.bb248, %sw.bb245, %cond.true238, %sw.bb234, %if.then231, %land.lhs.true227, %sw.bb218, %if.then215, %land.lhs.true, %sw.bb203, %sw.bb202, %sw.bb196, %if.end190, %sw.bb178, %if.end172, %if.end156, %sw.bb144, %sw.bb142, %sw.bb138, %sw.bb136, %sw.bb132, %sw.bb130, %sw.bb126, %sw.bb124, %sw.bb121, %sw.bb119, %sw.bb113, %sw.bb, %yyreduce
  %yyval.sroa.0.0 = phi ptr [ %yyval.sroa.0.0.copyload, %yyreduce ], [ %yyval.sroa.0.0.copyload, %sw.bb ], [ %21, %sw.bb113 ], [ %yyval.sroa.0.0.copyload, %sw.bb119 ], [ %24, %sw.bb121 ], [ %yyval.sroa.0.0.copyload, %sw.bb124 ], [ %27, %sw.bb126 ], [ %yyval.sroa.0.0.copyload, %sw.bb130 ], [ %30, %sw.bb132 ], [ %yyval.sroa.0.0.copyload, %sw.bb136 ], [ %33, %sw.bb138 ], [ %yyval.sroa.0.0.copyload, %sw.bb142 ], [ %36, %sw.bb144 ], [ %call161, %if.end156 ], [ %call177, %if.end172 ], [ %46, %sw.bb178 ], [ %call195, %if.end190 ], [ %52, %sw.bb196 ], [ null, %sw.bb202 ], [ %call208, %if.then215 ], [ %call208, %land.lhs.true ], [ %call208, %sw.bb203 ], [ %call223, %if.then231 ], [ %call223, %land.lhs.true227 ], [ %call223, %sw.bb218 ], [ %64, %sw.bb245 ], [ %call262, %sw.bb248 ], [ %call277, %sw.bb263 ], [ %73, %sw.bb278 ], [ null, %if.end300 ], [ %yyval.sroa.0.0.copyload, %if.end381 ], [ null, %cond.end418 ], [ %yyval.sroa.0.0.copyload, %if.end511 ], [ null, %cond.end565 ], [ %yyval.sroa.0.0.copyload, %sw.bb582 ], [ null, %do.end596 ], [ %call622, %sw.bb611 ], [ %call637, %sw.bb626 ], [ %call661, %cond.end658 ], [ %call674, %sw.bb665 ], [ %call679, %sw.bb675 ], [ %call692, %sw.bb680 ], [ %call708, %sw.bb696 ], [ %yyval.sroa.0.0.copyload, %sw.bb712 ], [ %yyval.sroa.0.0.copyload, %sw.bb714 ], [ %call738, %if.end734 ], [ %call754, %sw.bb742 ], [ %call771, %sw.bb758 ], [ %call779, %sw.bb775 ], [ %call794, %sw.bb780 ], [ %call812, %sw.bb798 ], [ %call826, %sw.bb816 ], [ %call835, %sw.bb830 ], [ %yyval.sroa.0.0.copyload, %if.then842 ], [ %yyval.sroa.0.0.copyload, %sw.bb836 ], [ %call852, %if.then858 ], [ %call852, %sw.bb846 ], [ %245, %sw.bb863 ], [ null, %sw.bb866 ], [ %call893, %if.end891 ], [ %call898, %sw.bb895 ], [ %253, %sw.bb900 ], [ %call908, %sw.bb903 ], [ %call914, %sw.bb909 ], [ %call921, %sw.bb915 ], [ %call927, %sw.bb922 ], [ %call933, %sw.bb928 ], [ %call943, %sw.bb937 ], [ %call953, %sw.bb945 ], [ %call966, %sw.bb954 ], [ %call972, %sw.bb969 ], [ %281, %sw.bb973 ], [ %282, %sw.bb979 ], [ %call985, %sw.bb981 ], [ %284, %sw.bb986 ], [ %285, %sw.bb990 ], [ %286, %sw.bb994 ], [ %287, %sw.bb998 ], [ %289, %sw.bb1002 ], [ %292, %sw.bb1004 ], [ %295, %sw.bb1006 ], [ %297, %sw.bb1010 ], [ %298, %sw.bb1014 ], [ %call1019, %sw.bb1018 ], [ %call1026, %sw.bb1020 ], [ %call1034, %sw.bb1029 ], [ %call1042, %sw.bb1035 ], [ %call1048, %sw.bb1043 ], [ %307, %sw.bb1049 ], [ %call1058, %sw.bb1052 ], [ %call1070, %sw.bb1059 ], [ %call1082, %sw.bb1071 ], [ %call1094, %sw.bb1083 ], [ %call1103, %sw.bb1095 ], [ %call1114, %sw.bb1104 ], [ %call1125, %sw.bb1115 ], [ %call1131, %sw.bb1126 ], [ %call1137, %sw.bb1132 ], [ %call1151, %do.end1146 ], [ %call1161, %sw.bb1152 ], [ %call1168, %sw.bb1162 ], [ %call1176, %sw.bb1169 ], [ %call1185, %sw.bb1177 ], [ %call1194, %sw.bb1186 ], [ %call1202, %sw.bb1195 ], [ %call1211, %sw.bb1203 ], [ %call1220, %sw.bb1212 ], [ %call1226, %sw.bb1221 ], [ %call1235, %sw.bb1227 ], [ %call1244, %sw.bb1236 ], [ %call1250, %sw.bb1245 ], [ %call1256, %sw.bb1251 ], [ %call1262, %sw.bb1257 ], [ %call1266, %sw.bb1263 ], [ %call1274, %sw.bb1267 ], [ %call1284, %sw.bb1275 ], [ %call1302, %if.end1294 ], [ %call1312, %sw.bb1303 ], [ %call1322, %sw.bb1313 ], [ %call1332, %sw.bb1323 ], [ %call1342, %sw.bb1333 ], [ %call1352, %sw.bb1343 ], [ %call1362, %sw.bb1353 ], [ %call1372, %sw.bb1363 ], [ %call1378, %sw.bb1373 ], [ %call1384, %sw.bb1379 ], [ %call1390, %sw.bb1385 ], [ %call1398, %sw.bb1391 ], [ %call1403, %sw.bb1399 ], [ %405, %sw.bb1404 ], [ %call1411, %sw.bb1407 ], [ %call1418, %sw.bb1412 ], [ %call1424, %sw.bb1419 ], [ %call1430, %sw.bb1425 ], [ %call1439, %sw.bb1431 ], [ %call1445, %sw.bb1440 ], [ %call1451, %sw.bb1446 ], [ %call1455, %sw.bb1452 ], [ %call1457, %sw.bb1456 ], [ %call1461, %sw.bb1458 ], [ %call1463, %sw.bb1462 ], [ %call1481, %do.end1472 ], [ %call1514, %do.end1509 ], [ %call1520, %sw.bb1515 ], [ %call1525, %sw.bb1521 ], [ %call1533, %sw.bb1526 ], [ %call1537, %sw.bb1534 ], [ %438, %sw.bb1538 ], [ %call1546, %sw.bb1541 ], [ %call1550, %sw.bb1547 ], [ %442, %sw.bb1551 ], [ %call1556, %sw.bb1554 ], [ %443, %sw.bb1557 ], [ %444, %sw.bb1560 ], [ %445, %sw.bb1563 ], [ %446, %sw.bb1566 ], [ %call1573, %sw.bb1569 ], [ %448, %sw.bb1574 ], [ %call1586, %if.then1592 ], [ %call1586, %land.lhs.true1588 ], [ null, %sw.bb1577 ], [ %call1612, %if.then1618 ], [ %call1612, %land.lhs.true1614 ], [ null, %sw.bb1602 ], [ %call1639, %if.then1645 ], [ %call1639, %land.lhs.true1641 ], [ null, %sw.bb1629 ], [ %call1665, %if.then1671 ], [ %call1665, %land.lhs.true1667 ], [ null, %sw.bb1656 ], [ %473, %sw.bb1682 ], [ %call1689, %sw.bb1685 ], [ %call1694, %sw.bb1690 ], [ %call1702, %sw.bb1695 ], [ %call1710, %sw.bb1703 ], [ %call1714, %sw.bb1711 ], [ %call1718, %sw.bb1715 ], [ %call1722, %sw.bb1719 ], [ %call1730, %sw.bb1723 ], [ %call1734, %sw.bb1731 ], [ %call1738, %sw.bb1735 ], [ %call1745, %sw.bb1740 ], [ %call1750, %sw.bb1746 ], [ %call1754, %sw.bb1751 ], [ %call1760, %sw.bb1755 ], [ %call1766, %sw.bb1761 ], [ %call1772, %sw.bb1767 ], [ %call1780, %sw.bb1773 ], [ %call1785, %sw.bb1781 ], [ %call1793, %sw.bb1786 ], [ %call1797, %sw.bb1794 ], [ %call1801, %sw.bb1798 ], [ %504, %sw.bb1802 ], [ %505, %sw.bb1805 ], [ %call1812, %sw.bb1808 ], [ %call1835, %sw.bb1830 ], [ %513, %if.then1859 ], [ %516, %if.else1861 ], [ %call1872, %sw.bb1863 ], [ %call1877, %sw.bb1873 ], [ %call1883, %sw.bb1878 ], [ %call1889, %sw.bb1884 ], [ %call1893, %sw.bb1890 ], [ %call1896, %sw.bb1894 ], [ %526, %sw.bb1897 ], [ %527, %sw.bb1900 ], [ %528, %sw.bb1903 ], [ %529, %sw.bb1907 ], [ %530, %sw.bb1911 ], [ %531, %sw.bb1915 ], [ %call1922, %sw.bb1918 ], [ %call1928, %sw.bb1923 ], [ %call1932, %sw.bb1929 ], [ %call1936, %if.then1938 ], [ null, %sw.bb1933 ], [ %call1949, %if.then1951 ], [ null, %sw.bb1946 ], [ %call1962, %sw.bb1959 ], [ %call1966, %sw.bb1963 ], [ %call1970, %sw.bb1967 ], [ %call1974, %sw.bb1971 ], [ %call1978, %sw.bb1975 ], [ %call1982, %sw.bb1979 ], [ %call1986, %sw.bb1983 ], [ %call1990, %sw.bb1987 ], [ %call1994, %sw.bb1991 ], [ %553, %sw.bb1995 ], [ %call241, %cond.true238 ], [ null, %sw.bb234 ], [ null, %if.then578 ], [ null, %sw.bb572 ], [ %call1823, %cond.true1818 ], [ %call1827, %cond.false1824 ]
  %554 = load i32, ptr %yylen, align 4
  %cmp19992996 = icmp sgt i32 %554, 0
  br i1 %cmp19992996, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %sw.epilog
  br label %for.body

for.body:                                         ; preds = %S_SvREFCNT_dec.exit, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %S_SvREFCNT_dec.exit ]
  %555 = sub nsw i64 0, %indvars.iv
  %arrayidx2003 = getelementptr inbounds %struct.yy_stack_frame, ptr %ps.1, i64 %555
  %compcv2004 = getelementptr inbounds nuw i8, ptr %arrayidx2003, i64 16
  %556 = load ptr, ptr %compcv2004, align 8
  %cmp.not.i2945 = icmp eq ptr %556, null
  br i1 %cmp.not.i2945, label %S_SvREFCNT_dec.exit, label %if.then.i2946

if.then.i2946:                                    ; preds = %for.body
  %sv_refcnt.i2947 = getelementptr inbounds nuw i8, ptr %556, i64 8
  %557 = load i32, ptr %sv_refcnt.i2947, align 8
  %cmp1.i = icmp ugt i32 %557, 1
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i2946
  %sub.i = add i32 %557, -1
  store i32 %sub.i, ptr %sv_refcnt.i2947, align 8
  br label %S_SvREFCNT_dec.exit

if.else.i:                                        ; preds = %if.then.i2946
  call void @Perl_sv_free2(ptr noundef nonnull %556, i32 noundef %557) #4
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %if.else.i, %if.then4.i, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %558 = load i32, ptr %yylen, align 4
  %559 = sext i32 %558 to i64
  %cmp1999 = icmp slt i64 %indvars.iv.next, %559
  br i1 %cmp1999, label %for.body, label %for.end.loopexit, !llvm.loop !0

for.end.loopexit:                                 ; preds = %S_SvREFCNT_dec.exit
  %.lcssa3007 = phi i32 [ %558, %S_SvREFCNT_dec.exit ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %sw.epilog
  %.lcssa2991 = phi i32 [ %554, %sw.epilog ], [ %.lcssa3007, %for.end.loopexit ]
  %sub2007 = add nsw i32 %.lcssa2991, -1
  %idx.ext = sext i32 %sub2007 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr2008 = getelementptr inbounds %struct.yy_stack_frame, ptr %ps.1, i64 %idx.neg
  store ptr %add.ptr2008, ptr %ps1, align 8
  store ptr %yyval.sroa.0.0, ptr %add.ptr2008, align 8
  %560 = load ptr, ptr @PL_compcv, align 8
  %cmp.not.i2948 = icmp eq ptr %560, null
  br i1 %cmp.not.i2948, label %S_SvREFCNT_inc.exit2952, label %if.then.i2949

if.then.i2949:                                    ; preds = %for.end
  %sv_refcnt.i2950 = getelementptr inbounds nuw i8, ptr %560, i64 8
  %561 = load i32, ptr %sv_refcnt.i2950, align 8
  %inc.i2951 = add i32 %561, 1
  store i32 %inc.i2951, ptr %sv_refcnt.i2950, align 8
  br label %S_SvREFCNT_inc.exit2952

S_SvREFCNT_inc.exit2952:                          ; preds = %if.then.i2949, %for.end
  %compcv2012 = getelementptr inbounds nuw i8, ptr %add.ptr2008, i64 16
  store ptr %560, ptr %compcv2012, align 8
  %562 = load i32, ptr @PL_savestack_ix, align 4
  %savestack_ix2013 = getelementptr inbounds nuw i8, ptr %add.ptr2008, i64 12
  store i32 %562, ptr %savestack_ix2013, align 4
  %arrayidx2015 = getelementptr inbounds nuw i8, ptr @yyr1, i64 %idxprom104
  %563 = load i8, ptr %arrayidx2015, align 1
  %conv2016 = zext i8 %563 to i64
  %sub2017 = add nsw i64 %conv2016, -105
  %arrayidx2019 = getelementptr inbounds i16, ptr @yypgoto, i64 %sub2017
  %564 = load i16, ptr %arrayidx2019, align 2
  %conv2020 = sext i16 %564 to i32
  %state2022 = getelementptr inbounds i8, ptr %add.ptr2008, i64 -16
  %565 = load i16, ptr %state2022, align 8
  %conv2023 = sext i16 %565 to i32
  %add2024 = add nsw i32 %conv2023, %conv2020
  %or.cond2209 = icmp ult i32 %add2024, 2931
  br i1 %or.cond2209, label %land.lhs.true2030, label %if.else2043

land.lhs.true2030:                                ; preds = %S_SvREFCNT_inc.exit2952
  %idxprom2031 = zext nneg i32 %add2024 to i64
  %arrayidx2032 = getelementptr inbounds nuw i16, ptr @yycheck, i64 %idxprom2031
  %566 = load i16, ptr %arrayidx2032, align 2
  %cmp2037 = icmp eq i16 %566, %565
  br i1 %cmp2037, label %if.then2039, label %if.else2043

if.then2039:                                      ; preds = %land.lhs.true2030
  %arrayidx2041 = getelementptr inbounds nuw i16, ptr @yytable, i64 %idxprom2031
  br label %if.end2048

if.else2043:                                      ; preds = %land.lhs.true2030, %S_SvREFCNT_inc.exit2952
  %arrayidx2046 = getelementptr inbounds i16, ptr @yydefgoto, i64 %sub2017
  br label %if.end2048

if.end2048:                                       ; preds = %if.else2043, %if.then2039
  %yystate.0.in.in = phi ptr [ %arrayidx2041, %if.then2039 ], [ %arrayidx2046, %if.else2043 ]
  %yystate.0.in = load i16, ptr %yystate.0.in.in, align 2
  %state2050 = getelementptr inbounds nuw i8, ptr %add.ptr2008, i64 8
  store i16 %yystate.0.in, ptr %state2050, align 8
  br label %yynewstate.backedge

yyerrlab:                                         ; preds = %yydefault, %if.then68, %if.then68
  %567 = load i32, ptr %yyerrstatus, align 4
  %tobool2052.not = icmp eq i32 %567, 0
  br i1 %tobool2052.not, label %if.then2053, label %if.end2055

if.then2053:                                      ; preds = %yyerrlab
  %call2054 = call i32 @Perl_yyerror(ptr noundef nonnull @.str.10) #4
  %.pr = load i32, ptr %yyerrstatus, align 4
  br label %if.end2055

if.end2055:                                       ; preds = %if.then2053, %yyerrlab
  %568 = phi i32 [ %.pr, %if.then2053 ], [ %567, %yyerrlab ]
  %cmp2057 = icmp eq i32 %568, 3
  br i1 %cmp2057, label %if.then2059, label %yyerrlab1

if.then2059:                                      ; preds = %if.end2055
  %569 = load i32, ptr %yychar, align 8
  %cmp2061 = icmp eq i32 %569, 0
  br i1 %cmp2061, label %if.then2063, label %if.end2106

if.then2063:                                      ; preds = %if.then2059
  %ps.1.lcssa3010 = phi ptr [ %ps.1, %if.then2059 ]
  %compcv2064 = getelementptr inbounds nuw i8, ptr %ps.1.lcssa3010, i64 16
  %570 = load ptr, ptr %compcv2064, align 8
  %cmp.not.i2953 = icmp eq ptr %570, null
  br i1 %cmp.not.i2953, label %S_SvREFCNT_dec.exit2960, label %if.then.i2954

if.then.i2954:                                    ; preds = %if.then2063
  %sv_refcnt.i2955 = getelementptr inbounds nuw i8, ptr %570, i64 8
  %571 = load i32, ptr %sv_refcnt.i2955, align 8
  %cmp1.i2956 = icmp ugt i32 %571, 1
  br i1 %cmp1.i2956, label %if.then4.i2958, label %if.else.i2957

if.then4.i2958:                                   ; preds = %if.then.i2954
  %sub.i2959 = add i32 %571, -1
  store i32 %sub.i2959, ptr %sv_refcnt.i2955, align 8
  br label %S_SvREFCNT_dec.exit2960

if.else.i2957:                                    ; preds = %if.then.i2954
  call void @Perl_sv_free2(ptr noundef nonnull %570, i32 noundef %571) #4
  br label %S_SvREFCNT_dec.exit2960

S_SvREFCNT_dec.exit2960:                          ; preds = %if.else.i2957, %if.then4.i2958, %if.then2063
  %ps.23001 = getelementptr inbounds i8, ptr %ps.1.lcssa3010, i64 -24
  store ptr %ps.23001, ptr %ps1, align 8
  %572 = load ptr, ptr %stack, align 8
  %cmp20683002 = icmp ugt ptr %ps.23001, %572
  br i1 %cmp20683002, label %do.body2070.preheader, label %yyreturn

do.body2070.preheader:                            ; preds = %S_SvREFCNT_dec.exit2960
  br label %do.body2070

do.body2070:                                      ; preds = %S_SvREFCNT_dec.exit2968, %do.body2070.preheader
  %ps.23004 = phi ptr [ %ps.2, %S_SvREFCNT_dec.exit2968 ], [ %ps.23001, %do.body2070.preheader ]
  %ps.1.pn3003 = phi ptr [ %ps.23004, %S_SvREFCNT_dec.exit2968 ], [ %ps.1.lcssa3010, %do.body2070.preheader ]
  %573 = load i32, ptr @PL_savestack_ix, align 4
  %savestack_ix2071 = getelementptr inbounds i8, ptr %ps.1.pn3003, i64 -12
  %574 = load i32, ptr %savestack_ix2071, align 4
  %cmp2072 = icmp sgt i32 %573, %574
  br i1 %cmp2072, label %if.then2074, label %do.end2078

if.then2074:                                      ; preds = %do.body2070
  call void @Perl_leave_scope(i32 noundef %574) #4
  br label %do.end2078

do.end2078:                                       ; preds = %if.then2074, %do.body2070
  %state2079 = getelementptr inbounds i8, ptr %ps.1.pn3003, i64 -16
  %575 = load i16, ptr %state2079, align 8
  %idxprom2080 = sext i16 %575 to i64
  %arrayidx2081 = getelementptr inbounds i8, ptr @yystos, i64 %idxprom2080
  %576 = load i8, ptr %arrayidx2081, align 1
  %idxprom2082 = zext i8 %576 to i64
  %arrayidx2083 = getelementptr inbounds nuw i32, ptr @yy_type_tab, i64 %idxprom2082
  %577 = load i32, ptr %arrayidx2083, align 4
  %cmp2084 = icmp eq i32 %577, 1
  br i1 %cmp2084, label %land.lhs.true2086, label %if.end2102

land.lhs.true2086:                                ; preds = %do.end2078
  %578 = load ptr, ptr %ps.23004, align 8
  %tobool2088.not = icmp eq ptr %578, null
  br i1 %tobool2088.not, label %if.end2102, label %if.then2089

if.then2089:                                      ; preds = %land.lhs.true2086
  %compcv2090 = getelementptr inbounds i8, ptr %ps.1.pn3003, i64 -8
  %579 = load ptr, ptr %compcv2090, align 8
  %580 = load ptr, ptr @PL_compcv, align 8
  %cmp2091.not = icmp eq ptr %579, %580
  br i1 %cmp2091.not, label %if.end2100, label %if.then2093

if.then2093:                                      ; preds = %if.then2089
  store ptr %579, ptr @PL_compcv, align 8
  %581 = load ptr, ptr %579, align 8
  %xcv_padlist_u2096 = getelementptr inbounds nuw i8, ptr %581, i64 72
  %582 = load ptr, ptr %xcv_padlist_u2096, align 8
  %xpadl_alloc2097 = getelementptr inbounds nuw i8, ptr %582, i64 8
  %583 = load ptr, ptr %xpadl_alloc2097, align 8
  %arrayidx2098 = getelementptr inbounds nuw i8, ptr %583, i64 8
  %584 = load ptr, ptr %arrayidx2098, align 8
  store ptr %584, ptr @PL_comppad, align 8
  %sv_u2099 = getelementptr inbounds nuw i8, ptr %584, i64 16
  %585 = load ptr, ptr %sv_u2099, align 8
  store ptr %585, ptr @PL_curpad, align 8
  br label %if.end2100

if.end2100:                                       ; preds = %if.then2093, %if.then2089
  %586 = load ptr, ptr %ps.23004, align 8
  call void @Perl_op_free(ptr noundef %586) #4
  br label %if.end2102

if.end2102:                                       ; preds = %if.end2100, %land.lhs.true2086, %do.end2078
  %compcv2103 = getelementptr inbounds i8, ptr %ps.1.pn3003, i64 -8
  %587 = load ptr, ptr %compcv2103, align 8
  %cmp.not.i2961 = icmp eq ptr %587, null
  br i1 %cmp.not.i2961, label %S_SvREFCNT_dec.exit2968, label %if.then.i2962

if.then.i2962:                                    ; preds = %if.end2102
  %sv_refcnt.i2963 = getelementptr inbounds nuw i8, ptr %587, i64 8
  %588 = load i32, ptr %sv_refcnt.i2963, align 8
  %cmp1.i2964 = icmp ugt i32 %588, 1
  br i1 %cmp1.i2964, label %if.then4.i2966, label %if.else.i2965

if.then4.i2966:                                   ; preds = %if.then.i2962
  %sub.i2967 = add i32 %588, -1
  store i32 %sub.i2967, ptr %sv_refcnt.i2963, align 8
  br label %S_SvREFCNT_dec.exit2968

if.else.i2965:                                    ; preds = %if.then.i2962
  call void @Perl_sv_free2(ptr noundef nonnull %587, i32 noundef %588) #4
  br label %S_SvREFCNT_dec.exit2968

S_SvREFCNT_dec.exit2968:                          ; preds = %if.else.i2965, %if.then4.i2966, %if.end2102
  %ps.2 = getelementptr inbounds i8, ptr %ps.23004, i64 -24
  store ptr %ps.2, ptr %ps1, align 8
  %589 = load ptr, ptr %stack, align 8
  %cmp2068 = icmp ugt ptr %ps.2, %589
  br i1 %cmp2068, label %do.body2070, label %yyreturn.loopexit, !llvm.loop !2

if.end2106:                                       ; preds = %if.then2059
  store i32 -2, ptr %yychar, align 8
  br label %yyerrlab1

yyerrlab1:                                        ; preds = %if.end2106, %if.end2055
  store i32 3, ptr %yyerrstatus, align 4
  br label %for.cond2110

for.cond2110:                                     ; preds = %S_SvREFCNT_dec.exit2976, %yyerrlab1
  %ps.3 = phi ptr [ %ps.1, %yyerrlab1 ], [ %incdec.ptr2178, %S_SvREFCNT_dec.exit2976 ]
  %yystate.1.in = phi i16 [ %1, %yyerrlab1 ], [ %610, %S_SvREFCNT_dec.exit2976 ]
  %idxprom2111 = sext i16 %yystate.1.in to i64
  %arrayidx2112 = getelementptr inbounds i16, ptr @yypact, i64 %idxprom2111
  %590 = load i16, ptr %arrayidx2112, align 2
  %cmp2118 = icmp sgt i16 %590, -2
  br i1 %cmp2118, label %land.lhs.true2123, label %if.end2138

land.lhs.true2123:                                ; preds = %for.cond2110
  %conv2113 = sext i16 %590 to i64
  %add2117 = add nsw i64 %conv2113, 1
  %arrayidx2125 = getelementptr inbounds nuw i16, ptr @yycheck, i64 %add2117
  %591 = load i16, ptr %arrayidx2125, align 2
  %cmp2127 = icmp eq i16 %591, 1
  br i1 %cmp2127, label %if.then2129, label %if.end2138

if.then2129:                                      ; preds = %land.lhs.true2123
  %arrayidx2131 = getelementptr inbounds nuw i16, ptr @yytable, i64 %add2117
  %592 = load i16, ptr %arrayidx2131, align 2
  %cmp2133 = icmp sgt i16 %592, 0
  br i1 %cmp2133, label %for.end2182, label %if.end2138

if.end2138:                                       ; preds = %if.then2129, %land.lhs.true2123, %for.cond2110
  %593 = load ptr, ptr %stack, align 8
  %cmp2140 = icmp eq ptr %ps.3, %593
  br i1 %cmp2140, label %yyreturn.loopexit3005, label %do.body2144

do.body2144:                                      ; preds = %if.end2138
  %594 = load i32, ptr @PL_savestack_ix, align 4
  %savestack_ix2145 = getelementptr inbounds nuw i8, ptr %ps.3, i64 12
  %595 = load i32, ptr %savestack_ix2145, align 4
  %cmp2146 = icmp sgt i32 %594, %595
  br i1 %cmp2146, label %if.then2148, label %do.end2152

if.then2148:                                      ; preds = %do.body2144
  call void @Perl_leave_scope(i32 noundef %595) #4
  br label %do.end2152

do.end2152:                                       ; preds = %if.then2148, %do.body2144
  %state2153 = getelementptr inbounds nuw i8, ptr %ps.3, i64 8
  %596 = load i16, ptr %state2153, align 8
  %idxprom2154 = sext i16 %596 to i64
  %arrayidx2155 = getelementptr inbounds i8, ptr @yystos, i64 %idxprom2154
  %597 = load i8, ptr %arrayidx2155, align 1
  %idxprom2156 = zext i8 %597 to i64
  %arrayidx2157 = getelementptr inbounds nuw i32, ptr @yy_type_tab, i64 %idxprom2156
  %598 = load i32, ptr %arrayidx2157, align 4
  %cmp2158 = icmp eq i32 %598, 1
  br i1 %cmp2158, label %land.lhs.true2160, label %if.end2176

land.lhs.true2160:                                ; preds = %do.end2152
  %599 = load ptr, ptr %ps.3, align 8
  %tobool2162.not = icmp eq ptr %599, null
  br i1 %tobool2162.not, label %if.end2176, label %if.then2163

if.then2163:                                      ; preds = %land.lhs.true2160
  %compcv2164 = getelementptr inbounds nuw i8, ptr %ps.3, i64 16
  %600 = load ptr, ptr %compcv2164, align 8
  %601 = load ptr, ptr @PL_compcv, align 8
  %cmp2165.not = icmp eq ptr %600, %601
  br i1 %cmp2165.not, label %if.end2174, label %if.then2167

if.then2167:                                      ; preds = %if.then2163
  store ptr %600, ptr @PL_compcv, align 8
  %602 = load ptr, ptr %600, align 8
  %xcv_padlist_u2170 = getelementptr inbounds nuw i8, ptr %602, i64 72
  %603 = load ptr, ptr %xcv_padlist_u2170, align 8
  %xpadl_alloc2171 = getelementptr inbounds nuw i8, ptr %603, i64 8
  %604 = load ptr, ptr %xpadl_alloc2171, align 8
  %arrayidx2172 = getelementptr inbounds nuw i8, ptr %604, i64 8
  %605 = load ptr, ptr %arrayidx2172, align 8
  store ptr %605, ptr @PL_comppad, align 8
  %sv_u2173 = getelementptr inbounds nuw i8, ptr %605, i64 16
  %606 = load ptr, ptr %sv_u2173, align 8
  store ptr %606, ptr @PL_curpad, align 8
  br label %if.end2174

if.end2174:                                       ; preds = %if.then2167, %if.then2163
  %607 = load ptr, ptr %ps.3, align 8
  call void @Perl_op_free(ptr noundef %607) #4
  br label %if.end2176

if.end2176:                                       ; preds = %if.end2174, %land.lhs.true2160, %do.end2152
  %compcv2177 = getelementptr inbounds nuw i8, ptr %ps.3, i64 16
  %608 = load ptr, ptr %compcv2177, align 8
  %cmp.not.i2969 = icmp eq ptr %608, null
  br i1 %cmp.not.i2969, label %S_SvREFCNT_dec.exit2976, label %if.then.i2970

if.then.i2970:                                    ; preds = %if.end2176
  %sv_refcnt.i2971 = getelementptr inbounds nuw i8, ptr %608, i64 8
  %609 = load i32, ptr %sv_refcnt.i2971, align 8
  %cmp1.i2972 = icmp ugt i32 %609, 1
  br i1 %cmp1.i2972, label %if.then4.i2974, label %if.else.i2973

if.then4.i2974:                                   ; preds = %if.then.i2970
  %sub.i2975 = add i32 %609, -1
  store i32 %sub.i2975, ptr %sv_refcnt.i2971, align 8
  br label %S_SvREFCNT_dec.exit2976

if.else.i2973:                                    ; preds = %if.then.i2970
  call void @Perl_sv_free2(ptr noundef nonnull %608, i32 noundef %609) #4
  br label %S_SvREFCNT_dec.exit2976

S_SvREFCNT_dec.exit2976:                          ; preds = %if.else.i2973, %if.then4.i2974, %if.end2176
  %incdec.ptr2178 = getelementptr inbounds i8, ptr %ps.3, i64 -24
  store ptr %incdec.ptr2178, ptr %ps1, align 8
  %state2180 = getelementptr inbounds i8, ptr %ps.3, i64 -16
  %610 = load i16, ptr %state2180, align 8
  br label %for.cond2110

for.end2182:                                      ; preds = %if.then2129
  %ps.3.lcssa = phi ptr [ %ps.3, %if.then2129 ]
  %.lcssa3008 = phi i16 [ %592, %if.then2129 ]
  %cmp2183 = icmp eq i16 %.lcssa3008, 14
  br i1 %cmp2183, label %yyacceptlab, label %if.end2186

if.end2186:                                       ; preds = %for.end2182
  %incdec.ptr2187 = getelementptr inbounds nuw i8, ptr %ps.3.lcssa, i64 24
  store ptr %incdec.ptr2187, ptr %ps1, align 8
  %state2190 = getelementptr inbounds nuw i8, ptr %ps.3.lcssa, i64 32
  store i16 %.lcssa3008, ptr %state2190, align 8
  %611 = load i64, ptr %yylval, align 8
  store i64 %611, ptr %incdec.ptr2187, align 8
  %612 = load ptr, ptr @PL_compcv, align 8
  %cmp.not.i2977 = icmp eq ptr %612, null
  br i1 %cmp.not.i2977, label %S_SvREFCNT_inc.exit2981, label %if.then.i2978

if.then.i2978:                                    ; preds = %if.end2186
  %sv_refcnt.i2979 = getelementptr inbounds nuw i8, ptr %612, i64 8
  %613 = load i32, ptr %sv_refcnt.i2979, align 8
  %inc.i2980 = add i32 %613, 1
  store i32 %inc.i2980, ptr %sv_refcnt.i2979, align 8
  br label %S_SvREFCNT_inc.exit2981

S_SvREFCNT_inc.exit2981:                          ; preds = %if.then.i2978, %if.end2186
  %compcv2194 = getelementptr inbounds nuw i8, ptr %ps.3.lcssa, i64 40
  store ptr %612, ptr %compcv2194, align 8
  %614 = load i32, ptr @PL_savestack_ix, align 4
  %savestack_ix2195 = getelementptr inbounds nuw i8, ptr %ps.3.lcssa, i64 36
  store i32 %614, ptr %savestack_ix2195, align 4
  br label %yynewstate.backedge

yyacceptlab:                                      ; preds = %for.end2182, %if.end77
  %615 = load ptr, ptr %ps1, align 8
  %616 = load ptr, ptr %stack, align 8
  %cmp21992998 = icmp ugt ptr %615, %616
  br i1 %cmp21992998, label %for.body2201.preheader, label %for.end2205

for.body2201.preheader:                           ; preds = %yyacceptlab
  br label %for.body2201

for.body2201:                                     ; preds = %S_SvREFCNT_dec.exit2989, %for.body2201.preheader
  %ps.42999 = phi ptr [ %incdec.ptr2204, %S_SvREFCNT_dec.exit2989 ], [ %615, %for.body2201.preheader ]
  %compcv2202 = getelementptr inbounds nuw i8, ptr %ps.42999, i64 16
  %617 = load ptr, ptr %compcv2202, align 8
  %cmp.not.i2982 = icmp eq ptr %617, null
  br i1 %cmp.not.i2982, label %S_SvREFCNT_dec.exit2989, label %if.then.i2983

if.then.i2983:                                    ; preds = %for.body2201
  %sv_refcnt.i2984 = getelementptr inbounds nuw i8, ptr %617, i64 8
  %618 = load i32, ptr %sv_refcnt.i2984, align 8
  %cmp1.i2985 = icmp ugt i32 %618, 1
  br i1 %cmp1.i2985, label %if.then4.i2987, label %if.else.i2986

if.then4.i2987:                                   ; preds = %if.then.i2983
  %sub.i2988 = add i32 %618, -1
  store i32 %sub.i2988, ptr %sv_refcnt.i2984, align 8
  br label %S_SvREFCNT_dec.exit2989

if.else.i2986:                                    ; preds = %if.then.i2983
  call void @Perl_sv_free2(ptr noundef nonnull %617, i32 noundef %618) #4
  br label %S_SvREFCNT_dec.exit2989

S_SvREFCNT_dec.exit2989:                          ; preds = %if.else.i2986, %if.then4.i2987, %for.body2201
  %incdec.ptr2204 = getelementptr inbounds i8, ptr %ps.42999, i64 -24
  %619 = load ptr, ptr %stack, align 8
  %cmp2199 = icmp ugt ptr %incdec.ptr2204, %619
  br i1 %cmp2199, label %for.body2201, label %for.end2205.loopexit, !llvm.loop !3

for.end2205.loopexit:                             ; preds = %S_SvREFCNT_dec.exit2989
  %.lcssa3006 = phi ptr [ %619, %S_SvREFCNT_dec.exit2989 ]
  br label %for.end2205

for.end2205:                                      ; preds = %for.end2205.loopexit, %yyacceptlab
  %.lcssa = phi ptr [ %616, %yyacceptlab ], [ %.lcssa3006, %for.end2205.loopexit ]
  store ptr %.lcssa, ptr %ps1, align 8
  br label %yyreturn

yyreturn.loopexit:                                ; preds = %S_SvREFCNT_dec.exit2968
  br label %yyreturn

yyreturn.loopexit3005:                            ; preds = %if.end2138
  br label %yyreturn

yyreturn:                                         ; preds = %yyreturn.loopexit3005, %yyreturn.loopexit, %for.end2205, %S_SvREFCNT_dec.exit2960
  %yyresult.0 = phi i32 [ 0, %for.end2205 ], [ 1, %S_SvREFCNT_dec.exit2960 ], [ 1, %yyreturn.loopexit ], [ 1, %yyreturn.loopexit3005 ]
  call void @Perl_pop_scope() #4
  ret i32 %yyresult.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @Perl_push_scope() local_unnamed_addr #2

declare void @Perl_save_pptr(ptr noundef) local_unnamed_addr #2

declare void @Perl_save_int(ptr noundef) local_unnamed_addr #2

declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

declare void @Perl_save_destructor_x(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare hidden void @S_clear_yystack(ptr noundef readonly captures(none)) #0

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @Perl_yylex() local_unnamed_addr #2

declare void @Perl_newPROG(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_block_end(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_yyunlex() local_unnamed_addr #2

declare i32 @Perl_block_start(i32 noundef) local_unnamed_addr #2

declare ptr @Perl_op_append_list(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSTATEOP(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @Perl_newFORM(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_pad_add_weakref(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @Perl_newATTRSUB_x(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @Perl_newMYSUB(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Perl_intro_my() local_unnamed_addr #2

declare void @Perl_package(ptr noundef) local_unnamed_addr #2

declare void @Perl_package_version(ptr noundef) local_unnamed_addr #2

declare void @Perl_utilize(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newCONDOP(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_op_scope(ptr noundef) local_unnamed_addr #2

declare i64 @Perl_pad_findmy_pvn(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newGIVENOP(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newWHENOP(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newWHILEOP(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_scalar(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_op_prepend_elem(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_op_append_elem(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newOP(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newFOROP(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_op_lvalue_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_my_attrs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newUNOP(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_op_convert_list(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_op_unscope(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newLOGOP(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newLOOPOP(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_scan_num(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_invert(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_start_subparse(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_parse_subsignature() local_unnamed_addr #2

declare ptr @Perl_sawparens(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newNULLLIST() local_unnamed_addr #2

declare ptr @Perl_newGVREF(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newMETHOP(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newANONATTRSUB(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newBINOP(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_oopsAV(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_doref(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @Perl_newAVREF(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_oopsHV(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_jmaybe(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newHVREF(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newCVREF(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSLICEOP(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newASSIGNOP(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newRANGE(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_bind_match(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVREF(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVOP(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newANONLIST(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newANONHASH(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_dofile(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_localize(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newLISTOP(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_list(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newLOOPEX(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_pmruntime(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_yyerror(ptr noundef) local_unnamed_addr #2

declare void @Perl_leave_scope(i32 noundef) local_unnamed_addr #2

declare void @Perl_op_free(ptr noundef) local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
!3 = distinct !{!3, !1}
