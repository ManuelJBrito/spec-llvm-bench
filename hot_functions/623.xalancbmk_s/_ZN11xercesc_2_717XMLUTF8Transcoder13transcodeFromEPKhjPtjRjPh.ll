; ModuleID = '/tmp/tmp.s3BfVG5Pg6/extracted.ll'
source_filename = "/home/manuel/Dev/spec-llvm-bench/test-suite/test-suite-externals/speccpu2017/benchspec/CPU/523.xalancbmk_r/src/XMLUTF8Transcoder.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ZN11xercesc_2_7L9gUTFBytesE = external hidden unnamed_addr constant [256 x i8], align 16
@_ZN11xercesc_2_7L21gUTFByteIndicatorTestE = external hidden unnamed_addr constant [6 x i8], align 1
@_ZN11xercesc_2_7L17gUTFByteIndicatorE = external hidden unnamed_addr constant [6 x i8], align 1
@.str = external hidden unnamed_addr constant [133 x i8], align 1
@_ZTIN11xercesc_2_722UTFDataFormatExceptionE = external dso_local constant { ptr, ptr, ptr }, align 8
@_ZN11xercesc_2_7L11gUTFOffsetsE = external hidden unnamed_addr constant [6 x i32], align 16
@_ZTIN11xercesc_2_720TranscodingExceptionE = external dso_local constant { ptr, ptr, ptr }, align 8
@.str.1 = external hidden unnamed_addr constant [146 x i8], align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717XMLUTF8Transcoder13transcodeFromEPKhjPtjRjPh(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %this, ptr noundef %srcData, i32 noundef %srcCount, ptr noundef %toFill, i32 noundef %maxChars, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %bytesEaten, ptr noundef writeonly captures(none) %charSizes) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %len.i388 = alloca [2 x i8], align 1
  %pos.i389 = alloca [2 x i8], align 1
  %byte.i390 = alloca [2 x i8], align 1
  %len.i375 = alloca [2 x i8], align 1
  %pos.i376 = alloca [2 x i8], align 1
  %byte.i377 = alloca [2 x i8], align 1
  %len.i362 = alloca [2 x i8], align 1
  %pos.i363 = alloca [2 x i8], align 1
  %byte.i364 = alloca [2 x i8], align 1
  %len.i347 = alloca [2 x i8], align 1
  %pos.i348 = alloca [2 x i8], align 1
  %byte.i349 = alloca [2 x i8], align 1
  %len.i334 = alloca [2 x i8], align 1
  %pos.i335 = alloca [2 x i8], align 1
  %byte.i336 = alloca [2 x i8], align 1
  %len.i = alloca [2 x i8], align 1
  %pos.i = alloca [2 x i8], align 1
  %byte.i = alloca [2 x i8], align 1
  %pos = alloca [2 x i8], align 1
  %len = alloca [2 x i8], align 1
  %byte = alloca [2 x i8], align 1
  %byte0 = alloca [2 x i8], align 1
  %byte1 = alloca [2 x i8], align 1
  %byte081 = alloca [2 x i8], align 1
  %byte183 = alloca [2 x i8], align 1
  %byte0119 = alloca [2 x i8], align 1
  %byte1121 = alloca [2 x i8], align 1
  %len149 = alloca [2 x i8], align 1
  %byte153 = alloca [2 x i8], align 1
  %tobool = icmp ne i32 %srcCount, 0
  %tobool2 = icmp ne i32 %maxChars, 0
  %or.cond = and i1 %tobool, %tobool2
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  %idx.ext = zext i32 %srcCount to i64
  %add.ptr = getelementptr i8, ptr %srcData, i64 %idx.ext
  %idx.ext3 = zext i32 %maxChars to i64
  %add.ptr4 = getelementptr i16, ptr %toFill, i64 %idx.ext3
  %cmp458 = icmp ult ptr %srcData, %add.ptr
  %cmp5459 = icmp ult ptr %toFill, %add.ptr4
  %0 = and i1 %cmp458, %cmp5459
  br i1 %0, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %cleanup205, %while.body.preheader
  %srcPtr.0462 = phi ptr [ %srcPtr.3, %cleanup205 ], [ %srcData, %while.body.preheader ]
  %sizePtr.0461 = phi ptr [ %sizePtr.4, %cleanup205 ], [ %charSizes, %while.body.preheader ]
  %outPtr.0460 = phi ptr [ %outPtr.5, %cleanup205 ], [ %toFill, %while.body.preheader ]
  %1 = load i8, ptr %srcPtr.0462, align 1, !tbaa !0
  %cmp6 = icmp sgt i8 %1, -1
  br i1 %cmp6, label %do.body.preheader, label %if.end25

