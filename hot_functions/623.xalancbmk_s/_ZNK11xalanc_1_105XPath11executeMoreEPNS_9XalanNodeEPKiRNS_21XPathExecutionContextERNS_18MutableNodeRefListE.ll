; ModuleID = '/tmp/tmp.uv3rdkBWoK/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/XPath.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XToken" = type <{ %"class.xalanc_1_10::XObject", ptr, double, i8, [7 x i8] }>
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(129), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef readonly captures(none)) local_unnamed_addr #1 align 2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 initializes((0, 8)) %agg.result, ptr noundef nonnull align 8 dereferenceable(129) %this, ptr noundef %context, ptr noundef %opPos, ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(44) %result) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %agg.tmp.ensured.i = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %ref.tmp.i = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %ref.tmp = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %ref.tmp12 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %ref.tmp23 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %ref.tmp32 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  store ptr null, ptr %agg.result, align 8, !tbaa !0
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %0 = load i32, ptr %opPos, align 4, !tbaa !6
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb7
    i32 4, label %sw.bb7
    i32 5, label %sw.bb7
    i32 6, label %sw.bb7
    i32 7, label %sw.bb7
    i32 8, label %sw.bb7
    i32 9, label %sw.bb7
    i32 10, label %sw.bb7
    i32 11, label %sw.bb7
    i32 12, label %sw.bb7
    i32 13, label %sw.bb7
    i32 14, label %sw.bb7
    i32 15, label %sw.bb7
    i32 18, label %sw.bb7
    i32 21, label %sw.bb7
    i32 56, label %sw.bb7
    i32 57, label %sw.bb7
    i32 58, label %sw.bb7
    i32 59, label %sw.bb7
    i32 60, label %sw.bb7
    i32 61, label %sw.bb7
    i32 62, label %sw.bb7
    i32 63, label %sw.bb7
    i32 64, label %sw.bb7
    i32 65, label %sw.bb7
    i32 66, label %sw.bb7
    i32 67, label %sw.bb7
    i32 68, label %sw.bb7
    i32 69, label %sw.bb7
    i32 70, label %sw.bb7
    i32 71, label %sw.bb7
    i32 72, label %sw.bb7
    i32 73, label %sw.bb7
    i32 74, label %sw.bb7
    i32 75, label %sw.bb7
    i32 76, label %sw.bb7
    i32 77, label %sw.bb7
    i32 78, label %sw.bb7
    i32 17, label %sw.bb9
    i32 19, label %sw.bb11
    i32 20, label %sw.bb20
    i32 23, label %sw.bb22
    i32 24, label %sw.bb31
    i32 25, label %sw.bb40
  ]

lpad:                                             ; preds = %if.then, %sw.default, %sw.bb40, %sw.bb20, %sw.bb9, %sw.bb7
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup51

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr nonnull %ref.tmp) #6
  %add.ptr = getelementptr i8, ptr %opPos, i64 8
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %ref.tmp, ptr noundef nonnull align 8 dereferenceable(129) %this, ptr noundef %context, ptr noundef %add.ptr, ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(44) %result)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %sw.bb
  %2 = load ptr, ptr %agg.result, align 8, !tbaa !0
  %3 = load ptr, ptr %ref.tmp, align 8, !tbaa !0
  %cmp.not.i = icmp eq ptr %2, %3
  br i1 %cmp.not.i, label %invoke.cont5, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont3
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %2)
          to label %.noexc unwind label %lpad4

.noexc:                                           ; preds = %if.then.i
  %4 = load ptr, ptr %ref.tmp, align 8, !tbaa !0
  store ptr %4, ptr %agg.result, align 8, !tbaa !0
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %4)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %.noexc, %invoke.cont3
  %5 = load ptr, ptr %ref.tmp, align 8, !tbaa !0
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %5)
          to label %_ZN11xalanc_1_1010XObjectPtrD2Ev.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %invoke.cont5
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  call void @__clang_call_terminate(ptr %7) #7
  unreachable

_ZN11xalanc_1_1010XObjectPtrD2Ev.exit:            ; preds = %invoke.cont5
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp) #6
  br label %sw.epilog

lpad2:                                            ; preds = %sw.bb
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad4:                                            ; preds = %.noexc, %if.then.i
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = load ptr, ptr %ref.tmp, align 8, !tbaa !0
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %10)
          to label %ehcleanup unwind label %terminate.lpad.i91

