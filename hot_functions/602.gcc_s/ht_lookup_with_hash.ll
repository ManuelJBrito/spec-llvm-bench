; ModuleID = '/tmp/tmp.sUdLetb09Y/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/cpp_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ht_lookup_with_hash(ptr noundef %table, ptr noundef readonly captures(none) %str, i64 noundef %len, i32 noundef %hash, i32 noundef %insert) local_unnamed_addr #2 {
entry:
  %nslots = getelementptr inbounds nuw i8, ptr %table, i64 112
  %0 = load i32, ptr %nslots, align 8
  %sub = add i32 %0, -1
  %and262 = and i32 %sub, %hash
  %searches = getelementptr inbounds nuw i8, ptr %table, i64 128
  %1 = load i32, ptr %searches, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %searches, align 8
  %entries = getelementptr inbounds nuw i8, ptr %table, i64 88
  %2 = load ptr, ptr %entries, align 8
  %idxprom = zext i32 %and262 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %2, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  %magicptr = ptrtoint ptr %3 to i64
  switch i64 %magicptr, label %if.else [
    i64 0, label %if.end56
    i64 -1, label %if.end17
  ]

if.else:                                          ; preds = %entry
  %hash_value = getelementptr inbounds nuw i8, ptr %3, i64 12
  %4 = load i32, ptr %hash_value, align 4
  %cmp8 = icmp eq i32 %4, %hash
  br i1 %cmp8, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.else
  %len10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = load i32, ptr %len10, align 8
  %conv11 = trunc i64 %len to i32
  %cmp12 = icmp eq i32 %5, %conv11
  br i1 %cmp12, label %land.lhs.true14, label %if.end17

land.lhs.true14:                                  ; preds = %land.lhs.true
  %6 = load ptr, ptr %3, align 8
  %bcmp = tail call i32 @bcmp(ptr %6, ptr %str, i64 %len)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %land.lhs.true14, %land.lhs.true, %if.else, %entry
  %deleted_index.0 = phi i32 [ %0, %land.lhs.true14 ], [ %0, %land.lhs.true ], [ %0, %if.else ], [ %and262, %entry ]
  %mul = mul i32 %hash, 17
  %and19263 = and i32 %sub, %mul
  %7 = or i32 %and19263, 1
  %collisions = getelementptr inbounds nuw i8, ptr %table, i64 132
  %collisions.promoted = load i32, ptr %collisions, align 4
  %conv46 = trunc i64 %len to i32
  br label %for.cond

for.cond:                                         ; preds = %if.end55, %if.end17
  %8 = phi i32 [ %collisions.promoted, %if.end17 ], [ %inc21, %if.end55 ]
  %deleted_index.1 = phi i32 [ %deleted_index.0, %if.end17 ], [ %deleted_index.2, %if.end55 ]
  %index.0 = phi i32 [ %and262, %if.end17 ], [ %and23264, %if.end55 ]
  %inc21 = add i32 %8, 1
  store i32 %inc21, ptr %collisions, align 4
  %add = add i32 %index.0, %7
  %and23264 = and i32 %add, %sub
  %idxprom26 = zext i32 %and23264 to i64
  %arrayidx27 = getelementptr inbounds nuw ptr, ptr %2, i64 %idxprom26
  %9 = load ptr, ptr %arrayidx27, align 8
  %magicptr266 = ptrtoint ptr %9 to i64
  switch i64 %magicptr266, label %if.else40 [
    i64 0, label %if.end56.loopexit
    i64 -1, label %if.then34
  ]

if.then34:                                        ; preds = %for.cond
  %cmp36.not = icmp eq i32 %deleted_index.1, %0
  %spec.select = select i1 %cmp36.not, i32 %deleted_index.1, i32 %and23264
  br label %if.end55

if.else40:                                        ; preds = %for.cond
  %hash_value41 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %10 = load i32, ptr %hash_value41, align 4
  %cmp42 = icmp eq i32 %10, %hash
  br i1 %cmp42, label %land.lhs.true44, label %if.end55