do.body.preheader:                                ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %do.body, %do.body.preheader
  %outPtr.1 = phi ptr [ %incdec.ptr9, %do.body ], [ %outPtr.0460, %do.body.preheader ]
  %srcPtr.1 = phi ptr [ %incdec.ptr, %do.body ], [ %srcPtr.0462, %do.body.preheader ]
  %incdec.ptr = getelementptr i8, ptr %srcPtr.1, i64 1
  %2 = load i8, ptr %srcPtr.1, align 1, !tbaa !0
  %conv8 = zext i8 %2 to i16
  %incdec.ptr9 = getelementptr i8, ptr %outPtr.1, i64 2
  store i16 %conv8, ptr %outPtr.1, align 2, !tbaa !3
  %3 = load i8, ptr %incdec.ptr, align 1, !tbaa !0
  %cmp11 = icmp slt i8 %3, 0
  %cmp12.not = icmp eq ptr %incdec.ptr, %add.ptr
  %or.cond330 = or i1 %cmp12.not, %cmp11
  %cmp14.not = icmp eq ptr %incdec.ptr9, %add.ptr4
  %or.cond331 = or i1 %cmp14.not, %or.cond330
  br i1 %or.cond331, label %do.end, label %do.body, !llvm.loop !5

do.end:                                           ; preds = %do.body
  %incdec.ptr.lcssa = phi ptr [ %incdec.ptr, %do.body ]
  %incdec.ptr9.lcssa = phi ptr [ %incdec.ptr9, %do.body ]
  %cmp12.not.lcssa = phi i1 [ %cmp12.not, %do.body ]
  %cmp14.not.lcssa = phi i1 [ %cmp14.not, %do.body ]
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %srcPtr.0462 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void @llvm.memset.p0.i64(ptr align 1 %sizePtr.0461, i8 1, i64 %sub.ptr.sub, i1 false)
  %or.cond332 = or i1 %cmp14.not.lcssa, %cmp12.not.lcssa
  br i1 %or.cond332, label %while.end.loopexit, label %if.end25thread-pre-split

if.end25thread-pre-split:                         ; preds = %do.end
  %add.ptr19 = getelementptr i8, ptr %sizePtr.0461, i64 %sub.ptr.sub
  %.pr = load i8, ptr %incdec.ptr.lcssa, align 1, !tbaa !0
  br label %if.end25

if.end25:                                         ; preds = %if.end25thread-pre-split, %while.body
  %4 = phi i8 [ %.pr, %if.end25thread-pre-split ], [ %1, %while.body ]
  %outPtr.2 = phi ptr [ %incdec.ptr9.lcssa, %if.end25thread-pre-split ], [ %outPtr.0460, %while.body ]
  %sizePtr.1 = phi ptr [ %add.ptr19, %if.end25thread-pre-split ], [ %sizePtr.0461, %while.body ]
  %srcPtr.2 = phi ptr [ %incdec.ptr.lcssa, %if.end25thread-pre-split ], [ %srcPtr.0462, %while.body ]
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr i8, ptr @_ZN11xercesc_2_7L9gUTFBytesE, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !0
  %idx.ext27 = zext i8 %5 to i64
  %add.ptr28 = getelementptr i8, ptr %srcPtr.2, i64 %idx.ext27
  %cmp29.not = icmp ult ptr %add.ptr28, %add.ptr
  br i1 %cmp29.not, label %if.end31, label %while.end.loopexit

if.end31:                                         ; preds = %if.end25
  %arrayidx33 = getelementptr i8, ptr @_ZN11xercesc_2_7L21gUTFByteIndicatorTestE, i64 %idx.ext27
  %6 = load i8, ptr %arrayidx33, align 1, !tbaa !0
  %and326 = and i8 %6, %4
  %arrayidx37 = getelementptr i8, ptr @_ZN11xercesc_2_7L17gUTFByteIndicatorE, i64 %idx.ext27
  %7 = load i8, ptr %arrayidx37, align 1, !tbaa !0
  %cmp39.not = icmp eq i8 %and326, %7
  br i1 %cmp39.not, label %if.end46, label %if.then40

if.then40:                                        ; preds = %if.end31
  %srcPtr.2.lcssa = phi ptr [ %srcPtr.2, %if.end31 ]
  %.lcssa481 = phi i8 [ %5, %if.end31 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %pos) #5
  store i16 49, ptr %pos, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %len) #5
  %add = add i8 %.lcssa481, 49
  store i8 %add, ptr %len, align 1, !tbaa !0
  %arrayinit.element = getelementptr inbounds nuw i8, ptr %len, i64 1
  store i8 0, ptr %arrayinit.element, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %byte) #5
  %8 = load i8, ptr %srcPtr.2.lcssa, align 1, !tbaa !0
  store i8 %8, ptr %byte, align 1, !tbaa !0
  %arrayinit.element42 = getelementptr inbounds nuw i8, ptr %byte, i64 1
  store i8 0, ptr %arrayinit.element42, align 1, !tbaa !0
  %exception = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %fMemoryManager.i = getelementptr inbounds nuw i8, ptr %this, i64 24
  %9 = load ptr, ptr %fMemoryManager.i, align 8, !tbaa !7
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %exception, ptr noundef nonnull @.str, i32 noundef 193, i32 noundef 110, ptr noundef nonnull %pos, ptr noundef nonnull %byte, ptr noundef nonnull %len, ptr noundef null, ptr noundef %9)
          to label %invoke.cont45 unwind label %lpad

invoke.cont45:                                    ; preds = %if.then40
  call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

lpad:                                             ; preds = %if.then40
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %exception) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %byte) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %pos) #5
  br label %common.resume

