; ModuleID = '/tmp/tmp.F1RAlLIqVN/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/model/MACRelayUnitBase.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.SimTime = type { i64 }

@.str.19 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.22 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.23 = external hidden unnamed_addr constant [2 x i8], align 1
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@_ZN11cSimulation6simPtrE = external local_unnamed_addr global ptr, align 8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16MACRelayUnitBase26removeAgedEntriesFromTableEv(ptr noundef nonnull align 8 dereferenceable(260) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp.i.i = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp.i = alloca %class.SimTime, align 8
  %_M_left.i.i = getelementptr inbounds nuw i8, ptr %this, i64 232
  %0 = load ptr, ptr %_M_left.i.i, align 8, !tbaa !0
  %add.ptr.i.i = getelementptr inbounds nuw i8, ptr %this, i64 216
  %cmp.i.not44 = icmp eq ptr %0, %add.ptr.i.i
  br i1 %cmp.i.not44, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %agingTime = getelementptr inbounds nuw i8, ptr %this, i64 200
  %_M_string_length.i.i.i.i = getelementptr inbounds nuw i8, ptr %ref.tmp.i.i, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %ref.tmp.i.i, i64 16
  %_M_node_count.i.i.i = getelementptr inbounds nuw i8, ptr %this, i64 248
  br label %for.body

for.cond.cleanup.loopexit:                        ; preds = %if.end
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  ret void

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %iter.sroa.0.045 = phi ptr [ %0, %for.body.lr.ph ], [ %call.i, %if.end ]
  %call.i = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %iter.sroa.0.045) #7
  %_M_storage.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.045, i64 32
  %insertionTime = getelementptr inbounds nuw i8, ptr %iter.sroa.0.045, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %ref.tmp.i) #8, !noalias !9
  %2 = load i64, ptr %insertionTime, align 8, !tbaa !12, !noalias !9
  %3 = load i64, ptr %agingTime, align 8, !tbaa !12, !noalias !9
  %xor.i.i.i.i = xor i64 %3, %2
  %cmp.i.i.i.i = icmp slt i64 %xor.i.i.i.i, 0
  %add.i.i.i = add nsw i64 %3, %2
  store i64 %add.i.i.i, ptr %ref.tmp.i, align 8, !tbaa !12, !noalias !9
  %xor.i11.i.i.i = xor i64 %add.i.i.i, %3
  %cmp.i12.i.i.i = icmp sgt i64 %xor.i11.i.i.i, -1
  %or.cond.i = select i1 %cmp.i.i.i.i, i1 true, i1 %cmp.i12.i.i.i
  br i1 %or.cond.i, label %_ZplRK7SimTimeS1_.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body
  call void @_ZN7SimTime14overflowAddingERKS_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp.i, ptr noundef nonnull align 8 dereferenceable(8) %agingTime), !noalias !9
  br label %_ZplRK7SimTimeS1_.exit

_ZplRK7SimTimeS1_.exit:                           ; preds = %if.then.i.i.i, %for.body
  %4 = load i64, ptr %ref.tmp.i, align 8, !tbaa !12, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp.i) #8, !noalias !9
  %5 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !14, !noalias !16
  %sim_time.i.i = getelementptr inbounds nuw i8, ptr %5, i64 120
  %6 = load i64, ptr %sim_time.i.i, align 8, !tbaa !12, !noalias !19
  %cmp.i29.not = icmp sgt i64 %4, %6
  br i1 %cmp.i29.not, label %if.end, label %if.then

if.then:                                          ; preds = %_ZplRK7SimTimeS1_.exit
  %7 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !22
  %disable_tracing.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %8 = load i8, ptr %disable_tracing.i, align 8, !tbaa !24, !range !28, !noundef !29
  %loadedv.i = trunc nuw i8 %8 to i1
  br i1 %loadedv.i, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then
  %out.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %call1.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i, ptr noundef nonnull @.str.22, i64 noundef 40)
  call void @llvm.lifetime.start.p0(ptr nonnull %ref.tmp.i.i) #8
  call void @_ZNK10MACAddress3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp.i.i, ptr noundef nonnull align 1 dereferenceable(6) %_M_storage.i.i)
  %9 = load ptr, ptr %ref.tmp.i.i, align 8, !tbaa !30
  %10 = load i64, ptr %_M_string_length.i.i.i.i, align 8, !tbaa !34
  %call2.i2.i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i, ptr noundef %9, i64 noundef %10)
          to label %invoke.cont.i.i unwind label %lpad.i.i

invoke.cont.i.i:                                  ; preds = %cond.false
  %11 = load ptr, ptr %ref.tmp.i.i, align 8, !tbaa !30
  %cmp.i.i.i.i.i = icmp eq ptr %11, %1
  br i1 %cmp.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %if.then.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %invoke.cont.i.i
  %12 = load i64, ptr %_M_string_length.i.i.i.i, align 8, !tbaa !34
  %cmp3.i.i.i.i.i = icmp ult i64 %12, 16
  call void @llvm.assume(i1 %cmp3.i.i.i.i.i)
  br label %_ZN6cEnvirlsI10MACAddressEERS_RKT_.exit

