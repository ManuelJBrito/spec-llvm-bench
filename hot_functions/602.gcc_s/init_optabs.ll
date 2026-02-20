; ModuleID = '/tmp/tmp.ucwiy0V2il/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/optabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.convert_optab_d = type { i32, ptr, ptr, [87 x [87 x %struct.optab_handlers]] }
%struct.optab_handlers = type { i32 }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
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
%struct.libfunc_entry = type { i64, i32, i32, ptr }

@convert_optab_table = external dso_local global [17 x %struct.convert_optab_d], align 16
@libfunc_hash = external hidden global ptr, align 8
@optab_table = external dso_local global [159 x %struct.optab_d], align 16
@code_to_optab = external dso_local local_unnamed_addr global [140 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@movcc_gen_code = external dso_local local_unnamed_addr global [87 x i32], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@vcond_gen_code = external dso_local local_unnamed_addr global [87 x i32], align 16
@vcondu_gen_code = external dso_local local_unnamed_addr global [87 x i32], align 16
@movmem_optab = external local_unnamed_addr global [87 x i32], align 16
@cmpstr_optab = external local_unnamed_addr global [87 x i32], align 16
@cmpstrn_optab = external local_unnamed_addr global [87 x i32], align 16
@cmpmem_optab = external local_unnamed_addr global [87 x i32], align 16
@setmem_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_add_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_sub_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_ior_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_and_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_xor_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_nand_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_old_add_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_old_sub_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_old_ior_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_old_and_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_old_xor_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_old_nand_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_new_add_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_new_sub_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_new_ior_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_new_and_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_new_xor_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_new_nand_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_compare_and_swap = external local_unnamed_addr global [87 x i32], align 16
@sync_lock_test_and_set = external local_unnamed_addr global [87 x i32], align 16
@sync_lock_release = external local_unnamed_addr global [87 x i32], align 16
@reload_out_optab = external local_unnamed_addr global [87 x i32], align 16
@reload_in_optab = external local_unnamed_addr global [87 x i32], align 16
@.str.2 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.3 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.4 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.5 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.6 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.7 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.8 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.9 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.10 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.11 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.12 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.13 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.14 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.15 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.16 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.17 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.18 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.19 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.20 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.21 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.22 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.23 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.24 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.25 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.26 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.27 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.28 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.29 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.30 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.31 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.32 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.33 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.34 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.35 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.36 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.37 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.38 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.39 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.40 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.41 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.42 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.43 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.44 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.45 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.46 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.47 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.48 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.49 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.50 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.51 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.52 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.53 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.54 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.55 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.56 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.57 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.58 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.59 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.60 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.61 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.62 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.63 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.64 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.65 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.66 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.67 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.68 = external hidden unnamed_addr constant [6 x i8], align 1
@libfunc_table = external dso_local local_unnamed_addr global [14 x ptr], align 16
@.str.69 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.70 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.71 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.72 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.73 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.74 = external hidden unnamed_addr constant [17 x i8], align 1
@.str.75 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.76 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.77 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.78 = external hidden unnamed_addr constant [25 x i8], align 1
@.str.79 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.80 = external hidden unnamed_addr constant [13 x i8], align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @init_one_libfunc(ptr noundef) local_unnamed_addr #2

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #1

declare void @ggc_free(ptr noundef) #1

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @init_optabs() local_unnamed_addr #2 {
entry:
  %e.i139 = alloca %struct.libfunc_entry, align 8
  %e.i127 = alloca %struct.libfunc_entry, align 8
  %e.i = alloca %struct.libfunc_entry, align 8
  %call = tail call ptr @htab_create_alloc(i64 noundef 10, ptr noundef nonnull @hash_libfunc, ptr noundef nonnull @eq_libfunc, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #4
  store ptr %call, ptr @libfunc_hash, align 8
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds nuw i32, ptr @movcc_gen_code, i64 %indvars.iv
  store i32 2956, ptr %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 87
  br i1 %exitcond, label %for.body, label %for.body3.preheader, !llvm.loop !0

for.body3.preheader:                              ; preds = %for.body
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body3.preheader
  %indvars.iv155 = phi i64 [ 0, %for.body3.preheader ], [ %indvars.iv.next156, %for.body3 ]
  %arrayidx5 = getelementptr inbounds nuw i32, ptr @vcond_gen_code, i64 %indvars.iv155
  store i32 2956, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr inbounds nuw i32, ptr @vcondu_gen_code, i64 %indvars.iv155
  store i32 2956, ptr %arrayidx7, align 4
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  %exitcond158 = icmp ne i64 %indvars.iv.next156, 87
  br i1 %exitcond158, label %for.body3, label %for.body3.i.preheader, !llvm.loop !2

for.body3.i.preheader:                            ; preds = %for.body3
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.body3.i.preheader
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 0, %for.body3.i.preheader ]
  %arrayidx.i = getelementptr inbounds nuw %struct.optab_d, ptr @optab_table, i64 %indvars.iv.i
  %handlers.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 32
  store i32 2956, ptr %handlers.i, align 4
  %arrayidx5.1.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 36
  store i32 2956, ptr %arrayidx5.1.i, align 4
  %arrayidx5.2.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 40
  store i32 2956, ptr %arrayidx5.2.i, align 4
  %arrayidx5.3.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 44
  store i32 2956, ptr %arrayidx5.3.i, align 4
  %arrayidx5.4.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 48
  store i32 2956, ptr %arrayidx5.4.i, align 4
  %arrayidx5.5.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 52
  store i32 2956, ptr %arrayidx5.5.i, align 4
  %arrayidx5.6.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 56
  store i32 2956, ptr %arrayidx5.6.i, align 4
  %arrayidx5.7.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 60
  store i32 2956, ptr %arrayidx5.7.i, align 4
  %arrayidx5.8.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 64
  store i32 2956, ptr %arrayidx5.8.i, align 4
  %arrayidx5.9.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 68
  store i32 2956, ptr %arrayidx5.9.i, align 4
  %arrayidx5.10.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 72
  store i32 2956, ptr %arrayidx5.10.i, align 4
  %arrayidx5.11.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 76
  store i32 2956, ptr %arrayidx5.11.i, align 4
  %arrayidx5.12.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 80
  store i32 2956, ptr %arrayidx5.12.i, align 4
  %arrayidx5.13.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 84
  store i32 2956, ptr %arrayidx5.13.i, align 4
  %arrayidx5.14.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 88
  store i32 2956, ptr %arrayidx5.14.i, align 4
  %arrayidx5.15.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 92
  store i32 2956, ptr %arrayidx5.15.i, align 4
  %arrayidx5.16.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 96
  store i32 2956, ptr %arrayidx5.16.i, align 4
  %arrayidx5.17.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 100
  store i32 2956, ptr %arrayidx5.17.i, align 4
  %arrayidx5.18.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 104
  store i32 2956, ptr %arrayidx5.18.i, align 4
  %arrayidx5.19.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 108
  store i32 2956, ptr %arrayidx5.19.i, align 4
  %arrayidx5.20.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 112
  store i32 2956, ptr %arrayidx5.20.i, align 4
  %arrayidx5.21.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 116
  store i32 2956, ptr %arrayidx5.21.i, align 4
  %arrayidx5.22.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 120
  store i32 2956, ptr %arrayidx5.22.i, align 4
  %arrayidx5.23.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 124
  store i32 2956, ptr %arrayidx5.23.i, align 4
  %arrayidx5.24.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 128
  store i32 2956, ptr %arrayidx5.24.i, align 4
  %arrayidx5.25.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 132
  store i32 2956, ptr %arrayidx5.25.i, align 4
  %arrayidx5.26.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 136
  store i32 2956, ptr %arrayidx5.26.i, align 4
  %arrayidx5.27.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 140
  store i32 2956, ptr %arrayidx5.27.i, align 4
  %arrayidx5.28.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 144
  store i32 2956, ptr %arrayidx5.28.i, align 4
  %arrayidx5.29.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 148
  store i32 2956, ptr %arrayidx5.29.i, align 4
  %arrayidx5.30.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 152
  store i32 2956, ptr %arrayidx5.30.i, align 4
  %arrayidx5.31.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 156
  store i32 2956, ptr %arrayidx5.31.i, align 4
  %arrayidx5.32.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 160
  store i32 2956, ptr %arrayidx5.32.i, align 4
  %arrayidx5.33.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 164
  store i32 2956, ptr %arrayidx5.33.i, align 4
  %arrayidx5.34.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 168
  store i32 2956, ptr %arrayidx5.34.i, align 4
  %arrayidx5.35.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 172
  store i32 2956, ptr %arrayidx5.35.i, align 4
  %arrayidx5.36.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 176
  store i32 2956, ptr %arrayidx5.36.i, align 4
  %arrayidx5.37.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 180
  store i32 2956, ptr %arrayidx5.37.i, align 4
  %arrayidx5.38.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 184
  store i32 2956, ptr %arrayidx5.38.i, align 4
  %arrayidx5.39.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 188
  store i32 2956, ptr %arrayidx5.39.i, align 4
  %arrayidx5.40.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 192
  store i32 2956, ptr %arrayidx5.40.i, align 4
  %arrayidx5.41.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 196
  store i32 2956, ptr %arrayidx5.41.i, align 4
  %arrayidx5.42.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 200
  store i32 2956, ptr %arrayidx5.42.i, align 4
  %arrayidx5.43.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 204
  store i32 2956, ptr %arrayidx5.43.i, align 4
  %arrayidx5.44.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 208
  store i32 2956, ptr %arrayidx5.44.i, align 4
  %arrayidx5.45.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 212
  store i32 2956, ptr %arrayidx5.45.i, align 4
  %arrayidx5.46.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 216
  store i32 2956, ptr %arrayidx5.46.i, align 4
  %arrayidx5.47.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 220
  store i32 2956, ptr %arrayidx5.47.i, align 4
  %arrayidx5.48.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 224
  store i32 2956, ptr %arrayidx5.48.i, align 4
  %arrayidx5.49.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 228
  store i32 2956, ptr %arrayidx5.49.i, align 4
  %arrayidx5.50.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 232
  store i32 2956, ptr %arrayidx5.50.i, align 4
  %arrayidx5.51.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 236
  store i32 2956, ptr %arrayidx5.51.i, align 4
  %arrayidx5.52.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 240
  store i32 2956, ptr %arrayidx5.52.i, align 4
  %arrayidx5.53.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 244
  store i32 2956, ptr %arrayidx5.53.i, align 4
  %arrayidx5.54.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 248
  store i32 2956, ptr %arrayidx5.54.i, align 4
  %arrayidx5.55.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 252
  store i32 2956, ptr %arrayidx5.55.i, align 4
  %arrayidx5.56.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 256
  store i32 2956, ptr %arrayidx5.56.i, align 4
  %arrayidx5.57.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 260
  store i32 2956, ptr %arrayidx5.57.i, align 4
  %arrayidx5.58.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 264
  store i32 2956, ptr %arrayidx5.58.i, align 4
  %arrayidx5.59.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 268
  store i32 2956, ptr %arrayidx5.59.i, align 4
  %arrayidx5.60.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 272
  store i32 2956, ptr %arrayidx5.60.i, align 4
  %arrayidx5.61.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 276
  store i32 2956, ptr %arrayidx5.61.i, align 4
  %arrayidx5.62.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 280
  store i32 2956, ptr %arrayidx5.62.i, align 4
  %arrayidx5.63.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 284
  store i32 2956, ptr %arrayidx5.63.i, align 4
  %arrayidx5.64.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 288
  store i32 2956, ptr %arrayidx5.64.i, align 4
  %arrayidx5.65.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 292
  store i32 2956, ptr %arrayidx5.65.i, align 4
  %arrayidx5.66.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 296
  store i32 2956, ptr %arrayidx5.66.i, align 4
  %arrayidx5.67.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 300
  store i32 2956, ptr %arrayidx5.67.i, align 4
  %arrayidx5.68.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 304
  store i32 2956, ptr %arrayidx5.68.i, align 4
  %arrayidx5.69.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 308
  store i32 2956, ptr %arrayidx5.69.i, align 4
  %arrayidx5.70.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 312
  store i32 2956, ptr %arrayidx5.70.i, align 4
  %arrayidx5.71.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 316
  store i32 2956, ptr %arrayidx5.71.i, align 4
  %arrayidx5.72.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 320
  store i32 2956, ptr %arrayidx5.72.i, align 4
  %arrayidx5.73.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 324
  store i32 2956, ptr %arrayidx5.73.i, align 4
  %arrayidx5.74.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 328
  store i32 2956, ptr %arrayidx5.74.i, align 4
  %arrayidx5.75.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 332
  store i32 2956, ptr %arrayidx5.75.i, align 4
  %arrayidx5.76.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 336
  store i32 2956, ptr %arrayidx5.76.i, align 4
  %arrayidx5.77.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 340
  store i32 2956, ptr %arrayidx5.77.i, align 4
  %arrayidx5.78.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 344
  store i32 2956, ptr %arrayidx5.78.i, align 4
  %arrayidx5.79.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 348
  store i32 2956, ptr %arrayidx5.79.i, align 4
  %arrayidx5.80.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 352
  store i32 2956, ptr %arrayidx5.80.i, align 4
  %arrayidx5.81.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 356
  store i32 2956, ptr %arrayidx5.81.i, align 4
  %arrayidx5.82.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 360
  store i32 2956, ptr %arrayidx5.82.i, align 4
  %arrayidx5.83.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 364
  store i32 2956, ptr %arrayidx5.83.i, align 4
  %arrayidx5.84.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 368
  store i32 2956, ptr %arrayidx5.84.i, align 4
  %arrayidx5.85.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 372
  store i32 2956, ptr %arrayidx5.85.i, align 4
  %arrayidx5.86.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 376
  store i32 2956, ptr %arrayidx5.86.i, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 159
  br i1 %exitcond.not.i, label %for.body11.i.preheader, label %for.body3.i, !llvm.loop !3

for.body11.i.preheader:                           ; preds = %for.body3.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.end33.i, %for.body11.i.preheader
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %for.end33.i ], [ 0, %for.body11.i.preheader ]
  %arrayidx15.i = getelementptr inbounds nuw %struct.convert_optab_d, ptr @convert_optab_table, i64 %indvars.iv63.i
  %handlers22.i = getelementptr inbounds nuw i8, ptr %arrayidx15.i, i64 24
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.body21.i, %for.body11.i
  %indvars.iv59.i = phi i64 [ 0, %for.body11.i ], [ %indvars.iv.next60.i, %for.body21.i ]
  %arrayidx24.i = getelementptr inbounds nuw [87 x %struct.optab_handlers], ptr %handlers22.i, i64 %indvars.iv59.i
  store i32 2956, ptr %arrayidx24.i, align 4
  %arrayidx26.1.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 4
  store i32 2956, ptr %arrayidx26.1.i, align 4
  %arrayidx26.2.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 8
  store i32 2956, ptr %arrayidx26.2.i, align 4
  %arrayidx26.3.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 12
  store i32 2956, ptr %arrayidx26.3.i, align 4
  %arrayidx26.4.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 16
  store i32 2956, ptr %arrayidx26.4.i, align 4
  %arrayidx26.5.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 20
  store i32 2956, ptr %arrayidx26.5.i, align 4
  %arrayidx26.6.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 24
  store i32 2956, ptr %arrayidx26.6.i, align 4
  %arrayidx26.7.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 28
  store i32 2956, ptr %arrayidx26.7.i, align 4
  %arrayidx26.8.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 32
  store i32 2956, ptr %arrayidx26.8.i, align 4
  %arrayidx26.9.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 36
  store i32 2956, ptr %arrayidx26.9.i, align 4
  %arrayidx26.10.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 40
  store i32 2956, ptr %arrayidx26.10.i, align 4
  %arrayidx26.11.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 44
  store i32 2956, ptr %arrayidx26.11.i, align 4
  %arrayidx26.12.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 48
  store i32 2956, ptr %arrayidx26.12.i, align 4
  %arrayidx26.13.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 52
  store i32 2956, ptr %arrayidx26.13.i, align 4
  %arrayidx26.14.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 56
  store i32 2956, ptr %arrayidx26.14.i, align 4
  %arrayidx26.15.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 60
  store i32 2956, ptr %arrayidx26.15.i, align 4
  %arrayidx26.16.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 64
  store i32 2956, ptr %arrayidx26.16.i, align 4
  %arrayidx26.17.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 68
  store i32 2956, ptr %arrayidx26.17.i, align 4
  %arrayidx26.18.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 72
  store i32 2956, ptr %arrayidx26.18.i, align 4
  %arrayidx26.19.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 76
  store i32 2956, ptr %arrayidx26.19.i, align 4
  %arrayidx26.20.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 80
  store i32 2956, ptr %arrayidx26.20.i, align 4
  %arrayidx26.21.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 84
  store i32 2956, ptr %arrayidx26.21.i, align 4
  %arrayidx26.22.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 88
  store i32 2956, ptr %arrayidx26.22.i, align 4
  %arrayidx26.23.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 92
  store i32 2956, ptr %arrayidx26.23.i, align 4
  %arrayidx26.24.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 96
  store i32 2956, ptr %arrayidx26.24.i, align 4
  %arrayidx26.25.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 100
  store i32 2956, ptr %arrayidx26.25.i, align 4
  %arrayidx26.26.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 104
  store i32 2956, ptr %arrayidx26.26.i, align 4
  %arrayidx26.27.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 108
  store i32 2956, ptr %arrayidx26.27.i, align 4
  %arrayidx26.28.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 112
  store i32 2956, ptr %arrayidx26.28.i, align 4
  %arrayidx26.29.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 116
  store i32 2956, ptr %arrayidx26.29.i, align 4
  %arrayidx26.30.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 120
  store i32 2956, ptr %arrayidx26.30.i, align 4
  %arrayidx26.31.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 124
  store i32 2956, ptr %arrayidx26.31.i, align 4
  %arrayidx26.32.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 128
  store i32 2956, ptr %arrayidx26.32.i, align 4
  %arrayidx26.33.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 132
  store i32 2956, ptr %arrayidx26.33.i, align 4
  %arrayidx26.34.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 136
  store i32 2956, ptr %arrayidx26.34.i, align 4
  %arrayidx26.35.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 140
  store i32 2956, ptr %arrayidx26.35.i, align 4
  %arrayidx26.36.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 144
  store i32 2956, ptr %arrayidx26.36.i, align 4
  %arrayidx26.37.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 148
  store i32 2956, ptr %arrayidx26.37.i, align 4
  %arrayidx26.38.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 152
  store i32 2956, ptr %arrayidx26.38.i, align 4
  %arrayidx26.39.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 156
  store i32 2956, ptr %arrayidx26.39.i, align 4
  %arrayidx26.40.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 160
  store i32 2956, ptr %arrayidx26.40.i, align 4
  %arrayidx26.41.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 164
  store i32 2956, ptr %arrayidx26.41.i, align 4
  %arrayidx26.42.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 168
  store i32 2956, ptr %arrayidx26.42.i, align 4
  %arrayidx26.43.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 172
  store i32 2956, ptr %arrayidx26.43.i, align 4
  %arrayidx26.44.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 176
  store i32 2956, ptr %arrayidx26.44.i, align 4
  %arrayidx26.45.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 180
  store i32 2956, ptr %arrayidx26.45.i, align 4
  %arrayidx26.46.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 184
  store i32 2956, ptr %arrayidx26.46.i, align 4
  %arrayidx26.47.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 188
  store i32 2956, ptr %arrayidx26.47.i, align 4
  %arrayidx26.48.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 192
  store i32 2956, ptr %arrayidx26.48.i, align 4
  %arrayidx26.49.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 196
  store i32 2956, ptr %arrayidx26.49.i, align 4
  %arrayidx26.50.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 200
  store i32 2956, ptr %arrayidx26.50.i, align 4
  %arrayidx26.51.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 204
  store i32 2956, ptr %arrayidx26.51.i, align 4
  %arrayidx26.52.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 208
  store i32 2956, ptr %arrayidx26.52.i, align 4
  %arrayidx26.53.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 212
  store i32 2956, ptr %arrayidx26.53.i, align 4
  %arrayidx26.54.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 216
  store i32 2956, ptr %arrayidx26.54.i, align 4
  %arrayidx26.55.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 220
  store i32 2956, ptr %arrayidx26.55.i, align 4
  %arrayidx26.56.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 224
  store i32 2956, ptr %arrayidx26.56.i, align 4
  %arrayidx26.57.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 228
  store i32 2956, ptr %arrayidx26.57.i, align 4
  %arrayidx26.58.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 232
  store i32 2956, ptr %arrayidx26.58.i, align 4
  %arrayidx26.59.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 236
  store i32 2956, ptr %arrayidx26.59.i, align 4
  %arrayidx26.60.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 240
  store i32 2956, ptr %arrayidx26.60.i, align 4
  %arrayidx26.61.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 244
  store i32 2956, ptr %arrayidx26.61.i, align 4
  %arrayidx26.62.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 248
  store i32 2956, ptr %arrayidx26.62.i, align 4
  %arrayidx26.63.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 252
  store i32 2956, ptr %arrayidx26.63.i, align 4
  %arrayidx26.64.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 256
  store i32 2956, ptr %arrayidx26.64.i, align 4
  %arrayidx26.65.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 260
  store i32 2956, ptr %arrayidx26.65.i, align 4
  %arrayidx26.66.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 264
  store i32 2956, ptr %arrayidx26.66.i, align 4
  %arrayidx26.67.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 268
  store i32 2956, ptr %arrayidx26.67.i, align 4
  %arrayidx26.68.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 272
  store i32 2956, ptr %arrayidx26.68.i, align 4
  %arrayidx26.69.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 276
  store i32 2956, ptr %arrayidx26.69.i, align 4
  %arrayidx26.70.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 280
  store i32 2956, ptr %arrayidx26.70.i, align 4
  %arrayidx26.71.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 284
  store i32 2956, ptr %arrayidx26.71.i, align 4
  %arrayidx26.72.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 288
  store i32 2956, ptr %arrayidx26.72.i, align 4
  %arrayidx26.73.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 292
  store i32 2956, ptr %arrayidx26.73.i, align 4
  %arrayidx26.74.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 296
  store i32 2956, ptr %arrayidx26.74.i, align 4
  %arrayidx26.75.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 300
  store i32 2956, ptr %arrayidx26.75.i, align 4
  %arrayidx26.76.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 304
  store i32 2956, ptr %arrayidx26.76.i, align 4
  %arrayidx26.77.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 308
  store i32 2956, ptr %arrayidx26.77.i, align 4
  %arrayidx26.78.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 312
  store i32 2956, ptr %arrayidx26.78.i, align 4
  %arrayidx26.79.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 316
  store i32 2956, ptr %arrayidx26.79.i, align 4
  %arrayidx26.80.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 320
  store i32 2956, ptr %arrayidx26.80.i, align 4
  %arrayidx26.81.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 324
  store i32 2956, ptr %arrayidx26.81.i, align 4
  %arrayidx26.82.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 328
  store i32 2956, ptr %arrayidx26.82.i, align 4
  %arrayidx26.83.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 332
  store i32 2956, ptr %arrayidx26.83.i, align 4
  %arrayidx26.84.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 336
  store i32 2956, ptr %arrayidx26.84.i, align 4
  %arrayidx26.85.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 340
  store i32 2956, ptr %arrayidx26.85.i, align 4
  %arrayidx26.86.i = getelementptr inbounds nuw i8, ptr %arrayidx24.i, i64 344
  store i32 2956, ptr %arrayidx26.86.i, align 4
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next60.i, 87
  br i1 %exitcond62.not.i, label %for.end33.i, label %for.body21.i, !llvm.loop !4

