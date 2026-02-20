; ModuleID = '/tmp/tmp.05UXZBhhpb/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/502.gcc_r/src/real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_value = type { i32, [3 x i64] }

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nounwind uwtable
define hidden fastcc zeroext range(i8 0, 2) i8 @do_add(ptr noundef captures(none) %r, ptr noundef readonly captures(none) %a, ptr noundef readonly captures(none) %b, i32 noundef range(i32 0, 2) %subtract_p) unnamed_addr #1 {
entry:
  %t = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %t) #5
  %bf.load = load i32, ptr %a, align 8
  %bf.lshr = lshr i32 %bf.load, 3
  %bf.clear = and i32 %bf.lshr, 1
  %bf.load1 = load i32, ptr %b, align 8
  %bf.lshr175 = xor i32 %bf.load1, %bf.load
  %bf.clear174 = lshr i32 %bf.lshr175, 3
  %xor = and i32 %bf.clear174, 1
  %xor4 = xor i32 %xor, %subtract_p
  %bf.clear6 = shl i32 %bf.load, 2
  %shl = and i32 %bf.clear6, 12
  %bf.clear8 = and i32 %bf.load1, 3
  %or = or disjoint i32 %shl, %bf.clear8
  %b.addr.1.sroa.gep = getelementptr inbounds nuw i8, ptr %t, i64 8
  %b.addr.1.sroa.gep214 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %b.addr.1.sroa.gep216 = getelementptr inbounds nuw i8, ptr %t, i64 16
  %b.addr.1.sroa.gep217 = getelementptr inbounds nuw i8, ptr %b, i64 16
  %b.addr.1.sroa.gep219 = getelementptr inbounds nuw i8, ptr %t, i64 24
  %b.addr.1.sroa.gep220 = getelementptr inbounds nuw i8, ptr %b, i64 24
  %b.addr.1.sroa.gep222 = getelementptr inbounds nuw i8, ptr %t, i64 24
  %b.addr.1.sroa.gep223 = getelementptr inbounds nuw i8, ptr %b, i64 24
  %b.addr.1.sroa.gep225 = getelementptr inbounds nuw i8, ptr %t, i64 16
  %b.addr.1.sroa.gep226 = getelementptr inbounds nuw i8, ptr %b, i64 16
  %b.addr.1.sroa.gep228 = getelementptr inbounds nuw i8, ptr %t, i64 8
  %b.addr.1.sroa.gep229 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %b.addr.1.sroa.gep231 = getelementptr inbounds nuw i8, ptr %t, i64 16
  %b.addr.1.sroa.gep232 = getelementptr inbounds nuw i8, ptr %b, i64 16
  %b.addr.1.sroa.gep234 = getelementptr inbounds nuw i8, ptr %t, i64 24
  %b.addr.1.sroa.gep235 = getelementptr inbounds nuw i8, ptr %b, i64 24
  %b.addr.1.sroa.gep237 = getelementptr inbounds nuw i8, ptr %t, i64 24
  %b.addr.1.sroa.gep238 = getelementptr inbounds nuw i8, ptr %b, i64 24
  switch i32 %or, label %default.unreachable [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb9
    i32 3, label %sw.bb9
    i32 7, label %sw.bb9
    i32 11, label %sw.bb9
    i32 15, label %sw.bb9
    i32 6, label %sw.bb9
    i32 4, label %sw.bb13
    i32 8, label %sw.bb13
    i32 12, label %sw.bb13
    i32 13, label %sw.bb13
    i32 14, label %sw.bb13
    i32 9, label %sw.bb13
    i32 10, label %sw.bb14
    i32 5, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq i32 %xor, %subtract_p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %r, i8 0, i64 32, i1 false)
  %0 = shl nuw nsw i32 %bf.clear, 3
  %bf.shl.i = select i1 %tobool.not, i32 %0, i32 0
  store i32 %bf.shl.i, ptr %r, align 8
  br label %cleanup

sw.bb9:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %r, ptr noundef nonnull align 8 dereferenceable(32) %b, i64 32, i1 false)
  %xor10 = xor i32 %xor4, %bf.clear
  %bf.load11 = load i32, ptr %r, align 8
  %bf.shl = shl nuw nsw i32 %xor10, 3
  %bf.clear12 = and i32 %bf.load11, -9
  %bf.set = or disjoint i32 %bf.clear12, %bf.shl
  store i32 %bf.set, ptr %r, align 8
  br label %cleanup

