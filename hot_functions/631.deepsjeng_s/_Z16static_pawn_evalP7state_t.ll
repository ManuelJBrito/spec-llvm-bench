; ModuleID = '/tmp/tmp.Z9fD1rqN4y/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/531.deepsjeng_r/src/pawn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pawntt_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@_ZL6PawnTT = external hidden global [8 x [16384 x %struct.pawntt_t]], align 16
@FileMask = external local_unnamed_addr global [8 x i64], align 16
@FileUpMask = external local_unnamed_addr global [64 x i64], align 16
@AboveMask = external local_unnamed_addr global [8 x i64], align 16
@BelowMask = external local_unnamed_addr global [8 x i64], align 16
@RankMask = external local_unnamed_addr global [8 x i64], align 16
@Mask = external local_unnamed_addr global [64 x i64], align 16
@_ZL11w_candidate = external hidden unnamed_addr constant [6 x i32], align 16
@FileDownMask = external local_unnamed_addr global [64 x i64], align 16
@WhiteStrongSquareMask = external local_unnamed_addr global i64, align 8
@BlackStrongSquareMask = external local_unnamed_addr global i64, align 8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_Z16static_pawn_evalP7state_t(ptr noundef readonly captures(none) %s) local_unnamed_addr #2 {
entry:
  %temp.i = alloca i64, align 8
  %pawnhash = getelementptr inbounds nuw i8, ptr %s, i64 488
  %0 = load i64, ptr %pawnhash, align 8, !tbaa !0
  %and = and i64 %0, 16383
  %1 = load i32, ptr %s, align 8, !tbaa !6
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16384 x %struct.pawntt_t], ptr @_ZL6PawnTT, i64 %idxprom
  %arrayidx2 = getelementptr inbounds nuw %struct.pawntt_t, ptr %arrayidx, i64 %and
  %2 = load i64, ptr %arrayidx2, align 8, !tbaa !7
  %cmp.not = icmp eq i64 %2, %0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr nonnull %temp.i) #4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %arrayidx2, i8 0, i64 88, i1 false)
  %arrayidx2.i = getelementptr inbounds nuw i8, ptr %s, i64 296
  %arrayidx3.i = getelementptr inbounds nuw i8, ptr %s, i64 304
  %w_half_open_files.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 16
  %b_half_open_files.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 24
  %open_files.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 8
  %3 = load i64, ptr @FileMask, align 8, !tbaa !9
  %4 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %and.i = and i64 %4, %3
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  store i64 %3, ptr %w_half_open_files.i, align 8, !tbaa !10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then
  %5 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %and4.i = and i64 %5, %3
  %tobool5.not.i = icmp eq i64 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  store i64 %3, ptr %b_half_open_files.i, align 8, !tbaa !11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i
  %6 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %7 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %or11.i = or i64 %7, %6
  %and12.i = and i64 %or11.i, %3
  %tobool13.not.i = icmp eq i64 %and12.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %for.inc.i

if.then14.i:                                      ; preds = %if.end8.i
  store i64 %3, ptr %open_files.i, align 8, !tbaa !12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %if.end8.i
  %8 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 8), align 8, !tbaa !9
  %9 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %and.1.i = and i64 %9, %8
  %tobool.not.1.i = icmp eq i64 %and.1.i, 0
  br i1 %tobool.not.1.i, label %if.then.1.i, label %if.end.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %10 = load i64, ptr %w_half_open_files.i, align 8, !tbaa !10
  %or.1.i = or i64 %10, %8
  store i64 %or.1.i, ptr %w_half_open_files.i, align 8, !tbaa !10
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %for.inc.i
  %11 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %and4.1.i = and i64 %11, %8
  %tobool5.not.1.i = icmp eq i64 %and4.1.i, 0
  br i1 %tobool5.not.1.i, label %if.then6.1.i, label %if.end8.1.i

if.then6.1.i:                                     ; preds = %if.end.1.i
  %12 = load i64, ptr %b_half_open_files.i, align 8, !tbaa !11
  %or7.1.i = or i64 %12, %8
  store i64 %or7.1.i, ptr %b_half_open_files.i, align 8, !tbaa !11
  br label %if.end8.1.i

if.end8.1.i:                                      ; preds = %if.then6.1.i, %if.end.1.i
  %13 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %14 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %or11.1.i = or i64 %14, %13
  %and12.1.i = and i64 %or11.1.i, %8
  %tobool13.not.1.i = icmp eq i64 %and12.1.i, 0
  br i1 %tobool13.not.1.i, label %if.then14.1.i, label %for.inc.1.i

if.then14.1.i:                                    ; preds = %if.end8.1.i
  %15 = load i64, ptr %open_files.i, align 8, !tbaa !12
  %or15.1.i = or i64 %15, %8
  store i64 %or15.1.i, ptr %open_files.i, align 8, !tbaa !12
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then14.1.i, %if.end8.1.i
  %16 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 16), align 8, !tbaa !9
  %17 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %and.2.i = and i64 %17, %16
  %tobool.not.2.i = icmp eq i64 %and.2.i, 0
  br i1 %tobool.not.2.i, label %if.then.2.i, label %if.end.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  %18 = load i64, ptr %w_half_open_files.i, align 8, !tbaa !10
  %or.2.i = or i64 %18, %16
  store i64 %or.2.i, ptr %w_half_open_files.i, align 8, !tbaa !10
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %for.inc.1.i
  %19 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %and4.2.i = and i64 %19, %16
  %tobool5.not.2.i = icmp eq i64 %and4.2.i, 0
  br i1 %tobool5.not.2.i, label %if.then6.2.i, label %if.end8.2.i

if.then6.2.i:                                     ; preds = %if.end.2.i
  %20 = load i64, ptr %b_half_open_files.i, align 8, !tbaa !11
  %or7.2.i = or i64 %20, %16
  store i64 %or7.2.i, ptr %b_half_open_files.i, align 8, !tbaa !11
  br label %if.end8.2.i

if.end8.2.i:                                      ; preds = %if.then6.2.i, %if.end.2.i
  %21 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %22 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %or11.2.i = or i64 %22, %21
  %and12.2.i = and i64 %or11.2.i, %16
  %tobool13.not.2.i = icmp eq i64 %and12.2.i, 0
  br i1 %tobool13.not.2.i, label %if.then14.2.i, label %for.inc.2.i

if.then14.2.i:                                    ; preds = %if.end8.2.i
  %23 = load i64, ptr %open_files.i, align 8, !tbaa !12
  %or15.2.i = or i64 %23, %16
  store i64 %or15.2.i, ptr %open_files.i, align 8, !tbaa !12
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then14.2.i, %if.end8.2.i
  %24 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 24), align 8, !tbaa !9
  %25 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %and.3.i = and i64 %25, %24
  %tobool.not.3.i = icmp eq i64 %and.3.i, 0
  br i1 %tobool.not.3.i, label %if.then.3.i, label %if.end.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  %26 = load i64, ptr %w_half_open_files.i, align 8, !tbaa !10
  %or.3.i = or i64 %26, %24
  store i64 %or.3.i, ptr %w_half_open_files.i, align 8, !tbaa !10
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then.3.i, %for.inc.2.i
  %27 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %and4.3.i = and i64 %27, %24
  %tobool5.not.3.i = icmp eq i64 %and4.3.i, 0
  br i1 %tobool5.not.3.i, label %if.then6.3.i, label %if.end8.3.i

if.then6.3.i:                                     ; preds = %if.end.3.i
  %28 = load i64, ptr %b_half_open_files.i, align 8, !tbaa !11
  %or7.3.i = or i64 %28, %24
  store i64 %or7.3.i, ptr %b_half_open_files.i, align 8, !tbaa !11
  br label %if.end8.3.i

if.end8.3.i:                                      ; preds = %if.then6.3.i, %if.end.3.i
  %29 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %30 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %or11.3.i = or i64 %30, %29
  %and12.3.i = and i64 %or11.3.i, %24
  %tobool13.not.3.i = icmp eq i64 %and12.3.i, 0
  br i1 %tobool13.not.3.i, label %if.then14.3.i, label %for.inc.3.i

if.then14.3.i:                                    ; preds = %if.end8.3.i
  %31 = load i64, ptr %open_files.i, align 8, !tbaa !12
  %or15.3.i = or i64 %31, %24
  store i64 %or15.3.i, ptr %open_files.i, align 8, !tbaa !12
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then14.3.i, %if.end8.3.i
  %32 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 32), align 8, !tbaa !9
  %33 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %and.4.i = and i64 %33, %32
  %tobool.not.4.i = icmp eq i64 %and.4.i, 0
  br i1 %tobool.not.4.i, label %if.then.4.i, label %if.end.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  %34 = load i64, ptr %w_half_open_files.i, align 8, !tbaa !10
  %or.4.i = or i64 %34, %32
  store i64 %or.4.i, ptr %w_half_open_files.i, align 8, !tbaa !10
  br label %if.end.4.i

