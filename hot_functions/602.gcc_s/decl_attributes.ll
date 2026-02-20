; ModuleID = '/tmp/tmp.fbLEXAGFuJ/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/attribs.c"
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
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.attribute_spec = type { ptr, i32, i32, i8, i8, i8, ptr }
%struct.substring = type { ptr, i32 }

@attribute_hash = external hidden unnamed_addr global ptr, align 8
@.str = external hidden unnamed_addr constant [115 x i8], align 1
@.str.1 = external hidden unnamed_addr constant [2 x i8], align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@attributes_initialized = external hidden unnamed_addr global i1, align 1
@.str.2 = external hidden unnamed_addr constant [9 x i8], align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.3 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.4 = external hidden unnamed_addr constant [32 x i8], align 1
@.str.5 = external hidden unnamed_addr constant [54 x i8], align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.6 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.7 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.8 = external hidden unnamed_addr constant [54 x i8], align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@attribute_tables = external hidden unnamed_addr global [4 x ptr], align 16
@empty_attribute_table = external hidden constant [1 x %struct.attribute_spec], align 16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @decl_attributes(ptr noundef %node, ptr noundef %attributes, i32 noundef %flags) local_unnamed_addr #3 {
entry:
  %attr.i = alloca %struct.substring, align 8
  %str.i.i = alloca %struct.substring, align 8
  %attributes.addr = alloca ptr, align 8
  %no_add_attrs = alloca i8, align 1
  %fn_ptr_tmp = alloca ptr, align 8
  store ptr %attributes, ptr %attributes.addr, align 8
  %0 = load ptr, ptr %node, align 8
  %type = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1 = load ptr, ptr %type, align 8
  %2 = load ptr, ptr @global_trees, align 16
  %cmp = icmp eq ptr %1, %2
  br i1 %cmp, label %cleanup365, label %if.end

if.end:                                           ; preds = %entry
  %.b = load i1, ptr @attributes_initialized, align 1
  br i1 %.b, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lang_hooks, i64 224), align 8
  store ptr %3, ptr @attribute_tables, align 16
  %4 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lang_hooks, i64 216), align 8
  store ptr %4, ptr getelementptr inbounds nuw (i8, ptr @attribute_tables, i64 8), align 8
  %5 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lang_hooks, i64 232), align 8
  store ptr %5, ptr getelementptr inbounds nuw (i8, ptr @attribute_tables, i64 16), align 16
  %6 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 824), align 8
  store ptr %6, ptr getelementptr inbounds nuw (i8, ptr @attribute_tables, i64 24), align 8
  %cmp1.i = icmp eq ptr %3, null
  br i1 %cmp1.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %if.then1
  store ptr @empty_attribute_table, ptr @attribute_tables, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.then1
  %cmp1.1.i = icmp eq ptr %4, null
  br i1 %cmp1.1.i, label %if.then.1.i, label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  store ptr @empty_attribute_table, ptr getelementptr inbounds nuw (i8, ptr @attribute_tables, i64 8), align 8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i
  %cmp1.2.i = icmp eq ptr %5, null
  br i1 %cmp1.2.i, label %if.then.2.i, label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  store ptr @empty_attribute_table, ptr getelementptr inbounds nuw (i8, ptr @attribute_tables, i64 16), align 8
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i
  %cmp1.3.i = icmp eq ptr %6, null
  br i1 %cmp1.3.i, label %if.then.3.i, label %for.cond6.preheader.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  store ptr @empty_attribute_table, ptr getelementptr inbounds nuw (i8, ptr @attribute_tables, i64 24), align 8
  br label %for.cond6.preheader.i

for.cond6.preheader.i:                            ; preds = %if.then.3.i, %for.inc.2.i
  %call.i = tail call ptr @htab_create(i64 noundef 200, ptr noundef nonnull @hash_attr, ptr noundef nonnull @eq_attr, ptr noundef null) #5
  store ptr %call.i, ptr @attribute_hash, align 8
  %length.i.i = getelementptr inbounds nuw i8, ptr %str.i.i, i64 8
  %7 = load ptr, ptr @attribute_tables, align 8
  %8 = load ptr, ptr %7, align 8
  %cmp9.not31.i = icmp eq ptr %8, null
  br i1 %cmp9.not31.i, label %for.inc17.i, label %for.body10.i.preheader

for.body10.i.preheader:                           ; preds = %for.cond6.preheader.i
  br label %for.body10.i

for.body10.i:                                     ; preds = %register_attribute.exit.i, %for.body10.i.preheader
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %register_attribute.exit.i ], [ 0, %for.body10.i.preheader ]
  %arrayidx833.i = phi ptr [ %arrayidx8.i, %register_attribute.exit.i ], [ %7, %for.body10.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %str.i.i) #5
  %9 = load ptr, ptr %arrayidx833.i, align 8
  store ptr %9, ptr %str.i.i, align 8
  %call.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #5
  %conv.i.i = trunc i64 %call.i.i to i32
  store i32 %conv.i.i, ptr %length.i.i, align 8
  %10 = load ptr, ptr @attribute_hash, align 8
  %11 = load i8, ptr %9, align 1
  %conv.i.i.i = sext i8 %11 to i32
  %sext.i.i = shl i64 %call.i.i, 32
  %12 = ashr exact i64 %sext.i.i, 32
  %13 = getelementptr i8, ptr %9, i64 %12
  %arrayidx1.i.i.i = getelementptr i8, ptr %13, i64 -1
  %14 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = sext i8 %14 to i32
  %mul.i.i.i = shl nsw i32 %conv2.i.i.i, 8
  %mul3.i.i.i = shl nsw i32 %conv.i.i, 16
  %add.i.i.i = add i32 %mul3.i.i.i, %conv.i.i.i
  %add4.i.i.i = add i32 %add.i.i.i, %mul.i.i.i
  %call6.i.i = call ptr @htab_find_slot_with_hash(ptr noundef %10, ptr noundef nonnull %str.i.i, i32 noundef %add4.i.i.i, i32 noundef 1) #5
  %15 = load ptr, ptr %call6.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %register_attribute.exit.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body10.i
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @.str.1) #5
  br label %register_attribute.exit.i

register_attribute.exit.i:                        ; preds = %cond.true.i.i, %for.body10.i
  store ptr %arrayidx833.i, ptr %call6.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %str.i.i) #5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %16 = load ptr, ptr @attribute_tables, align 8
  %arrayidx8.i = getelementptr inbounds nuw %struct.attribute_spec, ptr %16, i64 %indvars.iv.next.i
  %17 = load ptr, ptr %arrayidx8.i, align 8
  %cmp9.not.i = icmp eq ptr %17, null
  br i1 %cmp9.not.i, label %for.inc17.i.loopexit, label %for.body10.i, !llvm.loop !0