terminate.lpad.i91:                               ; preds = %lpad4
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  call void @__clang_call_terminate(ptr %12) #7
  unreachable

ehcleanup:                                        ; preds = %lpad4, %lpad2
  %.pn86 = phi { ptr, i32 } [ %8, %lpad2 ], [ %9, %lpad4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp) #6
  br label %ehcleanup51

sw.bb7:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %vtable.i.i = load ptr, ptr %executionContext, align 8, !tbaa !8
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 184
  %13 = load ptr, ptr %vfn.i.i, align 8
  %call.i.i93 = invoke noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %executionContext)
          to label %call.i.i.noexc unwind label %lpad

call.i.i.noexc:                                   ; preds = %sw.bb7
  %call3.i = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %call.i.i93, i32 noundef 11)
          to label %invoke.cont2.i unwind label %if.then.i14.i

invoke.cont2.i:                                   ; preds = %call.i.i.noexc
  %m_locator.i = getelementptr inbounds nuw i8, ptr %this, i64 120
  %14 = load ptr, ptr %m_locator.i, align 8, !tbaa !10
  %vtable.i = load ptr, ptr %executionContext, align 8, !tbaa !8
  %vfn.i = getelementptr inbounds nuw i8, ptr %vtable.i, i64 16
  %15 = load ptr, ptr %vfn.i, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(36) %call3.i, ptr noundef %context, ptr noundef %14)
          to label %if.then.i.i unwind label %if.then.i14.i

if.then.i.i:                                      ; preds = %invoke.cont2.i
  %vtable.i9.i = load ptr, ptr %executionContext, align 8, !tbaa !8
  %vfn.i10.i = getelementptr inbounds nuw i8, ptr %vtable.i9.i, i64 192
  %16 = load ptr, ptr %vfn.i10.i, align 8
  %call.i11.i = invoke noundef zeroext i1 %16(ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(36) %call.i.i93)
          to label %sw.epilog unwind label %terminate.lpad.i.i

terminate.lpad.i.i:                               ; preds = %if.then.i.i
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #7
  unreachable

if.then.i14.i:                                    ; preds = %invoke.cont2.i, %call.i.i.noexc
  %19 = landingpad { ptr, i32 }
          cleanup
  %vtable.i15.i = load ptr, ptr %executionContext, align 8, !tbaa !8
  %vfn.i16.i = getelementptr inbounds nuw i8, ptr %vtable.i15.i, i64 192
  %20 = load ptr, ptr %vfn.i16.i, align 8
  %call.i17.i = invoke noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(36) %call.i.i93)
          to label %ehcleanup51 unwind label %terminate.lpad.i18.i

terminate.lpad.i18.i:                             ; preds = %if.then.i14.i
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #7
  unreachable

sw.bb9:                                           ; preds = %entry
  invoke void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %this, ptr noundef %context, ptr noundef nonnull %opPos, ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(44) %result)
          to label %sw.epilog unwind label %lpad

sw.bb11:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr nonnull %ref.tmp12) #6
  %add.ptr.i = getelementptr i8, ptr %opPos, i64 8
  %23 = load i32, ptr %add.ptr.i, align 4, !tbaa !6, !noalias !24
  %conv.i.i = sext i32 %23 to i64
  %m_data.i.i.i = getelementptr inbounds nuw i8, ptr %this, i64 64
  %24 = load ptr, ptr %m_data.i.i.i, align 8, !tbaa !27, !noalias !24
  %arrayidx.i.i.i = getelementptr %"class.xalanc_1_10::XToken", ptr %24, i64 %conv.i.i
  %add.ptr6.i = getelementptr i8, ptr %opPos, i64 12
  %25 = load i32, ptr %add.ptr6.i, align 4, !tbaa !6, !noalias !24
  call void @llvm.lifetime.start.p0(ptr nonnull %ref.tmp.i) #6, !noalias !24
  %vtable.i94 = load ptr, ptr %arrayidx.i.i.i, align 8, !tbaa !8, !noalias !24
  %vfn.i95 = getelementptr inbounds nuw i8, ptr %vtable.i94, i64 64
  %26 = load ptr, ptr %vfn.i95, align 8, !noalias !24
  %call9.i97 = invoke noundef nonnull align 8 dereferenceable(36) ptr %26(ptr noundef nonnull align 8 dereferenceable(41) %arrayidx.i.i.i)
          to label %call9.i.noexc unwind label %lpad13