if.then.i.i.i.i:                                  ; preds = %invoke.cont.i.i
  %13 = load i64, ptr %1, align 8, !tbaa !35
  %add.i.i.i.i.i = add i64 %13, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %add.i.i.i.i.i) #9
  br label %_ZN6cEnvirlsI10MACAddressEERS_RKT_.exit

lpad.i.i:                                         ; preds = %cond.false
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = load ptr, ptr %ref.tmp.i.i, align 8, !tbaa !30
  %16 = getelementptr inbounds nuw i8, ptr %ref.tmp.i.i, i64 16
  %cmp.i.i.i3.i.i = icmp eq ptr %15, %16
  br i1 %cmp.i.i.i3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i6.i.i, label %if.then.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i6.i.i: ; preds = %lpad.i.i
  %17 = load i64, ptr %_M_string_length.i.i.i.i, align 8, !tbaa !34
  %cmp3.i.i.i8.i.i = icmp ult i64 %17, 16
  call void @llvm.assume(i1 %cmp3.i.i.i8.i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

if.then.i.i4.i.i:                                 ; preds = %lpad.i.i
  %18 = load i64, ptr %16, align 8, !tbaa !35
  %add.i.i.i5.i.i = add i64 %18, 1
  call void @_ZdlPvm(ptr noundef %15, i64 noundef %add.i.i.i5.i.i) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %if.then.i.i4.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp.i.i) #8
  resume { ptr, i32 } %14

_ZN6cEnvirlsI10MACAddressEERS_RKT_.exit:          ; preds = %if.then.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp.i.i) #8
  %call1.i.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i, ptr noundef nonnull @.str.19, i64 noundef 9)
  %second22 = getelementptr inbounds nuw i8, ptr %iter.sroa.0.045, i64 40
  %19 = load i32, ptr %second22, align 4, !tbaa !36
  %call.i37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %out.i, i32 noundef %19)
  %call1.i.i40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %out.i, ptr noundef nonnull @.str.23, i64 noundef 1)
  br label %cond.end

cond.end:                                         ; preds = %_ZN6cEnvirlsI10MACAddressEERS_RKT_.exit, %if.then
  %call.i4.i.i = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %iter.sroa.0.045, ptr noundef nonnull align 8 dereferenceable(32) %add.ptr.i.i) #8
  call void @_ZdlPvm(ptr noundef nonnull %call.i4.i.i, i64 noundef 56) #9
  %20 = load i64, ptr %_M_node_count.i.i.i, align 8, !tbaa !38
  %dec.i.i.i = add i64 %20, -1
  store i64 %dec.i.i.i, ptr %_M_node_count.i.i.i, align 8, !tbaa !38
  br label %if.end

if.end:                                           ; preds = %cond.end, %_ZplRK7SimTimeS1_.exit
  %cmp.i.not = icmp eq ptr %call.i, %add.ptr.i.i
  br i1 %cmp.i.not, label %for.cond.cleanup.loopexit, label %for.body, !llvm.loop !39
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN7SimTime14overflowAddingERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNK10MACAddress3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 1 dereferenceable(6)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

!0 = !{!1, !6, i64 16}
!1 = !{!"_ZTSSt15_Rb_tree_header", !2, i64 0, !8, i64 32}
!2 = !{!"_ZTSSt18_Rb_tree_node_base", !3, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!3 = !{!"_ZTSSt14_Rb_tree_color", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZplRK7SimTimeS1_: %agg.result"}
!11 = distinct !{!11, !"_ZplRK7SimTimeS1_"}
!12 = !{!13, !8, i64 0}
!13 = !{!"_ZTS7SimTime", !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS11cSimulation", !7, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_Z7simTimev: %agg.result"}
!18 = distinct !{!18, !"_Z7simTimev"}
!19 = !{!20, !17}
!20 = distinct !{!20, !21, !"_ZNK11cSimulation10getSimTimeEv: %agg.result"}
!21 = distinct !{!21, !"_ZNK11cSimulation10getSimTimeEv"}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS6cEnvir", !7, i64 0}
!24 = !{!25, !26, i64 8}
!25 = !{!"_ZTS6cEnvir", !26, i64 8, !26, i64 9, !26, i64 10, !27, i64 16}
!26 = !{!"bool", !4, i64 0}
!27 = !{!"_ZTSSo"}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!31, !33, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !8, i64 8, !4, i64 16}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!33 = !{!"p1 omnipotent char", !7, i64 0}
!34 = !{!31, !8, i64 8}
!35 = !{!4, !4, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !4, i64 0}
!38 = !{!1, !8, i64 32}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
