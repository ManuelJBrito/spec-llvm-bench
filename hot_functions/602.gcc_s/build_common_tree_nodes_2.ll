; ModuleID = '/tmp/tmp.7p1kseikYD/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }

@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@integer_types = external dso_local local_unnamed_addr global [11 x ptr], align 16
@global_trees = external dso_local local_unnamed_addr global [131 x ptr], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16

; Function Attrs: nounwind uwtable
declare dso_local noundef ptr @make_node_stat(i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare dso_local noundef ptr @copy_node_stat(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare dso_local noundef ptr @build_complex_type(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare dso_local noundef ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @type_hash_canon(i32 noundef, ptr noundef) local_unnamed_addr #0

declare void @layout_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare dso_local ptr @build_pointer_type_for_mode(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

declare void @fixup_unsigned_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @build_common_tree_nodes_2(i32 noundef %short_double) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @integer_types, i64 40), align 8
  %call.i = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef 0, i64 noundef 0)
  store ptr %call.i, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 104), align 8
  %1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @integer_types, i64 40), align 8
  %call.i327 = tail call ptr @build_int_cst_wide(ptr noundef %1, i64 noundef 1, i64 noundef 0)
  store ptr %call.i327, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 112), align 16
  %2 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @integer_types, i64 40), align 8
  %call.i328 = tail call ptr @build_int_cst_wide(ptr noundef %2, i64 noundef -1, i64 noundef -1)
  store ptr %call.i328, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 120), align 8
  %call3 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 0) #5
  store ptr %call3, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 136), align 8
  %call4 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 0) #5
  store ptr %call4, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 144), align 16
  %call5 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 2) #5
  store ptr %call5, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 152), align 8
  %call6 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 2) #5
  store ptr %call6, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 160), align 16
  %call7 = tail call ptr @size_int_kind(i64 noundef 8, i32 noundef 2) #5
  store ptr %call7, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 168), align 8
  %3 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 376), align 8
  %minval = getelementptr inbounds nuw i8, ptr %3, i64 104
  %4 = load ptr, ptr %minval, align 8
  store ptr %4, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 200), align 8
  %maxval = getelementptr inbounds nuw i8, ptr %3, i64 112
  %5 = load ptr, ptr %maxval, align 8
  store ptr %5, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 208), align 16
  %call8 = tail call ptr @make_node_stat(i32 noundef 19)
  store ptr %call8, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 304), align 16
  tail call void @layout_type(ptr noundef %call8) #5
  %6 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 304), align 16
  %align = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 8, ptr %align, align 8
  %7 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 304), align 16
  %bf.load = load i64, ptr %7, align 8
  %bf.clear = and i64 %bf.load, -4398046511105
  store i64 %bf.clear, ptr %7, align 8
  %8 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 304), align 16
  %9 = load ptr, ptr @global_trees, align 16
  %cmp.i = icmp eq ptr %8, %9
  br i1 %cmp.i, label %build_pointer_type.exit, label %cond.false.i

cond.false.i:                                     ; preds = %entry
  %bf.load.i = load i64, ptr %8, align 8
  %bf.lshr.i = lshr i64 %bf.load.i, 56
  %10 = trunc nuw i64 %bf.lshr.i to i8
  br label %build_pointer_type.exit

build_pointer_type.exit:                          ; preds = %cond.false.i, %entry
  %cond.i = phi i8 [ %10, %cond.false.i ], [ 0, %entry ]
  %11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1176), align 8
  %call.i329 = tail call i32 %11(i8 noundef zeroext %cond.i) #5
  %call1.i = tail call ptr @build_pointer_type_for_mode(ptr noundef %8, i32 noundef %call.i329, i8 noundef zeroext 0)
  %tobool.not.i = icmp eq ptr %call1.i, null
  %12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @integer_types, i64 40), align 8
  %spec.select.i = select i1 %tobool.not.i, ptr %12, ptr %call1.i
  %call.i330 = tail call ptr @build_int_cst_wide(ptr noundef %spec.select.i, i64 noundef 0, i64 noundef 0)
  store ptr %call.i330, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 128), align 16
  %type = getelementptr inbounds nuw i8, ptr %call.i330, i64 16
  %13 = load ptr, ptr %type, align 8
  tail call void @layout_type(ptr noundef %13) #5
  %14 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 304), align 16
  %15 = load ptr, ptr @global_trees, align 16
  %cmp.i331 = icmp eq ptr %14, %15
  br i1 %cmp.i331, label %build_pointer_type.exit338, label %cond.false.i332

cond.false.i332:                                  ; preds = %build_pointer_type.exit
  %bf.load.i333 = load i64, ptr %14, align 8
  %bf.lshr.i334 = lshr i64 %bf.load.i333, 56
  %16 = trunc nuw i64 %bf.lshr.i334 to i8
  br label %build_pointer_type.exit338

build_pointer_type.exit338:                       ; preds = %cond.false.i332, %build_pointer_type.exit
  %cond.i335 = phi i8 [ %16, %cond.false.i332 ], [ 0, %build_pointer_type.exit ]
  %17 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1176), align 8
  %call.i336 = tail call i32 %17(i8 noundef zeroext %cond.i335) #5
  %call1.i337 = tail call ptr @build_pointer_type_for_mode(ptr noundef %14, i32 noundef %call.i336, i8 noundef zeroext 0)
  store ptr %call1.i337, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 312), align 8
  %18 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 304), align 16
  %call12 = tail call ptr @build_qualified_type(ptr noundef %18, i32 noundef 1)
  %19 = load ptr, ptr @global_trees, align 16
  %cmp.i339 = icmp eq ptr %call12, %19
  br i1 %cmp.i339, label %build_pointer_type.exit346, label %cond.false.i340

cond.false.i340:                                  ; preds = %build_pointer_type.exit338
  %bf.load.i341 = load i64, ptr %call12, align 8
  %bf.lshr.i342 = lshr i64 %bf.load.i341, 56
  %20 = trunc nuw i64 %bf.lshr.i342 to i8
  br label %build_pointer_type.exit346

build_pointer_type.exit346:                       ; preds = %cond.false.i340, %build_pointer_type.exit338
  %cond.i343 = phi i8 [ %20, %cond.false.i340 ], [ 0, %build_pointer_type.exit338 ]
  %21 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1176), align 8
  %call.i344 = tail call i32 %21(i8 noundef zeroext %cond.i343) #5
  %call1.i345 = tail call ptr @build_pointer_type_for_mode(ptr noundef %call12, i32 noundef %call.i344, i8 noundef zeroext 0)
  store ptr %call1.i345, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 320), align 16
  %22 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 312), align 8
  store ptr %22, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 384), align 16
  %call14 = tail call ptr @make_node_stat(i32 noundef 9)
  store ptr %call14, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 248), align 8
  %precision = getelementptr inbounds nuw i8, ptr %call14, i64 60
  %bf.load15 = load i32, ptr %precision, align 4
  %bf.clear16 = and i32 %bf.load15, -1024
  %bf.set17 = or disjoint i32 %bf.clear16, 32
  store i32 %bf.set17, ptr %precision, align 4
  %23 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 248), align 8
  tail call void @layout_type(ptr noundef %23) #5
  %call18 = tail call ptr @make_node_stat(i32 noundef 9)
  store ptr %call18, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 256), align 16
  %tobool.not = icmp eq i32 %short_double, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %build_pointer_type.exit346
  %precision19 = getelementptr inbounds nuw i8, ptr %call18, i64 60
  %bf.load20 = load i32, ptr %precision19, align 4
  %bf.clear21 = and i32 %bf.load20, -1024
  %bf.set22 = or disjoint i32 %bf.clear21, 32
  store i32 %bf.set22, ptr %precision19, align 4
  br label %if.end

if.else:                                          ; preds = %build_pointer_type.exit346
  %precision23 = getelementptr inbounds nuw i8, ptr %call18, i64 60
  %bf.load24 = load i32, ptr %precision23, align 4
  %bf.clear25 = and i32 %bf.load24, -1024
  %bf.set26 = or disjoint i32 %bf.clear25, 64
  store i32 %bf.set26, ptr %precision23, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 256), align 16
  tail call void @layout_type(ptr noundef %24) #5
  %call27 = tail call ptr @make_node_stat(i32 noundef 9)
  store ptr %call27, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 264), align 8
  %precision28 = getelementptr inbounds nuw i8, ptr %call27, i64 60
  %bf.load29 = load i32, ptr %precision28, align 4
  %bf.clear30 = and i32 %bf.load29, -1024
  %bf.set31 = or disjoint i32 %bf.clear30, 80
  store i32 %bf.set31, ptr %precision28, align 4
  %25 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 264), align 8
  tail call void @layout_type(ptr noundef %25) #5
  %26 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 248), align 8
  %27 = load ptr, ptr @global_trees, align 16
  %cmp.i347 = icmp eq ptr %26, %27
  br i1 %cmp.i347, label %build_pointer_type.exit354, label %cond.false.i348

cond.false.i348:                                  ; preds = %if.end
  %bf.load.i349 = load i64, ptr %26, align 8
  %bf.lshr.i350 = lshr i64 %bf.load.i349, 56
  %28 = trunc nuw i64 %bf.lshr.i350 to i8
  br label %build_pointer_type.exit354

build_pointer_type.exit354:                       ; preds = %cond.false.i348, %if.end
  %cond.i351 = phi i8 [ %28, %cond.false.i348 ], [ 0, %if.end ]
  %29 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1176), align 8
  %call.i352 = tail call i32 %29(i8 noundef zeroext %cond.i351) #5
  %call1.i353 = tail call ptr @build_pointer_type_for_mode(ptr noundef %26, i32 noundef %call.i352, i8 noundef zeroext 0)
  store ptr %call1.i353, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 272), align 16
  %30 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 256), align 16
  %31 = load ptr, ptr @global_trees, align 16
  %cmp.i355 = icmp eq ptr %30, %31
  br i1 %cmp.i355, label %build_pointer_type.exit362, label %cond.false.i356

cond.false.i356:                                  ; preds = %build_pointer_type.exit354
  %bf.load.i357 = load i64, ptr %30, align 8
  %bf.lshr.i358 = lshr i64 %bf.load.i357, 56
  %32 = trunc nuw i64 %bf.lshr.i358 to i8
  br label %build_pointer_type.exit362

build_pointer_type.exit362:                       ; preds = %cond.false.i356, %build_pointer_type.exit354
  %cond.i359 = phi i8 [ %32, %cond.false.i356 ], [ 0, %build_pointer_type.exit354 ]
  %33 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1176), align 8
  %call.i360 = tail call i32 %33(i8 noundef zeroext %cond.i359) #5
  %call1.i361 = tail call ptr @build_pointer_type_for_mode(ptr noundef %30, i32 noundef %call.i360, i8 noundef zeroext 0)
  store ptr %call1.i361, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 280), align 8
  %34 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 264), align 8
  %35 = load ptr, ptr @global_trees, align 16
  %cmp.i363 = icmp eq ptr %34, %35
  br i1 %cmp.i363, label %build_pointer_type.exit370, label %cond.false.i364

cond.false.i364:                                  ; preds = %build_pointer_type.exit362
  %bf.load.i365 = load i64, ptr %34, align 8
  %bf.lshr.i366 = lshr i64 %bf.load.i365, 56
  %36 = trunc nuw i64 %bf.lshr.i366 to i8
  br label %build_pointer_type.exit370

build_pointer_type.exit370:                       ; preds = %cond.false.i364, %build_pointer_type.exit362
  %cond.i367 = phi i8 [ %36, %cond.false.i364 ], [ 0, %build_pointer_type.exit362 ]
  %37 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1176), align 8
  %call.i368 = tail call i32 %37(i8 noundef zeroext %cond.i367) #5
  %call1.i369 = tail call ptr @build_pointer_type_for_mode(ptr noundef %34, i32 noundef %call.i368, i8 noundef zeroext 0)
  store ptr %call1.i369, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 288), align 16
  %38 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @integer_types, i64 40), align 8
  %39 = load ptr, ptr @global_trees, align 16
  %cmp.i371 = icmp eq ptr %38, %39
  br i1 %cmp.i371, label %build_pointer_type.exit378, label %cond.false.i372

cond.false.i372:                                  ; preds = %build_pointer_type.exit370
  %bf.load.i373 = load i64, ptr %38, align 8
  %bf.lshr.i374 = lshr i64 %bf.load.i373, 56
  %40 = trunc nuw i64 %bf.lshr.i374 to i8
  br label %build_pointer_type.exit378

