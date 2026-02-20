; ModuleID = '/tmp/tmp.kPZr5TYzpk/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/recog.c"
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

@volatile_ok = external dso_local local_unnamed_addr global i32, align 4
@reload_completed = external dso_local local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@flag_pic = external local_unnamed_addr global i32, align 4
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @general_operand(ptr noundef %op, i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %bf.load = load i32, ptr %op, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %mode, 0
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %mode.addr.0 = select i1 %cmp, i32 %bf.clear2, i32 %mode
  %0 = and i32 %bf.load, 16711680
  %cmp6 = icmp eq i32 %0, 0
  %cmp7 = icmp ne i32 %mode.addr.0, 0
  %or.cond = and i1 %cmp6, %cmp7
  br i1 %or.cond, label %land.lhs.true8, label %if.end18

land.lhs.true8:                                   ; preds = %entry
  %idxprom = zext i32 %mode.addr.0 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr @mode_class, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, -2
  %switch = icmp eq i8 %2, 2
  br i1 %switch, label %if.end18, label %cleanup193

if.end18:                                         ; preds = %land.lhs.true8, %entry
  %cmp21 = icmp eq i32 %bf.clear, 30
  %or.cond196 = and i1 %cmp21, %cmp7
  br i1 %or.cond196, label %land.lhs.true26, label %if.end33

land.lhs.true26:                                  ; preds = %if.end18
  %u = getelementptr inbounds nuw i8, ptr %op, i64 8
  %3 = load i64, ptr %u, align 8
  %call = tail call i64 @trunc_int_for_mode(i64 noundef %3, i32 noundef %mode.addr.0) #2
  %4 = load i64, ptr %u, align 8
  %cmp30.not = icmp eq i64 %call, %4
  br i1 %cmp30.not, label %if.end33, label %cleanup193

if.end33:                                         ; preds = %land.lhs.true26, %if.end18
  %bf.load34 = load i32, ptr %op, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %idxprom36 = zext nneg i32 %bf.clear35 to i64
  %arrayidx37 = getelementptr inbounds nuw i32, ptr @rtx_class, i64 %idxprom36
  %5 = load i32, ptr %arrayidx37, align 4
  %cmp38 = icmp eq i32 %5, 9
  br i1 %cmp38, label %if.then40, label %if.end62

if.then40:                                        ; preds = %if.end33
  %bf.lshr42 = lshr i32 %bf.load34, 16
  %bf.clear43 = and i32 %bf.lshr42, 255
  %cmp44 = icmp eq i32 %bf.clear43, 0
  br i1 %cmp44, label %land.lhs.true54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then40
  %cmp49 = icmp eq i32 %bf.clear43, %mode.addr.0
  %cmp52 = icmp eq i32 %mode.addr.0, 0
  %or.cond197 = or i1 %cmp52, %cmp49
  br i1 %or.cond197, label %land.lhs.true54, label %cleanup193

land.lhs.true54:                                  ; preds = %lor.lhs.false, %if.then40
  %6 = load i32, ptr @flag_pic, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.rhs, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %land.lhs.true54
  %call56 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %op) #2
  %tobool58.not = icmp eq i8 %call56, 0
  br i1 %tobool58.not, label %cleanup193, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false55, %land.lhs.true54
  %call59 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %op) #2
  %tobool61 = icmp ne i8 %call59, 0
  br label %cleanup193

if.end62:                                         ; preds = %if.end33
  %bf.lshr64 = lshr i32 %bf.load34, 16
  %bf.clear65 = and i32 %bf.lshr64, 255
  %cmp66.not = icmp eq i32 %bf.clear65, %mode.addr.0
  br i1 %cmp66.not, label %if.end69, label %cleanup193

if.end69:                                         ; preds = %if.end62
  %cmp70 = icmp eq i32 %bf.clear, 39
  br i1 %cmp70, label %if.then72, label %if.end148