call9.i.noexc:                                    ; preds = %sw.bb11
  %conv.i17.i = sext i32 %25 to i64
  %arrayidx.i.i19.i = getelementptr %"class.xalanc_1_10::XToken", ptr %24, i64 %conv.i17.i
  %vtable10.i = load ptr, ptr %arrayidx.i.i19.i, align 8, !tbaa !8, !noalias !24
  %vfn11.i = getelementptr inbounds nuw i8, ptr %vtable10.i, i64 64
  %27 = load ptr, ptr %vfn11.i, align 8, !noalias !24
  %call12.i98 = invoke noundef nonnull align 8 dereferenceable(36) ptr %27(ptr noundef nonnull align 8 dereferenceable(41) %arrayidx.i.i19.i)
          to label %call12.i.noexc unwind label %lpad13

call12.i.noexc:                                   ; preds = %call9.i.noexc
  invoke void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp.i, ptr noundef nonnull align 8 dereferenceable(36) %call9.i97, ptr noundef nonnull align 8 dereferenceable(36) %call12.i98)
          to label %.noexc99 unwind label %lpad13

.noexc99:                                         ; preds = %call12.i.noexc
  %m_locator.i96 = getelementptr inbounds nuw i8, ptr %this, i64 120
  %28 = load ptr, ptr %m_locator.i96, align 8, !tbaa !10, !noalias !24
  %vtable13.i = load ptr, ptr %executionContext, align 8, !tbaa !8, !noalias !24
  %vfn14.i = getelementptr inbounds nuw i8, ptr %vtable13.i, i64 224
  %29 = load ptr, ptr %vfn14.i, align 8, !noalias !24
  invoke void %29(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %ref.tmp12, ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp.i, ptr noundef %28)
          to label %invoke.cont14 unwind label %lpad.i

lpad.i:                                           ; preds = %.noexc99
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp.i) #6, !noalias !24
  br label %ehcleanup19

invoke.cont14:                                    ; preds = %.noexc99
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp.i) #6, !noalias !24
  %31 = load ptr, ptr %agg.result, align 8, !tbaa !0
  %32 = load ptr, ptr %ref.tmp12, align 8, !tbaa !0
  %cmp.not.i101 = icmp eq ptr %31, %32
  br i1 %cmp.not.i101, label %invoke.cont16, label %if.then.i102

if.then.i102:                                     ; preds = %invoke.cont14
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %31)
          to label %.noexc103 unwind label %lpad15

.noexc103:                                        ; preds = %if.then.i102
  %33 = load ptr, ptr %ref.tmp12, align 8, !tbaa !0
  store ptr %33, ptr %agg.result, align 8, !tbaa !0
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %33)
          to label %invoke.cont16 unwind label %lpad15

invoke.cont16:                                    ; preds = %.noexc103, %invoke.cont14
  %34 = load ptr, ptr %ref.tmp12, align 8, !tbaa !0
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %34)
          to label %_ZN11xalanc_1_1010XObjectPtrD2Ev.exit107 unwind label %terminate.lpad.i106

terminate.lpad.i106:                              ; preds = %invoke.cont16
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #7
  unreachable

_ZN11xalanc_1_1010XObjectPtrD2Ev.exit107:         ; preds = %invoke.cont16
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp12) #6
  br label %sw.epilog

lpad13:                                           ; preds = %call12.i.noexc, %call9.i.noexc, %sw.bb11
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup19

lpad15:                                           ; preds = %.noexc103, %if.then.i102
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = load ptr, ptr %ref.tmp12, align 8, !tbaa !0
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %39)
          to label %ehcleanup19 unwind label %terminate.lpad.i108

terminate.lpad.i108:                              ; preds = %lpad15
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #7
  unreachable

ehcleanup19:                                      ; preds = %lpad15, %lpad13, %lpad.i
  %.pn84 = phi { ptr, i32 } [ %37, %lpad13 ], [ %30, %lpad.i ], [ %38, %lpad15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp12) #6
  br label %ehcleanup51