build_pointer_type.exit378:                       ; preds = %cond.false.i372, %build_pointer_type.exit370
  %cond.i375 = phi i8 [ %40, %cond.false.i372 ], [ 0, %build_pointer_type.exit370 ]
  %41 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1176), align 8
  %call.i376 = tail call i32 %41(i8 noundef zeroext %cond.i375) #5
  %call1.i377 = tail call ptr @build_pointer_type_for_mode(ptr noundef %38, i32 noundef %call.i376, i8 noundef zeroext 0)
  store ptr %call1.i377, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 296), align 8
  %call.i379 = tail call ptr @make_node_stat(i32 noundef 8)
  %precision1.i = getelementptr inbounds nuw i8, ptr %call.i379, i64 60
  %bf.load.i380 = load i32, ptr %precision1.i, align 4
  %bf.clear.i = and i32 %bf.load.i380, -1024
  %bf.set.i = or disjoint i32 %bf.clear.i, 32
  store i32 %bf.set.i, ptr %precision1.i, align 4
  tail call void @fixup_unsigned_type(ptr noundef nonnull %call.i379) #5
  %maxval.i = getelementptr inbounds nuw i8, ptr %call.i379, i64 112
  %42 = load ptr, ptr %maxval.i, align 8
  %cmp.i.i = icmp eq ptr %42, null
  br i1 %cmp.i.i, label %build_nonstandard_integer_type.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %build_pointer_type.exit378
  %bf.load.i.i = load i64, ptr %42, align 8
  %bf.cast46.i.i = and i64 %bf.load.i.i, 65535
  %cmp1.i.i = icmp eq i64 %bf.cast46.i.i, 23
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %build_nonstandard_integer_type.exit

land.rhs.i.i:                                     ; preds = %if.end.i.i
  %high.i.i = getelementptr inbounds nuw i8, ptr %42, i64 32
  %43 = load i64, ptr %high.i.i, align 8
  %cmp2.i.i = icmp eq i64 %43, 0
  br i1 %cmp2.i.i, label %tree_low_cst.exit.i, label %build_nonstandard_integer_type.exit

tree_low_cst.exit.i:                              ; preds = %land.rhs.i.i
  %int_cst.i16.i = getelementptr inbounds nuw i8, ptr %42, i64 24
  %44 = load i64, ptr %int_cst.i16.i, align 8
  %conv7.i = trunc i64 %44 to i32
  %call8.i = tail call ptr @type_hash_canon(i32 noundef %conv7.i, ptr noundef nonnull %call.i379)
  br label %build_nonstandard_integer_type.exit

build_nonstandard_integer_type.exit:              ; preds = %tree_low_cst.exit.i, %land.rhs.i.i, %if.end.i.i, %build_pointer_type.exit378
  %retval.0.i = phi ptr [ %call8.i, %tree_low_cst.exit.i ], [ %call.i379, %land.rhs.i.i ], [ %call.i379, %build_pointer_type.exit378 ], [ %call.i379, %if.end.i.i ]
  store ptr %retval.0.i, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 88), align 8
  %call.i381 = tail call ptr @make_node_stat(i32 noundef 8)
  %precision1.i382 = getelementptr inbounds nuw i8, ptr %call.i381, i64 60
  %bf.load.i383 = load i32, ptr %precision1.i382, align 4
  %bf.clear.i384 = and i32 %bf.load.i383, -1024
  %bf.set.i385 = or disjoint i32 %bf.clear.i384, 64
  store i32 %bf.set.i385, ptr %precision1.i382, align 4
  tail call void @fixup_unsigned_type(ptr noundef nonnull %call.i381) #5
  %maxval.i386 = getelementptr inbounds nuw i8, ptr %call.i381, i64 112
  %45 = load ptr, ptr %maxval.i386, align 8
  %cmp.i.i387 = icmp eq ptr %45, null
  br i1 %cmp.i.i387, label %build_nonstandard_integer_type.exit400, label %if.end.i.i388

if.end.i.i388:                                    ; preds = %build_nonstandard_integer_type.exit
  %bf.load.i.i389 = load i64, ptr %45, align 8
  %bf.cast46.i.i390 = and i64 %bf.load.i.i389, 65535
  %cmp1.i.i391 = icmp eq i64 %bf.cast46.i.i390, 23
  br i1 %cmp1.i.i391, label %land.rhs.i.i393, label %build_nonstandard_integer_type.exit400

land.rhs.i.i393:                                  ; preds = %if.end.i.i388
  %high.i.i394 = getelementptr inbounds nuw i8, ptr %45, i64 32
  %46 = load i64, ptr %high.i.i394, align 8
  %cmp2.i.i395 = icmp eq i64 %46, 0
  br i1 %cmp2.i.i395, label %tree_low_cst.exit.i396, label %build_nonstandard_integer_type.exit400

tree_low_cst.exit.i396:                           ; preds = %land.rhs.i.i393
  %int_cst.i16.i397 = getelementptr inbounds nuw i8, ptr %45, i64 24
  %47 = load i64, ptr %int_cst.i16.i397, align 8
  %conv7.i398 = trunc i64 %47 to i32
  %call8.i399 = tail call ptr @type_hash_canon(i32 noundef %conv7.i398, ptr noundef nonnull %call.i381)
  br label %build_nonstandard_integer_type.exit400

build_nonstandard_integer_type.exit400:           ; preds = %tree_low_cst.exit.i396, %land.rhs.i.i393, %if.end.i.i388, %build_nonstandard_integer_type.exit
  %retval.0.i392 = phi ptr [ %call8.i399, %tree_low_cst.exit.i396 ], [ %call.i381, %land.rhs.i.i393 ], [ %call.i381, %build_nonstandard_integer_type.exit ], [ %call.i381, %if.end.i.i388 ]
  store ptr %retval.0.i392, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 96), align 16
  %call38 = tail call ptr @make_node_stat(i32 noundef 9)
  store ptr %call38, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 392), align 8
  %precision39 = getelementptr inbounds nuw i8, ptr %call38, i64 60
  %bf.load40 = load i32, ptr %precision39, align 4
  %bf.clear41 = and i32 %bf.load40, -1024
  %bf.set42 = or disjoint i32 %bf.clear41, 32
  store i32 %bf.set42, ptr %precision39, align 4
  %48 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 392), align 8
  tail call void @layout_type(ptr noundef %48) #5
  %49 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 392), align 8
  %mode = getelementptr inbounds nuw i8, ptr %49, i64 60
  %bf.load43 = load i32, ptr %mode, align 4
  %bf.clear44 = and i32 %bf.load43, -16711681
  %bf.set45 = or disjoint i32 %bf.clear44, 2752512
  store i32 %bf.set45, ptr %mode, align 4
  %50 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 392), align 8
  %51 = load ptr, ptr @global_trees, align 16
  %cmp.i401 = icmp eq ptr %50, %51
  br i1 %cmp.i401, label %build_pointer_type.exit408, label %cond.false.i402

cond.false.i402:                                  ; preds = %build_nonstandard_integer_type.exit400
  %bf.load.i403 = load i64, ptr %50, align 8
  %bf.lshr.i404 = lshr i64 %bf.load.i403, 56
  %52 = trunc nuw i64 %bf.lshr.i404 to i8
  br label %build_pointer_type.exit408

build_pointer_type.exit408:                       ; preds = %cond.false.i402, %build_nonstandard_integer_type.exit400
  %cond.i405 = phi i8 [ %52, %cond.false.i402 ], [ 0, %build_nonstandard_integer_type.exit400 ]
  %53 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1176), align 8
  %call.i406 = tail call i32 %53(i8 noundef zeroext %cond.i405) #5
  %call1.i407 = tail call ptr @build_pointer_type_for_mode(ptr noundef %50, i32 noundef %call.i406, i8 noundef zeroext 0)
  store ptr %call1.i407, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 416), align 16
  %call47 = tail call ptr @make_node_stat(i32 noundef 9)
  store ptr %call47, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 400), align 16
  %precision48 = getelementptr inbounds nuw i8, ptr %call47, i64 60
  %bf.load49 = load i32, ptr %precision48, align 4
  %bf.clear50 = and i32 %bf.load49, -1024
  %bf.set51 = or disjoint i32 %bf.clear50, 64
  store i32 %bf.set51, ptr %precision48, align 4
  %54 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 400), align 16
  tail call void @layout_type(ptr noundef %54) #5
  %55 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 400), align 16
  %mode52 = getelementptr inbounds nuw i8, ptr %55, i64 60
  %bf.load53 = load i32, ptr %mode52, align 4
  %bf.clear54 = and i32 %bf.load53, -16711681
  %bf.set55 = or disjoint i32 %bf.clear54, 2818048
  store i32 %bf.set55, ptr %mode52, align 4
  %56 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 400), align 16
  %57 = load ptr, ptr @global_trees, align 16
  %cmp.i409 = icmp eq ptr %56, %57
  br i1 %cmp.i409, label %build_pointer_type.exit416, label %cond.false.i410

cond.false.i410:                                  ; preds = %build_pointer_type.exit408
  %bf.load.i411 = load i64, ptr %56, align 8
  %bf.lshr.i412 = lshr i64 %bf.load.i411, 56
  %58 = trunc nuw i64 %bf.lshr.i412 to i8
  br label %build_pointer_type.exit416

build_pointer_type.exit416:                       ; preds = %cond.false.i410, %build_pointer_type.exit408
  %cond.i413 = phi i8 [ %58, %cond.false.i410 ], [ 0, %build_pointer_type.exit408 ]
  %59 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1176), align 8
  %call.i414 = tail call i32 %59(i8 noundef zeroext %cond.i413) #5
  %call1.i415 = tail call ptr @build_pointer_type_for_mode(ptr noundef %56, i32 noundef %call.i414, i8 noundef zeroext 0)
  store ptr %call1.i415, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 424), align 8
  %call57 = tail call ptr @make_node_stat(i32 noundef 9)
  store ptr %call57, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 408), align 8
  %precision58 = getelementptr inbounds nuw i8, ptr %call57, i64 60
  %bf.load59 = load i32, ptr %precision58, align 4
  %bf.clear60 = and i32 %bf.load59, -1024
  %bf.set61 = or disjoint i32 %bf.clear60, 128
  store i32 %bf.set61, ptr %precision58, align 4
  %60 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 408), align 8
  tail call void @layout_type(ptr noundef %60) #5
  %61 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 408), align 8
  %mode62 = getelementptr inbounds nuw i8, ptr %61, i64 60
  %bf.load63 = load i32, ptr %mode62, align 4
  %bf.clear64 = and i32 %bf.load63, -16711681
  %bf.set65 = or disjoint i32 %bf.clear64, 2883584
  store i32 %bf.set65, ptr %mode62, align 4
  %62 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 408), align 8
  %63 = load ptr, ptr @global_trees, align 16
  %cmp.i417 = icmp eq ptr %62, %63
  br i1 %cmp.i417, label %build_pointer_type.exit424, label %cond.false.i418

cond.false.i418:                                  ; preds = %build_pointer_type.exit416
  %bf.load.i419 = load i64, ptr %62, align 8
  %bf.lshr.i420 = lshr i64 %bf.load.i419, 56
  %64 = trunc nuw i64 %bf.lshr.i420 to i8
  br label %build_pointer_type.exit424