for.end33.i:                                      ; preds = %for.body21.i
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next64.i, 17
  br i1 %exitcond66.not.i, label %init_insn_codes.exit, label %for.body11.i, !llvm.loop !5

init_insn_codes.exit:                             ; preds = %for.end33.i
  store i32 49, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 4608), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 4608), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 392), align 8
  store i32 49, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 4992), align 8
  store i32 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 5376), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 5376), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 400), align 8
  store i32 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 5760), align 8
  store i32 127, ptr @optab_table, align 8
  store ptr @optab_table, ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 1016), align 8
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 384), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 384), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 1024), align 8
  store i32 129, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 768), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 768), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 1032), align 8
  store i32 135, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1152), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1152), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 1080), align 8
  store i32 52, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 6144), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 6144), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 416), align 8
  store i32 53, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1536), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1536), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 424), align 8
  store i32 54, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1920), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1920), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 432), align 8
  store i32 52, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 6528), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 6912), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 6912), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 7296), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 7296), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 7680), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 7680), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 8064), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 8064), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 8448), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 8448), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 8832), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 8832), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 9216), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 9216), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 9600), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 9600), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 9984), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 9984), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 10368), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 10368), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 10752), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 10752), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 11136), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 11136), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 11520), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 11520), ptr @code_to_optab, align 8
  store i32 55, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 11904), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 11904), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 440), align 8
  store i32 56, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 2304), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 2304), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 448), align 8
  store i32 57, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 2688), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 2688), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 456), align 8
  store i32 55, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 12288), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 12672), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 12672), ptr @code_to_optab, align 8
  store i32 59, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13056), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13056), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 472), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13440), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13440), ptr @code_to_optab, align 8
  store i32 58, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13824), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13824), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 464), align 8
  store i32 60, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 14208), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 14208), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 480), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 14592), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 14592), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 14976), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 14976), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 15360), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 15360), ptr @code_to_optab, align 8
  store i32 61, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 15744), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 15744), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 488), align 8
  store i32 62, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16128), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16128), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 496), align 8
  store i32 63, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16512), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16512), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 504), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16896), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16896), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 520), align 8
  store i32 133, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3840), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3840), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 1064), align 8
  store i32 134, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 4224), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 4224), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 1072), align 8
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 17664), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 17664), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 536), align 8
  store i32 68, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 17280), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 17280), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 544), align 8
  store i32 66, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 18048), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 18048), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 528), align 8
  store i32 69, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 18432), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 18432), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 552), align 8
  store i32 70, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 20736), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 20736), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 560), align 8
  store i32 71, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21120), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21120), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 568), align 8
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21504), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21504), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 576), align 8
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21888), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21888), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 584), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 22272), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 22272), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 22656), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 22656), ptr @code_to_optab, align 8
  store i32 23, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 23040), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 23040), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 184), align 8
  store i32 40, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 23424), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 23424), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 320), align 8
  store i32 48, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 44160), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 44160), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 384), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 44544), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 44544), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 44928), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 44928), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 45312), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 45312), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 24192), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 24192), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 40320), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 40320), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 40704), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 40704), ptr @code_to_optab, align 8
  store i32 81, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41088), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41088), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 648), align 8
  store i32 80, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41472), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41472), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 640), align 8
  store i32 83, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41856), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41856), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 664), align 8
  store i32 82, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 42240), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 42240), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 656), align 8
  store i32 85, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 42624), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 42624), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 680), align 8
  store i32 84, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 43008), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 43008), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 672), align 8
  store i32 90, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 43392), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 43392), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 720), align 8
  store i32 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 24576), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 24576), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 408), align 8
  store i32 130, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3072), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3072), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 1040), align 8
  store i32 131, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3456), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3456), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 1048), align 8
  store i32 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 24960), align 8
  store i32 111, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 25344), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 25344), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 888), align 8
  store i32 111, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 25728), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 46080), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 46080), ptr @code_to_optab, align 8
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 26496), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 26496), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 512), align 8
  store i32 113, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 26112), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 26112), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 904), align 8
  store i32 114, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 26880), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 26880), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 912), align 8
  store i32 115, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 27264), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 27264), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 920), align 8
  store i32 116, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 27648), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 27648), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 928), align 8
  store i32 117, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 28032), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 28032), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 936), align 8
  store i32 118, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 28416), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 28416), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 944), align 8
  store i32 112, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 28800), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 28800), ptr getelementptr inbounds nuw (i8, ptr @code_to_optab, i64 896), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 36096), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 36096), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 36480), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 36480), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 37248), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 37248), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 36864), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 36864), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 37632), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 37632), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 38016), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 38016), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 29184), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 29184), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 29568), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 29568), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 29952), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 29952), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 30336), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 30336), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 30720), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 30720), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 31104), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 31104), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 31488), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 31488), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 31872), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 31872), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 32256), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 32256), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 32640), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 32640), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 33024), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 33024), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 33408), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 33408), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 33792), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 33792), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 34176), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 34176), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 34560), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 34560), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 34944), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 34944), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 35328), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 35328), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 35712), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 35712), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 38400), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 38400), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 38784), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 38784), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 39168), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 39168), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 39552), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 39552), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 39936), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 39936), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 43776), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 43776), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 45696), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 45696), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 46464), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 46464), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 46848), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 46848), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 47232), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 47232), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 47616), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 47616), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 48000), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 48000), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 48384), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 48384), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 48768), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 48768), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 49152), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 49152), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 49536), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 49536), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 49920), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 49920), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 50688), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 50688), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 51072), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 51072), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 51456), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 51456), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 51840), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 51840), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 52224), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 52224), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 50304), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 50304), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 52608), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 52608), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 52992), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 52992), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 53376), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 53376), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 53760), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 53760), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 23808), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 23808), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 54144), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 54144), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 54528), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 54528), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 54912), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 54912), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 55296), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 55296), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 55680), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 55680), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 56064), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 56064), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 56448), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 56448), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 56832), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 56832), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 57216), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 57216), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 57600), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 57600), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 57984), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 57984), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 58368), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 58368), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 58752), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 58752), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 59136), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 59136), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 59520), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 59520), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 60288), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 60288), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 59904), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 59904), ptr @code_to_optab, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 60672), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 60672), ptr @code_to_optab, align 8
  store i32 98, ptr @convert_optab_table, align 8
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 30304), align 8
  store i32 100, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 60608), align 8
  store i32 104, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 90912), align 8
  store i32 106, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 121216), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 151520), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 181824), align 8
  store i32 103, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 212128), align 8
  store i32 105, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 242432), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 272736), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 303040), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 333344), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 363648), align 8
  store i32 107, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 393952), align 8
  store i32 108, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 424256), align 8
  store i32 109, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 454560), align 8
  store i32 110, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 484864), align 8
  br label %for.body13