sw.bb20:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr nonnull %agg.tmp.ensured.i)
  %add.ptr.i110 = getelementptr i8, ptr %opPos, i64 8
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %agg.tmp.ensured.i, ptr noundef nonnull align 8 dereferenceable(129) %this, ptr noundef %context, ptr noundef %add.ptr.i110, ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(44) %result)
          to label %_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE.exit unwind label %lpad

_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE.exit: ; preds = %sw.bb20
  %42 = load ptr, ptr %agg.tmp.ensured.i, align 8, !tbaa !0
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %42)
          to label %_ZN11xalanc_1_1010XObjectPtrD2Ev.exit156 unwind label %terminate.lpad.i155

terminate.lpad.i155:                              ; preds = %_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE.exit
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  call void @__clang_call_terminate(ptr %44) #7
  unreachable

_ZN11xalanc_1_1010XObjectPtrD2Ev.exit156:         ; preds = %_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %agg.tmp.ensured.i)
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr nonnull %ref.tmp23) #6
  invoke void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %ref.tmp23, ptr noundef nonnull align 8 dereferenceable(129) %this, ptr noundef %context, ptr noundef nonnull %opPos, ptr noundef nonnull align 8 dereferenceable(24) %executionContext)
          to label %invoke.cont25 unwind label %lpad24

invoke.cont25:                                    ; preds = %sw.bb22
  %45 = load ptr, ptr %agg.result, align 8, !tbaa !0
  %46 = load ptr, ptr %ref.tmp23, align 8, !tbaa !0
  %cmp.not.i112 = icmp eq ptr %45, %46
  br i1 %cmp.not.i112, label %invoke.cont27, label %if.then.i113

if.then.i113:                                     ; preds = %invoke.cont25
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %45)
          to label %.noexc114 unwind label %lpad26

.noexc114:                                        ; preds = %if.then.i113
  %47 = load ptr, ptr %ref.tmp23, align 8, !tbaa !0
  store ptr %47, ptr %agg.result, align 8, !tbaa !0
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %47)
          to label %invoke.cont27 unwind label %lpad26

invoke.cont27:                                    ; preds = %.noexc114, %invoke.cont25
  %48 = load ptr, ptr %ref.tmp23, align 8, !tbaa !0
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %48)
          to label %_ZN11xalanc_1_1010XObjectPtrD2Ev.exit118 unwind label %terminate.lpad.i117

terminate.lpad.i117:                              ; preds = %invoke.cont27
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  call void @__clang_call_terminate(ptr %50) #7
  unreachable

_ZN11xalanc_1_1010XObjectPtrD2Ev.exit118:         ; preds = %invoke.cont27
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp23) #6
  br label %sw.epilog

lpad24:                                           ; preds = %sw.bb22
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup30

lpad26:                                           ; preds = %.noexc114, %if.then.i113
  %52 = landingpad { ptr, i32 }
          cleanup
  %53 = load ptr, ptr %ref.tmp23, align 8, !tbaa !0
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %53)
          to label %ehcleanup30 unwind label %terminate.lpad.i119

terminate.lpad.i119:                              ; preds = %lpad26
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #7
  unreachable

ehcleanup30:                                      ; preds = %lpad26, %lpad24
  %.pn82 = phi { ptr, i32 } [ %51, %lpad24 ], [ %52, %lpad26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp23) #6
  br label %ehcleanup51

sw.bb31:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr nonnull %ref.tmp32) #6
  invoke void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %ref.tmp32, ptr noundef nonnull align 8 dereferenceable(129) %this, ptr noundef %context, ptr noundef nonnull %opPos, ptr noundef nonnull align 8 dereferenceable(24) %executionContext)
          to label %invoke.cont34 unwind label %lpad33

invoke.cont34:                                    ; preds = %sw.bb31
  %56 = load ptr, ptr %agg.result, align 8, !tbaa !0
  %57 = load ptr, ptr %ref.tmp32, align 8, !tbaa !0
  %cmp.not.i121 = icmp eq ptr %56, %57
  br i1 %cmp.not.i121, label %invoke.cont36, label %if.then.i122

if.then.i122:                                     ; preds = %invoke.cont34
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %56)
          to label %.noexc123 unwind label %lpad35

.noexc123:                                        ; preds = %if.then.i122
  %58 = load ptr, ptr %ref.tmp32, align 8, !tbaa !0
  store ptr %58, ptr %agg.result, align 8, !tbaa !0
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %58)
          to label %invoke.cont36 unwind label %lpad35