if.end.4.i:                                       ; preds = %if.then.4.i, %for.inc.3.i
  %35 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %and4.4.i = and i64 %35, %32
  %tobool5.not.4.i = icmp eq i64 %and4.4.i, 0
  br i1 %tobool5.not.4.i, label %if.then6.4.i, label %if.end8.4.i

if.then6.4.i:                                     ; preds = %if.end.4.i
  %36 = load i64, ptr %b_half_open_files.i, align 8, !tbaa !11
  %or7.4.i = or i64 %36, %32
  store i64 %or7.4.i, ptr %b_half_open_files.i, align 8, !tbaa !11
  br label %if.end8.4.i

if.end8.4.i:                                      ; preds = %if.then6.4.i, %if.end.4.i
  %37 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %38 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %or11.4.i = or i64 %38, %37
  %and12.4.i = and i64 %or11.4.i, %32
  %tobool13.not.4.i = icmp eq i64 %and12.4.i, 0
  br i1 %tobool13.not.4.i, label %if.then14.4.i, label %for.inc.4.i

if.then14.4.i:                                    ; preds = %if.end8.4.i
  %39 = load i64, ptr %open_files.i, align 8, !tbaa !12
  %or15.4.i = or i64 %39, %32
  store i64 %or15.4.i, ptr %open_files.i, align 8, !tbaa !12
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then14.4.i, %if.end8.4.i
  %40 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 40), align 8, !tbaa !9
  %41 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %and.5.i = and i64 %41, %40
  %tobool.not.5.i = icmp eq i64 %and.5.i, 0
  br i1 %tobool.not.5.i, label %if.then.5.i, label %if.end.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  %42 = load i64, ptr %w_half_open_files.i, align 8, !tbaa !10
  %or.5.i = or i64 %42, %40
  store i64 %or.5.i, ptr %w_half_open_files.i, align 8, !tbaa !10
  br label %if.end.5.i

if.end.5.i:                                       ; preds = %if.then.5.i, %for.inc.4.i
  %43 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %and4.5.i = and i64 %43, %40
  %tobool5.not.5.i = icmp eq i64 %and4.5.i, 0
  br i1 %tobool5.not.5.i, label %if.then6.5.i, label %if.end8.5.i

if.then6.5.i:                                     ; preds = %if.end.5.i
  %44 = load i64, ptr %b_half_open_files.i, align 8, !tbaa !11
  %or7.5.i = or i64 %44, %40
  store i64 %or7.5.i, ptr %b_half_open_files.i, align 8, !tbaa !11
  br label %if.end8.5.i

if.end8.5.i:                                      ; preds = %if.then6.5.i, %if.end.5.i
  %45 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %46 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %or11.5.i = or i64 %46, %45
  %and12.5.i = and i64 %or11.5.i, %40
  %tobool13.not.5.i = icmp eq i64 %and12.5.i, 0
  br i1 %tobool13.not.5.i, label %if.then14.5.i, label %for.inc.5.i

if.then14.5.i:                                    ; preds = %if.end8.5.i
  %47 = load i64, ptr %open_files.i, align 8, !tbaa !12
  %or15.5.i = or i64 %47, %40
  store i64 %or15.5.i, ptr %open_files.i, align 8, !tbaa !12
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then14.5.i, %if.end8.5.i
  %48 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 48), align 8, !tbaa !9
  %49 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %and.6.i = and i64 %49, %48
  %tobool.not.6.i = icmp eq i64 %and.6.i, 0
  br i1 %tobool.not.6.i, label %if.then.6.i, label %if.end.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  %50 = load i64, ptr %w_half_open_files.i, align 8, !tbaa !10
  %or.6.i = or i64 %50, %48
  store i64 %or.6.i, ptr %w_half_open_files.i, align 8, !tbaa !10
  br label %if.end.6.i

if.end.6.i:                                       ; preds = %if.then.6.i, %for.inc.5.i
  %51 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %and4.6.i = and i64 %51, %48
  %tobool5.not.6.i = icmp eq i64 %and4.6.i, 0
  br i1 %tobool5.not.6.i, label %if.then6.6.i, label %if.end8.6.i

if.then6.6.i:                                     ; preds = %if.end.6.i
  %52 = load i64, ptr %b_half_open_files.i, align 8, !tbaa !11
  %or7.6.i = or i64 %52, %48
  store i64 %or7.6.i, ptr %b_half_open_files.i, align 8, !tbaa !11
  br label %if.end8.6.i

if.end8.6.i:                                      ; preds = %if.then6.6.i, %if.end.6.i
  %53 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %54 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %or11.6.i = or i64 %54, %53
  %and12.6.i = and i64 %or11.6.i, %48
  %tobool13.not.6.i = icmp eq i64 %and12.6.i, 0
  br i1 %tobool13.not.6.i, label %if.then14.6.i, label %for.inc.6.i

if.then14.6.i:                                    ; preds = %if.end8.6.i
  %55 = load i64, ptr %open_files.i, align 8, !tbaa !12
  %or15.6.i = or i64 %55, %48
  store i64 %or15.6.i, ptr %open_files.i, align 8, !tbaa !12
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then14.6.i, %if.end8.6.i
  %56 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 56), align 8, !tbaa !9
  %57 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %and.7.i = and i64 %57, %56
  %tobool.not.7.i = icmp eq i64 %and.7.i, 0
  br i1 %tobool.not.7.i, label %if.then.7.i, label %if.end.7.i

if.then.7.i:                                      ; preds = %for.inc.6.i
  %58 = load i64, ptr %w_half_open_files.i, align 8, !tbaa !10
  %or.7.i = or i64 %58, %56
  store i64 %or.7.i, ptr %w_half_open_files.i, align 8, !tbaa !10
  br label %if.end.7.i

if.end.7.i:                                       ; preds = %if.then.7.i, %for.inc.6.i
  %59 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %and4.7.i = and i64 %59, %56
  %tobool5.not.7.i = icmp eq i64 %and4.7.i, 0
  br i1 %tobool5.not.7.i, label %if.then6.7.i, label %if.end8.7.i

if.then6.7.i:                                     ; preds = %if.end.7.i
  %60 = load i64, ptr %b_half_open_files.i, align 8, !tbaa !11
  %or7.7.i = or i64 %60, %56
  store i64 %or7.7.i, ptr %b_half_open_files.i, align 8, !tbaa !11
  br label %if.end8.7.i

if.end8.7.i:                                      ; preds = %if.then6.7.i, %if.end.7.i
  %61 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %62 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %or11.7.i = or i64 %62, %61
  %and12.7.i = and i64 %or11.7.i, %56
  %tobool13.not.7.i = icmp eq i64 %and12.7.i, 0
  br i1 %tobool13.not.7.i, label %if.then14.7.i, label %for.inc.7.i

if.then14.7.i:                                    ; preds = %if.end8.7.i
  %63 = load i64, ptr %open_files.i, align 8, !tbaa !12
  %or15.7.i = or i64 %63, %56
  store i64 %or15.7.i, ptr %open_files.i, align 8, !tbaa !12
  %.pr1082.i = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then14.7.i, %if.end8.7.i
  %64 = phi i64 [ %.pr1082.i, %if.then14.7.i ], [ %61, %if.end8.7.i ]
  store i64 %64, ptr %temp.i, align 8, !tbaa !9
  %tobool18.not1074.i = icmp eq i64 %64, 0
  br i1 %tobool18.not1074.i, label %while.end.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %for.inc.7.i
  %w_score213.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 80
  %w_passed.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 32
  %w_strong_square.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 48
  %w_super_strong_square.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 64
  br label %while.body.i

while.body.i:                                     ; preds = %if.end370.i, %while.body.lr.ph.i
  %urank3_mask.01076.i = phi i64 [ undef, %while.body.lr.ph.i ], [ %urank3_mask.2.i, %if.end370.i ]
  %call.i = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp.i)
  %and19.i = and i32 %call.i, 7
  %idxprom20.i = zext nneg i32 %and19.i to i64
  %arrayidx21.i = getelementptr inbounds nuw i64, ptr @FileMask, i64 %idxprom20.i
  %65 = load i64, ptr %arrayidx21.i, align 8, !tbaa !9
  %66 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %and23.i = and i64 %66, %65
  switch i32 %and19.i, label %if.else28.i [
    i32 0, label %if.then25.i
    i32 7, label %if.then27.i
  ]

if.then25.i:                                      ; preds = %while.body.i
  %67 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 8), align 8, !tbaa !9
  br label %if.end35.i

if.then27.i:                                      ; preds = %while.body.i
  %68 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 48), align 16, !tbaa !9
  br label %if.end35.i