land.lhs.true44:                                  ; preds = %if.else40
  %len45 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %11 = load i32, ptr %len45, align 8
  %cmp47 = icmp eq i32 %11, %conv46
  br i1 %cmp47, label %land.lhs.true49, label %if.end55

land.lhs.true49:                                  ; preds = %land.lhs.true44
  %12 = load ptr, ptr %9, align 8
  %bcmp265 = tail call i32 @bcmp(ptr %12, ptr %str, i64 %len)
  %tobool52.not = icmp eq i32 %bcmp265, 0
  br i1 %tobool52.not, label %cleanup.loopexit, label %if.end55

if.end55:                                         ; preds = %land.lhs.true49, %land.lhs.true44, %if.else40, %if.then34
  %deleted_index.2 = phi i32 [ %deleted_index.1, %land.lhs.true49 ], [ %deleted_index.1, %land.lhs.true44 ], [ %deleted_index.1, %if.else40 ], [ %spec.select, %if.then34 ]
  br label %for.cond

if.end56.loopexit:                                ; preds = %for.cond
  %deleted_index.1.lcssa = phi i32 [ %deleted_index.1, %for.cond ]
  %and23264.lcssa = phi i32 [ %and23264, %for.cond ]
  br label %if.end56

if.end56:                                         ; preds = %if.end56.loopexit, %entry
  %deleted_index.3 = phi i32 [ %0, %entry ], [ %deleted_index.1.lcssa, %if.end56.loopexit ]
  %index.1 = phi i32 [ %and262, %entry ], [ %and23264.lcssa, %if.end56.loopexit ]
  %cmp57 = icmp eq i32 %insert, 0
  br i1 %cmp57, label %cleanup, label %if.end60

if.end60:                                         ; preds = %if.end56
  %cmp62.not = icmp eq i32 %deleted_index.3, %0
  %spec.select267 = select i1 %cmp62.not, i32 %index.1, i32 %deleted_index.3
  %alloc_node = getelementptr inbounds nuw i8, ptr %table, i64 96
  %13 = load ptr, ptr %alloc_node, align 8
  %call66 = tail call ptr %13(ptr noundef nonnull %table) #5
  %14 = load ptr, ptr %entries, align 8
  %idxprom68 = zext i32 %spec.select267 to i64
  %arrayidx69 = getelementptr inbounds nuw ptr, ptr %14, i64 %idxprom68
  store ptr %call66, ptr %arrayidx69, align 8
  %conv70 = trunc i64 %len to i32
  %len71 = getelementptr inbounds nuw i8, ptr %call66, i64 8
  store i32 %conv70, ptr %len71, align 8
  %hash_value72 = getelementptr inbounds nuw i8, ptr %call66, i64 12
  store i32 %hash, ptr %hash_value72, align 4
  %alloc_subobject = getelementptr inbounds nuw i8, ptr %table, i64 104
  %15 = load ptr, ptr %alloc_subobject, align 8
  %tobool73.not = icmp eq ptr %15, null
  br i1 %tobool73.not, label %if.else80, label %if.then74

if.then74:                                        ; preds = %if.end60
  %add76 = add i64 %len, 1
  %call77 = tail call ptr %15(i64 noundef %add76) #5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call77, ptr align 1 %str, i64 %len, i1 false)
  %arrayidx78 = getelementptr inbounds nuw i8, ptr %call77, i64 %len
  store i8 0, ptr %arrayidx78, align 1
  br label %if.end160

if.else80:                                        ; preds = %if.end60
  %temp = getelementptr inbounds nuw i8, ptr %table, i64 40
  store i64 %len, ptr %temp, align 8
  %next_free = getelementptr inbounds nuw i8, ptr %table, i64 24
  %16 = load ptr, ptr %next_free, align 8
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %len
  %add.ptr84 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 1
  %chunk_limit = getelementptr inbounds nuw i8, ptr %table, i64 32
  %17 = load ptr, ptr %chunk_limit, align 8
  %cmp86 = icmp ugt ptr %add.ptr84, %17
  br i1 %cmp86, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.else80
  %conv92 = add i32 %conv70, 1
  tail call void @_obstack_newchunk(ptr noundef nonnull %table, i32 noundef %conv92) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.else80
  %18 = load ptr, ptr %next_free, align 8
  %19 = load i64, ptr %temp, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %str, i64 %19, i1 false)
  %20 = load i64, ptr %temp, align 8
  %21 = load ptr, ptr %next_free, align 8
  %add.ptr101 = getelementptr inbounds i8, ptr %21, i64 %20
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %add.ptr101, i64 1
  store ptr %incdec.ptr, ptr %next_free, align 8
  store i8 0, ptr %add.ptr101, align 1
  %22 = load ptr, ptr %next_free, align 8
  %object_base = getelementptr inbounds nuw i8, ptr %table, i64 16
  %23 = load ptr, ptr %object_base, align 8
  %cmp107 = icmp eq ptr %22, %23
  br i1 %cmp107, label %cond.true109, label %cond.end112