sw.bb13:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %r, ptr noundef nonnull align 8 dereferenceable(32) %a, i64 32, i1 false)
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %tobool15.not = icmp eq i32 %xor, %subtract_p
  br i1 %tobool15.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %r, i8 0, i64 32, i1 false)
  store i32 35, ptr %r, align 8
  br label %cleanup

if.else:                                          ; preds = %sw.bb14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %r, ptr noundef nonnull align 8 dereferenceable(32) %a, i64 32, i1 false)
  br label %cleanup

default.unreachable:                              ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %entry
  %sub = ashr i32 %bf.load, 6
  %sub22 = ashr i32 %bf.load1, 6
  %sub23 = sub nsw i32 %sub, %sub22
  %cmp = icmp slt i32 %sub23, 0
  br i1 %cmp, label %if.end28.thread, label %if.end28

if.end28.thread:                                  ; preds = %sw.epilog
  %sub26 = sub nsw i32 0, %sub23
  %xor27 = xor i32 %xor4, %bf.clear
  %bf.load29203 = load i32, ptr %b, align 8
  %sub32204 = ashr i32 %bf.load29203, 6
  br label %if.then34

if.end28:                                         ; preds = %sw.epilog
  %bf.load29 = load i32, ptr %a, align 8
  %sub32 = ashr i32 %bf.load29, 6
  %cmp33.not = icmp eq i32 %sub23, 0
  br i1 %cmp33.not, label %if.end46, label %if.then34

if.then34:                                        ; preds = %if.end28, %if.end28.thread
  %sub32212 = phi i32 [ %sub32204, %if.end28.thread ], [ %sub32, %if.end28 ]
  %sign.0210 = phi i32 [ %xor27, %if.end28.thread ], [ %bf.clear, %if.end28 ]
  %dexp.0209 = phi i32 [ %sub26, %if.end28.thread ], [ %sub23, %if.end28 ]
  %b.addr.0208 = phi ptr [ %a, %if.end28.thread ], [ %b, %if.end28 ]
  %a.addr.0206 = phi ptr [ %b, %if.end28.thread ], [ %a, %if.end28 ]
  %cmp35 = icmp samesign ugt i32 %dexp.0209, 191
  br i1 %cmp35, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.then34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %r, ptr noundef nonnull align 8 dereferenceable(32) %a.addr.0206, i64 32, i1 false)
  %bf.load37 = load i32, ptr %r, align 8
  %bf.shl39 = shl nuw nsw i32 %sign.0210, 3
  %bf.clear40 = and i32 %bf.load37, -9
  %bf.set41 = or i32 %bf.clear40, %bf.shl39
  store i32 %bf.set41, ptr %r, align 8
  br label %cleanup

if.end42:                                         ; preds = %if.then34
  %call = call fastcc zeroext i8 @sticky_rshift_significand(ptr noundef nonnull %t, ptr noundef nonnull %b.addr.0208, i32 noundef %dexp.0209)
  br label %if.end46