for.inc17.i.loopexit:                             ; preds = %register_attribute.exit.i
  br label %for.inc17.i

for.inc17.i:                                      ; preds = %for.inc17.i.loopexit, %for.cond6.preheader.i
  %18 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @attribute_tables, i64 8), align 8
  %19 = load ptr, ptr %18, align 8
  %cmp9.not31.1.i = icmp eq ptr %19, null
  br i1 %cmp9.not31.1.i, label %for.inc17.1.i, label %for.body10.1.i.preheader

for.body10.1.i.preheader:                         ; preds = %for.inc17.i
  br label %for.body10.1.i

for.body10.1.i:                                   ; preds = %register_attribute.exit.1.i, %for.body10.1.i.preheader
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %register_attribute.exit.1.i ], [ 0, %for.body10.1.i.preheader ]
  %arrayidx833.1.i = phi ptr [ %arrayidx8.1.i, %register_attribute.exit.1.i ], [ %18, %for.body10.1.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %str.i.i) #5
  %20 = load ptr, ptr %arrayidx833.1.i, align 8
  store ptr %20, ptr %str.i.i, align 8
  %call.i.1.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #5
  %conv.i.1.i = trunc i64 %call.i.1.i to i32
  store i32 %conv.i.1.i, ptr %length.i.i, align 8
  %21 = load ptr, ptr @attribute_hash, align 8
  %22 = load i8, ptr %20, align 1
  %conv.i.i.1.i = sext i8 %22 to i32
  %sext.i.1.i = shl i64 %call.i.1.i, 32
  %23 = ashr exact i64 %sext.i.1.i, 32
  %24 = getelementptr i8, ptr %20, i64 %23
  %arrayidx1.i.i.1.i = getelementptr i8, ptr %24, i64 -1
  %25 = load i8, ptr %arrayidx1.i.i.1.i, align 1
  %conv2.i.i.1.i = sext i8 %25 to i32
  %mul.i.i.1.i = shl nsw i32 %conv2.i.i.1.i, 8
  %mul3.i.i.1.i = shl nsw i32 %conv.i.1.i, 16
  %add.i.i.1.i = add i32 %mul3.i.i.1.i, %conv.i.i.1.i
  %add4.i.i.1.i = add i32 %add.i.i.1.i, %mul.i.i.1.i
  %call6.i.1.i = call ptr @htab_find_slot_with_hash(ptr noundef %21, ptr noundef nonnull %str.i.i, i32 noundef %add4.i.i.1.i, i32 noundef 1) #5
  %26 = load ptr, ptr %call6.i.1.i, align 8
  %tobool.not.i.1.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.1.i, label %register_attribute.exit.1.i, label %cond.true.i.1.i

cond.true.i.1.i:                                  ; preds = %for.body10.1.i
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @.str.1) #5
  br label %register_attribute.exit.1.i

register_attribute.exit.1.i:                      ; preds = %cond.true.i.1.i, %for.body10.1.i
  store ptr %arrayidx833.1.i, ptr %call6.i.1.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %str.i.i) #5
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1
  %27 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @attribute_tables, i64 8), align 8
  %arrayidx8.1.i = getelementptr inbounds nuw %struct.attribute_spec, ptr %27, i64 %indvars.iv.next.1.i
  %28 = load ptr, ptr %arrayidx8.1.i, align 8
  %cmp9.not.1.i = icmp eq ptr %28, null
  br i1 %cmp9.not.1.i, label %for.inc17.1.i.loopexit, label %for.body10.1.i, !llvm.loop !0

for.inc17.1.i.loopexit:                           ; preds = %register_attribute.exit.1.i
  br label %for.inc17.1.i

for.inc17.1.i:                                    ; preds = %for.inc17.1.i.loopexit, %for.inc17.i
  %29 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @attribute_tables, i64 16), align 8
  %30 = load ptr, ptr %29, align 8
  %cmp9.not31.2.i = icmp eq ptr %30, null
  br i1 %cmp9.not31.2.i, label %for.inc17.2.i, label %for.body10.2.i.preheader

for.body10.2.i.preheader:                         ; preds = %for.inc17.1.i
  br label %for.body10.2.i

for.body10.2.i:                                   ; preds = %register_attribute.exit.2.i, %for.body10.2.i.preheader
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i, %register_attribute.exit.2.i ], [ 0, %for.body10.2.i.preheader ]
  %arrayidx833.2.i = phi ptr [ %arrayidx8.2.i, %register_attribute.exit.2.i ], [ %29, %for.body10.2.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %str.i.i) #5
  %31 = load ptr, ptr %arrayidx833.2.i, align 8
  store ptr %31, ptr %str.i.i, align 8
  %call.i.2.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #5
  %conv.i.2.i = trunc i64 %call.i.2.i to i32
  store i32 %conv.i.2.i, ptr %length.i.i, align 8
  %32 = load ptr, ptr @attribute_hash, align 8
  %33 = load i8, ptr %31, align 1
  %conv.i.i.2.i = sext i8 %33 to i32
  %sext.i.2.i = shl i64 %call.i.2.i, 32
  %34 = ashr exact i64 %sext.i.2.i, 32
  %35 = getelementptr i8, ptr %31, i64 %34
  %arrayidx1.i.i.2.i = getelementptr i8, ptr %35, i64 -1
  %36 = load i8, ptr %arrayidx1.i.i.2.i, align 1
  %conv2.i.i.2.i = sext i8 %36 to i32
  %mul.i.i.2.i = shl nsw i32 %conv2.i.i.2.i, 8
  %mul3.i.i.2.i = shl nsw i32 %conv.i.2.i, 16
  %add.i.i.2.i = add i32 %mul3.i.i.2.i, %conv.i.i.2.i
  %add4.i.i.2.i = add i32 %add.i.i.2.i, %mul.i.i.2.i
  %call6.i.2.i = call ptr @htab_find_slot_with_hash(ptr noundef %32, ptr noundef nonnull %str.i.i, i32 noundef %add4.i.i.2.i, i32 noundef 1) #5
  %37 = load ptr, ptr %call6.i.2.i, align 8
  %tobool.not.i.2.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.2.i, label %register_attribute.exit.2.i, label %cond.true.i.2.i