build_pointer_type.exit424:                       ; preds = %cond.false.i418, %build_pointer_type.exit416
  %cond.i421 = phi i8 [ %64, %cond.false.i418 ], [ 0, %build_pointer_type.exit416 ]
  %65 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1176), align 8
  %call.i422 = tail call i32 %65(i8 noundef zeroext %cond.i421) #5
  %call1.i423 = tail call ptr @build_pointer_type_for_mode(ptr noundef %62, i32 noundef %call.i422, i8 noundef zeroext 0)
  store ptr %call1.i423, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 432), align 16
  %66 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @integer_types, i64 40), align 8
  %call67 = tail call ptr @build_complex_type(ptr noundef %66)
  store ptr %call67, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 216), align 8
  %67 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 248), align 8
  %call68 = tail call ptr @build_complex_type(ptr noundef %67)
  store ptr %call68, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 224), align 16
  %68 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 256), align 16
  %call69 = tail call ptr @build_complex_type(ptr noundef %68)
  store ptr %call69, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 232), align 8
  %69 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 264), align 8
  %call70 = tail call ptr @build_complex_type(ptr noundef %69)
  store ptr %call70, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 240), align 16
  %call71 = tail call ptr @make_fract_type(i32 noundef 8, i32 noundef 0, i32 noundef 1) #5
  store ptr %call71, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 456), align 8
  %call72 = tail call ptr @make_fract_type(i32 noundef 8, i32 noundef 1, i32 noundef 1) #5
  store ptr %call72, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 488), align 8
  %call73 = tail call ptr @make_fract_type(i32 noundef 8, i32 noundef 0, i32 noundef 0) #5
  store ptr %call73, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 520), align 8
  %call74 = tail call ptr @make_fract_type(i32 noundef 8, i32 noundef 1, i32 noundef 0) #5
  store ptr %call74, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 552), align 8
  %call75 = tail call ptr @make_fract_type(i32 noundef 16, i32 noundef 0, i32 noundef 1) #5
  store ptr %call75, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 464), align 16
  %call76 = tail call ptr @make_fract_type(i32 noundef 16, i32 noundef 1, i32 noundef 1) #5
  store ptr %call76, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 496), align 16
  %call77 = tail call ptr @make_fract_type(i32 noundef 16, i32 noundef 0, i32 noundef 0) #5
  store ptr %call77, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 528), align 16
  %call78 = tail call ptr @make_fract_type(i32 noundef 16, i32 noundef 1, i32 noundef 0) #5
  store ptr %call78, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 560), align 16
  %call79 = tail call ptr @make_fract_type(i32 noundef 32, i32 noundef 0, i32 noundef 1) #5
  store ptr %call79, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 472), align 8
  %call80 = tail call ptr @make_fract_type(i32 noundef 32, i32 noundef 1, i32 noundef 1) #5
  store ptr %call80, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 504), align 8
  %call81 = tail call ptr @make_fract_type(i32 noundef 32, i32 noundef 0, i32 noundef 0) #5
  store ptr %call81, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 536), align 8
  %call82 = tail call ptr @make_fract_type(i32 noundef 32, i32 noundef 1, i32 noundef 0) #5
  store ptr %call82, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 568), align 8
  %call83 = tail call ptr @make_fract_type(i32 noundef 64, i32 noundef 0, i32 noundef 1) #5
  store ptr %call83, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 480), align 16
  %call84 = tail call ptr @make_fract_type(i32 noundef 64, i32 noundef 1, i32 noundef 1) #5
  store ptr %call84, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 512), align 16
  %call85 = tail call ptr @make_fract_type(i32 noundef 64, i32 noundef 0, i32 noundef 0) #5
  store ptr %call85, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 544), align 16
  %call86 = tail call ptr @make_fract_type(i32 noundef 64, i32 noundef 1, i32 noundef 0) #5
  store ptr %call86, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 576), align 16
  %call87 = tail call ptr @make_accum_type(i32 noundef 16, i32 noundef 0, i32 noundef 1) #5
  store ptr %call87, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 584), align 8
  %call88 = tail call ptr @make_accum_type(i32 noundef 16, i32 noundef 1, i32 noundef 1) #5
  store ptr %call88, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 616), align 8
  %call89 = tail call ptr @make_accum_type(i32 noundef 16, i32 noundef 0, i32 noundef 0) #5
  store ptr %call89, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 648), align 8
  %call90 = tail call ptr @make_accum_type(i32 noundef 16, i32 noundef 1, i32 noundef 0) #5
  store ptr %call90, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 680), align 8
  %call91 = tail call ptr @make_accum_type(i32 noundef 32, i32 noundef 0, i32 noundef 1) #5
  store ptr %call91, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 592), align 16
  %call92 = tail call ptr @make_accum_type(i32 noundef 32, i32 noundef 1, i32 noundef 1) #5
  store ptr %call92, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 624), align 16
  %call93 = tail call ptr @make_accum_type(i32 noundef 32, i32 noundef 0, i32 noundef 0) #5
  store ptr %call93, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 656), align 16
  %call94 = tail call ptr @make_accum_type(i32 noundef 32, i32 noundef 1, i32 noundef 0) #5
  store ptr %call94, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 688), align 16
  %call95 = tail call ptr @make_accum_type(i32 noundef 64, i32 noundef 0, i32 noundef 1) #5
  store ptr %call95, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 600), align 8
  %call96 = tail call ptr @make_accum_type(i32 noundef 64, i32 noundef 1, i32 noundef 1) #5
  store ptr %call96, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 632), align 8
  %call97 = tail call ptr @make_accum_type(i32 noundef 64, i32 noundef 0, i32 noundef 0) #5
  store ptr %call97, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 664), align 8
  %call98 = tail call ptr @make_accum_type(i32 noundef 64, i32 noundef 1, i32 noundef 0) #5
  store ptr %call98, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 696), align 8
  %call99 = tail call ptr @make_accum_type(i32 noundef 128, i32 noundef 0, i32 noundef 1) #5
  store ptr %call99, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 608), align 16
  %call100 = tail call ptr @make_accum_type(i32 noundef 128, i32 noundef 1, i32 noundef 1) #5
  store ptr %call100, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 640), align 16
  %call101 = tail call ptr @make_accum_type(i32 noundef 128, i32 noundef 0, i32 noundef 0) #5
  store ptr %call101, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 672), align 16
  %call102 = tail call ptr @make_accum_type(i32 noundef 128, i32 noundef 1, i32 noundef 0) #5
  store ptr %call102, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 704), align 16
  %70 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 20), align 4
  %conv103 = zext i8 %70 to i32
  %mul = shl nuw nsw i32 %conv103, 3
  %71 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul)
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %if.else.split.i, label %if.end59.i

if.else.split.i:                                  ; preds = %build_pointer_type.exit424
  %73 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul, i1 true)
  switch i32 %73, label %if.end59.i [
    i32 3, label %if.then28.i
    i32 4, label %if.then36.i
    i32 5, label %if.then44.i
    i32 6, label %if.then52.i
  ]

if.then28.i:                                      ; preds = %if.else.split.i
  %74 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 520), align 8
  br label %make_or_reuse_fract_type.exit

if.then36.i:                                      ; preds = %if.else.split.i
  %75 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 528), align 16
  br label %make_or_reuse_fract_type.exit

if.then44.i:                                      ; preds = %if.else.split.i
  %76 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 536), align 8
  br label %make_or_reuse_fract_type.exit

if.then52.i:                                      ; preds = %if.else.split.i
  %77 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 544), align 16
  br label %make_or_reuse_fract_type.exit

if.end59.i:                                       ; preds = %if.else.split.i, %build_pointer_type.exit424
  %call.i425 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul, i32 noundef 0, i32 noundef 0) #5
  br label %make_or_reuse_fract_type.exit

make_or_reuse_fract_type.exit:                    ; preds = %if.end59.i, %if.then52.i, %if.then44.i, %if.then36.i, %if.then28.i
  %retval.0.i426 = phi ptr [ %call.i425, %if.end59.i ], [ %74, %if.then28.i ], [ %75, %if.then36.i ], [ %76, %if.then44.i ], [ %77, %if.then52.i ]
  store ptr %retval.0.i426, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 712), align 8
  %78 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 25), align 1
  %conv108 = zext i8 %78 to i32
  %mul109 = shl nuw nsw i32 %conv108, 3
  %79 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul109)
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %if.else.split.i430, label %if.end59.i427

if.else.split.i430:                               ; preds = %make_or_reuse_fract_type.exit
  %81 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul109, i1 true)
  switch i32 %81, label %if.end59.i427 [
    i32 3, label %if.then28.i434
    i32 4, label %if.then36.i433
    i32 5, label %if.then44.i432
    i32 6, label %if.then52.i431
  ]

if.then28.i434:                                   ; preds = %if.else.split.i430
  %82 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 552), align 8
  br label %make_or_reuse_fract_type.exit435

if.then36.i433:                                   ; preds = %if.else.split.i430
  %83 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 560), align 16
  br label %make_or_reuse_fract_type.exit435

if.then44.i432:                                   ; preds = %if.else.split.i430
  %84 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 568), align 8
  br label %make_or_reuse_fract_type.exit435

if.then52.i431:                                   ; preds = %if.else.split.i430
  %85 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 576), align 16
  br label %make_or_reuse_fract_type.exit435

if.end59.i427:                                    ; preds = %if.else.split.i430, %make_or_reuse_fract_type.exit
  %call.i428 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul109, i32 noundef 1, i32 noundef 0) #5
  br label %make_or_reuse_fract_type.exit435

make_or_reuse_fract_type.exit435:                 ; preds = %if.end59.i427, %if.then52.i431, %if.then44.i432, %if.then36.i433, %if.then28.i434
  %retval.0.i429 = phi ptr [ %call.i428, %if.end59.i427 ], [ %82, %if.then28.i434 ], [ %83, %if.then36.i433 ], [ %84, %if.then44.i432 ], [ %85, %if.then52.i431 ]
  store ptr %retval.0.i429, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 752), align 16
  %86 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 20), align 4
  %conv114 = zext i8 %86 to i32
  %mul115 = shl nuw nsw i32 %conv114, 3
  %87 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul115)
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %if.then.split.i, label %if.end59.i436

if.then.split.i:                                  ; preds = %make_or_reuse_fract_type.exit435
  %89 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul115, i1 true)
  switch i32 %89, label %if.end59.i436 [
    i32 3, label %if.then1.i
    i32 4, label %if.then4.i
    i32 5, label %if.then12.i
    i32 6, label %if.then20.i
  ]

if.then1.i:                                       ; preds = %if.then.split.i
  %90 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 456), align 8
  br label %make_or_reuse_fract_type.exit440

if.then4.i:                                       ; preds = %if.then.split.i
  %91 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 464), align 16
  br label %make_or_reuse_fract_type.exit440

if.then12.i:                                      ; preds = %if.then.split.i
  %92 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 472), align 8
  br label %make_or_reuse_fract_type.exit440

if.then20.i:                                      ; preds = %if.then.split.i
  %93 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 480), align 16
  br label %make_or_reuse_fract_type.exit440

if.end59.i436:                                    ; preds = %if.then.split.i, %make_or_reuse_fract_type.exit435
  %call.i437 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul115, i32 noundef 0, i32 noundef 1) #5
  br label %make_or_reuse_fract_type.exit440

make_or_reuse_fract_type.exit440:                 ; preds = %if.end59.i436, %if.then20.i, %if.then12.i, %if.then4.i, %if.then1.i
  %retval.0.i438 = phi ptr [ %90, %if.then1.i ], [ %91, %if.then4.i ], [ %92, %if.then12.i ], [ %93, %if.then20.i ], [ %call.i437, %if.end59.i436 ]
  store ptr %retval.0.i438, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 792), align 8
  %94 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 25), align 1
  %conv120 = zext i8 %94 to i32
  %mul121 = shl nuw nsw i32 %conv120, 3
  %95 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul121)
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %if.then.split.i444, label %if.end59.i441

if.then.split.i444:                               ; preds = %make_or_reuse_fract_type.exit440
  %97 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul121, i1 true)
  switch i32 %97, label %if.end59.i441 [
    i32 3, label %if.then1.i448
    i32 4, label %if.then4.i447
    i32 5, label %if.then12.i446
    i32 6, label %if.then20.i445
  ]

if.then1.i448:                                    ; preds = %if.then.split.i444
  %98 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 488), align 8
  br label %make_or_reuse_fract_type.exit450

if.then4.i447:                                    ; preds = %if.then.split.i444
  %99 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 496), align 16
  br label %make_or_reuse_fract_type.exit450

if.then12.i446:                                   ; preds = %if.then.split.i444
  %100 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 504), align 8
  br label %make_or_reuse_fract_type.exit450

if.then20.i445:                                   ; preds = %if.then.split.i444
  %101 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 512), align 16
  br label %make_or_reuse_fract_type.exit450

if.end59.i441:                                    ; preds = %if.then.split.i444, %make_or_reuse_fract_type.exit440
  %call.i442 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul121, i32 noundef 1, i32 noundef 1) #5
  br label %make_or_reuse_fract_type.exit450

make_or_reuse_fract_type.exit450:                 ; preds = %if.end59.i441, %if.then20.i445, %if.then12.i446, %if.then4.i447, %if.then1.i448
  %retval.0.i443 = phi ptr [ %98, %if.then1.i448 ], [ %99, %if.then4.i447 ], [ %100, %if.then12.i446 ], [ %101, %if.then20.i445 ], [ %call.i442, %if.end59.i441 ]
  store ptr %retval.0.i443, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 832), align 16
  %102 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 21), align 1
  %conv126 = zext i8 %102 to i32
  %mul127 = shl nuw nsw i32 %conv126, 3
  %103 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul127)
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %if.else.split.i454, label %if.end59.i451