for.body13:                                       ; preds = %for.body13, %init_insn_codes.exit
  %indvars.iv159 = phi i64 [ 0, %init_insn_codes.exit ], [ %indvars.iv.next160, %for.body13 ]
  %arrayidx15 = getelementptr inbounds nuw i32, ptr @movmem_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx15, align 4
  %arrayidx17 = getelementptr inbounds nuw i32, ptr @cmpstr_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr inbounds nuw i32, ptr @cmpstrn_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx19, align 4
  %arrayidx21 = getelementptr inbounds nuw i32, ptr @cmpmem_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx21, align 4
  %arrayidx23 = getelementptr inbounds nuw i32, ptr @setmem_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx23, align 4
  %arrayidx25 = getelementptr inbounds nuw i32, ptr @sync_add_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx25, align 4
  %arrayidx27 = getelementptr inbounds nuw i32, ptr @sync_sub_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx27, align 4
  %arrayidx29 = getelementptr inbounds nuw i32, ptr @sync_ior_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx29, align 4
  %arrayidx31 = getelementptr inbounds nuw i32, ptr @sync_and_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx31, align 4
  %arrayidx33 = getelementptr inbounds nuw i32, ptr @sync_xor_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx33, align 4
  %arrayidx35 = getelementptr inbounds nuw i32, ptr @sync_nand_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx35, align 4
  %arrayidx37 = getelementptr inbounds nuw i32, ptr @sync_old_add_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx37, align 4
  %arrayidx39 = getelementptr inbounds nuw i32, ptr @sync_old_sub_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx39, align 4
  %arrayidx41 = getelementptr inbounds nuw i32, ptr @sync_old_ior_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx41, align 4
  %arrayidx43 = getelementptr inbounds nuw i32, ptr @sync_old_and_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx43, align 4
  %arrayidx45 = getelementptr inbounds nuw i32, ptr @sync_old_xor_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx45, align 4
  %arrayidx47 = getelementptr inbounds nuw i32, ptr @sync_old_nand_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx47, align 4
  %arrayidx49 = getelementptr inbounds nuw i32, ptr @sync_new_add_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx49, align 4
  %arrayidx51 = getelementptr inbounds nuw i32, ptr @sync_new_sub_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx51, align 4
  %arrayidx53 = getelementptr inbounds nuw i32, ptr @sync_new_ior_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx53, align 4
  %arrayidx55 = getelementptr inbounds nuw i32, ptr @sync_new_and_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx55, align 4
  %arrayidx57 = getelementptr inbounds nuw i32, ptr @sync_new_xor_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx57, align 4
  %arrayidx59 = getelementptr inbounds nuw i32, ptr @sync_new_nand_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx59, align 4
  %arrayidx61 = getelementptr inbounds nuw i32, ptr @sync_compare_and_swap, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx61, align 4
  %arrayidx63 = getelementptr inbounds nuw i32, ptr @sync_lock_test_and_set, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx63, align 4
  %arrayidx65 = getelementptr inbounds nuw i32, ptr @sync_lock_release, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx65, align 4
  %arrayidx67 = getelementptr inbounds nuw i32, ptr @reload_out_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx67, align 4
  %arrayidx69 = getelementptr inbounds nuw i32, ptr @reload_in_optab, i64 %indvars.iv159
  store i32 2956, ptr %arrayidx69, align 4
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  %exitcond162 = icmp ne i64 %indvars.iv.next160, 87
  br i1 %exitcond162, label %for.body13, label %for.end72, !llvm.loop !6