if.end46:                                         ; preds = %if.end31
  switch i8 %5, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb53
    i8 3, label %sw.bb104
  ]

sw.bb:                                            ; preds = %if.end46
  %add.ptr47 = getelementptr i8, ptr %srcPtr.2, i64 1
  %11 = load i8, ptr %add.ptr47, align 1, !tbaa !0
  %cmp.not.i = icmp slt i8 %11, -64
  br i1 %cmp.not.i, label %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %.lcssa480 = phi i8 [ %11, %sw.bb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %len.i) #5
  store i8 50, ptr %len.i, align 1, !tbaa !0
  %arrayinit.element.i = getelementptr inbounds nuw i8, ptr %len.i, i64 1
  store i8 0, ptr %arrayinit.element.i, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %pos.i) #5
  store i8 50, ptr %pos.i, align 1, !tbaa !0
  %arrayinit.element5.i = getelementptr inbounds nuw i8, ptr %pos.i, i64 1
  store i8 0, ptr %arrayinit.element5.i, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %byte.i) #5
  store i8 %.lcssa480, ptr %byte.i, align 1, !tbaa !0
  %arrayinit.element6.i = getelementptr inbounds nuw i8, ptr %byte.i, i64 1
  store i8 0, ptr %arrayinit.element6.i, align 1, !tbaa !0
  %exception.i = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %fMemoryManager.i.i = getelementptr inbounds nuw i8, ptr %this, i64 24
  %12 = load ptr, ptr %fMemoryManager.i.i, align 8, !tbaa !7
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %exception.i, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 110, ptr noundef nonnull %pos.i, ptr noundef nonnull %byte.i, ptr noundef nonnull %len.i, ptr noundef null, ptr noundef %12)
          to label %invoke.cont.i unwind label %lpad.i

invoke.cont.i:                                    ; preds = %if.then.i
  call void @__cxa_throw(ptr nonnull %exception.i, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

common.resume:                                    ; preds = %lpad181, %lpad158, %lpad.i398, %lpad.i385, %lpad.i372, %lpad127, %lpad89, %lpad.i357, %lpad.i344, %lpad67, %lpad.i, %lpad
  %common.resume.op = phi { ptr, i32 } [ %13, %lpad.i ], [ %21, %lpad.i344 ], [ %24, %lpad.i357 ], [ %39, %lpad.i372 ], [ %42, %lpad.i385 ], [ %45, %lpad.i398 ], [ %10, %lpad ], [ %50, %lpad158 ], [ %53, %lpad181 ], [ %18, %lpad67 ], [ %28, %lpad89 ], [ %36, %lpad127 ]
  resume { ptr, i32 } %common.resume.op

lpad.i:                                           ; preds = %if.then.i
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %exception.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %byte.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %pos.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %len.i) #5
  br label %common.resume

_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit: ; preds = %sw.bb
  %conv49 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv49, 6
  %incdec.ptr50 = getelementptr i8, ptr %srcPtr.2, i64 2
  %conv51 = zext i8 %11 to i32
  %add52 = add nuw nsw i32 %shl, %conv51
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end46
  %cmp55 = icmp eq i8 %4, -32
  br i1 %cmp55, label %land.lhs.true56, label %if.end71

land.lhs.true56:                                  ; preds = %sw.bb53
  %add.ptr57 = getelementptr i8, ptr %srcPtr.2, i64 1
  %14 = load i8, ptr %add.ptr57, align 1, !tbaa !0
  %cmp59 = icmp ult i8 %14, -96
  br i1 %cmp59, label %if.then60, label %if.end71

if.then60:                                        ; preds = %land.lhs.true56
  %srcPtr.2.lcssa498 = phi ptr [ %srcPtr.2, %land.lhs.true56 ]
  %add.ptr57.le = getelementptr i8, ptr %srcPtr.2.lcssa498, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %byte0) #5
  %15 = load i8, ptr %srcPtr.2.lcssa498, align 1, !tbaa !0
  store i8 %15, ptr %byte0, align 1, !tbaa !0
  %arrayinit.element61 = getelementptr inbounds nuw i8, ptr %byte0, i64 1
  store i8 0, ptr %arrayinit.element61, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %byte1) #5
  %16 = load i8, ptr %add.ptr57.le, align 1, !tbaa !0
  store i8 %16, ptr %byte1, align 1, !tbaa !0
  %arrayinit.element63 = getelementptr inbounds nuw i8, ptr %byte1, i64 1
  store i8 0, ptr %arrayinit.element63, align 1, !tbaa !0
  %exception64 = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %fMemoryManager.i333 = getelementptr inbounds nuw i8, ptr %this, i64 24
  %17 = load ptr, ptr %fMemoryManager.i333, align 8, !tbaa !7
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %exception64, ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 112, ptr noundef nonnull %byte0, ptr noundef nonnull %byte1, ptr noundef null, ptr noundef null, ptr noundef %17)
          to label %invoke.cont70 unwind label %lpad67

invoke.cont70:                                    ; preds = %if.then60
  call void @__cxa_throw(ptr nonnull %exception64, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

lpad67:                                           ; preds = %if.then60
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %exception64) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %byte1) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %byte0) #5
  br label %common.resume