if.else.split.i454:                               ; preds = %make_or_reuse_fract_type.exit450
  %105 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul127, i1 true)
  switch i32 %105, label %if.end59.i451 [
    i32 3, label %if.then28.i458
    i32 4, label %if.then36.i457
    i32 5, label %if.then44.i456
    i32 6, label %if.then52.i455
  ]

if.then28.i458:                                   ; preds = %if.else.split.i454
  %106 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 520), align 8
  br label %make_or_reuse_fract_type.exit459

if.then36.i457:                                   ; preds = %if.else.split.i454
  %107 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 528), align 16
  br label %make_or_reuse_fract_type.exit459

if.then44.i456:                                   ; preds = %if.else.split.i454
  %108 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 536), align 8
  br label %make_or_reuse_fract_type.exit459

if.then52.i455:                                   ; preds = %if.else.split.i454
  %109 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 544), align 16
  br label %make_or_reuse_fract_type.exit459

if.end59.i451:                                    ; preds = %if.else.split.i454, %make_or_reuse_fract_type.exit450
  %call.i452 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul127, i32 noundef 0, i32 noundef 0) #5
  br label %make_or_reuse_fract_type.exit459

make_or_reuse_fract_type.exit459:                 ; preds = %if.end59.i451, %if.then52.i455, %if.then44.i456, %if.then36.i457, %if.then28.i458
  %retval.0.i453 = phi ptr [ %call.i452, %if.end59.i451 ], [ %106, %if.then28.i458 ], [ %107, %if.then36.i457 ], [ %108, %if.then44.i456 ], [ %109, %if.then52.i455 ]
  store ptr %retval.0.i453, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 720), align 16
  %110 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 26), align 2
  %conv132 = zext i8 %110 to i32
  %mul133 = shl nuw nsw i32 %conv132, 3
  %111 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul133)
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %if.else.split.i463, label %if.end59.i460

if.else.split.i463:                               ; preds = %make_or_reuse_fract_type.exit459
  %113 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul133, i1 true)
  switch i32 %113, label %if.end59.i460 [
    i32 3, label %if.then28.i467
    i32 4, label %if.then36.i466
    i32 5, label %if.then44.i465
    i32 6, label %if.then52.i464
  ]

if.then28.i467:                                   ; preds = %if.else.split.i463
  %114 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 552), align 8
  br label %make_or_reuse_fract_type.exit468

if.then36.i466:                                   ; preds = %if.else.split.i463
  %115 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 560), align 16
  br label %make_or_reuse_fract_type.exit468

if.then44.i465:                                   ; preds = %if.else.split.i463
  %116 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 568), align 8
  br label %make_or_reuse_fract_type.exit468

if.then52.i464:                                   ; preds = %if.else.split.i463
  %117 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 576), align 16
  br label %make_or_reuse_fract_type.exit468

if.end59.i460:                                    ; preds = %if.else.split.i463, %make_or_reuse_fract_type.exit459
  %call.i461 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul133, i32 noundef 1, i32 noundef 0) #5
  br label %make_or_reuse_fract_type.exit468

make_or_reuse_fract_type.exit468:                 ; preds = %if.end59.i460, %if.then52.i464, %if.then44.i465, %if.then36.i466, %if.then28.i467
  %retval.0.i462 = phi ptr [ %call.i461, %if.end59.i460 ], [ %114, %if.then28.i467 ], [ %115, %if.then36.i466 ], [ %116, %if.then44.i465 ], [ %117, %if.then52.i464 ]
  store ptr %retval.0.i462, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 760), align 8
  %118 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 21), align 1
  %conv138 = zext i8 %118 to i32
  %mul139 = shl nuw nsw i32 %conv138, 3
  %119 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul139)
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %if.then.split.i472, label %if.end59.i469

if.then.split.i472:                               ; preds = %make_or_reuse_fract_type.exit468
  %121 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul139, i1 true)
  switch i32 %121, label %if.end59.i469 [
    i32 3, label %if.then1.i476
    i32 4, label %if.then4.i475
    i32 5, label %if.then12.i474
    i32 6, label %if.then20.i473
  ]

if.then1.i476:                                    ; preds = %if.then.split.i472
  %122 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 456), align 8
  br label %make_or_reuse_fract_type.exit478

if.then4.i475:                                    ; preds = %if.then.split.i472
  %123 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 464), align 16
  br label %make_or_reuse_fract_type.exit478

if.then12.i474:                                   ; preds = %if.then.split.i472
  %124 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 472), align 8
  br label %make_or_reuse_fract_type.exit478

if.then20.i473:                                   ; preds = %if.then.split.i472
  %125 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 480), align 16
  br label %make_or_reuse_fract_type.exit478

if.end59.i469:                                    ; preds = %if.then.split.i472, %make_or_reuse_fract_type.exit468
  %call.i470 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul139, i32 noundef 0, i32 noundef 1) #5
  br label %make_or_reuse_fract_type.exit478

make_or_reuse_fract_type.exit478:                 ; preds = %if.end59.i469, %if.then20.i473, %if.then12.i474, %if.then4.i475, %if.then1.i476
  %retval.0.i471 = phi ptr [ %122, %if.then1.i476 ], [ %123, %if.then4.i475 ], [ %124, %if.then12.i474 ], [ %125, %if.then20.i473 ], [ %call.i470, %if.end59.i469 ]
  store ptr %retval.0.i471, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 800), align 16
  %126 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 26), align 2
  %conv144 = zext i8 %126 to i32
  %mul145 = shl nuw nsw i32 %conv144, 3
  %127 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul145)
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %if.then.split.i482, label %if.end59.i479

if.then.split.i482:                               ; preds = %make_or_reuse_fract_type.exit478
  %129 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul145, i1 true)
  switch i32 %129, label %if.end59.i479 [
    i32 3, label %if.then1.i486
    i32 4, label %if.then4.i485
    i32 5, label %if.then12.i484
    i32 6, label %if.then20.i483
  ]

if.then1.i486:                                    ; preds = %if.then.split.i482
  %130 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 488), align 8
  br label %make_or_reuse_fract_type.exit488

if.then4.i485:                                    ; preds = %if.then.split.i482
  %131 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 496), align 16
  br label %make_or_reuse_fract_type.exit488

if.then12.i484:                                   ; preds = %if.then.split.i482
  %132 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 504), align 8
  br label %make_or_reuse_fract_type.exit488

if.then20.i483:                                   ; preds = %if.then.split.i482
  %133 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 512), align 16
  br label %make_or_reuse_fract_type.exit488

if.end59.i479:                                    ; preds = %if.then.split.i482, %make_or_reuse_fract_type.exit478
  %call.i480 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul145, i32 noundef 1, i32 noundef 1) #5
  br label %make_or_reuse_fract_type.exit488

make_or_reuse_fract_type.exit488:                 ; preds = %if.end59.i479, %if.then20.i483, %if.then12.i484, %if.then4.i485, %if.then1.i486
  %retval.0.i481 = phi ptr [ %130, %if.then1.i486 ], [ %131, %if.then4.i485 ], [ %132, %if.then12.i484 ], [ %133, %if.then20.i483 ], [ %call.i480, %if.end59.i479 ]
  store ptr %retval.0.i481, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 840), align 8
  %134 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 22), align 2
  %conv150 = zext i8 %134 to i32
  %mul151 = shl nuw nsw i32 %conv150, 3
  %135 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul151)
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %if.else.split.i492, label %if.end59.i489

if.else.split.i492:                               ; preds = %make_or_reuse_fract_type.exit488
  %137 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul151, i1 true)
  switch i32 %137, label %if.end59.i489 [
    i32 3, label %if.then28.i496
    i32 4, label %if.then36.i495
    i32 5, label %if.then44.i494
    i32 6, label %if.then52.i493
  ]

if.then28.i496:                                   ; preds = %if.else.split.i492
  %138 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 520), align 8
  br label %make_or_reuse_fract_type.exit497

if.then36.i495:                                   ; preds = %if.else.split.i492
  %139 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 528), align 16
  br label %make_or_reuse_fract_type.exit497

if.then44.i494:                                   ; preds = %if.else.split.i492
  %140 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 536), align 8
  br label %make_or_reuse_fract_type.exit497

if.then52.i493:                                   ; preds = %if.else.split.i492
  %141 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 544), align 16
  br label %make_or_reuse_fract_type.exit497

if.end59.i489:                                    ; preds = %if.else.split.i492, %make_or_reuse_fract_type.exit488
  %call.i490 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul151, i32 noundef 0, i32 noundef 0) #5
  br label %make_or_reuse_fract_type.exit497

make_or_reuse_fract_type.exit497:                 ; preds = %if.end59.i489, %if.then52.i493, %if.then44.i494, %if.then36.i495, %if.then28.i496
  %retval.0.i491 = phi ptr [ %call.i490, %if.end59.i489 ], [ %138, %if.then28.i496 ], [ %139, %if.then36.i495 ], [ %140, %if.then44.i494 ], [ %141, %if.then52.i493 ]
  store ptr %retval.0.i491, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 728), align 8
  %142 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 27), align 1
  %conv156 = zext i8 %142 to i32
  %mul157 = shl nuw nsw i32 %conv156, 3
  %143 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul157)
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %if.else.split.i501, label %if.end59.i498

if.else.split.i501:                               ; preds = %make_or_reuse_fract_type.exit497
  %145 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul157, i1 true)
  switch i32 %145, label %if.end59.i498 [
    i32 3, label %if.then28.i505
    i32 4, label %if.then36.i504
    i32 5, label %if.then44.i503
    i32 6, label %if.then52.i502
  ]

if.then28.i505:                                   ; preds = %if.else.split.i501
  %146 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 552), align 8
  br label %make_or_reuse_fract_type.exit506

if.then36.i504:                                   ; preds = %if.else.split.i501
  %147 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 560), align 16
  br label %make_or_reuse_fract_type.exit506

if.then44.i503:                                   ; preds = %if.else.split.i501
  %148 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 568), align 8
  br label %make_or_reuse_fract_type.exit506

if.then52.i502:                                   ; preds = %if.else.split.i501
  %149 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 576), align 16
  br label %make_or_reuse_fract_type.exit506

if.end59.i498:                                    ; preds = %if.else.split.i501, %make_or_reuse_fract_type.exit497
  %call.i499 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul157, i32 noundef 1, i32 noundef 0) #5
  br label %make_or_reuse_fract_type.exit506

make_or_reuse_fract_type.exit506:                 ; preds = %if.end59.i498, %if.then52.i502, %if.then44.i503, %if.then36.i504, %if.then28.i505
  %retval.0.i500 = phi ptr [ %call.i499, %if.end59.i498 ], [ %146, %if.then28.i505 ], [ %147, %if.then36.i504 ], [ %148, %if.then44.i503 ], [ %149, %if.then52.i502 ]
  store ptr %retval.0.i500, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 768), align 16
  %150 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 22), align 2
  %conv162 = zext i8 %150 to i32
  %mul163 = shl nuw nsw i32 %conv162, 3
  %151 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul163)
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %if.then.split.i510, label %if.end59.i507

if.then.split.i510:                               ; preds = %make_or_reuse_fract_type.exit506
  %153 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul163, i1 true)
  switch i32 %153, label %if.end59.i507 [
    i32 3, label %if.then1.i514
    i32 4, label %if.then4.i513
    i32 5, label %if.then12.i512
    i32 6, label %if.then20.i511
  ]

if.then1.i514:                                    ; preds = %if.then.split.i510
  %154 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 456), align 8
  br label %make_or_reuse_fract_type.exit516

if.then4.i513:                                    ; preds = %if.then.split.i510
  %155 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 464), align 16
  br label %make_or_reuse_fract_type.exit516

if.then12.i512:                                   ; preds = %if.then.split.i510
  %156 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 472), align 8
  br label %make_or_reuse_fract_type.exit516

if.then20.i511:                                   ; preds = %if.then.split.i510
  %157 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 480), align 16
  br label %make_or_reuse_fract_type.exit516

if.end59.i507:                                    ; preds = %if.then.split.i510, %make_or_reuse_fract_type.exit506
  %call.i508 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul163, i32 noundef 0, i32 noundef 1) #5
  br label %make_or_reuse_fract_type.exit516