if.end46:                                         ; preds = %if.end42, %if.end28
  %sub32213 = phi i32 [ %sub32212, %if.end42 ], [ %sub32, %if.end28 ]
  %sign.0211 = phi i32 [ %sign.0210, %if.end42 ], [ %bf.clear, %if.end28 ]
  %a.addr.0207 = phi ptr [ %a.addr.0206, %if.end42 ], [ %a, %if.end28 ]
  %b.addr.1.sroa.phi = phi ptr [ %b.addr.1.sroa.gep, %if.end42 ], [ %b.addr.1.sroa.gep214, %if.end28 ]
  %b.addr.1.sroa.phi215 = phi ptr [ %b.addr.1.sroa.gep216, %if.end42 ], [ %b.addr.1.sroa.gep217, %if.end28 ]
  %b.addr.1.sroa.phi218 = phi ptr [ %b.addr.1.sroa.gep219, %if.end42 ], [ %b.addr.1.sroa.gep220, %if.end28 ]
  %b.addr.1.sroa.phi221 = phi ptr [ %b.addr.1.sroa.gep222, %if.end42 ], [ %b.addr.1.sroa.gep223, %if.end28 ]
  %b.addr.1.sroa.phi224 = phi ptr [ %b.addr.1.sroa.gep225, %if.end42 ], [ %b.addr.1.sroa.gep226, %if.end28 ]
  %b.addr.1.sroa.phi227 = phi ptr [ %b.addr.1.sroa.gep228, %if.end42 ], [ %b.addr.1.sroa.gep229, %if.end28 ]
  %b.addr.1.sroa.phi230 = phi ptr [ %b.addr.1.sroa.gep231, %if.end42 ], [ %b.addr.1.sroa.gep232, %if.end28 ]
  %b.addr.1.sroa.phi233 = phi ptr [ %b.addr.1.sroa.gep234, %if.end42 ], [ %b.addr.1.sroa.gep235, %if.end28 ]
  %b.addr.1.sroa.phi236 = phi ptr [ %b.addr.1.sroa.gep237, %if.end42 ], [ %b.addr.1.sroa.gep238, %if.end28 ]
  %b.addr.1 = phi ptr [ %t, %if.end42 ], [ %b, %if.end28 ]
  %inexact.0 = phi i8 [ %call, %if.end42 ], [ 0, %if.end28 ]
  %tobool47.not = icmp eq i32 %xor, %subtract_p
  br i1 %tobool47.not, label %if.else55, label %if.then48

if.then48:                                        ; preds = %if.end46
  %sig9.i = getelementptr inbounds nuw i8, ptr %r, i64 8
  %sig.i = getelementptr inbounds nuw i8, ptr %a.addr.0207, i64 8
  %1 = load i64, ptr %sig.i, align 8
  %2 = load i64, ptr %b.addr.1.sroa.phi, align 8
  %sub.i = sub i64 %1, %2
  %tobool.not.i = icmp eq i8 %inexact.0, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then48
  %dec.i = add i64 %sub.i, -1
  %or24.not.i = icmp ugt i64 %1, %2
  store i64 %dec.i, ptr %sig9.i, align 8
  %arrayidx.128.i = getelementptr inbounds nuw i8, ptr %a.addr.0207, i64 16
  %3 = load i64, ptr %arrayidx.128.i, align 8
  %4 = load i64, ptr %b.addr.1.sroa.phi215, align 8
  %sub.130.i = sub i64 %3, %4
  br i1 %or24.not.i, label %if.end.1.i, label %if.then.1.i

if.end.i:                                         ; preds = %if.then48
  %cmp7.i = icmp ugt i64 %2, %1
  store i64 %sub.i, ptr %sig9.i, align 8
  %arrayidx.1.i = getelementptr inbounds nuw i8, ptr %a.addr.0207, i64 16
  %5 = load i64, ptr %arrayidx.1.i, align 8
  %6 = load i64, ptr %b.addr.1.sroa.phi224, align 8
  %sub.1.i = sub i64 %5, %6
  br i1 %cmp7.i, label %if.then.1.i, label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i, %if.then.i
  %sub.131.i = phi i64 [ %sub.130.i, %if.then.i ], [ %sub.1.i, %if.end.i ]
  %7 = phi i64 [ %4, %if.then.i ], [ %6, %if.end.i ]
  %8 = phi i64 [ %3, %if.then.i ], [ %5, %if.end.i ]
  %cmp4.1.i = icmp ugt i64 %7, %8
  %dec.1.i = add i64 %sub.131.i, -1
  %cmp5.1.i = icmp eq i64 %sub.131.i, 0
  %or24.1.i = or i1 %cmp5.1.i, %cmp4.1.i
  %arrayidx11.133.i = getelementptr inbounds nuw i8, ptr %r, i64 16
  store i64 %dec.1.i, ptr %arrayidx11.133.i, align 8
  %arrayidx.234.i = getelementptr inbounds nuw i8, ptr %a.addr.0207, i64 24
  %9 = load i64, ptr %arrayidx.234.i, align 8
  %10 = load i64, ptr %b.addr.1.sroa.phi218, align 8
  %sub.236.i = sub i64 %9, %10
  br i1 %or24.1.i, label %if.then.2.i, label %if.else.2.i