for.end72:                                        ; preds = %for.body13
  tail call void @init_all_optabs() #4
  store ptr @.str.2, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 4616), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 4624), align 16
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 4632), align 8
  store ptr @.str.2, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 5000), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 5008), align 16
  store ptr @gen_intv_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 5016), align 8
  store ptr @.str.3, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 8), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16), align 16
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 24), align 8
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 392), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 400), align 16
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 408), align 8
  store ptr @.str.5, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 5384), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 5392), align 16
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 5400), align 8
  store ptr @.str.5, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 5768), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 5776), align 16
  store ptr @gen_intv_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 5784), align 8
  store ptr @.str.6, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 776), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 784), align 16
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 792), align 8
  store ptr @.str.7, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1160), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1168), align 16
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1176), align 8
  store ptr @.str.8, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 6152), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 6160), align 16
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 6168), align 8
  store ptr @.str.8, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 6536), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 6544), align 16
  store ptr @gen_intv_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 6552), align 8
  store ptr @.str.9, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1544), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1552), align 16
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1560), align 8
  store ptr @.str.10, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1928), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1936), align 16
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 1944), align 8
  store ptr @.str.11, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 11912), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 11920), align 16
  store ptr @gen_int_fp_signed_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 11928), align 8
  store ptr @.str.12, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 12296), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 12304), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 12312), align 8
  store ptr @.str.13, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 2312), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 2320), align 16
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 2328), align 8
  store ptr @.str.14, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13064), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13072), align 16
  store ptr @gen_int_unsigned_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13080), align 8
  store ptr @.str.15, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 2696), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 2704), align 16
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 2712), align 8
  store ptr @.str.16, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 12680), align 8
  store i8 52, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 12688), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 12696), align 8
  store ptr @.str.17, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13448), align 8
  store i8 52, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13456), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13464), align 8
  store ptr @.str.18, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13832), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13840), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 13848), align 8
  store ptr @.str.19, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 14216), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 14224), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 14232), align 8
  store ptr @.str.20, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 15368), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 15376), align 16
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 15384), align 8
  store ptr @.str.21, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 15752), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 15760), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 15768), align 8
  store ptr @.str.22, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16136), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16144), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16152), align 8
  store ptr @.str.23, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16520), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16528), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16536), align 8
  store ptr @.str.24, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16904), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16912), align 16
  store ptr @gen_int_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 16920), align 8
  store ptr @.str.25, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3848), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3856), align 16
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3864), align 8
  store ptr @.str.26, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 4232), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 4240), align 16
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 4248), align 8
  store ptr @.str.27, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 17672), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 17680), align 16
  store ptr @gen_int_signed_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 17688), align 8
  store ptr @.str.28, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 17288), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 17296), align 16
  store ptr @gen_int_unsigned_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 17304), align 8
  store ptr @.str.29, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 20744), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 20752), align 16
  store ptr @gen_int_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 20760), align 8
  store ptr @.str.30, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21128), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21136), align 16
  store ptr @gen_int_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21144), align 8
  store ptr @.str.31, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21512), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21520), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21528), align 8
  store ptr @.str.32, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21896), align 8
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21904), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 21912), align 8
  store ptr @.str.33, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 24584), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 24592), align 16
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 24600), align 8
  store ptr @.str.34, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3080), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3088), align 16
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3096), align 8
  store ptr @.str.35, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3464), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3472), align 16
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 3480), align 8
  store ptr @.str.33, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 24968), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 24976), align 16
  store ptr @gen_intv_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 24984), align 8
  store ptr @.str.36, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 26504), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 26512), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 26520), align 8
  store ptr @.str.37, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 26888), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 26896), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 26904), align 8
  store ptr @.str.38, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 27272), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 27280), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 27288), align 8
  store ptr @.str.39, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 27656), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 27664), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 27672), align 8
  store ptr @.str.40, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 28040), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 28048), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 28056), align 8
  store ptr @.str.41, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 28424), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 28432), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 28440), align 8
  store ptr @.str.42, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 40328), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 40336), align 16
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 40344), align 8
  store ptr @.str.43, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 40712), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 40720), align 16
  store ptr @gen_int_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 40728), align 8
  store ptr @.str.44, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41096), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41104), align 16
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41112), align 8
  store ptr @.str.45, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41480), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41488), align 16
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41496), align 8
  store ptr @.str.46, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41864), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41872), align 16
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 41880), align 8
  store ptr @.str.47, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 42248), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 42256), align 16
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 42264), align 8
  store ptr @.str.48, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 42632), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 42640), align 16
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 42648), align 8
  store ptr @.str.49, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 43016), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 43024), align 16
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 43032), align 8
  store ptr @.str.50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 43400), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 43408), align 16
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 43416), align 8
  store ptr @.str.51, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 60680), align 8
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 60688), align 16
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds nuw (i8, ptr @optab_table, i64 60696), align 8
  store ptr @.str.52, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 212136), align 8
  store ptr @gen_int_to_fp_conv_libfunc, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 212144), align 16
  store ptr @gen_ufloat_conv_libfunc, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 242448), align 16
  store ptr @.str.53, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 90920), align 8
  store ptr @gen_fp_to_int_conv_libfunc, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 90928), align 16
  store ptr @.str.54, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 121224), align 8
  store ptr @gen_fp_to_int_conv_libfunc, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 121232), align 16
  store ptr @.str.55, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 272744), align 8
  store ptr @gen_int_to_fp_nondecimal_conv_libfunc, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 272752), align 16
  store ptr @.str.56, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 303048), align 8
  store ptr @gen_int_to_fp_nondecimal_conv_libfunc, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 303056), align 16
  store ptr @.str.57, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 333352), align 8
  store ptr @gen_int_to_fp_nondecimal_conv_libfunc, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 333360), align 16
  store ptr @.str.58, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 363656), align 8
  store ptr @gen_int_to_fp_nondecimal_conv_libfunc, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 363664), align 16
  store ptr @.str.59, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 8), align 8
  store ptr @gen_extend_conv_libfunc, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 16), align 16
  store ptr @.str.60, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 60616), align 8
  store ptr @gen_trunc_conv_libfunc, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 60624), align 16
  store ptr @.str.61, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 393960), align 8
  store ptr @gen_fract_conv_libfunc, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 393968), align 16
  store ptr @.str.62, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 454568), align 8
  store ptr @gen_satfract_conv_libfunc, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 454576), align 16
  store ptr @.str.63, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 424264), align 8
  store ptr @gen_fractuns_conv_libfunc, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 424272), align 16
  store ptr @.str.64, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 484872), align 8
  store ptr @gen_satfractuns_conv_libfunc, ptr getelementptr inbounds nuw (i8, ptr @convert_optab_table, i64 484880), align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %e.i) #4
  store i64 68, ptr %e.i, align 8
  %mode1.i = getelementptr inbounds nuw i8, ptr %e.i, i64 8
  store i32 16, ptr %mode1.i, align 8
  %mode2.i = getelementptr inbounds nuw i8, ptr %e.i, i64 12
  store i32 0, ptr %mode2.i, align 4
  %call.i = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.65)
  %0 = load ptr, ptr @libfunc_hash, align 8
  %call1.i = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %e.i, i32 noundef 1) #4
  %1 = load ptr, ptr %call1.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.then2.i, label %set_optab_libfunc.exit