if.else28.i:                                      ; preds = %while.body.i
  %arrayidx30.i = getelementptr i8, ptr %arrayidx21.i, i64 -8
  %69 = load i64, ptr %arrayidx30.i, align 8, !tbaa !9
  %arrayidx32.i = getelementptr inbounds nuw i8, ptr %arrayidx21.i, i64 8
  %70 = load i64, ptr %arrayidx32.i, align 8, !tbaa !9
  %or33.i = or i64 %70, %69
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else28.i, %if.then27.i, %if.then25.i
  %side_mask.0.i = phi i64 [ %67, %if.then25.i ], [ %68, %if.then27.i ], [ %or33.i, %if.else28.i ]
  %idxprom36.i = sext i32 %call.i to i64
  %arrayidx37.i = getelementptr inbounds i64, ptr @FileUpMask, i64 %idxprom36.i
  %71 = load i64, ptr %arrayidx37.i, align 8, !tbaa !9
  %72 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %and39.i = and i64 %72, %71
  %tobool40.not.not.i = icmp eq i64 %and39.i, 0
  %call43.i = call noundef i32 @_Z8PopCounty(i64 noundef %and23.i)
  %cmp44.i = icmp slt i32 %call43.i, 2
  br i1 %cmp44.i, label %if.end52.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end35.i
  %shr.i = ashr i32 %call.i, 3
  %idxprom46.i = sext i32 %shr.i to i64
  %arrayidx47.i = getelementptr inbounds i64, ptr @AboveMask, i64 %idxprom46.i
  %73 = load i64, ptr %arrayidx47.i, align 8, !tbaa !9
  %and48.i = and i64 %73, %and23.i
  %tobool49.not.i = icmp eq i64 %and48.i, 0
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then45.i, %if.end35.i
  %tobool242.not.i = phi i1 [ true, %if.end35.i ], [ %tobool49.not.i, %if.then45.i ]
  %74 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %and54.i = and i64 %74, %side_mask.0.i
  %tobool55.not.not.i = icmp eq i64 %and54.i, 0
  br i1 %tobool55.not.not.i, label %if.end142.i, label %if.else57.i

if.else57.i:                                      ; preds = %if.end52.i
  %shr60.i = ashr i32 %call.i, 3
  %sub61.i = add nsw i32 %shr60.i, -1
  %idxprom62.i = sext i32 %sub61.i to i64
  %arrayidx63.i = getelementptr inbounds i64, ptr @BelowMask, i64 %idxprom62.i
  %75 = load i64, ptr %arrayidx63.i, align 8, !tbaa !9
  %and64.i = and i64 %75, %and54.i
  %tobool65.not.i = icmp eq i64 %and64.i, 0
  br i1 %tobool65.not.i, label %if.then66.i, label %if.end142.i

if.then66.i:                                      ; preds = %if.else57.i
  %arrayidx70.i = getelementptr inbounds i64, ptr @RankMask, i64 %idxprom62.i
  %76 = load i64, ptr %arrayidx70.i, align 8, !tbaa !9
  %cmp72.i = icmp sgt i32 %shr60.i, 1
  br i1 %cmp72.i, label %if.end79.i, label %if.end88.thread.i

if.end79.i:                                       ; preds = %if.then66.i
  %77 = zext nneg i32 %shr60.i to i64
  %78 = getelementptr i64, ptr @RankMask, i64 %77
  %arrayidx77.i = getelementptr i8, ptr %78, i64 -16
  %79 = load i64, ptr %arrayidx77.i, align 8, !tbaa !9
  %or78.i = or i64 %79, %76
  %cmp81.not.i = icmp eq i32 %shr60.i, 2
  br i1 %cmp81.not.i, label %if.end88.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.end79.i
  %arrayidx86.i = getelementptr i8, ptr %78, i64 -24
  %80 = load i64, ptr %arrayidx86.i, align 8, !tbaa !9
  %or87.i = or i64 %80, %or78.i
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then82.i, %if.end79.i
  %urank3_mask.1.i = phi i64 [ %or87.i, %if.then82.i ], [ %urank3_mask.01076.i, %if.end79.i ]
  %and91.i = and i64 %76, %and54.i
  %tobool92.not.i = icmp eq i64 %and91.i, 0
  br i1 %tobool92.not.i, label %if.else115.i, label %if.end142.sink.split.i

if.end88.thread.i:                                ; preds = %if.then66.i
  %and911085.i = and i64 %76, %and54.i
  %tobool92.not1086.i = icmp eq i64 %and911085.i, 0
  br label %if.end142.i

if.else115.i:                                     ; preds = %if.end88.i
  %cmp117.i = icmp ne i32 %shr60.i, 6
  %and120.i = and i64 %or78.i, %and54.i
  %tobool121.not.i = icmp eq i64 %and120.i, 0
  %or.cond.i = select i1 %cmp117.i, i1 true, i1 %tobool121.not.i
  br i1 %or.cond.i, label %if.end142.i, label %if.end142.sink.split.i

if.end142.sink.split.i:                           ; preds = %if.else115.i, %if.end88.i
  %or78.sink.i = phi i64 [ %or78.i, %if.else115.i ], [ %76, %if.end88.i ]
  %urank3_mask.1.sink.i = phi i64 [ %urank3_mask.1.i, %if.else115.i ], [ %or78.i, %if.end88.i ]
  %81 = load i64, ptr %arrayidx21.i, align 8, !tbaa !9
  %82 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %or128.i = or i64 %82, %74
  %83 = and i64 %81, %or78.sink.i
  %and129.i = and i64 %83, %or128.i
  %tobool130.not.i = icmp eq i64 %and129.i, 0
  %84 = and i64 %urank3_mask.1.sink.i, %side_mask.0.i
  %and135.i = and i64 %84, %82
  %tobool136.not.i = icmp ne i64 %and135.i, 0
  %narrow1069.i = select i1 %tobool136.not.i, i1 %tobool130.not.i, i1 false
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.end142.sink.split.i, %if.else115.i, %if.end88.thread.i, %if.else57.i, %if.end52.i
  %urank3_mask.2.i = phi i64 [ %urank3_mask.01076.i, %if.else57.i ], [ %urank3_mask.1.i, %if.else115.i ], [ %urank3_mask.01076.i, %if.end52.i ], [ %urank3_mask.01076.i, %if.end88.thread.i ], [ %urank3_mask.1.i, %if.end142.sink.split.i ]
  %backward.2.shrunk.i = phi i1 [ false, %if.else57.i ], [ true, %if.else115.i ], [ false, %if.end52.i ], [ %tobool92.not1086.i, %if.end88.thread.i ], [ %narrow1069.i, %if.end142.sink.split.i ]
  br i1 %tobool40.not.not.i, label %if.then144.i, label %if.end206.thread.i

if.then144.i:                                     ; preds = %if.end142.i
  %shr145.i = ashr i32 %call.i, 3
  %idxprom146.i = sext i32 %shr145.i to i64
  %arrayidx147.i = getelementptr inbounds i64, ptr @AboveMask, i64 %idxprom146.i
  %85 = load i64, ptr %arrayidx147.i, align 8, !tbaa !9
  %86 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %87 = and i64 %85, %86
  %and150.i = and i64 %87, %side_mask.0.i
  %tobool151.not.i = icmp eq i64 %and150.i, 0
  br i1 %tobool151.not.i, label %if.then152.i, label %if.else156.i

if.then152.i:                                     ; preds = %if.then144.i
  %arrayidx154.i = getelementptr inbounds i64, ptr @Mask, i64 %idxprom36.i
  %88 = load i64, ptr %arrayidx154.i, align 8, !tbaa !9
  %89 = load i64, ptr %w_passed.i, align 8, !tbaa !13
  %or155.i = or i64 %89, %88
  store i64 %or155.i, ptr %w_passed.i, align 8, !tbaa !13
  br label %if.end206.i

if.else156.i:                                     ; preds = %if.then144.i
  %sub160.i = add nsw i32 %shr145.i, -1
  %idxprom161.i = sext i32 %sub160.i to i64
  %arrayidx162.i = getelementptr inbounds i64, ptr @BelowMask, i64 %idxprom161.i
  %90 = load i64, ptr %arrayidx162.i, align 8, !tbaa !9
  %91 = and i64 %side_mask.0.i, %90
  %and163.i = and i64 %91, %74
  %call164.i = call noundef i32 @_Z8PopCounty(i64 noundef %and163.i)
  %92 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %93 = load i64, ptr %arrayidx147.i, align 8, !tbaa !9
  %94 = and i64 %92, %93
  %and170.i = and i64 %94, %side_mask.0.i
  %call171.i = call noundef i32 @_Z8PopCounty(i64 noundef %and170.i)
  %95 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %96 = load i64, ptr %arrayidx162.i, align 8, !tbaa !9
  %97 = and i64 %95, %96
  %and178.i = and i64 %97, %side_mask.0.i
  %call179.i = call noundef i32 @_Z8PopCounty(i64 noundef %and178.i)
  %98 = add i32 %call171.i, %call179.i
  %sub181.i = sub i32 %call164.i, %98
  %cmp182.i = icmp sgt i32 %sub181.i, -1
  br i1 %cmp182.i, label %if.then183.i, label %if.end206.i