if.end.1.i:                                       ; preds = %if.end.i, %if.then.i
  %sub.132.i = phi i64 [ %sub.130.i, %if.then.i ], [ %sub.1.i, %if.end.i ]
  %11 = phi i64 [ %4, %if.then.i ], [ %6, %if.end.i ]
  %12 = phi i64 [ %3, %if.then.i ], [ %5, %if.end.i ]
  %cmp7.1.i = icmp ugt i64 %11, %12
  %arrayidx11.1.i = getelementptr inbounds nuw i8, ptr %r, i64 16
  store i64 %sub.132.i, ptr %arrayidx11.1.i, align 8
  %arrayidx.2.i = getelementptr inbounds nuw i8, ptr %a.addr.0207, i64 24
  %13 = load i64, ptr %arrayidx.2.i, align 8
  %14 = load i64, ptr %b.addr.1.sroa.phi221, align 8
  %sub.2.i = sub i64 %13, %14
  br i1 %cmp7.1.i, label %if.then.2.i, label %if.else.2.i

if.then.2.i:                                      ; preds = %if.end.1.i, %if.then.1.i
  %sub.237.i = phi i64 [ %sub.236.i, %if.then.1.i ], [ %sub.2.i, %if.end.1.i ]
  %15 = phi i64 [ %10, %if.then.1.i ], [ %14, %if.end.1.i ]
  %16 = phi i64 [ %9, %if.then.1.i ], [ %13, %if.end.1.i ]
  %cmp4.2.i = icmp ugt i64 %15, %16
  %dec.2.i = add i64 %sub.237.i, -1
  %cmp5.2.i = icmp eq i64 %sub.237.i, 0
  %or24.2.i = or i1 %cmp5.2.i, %cmp4.2.i
  br label %sub_significands.exit

if.else.2.i:                                      ; preds = %if.end.1.i, %if.then.1.i
  %sub.238.i = phi i64 [ %sub.236.i, %if.then.1.i ], [ %sub.2.i, %if.end.1.i ]
  %17 = phi i64 [ %10, %if.then.1.i ], [ %14, %if.end.1.i ]
  %18 = phi i64 [ %9, %if.then.1.i ], [ %13, %if.end.1.i ]
  %cmp7.2.i = icmp ugt i64 %17, %18
  br label %sub_significands.exit

sub_significands.exit:                            ; preds = %if.else.2.i, %if.then.2.i
  %carry.addr.1.in.2.i = phi i1 [ %or24.2.i, %if.then.2.i ], [ %cmp7.2.i, %if.else.2.i ]
  %ri.0.2.i = phi i64 [ %dec.2.i, %if.then.2.i ], [ %sub.238.i, %if.else.2.i ]
  %arrayidx11.2.i = getelementptr inbounds nuw i8, ptr %r, i64 24
  store i64 %ri.0.2.i, ptr %arrayidx11.2.i, align 8
  br i1 %carry.addr.1.in.2.i, label %if.then52, label %if.end70

if.then52:                                        ; preds = %sub_significands.exit
  %xor53 = xor i32 %sign.0211, 1
  %19 = load i64, ptr %sig9.i, align 8
  %tobool1.not.i = icmp eq i64 %19, 0
  %sub.i178 = sub i64 0, %19
  store i64 %sub.i178, ptr %sig9.i, align 8
  %arrayidx.1.i179 = getelementptr inbounds nuw i8, ptr %r, i64 16
  %20 = load i64, ptr %arrayidx.1.i179, align 8
  %not.1.i = xor i64 %20, -1
  %tobool1.not.1.i = icmp eq i64 %20, 0
  %sub.1.i180 = sub i64 0, %20
  %ri.0.1.i = select i1 %tobool1.not.i, i64 %sub.1.i180, i64 %not.1.i
  %narrow.1.i = select i1 %tobool1.not.i, i1 %tobool1.not.1.i, i1 false
  store i64 %ri.0.1.i, ptr %arrayidx.1.i179, align 8
  %not.2.i = xor i64 %ri.0.2.i, -1
  %sub.2.i182 = sub i64 0, %ri.0.2.i
  %ri.0.2.i183 = select i1 %narrow.1.i, i64 %sub.2.i182, i64 %not.2.i
  store i64 %ri.0.2.i183, ptr %arrayidx11.2.i, align 8
  br label %if.end70

