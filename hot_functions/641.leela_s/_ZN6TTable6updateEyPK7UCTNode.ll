; ModuleID = '/tmp/tmp.2kOvwimIJG/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/541.leela_r/src/TTable.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.SMP::Lock" = type { ptr }
%class.TTEntry = type { i64, float, i32 }

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6TTable6updateEyPK7UCTNode(ptr noundef nonnull align 8 dereferenceable(32) %this, i64 noundef %hash, ptr noundef %node) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %lock = alloca %"class.SMP::Lock", align 8
  %_M_finish.i = getelementptr inbounds nuw i8, ptr %this, i64 8
  %0 = load ptr, ptr %_M_finish.i, align 8, !tbaa !0
  %1 = load ptr, ptr %this, align 8, !tbaa !6
  %sub.ptr.lhs.cast.i = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 4
  %conv2 = and i64 %hash, 4294967295
  %rem = urem i64 %conv2, %sub.ptr.div.i
  call void @llvm.lifetime.start.p0(ptr nonnull %lock) #4
  %m_mutex = getelementptr inbounds nuw i8, ptr %this, i64 24
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %lock, ptr noundef nonnull align 8 dereferenceable(8) %m_mutex)
  %2 = load ptr, ptr %this, align 8, !tbaa !6
  %add.ptr.i = getelementptr inbounds nuw %class.TTEntry, ptr %2, i64 %rem
  store i64 %hash, ptr %add.ptr.i, align 8, !tbaa !7
  %call7 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %node)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %3 = load ptr, ptr %this, align 8, !tbaa !6
  %add.ptr.i23 = getelementptr inbounds nuw %class.TTEntry, ptr %3, i64 %rem
  %m_visits = getelementptr inbounds nuw i8, ptr %add.ptr.i23, i64 12
  store i32 %call7, ptr %m_visits, align 4, !tbaa !12
  %call12 = invoke noundef i32 @_ZNK7UCTNode13get_blackwinsEv(ptr noundef nonnull align 8 dereferenceable(56) %node)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont
  %conv13 = sitofp i32 %call12 to float
  %4 = load ptr, ptr %this, align 8, !tbaa !6
  %add.ptr.i24 = getelementptr inbounds nuw %class.TTEntry, ptr %4, i64 %rem
  %m_blackwins = getelementptr inbounds nuw i8, ptr %add.ptr.i24, i64 8
  store float %conv13, ptr %m_blackwins, align 8, !tbaa !13
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %lock) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %lock) #4
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %5 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %lock) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %lock) #4
  resume { ptr, i32 } %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare noundef i32 @_ZNK7UCTNode13get_blackwinsEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!0 = !{!1, !2, i64 8}
!1 = !{!"_ZTSNSt12_Vector_baseI7TTEntrySaIS0_EE17_Vector_impl_dataE", !2, i64 0, !2, i64 8, !2, i64 16}
!2 = !{!"p1 _ZTS7TTEntry", !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!1, !2, i64 0}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTS7TTEntry", !9, i64 0, !10, i64 8, !11, i64 12}
!9 = !{!"long long", !4, i64 0}
!10 = !{!"float", !4, i64 0}
!11 = !{!"int", !4, i64 0}
!12 = !{!8, !11, i64 12}
!13 = !{!8, !10, i64 8}