if.then183.i:                                     ; preds = %if.else156.i
  %99 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %100 = getelementptr i64, ptr @RankMask, i64 %idxprom146.i
  %arrayidx189.i = getelementptr i8, ptr %100, i64 8
  %101 = load i64, ptr %arrayidx189.i, align 8, !tbaa !9
  %102 = and i64 %99, %101
  %and190.i = and i64 %102, %side_mask.0.i
  %call191.i = call noundef i32 @_Z8PopCounty(i64 noundef %and190.i)
  %103 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %arrayidx197.i = getelementptr inbounds i64, ptr @RankMask, i64 %idxprom161.i
  %104 = load i64, ptr %arrayidx197.i, align 8, !tbaa !9
  %105 = and i64 %103, %104
  %and198.i = and i64 %105, %side_mask.0.i
  %call199.i = call noundef i32 @_Z8PopCounty(i64 noundef %and198.i)
  %cmp201.not.i = icmp slt i32 %call191.i, %call199.i
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.then183.i, %if.else156.i, %if.then152.i
  %tobool240.not.i = phi i1 [ true, %if.else156.i ], [ true, %if.then152.i ], [ %cmp201.not.i, %if.then183.i ]
  br i1 %cmp44.i, label %if.end216.thread1099.i, label %if.end216.thread.i

if.end206.thread.i:                               ; preds = %if.end142.i
  br i1 %cmp44.i, label %if.end216.i, label %if.else212.i

if.else212.i:                                     ; preds = %if.end206.thread.i
  %106 = load i32, ptr %w_score213.i, align 8, !tbaa !14
  %add214.i = add nsw i32 %106, -5
  store i32 %add214.i, ptr %w_score213.i, align 8, !tbaa !14
  br label %if.end216.i

if.end216.i:                                      ; preds = %if.else212.i, %if.end206.thread.i
  br i1 %tobool55.not.not.i, label %if.then218.i, label %if.else227.i

if.end216.thread1099.i:                           ; preds = %if.end206.i
  br i1 %tobool55.not.not.i, label %if.then218.thread.i, label %if.else227.thread1107.i

if.then218.thread.i:                              ; preds = %if.end216.thread1099.i
  %107 = load i32, ptr %w_score213.i, align 8, !tbaa !14
  %add2221106.i = add nsw i32 %107, -20
  store i32 %add2221106.i, ptr %w_score213.i, align 8, !tbaa !14
  br i1 %tobool240.not.i, label %if.end258.i, label %if.then241.i

if.end216.thread.i:                               ; preds = %if.end206.i
  %108 = load i32, ptr %w_score213.i, align 8, !tbaa !14
  %add211.i = add nsw i32 %108, -10
  store i32 %add211.i, ptr %w_score213.i, align 8, !tbaa !14
  br i1 %tobool55.not.not.i, label %if.then220.i, label %if.else227.thread.i

if.then218.i:                                     ; preds = %if.end216.i
  %109 = load i32, ptr %w_score213.i, align 8, !tbaa !14
  %add225.i = add nsw i32 %109, -8
  br label %if.end258.sink.split.i

if.then220.i:                                     ; preds = %if.end216.thread.i
  %add222.i = add nsw i32 %108, -30
  store i32 %add222.i, ptr %w_score213.i, align 8, !tbaa !14
  br i1 %tobool240.not.i, label %if.end258.i, label %if.then241.i

if.else227.i:                                     ; preds = %if.end216.i
  br i1 %backward.2.shrunk.i, label %if.then229.i, label %if.end258.i

if.else227.thread1107.i:                          ; preds = %if.end216.thread1099.i
  br i1 %backward.2.shrunk.i, label %if.then229.thread.i, label %if.end239.i

if.then229.thread.i:                              ; preds = %if.else227.thread1107.i
  %110 = load i32, ptr %w_score213.i, align 8, !tbaa !14
  %add2331113.i = add nsw i32 %110, -16
  store i32 %add2331113.i, ptr %w_score213.i, align 8, !tbaa !14
  br i1 %tobool240.not.i, label %if.end258.i, label %if.then241.i

if.else227.thread.i:                              ; preds = %if.end216.thread.i
  br i1 %backward.2.shrunk.i, label %if.then231.i, label %if.end239.i

if.then229.i:                                     ; preds = %if.else227.i
  %111 = load i32, ptr %w_score213.i, align 8, !tbaa !14
  %add236.i = add nsw i32 %111, -6
  br label %if.end258.sink.split.i

if.then231.i:                                     ; preds = %if.else227.thread.i
  %add233.i = add nsw i32 %108, -26
  store i32 %add233.i, ptr %w_score213.i, align 8, !tbaa !14
  br i1 %tobool240.not.i, label %if.end258.i, label %if.then241.i

if.end239.i:                                      ; preds = %if.else227.thread.i, %if.else227.thread1107.i
  br i1 %tobool240.not.i, label %if.end258.i, label %if.then241.i

if.then241.i:                                     ; preds = %if.end239.i, %if.then231.i, %if.then229.thread.i, %if.then220.i, %if.then218.thread.i
  %112 = getelementptr i32, ptr @_ZL11w_candidate, i64 %idxprom146.i
  %arrayidx247.i = getelementptr i8, ptr %112, i64 -4
  %113 = load i32, ptr %arrayidx247.i, align 4, !tbaa !15
  br i1 %tobool242.not.i, label %if.then243.i, label %if.else250.i

if.then243.i:                                     ; preds = %if.then241.i
  %mul.i = shl nsw i32 %113, 1
  %114 = load i32, ptr %w_score213.i, align 8, !tbaa !14
  %add249.i = add nsw i32 %114, %mul.i
  br label %if.end258.sink.split.i

if.else250.i:                                     ; preds = %if.then241.i
  %115 = load i32, ptr %w_score213.i, align 8, !tbaa !14
  %add256.i = add nsw i32 %115, %113
  br label %if.end258.sink.split.i

if.end258.sink.split.i:                           ; preds = %if.else250.i, %if.then243.i, %if.then229.i, %if.then218.i
  %add236.sink.i = phi i32 [ %add236.i, %if.then229.i ], [ %add225.i, %if.then218.i ], [ %add249.i, %if.then243.i ], [ %add256.i, %if.else250.i ]
  store i32 %add236.sink.i, ptr %w_score213.i, align 8, !tbaa !14
  br label %if.end258.i

if.end258.i:                                      ; preds = %if.end258.sink.split.i, %if.end239.i, %if.then231.i, %if.then229.thread.i, %if.else227.i, %if.then220.i, %if.then218.thread.i
  %cmp260.i = icmp sgt i32 %call.i, 15
  br i1 %cmp260.i, label %if.then261.i, label %if.end370.i

if.then261.i:                                     ; preds = %if.end258.i
  %cond.i = icmp eq i32 %and19.i, 0
  br i1 %cond.i, label %if.then316.i, label %if.then263.i

if.then263.i:                                     ; preds = %if.then261.i
  %sub264.i = add nsw i32 %call.i, -9
  %and265.i = and i32 %sub264.i, 7
  %idxprom266.i = zext nneg i32 %sub264.i to i64
  %arrayidx267.i = getelementptr inbounds nuw i64, ptr @Mask, i64 %idxprom266.i
  %116 = load i64, ptr %arrayidx267.i, align 8, !tbaa !9
  %117 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %118 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %or270.i = or i64 %118, %117
  %and271.i = and i64 %or270.i, %116
  %tobool272.not.i = icmp eq i64 %and271.i, 0
  br i1 %tobool272.not.i, label %if.then273.i, label %if.end314.i

if.then273.i:                                     ; preds = %if.then263.i
  switch i32 %and265.i, label %if.else280.i [
    i32 0, label %if.then275.i
    i32 7, label %if.then279.i
  ]

if.then275.i:                                     ; preds = %if.then273.i
  %119 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 8), align 8, !tbaa !9
  br label %if.end289.i

if.then279.i:                                     ; preds = %if.then273.i
  %120 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 48), align 16, !tbaa !9
  br label %if.end289.i

if.else280.i:                                     ; preds = %if.then273.i
  %121 = zext nneg i32 %and265.i to i64
  %122 = getelementptr i64, ptr @FileMask, i64 %121
  %arrayidx283.i = getelementptr i8, ptr %122, i64 -8
  %123 = load i64, ptr %arrayidx283.i, align 8, !tbaa !9
  %arrayidx286.i = getelementptr inbounds nuw i8, ptr %122, i64 8
  %124 = load i64, ptr %arrayidx286.i, align 8, !tbaa !9
  %or287.i = or i64 %124, %123
  br label %if.end289.i

if.end289.i:                                      ; preds = %if.else280.i, %if.then279.i, %if.then275.i
  %side_mask.1.i = phi i64 [ %119, %if.then275.i ], [ %120, %if.then279.i ], [ %or287.i, %if.else280.i ]
  %shr290.i = lshr i32 %sub264.i, 3
  %idxprom291.i = zext nneg i32 %shr290.i to i64
  %arrayidx292.i = getelementptr inbounds nuw i64, ptr @AboveMask, i64 %idxprom291.i
  %125 = load i64, ptr %arrayidx292.i, align 8, !tbaa !9
  %126 = and i64 %side_mask.1.i, %125
  %and295.i = and i64 %126, %118
  %tobool296.not.i = icmp eq i64 %and295.i, 0
  br i1 %tobool296.not.i, label %if.then297.i, label %if.end314.i