if.end71:                                         ; preds = %land.lhs.true56, %sw.bb53
  %add.ptr72 = getelementptr i8, ptr %srcPtr.2, i64 1
  %19 = load i8, ptr %add.ptr72, align 1, !tbaa !0
  %cmp.not.i337 = icmp slt i8 %19, -64
  br i1 %cmp.not.i337, label %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit346, label %if.then.i338

if.then.i338:                                     ; preds = %if.end71
  %.lcssa475 = phi i8 [ %19, %if.end71 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %len.i334) #5
  store i8 51, ptr %len.i334, align 1, !tbaa !0
  %arrayinit.element.i339 = getelementptr inbounds nuw i8, ptr %len.i334, i64 1
  store i8 0, ptr %arrayinit.element.i339, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %pos.i335) #5
  store i8 50, ptr %pos.i335, align 1, !tbaa !0
  %arrayinit.element5.i340 = getelementptr inbounds nuw i8, ptr %pos.i335, i64 1
  store i8 0, ptr %arrayinit.element5.i340, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %byte.i336) #5
  store i8 %.lcssa475, ptr %byte.i336, align 1, !tbaa !0
  %arrayinit.element6.i341 = getelementptr inbounds nuw i8, ptr %byte.i336, i64 1
  store i8 0, ptr %arrayinit.element6.i341, align 1, !tbaa !0
  %exception.i342 = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %fMemoryManager.i.i343 = getelementptr inbounds nuw i8, ptr %this, i64 24
  %20 = load ptr, ptr %fMemoryManager.i.i343, align 8, !tbaa !7
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %exception.i342, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 110, ptr noundef nonnull %pos.i335, ptr noundef nonnull %byte.i336, ptr noundef nonnull %len.i334, ptr noundef null, ptr noundef %20)
          to label %invoke.cont.i345 unwind label %lpad.i344

invoke.cont.i345:                                 ; preds = %if.then.i338
  call void @__cxa_throw(ptr nonnull %exception.i342, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

lpad.i344:                                        ; preds = %if.then.i338
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %exception.i342) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %byte.i336) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %pos.i335) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %len.i334) #5
  br label %common.resume

_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit346: ; preds = %if.end71
  %add.ptr73 = getelementptr i8, ptr %srcPtr.2, i64 2
  %22 = load i8, ptr %add.ptr73, align 1, !tbaa !0
  %cmp.not.i350 = icmp slt i8 %22, -64
  br i1 %cmp.not.i350, label %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit359, label %if.then.i351

if.then.i351:                                     ; preds = %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit346
  %.lcssa478 = phi i8 [ %22, %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit346 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %len.i347) #5
  store i8 51, ptr %len.i347, align 1, !tbaa !0
  %arrayinit.element.i352 = getelementptr inbounds nuw i8, ptr %len.i347, i64 1
  store i8 0, ptr %arrayinit.element.i352, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %pos.i348) #5
  store i8 51, ptr %pos.i348, align 1, !tbaa !0
  %arrayinit.element5.i353 = getelementptr inbounds nuw i8, ptr %pos.i348, i64 1
  store i8 0, ptr %arrayinit.element5.i353, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %byte.i349) #5
  store i8 %.lcssa478, ptr %byte.i349, align 1, !tbaa !0
  %arrayinit.element6.i354 = getelementptr inbounds nuw i8, ptr %byte.i349, i64 1
  store i8 0, ptr %arrayinit.element6.i354, align 1, !tbaa !0
  %exception.i355 = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %fMemoryManager.i.i356 = getelementptr inbounds nuw i8, ptr %this, i64 24
  %23 = load ptr, ptr %fMemoryManager.i.i356, align 8, !tbaa !7
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %exception.i355, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 110, ptr noundef nonnull %pos.i348, ptr noundef nonnull %byte.i349, ptr noundef nonnull %len.i347, ptr noundef null, ptr noundef %23)
          to label %invoke.cont.i358 unwind label %lpad.i357

invoke.cont.i358:                                 ; preds = %if.then.i351
  call void @__cxa_throw(ptr nonnull %exception.i355, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

lpad.i357:                                        ; preds = %if.then.i351
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %exception.i355) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %byte.i349) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %pos.i348) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %len.i347) #5
  br label %common.resume

_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit359: ; preds = %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit346
  %cmp75 = icmp eq i8 %4, -19
  %cmp79 = icmp samesign ugt i8 %19, -97
  %or.cond408 = select i1 %cmp75, i1 %cmp79, i1 false
  br i1 %or.cond408, label %if.then80, label %if.end93