cond.true.i.2.i:                                  ; preds = %for.body10.2.i
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @.str.1) #5
  br label %register_attribute.exit.2.i

register_attribute.exit.2.i:                      ; preds = %cond.true.i.2.i, %for.body10.2.i
  store ptr %arrayidx833.2.i, ptr %call6.i.2.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %str.i.i) #5
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1
  %38 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @attribute_tables, i64 16), align 8
  %arrayidx8.2.i = getelementptr inbounds nuw %struct.attribute_spec, ptr %38, i64 %indvars.iv.next.2.i
  %39 = load ptr, ptr %arrayidx8.2.i, align 8
  %cmp9.not.2.i = icmp eq ptr %39, null
  br i1 %cmp9.not.2.i, label %for.inc17.2.i.loopexit, label %for.body10.2.i, !llvm.loop !0

for.inc17.2.i.loopexit:                           ; preds = %register_attribute.exit.2.i
  br label %for.inc17.2.i

for.inc17.2.i:                                    ; preds = %for.inc17.2.i.loopexit, %for.inc17.1.i
  %40 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @attribute_tables, i64 24), align 8
  %41 = load ptr, ptr %40, align 8
  %cmp9.not31.3.i = icmp eq ptr %41, null
  br i1 %cmp9.not31.3.i, label %init_attributes.exit, label %for.body10.3.i.preheader

for.body10.3.i.preheader:                         ; preds = %for.inc17.2.i
  br label %for.body10.3.i

for.body10.3.i:                                   ; preds = %register_attribute.exit.3.i, %for.body10.3.i.preheader
  %indvars.iv.3.i = phi i64 [ %indvars.iv.next.3.i, %register_attribute.exit.3.i ], [ 0, %for.body10.3.i.preheader ]
  %arrayidx833.3.i = phi ptr [ %arrayidx8.3.i, %register_attribute.exit.3.i ], [ %40, %for.body10.3.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %str.i.i) #5
  %42 = load ptr, ptr %arrayidx833.3.i, align 8
  store ptr %42, ptr %str.i.i, align 8
  %call.i.3.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #5
  %conv.i.3.i = trunc i64 %call.i.3.i to i32
  store i32 %conv.i.3.i, ptr %length.i.i, align 8
  %43 = load ptr, ptr @attribute_hash, align 8
  %44 = load i8, ptr %42, align 1
  %conv.i.i.3.i = sext i8 %44 to i32
  %sext.i.3.i = shl i64 %call.i.3.i, 32
  %45 = ashr exact i64 %sext.i.3.i, 32
  %46 = getelementptr i8, ptr %42, i64 %45
  %arrayidx1.i.i.3.i = getelementptr i8, ptr %46, i64 -1
  %47 = load i8, ptr %arrayidx1.i.i.3.i, align 1
  %conv2.i.i.3.i = sext i8 %47 to i32
  %mul.i.i.3.i = shl nsw i32 %conv2.i.i.3.i, 8
  %mul3.i.i.3.i = shl nsw i32 %conv.i.3.i, 16
  %add.i.i.3.i = add i32 %mul3.i.i.3.i, %conv.i.i.3.i
  %add4.i.i.3.i = add i32 %add.i.i.3.i, %mul.i.i.3.i
  %call6.i.3.i = call ptr @htab_find_slot_with_hash(ptr noundef %43, ptr noundef nonnull %str.i.i, i32 noundef %add4.i.i.3.i, i32 noundef 1) #5
  %48 = load ptr, ptr %call6.i.3.i, align 8
  %tobool.not.i.3.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.3.i, label %register_attribute.exit.3.i, label %cond.true.i.3.i

cond.true.i.3.i:                                  ; preds = %for.body10.3.i
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @.str.1) #5
  br label %register_attribute.exit.3.i

register_attribute.exit.3.i:                      ; preds = %cond.true.i.3.i, %for.body10.3.i
  store ptr %arrayidx833.3.i, ptr %call6.i.3.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %str.i.i) #5
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1
  %49 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @attribute_tables, i64 24), align 8
  %arrayidx8.3.i = getelementptr inbounds nuw %struct.attribute_spec, ptr %49, i64 %indvars.iv.next.3.i
  %50 = load ptr, ptr %arrayidx8.3.i, align 8
  %cmp9.not.3.i = icmp eq ptr %50, null
  br i1 %cmp9.not.3.i, label %init_attributes.exit.loopexit, label %for.body10.3.i, !llvm.loop !0

init_attributes.exit.loopexit:                    ; preds = %register_attribute.exit.3.i
  br label %init_attributes.exit

init_attributes.exit:                             ; preds = %init_attributes.exit.loopexit, %for.inc17.2.i
  %call20.i = call i32 @invoke_plugin_callbacks(i32 noundef 11, ptr noundef null) #5
  store i1 true, ptr @attributes_initialized, align 1
  br label %if.end2

if.end2:                                          ; preds = %init_attributes.exit, %if.end
  %51 = load ptr, ptr %node, align 8
  %bf.load = load i64, ptr %51, align 8
  %bf.cast488 = and i64 %bf.load, 65535
  %cmp3 = icmp eq i64 %bf.cast488, 29
  %52 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 1040), align 16
  %tobool4 = icmp ne ptr %52, null
  %or.cond = select i1 %cmp3, i1 %tobool4, i1 false
  br i1 %or.cond, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.end2
  %53 = load ptr, ptr %attributes.addr, align 8
  %call = call ptr @lookup_attribute(ptr noundef nonnull @.str.2, ptr noundef %53) #5
  %54 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 1040), align 16
  %call6 = call ptr @copy_list(ptr noundef %54) #5
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %call9 = call ptr @get_identifier(ptr noundef nonnull @.str.2) #5
  %55 = load ptr, ptr %attributes.addr, align 8
  %call10 = call ptr @tree_cons_stat(ptr noundef %call9, ptr noundef %call6, ptr noundef %55) #5
  store ptr %call10, ptr %attributes.addr, align 8
  br label %if.end14

if.else:                                          ; preds = %if.then5
  %value = getelementptr inbounds nuw i8, ptr %call, i64 32
  %56 = load ptr, ptr %value, align 8
  %call11 = call ptr @chainon(ptr noundef %call6, ptr noundef %56) #5
  store ptr %call11, ptr %value, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8, %if.end2
  %57 = load ptr, ptr %node, align 8
  %bf.load15 = load i64, ptr %57, align 8
  %bf.cast17489 = and i64 %bf.load15, 65535
  %cmp18 = icmp eq i64 %bf.cast17489, 29
  br i1 %cmp18, label %land.lhs.true19, label %if.end25

