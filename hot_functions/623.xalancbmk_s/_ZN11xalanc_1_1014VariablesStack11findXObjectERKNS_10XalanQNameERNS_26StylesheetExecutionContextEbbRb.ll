; ModuleID = '/tmp/tmp.Ung00umQSC/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/VariablesStack.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::VariablesStack::StackEntry" = type { i32, ptr, %"class.xalanc_1_10::XObjectPtr", ptr, ptr }

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: noinline noreturn nounwind uwtable
declare hidden void @__clang_call_terminate(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(120) %this, ptr noundef nonnull align 8 dereferenceable(8) %name, ptr noundef nonnull align 8 dereferenceable(24) %executionContext, i1 noundef zeroext %fIsParam, i1 noundef zeroext %fSearchGlobalSpace, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %fNameFound) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %var = alloca ptr, align 8
  %ref.tmp = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %call = tail call noundef i64 @_ZN11xalanc_1_1014VariablesStack9findEntryERKNS_10XalanQNameEbb(ptr noundef nonnull align 8 dereferenceable(120) %this, ptr noundef nonnull align 8 dereferenceable(8) %name, i1 noundef zeroext %fIsParam, i1 noundef zeroext %fSearchGlobalSpace)
  %m_size.i = getelementptr inbounds nuw i8, ptr %this, i64 8
  %0 = load i64, ptr %m_size.i, align 8, !tbaa !0
  %cmp = icmp eq i64 %call, %0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 0, ptr %fNameFound, align 1, !tbaa !8
  store ptr null, ptr %agg.result, align 8, !tbaa !10
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  br label %cleanup74

if.else:                                          ; preds = %entry
  store i8 1, ptr %fNameFound, align 1, !tbaa !8
  %m_data.i = getelementptr inbounds nuw i8, ptr %this, i64 24
  %1 = load ptr, ptr %m_data.i, align 8, !tbaa !13
  %arrayidx.i = getelementptr %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 %call
  %m_value.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 16
  %2 = load ptr, ptr %m_value.i, align 8, !tbaa !10
  %cmp.i = icmp eq ptr %2, null
  br i1 %cmp.i, label %if.else11, label %if.then10

if.then10:                                        ; preds = %if.else
  store ptr %2, ptr %agg.result, align 8, !tbaa !10
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef nonnull %2)
  br label %cleanup74

if.else11:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(ptr nonnull %var) #5
  %m_variable.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 24
  %3 = load ptr, ptr %m_variable.i, align 8, !tbaa !14
  store ptr %3, ptr %var, align 8, !tbaa !20
  store ptr null, ptr %agg.result, align 8, !tbaa !10
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %cmp15.not = icmp eq ptr %3, null
  br i1 %cmp15.not, label %nrvo.skipdtor, label %if.then16

if.then16:                                        ; preds = %if.else11
  %vtable = load ptr, ptr %executionContext, align 8, !tbaa !21
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 424
  %4 = load ptr, ptr %vfn, align 8
  %call17 = invoke noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(24) %executionContext)
          to label %invoke.cont21 unwind label %lpad