if.then80:                                        ; preds = %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit359
  %srcPtr.2.lcssa501 = phi ptr [ %srcPtr.2, %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit359 ]
  %add.ptr72.le = getelementptr i8, ptr %srcPtr.2.lcssa501, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %byte081) #5
  %25 = load i8, ptr %srcPtr.2.lcssa501, align 1, !tbaa !0
  store i8 %25, ptr %byte081, align 1, !tbaa !0
  %arrayinit.element82 = getelementptr inbounds nuw i8, ptr %byte081, i64 1
  store i8 0, ptr %arrayinit.element82, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %byte183) #5
  %26 = load i8, ptr %add.ptr72.le, align 1, !tbaa !0
  store i8 %26, ptr %byte183, align 1, !tbaa !0
  %arrayinit.element85 = getelementptr inbounds nuw i8, ptr %byte183, i64 1
  store i8 0, ptr %arrayinit.element85, align 1, !tbaa !0
  %exception86 = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %fMemoryManager.i360 = getelementptr inbounds nuw i8, ptr %this, i64 24
  %27 = load ptr, ptr %fMemoryManager.i360, align 8, !tbaa !7
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %exception86, ptr noundef nonnull @.str, i32 noundef 305, i32 noundef 113, ptr noundef nonnull %byte081, ptr noundef nonnull %byte183, ptr noundef null, ptr noundef null, ptr noundef %27)
          to label %invoke.cont92 unwind label %lpad89

invoke.cont92:                                    ; preds = %if.then80
  call void @__cxa_throw(ptr nonnull %exception86, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

lpad89:                                           ; preds = %if.then80
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %exception86) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %byte183) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %byte081) #5
  br label %common.resume

if.end93:                                         ; preds = %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit359
  %conv95 = zext i8 %4 to i32
  %conv98 = zext i8 %19 to i32
  %29 = shl nuw nsw i32 %conv95, 12
  %30 = shl nuw nsw i32 %conv98, 6
  %shl100 = add nuw nsw i32 %30, %29
  %incdec.ptr101 = getelementptr i8, ptr %srcPtr.2, i64 3
  %conv102 = zext i8 %22 to i32
  %add103 = add nuw nsw i32 %shl100, %conv102
  br label %sw.epilog

sw.bb104:                                         ; preds = %if.end46
  switch i8 %4, label %if.end131 [
    i8 -16, label %land.lhs.true107
    i8 -12, label %land.lhs.true114
  ]

land.lhs.true107:                                 ; preds = %sw.bb104
  %add.ptr108 = getelementptr i8, ptr %srcPtr.2, i64 1
  %31 = load i8, ptr %add.ptr108, align 1, !tbaa !0
  %cmp110 = icmp ult i8 %31, -112
  br i1 %cmp110, label %if.then118, label %if.end131

land.lhs.true114:                                 ; preds = %sw.bb104
  %add.ptr115 = getelementptr i8, ptr %srcPtr.2, i64 1
  %32 = load i8, ptr %add.ptr115, align 1, !tbaa !0
  %cmp117 = icmp ugt i8 %32, -113
  br i1 %cmp117, label %if.then118, label %if.end131

if.then118:                                       ; preds = %land.lhs.true114, %land.lhs.true107
  %srcPtr.2.lcssa494 = phi ptr [ %srcPtr.2, %land.lhs.true114 ], [ %srcPtr.2, %land.lhs.true107 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %byte0119) #5
  %33 = load i8, ptr %srcPtr.2.lcssa494, align 1, !tbaa !0
  store i8 %33, ptr %byte0119, align 1, !tbaa !0
  %arrayinit.element120 = getelementptr inbounds nuw i8, ptr %byte0119, i64 1
  store i8 0, ptr %arrayinit.element120, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %byte1121) #5
  %add.ptr122 = getelementptr i8, ptr %srcPtr.2.lcssa494, i64 1
  %34 = load i8, ptr %add.ptr122, align 1, !tbaa !0
  store i8 %34, ptr %byte1121, align 1, !tbaa !0
  %arrayinit.element123 = getelementptr inbounds nuw i8, ptr %byte1121, i64 1
  store i8 0, ptr %arrayinit.element123, align 1, !tbaa !0
  %exception124 = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %fMemoryManager.i361 = getelementptr inbounds nuw i8, ptr %this, i64 24
  %35 = load ptr, ptr %fMemoryManager.i361, align 8, !tbaa !7
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %exception124, ptr noundef nonnull @.str, i32 noundef 331, i32 noundef 114, ptr noundef nonnull %byte0119, ptr noundef nonnull %byte1121, ptr noundef null, ptr noundef null, ptr noundef %35)
          to label %invoke.cont130 unwind label %lpad127

invoke.cont130:                                   ; preds = %if.then118
  call void @__cxa_throw(ptr nonnull %exception124, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

lpad127:                                          ; preds = %if.then118
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %exception124) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %byte1121) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %byte0119) #5
  br label %common.resume

if.end131:                                        ; preds = %land.lhs.true114, %land.lhs.true107, %sw.bb104
  %add.ptr132 = getelementptr i8, ptr %srcPtr.2, i64 1
  %37 = load i8, ptr %add.ptr132, align 1, !tbaa !0
  %cmp.not.i365 = icmp slt i8 %37, -64
  br i1 %cmp.not.i365, label %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit374, label %if.then.i366