if.then2.i:                                       ; preds = %for.end72
  %call3.i = call ptr @ggc_alloc_stat(i64 noundef 24) #4
  store ptr %call3.i, ptr %call1.i, align 8
  br label %set_optab_libfunc.exit

set_optab_libfunc.exit:                           ; preds = %if.then2.i, %for.end72
  %2 = load ptr, ptr %call1.i, align 8
  store i64 68, ptr %2, align 8
  %3 = load ptr, ptr %call1.i, align 8
  %mode19.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 16, ptr %mode19.i, align 8
  %4 = load ptr, ptr %call1.i, align 8
  %mode210.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %mode210.i, align 4
  %5 = load ptr, ptr %call1.i, align 8
  %libfunc.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %call.i, ptr %libfunc.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %e.i) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %e.i127) #4
  store i64 68, ptr %e.i127, align 8
  %mode1.i128 = getelementptr inbounds nuw i8, ptr %e.i127, i64 8
  store i32 17, ptr %mode1.i128, align 8
  %mode2.i129 = getelementptr inbounds nuw i8, ptr %e.i127, i64 12
  store i32 0, ptr %mode2.i129, align 4
  %call.i130 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.66)
  %6 = load ptr, ptr @libfunc_hash, align 8
  %call1.i131 = call ptr @htab_find_slot(ptr noundef %6, ptr noundef nonnull %e.i127, i32 noundef 1) #4
  %7 = load ptr, ptr %call1.i131, align 8
  %cmp.i132 = icmp eq ptr %7, null
  br i1 %cmp.i132, label %if.then2.i136, label %set_optab_libfunc.exit138