if.then297.i:                                     ; preds = %if.end289.i
  %127 = load i64, ptr %w_strong_square.i, align 8, !tbaa !16
  %and300.i = and i64 %127, %116
  %tobool301.not.i = icmp eq i64 %and300.i, 0
  br i1 %tobool301.not.i, label %if.else306.i, label %if.then302.i

if.then302.i:                                     ; preds = %if.then297.i
  %128 = load i64, ptr %w_super_strong_square.i, align 8, !tbaa !17
  %or305.i = or i64 %128, %116
  store i64 %or305.i, ptr %w_super_strong_square.i, align 8, !tbaa !17
  br label %if.end314.i

if.else306.i:                                     ; preds = %if.then297.i
  %or310.i = or i64 %127, %116
  store i64 %or310.i, ptr %w_strong_square.i, align 8, !tbaa !16
  br label %if.end314.i

if.end314.i:                                      ; preds = %if.else306.i, %if.then302.i, %if.end289.i, %if.then263.i
  %cmp315.not.i = icmp eq i32 %and19.i, 7
  br i1 %cmp315.not.i, label %if.end370.i, label %if.then316.i

if.then316.i:                                     ; preds = %if.end314.i, %if.then261.i
  %sub317.i = add nsw i32 %call.i, -7
  %and318.i = and i32 %sub317.i, 7
  %idxprom319.i = zext nneg i32 %sub317.i to i64
  %arrayidx320.i = getelementptr inbounds nuw i64, ptr @Mask, i64 %idxprom319.i
  %129 = load i64, ptr %arrayidx320.i, align 8, !tbaa !9
  %130 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %131 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %or323.i = or i64 %131, %130
  %and324.i = and i64 %or323.i, %129
  %tobool325.not.i = icmp eq i64 %and324.i, 0
  br i1 %tobool325.not.i, label %if.then326.i, label %if.end370.i

if.then326.i:                                     ; preds = %if.then316.i
  switch i32 %and318.i, label %if.else333.i [
    i32 0, label %if.then328.i
    i32 7, label %if.then332.i
  ]

if.then328.i:                                     ; preds = %if.then326.i
  %132 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 8), align 8, !tbaa !9
  br label %if.end342.i

if.then332.i:                                     ; preds = %if.then326.i
  %133 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 48), align 16, !tbaa !9
  br label %if.end342.i

if.else333.i:                                     ; preds = %if.then326.i
  %134 = zext nneg i32 %and318.i to i64
  %135 = getelementptr i64, ptr @FileMask, i64 %134
  %arrayidx336.i = getelementptr i8, ptr %135, i64 -8
  %136 = load i64, ptr %arrayidx336.i, align 8, !tbaa !9
  %arrayidx339.i = getelementptr inbounds nuw i8, ptr %135, i64 8
  %137 = load i64, ptr %arrayidx339.i, align 8, !tbaa !9
  %or340.i = or i64 %137, %136
  br label %if.end342.i

if.end342.i:                                      ; preds = %if.else333.i, %if.then332.i, %if.then328.i
  %side_mask.2.i = phi i64 [ %132, %if.then328.i ], [ %133, %if.then332.i ], [ %or340.i, %if.else333.i ]
  %shr343.i = lshr i32 %sub317.i, 3
  %idxprom344.i = zext nneg i32 %shr343.i to i64
  %arrayidx345.i = getelementptr inbounds nuw i64, ptr @AboveMask, i64 %idxprom344.i
  %138 = load i64, ptr %arrayidx345.i, align 8, !tbaa !9
  %139 = and i64 %side_mask.2.i, %138
  %and348.i = and i64 %139, %131
  %tobool349.not.i = icmp eq i64 %and348.i, 0
  br i1 %tobool349.not.i, label %if.then350.i, label %if.end370.i

if.then350.i:                                     ; preds = %if.end342.i
  %140 = load i64, ptr %w_strong_square.i, align 8, !tbaa !16
  %and354.i = and i64 %140, %129
  %tobool355.not.i = icmp eq i64 %and354.i, 0
  br i1 %tobool355.not.i, label %if.else361.i, label %if.then356.i

if.then356.i:                                     ; preds = %if.then350.i
  %141 = load i64, ptr %w_super_strong_square.i, align 8, !tbaa !17
  %or360.i = or i64 %141, %129
  store i64 %or360.i, ptr %w_super_strong_square.i, align 8, !tbaa !17
  br label %if.end370.i

if.else361.i:                                     ; preds = %if.then350.i
  %or365.i = or i64 %140, %129
  store i64 %or365.i, ptr %w_strong_square.i, align 8, !tbaa !16
  br label %if.end370.i

if.end370.i:                                      ; preds = %if.else361.i, %if.then356.i, %if.end342.i, %if.then316.i, %if.end314.i, %if.end258.i
  %.pr.i = load i64, ptr %temp.i, align 8, !tbaa !9
  %tobool18.not.i = icmp eq i64 %.pr.i, 0
  br i1 %tobool18.not.i, label %while.end.i.loopexit, label %while.body.i, !llvm.loop !18

while.end.i.loopexit:                             ; preds = %if.end370.i
  %urank3_mask.2.i.lcssa = phi i64 [ %urank3_mask.2.i, %if.end370.i ]
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %for.inc.7.i
  %urank3_mask.0.lcssa.i = phi i64 [ undef, %for.inc.7.i ], [ %urank3_mask.2.i.lcssa, %while.end.i.loopexit ]
  %142 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  store i64 %142, ptr %temp.i, align 8, !tbaa !9
  %tobool373.not1078.i = icmp eq i64 %142, 0
  br i1 %tobool373.not1078.i, label %_ZL14full_pawn_evalP7state_tP8pawntt_t.exit, label %while.body374.lr.ph.i

while.body374.lr.ph.i:                            ; preds = %while.end.i
  %b_score575.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 84
  %b_passed.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 40
  %b_strong_square.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 56
  %b_super_strong_square.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 72
  br label %while.body374.i

while.body374.i:                                  ; preds = %if.end735.i, %while.body374.lr.ph.i
  %urank3_mask.31080.i = phi i64 [ %urank3_mask.0.lcssa.i, %while.body374.lr.ph.i ], [ %urank3_mask.5.i, %if.end735.i ]
  %call375.i = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %temp.i)
  %and376.i = and i32 %call375.i, 7
  %idxprom377.i = zext nneg i32 %and376.i to i64
  %arrayidx378.i = getelementptr inbounds nuw i64, ptr @FileMask, i64 %idxprom377.i
  %143 = load i64, ptr %arrayidx378.i, align 8, !tbaa !9
  %144 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %and380.i = and i64 %144, %143
  switch i32 %and376.i, label %if.else386.i [
    i32 0, label %if.then382.i
    i32 7, label %if.then385.i
  ]

if.then382.i:                                     ; preds = %while.body374.i
  %145 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 8), align 8, !tbaa !9
  br label %if.end395.i

if.then385.i:                                     ; preds = %while.body374.i
  %146 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 48), align 16, !tbaa !9
  br label %if.end395.i

if.else386.i:                                     ; preds = %while.body374.i
  %arrayidx389.i = getelementptr i8, ptr %arrayidx378.i, i64 -8
  %147 = load i64, ptr %arrayidx389.i, align 8, !tbaa !9
  %arrayidx392.i = getelementptr inbounds nuw i8, ptr %arrayidx378.i, i64 8
  %148 = load i64, ptr %arrayidx392.i, align 8, !tbaa !9
  %or393.i = or i64 %148, %147
  br label %if.end395.i

if.end395.i:                                      ; preds = %if.else386.i, %if.then385.i, %if.then382.i
  %side_mask.3.i = phi i64 [ %145, %if.then382.i ], [ %146, %if.then385.i ], [ %or393.i, %if.else386.i ]
  %idxprom396.i = sext i32 %call375.i to i64
  %arrayidx397.i = getelementptr inbounds i64, ptr @FileDownMask, i64 %idxprom396.i
  %149 = load i64, ptr %arrayidx397.i, align 8, !tbaa !9
  %150 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %and399.i = and i64 %150, %149
  %tobool400.not.not.i = icmp eq i64 %and399.i, 0
  %call403.i = call noundef i32 @_Z8PopCounty(i64 noundef %and380.i)
  %cmp404.i = icmp slt i32 %call403.i, 2
  br i1 %cmp404.i, label %if.end413.i, label %if.then405.i

if.then405.i:                                     ; preds = %if.end395.i
  %shr406.i = ashr i32 %call375.i, 3
  %idxprom407.i = sext i32 %shr406.i to i64
  %arrayidx408.i = getelementptr inbounds i64, ptr @BelowMask, i64 %idxprom407.i
  %151 = load i64, ptr %arrayidx408.i, align 8, !tbaa !9
  %and409.i = and i64 %151, %and380.i
  %tobool410.not.i = icmp eq i64 %and409.i, 0
  br label %if.end413.i

