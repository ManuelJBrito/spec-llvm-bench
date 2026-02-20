; ModuleID = '/tmp/tmp.YEmjNC1FtU/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/simulator/cmodule.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"struct.cGate::Desc" = type { ptr, ptr, i32, %union.anon.14, %union.anon.15 }
%union.anon.14 = type { ptr }
%union.anon.15 = type { ptr }

@.str.53 = external hidden unnamed_addr constant [1 x i8], align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147483648, 2147483647) i32 @_ZNK7cModule12findGateDescEPKcRc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(176) %this, ptr noundef readonly captures(none) %gatename, ptr noundef nonnull align 1 captures(none) dereferenceable(1) %suffix) local_unnamed_addr #0 align 2 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %gatename) #2
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %cond.end.thread

land.lhs.true:                                    ; preds = %entry
  %sub = add i64 %call, 4294967294
  %idxprom = and i64 %sub, 4294967295
  %arrayidx = getelementptr inbounds nuw i8, ptr %gatename, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !0
  %cmp3 = icmp eq i8 %0, 36
  br i1 %cmp3, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %land.lhs.true, %entry
  store i8 0, ptr %suffix, align 1, !tbaa !0
  br label %if.end

cond.end:                                         ; preds = %land.lhs.true
  %sub4 = add i64 %call, 4294967295
  %idxprom5 = and i64 %sub4, 4294967295
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %gatename, i64 %idxprom5
  %1 = load i8, ptr %arrayidx6, align 1, !tbaa !0
  store i8 %1, ptr %suffix, align 1, !tbaa !0
  switch i8 %1, label %cleanup83 [
    i8 0, label %if.end
    i8 105, label %if.end
    i8 111, label %if.end
  ]

if.end:                                           ; preds = %cond.end, %cond.end, %cond.end, %cond.end.thread
  %cond125 = phi i8 [ 0, %cond.end.thread ], [ %1, %cond.end ], [ %1, %cond.end ], [ %1, %cond.end ]
  switch i8 %cond125, label %cleanup83 [
    i8 0, label %for.cond.preheader
    i8 105, label %for.cond29.preheader
    i8 111, label %for.cond57.preheader
  ]

for.cond57.preheader:                             ; preds = %if.end
  %descvSize58 = getelementptr inbounds nuw i8, ptr %this, i64 152
  %2 = load i32, ptr %descvSize58, align 8, !tbaa !3
  %cmp59.not142 = icmp sgt i32 %2, 0
  br i1 %cmp59.not142, label %for.body61.lr.ph, label %cleanup83

for.body61.lr.ph:                                 ; preds = %for.cond57.preheader
  %descv63 = getelementptr inbounds nuw i8, ptr %this, i64 160
  %3 = load ptr, ptr %descv63, align 8, !tbaa !24
  %wide.trip.count = zext i32 %2 to i64
  br label %for.body61

for.cond29.preheader:                             ; preds = %if.end
  %descvSize30 = getelementptr inbounds nuw i8, ptr %this, i64 152
  %4 = load i32, ptr %descvSize30, align 8, !tbaa !3
  %cmp31.not145 = icmp sgt i32 %4, 0
  br i1 %cmp31.not145, label %for.body33.lr.ph, label %cleanup83

for.body33.lr.ph:                                 ; preds = %for.cond29.preheader
  %descv35 = getelementptr inbounds nuw i8, ptr %this, i64 160
  %5 = load ptr, ptr %descv35, align 8, !tbaa !24
  %wide.trip.count161 = zext i32 %4 to i64
  br label %for.body33

for.cond.preheader:                               ; preds = %if.end
  %descvSize = getelementptr inbounds nuw i8, ptr %this, i64 152
  %6 = load i32, ptr %descvSize, align 8, !tbaa !3
  %cmp16.not149 = icmp sgt i32 %6, 0
  br i1 %cmp16.not149, label %for.body.lr.ph, label %cleanup83

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %descv = getelementptr inbounds nuw i8, ptr %this, i64 160
  %7 = load ptr, ptr %descv, align 8, !tbaa !24
  %wide.trip.count166 = zext i32 %6 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv163 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next164, %for.inc ]
  %add.ptr = getelementptr inbounds nuw %"struct.cGate::Desc", ptr %7, i64 %indvars.iv163
  %namep = getelementptr inbounds nuw i8, ptr %add.ptr, i64 8
  %8 = load ptr, ptr %namep, align 8, !tbaa !25
  %tobool17.not = icmp eq ptr %8, null
  br i1 %tobool17.not, label %for.inc, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %for.body
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %tobool.not.i = icmp eq ptr %9, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.53, ptr %9
  %call21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i, ptr noundef nonnull dereferenceable(1) %gatename) #2
  %cmp22 = icmp eq i32 %call21, 0
  %10 = trunc nuw nsw i64 %indvars.iv163 to i32
  br i1 %cmp22, label %cleanup83.loopexit, label %for.inc

for.inc:                                          ; preds = %land.lhs.true18, %for.body
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1
  %exitcond167 = icmp ne i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167, label %for.body, label %cleanup83.loopexit, !llvm.loop !30

for.body33:                                       ; preds = %for.inc50, %for.body33.lr.ph
  %indvars.iv158 = phi i64 [ 0, %for.body33.lr.ph ], [ %indvars.iv.next159, %for.inc50 ]
  %add.ptr37 = getelementptr inbounds nuw %"struct.cGate::Desc", ptr %5, i64 %indvars.iv158
  %namep38 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 8
  %11 = load ptr, ptr %namep38, align 8, !tbaa !25
  %tobool39.not = icmp eq ptr %11, null
  br i1 %tobool39.not, label %for.inc50, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %for.body33
  %namei = getelementptr inbounds nuw i8, ptr %11, i64 8
  %12 = load ptr, ptr %namei, align 8, !tbaa !28
  %tobool.not.i120 = icmp eq ptr %12, null
  %spec.select.i121 = select i1 %tobool.not.i120, ptr @.str.53, ptr %12
  %call43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i121, ptr noundef nonnull dereferenceable(1) %gatename) #2
  %cmp44 = icmp eq i32 %call43, 0
  %13 = trunc nuw nsw i64 %indvars.iv158 to i32
  br i1 %cmp44, label %cleanup83.loopexit153, label %for.inc50