land.lhs.true19:                                  ; preds = %if.end14
  %58 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 1008), align 16
  %59 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 1000), align 8
  %cmp20.not = icmp eq ptr %58, %59
  br i1 %cmp20.not, label %if.end25, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %function_specific_optimization = getelementptr inbounds nuw i8, ptr %57, i64 208
  %60 = load ptr, ptr %function_specific_optimization, align 8
  %tobool22.not = icmp eq ptr %60, null
  br i1 %tobool22.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %land.lhs.true21
  store ptr %58, ptr %function_specific_optimization, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true21, %land.lhs.true19, %if.end14
  %61 = load ptr, ptr %node, align 8
  %bf.load26 = load i64, ptr %61, align 8
  %bf.cast28490 = and i64 %bf.load26, 65535
  %cmp29 = icmp eq i64 %bf.cast28490, 29
  %62 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 1032), align 8
  %tobool31 = icmp ne ptr %62, null
  %or.cond367 = select i1 %cmp29, i1 %tobool31, i1 false
  br i1 %or.cond367, label %land.lhs.true32, label %if.end49

land.lhs.true32:                                  ; preds = %if.end25
  %63 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1968), align 8
  %call33 = call zeroext i8 %63(ptr noundef nonnull %61, ptr noundef null, ptr noundef nonnull %62, i32 noundef 0) #5
  %tobool34.not = icmp eq i8 %call33, 0
  br i1 %tobool34.not, label %if.end49, label %if.then35

if.then35:                                        ; preds = %land.lhs.true32
  %64 = load ptr, ptr %attributes.addr, align 8
  %call37 = call ptr @lookup_attribute(ptr noundef nonnull @.str.3, ptr noundef %64) #5
  %65 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 1032), align 8
  %call39 = call ptr @copy_list(ptr noundef %65) #5
  %tobool40.not = icmp eq ptr %call37, null
  br i1 %tobool40.not, label %if.then41, label %if.else44

if.then41:                                        ; preds = %if.then35
  %call42 = call ptr @get_identifier(ptr noundef nonnull @.str.3) #5
  %66 = load ptr, ptr %attributes.addr, align 8
  %call43 = call ptr @tree_cons_stat(ptr noundef %call42, ptr noundef %call39, ptr noundef %66) #5
  store ptr %call43, ptr %attributes.addr, align 8
  br label %if.end49

if.else44:                                        ; preds = %if.then35
  %value45 = getelementptr inbounds nuw i8, ptr %call37, i64 32
  %67 = load ptr, ptr %value45, align 8
  %call46 = call ptr @chainon(ptr noundef %call39, ptr noundef %67) #5
  store ptr %call46, ptr %value45, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.else44, %if.then41, %land.lhs.true32, %if.end25
  %68 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 848), align 8
  %69 = load ptr, ptr %node, align 8
  call void %68(ptr noundef %69, ptr noundef nonnull %attributes.addr) #5
  %a.0503 = load ptr, ptr %attributes.addr, align 8
  %tobool50.not504 = icmp eq ptr %a.0503, null
  br i1 %tobool50.not504, label %cleanup365, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end49
  %length.i = getelementptr inbounds nuw i8, ptr %attr.i, i64 8
  br label %for.body

for.body:                                         ; preds = %cleanup, %for.body.lr.ph
  %a.0507 = phi ptr [ %a.0503, %for.body.lr.ph ], [ %a.0, %cleanup ]
  %flags.addr.0506 = phi i32 [ %flags, %for.body.lr.ph ], [ %flags.addr.4, %cleanup ]
  %returned_attrs.0505 = phi ptr [ null, %for.body.lr.ph ], [ %returned_attrs.2, %cleanup ]
  %purpose = getelementptr inbounds nuw i8, ptr %a.0507, i64 24
  %70 = load ptr, ptr %purpose, align 8
  %value51 = getelementptr inbounds nuw i8, ptr %a.0507, i64 32
  %71 = load ptr, ptr %value51, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %attr.i) #5
  %id.i = getelementptr inbounds nuw i8, ptr %70, i64 24
  %72 = load ptr, ptr %id.i, align 8
  store ptr %72, ptr %attr.i, align 8
  %len.i = getelementptr inbounds nuw i8, ptr %70, i64 32
  %73 = load i32, ptr %len.i, align 8
  store i32 %73, ptr %length.i, align 8
  %cmp.i.i = icmp sgt i32 %73, 4
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %lookup_attribute_spec.exit

land.lhs.true.i.i:                                ; preds = %for.body
  %74 = load i8, ptr %72, align 1
  %cmp2.i.i = icmp eq i8 %74, 95
  br i1 %cmp2.i.i, label %land.lhs.true4.i.i, label %lookup_attribute_spec.exit

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %arrayidx6.i.i = getelementptr inbounds nuw i8, ptr %72, i64 1
  %75 = load i8, ptr %arrayidx6.i.i, align 1
  %cmp8.i.i = icmp eq i8 %75, 95
  br i1 %cmp8.i.i, label %land.lhs.true10.i.i, label %lookup_attribute_spec.exit

land.lhs.true10.i.i:                              ; preds = %land.lhs.true4.i.i
  %76 = zext nneg i32 %73 to i64
  %77 = getelementptr i8, ptr %72, i64 %76
  %arrayidx13.i.i = getelementptr i8, ptr %77, i64 -1
  %78 = load i8, ptr %arrayidx13.i.i, align 1
  %cmp15.i.i = icmp eq i8 %78, 95
  br i1 %cmp15.i.i, label %land.lhs.true17.i.i, label %lookup_attribute_spec.exit

land.lhs.true17.i.i:                              ; preds = %land.lhs.true10.i.i
  %arrayidx22.i.i = getelementptr i8, ptr %77, i64 -2
  %79 = load i8, ptr %arrayidx22.i.i, align 1
  %cmp24.i.i = icmp eq i8 %79, 95
  br i1 %cmp24.i.i, label %if.then.i.i, label %lookup_attribute_spec.exit

if.then.i.i:                                      ; preds = %land.lhs.true17.i.i
  %sub27.i.i = add nsw i32 %73, -4
  store i32 %sub27.i.i, ptr %length.i, align 8
  %add.ptr.i.i = getelementptr inbounds nuw i8, ptr %72, i64 2
  store ptr %add.ptr.i.i, ptr %attr.i, align 8
  br label %lookup_attribute_spec.exit