invoke.cont36:                                    ; preds = %.noexc123, %invoke.cont34
  %59 = load ptr, ptr %ref.tmp32, align 8, !tbaa !0
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %59)
          to label %_ZN11xalanc_1_1010XObjectPtrD2Ev.exit127 unwind label %terminate.lpad.i126

terminate.lpad.i126:                              ; preds = %invoke.cont36
  %60 = landingpad { ptr, i32 }
          catch ptr null
  %61 = extractvalue { ptr, i32 } %60, 0
  call void @__clang_call_terminate(ptr %61) #7
  unreachable

_ZN11xalanc_1_1010XObjectPtrD2Ev.exit127:         ; preds = %invoke.cont36
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp32) #6
  br label %sw.epilog

lpad33:                                           ; preds = %sw.bb31
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup39

lpad35:                                           ; preds = %.noexc123, %if.then.i122
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = load ptr, ptr %ref.tmp32, align 8, !tbaa !0
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %64)
          to label %ehcleanup39 unwind label %terminate.lpad.i128

terminate.lpad.i128:                              ; preds = %lpad35
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #7
  unreachable

ehcleanup39:                                      ; preds = %lpad35, %lpad33
  %.pn = phi { ptr, i32 } [ %62, %lpad33 ], [ %63, %lpad35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp32) #6
  br label %ehcleanup51

sw.bb40:                                          ; preds = %entry
  %add.ptr.i130 = getelementptr i8, ptr %opPos, i64 8
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %this, ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef %context, ptr noundef %add.ptr.i130, ptr noundef nonnull align 8 dereferenceable(44) %result)
          to label %sw.epilog unwind label %lpad

sw.default:                                       ; preds = %entry
  invoke void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull align 8 dereferenceable(129) %this, ptr noundef %context, ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull %opPos)
          to label %sw.epilog unwind label %lpad

sw.epilog:                                        ; preds = %sw.default, %sw.bb40, %_ZN11xalanc_1_1010XObjectPtrD2Ev.exit127, %_ZN11xalanc_1_1010XObjectPtrD2Ev.exit118, %_ZN11xalanc_1_1010XObjectPtrD2Ev.exit156, %_ZN11xalanc_1_1010XObjectPtrD2Ev.exit107, %sw.bb9, %if.then.i.i, %_ZN11xalanc_1_1010XObjectPtrD2Ev.exit
  %67 = load ptr, ptr %agg.result, align 8, !tbaa !0
  %cmp.i = icmp eq ptr %67, null
  br i1 %cmp.i, label %nrvo.skipdtor, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog
  %m_objectType.i = getelementptr inbounds nuw i8, ptr %67, i64 12
  %68 = load i32, ptr %m_objectType.i, align 4, !tbaa !28
  %cmp49.not = icmp eq i32 %68, 5
  br i1 %cmp49.not, label %nrvo.skipdtor, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %vtable.i.i132 = load ptr, ptr %executionContext, align 8, !tbaa !8
  %vfn.i.i133 = getelementptr inbounds nuw i8, ptr %vtable.i.i132, i64 184
  %69 = load ptr, ptr %vfn.i.i133, align 8
  %call.i.i151 = invoke noundef nonnull align 8 dereferenceable(36) ptr %69(ptr noundef nonnull align 8 dereferenceable(24) %executionContext)
          to label %call.i.i.noexc150 unwind label %lpad

call.i.i.noexc150:                                ; preds = %if.then
  %call3.i134 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %call.i.i151, i32 noundef 11)
          to label %invoke.cont2.i141 unwind label %if.then.i14.i135

invoke.cont2.i141:                                ; preds = %call.i.i.noexc150
  %m_locator.i142 = getelementptr inbounds nuw i8, ptr %this, i64 120
  %70 = load ptr, ptr %m_locator.i142, align 8, !tbaa !10
  %vtable.i143 = load ptr, ptr %executionContext, align 8, !tbaa !8
  %vfn.i144 = getelementptr inbounds nuw i8, ptr %vtable.i143, i64 16
  %71 = load ptr, ptr %vfn.i144, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(36) %call3.i134, ptr noundef %context, ptr noundef %70)
          to label %if.then.i.i145 unwind label %if.then.i14.i135