invoke.cont21:                                    ; preds = %if.then16
  %m_guardStack = getelementptr inbounds nuw i8, ptr %this, i64 56
  %m_data.i96 = getelementptr inbounds nuw i8, ptr %this, i64 80
  %5 = load ptr, ptr %m_data.i96, align 8, !tbaa !23
  %m_size.i.i = getelementptr inbounds nuw i8, ptr %this, i64 64
  %6 = load i64, ptr %m_size.i.i, align 8, !tbaa !27
  %add.ptr.i.i = getelementptr ptr, ptr %5, i64 %6
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i to i64
  %add.ptr.i.i.idx = shl i64 %6, 3
  %shr.i.i.i = ashr i64 %add.ptr.i.i.idx, 5
  %cmp79.i.i.i = icmp sgt i64 %shr.i.i.i, 0
  br i1 %cmp79.i.i.i, label %for.body.lr.ph.i.i.i, label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %invoke.cont21
  %7 = load ptr, ptr %var, align 8, !tbaa !20
  %8 = and i64 %add.ptr.i.i.idx, -32
  %scevgep.i.i.i = getelementptr i8, ptr %5, i64 %8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end11.i.i.i, %for.body.lr.ph.i.i.i
  %__trip_count.081.i.i.i = phi i64 [ %shr.i.i.i, %for.body.lr.ph.i.i.i ], [ %dec.i.i.i, %if.end11.i.i.i ]
  %__first.addr.080.i.i.i = phi ptr [ %5, %for.body.lr.ph.i.i.i ], [ %incdec.ptr12.i.i.i, %if.end11.i.i.i ]
  %9 = load ptr, ptr %__first.addr.080.i.i.i, align 8, !tbaa !20
  %cmp.i.i.i.i = icmp eq ptr %9, %7
  br i1 %cmp.i.i.i.i, label %invoke.cont26.loopexit, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %incdec.ptr.i.i.i = getelementptr i8, ptr %__first.addr.080.i.i.i, i64 8
  %10 = load ptr, ptr %incdec.ptr.i.i.i, align 8, !tbaa !20
  %cmp.i57.i.i.i = icmp eq ptr %10, %7
  br i1 %cmp.i57.i.i.i, label %invoke.cont26.loopexit.split.loop.exit134, label %if.end3.i.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %incdec.ptr4.i.i.i = getelementptr i8, ptr %__first.addr.080.i.i.i, i64 16
  %11 = load ptr, ptr %incdec.ptr4.i.i.i, align 8, !tbaa !20
  %cmp.i58.i.i.i = icmp eq ptr %11, %7
  br i1 %cmp.i58.i.i.i, label %invoke.cont26.loopexit.split.loop.exit136, label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end3.i.i.i
  %incdec.ptr8.i.i.i = getelementptr i8, ptr %__first.addr.080.i.i.i, i64 24
  %12 = load ptr, ptr %incdec.ptr8.i.i.i, align 8, !tbaa !20
  %cmp.i59.i.i.i = icmp eq ptr %12, %7
  br i1 %cmp.i59.i.i.i, label %invoke.cont26.loopexit.split.loop.exit138, label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.end7.i.i.i
  %incdec.ptr12.i.i.i = getelementptr i8, ptr %__first.addr.080.i.i.i, i64 32
  %dec.i.i.i = add nsw i64 %__trip_count.081.i.i.i, -1
  %cmp.i.i.i = icmp sgt i64 %__trip_count.081.i.i.i, 1
  br i1 %cmp.i.i.i, label %for.body.i.i.i, label %for.end.i.i.i.loopexit, !llvm.loop !28