if.then72:                                        ; preds = %if.end69
  %u73 = getelementptr inbounds nuw i8, ptr %op, i64 8
  %7 = load ptr, ptr %u73, align 8
  %8 = load i32, ptr @reload_completed, align 4
  %tobool75.not = icmp eq i32 %8, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %if.end109

land.lhs.true76:                                  ; preds = %if.then72
  %bf.load77 = load i32, ptr %7, align 8
  %bf.clear78 = and i32 %bf.load77, 65535
  %cmp79 = icmp eq i32 %bf.clear78, 43
  br i1 %cmp79, label %land.lhs.true81, label %land.lhs.true98

land.lhs.true81:                                  ; preds = %land.lhs.true76
  %idxprom82 = zext nneg i32 %mode.addr.0 to i64
  %arrayidx83 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom82
  %9 = load i8, ptr %arrayidx83, align 1
  %bf.lshr87 = lshr i32 %bf.load77, 16
  %bf.clear88 = and i32 %bf.lshr87, 255
  %idxprom89 = zext nneg i32 %bf.clear88 to i64
  %arrayidx90 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom89
  %10 = load i8, ptr %arrayidx90, align 1
  %cmp93 = icmp ugt i8 %9, %10
  br i1 %cmp93, label %cleanup193, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %land.lhs.true81, %land.lhs.true76
  %arrayidx100 = getelementptr inbounds nuw i8, ptr %op, i64 16
  %11 = load i32, ptr %arrayidx100, align 8
  %cmp101.not = icmp eq i32 %11, 0
  br i1 %cmp101.not, label %if.end109, label %land.lhs.true103

land.lhs.true103:                                 ; preds = %land.lhs.true98
  %bf.load104 = load i32, ptr %7, align 8
  %bf.clear105 = and i32 %bf.load104, 65535
  %cmp106 = icmp eq i32 %bf.clear105, 43
  br i1 %cmp106, label %cleanup193, label %if.end109

if.end109:                                        ; preds = %land.lhs.true103, %land.lhs.true98, %if.then72
  %idxprom113 = zext nneg i32 %bf.clear65 to i64
  %arrayidx114 = getelementptr inbounds nuw i8, ptr @mode_class, i64 %idxprom113
  %12 = load i8, ptr %arrayidx114, align 1
  %13 = and i8 %12, -2
  %switch240 = icmp eq i8 %13, 8
  br i1 %switch240, label %land.lhs.true127, label %if.end145

land.lhs.true127:                                 ; preds = %if.end109
  %arrayidx132 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom113
  %14 = load i8, ptr %arrayidx132, align 1
  %bf.load135 = load i32, ptr %7, align 8
  %bf.lshr136 = lshr i32 %bf.load135, 16
  %bf.clear137 = and i32 %bf.lshr136, 255
  %idxprom138 = zext nneg i32 %bf.clear137 to i64
  %arrayidx139 = getelementptr inbounds nuw i8, ptr @mode_size, i64 %idxprom138
  %15 = load i8, ptr %arrayidx139, align 1
  %cmp142 = icmp ugt i8 %14, %15
  br i1 %cmp142, label %cleanup193, label %if.end145

if.end145:                                        ; preds = %land.lhs.true127, %if.end109
  %bf.load146 = load i32, ptr %7, align 8
  %bf.clear147 = and i32 %bf.load146, 65535
  br label %if.end148

if.end148:                                        ; preds = %if.end145, %if.end69
  %code.1 = phi i32 [ %bf.clear147, %if.end145 ], [ %bf.clear, %if.end69 ]
  %op.addr.1 = phi ptr [ %7, %if.end145 ], [ %op, %if.end69 ]
  %trunc = trunc nuw i32 %code.1 to i16
  switch i16 %trunc, label %if.end192 [
    i16 37, label %if.then151
    i16 43, label %if.then163
  ]