if.then2.i136:                                    ; preds = %set_optab_libfunc.exit
  %call3.i137 = call ptr @ggc_alloc_stat(i64 noundef 24) #4
  store ptr %call3.i137, ptr %call1.i131, align 8
  br label %set_optab_libfunc.exit138

set_optab_libfunc.exit138:                        ; preds = %if.then2.i136, %set_optab_libfunc.exit
  %8 = load ptr, ptr %call1.i131, align 8
  store i64 68, ptr %8, align 8
  %9 = load ptr, ptr %call1.i131, align 8
  %mode19.i133 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 17, ptr %mode19.i133, align 8
  %10 = load ptr, ptr %call1.i131, align 8
  %mode210.i134 = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 0, ptr %mode210.i134, align 4
  %11 = load ptr, ptr %call1.i131, align 8
  %libfunc.i135 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %call.i130, ptr %libfunc.i135, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %e.i127) #4
  %12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_trees, i64 232), align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %set_optab_libfunc.exit138
  %bf.load = load i64, ptr %12, align 8
  %bf.cast126 = and i64 %bf.load, 65535
  %cmp73 = icmp eq i64 %bf.cast126, 14
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call74 = call i32 @vector_type_mode(ptr noundef nonnull %12) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %mode = getelementptr inbounds nuw i8, ptr %12, i64 60
  %bf.load75 = load i32, ptr %mode, align 4
  %bf.lshr = lshr i32 %bf.load75, 16
  %bf.clear76 = and i32 %bf.lshr, 255
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call74, %cond.true ], [ %bf.clear76, %cond.false ]
  call void @llvm.lifetime.start.p0(ptr nonnull %e.i139) #4
  store i64 66, ptr %e.i139, align 8
  %mode1.i140 = getelementptr inbounds nuw i8, ptr %e.i139, i64 8
  store i32 %cond, ptr %mode1.i140, align 8
  %mode2.i141 = getelementptr inbounds nuw i8, ptr %e.i139, i64 12
  store i32 0, ptr %mode2.i141, align 4
  %call.i142 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.67)
  %13 = load ptr, ptr @libfunc_hash, align 8
  %call1.i143 = call ptr @htab_find_slot(ptr noundef %13, ptr noundef nonnull %e.i139, i32 noundef 1) #4
  %14 = load ptr, ptr %call1.i143, align 8
  %cmp.i144 = icmp eq ptr %14, null
  br i1 %cmp.i144, label %if.then2.i148, label %set_optab_libfunc.exit150