cond.true109:                                     ; preds = %cond.end
  %maybe_empty_object = getelementptr inbounds nuw i8, ptr %table, i64 80
  %bf.load = load i8, ptr %maybe_empty_object, align 8
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, ptr %maybe_empty_object, align 8
  br label %cond.end112

cond.end112:                                      ; preds = %cond.true109, %cond.end
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i64
  store i64 %sub.ptr.lhs.cast, ptr %temp, align 8
  %sub.ptr.lhs.cast120 = ptrtoint ptr %22 to i64
  %alignment_mask = getelementptr inbounds nuw i8, ptr %table, i64 48
  %24 = load i32, ptr %alignment_mask, align 8
  %conv123 = sext i32 %24 to i64
  %add124 = add nsw i64 %conv123, %sub.ptr.lhs.cast120
  %not = xor i32 %24, -1
  %conv127 = sext i32 %not to i64
  %and128 = and i64 %add124, %conv127
  %25 = inttoptr i64 %and128 to ptr
  store ptr %25, ptr %next_free, align 8
  %chunk = getelementptr inbounds nuw i8, ptr %table, i64 8
  %26 = load ptr, ptr %chunk, align 8
  %sub.ptr.rhs.cast = ptrtoint ptr %26 to i64
  %sub.ptr.sub135 = sub i64 %and128, %sub.ptr.rhs.cast
  %27 = load ptr, ptr %chunk_limit, align 8
  %sub.ptr.lhs.cast140 = ptrtoint ptr %27 to i64
  %sub.ptr.sub142 = sub i64 %sub.ptr.lhs.cast140, %sub.ptr.rhs.cast
  %cmp143 = icmp sgt i64 %sub.ptr.sub135, %sub.ptr.sub142
  br i1 %cmp143, label %cond.true145, label %cond.end151

cond.true145:                                     ; preds = %cond.end112
  store ptr %27, ptr %next_free, align 8
  br label %cond.end151

cond.end151:                                      ; preds = %cond.true145, %cond.end112
  %28 = load ptr, ptr %next_free, align 8
  store ptr %28, ptr %object_base, align 8
  br label %if.end160

if.end160:                                        ; preds = %cond.end151, %if.then74
  %storemerge = phi ptr [ %23, %cond.end151 ], [ %call77, %if.then74 ]
  store ptr %storemerge, ptr %call66, align 8
  %nelements = getelementptr inbounds nuw i8, ptr %table, i64 116
  %29 = load i32, ptr %nelements, align 4
  %inc161 = add i32 %29, 1
  store i32 %inc161, ptr %nelements, align 4
  %mul162 = shl i32 %inc161, 2
  %30 = load i32, ptr %nslots, align 8
  %mul164 = mul i32 %30, 3
  %cmp165.not = icmp ult i32 %mul162, %mul164
  br i1 %cmp165.not, label %cleanup, label %if.then167

if.then167:                                       ; preds = %if.end160
  %mul.i = shl i32 %30, 1
  %conv.i = zext i32 %mul.i to i64
  %call.i = tail call ptr @xcalloc(i64 noundef %conv.i, i64 noundef 8) #5
  %sub.i = add i32 %mul.i, -1
  %31 = load ptr, ptr %entries, align 8
  %32 = load i32, ptr %nslots, align 8
  %idx.ext.i = zext i32 %32 to i64
  %add.ptr.i = getelementptr inbounds nuw ptr, ptr %31, i64 %idx.ext.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond15.i, %if.then167
  %p.0.i = phi ptr [ %31, %if.then167 ], [ %incdec.ptr.i, %do.cond15.i ]
  %33 = load ptr, ptr %p.0.i, align 8
  %magicptr.i = ptrtoint ptr %33 to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  br i1 %switch.i, label %if.then.i, label %do.cond15.i