lookup_attribute_spec.exit:                       ; preds = %if.then.i.i, %land.lhs.true17.i.i, %land.lhs.true10.i.i, %land.lhs.true4.i.i, %land.lhs.true.i.i, %for.body
  %80 = load ptr, ptr @attribute_hash, align 8
  %81 = load ptr, ptr %attr.i, align 8
  %82 = load i32, ptr %length.i, align 8
  %83 = load i8, ptr %81, align 1
  %conv.i.i495 = sext i8 %83 to i32
  %84 = sext i32 %82 to i64
  %85 = getelementptr i8, ptr %81, i64 %84
  %arrayidx1.i.i = getelementptr i8, ptr %85, i64 -1
  %86 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = sext i8 %86 to i32
  %mul.i.i = shl nsw i32 %conv2.i.i, 8
  %mul3.i.i = shl nsw i32 %82, 16
  %add.i.i = add i32 %mul3.i.i, %conv.i.i495
  %add4.i.i = add i32 %add.i.i, %mul.i.i
  %call5.i = call ptr @htab_find_with_hash(ptr noundef %80, ptr noundef nonnull %attr.i, i32 noundef %add4.i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %attr.i) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %no_add_attrs) #5
  store i8 0, ptr %no_add_attrs, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %fn_ptr_tmp) #5
  store ptr null, ptr %fn_ptr_tmp, align 8
  %cmp53 = icmp eq ptr %call5.i, null
  br i1 %cmp53, label %if.then55, label %if.else57

if.then55:                                        ; preds = %lookup_attribute_spec.exit
  %call56 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.4, ptr noundef nonnull %70) #5
  br label %cleanup

if.else57:                                        ; preds = %lookup_attribute_spec.exit
  %call58 = call i32 @list_length(ptr noundef %71) #5
  %min_length = getelementptr inbounds nuw i8, ptr %call5.i, i64 8
  %87 = load i32, ptr %min_length, align 8
  %cmp59 = icmp slt i32 %call58, %87
  br i1 %cmp59, label %if.then68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else57
  %max_length = getelementptr inbounds nuw i8, ptr %call5.i, i64 12
  %88 = load i32, ptr %max_length, align 4
  %cmp61 = icmp sgt i32 %88, -1
  br i1 %cmp61, label %land.lhs.true63, label %if.end70

land.lhs.true63:                                  ; preds = %lor.lhs.false
  %call64 = call i32 @list_length(ptr noundef %71) #5
  %89 = load i32, ptr %max_length, align 4
  %cmp66 = icmp sgt i32 %call64, %89
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %land.lhs.true63, %if.else57
  call void (ptr, ...) @error(ptr noundef nonnull @.str.5, ptr noundef nonnull %70) #5
  br label %cleanup

if.end70:                                         ; preds = %land.lhs.true63, %lor.lhs.false
  %90 = load ptr, ptr %call5.i, align 8
  %call72 = call i32 @is_attribute_p(ptr noundef %90, ptr noundef nonnull %70) #5
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end70
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 307, ptr noundef nonnull @.str.1) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end70
  %decl_required = getelementptr inbounds nuw i8, ptr %call5.i, i64 16
  %91 = load i8, ptr %decl_required, align 8
  %tobool75.not = icmp eq i8 %91, 0
  br i1 %tobool75.not, label %if.end88, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %cond.end
  %92 = load ptr, ptr %node, align 8
  %bf.load77 = load i64, ptr %92, align 8
  %bf.cast79 = and i64 %bf.load77, 65535
  %arrayidx = getelementptr inbounds nuw i32, ptr @tree_code_type, i64 %bf.cast79
  %93 = load i32, ptr %arrayidx, align 4
  %cmp80 = icmp eq i32 %93, 3
  br i1 %cmp80, label %if.end88, label %if.then82

if.then82:                                        ; preds = %land.lhs.true76
  %and = and i32 %flags.addr.0506, 7
  %tobool83.not = icmp eq i32 %and, 0
  br i1 %tobool83.not, label %if.else86, label %if.then84

if.then84:                                        ; preds = %if.then82
  %call85 = call ptr @tree_cons_stat(ptr noundef nonnull %70, ptr noundef %71, ptr noundef %returned_attrs.0505) #5
  br label %cleanup

if.else86:                                        ; preds = %if.then82
  %call87 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.6, ptr noundef nonnull %70) #5
  br label %cleanup

if.end88:                                         ; preds = %land.lhs.true76, %cond.end
  %type_required = getelementptr inbounds nuw i8, ptr %call5.i, i64 17
  %94 = load i8, ptr %type_required, align 1
  %tobool90.not = icmp eq i8 %94, 0
  br i1 %tobool90.not, label %if.end114, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.end88
  %95 = load ptr, ptr %node, align 8
  %bf.load92 = load i64, ptr %95, align 8
  %bf.cast94 = and i64 %bf.load92, 65535
  %arrayidx96 = getelementptr inbounds nuw i32, ptr @tree_code_type, i64 %bf.cast94
  %96 = load i32, ptr %arrayidx96, align 4
  %cmp97 = icmp eq i32 %96, 3
  br i1 %cmp97, label %if.then99, label %if.end114

if.then99:                                        ; preds = %land.lhs.true91
  %type100 = getelementptr inbounds nuw i8, ptr %95, i64 16
  %97 = load ptr, ptr %type100, align 8
  %bf.load101 = load i64, ptr %97, align 8
  %bf.cast103491 = and i64 %bf.load101, 65535
  %cmp104 = icmp eq i64 %bf.cast103491, 35
  br i1 %cmp104, label %land.lhs.true106, label %if.then111

land.lhs.true106:                                 ; preds = %if.then99
  %type107 = getelementptr inbounds nuw i8, ptr %97, i64 16
  %98 = load ptr, ptr %type107, align 8
  %main_variant = getelementptr inbounds nuw i8, ptr %98, i64 128
  %99 = load ptr, ptr %main_variant, align 8
  %name108 = getelementptr inbounds nuw i8, ptr %99, i64 96
  %100 = load ptr, ptr %name108, align 8
  %cmp109 = icmp eq ptr %97, %100
  br i1 %cmp109, label %if.end114, label %if.then111