if.then.i.i145:                                   ; preds = %invoke.cont2.i141
  %vtable.i9.i146 = load ptr, ptr %executionContext, align 8, !tbaa !8
  %vfn.i10.i147 = getelementptr inbounds nuw i8, ptr %vtable.i9.i146, i64 192
  %72 = load ptr, ptr %vfn.i10.i147, align 8
  %call.i11.i148 = invoke noundef zeroext i1 %72(ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(36) %call.i.i151)
          to label %nrvo.skipdtor unwind label %terminate.lpad.i.i149

terminate.lpad.i.i149:                            ; preds = %if.then.i.i145
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  call void @__clang_call_terminate(ptr %74) #7
  unreachable

if.then.i14.i135:                                 ; preds = %invoke.cont2.i141, %call.i.i.noexc150
  %75 = landingpad { ptr, i32 }
          cleanup
  %vtable.i15.i136 = load ptr, ptr %executionContext, align 8, !tbaa !8
  %vfn.i16.i137 = getelementptr inbounds nuw i8, ptr %vtable.i15.i136, i64 192
  %76 = load ptr, ptr %vfn.i16.i137, align 8
  %call.i17.i138 = invoke noundef zeroext i1 %76(ptr noundef nonnull align 8 dereferenceable(24) %executionContext, ptr noundef nonnull align 8 dereferenceable(36) %call.i.i151)
          to label %ehcleanup51 unwind label %terminate.lpad.i18.i139

terminate.lpad.i18.i139:                          ; preds = %if.then.i14.i135
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #7
  unreachable

nrvo.skipdtor:                                    ; preds = %if.then.i.i145, %land.lhs.true, %sw.epilog
  ret void

ehcleanup51:                                      ; preds = %if.then.i14.i135, %ehcleanup39, %ehcleanup30, %ehcleanup19, %if.then.i14.i, %ehcleanup, %lpad
  %.pn88 = phi { ptr, i32 } [ %.pn86, %ehcleanup ], [ %.pn84, %ehcleanup19 ], [ %.pn82, %ehcleanup30 ], [ %.pn, %ehcleanup39 ], [ %1, %lpad ], [ %19, %if.then.i14.i ], [ %75, %if.then.i14.i135 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %agg.result) #6
  resume { ptr, i32 } %.pn88
}

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress nounwind uwtable
declare dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #1 align 2

declare void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #1 align 2

; Function Attrs: noinline noreturn nounwind uwtable
declare hidden void @__clang_call_terminate(ptr noundef) local_unnamed_addr #5

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!0 = !{!1, !2, i64 0}
!1 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !2, i64 0}
!2 = !{!"p1 _ZTSN11xalanc_1_107XObjectE", !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !5, i64 0}
!10 = !{!11, !22, i64 120}
!11 = !{!"_ZTSN11xalanc_1_105XPathE", !12, i64 0, !22, i64 120, !23, i64 128}
!12 = !{!"_ZTSN11xalanc_1_1015XPathExpressionE", !13, i64 0, !7, i64 32, !17, i64 40, !7, i64 72, !19, i64 80, !20, i64 88}
!13 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !14, i64 0, !15, i64 8, !15, i64 16, !16, i64 24}
!14 = !{!"p1 _ZTSN11xercesc_2_713MemoryManagerE", !3, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!"p1 int", !3, i64 0}
!17 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEE", !14, i64 0, !15, i64 8, !15, i64 16, !18, i64 24}
!18 = !{!"p1 _ZTSN11xalanc_1_106XTokenE", !3, i64 0}
!19 = !{!"p1 _ZTSN11xalanc_1_1014XalanDOMStringE", !3, i64 0}
!20 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !14, i64 0, !15, i64 8, !15, i64 16, !21, i64 24}
!21 = !{!"p1 double", !3, i64 0}
!22 = !{!"p1 _ZTSN11xercesc_2_77LocatorE", !3, i64 0}
!23 = !{!"bool", !4, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE: %agg.result"}
!26 = distinct !{!26, !"_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE"}
!27 = !{!17, !18, i64 24}
!28 = !{!29, !31, i64 12}
!29 = !{!"_ZTSN11xalanc_1_107XObjectE", !30, i64 0, !31, i64 12, !32, i64 16}
!30 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !7, i64 8}
!31 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !4, i64 0}
!32 = !{!"p1 _ZTSN11xalanc_1_1014XObjectFactoryE", !3, i64 0}