make_or_reuse_fract_type.exit516:                 ; preds = %if.end59.i507, %if.then20.i511, %if.then12.i512, %if.then4.i513, %if.then1.i514
  %retval.0.i509 = phi ptr [ %154, %if.then1.i514 ], [ %155, %if.then4.i513 ], [ %156, %if.then12.i512 ], [ %157, %if.then20.i511 ], [ %call.i508, %if.end59.i507 ]
  store ptr %retval.0.i509, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 808), align 8
  %158 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 27), align 1
  %conv168 = zext i8 %158 to i32
  %mul169 = shl nuw nsw i32 %conv168, 3
  %159 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul169)
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %if.then.split.i520, label %if.end59.i517

if.then.split.i520:                               ; preds = %make_or_reuse_fract_type.exit516
  %161 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul169, i1 true)
  switch i32 %161, label %if.end59.i517 [
    i32 3, label %if.then1.i524
    i32 4, label %if.then4.i523
    i32 5, label %if.then12.i522
    i32 6, label %if.then20.i521
  ]

if.then1.i524:                                    ; preds = %if.then.split.i520
  %162 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 488), align 8
  br label %make_or_reuse_fract_type.exit526

if.then4.i523:                                    ; preds = %if.then.split.i520
  %163 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 496), align 16
  br label %make_or_reuse_fract_type.exit526

if.then12.i522:                                   ; preds = %if.then.split.i520
  %164 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 504), align 8
  br label %make_or_reuse_fract_type.exit526

if.then20.i521:                                   ; preds = %if.then.split.i520
  %165 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 512), align 16
  br label %make_or_reuse_fract_type.exit526

if.end59.i517:                                    ; preds = %if.then.split.i520, %make_or_reuse_fract_type.exit516
  %call.i518 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul169, i32 noundef 1, i32 noundef 1) #5
  br label %make_or_reuse_fract_type.exit526

make_or_reuse_fract_type.exit526:                 ; preds = %if.end59.i517, %if.then20.i521, %if.then12.i522, %if.then4.i523, %if.then1.i524
  %retval.0.i519 = phi ptr [ %162, %if.then1.i524 ], [ %163, %if.then4.i523 ], [ %164, %if.then12.i522 ], [ %165, %if.then20.i521 ], [ %call.i518, %if.end59.i517 ]
  store ptr %retval.0.i519, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 848), align 16
  %166 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 23), align 1
  %conv174 = zext i8 %166 to i32
  %mul175 = shl nuw nsw i32 %conv174, 3
  %167 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul175)
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %if.else.split.i530, label %if.end59.i527

if.else.split.i530:                               ; preds = %make_or_reuse_fract_type.exit526
  %169 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul175, i1 true)
  switch i32 %169, label %if.end59.i527 [
    i32 3, label %if.then28.i534
    i32 4, label %if.then36.i533
    i32 5, label %if.then44.i532
    i32 6, label %if.then52.i531
  ]

if.then28.i534:                                   ; preds = %if.else.split.i530
  %170 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 520), align 8
  br label %make_or_reuse_fract_type.exit535

if.then36.i533:                                   ; preds = %if.else.split.i530
  %171 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 528), align 16
  br label %make_or_reuse_fract_type.exit535

if.then44.i532:                                   ; preds = %if.else.split.i530
  %172 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 536), align 8
  br label %make_or_reuse_fract_type.exit535

if.then52.i531:                                   ; preds = %if.else.split.i530
  %173 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 544), align 16
  br label %make_or_reuse_fract_type.exit535

if.end59.i527:                                    ; preds = %if.else.split.i530, %make_or_reuse_fract_type.exit526
  %call.i528 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul175, i32 noundef 0, i32 noundef 0) #5
  br label %make_or_reuse_fract_type.exit535

make_or_reuse_fract_type.exit535:                 ; preds = %if.end59.i527, %if.then52.i531, %if.then44.i532, %if.then36.i533, %if.then28.i534
  %retval.0.i529 = phi ptr [ %call.i528, %if.end59.i527 ], [ %170, %if.then28.i534 ], [ %171, %if.then36.i533 ], [ %172, %if.then44.i532 ], [ %173, %if.then52.i531 ]
  store ptr %retval.0.i529, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 736), align 16
  %174 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 28), align 4
  %conv180 = zext i8 %174 to i32
  %mul181 = shl nuw nsw i32 %conv180, 3
  %175 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul181)
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %if.else.split.i539, label %if.end59.i536

if.else.split.i539:                               ; preds = %make_or_reuse_fract_type.exit535
  %177 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul181, i1 true)
  switch i32 %177, label %if.end59.i536 [
    i32 3, label %if.then28.i543
    i32 4, label %if.then36.i542
    i32 5, label %if.then44.i541
    i32 6, label %if.then52.i540
  ]

if.then28.i543:                                   ; preds = %if.else.split.i539
  %178 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 552), align 8
  br label %make_or_reuse_fract_type.exit544

if.then36.i542:                                   ; preds = %if.else.split.i539
  %179 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 560), align 16
  br label %make_or_reuse_fract_type.exit544

if.then44.i541:                                   ; preds = %if.else.split.i539
  %180 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 568), align 8
  br label %make_or_reuse_fract_type.exit544

if.then52.i540:                                   ; preds = %if.else.split.i539
  %181 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 576), align 16
  br label %make_or_reuse_fract_type.exit544

if.end59.i536:                                    ; preds = %if.else.split.i539, %make_or_reuse_fract_type.exit535
  %call.i537 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul181, i32 noundef 1, i32 noundef 0) #5
  br label %make_or_reuse_fract_type.exit544

make_or_reuse_fract_type.exit544:                 ; preds = %if.end59.i536, %if.then52.i540, %if.then44.i541, %if.then36.i542, %if.then28.i543
  %retval.0.i538 = phi ptr [ %call.i537, %if.end59.i536 ], [ %178, %if.then28.i543 ], [ %179, %if.then36.i542 ], [ %180, %if.then44.i541 ], [ %181, %if.then52.i540 ]
  store ptr %retval.0.i538, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 776), align 8
  %182 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 23), align 1
  %conv186 = zext i8 %182 to i32
  %mul187 = shl nuw nsw i32 %conv186, 3
  %183 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul187)
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %if.then.split.i548, label %if.end59.i545

if.then.split.i548:                               ; preds = %make_or_reuse_fract_type.exit544
  %185 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul187, i1 true)
  switch i32 %185, label %if.end59.i545 [
    i32 3, label %if.then1.i552
    i32 4, label %if.then4.i551
    i32 5, label %if.then12.i550
    i32 6, label %if.then20.i549
  ]

if.then1.i552:                                    ; preds = %if.then.split.i548
  %186 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 456), align 8
  br label %make_or_reuse_fract_type.exit554

if.then4.i551:                                    ; preds = %if.then.split.i548
  %187 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 464), align 16
  br label %make_or_reuse_fract_type.exit554

if.then12.i550:                                   ; preds = %if.then.split.i548
  %188 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 472), align 8
  br label %make_or_reuse_fract_type.exit554

if.then20.i549:                                   ; preds = %if.then.split.i548
  %189 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 480), align 16
  br label %make_or_reuse_fract_type.exit554

if.end59.i545:                                    ; preds = %if.then.split.i548, %make_or_reuse_fract_type.exit544
  %call.i546 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul187, i32 noundef 0, i32 noundef 1) #5
  br label %make_or_reuse_fract_type.exit554

make_or_reuse_fract_type.exit554:                 ; preds = %if.end59.i545, %if.then20.i549, %if.then12.i550, %if.then4.i551, %if.then1.i552
  %retval.0.i547 = phi ptr [ %186, %if.then1.i552 ], [ %187, %if.then4.i551 ], [ %188, %if.then12.i550 ], [ %189, %if.then20.i549 ], [ %call.i546, %if.end59.i545 ]
  store ptr %retval.0.i547, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 816), align 16
  %190 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 28), align 4
  %conv192 = zext i8 %190 to i32
  %mul193 = shl nuw nsw i32 %conv192, 3
  %191 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul193)
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %if.then.split.i558, label %if.end59.i555

if.then.split.i558:                               ; preds = %make_or_reuse_fract_type.exit554
  %193 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul193, i1 true)
  switch i32 %193, label %if.end59.i555 [
    i32 3, label %if.then1.i562
    i32 4, label %if.then4.i561
    i32 5, label %if.then12.i560
    i32 6, label %if.then20.i559
  ]

if.then1.i562:                                    ; preds = %if.then.split.i558
  %194 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 488), align 8
  br label %make_or_reuse_fract_type.exit564

if.then4.i561:                                    ; preds = %if.then.split.i558
  %195 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 496), align 16
  br label %make_or_reuse_fract_type.exit564

if.then12.i560:                                   ; preds = %if.then.split.i558
  %196 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 504), align 8
  br label %make_or_reuse_fract_type.exit564

if.then20.i559:                                   ; preds = %if.then.split.i558
  %197 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 512), align 16
  br label %make_or_reuse_fract_type.exit564

if.end59.i555:                                    ; preds = %if.then.split.i558, %make_or_reuse_fract_type.exit554
  %call.i556 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul193, i32 noundef 1, i32 noundef 1) #5
  br label %make_or_reuse_fract_type.exit564

make_or_reuse_fract_type.exit564:                 ; preds = %if.end59.i555, %if.then20.i559, %if.then12.i560, %if.then4.i561, %if.then1.i562
  %retval.0.i557 = phi ptr [ %194, %if.then1.i562 ], [ %195, %if.then4.i561 ], [ %196, %if.then12.i560 ], [ %197, %if.then20.i559 ], [ %call.i556, %if.end59.i555 ]
  store ptr %retval.0.i557, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 856), align 8
  %198 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 24), align 8
  %conv198 = zext i8 %198 to i32
  %mul199 = shl nuw nsw i32 %conv198, 3
  %199 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul199)
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %if.else.split.i568, label %if.end59.i565

if.else.split.i568:                               ; preds = %make_or_reuse_fract_type.exit564
  %201 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul199, i1 true)
  switch i32 %201, label %if.end59.i565 [
    i32 3, label %if.then28.i572
    i32 4, label %if.then36.i571
    i32 5, label %if.then44.i570
    i32 6, label %if.then52.i569
  ]

if.then28.i572:                                   ; preds = %if.else.split.i568
  %202 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 520), align 8
  br label %make_or_reuse_fract_type.exit573

if.then36.i571:                                   ; preds = %if.else.split.i568
  %203 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 528), align 16
  br label %make_or_reuse_fract_type.exit573

if.then44.i570:                                   ; preds = %if.else.split.i568
  %204 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 536), align 8
  br label %make_or_reuse_fract_type.exit573

if.then52.i569:                                   ; preds = %if.else.split.i568
  %205 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 544), align 16
  br label %make_or_reuse_fract_type.exit573

if.end59.i565:                                    ; preds = %if.else.split.i568, %make_or_reuse_fract_type.exit564
  %call.i566 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul199, i32 noundef 0, i32 noundef 0) #5
  br label %make_or_reuse_fract_type.exit573

make_or_reuse_fract_type.exit573:                 ; preds = %if.end59.i565, %if.then52.i569, %if.then44.i570, %if.then36.i571, %if.then28.i572
  %retval.0.i567 = phi ptr [ %call.i566, %if.end59.i565 ], [ %202, %if.then28.i572 ], [ %203, %if.then36.i571 ], [ %204, %if.then44.i570 ], [ %205, %if.then52.i569 ]
  store ptr %retval.0.i567, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 744), align 8
  %206 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 29), align 1
  %conv204 = zext i8 %206 to i32
  %mul205 = shl nuw nsw i32 %conv204, 3
  %207 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul205)
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %if.else.split.i577, label %if.end59.i574

if.else.split.i577:                               ; preds = %make_or_reuse_fract_type.exit573
  %209 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul205, i1 true)
  switch i32 %209, label %if.end59.i574 [
    i32 3, label %if.then28.i581
    i32 4, label %if.then36.i580
    i32 5, label %if.then44.i579
    i32 6, label %if.then52.i578
  ]

if.then28.i581:                                   ; preds = %if.else.split.i577
  %210 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 552), align 8
  br label %make_or_reuse_fract_type.exit582

if.then36.i580:                                   ; preds = %if.else.split.i577
  %211 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 560), align 16
  br label %make_or_reuse_fract_type.exit582