if.then2.i148:                                    ; preds = %cond.end
  %call3.i149 = call ptr @ggc_alloc_stat(i64 noundef 24) #4
  store ptr %call3.i149, ptr %call1.i143, align 8
  br label %set_optab_libfunc.exit150

set_optab_libfunc.exit150:                        ; preds = %if.then2.i148, %cond.end
  %15 = load ptr, ptr %call1.i143, align 8
  store i64 66, ptr %15, align 8
  %16 = load ptr, ptr %call1.i143, align 8
  %mode19.i145 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %cond, ptr %mode19.i145, align 8
  %17 = load ptr, ptr %call1.i143, align 8
  %mode210.i146 = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 0, ptr %mode210.i146, align 4
  %18 = load ptr, ptr %call1.i143, align 8
  %libfunc.i147 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %call.i142, ptr %libfunc.i147, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %e.i139) #4
  br label %if.end

if.end:                                           ; preds = %set_optab_libfunc.exit150, %set_optab_libfunc.exit138
  %call77 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.68)
  store ptr %call77, ptr @libfunc_table, align 16
  %call78 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.69)
  store ptr %call78, ptr getelementptr inbounds nuw (i8, ptr @libfunc_table, i64 8), align 8
  %call79 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.70)
  store ptr %call79, ptr getelementptr inbounds nuw (i8, ptr @libfunc_table, i64 16), align 16
  %call80 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.71)
  store ptr %call80, ptr getelementptr inbounds nuw (i8, ptr @libfunc_table, i64 24), align 8
  %call81 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.72)
  store ptr %call81, ptr getelementptr inbounds nuw (i8, ptr @libfunc_table, i64 32), align 16
  %call82 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.73)
  store ptr %call82, ptr getelementptr inbounds nuw (i8, ptr @libfunc_table, i64 40), align 8
  %call83 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.74)
  store ptr %call83, ptr getelementptr inbounds nuw (i8, ptr @libfunc_table, i64 48), align 16
  %call84 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.75)
  store ptr %call84, ptr getelementptr inbounds nuw (i8, ptr @libfunc_table, i64 56), align 8
  %call85 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.76)
  store ptr %call85, ptr getelementptr inbounds nuw (i8, ptr @libfunc_table, i64 64), align 16
  %call86 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.77)
  store ptr %call86, ptr getelementptr inbounds nuw (i8, ptr @libfunc_table, i64 72), align 8
  %call87 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.78)
  store ptr %call87, ptr getelementptr inbounds nuw (i8, ptr @libfunc_table, i64 80), align 16
  %call88 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.79)
  store ptr %call88, ptr getelementptr inbounds nuw (i8, ptr @libfunc_table, i64 88), align 8
  %call89 = call ptr @init_one_libfunc(ptr noundef nonnull @.str.80)
  store ptr %call89, ptr getelementptr inbounds nuw (i8, ptr @libfunc_table, i64 104), align 8
  %19 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 960), align 8
  call void %19() #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