if.then111:                                       ; preds = %land.lhs.true106, %if.then99
  %and112 = and i32 %flags.addr.0506, -9
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %land.lhs.true106, %land.lhs.true91, %if.end88
  %flags.addr.1 = phi i32 [ %flags.addr.0506, %land.lhs.true106 ], [ %and112, %if.then111 ], [ %flags.addr.0506, %land.lhs.true91 ], [ %flags.addr.0506, %if.end88 ]
  %anode.0 = phi ptr [ %type100, %land.lhs.true106 ], [ %type100, %if.then111 ], [ %node, %land.lhs.true91 ], [ %node, %if.end88 ]
  %function_type_required = getelementptr inbounds nuw i8, ptr %call5.i, i64 18
  %101 = load i8, ptr %function_type_required, align 2
  %tobool116.not = icmp eq i8 %101, 0
  br i1 %tobool116.not, label %if.end191, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %if.end114
  %102 = load ptr, ptr %anode.0, align 8
  %bf.load118 = load i64, ptr %102, align 8
  %103 = trunc i64 %bf.load118 to i16
  switch i16 %103, label %if.else170 [
    i16 20, label %if.end191
    i16 21, label %if.end191
    i16 10, label %land.lhs.true135
  ]

land.lhs.true135:                                 ; preds = %land.lhs.true117
  %type136 = getelementptr inbounds nuw i8, ptr %102, i64 16
  %104 = load ptr, ptr %type136, align 8
  %bf.load137 = load i64, ptr %104, align 8
  %bf.cast139496 = and i64 %bf.load137, 65534
  %switch = icmp eq i64 %bf.cast139496, 20
  br i1 %switch, label %if.then149, label %if.else170

if.then149:                                       ; preds = %land.lhs.true135
  store ptr %104, ptr %fn_ptr_tmp, align 8
  %bf.load151 = load i64, ptr %102, align 8
  %105 = trunc i64 %bf.load151 to i32
  %106 = lshr i32 %105, 20
  %bf.cast153 = and i32 %106, 1
  %107 = lshr i32 %105, 18
  %mul158 = and i32 %107, 2
  %or = or disjoint i32 %bf.cast153, %mul158
  %restrict_flag = getelementptr inbounds nuw i8, ptr %102, i64 60
  %bf.load159 = load i32, ptr %restrict_flag, align 4
  %108 = lshr i32 %bf.load159, 11
  %mul162 = and i32 %108, 4
  %or163 = or disjoint i32 %or, %mul162
  %sh.diff = lshr i64 %bf.load151, 48
  %tr.sh.diff = trunc nuw nsw i64 %sh.diff to i32
  %shl = and i32 %tr.sh.diff, 65280
  %or168 = or disjoint i32 %or163, %shl
  %and169 = and i32 %flags.addr.1, -9
  br label %if.end176

if.else170:                                       ; preds = %land.lhs.true135, %land.lhs.true117
  %and171 = and i32 %flags.addr.1, 2
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end176, label %if.then173

if.then173:                                       ; preds = %if.else170
  %call174 = call ptr @tree_cons_stat(ptr noundef nonnull %70, ptr noundef %71, ptr noundef %returned_attrs.0505) #5
  br label %cleanup

if.end176:                                        ; preds = %if.else170, %if.then149
  %flags.addr.2 = phi i32 [ %and169, %if.then149 ], [ %flags.addr.1, %if.else170 ]
  %anode.1 = phi ptr [ %fn_ptr_tmp, %if.then149 ], [ %anode.0, %if.else170 ]
  %fn_ptr_quals.0 = phi i32 [ %or168, %if.then149 ], [ 0, %if.else170 ]
  %109 = load ptr, ptr %anode.1, align 8
  %bf.load177 = load i64, ptr %109, align 8
  %bf.cast179497 = and i64 %bf.load177, 65534
  %switch494 = icmp eq i64 %bf.cast179497, 20
  br i1 %switch494, label %if.end191, label %if.then188

if.then188:                                       ; preds = %if.end176
  %call189 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.7, ptr noundef nonnull %70) #5
  br label %cleanup

if.end191:                                        ; preds = %if.end176, %land.lhs.true117, %land.lhs.true117, %if.end114
  %flags.addr.3 = phi i32 [ %flags.addr.1, %land.lhs.true117 ], [ %flags.addr.1, %if.end114 ], [ %flags.addr.1, %land.lhs.true117 ], [ %flags.addr.2, %if.end176 ]
  %anode.2 = phi ptr [ %anode.0, %land.lhs.true117 ], [ %anode.0, %if.end114 ], [ %anode.0, %land.lhs.true117 ], [ %anode.1, %if.end176 ]
  %fn_ptr_quals.1 = phi i32 [ 0, %land.lhs.true117 ], [ 0, %if.end114 ], [ 0, %land.lhs.true117 ], [ %fn_ptr_quals.0, %if.end176 ]
  %110 = load ptr, ptr %anode.2, align 8
  %bf.load192 = load i64, ptr %110, align 8
  %bf.cast194 = and i64 %bf.load192, 65535
  %arrayidx196 = getelementptr inbounds nuw i32, ptr @tree_code_type, i64 %bf.cast194
  %111 = load i32, ptr %arrayidx196, align 4
  %cmp197 = icmp ne i32 %111, 2
  %and200 = and i32 %flags.addr.3, 8
  %tobool201.not = icmp eq i32 %and200, 0
  %or.cond493 = select i1 %cmp197, i1 true, i1 %tobool201.not
  br i1 %or.cond493, label %if.end207, label %land.lhs.true202

land.lhs.true202:                                 ; preds = %if.end191
  %size = getelementptr inbounds nuw i8, ptr %110, i64 32
  %112 = load ptr, ptr %size, align 8
  %cmp203.not = icmp eq ptr %112, null
  br i1 %cmp203.not, label %if.end207, label %if.then205

if.then205:                                       ; preds = %land.lhs.true202
  %call206 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.8) #5
  br label %cleanup

if.end207:                                        ; preds = %land.lhs.true202, %if.end191
  %handler = getelementptr inbounds nuw i8, ptr %call5.i, i64 24
  %113 = load ptr, ptr %handler, align 8
  %cmp208.not = icmp eq ptr %113, null
  br i1 %cmp208.not, label %if.end214, label %if.then210

if.then210:                                       ; preds = %if.end207
  %call212 = call ptr %113(ptr noundef nonnull %anode.2, ptr noundef nonnull %70, ptr noundef %71, i32 noundef %flags.addr.3, ptr noundef nonnull %no_add_attrs) #5
  %call213 = call ptr @chainon(ptr noundef %call212, ptr noundef %returned_attrs.0505) #5
  br label %if.end214