for.inc50:                                        ; preds = %land.lhs.true40, %for.body33
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1
  %exitcond162 = icmp ne i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162, label %for.body33, label %cleanup83.loopexit153, !llvm.loop !32

for.body61:                                       ; preds = %for.inc78, %for.body61.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body61.lr.ph ], [ %indvars.iv.next, %for.inc78 ]
  %add.ptr65 = getelementptr inbounds nuw %"struct.cGate::Desc", ptr %3, i64 %indvars.iv
  %namep66 = getelementptr inbounds nuw i8, ptr %add.ptr65, i64 8
  %14 = load ptr, ptr %namep66, align 8, !tbaa !25
  %tobool67.not = icmp eq ptr %14, null
  br i1 %tobool67.not, label %for.inc78, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %for.body61
  %nameo = getelementptr inbounds nuw i8, ptr %14, i64 16
  %15 = load ptr, ptr %nameo, align 8, !tbaa !28
  %tobool.not.i122 = icmp eq ptr %15, null
  %spec.select.i123 = select i1 %tobool.not.i122, ptr @.str.53, ptr %15
  %call71 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i123, ptr noundef nonnull dereferenceable(1) %gatename) #2
  %cmp72 = icmp eq i32 %call71, 0
  %16 = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %cmp72, label %cleanup83.loopexit155, label %for.inc78

for.inc78:                                        ; preds = %land.lhs.true68, %for.body61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.body61, label %cleanup83.loopexit155, !llvm.loop !33

cleanup83.loopexit:                               ; preds = %for.inc, %land.lhs.true18
  %retval.9.ph = phi i32 [ %10, %land.lhs.true18 ], [ -1, %for.inc ]
  br label %cleanup83

cleanup83.loopexit153:                            ; preds = %for.inc50, %land.lhs.true40
  %retval.9.ph154 = phi i32 [ %13, %land.lhs.true40 ], [ -1, %for.inc50 ]
  br label %cleanup83

cleanup83.loopexit155:                            ; preds = %for.inc78, %land.lhs.true68
  %retval.9.ph156 = phi i32 [ %16, %land.lhs.true68 ], [ -1, %for.inc78 ]
  br label %cleanup83

cleanup83:                                        ; preds = %cleanup83.loopexit155, %cleanup83.loopexit153, %cleanup83.loopexit, %for.cond.preheader, %for.cond29.preheader, %for.cond57.preheader, %if.end, %cond.end
  %retval.9 = phi i32 [ -1, %cond.end ], [ -1, %if.end ], [ -1, %for.cond.preheader ], [ -1, %for.cond29.preheader ], [ -1, %for.cond57.preheader ], [ %retval.9.ph, %cleanup83.loopexit ], [ %retval.9.ph154, %cleanup83.loopexit153 ], [ %retval.9.ph156, %cleanup83.loopexit155 ]
  ret i32 %retval.9
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!0 = !{!1, !1, i64 0}
!1 = !{!"omnipotent char", !2, i64 0}
!2 = !{!"Simple C++ TBAA"}
!3 = !{!4, !15, i64 152}
!4 = !{!"_ZTS7cModule", !5, i64 0, !11, i64 104, !15, i64 112, !22, i64 120, !22, i64 128, !22, i64 136, !22, i64 144, !15, i64 152, !23, i64 160, !15, i64 168, !15, i64 172}
!5 = !{!"_ZTS10cComponent", !6, i64 0, !18, i64 56, !13, i64 64, !19, i64 72, !13, i64 80, !13, i64 82, !20, i64 88, !21, i64 96}
!6 = !{!"_ZTS12cDefaultList", !7, i64 0, !16, i64 40, !15, i64 48, !15, i64 52}
!7 = !{!"_ZTS23cNoncopyableOwnedObject", !8, i64 0}
!8 = !{!"_ZTS12cOwnedObject", !9, i64 0, !14, i64 24, !15, i64 32}
!9 = !{!"_ZTS12cNamedObject", !10, i64 0, !11, i64 8, !13, i64 16, !13, i64 18}
!10 = !{!"_ZTS7cObject"}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !1, i64 0}
!13 = !{!"short", !1, i64 0}
!14 = !{!"p1 _ZTS7cObject", !12, i64 0}
!15 = !{!"int", !1, i64 0}
!16 = !{!"p2 _ZTS12cOwnedObject", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS14cComponentType", !12, i64 0}
!19 = !{!"p1 int", !12, i64 0}
!20 = !{!"p1 _ZTS4cPar", !12, i64 0}
!21 = !{!"p1 _ZTS14cDisplayString", !12, i64 0}
!22 = !{!"p1 _ZTS7cModule", !12, i64 0}
!23 = !{!"p1 _ZTSN5cGate4DescE", !12, i64 0}
!24 = !{!4, !23, i64 160}
!25 = !{!26, !27, i64 8}
!26 = !{!"_ZTSN5cGate4DescE", !22, i64 0, !27, i64 8, !15, i64 16, !1, i64 24, !1, i64 32}
!27 = !{!"p1 _ZTSN5cGate4NameE", !12, i64 0}
!28 = !{!29, !11, i64 0}
!29 = !{!"_ZTS10opp_string", !11, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