if.then.i366:                                     ; preds = %if.end131
  %.lcssa = phi i8 [ %37, %if.end131 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %len.i362) #5
  store i8 52, ptr %len.i362, align 1, !tbaa !0
  %arrayinit.element.i367 = getelementptr inbounds nuw i8, ptr %len.i362, i64 1
  store i8 0, ptr %arrayinit.element.i367, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %pos.i363) #5
  store i8 50, ptr %pos.i363, align 1, !tbaa !0
  %arrayinit.element5.i368 = getelementptr inbounds nuw i8, ptr %pos.i363, i64 1
  store i8 0, ptr %arrayinit.element5.i368, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %byte.i364) #5
  store i8 %.lcssa, ptr %byte.i364, align 1, !tbaa !0
  %arrayinit.element6.i369 = getelementptr inbounds nuw i8, ptr %byte.i364, i64 1
  store i8 0, ptr %arrayinit.element6.i369, align 1, !tbaa !0
  %exception.i370 = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %fMemoryManager.i.i371 = getelementptr inbounds nuw i8, ptr %this, i64 24
  %38 = load ptr, ptr %fMemoryManager.i.i371, align 8, !tbaa !7
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %exception.i370, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 110, ptr noundef nonnull %pos.i363, ptr noundef nonnull %byte.i364, ptr noundef nonnull %len.i362, ptr noundef null, ptr noundef %38)
          to label %invoke.cont.i373 unwind label %lpad.i372

invoke.cont.i373:                                 ; preds = %if.then.i366
  call void @__cxa_throw(ptr nonnull %exception.i370, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

lpad.i372:                                        ; preds = %if.then.i366
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %exception.i370) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %byte.i364) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %pos.i363) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %len.i362) #5
  br label %common.resume

_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit374: ; preds = %if.end131
  %add.ptr133 = getelementptr i8, ptr %srcPtr.2, i64 2
  %40 = load i8, ptr %add.ptr133, align 1, !tbaa !0
  %cmp.not.i378 = icmp slt i8 %40, -64
  br i1 %cmp.not.i378, label %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit387, label %if.then.i379

if.then.i379:                                     ; preds = %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit374
  %.lcssa472 = phi i8 [ %40, %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit374 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %len.i375) #5
  store i8 52, ptr %len.i375, align 1, !tbaa !0
  %arrayinit.element.i380 = getelementptr inbounds nuw i8, ptr %len.i375, i64 1
  store i8 0, ptr %arrayinit.element.i380, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %pos.i376) #5
  store i8 51, ptr %pos.i376, align 1, !tbaa !0
  %arrayinit.element5.i381 = getelementptr inbounds nuw i8, ptr %pos.i376, i64 1
  store i8 0, ptr %arrayinit.element5.i381, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %byte.i377) #5
  store i8 %.lcssa472, ptr %byte.i377, align 1, !tbaa !0
  %arrayinit.element6.i382 = getelementptr inbounds nuw i8, ptr %byte.i377, i64 1
  store i8 0, ptr %arrayinit.element6.i382, align 1, !tbaa !0
  %exception.i383 = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %fMemoryManager.i.i384 = getelementptr inbounds nuw i8, ptr %this, i64 24
  %41 = load ptr, ptr %fMemoryManager.i.i384, align 8, !tbaa !7
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %exception.i383, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 110, ptr noundef nonnull %pos.i376, ptr noundef nonnull %byte.i377, ptr noundef nonnull %len.i375, ptr noundef null, ptr noundef %41)
          to label %invoke.cont.i386 unwind label %lpad.i385

invoke.cont.i386:                                 ; preds = %if.then.i379
  call void @__cxa_throw(ptr nonnull %exception.i383, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

lpad.i385:                                        ; preds = %if.then.i379
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %exception.i383) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %byte.i377) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %pos.i376) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %len.i375) #5
  br label %common.resume

_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit387: ; preds = %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit374
  %add.ptr134 = getelementptr i8, ptr %srcPtr.2, i64 3
  %43 = load i8, ptr %add.ptr134, align 1, !tbaa !0
  %cmp.not.i391 = icmp slt i8 %43, -64
  br i1 %cmp.not.i391, label %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit400, label %if.then.i392

if.then.i392:                                     ; preds = %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit387
  %.lcssa474 = phi i8 [ %43, %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit387 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %len.i388) #5
  store i8 52, ptr %len.i388, align 1, !tbaa !0
  %arrayinit.element.i393 = getelementptr inbounds nuw i8, ptr %len.i388, i64 1
  store i8 0, ptr %arrayinit.element.i393, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %pos.i389) #5
  store i8 52, ptr %pos.i389, align 1, !tbaa !0
  %arrayinit.element5.i394 = getelementptr inbounds nuw i8, ptr %pos.i389, i64 1
  store i8 0, ptr %arrayinit.element5.i394, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %byte.i390) #5
  store i8 %.lcssa474, ptr %byte.i390, align 1, !tbaa !0
  %arrayinit.element6.i395 = getelementptr inbounds nuw i8, ptr %byte.i390, i64 1
  store i8 0, ptr %arrayinit.element6.i395, align 1, !tbaa !0
  %exception.i396 = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %fMemoryManager.i.i397 = getelementptr inbounds nuw i8, ptr %this, i64 24
  %44 = load ptr, ptr %fMemoryManager.i.i397, align 8, !tbaa !7
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %exception.i396, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 110, ptr noundef nonnull %pos.i389, ptr noundef nonnull %byte.i390, ptr noundef nonnull %len.i388, ptr noundef null, ptr noundef %44)
          to label %invoke.cont.i399 unwind label %lpad.i398