if.end413.i:                                      ; preds = %if.then405.i, %if.end395.i
  %tobool604.not.i = phi i1 [ true, %if.end395.i ], [ %tobool410.not.i, %if.then405.i ]
  %152 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %and415.i = and i64 %152, %side_mask.3.i
  %tobool416.not.not.i = icmp eq i64 %and415.i, 0
  br i1 %tobool416.not.not.i, label %if.end504.i, label %if.else418.i

if.else418.i:                                     ; preds = %if.end413.i
  %shr421.i = ashr i32 %call375.i, 3
  %add422.i = add nsw i32 %shr421.i, 1
  %idxprom423.i = sext i32 %add422.i to i64
  %arrayidx424.i = getelementptr inbounds i64, ptr @AboveMask, i64 %idxprom423.i
  %153 = load i64, ptr %arrayidx424.i, align 8, !tbaa !9
  %and425.i = and i64 %153, %and415.i
  %tobool426.not.i = icmp eq i64 %and425.i, 0
  br i1 %tobool426.not.i, label %if.then427.i, label %if.end504.i

if.then427.i:                                     ; preds = %if.else418.i
  %arrayidx431.i = getelementptr inbounds i64, ptr @RankMask, i64 %idxprom423.i
  %154 = load i64, ptr %arrayidx431.i, align 8, !tbaa !9
  %cmp433.i = icmp slt i32 %shr421.i, 6
  br i1 %cmp433.i, label %if.end440.i, label %if.end449.thread.i

if.end440.i:                                      ; preds = %if.then427.i
  %155 = sext i32 %shr421.i to i64
  %156 = getelementptr i64, ptr @RankMask, i64 %155
  %arrayidx438.i = getelementptr i8, ptr %156, i64 16
  %157 = load i64, ptr %arrayidx438.i, align 8, !tbaa !9
  %or439.i = or i64 %157, %154
  %cmp442.not.i = icmp eq i32 %shr421.i, 5
  br i1 %cmp442.not.i, label %if.end449.i, label %if.then443.i

if.then443.i:                                     ; preds = %if.end440.i
  %arrayidx447.i = getelementptr i8, ptr %156, i64 24
  %158 = load i64, ptr %arrayidx447.i, align 8, !tbaa !9
  %or448.i = or i64 %158, %or439.i
  br label %if.end449.i

if.end449.i:                                      ; preds = %if.then443.i, %if.end440.i
  %urank3_mask.4.i = phi i64 [ %or448.i, %if.then443.i ], [ %urank3_mask.31080.i, %if.end440.i ]
  %and452.i = and i64 %154, %and415.i
  %tobool453.not.i = icmp eq i64 %and452.i, 0
  br i1 %tobool453.not.i, label %if.else476.i, label %if.then454.i

if.end449.thread.i:                               ; preds = %if.then427.i
  %and4521117.i = and i64 %154, %and415.i
  %tobool453.not1118.i = icmp eq i64 %and4521117.i, 0
  br label %if.end504.i

if.then454.i:                                     ; preds = %if.end449.i
  %159 = load i64, ptr %arrayidx378.i, align 8, !tbaa !9
  %160 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %or460.i = or i64 %160, %152
  %161 = and i64 %159, %or460.i
  %and461.i = and i64 %161, %154
  %tobool462.not.i = icmp eq i64 %and461.i, 0
  %162 = and i64 %or439.i, %side_mask.3.i
  %and470.i = and i64 %162, %160
  %tobool471.not.i = icmp ne i64 %and470.i, 0
  %narrow1070.i = select i1 %tobool471.not.i, i1 %tobool462.not.i, i1 false
  br label %if.end504.i

if.else476.i:                                     ; preds = %if.end449.i
  %cmp478.i = icmp ne i32 %shr421.i, 1
  %and482.i = and i64 %or439.i, %and415.i
  %tobool483.not.i = icmp eq i64 %and482.i, 0
  %or.cond1024.i = select i1 %cmp478.i, i1 true, i1 %tobool483.not.i
  br i1 %or.cond1024.i, label %if.end504.i, label %if.then484.i

if.then484.i:                                     ; preds = %if.else476.i
  %163 = load i64, ptr %arrayidx378.i, align 8, !tbaa !9
  %164 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %or490.i = or i64 %164, %152
  %165 = and i64 %163, %or490.i
  %and491.i = and i64 %165, %or439.i
  %tobool492.not.i = icmp eq i64 %and491.i, 0
  %and497.i = and i64 %urank3_mask.4.i, %and415.i
  %tobool498.not.i = icmp ne i64 %and497.i, 0
  %narrow1071.i = select i1 %tobool498.not.i, i1 %tobool492.not.i, i1 false
  br label %if.end504.i

if.end504.i:                                      ; preds = %if.then484.i, %if.else476.i, %if.then454.i, %if.end449.thread.i, %if.else418.i, %if.end413.i
  %urank3_mask.5.i = phi i64 [ %urank3_mask.31080.i, %if.else418.i ], [ %urank3_mask.4.i, %if.else476.i ], [ %urank3_mask.31080.i, %if.end413.i ], [ %urank3_mask.4.i, %if.then454.i ], [ %urank3_mask.4.i, %if.then484.i ], [ %urank3_mask.31080.i, %if.end449.thread.i ]
  %backward.5.shrunk.i = phi i1 [ false, %if.else418.i ], [ true, %if.else476.i ], [ false, %if.end413.i ], [ %narrow1070.i, %if.then454.i ], [ %narrow1071.i, %if.then484.i ], [ %tobool453.not1118.i, %if.end449.thread.i ]
  br i1 %tobool400.not.not.i, label %if.then506.i, label %if.end568.thread.i

if.then506.i:                                     ; preds = %if.end504.i
  %shr507.i = ashr i32 %call375.i, 3
  %idxprom508.i = sext i32 %shr507.i to i64
  %arrayidx509.i = getelementptr inbounds i64, ptr @BelowMask, i64 %idxprom508.i
  %166 = load i64, ptr %arrayidx509.i, align 8, !tbaa !9
  %167 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %168 = and i64 %166, %167
  %and512.i = and i64 %168, %side_mask.3.i
  %tobool513.not.i = icmp eq i64 %and512.i, 0
  br i1 %tobool513.not.i, label %if.then514.i, label %if.else518.i

if.then514.i:                                     ; preds = %if.then506.i
  %arrayidx516.i = getelementptr inbounds i64, ptr @Mask, i64 %idxprom396.i
  %169 = load i64, ptr %arrayidx516.i, align 8, !tbaa !9
  %170 = load i64, ptr %b_passed.i, align 8, !tbaa !20
  %or517.i = or i64 %170, %169
  store i64 %or517.i, ptr %b_passed.i, align 8, !tbaa !20
  br label %if.end568.i

if.else518.i:                                     ; preds = %if.then506.i
  %add522.i = add nsw i32 %shr507.i, 1
  %idxprom523.i = sext i32 %add522.i to i64
  %arrayidx524.i = getelementptr inbounds i64, ptr @AboveMask, i64 %idxprom523.i
  %171 = load i64, ptr %arrayidx524.i, align 8, !tbaa !9
  %172 = and i64 %side_mask.3.i, %171
  %and525.i = and i64 %172, %152
  %call526.i = call noundef i32 @_Z8PopCounty(i64 noundef %and525.i)
  %173 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %174 = load i64, ptr %arrayidx509.i, align 8, !tbaa !9
  %175 = and i64 %173, %174
  %and532.i = and i64 %175, %side_mask.3.i
  %call533.i = call noundef i32 @_Z8PopCounty(i64 noundef %and532.i)
  %176 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %177 = load i64, ptr %arrayidx524.i, align 8, !tbaa !9
  %178 = and i64 %176, %177
  %and540.i = and i64 %178, %side_mask.3.i
  %call541.i = call noundef i32 @_Z8PopCounty(i64 noundef %and540.i)
  %179 = add i32 %call533.i, %call541.i
  %sub543.i = sub i32 %call526.i, %179
  %cmp544.i = icmp sgt i32 %sub543.i, -1
  br i1 %cmp544.i, label %if.then545.i, label %if.end568.i

if.then545.i:                                     ; preds = %if.else518.i
  %180 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %181 = getelementptr i64, ptr @RankMask, i64 %idxprom508.i
  %arrayidx551.i = getelementptr i8, ptr %181, i64 -8
  %182 = load i64, ptr %arrayidx551.i, align 8, !tbaa !9
  %183 = and i64 %180, %182
  %and552.i = and i64 %183, %side_mask.3.i
  %call553.i = call noundef i32 @_Z8PopCounty(i64 noundef %and552.i)
  %184 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %arrayidx559.i = getelementptr inbounds i64, ptr @RankMask, i64 %idxprom523.i
  %185 = load i64, ptr %arrayidx559.i, align 8, !tbaa !9
  %186 = and i64 %184, %185
  %and560.i = and i64 %186, %side_mask.3.i
  %call561.i = call noundef i32 @_Z8PopCounty(i64 noundef %and560.i)
  %cmp563.not.i = icmp slt i32 %call553.i, %call561.i
  br label %if.end568.i