for.end.i.i.i.loopexit:                           ; preds = %if.end11.i.i.i
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.end.i.i.i.loopexit, %invoke.cont21
  %__first.addr.0.lcssa.i.i.i = phi ptr [ %5, %invoke.cont21 ], [ %scevgep.i.i.i, %for.end.i.i.i.loopexit ]
  %sub.ptr.rhs.cast14.i.i.i = ptrtoint ptr %__first.addr.0.lcssa.i.i.i to i64
  %sub.ptr.sub15.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast14.i.i.i
  %sub.ptr.div16.i.i.i = ashr exact i64 %sub.ptr.sub15.i.i.i, 3
  switch i64 %sub.ptr.div16.i.i.i, label %if.end [
    i64 3, label %sw.bb.i.i.i
    i64 2, label %sw.bb21.i.i.i
    i64 1, label %sw.bb26.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %for.end.i.i.i
  %13 = load ptr, ptr %__first.addr.0.lcssa.i.i.i, align 8, !tbaa !20
  %14 = load ptr, ptr %var, align 8, !tbaa !20
  %cmp.i60.i.i.i = icmp eq ptr %13, %14
  br i1 %cmp.i60.i.i.i, label %invoke.cont26, label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %sw.bb.i.i.i
  %incdec.ptr20.i.i.i = getelementptr i8, ptr %__first.addr.0.lcssa.i.i.i, i64 8
  br label %sw.bb21.i.i.i

sw.bb21.i.i.i:                                    ; preds = %if.end19.i.i.i, %for.end.i.i.i
  %__first.addr.1.i.i.i = phi ptr [ %incdec.ptr20.i.i.i, %if.end19.i.i.i ], [ %__first.addr.0.lcssa.i.i.i, %for.end.i.i.i ]
  %15 = load ptr, ptr %__first.addr.1.i.i.i, align 8, !tbaa !20
  %16 = load ptr, ptr %var, align 8, !tbaa !20
  %cmp.i61.i.i.i = icmp eq ptr %15, %16
  br i1 %cmp.i61.i.i.i, label %invoke.cont26, label %if.end24.i.i.i

if.end24.i.i.i:                                   ; preds = %sw.bb21.i.i.i
  %incdec.ptr25.i.i.i = getelementptr i8, ptr %__first.addr.1.i.i.i, i64 8
  br label %sw.bb26.i.i.i

sw.bb26.i.i.i:                                    ; preds = %if.end24.i.i.i, %for.end.i.i.i
  %__first.addr.2.i.i.i = phi ptr [ %incdec.ptr25.i.i.i, %if.end24.i.i.i ], [ %__first.addr.0.lcssa.i.i.i, %for.end.i.i.i ]
  %17 = load ptr, ptr %__first.addr.2.i.i.i, align 8, !tbaa !20
  %18 = load ptr, ptr %var, align 8, !tbaa !20
  %cmp.i62.i.i.i = icmp eq ptr %17, %18
  br i1 %cmp.i62.i.i.i, label %invoke.cont26, label %if.end

invoke.cont26.loopexit.split.loop.exit134:        ; preds = %if.end.i.i.i
  %__first.addr.080.i.i.i.lcssa142 = phi ptr [ %__first.addr.080.i.i.i, %if.end.i.i.i ]
  %incdec.ptr.i.i.i.le = getelementptr i8, ptr %__first.addr.080.i.i.i.lcssa142, i64 8
  br label %invoke.cont26

invoke.cont26.loopexit.split.loop.exit136:        ; preds = %if.end3.i.i.i
  %__first.addr.080.i.i.i.lcssa143 = phi ptr [ %__first.addr.080.i.i.i, %if.end3.i.i.i ]
  %incdec.ptr4.i.i.i.le = getelementptr i8, ptr %__first.addr.080.i.i.i.lcssa143, i64 16
  br label %invoke.cont26

invoke.cont26.loopexit.split.loop.exit138:        ; preds = %if.end7.i.i.i
  %__first.addr.080.i.i.i.lcssa144 = phi ptr [ %__first.addr.080.i.i.i, %if.end7.i.i.i ]
  %incdec.ptr8.i.i.i.le = getelementptr i8, ptr %__first.addr.080.i.i.i.lcssa144, i64 24
  br label %invoke.cont26

invoke.cont26.loopexit:                           ; preds = %for.body.i.i.i
  %__first.addr.080.i.i.i.lcssa = phi ptr [ %__first.addr.080.i.i.i, %for.body.i.i.i ]
  br label %invoke.cont26

invoke.cont26:                                    ; preds = %invoke.cont26.loopexit, %invoke.cont26.loopexit.split.loop.exit138, %invoke.cont26.loopexit.split.loop.exit136, %invoke.cont26.loopexit.split.loop.exit134, %sw.bb26.i.i.i, %sw.bb21.i.i.i, %sw.bb.i.i.i
  %retval.0.i.i.i = phi ptr [ %__first.addr.0.lcssa.i.i.i, %sw.bb.i.i.i ], [ %__first.addr.1.i.i.i, %sw.bb21.i.i.i ], [ %__first.addr.2.i.i.i, %sw.bb26.i.i.i ], [ %incdec.ptr.i.i.i.le, %invoke.cont26.loopexit.split.loop.exit134 ], [ %incdec.ptr4.i.i.i.le, %invoke.cont26.loopexit.split.loop.exit136 ], [ %incdec.ptr8.i.i.i.le, %invoke.cont26.loopexit.split.loop.exit138 ], [ %__first.addr.080.i.i.i.lcssa, %invoke.cont26.loopexit ]
  %cmp28.not = icmp eq ptr %retval.0.i.i.i, %add.ptr.i.i
  br i1 %cmp28.not, label %if.end, label %if.then29

if.then29:                                        ; preds = %invoke.cont26
  %vtable.i = load ptr, ptr %executionContext, align 8, !tbaa !21
  %vfn.i = getelementptr inbounds nuw i8, ptr %vtable.i, i64 184
  %19 = load ptr, ptr %vfn.i, align 8
  %call.i100 = invoke noundef nonnull align 8 dereferenceable(36) ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %executionContext)
          to label %invoke.cont31 unwind label %lpad30