if.else55:                                        ; preds = %if.end46
  %sig13.i = getelementptr inbounds nuw i8, ptr %r, i64 8
  %sig.i186 = getelementptr inbounds nuw i8, ptr %a.addr.0207, i64 8
  %21 = load i64, ptr %sig.i186, align 8
  %22 = load i64, ptr %b.addr.1.sroa.phi227, align 8
  %add.i = add i64 %22, %21
  %cmp10.not.i = icmp ult i64 %add.i, %21
  store i64 %add.i, ptr %sig13.i, align 8
  %arrayidx.1.i187 = getelementptr inbounds nuw i8, ptr %a.addr.0207, i64 16
  %23 = load i64, ptr %arrayidx.1.i187, align 8
  %24 = load i64, ptr %b.addr.1.sroa.phi230, align 8
  %add.1.i = add i64 %24, %23
  %cmp4.1.i189 = icmp ult i64 %add.1.i, %23
  br i1 %cmp10.not.i, label %if.then.1.i197, label %if.end.1.i190

if.then.1.i197:                                   ; preds = %if.else55
  %inc.1.i = add i64 %add.1.i, 1
  %cmp6.1.i = icmp eq i64 %inc.1.i, 0
  %or28.1.i = or i1 %cmp4.1.i189, %cmp6.1.i
  %arrayidx15.131.i = getelementptr inbounds nuw i8, ptr %r, i64 16
  store i64 %inc.1.i, ptr %arrayidx15.131.i, align 8
  %arrayidx.232.i = getelementptr inbounds nuw i8, ptr %a.addr.0207, i64 24
  %25 = load i64, ptr %arrayidx.232.i, align 8
  %26 = load i64, ptr %b.addr.1.sroa.phi236, align 8
  %add.234.i = add i64 %26, %25
  br i1 %or28.1.i, label %if.then.2.i195, label %if.else.2.i193

if.end.1.i190:                                    ; preds = %if.else55
  %arrayidx15.1.i = getelementptr inbounds nuw i8, ptr %r, i64 16
  store i64 %add.1.i, ptr %arrayidx15.1.i, align 8
  %arrayidx.2.i191 = getelementptr inbounds nuw i8, ptr %a.addr.0207, i64 24
  %27 = load i64, ptr %arrayidx.2.i191, align 8
  %28 = load i64, ptr %b.addr.1.sroa.phi233, align 8
  %add.2.i = add i64 %28, %27
  br i1 %cmp4.1.i189, label %if.then.2.i195, label %if.else.2.i193

if.then.2.i195:                                   ; preds = %if.end.1.i190, %if.then.1.i197
  %add.235.i = phi i64 [ %add.234.i, %if.then.1.i197 ], [ %add.2.i, %if.end.1.i190 ]
  %29 = phi i64 [ %25, %if.then.1.i197 ], [ %27, %if.end.1.i190 ]
  %cmp4.2.i196 = icmp ult i64 %add.235.i, %29
  %inc.2.i = add i64 %add.235.i, 1
  %cmp6.2.i = icmp eq i64 %inc.2.i, 0
  %or28.2.i = or i1 %cmp4.2.i196, %cmp6.2.i
  br label %add_significands.exit

if.else.2.i193:                                   ; preds = %if.end.1.i190, %if.then.1.i197
  %add.236.i = phi i64 [ %add.234.i, %if.then.1.i197 ], [ %add.2.i, %if.end.1.i190 ]
  %30 = phi i64 [ %25, %if.then.1.i197 ], [ %27, %if.end.1.i190 ]
  %cmp10.2.i = icmp ult i64 %add.236.i, %30
  br label %add_significands.exit