if.then44.i579:                                   ; preds = %if.else.split.i577
  %212 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 568), align 8
  br label %make_or_reuse_fract_type.exit582

if.then52.i578:                                   ; preds = %if.else.split.i577
  %213 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 576), align 16
  br label %make_or_reuse_fract_type.exit582

if.end59.i574:                                    ; preds = %if.else.split.i577, %make_or_reuse_fract_type.exit573
  %call.i575 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul205, i32 noundef 1, i32 noundef 0) #5
  br label %make_or_reuse_fract_type.exit582

make_or_reuse_fract_type.exit582:                 ; preds = %if.end59.i574, %if.then52.i578, %if.then44.i579, %if.then36.i580, %if.then28.i581
  %retval.0.i576 = phi ptr [ %call.i575, %if.end59.i574 ], [ %210, %if.then28.i581 ], [ %211, %if.then36.i580 ], [ %212, %if.then44.i579 ], [ %213, %if.then52.i578 ]
  store ptr %retval.0.i576, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 784), align 16
  %214 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 24), align 8
  %conv210 = zext i8 %214 to i32
  %mul211 = shl nuw nsw i32 %conv210, 3
  %215 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul211)
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %if.then.split.i586, label %if.end59.i583

if.then.split.i586:                               ; preds = %make_or_reuse_fract_type.exit582
  %217 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul211, i1 true)
  switch i32 %217, label %if.end59.i583 [
    i32 3, label %if.then1.i590
    i32 4, label %if.then4.i589
    i32 5, label %if.then12.i588
    i32 6, label %if.then20.i587
  ]

if.then1.i590:                                    ; preds = %if.then.split.i586
  %218 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 456), align 8
  br label %make_or_reuse_fract_type.exit592

if.then4.i589:                                    ; preds = %if.then.split.i586
  %219 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 464), align 16
  br label %make_or_reuse_fract_type.exit592

if.then12.i588:                                   ; preds = %if.then.split.i586
  %220 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 472), align 8
  br label %make_or_reuse_fract_type.exit592

if.then20.i587:                                   ; preds = %if.then.split.i586
  %221 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 480), align 16
  br label %make_or_reuse_fract_type.exit592

if.end59.i583:                                    ; preds = %if.then.split.i586, %make_or_reuse_fract_type.exit582
  %call.i584 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul211, i32 noundef 0, i32 noundef 1) #5
  br label %make_or_reuse_fract_type.exit592

make_or_reuse_fract_type.exit592:                 ; preds = %if.end59.i583, %if.then20.i587, %if.then12.i588, %if.then4.i589, %if.then1.i590
  %retval.0.i585 = phi ptr [ %218, %if.then1.i590 ], [ %219, %if.then4.i589 ], [ %220, %if.then12.i588 ], [ %221, %if.then20.i587 ], [ %call.i584, %if.end59.i583 ]
  store ptr %retval.0.i585, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 824), align 8
  %222 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 29), align 1
  %conv216 = zext i8 %222 to i32
  %mul217 = shl nuw nsw i32 %conv216, 3
  %223 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul217)
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %if.then.split.i596, label %if.end59.i593

if.then.split.i596:                               ; preds = %make_or_reuse_fract_type.exit592
  %225 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul217, i1 true)
  switch i32 %225, label %if.end59.i593 [
    i32 3, label %if.then1.i600
    i32 4, label %if.then4.i599
    i32 5, label %if.then12.i598
    i32 6, label %if.then20.i597
  ]

if.then1.i600:                                    ; preds = %if.then.split.i596
  %226 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 488), align 8
  br label %make_or_reuse_fract_type.exit602

if.then4.i599:                                    ; preds = %if.then.split.i596
  %227 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 496), align 16
  br label %make_or_reuse_fract_type.exit602

if.then12.i598:                                   ; preds = %if.then.split.i596
  %228 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 504), align 8
  br label %make_or_reuse_fract_type.exit602

if.then20.i597:                                   ; preds = %if.then.split.i596
  %229 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 512), align 16
  br label %make_or_reuse_fract_type.exit602

if.end59.i593:                                    ; preds = %if.then.split.i596, %make_or_reuse_fract_type.exit592
  %call.i594 = tail call ptr @make_fract_type(i32 noundef range(i32 0, 2041) %mul217, i32 noundef 1, i32 noundef 1) #5
  br label %make_or_reuse_fract_type.exit602

make_or_reuse_fract_type.exit602:                 ; preds = %if.end59.i593, %if.then20.i597, %if.then12.i598, %if.then4.i599, %if.then1.i600
  %retval.0.i595 = phi ptr [ %226, %if.then1.i600 ], [ %227, %if.then4.i599 ], [ %228, %if.then12.i598 ], [ %229, %if.then20.i597 ], [ %call.i594, %if.end59.i593 ]
  store ptr %retval.0.i595, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 864), align 16
  %230 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 30), align 2
  %conv222 = zext i8 %230 to i32
  %mul223 = shl nuw nsw i32 %conv222, 3
  %231 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul223)
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %if.else.split.i606, label %if.end59.i603

if.else.split.i606:                               ; preds = %make_or_reuse_fract_type.exit602
  %233 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul223, i1 true)
  switch i32 %233, label %if.end59.i603 [
    i32 4, label %if.then28.i610
    i32 5, label %if.then36.i609
    i32 6, label %if.then44.i608
    i32 7, label %if.then52.i607
  ]

if.then28.i610:                                   ; preds = %if.else.split.i606
  %234 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 648), align 8
  br label %make_or_reuse_accum_type.exit

if.then36.i609:                                   ; preds = %if.else.split.i606
  %235 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 656), align 16
  br label %make_or_reuse_accum_type.exit

if.then44.i608:                                   ; preds = %if.else.split.i606
  %236 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 664), align 8
  br label %make_or_reuse_accum_type.exit

if.then52.i607:                                   ; preds = %if.else.split.i606
  %237 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 672), align 16
  br label %make_or_reuse_accum_type.exit

if.end59.i603:                                    ; preds = %if.else.split.i606, %make_or_reuse_fract_type.exit602
  %call.i604 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul223, i32 noundef 0, i32 noundef 0) #5
  br label %make_or_reuse_accum_type.exit

make_or_reuse_accum_type.exit:                    ; preds = %if.end59.i603, %if.then52.i607, %if.then44.i608, %if.then36.i609, %if.then28.i610
  %retval.0.i605 = phi ptr [ %call.i604, %if.end59.i603 ], [ %234, %if.then28.i610 ], [ %235, %if.then36.i609 ], [ %236, %if.then44.i608 ], [ %237, %if.then52.i607 ]
  store ptr %retval.0.i605, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 872), align 8
  %238 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 34), align 2
  %conv228 = zext i8 %238 to i32
  %mul229 = shl nuw nsw i32 %conv228, 3
  %239 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul229)
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %if.else.split.i614, label %if.end59.i611

if.else.split.i614:                               ; preds = %make_or_reuse_accum_type.exit
  %241 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul229, i1 true)
  switch i32 %241, label %if.end59.i611 [
    i32 4, label %if.then28.i618
    i32 5, label %if.then36.i617
    i32 6, label %if.then44.i616
    i32 7, label %if.then52.i615
  ]

if.then28.i618:                                   ; preds = %if.else.split.i614
  %242 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 680), align 8
  br label %make_or_reuse_accum_type.exit619

if.then36.i617:                                   ; preds = %if.else.split.i614
  %243 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 688), align 16
  br label %make_or_reuse_accum_type.exit619

if.then44.i616:                                   ; preds = %if.else.split.i614
  %244 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 696), align 8
  br label %make_or_reuse_accum_type.exit619

if.then52.i615:                                   ; preds = %if.else.split.i614
  %245 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 704), align 16
  br label %make_or_reuse_accum_type.exit619

if.end59.i611:                                    ; preds = %if.else.split.i614, %make_or_reuse_accum_type.exit
  %call.i612 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul229, i32 noundef 1, i32 noundef 0) #5
  br label %make_or_reuse_accum_type.exit619

make_or_reuse_accum_type.exit619:                 ; preds = %if.end59.i611, %if.then52.i615, %if.then44.i616, %if.then36.i617, %if.then28.i618
  %retval.0.i613 = phi ptr [ %call.i612, %if.end59.i611 ], [ %242, %if.then28.i618 ], [ %243, %if.then36.i617 ], [ %244, %if.then44.i616 ], [ %245, %if.then52.i615 ]
  store ptr %retval.0.i613, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 904), align 8
  %246 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 30), align 2
  %conv234 = zext i8 %246 to i32
  %mul235 = shl nuw nsw i32 %conv234, 3
  %247 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul235)
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %if.then.split.i623, label %if.end59.i620

if.then.split.i623:                               ; preds = %make_or_reuse_accum_type.exit619
  %249 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul235, i1 true)
  switch i32 %249, label %if.end59.i620 [
    i32 4, label %if.then1.i627
    i32 5, label %if.then4.i626
    i32 6, label %if.then12.i625
    i32 7, label %if.then20.i624
  ]

if.then1.i627:                                    ; preds = %if.then.split.i623
  %250 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 584), align 8
  br label %make_or_reuse_accum_type.exit629

if.then4.i626:                                    ; preds = %if.then.split.i623
  %251 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 592), align 16
  br label %make_or_reuse_accum_type.exit629

if.then12.i625:                                   ; preds = %if.then.split.i623
  %252 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 600), align 8
  br label %make_or_reuse_accum_type.exit629

if.then20.i624:                                   ; preds = %if.then.split.i623
  %253 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 608), align 16
  br label %make_or_reuse_accum_type.exit629

if.end59.i620:                                    ; preds = %if.then.split.i623, %make_or_reuse_accum_type.exit619
  %call.i621 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul235, i32 noundef 0, i32 noundef 1) #5
  br label %make_or_reuse_accum_type.exit629

make_or_reuse_accum_type.exit629:                 ; preds = %if.end59.i620, %if.then20.i624, %if.then12.i625, %if.then4.i626, %if.then1.i627
  %retval.0.i622 = phi ptr [ %250, %if.then1.i627 ], [ %251, %if.then4.i626 ], [ %252, %if.then12.i625 ], [ %253, %if.then20.i624 ], [ %call.i621, %if.end59.i620 ]
  store ptr %retval.0.i622, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 936), align 8
  %254 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 34), align 2
  %conv240 = zext i8 %254 to i32
  %mul241 = shl nuw nsw i32 %conv240, 3
  %255 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul241)
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %if.then.split.i633, label %if.end59.i630

if.then.split.i633:                               ; preds = %make_or_reuse_accum_type.exit629
  %257 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul241, i1 true)
  switch i32 %257, label %if.end59.i630 [
    i32 4, label %if.then1.i637
    i32 5, label %if.then4.i636
    i32 6, label %if.then12.i635
    i32 7, label %if.then20.i634
  ]

if.then1.i637:                                    ; preds = %if.then.split.i633
  %258 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 616), align 8
  br label %make_or_reuse_accum_type.exit639

if.then4.i636:                                    ; preds = %if.then.split.i633
  %259 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 624), align 16
  br label %make_or_reuse_accum_type.exit639

if.then12.i635:                                   ; preds = %if.then.split.i633
  %260 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 632), align 8
  br label %make_or_reuse_accum_type.exit639

if.then20.i634:                                   ; preds = %if.then.split.i633
  %261 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 640), align 16
  br label %make_or_reuse_accum_type.exit639

if.end59.i630:                                    ; preds = %if.then.split.i633, %make_or_reuse_accum_type.exit629
  %call.i631 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul241, i32 noundef 1, i32 noundef 1) #5
  br label %make_or_reuse_accum_type.exit639

make_or_reuse_accum_type.exit639:                 ; preds = %if.end59.i630, %if.then20.i634, %if.then12.i635, %if.then4.i636, %if.then1.i637
  %retval.0.i632 = phi ptr [ %258, %if.then1.i637 ], [ %259, %if.then4.i636 ], [ %260, %if.then12.i635 ], [ %261, %if.then20.i634 ], [ %call.i631, %if.end59.i630 ]
  store ptr %retval.0.i632, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 968), align 8
  %262 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 31), align 1
  %conv246 = zext i8 %262 to i32
  %mul247 = shl nuw nsw i32 %conv246, 3
  %263 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul247)
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %if.else.split.i643, label %if.end59.i640