if.end568.i:                                      ; preds = %if.then545.i, %if.else518.i, %if.then514.i
  %tobool602.not.i = phi i1 [ true, %if.else518.i ], [ true, %if.then514.i ], [ %cmp563.not.i, %if.then545.i ]
  br i1 %cmp404.i, label %if.end578.thread1131.i, label %if.end578.thread.i

if.end568.thread.i:                               ; preds = %if.end504.i
  br i1 %cmp404.i, label %if.end578.i, label %if.else574.i

if.else574.i:                                     ; preds = %if.end568.thread.i
  %187 = load i32, ptr %b_score575.i, align 4, !tbaa !21
  %sub576.i = add nsw i32 %187, 5
  store i32 %sub576.i, ptr %b_score575.i, align 4, !tbaa !21
  br label %if.end578.i

if.end578.i:                                      ; preds = %if.else574.i, %if.end568.thread.i
  br i1 %tobool416.not.not.i, label %if.then580.i, label %if.else589.i

if.end578.thread1131.i:                           ; preds = %if.end568.i
  br i1 %tobool416.not.not.i, label %if.then580.thread.i, label %if.else589.thread1139.i

if.then580.thread.i:                              ; preds = %if.end578.thread1131.i
  %188 = load i32, ptr %b_score575.i, align 4, !tbaa !21
  %sub5841138.i = add nsw i32 %188, 20
  store i32 %sub5841138.i, ptr %b_score575.i, align 4, !tbaa !21
  br i1 %tobool602.not.i, label %if.end623.i, label %if.then603.i

if.end578.thread.i:                               ; preds = %if.end568.i
  %189 = load i32, ptr %b_score575.i, align 4, !tbaa !21
  %sub573.i = add nsw i32 %189, 10
  store i32 %sub573.i, ptr %b_score575.i, align 4, !tbaa !21
  br i1 %tobool416.not.not.i, label %if.then582.i, label %if.else589.thread.i

if.then580.i:                                     ; preds = %if.end578.i
  %190 = load i32, ptr %b_score575.i, align 4, !tbaa !21
  %sub587.i = add nsw i32 %190, 8
  br label %if.end623.sink.split.i

if.then582.i:                                     ; preds = %if.end578.thread.i
  %sub584.i = add nsw i32 %189, 30
  store i32 %sub584.i, ptr %b_score575.i, align 4, !tbaa !21
  br i1 %tobool602.not.i, label %if.end623.i, label %if.then603.i

if.else589.i:                                     ; preds = %if.end578.i
  br i1 %backward.5.shrunk.i, label %if.then591.i, label %if.end623.i

if.else589.thread1139.i:                          ; preds = %if.end578.thread1131.i
  br i1 %backward.5.shrunk.i, label %if.then591.thread.i, label %if.end601.i

if.then591.thread.i:                              ; preds = %if.else589.thread1139.i
  %191 = load i32, ptr %b_score575.i, align 4, !tbaa !21
  %sub5951145.i = add nsw i32 %191, 16
  store i32 %sub5951145.i, ptr %b_score575.i, align 4, !tbaa !21
  br i1 %tobool602.not.i, label %if.end623.i, label %if.then603.i

if.else589.thread.i:                              ; preds = %if.end578.thread.i
  br i1 %backward.5.shrunk.i, label %if.then593.i, label %if.end601.i

if.then591.i:                                     ; preds = %if.else589.i
  %192 = load i32, ptr %b_score575.i, align 4, !tbaa !21
  %sub598.i = add nsw i32 %192, 6
  br label %if.end623.sink.split.i

if.then593.i:                                     ; preds = %if.else589.thread.i
  %sub595.i = add nsw i32 %189, 26
  store i32 %sub595.i, ptr %b_score575.i, align 4, !tbaa !21
  br i1 %tobool602.not.i, label %if.end623.i, label %if.then603.i

if.end601.i:                                      ; preds = %if.else589.thread.i, %if.else589.thread1139.i
  br i1 %tobool602.not.i, label %if.end623.i, label %if.then603.i

if.then603.i:                                     ; preds = %if.end601.i, %if.then593.i, %if.then591.thread.i, %if.then582.i, %if.then580.thread.i
  %sub608.i = sub nsw i32 6, %shr507.i
  %idxprom609.i = sext i32 %sub608.i to i64
  %arrayidx610.i = getelementptr inbounds i32, ptr @_ZL11w_candidate, i64 %idxprom609.i
  %193 = load i32, ptr %arrayidx610.i, align 4, !tbaa !15
  br i1 %tobool604.not.i, label %if.then605.i, label %if.else614.i

if.then605.i:                                     ; preds = %if.then603.i
  %mul611.i = shl nsw i32 %193, 1
  %194 = load i32, ptr %b_score575.i, align 4, !tbaa !21
  %sub613.i = sub nsw i32 %194, %mul611.i
  br label %if.end623.sink.split.i

if.else614.i:                                     ; preds = %if.then603.i
  %195 = load i32, ptr %b_score575.i, align 4, !tbaa !21
  %sub621.i = sub nsw i32 %195, %193
  br label %if.end623.sink.split.i

if.end623.sink.split.i:                           ; preds = %if.else614.i, %if.then605.i, %if.then591.i, %if.then580.i
  %sub598.sink.i = phi i32 [ %sub598.i, %if.then591.i ], [ %sub587.i, %if.then580.i ], [ %sub613.i, %if.then605.i ], [ %sub621.i, %if.else614.i ]
  store i32 %sub598.sink.i, ptr %b_score575.i, align 4, !tbaa !21
  br label %if.end623.i

if.end623.i:                                      ; preds = %if.end623.sink.split.i, %if.end601.i, %if.then593.i, %if.then591.thread.i, %if.else589.i, %if.then582.i, %if.then580.thread.i
  %cmp625.i = icmp slt i32 %call375.i, 48
  br i1 %cmp625.i, label %if.then626.i, label %if.end735.i

if.then626.i:                                     ; preds = %if.end623.i
  %cond1029.i = icmp eq i32 %and376.i, 0
  br i1 %cond1029.i, label %if.then681.i, label %if.then628.i

if.then628.i:                                     ; preds = %if.then626.i
  %add629.i = add nsw i32 %call375.i, 7
  %and630.i = and i32 %add629.i, 7
  %idxprom631.i = sext i32 %add629.i to i64
  %arrayidx632.i = getelementptr inbounds i64, ptr @Mask, i64 %idxprom631.i
  %196 = load i64, ptr %arrayidx632.i, align 8, !tbaa !9
  %197 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %198 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %or635.i = or i64 %198, %197
  %and636.i = and i64 %or635.i, %196
  %tobool637.not.i = icmp eq i64 %and636.i, 0
  br i1 %tobool637.not.i, label %if.then638.i, label %if.end679.i

if.then638.i:                                     ; preds = %if.then628.i
  switch i32 %and630.i, label %if.else645.i [
    i32 0, label %if.then640.i
    i32 7, label %if.then644.i
  ]

if.then640.i:                                     ; preds = %if.then638.i
  %199 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 8), align 8, !tbaa !9
  br label %if.end654.i

if.then644.i:                                     ; preds = %if.then638.i
  %200 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 48), align 16, !tbaa !9
  br label %if.end654.i

if.else645.i:                                     ; preds = %if.then638.i
  %201 = zext nneg i32 %and630.i to i64
  %202 = getelementptr i64, ptr @FileMask, i64 %201
  %arrayidx648.i = getelementptr i8, ptr %202, i64 -8
  %203 = load i64, ptr %arrayidx648.i, align 8, !tbaa !9
  %arrayidx651.i = getelementptr inbounds nuw i8, ptr %202, i64 8
  %204 = load i64, ptr %arrayidx651.i, align 8, !tbaa !9
  %or652.i = or i64 %204, %203
  br label %if.end654.i

if.end654.i:                                      ; preds = %if.else645.i, %if.then644.i, %if.then640.i
  %side_mask.4.i = phi i64 [ %199, %if.then640.i ], [ %200, %if.then644.i ], [ %or652.i, %if.else645.i ]
  %shr655.i = ashr i32 %add629.i, 3
  %idxprom656.i = sext i32 %shr655.i to i64
  %arrayidx657.i = getelementptr inbounds i64, ptr @BelowMask, i64 %idxprom656.i
  %205 = load i64, ptr %arrayidx657.i, align 8, !tbaa !9
  %206 = and i64 %side_mask.4.i, %205
  %and660.i = and i64 %206, %197
  %tobool661.not.i = icmp eq i64 %and660.i, 0
  br i1 %tobool661.not.i, label %if.then662.i, label %if.end679.i