invoke.cont31:                                    ; preds = %if.then29
  %call36 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %call.i100, i32 noundef 137)
          to label %invoke.cont35 unwind label %if.then.i107

invoke.cont35:                                    ; preds = %invoke.cont31
  %20 = load ptr, ptr %var, align 8, !tbaa !20
  %vtable37 = load ptr, ptr %20, align 8, !tbaa !21
  %vfn38 = getelementptr inbounds nuw i8, ptr %vtable37, i64 32
  %21 = load ptr, ptr %vfn38, align 8
  %call40 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(322) %20)
          to label %invoke.cont39 unwind label %if.then.i107

invoke.cont39:                                    ; preds = %invoke.cont35
  %vtable41 = load ptr, ptr %executionContext, align 8, !tbaa !21
  %vfn42 = getelementptr inbounds nuw i8, ptr %vtable41, i64 16
  %22 = load ptr, ptr %vfn42, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(36) %call36, ptr noundef %call17, ptr noundef %call40)
          to label %if.then.i unwind label %if.then.i107

if.then.i:                                        ; preds = %invoke.cont39
  %vtable.i103 = load ptr, ptr %executionContext, align 8, !tbaa !21
  %vfn.i104 = getelementptr inbounds nuw i8, ptr %vtable.i103, i64 192
  %23 = load ptr, ptr %vfn.i104, align 8
  %call.i = invoke noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(36) %call.i100)
          to label %if.end unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #6
  unreachable

lpad:                                             ; preds = %.noexc121, %if.then.i.i, %_ZN11xalanc_1_1010XObjectPtrD2Ev.exit, %invoke.cont45, %if.end, %if.then16
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup69

lpad30:                                           ; preds = %if.then29
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup69

if.then.i107:                                     ; preds = %invoke.cont39, %invoke.cont35, %invoke.cont31
  %28 = landingpad { ptr, i32 }
          cleanup
  %vtable.i108 = load ptr, ptr %executionContext, align 8, !tbaa !21
  %vfn.i109 = getelementptr inbounds nuw i8, ptr %vtable.i108, i64 192
  %29 = load ptr, ptr %vfn.i109, align 8
  %call.i110 = invoke noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(36) %call.i100)
          to label %ehcleanup69 unwind label %terminate.lpad.i111

terminate.lpad.i111:                              ; preds = %if.then.i107
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #6
  unreachable

if.end:                                           ; preds = %if.then.i, %invoke.cont26, %sw.bb26.i.i.i, %for.end.i.i.i
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %m_guardStack, ptr noundef nonnull align 8 dereferenceable(8) %var)
          to label %invoke.cont45 unwind label %lpad