invoke.cont.i399:                                 ; preds = %if.then.i392
  call void @__cxa_throw(ptr nonnull %exception.i396, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

lpad.i398:                                        ; preds = %if.then.i392
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %exception.i396) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %byte.i390) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %pos.i389) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %len.i388) #5
  br label %common.resume

_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit400: ; preds = %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit387
  %conv136 = zext i8 %4 to i32
  %conv139 = zext i8 %37 to i32
  %46 = shl nuw nsw i32 %conv136, 12
  %47 = shl nuw nsw i32 %conv139, 6
  %shl141 = add nuw nsw i32 %47, %46
  %conv143 = zext i8 %40 to i32
  %add144 = add nuw nsw i32 %shl141, %conv143
  %shl145 = shl nuw nsw i32 %add144, 6
  %incdec.ptr146 = getelementptr i8, ptr %srcPtr.2, i64 4
  %conv147 = zext i8 %43 to i32
  %add148 = add nuw nsw i32 %shl145, %conv147
  br label %sw.epilog

sw.default:                                       ; preds = %if.end46
  %srcPtr.2.lcssa493 = phi ptr [ %srcPtr.2, %if.end46 ]
  %.lcssa482 = phi i8 [ %5, %if.end46 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %len149) #5
  %add150 = add i8 %.lcssa482, 49
  store i8 %add150, ptr %len149, align 1, !tbaa !0
  %arrayinit.element152 = getelementptr inbounds nuw i8, ptr %len149, i64 1
  store i8 0, ptr %arrayinit.element152, align 1, !tbaa !0
  call void @llvm.lifetime.start.p0(ptr nonnull %byte153) #5
  %48 = load i8, ptr %srcPtr.2.lcssa493, align 1, !tbaa !0
  store i8 %48, ptr %byte153, align 1, !tbaa !0
  %arrayinit.element154 = getelementptr inbounds nuw i8, ptr %byte153, i64 1
  store i8 0, ptr %arrayinit.element154, align 1, !tbaa !0
  %exception155 = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %fMemoryManager.i401 = getelementptr inbounds nuw i8, ptr %this, i64 24
  %49 = load ptr, ptr %fMemoryManager.i401, align 8, !tbaa !7
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %exception155, ptr noundef nonnull @.str, i32 noundef 364, i32 noundef 115, ptr noundef nonnull %byte153, ptr noundef nonnull %len149, ptr noundef null, ptr noundef null, ptr noundef %49)
          to label %invoke.cont161 unwind label %lpad158

invoke.cont161:                                   ; preds = %sw.default
  call void @__cxa_throw(ptr nonnull %exception155, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

lpad158:                                          ; preds = %sw.default
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %exception155) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %byte153) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %len149) #5
  br label %common.resume

sw.epilog:                                        ; preds = %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit400, %if.end93, %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit
  %srcPtr.3 = phi ptr [ %incdec.ptr50, %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit ], [ %incdec.ptr101, %if.end93 ], [ %incdec.ptr146, %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit400 ]
  %tmpVal.0 = phi i32 [ %add52, %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit ], [ %add103, %if.end93 ], [ %add148, %_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj.exit400 ]
  %arrayidx163 = getelementptr i32, ptr @_ZN11xercesc_2_7L11gUTFOffsetsE, i64 %idx.ext27
  %51 = load i32, ptr %arrayidx163, align 4, !tbaa !13
  %sub = sub i32 %tmpVal.0, %51
  %tobool165.not = icmp ult i32 %sub, 65536
  br i1 %tobool165.not, label %if.then166, label %if.else

if.then166:                                       ; preds = %sw.epilog
  %add167 = add nuw nsw i8 %5, 1
  %incdec.ptr169 = getelementptr i8, ptr %sizePtr.1, i64 1
  store i8 %add167, ptr %sizePtr.1, align 1, !tbaa !0
  %conv170 = trunc nuw i32 %sub to i16
  %incdec.ptr171 = getelementptr i8, ptr %outPtr.2, i64 2
  store i16 %conv170, ptr %outPtr.2, align 2, !tbaa !3
  br label %cleanup205

if.else:                                          ; preds = %sw.epilog
  %cmp172 = icmp ugt i32 %sub, 1114111
  br i1 %cmp172, label %if.then173, label %if.else185

if.then173:                                       ; preds = %if.else
  %srcPtr.3.lcssa = phi ptr [ %srcPtr.3, %if.else ]
  %outPtr.2.lcssa514 = phi ptr [ %outPtr.2, %if.else ]
  %sub.ptr.lhs.cast174 = ptrtoint ptr %outPtr.2.lcssa514 to i64
  %sub.ptr.rhs.cast175 = ptrtoint ptr %toFill to i64
  %sub.ptr.sub176 = sub i64 %sub.ptr.lhs.cast174, %sub.ptr.rhs.cast175
  %cmp177 = icmp sgt i64 %sub.ptr.sub176, 64
  br i1 %cmp177, label %while.end, label %if.end179

if.end179:                                        ; preds = %if.then173
  %exception180 = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %fMemoryManager.i402 = getelementptr inbounds nuw i8, ptr %this, i64 24
  %52 = load ptr, ptr %fMemoryManager.i402, align 8, !tbaa !7
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %exception180, ptr noundef nonnull @.str, i32 noundef 398, i32 noundef 95, ptr noundef %52)
          to label %invoke.cont184 unwind label %lpad181