if.else.split.i643:                               ; preds = %make_or_reuse_accum_type.exit639
  %265 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul247, i1 true)
  switch i32 %265, label %if.end59.i640 [
    i32 4, label %if.then28.i647
    i32 5, label %if.then36.i646
    i32 6, label %if.then44.i645
    i32 7, label %if.then52.i644
  ]

if.then28.i647:                                   ; preds = %if.else.split.i643
  %266 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 648), align 8
  br label %make_or_reuse_accum_type.exit648

if.then36.i646:                                   ; preds = %if.else.split.i643
  %267 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 656), align 16
  br label %make_or_reuse_accum_type.exit648

if.then44.i645:                                   ; preds = %if.else.split.i643
  %268 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 664), align 8
  br label %make_or_reuse_accum_type.exit648

if.then52.i644:                                   ; preds = %if.else.split.i643
  %269 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 672), align 16
  br label %make_or_reuse_accum_type.exit648

if.end59.i640:                                    ; preds = %if.else.split.i643, %make_or_reuse_accum_type.exit639
  %call.i641 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul247, i32 noundef 0, i32 noundef 0) #5
  br label %make_or_reuse_accum_type.exit648

make_or_reuse_accum_type.exit648:                 ; preds = %if.end59.i640, %if.then52.i644, %if.then44.i645, %if.then36.i646, %if.then28.i647
  %retval.0.i642 = phi ptr [ %call.i641, %if.end59.i640 ], [ %266, %if.then28.i647 ], [ %267, %if.then36.i646 ], [ %268, %if.then44.i645 ], [ %269, %if.then52.i644 ]
  store ptr %retval.0.i642, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 880), align 16
  %270 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 35), align 1
  %conv252 = zext i8 %270 to i32
  %mul253 = shl nuw nsw i32 %conv252, 3
  %271 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul253)
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %if.else.split.i652, label %if.end59.i649

if.else.split.i652:                               ; preds = %make_or_reuse_accum_type.exit648
  %273 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul253, i1 true)
  switch i32 %273, label %if.end59.i649 [
    i32 4, label %if.then28.i656
    i32 5, label %if.then36.i655
    i32 6, label %if.then44.i654
    i32 7, label %if.then52.i653
  ]

if.then28.i656:                                   ; preds = %if.else.split.i652
  %274 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 680), align 8
  br label %make_or_reuse_accum_type.exit657

if.then36.i655:                                   ; preds = %if.else.split.i652
  %275 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 688), align 16
  br label %make_or_reuse_accum_type.exit657

if.then44.i654:                                   ; preds = %if.else.split.i652
  %276 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 696), align 8
  br label %make_or_reuse_accum_type.exit657

if.then52.i653:                                   ; preds = %if.else.split.i652
  %277 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 704), align 16
  br label %make_or_reuse_accum_type.exit657

if.end59.i649:                                    ; preds = %if.else.split.i652, %make_or_reuse_accum_type.exit648
  %call.i650 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul253, i32 noundef 1, i32 noundef 0) #5
  br label %make_or_reuse_accum_type.exit657

make_or_reuse_accum_type.exit657:                 ; preds = %if.end59.i649, %if.then52.i653, %if.then44.i654, %if.then36.i655, %if.then28.i656
  %retval.0.i651 = phi ptr [ %call.i650, %if.end59.i649 ], [ %274, %if.then28.i656 ], [ %275, %if.then36.i655 ], [ %276, %if.then44.i654 ], [ %277, %if.then52.i653 ]
  store ptr %retval.0.i651, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 912), align 16
  %278 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 31), align 1
  %conv258 = zext i8 %278 to i32
  %mul259 = shl nuw nsw i32 %conv258, 3
  %279 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul259)
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %if.then.split.i661, label %if.end59.i658

if.then.split.i661:                               ; preds = %make_or_reuse_accum_type.exit657
  %281 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul259, i1 true)
  switch i32 %281, label %if.end59.i658 [
    i32 4, label %if.then1.i665
    i32 5, label %if.then4.i664
    i32 6, label %if.then12.i663
    i32 7, label %if.then20.i662
  ]

if.then1.i665:                                    ; preds = %if.then.split.i661
  %282 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 584), align 8
  br label %make_or_reuse_accum_type.exit667

if.then4.i664:                                    ; preds = %if.then.split.i661
  %283 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 592), align 16
  br label %make_or_reuse_accum_type.exit667

if.then12.i663:                                   ; preds = %if.then.split.i661
  %284 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 600), align 8
  br label %make_or_reuse_accum_type.exit667

if.then20.i662:                                   ; preds = %if.then.split.i661
  %285 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 608), align 16
  br label %make_or_reuse_accum_type.exit667

if.end59.i658:                                    ; preds = %if.then.split.i661, %make_or_reuse_accum_type.exit657
  %call.i659 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul259, i32 noundef 0, i32 noundef 1) #5
  br label %make_or_reuse_accum_type.exit667

make_or_reuse_accum_type.exit667:                 ; preds = %if.end59.i658, %if.then20.i662, %if.then12.i663, %if.then4.i664, %if.then1.i665
  %retval.0.i660 = phi ptr [ %282, %if.then1.i665 ], [ %283, %if.then4.i664 ], [ %284, %if.then12.i663 ], [ %285, %if.then20.i662 ], [ %call.i659, %if.end59.i658 ]
  store ptr %retval.0.i660, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 944), align 16
  %286 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 35), align 1
  %conv264 = zext i8 %286 to i32
  %mul265 = shl nuw nsw i32 %conv264, 3
  %287 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul265)
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %if.then.split.i671, label %if.end59.i668

if.then.split.i671:                               ; preds = %make_or_reuse_accum_type.exit667
  %289 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul265, i1 true)
  switch i32 %289, label %if.end59.i668 [
    i32 4, label %if.then1.i675
    i32 5, label %if.then4.i674
    i32 6, label %if.then12.i673
    i32 7, label %if.then20.i672
  ]

if.then1.i675:                                    ; preds = %if.then.split.i671
  %290 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 616), align 8
  br label %make_or_reuse_accum_type.exit677

if.then4.i674:                                    ; preds = %if.then.split.i671
  %291 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 624), align 16
  br label %make_or_reuse_accum_type.exit677

if.then12.i673:                                   ; preds = %if.then.split.i671
  %292 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 632), align 8
  br label %make_or_reuse_accum_type.exit677

if.then20.i672:                                   ; preds = %if.then.split.i671
  %293 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 640), align 16
  br label %make_or_reuse_accum_type.exit677

if.end59.i668:                                    ; preds = %if.then.split.i671, %make_or_reuse_accum_type.exit667
  %call.i669 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul265, i32 noundef 1, i32 noundef 1) #5
  br label %make_or_reuse_accum_type.exit677

make_or_reuse_accum_type.exit677:                 ; preds = %if.end59.i668, %if.then20.i672, %if.then12.i673, %if.then4.i674, %if.then1.i675
  %retval.0.i670 = phi ptr [ %290, %if.then1.i675 ], [ %291, %if.then4.i674 ], [ %292, %if.then12.i673 ], [ %293, %if.then20.i672 ], [ %call.i669, %if.end59.i668 ]
  store ptr %retval.0.i670, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 976), align 16
  %294 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 32), align 16
  %conv270 = zext i8 %294 to i32
  %mul271 = shl nuw nsw i32 %conv270, 3
  %295 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul271)
  %296 = icmp eq i32 %295, 1
  br i1 %296, label %if.else.split.i681, label %if.end59.i678

if.else.split.i681:                               ; preds = %make_or_reuse_accum_type.exit677
  %297 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul271, i1 true)
  switch i32 %297, label %if.end59.i678 [
    i32 4, label %if.then28.i685
    i32 5, label %if.then36.i684
    i32 6, label %if.then44.i683
    i32 7, label %if.then52.i682
  ]

if.then28.i685:                                   ; preds = %if.else.split.i681
  %298 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 648), align 8
  br label %make_or_reuse_accum_type.exit686

if.then36.i684:                                   ; preds = %if.else.split.i681
  %299 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 656), align 16
  br label %make_or_reuse_accum_type.exit686

if.then44.i683:                                   ; preds = %if.else.split.i681
  %300 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 664), align 8
  br label %make_or_reuse_accum_type.exit686

if.then52.i682:                                   ; preds = %if.else.split.i681
  %301 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 672), align 16
  br label %make_or_reuse_accum_type.exit686

if.end59.i678:                                    ; preds = %if.else.split.i681, %make_or_reuse_accum_type.exit677
  %call.i679 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul271, i32 noundef 0, i32 noundef 0) #5
  br label %make_or_reuse_accum_type.exit686

make_or_reuse_accum_type.exit686:                 ; preds = %if.end59.i678, %if.then52.i682, %if.then44.i683, %if.then36.i684, %if.then28.i685
  %retval.0.i680 = phi ptr [ %call.i679, %if.end59.i678 ], [ %298, %if.then28.i685 ], [ %299, %if.then36.i684 ], [ %300, %if.then44.i683 ], [ %301, %if.then52.i682 ]
  store ptr %retval.0.i680, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 888), align 8
  %302 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 36), align 4
  %conv276 = zext i8 %302 to i32
  %mul277 = shl nuw nsw i32 %conv276, 3
  %303 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul277)
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %if.else.split.i690, label %if.end59.i687

if.else.split.i690:                               ; preds = %make_or_reuse_accum_type.exit686
  %305 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul277, i1 true)
  switch i32 %305, label %if.end59.i687 [
    i32 4, label %if.then28.i694
    i32 5, label %if.then36.i693
    i32 6, label %if.then44.i692
    i32 7, label %if.then52.i691
  ]

if.then28.i694:                                   ; preds = %if.else.split.i690
  %306 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 680), align 8
  br label %make_or_reuse_accum_type.exit695

if.then36.i693:                                   ; preds = %if.else.split.i690
  %307 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 688), align 16
  br label %make_or_reuse_accum_type.exit695

if.then44.i692:                                   ; preds = %if.else.split.i690
  %308 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 696), align 8
  br label %make_or_reuse_accum_type.exit695

if.then52.i691:                                   ; preds = %if.else.split.i690
  %309 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 704), align 16
  br label %make_or_reuse_accum_type.exit695

if.end59.i687:                                    ; preds = %if.else.split.i690, %make_or_reuse_accum_type.exit686
  %call.i688 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul277, i32 noundef 1, i32 noundef 0) #5
  br label %make_or_reuse_accum_type.exit695

make_or_reuse_accum_type.exit695:                 ; preds = %if.end59.i687, %if.then52.i691, %if.then44.i692, %if.then36.i693, %if.then28.i694
  %retval.0.i689 = phi ptr [ %call.i688, %if.end59.i687 ], [ %306, %if.then28.i694 ], [ %307, %if.then36.i693 ], [ %308, %if.then44.i692 ], [ %309, %if.then52.i691 ]
  store ptr %retval.0.i689, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 920), align 8
  %310 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 32), align 16
  %conv282 = zext i8 %310 to i32
  %mul283 = shl nuw nsw i32 %conv282, 3
  %311 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul283)
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %if.then.split.i699, label %if.end59.i696

if.then.split.i699:                               ; preds = %make_or_reuse_accum_type.exit695
  %313 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul283, i1 true)
  switch i32 %313, label %if.end59.i696 [
    i32 4, label %if.then1.i703
    i32 5, label %if.then4.i702
    i32 6, label %if.then12.i701
    i32 7, label %if.then20.i700
  ]

if.then1.i703:                                    ; preds = %if.then.split.i699
  %314 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 584), align 8
  br label %make_or_reuse_accum_type.exit705

if.then4.i702:                                    ; preds = %if.then.split.i699
  %315 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 592), align 16
  br label %make_or_reuse_accum_type.exit705

if.then12.i701:                                   ; preds = %if.then.split.i699
  %316 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 600), align 8
  br label %make_or_reuse_accum_type.exit705

if.then20.i700:                                   ; preds = %if.then.split.i699
  %317 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 608), align 16
  br label %make_or_reuse_accum_type.exit705

if.end59.i696:                                    ; preds = %if.then.split.i699, %make_or_reuse_accum_type.exit695
  %call.i697 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul283, i32 noundef 0, i32 noundef 1) #5
  br label %make_or_reuse_accum_type.exit705