invoke.cont45:                                    ; preds = %if.end
  %vtable46 = load ptr, ptr %executionContext, align 8, !tbaa !21
  %vfn47 = getelementptr inbounds nuw i8, ptr %vtable46, i64 680
  %32 = load ptr, ptr %vfn47, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(24) %executionContext)
          to label %invoke.cont48 unwind label %lpad

invoke.cont48:                                    ; preds = %invoke.cont45
  call void @llvm.lifetime.start.p0(ptr nonnull %ref.tmp) #5
  %33 = load ptr, ptr %var, align 8, !tbaa !20
  invoke void @_ZNK11xalanc_1_1012ElemVariable8getValueERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %ref.tmp, ptr noundef nonnull align 8 dereferenceable(368) %33, ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef %call17)
          to label %invoke.cont50 unwind label %lpad49

invoke.cont50:                                    ; preds = %invoke.cont48
  %34 = load ptr, ptr %agg.result, align 8, !tbaa !10
  %35 = load ptr, ptr %ref.tmp, align 8, !tbaa !10
  %cmp.not.i113 = icmp eq ptr %34, %35
  br i1 %cmp.not.i113, label %invoke.cont52, label %if.then.i114

if.then.i114:                                     ; preds = %invoke.cont50
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %34)
          to label %.noexc unwind label %lpad51

.noexc:                                           ; preds = %if.then.i114
  %36 = load ptr, ptr %ref.tmp, align 8, !tbaa !10
  store ptr %36, ptr %agg.result, align 8, !tbaa !10
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %36)
          to label %invoke.cont52 unwind label %lpad51

invoke.cont52:                                    ; preds = %.noexc, %invoke.cont50
  %37 = load ptr, ptr %ref.tmp, align 8, !tbaa !10
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %37)
          to label %_ZN11xalanc_1_1010XObjectPtrD2Ev.exit unwind label %terminate.lpad.i116

terminate.lpad.i116:                              ; preds = %invoke.cont52
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #6
  unreachable

_ZN11xalanc_1_1010XObjectPtrD2Ev.exit:            ; preds = %invoke.cont52
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp) #5
  %vtable56 = load ptr, ptr %executionContext, align 8, !tbaa !21
  %vfn57 = getelementptr inbounds nuw i8, ptr %vtable56, i64 688
  %40 = load ptr, ptr %vfn57, align 8
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(24) %executionContext)
          to label %invoke.cont58 unwind label %lpad

invoke.cont58:                                    ; preds = %_ZN11xalanc_1_1010XObjectPtrD2Ev.exit
  %41 = load i64, ptr %m_size.i.i, align 8, !tbaa !27
  %dec.i = add i64 %41, -1
  store i64 %dec.i, ptr %m_size.i.i, align 8, !tbaa !27
  %42 = load ptr, ptr %m_data.i, align 8, !tbaa !13
  %arrayidx.i119 = getelementptr %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %42, i64 %call
  %m_value.i120 = getelementptr inbounds nuw i8, ptr %arrayidx.i119, i64 16
  %43 = load ptr, ptr %m_value.i120, align 8, !tbaa !10
  %44 = load ptr, ptr %agg.result, align 8, !tbaa !10
  %cmp.not.i.i = icmp eq ptr %43, %44
  br i1 %cmp.not.i.i, label %invoke.cont64, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont58
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %43)
          to label %.noexc121 unwind label %lpad

.noexc121:                                        ; preds = %if.then.i.i
  %45 = load ptr, ptr %agg.result, align 8, !tbaa !10
  store ptr %45, ptr %m_value.i120, align 8, !tbaa !10
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %45)
          to label %invoke.cont64 unwind label %lpad