declare hidden i32 @hash_libfunc(ptr noundef readonly captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
declare hidden range(i32 0, 2) i32 @eq_libfunc(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) #3

declare void @init_all_optabs() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare hidden void @gen_int_fp_fixed_libfunc(ptr noundef, ptr noundef readonly captures(none), i8 noundef signext, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_intv_fp_libfunc(ptr noundef, ptr noundef readonly captures(none), i8 noundef signext, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_signed_fixed_libfunc(ptr noundef, ptr noundef readonly captures(none), i8 noundef signext, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_unsigned_fixed_libfunc(ptr noundef, ptr noundef readonly captures(none), i8 noundef signext, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_int_fp_signed_fixed_libfunc(ptr noundef, ptr noundef readonly captures(none), i8 noundef signext, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_int_libfunc(ptr noundef, ptr noundef readonly captures(none), i8 noundef signext, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_int_unsigned_fixed_libfunc(ptr noundef, ptr noundef readonly captures(none), i8 noundef signext, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_fp_libfunc(ptr noundef, ptr noundef readonly captures(none), i8 noundef signext, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_int_fixed_libfunc(ptr noundef, ptr noundef readonly captures(none), i8 noundef signext, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_int_signed_fixed_libfunc(ptr noundef, ptr noundef readonly captures(none), i8 noundef signext, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_int_fp_libfunc(ptr noundef, ptr noundef readonly captures(none), i8 noundef signext, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_int_to_fp_conv_libfunc(ptr noundef, ptr noundef readonly captures(none), i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_ufloat_conv_libfunc(ptr noundef, ptr noundef readnone captures(none), i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_fp_to_int_conv_libfunc(ptr noundef, ptr noundef readonly captures(none), i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_int_to_fp_nondecimal_conv_libfunc(ptr noundef, ptr noundef readonly captures(none), i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_extend_conv_libfunc(ptr noundef, ptr noundef readonly captures(none), i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_trunc_conv_libfunc(ptr noundef, ptr noundef readonly captures(none), i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_fract_conv_libfunc(ptr noundef, ptr noundef readonly captures(none), i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_satfract_conv_libfunc(ptr noundef, ptr noundef readonly captures(none), i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_fractuns_conv_libfunc(ptr noundef, ptr noundef readonly captures(none), i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @gen_satfractuns_conv_libfunc(ptr noundef, ptr noundef readonly captures(none), i32 noundef, i32 noundef) #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
!3 = distinct !{!3, !1}
!4 = distinct !{!4, !1}
!5 = distinct !{!5, !1}
!6 = distinct !{!6, !1}