if.end214:                                        ; preds = %if.then210, %if.end207
  %returned_attrs.1 = phi ptr [ %call213, %if.then210 ], [ %returned_attrs.0505, %if.end207 ]
  %114 = load i8, ptr %type_required, align 1
  %tobool217.not = icmp eq i8 %114, 0
  br i1 %tobool217.not, label %if.end245, label %land.lhs.true218

land.lhs.true218:                                 ; preds = %if.end214
  %115 = load ptr, ptr %node, align 8
  %bf.load219 = load i64, ptr %115, align 8
  %idxprom222 = and i64 %bf.load219, 65535
  %arrayidx223 = getelementptr inbounds nuw i32, ptr @tree_code_type, i64 %idxprom222
  %116 = load i32, ptr %arrayidx223, align 4
  %cmp224 = icmp eq i32 %116, 3
  br i1 %cmp224, label %land.lhs.true226, label %if.end245

land.lhs.true226:                                 ; preds = %land.lhs.true218
  %117 = trunc i64 %bf.load219 to i16
  switch i16 %117, label %if.end245 [
    i16 32, label %if.then244
    i16 34, label %if.then244
    i16 36, label %if.then244
  ]

if.then244:                                       ; preds = %land.lhs.true226, %land.lhs.true226, %land.lhs.true226
  call void @relayout_decl(ptr noundef nonnull %115) #5
  br label %if.end245

if.end245:                                        ; preds = %if.then244, %land.lhs.true226, %land.lhs.true218, %if.end214
  %118 = load i8, ptr %no_add_attrs, align 1
  %tobool246.not = icmp eq i8 %118, 0
  br i1 %tobool246.not, label %if.then247, label %if.end327

if.then247:                                       ; preds = %if.end245
  %119 = load ptr, ptr %anode.2, align 8
  %bf.load249 = load i64, ptr %119, align 8
  %bf.cast251 = and i64 %bf.load249, 65535
  %arrayidx253 = getelementptr inbounds nuw i32, ptr @tree_code_type, i64 %bf.cast251
  %120 = load i32, ptr %arrayidx253, align 4
  %cmp254 = icmp eq i32 %120, 3
  %old_attrs.0.in.v = select i1 %cmp254, i64 88, i64 48
  %old_attrs.0.in = getelementptr inbounds nuw i8, ptr %119, i64 %old_attrs.0.in.v
  %old_attrs.0 = load ptr, ptr %old_attrs.0.in, align 8
  %121 = load ptr, ptr %call5.i, align 8
  %call262 = call ptr @lookup_attribute(ptr noundef %121, ptr noundef %old_attrs.0) #5
  %cond499 = icmp eq ptr %call262, null
  br i1 %cond499, label %if.then277, label %for.body266.preheader

for.body266.preheader:                            ; preds = %if.then247
  br label %for.body266

for.body266:                                      ; preds = %for.inc, %for.body266.preheader
  %a248.0500 = phi ptr [ %call274, %for.inc ], [ %call262, %for.body266.preheader ]
  %value267 = getelementptr inbounds nuw i8, ptr %a248.0500, i64 32
  %122 = load ptr, ptr %value267, align 8
  %call268 = call i32 @simple_cst_equal(ptr noundef %122, ptr noundef %71) #5
  %cmp269 = icmp eq i32 %call268, 1
  br i1 %cmp269, label %if.end327.loopexit509, label %for.inc

for.inc:                                          ; preds = %for.body266
  %123 = load ptr, ptr %call5.i, align 8
  %chain = getelementptr inbounds nuw i8, ptr %a248.0500, i64 8
  %124 = load ptr, ptr %chain, align 8
  %call274 = call ptr @lookup_attribute(ptr noundef %123, ptr noundef %124) #5
  %cond = icmp eq ptr %call274, null
  br i1 %cond, label %if.then277.loopexit, label %for.body266, !llvm.loop !2

if.then277.loopexit:                              ; preds = %for.inc
  br label %if.then277

if.then277:                                       ; preds = %if.then277.loopexit, %if.then247
  %125 = load ptr, ptr %anode.2, align 8
  %bf.load278 = load i64, ptr %125, align 8
  %bf.cast280 = and i64 %bf.load278, 65535
  %arrayidx282 = getelementptr inbounds nuw i32, ptr @tree_code_type, i64 %bf.cast280
  %126 = load i32, ptr %arrayidx282, align 4
  %cmp283 = icmp eq i32 %126, 3
  br i1 %cmp283, label %if.then285, label %if.else288

if.then285:                                       ; preds = %if.then277
  %call286 = call ptr @tree_cons_stat(ptr noundef %70, ptr noundef %71, ptr noundef %old_attrs.0) #5
  %127 = load ptr, ptr %anode.2, align 8
  %attributes287 = getelementptr inbounds nuw i8, ptr %127, i64 88
  store ptr %call286, ptr %attributes287, align 8
  br label %if.end327

if.else288:                                       ; preds = %if.then277
  br i1 %tobool201.not, label %if.else321, label %if.then291

if.then291:                                       ; preds = %if.else288
  %call292 = call ptr @tree_cons_stat(ptr noundef %70, ptr noundef %71, ptr noundef %old_attrs.0) #5
  %128 = load ptr, ptr %anode.2, align 8
  %attributes293 = getelementptr inbounds nuw i8, ptr %128, i64 48
  store ptr %call292, ptr %attributes293, align 8
  %129 = load ptr, ptr %anode.2, align 8
  %main_variant294 = getelementptr inbounds nuw i8, ptr %129, i64 128
  %130 = load ptr, ptr %main_variant294, align 8
  %cmp295 = icmp ne ptr %129, %130
  %tobool299.not501 = icmp eq ptr %129, null
  %or.cond508 = or i1 %cmp295, %tobool299.not501
  br i1 %or.cond508, label %if.end327, label %for.body300.preheader

for.body300.preheader:                            ; preds = %if.then291
  br label %for.body300

for.body300:                                      ; preds = %for.inc318, %for.body300.preheader
  %variant.0502 = phi ptr [ %136, %for.inc318 ], [ %129, %for.body300.preheader ]
  %attributes301 = getelementptr inbounds nuw i8, ptr %variant.0502, i64 48
  %131 = load ptr, ptr %attributes301, align 8
  %cmp302 = icmp eq ptr %131, %old_attrs.0
  br i1 %cmp302, label %if.then304, label %if.else307

if.then304:                                       ; preds = %for.body300
  %132 = load ptr, ptr %anode.2, align 8
  %attributes305 = getelementptr inbounds nuw i8, ptr %132, i64 48
  %133 = load ptr, ptr %attributes305, align 8
  store ptr %133, ptr %attributes301, align 8
  br label %for.inc318