invoke.cont64:                                    ; preds = %.noexc121, %invoke.cont58
  %46 = load ptr, ptr %m_data.i, align 8, !tbaa !13
  %arrayidx.i124 = getelementptr %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %46, i64 %call
  %47 = load i32, ptr %arrayidx.i124, align 8, !tbaa !30
  %cmp.i125 = icmp eq i32 %47, 2
  br i1 %cmp.i125, label %if.then.i126, label %nrvo.skipdtor

if.then.i126:                                     ; preds = %invoke.cont64
  store i32 3, ptr %arrayidx.i124, align 8, !tbaa !30
  br label %nrvo.skipdtor

lpad49:                                           ; preds = %invoke.cont48
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup55

lpad51:                                           ; preds = %.noexc, %if.then.i114
  %49 = landingpad { ptr, i32 }
          cleanup
  %50 = load ptr, ptr %ref.tmp, align 8, !tbaa !10
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %50)
          to label %ehcleanup55 unwind label %terminate.lpad.i127

terminate.lpad.i127:                              ; preds = %lpad51
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  call void @__clang_call_terminate(ptr %52) #6
  unreachable

ehcleanup55:                                      ; preds = %lpad51, %lpad49
  %.pn90 = phi { ptr, i32 } [ %48, %lpad49 ], [ %49, %lpad51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp) #5
  br label %ehcleanup69

ehcleanup69:                                      ; preds = %ehcleanup55, %if.then.i107, %lpad30, %lpad
  %.pn92 = phi { ptr, i32 } [ %26, %lpad ], [ %.pn90, %ehcleanup55 ], [ %27, %lpad30 ], [ %28, %if.then.i107 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %agg.result) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %var) #5
  resume { ptr, i32 } %.pn92

nrvo.skipdtor:                                    ; preds = %if.then.i126, %invoke.cont64, %if.else11
  call void @llvm.lifetime.end.p0(ptr nonnull %var) #5
  br label %cleanup74

cleanup74:                                        ; preds = %nrvo.skipdtor, %if.then10, %if.then
  ret void
}

; Function Attrs: mustprogress uwtable
declare dso_local noundef i64 @_ZN11xalanc_1_1014VariablesStack9findEntryERKNS_10XalanQNameEbb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2 align 2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #3

declare void @_ZNK11xalanc_1_1012ElemVariable8getValueERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4 align 2

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #3

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2 align 2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!0 = !{!1, !6, i64 8}
!1 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !2, i64 0, !6, i64 8, !6, i64 16, !7, i64 24}
!2 = !{!"p1 _ZTSN11xercesc_2_713MemoryManagerE", !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"long", !4, i64 0}
!7 = !{!"p1 _ZTSN11xalanc_1_1014VariablesStack10StackEntryE", !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"bool", !4, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !12, i64 0}
!12 = !{!"p1 _ZTSN11xalanc_1_107XObjectE", !3, i64 0}
!13 = !{!1, !7, i64 24}
!14 = !{!15, !18, i64 24}
!15 = !{!"_ZTSN11xalanc_1_1014VariablesStack10StackEntryE", !16, i64 0, !17, i64 8, !11, i64 16, !18, i64 24, !19, i64 32}
!16 = !{!"_ZTSN11xalanc_1_1014VariablesStack10StackEntry5eTypeE", !4, i64 0}
!17 = !{!"p1 _ZTSN11xalanc_1_1010XalanQNameE", !3, i64 0}
!18 = !{!"p1 _ZTSN11xalanc_1_1012ElemVariableE", !3, i64 0}
!19 = !{!"p1 _ZTSN11xalanc_1_1019ElemTemplateElementE", !3, i64 0}
!20 = !{!18, !18, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !5, i64 0}
!23 = !{!24, !25, i64 24}
!24 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEE", !2, i64 0, !6, i64 8, !6, i64 16, !25, i64 24}
!25 = !{!"p2 _ZTSN11xalanc_1_1012ElemVariableE", !26, i64 0}
!26 = !{!"any p2 pointer", !3, i64 0}
!27 = !{!24, !6, i64 8}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!15, !16, i64 0}