add_significands.exit:                            ; preds = %if.else.2.i193, %if.then.2.i195
  %carry.1.in.2.i = phi i1 [ %or28.2.i, %if.then.2.i195 ], [ %cmp10.2.i, %if.else.2.i193 ]
  %ri.0.2.i194 = phi i64 [ %inc.2.i, %if.then.2.i195 ], [ %add.236.i, %if.else.2.i193 ]
  %arrayidx15.2.i = getelementptr inbounds nuw i8, ptr %r, i64 24
  store i64 %ri.0.2.i194, ptr %arrayidx15.2.i, align 8
  br i1 %carry.1.in.2.i, label %if.then58, label %if.end70

if.then58:                                        ; preds = %add_significands.exit
  %call59 = tail call fastcc zeroext i8 @sticky_rshift_significand(ptr noundef nonnull %r, ptr noundef nonnull %r, i32 noundef 1)
  %or62176 = or i8 %call59, %inexact.0
  %31 = load i64, ptr %arrayidx15.2.i, align 8
  %or64 = or i64 %31, -9223372036854775808
  store i64 %or64, ptr %arrayidx15.2.i, align 8
  %inc = add nsw i32 %sub32213, 1
  %cmp65 = icmp sgt i32 %sub32213, 33554430
  br i1 %cmp65, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.then58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %r, i8 0, i64 32, i1 false)
  %bf.shl.i198 = shl nuw nsw i32 %sign.0211, 3
  %bf.set3.i = or disjoint i32 %bf.shl.i198, 2
  store i32 %bf.set3.i, ptr %r, align 8
  br label %cleanup

if.end70:                                         ; preds = %if.then58, %add_significands.exit, %if.then52, %sub_significands.exit
  %sign.1 = phi i32 [ %xor53, %if.then52 ], [ %sign.0211, %sub_significands.exit ], [ %sign.0211, %if.then58 ], [ %sign.0211, %add_significands.exit ]
  %exp.0 = phi i32 [ %sub32213, %if.then52 ], [ %sub32213, %sub_significands.exit ], [ %inc, %if.then58 ], [ %sub32213, %add_significands.exit ]
  %inexact.1 = phi i8 [ %inexact.0, %if.then52 ], [ %inexact.0, %sub_significands.exit ], [ %or62176, %if.then58 ], [ %inexact.0, %add_significands.exit ]
  %bf.shl76 = shl nuw nsw i32 %sign.1, 3
  %and79 = shl nsw i32 %exp.0, 6
  %bf.shl76.masked = and i32 %bf.shl76, 8
  %bf.clear83 = or disjoint i32 %bf.shl76.masked, %and79
  %bf.set84 = or disjoint i32 %bf.clear83, 1
  store i32 %bf.set84, ptr %r, align 8
  tail call fastcc void @normalize(ptr noundef nonnull %r)
  %bf.load94 = load i32, ptr %r, align 8
  %bf.clear95 = and i32 %bf.load94, 3
  %cmp96 = icmp eq i32 %bf.clear95, 0
  br i1 %cmp96, label %if.then98, label %if.else102

if.then98:                                        ; preds = %if.end70
  %bf.clear100 = and i32 %bf.load94, -12
  store i32 %bf.clear100, ptr %r, align 8
  br label %cleanup

if.else102:                                       ; preds = %if.end70
  %conv103 = zext nneg i8 %inexact.1 to i64
  %sig104 = getelementptr inbounds nuw i8, ptr %r, i64 8
  %32 = load i64, ptr %sig104, align 8
  %or106 = or i64 %32, %conv103
  store i64 %or106, ptr %sig104, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else102, %if.then98, %if.then67, %if.then36, %if.else, %if.then, %sw.bb13, %sw.bb9, %sw.bb
  %retval.0 = phi i8 [ 0, %sw.bb ], [ 0, %sw.bb9 ], [ 0, %sw.bb13 ], [ 1, %if.then36 ], [ 1, %if.then67 ], [ 0, %if.else ], [ 0, %if.then ], [ %inexact.1, %if.else102 ], [ %inexact.1, %if.then98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %t) #5
  ret i8 %retval.0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare hidden fastcc void @normalize(ptr noundef captures(none)) unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
declare hidden fastcc zeroext range(i8 0, 2) i8 @sticky_rshift_significand(ptr noundef writeonly captures(none), ptr noundef readonly captures(none), i32 noundef range(i32 -67108862, -2147483648)) unnamed_addr #3

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
