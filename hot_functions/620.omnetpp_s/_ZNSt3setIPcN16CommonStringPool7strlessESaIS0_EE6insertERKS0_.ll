; ModuleID = '/tmp/tmp.epSvvZ3A1J/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/520.omnetpp_r/src/simulator/stringpool.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_ZNSt3setIPcN16CommonStringPool7strlessESaIS0_EE6insertERKS0_ = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i8 } @_ZNSt3setIPcN16CommonStringPool7strlessESaIS0_EE6insertERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x) local_unnamed_addr #0 comdat align 2 {
entry:
  %call = tail call { ptr, i8 } @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE16_M_insert_uniqueIRKS0_EESt4pairISt17_Rb_tree_iteratorIS0_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x)
  ret { ptr, i8 } %call
}

; Function Attrs: mustprogress uwtable
declare dso_local { ptr, i8 } @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE16_M_insert_uniqueIRKS0_EESt4pairISt17_Rb_tree_iteratorIS0_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0 align 2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