if.then.i:                                        ; preds = %do.body.i
  %hash_value.i = getelementptr inbounds nuw i8, ptr %33, i64 12
  %34 = load i32, ptr %hash_value.i, align 4
  %and.i = and i32 %34, %sub.i
  %idxprom.i = zext i32 %and.i to i64
  %arrayidx.i = getelementptr inbounds nuw ptr, ptr %call.i, i64 %idxprom.i
  %35 = load ptr, ptr %arrayidx.i, align 8
  %tobool3.not.i = icmp eq ptr %35, null
  br i1 %tobool3.not.i, label %if.end.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  %mul5.i = mul i32 %34, 17
  %and6.i = and i32 %mul5.i, %sub.i
  %or.i = or i32 %and6.i, 1
  br label %do.body7.i

do.body7.i:                                       ; preds = %do.body7.i, %if.then4.i
  %index.0.i = phi i32 [ %and.i, %if.then4.i ], [ %and8.i, %do.body7.i ]
  %add.i = add i32 %index.0.i, %or.i
  %and8.i = and i32 %add.i, %sub.i
  %idxprom9.i = zext i32 %and8.i to i64
  %arrayidx10.i = getelementptr inbounds nuw ptr, ptr %call.i, i64 %idxprom9.i
  %36 = load ptr, ptr %arrayidx10.i, align 8
  %tobool11.not.i = icmp eq ptr %36, null
  br i1 %tobool11.not.i, label %if.end.i.loopexit, label %do.body7.i, !llvm.loop !0

if.end.i.loopexit:                                ; preds = %do.body7.i
  %and8.i.lcssa = phi i32 [ %and8.i, %do.body7.i ]
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.loopexit, %if.then.i
  %index.1.i = phi i32 [ %and.i, %if.then.i ], [ %and8.i.lcssa, %if.end.i.loopexit ]
  %idxprom12.i = zext i32 %index.1.i to i64
  %arrayidx13.i = getelementptr inbounds nuw ptr, ptr %call.i, i64 %idxprom12.i
  store ptr %33, ptr %arrayidx13.i, align 8
  br label %do.cond15.i

do.cond15.i:                                      ; preds = %if.end.i, %do.body.i
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %p.0.i, i64 8
  %cmp16.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp16.i, label %do.body.i, label %do.end18.i, !llvm.loop !2

do.end18.i:                                       ; preds = %do.cond15.i
  %entries_owned.i = getelementptr inbounds nuw i8, ptr %table, i64 136
  %37 = load i8, ptr %entries_owned.i, align 8
  %tobool19.not.i = icmp eq i8 %37, 0
  br i1 %tobool19.not.i, label %ht_expand.exit, label %if.then20.i

if.then20.i:                                      ; preds = %do.end18.i
  %38 = load ptr, ptr %entries, align 8
  tail call void @free(ptr noundef %38) #5
  br label %ht_expand.exit

ht_expand.exit:                                   ; preds = %if.then20.i, %do.end18.i
  store i8 1, ptr %entries_owned.i, align 8
  store ptr %call.i, ptr %entries, align 8
  store i32 %mul.i, ptr %nslots, align 8
  br label %cleanup

cleanup.loopexit:                                 ; preds = %land.lhs.true49
  %.lcssa271 = phi ptr [ %9, %land.lhs.true49 ]
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %ht_expand.exit, %if.end160, %if.end56, %land.lhs.true14
  %retval.0 = phi ptr [ %3, %land.lhs.true14 ], [ null, %if.end56 ], [ %call66, %ht_expand.exit ], [ %call66, %if.end160 ], [ %.lcssa271, %cleanup.loopexit ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) #4

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
!2 = distinct !{!2, !1}