invoke.cont184:                                   ; preds = %if.end179
  tail call void @__cxa_throw(ptr nonnull %exception180, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

lpad181:                                          ; preds = %if.end179
  %53 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %exception180) #5
  br label %common.resume

if.else185:                                       ; preds = %if.else
  %add.ptr186 = getelementptr i8, ptr %outPtr.2, i64 2
  %cmp187.not = icmp ult ptr %add.ptr186, %add.ptr4
  br i1 %cmp187.not, label %if.end189, label %while.end.loopexit

if.end189:                                        ; preds = %if.else185
  %sub190 = add nuw nsw i32 %sub, 67043328
  %add191 = add nuw nsw i8 %5, 1
  %incdec.ptr193 = getelementptr i8, ptr %sizePtr.1, i64 1
  store i8 %add191, ptr %sizePtr.1, align 1, !tbaa !0
  %shr = lshr i32 %sub190, 10
  %54 = trunc i32 %shr to i16
  %conv195 = add nuw nsw i16 %54, -10240
  store i16 %conv195, ptr %outPtr.2, align 2, !tbaa !3
  %incdec.ptr197 = getelementptr i8, ptr %sizePtr.1, i64 2
  store i8 0, ptr %incdec.ptr193, align 1, !tbaa !0
  %55 = trunc i32 %sub to i16
  %56 = and i16 %55, 1023
  %conv200 = or disjoint i16 %56, -9216
  %incdec.ptr201 = getelementptr i8, ptr %outPtr.2, i64 4
  store i16 %conv200, ptr %add.ptr186, align 2, !tbaa !3
  br label %cleanup205

cleanup205:                                       ; preds = %if.end189, %if.then166
  %outPtr.5 = phi ptr [ %incdec.ptr201, %if.end189 ], [ %incdec.ptr171, %if.then166 ]
  %sizePtr.4 = phi ptr [ %incdec.ptr197, %if.end189 ], [ %incdec.ptr169, %if.then166 ]
  %cmp = icmp ult ptr %srcPtr.3, %add.ptr
  %cmp5 = icmp ult ptr %outPtr.5, %add.ptr4
  %57 = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %57, label %while.body, label %while.end.loopexit

while.end.loopexit:                               ; preds = %cleanup205, %if.else185, %if.end25, %do.end
  %outPtr.6.ph = phi ptr [ %outPtr.2, %if.else185 ], [ %outPtr.2, %if.end25 ], [ %incdec.ptr9.lcssa, %do.end ], [ %outPtr.5, %cleanup205 ]
  %srcPtr.5.ph = phi ptr [ %srcPtr.3, %if.else185 ], [ %srcPtr.2, %if.end25 ], [ %incdec.ptr.lcssa, %do.end ], [ %srcPtr.3, %cleanup205 ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.then173, %if.end
  %outPtr.6 = phi ptr [ %outPtr.2.lcssa514, %if.then173 ], [ %toFill, %if.end ], [ %outPtr.6.ph, %while.end.loopexit ]
  %srcPtr.5 = phi ptr [ %srcPtr.3.lcssa, %if.then173 ], [ %srcData, %if.end ], [ %srcPtr.5.ph, %while.end.loopexit ]
  %sub.ptr.lhs.cast209 = ptrtoint ptr %srcPtr.5 to i64
  %sub.ptr.rhs.cast210 = ptrtoint ptr %srcData to i64
  %sub.ptr.sub211 = sub i64 %sub.ptr.lhs.cast209, %sub.ptr.rhs.cast210
  %conv212 = trunc i64 %sub.ptr.sub211 to i32
  store i32 %conv212, ptr %bytesEaten, align 4, !tbaa !13
  %sub.ptr.lhs.cast213 = ptrtoint ptr %outPtr.6 to i64
  %sub.ptr.rhs.cast214 = ptrtoint ptr %toFill to i64
  %sub.ptr.sub215 = sub i64 %sub.ptr.lhs.cast213, %sub.ptr.rhs.cast214
  %sub.ptr.div216 = lshr exact i64 %sub.ptr.sub215, 1
  %conv217 = trunc i64 %sub.ptr.div216 to i32
  br label %return

return:                                           ; preds = %while.end, %entry
  %retval.0 = phi i32 [ %conv217, %while.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0 align 2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { cold noreturn }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!0 = !{!1, !1, i64 0}
!1 = !{!"omnipotent char", !2, i64 0}
!2 = !{!"Simple C++ TBAA"}
!3 = !{!4, !4, i64 0}
!4 = !{!"short", !1, i64 0}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !12, i64 24}
!8 = !{!"_ZTSN11xercesc_2_713XMLTranscoderE", !9, i64 8, !10, i64 16, !12, i64 24}
!9 = !{!"int", !1, i64 0}
!10 = !{!"p1 short", !11, i64 0}
!11 = !{!"any pointer", !1, i64 0}
!12 = !{!"p1 _ZTSN11xercesc_2_713MemoryManagerE", !11, i64 0}
!13 = !{!9, !9, i64 0}