if.then151:                                       ; preds = %if.end148
  %16 = getelementptr i8, ptr %op.addr.1, i64 8
  %op.addr.1.val241 = load i32, ptr %16, align 8
  %cmp153 = icmp ugt i32 %op.addr.1.val241, 52
  br i1 %cmp153, label %cleanup193, label %lor.rhs

lor.rhs:                                          ; preds = %if.then151
  %idxprom156 = zext nneg i32 %op.addr.1.val241 to i64
  %arrayidx157 = getelementptr inbounds nuw i32, ptr @regclass_map, i64 %idxprom156
  %17 = load i32, ptr %arrayidx157, align 4
  %cmp158 = icmp ne i32 %17, 0
  br label %cleanup193

if.then163:                                       ; preds = %if.end148
  %u164 = getelementptr inbounds nuw i8, ptr %op.addr.1, i64 8
  %18 = load ptr, ptr %u164, align 8
  %19 = load i32, ptr @volatile_ok, align 4
  %tobool166.not = icmp eq i32 %19, 0
  br i1 %tobool166.not, label %land.lhs.true167, label %if.end173

land.lhs.true167:                                 ; preds = %if.then163
  %bf.load168 = load i32, ptr %op.addr.1, align 8
  %20 = and i32 %bf.load168, 134217728
  %tobool171.not = icmp eq i32 %20, 0
  br i1 %tobool171.not, label %if.end173, label %cleanup193

if.end173:                                        ; preds = %land.lhs.true167, %if.then163
  %bf.load174 = load i32, ptr %op.addr.1, align 8
  %bf.lshr175 = lshr i32 %bf.load174, 16
  %bf.clear176 = and i32 %bf.lshr175, 255
  %arrayidx178 = getelementptr inbounds nuw i8, ptr %op.addr.1, i64 16
  %21 = load ptr, ptr %arrayidx178, align 8
  %cmp179 = icmp eq ptr %21, null
  br i1 %cmp179, label %cleanup189, label %cond.false

cond.false:                                       ; preds = %if.end173
  %addrspace = getelementptr inbounds nuw i8, ptr %21, i64 32
  %22 = load i8, ptr %addrspace, align 8
  br label %cleanup189

cleanup189:                                       ; preds = %cond.false, %if.end173
  %cond = phi i8 [ %22, %cond.false ], [ 0, %if.end173 ]
  %23 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @targetm, i64 1200), align 8
  %call.i = tail call zeroext i8 %23(i32 noundef %bf.clear176, ptr noundef %18, i8 noundef zeroext 0, i8 noundef zeroext %cond) #2
  %tobool186.not = icmp eq i8 %call.i, 0
  br i1 %tobool186.not, label %if.end192, label %cleanup193

if.end192:                                        ; preds = %cleanup189, %if.end148
  br label %cleanup193

cleanup193:                                       ; preds = %if.end192, %cleanup189, %land.lhs.true167, %lor.rhs, %if.then151, %land.lhs.true127, %land.lhs.true103, %land.lhs.true81, %if.end62, %land.rhs, %lor.lhs.false55, %lor.lhs.false, %land.lhs.true26, %land.lhs.true8
  %retval.3.shrunk = phi i1 [ false, %if.end192 ], [ true, %cleanup189 ], [ false, %land.lhs.true8 ], [ false, %land.lhs.true26 ], [ false, %lor.lhs.false55 ], [ %tobool61, %land.rhs ], [ false, %lor.lhs.false ], [ false, %if.end62 ], [ true, %if.then151 ], [ %cmp158, %lor.rhs ], [ false, %land.lhs.true127 ], [ false, %land.lhs.true103 ], [ false, %land.lhs.true81 ], [ false, %land.lhs.true167 ]
  %retval.3 = zext i1 %retval.3.shrunk to i32
  ret i32 %retval.3
}

declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @legitimate_pic_operand_p(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @legitimate_constant_p(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