if.then662.i:                                     ; preds = %if.end654.i
  %207 = load i64, ptr %b_strong_square.i, align 8, !tbaa !22
  %and665.i = and i64 %207, %196
  %tobool666.not.i = icmp eq i64 %and665.i, 0
  br i1 %tobool666.not.i, label %if.else671.i, label %if.then667.i

if.then667.i:                                     ; preds = %if.then662.i
  %208 = load i64, ptr %b_super_strong_square.i, align 8, !tbaa !23
  %or670.i = or i64 %208, %196
  store i64 %or670.i, ptr %b_super_strong_square.i, align 8, !tbaa !23
  br label %if.end679.i

if.else671.i:                                     ; preds = %if.then662.i
  %or675.i = or i64 %207, %196
  store i64 %or675.i, ptr %b_strong_square.i, align 8, !tbaa !22
  br label %if.end679.i

if.end679.i:                                      ; preds = %if.else671.i, %if.then667.i, %if.end654.i, %if.then628.i
  %cmp680.not.i = icmp eq i32 %and376.i, 7
  br i1 %cmp680.not.i, label %if.end735.i, label %if.then681.i

if.then681.i:                                     ; preds = %if.end679.i, %if.then626.i
  %add682.i = add nsw i32 %call375.i, 9
  %and683.i = and i32 %add682.i, 7
  %idxprom684.i = sext i32 %add682.i to i64
  %arrayidx685.i = getelementptr inbounds i64, ptr @Mask, i64 %idxprom684.i
  %209 = load i64, ptr %arrayidx685.i, align 8, !tbaa !9
  %210 = load i64, ptr %arrayidx2.i, align 8, !tbaa !9
  %211 = load i64, ptr %arrayidx3.i, align 8, !tbaa !9
  %or688.i = or i64 %211, %210
  %and689.i = and i64 %or688.i, %209
  %tobool690.not.i = icmp eq i64 %and689.i, 0
  br i1 %tobool690.not.i, label %if.then691.i, label %if.end735.i

if.then691.i:                                     ; preds = %if.then681.i
  switch i32 %and683.i, label %if.else698.i [
    i32 0, label %if.then693.i
    i32 7, label %if.then697.i
  ]

if.then693.i:                                     ; preds = %if.then691.i
  %212 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 8), align 8, !tbaa !9
  br label %if.end707.i

if.then697.i:                                     ; preds = %if.then691.i
  %213 = load i64, ptr getelementptr inbounds nuw (i8, ptr @FileMask, i64 48), align 16, !tbaa !9
  br label %if.end707.i

if.else698.i:                                     ; preds = %if.then691.i
  %214 = zext nneg i32 %and683.i to i64
  %215 = getelementptr i64, ptr @FileMask, i64 %214
  %arrayidx701.i = getelementptr i8, ptr %215, i64 -8
  %216 = load i64, ptr %arrayidx701.i, align 8, !tbaa !9
  %arrayidx704.i = getelementptr inbounds nuw i8, ptr %215, i64 8
  %217 = load i64, ptr %arrayidx704.i, align 8, !tbaa !9
  %or705.i = or i64 %217, %216
  br label %if.end707.i

if.end707.i:                                      ; preds = %if.else698.i, %if.then697.i, %if.then693.i
  %side_mask.5.i = phi i64 [ %212, %if.then693.i ], [ %213, %if.then697.i ], [ %or705.i, %if.else698.i ]
  %shr708.i = ashr i32 %add682.i, 3
  %idxprom709.i = sext i32 %shr708.i to i64
  %arrayidx710.i = getelementptr inbounds i64, ptr @BelowMask, i64 %idxprom709.i
  %218 = load i64, ptr %arrayidx710.i, align 8, !tbaa !9
  %219 = and i64 %side_mask.5.i, %218
  %and713.i = and i64 %219, %210
  %tobool714.not.i = icmp eq i64 %and713.i, 0
  br i1 %tobool714.not.i, label %if.then715.i, label %if.end735.i

if.then715.i:                                     ; preds = %if.end707.i
  %220 = load i64, ptr %b_strong_square.i, align 8, !tbaa !22
  %and719.i = and i64 %220, %209
  %tobool720.not.i = icmp eq i64 %and719.i, 0
  br i1 %tobool720.not.i, label %if.else726.i, label %if.then721.i

if.then721.i:                                     ; preds = %if.then715.i
  %221 = load i64, ptr %b_super_strong_square.i, align 8, !tbaa !23
  %or725.i = or i64 %221, %209
  store i64 %or725.i, ptr %b_super_strong_square.i, align 8, !tbaa !23
  br label %if.end735.i

if.else726.i:                                     ; preds = %if.then715.i
  %or730.i = or i64 %220, %209
  store i64 %or730.i, ptr %b_strong_square.i, align 8, !tbaa !22
  br label %if.end735.i

if.end735.i:                                      ; preds = %if.else726.i, %if.then721.i, %if.end707.i, %if.then681.i, %if.end679.i, %if.end623.i
  %.pr1049.i = load i64, ptr %temp.i, align 8, !tbaa !9
  %tobool373.not.i = icmp eq i64 %.pr1049.i, 0
  br i1 %tobool373.not.i, label %_ZL14full_pawn_evalP7state_tP8pawntt_t.exit.loopexit, label %while.body374.i, !llvm.loop !24

_ZL14full_pawn_evalP7state_tP8pawntt_t.exit.loopexit: ; preds = %if.end735.i
  br label %_ZL14full_pawn_evalP7state_tP8pawntt_t.exit

_ZL14full_pawn_evalP7state_tP8pawntt_t.exit:      ; preds = %_ZL14full_pawn_evalP7state_tP8pawntt_t.exit.loopexit, %while.end.i
  %222 = load i64, ptr @WhiteStrongSquareMask, align 8, !tbaa !9
  %w_strong_square737.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 48
  %223 = load i64, ptr %w_strong_square737.i, align 8, !tbaa !16
  %224 = load i64, ptr @BlackStrongSquareMask, align 8, !tbaa !9
  %b_strong_square739.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 56
  %225 = load i64, ptr %b_strong_square739.i, align 8, !tbaa !22
  %w_super_strong_square741.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 64
  %226 = load i64, ptr %w_super_strong_square741.i, align 8, !tbaa !17
  %and742.i = and i64 %226, %222
  store i64 %and742.i, ptr %w_super_strong_square741.i, align 8, !tbaa !17
  %b_super_strong_square743.i = getelementptr inbounds nuw i8, ptr %arrayidx2, i64 72
  %227 = load i64, ptr %b_super_strong_square743.i, align 8, !tbaa !23
  %and744.i = and i64 %227, %224
  store i64 %and744.i, ptr %b_super_strong_square743.i, align 8, !tbaa !23
  %and7421150.i = xor i64 %226, %223
  %xor.i = and i64 %and7421150.i, %222
  store i64 %xor.i, ptr %w_strong_square737.i, align 8, !tbaa !16
  %and7441151.i = xor i64 %227, %225
  %xor749.i = and i64 %and7441151.i, %224
  store i64 %xor749.i, ptr %b_strong_square739.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %temp.i) #4
  %228 = load i64, ptr %pawnhash, align 8, !tbaa !0
  store i64 %228, ptr %arrayidx2, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %_ZL14full_pawn_evalP7state_tP8pawntt_t.exit, %entry
  ret ptr %arrayidx2
}

declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z8PopCounty(i64 noundef) local_unnamed_addr #3

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!0 = !{!1, !5, i64 488}
!1 = !{!"_ZTS7state_t", !2, i64 0, !3, i64 4, !5, i64 264, !5, i64 272, !5, i64 280, !3, i64 288, !2, i64 392, !2, i64 396, !3, i64 400, !2, i64 452, !2, i64 456, !2, i64 460, !2, i64 464, !2, i64 468, !2, i64 472, !2, i64 476, !5, i64 480, !5, i64 488, !3, i64 496, !3, i64 2544, !3, i64 2800, !3, i64 3056, !5, i64 4080, !5, i64 4088, !2, i64 4096, !3, i64 4100, !2, i64 4356, !2, i64 4360, !2, i64 4364, !2, i64 4368, !2, i64 4372, !2, i64 4376, !2, i64 4380, !2, i64 4384, !2, i64 4388, !2, i64 4392, !3, i64 4400}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"long long", !3, i64 0}
!6 = !{!1, !2, i64 0}
!7 = !{!8, !5, i64 0}
!8 = !{!"_ZTS8pawntt_t", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !2, i64 80, !2, i64 84}
!9 = !{!5, !5, i64 0}
!10 = !{!8, !5, i64 16}
!11 = !{!8, !5, i64 24}
!12 = !{!8, !5, i64 8}
!13 = !{!8, !5, i64 32}
!14 = !{!8, !2, i64 80}
!15 = !{!2, !2, i64 0}
!16 = !{!8, !5, i64 48}
!17 = !{!8, !5, i64 64}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!8, !5, i64 40}
!21 = !{!8, !2, i64 84}
!22 = !{!8, !5, i64 56}
!23 = !{!8, !5, i64 72}
!24 = distinct !{!24, !19}