make_or_reuse_accum_type.exit705:                 ; preds = %if.end59.i696, %if.then20.i700, %if.then12.i701, %if.then4.i702, %if.then1.i703
  %retval.0.i698 = phi ptr [ %314, %if.then1.i703 ], [ %315, %if.then4.i702 ], [ %316, %if.then12.i701 ], [ %317, %if.then20.i700 ], [ %call.i697, %if.end59.i696 ]
  store ptr %retval.0.i698, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 952), align 8
  %318 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 36), align 4
  %conv288 = zext i8 %318 to i32
  %mul289 = shl nuw nsw i32 %conv288, 3
  %319 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul289)
  %320 = icmp eq i32 %319, 1
  br i1 %320, label %if.then.split.i709, label %if.end59.i706

if.then.split.i709:                               ; preds = %make_or_reuse_accum_type.exit705
  %321 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul289, i1 true)
  switch i32 %321, label %if.end59.i706 [
    i32 4, label %if.then1.i713
    i32 5, label %if.then4.i712
    i32 6, label %if.then12.i711
    i32 7, label %if.then20.i710
  ]

if.then1.i713:                                    ; preds = %if.then.split.i709
  %322 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 616), align 8
  br label %make_or_reuse_accum_type.exit715

if.then4.i712:                                    ; preds = %if.then.split.i709
  %323 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 624), align 16
  br label %make_or_reuse_accum_type.exit715

if.then12.i711:                                   ; preds = %if.then.split.i709
  %324 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 632), align 8
  br label %make_or_reuse_accum_type.exit715

if.then20.i710:                                   ; preds = %if.then.split.i709
  %325 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 640), align 16
  br label %make_or_reuse_accum_type.exit715

if.end59.i706:                                    ; preds = %if.then.split.i709, %make_or_reuse_accum_type.exit705
  %call.i707 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul289, i32 noundef 1, i32 noundef 1) #5
  br label %make_or_reuse_accum_type.exit715

make_or_reuse_accum_type.exit715:                 ; preds = %if.end59.i706, %if.then20.i710, %if.then12.i711, %if.then4.i712, %if.then1.i713
  %retval.0.i708 = phi ptr [ %322, %if.then1.i713 ], [ %323, %if.then4.i712 ], [ %324, %if.then12.i711 ], [ %325, %if.then20.i710 ], [ %call.i707, %if.end59.i706 ]
  store ptr %retval.0.i708, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 984), align 8
  %326 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 33), align 1
  %conv294 = zext i8 %326 to i32
  %mul295 = shl nuw nsw i32 %conv294, 3
  %327 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul295)
  %328 = icmp eq i32 %327, 1
  br i1 %328, label %if.else.split.i719, label %if.end59.i716

if.else.split.i719:                               ; preds = %make_or_reuse_accum_type.exit715
  %329 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul295, i1 true)
  switch i32 %329, label %if.end59.i716 [
    i32 4, label %if.then28.i723
    i32 5, label %if.then36.i722
    i32 6, label %if.then44.i721
    i32 7, label %if.then52.i720
  ]

if.then28.i723:                                   ; preds = %if.else.split.i719
  %330 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 648), align 8
  br label %make_or_reuse_accum_type.exit724

if.then36.i722:                                   ; preds = %if.else.split.i719
  %331 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 656), align 16
  br label %make_or_reuse_accum_type.exit724

if.then44.i721:                                   ; preds = %if.else.split.i719
  %332 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 664), align 8
  br label %make_or_reuse_accum_type.exit724

if.then52.i720:                                   ; preds = %if.else.split.i719
  %333 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 672), align 16
  br label %make_or_reuse_accum_type.exit724

if.end59.i716:                                    ; preds = %if.else.split.i719, %make_or_reuse_accum_type.exit715
  %call.i717 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul295, i32 noundef 0, i32 noundef 0) #5
  br label %make_or_reuse_accum_type.exit724

make_or_reuse_accum_type.exit724:                 ; preds = %if.end59.i716, %if.then52.i720, %if.then44.i721, %if.then36.i722, %if.then28.i723
  %retval.0.i718 = phi ptr [ %call.i717, %if.end59.i716 ], [ %330, %if.then28.i723 ], [ %331, %if.then36.i722 ], [ %332, %if.then44.i721 ], [ %333, %if.then52.i720 ]
  store ptr %retval.0.i718, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 896), align 16
  %334 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 37), align 1
  %conv300 = zext i8 %334 to i32
  %mul301 = shl nuw nsw i32 %conv300, 3
  %335 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul301)
  %336 = icmp eq i32 %335, 1
  br i1 %336, label %if.else.split.i728, label %if.end59.i725

if.else.split.i728:                               ; preds = %make_or_reuse_accum_type.exit724
  %337 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul301, i1 true)
  switch i32 %337, label %if.end59.i725 [
    i32 4, label %if.then28.i732
    i32 5, label %if.then36.i731
    i32 6, label %if.then44.i730
    i32 7, label %if.then52.i729
  ]

if.then28.i732:                                   ; preds = %if.else.split.i728
  %338 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 680), align 8
  br label %make_or_reuse_accum_type.exit733

if.then36.i731:                                   ; preds = %if.else.split.i728
  %339 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 688), align 16
  br label %make_or_reuse_accum_type.exit733

if.then44.i730:                                   ; preds = %if.else.split.i728
  %340 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 696), align 8
  br label %make_or_reuse_accum_type.exit733

if.then52.i729:                                   ; preds = %if.else.split.i728
  %341 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 704), align 16
  br label %make_or_reuse_accum_type.exit733

if.end59.i725:                                    ; preds = %if.else.split.i728, %make_or_reuse_accum_type.exit724
  %call.i726 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul301, i32 noundef 1, i32 noundef 0) #5
  br label %make_or_reuse_accum_type.exit733

make_or_reuse_accum_type.exit733:                 ; preds = %if.end59.i725, %if.then52.i729, %if.then44.i730, %if.then36.i731, %if.then28.i732
  %retval.0.i727 = phi ptr [ %call.i726, %if.end59.i725 ], [ %338, %if.then28.i732 ], [ %339, %if.then36.i731 ], [ %340, %if.then44.i730 ], [ %341, %if.then52.i729 ]
  store ptr %retval.0.i727, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 928), align 16
  %342 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 33), align 1
  %conv306 = zext i8 %342 to i32
  %mul307 = shl nuw nsw i32 %conv306, 3
  %343 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul307)
  %344 = icmp eq i32 %343, 1
  br i1 %344, label %if.then.split.i737, label %if.end59.i734

if.then.split.i737:                               ; preds = %make_or_reuse_accum_type.exit733
  %345 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul307, i1 true)
  switch i32 %345, label %if.end59.i734 [
    i32 4, label %if.then1.i741
    i32 5, label %if.then4.i740
    i32 6, label %if.then12.i739
    i32 7, label %if.then20.i738
  ]

if.then1.i741:                                    ; preds = %if.then.split.i737
  %346 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 584), align 8
  br label %make_or_reuse_accum_type.exit743

if.then4.i740:                                    ; preds = %if.then.split.i737
  %347 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 592), align 16
  br label %make_or_reuse_accum_type.exit743

if.then12.i739:                                   ; preds = %if.then.split.i737
  %348 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 600), align 8
  br label %make_or_reuse_accum_type.exit743

if.then20.i738:                                   ; preds = %if.then.split.i737
  %349 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 608), align 16
  br label %make_or_reuse_accum_type.exit743

if.end59.i734:                                    ; preds = %if.then.split.i737, %make_or_reuse_accum_type.exit733
  %call.i735 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul307, i32 noundef 0, i32 noundef 1) #5
  br label %make_or_reuse_accum_type.exit743

make_or_reuse_accum_type.exit743:                 ; preds = %if.end59.i734, %if.then20.i738, %if.then12.i739, %if.then4.i740, %if.then1.i741
  %retval.0.i736 = phi ptr [ %346, %if.then1.i741 ], [ %347, %if.then4.i740 ], [ %348, %if.then12.i739 ], [ %349, %if.then20.i738 ], [ %call.i735, %if.end59.i734 ]
  store ptr %retval.0.i736, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 960), align 16
  %350 = load i8, ptr getelementptr inbounds nuw (i8, ptr @mode_size, i64 37), align 1
  %conv312 = zext i8 %350 to i32
  %mul313 = shl nuw nsw i32 %conv312, 3
  %351 = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 2041) %mul313)
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %if.then.split.i747, label %if.end59.i744

if.then.split.i747:                               ; preds = %make_or_reuse_accum_type.exit743
  %353 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, 2041) %mul313, i1 true)
  switch i32 %353, label %if.end59.i744 [
    i32 4, label %if.then1.i751
    i32 5, label %if.then4.i750
    i32 6, label %if.then12.i749
    i32 7, label %if.then20.i748
  ]

if.then1.i751:                                    ; preds = %if.then.split.i747
  %354 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 616), align 8
  br label %make_or_reuse_accum_type.exit753

if.then4.i750:                                    ; preds = %if.then.split.i747
  %355 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 624), align 16
  br label %make_or_reuse_accum_type.exit753

if.then12.i749:                                   ; preds = %if.then.split.i747
  %356 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 632), align 8
  br label %make_or_reuse_accum_type.exit753

if.then20.i748:                                   ; preds = %if.then.split.i747
  %357 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 640), align 16
  br label %make_or_reuse_accum_type.exit753

if.end59.i744:                                    ; preds = %if.then.split.i747, %make_or_reuse_accum_type.exit743
  %call.i745 = tail call ptr @make_accum_type(i32 noundef range(i32 0, 2041) %mul313, i32 noundef 1, i32 noundef 1) #5
  br label %make_or_reuse_accum_type.exit753

make_or_reuse_accum_type.exit753:                 ; preds = %if.end59.i744, %if.then20.i748, %if.then12.i749, %if.then4.i750, %if.then1.i751
  %retval.0.i746 = phi ptr [ %354, %if.then1.i751 ], [ %355, %if.then4.i750 ], [ %356, %if.then12.i749 ], [ %357, %if.then20.i748 ], [ %call.i745, %if.end59.i744 ]
  store ptr %retval.0.i746, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 992), align 16
  %358 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1320), align 8
  %call317 = tail call ptr %358() #5
  %bf.load318 = load i64, ptr %call317, align 8
  %bf.cast326 = and i64 %bf.load318, 65535
  %cmp.not = icmp eq i64 %bf.cast326, 16
  br i1 %cmp.not, label %if.end323, label %if.then321

if.then321:                                       ; preds = %make_or_reuse_accum_type.exit753
  %main_variant.i = getelementptr inbounds nuw i8, ptr %call317, i64 128
  %359 = load ptr, ptr %main_variant.i, align 8
  %call.i.i = tail call ptr @copy_node_stat(ptr noundef nonnull %call317)
  %pointer_to.i.i = getelementptr inbounds nuw i8, ptr %call.i.i, i64 72
  %canonical.i.i = getelementptr inbounds nuw i8, ptr %call317, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pointer_to.i.i, i8 0, i64 16, i1 false)
  %360 = load ptr, ptr %canonical.i.i, align 8
  %cmp.i.i754 = icmp eq ptr %360, null
  %spec.select.i.i = select i1 %cmp.i.i754, ptr null, ptr %call.i.i
  %361 = getelementptr inbounds nuw i8, ptr %call.i.i, i64 152
  store ptr %spec.select.i.i, ptr %361, align 8
  %main_variant.i.i = getelementptr inbounds nuw i8, ptr %call.i.i, i64 128
  store ptr %call.i.i, ptr %main_variant.i.i, align 8
  %next_variant.i.i = getelementptr inbounds nuw i8, ptr %call.i.i, i64 120
  store ptr null, ptr %next_variant.i.i, align 8
  %362 = load ptr, ptr %canonical.i.i, align 8
  store ptr %362, ptr %361, align 8
  %next_variant.i = getelementptr inbounds nuw i8, ptr %359, i64 120
  %363 = load ptr, ptr %next_variant.i, align 8
  store ptr %363, ptr %next_variant.i.i, align 8
  store ptr %call.i.i, ptr %next_variant.i, align 8
  store ptr %359, ptr %main_variant.i.i, align 8
  br label %if.end323

if.end323:                                        ; preds = %if.then321, %make_or_reuse_accum_type.exit753
  %t.0 = phi ptr [ %call.i.i, %if.then321 ], [ %call317, %make_or_reuse_accum_type.exit753 ]
  store ptr %t.0, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 352), align 16
  ret void
}

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @make_fract_type(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @make_accum_type(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