if.else307:                                       ; preds = %for.body300
  %134 = load ptr, ptr %call5.i, align 8
  %call310 = call ptr @lookup_attribute(ptr noundef %134, ptr noundef %131) #5
  %tobool311.not = icmp eq ptr %call310, null
  br i1 %tobool311.not, label %if.then312, label %for.inc318

if.then312:                                       ; preds = %if.else307
  %135 = load ptr, ptr %attributes301, align 8
  %call314 = call ptr @tree_cons_stat(ptr noundef %70, ptr noundef %71, ptr noundef %135) #5
  store ptr %call314, ptr %attributes301, align 8
  br label %for.inc318

for.inc318:                                       ; preds = %if.then312, %if.else307, %if.then304
  %next_variant = getelementptr inbounds nuw i8, ptr %variant.0502, i64 120
  %136 = load ptr, ptr %next_variant, align 8
  %tobool299.not = icmp eq ptr %136, null
  br i1 %tobool299.not, label %if.end327.loopexit, label %for.body300, !llvm.loop !3

if.else321:                                       ; preds = %if.else288
  %call322 = call ptr @tree_cons_stat(ptr noundef %70, ptr noundef %71, ptr noundef %old_attrs.0) #5
  %call323 = call ptr @build_type_attribute_variant(ptr noundef nonnull %125, ptr noundef %call322) #5
  store ptr %call323, ptr %anode.2, align 8
  br label %if.end327

if.end327.loopexit:                               ; preds = %for.inc318
  br label %if.end327

if.end327.loopexit509:                            ; preds = %for.body266
  br label %if.end327

if.end327:                                        ; preds = %if.end327.loopexit509, %if.end327.loopexit, %if.else321, %if.then291, %if.then285, %if.end245
  %137 = load ptr, ptr %fn_ptr_tmp, align 8
  %tobool328.not = icmp eq ptr %137, null
  br i1 %tobool328.not, label %cleanup, label %if.then329

if.then329:                                       ; preds = %if.end327
  %call330 = call ptr @build_pointer_type(ptr noundef nonnull %137) #5
  store ptr %call330, ptr %fn_ptr_tmp, align 8
  %tobool331.not = icmp eq i32 %fn_ptr_quals.1, 0
  br i1 %tobool331.not, label %if.end334, label %if.then332

if.then332:                                       ; preds = %if.then329
  %call333 = call ptr @build_qualified_type(ptr noundef %call330, i32 noundef %fn_ptr_quals.1) #5
  store ptr %call333, ptr %fn_ptr_tmp, align 8
  br label %if.end334

if.end334:                                        ; preds = %if.then332, %if.then329
  %138 = load ptr, ptr %node, align 8
  %bf.load335 = load i64, ptr %138, align 8
  %idxprom338 = and i64 %bf.load335, 65535
  %arrayidx339 = getelementptr inbounds nuw i32, ptr @tree_code_type, i64 %idxprom338
  %139 = load i32, ptr %arrayidx339, align 4
  %cmp340 = icmp eq i32 %139, 3
  br i1 %cmp340, label %if.then342, label %if.else344

if.then342:                                       ; preds = %if.end334
  %140 = load ptr, ptr %fn_ptr_tmp, align 8
  %type343 = getelementptr inbounds nuw i8, ptr %138, i64 16
  store ptr %140, ptr %type343, align 8
  br label %cleanup

if.else344:                                       ; preds = %if.end334
  %cmp348 = icmp eq i64 %idxprom338, 10
  br i1 %cmp348, label %cond.end352, label %cond.true350

cond.true350:                                     ; preds = %if.else344
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 461, ptr noundef nonnull @.str.1) #5
  br label %cond.end352

cond.end352:                                      ; preds = %cond.true350, %if.else344
  %141 = load ptr, ptr %fn_ptr_tmp, align 8
  store ptr %141, ptr %node, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end352, %if.then342, %if.end327, %if.then205, %if.then188, %if.then173, %if.else86, %if.then84, %if.then68, %if.then55
  %returned_attrs.2 = phi ptr [ %returned_attrs.0505, %if.then55 ], [ %returned_attrs.0505, %if.then68 ], [ %returned_attrs.0505, %if.then188 ], [ %returned_attrs.0505, %if.then205 ], [ %call174, %if.then173 ], [ %call85, %if.then84 ], [ %returned_attrs.0505, %if.else86 ], [ %returned_attrs.1, %if.then342 ], [ %returned_attrs.1, %cond.end352 ], [ %returned_attrs.1, %if.end327 ]
  %flags.addr.4 = phi i32 [ %flags.addr.0506, %if.then55 ], [ %flags.addr.0506, %if.then68 ], [ %flags.addr.2, %if.then188 ], [ %flags.addr.3, %if.then205 ], [ %flags.addr.1, %if.then173 ], [ %flags.addr.0506, %if.then84 ], [ %flags.addr.0506, %if.else86 ], [ %flags.addr.3, %if.then342 ], [ %flags.addr.3, %cond.end352 ], [ %flags.addr.3, %if.end327 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %fn_ptr_tmp) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %no_add_attrs) #5
  %chain363 = getelementptr inbounds nuw i8, ptr %a.0507, i64 8
  %a.0 = load ptr, ptr %chain363, align 8
  %tobool50.not = icmp eq ptr %a.0, null
  br i1 %tobool50.not, label %cleanup365.loopexit, label %for.body, !llvm.loop !4

cleanup365.loopexit:                              ; preds = %cleanup
  %returned_attrs.2.lcssa = phi ptr [ %returned_attrs.2, %cleanup ]
  br label %cleanup365

cleanup365:                                       ; preds = %cleanup365.loopexit, %if.end49, %entry
  %retval.0 = phi ptr [ null, %entry ], [ null, %if.end49 ], [ %returned_attrs.2.lcssa, %cleanup365.loopexit ]
  ret ptr %retval.0
}

declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @copy_list(ptr noundef) local_unnamed_addr #2

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @list_length(ptr noundef) local_unnamed_addr #2

declare void @error(ptr noundef, ...) local_unnamed_addr #2

declare i32 @is_attribute_p(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @relayout_decl(ptr noundef) local_unnamed_addr #2

declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @build_type_attribute_variant(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #2

declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare hidden i32 @hash_attr(ptr noundef readonly captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
declare hidden range(i32 0, 2) i32 @eq_attr(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) #4

declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
!3 = distinct !{!3, !1}
!4 = distinct !{!4, !1}
